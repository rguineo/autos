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

	$sql_marca = "SELECT marca.id_marca, marca.nom_marca FROM marca ORDER BY marca.nom_marca;";
	$resultado = mysqli_query($conexion, $sql_marca);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>FourWheels</title>
	<link rel="stylesheet" href="../css/style_adm.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="icon" type="image/png" href="../images/favicon1.png" />
	<script src="../js/jquery-2.1.4.min.js" type="text/javascript"></script> 
    
<script type="text/javascript">
	function carga_modelo (){
		var marca=$("#marca_vehiculo").val();

		$.ajax({
			url: 'carga_modelo.php',
			data: {tipomarca: marca},
			type: 'POST',
			success: function (data)
			{
				$("#combo_modelo").html(data);
			}
		}
		)
	}

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
                <p style="text-align:right; text-size: 18px;"><strong>Ingreso Accesorio</strong></p>
			</div>
 
			<div class="articulo">
				<article><h2>Ingreso Accesorio</h2>
					<form name="nuevo_accesorio" action="save_acc.php" method="GET">
						<table class="table table-condensed">
							<tr>
								<td> <label>C&oacute;digo Accesorio</label></td>
								<td> <input name="cod_accesorio" size="20"></td>
							</tr>
							<tr>
								<td> <label>Nombre Accesorio:</label></td>
								<td> <input name="nom_accesorio" size="30"></td>
							</tr>

							<tr>
								<td> <label>Descripci&oacute;n Accesorio:</label></td>
								<td> <input name="des_accesorio"  size="30"></td>
							</tr>


							<tr>
								<td> <label>Precio:</label></td>
								<td><input type="text" onkeyup="format(this)" onchange="format(this)" name="precio"  size="15"></td>
							</tr>


							<tr>
								<td></td>
								<td><center><button type='submit' class='btn btn-outline btn-success'>Actualizar</button>
								<button type='reset' class='btn btn-outline btn-success'>Limpiar</button></center></td>
							</tr>
						</table>
					</form>
				</article>
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
</body>
</html>