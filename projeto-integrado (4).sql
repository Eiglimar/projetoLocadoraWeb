-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tempo de Geração: 
-- Versão do Servidor: 5.5.27-log
-- Versão do PHP: 5.4.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `projeto-integrado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `automovel`
--

CREATE TABLE IF NOT EXISTS `automovel` (
  `au_id` int(10) NOT NULL AUTO_INCREMENT,
  `au_chassi` varchar(50) NOT NULL,
  `au_modelo` varchar(50) NOT NULL,
  `au_placa` varchar(10) NOT NULL,
  `au_grupo` varchar(30) NOT NULL,
  `au_fabricante` varchar(40) NOT NULL,
  `au_cidade` int(10) NOT NULL,
  `au_km` int(6) NOT NULL,
  `au_kmLivre` int(6) NOT NULL,
  `au_kmControlado` int(6) NOT NULL,
  `au_disp` int(1) NOT NULL,
  `au_imagem` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`au_id`),
  UNIQUE KEY `au_id` (`au_id`),
  UNIQUE KEY `au_chassi` (`au_chassi`),
  UNIQUE KEY `au_placa` (`au_placa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Extraindo dados da tabela `automovel`
--

INSERT INTO `automovel` (`au_id`, `au_chassi`, `au_modelo`, `au_placa`, `au_grupo`, `au_fabricante`, `au_cidade`, `au_km`, `au_kmLivre`, `au_kmControlado`, `au_disp`, `au_imagem`) VALUES
(4, '11111', 'CORSA', 'AAA1111', 'I) Utilitario', 'GM', 26, 111111, 11, 22, 0, 'http://quatrorodas.abril.com.br/imagem/567_corsa14_abre.jpg'),
(9, '21DSA32D1SA3', 'FUSION', 'ABC1215', 'F) Intermediario', 'FORD', 8, 58000, 98, 70, 1, 'http://img.estadao.com.br/jornal-do-carro/imagens/noticia/ford-fusion-vignale-1.jpg'),
(10, '9BWCA11JOY4000001', 'A3', 'QWE1547', 'H) Executivo', 'AUDI', 26, 78500, 150, 120, 1, 'http://s2.glbimg.com/oAVJIUIrSMEbwEC3SslO42aMOqM=/s.glbimg.com/jo/g1/f/original/2014/04/22/a3.jpg'),
(12, '9BKCA11JOY4058001', 'RANGER', 'QSX3971', 'P) 4 x 4 Especial', 'FORD', 26, 6300, 130, 115, 1, 'http://fordsuperauto.com.br/wp-content/themes/superauto/images/showroom/RangerSimples/carros/RangerSimples-6.png'),
(13, '8NHCA11JOY4000030', 'CELTA', 'FVG6325', 'A) Economico', 'GM', 26, 25000, 60, 45, 1, 'http://img.rumonortegm.com.br///marca/chevrolet/modelos/celta1.jpg'),
(18, 'GFDG43TERF43', 'TT', 'HGT6343', 'K) Executivo Luxo', 'AUDI', 22, 10000, 200, 50, 1, 'http://s2.glbimg.com/efflZBLZQXQUmVvdBxRodCCTBfU=/620x400/e.glbimg.com/og/ed/f/original/2014/09/26/29r9217.jpg'),
(19, '543534BB43WBJRK43', 'UNO', 'FGU2345', 'F) Intermediario', 'FIAT', 1, 20000, 15, 50, 1, 'http://www.carrosnaweb.com.br/imagensbd007%5Cuno-grazie-mille-4.jpg'),
(20, '45325DFDSFDS2', 'BRAVO', 'AAA1234', 'a) economico', 'FIAT', 26, 400000, 20, 60, 1, 'http://momentoauto.com.br/wp-content/uploads/2015/03/Novo-Fiat-Bravo-2016-Ficha-T%C3%A9cnica-Fotos-Pre%C3%A7os-e-Vers%C3%B5es-12.jpg'),
(21, ' CEW8C9WEW23', 'GOL', 'LOP1236', 'A) ECONOMICO', 'VOLKSWAGEN', 1, 35000, 30, 90, 1, 'http://ofertas-cdn.ageriservicos.com.br/imgs/93/3795/gol-comfortline-1-0-4-portas.png?_=e75acfb6-713e-4b01-b126-727f64c41f3b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE IF NOT EXISTS `cidade` (
  `ci_id` int(10) NOT NULL AUTO_INCREMENT,
  `ci_cidade` varchar(30) NOT NULL,
  `ci_estado` varchar(30) NOT NULL,
  PRIMARY KEY (`ci_id`),
  UNIQUE KEY `ci_id` (`ci_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`ci_id`, `ci_cidade`, `ci_estado`) VALUES
(1, 'São Paulo', 'sp'),
(2, 'Guarulhos', 'sp'),
(4, 'São Bernardo', 'sp'),
(5, 'São Caetano', 'sp'),
(6, 'Santo André', 'sp'),
(7, 'Duque de Caxias', 'rj'),
(8, 'Niterói', 'rj'),
(9, 'Paraty', 'rj'),
(10, 'Rio de Janeiro', 'rj'),
(11, 'Teresópolis', 'rj'),
(12, 'Blumenau', 'sc'),
(13, 'Criciúma', 'sc'),
(14, 'Florianópolis', 'sc'),
(15, 'Joinville', 'sc'),
(16, 'São José', 'sc'),
(17, 'Belo Horizonte', 'mg'),
(18, 'Betim', 'mg'),
(19, 'Campo Belo', 'mg'),
(20, 'Juíz de Fora', 'mg'),
(21, 'Uberlândia', 'mg'),
(22, 'Camaçari', 'ba'),
(23, 'Feira de Santana', 'ba'),
(24, 'Itabuna', 'ba'),
(25, 'Porto Seguro', 'ba'),
(26, 'Salvador', 'ba');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `cl_id` int(10) NOT NULL AUTO_INCREMENT,
  `cl_cpf` varchar(16) NOT NULL,
  `cl_nome` varchar(60) NOT NULL,
  `cl_rg` varchar(20) NOT NULL,
  `cl_email` varchar(40) NOT NULL,
  `cl_telefone` varchar(22) NOT NULL,
  `cl_nascimento` varchar(10) NOT NULL,
  `cl_sexo` varchar(1) NOT NULL,
  `cl_hb_num` varchar(20) NOT NULL,
  `cl_hb_validade` varchar(10) NOT NULL,
  `cl_estado_emissor` varchar(20) NOT NULL,
  PRIMARY KEY (`cl_id`),
  UNIQUE KEY `cl_rg` (`cl_rg`),
  UNIQUE KEY `cl_email` (`cl_email`),
  UNIQUE KEY `cl_hb_num_2` (`cl_hb_num`),
  UNIQUE KEY `cl_id` (`cl_id`),
  UNIQUE KEY `cl_cpf` (`cl_cpf`),
  KEY `cl_hb_validade` (`cl_hb_validade`),
  KEY `cl_hb_num` (`cl_hb_num`),
  KEY `cl_code` (`cl_cpf`,`cl_nome`,`cl_rg`,`cl_email`,`cl_telefone`,`cl_nascimento`,`cl_sexo`,`cl_hb_num`,`cl_hb_validade`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`cl_id`, `cl_cpf`, `cl_nome`, `cl_rg`, `cl_email`, `cl_telefone`, `cl_nascimento`, `cl_sexo`, `cl_hb_num`, `cl_hb_validade`, `cl_estado_emissor`) VALUES
(2, '36996325698', 'RENAN', '213221321423', 'er@er.com', '1125874563', '05/12/2018', 'M', '36525485244', '22/05/1009', 'SSP/SC'),
(8, '3699632569', 'JOAO', '13221321423', 'er@euur.com', '1125874563', '22/05/1009', 'M', '36525485', '05/12/2018', 'SSP/SP'),
(9, '12345678958', 'JEFF', '1234568982', 'jj@kok.com', '11925416699', '28/12/2019', 'M', '2585858965', '21/07/2005', 'SSP/SP'),
(10, '326.698.741-52', 'PRISCILA PANJOTA', '98.542.325-9', 'pri.jota@uol.com.br', '(11)2587-4125', '08/21/2004', 'F', '55875542123', '03/26/2016', 'SSP/AC'),
(11, '634.154.645-33', 'ROBERTA ALCANTRA', '32.415.643-5', 'rob-alc@hotmail.com', '(11)2854-7628', '08/18/2016', 'F', '4871651569498', '04/14/2015', 'SSP/AC'),
(12, '765.354.678-95', 'JOSE NOGUEIRA', '43.323.543-5', 'j.nog@bol.com.br', '(11)5346-7231', '11/30/2015', 'M', '423432532432', '11/01/2015', 'SSP/SC');

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimo`
--

CREATE TABLE IF NOT EXISTS `emprestimo` (
  `em_id` int(11) NOT NULL AUTO_INCREMENT,
  `em_id_cliente` int(20) NOT NULL,
  `em_id_automovel` int(20) NOT NULL,
  `em_gps` int(1) NOT NULL,
  `em_cadeira_bebe` int(1) NOT NULL,
  `em_motorista` int(1) NOT NULL,
  `em_tipo_tarifa` varchar(20) NOT NULL,
  `em_valor_tarifa` int(10) NOT NULL,
  `em_dt_locacao` varchar(20) NOT NULL,
  `em_lc_locacao` varchar(20) NOT NULL,
  `em_dt_devolucao` varchar(20) NOT NULL,
  `em_lc_devolucao` varchar(20) NOT NULL,
  `em_tipo_pagamento` varchar(20) NOT NULL,
  `em_status` int(2) NOT NULL,
  PRIMARY KEY (`em_id`),
  UNIQUE KEY `em_cod` (`em_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Extraindo dados da tabela `emprestimo`
--

INSERT INTO `emprestimo` (`em_id`, `em_id_cliente`, `em_id_automovel`, `em_gps`, `em_cadeira_bebe`, `em_motorista`, `em_tipo_tarifa`, `em_valor_tarifa`, `em_dt_locacao`, `em_lc_locacao`, `em_dt_devolucao`, `em_lc_devolucao`, `em_tipo_pagamento`, `em_status`) VALUES
(15, 2, 12, 0, 1, 0, 'KM Livre', 130, '11/12/2015', '2', '11/26/2015', '17', 'credito', 0),
(16, 2, 4, 1, 0, 0, 'KM Controlado', 22, '11/04/2015', '1', '11/11/2015', '19', 'credito', 0),
(18, 2, 9, 1, 0, 0, 'KM Controlado', 70, '11/04/2015', '2', '11/23/2015', '8', 'credito', 0),
(19, 9, 4, 0, 1, 0, 'KM Controlado', 22, '11/16/2015', '19', '11/25/2015', '1', 'debito', 0),
(20, 9, 10, 0, 1, 0, 'KM Controlado', 120, '11/27/2015', '1', '11/30/2015', '26', 'credito', 0),
(21, 9, 13, 0, 1, 0, 'KM Livre', 60, '11/11/2015', '7', '11/30/2015', '26', 'debito', 0),
(22, 9, 12, 0, 1, 0, 'KM Livre', 130, '11/06/2015', '17', '11/20/2015', '26', 'credito', 0),
(23, 11, 4, 1, 0, 0, 'KM Controlado', 22, '11/12/2015', '26', '11/30/2015', '20', 'CREDITO', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `us_id` int(11) NOT NULL AUTO_INCREMENT,
  `us_nome` varchar(20) NOT NULL,
  `us_usuario` varchar(50) NOT NULL,
  `us_senha` varchar(50) NOT NULL,
  `us_perfil` int(2) NOT NULL,
  PRIMARY KEY (`us_id`),
  UNIQUE KEY `usuario` (`us_usuario`),
  UNIQUE KEY `id` (`us_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`us_id`, `us_nome`, `us_usuario`, `us_senha`, `us_perfil`) VALUES
(1, 'renan', 'renan', '1DB68D9861E914B9A2DC65CA868C6D1F', 1),
(2, 'larissa', 'larissa', 'D4917CD4CEDAE16417CFDDB3CE292E45', 2),
(3, 'eiglimar', 'eiglimar', 'CC3DDB137416642CFAE7D2FDA2984DA5', 1),
(4, 'teste', 'teste', '36fa29f7cf0dc6d1af2b3c706a33426d', 2),
(5, 'Joelma', 'jojo', '7510D498F23F5815D3376EA7BAD64E29', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
