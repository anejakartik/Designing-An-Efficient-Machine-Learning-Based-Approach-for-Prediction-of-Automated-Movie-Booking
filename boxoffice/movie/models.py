from django.db import models
from multiselectfield import MultiSelectField
from django.conf import settings
# Create your models here.
class Movie(models.Model):
    lang_choice = (
        ('ENGLISH', 'English'),
        ('BENGALI', 'Bengali'),
        ('HINDI', 'Hindi'),
        ('TAMIL', 'Tamil'),
    )
    rating_choice = (
        ('U', 'U'),
        ('UA', 'U/A'),
        ('A', 'A'),
        ('R', 'R'),
    )
    movie_type = (
        ('ACTION','Action'),
        ('COMEDY','Comedy'),
        ('DRAMA','Drama'),
        ('HORROR','Horror'),
        ('THRILLER','Thriller'),
        ('ROMANCE','Romance'),
        ('BIOPICS','Biopics'),

    )
    movie_id = models.AutoField(primary_key=True, editable=False)
    name = models.CharField(max_length=35,null=True,blank=True)
    genre = models.CharField(max_length=15, choices=movie_type,default='Action')
    cast = models.CharField(max_length=100,null=True,blank=True)
    director = models.CharField(max_length=20,null=True,blank=True)
    language = models.CharField(max_length=10, choices=lang_choice,default='Hindi')
    run_length = models.IntegerField(help_text="Enter run length in minutes",null=True,blank=True)
    certificate = models.CharField(max_length=2, choices=rating_choice)
    popularity_index = models.IntegerField(unique=False, null=True, blank=True)
    trailer = models.URLField(blank=True)
    image = models.ImageField(null=True, blank=True, upload_to='media')

    def __str__(self):
        return self.name
