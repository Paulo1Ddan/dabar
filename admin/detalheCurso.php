<?php 
    require_once ("config.php");

    if(isset($_GET['idCurso'])){
        try {
            $detalheCurso = new DetalheCurso();
            $detalheCurso->setIdCurso($_GET['idCurso']);
            $detalheCurso->detalheCurso($detalheCurso->getIdCurso());
        } catch (\Throwable $th) {
            echo "Erro ao comunicar-se com a classe DetalheCurso".$th->getMessage();
        }
    }
?>