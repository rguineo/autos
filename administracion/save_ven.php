<?php 
	include("../php/conexion.php");

	$nom = htmlentities($_POST['nom_vendedor']);
	$apes = htmlentities($_POST['apes_vendedor']);
	$nuser = htmlentities($_POST['nom_user']);
	$pass = htmlentities($_POST['passwd']);

	$sql_ven = "SELECT nom_user 
				FROM usuarios 
				WHERE nom_user = '".$nuser."';";
	$res_ven = mysqli_query($conexion, $sql_ven);
	$row = mysqli_fetch_row($res_ven);

	if($row<1){
		$sql_ins = "INSERT INTO usuarios(nombre, apepat, nom_user, pass, privilegio) 
					VALUES ('$nom', '$apes', '$nuser', md5('$pass'), '1');";

		$resultado = mysqli_query($conexion, $sql_ins);
		echo 	"<script language=JavaScript>
					alert('El Vendedor ha sido ingresado exitosamente'); 
					window.location.href='mant_vendedor.php';
				</script>";
	}else{
		echo 	"<script language=JavaScript>
					alert('El Vendedor de usuario: $nuser ya existe, Intente Nuevamente');
					window.location.href='mant_vendedor.php';
				</script>";
	}
 ?>