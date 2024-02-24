from django.shortcuts import render, redirect, get_object_or_404
from .models import Post, Region, UserComments
from django.http import JsonResponse
from django.template.loader import render_to_string
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_POST
from .forms import PostForm
import json


def home(request):
    posts = Post.objects.all()
    regions = Region.objects.all()
    return render(request, 'base.html', {'posts': posts, 'regions': regions, 'region_selected': False})

def signup(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            return redirect('home')
    else:
        form = UserCreationForm()
    return render(request, 'accounts/signup.html', {'form': form})

def login_view(request):
    if request.method == 'POST':
        form = AuthenticationForm(request=request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                return redirect('home')
    else:
        form = AuthenticationForm()
    return render(request, 'accounts/login.html', {'login_form': form})

def logout_view(request):
    if request.method == 'POST':
        logout(request)
        message = render_to_string('accounts/messages/logged_out.txt')
        messages.success(request, message)
        return redirect('home')
    else:
        return render(request, 'accounts/logout.html')

def gem_detail(request, post_id):
    post = get_object_or_404(Post, id=post_id)
    comments = post.comments.all()
    if request.method == 'POST':
        new_comment = UserComments.objects.create(comment=request.POST['content'], author=request.user, place=post)
    return render(request, 'gem_posts/gem_detail.html', {'post': post, 'comments': comments})

def posts_by_region(request, region_id):
    region = get_object_or_404(Region, id=region_id)
    posts = Post.objects.filter(region=region)
    regions = Region.objects.all()
    return render(request, 'base.html', {'posts': posts, 'regions': regions, 'region_selected': True})


@login_required
def favorites(request):
    favorite_posts = request.user.favorite_posts.all()
    return render(request, 'accounts/favorites.html', {'favorite_posts': favorite_posts})

@login_required
def toggle_favorite(request, post_id):
    post = get_object_or_404(Post, id=post_id)
    if post in request.user.favorite_posts.all():
        request.user.favorite_posts.remove(post)
        messages.success(request, 'Post removed from favorites.')
    else:
        request.user.favorite_posts.add(post)
        messages.success(request, 'Post added to favorites.')
    return redirect('home')
    
@login_required
def toggle_favorite(request, post_id):
    post = get_object_or_404(Post, id=post_id)
    if post in request.user.favorite_posts.all():
        request.user.favorite_posts.remove(post)
        messages.success(request, 'Post removed from favorites.')
    else:
        request.user.favorite_posts.add(post)
        messages.success(request, 'Post added to favorites.')
    return redirect('home')

@login_required
@csrf_exempt
@require_POST
def create_gem(request):
    # Parse the JSON data from the request
    data = json.loads(request.body)

    # Create a new post
    post = Post.objects.create(
        author=request.user,
        title=data['location'][:200],  # Changed from 'location'
        image=data['photo_url'], 
    )

    # Return a JSON response
    return JsonResponse({'status': 'ok'})

@login_required
def create_gem_form(request):
    form = PostForm()
    return render(request, 'gem_posts/create_gems.html', {'form': form})

@login_required
def delete_gem(request, post_id):
    post = get_object_or_404(Post, id=post_id)
    if request.user != post.author:
        messages.warning(request, 'You are not authorized to delete this post.')
        return redirect('home')
    if request.method == 'POST':
        post.delete()
        messages.success(request, 'Post deleted.')
        return redirect('home')
    return render(request, 'gem_posts/delete_gem.html', {'post': post})

@login_required
def edit_comment(request, post_id, comment_id):
    post = get_object_or_404(Post, id=post_id)
    comment = get_object_or_404(UserComments, id=comment_id)
    if request.user != comment.author:
        messages.warning(request, 'You are not authorized to edit this comment.')
        return redirect('gem_detail', post_id=post.id)
    if request.method == 'POST':
        comment.comment = request.POST['content']
        comment.save()
        return redirect('gem_detail', post_id=post.id)
    return render(request, 'gem_posts/edit_comment.html', {'comment': comment})

@login_required
def delete_comment(request, post_id, comment_id):
    post = get_object_or_404(Post, id=post_id)
    comment = get_object_or_404(UserComments, id=comment_id)
    if request.user != comment.author:
        messages.warning(request, 'You are not authorized to delete this comment.')
        return redirect('gem_detail', post_id=post.id)
    if request.method == 'POST':
        comment.delete()
        return redirect('gem_detail', post_id=post.id)
    return render(request, 'gem_posts/delete_comment.html', {'comment': comment})