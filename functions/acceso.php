<?php
if (!isset($_SESSION)) {
    session_start();
}

function validar_sesion() {
    if ((isset($_SESSION)) AND ( !isset($_SESSION['datalogin']["ingreso"]))) {
        header('location:' . "index.php");
        exit();
    }
}
