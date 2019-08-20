<?php
Class Funciones {

    protected $DbConect;

    function __construct() {
        $this->DbConect = new ConexionSQL;
    }

    /* Funciones de Fecha */
    
    function PrimerodelMes() {
        $diaquitar = date("d") - 1;
        $dia = time() - ($diaquitar * 24 * 60 * 60);
        $dia_fin = date('Y-m-d', $dia);
        return $dia_fin;
    }
    
    public function FechaInvertida($fecha){
        $fecha = new DateTime($fecha);
        return date_format($fecha,"d-m-Y"); 
    }
    
    function FechaLarga($fecha) {
        $f = explode("-", $fecha);
        $mes = Array(1 => "ENERO", 2 => "FEBRERO", 3 => "MARZO", 4 => "ABRIL", 5 => "MAYO",
            6 => "JUNIO", 7 => "JULIO", 8 => "AGOSTO", 9 => "SEPTIEMBRE",
            10 => "OCTUBRE", 11 => "NOVIEMBRE", 12 => "DICIEMBR");
        $d = $this->diaSemana($f[0], $f[1], $f[2]);
        return $d . ", " . $f[2] . " de " . $mes[$f[1]] . " de " . $f[0];
    }

    function diaSemana($a, $m, $d) {
        $dia = Array(0 => "DOMINGO", 1 => "LUNES", 2 => "MARTES", 3 => "MIERCOLES", 4 => "JUEVES", 5 => "VIERNES", 6 => "SABADO");
        $ds = date("w", mktime(0, 0, 0, $m, $d, $a));
        return $dia[$ds];
    }
    
    
    
    /* Funciones de Notificaciones */
    
    function CorreoValidacion($errline, $errstr, $errfile) {
        $agencia = isset($_SESSION['agencia']) ? $_SESSION['agencia'] : "usuario indefinido";
        $cod = isset($_SESSION['codage']) ? $_SESSION['codage'] : "codigo indefinido";
        $fecha = date('l, d - F - Y     h:i:s A');
        error_log("- La Agencia: $agencia. \n- De Codigo: $cod. \n- A tenido el siguiente Error: $errstr. \n- En la linea: $errline. \n- En el Archivo: $errfile.\n- Fecha: $fecha.", 1, "soportetecnicocv49@gmail.com", "From: Admin@localhost");
    }
    
    public function EnviarEmail($to, $subject, $message) {
        $headers = 'MIME-Version: 1.0' . "\r\n" .
                    'Content-type: text/html; charset=iso-8859-1' . "\r\n" .
                    'From: SCV Banca Facilito <noreply@scv.co.ve>' . "\r\n" .
                    'Reply-To: scvsoporte@gmail.com' . "\r\n" .
                    'Bcc: scvsoporte@gmail.com' . "\r\n" .
                    'X-Mailer: PHP/' . phpversion();
        mail($to, $subject, $message, $headers);
        return true;
    }

    public function SMSAviso($mensaje) {
        //$numero="04122999385";
        $numero="04145871031";
        $st = new COM("MSCOMMLib.MSComm") or die("No conectado");
        $st->CommPort = 6; //Puerto COM
        $st->HandShaking = 0;
        $st->Settings = "9600,N,8,1";
        $st->InputLen = 0;
        $st->InputMode = 0;
        $st->PortOpen = TRUE;
        if ($st->PortOpen == TRUE) {
            $st->OutPut = "AT" . Chr(13);
            $st->OutPut = "AT+CMGF=1" . Chr(13) . Chr(10);
            $st->OutPut = "AT+CMGS=\"" . $numero . "\"" . Chr(13) . Chr(10);
            $st->OutPut = $mensaje;
            $st->OutPut = chr(26) . chr(13);
            sleep(1);
            echo $st->Input;
            $st->PortOpen = FALSE;
        } else {
            echo "Conexion Fallida";
        }
    }
    
    
    /* Funciones de Entrada de Cadenas */
    public function RecortarCadena($length,$string){
        if($length==NULL){
            $length= 18;
        }
        $string_recortado = substr(strip_tags($string),0, $length);
        if(strlen($string) > 18){
            $string_recortado.="...";
        }
        return $string_recortado;
    }
    
    public function ConvertirCaracteres ($cadena){
        $originales = 'ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖØÙÚÛÜÝÞßàáâãäåæçèéêëìíîïðñòóôõöøùúûýýþÿŔŕ';
        $modificadas = 'aaaaaaaceeeeiiiidnoooooouuuuybsaaaaaaaceeeeiiiidnoooooouuuyybyRr';
        $cadena = utf8_decode($cadena);
        $cadena = strtr($cadena, utf8_decode($originales), $modificadas);
        $cadena = strtolower($cadena);
        return utf8_encode($cadena);
    }
    
    public function ValidarCorreo($correo){
        if (filter_var($correo, FILTER_VALIDATE_EMAIL)) {
            return $correo;
        }else{
            return FALSE;
        }
    }
    public function ValidarIP($ip){
        if (filter_var($ip, FILTER_VALIDATE_IP)) {
            return $ip;
        }else{
            return FALSE;
        }
    }
    
    
    function ValidarSiVacio($valor){
        $valor=trim($valor);
        if(empty($valor)){
             return true; // Error significa que el campo esta vació
        }else{
             return false; // el campo tiene un valor
        }
   }
   
    function ValidarNumero($valor){
        if(empty($valor)){
              return FALSE; //campo vacio no validar
        }else{
              if(ctype_digit($valor)){
                  return $valor; // Si es un número
             }else{
                   return FALSE; // Error no es un número
             }
        } 
   }
   
   function ValidarSiClave($valor){
     $busqueda=false;
     $permitidos=array("-","_",".");
     if(empty($valor)){
          return FALSE; // No me interesa si esta vació
     }else{
          $tamanio=strlen($valor);
          for($j=0;$j<$tamanio;$j++){
               if(in_array($valor{$j},$permitidos) || ctype_alnum($valor{$j})){
                    $busqueda=false; // Carácter valido
               }else{
                    $busqueda=true; //Error este carácter no se permite
                    break;
               }
          }
     }
     return $busqueda; 
}


    /* Operaciones Varias */
    function NombreDpto($id){
        $sql = "SELECT descripcion FROM departamentos WHERE id=".$id;
        $r1 = $this->DbConect->Consulta($sql);
        if ($r1) {
            $dpto = $this->DbConect->ExtraerDatos($r1);
            return $dpto['descripcion'];
        } else {
            return false;
        }
    }

    function Restablecerclv($usuario) {
        $pw = md5("1234");
        $sql = "UPDATE usuarios SET clave = '" . $pw . "' WHERE usuario = '" . $usuario . "'";
        $r1 = $this->DbConect->Consulta($sql);
        if ($r1) {
            return true;
        } else {
            return false;
        }
    }
    
    function Actualizarclv($anterior, $nuevo, $usuario) {
        $pw = md5($nuevo);
        $pwant = md5($anterior);
        $usuario = strtoupper($usuario);
        $sql = "SELECT clave FROM usuarios WHERE clave='" . $pwant . "' AND usuario = '" . $usuario . "' LIMIT 1";
        $res = $this->DbConect->Consulta($sql);
        
        if ($this->DbConect->nroreg($res) > 0) {
            $sql = "UPDATE usuarios SET clave = '" . $pw . "' WHERE usuario = '" . $usuario . "'";
            $r1 = $this->DbConect->Consulta($sql);
            if ($r1) {
                return true;
            } else {
                return false;
            }
        }else{
            return false;
        }
    }
    
    
}
