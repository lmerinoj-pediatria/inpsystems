from django.http import JsonResponse, HttpResponseRedirect
from django.shortcuts import render,redirect
from django.urls import reverse_lazy
from django.views import generic
from rest_framework.generics import ListAPIView
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from django.contrib.messages.views import SuccessMessageMixin
from django.contrib.auth.mixins import LoginRequiredMixin,PermissionRequiredMixin

#importacion de los modelos
from .models import *

#importacion de los formularios
from .forms import *

#importacion de los serializadores para las API Rest
#from .serializers import *

#importacion de vista forbidden
from main.views import SinPermiso


# Create your views here.

#Views para las acciones CRUD el formulario

###########################################

#LISTAR REGISTROS (Read)

###########################################

class RegistroView(LoginRequiredMixin,generic.ListView):
    model = Registro
    template_name = "sigmefi/registro_list.html"
    context_object_name = "obj"
    login_url='main:login'


###########################################

#CREAR REGISTROS (Create)

###########################################

class RegistroNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='sigmefi.add_registro'
    model = Registro
    template_name = "sigmefi/registro_form.html"
    context_object_name = "obj"
    form_class = RegistroForm
    success_url = reverse_lazy("sigmefi:registro_confirmacion")
    success_message = 'Registro creado satisfactoriamente'

###########################################

#EDITAR REGISTROS (Update)

###########################################

class RegistroEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='sigmefi.change_registro'
    model = Registro
    template_name = "sigmefi/registro_form.html"
    context_object_name = "obj"
    form_class = RegistroForm
    success_url = reverse_lazy("sigmefi:registro_confirmacion")

###########################################

# CONFIRMACIÓN

###########################################

class RegistroConfirmView(generic.TemplateView):
    template_name='sigmefi/registro_confirmacion.html'


