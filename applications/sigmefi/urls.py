from django.urls import path
from django.contrib.auth import views as auth_views
from .views import *

urlpatterns = [
    
    #urls para las recetas   
    path('registro/', RegistroView.as_view(),name="registro_list"),
    path('registro/new', RegistroNew.as_view(),name="registro_new"),
    path('registro/edit/<pk>', RegistroEdit.as_view(),name="registro_edit"),    
    path('registro/confirmacion', RegistroConfirmView.as_view(),name="registro_confirmacion"),
    
]
