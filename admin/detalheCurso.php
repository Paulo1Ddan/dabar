<?php 
    require_once ("conexao.php");
    $conexao = Conexao::conexaoBD();
    $conexao->exec("SET NAMES utf8");
    $idCurso = $_GET['idCurso'];

    $sqlDetalhe = $conexao->prepare("SELECT * FROM curso WHERE idCurso="."$idCurso");
    $sqlDetalhe->execute();

    $json = array();
    array_push($json, $sqlDetalhe->fetch(PDO::FETCH_ASSOC));

    echo json_encode($json, JSON_UNESCAPED_UNICODE);
?>