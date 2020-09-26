<?php 
	include("../php/conexion.php");

	$cod_acc = htmlentities($_GET['cod_accesorio']);
	$nom_acc = htmlentities($_GET['nom_accesorio']);
	$des_acc = htmlentities($_GET['des_accesorio']);
	$precio = htmlentities($_GET['precio']);
//	$cantidad = htmlentities($_GET['cantidad_accesorio']);

	$sql_acc = "SELECT cod_accesorio FROM accesorio WHERE cod_accesorio = '".$id_veh."';";
	$res_acc = mysqli_query($conexion, $sql_acc);
	$row = mysqli_fetch_row($res_acc);

	if($row<1){
		$sql_ins = "INSERT INTO accesorio(cod_accesorio, nom_accesorio, desc_accesorio, precio_accesorio) VALUES ('$cod_acc', '$nom_acc', '$des_acc', '$precio');";

		$resultado = mysqli_query($conexion, $sql_ins);
		echo 	"<script language=JavaScript>
					alert('El accesorio ha sido ingresado exitosamente'); 
					window.location.href='mant_accesorio.php';
				</script>";
	}else{
		echo 	"<script language=JavaScript>
					alert('El accesorio ya existe');
					window.location.href='mant_accesorio.php';
				</script>";
	}
 ?>