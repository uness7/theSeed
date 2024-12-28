from django.shortcuts import render
from django.http import HttpResponse

def my_view(request):
	return HttpResponse("Hello, world!")

def my_another_view(request):
	return HttpResponse("Another one!");
