<?php 

    class Matricula{
        private $iduser;
        private $idcurso;
        private $idturma;
        private $status;

        public function getIdCurso(){
            return $this->idcurso;
        }
        public function getIdUser(){
            return $this->iduser;
        }
        public function getIdTruma(){
            return $this->idturma;
        }
        public function getStatus(){
            return $this->status;
        }

        public function setIdCurso(int $idcurso){
            $this->idcurso = $idcurso;
        }
        public function setIdUser(int $iduser){
            $this->iduser = $iduser;
        }
        public function setIdTurma($idturma = null){
            $this->idturma = $idturma;
        }
        public function setStatus(int $status){
            $this->status = $status;
        }

        public function insertMatricula($idcurso, $iduser, $idturma, $status){
            $conn = Conexao::conexaoBD();

            $status1 = 1;
            $status2 = 2;

            $sqlChkMatricula = $conn->prepare("SELECT * FROM matricula WHERE (idUsuario = :iduser and idCurso = :idcurso) AND (statusMatricula = :status1 OR statusMatricula = :status2)");
            $sqlChkMatricula->bindParam(":idcurso", $idcurso); 
            $sqlChkMatricula->bindParam(":iduser", $iduser); 
            $sqlChkMatricula->bindParam(":status1", $status1); 
            $sqlChkMatricula->bindParam(":status2", $status2); 
            $sqlChkMatricula->execute();
            $rowsMatricula = $sqlChkMatricula->rowCount();
            if($rowsMatricula > 0){
                $json = array(
                    "statusMsg" => false,
                    "msg"=> "Matricula já registrada"
                );
                echo json_encode($json); 
            }else{

                $insert = $conn->prepare("INSERT INTO matricula(idCurso, idUsuario, idTurma, statusMatricula) VALUES (:idcurso, :iduser, :idturma, :status)");
                $insert->bindParam(":idcurso", $idcurso);
                $insert->bindParam(":iduser", $iduser);
                $insert->bindParam(":idturma", $idturma);
                $insert->bindParam(":status", $status);
                if($insert->execute()){
                    $json = array(
                        "statusMsg" => true,
                        "msg"=> "Matricula realizada com sucesso. Aguarde aprovação"
                    );
                    echo json_encode($json);
                }else{
                    $json = array(
                        "statusMsg" => false,
                        "msg"=> "Erro ao realizar matricula. Entre em contato com o suporte"
                    );
                    echo json_encode($json);
                }
            }

        }


    }

?>