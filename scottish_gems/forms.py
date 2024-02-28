from django import forms
from .models import Post

class AddGemForm(forms.ModelForm):
    google_place_id = forms.CharField(widget=forms.HiddenInput(attrs={'id': 'googlePlaceIdField'}))
    title = forms.CharField(widget=forms.HiddenInput(attrs={'id': 'title-field'}))
    address = forms.CharField(widget=forms.HiddenInput(attrs={'id': 'address-field'}))
    content = forms.CharField(widget=forms.HiddenInput(attrs={'id': 'content-field'}))

    class Meta:
        model = Post
        fields = ['title', 'address', 'content', 'latitude', 'longitude', 'region', 'photo_url']  
        widgets = {
            'latitude': forms.HiddenInput(attrs={'id': 'latitude-field'}),
            'longitude': forms.HiddenInput(attrs={'id': 'longitude-field'}),
            'google_place_id': forms.HiddenInput(attrs={'id': 'googlePlaceIdField'}),
        }

    def clean_picture(self):
        picture = self.cleaned_data.get('picture')
        # add any custom validation for the picture field here
        return picture

    def clean_address(self):
        address = self.cleaned_data.get('address')
        # add any custom validation for the address field here
        return address

    def clean_region(self):
        region = self.cleaned_data.get('region')
        # add any custom validation for the region field here
        return region