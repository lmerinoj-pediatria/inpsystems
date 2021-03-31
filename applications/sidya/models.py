from django.db import models
from main.models import ClaseModelo
from applications.catalogos.models import Producto,TipoComensal,TipoDieta,TipoServicio,UnidadMedida

#Para los signals
from django.db.models.signals import post_save, post_delete
from django.dispatch import receiver
from django.db.models import Sum


# Create your models here.

# MODELOS PARA LAS RECETAS #
class Receta(ClaseModelo):
    nombre = models.CharField(unique=True,max_length=50)
    calorias_totales = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)
    unidad_medida = models.ForeignKey(UnidadMedida,on_delete=models.CASCADE)

    def __str__(self):
        return '{} - {}'.format(self.id,self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(Receta, self).save()   

    class Meta:
        verbose_name_plural = "Encabezado de la Recetas"
        verbose_name = "Encabezado Receta"
        managed = True

class RecetaDet(models.Model):
    receta = models.ForeignKey(Receta,on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto,on_delete=models.CASCADE)
    cantidad = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)
    unidad_medida = models.CharField(max_length=50)
    calorias = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)

    def __str__(self):
        return '{} - {}'.format(self.id,self.receta)

    def save(self):        
        super(RecetaDet, self).save()    

    class Meta:
        verbose_name_plural = "Detalles de las Recetas"
        verbose_name = "Detalle Receta"
        managed = True

# MODELOS PARA LOS MENUS #

class Menu(ClaseModelo):
    comensal = models.ForeignKey(TipoComensal,on_delete=models.CASCADE)
    servicio = models.ForeignKey(TipoServicio,on_delete=models.CASCADE)
    dieta = models.ForeignKey(TipoDieta,on_delete=models.CASCADE)
    calorias_totales = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)

    def __str__(self):
        return '{} - {} - {}'.format(self.id,self.comensal,self.dieta)

    def save(self):        
        super(Menu, self).save()

    class Meta:
        verbose_name_plural = "Encabezado de los Menús"
        verbose_name = "Encabezado Menú"
        managed = True   

class MenuDet(models.Model):
    menu = models.ForeignKey(Menu,on_delete=models.CASCADE)    
    producto = models.ForeignKey(Producto,on_delete=models.CASCADE)
    cantidad = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)
    unidad_medida = models.CharField(max_length=50)
    calorias = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)

    def __str__(self):
        return '{} - {}'.format(self.id,self.servicio)

    def save(self):        
        super(MenuDet, self).save()    

    class Meta:
        verbose_name_plural = "Detalles de los Menús"
        verbose_name = "Detalle Menú"
        managed = True


#SIGNALS actualizacion despues de trabajar con los detalles 
 
# De una Receta
@receiver(post_delete, sender=RecetaDet)
def detalle_receta_borrar(sender,instance, **kwargs):
    id_producto = instance.producto.id
    id_receta = instance.receta.id

    enc = Receta.objects.filter(pk=id_receta).first()
    if enc:
        calorias = RecetaDet.objects.filter(receta = id_receta).aggregate(Sum('calorias'))
        enc.calorias_totales = calorias["calorias__sum"]
        enc.save()

@receiver(post_save, sender=RecetaDet)
def detalle_receta_guardar(sender,instance,**kwargs):
    id_producto = instance.producto.id
    id_receta = instance.receta.id

    enc = Receta.objects.filter(pk=id_receta).first()
    if enc:
        calorias = RecetaDet.objects.filter(receta = id_receta).aggregate(Sum('calorias'))
        enc.calorias_totales = calorias["calorias__sum"]
        enc.save()   


# De un Menú
@receiver(post_delete, sender=MenuDet)
def detalle_menu_borrar(sender,instance, **kwargs):
    id_producto = instance.producto.id
    id_menu = instance.menu.id

    enc = Menu.objects.filter(pk=id_menu).first()
    if enc:
        calorias = MenuDet.objects.filter(menu = id_menu).aggregate(Sum('calorias'))
        enc.calorias_totales = calorias["calorias__sum"]
        enc.save()

@receiver(post_save, sender=MenuDet)
def detalle_menu_guardar(sender,instance,**kwargs):
    id_producto = instance.producto.id
    id_menu = instance.menu.id

    enc = Menu.objects.filter(pk=id_menu).first()
    if enc:
        calorias = MenuDet.objects.filter(menu = id_menu).aggregate(Sum('calorias'))
        enc.calorias_totales = calorias["calorias__sum"]
        enc.save()
