from django.contrib import admin
from .models import Post, UserComments

# Register your models here.
admin.site.register(Post)
admin.site.register(UserComments)