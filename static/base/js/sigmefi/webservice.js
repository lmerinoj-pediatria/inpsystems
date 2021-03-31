'use strict'

// consume api con parametros

//Para los datos del paciente
var app = new Vue({
  el: '#app',
  delimiters: ['{$', '$}'],
  data: {
      info: false,
      expediente: null,
      nombre: null,
      paterno: null,
      materno: null,
      fecnac: null,
      eding: null,
      curp: null,
      ciecve1: null,
      ciecve2: null,
      ciecve3: null                
  },
  watch:{
    fecnac: function() {
      
      var fecha = this.fecnac

      console.log(fecha)

      if (typeof fecha != "string" && fecha && esNumero(fecha.getTime())) {
        fecha = formatDate(fecha, "yyyy-MM-dd");
      }

      var values = fecha.split("-");
              var dia = values[2];
              var mes = values[1];
              var annio = values[0];
      
              // cogemos los valores actuales
              var fecha_hoy = new Date();
              var ahora_annio = fecha_hoy.getYear();
              var ahora_mes = fecha_hoy.getMonth() + 1;
              var ahora_dia = fecha_hoy.getDate();
      
              // realizamos el calculo
              var edad = (ahora_annio + 1900) - annio;
              if (ahora_mes < mes) {
                  edad--;
              }
              if ((mes == ahora_mes) && (ahora_dia < dia)) {
                  edad--;
              }
              if (edad > 1900) {
                  edad -= 1900;
              }
      
              // calculamos los meses
              var meses = 0;
      
              if (ahora_mes > mes && dia > ahora_dia)
                  meses = ahora_mes - mes - 1;
              else if (ahora_mes > mes)
                  meses = ahora_mes - mes
              if (ahora_mes < mes && dia < ahora_dia)
                  meses = 12 - (mes - ahora_mes);
              else if (ahora_mes < mes)
                  meses = 12 - (mes - ahora_mes + 1);
              if (ahora_mes == mes && dia > ahora_dia)
                  meses = 11;
      
              // calculamos los dias
              var dias = 0;
              if (ahora_dia > dia)
                  dias = ahora_dia - dia;
              if (ahora_dia < dia) {
                  ultimoDiaMes = new Date(ahora_annio, ahora_mes - 1, 0);
                  dias = ultimoDiaMes.getDate() - (dia - ahora_dia);
              }
      
              return this.eding = edad + " años, " + meses + " meses y " + dias + " días";

    }, // fin watch fecnac

    ciecve1: function(){

      var cve1 = this.ciecve1

      if (cve1=='1') {
        alert("elegiste 1");
      } else {
        alert("elegiste2");
      }

    }, // fin watch ciecve1


  },  
  
  

  methods: { 
    
    //Metodo para obtener los datos del paciente desde el webservice de Medsys
    getFilteredRequest: function(expediente) {      
      expediente = this.expediente
      axios
      .get('http://172.16.82.15:8888/patient/' + expediente)
      .then(response => (                  
        this.info = true,        
        this.expediente = response.data.data.expediente,
        this.nombre = response.data.data.nombre,
        this.paterno = response.data.data.paterno,
        this.materno = response.data.data.materno,
        this.fecnac = response.data.data.fechaNacimiento.split('/').reverse().join('-'),
        this.curp = response.data.data.curp
      ))      
      .catch(() => {    
        this.info = false;
        Swal.fire({
          icon: 'error',
          title: '¡No se encontraron datos del paciente!',
          text: 'Favor de capturar los datos manualmente'          
        })                  
      })
      .finally(() => {
        if (this.info == false) {          
          this.expediente = '';
          this.nombre = '';
          this.paterno = '';
          this.materno = '';
          this.fecnac = '';
          this.eding = '';
          this.curp = '';          
        }
      })                
    }, //cierre del metodo getFilteredRequest

    //Metodo para validar si es numero una fecha de nacimiento
    esNumero: function(strNumber) {
      if (strNumber == null) return false;
          if (strNumber == undefined) return false;
          if (typeof strNumber === "number" && !isNaN(strNumber)) return true;
          if (strNumber == "") return false;
          if (strNumber === "") return false;
          var psInt, psFloat;
          psInt = parseInt(strNumber);
          psFloat = parseFloat(strNumber);
          return !isNaN(strNumber) && !isNaN(psFloat);
    }, //cierre del metodo esNumero

    //Metodo para obtener los datos del paciente desde el webservice de Medsys
    getCie9Request: function() { 
      axios
      .get('http://172.16.82.15:8889/cie10/')
      .then(response => (                  
        this.info = true,        
        this.ciecve1 = response.data.data.expediente        
      ))      
      .catch(() => {    
        this.info = false;
        Swal.fire({
          icon: 'error',
          title: '¡No se encontraron datos del paciente!',
          text: 'Favor de capturar los datos manualmente'          
        })                  
      })
      .finally(() => {
        if (this.info == false) {          
          this.expediente = '';
          this.nombre = '';
          this.paterno = '';
          this.materno = '';
          this.fecnac = '';
          this.eding = '';
          this.curp = '';          
        }
      })                
    }, //cierre del metodo getFilteredRequest

  } //cierre de seccion methods

})




