from django.shortcuts import render
from django.http import HttpResponse
from django.shortcuts import render, redirect
from django.contrib.auth import authenticate
from .models import *
from theatre.models import *
from ticket.models import *
import datetime
#from .forms import SignupForm,SendEmailForm,LoginForm
from django.urls import reverse_lazy
from django.contrib.sites.shortcuts import get_current_site
from django.utils.encoding import force_bytes, force_text
from django.utils.http import urlsafe_base64_encode, urlsafe_base64_decode
from django.template.loader import render_to_string
#from .tokens import account_activation_token
from django.contrib.auth.models import User
from django.core.mail import EmailMessage
from django.contrib.auth import login as auth_login
from django.contrib.auth import logout as auth_logout
from django.contrib.admin.views.decorators import staff_member_required
from django.views.generic.edit import CreateView
from django.contrib.auth.decorators import login_required
# Create your views here.

def movie_view(request):
    movie_list = Movie.objects.all().order_by('popularity_index')
    
    return render(request,"movie/movies_events.html",{'movie_list': movie_list})

def movie_details(request, movie_id):
    try:
        movie_info = Movie.objects.get(movie_id=movie_id)
        shows = Show.objects.filter(movie_id=movie_id,date=datetime.date.today()).order_by('theatre')
        print(shows)
        show_list = []
        show_by_theatre = []
        theatre = shows[0].theatre
        for i in range(0, len(shows)):
            if theatre != shows[i].theatre:

                theatre = shows[i].theatre
                show_list.append(show_by_theatre)
                show_by_theatre = []
            show_by_theatre.append(shows[i])
        show_list.append(show_by_theatre)
    except Movie.DoesNotExist:
        raise Http404("Page does not exist")
    return render(request, 'movie/movie_shows.html',{'movie_info': movie_info, 'show_list': show_list})

@login_required(login_url='login/')
def ticket_select(request, show_id):
    try:
        show_info = Show.objects.get(show_id=show_id)
        seat = Seat.objects.filter(show_id=show_id).values()
        print(seat)
    except Show.DoesNotExist:
        raise Http404("Page Does Not Exist.")

    context = {'show_info':show_info,'seat' : seat}

    return render(request,'movie/ticket_selection.html',context)
