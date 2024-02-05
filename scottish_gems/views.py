from django.shortcuts import render
from django.views import generic
from .models import Post


# Create your views here.


class GemList(generic.ListView):
    model = Post
    template_name = 'scottish_gems/gems_list.html'