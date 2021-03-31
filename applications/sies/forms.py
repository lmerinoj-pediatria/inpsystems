from django import forms

from .models import *

class EncPacForm(forms.ModelForm):
    class Meta:
        model = EncuestaPacientes
        fields = '__all__'        
        widget = {'sugerencias':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['habilitado'].widget.attrs['hidden'] = True

class EncMedForm(forms.ModelForm):
    class Meta:
        model = EncuestaMedicos
        fields = '__all__'        
        widget = {'sugerencias':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['habilitado'].widget.attrs['hidden'] = True
        self.fields['area'].widget.attrs.update({
            'data-live-search':'True'                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           
        })