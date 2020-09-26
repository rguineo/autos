<?php 
	include("../php/conexion.php");

	$nom = htmlentities($_POST['nombre']);
	$apes = htmlentities($_POST['apellidos']);
	$nuser = htmlentities($_POST['nom_user']);
	$priv = htmlentities($_POST['privilegio']);
	$pass = htmlentities($_POST['passwd']);

	$sql_usr = "SELECT nom_user FROM usuarios WHERE nom_user = '".$nuser."' and pass = md5('".$pass."');";
	$res_usr = mysqli_query($conexion, $sql_usr);
	$row = mysqli_fetch_row($res_usr);

	if($row<1){
		$sql_ins = "INSERT INTO usuarios(nombre, apepat, nom_user, pass, privilegio) 
					VALUES ('$nom', '$apes', '$nuser', md5('$pass'), '$priv');";

		$resultado = mysqli_query($conexion, $sql_ins);
		echo 	"<script language=JavaScript>
					alert('El Usuario ha sido ingresado exitosamente'); 
					window.location.href='mant_usuario.php';
				</script>";
	}else{
		echo 	"<script language=JavaScript>
					alert('El Usuario: $nuser ya existe, Intente Nuevamente');
					window.location.href='mant_usuario.php';
				</script>";
	}
 ?>