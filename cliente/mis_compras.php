<?php
	include("../php/seguridad.php");
	include("../php/conexion.php");
	include("../php/config.php");
	if($privilegio != 0){
		header("location: ../");
		exit();
	}
	$nom_pag='Cliente';

	include("../php/log_user.php");

	$rut = $_POST['rut_cliente'];

 	/* ejecutamos la consulta, que solicita nombre, precio y existencia de la tabla productos */
	$sql = "SELECT nombre_cliente FROM cliente WHERE rut_cliente= '".$rut."'";
		
	$result = mysqli_query ($conexion, $sql);

?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/style_cte.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
	<link rel="icon" type="image/png" href="../images/favicon1.png" />

<!-- Script de JQuery y Validar RUT-->
	<script src="../js/jquery-2.1.4.min.js" type="text/javascript"></script> 
	<script src="../js/jquery.Rut.js" type="text/javascript"></script>


 <!-- Scripts  -->   
<script type=text/javascript>
function contact() {
	nuevaVentana=window.open("../inicio/contacto.php", "Contacto", "toolbar=yes, location=no, resizable=no, width=500, height=620" );
}


// Funcion JavaScript para buscar en la base de datos y desplegarla en la misma pagina
function buscar_ventas(){
	var rut_cliente=$("#rut_demo_5").val();

	$.ajax({
		url: 'buscar_ventas.php',
		data: {rut: rut_cliente},
		type: 'POST',
		success: function (data)
		{
			$("#tabla_venta").html(data);
		}
	}
	)
}

// Funcion para validar el RUT Chileno

$(document).ready(function(){
		// Demo 1
		$('#rut_demo_1').Rut();
		// Demo 2
		$('#rut_demo_2').Rut({
		  on_error: function(){ alert('Rut incorrecto'); }
		});
		// Demo 3
		$('#rut_demo_3, #rut_demo_4').Rut({
		  on_error: function(){ alert('Rut incorrecto'); },
		  on_success: function(){ alert('Rut correcto') }
		});
		// Demo 5
		$('#rut_demo_5').Rut({
		  on_error: function(){ alert('Rut incorrecto'); },
		  format_on: 'keyup'
		});
		// Demo 6
		$('#rut_demo_6').Rut({
		  validation: false,
		  format_on: 'keyup',
		  digito_verificador: '#digito_verificador_demo_6'
		});

		$('#rut_demo_7').Rut({
		  digito_verificador: '#digito_verificador_demo_7',
		  on_error: function(){ alert('Rut incorrecto'); }
		});

		$("#content > ul").tabs();
		});

//   FIN VALIDAR RUT 
</script>

<title>	
	<?php 
		echo $empresa."-".$nom_pag;
	?>

</title>

</head>
<body>
<?php include('../theme/header_adm.php'); ?>
    <section class="main">
		<div class="wrapp">
			<div class="mensaje">
				<?php include("menu_cliente.php"); ?>

            <h3 style="text-align:right;">Detalle Compras</h3>
            </div>
 
			<div class="articulo">
				<article>
					<p style="text-align:justify;">Estimado <?php echo "$nombre" ?>:
					 Las siguientes son sus compras realizadas</p>

					 	<form name="consulta1" method="post" role="form">
                            <div class="form-group input-group">
  	                            <input type="text" id="rut_demo_5" class="form-control" name="rut_demo_5" placeholder="RUT Cliente">
	                            <span class="input-group-btn">
	                                <button class="btn btn-default" type="button" onClick= "buscar_ventas()">
	                                	<i class="fa fa-search"></i>
	                                </button>
	                            </span>
                        	</div>
						</form><br>

						<?php
							echo "<div id='tabla_venta'>";
							echo "</div>";
						?> 

				</article>
			</div>
 
			<aside>
				<div class="widget">
					<h4>Bienvenido! </h4><br/>
					<h5><?php echo "Usuario: $user" ?></h5><br>
					<h5><?php echo "Nombre: $nombre" ?></h5><br>

                    <br>
                    <hr width=100%>
					<ul>
						<li><a href="#">Duis aute irure dolor in reprehenderit</a></li>
					</ul>
				</div>
			</aside>
		</div>
	</section>
	<footer>
		<div class="wrapp">
			<p>Team Eureka AIEP 2015</p>
		</div>
	</footer>
</body>
</html>