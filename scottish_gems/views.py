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


def login_form(request):
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
    return render(request, 'accounts/login.html', {'login_form': login_form})  # Pass the form as 'login_form'

class GemList(generic.ListView):
    queryset = Post.objects.filter(STATUS=1)
    template_name = 'scottish_gems/index.html'
    paginate_by = 6
    
    
