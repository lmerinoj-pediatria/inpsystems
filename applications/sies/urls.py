from django.urls import path
from django.contrib.auth import views as auth_views
from .views import *

urlpatterns = [   
    #pacientes
    path('pacientes/', EncPacView.as_view(),name="encuesta_pacientes_list"),
    path('pacientes/new', EncPacNew.as_view(),name="encuesta_pacientes_new"),
    path('pacientes/confirmacion', EncPacConfirmView.as_view(),name="encuesta_pacientes_confirmacion"),
    
    #medicos
    path('medicos/', EncMedView.as_view(),name="encuesta_medicos_list"),
    path('medicos/new', EncMedNew.as_view(),name="encuesta_medicos_new"),
    path('medicos/confirmacion', EncMedConfirmView.as_view(),name="encuesta_medicos_confirmacion"),       
    
]
