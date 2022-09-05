<?php
require_once("../../config.php");
use DB\ConexaoBanco;
$conexao = ConexaoBanco::conectarBD();
$conexao->exec("SET NAMES utf8");

$sqlArtigo = $conexao->prepare("SELECT * FROM artigo WHERE idArtigo = $_GET[idArtigo]");
$sqlArtigo->execute();
$dadosArtigo = $sqlArtigo->fetch(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Artigo</title>
    <script src="https://kit.fontawesome.com/a9f506c8dd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../global/css/reset.css">
    <link rel="stylesheet" href="../../global/css/global.css">
    <link rel="stylesheet" href="../../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="css/artigo.css">
</head>

<body>
    <header bg-color="primary">
        <div class="logo">
            <img src="../../assets/logo/logo-dabar-verde.svg" alt="">
        </div>
        <div class="menu">
            <ul>
                <li><a href="../../">Início</a></li>
                <li><a href="../../sobre/sobre.php">Sobre</a></li>
                <li><a href="../../cursos/cursos.php">Cursos</a></li>
                <li><a href="../blog.php">Blog</a></li>
                <li><a href="../../contato/contato.php">Contato</a></li>
            </ul>
        </div>
        <div class="socialHeader">
            <a href="https://www.facebook.com/CETDABAR" target="_blank">
                <div><i class="fa-brands fa-facebook-f"></i></div>
            </a>
            <a href="https://api.whatsapp.com/send?phone=5511930546947&text=Olá, gostaria de saber mais sobre a Dabar" target="_blank">
                <div><i class="fa-brands fa-whatsapp"></i></div>
            </a>
            <a href="https://www.youtube.com/channel/UCXieQGFmE_MwiaA6T9qlyEQ" target="_blank">
                <div><i class="fa-brands fa-youtube"></i></div>
            </a>
            <a href="https://www.instagram.com/fabio.dabar/" target="_blank">
                <div><i class="fa-brands fa-instagram"></i></div>
            </a>
        </div>
        <div class="iconMobile">
            <button class="openMenu"><img src="../../assets/icons/bars-solid.svg" alt=""></button>
        </div>
        <div class="menuMobile" bg-color="primary">
            <div class="iconCloseMobile">
                <button class="closeMenu"><img src="../../assets/icons/xmark-solid.svg" alt=""></button>
            </div>
            <div class="navMobile">
                <ul>
                    <li><a href="../../">Início</a></li>
                    <li><a href="../../sobre/sobre.php">Sobre</a></li>
                    <li><a href="../../cursos/cursos.php">Cursos</a></li>
                    <li><a href="../blog.php">Blog</a></li>
                    <li><a href="../../contato/contato.php">Contato</a></li>
                </ul>
            </div>
        </div>
    </header>

    <section class="containerArtigo padraoSite">
        <div class="imgBanner">
            <img src="../../admin/<?php echo $dadosArtigo['imgBanner'] ?>" alt="">
        </div>
        <article class="artigo">
            <h3><?php echo $dadosArtigo['tituloArtigo'] ?></h3>
            <?php
            $txtArtigo = explode("\r\n\r\n", $dadosArtigo['artigo']);
            $qtdParagrafos = count($txtArtigo);
            for ($i = 0; $i < $qtdParagrafos; $i++) {
                echo $txtArtigo[$i] . "<br><br>";
            }
            ?>
        </article>
    </section>

    <div class="socialFooter">
        <a href="https://www.facebook.com/CETDABAR" target="_blank">
            <div class="socialFacebook">
                <i class="fa-brands fa-facebook-f"></i> <span>Facebook</span>
            </div>
        </a>
        <a href="https://api.whatsapp.com/send?phone=5511930546947&text=Olá, gostaria de saber mais sobre a Dabar" target="_blank">
            <div class="socialWhatsapp">
                <i class="fa-brands fa-whatsapp"></i><span>Whatsapp</span>
            </div>
        </a>
        <a href="https://www.youtube.com/channel/UCXieQGFmE_MwiaA6T9qlyEQ" target="_blank">
            <div class="socialYoutube">
                <i class="fa-brands fa-youtube"></i><span>Youtube</span>
            </div>
        </a>
    </div>
    <footer bg-color="medium">
        <div class="logoRodape">
            <img src="../../assets/logo/logo-dabar-verde.svg" alt="">
        </div>
        <div class="padraoSite">
            <ul class="navRodape">
                <li><a href="../../">Início</a></li>
                <li><a href="../../sobre/sobre.php">Sobre</a></li>
                <li><a href="../../cursos/cursos.php">Cursos</a></li>
                <li><a href="../blog.php">Blog</a></li>
                <li><a href="../../contato/contato.php">Contato</a></li>
            </ul>
        </div>
        <div class="contatoRodape">
            <div class="email">
                <div class="icon">
                    <i class="fa-solid fa-envelope"></i>
                </div>
                <p>cetdabar@gmail.com</p>
            </div>
            <div class="telefone">
                <div class="icon">
                    <i class="fa-solid fa-phone"></i>
                </div>
                <p>11 2891-8736/99318-2269</p>
            </div>
            <div class="local">
                <div class="icon">
                    <i class="fa-solid fa-location-dot"></i>
                </div>
                <p>Av. Deputado Castro de Carvalho, 1695, Vila Áurea, Poá, SP</p>
            </div>
        </div>
        <div class="socialBase">
            <a href="https://www.facebook.com/CETDABAR" target="_blank">
                <div btn-bg-color="secondary"><i class="fa-brands fa-facebook-f"></i></div>
            </a>
            <a href="https://api.whatsapp.com/send?phone=5511930546947&text=Olá, gostaria de saber mais sobre a Dabar" target="_blank">
                <div btn-bg-color="secondary"><i class="fa-brands fa-whatsapp"></i></div>
            </a>
            <a href="https://www.youtube.com/channel/UCXieQGFmE_MwiaA6T9qlyEQ" target="_blank">
                <div btn-bg-color="secondary"><i class="fa-brands fa-youtube"></i></div>
            </a>
            <a href="https://www.instagram.com/fabio.dabar/" target="_blank">
                <div btn-bg-color="secondary"><i class="fa-brands fa-instagram"></i></i></div>
            </a>
        </div>
    </footer>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../../lib/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="../../global/js/global.js"></script>
    <script src="../../global/js/navbar.js"></script>
</body>

</html>