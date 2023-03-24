-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: Mar 24, 2023 as 03:02 PM
-- Versão do Servidor: 5.1.44
-- Versão do PHP: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `DATADRIVEN_TRANSACIONAL`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `AREAS`
--

CREATE TABLE IF NOT EXISTS `AREAS` (
  `COD_AREA` int(11) NOT NULL AUTO_INCREMENT,
  `NOME_AREA` char(32) NOT NULL,
  UNIQUE KEY `COD_AREA` (`COD_AREA`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Extraindo dados da tabela `AREAS`
--

INSERT INTO `AREAS` (`COD_AREA`, `NOME_AREA`) VALUES
(1, 'Administrativo e Financeiro'),
(2, 'Produção'),
(3, 'Marketing e Vendas'),
(4, 'Tecnologia'),
(5, 'Diretoria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `CLIENTES`
--

CREATE TABLE IF NOT EXISTS `CLIENTES` (
  `COD_CLIENTE` int(11) NOT NULL AUTO_INCREMENT,
  `NOME_CLIENTE` char(32) NOT NULL,
  UNIQUE KEY `COD_CLIENTE` (`COD_CLIENTE`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Extraindo dados da tabela `CLIENTES`
--

INSERT INTO `CLIENTES` (`COD_CLIENTE`, `NOME_CLIENTE`) VALUES
(1, 'NexaTech'),
(2, 'SilverPeak Solutions'),
(3, 'QuantumLeap Consulting'),
(4, 'Zenith Enterprises'),
(5, 'NovoCore Innovations'),
(6, 'BlueHorizon Technologies'),
(7, 'StellarEdge Solutions'),
(8, 'PeakPerformance Partners'),
(9, 'Skyline Industries'),
(10, 'Optimum Dynamics');

-- --------------------------------------------------------

--
-- Estrutura da tabela `DESPESAS`
--

CREATE TABLE IF NOT EXISTS `DESPESAS` (
  `COD_DESPESA` int(11) NOT NULL AUTO_INCREMENT,
  `NOME_DESPESA` char(32) NOT NULL,
  `DATA` date NOT NULL,
  `VALOR` decimal(10,2) NOT NULL,
  `COD_AREA` int(11) NOT NULL,
  UNIQUE KEY `COD_DESPESA_2` (`COD_DESPESA`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Extraindo dados da tabela `DESPESAS`
--

INSERT INTO `DESPESAS` (`COD_DESPESA`, `NOME_DESPESA`, `DATA`, `VALOR`, `COD_AREA`) VALUES
(1, 'Despesas Gerais', '2022-01-03', 1110.00, 1),
(2, 'Despesas Gerais', '2022-01-07', 1935.00, 4),
(3, 'Despesas Gerais', '2022-01-11', 3521.00, 1),
(4, 'Despesas Gerais', '2022-01-15', 3689.00, 1),
(5, 'Despesas Gerais', '2022-01-19', 3227.00, 4),
(6, 'Despesas Gerais', '2022-01-23', 3658.00, 4),
(7, 'Despesas Gerais', '2022-01-27', 1763.00, 3),
(8, 'Despesas Gerais', '2022-01-31', 3615.00, 3),
(9, 'Despesas Gerais', '2022-02-04', 1810.00, 3),
(10, 'Despesas Gerais', '2022-02-08', 3996.00, 1),
(11, 'Despesas Gerais', '2022-02-12', 3496.00, 4),
(12, 'Despesas Gerais', '2022-02-16', 3282.00, 5),
(13, 'Despesas Gerais', '2022-02-20', 2835.00, 1),
(14, 'Despesas Gerais', '2022-02-24', 3715.00, 1),
(15, 'Despesas Gerais', '2022-02-28', 1399.00, 5),
(16, 'Despesas Gerais', '2022-03-04', 2507.00, 3),
(17, 'Despesas Gerais', '2022-03-08', 3544.00, 3),
(18, 'Despesas Gerais', '2022-03-12', 1961.00, 5),
(19, 'Despesas Gerais', '2022-03-16', 3066.00, 4),
(20, 'Despesas Gerais', '2022-03-20', 1689.00, 1),
(21, 'Despesas Gerais', '2022-03-24', 2067.00, 4),
(22, 'Despesas Gerais', '2022-03-28', 3489.00, 4),
(23, 'Despesas Gerais', '2022-04-01', 1819.00, 3),
(24, 'Despesas Gerais', '2022-04-05', 2171.00, 4),
(25, 'Despesas Gerais', '2022-04-09', 3255.00, 5),
(26, 'Despesas Gerais', '2022-04-13', 2684.00, 4),
(27, 'Despesas Gerais', '2022-04-17', 2516.00, 1),
(28, 'Despesas Gerais', '2022-04-21', 3856.00, 5),
(29, 'Despesas Gerais', '2022-04-25', 1915.00, 5),
(30, 'Despesas Gerais', '2022-04-29', 273400.00, 2),
(31, 'Despesas Gerais', '2022-05-03', 1549.00, 3),
(32, 'Despesas Gerais', '2022-05-07', 2591.00, 1),
(33, 'Despesas Gerais', '2022-05-11', 203400.00, 2),
(34, 'Despesas Gerais', '2022-05-15', 334200.00, 2),
(35, 'Despesas Gerais', '2022-05-19', 1205.00, 5),
(36, 'Despesas Gerais', '2022-05-23', 3062.00, 3),
(37, 'Despesas Gerais', '2022-05-27', 2698.00, 1),
(38, 'Despesas Gerais', '2022-05-31', 1250.00, 5),
(39, 'Despesas Gerais', '2022-06-04', 2127.00, 3),
(40, 'Despesas Gerais', '2022-06-08', 234200.00, 2),
(41, 'Despesas Gerais', '2022-06-12', 1364.00, 3),
(42, 'Despesas Gerais', '2022-06-16', 2708.00, 3),
(43, 'Despesas Gerais', '2022-06-20', 3895.00, 3),
(44, 'Despesas Gerais', '2022-06-24', 1140.00, 3),
(45, 'Despesas Gerais', '2022-06-28', 3489.00, 5),
(46, 'Despesas Gerais', '2022-07-02', 2328.00, 5),
(47, 'Despesas Gerais', '2022-07-06', 3232.00, 3),
(48, 'Despesas Gerais', '2022-07-10', 1068.00, 3),
(49, 'Despesas Gerais', '2022-07-14', 150100.00, 2),
(50, 'Despesas Gerais', '2022-07-18', 1520.00, 4),
(51, 'Despesas Gerais', '2022-07-22', 210500.00, 2),
(52, 'Despesas Gerais', '2022-07-26', 233600.00, 2),
(53, 'Despesas Gerais', '2022-07-30', 2291.00, 1),
(54, 'Despesas Gerais', '2022-08-03', 324800.00, 2),
(55, 'Despesas Gerais', '2022-08-07', 3990.00, 1),
(56, 'Despesas Gerais', '2022-08-11', 2200.00, 5),
(57, 'Despesas Gerais', '2022-08-15', 398100.00, 2),
(58, 'Despesas Gerais', '2022-08-19', 2394.00, 5),
(59, 'Despesas Gerais', '2022-08-23', 1311.00, 5),
(60, 'Despesas Gerais', '2022-08-27', 1061.00, 3),
(61, 'Despesas Gerais', '2022-08-31', 192900.00, 2),
(62, 'Despesas Gerais', '2022-09-04', 2559.00, 3),
(63, 'Despesas Gerais', '2022-09-08', 228100.00, 2),
(64, 'Despesas Gerais', '2022-09-12', 3662.00, 1),
(65, 'Despesas Gerais', '2022-09-16', 2799.00, 1),
(66, 'Despesas Gerais', '2022-09-20', 2972.00, 1),
(67, 'Despesas Gerais', '2022-09-24', 3107.00, 3),
(68, 'Despesas Gerais', '2022-09-28', 3955.00, 3),
(69, 'Despesas Gerais', '2022-10-02', 248500.00, 2),
(70, 'Despesas Gerais', '2022-10-06', 2415.00, 5),
(71, 'Despesas Gerais', '2022-10-10', 204800.00, 2),
(72, 'Despesas Gerais', '2022-10-14', 287100.00, 2),
(73, 'Despesas Gerais', '2022-10-18', 203300.00, 2),
(74, 'Despesas Gerais', '2022-10-22', 2260.00, 3),
(75, 'Despesas Gerais', '2022-10-26', 3568.00, 3),
(76, 'Despesas Gerais', '2022-10-30', 2924.00, 5),
(77, 'Despesas Gerais', '2022-11-03', 1413.00, 5),
(78, 'Despesas Gerais', '2022-11-07', 3249.00, 3),
(79, 'Despesas Gerais', '2022-11-11', 2644.00, 3),
(80, 'Despesas Gerais', '2022-11-15', 2479.00, 4),
(81, 'Despesas Gerais', '2022-11-19', 3507.00, 4),
(82, 'Despesas Gerais', '2022-11-23', 1736.00, 1),
(83, 'Despesas Gerais', '2022-11-27', 1440.00, 4),
(84, 'Despesas Gerais', '2022-12-01', 1322.00, 1),
(85, 'Despesas Gerais', '2022-12-05', 1460.00, 5),
(86, 'Despesas Gerais', '2022-12-09', 2886.00, 5),
(87, 'Despesas Gerais', '2022-12-13', 1229.00, 3),
(88, 'Despesas Gerais', '2022-12-17', 2695.00, 1),
(89, 'Despesas Gerais', '2022-12-21', 2418.00, 4),
(90, 'Despesas Gerais', '2022-12-25', 2070.00, 3),
(91, 'Despesas Gerais', '2022-12-29', 2323.00, 5),
(92, 'Despesas Gerais', '2023-01-02', 116000.00, 2),
(93, 'Despesas Gerais', '2023-01-06', 3928.00, 5),
(94, 'Despesas Gerais', '2023-01-10', 335300.00, 2),
(95, 'Despesas Gerais', '2023-01-14', 1936.00, 3),
(96, 'Despesas Gerais', '2023-01-18', 2186.00, 3),
(97, 'Despesas Gerais', '2023-01-22', 3577.00, 5),
(98, 'Despesas Gerais', '2023-01-26', 2171.00, 5),
(99, 'Despesas Gerais', '2023-01-30', 1897.00, 5),
(100, 'Despesas Gerais', '2023-01-30', 3049.00, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ESCRITORIOS`
--

CREATE TABLE IF NOT EXISTS `ESCRITORIOS` (
  `DATA` date NOT NULL,
  `COD_ESCRITORIO` int(11) NOT NULL,
  `NOME_ESCRITORIO` char(32) NOT NULL,
  `AREA_M2` int(11) NOT NULL,
  `VALOR_ALUGUEL` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ESCRITORIOS`
--

INSERT INTO `ESCRITORIOS` (`DATA`, `COD_ESCRITORIO`, `NOME_ESCRITORIO`, `AREA_M2`, `VALOR_ALUGUEL`) VALUES
('2022-01-01', 1, 'Fabrica', 2000, 35000.00),
('2022-02-01', 1, 'Fabrica', 2000, 35000.00),
('2022-03-01', 1, 'Fabrica', 2000, 35000.00),
('2022-04-01', 1, 'Fabrica', 2000, 35000.00),
('2022-05-01', 1, 'Fabrica', 2000, 35000.00),
('2022-06-01', 1, 'Fabrica', 2000, 35000.00),
('2022-07-01', 1, 'Fabrica', 2000, 35000.00),
('2022-08-01', 1, 'Fabrica', 2000, 35000.00),
('2022-09-01', 1, 'Fabrica', 2000, 35000.00),
('2022-10-01', 1, 'Fabrica', 2000, 35000.00),
('2022-11-01', 1, 'Fabrica', 2000, 35000.00),
('2022-12-01', 1, 'Fabrica', 2000, 35000.00),
('2022-01-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-02-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-03-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-04-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-05-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-06-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-07-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-08-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-09-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-10-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-11-01', 2, 'Escritorio Central', 250, 16000.00),
('2022-12-01', 2, 'Escritorio Central', 250, 16000.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `FUNCIONARIOS`
--

CREATE TABLE IF NOT EXISTS `FUNCIONARIOS` (
  `DATA` date NOT NULL,
  `COD_FUNCIONARIO` int(11) NOT NULL,
  `NOME_FUNCIONARIO` char(32) NOT NULL,
  `CARGO` char(32) NOT NULL,
  `SALARIO` decimal(10,2) NOT NULL,
  `COD_AREA` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `FUNCIONARIOS`
--

INSERT INTO `FUNCIONARIOS` (`DATA`, `COD_FUNCIONARIO`, `NOME_FUNCIONARIO`, `CARGO`, `SALARIO`, `COD_AREA`) VALUES
('2022-01-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-01-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-01-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-01-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-01-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-01-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-01-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-01-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-01-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-01-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-01-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-01-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-01-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-01-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-01-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-01-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-01-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-01-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-01-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-01-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-02-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-02-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-02-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-02-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-02-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-02-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-02-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-02-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-02-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-02-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-02-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-02-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-02-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-02-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-02-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-02-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-02-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-02-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-02-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-02-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-03-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-03-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-03-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-03-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-03-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-03-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-03-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-03-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-03-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-03-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-03-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-03-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-03-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-03-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-03-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-03-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-03-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-03-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-03-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-03-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-04-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-04-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-04-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-04-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-04-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-04-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-04-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-04-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-04-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-04-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-04-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-04-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-04-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-04-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-04-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-04-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-04-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-04-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-04-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-04-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-05-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-05-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-05-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-05-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-05-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-05-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-05-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-05-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-05-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-05-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-05-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-05-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-05-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-05-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-05-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-05-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-05-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-05-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-05-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-05-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-06-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-06-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-06-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-06-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-06-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-06-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-06-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-06-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-06-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-06-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-06-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-06-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-06-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-06-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-06-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-06-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-06-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-06-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-06-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-06-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-07-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-07-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-07-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-07-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-07-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-07-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-07-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-07-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-07-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-07-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-07-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-07-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-07-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-07-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-07-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-07-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-07-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-07-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-07-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-07-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-08-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-08-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-08-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-08-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-08-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-08-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-08-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-08-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-08-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-08-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-08-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-08-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-08-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-08-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-08-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-08-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-08-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-08-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-08-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-08-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-09-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-09-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-09-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-09-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-09-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-09-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-09-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-09-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-09-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-09-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-09-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-09-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-09-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-09-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-09-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-09-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-09-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-09-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-09-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-09-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-10-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-10-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-10-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-10-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-10-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-10-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-10-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-10-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-10-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-10-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-10-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-10-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-10-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-10-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-10-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-10-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-10-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-10-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-10-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-10-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-11-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-11-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-11-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-11-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-11-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-11-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-11-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-11-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-11-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-11-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-11-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-11-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-11-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-11-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-11-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-11-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-11-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-11-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-11-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-11-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4),
('2022-12-01', 1, 'Emily Santos', 'Diretor Administrativo e Finance', 20833.00, 1),
('2022-12-01', 2, 'Gabriel Costa', 'Diretor Produ??o', 20833.00, 2),
('2022-12-01', 3, 'Sofia Pereira', 'Diretor Marketing e Vendas', 20833.00, 3),
('2022-12-01', 4, 'Rafael Oliveira', 'Diretor Tecnologia', 20833.00, 4),
('2022-12-01', 5, 'Isabela Alves', 'Presidente', 29166.00, 5),
('2022-12-01', 6, 'Lucas Fernandes', 'Administrativo', 2000.00, 1),
('2022-12-01', 7, 'Ana Paula Souza', 'Administrativo', 2000.00, 1),
('2022-12-01', 8, 'Marcos Silva', 'Administrativo', 2000.00, 1),
('2022-12-01', 9, 'Bruna Ribeiro', 'Produ??o', 1500.00, 2),
('2022-12-01', 10, 'Thiago Castro', 'Produ??o', 1500.00, 2),
('2022-12-01', 11, 'Mariana Rocha', 'Produ??o', 1500.00, 2),
('2022-12-01', 12, 'Gustavo Martins', 'Produ??o', 1500.00, 2),
('2022-12-01', 13, 'Leticia Moreira', 'Produ??o', 1500.00, 2),
('2022-12-01', 14, 'Alexandre Lima', 'Produ??o', 1500.00, 2),
('2022-12-01', 15, 'Carolina Garcia', 'Marketing', 1833.00, 3),
('2022-12-01', 16, 'Andr? Santos', 'Vendas', 1833.00, 3),
('2022-12-01', 17, 'Juliana Ferreira', 'Analista de Sistemas', 3166.00, 4),
('2022-12-01', 18, 'Pedro Rodrigues', 'Analista de Sistemas', 3166.00, 4),
('2022-12-01', 19, 'Fernanda Vieira', 'Analista de Sistemas', 3166.00, 4),
('2022-12-01', 20, 'Leonardo Barbosa', 'Analista de Sistemas', 3166.00, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `LINHA_PRODUTOS`
--

CREATE TABLE IF NOT EXISTS `LINHA_PRODUTOS` (
  `COD_LINHA_PRODUTO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME_LINHA_PRODUTO` char(32) NOT NULL,
  PRIMARY KEY (`COD_LINHA_PRODUTO`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `LINHA_PRODUTOS`
--

INSERT INTO `LINHA_PRODUTOS` (`COD_LINHA_PRODUTO`, `NOME_LINHA_PRODUTO`) VALUES
(1, 'Sabonete'),
(2, 'Shampoo'),
(3, 'Lenço Umedecido'),
(4, 'Creme Dental');

-- --------------------------------------------------------

--
-- Estrutura da tabela `PRODUTOS`
--

CREATE TABLE IF NOT EXISTS `PRODUTOS` (
  `COD_PRODUTO` int(11) NOT NULL AUTO_INCREMENT,
  `NOME_PRODUTO` char(32) NOT NULL,
  `COD_LINHA_PRODUTO` int(11) NOT NULL,
  `VALOR` decimal(10,2) NOT NULL,
  UNIQUE KEY `COD_PRODUTO` (`COD_PRODUTO`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Extraindo dados da tabela `PRODUTOS`
--

INSERT INTO `PRODUTOS` (`COD_PRODUTO`, `NOME_PRODUTO`, `COD_LINHA_PRODUTO`, `VALOR`) VALUES
(1, 'Lavanda Relaxante', 1, 7.20),
(2, 'Limão Refrescante', 1, 6.40),
(3, 'Rosas Silvestres', 1, 13.02),
(4, 'Côco Tropical', 1, 9.98),
(5, 'Cabelos de Sereia', 2, 18.30),
(6, 'Aloe Vera Nutritivo', 2, 14.90),
(7, 'Camomila Iluminadora', 2, 19.90),
(8, 'Óleo de Argan Hidratante', 2, 21.35),
(9, 'FreshCare Lenços Umedecidos', 3, 18.10),
(10, 'Bebê Conforto Lenços Umedecidos', 3, 14.50),
(11, 'Sorriso de Pérolas', 4, 3.45),
(12, 'Branqueador Intenso', 4, 5.56),
(13, 'FreshMint Refrescante', 4, 3.46),
(14, 'Sensibilidade Zero', 4, 7.99);

-- --------------------------------------------------------

--
-- Estrutura da tabela `VENDAS`
--

CREATE TABLE IF NOT EXISTS `VENDAS` (
  `COD_VENDA` int(11) NOT NULL AUTO_INCREMENT,
  `COD_CLIENTE` int(11) NOT NULL,
  `DATA` date NOT NULL,
  `VALOR` decimal(10,2) NOT NULL,
  `COD_PRODUTO` int(11) NOT NULL,
  UNIQUE KEY `COD_VENDA` (`COD_VENDA`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Extraindo dados da tabela `VENDAS`
--

INSERT INTO `VENDAS` (`COD_VENDA`, `COD_CLIENTE`, `DATA`, `VALOR`, `COD_PRODUTO`) VALUES
(1, 9, '2022-01-03', 56929.00, 7),
(2, 7, '2022-01-07', 72383.00, 2),
(3, 10, '2022-01-11', 88468.00, 2),
(4, 10, '2022-01-15', 74343.00, 14),
(5, 9, '2022-01-19', 61591.00, 4),
(6, 4, '2022-01-23', 95642.00, 11),
(7, 7, '2022-01-27', 98288.00, 14),
(8, 6, '2022-01-31', 77931.00, 10),
(9, 7, '2022-02-04', 65555.00, 5),
(10, 5, '2022-02-08', 89976.00, 3),
(11, 4, '2022-02-12', 83920.00, 4),
(12, 5, '2022-02-16', 76571.00, 3),
(13, 5, '2022-02-20', 97600.00, 1),
(14, 6, '2022-02-24', 59901.00, 4),
(15, 7, '2022-02-28', 82005.00, 10),
(16, 8, '2022-03-04', 97401.00, 7),
(17, 2, '2022-03-08', 52551.00, 11),
(18, 3, '2022-03-12', 70052.00, 3),
(19, 9, '2022-03-16', 70542.00, 1),
(20, 3, '2022-03-20', 57530.00, 2),
(21, 3, '2022-03-24', 83419.00, 5),
(22, 4, '2022-03-28', 83940.00, 6),
(23, 3, '2022-04-01', 92698.00, 6),
(24, 7, '2022-04-05', 82042.00, 5),
(25, 9, '2022-04-09', 78717.00, 7),
(26, 10, '2022-04-13', 94247.00, 10),
(27, 6, '2022-04-17', 94540.00, 6),
(28, 6, '2022-04-21', 67179.00, 3),
(29, 6, '2022-04-25', 77564.00, 5),
(30, 9, '2022-04-29', 88197.00, 1),
(31, 3, '2022-05-03', 84151.00, 6),
(32, 8, '2022-05-07', 52381.00, 3),
(33, 8, '2022-05-11', 83206.00, 4),
(34, 4, '2022-05-15', 70322.00, 4),
(35, 2, '2022-05-19', 99686.00, 12),
(36, 5, '2022-05-23', 64751.00, 12),
(37, 6, '2022-05-27', 61311.00, 6),
(38, 7, '2022-05-31', 95230.00, 12),
(39, 10, '2022-06-04', 84908.00, 3),
(40, 10, '2022-06-08', 92995.00, 12),
(41, 8, '2022-06-12', 86824.00, 12),
(42, 8, '2022-06-16', 60296.00, 10),
(43, 4, '2022-06-20', 66308.00, 11),
(44, 2, '2022-06-24', 64431.00, 14),
(45, 8, '2022-06-28', 84817.00, 10),
(46, 2, '2022-07-02', 97931.00, 7),
(47, 1, '2022-07-06', 62770.00, 1),
(48, 9, '2022-07-10', 56183.00, 10),
(49, 8, '2022-07-14', 54664.00, 12),
(50, 6, '2022-07-18', 90275.00, 9),
(51, 10, '2022-07-22', 62447.00, 5),
(52, 3, '2022-07-26', 71100.00, 13),
(53, 2, '2022-07-30', 66302.00, 7),
(54, 3, '2022-08-03', 82805.00, 3),
(55, 8, '2022-08-07', 62843.00, 12),
(56, 2, '2022-08-11', 56481.00, 4),
(57, 3, '2022-08-15', 92655.00, 4),
(58, 2, '2022-08-19', 83974.00, 11),
(59, 1, '2022-08-23', 64835.00, 5),
(60, 10, '2022-08-27', 94034.00, 7),
(61, 9, '2022-08-31', 97189.00, 12),
(62, 8, '2022-09-04', 52971.00, 13),
(63, 3, '2022-09-08', 99467.00, 13),
(64, 3, '2022-09-12', 54332.00, 12),
(65, 6, '2022-09-16', 62996.00, 12),
(66, 2, '2022-09-20', 56327.00, 1),
(67, 4, '2022-09-24', 64163.00, 11),
(68, 6, '2022-09-28', 83255.00, 4),
(69, 6, '2022-10-02', 59694.00, 2),
(70, 5, '2022-10-06', 62947.00, 8),
(71, 6, '2022-10-10', 87651.00, 1),
(72, 5, '2022-10-14', 92309.00, 4),
(73, 9, '2022-10-18', 68047.00, 12),
(74, 4, '2022-10-22', 72986.00, 1),
(75, 2, '2022-10-26', 80504.00, 10),
(76, 5, '2022-10-30', 59983.00, 5),
(77, 4, '2022-11-03', 62324.00, 11),
(78, 10, '2022-11-07', 89177.00, 14),
(79, 4, '2022-11-11', 56475.00, 3),
(80, 9, '2022-11-15', 90370.00, 4),
(81, 8, '2022-11-19', 83201.00, 5),
(82, 1, '2022-11-23', 83147.00, 2),
(83, 2, '2022-11-27', 62925.00, 5),
(84, 1, '2022-12-01', 91085.00, 9),
(85, 4, '2022-12-05', 94881.00, 11),
(86, 3, '2022-12-09', 52947.00, 12),
(87, 4, '2022-12-13', 66863.00, 4),
(88, 9, '2022-12-17', 64383.00, 13),
(89, 3, '2022-12-21', 82467.00, 2),
(90, 6, '2022-12-25', 54795.00, 4),
(91, 1, '2022-12-29', 92015.00, 1),
(92, 1, '2023-01-02', 61542.00, 7),
(93, 9, '2023-01-06', 86532.00, 13),
(94, 1, '2023-01-10', 56653.00, 7),
(95, 9, '2023-01-14', 77287.00, 10),
(96, 9, '2023-01-18', 79830.00, 7),
(97, 6, '2023-01-22', 81695.00, 10),
(98, 5, '2023-01-26', 79539.00, 7),
(99, 10, '2023-01-30', 98594.00, 8),
(100, 4, '2023-01-30', 53717.00, 9);
