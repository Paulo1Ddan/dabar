<?php
require_once("../config.php");
use DB\ConexaoBanco;
$conexao = ConexaoBanco::conectarBD();
$conexao->exec("SET NAMES utf8");
$sqlSobre = $conexao->prepare("SELECT * FROM dabar");
$sqlSobre->execute();
$dadosSobre = $sqlSobre->fetch(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sobre</title>
    <script src="https://kit.fontawesome.com/a9f506c8dd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../global/css/reset.css">
    <link rel="stylesheet" href="../global/css/global.css">
    <link rel="stylesheet" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../lib/slick/slick.css">
    <link rel="stylesheet" href="../lib/slick/slick-theme.css">
    <link rel="stylesheet" href="../lib/aos-master/dist/aos.css">
    <link rel="stylesheet" href="../lib/lity/dist/lity.min.css">
    <link rel="stylesheet" href="css/sobre.css">
</head>

<body>

    <header bg-color="primary">
        <div class="logo">
            <img src="../assets/logo/logo-dabar-verde.svg" alt="">
        </div>
        <div class="menu">
            <ul>
                <li><a href="../">Início</a></li>
                <li><a href="#">Sobre</a></li>
                <li><a href="../cursos/cursos.php">Cursos</a></li>
                <li><a href="../blog/blog.php">Blog</a></li>
                <li><a href="../contato/contato.php">Contato</a></li>
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
            <button class="openMenu"><img src="../assets/icons/bars-solid.svg" alt=""></button>
        </div>
        <div class="menuMobile" bg-color="primary">
            <div class="iconCloseMobile">
                <button class="closeMenu"><img src="../assets/icons/xmark-solid.svg" alt=""></button>
            </div>
            <div class="navMobile">
                <ul>
                    <li><a href="../">Início</a></li>
                    <li><a href="#">Sobre</a></li>
                    <li><a href="../cursos/cursos.php">Cursos</a></li>
                    <li><a href="../blog/blog.php">Blog</a></li>
                    <li><a href="../contato/contato.php">Contato</a></li>
                </ul>
            </div>
        </div>
    </header>
    <section class="containerSobre">
        <div class="padraoSite">
            <div class="imgSobre">
                <img src="../assets/sobre/sobre.jpg" alt="">
            </div>
            <div class="txtSobre">
                <h3 class="tituloSobre">CETDABAR - Centro Educacional de Teologia DABAR</h3>
                <p><?php echo $dadosSobre['sobre'] ?></p>
            </div>
            <div class="txtIdentidade">
                <h3 class="tituloIdentidade">Identidade da Escola</h3>
                <p><?php echo $dadosSobre['identidade'] ?></p>
            </div>
            <div class="txtRequisitos">
                <h3 class="tituloRequisitos">Sistema de Funcionamento da Escola</h3>
                <p><?php echo $dadosSobre['requisitos'] ?></p>
            </div>
            <div class="sobreAutor">
                <h3 class="tituloSobreAutor">Sobre o Autor</h3>
                <div class="containerAutor">
                    <div class="imgAutor">
                        <img src="../assets/sobre/imgAutor.jpg" alt="">
                    </div>
                    <div class="txtAutor">
                        <p><?php echo $dadosSobre['sobreInstrutor'] ?></p>
                    </div>
                </div>
            </div>
            <h3 class="tituloGaleria">Galeria</h3>
            <div class="galeria">
                <div class="imgGaleria">
                    <a href="../assets/sobre/galeria/galeria1.jpg" data-lity><img src="../assets/sobre/galeria/galeria1.jpg" alt=""></a>
                    <a href="../assets/sobre/galeria/galeria2.jpg" data-lity><img src="../assets/sobre/galeria/galeria2.jpg" alt=""></a>
                    <a href="../assets/sobre/galeria/galeria3.jpg" data-lity><img src="../assets/sobre/galeria/galeria3.jpg" alt=""></a>
                    <a href="../assets/sobre/galeria/galeria4.jpg" data-lity><img src="../assets/sobre/galeria/galeria4.jpg" alt=""></a>
                    <a href="../assets/sobre/galeria/galeria5.jpg" data-lity><img src="../assets/sobre/galeria/galeria5.jpg" alt=""></a>
                    <a href="../assets/sobre/galeria/galeria6.jpg" data-lity><img src="../assets/sobre/galeria/galeria6.jpg" alt=""></a>
                    <a href="../assets/sobre/galeria/galeria7.jpg" data-lity><img src="../assets/sobre/galeria/galeria7.jpg" alt=""></a>
                    <a href="../assets/sobre/galeria/galeria8.jpg" data-lity><img src="../assets/sobre/galeria/galeria8.jpg" alt=""></a>
                    <a href="../assets/sobre/galeria/galeria9.jpg" data-lity><img src="../assets/sobre/galeria/galeria9.jpg" alt=""></a>
                </div>
            </div>
        </div>
    </section>
    <!-- Rodape -->
    <footer bg-color="medium">
        <div class="logoRodape">
            <img src="../assets/logo/logo-dabar-verde.svg" alt="">
        </div>
        <div class="padraoSite">
            <ul class="navRodape">
                <li><a href="../">Início</a></li>
                <li><a href="#">Sobre</a></li>
                <li><a href="../cursos/cursos.php">Cursos</a></li>
                <li><a href="../blog/blog.php">Blog</a></li>
                <li><a href="../contato/contato.php">Contato</a></li>
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
    <script src="../lib/lity/dist/lity.min.js"></script>
    <script src="../lib/slick/slick.js"></script>
    <script src="../lib/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="../lib/aos-master/dist/aos.js"></script>
    <script src="../global/js/global.js"></script>
    <script src="../global/js/navbar.js"></script>
    <script>
        AOS.init();
    </script>
</body>

</html>