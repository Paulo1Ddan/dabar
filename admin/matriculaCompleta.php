<?php 
    require_once("config.php");
    try{
        if(isset($_GET['idMatricula'])){
            $matricula = new Matricula();
            $matricula->setIdMatricula($_GET['idMatricula']);
            $conn = Conexao::conexaoBD();
            $matricula->selectMatriculaCompleta($matricula->getIdMatricula(), $conn);
        }
    }catch(\Throwable $th){
        echo $th->getMessage();
    }
?>