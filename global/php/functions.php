<?php

    function enviarEmail($nome, $email, $mensagem, $telefone){
        require_once("../../lib/php-mailer/src/PHPMailer.php");
        require_once("../../lib/php-mailer/src/SMTP.php");
        require_once("../../lib/php-mailer/src/Exception.php");
        use PHPMailer\PHPMailer\SMTP;
        use PHPMailer\PHPMailer\Exception;

    }
?>