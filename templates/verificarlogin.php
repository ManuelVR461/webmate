<?php
if(!isset($_SESSION)){session_start();}
require_once '../class/clsLogin.php';

mt_srand(time());
$btn = isset($_REQUEST['btn']) ? $_REQUEST['btn'] : null;
$txtuser = isset($_REQUEST['txtuser']) ? $_REQUEST['txtuser'] : null;
$txtpwd = isset($_REQUEST['txtpwd']) ? $_REQUEST['txtpwd'] : null;
$ingreso = new Login();
?>
<center>
    
    <div style="height: 20%;"></div>
    <span style="font-family: monospace;font-size: 50px;font-weight: bold;color: gray;">SECOMS</span>
    <br>
    <div style="margin-top: 60px;">
        <img src="../images/loading/loading1.gif" alt="..." style="width: 50%;height:50%; ">
    </div>    
    <br>
    <br>
    <!--<iframe data-aa='388920' src='https://ad.a-ads.com/388920?size=320x50' scrolling='no' style='width:320px; height:50px; border:0px; padding:0;overflow:hidden' allowtransparency='true' frameborder='0'></iframe>-->
</center>
<?php

if($btn=="LoginWindows") {
    if(!$ingreso->VerfificarRegitro($txtuser, $txtpwd)) {
        $_SESSION['datalogin']['ingreso'] = 'NO';
    }
}

//print_r($_SESSION);
header('location:' . "../index.php");