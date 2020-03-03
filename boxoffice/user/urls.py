from django.contrib import admin
from . import views
from django.urls import path

urlpatterns = [

        path('index/',views.index, name='index'),
        path('about/',views.about, name='about'),
        path('contact/',views.contact, name='contact'),
        path('movies/',views.movie, name='movie'),
        path('error/',views.error, name='error'),
        path('signup_otp/',views.signup_otp, name='signup_detail'),
        path('login/',views.login, name='login'),
        path('signup/',views.signup, name='signup'),
    #    url('signup/',views.cust_signupView, name='signup'),

        ]
