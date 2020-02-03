from django.db import models

# Create your models here.
class Products(models.Model):
    ProductName = models.CharField(max_length = 50)
    Price = models.DecimalField(max_digits=7, decimal_places=2)
    Description = models.TextField()
    Image = models.ImageField(upload_to='pic')

class Secondhand(models.Model):
    ProductName = models.CharField(max_length = 50)
    Price = models.DecimalField(max_digits=7, decimal_places=2)
    Description = models.TextField()
    Used_Details = models.TextField()
    Image = models.ImageField(upload_to='pic')
 