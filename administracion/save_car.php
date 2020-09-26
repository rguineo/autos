<?php 
	include("../php/conexion.php");

	$id_veh = htmlentities($_GET['id_vehiculo']);
	$marca = $_GET['marca'];
	$modelo = $_GET['modelo'];
	$color = $_GET['color'];
	$precio = htmlentities($_GET['precio']);
	$tipo = $_GET['tipo'];
	$anno = $_GET['anno'];

	$sql_veh = "SELECT id_vehiculo FROM vehiculo WHERE id_vehiculo = '".$id_veh."';";
	$res_veh = mysqli_query($conexion, $sql_veh);
	$row = mysqli_fetch_row($res_veh);

	if($row < 1){
		$sql_ins = "INSERT INTO vehiculo VALUES ('$id_veh', '$modelo', '$color', '$precio', '$tipo', '$anno', 'Stock');";

		$resultado = mysqli_query($conexion, $sql_ins);
		echo 	"<script language=JavaScript>
					alert('El vehiculo codigo: $id_veh ha sido ingresado exitosamente'); 
					window.location.href='mant_vehiculo.php';
				</script>";
	}else{
		echo 	"<script language=JavaScript>
					alert('El vehiculo codigo: $row[0] ya existe, Intente Nuevamente');
					window.location.href='mant_vehiculo.php';
				</script>";
	}
 ?>