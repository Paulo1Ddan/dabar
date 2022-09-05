<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contato</title>
    <script src="https://kit.fontawesome.com/a9f506c8dd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../global/css/reset.css">
    <link rel="stylesheet" href="../global/css/global.css">
    <link rel="stylesheet" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="../lib/slick/slick.css">
    <link rel="stylesheet" href="../lib/slick/slick-theme.css">
    <link rel="stylesheet" href="../lib/aos-master/dist/aos.css">
    <link rel="stylesheet" href="../lib/lity/dist/lity.min.css">
    <link rel="stylesheet" href="css/contato.css">
</head>

<body>
    <header bg-color="primary">
        <div class="logo">
            <img src="../assets/logo/logo-dabar-verde.svg" alt="">
        </div>
        <div class="menu">
            <ul>
                <li><a href="../">Início</a></li>
                <li><a href="../sobre/sobre.php">Sobre</a></li>
                <li><a href="../cursos/cursos.php">Cursos</a></li>
                <li><a href="../blog/blog.php">Blog</a></li>
                <li><a href="#">Contato</a></li>
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
                    <li><a href="../sobre/sobre.php">Sobre</a></li>
                    <li><a href="../cursos/cursos.php">Cursos</a></li>
                    <li><a href="../blog/blog.php">Blog</a></li>
                    <li><a href="../contato/contato.php">Contato</a></li>
                </ul>
            </div>
        </div>
    </header>

    <section class="contato">
        <div class="padraoSite">
            <h3 class="tituloContato">Contato</h3>
            <p class="txtForm">Entre em contato para dúvidas ou efetuar a matrícula</p>
            <form action="" method="POST" class="formContato">
                <div class="inputs">
                    <div class="formInput">
                        <input type="text" name="nome" value="Teste" required id="" placeholder="Nome">
                    </div>
                    <div class="formInput">
                        <input type="email" name="email" required id="" placeholder="Email">
                    </div>
                    <div class="formInput">
                        <input type="tel" name="telefone" id="" placeholder="Telefone">
                    </div>
                </div>
                <div class="boxMensagem">
                    <div class="formTextarea">
                        <textarea name="mensagem" id="" cols="30" rows="10" placeholder="Mensagem"></textarea>
                    </div>
                    <div class="formBtn">
                        <button class="btnEnviar" btn-bg-color="secondary" name="enviarContato" type="submit">Enviar</button>
                    </div>
                </div>
            </form>
            <p class="txtForm">
                Ou
            </p>
            <div class="socialContato">
                <div class="socialContato">
                    <a href="https://www.facebook.com/CETDABAR" target="_blank" class="contatoFacebook">
                        <i class="fa-brands fa-facebook-f"></i> Facebook
                    </a>
                    <a href="https://api.whatsapp.com/send?phone=5511930546947&text=Olá, gostaria de saber mais sobre a Dabar" target="_blank" class="contatoWhatsapp">
                        <i class="fa-brands fa-whatsapp"></i> Whatsapp
                    </a>
                    <a href="https://www.instagram.com/fabio.dabar/" target="_blank" class="contatoInstagram">
                        <i class="fa-brands fa-instagram"></i> Instagram
                    </a>
                </div>
            </div>
        </div>
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
            <img src="../assets/logo/logo-dabar-verde.svg" alt="">
        </div>
        <div class="padraoSite">
            <ul class="navRodape">
                <li><a href="../">Início</a></li>
                <li><a href="../sobre/sobre.php">Sobre</a></li>
                <li><a href="#">Cursos</a></li>
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
    <script src="../lib/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="../global/js/global.js"></script>
    <script src="../global/js/navbar.js"></script>
</body>

</html>
<?php
    if (isset($_POST['enviarContato'])) {
        $nome = $_POST['nome'];
        $email = $_POST['email'];
        $mensagem = $_POST['mensagem'];
        $telefone = " ";
        if(isset($_POST['telefone'])) $telefone = $_POST['telefone'];
        spl_autoload_register(function ($class) {
            require_once "../global/php/$class.php";
        });
        require_once("../lib/php-mailer/src/PHPMailer.php");
        require_once("../lib/php-mailer/src/SMTP.php");
        require_once("../lib/php-mailer/src/Exception.php");
        require_once("../global/php/conexao-pdo.php");

        $enviarEmail = new EnviarEmail();
        $enviarEmail->setNome("$nome");
        $enviarEmail->setEmail("$email");
        $enviarEmail->setMensagem("$mensagem");
        $enviarEmail->retornoDados();
        echo "
            <script>
                alert('Email Enviado');
            </script>
        ";
        
        $conexao = ConexaoBanco::conectarBD();
        $conexao->exec("SET NAMES utf8");

        $sqlInserirContato = $conexao->prepare("INSERT INTO contato (nomeContato, emailContato, telefoneContato, mensagemContato) VALUES(:nome, :email, :telefone, :mensagem)");
        $sqlInserirContato->bindParam(":nome", $nome);
        $sqlInserirContato->bindParam(":email", $email);
        $sqlInserirContato->bindParam(":telefone", $telefone);
        $sqlInserirContato->bindParam(":mensagem", $mensagem);

        $sqlInserirContato->execute();
        echo"
            <script>    
                location.href()='contato.php'
            </script>
        ";
    }
?>