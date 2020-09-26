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

	$sql_cliente = "SELECT nom_ciudad FROM ciudad ORDER BY zona";
	$result_ciudad = mysqli_query($conexion, $sql_cliente);
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/style_adm.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="icon" type="image/png" href="../images/favicon1.png" />
	<script src="../js/jquery-2.1.4.min.js" type="text/javascript"></script> 
	<script src="../js/jquery.Rut.js" type="text/javascript"></script>
    
	<script type="text/javascript">
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

<!--   FIN VALIDAR RUT -->

<!--   VALIDAR PASSWORD -->

		function formulario(passwd, passwd2){
			var p1 = document.getElementById("passwd").value;	
			var p2 = document.getElementById("passwd2").value;
		<!-- Que no tenga espacios en blanco -->	
			var espacios = false;
			var cont = 0;
			 
			while (!espacios && (cont < p1.length)) {
			  if (p1.charAt(cont) == " ")
			    espacios = true;
			  cont++;
			}
			 
			if (espacios) {
			  alert ("La contraseña no puede contener espacios en blanco");
			  return false;
			}

		<!-- Que los campos no estén vacios -->
			if (p1.length == 0 || p2.length == 0) {
			  alert("Los campos de la password no pueden quedar vacios");
			  return false;
			}

		<!-- Que las password coincidan -->
			if (p1 != p2) {
			  alert("Las passwords deben de coincidir");
			  return false;
			} else {
			  return true; 
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
                <p style="text-align:right; text-size: 18px;"><strong>Ingreso Clientes</strong></p>
			</div>
 
			<div class="articulo">
				<article><h2>Ingreso Cliente</h2>
					<form name="registro" onSubmit="return formulario()" action="../administracion/new_reg.php" method="GET">
						<table class="table table-condensed">
						<tr>
							<td><label>RUT <font style="font-size: 10px;">[12345678-9]<font style="color: #ff0000; font-size: 11px">(*)</font> </font></label></td>
							<td>
								<input type="text" id="rut_demo_5" name="rut_demo_5" placeholder="RUT"> 
							</td>
						</tr>
						<tr>
							<td><label> Nombres <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="text" name="nombres" ></td>
						</tr>
						<tr>
							<td><label>Primer Apellido <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="text" name="apepat"></td>
						</tr>
						<tr>
							<td><label>Segundo Apellido <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="text" name="apemat"></td>
						</tr>

						<tr>
							<td><label>Direcci&oacute;n <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="text" name="dire"></td>
						</tr>
						<tr>
							<td><label>Ciudad <font style="color: #ff0000; font-size: 11px">(*)</font></label> </td>
							<td><select name="ciudad">
									<?php 
										while($row_ciu = mysqli_fetch_row($result_ciudad)){
											echo "<option value='$row_ciu[0]'>$row_ciu[0]</option>";
										}
									?>
								</select>
						</tr>						
						<tr>
							<td><label>Tel&eacute;fono <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="text" name="fono"></td>
						</tr>
						<tr>
							<td><label>Email <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="text" name="email"></td>
						</tr>
						<tr>
							<td><label>Nombre Usuario <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="text" name="usuario"></td>
						</tr>
						<tr>
							<td><label>Contrase&ntilde;a <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="password" id="passwd" name="passwd"></td>
						</tr>
						<tr>
							<td><label>Repita Contrase&ntilde;a <font style="color: #ff0000; font-size: 11px">(*)</font></label></td>
							<td><input type="password" id="passwd2" name="passwd2" placeholder="Repita Contraseña"></td>
						</tr>

						<tr>
							<td><font style="color: #ff0000; font-size: 11px">(*) Campo Requerido</font></td>
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