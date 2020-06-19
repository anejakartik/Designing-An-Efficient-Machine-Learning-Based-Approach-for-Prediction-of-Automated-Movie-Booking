from django.db import models
from theatre.models import *
from django.conf import settings
# Create your models here.
class Booking(models.Model):
    payment_choice = (
        ('Credit Card', 'Credit Card'),
        ('Net Banking', 'Net Banking')
    )
    id =  models.AutoField(primary_key=True, editable=False)
    timestamp = models.DateTimeField('%Y-%m-%d %H:%M:%S',null=True,blank=True)
    payment_type = models.CharField(max_length=11, choices=payment_choice,default='Credit Card')
    paid_amount = models.DecimalField(max_digits=8, decimal_places=2,null=True,blank=True)
    paid_by = models.ForeignKey(settings.AUTH_USER_MODEL,on_delete=models.DO_NOTHING,limit_choices_to={'is_active': True},null=True,blank=True)

    def __str__(self):
        return str(self.id)


class Seat(models.Model):

    seat_no = models.CharField(max_length=5,null=True,blank=False)
    show = models.ForeignKey(Show, on_delete=models.CASCADE)
    booked_by = models.ForeignKey(settings.AUTH_USER_MODEL,on_delete=models.DO_NOTHING,limit_choices_to={'is_active': True},null=True,blank=True)

    class Meta:
        unique_together = ('seat_no', 'show')

    def __str__(self):
        return self.seat_no 
