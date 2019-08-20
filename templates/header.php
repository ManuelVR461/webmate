<?php
if (!isset($_SESSION)) {
    session_start();
}
echo ".";
require_once('functions/sessionstar.php');
require_once 'class/clsConexion.php';
require_once 'functions/acceso.php';
require_once 'class/clsFunciones.php';
?>
<!doctype html>
<html lang="es" amp>
    <meta http-equiv="content-type" content="text/html;charset=utf-8" />
    <head>
        <meta name="charset" content="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>                  
        <title>.::MATE Movil::.</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, user-scalable=no"/>
        <meta name="theme-color" content="#2980b9"/>
        
        <link href="plugins/system/css/font.css" rel="stylesheet" type="text/css"/>
        <link href="plugins/system/css/normalize.css" rel="stylesheet" type="text/css"/>
        <link href="plugins/system/css/ui.css" rel="stylesheet" type="text/css"/>
        <link href="plugins/system/css/webmate.css" rel="stylesheet" type="text/css"/>
        <!-- <link href="plugins/system/css/estilofooter.css" rel="stylesheet" type="text/css"/> -->

        <link href="plugins/awesome/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen">
        
        <link href="./plugins/datatable/css/jquery.dataTables.min.css" rel="stylesheet" >  
        <link href="./plugins/datatable/css/responsive.dataTables.min.css" rel="stylesheet">


    </head> 
    <body>
        <div class="wrapper">