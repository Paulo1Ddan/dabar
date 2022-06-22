<?php
    require_once('config.php');
    try{
        $data = file_get_contents("php://input");
        $usuario = json_decode($data);
        $cadastro = new Cadastro();
        $cadastro->setNome($usuario->nome);
        $cadastro->setEmail($usuario->email);
        $cadastro->setSenha($usuario->senha);
        $cadastro->setTelefone($usuario->telefone);
        $cadastro->setDataNasc($usuario->dataNasc);

        $cadastro->cadastroUsuario($cadastro->getNome(), $cadastro->getEmail(), $cadastro->getSenha(), $cadastro->getTelefone(), $cadastro->getDataNasc());
    }catch(\Throwable $th){
        echo $th->getMessage();
    }
?>