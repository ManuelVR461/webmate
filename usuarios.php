<?php
if (!isset($_SESSION)) {
    session_start();
}
require_once './templates/header.php';
require_once './templates/nav-hor.php';
if ($pase != "NO") {
    require_once './templates/nav-vert.php';
//    $DbConect = new ConexionSQL();
//    $NewFuncion = new Funciones();

    $btn = isset($_REQUEST['btn']) ? $_REQUEST['btn'] : NULL;
    $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : NULL;
    $usuario = isset($_REQUEST['usuario']) ? $NewFuncion->ConvertirCaracteres($_REQUEST['usuario']) : NULL;
    $nombres = isset($_REQUEST['nombres']) ? $NewFuncion->ConvertirCaracteres($_REQUEST['nombres']) : NULL;
    $telefono = isset($_REQUEST['telefono']) ? $NewFuncion->ValidarNumero($_REQUEST['telefono']) : NULL;
    $departamento = isset($_REQUEST['departamento']) ? $NewFuncion->ValidarNumero($_REQUEST['departamento']) : NULL;

    switch ($btn) {
        case "Agregar Nuevo":
            $pw = md5("1234");
            $fecha = date("Y-m-d");
            $hora = date("H:i:s");
            $sql = "INSERT INTO usuarios (usuario,clave,nombres,telefono,id_dpto,cargo,direccion,avatar,fecha,hora,status) "
            . "VALUES('" . $usuario . "','" . $pw . "','" . $nombres . "','" . $telefono . "',".$departamento.",'Indefinido','--','avatar04.jpg',"
            . "'" . $fecha . "','" . $hora . "','A')";
            $DbConect->Consulta($sql);
            break;
        case "Modificar":
            $fecha = date("Y-m-d");
            $hora = date("H:i:s");
            echo $sql = "UPDATE usuarios SET usuario='" . $usuario . "',nombres='" . $nombres . "',"
                 . "telefono='" . $telefono . "',id_dpto=".$departamento." WHERE id=".$id;
            $DbConect->Consulta($sql);
            break;
        case "Bloquear":            
            $sql = "UPDATE usuarios SET status='D' WHERE id=".$id;
            $DbConect->Consulta($sql);
            break;
        case "Activar":            
            $sql = "UPDATE usuarios SET status='A' WHERE id=".$id;
            $DbConect->Consulta($sql);
            break;
    }
    ?>
    <br><br>
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12">
                <div class="btn-group pull-right">
                    <a class="btn btn-default" class="pull-right" data-toggle="modal" data-target="#NuevoUsuario" id="Ag_Usuario"><i class='fa fa-smile-o'></i> Nuevo Usuario</a>
                </div>
                <h4>Directorio de Usuarios</h4>
                <br>
                <table class="table table-bordered table-hover" id="TablaResponsive">
                    <thead>
                        <th>Usuario</th>
                        <th>Nombres</th>
                        <th>Telefono</th>
                        <th>Departamento</th>
                        <th></th>
                    </thead>
                    <?php
                    $sql = "SELECT * FROM usuarios WHERE 1 ";
                    $r1 = $DbConect->Consulta($sql);
                    if ($DbConect->nroreg($r1) > 0) {
                        while ($u = $DbConect->ExtraerDatos($r1)) {
                            ?>
                            <tr>
                                <td><?php echo $u['usuario']; ?></td>
                                <td><?php echo $u['nombres']; ?></td>
                                <td><?php echo $u['telefono']; ?></td>
                                <td><?php echo $NewFuncion->NombreDpto($u['id_dpto']); ?></td>
                                <td>
                                    <div class="input-group">
                                        <a class="btn btn-primary pull-right Edit_Usuario" data-toggle="modal" data-target="#NuevoUsuario" id="e<?php echo $u['id']; ?>"><i class='fa fa-edit'></i>Editar</a>
                                    </div>
                                </td>
                            </tr>
                            <?php
                        }
                    } else {
                        echo "<p class='alert alert-danger'>No hay clientes</p>";
                    }
                    ?>
                </table>

            </div>
        </div>
    </div>

    <div class="modal fade" id="NuevoUsuario" role="dialog">
        
    </div>
    <?php
    } else {
        header('location:' . "login.php");
    }
    require_once './templates/footer.php';
    