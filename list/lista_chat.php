<?php

require_once '../class/clsConexion.php';

$DbConect = new ConexionSQL();
$btn=isset($_REQUEST['btn'])?$_REQUEST['btn']:null;
$mensaje=isset($_REQUEST['mensaje'])?$_REQUEST['mensaje']:null;

if($btn=="Enviar"){
    $sql="INSERT INTO chat (usuario,mensaje) VALUES('Operador','".$mensaje."')";
    $DbConect->Consulta($sql);
    unset($btn);
    unset($mensaje);
}
?>
</div>
    <?php
        $sql = "SELECT c.* FROM chat c WHERE 1";
        $res3 = $DbConect->Consulta($sql);
        if($res3){
            while($data = $DbConect->ExtraerDatos($res3)){
                if($data['usuario']=="Max"){
                    ?>
                        <div class="contenedor-mensaje">
                            <div class="mensageLeft">
                                <table style="width:100%;">
                                    <tr>
                                        <td style="width:50px;vertical-align:top;">
                                            <img class="chatbox img" src="images/usuarios.png" alt="avatarUser">
                                        </td>
                                        <td style="width:100%;text-align:left;padding-left:10px;">
                                            <?php echo $data['mensaje']; ?><br>
                                            <span> 11:00</span>
                                        </td>
                                    </tr>
                                </table>
                            </div>    

                        </div>
                    <?php
                }
                if($data['usuario']=="Operador"){
                    ?>
                        <div class="contenedor-mensaje">
                            <div class="mensajeRight">
                                <table style="width:100%;">
                                    <tr>
                                        <td style="width:100%;text-align:right;padding-right:10px;">
                                            <?php echo $data['mensaje']; ?><br>
                                            <span> 11:02</span>    
                                        </td>
                                        <td style="width:50px;vertical-align:top;">
                                            <img class="chatbox img" src="images/pbot.png" alt="AvatarRobot">
                                        </td>
                                    </tr>
                                </table>
                            </div>

                        </div>
                        
                    <?php
                }
            }
        }
        ?>
</div>
