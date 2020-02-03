from django.urls import path

from . import views

urlpatterns = [
    path('home/',views.home, name='home'),
    path('secondhand/',views.secondHand, name='secondhand'),
]