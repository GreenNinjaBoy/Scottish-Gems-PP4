from django.test import TestCase, Client
from django.urls import reverse
from django.contrib.auth.models import User
from scottish_gems.models import Post, Region, UserComments

class ViewTest(TestCase):
    def setUp(self):
        self.client = Client()
        self.user = User.objects.create_user(username='testuser', password='12345')
        self.region = Region.objects.create(name='Test Region')
        self.post = Post.objects.create(
            title='Test Post',
            author=self.user,
            address='123 Test St',
            region=self.region,
            STATUS=1
        )

    def test_home_view(self):
        response = self.client.get(reverse('home'))
        self.assertEqual(response.status_code, 200)

    def test_signup_view(self):
        response = self.client.get(reverse('signup'))
        self.assertEqual(response.status_code, 200)

    def test_login_view(self):
        response = self.client.get(reverse('login'))
        self.assertEqual(response.status_code, 200)

    def test_logout_view(self):
        response = self.client.get(reverse('account_logout'))
        self.assertEqual(response.status_code, 200)

    def test_gem_detail_view(self):
        response = self.client.get(reverse('gem_detail', args=[self.post.id]))
        self.assertEqual(response.status_code, 200)

    def test_posts_by_region_view(self):
        response = self.client.get(reverse('posts_by_region', args=[self.region.id]))
        self.assertEqual(response.status_code, 200)

    def test_favorites_view(self):
        self.client.login(username='testuser', password='12345')
        response = self.client.get(reverse('favorites'))
        self.assertEqual(response.status_code, 200)

    def test_add_gem_view(self):
        self.client.login(username='testuser', password='12345')
        response = self.client.get(reverse('add_gem'))
        self.assertEqual(response.status_code, 200)

    def test_delete_gem_view(self):
        self.client.login(username='testuser', password='12345')
        response = self.client.get(reverse('delete_gem', args=[self.post.id]))
        self.assertEqual(response.status_code, 200)