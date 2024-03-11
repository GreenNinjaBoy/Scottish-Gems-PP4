from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify
from django.utils.crypto import get_random_string


class Region(models.Model):
    """
    Model representing a geographical region.
    """
    name = models.CharField(max_length=200)

    def __str__(self):
        return self.name


class Post(models.Model):
    """
    Model representing a post. Each post is associated with a User (author),
    has a title, address, geographical coordinates (latitude and longitude),
    a slug for URL purposes, creation and update timestamps, a list of users
    who favorited the post, a region, a photo URL, and a Google Place ID.
    """
    # Status choices for the Post model
    STATUS = ((0, "Draft"), (1, "Published"))

    title = models.CharField(max_length=300, unique=True)
    slug = models.SlugField(max_length=300, unique=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE,
                               related_name="gem_places")
    created_on = models.DateTimeField(auto_now_add=True)
    updated_on = models.DateTimeField(auto_now=True)
    STATUS = models.IntegerField(choices=STATUS, default=0)

    address = models.CharField(max_length=200)
    latitude = models.DecimalField(max_digits=64, decimal_places=32,
                                   null=True, blank=True)
    longitude = models.DecimalField(max_digits=64, decimal_places=32,
                                    null=True, blank=True)
    region = models.ForeignKey(Region, on_delete=models.CASCADE)
    google_place_id = models.CharField(max_length=255, blank=True, null=True)

    favorited_by = models.ManyToManyField(User, related_name='favorite_posts',
                                          blank=True)
    photo_url = models.URLField(max_length=5000, blank=True)

    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return self.title

    def save(self, *args, **kwargs):
        """
        Overridden save method. If the post doesn't have a slug,
        it generates one from the title. If the generated slug already exists,
        it appends a random string to the title to generate a unique slug.
        """
        if not self.slug:
            self.slug = slugify(self.title) or get_random_string(5)
            while Post.objects.filter(slug=self.slug).exists():
                self.slug = slugify(self.title + '-' + get_random_string(5)) or get_random_string(10)
        super().save(*args, **kwargs)


class UserComments(models.Model):
    """
    Model representing a comment made by a user on a post.
    """
    place = models.ForeignKey(Post, on_delete=models.CASCADE,
                              related_name="comments")
    comment = models.TextField()
    author = models.ForeignKey(User, on_delete=models.CASCADE,
                               related_name="commenter")
    created_on = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return f"{self.place.title} | written by {self.author}"
