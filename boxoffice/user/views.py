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
