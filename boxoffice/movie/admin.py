from django.contrib import admin
from .models import Movie
# Register your models here.

class MovieAdmin(admin.ModelAdmin):

    list_display = ("movie_id","name","genre","cast","director","language","certificate","popularity_index")
    search_fields = ('movie_id','name')
    list_filter = ('language','certificate','genre')
    empty_value_display = '-empty-'

admin.site.register(Movie,MovieAdmin)
