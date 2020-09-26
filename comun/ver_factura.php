<?php
// Funcion numeros a palabras

// Fin funcion numero a palabras
	include("../php/seguridad.php");
	include("../php/conexion.php");
	include("../php/config.php");
	include("../tools/numeros_a_letras.php");
	include_once("../tools/class.barcode.php");
	

	function pasaranumero($string) {
  		$string = str_replace(".","",$string); //borro los separadores de miles, si hay
  		$string = str_replace(",",".",$string); //convierto las comas en puntos
  		//$string = settype($string,"float"); // lo convierto en un número
  		return $string;
	}  

	function formato($num){
		echo "$".number_format($num, 2, ",", ".");
	}


	$nom_pag='Factura';

	include("../php/log_user.php");

	$time = time();
	$fecha = date("Y-m-d", $time);
	$hora = date("H:i:s", $time);

	$fech_print = "$fecha $hora";

	$cod_factura = $_GET['id'];

	$sql_fact = "SELECT factura.cod_factura, factura.fecha_factura, factura.rut_cliente, cliente.nombre_cliente, cliente.apepat_cliente, cliente.apemat_cliente, cliente.dire_cliente, cliente.email_cliente, cliente.fono_cliente, cliente.ciudad_cliente, factura.estado_factura, factura.nom_vendedor 
				FROM factura
				INNER JOIN cliente
				ON factura.rut_cliente = cliente.rut_cliente
				AND factura.cod_factura = '".$cod_factura."'";
	$resultado = mysqli_query($conexion, $sql_fact);


	$sql_detalle ="SELECT detalle_fac.id_vehiculo, marca.nom_marca, modelo.nom_modelo, vehiculo.color_vehiculo, vehiculo.anno_vehiculo, vehiculo.precio_vehiculo, detalle_fac.cod_deta
		FROM factura
		INNER JOIN detalle_fac
		ON detalle_fac.cod_factura = factura.cod_factura AND factura.cod_factura = '".$cod_factura."'
		INNER JOIN vehiculo
		ON detalle_fac.id_vehiculo = vehiculo.id_vehiculo
		INNER JOIN modelo
		ON vehiculo.id_modelo=modelo.id_modelo
		INNER JOIN marca
		ON marca.id_marca = modelo.id_marca;";

	$res_deta = mysqli_query($conexion, $sql_detalle);


	$sql_accesorio = "SELECT accesorio.cod_accesorio, accesorio.nom_accesorio, deta_accesorio.estado, accesorio.precio_accesorio 
		FROM accesorio
		INNER JOIN deta_accesorio
		ON deta_accesorio.cod_accesorio = accesorio.cod_accesorio
		INNER JOIN detalle_fac
		ON detalle_fac.cod_deta = deta_accesorio.cod_deta AND detalle_fac.cod_factura='".$cod_factura."';";
	$res_accesorio = mysqli_query($conexion, $sql_accesorio);

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
	<!-- DataTables CSS -->
    <link href="../css/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="../css/dataTables.responsive.css" rel="stylesheet">

	<link rel="icon" type="image/png" href="../images/favicon1.png" />
	<script src="../js/jquery-2.1.4.min.js" type="text/javascript"></script> 

    
<title>	<?php 
			echo $empresa."-".$nom_pag;
		?>

</title>

<script type="text/javascript">

function format(input)
{
	var num = input.value.replace(/\./g,'');
	if(!isNaN(num)){
		num = num.toString().split('').reverse().join('').replace(/(?=\d*\.?)(\d{3})/g,'$1.');
		num = num.split('').reverse().join('').replace(/^[\.]/,'');
		input.value = num;
	}
	 
	else{ alert('Solo se permiten numeros');
		input.value = input.value.replace(/[^\d\.]*/g,'');
	}
}

</script>

</head>
<body>
<?php include('../theme/header_factura.php'); ?>
    <section class="main">
		<div class="wrapp">
			<div>
                <p style="text-align:right; text-size: 18px;"><strong>Fecha Impresi&oacute;n <?php echo $fech_print; ?></strong></p>
			</div>


			<div class="panel panel-default">
				<div class="panel-heading" style="height: 170px;">
					<div class="col-lg-4" style="float: left;">
	                    <div class="well well-sm" style="text-align: center; width: 400px;">
	                       <h4><?php echo strtoupper($giro);?></h4>
	                       <h5><?php echo $direccion." - ".$ciudad;?></h5>
	                       <h5><?php echo "e-Mail: ".$email;?></h5>
	                       <h5><?php echo "Telefono: ".$telefono;?></h5>
	                    </div>
	                </div>
	                <div class="col-lg-4" style="float: right;">
	                    <div class="well well-sm" style="text-align: center; border-color: #FF0000;">
	                       <h4 style="color: red;">R.U.T.: <?php echo $rut_empresa;?></h4>
	                       <h4 style="color: red;">FACTURA</h4>
	                       <h4 style="color: red;">N° <?php echo $cod_factura;?></h4>
	                       <h4 style="color: red;">S.I.I - <?php echo $ciudad;?></h4>

	                    </div>
	                </div>
				</div>
			</div>
 
				<div class="panel panel-default">
					<div class="panel-heading"><h2>Informaci&oacute;n Factura</h2>
						<div class="panel-body">
							<table class="table table-condensed">
								<?php while($row_fact=mysqli_fetch_row($resultado)){
								echo "<tr>";
								echo "	<td>Factura N°</td>";
								echo "	<td><input name='nfactura' id='bar_code' value='$row_fact[0]' disabled></td>";
								echo "  <td>Fecha Factura</td>";
								echo "	<td><input name='fch_factura' value='$row_fact[1]' disabled></td>";
								echo "</tr>";

								echo "<tr>";
								echo "	<td>RUT Cliente</td>";
								echo "	<td><input name='rutcliente' value='$row_fact[2]' disabled></td>";
								echo "	<td>Nombre Cliente</td>";
								echo "	<td><input name='nom_cliente' value='$row_fact[3] $row_fact[4] $row_fact[5]' disabled></td>";
								echo "</tr>";


								echo "<tr>";
								echo "	<td>Direccion</td>";
								echo "	<td><input name='direccion' value='$row_fact[6]' disabled></td>";
								echo "	<td>e-Mail</td>";
								echo "	<td><input name='email' value='$row_fact[7]' disabled></td>";
								echo "</tr>";


								echo "<tr>";
								echo "	<td>Telefono</td>";
								echo "	<td><input name='fono' value='$row_fact[8]' disabled></td>";
								echo "	<td>Ciudad</td>";
								echo "	<td><input name='ciudad' value='$row_fact[9]' disabled></td>";
								echo "</tr>";


								echo "<tr>";
								echo "	<td>Estado</td>";
								echo "	<td><input name='estado' value='$row_fact[10]' disabled></td>";
								echo "	<td>Vendedor</td>";
								echo "	<td><input name='vendedor' value='$row_fact[11]' disabled></td>";
								echo "</tr>";

								}
								?>
							</table>
								<tr><td><h4>Vehiculo</h4></td></tr>
								<table class="table table-striped table-bordered table-hover">
									<thead>
										<th> ID Vehiculo</th>
										<th> Marca</th>
										<th> Modelo</th>
										<th> Color</th>
										<th> A&ntilde;o</th>

										<th> Valor</th>

									</thead>
									<tbody><?php
										while($row_deta=mysqli_fetch_row($res_deta)){
											echo "<tr>";
												echo "<td>$row_deta[0]</td>";
												echo "<td>$row_deta[1]</td>";
												echo "<td>$row_deta[2]</td>";
												echo "<td>$row_deta[3]</td>";
												echo "<td>$row_deta[4]</td>";
												echo "<td>";
												$valor_neto = pasaranumero($row_deta[5]);
												formato($valor_neto); 
												echo "</td>";
											echo "</tr>";
										}

									?>
									</tbody>
								</table>
								<tr><td><h4>Accesorios</h4></td></tr>
							</table>

							<table class="table table-striped table-bordered table-hover">
								<thead>
									<th> ID Accesorio</th>
									<th> Descripci&oacute;n</th>
									<th> Estado</th>
									<th> Precio</th>
								</thead>
								<tbody><?php
									$total_accesorio = 0;
									while($row_acc=mysqli_fetch_row($res_accesorio)){

										echo "<tr>";
											echo "<td>$row_acc[0]</td>";
											echo "<td>$row_acc[1]</td>";
											echo "<td>$row_acc[2]</td>";
											echo "<td>";
											$precio_acc = pasaranumero($row_acc[3]);
											formato($precio_acc);
											$total_accesorio = $total_accesorio + $precio_acc;
											echo "</td>";
										echo "</tr>";
									}
								?>
								</tbody>
							</table>

							<div style="float: right;">
							<table class="table table-striped table-bordered table-hover">
								<?php
								$tot_neto = $valor_neto + $total_accesorio;
								$iva = $tot_neto * 0.19;
								$total = $tot_neto * 1.19; ?>

								<tr>
									<td>TOTAL NETO</td>
									<td><?php formato($tot_neto);?></td>
								</tr>

								<tr>
									<td>IVA 19%</td>
									<td><?php formato($iva);?></td>
								</tr>

								<tr>
									<td>TOTAL</td>
									<td><?php formato($total);?></td>
								</tr>
							</table>
							</div>	

						<div style="float: left">
							<span> <b> Valor a Pagar en Letras</b><br> 
								<?php 
									$texto = numtoletras($total);
									echo strtoupper($texto);
								?>
							</span><br><br>
							<div id="barcode" align="center">
								<?php
									$codigo_barra = "0000000".$cod_factura;
									$barcode = new BarCode($codigo_barra);
									$barcode->drawBarCode();
									echo "<br>";
									echo $codigo_barra;
								?>
							</div>
						</div>
					</div>
				</div>
		</div>
	</section>
	<br>
	<center>
	<button type="button" onClick="window.close()" class="btn btn-outline btn-danger">Cerrar Ventana</button>

	<button type="button" onClick="window.print()" class="btn btn-outline btn-primary">Imprimir Factura</button>
	
<!-- DataTables JavaScript -->
    <script src="../js/jquery.dataTables.min.js"></script>
    <script src="../js/dataTables.bootstrap.min.js"></script>

    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>	
</body>
</html>