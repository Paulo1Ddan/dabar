-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Set-2022 às 06:45
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE dabar;
USE dabar;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dabar`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `arquivos`
--

CREATE TABLE `arquivos` (
  `idArquivo` int(11) NOT NULL,
  `arquivo` varchar(70) NOT NULL,
  `senhaArquivo` char(40) NOT NULL,
  `idTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigo`
--

CREATE TABLE `artigo` (
  `idArtigo` int(11) NOT NULL,
  `tituloArtigo` varchar(150) NOT NULL,
  `imgCapa` varchar(100) NOT NULL,
  `imgBanner` varchar(100) NOT NULL,
  `artigo` text NOT NULL,
  `dataArtigo` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `artigo`
--

INSERT INTO `artigo` (`idArtigo`, `tituloArtigo`, `imgCapa`, `imgBanner`, `artigo`, `dataArtigo`) VALUES
(1, 'Artigo 1', 'assets/blog/capa/c4ca4238a0b923820dcc509a6f75849b.jpg', 'assets/blog/banner/c81e728d9d4c2f636f067f89cc14862c.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida turpis eget finibus tristique. Aliquam et urna eget lectus dignissim efficitur ut eu mi. Proin rhoncus dictum tellus in placerat. In non nibh in libero faucibus pellentesque. Proin ultrices erat sed volutpat porttitor. Donec et metus vel tellus volutpat pretium. Pellentesque eu quam id lorem faucibus porttitor. Pellentesque iaculis velit non quam semper pretium. In laoreet imperdiet luctus. Mauris orci tortor, rutrum id aliquam in, ullamcorper aliquam erat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas efficitur enim sem. Pellentesque tellus tellus, feugiat non elementum vel, semper quis ante. In quis vehicula orci, eu tincidunt sapien.\r\n\r\n\r\nPellentesque condimentum erat ac velit hendrerit, non dapibus augue viverra. Donec ut pulvinar est. In hac habitasse platea dictumst. Donec varius, mauris eget egestas luctus, libero enim volutpat enim, sed finibus lorem erat eget arcu. Nunc porttitor id diam in porttitor. In tempor imperdiet sapien sed dignissim. Curabitur odio purus, pellentesque nec tellus nec, porttitor consequat nibh. Sed laoreet egestas ornare. Etiam pretium dui elit, nec mollis nibh lacinia at. Aenean varius leo at ornare porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu pharetra risus. Vestibulum velit augue, pharetra id laoreet ut, cursus sed tortor. Duis nec enim ex.\r\n\r\n\r\nDuis vitae mauris fermentum, egestas dolor id, porta nibh. Nullam tellus diam, dictum et tellus vel, semper facilisis eros. Duis ut augue mauris. Sed augue nisl, egestas eu maximus a, tempor a erat. Ut id tincidunt eros. Proin tempor augue eget diam hendrerit viverra. Aliquam vel sem vel urna finibus bibendum id nec eros. Etiam in mattis turpis, a facilisis dui. Sed dapibus augue vitae scelerisque fringilla. Quisque fermentum leo et ipsum tempor facilisis. Maecenas at viverra eros. Praesent dapibus velit vel ultricies efficitur. Ut eget tellus nulla.\r\n\r\n\r\nIn porttitor a eros sed tristique. Aenean id quam scelerisque, aliquam sapien vel, interdum mi. Vivamus turpis dui, aliquet eu quam sit amet, lobortis finibus risus. Pellentesque ultricies auctor purus in dignissim. Phasellus non efficitur eros, ac tincidunt purus. Donec laoreet dolor a ante fermentum finibus. Nulla lacus dui, porta a nibh ac, ultrices blandit magna. Maecenas hendrerit quam et felis euismod, sed mollis nisl commodo. Nunc eu gravida tellus. Sed euismod justo at fringilla ornare. Suspendisse bibendum nec ante ac egestas. Aenean tristique efficitur orci nec iaculis. Phasellus tincidunt, lorem ut elementum ultricies, est risus rhoncus leo, et mattis nunc neque dignissim metus. Etiam tincidunt, est sit amet imperdiet sagittis, leo velit pellentesque turpis, non pellentesque odio arcu sed tellus. Phasellus luctus, tortor vitae accumsan imperdiet, arcu tortor dictum leo, vitae sagittis sapien magna quis diam. Pellentesque lobortis eleifend diam.\r\n\r\n\r\nSed interdum nisl vitae ultricies fringilla. Etiam tincidunt sem est, sed gravida massa hendrerit nec. Praesent egestas nisi euismod, tempor sem sed, scelerisque tortor. In sit amet nunc lacinia, ultrices libero tristique, tincidunt leo. Nam volutpat, urna ut malesuada dapibus, sapien urna bibendum risus, in congue arcu odio quis nulla. Morbi nec finibus orci. Nulla erat orci, porta nec congue vel, egestas in lorem.', '2022-03-08 12:31:16'),
(2, 'Artigo 2', 'assets/blog/capa/c4ca4238a0b923820dcc509a6f75849b.jpg', 'assets/blog/banner/c81e728d9d4c2f636f067f89cc14862c.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla gravida turpis eget finibus tristique. Aliquam et urna eget lectus dignissim efficitur ut eu mi. Proin rhoncus dictum tellus in placerat. In non nibh in libero faucibus pellentesque. Proin ultrices erat sed volutpat porttitor. Donec et metus vel tellus volutpat pretium. Pellentesque eu quam id lorem faucibus porttitor. Pellentesque iaculis velit non quam semper pretium. In laoreet imperdiet luctus. Mauris orci tortor, rutrum id aliquam in, ullamcorper aliquam erat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas efficitur enim sem. Pellentesque tellus tellus, feugiat non elementum vel, semper quis ante. In quis vehicula orci, eu tincidunt sapien.\n\n\nPellentesque condimentum erat ac velit hendrerit, non dapibus augue viverra. Donec ut pulvinar est. In hac habitasse platea dictumst. Donec varius, mauris eget egestas luctus, libero enim volutpat enim, sed finibus lorem erat eget arcu. Nunc porttitor id diam in porttitor. In tempor imperdiet sapien sed dignissim. Curabitur odio purus, pellentesque nec tellus nec, porttitor consequat nibh. Sed laoreet egestas ornare. Etiam pretium dui elit, nec mollis nibh lacinia at. Aenean varius leo at ornare porta. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu pharetra risus. Vestibulum velit augue, pharetra id laoreet ut, cursus sed tortor. Duis nec enim ex.\n\n\nDuis vitae mauris fermentum, egestas dolor id, porta nibh. Nullam tellus diam, dictum et tellus vel, semper facilisis eros. Duis ut augue mauris. Sed augue nisl, egestas eu maximus a, tempor a erat. Ut id tincidunt eros. Proin tempor augue eget diam hendrerit viverra. Aliquam vel sem vel urna finibus bibendum id nec eros. Etiam in mattis turpis, a facilisis dui. Sed dapibus augue vitae scelerisque fringilla. Quisque fermentum leo et ipsum tempor facilisis. Maecenas at viverra eros. Praesent dapibus velit vel ultricies efficitur. Ut eget tellus nulla.\n\n\nIn porttitor a eros sed tristique. Aenean id quam scelerisque, aliquam sapien vel, interdum mi. Vivamus turpis dui, aliquet eu quam sit amet, lobortis finibus risus. Pellentesque ultricies auctor purus in dignissim. Phasellus non efficitur eros, ac tincidunt purus. Donec laoreet dolor a ante fermentum finibus. Nulla lacus dui, porta a nibh ac, ultrices blandit magna. Maecenas hendrerit quam et felis euismod, sed mollis nisl commodo. Nunc eu gravida tellus. Sed euismod justo at fringilla ornare. Suspendisse bibendum nec ante ac egestas. Aenean tristique efficitur orci nec iaculis. Phasellus tincidunt, lorem ut elementum ultricies, est risus rhoncus leo, et mattis nunc neque dignissim metus. Etiam tincidunt, est sit amet imperdiet sagittis, leo velit pellentesque turpis, non pellentesque odio arcu sed tellus. Phasellus luctus, tortor vitae accumsan imperdiet, arcu tortor dictum leo, vitae sagittis sapien magna quis diam. Pellentesque lobortis eleifend diam.\n\n\nSed interdum nisl vitae ultricies fringilla. Etiam tincidunt sem est, sed gravida massa hendrerit nec. Praesent egestas nisi euismod, tempor sem sed, scelerisque tortor. In sit amet nunc lacinia, ultrices libero tristique, tincidunt leo. Nam volutpat, urna ut malesuada dapibus, sapien urna bibendum risus, in congue arcu odio quis nulla. Morbi nec finibus orci. Nulla erat orci, porta nec congue vel, egestas in lorem.', '2022-04-13 12:31:16'),
(3, 'Artigo 3', 'assets/blog/capa/c4ca4238a0b923820dcc509a6f75849b.jpg', 'assets/blog/banner/c81e728d9d4c2f636f067f89cc14862c.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec aliquet maximus suscipit. Quisque id tortor fermentum, rhoncus odio sed, consequat arcu. Ut et fringilla enim. Vivamus volutpat dolor mi, quis volutpat nisi vulputate ac. Vestibulum porta porta nisl ac sodales. Pellentesque posuere a lacus quis ullamcorper. Donec tincidunt tortor ut tortor euismod, et ultrices nulla egestas. Aenean ac elit ligula. Praesent at odio ut metus lacinia maximus et eu ipsum. In ac ante et nisl vestibulum porttitor tempus ut lectus. Praesent libero metus, finibus id eros quis, posuere auctor neque. Suspendisse vel sem congue, gravida massa eu, sollicitudin risus. Curabitur molestie nibh ac mi finibus viverra. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Duis id lorem nec eros hendrerit tempor. Praesent lectus magna, blandit sit amet iaculis quis, vehicula a orci.\r\n\r\n\r\nPellentesque facilisis tortor eget cursus tincidunt. Vivamus nisi eros, consequat a viverra at, sollicitudin sit amet lacus. Aliquam faucibus quam quis est mollis varius. Etiam luctus, lectus sed euismod volutpat, odio felis iaculis tellus, nec porta urna turpis ut urna. Ut et semper nisl. Pellentesque volutpat, nunc vel pharetra luctus, turpis libero porttitor tortor, non dapibus nisi massa id nisl. Duis congue ipsum sed erat ullamcorper, vitae efficitur massa fermentum. Fusce quis vehicula eros, sed lobortis purus. Nam iaculis, mi id ullamcorper eleifend, lorem purus venenatis ex, eget mollis ante arcu vitae nisl. Donec blandit, risus quis venenatis malesuada, risus purus iaculis mi, id finibus nulla leo id nulla. Pellentesque dapibus dignissim mi, vitae fringilla diam dapibus eget. Aenean ut vestibulum nisl. Duis efficitur pretium diam, vel mattis ligula porttitor at.\r\n\r\n\r\nDonec sed malesuada augue. In efficitur vel neque ut vestibulum. Praesent id neque ac neque ultrices consequat. In rhoncus rhoncus mauris sit amet ullamcorper. Etiam consequat suscipit magna, sit amet gravida ligula pulvinar et. Pellentesque eu odio ex. Phasellus posuere tellus sed ante fringilla, eget pretium justo iaculis. Aliquam sagittis odio tellus, vitae malesuada risus cursus sed.\r\n\r\n\r\nCras hendrerit vitae dui vitae suscipit. Cras interdum elementum efficitur. Nullam pharetra, leo ut porta imperdiet, ligula tortor mattis neque, vitae posuere odio neque et dui. In bibendum massa neque, porttitor accumsan nibh euismod in. Aenean volutpat est eleifend sodales semper. Nulla consequat, lorem non laoreet posuere, tortor purus feugiat dui, sit amet molestie neque nisi eu elit. Nam nibh erat, maximus at tristique eu, accumsan vitae leo. Etiam fringilla a diam eget sodales. Morbi et lobortis ligula. Donec posuere dolor magna, eu suscipit ex rutrum non. Sed pulvinar diam vel quam viverra aliquet. Nam a orci lorem.\r\n\r\n\r\nSuspendisse nec ipsum ac odio porttitor tristique. Sed consectetur nibh id tempus auctor. Duis justo nibh, viverra et sodales sollicitudin, aliquam quis ligula. Fusce non purus ac libero scelerisque egestas. Proin at orci in neque condimentum auctor id nec quam. Donec erat nunc, imperdiet at tincidunt ut, eleifend vitae enim. Integer a nunc quis eros mattis maximus. Sed sed elit ac est pellentesque finibus. Vivamus ac eleifend est. Morbi iaculis tellus metus, eu lacinia arcu tristique a. Vivamus tristique libero vel leo fermentum, vel vulputate felis dictum.', '2022-06-10 12:31:16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL,
  `nomeContato` varchar(100) NOT NULL,
  `emailContato` varchar(100) NOT NULL,
  `telefoneContato` char(14) DEFAULT NULL,
  `mensagemContato` text NOT NULL,
  `dataContato` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`idContato`, `nomeContato`, `emailContato`, `telefoneContato`, `mensagemContato`, `dataContato`) VALUES
(1, 'Paulo Daniel', 'paulodaniel1360@gmail.com', '', 'Quero me matricular no curso de teologia', '2022-06-03 12:35:27'),
(2, 'Paulo Daniel', 'paulodaniel1360@gmail.com', '', 'Quero me matricular no curso de teologia', '2022-06-04 12:35:27'),
(3, 'Paulo Daniel', 'paulodaniel1360@gmail.com', '', 'Quero me matricular no curso de teologia', '2022-06-05 12:35:27'),
(4, 'Paulo', 'paulodaniel1360@gmail.com', '(11) 93054-694', 'Quero saber mais do curso', '2022-06-06 12:35:27'),
(5, 'Paulo Daniel', 'paulodaniel1360@gmail.com', '(11) 93054-694', 'Olá, gostaria de me matricular na Dabar', '2022-06-07 12:35:27'),
(6, 'Paulo Daniel', 'paulodaniel1360@gmail.com', '(11) 93054-694', 'Olá, gostaria de me matricular na Dabar', '2022-06-08 12:35:27'),
(7, 'Edmilson', 'edson.schagas@yahoo.com', '', 'alahu akbar', '2022-06-09 12:35:27'),
(8, 'Carlos Roberto', 'paulodaniel1360@gmail.com', '(11) 99999-999', 'Olá', '2022-06-10 12:37:32'),
(9, 'paulo', 'paulodaniel1360@gmail.com', '', 'teste', '2022-06-15 14:15:39'),
(10, 'paulo', 'paulodaniel1360@gmail.com', '', 'saasasasa', '2022-06-15 14:16:32'),
(11, 'paulo', 'paulodaniel1360@gmail.com', '', 'testew', '2022-06-15 14:17:18'),
(12, 'paulo', 'paulodaniel1360@gmail.com', '', 'teste', '2022-06-15 14:32:05'),
(13, 'paulo', 'paulodaniel1360@gmail.com', '', 'assasasasa', '2022-06-15 14:32:41');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `curso` varchar(50) NOT NULL,
  `descCurso` text NOT NULL,
  `valorCurso` varchar(10) NOT NULL,
  `imgCurso` varchar(100) NOT NULL,
  `duracaoCurso` varchar(50) NOT NULL,
  `instrutorCurso` varchar(100) NOT NULL,
  `mensagemCurso` text NOT NULL,
  `statusCurso` int(11) NOT NULL,
  `deletedCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idCurso`, `curso`, `descCurso`, `valorCurso`, `imgCurso`, `duracaoCurso`, `instrutorCurso`, `mensagemCurso`, `statusCurso`, `deletedCurso`) VALUES
(1, 'Curso Básico de Teologia', '<p><span style=\"color: rgb(0, 0, 0);\">O Curso B&aacute;sico de teologia &eacute; composto por 20 mat&eacute;rias curriculares, sendo elas bases fundamentais para o desenvolvimento do aluno ao decorrer do curso e para o exerc&iacute;cio de sua voca&ccedil;&atilde;o.</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">O curso cont&eacute;m as seguintes mat&eacute;rias:</span></p>\n<ul>\n<li><span style=\"color: rgb(0, 0, 0);\">Escatologia I;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Heresiologia I;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Hermen&ecirc;utica;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Geografia b&iacute;blica I;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Hist&oacute;ria de Israel;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Historia dos avivamentos;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Elemento de m&uacute;sica na B&iacute;blia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Evangelismo e integra&ccedil;&atilde;o;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Eclesiologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Soteriologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Cristologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Bibliologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Angeologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Teologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Pneumatologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Antropologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Hamartiologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Missiologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Pentateuco;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Lideran&ccedil;a crist&atilde;</span></li>\n</ul>', '', 'assets/cursos/curso1.jpg', '2 anos', 'Fabio Santos', 'Olá, gostaria de saber mais sobre o Curso Básico de Teologia', 1, 0),
(2, 'Curso Médio de Teologia', '<p><span style=\"color: rgb(0, 0, 0);\">O Curso M&eacute;dio em Teologia tem como base as 20 mat&eacute;rias do Curso B&aacute;sico de Teologia, adicionando mais 10 mat&eacute;rias complementares, que somadas, s&atilde;o ao todo, 30 mat&eacute;rias.&nbsp;<strong>Se voc&ecirc; j&aacute; &eacute; aluno do <a href=\"curso.php?idCurso=1\" aria-invalid=\"true\">Curso B&aacute;sico de Teologia</a>, poder&aacute; continuar com o m&eacute;dio adicionando as 10 mat&eacute;rias complementares.</strong></span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">O curso cont&eacute;m as seguintes mat&eacute;rias:&nbsp;</span></p>\n<ul>\n<li><span style=\"color: rgb(0, 0, 0);\">Escatologia I;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Heresiologia I;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Hermen&ecirc;utica;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Geografia b&iacute;blica I;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Hist&oacute;ria de Israel;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Historia dos avivamentos;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Elemento de m&uacute;sica na B&iacute;blia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Evangelismo e integra&ccedil;&atilde;o;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Eclesiologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Soteriologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Cristologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Bibliologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Angeologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Teologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Pneumatologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Antropologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Hamartiologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Missiologia;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Pentateuco;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Lideran&ccedil;a crist&atilde;;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Homil&eacute;tica;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Adm. eclesi&aacute;stica ;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Teologia pastoral;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Ed. Religiosa;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Geografia b&iacute;blica II;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Heresiologia II;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">&Eacute;tica crist&atilde;;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Historia eclesi&aacute;stica I;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Historia eclesi&aacute;stica II;</span></li>\n<li><span style=\"color: rgb(0, 0, 0);\">Escatologia II;</span></li>\n</ul>', '', 'assets/cursos/curso2.jpg', '3 anos', 'Fabio Santos', 'Olá, gostaria de saber mais sobre o Curso Médio de Teologia', 1, 0),
(3, 'Curso Avançado de Teologia', '<p><span style=\"color: rgb(0, 0, 0);\">O Curso M&eacute;dio em Teologia tem como base as 20 mat&eacute;rias do Curso B&aacute;sico de Teologia, adicionando mais 10 mat&eacute;rias complementares, que somadas, s&atilde;o ao todo, 30 mat&eacute;rias.&nbsp;<strong>Se voc&ecirc; j&aacute; &eacute; aluno do <a href=\"curso.php?idCurso=1\" aria-invalid=\"true\">Curso B&aacute;sico de Teologia</a>, poder&aacute; continuar com o m&eacute;dio adicionando as 10 mat&eacute;rias complementares.</strong></span></p>\r\n<p><span style=\"color: rgb(0, 0, 0);\">O curso cont&eacute;m as seguintes mat&eacute;rias:&nbsp;</span></p>\r\n<ul>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Escatologia I;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Heresiologia I;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Hermen&ecirc;utica;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Geografia b&iacute;blica I;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Hist&oacute;ria de Israel;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Historia dos avivamentos;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Elemento de m&uacute;sica na B&iacute;blia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Evangelismo e integra&ccedil;&atilde;o;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Eclesiologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Soteriologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Cristologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Bibliologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Angeologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Teologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Pneumatologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Antropologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Hamartiologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Missiologia;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Pentateuco;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Lideran&ccedil;a crist&atilde;;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Homil&eacute;tica;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Adm. eclesi&aacute;stica ;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Teologia pastoral;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Ed. Religiosa;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Geografia b&iacute;blica II;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Heresiologia II;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">&Eacute;tica crist&atilde;;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Historia eclesi&aacute;stica I;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Historia eclesi&aacute;stica II;</span></li>\r\n<li><span style=\"color: rgb(0, 0, 0);\">Escatologia II;</span></li>\r\n</ul>', '', 'assets/cursos/curso2.jpg', '4 anos', 'Fabio Santos', 'Olá, gostaria de saber mais sobre o Curso Médio de Teologia', 0, 1),
(5, 'Curso de Cristologia', 'Quero me inscrever no Curso de Cristologia\r\n\r\nQuero me inscrever no Curso de Cristologia\r\n\r\nQuero me inscrever no Curso de Cristologia\r\n\r\nQuero me inscrever no Curso de Cristologia\r\n\r\nQuero me inscrever no Curso de Cristologia\r\n\r\nQuero me inscrever no Curso de Cristologia\r\n\r\nQuero me inscrever no Curso de Cristologia', '', 'assets/cursos/2022-09-19-00-41-25.jpg', '3 Meses', 'Fabio Santos', 'Quero me inscrever no Curso de Cristologia', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `cursoativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `cursoativo` (
`COD. CURSO` int(11)
,`CURSO` varchar(50)
,`DESC. CURSO` text
,`VALOR` varchar(10)
,`IMG. CURSO` varchar(100)
,`DURAÇÃO` varchar(50)
,`INSTRUTOR` varchar(100)
,`MENSAGEM` text
,`STATUS` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `cursocompleto`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `cursocompleto` (
`COD. CURSO` int(11)
,`CURSO` varchar(50)
,`DESC. CURSO` varchar(103)
,`VALOR` varchar(10)
,`IMG. CURSO` varchar(100)
,`DURAÇÃO` varchar(50)
,`INSTRUTOR` varchar(100)
,`MENSAGEM` text
,`STATUS` varchar(7)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `cursoinativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `cursoinativo` (
`COD. CURSO` int(11)
,`CURSO` varchar(50)
,`DESC. CURSO` text
,`VALOR` varchar(10)
,`IMG. CURSO` varchar(100)
,`DURAÇÃO` varchar(50)
,`INSTRUTOR` varchar(100)
,`MENSAGEM` text
,`STATUS` int(11)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `dabar`
--

CREATE TABLE `dabar` (
  `id` int(11) NOT NULL,
  `sobre` text NOT NULL,
  `identidade` text NOT NULL,
  `requisitos` text NOT NULL,
  `sobreInstrutor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dabar`
--

INSERT INTO `dabar` (`id`, `sobre`, `identidade`, `requisitos`, `sobreInstrutor`) VALUES
(1, '<p>A escola teológica Dabar é sediada na Av. Deputado Castro de Carvalho, 1695, Vila Áurea, Poá – SP. Fone: 11 2891-8736/99318-2269.A mesma foi organizada em Janeiro de 2007, e as aulas tiveram inicio em 05/02/07. Sendo a primeira aula apenas inaugural, ou seja, uma apresentação formal da escola. Nesta apresentação foi notificada a sua identidade e as instituições de apoio que são: A Confradesb e a Universidade Corporativa Livre Átrios. Bem como o sistema de funcionamento da escola quanto ao corpo docente e discente.</p><p><br></p><p>A escola teológica Dabar hodiernamente é uma pessoa jurídica e usufrui de plena autonomia, ou seja, ela já não tem mais vinculo com as instituições acima referenciada.</p><p><br></p><p>A escola apesar de estar sediada em Poá, ela oferece o curso online, e o curso completo gravado em vídeos aulas com seus respectivos materiais. </p><p><br></p><p>O corpo docente da escola, hoje é formado apenas por um único professor que, é, a mesma pessoa que organizou e que preside a escola. Que é, o Fábio José dos Santos, o mesmo é responsável pelas ministrações das aulas tanto online quanto gravadas. </p><p><br></p><p>A escola oferece apenas os cursos básicos e médios de teologia. O curso básico é formado por 20 matérias, tendo uma aula por semana e duas horas de aulas. E o curso médio é formado por 30 matérias. Vale ressaltar que, o curso médio tem como base as 20 matérias do curso básico. As aulas online ocorrem nas segundas feiras das 20hs às 22hs.</p><p><br></p><p>O Centro Educacional de Teologia DABAR é de cunho Inter denominacional, que tem como meta, preparar pessoas para manusear bem a Palavra de Deus, no serviço do Reino de Deus e no exercício da sua vocação.</p>', '<ol>\n<li>O nome da escola &eacute;: ETD &ndash; Escola Teol&oacute;gica Dabar. Dabar &eacute; um termo que vem do hebraico e significa Palavra. Entretanto traz a ideia de Palavra vinda de Deus, indica palavra firmada ou a&ccedil;&atilde;o de Deus (Jr.2:1).</li>\n<li>A escola n&atilde;o tem reconhecimento do MEC. E n&atilde;o tem por algumas raz&otilde;es, veja- mos:<br>- 90% das escolas teol&oacute;gicas n&atilde;o tem reconhecimento;<br>- A finalidade da escola n&atilde;o &eacute; formar profissionais, e sim obreiros para a seara do Senhor. A forma&ccedil;&atilde;o oferecida &eacute; teol&oacute;gica, religiosa e eclesi&aacute;stica. E esses cursos n&atilde;o necessitam da autoriza&ccedil;&atilde;o ou reconhecimento do MEC. N&atilde;o s&atilde;o cursos t&eacute;cnicos ou de educa&ccedil;&atilde;o superior acad&ecirc;mica, para o aluno se tornar um profissional.</li>\n<li>A escola oferece apenas o curso b&aacute;sico e m&eacute;dio de teologia, ou seja, n&atilde;o oferece a gradua&ccedil;&atilde;o que &eacute; o bacharel.</li>\n<li>A escola teol&oacute;gica Dabar tem com meta dar uma s&oacute;lida forma&ccedil;&atilde;o teol&oacute;gica aos seus alunos, embora a princ&iacute;pio a n&iacute;vel b&aacute;sico e m&eacute;dio, conforme a natureza do curso. Sem olvidar que, a mesma n&atilde;o se deixar&aacute; ser influenciada pelo modernismo, liberalismo e relativismo quanto ao ensino e pr&aacute;tica da Palavra de Deus. A escola preservar&aacute; o ensino ortodoxo da Palavra de Deus.</li>\n</ol>', '<ol> <li><strong>Requisitos para admiss&atilde;o de alunos</strong><br>- As matriculas podem ser feitas no inicio de cada nova mat&eacute;ria, ou na corrente, desde que, a mesma n&atilde;o tenha ultrapassado 50% das aulas;<br>- Preencher a ficha de matricula com letra leg&iacute;vel;<br>- O aluno precisa pelo menos ter o prim&aacute;rio completo. Caso n&atilde;o tenha haver&aacute; uma entrevista com o presidente da escola, para uma poss&iacute;vel avalia&ccedil;&atilde;o do aluno;<br>- Uma foto 3x4;<br>- Pagar a matricula;<br>- Na transi&ccedil;&atilde;o de um aluno de uma escola para a escola teol&oacute;gica Dabar, as suas disciplinas ser&atilde;o aceitas mediante o hist&oacute;rico, desde que, as mesmas tenham correspond&ecirc;ncias e as cargas hor&aacute;rias ser&atilde;o avaliadas;<br>- Pagar mensalidade;</li> <li>Requisitos quanto ao corpo discente:<br>- 75% de frequ&ecirc;ncias nas aulas;<br>- A frequ&ecirc;ncia &eacute; adicionada como nota da prova;<br>- Cada aula perdida representar&aacute; 0,5 pontos;<br>- Faltas n&atilde;o justificadas n&atilde;o ser&atilde;o abonadas;<br>- A leitura do livro &eacute; adicionada com a nota da prova;<br>- As provas ser&atilde;o dadas ap&oacute;s a &uacute;ltima aula de cada mat&eacute;ria;<br>- Cada mat&eacute;ria ter&aacute; uma carga hor&aacute;ria de 10 horas, ou seja, ser&atilde;o cinco aulas para cada mat&eacute;ria, com duas horas de aulas e uma aula por semana;<br>- O material did&aacute;tico ser&aacute; indicado pela escola;<br>- No t&eacute;rmino do curso o aluno dever&aacute; fazer um prov&atilde;o resumindo todo o curso;<br>- O aluno no final do curso dever&aacute; comprovar que leu toda a B&iacute;blia como pr&eacute;-requisito para finalizar o curso.</li> </ol>', '<p><span style=\"color: rgb(0, 0, 0);\">Fabio Jos&eacute; dos Santos &eacute; Bacharel em Teologia pelo Semin&aacute;rio Teol&oacute;gico Batista Nacional, atualmente pastoreia a Primeira Igreja Batista em Jardim Paineira em Itaquaquecetuba &ndash; SP.</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\"><strong>Forma&ccedil;&atilde;o</strong></span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">- Bacharel em Teologia &ndash; STBNET (Semin&aacute;rio Teol&oacute;gico Batista Nacional En&eacute;as Tognini).</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">- Fez o mestrado em Teologia B&iacute;blica do Novo Testamento &ndash; STBNET (Semin&aacute;rio Teol&oacute;gico Batista Nacional En&eacute;as Tognini).</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">- Licenciatura em Filosofia &ndash; Ph&ecirc;nix- Guarulhos &ndash; SP.</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">- P&oacute;s-Gradua&ccedil;&atilde;o em Filosofia &ndash; UFSCAR &ndash; SP.</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">- Licenciado em hist&oacute;ria. - Faculdade S&atilde;o Jos&eacute;&nbsp;</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">- Licenciado em pedagogia &ndash; Educa Mais Brasil</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">- P&oacute;s-gradua&ccedil;&atilde;o em educa&ccedil;&atilde;o especial &ndash; Faculdade S&atilde;o Lu&iacute;s</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">- Cursando p&oacute;s-gradua&ccedil;&atilde;o em tutoria de educa&ccedil;&atilde;o a dist&acirc;ncia &ndash; Educa Mais Brasil&nbsp;&nbsp;</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">Leciona as mat&eacute;rias do Curso B&aacute;sico e M&eacute;dio de Teologia oferecidos pelo Centro Educacional de Teologia DABAR.</span></p>\n<p><span style=\"color: rgb(0, 0, 0);\">Leciona as mat&eacute;rias de Filosofia, Sociologia, Hist&oacute;ria e &Eacute;tica e Cidadania organizacional na rede p&uacute;blica de educa&ccedil;&atilde;o.</span></p>\n<p>&nbsp;</p>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `depoimento`
--

CREATE TABLE `depoimento` (
  `idDepo` int(11) NOT NULL,
  `imgUsuario` varchar(100) NOT NULL,
  `txtDepo` varchar(180) NOT NULL,
  `autorDepo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `destaqueblog`
--

CREATE TABLE `destaqueblog` (
  `idDestaque` int(11) NOT NULL,
  `idArtigo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `destaqueblog`
--

INSERT INTO `destaqueblog` (`idDestaque`, `idArtigo`) VALUES
(1, 1),
(2, 2),
(3, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `materias`
--

CREATE TABLE `materias` (
  `idMateria` int(11) NOT NULL,
  `materia` varchar(50) NOT NULL,
  `idCurso` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `idMatricula` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `dataMatricula` timestamp NOT NULL DEFAULT current_timestamp(),
  `statusMatricula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`idMatricula`, `idCurso`, `idUsuario`, `dataMatricula`, `statusMatricula`) VALUES
(1, 2, 2, '2022-06-10 12:18:51', 0),
(18, 1, 22, '2022-09-18 18:16:38', 0);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `matriculaativa`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `matriculaativa` (
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `matriculacompleta`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `matriculacompleta` (
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `matriculado`
--

CREATE TABLE `matriculado` (
  `idMatriculado` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  `idTurma` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idMatricula` int(11) NOT NULL,
  `dataMatriculado` timestamp NOT NULL DEFAULT current_timestamp(),
  `statusMatriculado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `matriculado`
--

INSERT INTO `matriculado` (`idMatriculado`, `idCurso`, `idTurma`, `idUsuario`, `idMatricula`, `dataMatriculado`, `statusMatriculado`) VALUES
(1, 2, 3, 2, 1, '2022-09-18 16:59:08', 1),
(4, 1, 1, 22, 18, '2022-09-18 19:43:29', 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `matriculainativa`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `matriculainativa` (
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `idTurma` int(11) NOT NULL,
  `nomeTurma` varchar(50) NOT NULL,
  `statusTurma` varchar(11) NOT NULL,
  `andamentoTurma` varchar(11) NOT NULL,
  `dataCadTurma` date NOT NULL,
  `deletedTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`idTurma`, `nomeTurma`, `statusTurma`, `andamentoTurma`, `dataCadTurma`, `deletedTurma`) VALUES
(1, 'TB 1', '0', '2', '2022-03-01', 0),
(2, 'TB 2', '1', '1', '2022-06-10', 0),
(3, 'TM 1', '1', '1', '2021-07-13', 0),
(4, 'TM 2', '1', '1', '2022-06-10', 0),
(7, 'TB 3', '0', '0', '2022-09-01', 0),
(8, 'TM 3', '0', '0', '2022-09-01', 0),
(9, 'C1', '1', '0', '2022-09-19', 0);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `turmasativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `turmasativo` (
`COD. TURMA` int(11)
,`TURMA` varchar(50)
,`STATUS` varchar(7)
,`ANDAMENTO` varchar(10)
,`DT. CAD. TURMA` date
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `turmascompleto`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `turmascompleto` (
`COD. TURMA` int(11)
,`TURMA` varchar(50)
,`STATUS` varchar(7)
,`ANDAMENTO` varchar(10)
,`DT. CAD. TURMA` date
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `turmasinativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `turmasinativo` (
`COD. TURMA` int(11)
,`TURMA` varchar(50)
,`STATUS` varchar(7)
,`ANDAMENTO` varchar(10)
,`DT. CAD. TURMA` date
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nomeUsuario` varchar(100) NOT NULL,
  `emailUsuario` varchar(100) NOT NULL,
  `telUsuario` varchar(15) NOT NULL,
  `senhaUsuario` char(40) NOT NULL,
  `dataNasc` date NOT NULL,
  `imgUsuario` varchar(37) DEFAULT NULL,
  `dataCad` date DEFAULT NULL,
  `statusUsuario` varchar(11) NOT NULL,
  `catUsuario` varchar(11) NOT NULL,
  `deletedUser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nomeUsuario`, `emailUsuario`, `telUsuario`, `senhaUsuario`, `dataNasc`, `imgUsuario`, `dataCad`, `statusUsuario`, `catUsuario`, `deletedUser`) VALUES
(1, 'Paulo Daniel', 'pdaniel@gmail.com', '(11) 99999-9999', 'dc2b76bf56e43fef073d67d331ca83211ef5bd16', '2002-05-10', 'default.svg', '2022-05-10', '0', '0', 0),
(2, 'Paulo Daniel Nascimento da Palma', 'paulodaniel1360@gmail.com', '(11) 93054-6947', '2abd6623c714a17582a217f72a13ec78865d8d14', '2002-05-10', 'nezuko.jpg', '2022-05-19', '1', '2', 0),
(22, 'Gigachada', 'gigachad@gmail.com', '(11) 11111-1111', '0e213626455ca46d0b7b373bd511db97fc32ecd2', '2002-05-11', '2022-09-19-00-12-43.jpg', '2022-09-15', '1', '0', 0),
(23, 'Elza', 'elza@gmail.com', '(11) 11111-1111', '2abd6623c714a17582a217f72a13ec78865d8d14', '2002-05-29', 'default.svg', '2022-09-18', '1', '0', 0),
(24, 'Penny', 'penny@gmail.com', '(11) 11111-1111', '2a2b8101552557f5baa41a5c4070cdd587858824', '2002-10-10', '2022-09-18-14-20-35.jpg', '2022-09-18', '1', '0', 1);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `usuarioativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `usuarioativo` (
`COD. USUARIO` int(11)
,`NOME DO USUARIO` varchar(100)
,`EMAIL DO USUARIO` varchar(100)
,`TELEFONE DO USUARIO` varchar(15)
,`DATA DE NASC.` date
,`IMAGEM USUARIO` varchar(37)
,`DATA DE CADASTRO` date
,`STATUS` varchar(7)
,`CATEGORIA` varchar(9)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `usuariocompleto`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `usuariocompleto` (
`COD. USUARIO` int(11)
,`NOME DO USUARIO` varchar(100)
,`EMAIL DO USUARIO` varchar(100)
,`TELEFONE DO USUARIO` varchar(15)
,`DATA DE NASC.` date
,`IMAGEM USUARIO` varchar(37)
,`DATA DE CADASTRO` date
,`STATUS` varchar(7)
,`CATEGORIA` varchar(9)
);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `usuarioinativo`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `usuarioinativo` (
`COD. USUARIO` int(11)
,`NOME DO USUARIO` varchar(100)
,`EMAIL DO USUARIO` varchar(100)
,`TELEFONE DO USUARIO` varchar(15)
,`DATA DE NASC.` date
,`IMAGEM USUARIO` varchar(37)
,`DATA DE CADASTRO` date
,`STATUS` varchar(7)
,`CATEGORIA` varchar(9)
);

-- --------------------------------------------------------

--
-- Estrutura para vista `cursoativo`
--
DROP TABLE IF EXISTS `cursoativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cursoativo`  AS SELECT `curso`.`idCurso` AS `COD. CURSO`, `curso`.`curso` AS `CURSO`, `curso`.`descCurso` AS `DESC. CURSO`, `curso`.`valorCurso` AS `VALOR`, `curso`.`imgCurso` AS `IMG. CURSO`, `curso`.`duracaoCurso` AS `DURAÇÃO`, `curso`.`instrutorCurso` AS `INSTRUTOR`, `curso`.`mensagemCurso` AS `MENSAGEM`, `curso`.`statusCurso` AS `STATUS` FROM `curso` WHERE `curso`.`statusCurso` = 1 ORDER BY `curso`.`curso` ASC  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `cursocompleto`
--
DROP TABLE IF EXISTS `cursocompleto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cursocompleto`  AS SELECT `curso`.`idCurso` AS `COD. CURSO`, `curso`.`curso` AS `CURSO`, concat(substr(`curso`.`descCurso`,1,100),'...') AS `DESC. CURSO`, `curso`.`valorCurso` AS `VALOR`, `curso`.`imgCurso` AS `IMG. CURSO`, `curso`.`duracaoCurso` AS `DURAÇÃO`, `curso`.`instrutorCurso` AS `INSTRUTOR`, `curso`.`mensagemCurso` AS `MENSAGEM`, CASE WHEN `curso`.`statusCurso` = 1 THEN 'Ativo' ELSE 'Inativo' END AS `STATUS` FROM `curso` WHERE `curso`.`deletedCurso` <> 1 ORDER BY `curso`.`curso` ASC  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `cursoinativo`
--
DROP TABLE IF EXISTS `cursoinativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cursoinativo`  AS SELECT `curso`.`idCurso` AS `COD. CURSO`, `curso`.`curso` AS `CURSO`, `curso`.`descCurso` AS `DESC. CURSO`, `curso`.`valorCurso` AS `VALOR`, `curso`.`imgCurso` AS `IMG. CURSO`, `curso`.`duracaoCurso` AS `DURAÇÃO`, `curso`.`instrutorCurso` AS `INSTRUTOR`, `curso`.`mensagemCurso` AS `MENSAGEM`, `curso`.`statusCurso` AS `STATUS` FROM `curso` WHERE `curso`.`statusCurso` = 0 ORDER BY `curso`.`curso` ASC  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `matriculaativa`
--
DROP TABLE IF EXISTS `matriculaativa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `matriculaativa`  AS SELECT `usuario`.`nomeUsuario` AS `NOME USUARIO`, `curso`.`curso` AS `CURSO`, `turma`.`nomeTurma` AS `TURMA`, `matricula`.`dataMatricula` AS `DT. MATRICULA`, `matricula`.`statusMatricula` AS `STATUS` FROM (((`matricula` join `usuario` on(`matricula`.`idUsuario` = `usuario`.`idUsuario`)) join `curso` on(`matricula`.`idCurso` = `curso`.`idCurso`)) join `turma` on(`matricula`.`idTurma` = `turma`.`idTurma`)) WHERE `matricula`.`statusMatricula` = 1111  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `matriculacompleta`
--
DROP TABLE IF EXISTS `matriculacompleta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `matriculacompleta`  AS SELECT `usuario`.`nomeUsuario` AS `NOME USUARIO`, `curso`.`curso` AS `CURSO`, `turma`.`nomeTurma` AS `TURMA`, `matricula`.`dataMatricula` AS `DT. MATRICULA`, `matricula`.`statusMatricula` AS `STATUS` FROM (((`matricula` join `usuario` on(`matricula`.`idUsuario` = `usuario`.`idUsuario`)) join `curso` on(`matricula`.`idCurso` = `curso`.`idCurso`)) join `turma` on(`matricula`.`idTurma` = `turma`.`idTurma`))  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `matriculainativa`
--
DROP TABLE IF EXISTS `matriculainativa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `matriculainativa`  AS SELECT `usuario`.`nomeUsuario` AS `NOME USUARIO`, `curso`.`curso` AS `CURSO`, `turma`.`nomeTurma` AS `TURMA`, `matricula`.`dataMatricula` AS `DT. MATRICULA`, `matricula`.`statusMatricula` AS `STATUS` FROM (((`matricula` join `usuario` on(`matricula`.`idUsuario` = `usuario`.`idUsuario`)) join `curso` on(`matricula`.`idCurso` = `curso`.`idCurso`)) join `turma` on(`matricula`.`idTurma` = `turma`.`idTurma`)) WHERE `matricula`.`statusMatricula` = 00  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `turmasativo`
--
DROP TABLE IF EXISTS `turmasativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `turmasativo`  AS SELECT `turma`.`idTurma` AS `COD. TURMA`, `turma`.`nomeTurma` AS `TURMA`, CASE WHEN `turma`.`statusTurma` = 1 THEN 'Ativo' ELSE 'Inativo' END AS `STATUS`, CASE WHEN `turma`.`andamentoTurma` = 1 THEN 'Completa' WHEN `turma`.`andamentoTurma` = 2 THEN 'Finalizada' ELSE 'Incompleta' END AS `ANDAMENTO`, `turma`.`dataCadTurma` AS `DT. CAD. TURMA` FROM `turma` WHERE `turma`.`statusTurma` = 1 ORDER BY `turma`.`nomeTurma` ASC  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `turmascompleto`
--
DROP TABLE IF EXISTS `turmascompleto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `turmascompleto`  AS SELECT `turma`.`idTurma` AS `COD. TURMA`, `turma`.`nomeTurma` AS `TURMA`, CASE WHEN `turma`.`statusTurma` = 1 THEN 'Ativo' ELSE 'Inativo' END AS `STATUS`, CASE WHEN `turma`.`andamentoTurma` = 1 THEN 'Completa' WHEN `turma`.`andamentoTurma` = 2 THEN 'Finalizada' ELSE 'Incompleta' END AS `ANDAMENTO`, `turma`.`dataCadTurma` AS `DT. CAD. TURMA` FROM `turma` ORDER BY `turma`.`nomeTurma` ASC  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `turmasinativo`
--
DROP TABLE IF EXISTS `turmasinativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `turmasinativo`  AS SELECT `turma`.`idTurma` AS `COD. TURMA`, `turma`.`nomeTurma` AS `TURMA`, CASE WHEN `turma`.`statusTurma` = 1 THEN 'Ativo' ELSE 'Inativo' END AS `STATUS`, CASE WHEN `turma`.`andamentoTurma` = 1 THEN 'Completa' WHEN `turma`.`andamentoTurma` = 2 THEN 'Finalizada' ELSE 'Incompleta' END AS `ANDAMENTO`, `turma`.`dataCadTurma` AS `DT. CAD. TURMA` FROM `turma` WHERE `turma`.`statusTurma` = 0 ORDER BY `turma`.`nomeTurma` ASC  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `usuarioativo`
--
DROP TABLE IF EXISTS `usuarioativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuarioativo`  AS SELECT `usuario`.`idUsuario` AS `COD. USUARIO`, `usuario`.`nomeUsuario` AS `NOME DO USUARIO`, `usuario`.`emailUsuario` AS `EMAIL DO USUARIO`, `usuario`.`telUsuario` AS `TELEFONE DO USUARIO`, `usuario`.`dataNasc` AS `DATA DE NASC.`, `usuario`.`imgUsuario` AS `IMAGEM USUARIO`, `usuario`.`dataCad` AS `DATA DE CADASTRO`, CASE WHEN `usuario`.`statusUsuario` = 1 THEN 'Ativo' ELSE 'Inativo' END AS `STATUS`, CASE WHEN `usuario`.`catUsuario` = 1 THEN 'Professor' WHEN `usuario`.`catUsuario` = 2 THEN 'ADM' ELSE 'Aluno' END AS `CATEGORIA` FROM `usuario` WHERE `usuario`.`statusUsuario` = 1 AND `usuario`.`deletedUser` <> 11  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `usuariocompleto`
--
DROP TABLE IF EXISTS `usuariocompleto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuariocompleto`  AS SELECT `usuario`.`idUsuario` AS `COD. USUARIO`, `usuario`.`nomeUsuario` AS `NOME DO USUARIO`, `usuario`.`emailUsuario` AS `EMAIL DO USUARIO`, `usuario`.`telUsuario` AS `TELEFONE DO USUARIO`, `usuario`.`dataNasc` AS `DATA DE NASC.`, `usuario`.`imgUsuario` AS `IMAGEM USUARIO`, `usuario`.`dataCad` AS `DATA DE CADASTRO`, CASE WHEN `usuario`.`statusUsuario` = 1 THEN 'Ativo' ELSE 'Inativo' END AS `STATUS`, CASE WHEN `usuario`.`catUsuario` = 1 THEN 'Professor' WHEN `usuario`.`catUsuario` = 2 THEN 'ADM' ELSE 'Aluno' END AS `CATEGORIA` FROM `usuario` WHERE `usuario`.`deletedUser` <> 1 ORDER BY `usuario`.`idUsuario` ASC  ;

-- --------------------------------------------------------

--
-- Estrutura para vista `usuarioinativo`
--
DROP TABLE IF EXISTS `usuarioinativo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `usuarioinativo`  AS SELECT `usuario`.`idUsuario` AS `COD. USUARIO`, `usuario`.`nomeUsuario` AS `NOME DO USUARIO`, `usuario`.`emailUsuario` AS `EMAIL DO USUARIO`, `usuario`.`telUsuario` AS `TELEFONE DO USUARIO`, `usuario`.`dataNasc` AS `DATA DE NASC.`, `usuario`.`imgUsuario` AS `IMAGEM USUARIO`, `usuario`.`dataCad` AS `DATA DE CADASTRO`, CASE WHEN `usuario`.`statusUsuario` = 1 THEN 'Ativo' ELSE 'Inativo' END AS `STATUS`, CASE WHEN `usuario`.`catUsuario` = 1 THEN 'Professor' WHEN `usuario`.`catUsuario` = 2 THEN 'ADM' ELSE 'Aluno' END AS `CATEGORIA` FROM `usuario` WHERE `usuario`.`statusUsuario` = 0 AND `usuario`.`deletedUser` <> 11  ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD PRIMARY KEY (`idArquivo`),
  ADD KEY `idTurma` (`idTurma`);

--
-- Índices para tabela `artigo`
--
ALTER TABLE `artigo`
  ADD PRIMARY KEY (`idArtigo`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idContato`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`);

--
-- Índices para tabela `dabar`
--
ALTER TABLE `dabar`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `depoimento`
--
ALTER TABLE `depoimento`
  ADD PRIMARY KEY (`idDepo`);

--
-- Índices para tabela `destaqueblog`
--
ALTER TABLE `destaqueblog`
  ADD PRIMARY KEY (`idDestaque`),
  ADD KEY `idArtigo` (`idArtigo`);

--
-- Índices para tabela `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`idMateria`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Índices para tabela `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`idMatricula`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idCurso` (`idCurso`);

--
-- Índices para tabela `matriculado`
--
ALTER TABLE `matriculado`
  ADD PRIMARY KEY (`idMatriculado`),
  ADD KEY `idCurso` (`idCurso`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idTurma` (`idTurma`),
  ADD KEY `idMatricula` (`idMatricula`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`idTurma`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arquivos`
--
ALTER TABLE `arquivos`
  MODIFY `idArquivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `artigo`
--
ALTER TABLE `artigo`
  MODIFY `idArtigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `dabar`
--
ALTER TABLE `dabar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `depoimento`
--
ALTER TABLE `depoimento`
  MODIFY `idDepo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `destaqueblog`
--
ALTER TABLE `destaqueblog`
  MODIFY `idDestaque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `materias`
--
ALTER TABLE `materias`
  MODIFY `idMateria` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `matricula`
--
ALTER TABLE `matricula`
  MODIFY `idMatricula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `matriculado`
--
ALTER TABLE `matriculado`
  MODIFY `idMatriculado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `arquivos`
--
ALTER TABLE `arquivos`
  ADD CONSTRAINT `arquivos_ibfk_1` FOREIGN KEY (`idTurma`) REFERENCES `turma` (`idTurma`);

--
-- Limitadores para a tabela `destaqueblog`
--
ALTER TABLE `destaqueblog`
  ADD CONSTRAINT `destaqueblog_ibfk_1` FOREIGN KEY (`idArtigo`) REFERENCES `artigo` (`idArtigo`),
  ADD CONSTRAINT `destaqueblog_ibfk_2` FOREIGN KEY (`idArtigo`) REFERENCES `artigo` (`idArtigo`);

--
-- Limitadores para a tabela `materias`
--
ALTER TABLE `materias`
  ADD CONSTRAINT `materias_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`);

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`);

--
-- Limitadores para a tabela `matriculado`
--
ALTER TABLE `matriculado`
  ADD CONSTRAINT `matriculado_ibfk_1` FOREIGN KEY (`idCurso`) REFERENCES `curso` (`idCurso`),
  ADD CONSTRAINT `matriculado_ibfk_2` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `matriculado_ibfk_3` FOREIGN KEY (`idTurma`) REFERENCES `turma` (`idTurma`),
  ADD CONSTRAINT `matriculado_ibfk_4` FOREIGN KEY (`idMatricula`) REFERENCES `matricula` (`idMatricula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
