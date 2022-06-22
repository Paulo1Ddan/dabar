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
            $mail->Host = "smtp.office365.com";
            $mail->SMTPAuth = true;
            $mail->Username = "";
            $mail->Password = "";
            $mail->Port = 587;

            $mail->setFrom("");
            $mail->addAddress("$email");

            $mail->isHTML(true);
            $mail->Subject = "Teste de Email";
            $mail->Body =
                "
                Olá, <strong>$nome</strong>. Entraremos em contato em breve.
                <br><br>
                <p>$nome</p>
                <p>$email</p>
                <p>$mensagem</p>
           ";
            $mail->AltBody = "Olá, $nome. Entraremos em contato em breve";
            $mail->send();
        } catch (Exception $e) {
            echo "Erro ao enviar email: " . $e->getMessage();
        }
    }
}

