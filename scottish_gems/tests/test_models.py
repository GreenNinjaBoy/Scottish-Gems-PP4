from django.test import TestCase
from django.contrib.auth.models import User
from scottish_gems.models import Post, Region, UserComments

class PostModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='12345')
        self.region = Region.objects.create(name='Test Region')

    def test_post_creation(self):
        post = Post.objects.create(
            title='Test Post',
            author=self.user,
            address='123 Test St',
            region=self.region,
            STATUS=1
        )
        self.assertEqual(Post.objects.count(), 1)
        self.assertEqual(post.__str__(), 'Test Post')

    def test_post_slug_creation(self):
        post = Post.objects.create(
            title='Test Post',
            author=self.user,
            address='123 Test St',
            region=self.region,
            STATUS=1
        )
        self.assertEqual(post.slug, 'test-post')
class RegionModelTest(TestCase):
    def test_region_creation(self):
        region = Region.objects.create(name='Test Region')
        self.assertEqual(Region.objects.count(), 1)
        self.assertEqual(region.__str__(), 'Test Region')

class PostModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='12345')
        self.region = Region.objects.create(name='Test Region')

    def test_post_creation(self):
        post = Post.objects.create(
            title='Test Post',
            author=self.user,
            address='123 Test St',
            region=self.region,
            STATUS=1
        )
        self.assertEqual(Post.objects.count(), 1)
        self.assertEqual(post.__str__(), 'Test Post')

    def test_post_slug_creation(self):
        post = Post.objects.create(
            title='Test Post',
            author=self.user,
            address='123 Test St',
            region=self.region,
            STATUS=1
        )
        self.assertEqual(post.slug, 'test-post')

class UserCommentsModelTest(TestCase):
    def setUp(self):
        self.user = User.objects.create_user(username='testuser', password='12345')
        self.region = Region.objects.create(name='Test Region')
        self.post = Post.objects.create(
            title='Test Post',
            author=self.user,
            address='123 Test St',
            region=self.region,
            STATUS=1
        )

    def test_user_comments_creation(self):
        comment = UserComments.objects.create(
            place=self.post,
            comment='Test Comment',
            author=self.user
        )
        self.assertEqual(UserComments.objects.count(), 1)
        self.assertEqual(comment.__str__(), 'Test Post | written by testuser')