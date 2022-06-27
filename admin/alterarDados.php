<?php 
    require_once('config.php');

    try {
        if(isset($_GET['idUser'])){
            $data = file_get_contents("php://input");
            $usuarios = json_decode($data);

            $alterarDados = new AlterarDados();
            $alterarDados->setNome($usuarios->nome);
            $alterarDados->setEmail($usuarios->email);
            $alterarDados->setTelefone($usuarios->telefone);
            $alterarDados->setDataNasc($usuarios->dataNasc);

            $alterarDados->alterarDados($alterarDados->getNome(),$alterarDados->getEmail(),$alterarDados->getTelefone(),$alterarDados->getDataNasc(),$_GET['idUser']);
        }
    } catch (\Throwable $th) {
        //throw $th;
    }
?>