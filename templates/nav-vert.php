<?php
if (!isset($_SESSION)) {
    session_start();
}
$DbConect = new ConexionSQL();
$NewFuncion = new Funciones();
$status = isset($_REQUEST['status']) ? $_REQUEST['status'] : null;
$cant_odp = 0;
$cant_sol = 0;

    // $sql = "SELECT COUNT(*) as cant FROM bca_ordenpago "
    //         . "WHERE status='T'";
    // $r1 = $DbConect->Consulta($sql);
    // if ($r1) {
    //    $c = $DbConect->ExtraerDatos($r1);
    //         $cant_odp= $c['cant'];
        
    // }
?>
<!-- Menu Vertical -->

<div class="drawer">
    <div class="drawer-title">
        <?php
        if($pase!="NO"){
            $avatar = isset($_SESSION['datalogin']['avatar'])?$_SESSION['datalogin']['avatar']:"avatar1,jpg";
            $nombres = isset($_SESSION['datalogin']['nombre'])? ucfirst(strtolower($_SESSION['datalogin']['nombre'])):"INVITADO";
            $fechaingreso = isset($_SESSION['datalogin']['fechaingreso'])?$_SESSION['datalogin']['fechaingreso']:NULL;
            ?>
            <figure class="drawer-profile avatar" style="">
                <img src="images/avatar/<?php echo $avatar; ?>" style="width: 50px;height: 50px;border-radius: 25px;">
            </figure>
            <div class="drawer-text">
                <a href="#">
                    <span class="drawer-"><?php echo $nombres; ?></span><br>
                    <span style="font-size: x-small;">Miembro desde:<?php echo $fechaingreso; ?></span>
                </a>
                <a href="logout.php">
                    <small>Cerrar Sesion</small>
                </a>
            </div>
            <?php
        }else{
        ?>
        <figure class="drawer-profile avatar icons icon-user"></figure>
        <div class="drawer-text">
            <a href="login.php">
                <span>Ingresar</span><br>
                <small>Iniciar Sesion</small>
            </a>
        </div>
        <?php
        }
        ?>
    </div>
    <?php
    if($pase!="NO"){
        ?>
       
    <nav class="drawer-navigation">
    <ul>
        <li>
            <a class="icons icon-bank active" href="index.php" style="text-decoration: none;">Inicio</a>
        </li>
        <li>
            <a class="icons icon-creditcard"  href="./chat.php" style="text-decoration: none;" >Chat</a>
        </li>
        <li>
            <a class="icons icon-creditcard"  href="./dialogos.php" style="text-decoration: none;" >Dialogos</a>
        </li>
    </ul>
    </nav>
    <?php
    }else{
        ?>
        <nav class="drawer-navigation">
            <a class="icons icon-bank active" href="index.php">Inicio</a>
        </nav>
        <?php
    }
    ?>
</div>