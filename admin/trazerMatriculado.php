<?php 

    try{
        require_once "conexao.php";

        $conn = Conexao::conexaoBD();

        $iduser = $_GET['iduser'];

        $sqlMatricula = $conn->prepare("SELECT idMatriculado, statusMatriculado, idCurso, curso, imgCurso  FROM matriculado INNER JOIN curso USING(idCurso) WHERE (idUsuario = :id) AND (statusMatriculado = 1 OR statusMatriculado = 2)");
        $sqlMatricula->bindParam(":id", $iduser);
        $sqlMatricula->execute();

       
        $json = array();
        while ($dadosMatricula = $sqlMatricula->fetch(PDO::FETCH_ASSOC)){
            array_push($json, $dadosMatricula); 
        }
        echo json_encode($json);

    }catch(\Throwable $th){
        echo $th->getMessage();
    }

?>