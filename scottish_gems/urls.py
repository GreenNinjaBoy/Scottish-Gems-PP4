from . import views
from .views import login_view, signup, logout_view, toggle_favorite, favorites, create_gem
from django.urls import path

urlpatterns = [
    path('', views.home, name='home'),
    path('login/', login_view, name='login'),
    path('signup/', signup, name='signup'),
    path('logout', logout_view, name='logout'),
    path('toggle_favorite/<int:post_id>/', toggle_favorite, name='toggle_favorite'),
    path('favorites/', favorites, name='favorites'),
    path('gem_posts/create_gems/', create_gem, name='create_gems'),
    path('post/<int:post_id>/', views.post_detail, name='post_detail'),
]