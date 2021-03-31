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
from .serializers import *

#importacion de vista forbidden
from main.views import SinPermiso



#Views para las acciones CRUD el formulario

###########################################

#LISTAR REGISTROS (Read)

###########################################

#----------- AREA-----------#
class AreaView(LoginRequiredMixin,generic.ListView):
    model = Area
    template_name = "catalogos/area_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- CATEGORIA -----------#
class CategoriaView(LoginRequiredMixin,generic.ListView):
    model = Categoria
    template_name = "catalogos/categoria_list.html"
    context_object_name = "obj"
    login_url='main:login'   
    

#----------- CLASIFICACION -----------#
class ClasificacionView(LoginRequiredMixin,generic.ListView):
    model = Clasificacion
    template_name = "catalogos/clasificacion_list.html"
    context_object_name = "obj"
    login_url='main:login'    
        

#----------- SUBCATEGORIA -----------#
class SubCategoriaView(LoginRequiredMixin,generic.ListView):
    model = SubCategoria
    template_name = "catalogos/subcategoria_list.html"
    context_object_name = "obj"
    login_url='main:login'


#----------- SERVICIO -----------#
class TipoServicioView(LoginRequiredMixin,generic.ListView):
    model = TipoServicio
    template_name = "catalogos/tipo_servicio_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- COMENSAL -----------#
class TipoComensalView(LoginRequiredMixin,generic.ListView):
    model = TipoComensal
    template_name = "catalogos/tipo_comensal_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- DIETA -----------#
class TipoDietaView(LoginRequiredMixin,generic.ListView):
    model = TipoDieta
    template_name = "catalogos/tipo_dieta_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- ESTATUS -----------#
class TipoEstatusView(LoginRequiredMixin,generic.ListView):
    model = TipoEstatus
    template_name = "catalogos/tipo_estatus_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- REGISTRO -----------#
class TipoRegistroView(LoginRequiredMixin,generic.ListView):
    model = TipoRegistro
    template_name = "catalogos/tipo_registro_list.html"
    context_object_name = "obj"
    login_url='main:login'    

#----------- GRUPO DE ALIMENTO -----------#
class GrupoAlimentoView(LoginRequiredMixin,generic.ListView):
    model = GrupoAlimento
    template_name = "catalogos/grupo_alimento_list.html"
    context_object_name = "obj"
    login_url='main:login' 

#----------- UNIDAD DE MEDIDA -----------#
class UnidadMedidaView(LoginRequiredMixin,generic.ListView):
    model = UnidadMedida
    template_name = "catalogos/unidad_medida_list.html"
    context_object_name = "obj"
    login_url='main:login' 

#----------- PRODUCTO -----------#
class ProductoView(LoginRequiredMixin,generic.ListView):
    model = Producto
    template_name = "catalogos/producto_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- PROCEDENCIA PACIENTE -----------#
class ProcedenciaPacienteView(LoginRequiredMixin,generic.ListView):
    model = ProcedenciaPaciente
    template_name = "catalogos/procedencia_paciente_list.html"
    context_object_name = "obj"
    login_url='main:login'
    

#----------- ARTICULO -----------#
class ArticuloView(LoginRequiredMixin,generic.ListView):
    model = Articulo
    template_name = "catalogos/articulo_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- Tipo de Programa -----------#
class TipoProgramaView(LoginRequiredMixin,generic.ListView):
    model = TipoPrograma
    template_name = "catalogos/tipo_programa_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- Entidad Federativa -----------#
class EntidadFederativaView(LoginRequiredMixin,generic.ListView):
    model = EntidadFederativa
    template_name = "catalogos/entidad_federativa_list.html"
    context_object_name = "obj"
    login_url='main:login'

#----------- EMPLEADOS SEGURO POPULAR -----------#
class EmpleadosSeguroPopularView(LoginRequiredMixin,generic.ListView):
    model = EmpleadosSeguroPopular
    template_name = "catalogos/empleados_seguro_popular_list.html"
    context_object_name = "obj"
    login_url='main:login'


###########################################

#CREAR REGISTROS (Create)

###########################################

class CategoriaNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_categoria'
    model = Categoria
    template_name = "catalogos/categoria_form.html"
    context_object_name = "obj"
    form_class = CategoriaForm
    success_url = reverse_lazy("catalogos:categoria_confirmacion")
    success_message = 'Categoría creada satisfactoriamente'

class ClasificacionNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_clasificacion'
    model = Clasificacion
    template_name = "catalogos/clasificacion_form.html"    
    form_class = ClasificacionForm
    success_url = reverse_lazy("catalogos:clasificacion_confirmacion")     

class SubCategoriaNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_subcategoria'
    model = SubCategoria
    template_name = "catalogos/subcategoria_form.html"
    context_object_name = "obj"
    form_class = SubCategoriaForm
    success_url = reverse_lazy("catalogos:subcategoria_confirmacion")

class TipoServicioNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_tiposervicio'
    model = TipoServicio
    template_name = "catalogos/tipo_servicio_form.html"
    context_object_name = "obj"
    form_class = TipoServicioForm
    success_url = reverse_lazy("catalogos:tipo_servicio_confirmacion")

class TipoComensalNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_tipocomensal'
    model = TipoComensal
    template_name = "catalogos/tipo_comensal_form.html"    
    form_class = TipoComensalForm
    success_url = reverse_lazy("catalogos:tipo_comensal_confirmacion")

class TipoDietaNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_tipodieta'
    model = TipoDieta
    template_name = "catalogos/tipo_dieta_form.html"    
    form_class = TipoDietaForm
    success_url = reverse_lazy("catalogos:tipo_dieta_confirmacion")

class TipoEstatusNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_tipoestatus'
    model = TipoEstatus
    template_name = "catalogos/tipo_estatus_form.html"    
    form_class = TipoEstatusForm
    success_url = reverse_lazy("catalogos:tipo_estatus_confirmacion")

class TipoRegistroNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_tiporegistro'
    model = TipoRegistro
    template_name = "catalogos/tipo_registro_form.html"    
    form_class = TipoRegistroForm
    success_url = reverse_lazy("catalogos:tipo_registro_confirmacion")

class ArticuloNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_articulo'
    model = Articulo
    template_name = "catalogos/articulo_form.html"
    context_object_name = "obj"
    form_class = ArticuloForm
    success_url = reverse_lazy("catalogos:articulo_confirmacion")    

class GrupoAlimentoNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_grupoalimento'
    model = GrupoAlimento
    template_name = "catalogos/grupo_alimento_form.html"    
    form_class = GrupoAlimentoForm
    success_url = reverse_lazy("catalogos:grupo_alimento_confirmacion") 

class UnidadMedidaNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_unidadmedida'
    model = UnidadMedida
    template_name = "catalogos/unidad_medida_form.html"    
    form_class = UnidadMedidaForm
    success_url = reverse_lazy("catalogos:unidad_medida_confirmacion")

class ProductoNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_producto'
    model = Producto
    template_name = "catalogos/producto_form.html"    
    form_class = ProductoForm
    success_url = reverse_lazy("catalogos:producto_confirmacion")

class AreaNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_area'
    model = Area
    template_name = "catalogos/area_form.html"    
    form_class = AreaForm
    success_url = reverse_lazy("catalogos:area_confirmacion")

class ProcedenciaPacienteNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_procedenciapaciente'
    model = ProcedenciaPaciente
    template_name = "catalogos/procedencia_paciente_form.html"    
    form_class = ProcedenciaPacienteForm
    success_url = reverse_lazy("catalogos:procedencia_paciente_confirmacion") 

class TipoProgramaNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_tipoprograma'
    model = TipoPrograma
    template_name = "catalogos/tipo_programa_form.html"    
    form_class = TipoProgramaForm
    success_url = reverse_lazy("catalogos:tipo_programa_confirmacion") 

class EntidadFederativaNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_entidadfederativa'
    model = EntidadFederativa
    template_name = "catalogos/entidad_federativa_form.html"    
    form_class = EntidadFederativaForm
    success_url = reverse_lazy("catalogos:entidad_federativa_confirmacion")

class EmpleadosSeguroPopularNew(SuccessMessageMixin,LoginRequiredMixin,SinPermiso,generic.CreateView):
    permission_required='catalogos.add_empleadosseguropopular'
    model = EmpleadosSeguroPopular
    template_name = "catalogos/empleados_seguro_popular_form.html"    
    form_class = EmpleadosSeguroPopularForm
    success_url = reverse_lazy("catalogos:empleados_seguro_popular_confirmacion")
   

###########################################

#EDITAR REGISTROS (Update)

###########################################

class CategoriaEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_categoria'
    model = Categoria
    template_name = "catalogos/categoria_form.html"
    context_object_name = "obj"
    form_class = CategoriaForm
    success_url = reverse_lazy("catalogos:categoria_confirmacion")

class ClasificacionEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_clasificacion'
    model = Clasificacion
    template_name = "catalogos/clasificacion_form.html"
    context_object_name = "obj"
    form_class = ClasificacionForm
    success_url = reverse_lazy("catalogos:clasificacion_confirmacion")
    
class SubCategoriaEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_subcategoria'
    model = SubCategoria
    template_name = "catalogos/subcategoria_form.html"
    context_object_name = "obj"
    form_class = SubCategoriaForm
    success_url = reverse_lazy("catalogos:subcategoria_confirmacion")

class TipoServicioEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_tiposervicio'
    model = TipoServicio
    template_name = "catalogos/tipo_servicio_form.html"
    context_object_name = "obj"
    form_class = TipoServicioForm
    success_url = reverse_lazy("catalogos:tipo_servicio_confirmacion")

class TipoComensalEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_tipocomensal'
    model = TipoComensal
    template_name = "catalogos/tipo_comensal_form.html"
    context_object_name = "obj"
    form_class = TipoComensalForm
    success_url = reverse_lazy("catalogos:tipo_comensal_confirmacion")

class TipoDietaEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_tipodieta'
    model = TipoDieta
    template_name = "catalogos/tipo_dieta_form.html"
    context_object_name = "obj"
    form_class = TipoDietaForm
    success_url = reverse_lazy("catalogos:tipo_dieta_confirmacion")

class TipoEstatusEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_tipoestatus'
    model = TipoEstatus
    template_name = "catalogos/tipo_estatus_form.html"
    context_object_name = "obj"
    form_class = TipoEstatusForm
    success_url = reverse_lazy("catalogos:tipo_estatus_confirmacion")

class TipoRegistroEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_tiporegistro'
    model = TipoRegistro
    template_name = "catalogos/tipo_registro_form.html"
    context_object_name = "obj"
    form_class = TipoRegistroForm
    success_url = reverse_lazy("catalogos:tipo_registro_confirmacion")

class ArticuloEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_articulo'
    model = Articulo
    template_name = "catalogos/articulo_form.html"
    context_object_name = "obj"
    form_class = ArticuloForm
    success_url = reverse_lazy("catalogos:articulo_confirmacion")

class GrupoAlimentoEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_grupoalimento'
    model = GrupoAlimento
    template_name = "catalogos/grupo_alimento_form.html"
    context_object_name = "obj"
    form_class = GrupoAlimentoForm
    success_url = reverse_lazy("catalogos:grupo_alimento_confirmacion")

class UnidadMedidaEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_unidadmedida'
    model = UnidadMedida
    template_name = "catalogos/unidad_medida_form.html"
    context_object_name = "obj"
    form_class = UnidadMedidaForm
    success_url = reverse_lazy("catalogos:unidad_medida_confirmacion")

class ProductoEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_producto'
    model = Producto
    template_name = "catalogos/producto_form.html"
    context_object_name = "obj"
    form_class = ProductoForm
    success_url = reverse_lazy("catalogos:producto_confirmacion")

class AreaEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_area'
    model = Area
    template_name = "catalogos/area_form.html"
    context_object_name = "obj"
    form_class = AreaForm
    success_url = reverse_lazy("catalogos:area_confirmacion")

class ProcedenciaPacienteEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.change_area'
    model = ProcedenciaPaciente
    template_name = "catalogos/procedencia_paciente_form.html"
    context_object_name = "obj"
    form_class = ProcedenciaPacienteForm
    success_url = reverse_lazy("catalogos:procedencia_paciente_confirmacion")

class TipoProgramaEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.add_tipoprograma'
    model = TipoPrograma
    template_name = "catalogos/tipo_programa_form.html"
    context_object_name = "obj"
    form_class = TipoProgramaForm
    success_url = reverse_lazy("catalogos:tipo_programa_confirmacion")

class EntidadFederativaEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.add_entidadfederativa'
    model = EntidadFederativa
    template_name = "catalogos/entidad_federativa_form.html"
    context_object_name = "obj"
    form_class = EntidadFederativaForm
    success_url = reverse_lazy("catalogos:entidad_federativa_confirmacion")

class EmpleadosSeguroPopularEdit(LoginRequiredMixin,SinPermiso,generic.UpdateView):
    permission_required='catalogos.add_empleadosseguropopular'
    model = EmpleadosSeguroPopular
    template_name = "catalogos/empleados_seguro_popular_form.html"
    context_object_name = "obj"
    form_class = EmpleadosSeguroPopularForm
    success_url = reverse_lazy("catalogos:empleados_seguro_popular_confirmacion")
    

###########################################

# CONFIRMACIÓN

###########################################

class CategoriaConfirmView(generic.TemplateView):
    template_name='catalogos/categoria_confirmacion.html'

class ClasificacionConfirmView(generic.TemplateView):
    template_name='catalogos/clasificacion_confirmacion.html'

class SubCategoriaConfirmView(generic.TemplateView):
    template_name='catalogos/subcategoria_confirmacion.html'

class TipoComensalConfirmView(generic.TemplateView):
    template_name='catalogos/tipo_comensal_confirmacion.html'

class TipoDietaConfirmView(generic.TemplateView):
    template_name='catalogos/tipo_dieta_confirmacion.html'

class TipoEstatusConfirmView(generic.TemplateView):
    template_name='catalogos/tipo_estatus_confirmacion.html'

class TipoRegistroConfirmView(generic.TemplateView):
    template_name='catalogos/tipo_registro_confirmacion.html'

class TipoServicioConfirmView(generic.TemplateView):
    template_name='catalogos/tipo_servicio_confirmacion.html'

class ArticuloConfirmView(generic.TemplateView):
    template_name='catalogos/clasificacion_confirmacion.html'

class GrupoAlimentoConfirmView(generic.TemplateView):
    template_name='catalogos/grupo_alimento_confirmacion.html'

class UnidadMedidaConfirmView(generic.TemplateView):
    template_name='catalogos/unidad_medida_confirmacion.html'

class ProductoConfirmView(generic.TemplateView):
    template_name='catalogos/producto_confirmacion.html'

class AreaConfirmView(generic.TemplateView):
    template_name='catalogos/area_confirmacion.html'

class ProcedenciaPacienteConfirmView(generic.TemplateView):
    template_name='catalogos/procedencia_paciente_confirmacion.html'

class TipoProgramaConfirmView(generic.TemplateView):
    template_name='catalogos/tipo_programa_confirmacion.html'

class EntidadFederativaConfirmView(generic.TemplateView):
    template_name='catalogos/entidad_federativa_confirmacion.html'

class EmpleadosSeguroPopularConfirmView(generic.TemplateView):
    template_name='catalogos/empleados_seguro_popular_confirmacion.html'


###########################################

# APIS

###########################################

#----------- API PRODUCTOS SIA -----------#
class ListaProductosApiView(ListAPIView):
    serializer_class = ProductoSerializer
    def get_queryset(self):
        return Producto.objects.filter(habilitado=True)

#----------- API EMPLEADOS SEGURO POPULAR -----------#
class ListaEmpleadosSeguroPopularApiView(ListAPIView):
    serializer_class = EmpleadosSeguroPopularSerializer
    def get_queryset(self):
        return EmpleadosSeguroPopular.objects.filter(habilitado=True)   

