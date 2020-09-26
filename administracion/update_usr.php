<?php 
	include("../php/conexion.php");

	$id_usr = $_POST['id'];
	$nom = htmlentities($_POST['nombre']);
	$apes = htmlentities($_POST['apellidos']);
	$nuser = htmlentities($_POST['nom_user']);
	$priv = htmlentities($_POST['privilegio']);
	$pass = htmlentities($_POST['passwd']);

	$sql_usr = "UPDATE usuarios
				SET 
					nombre = '$nom',
					apepat = '$apes',
					nom_user = '$nuser',
					privilegio = '$priv',
					pass = md5('$pass')
				WHERE id_usuario = '".$id_usr."';";
	
	$res_usr = mysqli_query($conexion, $sql_usr);

	echo 	"<script language=JavaScript>
				alert('El Usuario ha sido Actualizado exitosamente'); 
				window.location.href='usuarios.php';
			</script>";
 ?>