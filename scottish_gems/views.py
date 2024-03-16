from django.shortcuts import render, redirect, get_object_or_404
from .models import Post, Region, UserComments
from django.http import JsonResponse, HttpResponse
from django.template.loader import render_to_string
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth import login, logout, authenticate
from django.contrib import messages
from django.contrib.auth.decorators import login_required
from django.views.decorators.csrf import csrf_exempt
from django.views.decorators.http import require_POST
from django.core.paginator import Paginator
from .forms import AddGemForm, CustomUserCreationForm
import json



def home(request):
    """
    Display all posts or posts filtered by region.
    """
    regions = Region.objects.all()
    region_selected = request.GET.get('region')
    if region_selected:
        posts = Post.objects.filter(region__name=region_selected)
    else:
        posts = Post.objects.all()
        paginator = Paginator(posts, 6)
        page_number = request.GET.get('page')
        posts = paginator.get_page(page_number)
    return render(request, 'base.html', {
        'posts': posts,
        'regions': regions,
        'region_selected': bool(region_selected)
    })


def signup(request):
    """
    Handles user registration.
    """
    if request.method == 'POST':
        form = CustomUserCreationForm(request.POST)
        if form.is_valid():
            user = form.save()
            login(request, user)
            return redirect('home')
    else:
        form =  CustomUserCreationForm()
    return render(request, 'accounts/signup.html', {'form': form})


def login_view(request):
    """
    Handles user login request.
    """
    if request.method == 'POST':
        form = AuthenticationForm(request=request, data=request.POST)
        if form.is_valid():
            username = form.cleaned_data.get('username')
            password = form.cleaned_data.get('password')
            user = authenticate(username=username, password=password)
            if user is not None:
                login(request, user)
                message = render_to_string('accounts/messages/logged_in.txt', {'username': username})
                messages.success(request, message)
                return redirect('home')
    else:
        form = AuthenticationForm()
    return render(request, 'accounts/login.html', {'login_form': form})


def logout_view(request):
    """
    Handles user logout request.
    """
    if request.method == 'POST':
        username = request.user.username
        logout(request)
        message = render_to_string('accounts/messages/logged_out.txt', {'username': username})
        messages.success(request, message)
        return redirect('home')
    else:
        return render(request, 'accounts/logout.html')


def gem_detail(request, post_id):
    """
    Displays to the user s specific post and its comments
    """
    post = get_object_or_404(Post, id=post_id)
    comments = post.comments.all()
    if request.method == 'POST':
        new_comment = UserComments.objects.create(
            comment=request.POST['content'],
            author=request.user,
            place=post
        )
        message = render_to_string ('accounts/messages/comment_success.txt')
        messages.success(request,message)
    return render(request, 'gem_posts/gem_detail.html',
                  {'post': post, 'comments': comments})


def posts_by_region(request, region_id):
    """
    Displays to the user posts filtered by a specific region.
    """
    region = get_object_or_404(Region, id=region_id)
    posts = Post.objects.filter(region=region)
    regions = Region.objects.all()
    return render(request, 'base.html', {
        'posts': posts,
        'regions': regions,
        'region_selected': True
    })


def api_regions(request):
    """
    Returns all regions as JSON
    """
    regions = Region.objects.all()
    regions_data = [{'id': region.id,
                    'name': region.name} for region in regions]
    return JsonResponse(regions_data, safe=False)


@login_required
def favorites(request):
    """
    Dispay the current user's favourite posts
    """
    favorite_posts = request.user.favorite_posts.all()
    return render(request, 'accounts/favorites.html',
                  {'favorite_posts': favorite_posts})


@login_required
def toggle_favorite(request, post_id):
    """
    Add or remove a post from the current user's favourites.
    """
    post = get_object_or_404(Post, id=post_id)
    if post in request.user.favorite_posts.all():
        request.user.favorite_posts.remove(post)
        messages.success(request, f'"{post.title}" removed from favorites.')
    else:
        request.user.favorite_posts.add(post)
        messages.success(request, f'"{post.title}" added to favorites.')
    return redirect('home')


@login_required
def add_gem(request):
    """
    Handles the creation of a new post.
    """
    if request.method == 'POST':
        username = request.user.username
        form = AddGemForm(request.POST, request.FILES)
        if form.is_valid():
            post = form.save(commit=False)
            post.author = request.user
            photo_url = form.cleaned_data['photo_url']
            post.photo_url = photo_url
            address = form.cleaned_data['address']
            post.address = address 

            # Extract and store Google Place ID
            google_place_id = form.cleaned_data['google_place_id']
            post.google_place_id = google_place_id

            post.save()

            message = render_to_string('accounts/messages/gem_added.txt')
            messages.success(request, message)
            return redirect('home')
        else:
            return render(request, 'gem_posts/create_gems.html', {'form': form})

    form = AddGemForm()
    return render(request, 'gem_posts/create_gems.html', {'form': form})


@login_required
def delete_gem(request, post_id):
    """
    Handles the deletion of as post.
    """
    username = request.user.username
    post = get_object_or_404(Post, id=post_id)
    if request.user != post.author:
        message = render_to_string('account/messages/not_auth.txt')
        messages.warning(request, message )
        return redirect('home')
    if request.method == 'POST':
        post.delete()
        message = render_to_string('accounts/messages/gem_deleted.txt')
        messages.success(request, message)
        return redirect('home')
    return render(request, 'gem_posts/delete_gem.html', {'post': post, 'hide_navbar_and_header': True})


@login_required
def edit_comment(request, post_id, comment_id):
    """
    Handles the deletion of a comment.
    """
    post = get_object_or_404(Post, id=post_id)
    comment = get_object_or_404(UserComments, id=comment_id)
    if request.user != comment.author:
        message = render_to_string('account/messages/not_auth.txt')
        messages.warning(request, message )
        return redirect('gem_detail', post_id=post.id)
    if request.method == 'POST':
        comment.comment = request.POST['content']
        comment.save()
        messages.success(request, 'Your Comment has been sucsessfully edited.')
        return redirect('gem_detail', post_id=post.id)
    return render(request, 'gem_posts/edit_comment.html', {'comment': comment})


@login_required
def delete_comment(request, post_id, comment_id):
    """
    Handles the deletion of a comment
    """
    post = get_object_or_404(Post, id=post_id)
    comment = get_object_or_404(UserComments, id=comment_id)
    if request.user != comment.author:
        message = render_to_string('account/messages/not_auth.txt')
        messages.warning(request, message )
        return redirect('gem_detail', post_id=post.id)
    if request.method == 'POST':
        comment.delete()
        messages.success(request, 'Your Comment has been sucsessfully deleted.')
        return redirect('gem_detail', post_id=post.id)
    return render(request, 'gem_posts/delete_comment.html',{'comment': comment})


def store_google_place_id(request):
    if request.method == 'POST':
        try:
            # Get the Google Place ID from the POST data.
            data = json.loads(request.body)
            place_id = data.get('placeId')
            # Assuming you have a Post model with a field for Google Place ID.
            # Update the model instance with the Google Place ID.
            post = Post.objects.get(id=request.user.id)  # Replace with the appropriate logic to get the relevant Post instance.
            post.google_place_id = place_id
            post.save()

            return JsonResponse({'message': 'Google Place ID stored successfully'}, status=200)
        except Exception as e:
            return JsonResponse({'error': str(e)}, status=500)
    else:
        return JsonResponse({'error': 'Invalid request method'}, status=400)