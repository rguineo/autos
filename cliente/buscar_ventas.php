<?php 

// Este archivo es para ejecutar la consulta desde AJAX para mostrar la informacion 

	include("../php/conexion.php");

	$rut_cli = $_POST['rut'];

	$sql_fact = "SELECT cod_factura, estado_factura, nom_vendedor 
			FROM factura 
			WHERE rut_cliente = '".$rut_cli."';";

	$resultado = mysqli_query($conexion, $sql_fact);
	echo "<table class='table table-condensed'>";
	echo "<tr>";
	echo "<th>Cod Factura</th>";
	echo "<th>Estado Factura</th>";
    echo "<th>Vendedor</th>";
    echo "</tr>";

	while($row=mysqli_fetch_row($resultado)){
		echo "<tr>";
		echo "<td> $row[0] </td>";
		echo "<td> $row[1] </td>";
		echo "<td> $row[2] </td>";
		echo "</tr>";
	}
	echo "</table>";
?>