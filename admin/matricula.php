<?php 
    require_once("config.php");

    try{
        $data = file_get_contents("php://input");
        $dadosMatricula = json_decode($data);

        $matricula = new Matricula();
        $matricula->setIdCurso($dadosMatricula->idCurso);
        $matricula->setIdUser($dadosMatricula->iduser);
        $matricula->setIdTurma();
        $matricula->setStatus(2);

        $matricula->insertMatricula($matricula->getIdCurso(), $matricula->getIdUser(), $matricula->getIdTruma(), $matricula->getStatus());
        

    }catch(\Throwable $th){
        echo $th->getMessage();
    }
?>