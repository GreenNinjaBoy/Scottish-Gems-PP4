from . import views
from .views import login_view, signup, logout_view
from django.urls import path

urlpatterns = [
    path('', views.GemList.as_view(), name='home'),
    path('login/', login_view, name='login'),
    path('signup/', signup, name='signup'),
    path('logout', logout_view, name='logout')
]