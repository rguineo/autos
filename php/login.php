<?php
	session_start();

	include("conexion.php");
	$usuario = htmlentities($_POST['user']);
	$password = htmlentities($_POST['pass']);

	$sql = "SELECT nom_user, privilegio, nombre
			from usuarios 
			where nom_user = '".$usuario."' and pass = md5('".$password."')";

	$resultado = mysqli_query($conexion, $sql);

	if('1' == mysqli_num_rows($resultado)){
		$linea = mysqli_fetch_array($resultado);

		$user = $linea[0];
		$privilegio = $linea[1];
		$nombre = $linea[2];
		
		// mantener los privilegios en la sesion
		$_SESSION["user"] = $user;
		$_SESSION["privilegio"] = $privilegio;
		$_SESSION["nombre"] = $nombre;

		switch ($privilegio) {
			case '0':
				header("location: ../cliente/cliente.php");
				break;
			case '1':
				header("location: ../ventas/ventas.php");
				break;
			case '2':
				header("location: ../administracion/admin.php");
				break;
		}

	}else{
		header("location: ../");
	}
	mysql_close();
?>