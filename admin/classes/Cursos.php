<?php 
    class Cursos{
        public function __construct(){
            $conn = Conexao::conexaoBD();
            $queryCursos = $conn->prepare("SELECT * FROM curso WHERE statusCurso = 1");
            $queryCursos->execute();
            $json = array();
            while ($dadosCurso = $queryCursos->fetch(PDO::FETCH_ASSOC)) {
                array_push($json, $dadosCurso);
            }
            echo json_encode($json);
        }
    }
    
?>