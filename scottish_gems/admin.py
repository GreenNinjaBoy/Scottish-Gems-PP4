from django.contrib import admin
from .models import Post, UserComments
from django_summernote.admin import SummernoteModelAdmin


@admin.register(Post)
class PostAdmin(SummernoteModelAdmin):
    list_display = ('title', 'slug', 'get_STATUS_display', 'created_on')
    search_fields = ['title', 'content']
    list_filter = ('STATUS', 'created_on',)
    prepopulated_fields = {'slug':('title',)}
    summernotes_fields = {'content',}

# Register your models here.
admin.site.register(UserComments)