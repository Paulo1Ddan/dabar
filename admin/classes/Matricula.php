<?php

class Matricula
{
    private $iduser;
    private $idcurso;
    private $status;
    private $idmatricua;

    public function getIdCurso()
    {
        return $this->idcurso;
    }
    public function getIdUser()
    {
        return $this->iduser;
    }
    public function getIdTruma()
    {
        return $this->idturma;
    }
    public function getStatus()
    {
        return $this->status;
    }
    public function getIdMatricula()
    {
        return $this->idmatricua;
    }

    public function setIdCurso(int $idcurso)
    {
        $this->idcurso = $idcurso;
    }
    public function setIdUser(int $iduser)
    {
        $this->iduser = $iduser;
    }
    public function setIdTurma($idturma = null)
    {
        $this->idturma = $idturma;
    }
    public function setStatus(int $status)
    {
        $this->status = $status;
    }
    public function setIdMatricula($idmatricula)
    {
        $this->idmatricua = $idmatricula;
    }

    public function insertMatricula($idcurso, $iduser,  $status, $conn)
    {

        $sqlChkMatricula = $conn->prepare("SELECT * FROM matricula WHERE (idUsuario = :iduser and idCurso = :idcurso AND statusMatricula = :status1)");
        $sqlChkMatricula->bindParam(":idcurso", $idcurso);
        $sqlChkMatricula->bindParam(":iduser", $iduser);
        $sqlChkMatricula->bindParam(":status1", $status);
        $sqlChkMatricula->execute();
        $rowsMatricula = $sqlChkMatricula->rowCount();
        if ($rowsMatricula > 0) {
            $json = array(
                "statusMsg" => false,
                "msg" => "Matricula já registrada"
            );
            echo json_encode($json);
        } else {

            $insert = $conn->prepare("INSERT INTO matricula(idCurso, idUsuario, statusMatricula) VALUES (:idcurso, :iduser, :status)");
            $insert->bindParam(":idcurso", $idcurso);
            $insert->bindParam(":iduser", $iduser);
            $insert->bindParam(":status", $status);
            if ($insert->execute()) {
                $json = array(
                    "statusMsg" => true,
                    "msg" => "Matricula realizada com sucesso. Aguarde aprovação"
                );
                echo json_encode($json);
            } else {
                $json = array(
                    "statusMsg" => false,
                    "msg" => "Erro ao realizar matricula. Entre em contato com o suporte"
                );
                echo json_encode($json);
            }
        }
    }

    public function selectMatriculaCompleta($idMatricula, $conn)
    {

        $sqlSelectMatricula = $conn->prepare("SELECT
            idCurso,
            idTurma,
            idUsuario,
            DATE_FORMAT(dataMatriculado, '%d/%m/%Y %H:%i') AS dataMatricula,
            CASE WHEN statusMatriculado = 1 THEN 'Em andamento' ELSE 'Pendente'
            END AS statusMatriculado,
            nomeUsuario,
            emailUsuario,
            curso,
            duracaoCurso,
            instrutorCurso,
            nomeTurma,
            CASE WHEN statusTurma = 1 THEN 'Ativa' ELSE 'Inativa'
            END AS statusTurma,
            CASE WHEN andamentoTurma = 1 THEN 'Completa' WHEN andamentoTurma = 2 THEN 'Finalizada' ELSE 'Incompleta'
            END AS andamentoTurma
        FROM
            matriculado
        INNER JOIN usuario USING(idUsuario)
        INNER JOIN curso USING(idCurso)
        INNER JOIN turma USING(idTurma)
        WHERE
            idMatriculado = :id");
        $sqlSelectMatricula->bindParam(":id", $idMatricula);
        $sqlSelectMatricula->execute();
        $dadosMatricula = $sqlSelectMatricula->fetch(PDO::FETCH_ASSOC);

        $json = array();
        array_push($json, $dadosMatricula);
        echo json_encode($json);
    }
}
