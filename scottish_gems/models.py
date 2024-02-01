from django.db import models
from django.contrib.auth.models import User

STATUS = ((0, "Draft"), (1, "published"))

# creating the post model

class Post(models.Model):
    title = models.CharField(max_length=200, unique=True)
    slug = models.SlugField(max_length=200, unique=True)
    author = models.ForeignKey(
        User, on_delete=models.CASCADE, related_name="gem_places_posts"
    )
    content = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True) # Will add the date that the post was created
    STATUS = models.IntegerField(choices=STATUS, default=0)
    excerpt = models.TextField(blank=True)
    image = models.ImageField(upload_to='post_images', blank=True)


