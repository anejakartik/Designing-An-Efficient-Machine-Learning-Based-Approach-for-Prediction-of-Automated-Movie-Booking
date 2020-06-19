from django.contrib import admin
from . import views
from . import admin
from django.urls import path
from django.conf.urls import url
urlpatterns = [


        #path('movies/',views.movie, name='movie'),
        path('error/',views.error, name='error'),
        path('signup_otp/',views.signup_otp, name='signup_detail'),
        url('login/',views.login, name='login'),
        url('signup/',views.signup, name='signup'),

        url(r'^activate/(?P<uidb64>[0-9A-Za-z_\-]+)/(?P<token>[0-9A-Za-z]{1,13}-[0-9A-Za-z]{1,20})/$',views.activate, name='activate'),
        url('success_email/',views.success_email, name='success_email'),
        url('success/',views.success, name='success'),
        url('link_invalid/',views.link_invalid, name='link_invalid'),
        url('activate_link/',views.activate_link, name='activate_link'),
    #    url('signup/',views.cust_signupView, name='signup'),
        url(r'send_email',view=admin.CustomerAdmin.admin_email,name='send_email'),
        url('logout_now',views.logout_success, name='logout_now'),

        ]
