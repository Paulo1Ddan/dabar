<?php
class AlterarDados
{
    private $nome;
    private $email;
    private $telefone;
    private $dataNasc;
    private $idUsuario;
    private $oldPass;
    private $newPass;
    private $img;

    public function getIdUsuario(){
        return $this->idUsuario;
    }

    public function setIdUsuario($idUsuario){
        $this->idUsuario = $idUsuario;
    }
    public function getNome()
    {
        return $this->nome;
    }
    public function getEmail()
    {
        return $this->email;
    }
    public function getTelefone()
    {
        return $this->telefone;
    }
    public function getDataNasc()
    {
        return $this->dataNasc;
    }

    public function setNome($nome)
    {
        $this->nome = $nome;
    }
    public function setEmail($email)
    {
        $this->email = $email;
    }
    public function setTelefone($telefone)
    {
        $this->telefone = $telefone;
    }
    public function setDataNasc($dataNasc)
    {
        $this->dataNasc = $dataNasc;
    }
    public function setOldPass($oldPass){
        $this->oldPass = $oldPass;
    }
    public function getOldPass(){
        return $this->oldPass;
    }
    public function setNewPass($newPass){
        $this->newPass = $newPass;
    }
    public function getNewPass(){
        return $this->newPass;
    }

    public function alterarDados($nome, $email, $telefone, $dataNasc, $idUsuario)
    {
        list($anoNasc, $mesNasc, $diaNasc) = explode("-", $dataNasc);
        $idade = 0;
        $idade = date('Y') - $anoNasc;
        if (date('m') < $mesNasc) {
            $idade -= 1;
        } else if (date('m') == $mesNasc && date('d') < $diaNasc) {
            $idade -= 1;
        }
        if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
            $jsonCadastro = array(
                "statusMsg" => false,
                "msg" => "Insira um email válido"
            );
            echo json_encode($jsonCadastro);
        } else if (!str_contains($telefone, "(") && !str_contains($telefone, ")") && !str_contains($telefone, '-') && strlen($telefone) > 15 || strlen($telefone) < 14) {
            $jsonCadastro = array(
                "statusMsg" => false,
                "msg" => "Insira um número válido"
            );
            echo json_encode($jsonCadastro);
        } else if ($idade < 14) {
            $jsonCadastro = array(
                "statusMsg" => false,
                "msg" => "A idade mínima para se integrar no curso é de 14 anos"
            );
            echo json_encode($jsonCadastro);
        } else {
            $conn = Conexao::conexaoBD();

            $sqlUpdate = $conn->prepare("UPDATE usuario SET nomeUsuario = :NOME, emailUsuario = :EMAIL, telUsuario = :TEL, dataNasc = :DATANASC WHERE idUsuario = :ID");
            $sqlUpdate->bindParam(":NOME", $nome);
            $sqlUpdate->bindParam(":EMAIL", $email);
            $sqlUpdate->bindParam(":TEL", $telefone);
            $sqlUpdate->bindParam(":DATANASC", $dataNasc);
            $sqlUpdate->bindParam(":ID", $idUsuario);
            if ($sqlUpdate->execute()) {
                $jsonCadastro = array(
                    "statusMsg" => true,
                    "msg" => "Dados atualizados com sucesso"
                );
                echo json_encode($jsonCadastro);
            } else {
                $jsonCadastro = array(
                    "statusMsg" => false,
                    "msg" => "Não foi possível atualizar seus dados"
                );
                echo json_encode($jsonCadastro);
            }
        }
    }

    public function alterarSenha($idUser, $oldPass, $newPass){
        $conn = Conexao::conexaoBD();
        $oldPass = sha1($oldPass);
        $samePass = $conn->prepare("SELECT senhaUsuario FROM usuario WHERE idUsuario = :ID AND senhaUsuario = :PASS");
        $samePass->bindParam(":ID", $idUser);
        $samePass->bindParam(":PASS", $oldPass);
        $samePass->execute();

        $rowPass = $samePass->rowCount();
        if($rowPass == 1){
            if(!preg_match('/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z\d].\S{8,36}$/', $newPass)){
                $jsonCadastro = array(
                    "statusMsg" => false,
                    "msg" => "Insira uma nova senha válida"
                );
                echo json_encode($jsonCadastro);
            }else{
                $newPass = sha1($newPass);
                $updateNewPass = $conn->prepare("UPDATE usuario SET senhaUsuario = :NEWPASS WHERE idUsuario = :ID");
                $updateNewPass->bindParam(":ID", $idUser);
                $updateNewPass->bindParam(":NEWPASS", $newPass);
                
                if($updateNewPass->execute()){
                    $jsonCadastro = array(
                        "statusMsg" => true,
                        "msg" => "Senha atualizada com sucesso"
                    );
                    echo json_encode($jsonCadastro);
                }else{
                    $jsonCadastro = array(
                        "statusMsg" => false,
                        "msg" => "Não foi possivel atualizar sua senha"
                    );
                    echo json_encode($jsonCadastro);
                }


            }
        }else{
            $jsonCadastro = array(
                "statusMsg" => false,
                "msg" => "Senha atual incorreta"
            );
            echo json_encode($jsonCadastro);
        }
        
    }

    public function alterarImg(){

    }
}
