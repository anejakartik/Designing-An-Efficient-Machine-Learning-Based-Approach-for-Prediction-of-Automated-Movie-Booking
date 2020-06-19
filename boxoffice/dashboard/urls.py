from django.contrib import admin
from . import views
from . import admin
from django.urls import path
from django.conf.urls import url

urlpatterns = [

        path('index/',views.index, name='index'),
        path('about/',views.about, name='about'),
        path('contact/',views.contact, name='contact'),
        path('requestdone/',views.contact_success, name='contact_success'),
        url(r'contact_email',view=admin.Contact_UsAdmin.contact_email,name='contact_email'),
        path('',views.index, name='index'),

            ]
