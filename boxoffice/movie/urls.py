from django.contrib import admin
from . import views
from . import admin
from django.urls import path
from django.conf.urls import url

urlpatterns = [


        path('movies/',views.movie_view, name='movie'),
        url('movie_details/(?P<movie_id>\d+)/$',views.movie_details, name='movie_details'),
        url('ticket_select/(?P<show_id>\d+)',views.ticket_select, name='ticket_select'),


        ]
