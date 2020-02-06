from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import Products, Secondhand
from .form import ProductForm, SecondhandsForm
from django.contrib.auth.models import User, auth

# Create your views here. 
def home(request):
    products = Products.objects.all()
    return render(request, "Home.html", {'products': products})

def secondHand(request):
    secondhand = Secondhand.objects.all()
    return render(request, "SecondHand.html", {'secondhand': secondhand})

def aboutus(request):
    return render(request,'About.html')

##CRUD 

## First Products
def view(request):
    products = Products.objects.all()
    return render(request,"View.html",{'products':products})

def products_create_view(request):
    if request.method == 'POST':
        form = ProductForm(request.POST, request.FILES)
        if form.is_valid():
            form.save() 
            return redirect('view')
    form = ProductForm()
    context = {
        'form': form  
    }
    return render(request, "Add.html" ,context)

def update(request,id):
    products=Products.objects.get(id=id)
    form = ProductForm(instance=products)

    if request.method == 'POST':
        products=Products.objects.get(id=id)
        form = ProductForm(request.POST, request.FILES, instance=products)
        if form.is_valid():
            form.save()
        return redirect('view')
    return render(request,'Edit.html',{'form':form, 'product_id': products.id})

def delete(request,id):
    products=Products.objects.get(pk=id)
    products.delete()
    return redirect('view')


## second hand part:

def secondView(request, id):
    products = Secondhand.objects.filter(UserId = id)
    return render(request, 'SecondView.html', {'products':products})


def Second_create_view(request):
    if request.method == 'POST':
        form = SecondhandsForm(request.POST, request.FILES)
        if form.is_valid():
            new = form.save(commit=False)
            new.UserId = request.user
            new.save()
            return redirect('secondview', id = request.user.id)
    form = SecondhandsForm()
    context = {
        'form': form 
    }
    return render(request, "SecondAdd.html" ,context)

def secondUpdate(request, id):
    products = Secondhand.objects.get(id=id)
    form = SecondhandsForm(instance = products)
    if request.method == 'POST':
        products=Secondhand.objects.get(id=id)
        form = SecondhandsForm(request.POST, request.FILES, instance=products)
        if form.is_valid():
            form.save()
        return redirect('secondview', id = request.user.id)
    return render(request,'SecondEdit.html',{'form':form, 'product_id': products.id})

def secondDelete(request,id):
    products=Secondhand.objects.get(pk=id)
    products.delete()
    return redirect('secondview', id = request.user.id)






