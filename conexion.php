<?php
$usuario = "root";
$contrasena = "";
$servidor = "localhost";
$basededatos = "virtual_tour";

$conexion= mysqli_connect ($servidor,$usuario,$contrasena) or die("No se ha podido conectar al servidor de Base de Datos");

mysqli_set_charset($conexion,"utf8");




?>