from django.contrib import admin
from . import views
from django.urls import path
from django.conf.urls import url
urlpatterns = [

        path('index/',views.index, name='index'),
        path('about/',views.about, name='about'),
        path('contact/',views.contact, name='contact'),
        path('movies/',views.movie, name='movie'),
        path('error/',views.error, name='error'),
        path('signup_otp/',views.signup_otp, name='signup_detail'),
        path('login/',views.login, name='login'),
        url('signup/',views.signup, name='signup'),
        path('ticket_select/',views.ticket_select, name='ticket_select'),
        url(r'^activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',
        views.activate, name='activate'),
    #    url('signup/',views.cust_signupView, name='signup'),

        ]
