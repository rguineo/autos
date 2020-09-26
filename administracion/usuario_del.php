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

	$id_usr = $_GET['id'];

	$sql_usr = "SELECT id_usuario, nombre, apepat, nom_user, privilegio 
			FROM usuarios
			WHERE id_usuario = '".$id_usr."';";
	$resultado = mysqli_query($conexion, $sql_usr);
	$row = mysqli_fetch_row($resultado);
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
                <p style="text-align:right; text-size: 18px;"><strong>Eliminar Usuario</strong></p>
			</div>
 
			<div class="articulo">
				<article><h1>Eliminar Usuario</h1>
					<form name="nuevo_usuario" onSubmit="return formulario()" action="delete_usr.php"method="GET">
						<table class="table table-condensed"><?php

							echo "<input type='hidden' name='id' size='20' value='$row[0]'>";
							
							echo "<tr>";
							echo "	<td> <label>Nombre</label></td>";
							echo "	<td> <input name='nombre' size='20' value='$row[1]'></td>";
							echo "</tr>";

							echo "<tr>";
							echo "	<td> <label>Apellidos</label></td>";
							echo "	<td> <input name='apellidos' size='20' value='$row[2]'></td>";
							echo "</tr>";

							echo "<tr>";
							echo "	<td> <label>Nombre Usuario</label></td>";
							echo "	<td> <input name='nom_user' size='15' value='$row[3]'></td>";
							echo "</tr>";

							echo "<tr>";
							echo "	<td> <label>Privilegio</label></td>";
								switch ($row[4]){
									case '0':
										echo "	<td> <select name='privilegio'>";
										echo "		<option value='0' selected='selected'> Cliente</option>";
										echo "		<option value='1'> Vendedor</option>";
										echo "		<option value='2'> Administrador</option>";
										echo "	</select></td>";
										break;

									case '1':
										echo "<td> <select name='privilegio'>";
										echo "	<option value='0'> Cliente</option>";
										echo "	<option value='1' selected='selected'> Vendedor</option>";
										echo "	<option value='2'> Administrador</option>";
										echo "</select></td>";
										break;
									case '2':
										echo "<td> <select name='privilegio'>";
										echo "	<option value='0'> Cliente</option>";
										echo "	<option value='1'> Vendedor</option>";
										echo "	<option value='2' selected='selected'> Administrador</option>";
										echo "</select></td>";
										break;
								}
							echo "
							</tr>

							<tr>
								<td></td>
								<td><button type='submit' class='btn btn-outline btn-danger'>Eliminar</button></td>
							</tr>
							"; ?>
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