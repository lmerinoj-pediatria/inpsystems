from django.db import models
from main.models import ClaseModelo
from applications.catalogos.models import Area



CAT_EXCELENCIA = ( 
    ("E", "EXCELENTE"), 
    ("B", "BUENO"), 
    ("R", "REGULAR"), 
    ("M", "MALO"),     
) 

CAT_SATISFACCION = (
    ("MS", "MUY SATISFECHO"), 
    ("S", "SATISFECHO"), 
    ("I", "INSATISFECHO"), 
    ("MI", "MUY INSATISFECHO"),
)

CAT_CONFIRMACION = (
    ("NO", "NO"),
    ("SI", "SI"),
)


#Tabla encuesta pacientes
class EncuestaPacientes(ClaseModelo):
    fecha_registro = models.DateTimeField(auto_now_add=True)
    hora_registro = models.TimeField(auto_now_add=True)
    pregunta1 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta2 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta3 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta4 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta5 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta6 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta7 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta8 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta9 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    pregunta10 = models.CharField(max_length=2,choices=CAT_EXCELENCIA)
    sugerencias = models.CharField(max_length=200,blank=True,null=True)

    def __str__(self):
        return '{}'.format(self.fecha_registro)

    def save(self):        
        super(EncuestaPacientes, self).save()

    class Meta:
        managed = True


#Tabla encuesta medicos
class EncuestaMedicos(ClaseModelo):
    fecha_registro = models.DateTimeField(auto_now_add=True)
    hora_registro = models.TimeField(auto_now_add=True)
    area = models.ForeignKey(Area,on_delete=models.CASCADE)
    
    p1_matutino = models.CharField(max_length=2, choices=CAT_SATISFACCION) 
    p1_vespertino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p1_nocturno = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p1_fin = models.CharField(max_length=2, choices=CAT_SATISFACCION)

    p2_matutino = models.CharField(max_length=2,choices=CAT_SATISFACCION)
    p2_vespertino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p2_nocturno = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p2_fin = models.CharField(max_length=2, choices=CAT_SATISFACCION)

    p3_matutino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p3_vespertino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p3_nocturno = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p3_fin = models.CharField(max_length=2, choices=CAT_SATISFACCION)

    p4_matutino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p4_vespertino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p4_nocturno = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p4_fin = models.CharField(max_length=2, choices=CAT_SATISFACCION)

    p5_matutino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p5_vespertino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p5_nocturno = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p5_fin = models.CharField(max_length=2, choices=CAT_SATISFACCION)

    p6_bacter = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p6_bioq_endocrino = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p6_hemato_onco = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p6_inmuno_genetica = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p6_inmuno_alergia = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p6_nefro = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p6_paramic = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p6_quim_clin_urg = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p6_viro = models.CharField(max_length=2, choices=CAT_SATISFACCION)

    p7 = models.CharField(max_length=2, choices=CAT_CONFIRMACION)
    p8 = models.CharField(max_length=2, choices=CAT_SATISFACCION)
    p9 = models.CharField(max_length=2, choices=CAT_EXCELENCIA)
    p10 = models.CharField(max_length=2, choices=CAT_CONFIRMACION)

    sugerencias = models.CharField(max_length=200)
    clave_medico = models.CharField(max_length=20)
    nombre_medico = models.CharField(max_length=100)

    def __str__(self):
        return '{}'.format(self.fecha_registro)

    def save(self):        
        super(EncuestaMedicos, self).save()

    class Meta:
        managed = True

