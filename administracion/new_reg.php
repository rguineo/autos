<?php
	include("../php/conexion.php");

	$rut = htmlentities($_GET['rut_demo_5']);
	$nombres = htmlentities(strtoupper(utf8_encode ($_GET['nombres'])));
	$ape1 = htmlentities(strtoupper(utf8_encode ($_GET['apepat'])));
	$ape2 = htmlentities(strtoupper(utf8_encode ($_GET['apemat'])));
	$dire = htmlentities(strtoupper($_GET['dire']));
	$ciudad = htmlentities(strtoupper($_GET['ciudad']));
	$fono = htmlentities($_GET['fono']);
	$email = htmlentities($_GET['email']);
	$nom_user = htmlentities($_GET['usuario']);
	$pass = htmlentities($_GET['passwd']);


	$sql = "SELECT usuarios.nom_user, cliente.nombre_cliente, cliente.apepat_cliente, rut_cliente
            FROM usuarios
            INNER JOIN cliente
            ON usuarios.nom_user = cliente.user_cliente
            WHERE usuarios.nom_user = '".$nom_user."' OR cliente.rut_cliente = '".$rut."';";

    $consulta = mysqli_query($conexion, $sql);

	$row = mysqli_fetch_row($consulta);

		if($row < 1){
			$sql_insert_usuario = "INSERT INTO usuarios(nom_user, pass, privilegio, nombre, apepat) VALUES('$nom_user', md5('$pass'), '0', '$nombres', '$ape1');";

			$sql_insert_cliente = "INSERT INTO cliente(rut_cliente, nombre_cliente, apepat_cliente, apemat_cliente, dire_cliente, ciudad_cliente, email_cliente, fono_cliente, user_cliente) VALUES('$rut', '$nombres', '$ape1', '$ape2', '$dire', '$ciudad', '$email', '$fono', '$nom_user');";	

			$insertar_usuario = mysqli_query($conexion, $sql_insert_usuario);
			$insertar_cliente = mysqli_query($conexion, $sql_insert_cliente);


			echo"<script language=JavaScript>
				alert('El cliente ha sido ingresado exitosamente'); 
				window.location.href='mant_cliente.php';
			</script>";

		}else{

			echo"<script language=JavaScript>
				alert('El Usuario o Cliente ya se encuentra registrado, Intente Nuevamente'); 
				window.location.href='mant_cliente.php';
			</script>";
		}
?>