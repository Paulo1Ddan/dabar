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
            }else if(!is_numeric($telefone)||strlen($telefone) > 12 || strlen($telefone) <11 ){
                $jsonCadastro = array(
                    "statusMsg" => false,
                    "msg" => "Insira um número válido"
                );
                echo json_encode($jsonCadastro);
            }
        }
    }
?>