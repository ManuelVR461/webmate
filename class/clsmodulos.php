<?php
require_once 'clsConexion.php';

class Modulos {
    protected $fecha;
    protected $time;
    protected $mensaje_prg;
    protected $DbConect;
    
    public function __construct($prg) {
        $this->fecha=date("Y-m-d");
        $this->time=date("H:i:s");
        $this->mensaje_prg = $prg;
        $_SESSION['user_id']="NO";
        $_SESSION['usename']="INVITADO";
        $this->DbConect = new ConexionSQL();
    }
    
    
    
    public function Registrarmail(){
        require_once 'clsMail.php';
        $fecha = date("Y-m-d");
        $hora = date("H:i:s");
        
        $llave = md5($this->email.time());
        try {
            $regex = '/^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,4})$/';
            if(preg_match($regex, $this->email)){
                throw new Exception("Correo No Valido, Intentelo de Nuevo");
            }
            $sql = "SELECT id FROM usuarios WHERE email='".$this->email."'";
            $r1 = $this->DbConect->Consulta($sql);
            
            if(!$r1){throw new Exception("Error al verificar el Correo...");}
            
            if($this->DbConect->nroreg($r1)>0){
                throw new Exception("Este Correo ya se encuentra registrado...");
            }
            if(!$this->refers){
               $this->refers=0;
            }
            $sql = "INSERT INTO usuarios (usuario,pwd,nombres,email,fechanac,pregunta1,respuesta1,referencia,referido,wallet,llave,fecha,hora) "
                 . "VALUES ('".$this->username."','".$this->pwd."','".$this->name."','".$this->email."','".$this->fechnac."',"
                 . "'".$this->pregunta."','".$this->respuesta."',".$nroref.",".$this->refers.",'".$this->wallet."','".$llave."','".$fecha."','".$hora."')";
            $r2 = $this->DbConect->Consulta($sql);
            if(!$r2){throw new Exception("Error al Registrar Usuario por favor intentelo de Nuevo...");}
            $mensaje = "Estimado Amigo. Es un placer para nosotros darle la Bienvenida a DragonBits.com.ve. Para Finalizar el Registro debera dar click al siguiente enlace: http://www.dragonbits.com.ve/activacion/".$llave;
            CorreoMail::EnviarEmail($this->email,"Verificacion de Correo",$mensaje);
            return TRUE;    
            
        } catch (Exception $ex) {
            echo "<script>alert('".$ex->getMessage()."');</script>";
            return FALSE;
        }

    }
    
    function ConsultarPregunta(){
        try {
            //echo $sql = "SELECT * FROM liguistica WHERE MACTH(expresion_regular) AGAINST('+(REGEXP [[:<:]][[:>:]])' IN BOOLEAN MODE)";
            echo $sql = "SELECT * FROM linguistica WHERE MATCH(expresion_regular) AGAINST ('+".$this->mensaje_prg."' IN BOOLEAN MODE)";
            $r1 = $this->DbConect->Consulta($sql);
            if(!$r1){throw new Exception("Error al hacer la consulta...");}

            while ( $d = $this->DbConect->ExtraerDatos($r1)) {
                print_r($d);
                echo "<br>";
            }


            //return TRUE;    
            
        } catch (Exception $ex) {
            echo "<script>alert('".$ex->getMessage()."');</script>";
            return FALSE;
        }
    }

    

}
