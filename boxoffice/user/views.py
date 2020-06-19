from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate
from .forms import SignupForm,SendEmailForm,LoginForm
from django.urls import reverse_lazy
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_text
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
from .tokens import account_activation_token
from django.contrib.auth.models import User
from django.core.mail import EmailMessage
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from django.contrib.admin.views.decorators import staff_member_required
from django.views.generic.edit import CreateView
# Create your views here.

def error(request):
    return render(request,"user/404.html")

def signup(request):
    if request.method == 'POST':
        form = SignupForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.is_active= False
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
            email = EmailMessage(mail_subject, message, to=[to_email])
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
    return render(request,"user/success_email.html")

def success(request):
    return render(request,"user/success.html")

def link_invalid(request):
    return render(request,"user/link_invalid.html")

def activate_link(request):
    return render(request,"user/activate_link.html")

def login(request):

    if request.method == 'POST':

        username = request.POST['username']
        password = request.POST['password']

        if '@' in username:

            users = User.objects.get(email=username)
            user = authenticate(username=users, password=password)

        else:

            user = authenticate(username=username, password=password)

        if user:
            if user.is_active:
                auth_login(request,user)
                return redirect('/index')

            else:
                return HttpResponse("Your account was inactive.")
        else:
            print("Someone tried to login and failed.")
            return HttpResponse("Invalid login details given")
    else:
        form =  LoginForm()
    return render(request,"user/login.html",{'form': form})

def signup_otp(request):
    return render(request,"user/otp_signup.html")

def ticket_select(request):
    return render(request,"user/ticket_selection.html")


def logout_success(request):
    auth_logout(request)
    return redirect('/')
