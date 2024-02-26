from django import forms
from .models import Post

class AddGemForm(forms.ModelForm):
    google_place_id = forms.CharField(widget=forms.HiddenInput(attrs={'id': 'googlePlaceIdField'}))
    class Meta:
        model = Post
        fields = ['latitude', 'longitude', 'region',]
        widgets = {
            'latitude': forms.HiddenInput(attrs={'id': 'latitude-field'}),
            'longitude': forms.HiddenInput(attrs={'id': 'longitude-field'}),
            'google_place_id': forms.HiddenInput(attrs={'id': 'googlePlaceIdField'}),
        }