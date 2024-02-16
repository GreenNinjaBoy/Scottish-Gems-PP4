from . import views
from .views import login_view, signup, logout_view, toggle_favorite
from django.urls import path

urlpatterns = [
    path('', views.GemList.as_view(), name='home'),
    path('login/', login_view, name='login'),
    path('signup/', signup, name='signup'),
    path('logout', logout_view, name='logout'),
    path('toggle_favorite/<int:post_id>/', toggle_favorite, name='toggle_favorite'),
    path('favorites/', views.favorites, name='favorites'),
]