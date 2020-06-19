from django.db import models
from django.conf import settings
from movie.models import Movie
# Create your models here.
class Theatre(models.Model):
    city_choice=(
        ('DELHI','Delhi'),
        ('NOIDA','Noida'),
        ('MUMBAI','Mumbai'),
        ('CHENNAI','Chennai'),
        ('BANGALORE','Bangalore'),
        ('HYDERABAD','Hyderabad'),
    )

    name = models.CharField(max_length=50,null=False,default="Inox Cinema")
    city = models.CharField(max_length=10,choices=city_choice,null=False)
    address = models.CharField(max_length=100)
    no_of_screen = models.IntegerField(default=1)
    admin_id =  models.ForeignKey(settings.AUTH_USER_MODEL,on_delete=models.CASCADE,limit_choices_to={'is_staff': True})
    theatre_link = models.URLField(blank=True)
    image = models.ImageField(null=True, blank=True, upload_to='media')
    def __str__(self):
        return self.name+"-"+self.address+"-"+self.city

class Show(models.Model):

    show_id = models.AutoField(primary_key=True, editable=False)
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    theatre = models.ForeignKey(Theatre, on_delete=models.CASCADE,null=True,blank=True)
    screen = models.IntegerField(default=1)
    date = models.DateField()
    time = models.TimeField()

    def __str__(self):
        return str(self.movie) + "-" + str(self.theatre) + "-" + str(self.date) + "-" + str(self.time) 
