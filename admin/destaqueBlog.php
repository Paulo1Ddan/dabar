<?php
    require_once("conexao.php");

    $conexao = Conexao::conexaoBD();
    $conexao->exec("SET NAMES utf8");

    $sqlBlog = $conexao->prepare("SELECT a.idArtigo, tituloArtigo, imgBanner FROM destaqueblog a INNER JOIN artigo b USING (idArtigo)");
    $sqlBlog->execute();

    $json = array();
    while ($dados = $sqlBlog->fetch(PDO::FETCH_ASSOC)) {
        array_push($json, $dados);
    }
    echo json_encode($json, JSON_UNESCAPED_UNICODE);
