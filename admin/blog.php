<?php 
    require_once("conexao.php");

    $conexao = Conexao::conexaoBD();
    $conexao->exec("SET NAMES utf8");

    $sqlBlog = $conexao->prepare("SELECT * FROM artigo");
    $sqlBlog->execute();
    
    $json = array();
    while($dados = $sqlBlog->fetch(PDO::FETCH_ASSOC)){
        array_push($json, $dados);
    }
    echo json_encode($json, JSON_UNESCAPED_UNICODE);
?>