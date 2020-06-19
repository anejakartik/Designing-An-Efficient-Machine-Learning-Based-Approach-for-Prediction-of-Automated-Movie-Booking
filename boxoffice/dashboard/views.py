from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate
from .forms import ContactForm
from django.urls import reverse_lazy
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_text
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string,get_template
#from .tokens import account_activation_token
from django.contrib.auth.models import User
from django.core.mail import EmailMessage
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from django.contrib.admin.views.decorators import staff_member_required
from django.views.generic.edit import CreateView
from django.core.validators import EmailValidator
from movie.models import *
# Create your views here.

def index(request):
    movie_list = Movie.objects.all()[:4]
    top_movie = Movie.objects.all().order_by('popularity_index')[:3]
    context = {'top_movie' : top_movie,'movie_list' : movie_list}
    return render(request,"dashboard/index.html",context)

def contact_success(request):
    return render(request,"dashboard/contact_success.html")

def contact(request):

    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            contact_name = request.POST.get('contact_name', '')
            contact_email = request.POST.get('contact_email', '')
            contact_subject = request.POST.get('contact_subject', '')
            form_content = request.POST.get('contact_detail', '')
            form.save()
            # Email the profile with the
            # contact information
            template = get_template('dashboard/contact_template.txt')
            context = {
                'contact_name': contact_name,
                'contact_email': contact_email,
                'contact_subject': contact_subject,
                'form_content': form_content,
            }
            content = template.render(context)

            admin_email = EmailMessage(
                "New contact form submission",
                content,
                "Your website" +'',
                ['anejakartik54@gmail.com'],
                headers = {'Reply-To': contact_email })
            admin_email.send()

            mail_subject = 'Thank You For Contacting BoxOffice.'
            message = render_to_string('dashboard/user_reply_email.html', {
                'user': contact_name,
            })
            to_email = contact_email
            user_email = EmailMessage(mail_subject, message, to=[to_email])
            user_email.send()

            return redirect('/requestdone')
        else:
            return render(request, "dashboard/contact.html", {'form':form})
    form = ContactForm()
    return render(request,"dashboard/contact.html",{'form': form})

def about(request):
    return render(request,"dashboard/about.html")
