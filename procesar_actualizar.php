<?php
include ("conexion.php");

$id = $_GET["id"];
$nombre = $_POST["nombre"];
$password = $_POST["password"];
$Email = $_POST["correo"];
$rango = $_POST["rango"];

$actualizar="UPDATE virtual_tour.usuarios set nombre = '$nombre' ,  e_mail = '$e_mail', PASSWORD = '$password', rango = '$rango' WHERE id_usuario = '$id'";

$resultado = mysqli_query($conexion, $actualizar);

if(!$resultado) {
    var_dump(mysqli_error($conexion));
    header('Location:edit_user.php');
   echo "<script>alert('no pudo actualizarse')</script>";

    exit;
}else {
	header('Location:edit_user.php');
 echo "<script>alert('tabla actualizada')</script>";


}

?>