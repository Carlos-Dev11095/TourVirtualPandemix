<?php
require 'conexion.php';
session_start();

$correo = $_POST['correo'];
$password = $_POST['password']

$q = "SELECT COUNT(*) as contar from virtual_tour.usuarios where e_mail = '$correo' and password = '$password'";
$consulta = msqli_query($conexion,$q);
$array = msqli_fetch_array($consulta);

if ($array['contar']>0){
	header("location:index.html")
 $_SESSION['user'] = $correo
 alert('secion iniciada');
}else{
	alert('datos incorrectos');
}

?>