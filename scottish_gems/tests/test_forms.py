from django.test import TestCase
from scottish_gems.forms import AddGemForm, CustomUserCreationForm
from scottish_gems.models import Region

class AddGemFormTest(TestCase):
    def test_form_valid(self):
        region = Region.objects.create(name='Test Region')
        form = AddGemForm({
            'title': 'Test Post',
            'address': '123 Test St',
            'content': 'Test Content',
            'latitude': '50.0',
            'longitude': '50.0',
            'region': region.id,
            'photo_url': 'http://example.com/test.jpg',
            'google_place_id': 'ChIJN1t_tDeuEmsRUsoyG83frY4',
        })
        self.assertTrue(form.is_valid())
