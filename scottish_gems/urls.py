from . import views
from django.urls import path

urlpatterns = [
    path('gems', views.GemList.as_view(), name='home'),
]
