<?php


function Conectarse()
{
	$objConexion = new mysqli("MYSQL_SERVER_DEV","root","mypass123","andromeda");
	if ($objConexion->connect_errno)
	{
		echo "Erro de conexion a la Base de Datos ".$objConexion->connect_error;
		exit();
	}
	else
	{
		return $objConexion;
	}
}

?>