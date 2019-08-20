<?php
if (!isset($_SESSION)) {
    session_start();
}
require_once './templates/header.php';
require_once './templates/nav-hor.php';
if ($pase != "NO") {
    require_once './templates/nav-vert.php';
    require_once './class/clsConexion.php';
    $btn = isset($_REQUEST['btn'])?$_REQUEST['btn']:null;
    $txtpregunta = isset($_REQUEST['txtpregunta'])?$_REQUEST['txtpregunta']:null;
    $DbConect = new ConexionSQL();

    ?>
<div class="container">
    <div class="card login" id="Formulario" style="display: none;">
        <div style="border-top: 3px solid #95a5a6;padding-bottom:20px;">
            <div id="crear_frases">
                <form role="form">
                    <div class="form-group col-ms-12" style="padding-left:30px;padding-right:20px;padding-top:10px;">
                                <input class="form-control" type="text" name='frase' id="frase" placeholder="Frase">
                    </div>

                    <div class="form-group col-sm-12" style="padding-left:30px;padding-right:20px;padding-top:10px;">
                        <select class="form-control" name='script' id='optscript'>
                            <option value="0">Seleccione script...</option>
                            <?php 
                                $sql = "SELECT id,nombre FROM scripts WHERE status = 'S'";
                                $res1 = $DbConect->Consulta($sql);
                                if($res1){
                                    while($opt = $DbConect->ExtraerDatos($res1)){
                                        ?>
                                        <option value="<?php echo $opt['id']; ?>"><?php echo $opt['nombre']; ?></option>
                                        <?php
                                    }
                                }
                            ?>
                        </select>
                    </div>

                    <div class="form-group col-sm-12" style="padding-left:30px;padding-right:20px;padding-top:10px;">
                        <select class="form-control" name='emociones' id='optemociones'>
                            <option value="0">Seleccione emoción...</option>
                            <?php 
                                $sql = "SELECT id,nombre FROM emociones WHERE status = 'S'";
                                $res1 = $DbConect->Consulta($sql);
                                if($res1){
                                    while($opt = $DbConect->ExtraerDatos($res1)){
                                        ?>
                                        <option value="<?php echo $opt['id']; ?>"><?php echo $opt['nombre']; ?></option>
                                        <?php
                                    }
                                }
                            ?>
                        </select>
                    </div>

                    <div class="form-group col-sm-12" style="padding-left:30px;padding-right:20px;padding-top:10px;">
                        <input type="hidden" id="idfrase">
                        <button id="agregar" class="btn btn-primary form-control" name="btn" value="agregar" type="button">Crear frase</button>
                        <button id="actualizar" class="btn btn-success form-control" name="btn" value="actualizar" type="button" style="display: none;">Actualizar frase</button>
                    </div>    
                </form>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="content">
            <div class="overflow-auto" id="ListaDialogos"></div>
        </div>
    </div>
</div>
<?php
}else {
    header('location:' . "login.php");
}
require_once './templates/footer.php';
?>