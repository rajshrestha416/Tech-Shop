from django.urls import path

from . import views

urlpatterns = [
    path('',views.home, name='home'),
    path('secondhand/',views.secondHand, name='secondhand'),
    path('aboutus',views.aboutus, name='aboutus'),

    path('add/',views.products_create_view, name='add'),
    path('view/',views.view, name='view'),
    # path('<int:id>/',views.edit, name='edit'),
    path('update/<int:id>/',views.update, name='update'),
    path('delete/<int:id>/',views.delete, name='delete'),

    path('secondhand/secondadd/',views.Second_create_view, name='secondadd'),
    path('secondhand/secondview/<int:id>',views.secondView, name='secondview'),
    #path('secondhand/<int:id>/',views.secondEdit, name='secondedit'),
    path('secondhand/update/<int:id>/',views.secondUpdate, name='secondupdate'),
    path('secondhand/delete/<int:id>/',views.secondDelete, name='seconddelete'),
]