<?php
if (!isset($_SESSION)) {
    session_start();
}
require_once './templates/header.php';
require_once './templates/nav-hor.php';

if ($pase != "NO") {
    require_once './templates/nav-vert.php';
    ?>


    <?php
} else {
    header('location:' . "login.php");
}
require_once './templates/footer.php';
