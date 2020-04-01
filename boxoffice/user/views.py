from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate
from .forms import SignupForm,SendEmailForm
from django.urls import reverse_lazy
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_text
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from .tokens import account_activation_token
from django.contrib.auth.models import User
from django.core.mail import EmailMessage
from django.contrib.auth import login as auth_login
from django.contrib.admin.views.decorators import staff_member_required
from django.views.generic.edit import FormView
# Create your views here.
def index(request):
    return render(request,"user/index.html")

def contact(request):
    return render(request,"user/contact.html")

def error(request):
    return render(request,"user/404.html")

def movie(request):
    return render(request,"user/movies_events.html")

def about(request):
    return render(request,"user/about.html")

def signup(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.is_active = False
            user.save()
            current_site = get_current_site(request)
            mail_subject = 'Activate your boxoffice account.'
            message = render_to_string('user/acc_active_email.html', {
                'user': user,
                'domain': current_site.domain,
                'uid':urlsafe_base64_encode(force_bytes(user.pk)),
                'token':account_activation_token.make_token(user),
            })
            to_email = form.cleaned_data.get('email')
            email = EmailMessage(
                        mail_subject, message, to=[to_email]
            )
            email.send()
            return redirect('/activate_link')
    else:

        form = SignupForm()
    return render(request, 'user/signup.html', {'form': form})

def activate(request, uidb64, token):
    try:
        uid = force_text(urlsafe_base64_decode(uidb64))
        user = User.objects.get(pk=uid)
    except(TypeError, ValueError, OverflowError, User.DoesNotExist):
        user = None
    if user is not None and account_activation_token.check_token(user, token):
        user.is_active = True
        user.save()
        #auth_login(request, user)
        # return redirect('home')
        return redirect('/success_email')
    else:
        return redirect('/link_invalid')

def success_email(request):
    return render(request,"user/success.html")

def link_invalid(request):
    return render(request,"user/link_invalid.html")

def activate_link(request):
    return render(request,"user/activate_link.html")

def login(request):
    return render(request,"user/login.html")

def signup_otp(request):
    return render(request,"user/otp_signup.html")

def ticket_select(request):
    return render(request,"user/ticket_selection.html")

@staff_member_required
class SendUserEmails(FormView):
    template_name = 'users/send_email.html'
    form_class = SendEmailForm
    success_url = reverse_lazy('admin:user_customer_changelist')

    def form_valid(self, form):
        users = form.cleaned_data['users']
        subject = form.cleaned_data['subject']
        message = form.cleaned_data['message']
        email_users.delay(users, subject, message)
        user_message = '{0} users emailed successfully!'.format(form.cleaned_data['users'].count())
        messages.success(self.request, user_message)
        return super(SendUserEmails, self).form_valid(form)
