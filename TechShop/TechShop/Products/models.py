from django.db import models
from django.contrib.auth.models import User, auth

# Create your models here.
class Products(models.Model):
    ProductName = models.CharField(max_length = 50)
    Price = models.DecimalField(max_digits=7, decimal_places=2)
    Description = models.TextField(blank=True)
    Image = models.ImageField(upload_to='pic')

    class Meta:
        db_table = "Products"

    def delete(self, *args, **kwargs ):
        self.Image.delete()
        super().delete(*args, **kwargs)

class Secondhand(models.Model):
    ProductName = models.CharField(max_length = 50)
    Price = models.DecimalField(max_digits=7, decimal_places=2)
    Description = models.TextField(blank=True)
    Used_Details = models.CharField(max_length = 50)
    Image = models.ImageField(upload_to='pic')
    UserId = models.ForeignKey(User, on_delete = models.CASCADE)

    class Meta:
        db_table = "Secondhand"

    
    def delete(self, *args, **kwargs ):
        self.Image.delete()
        super().delete(*args, **kwargs)
