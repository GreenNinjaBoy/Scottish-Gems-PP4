from django.test import TestCase
from django.contrib.auth import get_user_model
from scottish_gems.models import Region, Post, UserComments

User = get_user_model()

class TestModels(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='12345')
        self.region = Region.objects.create(name='Test Region')
        self.post = Post.objects.create(title='Test Post', region=self.region, author=self.user)
        self.comment = UserComments.objects.create(comment='Test Comment', author=self.user, place=self.post)

    def test_region_str(self):
        self.assertEqual(str(self.region), 'Test Region')

    def test_post_str(self):
        self.assertEqual(str(self.post), 'Test Post')

    def test_user_comments_str(self):
        expected = f"{self.post.title} | written by {self.user}"
        self.assertEqual(str(self.comment), expected)

    def test_post_save(self):
        post = Post.objects.create(title='Test Post 2', region=self.region, author=self.user)
        self.assertIsNotNone(post.slug)