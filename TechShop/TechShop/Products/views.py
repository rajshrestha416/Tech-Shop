from django.shortcuts import render
from django.http import HttpResponse
from .models import Products, Secondhand

# Create your views here.
def home(request):
    products = Products.objects.all()
    return render(request, "Home.html", {'products': products})

def secondHand(request):
    secondhand = Secondhand.objects.all()
    return render(request, "SecondHand.html", {'secondhand': secondhand})




