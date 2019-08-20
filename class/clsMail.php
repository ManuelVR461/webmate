<?php
class CorreoMail{
    
    public function EnviarEmail($to, $subject, $message){
        $headers = 'De: no-reply@dragonbits.com.ve' . "\r\n" . 
		   'Reply-To: no-reply@dragonbits.com.ve' . "\r\n" . 
		   'X-Mailer: PHP/' . phpversion(); 
	mail($to, $subject, $message, $headers);
	return true;
    }

}