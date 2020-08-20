'use strict';

var nombre = document.getElementById('nombre');
var password = document.getElementById('password');
var password2 = document.getElementById('password2');
var correo = document.getElementById('correo');
var boton = document.getElementById('boton');

boton.addEventListener('click',() => validarFormulario());

function validarFormulario(){
         var valorn = nombre.value;
         var valorp1 = password.value;
         var valorp2 = password2.value;
         var valorc = correo.value;
      
      if (valorn == '' || valorn.length > 50 ){
      	alert('el nombre esta vacio o tiene demasiados caracteres');
      	return false;
      }else if (valorp1 == '' || valorp2 == ''  ){
      	alert('el password esta vacio o o su confirmacion');
      	return false;
      }else if (valorp1 != valorp2 ){
      	alert('el password no es igual');
      	return false;
      }else if (valorc == '' || valorn.length > 50 ){
      	alert('el correo esta vacio o tiene demasiados caracteres');
      	return false;
      }else {
 alert('enviado');
 valorn = '';
 valorp1 = '';
 valorp2 = '';
 valorc = '';
         }
        }