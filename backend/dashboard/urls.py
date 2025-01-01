from django.urls import path
from . import views

urlpatterns = [
    path('my-view/', views.my_view, name='my_view'),
    path('another-one/', views.my_another_view, name='another-one'),
]

