from django.shortcuts import render
from django.views import generic
from .models import Post
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm

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


def login(request):
    login_form = AuthenticationForm()

    if request.method == 'POST':
        if 'login' in request.POST:
            login_form = AuthenticationForm(data=request.POST)
            if login_form.is_valid():
                # handle successful login
                pass

    return render(request, 'accounts/login.html', {'login_form': login_form})

class GemList(generic.ListView):
    queryset = Post.objects.filter(STATUS=1)
    template_name = 'scottish_gems/index.html'
    paginate_by = 6
    
    
