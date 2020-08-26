'use strict';

var nombre = document.getElementById('nombre');
var password = document.getElementById('password');
var password2 = document.getElementById('password2');
var correo = document.getElementById('correo');
var boton_registro = document.getElementById('boton_registro');
var formulario_registro = document.getElementById('formulario_registro');

boton_registro.addEventListener('click',() => validarFormulario());

function validarFormulario(){
         var valorn = nombre.value;
         var valorp1 = password.value;
         var valorp2 = password2.value;
         var valorc = correo.value;
      
      if (valorn == '' || valorn.length > 50 ){
      	alert('El nombre esta vacio o tiene mas de 50 caracteres');
         formulario_registro.action = '';
      	
      }else if (valorp1 == '' || valorp2 == ''  ){
      	alert('el password esta vacio o o su confirmacion');
      	formulario_registro.action = '';
      }else if (valorp1 != valorp2 ){
      	alert('el password no es igual');
      	formulario_registro.action = '';
      }else if (valorc == '' || valorn.length > 50 ){
      	alert('el correo esta vacio o tiene demasiados caracteres');
      	formulario_registro.action = '';
      }else {
 alert('enviado');
 valorn = '';
 valorp1 = '';
 valorp2 = '';
 valorc = '';
         }
        }