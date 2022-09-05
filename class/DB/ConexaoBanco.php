<?php 
    namespace DB;
    class ConexaoBanco{
        public static function conectarBD(){
            try {
                $conn = new \PDO("mysql:dbname=dabar;host=localhost", "root", "");
                return $conn;
            } catch (\PDOException $pdoe) {
                echo "Erro de conexão:".$pdoe->getMessage();
            }
        }
    }
?>
