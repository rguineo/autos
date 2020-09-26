<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/style_cte.css">
	<link rel="icon" type="image/png" href="../images/favicon1.png" />

	<title>Registro Clientes</title>
</head>

<body>
<section class="main">
	<div class="wrapp" align="center">
		<div class="mensaje">
			<h2><center>Contacto</center></h2>
		</div>

		<div class="registro">
			<article>	
				<section class="formulario">
					<form action="contacto.php" method="post">
					<label for="nombre">Nombre:</label>
						<input id="nombre" type="text" name="nombre" placeholder="Nombre y Apellido" required="" />
						<label for="email">Email:</label>
						<input id="email" type="email" name="email" placeholder="ejemplo@correo.com" required="" />
						<label for="mensaje">Mensaje:</label>
						<textarea id="mensaje" name="mensaje" placeholder="Mensaje" required=""></textarea><br>
						<input id="submit" type="submit" name="submit" value="Enviar" />
					</form>
				</section>
			</article>
		</div>
	</diV>
</section>	
	<footer>
		<div class="wrapp">
			<p>Team Eureka AIEP 2015</p>
		</div>
	</footer>
</body>
</html>