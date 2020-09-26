<?php
	include("php/config.php");
	header('Content-Type: text/html; charset=UTF-8');
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>FourWheels</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="icon" type="image/png" href="images/favicon1.png" />
    
<script type="text/javascript">
function nueva() {
	nuevaVentana=window.open("inicio/registro.php", "Registro Usuario", "toolbar=yes, location=no, resizable=no, width=500, height=670" );
}

function contact(){
	nuevaVentana=window.open("inicio/contacto.php", "Registro Usuario", "toolbar=yes, location=no, resizable=no, width=500, height=620" );
}
</script>

</head>
<body>
<header>
    <div class="wrapp">
        <div class="logo">
            <a href="#"><img src="images/fwp_logo2.png" alt="FourWheels" width="500" height="60"></a>
        </div>
        <nav>
            <ul>
                <li><a href="#">Inicio</a></li>
                <li><a href="inicio/negocio.php">Negocio</a></li> 
                <li><a href="inicio/acerca.php">Acerca de</a></li>
                <li><a href="#" onClick="contact()">Contacto</a></li>
            </ul>
        </nav>
    </div>
</header>
    <section class="main">
		<div class="wrapp">
			<div class="mensaje">
				<h1>Bienvenido!</h1>
			</div>
 
			<div class="articulo">
				<article>
					<p style="text-align:justify;">La empresa Automotora FourWheels fue fundada en el año 1981 por un grupo de destacados y distinguidos
					empresarios, los señores Roberto Guineo, Tito Caceres, Felipe Fierro, Diego Vargas y Gonzalo Vera. Su tipo de financiamiento, único en
					su momento, la ha llevado a ser reconocida a nivel nacional siendo una de las automotoras con mayor venta de vehículos usados. Con 
					vigencia hasta el día de hoy, es una de las pocas compra y venta de vehículos que ofrece crédito directo, lo cual le brinda al cliente
					más posibilidades para optar por un financiamiento.</p>
					<br/><br/>
					<p style="text-align:center;"><img src="images/autos.png" width=90%></p>
					<p style="text-align:justify;">Venga y compruebe nuestra amplia selección de vehículos en venta. Más de 30 años en el mercado automotriz
					y más de 10.000 clientes nos avalan.</p>
				</article>
			</div>
 
			<aside>
				<div class="widget">
					<h3>Ingreso Usuarios</h3><br>
                    <form action="php/login.php" method="post">
                         <table width="90%">
                            <tr>
                                <td> Usuario:</td>
                                <td><input type="text" name="user" size="10"> </td>
                            </tr>
                            <tr>
                                <td> Contraseña:</td>
                                <td><input type="password" name="pass" size="10"> </td>
                            </tr>

                             <tr>
                                <td align="left"><input id="submit" type="button" onCLick="nueva()" value="Registrarse" align="center"></td>
                                <td align="right"> <input id="submit" type="submit" value="Ingresar"></td>
                             </tr>
                        </table>                    

                    </form>
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