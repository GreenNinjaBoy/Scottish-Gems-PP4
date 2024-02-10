from django.shortcuts import render
from django.views import generic
from .models import Post
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm, User

def signup_login(request):
    signup_form = UserCreationForm()
    login_form = AuthenticationForm()

    if request.method == 'POST':
        if 'signup' in request.POST:
            signup_form = UserCreationForm(request.POST)
            if signup_form.is_valid():
                signup_form.save()
                # handle successful signup
        elif 'login' in request.POST:
            login_form = AuthenticationForm(data=request.POST)
            if login_form.is_valid():
                # handle successful login
                pass

    return render(request, 'accounts/signup_login.html', {'signup_form': signup_form, 'login_form': login_form})

# Create your views here.


class GemList(generic.ListView):
    queryset = Post.objects.filter(STATUS=1)
    template_name = 'scottish_gems/index.html'
    paginate_by = 6
    
    
