from django.urls import path, include 
from django.contrib import admin
from django.views.generic.base import TemplateView


urlpatterns = [
	path('admin/', admin.site.urls),
	path('dashboard/', include('dashboard.urls')),
	path('accounts/', include('accounts.urls')),
]
