from . import views
from .views import login, signup
from django.urls import path

urlpatterns = [
    path('', views.GemList.as_view(), name='home'),
    path('login/', login, name='login'),
    path('signup/', signup, name='signup')
]