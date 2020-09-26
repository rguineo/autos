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

	$sql_vehiculo = "SELECT vehiculo.id_vehiculo, marca.nom_marca, modelo.nom_modelo, vehiculo.color_vehiculo, vehiculo.tipo_vehiculo, vehiculo.anno_vehiculo, vehiculo.precio_vehiculo
		FROM vehiculo
		INNER JOIN modelo
		ON vehiculo.id_modelo = modelo.id_modelo
		INNER JOIN marca
		ON modelo.id_marca = marca.id_marca;";

	$resultado = mysqli_query($conexion, $sql_vehiculo);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>FourWheels</title>
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
                <p style="text-align:right; text-size: 18px;"><strong>Lista de Veh&iacute;culo</strong></p>
			</div>
 
			<div class="articulo">
				<article> <!-- Inicio Panel de trabajo-->
					<div class="panel panel-default">
						<div class="panel-heading"><h2>Lista Veh&iacute;culos</h2>
							<div class="panel-body">
								<div class="table_responsive">
									<table class="table atriped table-bordered table-hover" id="dataTables-example">
										<thead>
											<tr>
												<th>Codigo</th>
												<th>Marca</th>
												<th>Modelo</th>
												<th>Color</th>
												<th>Tipo</th>
												<th>Año</th>
												<th>Precio</th>

											</tr>
										</thead>

										<tbody>
												<?php 
												while($row_veh=mysqli_fetch_row($resultado)){
													echo "<tr>";
													echo "<td>$row_veh[0]</td>";
													echo "<td>$row_veh[1]</td>";
													echo "<td>$row_veh[2]</td>";
													echo "<td>$row_veh[3]</td>";
													echo "<td>$row_veh[4]</td>";
													echo "<td>$row_veh[5]</td>";
													echo "<td>$row_veh[6]</td>";
													echo "</tr>";
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