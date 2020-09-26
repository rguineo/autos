<?php
	include("../php/seguridad.php");
	include("../php/conexion.php");
	include("../php/config.php");
	if($privilegio != 2){
		header("location: ../");
		exit();
	}
	$nom_pag='Administrador';

	include("../php/log_user.php");

	$sql_fact = "SELECT factura.cod_factura, factura.rut_cliente, cliente.nombre_cliente, cliente.apepat_cliente, cliente.apemat_cliente, factura.fecha_factura, factura.estado_factura, factura.nom_vendedor 
				FROM factura
				INNER JOIN cliente
				ON factura.rut_cliente = cliente.rut_cliente
				ORDER BY cod_factura;";

	$resultado = mysqli_query($conexion, $sql_fact);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/style_adm.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
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

</head>
<body>
<?php include('../theme/header_adm.php'); ?>
    <section class="main">
		<div class="wrapp">
			<div class="mensaje">
				<?php include("menu.php"); ?>
                <p style="text-align:right; text-size: 18px;"><strong>Estado Factura</strong></p>
			</div>
 
			<div class="articulo">
				<article> <!-- Inicio Panel de trabajo-->
					<div class="panel panel-default">
						<div class="panel-heading"><h1>Estado Factura</h1>
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table atriped table-bordered table-hover" id="dataTables-example" style="font-size: 9px;">
										<thead>
											<tr>
												<th>Factura</th>
												<th>RUT</th>
												<th>Cliente</th>
												<th>Fecha</th>
												<th>Estado</th>
												<th>Vendedor</th>
												<th>Ver</th>

											</tr>
										</thead>

										<tbody>
												<?php 
												while($row_fac=mysqli_fetch_row($resultado)){
													echo "<tr>";
													echo "<td>$row_fac[0]</td>";
													echo "<td>$row_fac[1] </td>"; 
													echo "<td>$row_fac[2] $row_fac[3] $row_fac[4]</td>";
													echo "<td>$row_fac[5]</td>";
													echo "<td>$row_fac[6]</td>";
													echo "<td>$row_fac[7]</td>";
													echo "<td style='text-align: center;'><a href='../comun/ver_actura.php?id=$row_fac[0]' target=_blank><img src='../images/ver.png' width='20' height='20' title='Ver Factura'></a>";
												}?>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</article> <!-- Fin Panel de trabajo -->
			</div>
 
			<aside>
				<div class="widget">
					<h4>Bienvenido! </h4><br/>
					<h5><?php echo "Usuario: $user" ?></h5><br>
					<h5><?php echo "Nombre: $nombre" ?></h5><br>

                    <br>
                    <hr width=100%>
				</div>
			</aside>
		</div>
	</section>
	<footer>
		<div class="wrapp">
			<p>Team Eureka AIEP 2015</p>
		</div>
	</footer>


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