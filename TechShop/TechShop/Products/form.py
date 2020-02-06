from django import forms
from .models import Products
from .models import Secondhand


class ProductForm(forms.ModelForm):
    class Meta:
        model = Products
        fields = '__all__'

class SecondhandsForm(forms.ModelForm):
    class Meta:
        model = Secondhand
        fields = '__all__'
        exclude = ['UserId']

