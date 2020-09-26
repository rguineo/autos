<?php
  	$lifetime=600;
  	session_set_cookie_params($lifetime);
	session_start();
	$privilegio = $_SESSION["privilegio"];
	$user = $_SESSION["user"];
	$nombre = $_SESSION["nombre"];
?>