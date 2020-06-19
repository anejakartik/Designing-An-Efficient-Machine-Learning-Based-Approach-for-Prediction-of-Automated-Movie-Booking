from django.contrib import admin
from .models import Theatre,Show
# Register your models here.
class TheatreAdmin(admin.ModelAdmin):
    list_display = ("name","city","no_of_screen")
    search_fields = ('name',)
    list_filter = ('city',)
    empty_value_display = '-empty-'


class ShowAdmin(admin.ModelAdmin):
    list_display = ("show_id","movie","theatre","screen","date","time")
    search_fields = ('movie','theatre')
    list_filter = ('date','time')
    empty_value_display = '-empty-'


admin.site.register(Theatre,TheatreAdmin)
admin.site.register(Show,ShowAdmin)
