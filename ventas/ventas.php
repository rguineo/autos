<?php
	include("../php/seguridad.php");
	include("../php/conexion.php");
	include("../php/config.php");
	if($privilegio != 1){
		header("location: ../");
		exit();
	}
	$nom_pag='Cliente';

	include("../php/log_user.php");
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>FourWheels</title>
	<link rel="stylesheet" href="../css/style_vta.css">
	<link rel="icon" type="image/png" href="../images/favicon1.png" />
    
<script type=text/javascript>
function contact() {
	nuevaVentana=window.open("../inicio/contacto.php", "Contacto", "toolbar=yes, location=no, resizable=no, width=500, height=620" );
}
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
            <ul class="menu">
                <li><a href="../index.php">Inicio</a></li>
                <li><a href="negocio.php">Compras</a>
                <ul><li> <a href="negocio.php">Ver Compras</a></li>
                </li> 
                </ul>

                <li><a href="#" onClick="contact()">Contacto</a></li>
                <li><a href="../">Cerrar Sesión</a></li>
            </ul>

            <h1 style="text-align:right;">M&oacute;dulo Vendedor</h1>
            </div>
 
			<div class="articulo">
				<article>
					<p style="text-align:justify;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<br/>
					<p style="text-align:justify;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<br/>
					<p style="text-align:justify;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
					quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
					consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
					cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
					proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
					<br/>
					<p style="text-align:justify;">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
					tempor incididunt ut labore et dolore magna aliqua. Duis aute irure dolor in
					reprehenderit in voluptate velit esse Ut enim ad minim veniam, quis nostrud 
					exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
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