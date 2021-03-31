from django import forms

from .models import *
from applications.catalogos.models import Categoria

class RegistroForm(forms.ModelForm):
    #filtro de categorias
    categoria=forms.ModelChoiceField(
        queryset=Categoria.objects.filter(habilitado=True,clasificacion__nombre='insabi').
        order_by('nombre'),        
    )   


    class Meta:
        model = Registro
        fields = '__all__'                
        

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        
        #seccion de webservice medsys
        self.fields['expediente'].widget.attrs.update({
            'v-model':'expediente',
            'autofocus':'true'            
        })
        self.fields['nombre'].widget.attrs.update({
            'v-model':'nombre'
        })
        self.fields['ap_paterno'].widget.attrs.update({
            'v-model':'paterno'
        })
        self.fields['ap_materno'].widget.attrs.update({
            'v-model':'materno'
        })
        self.fields['fecha_nacimiento'].widget.attrs.update({
            'v-model':'fecnac'
        })
        self.fields['edad_ingreso'].widget.attrs.update({
            'v-model':'eding',
            'readonly':True
            
        })
        self.fields['curp'].widget.attrs.update({
            'v-model':'curp'
        })

        #seccion de datos medicos
        
        #diagnostico 1
        self.fields['cie_cve1'].widget.attrs.update({
            'v-model':'ciecve1',
            '@click': 'selectCieList()'
        })
        
        self.fields['cve_diag1'].widget.attrs.update({
            'v-model':'cvediag1'
        })
        
        self.fields['descrip_diag1'].widget.attrs.update({
            'v-model':'descripdiag1'
        })
        
        #diagnostico 2
        self.fields['cie_cve2'].widget.attrs.update({
            'v-model':'ciecve2'
        })

        self.fields['cve_diag2'].widget.attrs.update({
            'v-model':'cvediag2'
        })
        
        self.fields['descrip_diag2'].widget.attrs.update({
            'v-model':'descripdiag2'
        })
        
        #diagnostico 3
        self.fields['cie_cve3'].widget.attrs.update({
            'v-model':'ciecve3'
        })
        
        self.fields['cve_diag3'].widget.attrs.update({
            'v-model':'cvediag3'
        })
        
        self.fields['descrip_diag3'].widget.attrs.update({
            'v-model':'descripdiag3'
        })
        


        