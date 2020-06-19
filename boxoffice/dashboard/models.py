from django.db import models
import uuid
# Create your models here.

class Contact_Us(models.Model):

    contact_id = models.AutoField(primary_key=True, editable=False)
    contact_name = models.CharField(max_length=75)
    contact_email = models.CharField(max_length=75)
    contact_subject = models.CharField(max_length=75)
    contact_detail = models.TextField()
    contact_resolved = models.BooleanField(default=False)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.contact_email


    class Meta:
        verbose_name = ("Contact Us")
        verbose_name_plural = ("Contact Us")
