from . import views
from .views import login_form, signup
from django.urls import path

urlpatterns = [
    path('', views.GemList.as_view(), name='home'),
    path('login/', login_form, name='login'),
    path('signup/', signup, name='signup')
]