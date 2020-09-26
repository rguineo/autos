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
                <p style="text-align:right; text-size: 18px;"><strong>Ingreso Veh&iacute;culo</strong></p>
			</div>
 
			<div class="articulo">
				<article><h2>Ingreso Vehiculo</h2>
					<form name="nuevo_auto" action="save_car.php" method="GET">
						<table class="table table-condensed">
							<tr>
								<td> <label>C&oacute;digo Veh&iacute;culo:</label></td>
								<td> <input name="id_vehiculo"></td>
							</tr>
							<tr>
								<td><label>Marca:</label></td>
								<td>
									<select name="marca" id="marca_vehiculo" onChange="carga_modelo()"><?php 
										while($row_marca = mysqli_fetch_row($resultado)){	
											echo "<option value='$row_marca[0]'>$row_marca[1]</option>";
										}
										?>
									</select></td>
							</tr>

							<tr>
								<td><label>Modelo:</label></td>
								<td><select id="combo_modelo" name="modelo"></select></td>
							</tr>

							<tr>
								<td><label>Color:</label></td>
								<td><select name="color">
										<option value="Rojo"> Rojo</option>
										<option value="Azul"> Azul</option>
										<option value="Negro"> Negro</option>
										<option value="Blanco"> Blanco</option>
										<option value="Amarillo"> Amarillo</option>					
										<option value="Gris"> Gris</option>		
										<option value="Verde"> Verde</option>		
										<option value="Burdeo"> Burdeo</option>		
										<option value="Celeste"> Celeste</option>		
										<option value="Marron"> Marron</option>		
									</select>	
								</td>
							</tr>

							<tr>
								<td> <label>Precio:</label></td>
								<td><input type="text" onkeyup="format(this)" onchange="format(this)" name="precio"></td>
							</tr>

							<tr>
								<td><label> Tipo Veh&iacute;culo</td>	
								<td> <select name="tipo">
										<option name="automovil">Automovil</option>
										<option name="camioneta">Camioneta</option>
										<option name="camion">Cami&oacute;n</option>
									</select></td>
							</tr>

							<tr>
								<td><label>A&ntilde;o:</label></td>
								<td><select name="anno">
									<option>2016</option>
									<option>2015</option>
									<option>2014</option>
									<option>2013</option>
									<option>2012</option>
									<option>2011</option>
									<option>2010</option>
								</select></td>
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