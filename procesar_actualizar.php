<?php
include ("conexion.php");

$nombre = $_POST["id"];
$nombre = $_POST["nombre"];
$password = $_POST["password"];
$Email = $_POST["correo"];
$rango = "reg";

$actualizar="UPDATE virtual_tour.usuarios set nombre="$nombre",password="$password",e_mail="$Email",rango="$rango" WHERE id_usuario='$id'";

$resultado = mysqli_query($conexion, $actualizar);

if(!$resultado) {
    var_dump(mysqli_error($conexion));
    header('Location:edit_user.php');
    echo "<script>alert('tabla actualizada')</script>";
    exit;
}else {
	header('Location:procesar_actualizar.php');
	echo "<script>alert('no pudo actualizarse')</script>";
}

?>