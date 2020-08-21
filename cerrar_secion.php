<?php
 session_start();

 $varsesion = $_SESSION['user'];
 if($varsesion == null || $varsesion = ''){
	echo "<script>alert('debes registrarte para iniciar secion')</script>";
	die();
	}

	session_destroy();
	header("Location:7.sesion.html");
	?>