'use strict'

let apiCie = new Vue ({
    el: '#app3',
    data: {
      info: false                       
  },
  methods: { 
    getFilteredRequest: function() {     
      axios
      .get('http://172.16.82.15:8889/cie10')
      .then(response => (                 
        
        
      ))      
      .catch(() => {    
        this.info = false;        
        alert ("No se encontraron datos del paciente, favor de capturar manualmente...");                  
      })
      .finally(() => {
        if (this.info == false) {          
          this.expediente = '';
          this.nombre = '';
          this.paterno = '';
          this.materno = '';
          this.fecnac = '';
          this.curp = '';          
        }
      })                
    },
         
  }
})