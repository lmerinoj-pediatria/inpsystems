from django.http import JsonResponse,HttpResponseRedirect,HttpResponse
from django.shortcuts import render,redirect
from django.urls import reverse_lazy
from django.views import generic
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from django.contrib.messages.views import SuccessMessageMixin
from django.contrib.auth.mixins import LoginRequiredMixin,PermissionRequiredMixin
from django.contrib.auth.decorators import login_required,permission_required
from django.db.models import Sum
from .utils import render_to_pdf

#importacion de recursos necesarios
from .models import Receta,RecetaDet,Menu,MenuDet
from applications.catalogos.models import *
from main.views import SinPermiso
from .forms import RecetaForm,MenuForm,RecetaDetForm
#CRUD

###########################################

#LISTAR REGISTROS 

###########################################

class RecetaView(LoginRequiredMixin,generic.ListView):
    model = Receta
    template_name = "sidya/receta_list.html"
    context_object_name = "obj"
    login_url = 'main:login'    

class MenuView(LoginRequiredMixin,generic.ListView):
    model = Menu
    template_name = "menu_list.html"
    context_object_name = "obj"
    login_url = 'main:login'    



###########################################

#CREAR REGISTROS (Create)

###########################################


# Para las recetas

@login_required(login_url='main:login')
@permission_required('sidya.add_receta',login_url = 'main:sinpermiso')
def recetas(request,receta_id=None):
    template_name = "sidya/receta_form.html"
    prod = Producto.objects.filter(habilitado=True,almacen='04323')      
    form_recetas = {}
    contexto = {}

    if request.method == 'GET':
        form_recetas = RecetaForm()
        enc = Receta.objects.filter(pk = receta_id).first()

        #validamos la existencia del encabezado para renderizar los datos en la plantilla
        if enc:
            det = RecetaDet.objects.filter(receta=enc)
            e = {
                'nombre': enc.nombre,                
                'unidad_medida': enc.unidad_medida,
                'calorias_totales': enc.calorias_totales                
            }

            form_recetas = RecetaForm(e)
        else:
            det = None

        contexto = {
            'productos':prod,
            'encabezado':enc,
            'detalle':det,
            'form_enc':form_recetas
        }        

    #codigo para el guardado de los datos del formulario  
    if request.method == 'POST':

        #Capturando lo que viene del panel del panel de encabezado y alamacenando cada dato en una variable    
        nombre = request.POST.get('nombre')
        calorias_totales = request.POST.get('calorias_totales')
        #unidad_medida = request.POST.get('unidad_medida')
        unidad_medida = UnidadMedida.objects.get(pk = request.POST['unidad_medida'])        

        if not receta_id:
            enc = Receta(
                nombre = nombre,
                calorias_totales = calorias_totales,
                unidad_medida = unidad_medida                
            )

            if enc:
                enc.save()
                receta_id = enc.id

        else:
            enc = Receta.objects.filter(pk = receta_id).first()
            if enc:
                enc.nombre = nombre
                enc.calorias_totales = calorias_totales
                enc.unidad_medida = unidad_medida                
                enc.save()

        if not receta_id:
            return redirect('sidya:receta_confirmacion')

        #codigo para capturar los datos del detalle del formulario        
        producto = request.POST.get('idprod')
        cant = request.POST.get('cant')
        unimed = request.POST.get('umminprod')
        calorias = request.POST.get('calorias')

        prod = Producto.objects.get(pk=producto)

        det = RecetaDet(
            receta = enc,
            producto = prod,
            cantidad = cant,
            unidad_medida = unimed,
            calorias = calorias

        )

        if det:

            if enc.calorias_totales == 0:
                #calculando las calorias totales del detalle y guardandolo en la tabla receta
                calorias = RecetaDet.objects.filter(receta = receta_id).aggregate(Sum('calorias'))
                enc.calorias_totales = calorias["calorias__sum"]
                enc.save()
                det.save()
            
            else:
                det.save()
            

                       

        return redirect('sidya:receta_edit',receta_id=receta_id)


    return render (request, template_name, contexto)


        
#################################################################################################

#para los menus

@login_required(login_url='main:login')
@permission_required('sidya.add_menu',login_url = 'main:sinpermiso')
def menus(request,menu_id=None):
    template_name = "sidya/menu_form.html"
    prod = Producto.objects.filter(habilitado=True,almacen='04323')
    form_menus = {}
    contexto = {}

    if request.method == 'GET':
        form_menus = MenuForm()
        enc = Menu.objects.filter(pk = menu_id).first()

        #validamos la existencia del encabezado para renderizar los datos en la plantilla
        if enc:
            det = MenuDet.objects.filter(menu=enc)
            e = {
                'comensal': enc.comensal,
                'servicio': enc.servicio,
                'dieta': enc.dieta,
                'calorias_totales': enc.calorias_totales                
            }

            form_menus = MenuForm(e)
        else:
            det = None

        contexto = {
            'productos':prod,
            'encabezado':enc,
            'detalle':det,
            'form_enc':form_menus
        }        

    #codigo para el guardado de los datos del formulario  
    if request.method == 'POST':

        #Capturando lo que viene del panel del panel de encabezado y alamacenando cada dato en una variable    
        comensal = TipoComensal.objects.get(pk = request.POST['comensal'])
        servicio = TipoServicio.objects.get(pk = request.POST['servicio'])
        dieta = TipoDieta.objects.get(pk = request.POST['dieta'])
        calorias_totales = request.POST.get('calorias_totales')
        
        if not menu_id:
            enc = Menu(
                comensal = comensal,
                servicio = servicio,                
                dieta = dieta,
                calorias_totales = calorias_totales                
            )

            if enc:
                enc.save()
                menu_id = enc.id

        else:
            enc = Menu.objects.filter(pk = menu_id).first()
            if enc:
                enc.comensal = comensal
                enc.servicio = servicio
                enc.dieta = dieta
                enc.calorias_totales = calorias_totales                
                enc.save()

        if not menu_id:
            return redirect('sidya:menu_list')

        #codigo para capturar los datos del detalle del formulario        
        producto = request.POST.get('idprod')        
        cant = request.POST.get('cant')
        unimed = request.POST.get('umminprod')
        calorias = request.POST.get('calorias')

        prod = Producto.objects.get(pk=producto)

        det = MenuDet(
            menu = enc,           
            producto = prod,
            cantidad = cant,
            unidad_medida = unimed,
            calorias = calorias

        )

        if det:
            det.save()
            #calculando las calorias totales del detalle y guardandolo en la tabla menu
            calorias = MenuDet.objects.filter(menu = menu_id).aggregate(Sum('calorias'))
            enc.calorias_totales = calorias["calorias__sum"]
            enc.save()

        return redirect('sidya:menu_edit',menu_id=menu_id)


    return render (request, template_name, contexto)


###########################################

# EDITAR DETALLES

###########################################

class RecetaDetEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='sidya.change_recetadet'
    model = RecetaDet
    template_name = "sidya/recetadet_edit.html"
    context_object_name = "obj"
    form_class = RecetaDetForm

    def get_success_url(self):
        receta_id = self.kwargs['receta_id']
        return reverse_lazy('sidya:receta_edit', kwargs={'receta_id':receta_id})    


###########################################

# BORRAR DETALLES

###########################################


# De las recetas

class RecetaDetDelete(SinPermiso,generic.DeleteView):
    permission_required = 'sidya.delete_recetadet'
    model = RecetaDet
    template_name = 'sidya/recetadet_delete.html'
    context_object_name = 'obj'

    def get_success_url(self):
        receta_id = self.kwargs['receta_id']
        return reverse_lazy('sidya:receta_edit', kwargs={'receta_id':receta_id})


# De los menús

class MenuDetDelete(SinPermiso,generic.DeleteView):
    permission_required = 'sidya.delete_menudet'
    model = MenuDet
    template_name = 'sidya/menudet_delete.html'
    context_object_name = 'obj'

    def get_success_url(self):
        menu_id = self.kwargs['menu_id']
        return reverse_lazy('sidya:menu_edit', kwargs={'menu_id':menu_id})

###########################################

# VER DETALLES

###########################################


# De las recetas
class RecetaDetail(LoginRequiredMixin,SinPermiso,generic.DetailView):
    permission_required='sidya.view_receta'
    model = Receta
    template_name = "sidya/receta_detail.html"

    def get_context_data(self, **kwargs):
        context = super(RecetaDetail, self).get_context_data(**kwargs)
        #        
        context['ingredientes'] = RecetaDet.objects.filter(receta=self.kwargs['pk'])        
        return context

# De los menús
class MenuDetail(LoginRequiredMixin,generic.DetailView):
    permission_required='sidya.view_menu'
    model = Menu
    template_name = "sidya/menu_detail.html"

    def get_context_data(self, **kwargs):
        context = super(MenuDetail, self).get_context_data(**kwargs)
        #        
        context['ingredientes'] = MenuDet.objects.filter(menu=self.kwargs['pk'])        
        return context
   


###########################################

# IMPRESION

###########################################


# De las recetas
class RecetaDetailPdf(generic.View):

    def get(self, request, *args, **kwargs):
        receta = Receta.objects.get(id=self.kwargs['pk'])
        data = {
            'receta': receta,
            'ingredientes': RecetaDet.objects.filter(receta=self.kwargs['pk'])
        }
        pdf = render_to_pdf('sidya/receta_print.html', data)
        return HttpResponse(pdf, content_type='application/pdf')

# De los menus
class MenuDetailPdf(generic.View):

    def get(self, request, *args, **kwargs):
        menu = Menu.objects.get(id=self.kwargs['pk'])
        data = {
            'menu': menu,
            'ingredientes': MenuDet.objects.filter(menu=self.kwargs['pk'])
        }
        pdf = render_to_pdf('sidya/menu_print.html', data)
        return HttpResponse(pdf, content_type='application/pdf')


###########################################

# CONFIRMACION

###########################################

class RecetaConfirmView(generic.TemplateView):
    template_name='sidya/receta_confirmacion.html'

class MenuConfirmView(generic.TemplateView):
    template_name='sidya/menu_confirmacion.html'