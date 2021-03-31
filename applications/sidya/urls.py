from django.urls import path
from django.contrib.auth import views as auth_views
from .views import *

urlpatterns = [
    
    #urls para las recetas   
    path('receta/', RecetaView.as_view(),name="receta_list"),
    path('receta/new', recetas,name="receta_new"),
    path('receta/edit/<int:receta_id>', recetas,name="receta_edit"),
    path('receta/<int:receta_id>/delete/<int:pk>', RecetaDetDelete.as_view(),name="receta_delete"),
    path('receta/<int:receta_id>/editdet/<int:pk>', RecetaDetEdit.as_view(),name="recetadet_edit"),
    path('receta/detail/<pk>', RecetaDetail.as_view(),name="receta_detail"),
    path('receta/print/<pk>', RecetaDetailPdf.as_view(),name="receta_print"),
    path('receta/confirmacion', RecetaConfirmView.as_view(),name="receta_confirmacion"),
    
    #urls para los menus
    path('menu/', MenuView.as_view(),name="menu_list"),
    path('menu/new', menus,name="menu_new"),
    path('menu/edit/<int:menu_id>', menus,name="menu_edit"),
    path('menu/<int:menu_id>/delete/<int:pk>', MenuDetDelete.as_view(),name="menu_delete"), 
    path('menu/detail/<pk>', MenuDetail.as_view(),name="menu_detail"),
    path('menu/print/<pk>', MenuDetailPdf.as_view(),name="menu_print"),
    path('menu/confirmacion', MenuConfirmView.as_view(),name="menu_confirmacion"),   
]
