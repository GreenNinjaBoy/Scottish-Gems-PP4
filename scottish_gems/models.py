from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify
from django import forms

# Status choices for the Post model
STATUS = ((0, "Draft"), (1, "Published"))

class Region(models.Model):
    name = models.CharField(max_length=200)

    def __str__(self):
        return self.name

class Post(models.Model):
    title = models.CharField(max_length=300, unique=True)
    address = models.CharField(max_length=200)
    latitude = models.DecimalField(max_digits=9, decimal_places=6, null=True, blank=True)
    longitude = models.DecimalField(max_digits=9, decimal_places=6, null=True, blank=True)
    slug = models.SlugField(max_length=300, unique=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name="gem_places")
    content = models.TextField(max_length=200)
    created_on = models.DateTimeField(auto_now_add=True)
    STATUS = models.IntegerField(choices=STATUS, default=0)
    excerpt = models.TextField(blank=True)
    image = models.ImageField(upload_to='user_images', blank=True)
    updated_on = models.DateTimeField(auto_now=True)
    favorited_by = models.ManyToManyField(User, related_name='favorite_posts', blank=True)
    region = models.ForeignKey(Region, on_delete=models.CASCADE)
    photo_url = models.URLField(max_length=500, blank=True)
    google_place_id = models.CharField(max_length=255)
        
    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return self.title
        
    def save(self, *args, **kwargs):
        if not self.slug:
            self.slug = slugify(self.title) or get_random_string(5)
            while Post.objects.filter(slug=self.slug).exists():
                self.slug = slugify(self.title + '-' + get_random_string(5)) or get_random_string(10)
        super().save(*args, **kwargs)

class UserComments(models.Model):
    place = models.ForeignKey(Post, on_delete=models.CASCADE, related_name="comments")
    comment = models.TextField()
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name="commenter")
    created_on = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return f"{self.place.title} | written by {self.author}"
