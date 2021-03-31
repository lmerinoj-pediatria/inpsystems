from django.db import models



# Create your models here.
class ClaseModelo(models.Model):
    habilitado = models.BooleanField(default=True)
    created = models.DateField(auto_now_add=True, blank=True,null=True)
    updated = models.DateField(auto_now=True, blank=True,null=True)

    class Meta:
        abstract = True #habilitando que sea una clase abstracta


