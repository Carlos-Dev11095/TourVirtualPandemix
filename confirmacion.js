
var variable_evento_borrar = document.getElementById("delete");
variable_evento_borrar.addEvenListener("click",() => confirmacion(e));


function confirmacion(e) {
if (confirm("¿Esta seguro que desea eliminar el registro?")){
return true;	
}else{
e.preventDefault();
}

}

let  linkDelete= document.querySelectorAll(".table__item__link");

for(var i=0; i<linkDelete.length; i++){
linkDelete[i].addEvenListener('click', confirmacion);

}