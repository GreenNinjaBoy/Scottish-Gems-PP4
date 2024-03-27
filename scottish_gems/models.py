from django.db import models
from django.contrib.auth.models import User
from django.utils.text import slugify
from django.utils.crypto import get_random_string
import requests
import os
from datetime import datetime, timedelta, timezone


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
    photo_reference = models.CharField(max_length=255, blank=True)

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
                self.slug = slugify
                (self.title + '-' + get_random_string(5)) or get_random_string(10)
        if self.google_place_id and not self.photo_reference:
            # Fetch the photo reference
            self.photo_reference = self.get_place_photo_reference()

        super().save(*args, **kwargs)

    def get_place_photo_reference(self):
        """
        Fetch the photo reference from the Google Places API using the place ID.
        Returns the photo reference if it exists, otherwise returns None.
        """
        google_maps_api_key = os.environ.get("GOOGLE_MAPS_API_KEY")
        response = requests.get(
        f'https://maps.googleapis.com/maps/api/place/details/json?placeid={self.google_place_id}&fields=photos&key={google_maps_api_key}'
        )
        data = response.json()
        if 'photos' in data['result']:
            photo_reference = data['result']['photos'][0]['photo_reference']
            return photo_reference
        else:
            return None

    def refresh_photo_url(self):
        """
        Refresh the photo URL if it has expired.
        The photo URL is considered expired if it's more than 12 hours old.
        """
        now = datetime.now(tz=timezone.utc)
        updated_on_plus_1d = self.updated_on + timedelta(hours=12)
        if now > updated_on_plus_1d:
            print(f"{self.id}:{self.title} has expired. Refreshing photo")
            self.photo_url, self.photo_reference = self.get_photo_url()
            print(f"New photo URL: {self.photo_url}")
            print(f"New Photo Reference: {self.photo_reference}")
            self.save()

    def get_photo_url(self):
        """
        Fetch the photo URL from the Google Places API using the photo reference.
        If the photo reference is not valid, fetch a new one using the place ID.
        Returns the photo URL and the photo reference if successful, otherwise returns None, None.
        """
        print(f"googlePlaceIdField: {self.google_place_id}")
        google_maps_api_key = os.environ.get("GOOGLE_MAPS_API_KEY")
        params = {"maxwidth": 400, "maxheight": 400, "photoreference":
                self.photo_reference, "key": google_maps_api_key}
        resp = requests.get(
            "https://maps.googleapis.com/maps/api/place/photo", params=params
        )

        if resp.ok:
            print(f"successfully got photo URL: {resp.url}")
            return resp.url, self.photo_reference
        else:
            params = {"googlePlaceIdField": self.google_place_id, "fields":
                    "googlePlaceIdField", "key": google_maps_api_key}
            resp = requests.get(
                "https://maps.googleapis.com/maps/api/place/details/json",
                params=params
            )

            if resp.ok:
                data = resp.json()
                if "result" in data and "googlePlaceIdField" in data["result"] and len(data["result"]["googlePlaceIdField"]) > 0:
                    new_photo_reference = data["result"]["googlePlaceIdField"][0]["photo_reference"]
                    params = {"maxwidth": 400, "photoreference":
                            new_photo_reference, "key": google_maps_api_key}
                    resp = requests.get(
                        "https://maps.googleapis.com/maps/api/place/photo",
                        params=params
                    )

                    if resp.ok:
                        print(f"Successfully got new photo URL: {resp.url}")
                        return resp.url, new_photo_reference
        return None, None


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
