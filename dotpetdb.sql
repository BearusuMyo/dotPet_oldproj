-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Nov-2019 às 00:43
-- Versão do servidor: 10.1.36-MariaDB
-- versão do PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dotpetdb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `userid` int(11) NOT NULL,
  `tx_nome` varchar(200) NOT NULL,
  `tx_email` varchar(200) NOT NULL,
  `tx_datanasc` date NOT NULL,
  `tx_ende` varchar(200) NOT NULL,
  `tx_telefone` int(10) NOT NULL,
  `tx_user` varchar(20) NOT NULL,
  `tx_senha` varchar(20) NOT NULL,
  `tx_passconf` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`userid`, `tx_nome`, `tx_email`, `tx_datanasc`, `tx_ende`, `tx_telefone`, `tx_user`, `tx_senha`, `tx_passconf`) VALUES
(1, 'stevevevev', 'assd@ssdadasd', '0000-00-00', 'sdfdsffdsfsfdsf', 343434343, 'steve', 'hacker', 'hacker'),
(13, '', '', '0000-00-00', '', 0, 'aabnbv', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `tx_user` (`tx_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
