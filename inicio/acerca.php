<?php
	include("../php/config.php");
	header('Content-Type: text/html; charset=UTF-8');
?>


<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>FourWheels</title>
	<link rel="stylesheet" href="../css/style.css">
	<link rel="icon" type="image/png" href="../images/favicon1.png" />
    
<script type=text/javascript>
function nueva() {
	nuevaVentana=window.open("registro.php", "Registro Usuario", "toolbar=yes, location=no, resizable=no, width=500, height=670" );
}

function contact(){
	nuevaVentana=window.open("contacto.php", "Registro Usuario", "toolbar=yes, location=no, resizable=no, width=500, height=620" );
}
</script>

</head>
<body>
<header>
    <div class="wrapp">
        <div class="logo">
            <a href="#"><img src="../images/fwp_logo2.png" alt="FourWheels" width="500" height="60"></a>
        </div>
        <nav>
            <ul>
                <li><a href="../index.php">Inicio</a></li>
                <li><a href="negocio.php">Negocio</a></li> 
                <li><a href="#">Acerca de</a></li>
                <li><a href="#" onClick="contact()">Contacto</a></li>
            </ul>
        </nav>
    </div>
</header>
    <section class="main">
		<div class="wrapp">
			<div class="mensaje">
				<h1>Acerca de nosotros</h1>
			</div>
 
			<div class="articulo">
				<article>
					<p style="text-align:justify;">Misión<br><br>
					Automotora FourWheels es una empresa comercializadora de vehículos nuevos y usados comprometida a entregar excelencia en la atención,
					calidad en la venta y postventa, excediendo las necesidades y expectativas del comprador. Enfocada a un público emprendedor, brinda
					un servicio eficaz y transparente ofreciendo crédito directo como principal ventaja.</p>
					<br/>
					<p style="text-align:justify;">Visión<br><br>
					Lograr ser líder en venta de vehículos nuevos y usados llevando siempre a prioridad la necesidad del cliente. Tener a disposición
					del consumidor plazas de venta en diversas partes del país, brindando empleo y superando las expectativas de los consumidores.
					Innovar constantemente en el mercado automotriz, en procesos de calidad y con el compromiso de respetar el medio ambiente. Mantener
					un estricto enfoque en la formación y capacitación de los empleados para contribuir con una mejora continua dentro y fuera de la empresa.
					</p>
					<br/><br/><br/>
					<p style="text-align:justify;">Venga y compruebe nuestra amplia selección de vehículos en venta. Más de 30 años en el mercado automotriz
					y más de 10.000 clientes nos avalan.</p>
				</article>
			</div>
 
			<aside>
				<div class="widget">
					<h3>Ingreso Usuarios</h3><br>
                    <form action="php/login.php" method="post">
                         <table>
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