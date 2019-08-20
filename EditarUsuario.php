<?php
if (!isset($_SESSION)) {
    session_start();
}
require_once './templates/header.php';
if ($pase != "NO") {
    $DbConect = new ConexionSQL();
    $NewFuncion = new Funciones();

    $btn = isset($_REQUEST['btn']) ? $_REQUEST['btn'] : NULL;
    $id = isset($_REQUEST['id']) ? $_REQUEST['id'] : NULL;
    $status = isset($_REQUEST['status']) ? $_REQUEST['status'] : NULL;
    $usuario = isset($_REQUEST['usuario']) ? $NewFuncion->ConvertirCaracteres($_REQUEST['usuario']) : NULL;
    $nombres = isset($_REQUEST['nombres']) ? $NewFuncion->ConvertirCaracteres($_REQUEST['nombres']) : NULL;
    $telefono = isset($_REQUEST['telefono']) ? $NewFuncion->ValidarNumero($_REQUEST['telefono']) : NULL;
    $departamento = isset($_REQUEST['departamento']) ? $NewFuncion->ValidarNumero($_REQUEST['departamento']) : NULL;

    switch ($btn) {
        case "Editar Usuario":
            echo $sql = "SELECT * FROM usuarios  WHERE id=".$id;
            $r1 = $DbConect->Consulta($sql);
            if($r1){
                $usu = $DbConect->ExtraerDatos($r1);
                $usuario = $usu['usuario'];
                $nombres = $usu['nombres'];
                $departamento = $usu['id_dpto'];
                $telefono = $usu['telefono'];
                $status = $usu['status'];
            }
            break;
    }
    ?>
    <br><br>
    <div class="modal-dialog" style="background: white;border: 1px solid black;">
        <div class="modal-content">
            <form class="form-horizontal" method="post" role="form">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h3 class="modal-title text-info">Nuevo Usuario</h3>
                </div>
                <div class="modal-body">    
                    <div class="form-group">
                        <label for="usuario" class="col-md-4 control-label">Usuario</label>
                        <div class="col-md-8">
                            <input type="text" name="usuario" value="<?php echo $usuario; ?>" class="form-control" id="usuario" placeholder="Usuario">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nombres" class="col-md-4 control-label">Nombres</label>
                        <div class="col-md-8">
                            <input type="text" name="nombres" value="<?php echo $nombres; ?>" required class="form-control" id="nombres" placeholder="Nombre Completo">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="telefono" class="col-md-4 control-label">Telefono</label>
                        <div class="col-md-8">
                            <input type="text" name="telefono" value="<?php echo $telefono; ?>" class="form-control" id="telefono" placeholder="Telefono">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="telefono" class="col-md-4 control-label">Departamento</label>
                        <div class="col-md-8">
                            <select class="form-control" name="departamento" id="departamento">
                                <?php
                                $sql = "SELECT * FROM departamentos WHERE id != 1";
                                $r2 = $DbConect->Consulta($sql);
                                while ($dp = $DbConect->ExtraerDatos($r2)) {
                                    $h = "";
                                    if($departamento == $dp['id']){
                                        $h="selected";
                                    }
                                    echo "<option value='" . $dp['id'] . "' $h>" . $dp['descripcion'] . "</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <div class="form-group">
                        <div class="col-md-12 text-right">
                            <?php
                            if($btn=="Editar Usuario"){
                                ?>
                                <input type="hidden" value="<?php echo $id; ?>" name="id">
                                <?php 
                                if($status=="A"){
                                    ?>
                                    <button type="submit" name="btn" class="btn btn-danger" value="Bloquear">Bloquear</button>
                                    <?php
                                }
                                if($status=="D"){
                                    ?>
                                    <button type="submit" name="btn" class="btn btn-default" value="Activar">Activar</button>
                                    <?php
                                }
                                ?>
                                <button type="submit" name="btn" class="btn btn-success" value="Modificar">Modificar</button>
                                <?php
                            }else{
                                ?>
                                <button type="submit" name="btn" class="btn btn-primary" value="Agregar Nuevo">Agregar Nuevo</button>
                                <?php
                            }
                            ?>
                        </div>
                    </div>
                </div>
            </form>          
        </div>
    </div>
    <?php
} else {
    header('location:' . "login.php");
}
require_once './templates/footer.php';
