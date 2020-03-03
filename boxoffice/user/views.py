from django.shortcuts import render

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
    return render(request,"user/signup.html")

def login(request):
    return render(request,"user/login.html")

def signup_otp(request):
    return render(request,"user/otp_signup.html")

def ticket_select(request):
    return render(request,"user/ticket_selection.html")
