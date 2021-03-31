from django.db import models
from main.models import ClaseModelo
from django.contrib.auth.models import User

# Create your models here.

#Tabla area
class Area(ClaseModelo):    
    clave = models.CharField(unique=True, primary_key=True,max_length=20)
    nombre = models.CharField(unique=False, max_length=200,help_text='Nombre de area',blank=False, null=False)   
    nombre_corto = models.CharField(unique=False, max_length=100,help_text='Nombre corto del area',blank=True, null=True)
    ruta_oficios = models.CharField(unique=True, max_length=50,help_text='Ruta de los oficios del area',blank=True, null=True)
    ruta_acuses = models.CharField(unique=True, max_length=50,help_text='Ruta de los acuses del area',blank=True, null=True)    
    
    def __str__(self):
        return '{} - {}'.format(self.clave,self.nombre)
    
    def save(self):
        self.clave = self.clave.upper()
        self.nombre = self.nombre.upper()
        super(Area, self).save()

    class Meta:
        managed = True
    
class UserArea(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    area = models.ForeignKey(Area, on_delete=models.CASCADE)

    def __str__(self):
        return '{} - {}'.format(self.user.first_name,self.user.last_name)

    class Meta:
        managed = True

#tabla cie-9
class Cie9(ClaseModelo):
    clave = models.CharField(max_length=20)
    nombre = models.CharField(unique=False,max_length=100,help_text='Nombre del diagnostico',blank=False, null=False)   

    def __str__(self):
        return '{} - {}'.format(self.clave,self.nombre)    

    def save(self):
        self.clave = self.clave.upper()
        self.nombre = self.nombre.upper()
        super(Cie9, self).save()

    class Meta:
        managed = True

#tabla cie-10
class Cie10(ClaseModelo):
    clave = models.CharField(max_length=20)
    nombre = models.CharField(unique=False,max_length=100,help_text='Nombre del diagnostico',blank=False, null=False)   

    def __str__(self):
        return '{} - {}'.format(self.clave,self.nombre)    

    def save(self):
        self.clave = self.clave.upper()
        self.nombre = self.nombre.upper()
        super(Cie9, self).save()

    class Meta:
        managed = True

#Tabla clasificacion
class Clasificacion(ClaseModelo):   
    nombre = models.CharField(unique=True, max_length=100,help_text='Nombre de la clasificacion',blank=False, null=False)

    def __str__(self):
        return '{}'.format(self.nombre)
    
    def save(self):
        self.nombre = self.nombre.upper()
        super(Clasificacion, self).save()

    class Meta:
        managed = True

#Tabla grupo alimento (dietetica)
class GrupoAlimento(ClaseModelo):   
    nombre = models.CharField(unique=True, max_length=100,help_text='Grupo de alimento',blank=False, null=False)   
    
    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(GrupoAlimento, self).save()

    class Meta:
        managed = True


#Tabla procedencia de paciente (seguro popular)
class ProcedenciaPaciente(ClaseModelo):     
    nombre = models.CharField(unique=True, max_length=100,help_text='Procedencia del paciente',blank=False, null=False)   
    
    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(ProcedenciaPaciente, self).save()

    class Meta:
        managed = True

#Tabla subcategoria
class SubCategoria(ClaseModelo):        
    nombre = models.CharField(unique=False, max_length=100,help_text='Nombre de la subcategoria',blank=False, null=False)   
    
    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(SubCategoria, self).save()

    class Meta:
        managed = True      


#Tabla tipo de catalogo
class TipoCatalogo(ClaseModelo):    
    clave= models.IntegerField(primary_key=True)
    nombre = models.CharField(unique=False, max_length=100,help_text='Nombre del tipo de catalogo',blank=False, null=False)   
    partida = models.IntegerField(null=False,blank=False)    

    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(TipoCatalogo, self).save()

    class Meta:
        managed = True


#Tabla tipo de comensal (dietetica)
class TipoComensal(ClaseModelo):   
    nombre = models.CharField(unique=True, max_length=100,help_text='Nombre del tipo de comensal',blank=False, null=False)   
    
    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(TipoComensal, self).save()

    class Meta:
        managed = True 


#Tabla tipo de dieta (dietetica)
class TipoDieta(ClaseModelo):   
    nombre = models.CharField(unique=False, max_length=100,help_text='Nombre del tipo de dieta',blank=False, null=False)   
    
    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(TipoDieta, self).save()

    class Meta:
        managed = True

#tabla tipo de estatus (sigmefi)
class TipoEstatus(ClaseModelo):
    nombre = models.CharField(max_length=100,help_text='Nombre del tipo de estatus', blank=False,null=False)

    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre=self.nombre.upper()
        super(TipoEstatus, self).save()

    class Meta:
        managed = True

#Tabla tipo registro (sigmefi)
class TipoRegistro(ClaseModelo):
    nombre = models.CharField(max_length=100,help_text='Nombre del tipo de registro', blank=False,null=False)

    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(TipoRegistro, self).save()

    class Meta:
        managed = True 


#Tabla tipo de servicio (dietetica)
class TipoServicio(ClaseModelo):     
    nombre = models.CharField(unique=True, max_length=100,help_text='Nombre del servicio',blank=False, null=False)   
    
    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(TipoServicio, self).save()

    class Meta:
        managed = True


#Tabla unidad de medida (dietetica)
class UnidadMedida(ClaseModelo):   
    nombre = models.CharField(unique=False, max_length=100,help_text='Nombre unidad de medida',blank=False, null=False)
    nombre_corto = models.CharField(unique=False, max_length=100,help_text='Nombre corto unidad de medida',blank=False, null=False)   
    
    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        self.nombre_corto = self.nombre_corto.upper()
        super(UnidadMedida, self).save()

    class Meta:
        managed = True 


#tabla tipo de programa
class TipoPrograma(ClaseModelo):
    nombre = models.CharField(unique=False,max_length=100,help_text='Nombre del programa',blank=False, null=False)   

    def __str__(self):
        return '{}'.format(self.nombre)    

    def save(self):
        self.nombre = self.nombre.upper()
        super(TipoPrograma, self).save()

    class Meta:
        managed = True


#tabla entidad federativa
class EntidadFederativa(ClaseModelo):
    nombre = models.CharField(unique=False,max_length=100,help_text='Nombre de la entidad federativa',blank=False, null=False)   

    def __str__(self):
        return '{}'.format(self.nombre)    

    def save(self):
        self.nombre = self.nombre.upper()
        super(EntidadFederativa, self).save()

    class Meta:
        managed = True

#tabla plaza
class Plaza(ClaseModelo):    
    clave = models.CharField(unique=True, primary_key=True,max_length=20)
    nombre = models.CharField(unique=False,max_length=100,help_text='Nombre de la plaza',blank=False, null=False)   

    def __str__(self):
        return '{} - {}'.format(self.clave,self.nombre)    

    def save(self):
        self.clave = self.clave.upper()
        self.nombre = self.nombre.upper()
        super(Plaza, self).save()

    class Meta:
        managed = True

#tabla puesto
class Puesto(ClaseModelo):
    clave = models.CharField(unique=True, primary_key=True,max_length=20)
    nombre = models.CharField(unique=False,max_length=100,help_text='Nombre del puesto',blank=False, null=False)   

    def __str__(self):
        return '{} - {}'.format(self.clave,self.nombre)    

    def save(self):
        self.clave = self.clave.upper()
        self.nombre = self.nombre.upper()
        super(Puesto, self).save()

    class Meta:
        managed = True



################ Con Foreign Key ################

#Tabla Categoria
class Categoria(ClaseModelo):     
    clasificacion = models.ForeignKey(Clasificacion,on_delete=models.CASCADE)
    nombre = models.CharField(unique=False, max_length=100,help_text='Nombre de la categoria',blank=False, null=False)     

    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(Categoria, self).save()

    class Meta:
        managed = True

#Tabla Articulo
class Articulo(ClaseModelo):    
    clave = models.CharField(unique=True, max_length=200,help_text='Clave del articulo',blank=False, null=False)    
    nombre = models.CharField(unique=False, max_length=200,help_text='Nombre del articulo',blank=False, null=False)
    categoria = models.ForeignKey(Categoria,on_delete=models.CASCADE)   
    
    def __str__(self):
        return '{}'.format(self.nombre)

    def save(self):
        self.nombre = self.nombre.upper()
        super(Articulo, self).save()

    class Meta:
        managed = True

#Tabla empleado
class Empleado(ClaseModelo):    
    clave = models.CharField(unique=True,primary_key=True,max_length=20)
    nombre = models.CharField(unique=False,max_length=100,help_text='Nombre del empleado',blank=False, null=False)   
    apellido_paterno = models.CharField(unique=False,max_length=100,help_text='Apellido Paterno del empleado',blank=False, null=False)
    apellido_materno = models.CharField(unique=False,max_length=100,help_text='Apellido Materno del empleado',blank=True, null=True)     
    area = models.ForeignKey(Area, on_delete=models.CASCADE)
    plaza = models.ForeignKey(Plaza, on_delete=models.CASCADE)
    puesto = models.ForeignKey(Puesto, on_delete=models.CASCADE)
    rfc = models.CharField(unique=False,max_length=13,help_text='RFC del empleado',blank=True, null=True)
    curp = models.CharField(unique=False,max_length=18,help_text='CURP del empleado',blank=True, null=True)
    correo = models.CharField(unique=False,max_length=100,help_text='Correo del empleado',blank=True, null=True)

    
    def __str__(self):
        return '{} - {} - {}'.format(self.nombre,self.apellido_paterno,self.apellido_materno)    

    def save(self):
        self.nombre = self.nombre.upper()
        self.apellido_paterno = self.apellido_paterno.upper()
        self.apellido_materno = self.apellido_materno.upper()
        super(Empleado, self).save()

    class Meta:
        managed = True


################ Tablas que sirven solo como consulta y que vienen del SIA ################

#Tabla Productos
class Producto(models.Model):    
    clave = models.CharField(unique=False, max_length=200,help_text='Clave del producto',blank=False, null=False)    
    nombre = models.CharField(unique=False, max_length=200,help_text='Nombre del producto',blank=False, null=False)   
    tipo_catalogo = models.CharField(max_length=200,help_text='Tipo de catalogo del producto',blank=True, null=True)
    presentacion = models.CharField(max_length=200,help_text='Presentacion del producto del producto',blank=True, null=True)
    unimed = models.CharField(max_length=200,help_text='Unidad de medida del producto',blank=True, null=True)
    unimed_min = models.ForeignKey(UnidadMedida,on_delete=models.CASCADE, blank=True,null=True)
    cal_unimed_min = models.DecimalField(max_digits=6, decimal_places=2, null=True, blank=True)
    grupo_alimento = models.ForeignKey(GrupoAlimento,on_delete=models.CASCADE, blank=True,null=True)
    almacen = models.ForeignKey(Area, on_delete=models.CASCADE, blank=True, null=True)
    habilitado = models.BooleanField(default=True)
    

    def __str__(self):
        return '{}'.format(self.nombre)    
   
    class Meta:
        managed = True
        verbose_name = 'Producto'
        verbose_name_plural = 'Productos'
        ordering = ['id']



################ Tablas que solo son consulta ################
class EmpleadosSeguroPopular(ClaseModelo):
    nombre = models.CharField(max_length=200,help_text='Nombre del empleado',blank=False, null=False)
    adscripcion = models.CharField(max_length=200,help_text='Adscripcion del empleado',blank=False, null=False)
    puesto = models.CharField(max_length=200,help_text='Nombre del puesto',blank=False, null=False)

    def __str__(self):
        return '{} - {} - {}'.format(self.nombre,self.adscripcion,self.puesto)

    class Meta:
        managed = True