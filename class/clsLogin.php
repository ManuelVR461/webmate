<?php
require_once('clsConexion.php');

class Login{
    protected $email;
    protected $pwd;
    protected $metodo;

    protected $DbConect;
    
    public function __construct() {
        $this->DbConect = new ConexionSQL;
    }
    
    public function VerfificarRegitro($user_id,$pwd){
        $pwd=md5($pwd);
        $codigo = strtoupper($user_id);
            try {
                $sql = "SELECT usuario,nombres,status,fecha,clave,avatar "
                     . "FROM usuarios WHERE usuario='".$codigo."' LIMIT 1";
                $r1 = $this->DbConect->Consulta($sql);
                if(!$this->DbConect->nroreg($r1)>0){throw new Exception("Usuario Errado.!");}
                $reg=  $this->DbConect->ExtraerDatos($r1);
                
                if($reg['clave']!=$pwd){throw new Exception("Contraseña Incorrecta...!");}
                if($reg['status']=="D"){throw new Exception("Usuario Bloqueado, Contacte al administrador de sistema...!");}
                
                $nota = "A Accedido al sistema desde: ".$_SERVER['HTTP_USER_AGENT']." IP: " . $_SERVER['REMOTE_ADDR'] . " PUERTO: " . $_SERVER['REMOTE_PORT'] ." - ". $_SERVER['REQUEST_URI'];
                $this->DbConect->Log_Accesos($codigo, $nota);
                $_SESSION['datalogin']=array("usuario"=>$reg['usuario'],
                                             "nombre"=>$reg['nombres'],
                                             "avatar"=>$reg['avatar'],
                                             "user_id"=>$user_id,
                                             "ingreso"=>"SI",
                                             "fechaingreso"=>$reg['fecha']);
                return TRUE;

            } catch (Exception $ex) {
                $nota = "A Intentado Acceder al sistema desde: ".$_SERVER['HTTP_USER_AGENT']." IP: " . $_SERVER['REMOTE_ADDR'] . " PUERTO: " . $_SERVER['REMOTE_PORT'] ." - ". $_SERVER['REQUEST_URI']."con el error: ".$ex->getMessage();
                $this->DbConect->Log_Accesos($codigo, $nota);
                echo "<script>alert('".$ex->getMessage()."');</script>";
                return false;
            }
            
        
    }
}
