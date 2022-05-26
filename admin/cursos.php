<?php 
    require_once("conexao.php");

    $conexao = Conexao::conexaoBD();
    $conexao->exec("SET NAMES utf8");

    $sqlCursos = $conexao->prepare("SELECT * FROM curso WHERE statusCurso = 1");
    $sqlCursos->execute();
    
    $json = array();
    while($dados = $sqlCursos->fetch(PDO::FETCH_ASSOC)){
        array_push($json, $dados);
    }
    echo json_encode($json, JSON_UNESCAPED_UNICODE);
?>