from django.shortcuts import render
from django.http import HttpResponse,HttpResponseRedirect
from django.urls import reverse_lazy
from django.contrib.auth.mixins import LoginRequiredMixin,PermissionRequiredMixin
from django.views import generic

# Create your views here.
class SinPermiso(PermissionRequiredMixin):
    login_url='main:sinpermiso'
    raise_exception=False
    redirect_field_name='redirecto_to'

    def handle_no_permission(self):
        return HttpResponseRedirect(reverse_lazy(self.login_url))

class HomePage(generic.View):

    def get(self,request,*args,**kwargs):
        return HttpResponse('Pagina de inicio')

class Home(LoginRequiredMixin,generic.TemplateView):
    template_name='home.html' #indicamos la vista que usará
    login_url='main:login'

class HomeSinPermiso(generic.TemplateView):
    template_name='sin_permisos.html'

