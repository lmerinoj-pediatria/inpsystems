from django import forms

from .models import Receta,Menu,RecetaDet
from applications.catalogos.models import *

class RecetaForm(forms.ModelForm):
    class Meta:
        model = Receta
        fields = ['nombre','calorias_totales','unidad_medida']        
        widget = {'nombre':forms.TextInput(),            
        }

              

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['unidad_medida'].queryset =  UnidadMedida.objects.filter(habilitado=True,nombre_corto='RAC')
        self.fields['calorias_totales'].widget.attrs['readonly'] = True

class MenuForm(forms.ModelForm):
    class Meta:
        model = Menu
        fields = '__all__'    

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['calorias_totales'].widget.attrs['readonly'] = True


class RecetaDetForm(forms.ModelForm):
    class Meta:
        model = RecetaDet
        fields = '__all__'    

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        


        
