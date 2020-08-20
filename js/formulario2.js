'use strict';

var password = document.getElementById('password');
var correo = document.getElementById('correo');
var boton = document.getElementById('boton');

boton.addEventListener('click',() => validarsecion());

function validarsecion(){
	var valorp = password.value;
    var valorc = correo.value;

    if (valorp == '' || valorn.length > 50 ){
      	alert('el nombre esta vacio o tiene demasiados caracteres');
      	return false;
 }else if (valorc == '' || valorn.length > 50 ){
      	alert('el correo esta vacio o tiene demasiados caracteres');
      	return false;
      }else {
 alert(' usted esta iniciando la secion enviado');
 valorp1 = '';
 valorc = '';
         }
  }
