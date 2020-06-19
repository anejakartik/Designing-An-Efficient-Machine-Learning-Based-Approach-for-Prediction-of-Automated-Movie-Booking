from django.contrib import admin
from .models import Customer
from .forms import SendEmailForm
from django.shortcuts import render, redirect
from django.urls import reverse_lazy
from django.views.generic.edit import FormView
from django.core.mail import EmailMessage
from django.contrib import messages
admin.site.site_header = 'BoxOffice Admin'
admin.site.site_title = 'Movie Booking'

class CustomerAdmin(admin.ModelAdmin):
    list_display = ('username','email','is_active')
    empty_value_display = '-empty-'
    search_fields = ('username', 'email',)
    list_filter = ('is_active',)
    actions = ['send_email']
    users=[]
    def send_email(self, request, queryset):

        form = SendEmailForm(initial={'users': queryset})
        print(form)
        return render(request, 'admin/send_email.html', {'form': form})

    def admin_email(request):

            if 'apply' in request.POST:

                form = request.POST
                to_list = request.POST.getlist('email_list[]')
                print(to_list)
                email = EmailMessage(form['subject'], form['message'], to=to_list)
                email.send()
                no_of_user = len(to_list)
                messages.success(request, 'Email successfully Sent to %s users.'%no_of_user)
                return redirect('admin/user/customer/')



admin.site.register(Customer,CustomerAdmin)
# SendUserEmails view class
#SESSION_COOKIE_NAME = 'mysite_admin'
