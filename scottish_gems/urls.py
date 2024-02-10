from . import views
from .views import signup_login
from django.urls import path

urlpatterns = [
    path('', views.GemList.as_view(), name='home'),
    path('signup_login/', signup_login, name='signup_login'),
]