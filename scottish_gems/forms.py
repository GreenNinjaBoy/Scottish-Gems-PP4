from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from .models import Post


class AddGemForm(forms.ModelForm):
    """
    Form for adding a new gem (Post). It includes fields for the
    Google Place ID, title, address, and content of the gem.
    These fields are hidden and their values are likely populated
    using JavaScript in the frontend. The form also includes
    fields for the latitude, longitude, region, and photo URL of the gem.
    """

    google_place_id = forms.CharField(
        widget=forms.HiddenInput(attrs={'id': 'googlePlaceIdField'})
    )
    title = forms.CharField(
        widget=forms.HiddenInput(attrs={'id': 'title-field'})
    )
    address = forms.CharField(
        widget=forms.HiddenInput(attrs={'id': 'address-field'})
    )
    content = forms.CharField(
        widget=forms.HiddenInput(attrs={'id': 'content-field'})
    )
    photo_url = forms.CharField(
        widget=forms.HiddenInput(attrs={'id': 'photo_url'})
    )

    class Meta:
        model = Post
        fields = [
            'title', 'address', 'content',
            'latitude', 'longitude', 'region', 'photo_url'
        ]
        widgets = {
            'latitude': forms.HiddenInput(attrs={'id': 'latitude-field'}),
            'longitude': forms.HiddenInput(attrs={'id': 'longitude-field'}),
            'google_place_id': forms.HiddenInput(attrs={
                'id': 'googlePlaceIdField'}),
        }

class CustomUserCreationForm(UserCreationForm):
    username = forms.CharField(
        label="Username",
        help_text="",  # This line removes the username help text
    )
    password1 = forms.CharField(
        label="Password",
        strip=False,
        widget=forms.PasswordInput,
        help_text="",  # This line removes the password help text
    )
    password2 = forms.CharField(
        label="Password confirmation",
        strip=False,
        widget=forms.PasswordInput,
        help_text="",  # This line removes the password confirmation help text
    )

    class Meta:
        model = User
        fields = ("username", "password1", "password2")