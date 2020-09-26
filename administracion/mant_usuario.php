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
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/style_adm.css">
	<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
	<link rel="icon" type="image/png" href="../images/favicon1.png" />
	<script src="../js/jquery-2.1.4.min.js" type="text/javascript"></script> 
    
<title>	<?php 
			echo $empresa."-".$nom_pag;
		?>

</title>

<script type="text/javascript">
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

</head>
<body>
<?php include('../theme/header_adm.php'); ?>
    <section class="main">
		<div class="wrapp">
			<div class="mensaje">
				<?php include("menu.php"); ?>
                <p style="text-align:right; text-size: 18px;"><strong>Ingreso Nuevo Usuario</strong></p>
			</div>
 
			<div class="articulo">
				<article><h2>Nuevo Usuario</h2>
					<form name="nuevo_usuario" onSubmit="return formulario()" action="save_usr.php" method="POST">
						<table class="table table-condensed">

							<tr>
								<td> <label>Nombre</label></td>
								<td> <input name="nombre" size="20"></td>
							</tr>

							<tr>
								<td> <label>Apellidos</label></td>
								<td> <input name="apellidos" size="20"></td>
							</tr>

							<tr>
								<td> <label>Nombre Usuario</label></td>
								<td> <input name="nom_user" size="15"></td>
							</tr>

							<tr>
								<td> <label>Privilegio</label></td>
								<td> <select name="privilegio">
									<option value="1"> Vendedor</option>
									<option value="2"> Administrador</option>
								</select>
								</td>
							</tr>

							<tr>
								<td> <label>Password:</label></td>
								<td> <input type="password" name="passwd" id="passwd" size="15"></td>
							</tr>


							<tr>
								<td> <label>Re-Password</label></td>
								<td><input type="password" name="passwd2" id="passwd2" size="15"></td>
							</tr>


							<tr>
								<td><input type="submit" id="submit" value="Guardar"></td>
								<td></td>	
								<td><input type="reset" id="submit" value="Limpiar"></td>
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