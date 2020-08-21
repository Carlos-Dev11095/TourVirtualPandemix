<?php
 session_start();

 $varsesion = $_SESSION['user'];
 if($varsesion == null || $varsesion = ''){
	echo 'registrese para usar esta opcion esta pagina';
	die();
	}

	session_destroy();
	header("Location:7.sesion.html");
	?>