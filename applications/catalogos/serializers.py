from rest_framework import serializers
from .models import Producto,EmpleadosSeguroPopular

class ProductoSerializer(serializers.ModelSerializer):
    class Meta:
        model = Producto
        fields = (            
            'id',
            'clave',
            'nombre',
        )

class EmpleadosSeguroPopularSerializer(serializers.ModelSerializer):
    class Meta:
        model = EmpleadosSeguroPopular
        fields = ( 
            'nombre',
            'adscripcion',
            'puesto',
        )