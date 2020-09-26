<?php 

	$file=fopen("morris.txt", "a") 
	or die("Problemas al crear el archivo");

	fwrite($file, "Hola");
	fwrite($file, $_POST['periodo']);
	fclose($file);

?>