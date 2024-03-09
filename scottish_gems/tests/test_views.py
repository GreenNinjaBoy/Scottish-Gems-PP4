from django.test import TestCase, Client
from django.urls import reverse
from scottish_gems.models import Post, Region
from django.contrib.auth.models import User

class TestHomeView(TestCase):
    def setUp(self):
        self.client = Client()
        self.user = User.objects.create_user(username='testuser', password='12345')
        self.region = Region.objects.create(name='Test Region')
        self.post = Post.objects.create(title='Test Post', region=self.region, author=self.user)

    def test_home_GET(self):
        response = self.client.get(reverse('home'))
        self.assertEqual(response.status_code, 200)