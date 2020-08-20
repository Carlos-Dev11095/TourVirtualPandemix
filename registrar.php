<?php
include ("conexion.php");

$nombre = $_POST["nombre"];
$password = $_POST["password"];
$Email = $_POST["correo"];
$rango = "reg";


$insertar = "INSERT INTO virtual_tour.usuarios(nombre,e_mail,password,rango) VALUES ('$nombre', '$Email', '$password','$rango');";
$resultado = mysqli_query($conexion, $insertar);

if(!$resultado) {
    var_dump(mysqli_error($conexion));
    exit;
}else {
	header('Location:1.index.html');
}

?>