from django.db import models

# Create your models here.
from django.contrib.auth.models import Group, User
from django.contrib.auth.models import BaseUserManager
class CustomerManager(BaseUserManager):


    def get_queryset(self):

        return super(CustomerManager, self).get_queryset().filter(

             is_staff='False')

class Customer(User):

    objects = CustomerManager()

    class Meta:

        proxy = True
