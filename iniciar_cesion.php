<?php
session_start();
include ("conexion.php");
$correo = $_POST['correo'];
$password = $_POST['password'];
$_SESSION['user'] = $correo;

$verifica = "SELECT COUNT(*) as contar from virtual_tour.usuarios where e_mail = '$correo' and password = '$password';";
$consulta = mysqli_query($conexion,$verifica);
$array = mysqli_fetch_array($consulta);
if(!$consulta) {
    var_dump(mysqli_error($conexion));
    exit;
}


if ($array['contar']>0){
	header("location:1.index.html");
 $_SESSION['user'] = $correo ;
 echo "<script>alert('secion iniciada')</script>";
}else{
	echo "<script>alert('datos incorrectos')</script>";
}

?>