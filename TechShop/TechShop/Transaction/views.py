from django.shortcuts import render, redirect
from .models import Transaction
from .models import Products, Secondhand, User
from django.contrib.auth.decorators import login_required, user_passes_test 
from django.contrib import messages

# Create your views here.

#CRUD
#transaction
def transaction(request,id):
    products = Products.objects.get(id=id)
    secondhand = True
    return render(request,'Transaction.html',{'products':products , 'secondhand':secondhand})

def secondhandTransaction(request,id):
    products = Secondhand.objects.get(id=id)
    secondhand = True
    return render(request,'Transaction.html',{'products':products , 'secondhand':secondhand})

@login_required(login_url='/accounts/login')
def viewcart(request):
    products = Transaction.objects.filter(UserId = request.user.id, CheckOut = False)
    return render(request, 'Cart.html', {'products':products})

@login_required(login_url='/accounts/login')
def createTransaction(request,id):
    userid = request.user
    productid = Products.objects.get(id = id)
    cart = Transaction()
    cart.UserId = userid
    cart.ProductId = productid
    cart.save()
    products = Transaction.objects.filter(UserId = request.user.id, CheckOut = False)
    return render(request, 'Cart.html', {'products':products})

@login_required(login_url='/accounts/login/')
def createSTransaction(request,id):
    userid = request.user
    sproductid = Secondhand.objects.get(id = id)
    cart = Transaction()
    cart.UserId = userid
    cart.SProductId = sproductid
    cart.save()
    products = Transaction.objects.filter(UserId = request.user.id, CheckOut = False)
    return render(request, 'Cart.html', {'products':products})
    
    

def updateTransaction(request):
    news = Transaction.objects.filter(UserId = request.user.id, CheckOut = False)
    for new in news:
        new.CheckOut = True
        new.save()
    messages.info(request,'Thank You for Purchasing Good from TechShop. Your Goods will soon be delivered.')
    return redirect('/')

def deleteTransaction(request,id):
    transaction = Transaction.objects.get(pk=id)
    transaction.delete()
    return redirect('viewcart')
