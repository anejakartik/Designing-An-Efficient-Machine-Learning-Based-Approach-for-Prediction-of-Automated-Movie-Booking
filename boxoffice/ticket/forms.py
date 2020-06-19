from django import forms
from .models import Seat, Booking

class BookingForm(forms.ModelForm):
    class Meta:
        model = Booking
        fields = ('payment_type',)
