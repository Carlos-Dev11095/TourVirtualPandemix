<?php
include ("conexion.php");

$nombre = $_POST["nombre"];
$password = $_POST["password"];
$Email = $_POST["correo"];
$rango = "reg";

$insertar = "INSERT INTO usuarios(nombre,e_mail,password,rango) VALUES ($nombre, $Email, $password,$rango);";
$resultado = mysqli_query($conexion, $insertar);
if($resultado) {
	header('Location:1.index.html');
}else {
	echo "<script>alert(no se pudo registrar);window.history.go(-1);</script>";
	header('Location:5.registro.html');
}
?>