<meta charset="UTF-8">
<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

class EnviarEmail
{

    private $nome;
    private $email;
    private $mensagem;
    private $telefone;

    public function getNome()
    {
        return $this->nome;
    }

    public function setNome($nome)
    {
        $this->nome = $nome;
    }


    public function getEmail()
    {
        return $this->email;
    }

    public function setEmail($email)
    {
        $this->email = $email;
    }

    public function getMensagem()
    {
        return $this->mensagem;
    }

    public function setMensagem($mensagem)
    {
        $this->mensagem = $mensagem;
    }


    public function getTelefone()
    {
        return $this->telefone;
    }

    public function setTelefone($telefone)
    {
        $this->telefone = $telefone;
    }

    public function retornoDados()
    {
        $nome = $this->getNome();
        $email = $this->getEmail();
        $mensagem = $this->getMensagem();
        $mail = new PHPMailer();
        try {
            $mail->isSMTP();
            
            $mail->CharSet = 'UTF-8';
            $mail->Host = "smtp.gmail.com";
            $mail->SMTPAuth = true;
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
            $mail->Username = "teste.paulo.daniel@gmail.com";
            $mail->Password = "ffluxlhrgjgpojjq";
            $mail->Port = 465;

            $mail->setFrom("teste.paulo.daniel@gmail.com");
            $mail->addAddress("$email");

            $mail->isHTML(true);
            $mail->Subject = "Obrigado por nos contatar";
            $mail->Body =
            "
                <header style='padding: 10px; border-bottom: 1px solid #ccc;'>Cetdabar</header>
                Olá, <strong>$nome</strong>. Entraremos em contato em breve.
                <br><br>
            ";
            $mail->AltBody = "Olá, $nome. Entraremos em contato em breve";
            $mail->send();
        } catch (Exception $e) {
            echo "Erro ao enviar email: " . $e->getMessage();
        }
    }
}

