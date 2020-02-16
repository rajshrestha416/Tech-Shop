from django.shortcuts import render,redirect
from django.http import HttpResponse, JsonResponse
from .models import Products, Secondhand
from .form import ProductForm, SecondhandsForm
from django.contrib.auth.models import User, auth
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.contrib.auth.decorators import login_required, user_passes_test

# Create your views here. 


def home(request):
    products_list = Products.objects.all()
    paginator = Paginator(products_list,6)
    page = request.GET.get('page') 
    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)
    
    return render(request, "Home.html", {'products': products})

def secondHand(request):
    secondhand_list = Secondhand.objects.all()
    paginator = Paginator(secondhand_list,6)
    page = request.GET.get('page') 
    try:
        secondhand = paginator.page(page)
    except PageNotAnInteger:
        secondhand = paginator.page(1)
    except EmptyPage:
        secondhand = paginator.page(paginator.num_pages)
    return render(request, "SecondHand.html", {'secondhand': secondhand})

def aboutus(request):
    return render(request,'About.html')

##CRUD 
## First Products

@user_passes_test(lambda u: u.is_superuser)
def view(request):
    products = Products.objects.all()
    return render(request,"View.html",{'products':products})

@user_passes_test(lambda u: u.is_superuser)
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

@user_passes_test(lambda u: u.is_superuser)
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

@user_passes_test(lambda u: u.is_superuser)
def delete(request,id):
    products=Products.objects.get(pk=id)
    products.delete()
    return redirect('view')

##CRUD
## second hand part:

def secondView(request, id):
    products = Secondhand.objects.filter(UserId = id)
    return render(request, 'SecondView.html', {'products':products})

@login_required(login_url='/account/login') 
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

@login_required(login_url='/account/login')
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

@login_required(login_url='/account/login')
def secondDelete(request,id):
    products=Secondhand.objects.get(pk=id)
    products.delete()
    return redirect('secondview', id = request.user.id)



#search
from django.utils.datastructures import MultiValueDictKeyError
def search(request):
    #Home Searching
    try:
        search = request.POST['search']
        products_list = Products.objects.filter(ProductName__icontains = search)
    except MultiValueDictKeyError:
        products_list = Products.objects.all()
    paginator = Paginator(products_list,6)
    page = request.GET.get('page')
    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)
    return render(request, "Home.html", {'products': products})

def secondhandSearch(request):
    #Second Hand Searching 
    try:
        search = request.POST['search']
        sproducts_list = Secondhand.objects.filter(ProductName__icontains = search)
    except MultiValueDictKeyError:
        sproducts_list = Secondhand.objects.all()
    paginator = Paginator(sproducts_list,6)
    page = request.GET.get('page')
    try:
        secondhand = paginator.page(page)
    except PageNotAnInteger:
        secondhand = paginator.page(1)
    except EmptyPage:
        secondhand = paginator.page(paginator.num_pages)
    return render(request, "SecondHand.html", {'secondhand': secondhand})

def dscSort(request):
    #sort
    #Descending order by price 
    products_list = Products.objects.all().order_by('-Price')
    paginator = Paginator(products_list,6)
    page = request.GET.get('page') 

    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)
    
    return render(request, "Home.html", {'products': products})

def ascSort(request):
    #Sort
    #Ascending order by price
    products_list = Products.objects.all().order_by('Price')
    paginator = Paginator(products_list,6)
    page = request.GET.get('page') 

    try:
        products = paginator.page(page)
    except PageNotAnInteger:
        products = paginator.page(1)
    except EmptyPage:
        products = paginator.page(paginator.num_pages)
    
    return render(request, "Home.html", {'products': products})
   



