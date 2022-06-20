<?php 
    class Login{
        private $email;
        private $senha;

        public function getEmail(){
            return $this->email;
        }

        public function setEmail($email){
            $this->email = $email;
        }

        public function getSenha(){
            return sha1($this->senha);
        }

        public function setSenha($senha){
            $this->senha = $senha;
        }

        public function login($email, $senha){
            try{
                $conn = Conexao::conexaoBD();
                $queryLogin = $conn->prepare("SELECT * FROM usuario WHERE emailUsuario = :EMAIL AND senhaUsuario = :SENHA");
                $queryLogin->bindParam(":EMAIL", $email);
                $queryLogin->bindParam(":SENHA", $senha);
                $queryLogin->execute();
                $dadosUsuario = $queryLogin->fetch(PDO::FETCH_ASSOC);
                if($dadosUsuario){
                    $json = array();
                    $loginJson = array(
                        "msg"=>array(
                            "logado"=>"sim",
                            "texto"=>"Logado com sucesso"
                        ),
                        "dados"=>$dadosUsuario
                    );
                    array_push($json, $loginJson);
                    echo json_encode($json);
                }else{
                    $json = array();
                    $loginJson = array(
                        "msg"=>array(
                            "logado"=>"não",
                            "texto"=>"Usuario inválido"
                        ),
                        "dados"=>$dadosUsuario
                    );
                    array_push($json, $loginJson);
                    echo json_encode($json);
                }
            }catch(\Throwable $th){
                echo "Erro no método Login".$th->getMessage();
            }catch(PDOException $ph){
                echo "Erro no PDO".$ph->getMessage();
            }
        }
    }
?>