from django.db import models
from django.contrib.auth.models import User, auth
from Products.models import Products, Secondhand
from datetime import datetime

# Create your models here.
class Transaction(models.Model):
    ProductId = models.ForeignKey(Products, on_delete = models.CASCADE, blank = True, null = True)
    SProductId = models.ForeignKey(Secondhand, on_delete = models.CASCADE, blank = True, null = True) # Secondhand Foreign Key
    UserId = models.ForeignKey(User, on_delete = models.CASCADE)
    CheckOut = models.BooleanField(default=False)
    Date = models.DateTimeField(default=datetime.now, blank=True)


