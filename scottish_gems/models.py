from django.db import models
from django.contrib.auth.models import User

STATUS = ((0, "Draft"), (1, "published"))

# creating the post model

class Post(models.Model):
    title = models.CharField(max_length=200, unique=True)
    slug = models.SlugField(max_length=200, unique=True)
    author = models.ForeignKey(
        User, on_delete=models.CASCADE, related_name="gem_places"
    )
    content = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True) # Will add the date that the post was created
    STATUS = models.IntegerField(choices=STATUS, default=0)
    excerpt = models.TextField(blank=True)
    image = models.ImageField(upload_to='post_images', blank=True) # will allow the user to add an image to their post.
    updated_on = models.DateTimeField(auto_now=True)
    
    
class UserComments(models.Model):
    """ model database for 
        user comments
        
    """
    place = models.ForeignKey(
        Post, on_delete=models.CASCADE, related_name="comments"
        )
    comment = models.TextField()
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name="commenter")
    created_on = models.DateTimeField(auto_now_add=True)
    models.DateTimeField(auto_now_add=True)


