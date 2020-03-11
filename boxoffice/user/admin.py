from django.contrib import admin
from .models import Customer
# Register your models here.
admin.site.site_header = 'BoxOffice Admin'
admin.site.site_title = 'Movie Booking'
class CustomerAdmin(admin.ModelAdmin):
    list_display = ('username','email')
    empty_value_display = '-empty-'
    search_fields = ('username', 'email',)
admin.site.register(Customer,CustomerAdmin)
