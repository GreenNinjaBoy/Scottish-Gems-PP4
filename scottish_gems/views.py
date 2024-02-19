from django.shortcuts import render, redirect, get_object_or_404
from django.views import generic
from .models import Post
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from .forms import PostForm
from .models import Post, Region, UserComments

def home(request):
    posts = Post.objects.all()
    regions = Region.objects.all()
    return render(request, 'base.html', {'posts': posts, 'regions': regions, 'region_selected': False})

def signup(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            auth_login(request, user)  # Log the user in
            return redirect('home')  # Redirect to home page after successful signup
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
                return redirect('home')  # Redirect to home page
    else:
        form = AuthenticationForm()
    return render(request, 'accounts/login.html', {'login_form': form})  # Pass the form as 'login_form'

def logout_view(request):
    logout(request)
    messages.success(request, "You have successfully logged out.")
    return redirect('home')  # Redirect to home page after logout

def gem_detail (request, post_id):
    post = get_object_or_404(Post, id=post_id)
    comments = post.comments.all()
    print(f"Comments for post {post_id}: {comments}")  # Debug print
    if request.method == 'POST':
        new_comment = UserComments.objects.create(comment=request.POST['content'], author=request.user, place=post)
        print(f"New comment: {new_comment.comment}")  # Debug print
    return render(request, 'gem_posts/gem_detail.html', {'post': post, 'comments': comments})


def posts_by_region(request, region_id):
    region = get_object_or_404(Region, id=region_id)
    posts = Post.objects.filter(region=region)
    regions = Region.objects.all()
    return render(request, 'base.html', {'posts': posts, 'regions': regions, 'region_selected': True})

    # Get all posts in this region
    posts = Post.objects.filter(region=region)

    # Render the template with the posts
    return render(request, 'base.html', {'posts': posts})

@login_required
def toggle_favorite(request, post_id):
    post = get_object_or_404(Post, id=post_id)
    if post in request.user.favorite_posts.all():
        request.user.favorite_posts.remove(post)
    else:
        request.user.favorite_posts.add(post)
    return redirect('post_detail', post_id=post.id)

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
def create_gem(request):
    if request.method == 'POST':
        form = PostForm(request.POST, request.FILES)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            post.save()
            return redirect('home')
    else:
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

class GemList(generic.ListView):
    queryset = Post.objects.filter(STATUS=1)
    template_name = 'scottish_gems/index.html'
    paginate_by = 6
    
    
