<?php
    require_once("conexao.php");
    $conexao = Conexao::conexaoBD();
    $conexao->exec("SET NAMES utf8");
    $idArtigo = $_GET['idArtigo'];

    $sqlDetalhe = $conexao->prepare("SELECT * FROM artigo WHERE idArtigo=" . "$idArtigo");
    $sqlDetalhe->execute();

    $json = array();
    array_push($json, $sqlDetalhe->fetch(PDO::FETCH_ASSOC));

    echo json_encode($json, JSON_UNESCAPED_UNICODE);
?>
