<?php 
    include("../php/conexion.php");
    chmod("../js/morris.js", 0750);
	$periodo = $_POST['periodo'];
	
    $sql = "SELECT year(factura.fecha_factura), count(factura.fecha_factura) 
            FROM factura
            WHERE year(fecha_factura) = '".$periodo."';";
    $resultado = mysqli_query($conexion, $sql);
	$row=mysqli_fetch_row($resultado);
	
	
		$fi = fopen("../js/morris.js", "w") 
		or die("Problemas al crear el archivo");
		fwrite($fi, "$(function() {");
		fwrite($fi, "\n");
		fwrite($fi, "    Morris.Bar({");
		fwrite($fi, "\n");
		fwrite($fi, "        element: 'morris-bar-chart',");
		fwrite($fi, "\n");
		fwrite($fi, "        data: [");
		fwrite($fi, "{");
		fwrite($fi, "\n");
	if($row[0]!=''){	
		fwrite($fi, "y: '$row[0]',");
		fwrite($fi, "\n");
		fwrite($fi, "a: $row[1]");
		fwrite($fi, "\n");
	}else{
		fwrite($fi, "y: '".$periodo."',");
		fwrite($fi, "\n");
		fwrite($fi, "a: $row[1]");
		fwrite($fi, "\n");
	}
		fwrite($fi, "}");
		fwrite($fi, "],");
		fwrite($fi, "\n");
		fwrite($fi, "xkey: 'y',");
		fwrite($fi, "\n");
		fwrite($fi, "ykeys: ['a'],");
		fwrite($fi, "\n");
		fwrite($fi, "labels: ['Series A'],");
		fwrite($fi, "\n");
		fwrite($fi, "hideHover: 'auto',");
		fwrite($fi, "\n");
		fwrite($fi, "resize: true");
		fwrite($fi, "\n");
		fwrite($fi, "});");
		fwrite($fi, "\n");
		fwrite($fi, "});");
		fclose($fi);
?>