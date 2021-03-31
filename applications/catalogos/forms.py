from django import forms

from .models import *

class ClasificacionForm(forms.ModelForm):
    class Meta:
        model = Clasificacion
        fields = '__all__'        
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class CategoriaForm(forms.ModelForm):
    #filtro de categorias
    clasificacion=forms.ModelChoiceField(
        queryset=Clasificacion.objects.filter(habilitado=True).
        order_by('nombre'),        
    )
    class Meta:
        model = Categoria
        fields = '__all__'
        labels = {'clasificacion':'Clasificacion',
                'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })

class SubCategoriaForm(forms.ModelForm):
    class Meta:
        model = SubCategoria
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })

class TipoServicioForm(forms.ModelForm):
    class Meta:
        model = TipoServicio
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class TipoComensalForm(forms.ModelForm):
    class Meta:
        model = TipoComensal
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class TipoDietaForm(forms.ModelForm):
    class Meta:
        model = TipoDieta
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class TipoEstatusForm(forms.ModelForm):
    class Meta:
        model = TipoEstatus
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class TipoRegistroForm(forms.ModelForm):
    class Meta:
        model = TipoRegistro
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class ArticuloForm(forms.ModelForm):
    #aplicando filtro para mostrar solo los activos u habilitados y en orden    
    class Meta:
        model = Articulo
        fields = '__all__'        
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })

    def save(self, commit=True):
        data = {}
        form = super()
        try:
            if form.is_valid():
                form.save()
            else:
                data['error'] = form.errors
        except Exception as e:
            data['error'] = str(e)
        return data


class GrupoAlimentoForm(forms.ModelForm):
    class Meta:
        model = GrupoAlimento
        fields = '__all__'        
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class UnidadMedidaForm(forms.ModelForm):
    class Meta:
        model = UnidadMedida
        fields = '__all__'        
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True
 
class AreaForm(forms.ModelForm):
    class Meta:
        model = Area
        fields = '__all__'        
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })

class ProcedenciaPacienteForm(forms.ModelForm):
    class Meta:
        model = ProcedenciaPaciente
        fields = '__all__'        
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })

class TipoProgramaForm(forms.ModelForm):
    class Meta:
        model = TipoPrograma
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class EntidadFederativaForm(forms.ModelForm):
    class Meta:
        model = EntidadFederativa
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True

class EmpleadosSeguroPopularForm(forms.ModelForm):
    class Meta:
        model = EmpleadosSeguroPopular
        fields = '__all__'
        labels = {'nombre':'Nombre',
                'activo':'Estado'}
        widget = {'nombre':forms.TextInput()}

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['nombre'].widget.attrs['autofocus'] = True


#Productos que vienen del SIA

class ProductoForm(forms.ModelForm):

    #filtro de unidad de medida
    unimed_min=forms.ModelChoiceField(
        queryset=UnidadMedida.objects.filter(habilitado=True).
        order_by('nombre'),
        empty_label='-------------'
    )

    #filtro de grupo de alimento
    grupo_alimento=forms.ModelChoiceField(
        queryset=GrupoAlimento.objects.filter(habilitado=True).
        order_by('nombre'),
        empty_label='-------------'
    )
    
    class Meta:
        model = Producto
        fields = '__all__'        
        widget = {'nombre':forms.TextInput(),
            'almacen':forms.TextInput()
        }

    def __init__(self, *args, **kwargs):
        super().__init__(*args,**kwargs)
        for field in iter(self.fields):
            self.fields[field].widget.attrs.update({
                'class':'form-control'
            })
        self.fields['clave'].widget.attrs['readonly'] = True
        self.fields['nombre'].widget.attrs['readonly'] = True
        self.fields['tipo_catalogo'].widget.attrs['readonly'] = True
        self.fields['presentacion'].widget.attrs['readonly'] = True
        self.fields['unimed'].widget.attrs['readonly'] = True
        self.fields['almacen'].widget.attrs['readonly'] = True
        #self.fields['habilitado'].widget.attrs['hidden'] = True
            