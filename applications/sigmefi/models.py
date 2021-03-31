from django.db import models
from main.models import ClaseModelo
from applications.catalogos.models import Categoria,TipoRegistro,TipoEstatus,ProcedenciaPaciente,TipoPrograma,EntidadFederativa

# Create your models here.

#Tabla registro
class Registro(ClaseModelo):

    CIE_CHOICES = (
        ('1','CIE-9'),
        ('2','CIE-10')
    )

    hora_created = models.TimeField(auto_now_add=True, blank=True,null=True)
    usr_registra = models.CharField(max_length=20)
    procedencia_paciente = models.ForeignKey(ProcedenciaPaciente,on_delete=models.CASCADE)
    programa = models.ForeignKey(TipoPrograma,on_delete=models.CASCADE)
    referencia = models.CharField(max_length=50)
    expediente = models.CharField(max_length=10)
    nombre = models.CharField(max_length=45)
    ap_paterno = models.CharField(max_length=45)
    ap_materno = models.CharField(max_length=45, blank=True, null=True)
    fecha_nacimiento = models.DateField()
    edad_ingreso = models.CharField(max_length=50,blank=True, null=True)
    entidad_federativa = models.ForeignKey(EntidadFederativa,on_delete=models.CASCADE)
    poliza = models.IntegerField()
    curp = models.CharField(max_length=18)    
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE)
    tipo_registro = models.ForeignKey(TipoRegistro, on_delete=models.CASCADE)
    folio = models.CharField(max_length=10)
    fecha_ingreso = models.DateField()
    fecha_atencion = models.DateField()
    fecha_egreso = models.DateField()
    comentario = models.CharField(max_length=250, blank=True, null=True)
    monto_recuperado = models.DecimalField(max_digits=6, decimal_places=2)
    monto_erogado = models.DecimalField(max_digits=6, decimal_places=2)
    estatus = models.ForeignKey(TipoEstatus,on_delete=models.CASCADE)
    cie_cve1 = models.CharField(max_length=1, choices=CIE_CHOICES)
    cve_diag1 = models.CharField(max_length=10,blank=True, null=True)
    descrip_diag1 = models.CharField(max_length=200,blank=True, null=True)
    servicio_diag1 = models.CharField(max_length=200,blank=True, null=True) #modifica
    medico_diag1 = models.CharField(max_length=200,blank=True, null=True) #modifica
    cie_cve2 = models.CharField(max_length=1, choices=CIE_CHOICES)
    cve_diag2 = models.CharField(max_length=10, blank=True, null=True)
    descrip_diag2 = models.CharField(max_length=200, blank=True, null=True)
    servicio_diag2 = models.CharField(max_length=200, blank=True, null=True) #modifica
    medico_diag2 = models.CharField(max_length=200, blank=True, null=True) #modifica
    cie_cve3 = models.CharField(max_length=1, choices=CIE_CHOICES)
    cve_diag3 = models.CharField(max_length=10, blank=True, null=True)
    descrip_diag3 = models.CharField(max_length=200, blank=True, null=True)
    servicio_diag3 = models.CharField(max_length=200, blank=True, null=True) #modifica
    medico_diag3 = models.CharField(max_length=200, blank=True, null=True) #modifica

    def __str__(self):
        return '{}'.format(self.created)

    def save(self):
        self.nombre=self.nombre.upper()
        self.ap_paterno=self.ap_paterno.upper()
        self.ap_materno=self.ap_materno.upper()
        self.curp=self.curp.upper()
        self.diagnostico=self.diagnostico.upper()
        self.folio=self.folio.upper()
        self.comentario=self.comentario.upper()
        super(Registro, self).save()

    class Meta:
        managed = True