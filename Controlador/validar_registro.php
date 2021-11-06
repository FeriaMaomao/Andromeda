<?php
session_start();
extract($_REQUEST);
require "../Modelo/conexionBasesDatos.php";
require "../Modelo/Perfiles.php";

if($r_pass_1 != $r_pass_2)
{
	header ("location: /andromeda_inventory/index.php?x=4");
}

$objConexion=Conectarse();
$perfil= new Perfil($usuario, $r_pass_1);
$perfil->nuevoPerfil();