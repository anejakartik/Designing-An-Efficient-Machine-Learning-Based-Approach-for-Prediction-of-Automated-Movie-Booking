from django.contrib import admin
from .models import Customer
from .forms import SendEmailForm
from django.shortcuts import render, redirect

admin.site.site_header = 'BoxOffice Admin'
admin.site.site_title = 'Movie Booking'
class CustomerAdmin(admin.ModelAdmin):
    list_display = ('username','email','is_active')
    empty_value_display = '-empty-'
    search_fields = ('username', 'email',)
    list_filter = ('is_active',)
    actions = ['send_email']

    def send_email(self, request, queryset):

        form = SendEmailForm(initial={'users': queryset})
        return render(request, 'user/send_email.html', {'form': form})

admin.site.register(Customer,CustomerAdmin)
