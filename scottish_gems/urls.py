from . import views
from .views import login_view, logout_view, signup, toggle_favorite, favorites, create_gem
from django.urls import path




urlpatterns = [
    path('', views.home, name='home'),
    path('login/', login_view, name='login'),
    path('signup/', signup, name='signup'),
    path('toggle_favorite/<int:post_id>/', toggle_favorite, name='toggle_favorite'),
    path('favorites/', favorites, name='favorites'),
    path('gem_posts/create_gems/', create_gem, name='create_gems'),
    path('delete_gem/<int:post_id>/', views.delete_gem, name='delete_gem'),
    path('api/regions', views.api_regions, name='api_regions'),
    path('posts_by_region/<int:region_id>/', views.posts_by_region, name='posts_by_region'),
    path('post/<int:post_id>/', views.gem_detail, name='gem_detail'),
    path('post/<int:post_id>/comment/<int:comment_id>/edit/', views.edit_comment, name='edit_comment'),
    path('post/<int:post_id>/comment/<int:comment_id>/delete/', views.delete_comment, name='delete_comment'),
    path('login/', views.login_view, name='account_login'),
    path('logout/', views.logout_view, name='account_logout'),
    path('gem_posts/create_gem_form/', views.create_gem_form, name='create_gem_form'),
]