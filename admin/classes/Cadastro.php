<?php 
    class Cadastro{
        private $nome;
        private $email;
        private $senha;
        private $telefone;
        private $dataNasc;

        public function getNome(){
            return $this->nome;
        }
        public function getEmail(){
            return $this->email;
        }
        public function getSenha(){
            return $this->senha;
        }
        public function getTelefone(){
            return $this->telefone;
        }
        public function getDataNasc(){
            return $this->dataNasc;
        }

        public function setNome($nome){
            $this->nome = $nome;
        }
        public function setEmail($email){
            $this->email = $email;
        }
        public function setSenha($senha){
            $this->senha = $senha;
        }
        public function setTelefone($telefone){
            $this->telefone = $telefone;
        }
        public function setDataNasc($dataNasc){
            $this->dataNasc = $dataNasc;
        }

        public function cadastroUsuario($nome, $email, $senha, $telefone, $dataNasc){
            list($anoNasc, $mesNasc, $diaNasc)= explode("-",$dataNasc);
            $idade = 0;
            $idade = date('Y') - $anoNasc;
            if(date('m') < $mesNasc){
                $idade -= 1;
            }else if(date('m') == $mesNasc && date('d') < $diaNasc){
                $idade -= 1;
            }
            if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                $jsonCadastro = array(
                    "statusMsg" => false,
                    "msg" => "Insira um email válido"
                );
                echo json_encode($jsonCadastro);
            }else if(!preg_match('/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d].\S{8,}$/', $senha)){
                $jsonCadastro = array(
                    "statusMsg" => false,
                    "msg" => "Insira uma senha válida"
                );
                echo json_encode($jsonCadastro);
            } else if (!str_contains($telefone, "(") && !str_contains($telefone, ")") && !str_contains($telefone, '-') && strlen($telefone) > 15 || strlen($telefone) < 14) {
                $jsonCadastro = array(
                    "statusMsg" => false,
                    "msg" => "Insira um número válido"
                );
                echo json_encode($jsonCadastro);
            }else if($idade < 14){
                $jsonCadastro = array(
                    "statusMsg" => false,
                    "msg" => "A idade mínima para se integrar no curso é de 14 anos"
                );
                echo json_encode($jsonCadastro);
            }else{
                $conn = Conexao::conexaoBD();
                $sqlCheckCadastro = $conn->prepare("SELECT * FROM usuario WHERE emailUsuario = :EMAIL");
                $sqlCheckCadastro->bindParam(":EMAIL", $email);
                $sqlCheckCadastro->execute();
                $temCadastro = $sqlCheckCadastro->rowCount();
                if($temCadastro > 0){
                    $jsonCadastro = array(
                        "statusMsg" => false,
                        "msg" => "Conta já cadastrada"
                    );
                    echo json_encode($jsonCadastro);
                }else{
                    $senha = sha1($senha);
                    $dataAtual = date("Y-m-d");

                    $sqlInsertUsuario = $conn->prepare("INSERT INTO usuario(nomeUsuario, emailUsuario, telUsuario, senhaUsuario, dataNasc, imgUsuario, dataCad, statusUsuario, catUsuario) VALUES (:NOME, :EMAIL, :TEL, :SENHA, :DATANASC, 'default.svg', '$dataAtual', '1', '1')");
                    $sqlInsertUsuario->bindParam(":NOME", $nome);
                    $sqlInsertUsuario->bindParam(":EMAIL", $email);
                    $sqlInsertUsuario->bindParam(":TEL", $telefone);
                    $sqlInsertUsuario->bindParam(":SENHA", $senha);
                    $sqlInsertUsuario->bindParam(":DATANASC", $dataNasc);
                    if($sqlInsertUsuario->execute()){
                        $jsonCadastro = array(
                            "statusMsg" => true,
                            "msg" => "Sua conta foi cadastrada com sucesso"
                        );
                        echo json_encode($jsonCadastro);
                    }else{
                        $jsonCadastro = array(
                            "statusMsg" => false,
                            "msg" => "Não foi possível cadastrar sua conta"
                        );
                        echo json_encode($jsonCadastro);
                    }
                }
            }
        }
    }
?>