<?php 
    require_once("config.php");

    try{
        $data = file_get_contents("php://input");
        $dadosMatricula = json_decode($data);
        
        $matricula = new Matricula();
        $matricula->setIdCurso($dadosMatricula->idCurso);
        $matricula->setIdUser($dadosMatricula->iduser);
        $matricula->setStatus(1);

        $conn = Conexao::conexaoBD();

        $matricula->insertMatricula($matricula->getIdCurso(), $matricula->getIdUser(),  1, $conn);
        

    }catch(\Throwable $th){
        echo $th->getMessage();
    }
?>