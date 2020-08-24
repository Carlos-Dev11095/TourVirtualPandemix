<?php
include ("conexion.php");

$id = $_POST["id"];
$nombre = $_POST["nombre"];
$password = $_POST["password"];
$e_mail = $_POST["e_mail"];
$rango = $_POST["rango"];

$actualizar="UPDATE virtual_tour.usuarios set nombre = '$nombre' ,  e_mail = '$e_mail', password = '$password', rango = '$rango' WHERE id_usuario = '$id'";

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