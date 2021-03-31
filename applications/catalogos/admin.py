from django.contrib import admin
from .models import *

# Register your models here.
admin.site.register(Area)
admin.site.register(Articulo)
admin.site.register(Categoria)
admin.site.register(Clasificacion)
admin.site.register(EntidadFederativa)
admin.site.register(Empleado)
admin.site.register(GrupoAlimento)
admin.site.register(Plaza)
admin.site.register(ProcedenciaPaciente)
admin.site.register(Puesto)
admin.site.register(SubCategoria)
admin.site.register(TipoCatalogo)
admin.site.register(TipoComensal)
admin.site.register(TipoDieta)
admin.site.register(TipoEstatus)
admin.site.register(TipoPrograma)
admin.site.register(TipoRegistro)
admin.site.register(TipoServicio)
admin.site.register(UnidadMedida)
admin.site.register(UserArea)


class ProductoAdmin(admin.ModelAdmin):
    list_display = (
        'clave',
        'nombre',
        'tipo_catalogo',
        'presentacion',
        'unimed',
        'unimed_min',
        'cal_unimed_min',
        'grupo_alimento',
        'almacen',
        'habilitado',
    )
    search_fields = ('clave',)

admin.site.register(Producto,ProductoAdmin)