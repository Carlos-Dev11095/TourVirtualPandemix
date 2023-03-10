<?php
$usuario = "root";
$contrasena = "1M7UARTKmB296SZotGYk";
$servidor = "containers-us-west-90.railway.app";
$basededatos = "railway";
$port ="7608";
$conexion= mysqli_connect ($servidor,$usuario,$contrasena,$port) or die("No se ha podido conectar al servidor de Base de Datos");
mysqli_set_charset($conexion,"utf8");
?>
