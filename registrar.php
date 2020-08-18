<?php
include ("conexion.php");

$nombre = $_POST["nombre"];
$contraseña = $_POST["password"];
$Email = $_POST["correo"];

$insertar = "INSERT INTO usuarios(nombre, e_mail, contraseña) VALUES ('$nombre', '$Email', '$contraseña')"; 
$resultado = mysql_query($conexion, $insertar);
if($resultado) {
	echo "<script>alert('se ha regstrado con exito');
	window.location='/Tabla-datos-grid'</script>";
}else {
	echo "<script>alert(no se pudo registrar);window.history.go(-1);</script>";
}
?>