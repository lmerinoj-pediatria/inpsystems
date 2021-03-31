from django.urls import path
from django.contrib.auth import views as auth_views
from .views import *

#Faltan las url del artiiculo

urlpatterns = [   
    path('categoria/', CategoriaView.as_view(),name="categoria_list"),
    path('categoria/new', CategoriaNew.as_view(),name="categoria_new"),
    path('categoria/edit/<pk>', CategoriaEdit.as_view(),name="categoria_edit"),
    path('categoria/confirmacion', CategoriaConfirmView.as_view(),name="categoria_confirmacion"),

    path('clasificacion/', ClasificacionView.as_view(),name="clasificacion_list"),
    path('clasificacion/new', ClasificacionNew.as_view(),name="clasificacion_new"),
    path('clasificacion/edit/<pk>', ClasificacionEdit.as_view(),name="clasificacion_edit"),
    path('clasificacion/confirmacion', ClasificacionConfirmView.as_view(),name="clasificacion_confirmacion"),     
    
    path('subcategoria/', SubCategoriaView.as_view(),name="subcategoria_list"),
    path('subcategoria/new', SubCategoriaNew.as_view(),name="subcategoria_new"),
    path('subcategoria/edit/<pk>', SubCategoriaEdit.as_view(),name="subcategoria_edit"),
    path('subcategoria/confirmacion', SubCategoriaConfirmView.as_view(),name="subcategoria_confirmacion"),
    
    path('tipo_servicio/', TipoServicioView.as_view(),name="tipo_servicio_list"),
    path('tipo_servicio/new', TipoServicioNew.as_view(),name="tipo_servicio_new"),
    path('tipo_servicio/edit/<pk>', TipoServicioEdit.as_view(),name="tipo_servicio_edit"),
    path('tipo_servicio/confirmacion', TipoServicioConfirmView.as_view(),name="tipo_servicio_confirmacion"),  

    path('articulo/', ArticuloView.as_view(),name="articulo_list"),
    path('articulo/new', ArticuloNew.as_view(),name="articulo_new"),
    path('articulo/edit/<pk>', ArticuloEdit.as_view(),name="articulo_edit"),

    path('grupo_alimento/', GrupoAlimentoView.as_view(),name="grupo_alimento_list"),
    path('grupo_alimento/new', GrupoAlimentoNew.as_view(),name="grupo_alimento_new"),
    path('grupo_alimento/edit/<pk>', GrupoAlimentoEdit.as_view(),name="grupo_alimento_edit"),
    path('grupo_alimento/confirmacion', GrupoAlimentoConfirmView.as_view(),name="grupo_alimento_confirmacion"),

    path('unidad_medida/', UnidadMedidaView.as_view(),name="unidad_medida_list"),
    path('unidad_medida/new', UnidadMedidaNew.as_view(),name="unidad_medida_new"),
    path('unidad_medida/edit/<pk>', UnidadMedidaEdit.as_view(),name="unidad_medida_edit"),
    path('unidad_medida/confirmacion', UnidadMedidaConfirmView.as_view(),name="unidad_medida_confirmacion"),  

    path('producto/', ProductoView.as_view(),name="producto_list"),
    path('producto/new', ProductoNew.as_view(),name="producto_new"),
    path('producto/edit/<pk>', ProductoEdit.as_view(),name="producto_edit"),
    path('producto/confirmacion', ProductoConfirmView.as_view(),name="producto_confirmacion"),

    path('tipo_comensal/', TipoComensalView.as_view(),name="tipo_comensal_list"),
    path('tipo_comensal/new', TipoComensalNew.as_view(),name="tipo_comensal_new"),
    path('tipo_comensal/edit/<pk>', TipoComensalEdit.as_view(),name="tipo_comensal_edit"),
    path('tipo_comensal/confirmacion', TipoComensalConfirmView.as_view(),name="tipo_comensal_confirmacion"),

    path('tipo_dieta/', TipoDietaView.as_view(),name="tipo_dieta_list"),
    path('tipo_dieta/new', TipoDietaNew.as_view(),name="tipo_dieta_new"),
    path('tipo_dieta/edit/<pk>', TipoDietaEdit.as_view(),name="tipo_dieta_edit"),
    path('tipo_dieta/confirmacion', TipoDietaConfirmView.as_view(),name="tipo_dieta_confirmacion"),

    path('tipo_estatus/', TipoEstatusView.as_view(),name="tipo_estatus_list"),
    path('tipo_estatus/new', TipoEstatusNew.as_view(),name="tipo_estatus_new"),
    path('tipo_estatus/edit/<pk>', TipoEstatusEdit.as_view(),name="tipo_estatus_edit"),
    path('tipo_estatus/confirmacion', TipoEstatusConfirmView.as_view(),name="tipo_estatus_confirmacion"),

    path('tipo_registro/', TipoRegistroView.as_view(),name="tipo_registro_list"),
    path('tipo_registro/new', TipoRegistroNew.as_view(),name="tipo_registro_new"),
    path('tipo_registro/edit/<pk>', TipoRegistroEdit.as_view(),name="tipo_registro_edit"),
    path('tipo_registro/confirmacion', TipoRegistroConfirmView.as_view(),name="tipo_registro_confirmacion"),
    
    path('area/', AreaView.as_view(),name="area_list"),
    path('area/new', AreaNew.as_view(),name="area_new"),
    path('area/edit/<pk>', AreaEdit.as_view(),name="area_edit"),
    path('area/confirmacion', AreaConfirmView.as_view(),name="area_confirmacion"),

    path('procedencia_paciente/', ProcedenciaPacienteView.as_view(),name="procedencia_paciente_list"),
    path('procedencia_paciente/new', ProcedenciaPacienteNew.as_view(),name="procedencia_paciente_new"),
    path('procedencia_paciente/edit/<pk>', ProcedenciaPacienteEdit.as_view(),name="procedencia_paciente_edit"),
    path('procedencia_paciente/confirmacion', ProcedenciaPacienteConfirmView.as_view(),name="procedencia_paciente_confirmacion"),

    path('tipo_programa/', TipoProgramaView.as_view(),name="tipo_programa_list"),
    path('tipo_programa/new', TipoProgramaNew.as_view(),name="tipo_programa_new"),
    path('tipo_programa/edit/<pk>', TipoProgramaEdit.as_view(),name="tipo_programa_edit"),
    path('tipo_programa/confirmacion', TipoProgramaConfirmView.as_view(),name="tipo_programa_confirmacion"),

    path('entidad_federativa/', EntidadFederativaView.as_view(),name="entidad_federativa_list"),
    path('entidad_federativa/new', EntidadFederativaNew.as_view(),name="entidad_federativa_new"),
    path('entidad_federativa/edit/<pk>', EntidadFederativaEdit.as_view(),name="entidad_federativa_edit"),
    path('entidad_federativa/confirmacion', EntidadFederativaConfirmView.as_view(),name="entidad_federativa_confirmacion"),

    path('empleados_spopular/', EmpleadosSeguroPopularView.as_view(),name="empleados_spopular_list"),
    path('empleados_spopular/new', EmpleadosSeguroPopularNew.as_view(),name="empleados_spopular_new"),
    path('empleados_spopular/edit/<pk>', EmpleadosSeguroPopularEdit.as_view(),name="empleados_spopular_edit"),
    path('empleados_spopular/confirmacion', EmpleadosSeguroPopularConfirmView.as_view(),name="empleados_spopular_confirmacion"),

    #urls para las API Rest
    path('producto/api/list/', ListaProductosApiView.as_view()),
    path('empleados_spopular/api/list/', ListaEmpleadosSeguroPopularApiView.as_view()),

   
    
]
