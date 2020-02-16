from django.urls import path
from . import views 
 
urlpatterns = [
    path('cart/',views.viewcart, name = 'viewcart'),
    path('Transaction/<int:id>/',views.transaction, name='transaction'),
    path('STransaction/<int:id>/',views.secondhandTransaction, name='S_transaction'),
    path('cart/<int:id>/',views.createTransaction, name = 'cart'),
    path('scart/<int:id>/',views.createSTransaction, name = 'scart'),
    path('cart/delete/<int:id>/',views.deleteTransaction, name = 'deletecart'),
    path('checkout/',views.updateTransaction,name = 'checkout')
]