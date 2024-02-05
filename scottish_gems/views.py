from django.shortcuts import render
from django.views import generic
from .models import Post


# Create your views here.


class GemList(generic.ListView):
    queryset = Post.objects.filter(STATUS=1)
    template_name = 'scottish_gems/gems_list.html'