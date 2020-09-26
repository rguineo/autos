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

	$sql_user = "SELECT id_usuario, nombre, apepat, nom_user, privilegio 
					FROM usuarios
					ORDER BY nombre;";

	$resultado = mysqli_query($conexion, $sql_user);
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
<script type="text/javascript">
// Funcion JavaScript para buscar en la base de datos y desplegarla en la misma pagina
function chart(){
	var anno=$("#periodo").val();

	$.ajax({
		url: 'chart_ventas.php',
		data: {periodo: anno},
		type: 'POST',
		success: function ()
				{
					$("#graf").load("grafico.php");
				}
			}
			)
	}
</script>

    
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
                <p style="text-align:right; text-size: 18px;"><strong>Administraci&oacute;n Usuarios</strong></p>
			</div>
 
			<div class="articulo">
				<article> <!-- Inicio Panel de trabajo-->
					<div class="panel panel-default">
						<div class="panel-heading"><h2>Ventas Anuales</h2>
							<div class="panel-body">
								<div class="table-responsive">
									<form>
										<label> Periodo :</label>
										<select name="periodo" id="periodo" >
                                        	<option>Periodo</option> 
											<option value="2013">2013</option>
											<option value="2014">2014</option>
											<option value="2015">2015</option>	
										</select>
                                        <button class="" onClick="chart()"> Refrescar</button>
                                    </form>
									<div id="graf"><?php include("grafico.php"); ?> </div>
									 
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

    <!-- Morris Charts JavaScript -->
    <script src="../js/raphael-min.js"></script>
    <script src="../js/morris.min.js"></script>
    <script src="../js/morris.js"></script>
    

    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>	
</body>
</html>