from . import views
from django.urls import path

urlpatterns = [
    path('', views.GemList.as_view(), name='home'),
    path('signup/', views.signup, name='signup'),
]
