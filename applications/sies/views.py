from django.http import JsonResponse
from django.shortcuts import render
from django.urls import reverse_lazy
from django.views import generic
from django.contrib.messages.views import SuccessMessageMixin
from django.contrib.auth.mixins import LoginRequiredMixin,PermissionRequiredMixin

from .forms import EncPacForm,EncMedForm
from .models import EncuestaPacientes,EncuestaMedicos
from main.views import SinPermiso


#Acciones CRUD

#####################################################
# READ
#####################################################

class EncPacView(LoginRequiredMixin,generic.ListView):
    model = EncuestaPacientes
    template_name = "sies/encuesta_pacientes_list.html"
    context_object_name = "obj"
    login_url='main:login'

class EncMedView(LoginRequiredMixin,generic.ListView):
    model = EncuestaMedicos
    template_name = "sies/encuesta_medicos_list.html"
    context_object_name = "obj"
    login_url='main:login'


#####################################################
# CREATE
#####################################################

class EncPacNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='sies.add_encuestapacientes'
    model = EncuestaPacientes
    template_name = "sies/encuesta_pacientes_form.html"
    context_object_name = "obj"
    form_class = EncPacForm
    success_url = reverse_lazy("sies:encuesta_pacientes_confirmacion")
    success_message = 'Encuesta registrada satisfactoriamente'

class EncMedNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='sies.add_encuestamedicos'
    model = EncuestaMedicos
    template_name = "sies/encuesta_medicos_form.html"
    context_object_name = "obj"
    form_class = EncMedForm
    success_url = reverse_lazy("sies:encuesta_medicos_confirmacion")
    success_message = 'Encuesta registrada satisfactoriamente'


###########################################

# CONFIRMACION

###########################################

class EncPacConfirmView(generic.TemplateView):
    template_name='sies/encuesta_pacientes_confirmacion.html'

class EncMedConfirmView(generic.TemplateView):
    template_name='sies/encuesta_medicos_confirmacion.html'