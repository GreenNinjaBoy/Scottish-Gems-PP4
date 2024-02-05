from django.db import models
from django.contrib.auth.models import User

# Status choices for the Post model
STATUS = ((0, "Draft"), (1, "Published"))

class Post(models.Model):
    """
    Model for blog posts.

    Fields:
        - title: Title of the post.
        - slug: Slug for SEO-friendly URLs.
        - author: Author of the post.
        - content: Content of the post.
        - created_on: Date and time when the post was created.
        - STATUS: Status of the post (Draft or Published).
        - excerpt: Excerpt of the post.
        - image: Image associated with the post.
        - updated_on: Date and time when the post was last updated.
        - field_2: Additional field with a default value.
        - field_3: Additional field that can be null.
    """
    title = models.CharField(max_length=200, unique=True)
    slug = models.SlugField(max_length=200, unique=True)
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name="gem_places")
    content = models.TextField()
    created_on = models.DateTimeField(auto_now_add=True)
    STATUS = models.IntegerField(choices=STATUS, default=0)
    excerpt = models.TextField(blank=True)
    image = models.ImageField(upload_to='post_images', blank=True)
    updated_on = models.DateTimeField(auto_now=True)
    field_2 = models.CharField(default='Hello World!')
    field_3 = models.CharField(null=True)
    
    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return self.title

class UserComments(models.Model):
    """
    Model for user comments on blog posts.

    Fields:
        - place: Post the comment belongs to.
        - comment: Comment text.
        - author: Author of the comment.
        - created_on: Date and time when the comment was created.
    """
    place = models.ForeignKey(Post, on_delete=models.CASCADE, related_name="comments")
    comment = models.TextField()
    author = models.ForeignKey(User, on_delete=models.CASCADE, related_name="commenter")
    created_on = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ["-created_on"]

    def __str__(self):
        return f"{self.place.title} | written by {self.author}"

