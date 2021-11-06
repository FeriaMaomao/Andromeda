<?php
session_start();
extract ($_REQUEST);
require "../Modelo/conexionBasesDatos.php";

$objConexion=Conectarse();
$sql="select Login,Password,Rol from perfil where Login = '$usuario' and Password = '$password'";
$resultado=$objConexion->query($sql);

if ($resultado->num_rows==1)
{
	$usuario=$resultado->fetch_object();
	$_SESSION['user']= $usuario->Login;
	$_SESSION['rol']= $usuario->Rol;
	header("location:../Vista/Nosotros.php");
}

else
{
	header("location:../index.php?&x=1");
}