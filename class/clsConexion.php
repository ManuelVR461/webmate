<?php
class ConexionSQL {

    var $servidor;
    var $usuarios;
    var $pwd;
    var $conexion;
    var $manejador;
    var $dbase;

    function __construct ($servidor="localhost",$usuarios="root",$pwd="",$conexion=""){    
        $this->conexion = $conexion;
        $this->servidor = $servidor;
        $this->usuarios = $usuarios;
        $this->pwd = $pwd;
        $this->dbase = "dbinteligentpos";
        $this->manejador = "Mysqli";
    }

    public function Consulta($sql) {
        if ($this->manejador == "Mysql") {
            $this->conexion = mysql_connect($this->servidor, $this->usuarios, $this->pwd);
			mysql_set_charset("UTF8", $this->conexion);
            if (!$this->conexion) {
                return false;
            } else {
                mysql_select_db($this->dbase, $this->conexion);
            }
            $resultado = mysql_query($sql, $this->conexion);
            if (mysql_error()) {
                echo "<script>alert('".mysql_error()."');</script>";
            }
        }
        if ($this->manejador == "MariaDB") {
            $this->conexion = new mysqli($this->servidor, $this->usuarios, $this->pwd, $this->dbase);
			$this->conexion->set_charset("utf8");

            $resultado = mysqli_query($this->conexion, $sql);
        }
        if ($this->manejador == "Mysqli") {
            $this->conexion = new mysqli($this->servidor, $this->usuarios, $this->pwd, $this->dbase);
			$this->conexion->set_charset("utf8");
            $resultado = mysqli_query($this->conexion, $sql);
        }

        if (!$resultado) {
            return false;
        } else {
            return $resultado;
        }
    }

    public function nroreg($res) {
        if ($this->manejador == "Mysql") {
            $c = mysql_num_rows($res);
        }
        if ($this->manejador == "Mysqli") {
            $c = mysqli_num_rows($res);
        }
        if ($this->manejador == "MariaDB") {
            $c = mysqli_num_rows($res);
        }
        if (!$c) {
            return false;
        } else {
            return $c;
        }
    }
    
    
    public function UltimoIdGenerado($res) {
        if ($this->manejador == "Mysql") {
            $d = mysql_insert_id();
        }
        if ($this->manejador == "MariaDB") {
            $d = mysqli_insert_id();
        }
        if (!$d) {
            return FALSE;
        } else {
            return $d;
        }
    }
    
    public function nrocampos($res) {
        if ($this->manejador == "Mysql") {
            $c = mysql_num_fields($res);
        }
        if ($this->manejador == "MariaDB") {
            $c = mysqli_num_fields($res);
        }
        if (!$c) {
            return false;
        } else {
            return $c;
        }
    }
    
    public function NombreCampo($res,$i) {
        if ($this->manejador == "Mysql") {
            $c = mysql_field_name($res, $i);
            if (!$c) {
                return false;
            } else {
                return $c;
            }
        }
        if ($this->manejador == "MariaDB") {
            $c = mysqli_fetch_field_direct($res,$i);
            if (!$c) {
                return false;
            } else {
                return $c->name;
            }
        }
        
    }

    public function TipoDatoCampo($res,$i) {
        if ($this->manejador == "Mysql") {
            $c = mysql_field_type($res, $i);
            if (!$c) {
                return false;
            } else {
                return $c;
            }
        }
        if ($this->manejador == "MariaDB") {
             $c = mysqli_fetch_field_direct($res,$i);
             if (!$c) {
                return false;
            } else {
                return $c->type;
            }
        }
        
    }
    
    public function ExtraerDatos($res) {
        if ($this->manejador == "Mysql") {
            $d = mysql_fetch_array($res);
        }
        if ($this->manejador == "MariaDB") {
            $d = mysqli_fetch_array($res);
        }
        if ($this->manejador == "Mysqli") {
            $d = mysqli_fetch_array($res);
        }
        if (!$d) {
            return FALSE;
        } else {
            return $d;
        }
    }
    
    public function VolveraRecorrer($res){
        if ($this->manejador == "Mysql") {
            mysql_data_seek($res,0);
        }
        if ($this->manejador == "MariaDB") {
            mysqli_data_seek($res,0);
        }
    }
    
    public function FilasAfectadas($res) {
        if ($this->manejador == "Mysql") {
            $d = mysql_affected_rows();
        }
        if ($this->manejador == "MariaDB") {
            $d = mysqli_affected_rows($res);
        }
        if (!$d) {
            return FALSE;
        } else {
            return $d;
        }
    }
    
    public function ObtenerDatoTabla($campo,$tabla){
        $sql = "SELECT ".$campo." FROM ".$tabla." LIMIT 1";
        $res = $this->Consulta($sql);
        $d = mysql_fetch_array($res);
        return $d[$campo];
    }
    
    public function VerificarPermisologia($page) {
        $acceso = explode(",", $_SESSION['menu']);
        $windows = $_SERVER['HTTP_USER_AGENT'];

        if (in_array($page, $acceso)) {
            $nota = "A Accedido al " . $page . "-" . $_SERVER['REQUEST_URI'];
            $this->Log_Accesos($_COOKIE['codigo'], $nota);
            return TRUE;
        } else {
            $nota = "A Intentado Acceder al " . $page . "-" . $_SERVER['REQUEST_URI'] . " desde " . $windows . " desde la ip " . $_SERVER['REMOTE_ADDR'] . " Puerto: " . $_SERVER['REMOTE_PORT'];
            $this->Log_Accesos($_COOKIE['codigo'], $nota);
            echo "<script>window.location='lock.php';</script>";
        }
    }

    public function CantRegistros($sql) {
        $this->conexion = mysql_connect($this->servidor, $this->usuarios, $this->pwd);
        if (!$this->conexion) {
            return false;
        } else {
            mysql_select_db("dbscvfacilito", $this->conexion);
        }
        $res = mysql_query($sql, $this->conexion);
        $cantidad = mysql_num_rows($res);
        if (!$cantidad) {
            return false;
        } else {
            return $cantidad;
        }
    }
    
    public function EscaparEntrada($cadena) {
        if ($this->manejador == "Mysql") {
            $c = mysql_real_escape_string($cadena);
        }
        if ($this->manejador == "MariaDB") {
            $c = mysqli_real_escape_string($cadena);
        }
        if (!$c) {
            return false;
        } else {
            return $c;
        }
    }

    public function Cerrar(){
        if($this->manejador=="Mysql"){
             mysql_close($this->conexion);
        }
        if($this->manejador=="MariaDB"){
            mysqli_close($this->conexion);
        }
    }

    
    function Log_Accesos($user, $notificacion) {
        $archivo = '../Auditoria/log_Accesos.dat';
        if (file_exists($archivo)) {
            $file = fopen("../Auditoria/log_Accesos.dat", "a");
        } else {
            $file = fopen("./Auditoria/log_Accesos.dat", "a");
        }
        $date = date('d-m-Y H:i:s');
        fwrite($file, PHP_EOL);
        fwrite($file, $user);
        fwrite($file, " ~ ");
        fwrite($file, $notificacion);
        fwrite($file, " ~ ");
        fwrite($file, $date);
        fwrite($file, "^");
        fclose($file);
    }

}

?>