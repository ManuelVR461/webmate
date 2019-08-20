<?php
date_default_timezone_set("America/New_York");
mt_srand (time());
header("Expires: Tue, 01 Jan 2000 00:00:00 GMT");
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT");
header("Cache-Control: no-store, no-cache, must-revalidate, max-age=0");
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache");
header( 'Content-type: text/html; charset=utf-8' );
$color=array("#ffffff","#C7E1F3");
$pase = isset($_SESSION['datalogin']['ingreso']) ? $_SESSION['datalogin']['ingreso'] : "NO";
