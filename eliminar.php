<?php
include ("conexion.php");
 $id= $_GET['id'];
$eliminar="DELETE from virtual_tour.usuarios where id_usuario= '$id'";

$resultadoEliminar= mysqli_query($conexion,$eliminar) or die(mysqli_error($conexion));

if($resultadoEliminar){
header("Location: delete.php");
}else{
	echo "<script>alert('No se pudo eliminar'); window.history.go(-1);</script>";
}
