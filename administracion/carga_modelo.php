<?php 
	include('../php/conexion.php');

	$id_marca = $_POST['tipomarca'];

	echo $id_marca;

	$sql = "SELECT id_modelo, nom_modelo FROM modelo WHERE id_marca = '".$id_marca."';";

	$resultado = mysqli_query($conexion, $sql);

	while($row=mysqli_fetch_row($resultado)){
	//	echo "<option value=\"".$row[0]."\">".$row[1]."</option>";
	
		echo "<option value='$row[0]'>$row[1]</option>";
	}
 ?>