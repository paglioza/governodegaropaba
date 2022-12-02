-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 02-Dez-2022 às 12:38
-- Versão do servidor: 5.7.36
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `kenta`
--
CREATE DATABASE IF NOT EXISTS `kenta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kenta`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

DROP TABLE IF EXISTS `agenda`;
CREATE TABLE IF NOT EXISTS `agenda` (
  `entrevistado_id` int(11) NOT NULL,
  `entrevistador_id` int(11) NOT NULL,
  `data_agendamento` date NOT NULL,
  `hora` time NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `documentos`
--

DROP TABLE IF EXISTS `documentos`;
CREATE TABLE IF NOT EXISTS `documentos` (
  `entrevistado_id` int(11) NOT NULL,
  `documento` varchar(50) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `caminho` varchar(50) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `cod` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `data_nascimrnto` date NOT NULL,
  PRIMARY KEY (`cod`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `employee`
--

INSERT INTO `employee` (`cod`, `nome`, `cpf`, `data_nascimrnto`) VALUES
(1, 'LUIS', '293', '1958-12-13'),
(2, 'Marcia', '234', '1964-01-31'),
(3, 'FILIPE', '456293', '1985-07-30'),
(4, 'REBECA', '23478', '1989-09-10'),
(5, 'CALEBE', '456290', '1989-09-15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrevista`
--

DROP TABLE IF EXISTS `entrevista`;
CREATE TABLE IF NOT EXISTS `entrevista` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entrevistado_id` int(11) NOT NULL,
  `entrevistador_id` int(11) NOT NULL,
  `parecer` text NOT NULL,
  `agenda_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrevistado`
--

DROP TABLE IF EXISTS `entrevistado`;
CREATE TABLE IF NOT EXISTS `entrevistado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrevistador`
--

DROP TABLE IF EXISTS `entrevistador`;
CREATE TABLE IF NOT EXISTS `entrevistador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
