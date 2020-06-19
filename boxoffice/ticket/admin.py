from django.contrib import admin
from .models import *
# Register your models here.
class BookingAdmin(admin.ModelAdmin):
    list_display = ("id","payment_type","paid_amount","paid_by")
    search_fields = ('id','paid_by')
    list_filter = ('payment_type',)
    empty_value_display = '-empty-'


class SeatAdmin(admin.ModelAdmin):
    list_display = ("booked_by","seat_no","show")
    search_fields = ('show',"booked_by")
    empty_value_display = '-empty-'

admin.site.register(Booking,BookingAdmin)
admin.site.register(Seat,SeatAdmin)
