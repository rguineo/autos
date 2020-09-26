<?php 
// LOG para sitio (registro de actividad usuarios)

date_default_timezone_set("America/Santiago");
	$time = time();
	$fecha = date("Y-m-d", $time);
	$hora = date("H:i:s", $time);
	$url = $_SERVER['SCRIPT_NAME'];

	$consulta = "INSERT INTO login(nom_user, hora, fecha, formulario) VALUES ('".$user."', '".$hora."', '".$fecha."', '".$url."')";
	$resulta = mysqli_query($conexion, $consulta);
// Fin LOG
?>