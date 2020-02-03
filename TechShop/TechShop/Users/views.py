from django.shortcuts import render, redirect
from django.contrib.auth.models import User, auth
from django.contrib import messages

# Create your views here.
def login(request):
    if request.method == 'POST':
        user = auth.authenticate(username = request.POST['username'], password = request.POST['password'])
        if user is None:
            messages.info(request,'Invalid Username or Password')
            print('password milena')
            return redirect('login')
        else:
            auth.login(request, user)
            return redirect('/')
    return render(request, 'Login.html')

 
def logout(request):
    auth.logout(request)
    return redirect('/')

def register(request):
    if request.method == 'POST':
        first_name = request.POST['firstname']
        last_name = request.POST['lastname']
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
        cpassword = request.POST['cpassword']
        if(password == cpassword):
            if User.objects.filter(email=email).exists():
                messages.info(request,'This email was already registered!')
                return redirect('signup')
            else:
                user = User.objects.create_user(username = username, password=password, email=email,first_name=first_name,last_name=last_name)
                auth.login(request, user)
                return redirect('/')
        else:
            messages.info(request,'Invalid Password')
            return redirect('register')
    else:
        return render(request,'Register.html')