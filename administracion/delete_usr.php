<?php 
	include("../php/conexion.php");

	$id_usr = $_GET['id'];

	$sql_usr = "DELETE FROM usuarios 
				WHERE id_usuario = '".$id_usr."';";
	
	$res_usr = mysqli_query($conexion, $sql_usr);

	echo 	"<script language=JavaScript>
				alert('El Usuario ha sido Eliminado exitosamente'); 
				window.location.href='usuarios.php';
			</script>";
 ?>