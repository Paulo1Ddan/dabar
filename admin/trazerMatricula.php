<?php 

    try{
        require_once "conexao.php";

        $conn = Conexao::conexaoBD();

        $iduser = $_GET['iduser'];

        $sqlMatricula = $conn->prepare("SELECT idMatricula, statusMatricula, idCurso, curso, imgCurso  FROM matricula INNER JOIN curso USING(idCurso) WHERE (idUsuario = :id) AND (statusMatricula = 1 OR statusMatricula = 2)");
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