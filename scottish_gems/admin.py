from django.contrib import admin
from .models import Post, UserComments, Region
from django_summernote.admin import SummernoteModelAdmin


@admin.register(Post)
class PostAdmin(SummernoteModelAdmin):
    """
    Admin view for the Post model. It uses the Summernote
    WYSIWYG editor for the content field. The admin list
    view displays the title, slug, and creation date
    of each post. It also provides search functionality
    for the title and content fields, and allows filtering
    posts by creation date. The slug field is
    automatically populated based on the title field.
    """
    list_display = ('title', 'slug', 'get_STATUS_display', 'created_on')
    search_fields = ['title', 'content']
    list_filter = ('STATUS', 'created_on')
    prepopulated_fields = {'slug':('title',)}
    summernotes_fields = {'content', }


# Register the UserComments and Region models with the admin site.

admin.site.register(UserComments)
admin.site.register(Region)
