<?php 
    header("Access-Control-Allow-Origin: *");
    class Conexao{
        public static function conexaoBD(){
            try {
                $conn = new PDO("mysql:dbname=dabar;host=localhost", "root", "");
                return $conn;
            } catch (PDOException $e) {
                echo "Erro de conexão".$e->getMessage();
            }
        }
    }
    
    Conexao::conexaoBD();
?>