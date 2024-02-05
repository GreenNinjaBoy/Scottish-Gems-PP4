from . import views
from django.urls import path

urlpatterns = [
    path('', views.GemList.as_view(), name='home'),
]
