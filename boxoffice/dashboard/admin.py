from django.contrib import admin
from .models import Contact_Us
from django.shortcuts import render, redirect
from .forms import SendEmailForm
from django.core.mail import EmailMessage
from django.contrib import messages
# Register your models here.


class Contact_UsAdmin(admin.ModelAdmin):
    
    list_display = ("contact_id","contact_name","contact_email","contact_subject","contact_resolved","created_at","updated_at")
    search_fields = ('contact_id','contact_name','contact_email')
    list_filter = ('contact_resolved',)
    empty_value_display = '-empty-'
    actions = ['send_email']

    def send_email(self, request, queryset):

        form = SendEmailForm(initial={'users': queryset})
        print(form)
        return render(request, 'admin/contact_email.html', {'form': form})

    def contact_email(request):

            if 'apply1' in request.POST:

                form = request.POST
                to_list = request.POST.getlist('email_list[]')
                print(to_list)
                email = EmailMessage(form['subject'], form['message'], to=to_list)
                email.send()
                no_of_user = len(to_list)
                messages.success(request, 'Email successfully Sent to %s users.'%no_of_user)
                return redirect('admin/dashboard/contact_us/')

admin.site.register(Contact_Us,Contact_UsAdmin)
