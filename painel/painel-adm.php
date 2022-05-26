<?php
session_start();
if (isset($_SESSION['logado'])) {
    $idUsuario = $_GET['usuario'];
    if ($idUsuario != $_SESSION['idUsuario']) {
        echo "
            <script>
                location.href='../';
            </script>
        ";
    } else {
        require_once "../global/php/conexao.php";
        $sqlUsuario = "SELECT * FROM usuario WHERE idUsuario = $idUsuario";
        $execUsuario = mysqli_query($conexao, $sqlUsuario);
        if ($execUsuario) {
            $dadosUsuario = mysqli_fetch_assoc($execUsuario);
            $nomeUsuario = explode(" ", $dadosUsuario["nomeUsuario"]);
            $dataNasc = explode("-", $dadosUsuario['dataNasc']);
            $dia = $dataNasc[2];
            $mes = $dataNasc[1];
            $ano = $dataNasc[0];
            $categoriaUsuario = $dadosUsuario['catUsuario'];
            if ($categoriaUsuario == 1) {
                $categoriaUsuario = "Aluno";
            } else if ($categoriaUsuario == 2) {
                $categoriaUsuario = "Instrutor";
            }
        }
    }
} else {
    echo "
        <script>
            location.href='../';
        </script>
    ";
}

?>
<!DOCTYPE html>

<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Area do aluno</title>
    <script src="https://kit.fontawesome.com/a9f506c8dd.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../global/css/reset.css">
    <link rel="stylesheet" href="../global/css/global.css">
    <link rel="stylesheet" href="../lib/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="css/area.css">
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
                <li><a href="#">Cursos</a></li>
                <li><a href="#">Matrícula</a></li>
                <li><a href="#">Contato</a></li>
            </ul>
        </div>
        <div class="login">
            <?php
            if (isset($_SESSION['logado'])) { ?>
                <div class="logado">
                    <img src="../assets/img-usuarios/<?php echo $dadosUsuario['imgUsuario'] ?>" alt="">
                    <div class="dropdown">
                        <p class="dropdown-toggle" data-bs-toggle="dropdown" id="dropdownMenu"><?php echo isset($nomeUsuario[1]) ? "$nomeUsuario[0] $nomeUsuario[1]" : "$nomeUsuario[0]" ?></p>
                        <?php
                        if ($dadosUsuario['catUsuario'] == 1) { ?>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenu">
                                <li class="dropdown-item"><a href="#"><i class="fa-solid fa-user"></i>Área do aluno</a></li>
                                <li class="dropdown-item"><a href="#"><i class="fa-solid fa-clipboard"></i>Provas</a></li>
                                <li class="dropdown-item"><a href="../global/php/sair.php"><i class="fa-solid fa-power-off"></i> Sair</a></li>
                            </ul>
                        <?php } ?>
                    </div>
                </div>
            <?php } else { ?>
                <button onclick="getLink(this, 'login/login.php')" class="btnLogin">Login</button>
            <?php } ?>
        </div>
        <div class="iconMobile">
            <button class="openMenu"><img src="../assets/icons/bars-solid.svg" alt=""></button>
        </div>
        <div class="menuMobile" bg-color="primary">
            <div class="iconCloseMobile">
                <button class="closeMenu"><img src="../assets/icons/xmark-solid.svg" alt=""></button>
            </div>
            <div class="loginMobile">
                <div class="conteudoLoginMobile">
                    <?php
                    if (isset($_SESSION['logado'])) { ?>
                        <div class="logadoMobile">
                            <img src="../assets/img-usuarios/<?php echo $dadosUsuario['imgUsuario'] ?>" alt="">
                            <p id="dropdownMobile"><?php echo isset($nomeUsuario[1]) ? "$nomeUsuario[0] $nomeUsuario[1]" : "$nomeUsuario[0]" ?><i class='fa-solid fa-caret-right' id='iconDropMobile'></i></p>
                        </div>
                        <div class="menuDropdownMobile">
                            <?php
                            if ($dadosUsuario['catUsuario'] == 1) { ?>
                                <ul>
                                    <li class="dropdownMobileItem"><a href="#"><i class="fa-solid fa-user"></i> Área do aluno</a></li>
                                    <li class="dropdownMobileItem"><a href="#"><i class="fa-solid fa-clipboard"></i> Provas</a></li>
                                    <li class="dropdownMobileItem"><a href="../global/php/sair.php"><i class="fa-solid fa-power-off"></i> Sair</a></li>
                                </ul>
                            <?php } ?>
                        </div>
                    <?php } else { ?>
                        <p onclick="getLink(this, 'login/login.php')" class="naoLogado"><a href="#">Fazer Login</a></p>
                    <?php } ?>
                </div>
            </div>
            <div class="navMobile">
                <ul>
                    <li><a href="#">Início</a></li>
                    <li><a href="#">Sobre</a></li>
                    <li><a href="#">Cursos</a></li>
                    <li><a href="#">Matrícula</a></li>
                    <li><a href="#">Contato</a></li>
                </ul>
            </div>
        </div>
    </header>

    <section class="usuario">
        <div class="padraoSite">
            <section class="containerUsuario">
                <div class="imgUsuario">
                    <img src="../assets/img-usuarios/<?php echo $dadosUsuario['imgUsuario'] ?>" id="imgResult" alt="">
                    <form class="alterarImg" method="POST" enctype="multipart/form-data">
                        <div class="imgInput">
                            <label btn-bg-color='primary' for="imgUsuario">Selecionar imagem</label>
                            <input type="file" name="img" id="imgUsuario">
                        </div>
                        <div class="btnSubmit">
                            <button type="submit" name="atualizarImg" btn-bg-color='secondary'>Enviar</button>
                        </div>
                    </form>
                </div>
                <div class="infoUsuario">
                    <div class="info">
                        <p><span>Nome:</span> <?php echo $dadosUsuario['nomeUsuario'] ?></p>
                        <p><span>Email:</span> <?php echo $dadosUsuario['emailUsuario'] ?></p>
                        <p><span>Data Nasc.:</span> <?php echo "$dia/$mes/$ano" ?></p>
                        <p><span>Categoria:</span> <?php echo $categoriaUsuario ?></p>
                    </div>
                    <div class="atalhos">
                        <button class="btnAtalho" btn-bg-color='secondary'><i class="fa-solid fa-book"></i>Cadastrar Curso</button>
                        <button class="btnAtalho" btn-bg-color='secondary'><i class="fa-solid fa-clipboard-list"></i>Cadastrar artigo</button>
                    </div>
                </div>
            </section>
        </div>
    </section>

    <footer bg-color="medium">
        <div class="logoRodape">
            <img src="../assets/logo/logo-dabar-verde.svg" alt="">
        </div>
        <div class="padraoSite">
            <ul class="navRodape">
                <li><a href="#">Inicio</a></li>
                <li><a href="#">Sobre</a></li>
                <li><a href="#">Cursos</a></li>
                <li><a href="#">Matrícula</a></li>
                <li><a href="#">Contato</a></li>
            </ul>
        </div>
        <div class="contatoRodape">
            <div class="email">
                <div class="icon">
                    <i class="fa-solid fa-envelope"></i>
                </div>
                <p>email@email.com</p>
            </div>
            <div class="telefone">
                <div>
                    <i class="fa-solid fa-phone"></i>
                </div>
                <p>(11) 99999-9999</p>
            </div>
            <div class="local">
                <div class="icon">
                    <i class="fa-solid fa-location-dot"></i>
                </div>
                <p>Av. Deputado Castro de Carvalho, 1695, Vila Áurea, Poá, SP</p>
            </div>
        </div>
        <div class="socialBase">
            <div btn-bg-color="secondary"><i class="fa-brands fa-facebook-f"></i></div>
            <div btn-bg-color="secondary"><i class="fa-brands fa-whatsapp"></i></div>
            <div btn-bg-color="secondary"><i class="fa-brands fa-youtube"></i></div>
        </div>
    </footer>
    <script src="../lib/bootstrap/js/bootstrap.bundle.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../global/js/navbar.js"></script>
    <script src="js/area.js"></script>
</body>

</html>

<?php
if (isset($_POST['atualizarImg'])) {
    $img = $_FILES['img'];
    require_once "../global/php/functions.php";
    $imgAntiga =  $dadosUsuario['imgUsuario'];
    if (atualizarImg($img, $idUsuario, $imgAntiga)) {
        echo "
            <script>
                location.href='area-aluno.php?usuario=$idUsuario';
            </script>
        ";
    } else {
        if (isset($_SESSION['erro'])) {
            unset($img);
            echo "
                <script>
                    alert('$_SESSION[erro]')
                </script>
            ";
            unset($_SESSION['erro']);
        }
    }
}
?>