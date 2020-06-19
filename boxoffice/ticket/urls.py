from django.contrib import admin
from . import views
from . import admin
from django.urls import path
from django.conf.urls import url

urlpatterns = [


        url(r'^payment/$', views.ticket_confirm, name='payment_gateway'),
        url(r'^confirm_pay/$', views.booked, name='booked'),
        ]
