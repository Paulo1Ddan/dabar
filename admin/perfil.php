<?php
require_once "conexao.php";

$conexao = Conexao::conexaoBD();
$conexao->exec("SET NAMES utf8");

$idUsuario = 2;

$sqlUsuario = $conexao->prepare("SELECT * FROM usuario WHERE idUsuario = :id");
$sqlUsuario->bindParam(":id", $idUsuario);
$sqlUsuario->execute();
$dadosUsuario = $sqlUsuario->fetch(PDO::FETCH_ASSOC);
$json = array();
array_push($json, $dadosUsuario);

echo json_encode($json);
