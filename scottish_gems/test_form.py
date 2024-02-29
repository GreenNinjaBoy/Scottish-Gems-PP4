import os
import pytest
from django.test import TestCase
from .forms import AddGemForm

class AddGemFormTest(TestCase):
    def test_form_validity(self):
        form_data = {
            'google_place_id': 'ChIJN1t_tDeuEmsRUsoyG83frY4',
            'title': 'Test Title',
            'address': '123 Test St',
            'content': 'Test Content',
            'latitude': '123.456',
            'longitude': '123.456',
            'region': 'Test Region',
            'photo_url': 'https://test.com/photo.jpg',
        }
        form = AddGemForm(data=form_data)
        self.assertTrue(form.is_valid())