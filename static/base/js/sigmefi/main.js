'use strict'

$(document).ready(function() {

    //alert ("Miketrix");

    //Implementacion del calendario para el campo fecha de nacimiento
    $( function() {
        $.datepicker.regional['es'] = {
        closeText: 'Cerrar',
        prevText: '< Ant',
        nextText: 'Sig >',
        currentText: 'Hoy',
        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
        dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
        weekHeader: 'Sm',
        dateFormat: 'dd/mm/yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
        };
        $.datepicker.setDefaults($.datepicker.regional['es']);
        $(function () {
        $("#id_fecha_nacimiento").datepicker();
        });
        $("#id_fecha_nacimiento").datepicker({
            dateFormat:'yy-mm-dd',
            changeMonth:true,
            changeYear:true,
            yearRange: '1900:2999',
            //showOn:"button",
            //buttonImage:"../public/img/calendario.png",
            //buttonImageOnly: true,
            showButtonPanel: true,
        });

    });

    //Implementacion del calendario para el campo fecha de ingreso
    $( function() {
        $.datepicker.regional['es'] = {
        closeText: 'Cerrar',
        prevText: '< Ant',
        nextText: 'Sig >',
        currentText: 'Hoy',
        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
        dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
        weekHeader: 'Sm',
        dateFormat: 'dd/mm/yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
        };
        $.datepicker.setDefaults($.datepicker.regional['es']);
        $(function () {
        $("#id_fecha_ingreso").datepicker();
        });
        $("#id_fecha_ingreso").datepicker({
            dateFormat:'yy-mm-dd',
            changeMonth:true,
            changeYear:true,
            yearRange: '1900:2999',
            //showOn:"button",
            //buttonImage:"../public/img/calendario.png",
            //buttonImageOnly: true,
            showButtonPanel: true,
        });

    });

    //Implementacion del calendario para el campo fecha de ingreso
    $( function() {
        $.datepicker.regional['es'] = {
        closeText: 'Cerrar',
        prevText: '< Ant',
        nextText: 'Sig >',
        currentText: 'Hoy',
        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
        dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
        weekHeader: 'Sm',
        dateFormat: 'dd/mm/yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
        };
        $.datepicker.setDefaults($.datepicker.regional['es']);
        $(function () {
        $("#id_fecha_ingreso").datepicker();
        });
        $("#id_fecha_ingreso").datepicker({
            dateFormat:'yy-mm-dd',
            changeMonth:true,
            changeYear:true,
            yearRange: '1900:2999',
            //showOn:"button",
            //buttonImage:"../public/img/calendario.png",
            //buttonImageOnly: true,
            showButtonPanel: true,
        });

    });

    //Implementacion del calendario para el campo fecha de ingreso
    $( function() {
        $.datepicker.regional['es'] = {
        closeText: 'Cerrar',
        prevText: '< Ant',
        nextText: 'Sig >',
        currentText: 'Hoy',
        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
        dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
        weekHeader: 'Sm',
        dateFormat: 'dd/mm/yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
        };
        $.datepicker.setDefaults($.datepicker.regional['es']);
        $(function () {
        $("#id_fecha_atencion").datepicker();
        });
        $("#id_fecha_atencion").datepicker({
            dateFormat:'yy-mm-dd',
            changeMonth:true,
            changeYear:true,
            yearRange: '1900:2999',
            //showOn:"button",
            //buttonImage:"../public/img/calendario.png",
            //buttonImageOnly: true,
            showButtonPanel: true,
        });

    });

    //Implementacion del calendario para el campo fecha de ingreso
    $( function() {
        $.datepicker.regional['es'] = {
        closeText: 'Cerrar',
        prevText: '< Ant',
        nextText: 'Sig >',
        currentText: 'Hoy',
        monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
        monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
        dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
        dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
        dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
        weekHeader: 'Sm',
        dateFormat: 'dd/mm/yy',
        firstDay: 1,
        isRTL: false,
        showMonthAfterYear: false,
        yearSuffix: ''
        };
        $.datepicker.setDefaults($.datepicker.regional['es']);
        $(function () {
        $("#id_fecha_egreso").datepicker();
        });
        $("#id_fecha_egreso").datepicker({
            dateFormat:'yy-mm-dd',
            changeMonth:true,
            changeYear:true,
            yearRange: '1900:2999',
            //showOn:"button",
            //buttonImage:"../public/img/calendario.png",
            //buttonImageOnly: true,
            showButtonPanel: true,
        });

    }); //Fin calendario
    
    
    
    $('#id_fecha_nacimiento').change(function() {
        var fecha = $('#id_fecha_nacimiento').val();
        //alert(fecha);
    
        if (fecha){
            $('#id_edad_ingreso').val(calcularEdad(fecha));
        }else{
            alert("Valor incorrecto o nulo de la fecha");
        }
    
    });

  
    
    function calcularEdad(fecha) {
        // Si la fecha es correcta, calculamos la edad
      
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
      
              return edad + " años, " + meses + " meses y " + dias + " días";
          }      
      
          function esNumero(strNumber) {
          if (strNumber == null) return false;
          if (strNumber == undefined) return false;
          if (typeof strNumber === "number" && !isNaN(strNumber)) return true;
          if (strNumber == "") return false;
          if (strNumber === "") return false;
          var psInt, psFloat;
          psInt = parseInt(strNumber);
          psFloat = parseFloat(strNumber);
          return !isNaN(strNumber) && !isNaN(psFloat);
        }
      





}); //Cierre del documento ready



