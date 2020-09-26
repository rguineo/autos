<?php
	include("../php/seguridad.php");
	include("../php/conexion.php");
	include("../php/config.php");
	if($privilegio != 2){
		header("location: ../");
		exit();
	}
	$nom_pag="Administrador";

	include("../php/log_user.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/style_adm.css">
	<link rel="icon" type="image/png" href="../images/favicon1.png" />
    
<title>	<?php 
			echo $empresa." | ".$nom_pag;
		?>

</title>

</head>
<body onload="inicio()" onkeypress="reset()" onclick="reset()" onMouseMove="reset()">
<?php include('../theme/header_adm.php'); ?>
    <section class="main">
		<div class="wrapp">
			<div class="mensaje">
				<?php include("menu.php"); ?> 
                <h1 style="text-align:right;">M&oacute;dulo Administrador</h1>
			</div>
 
			<div class="articulo">
				<article>
					<p style="text-align:justify;"><h2>Administrador</h2></p>
					<br>
					<center><img src="../images/admin_ini.png" ></center>
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