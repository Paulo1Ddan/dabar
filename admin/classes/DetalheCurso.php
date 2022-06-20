<?php 

    class DetalheCurso{
        private $idCurso;
        
        public function getIdCurso(){
            return $this->idCurso;
        }

        public function setIdCurso($idCurso){
            $this->idCurso = $idCurso;
        }

        public function detalheCurso($idCurso){
            try {
                $conn = Conexao::conexaoBD();
                $queryDetalheCurso = $conn->prepare("SELECT * FROM curso WHERE idCurso = :ID");
                $queryDetalheCurso->bindParam(":ID", $idCurso);
                $queryDetalheCurso->execute();
                $dadosDetalheCurso = $queryDetalheCurso->fetch(PDO::FETCH_ASSOC);
                $json = array();
                array_push($json, $dadosDetalheCurso);
                echo json_encode($json);
            } catch (\Throwable $th) {
                echo "Erro no método detalhe".$th->getMessage();
            }
        }
    }

?>