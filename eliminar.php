<?php

	include("conection.php");
	$id=$_REQUEST['id'];
	$conexion = conectar();

	$mysql_query = "DELETE FROM `date_person` WHERE id_date_person = '$id'";
	$result = $conexion->query($mysql_query);



?>
