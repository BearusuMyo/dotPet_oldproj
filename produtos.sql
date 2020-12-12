-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Dez-2020 às 04:27
-- Versão do servidor: 10.4.16-MariaDB
-- versão do PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `produtos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `estabelecimentos`
--

CREATE TABLE `estabelecimentos` (
  `est_id` int(11) NOT NULL,
  `cnpj` varchar(52) NOT NULL,
  `nome` varchar(52) NOT NULL,
  `endereço` varchar(125) NOT NULL,
  `bairro` varchar(52) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `cep` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `estabelecimentos`
--

INSERT INTO `estabelecimentos` (`est_id`, `cnpj`, `nome`, `endereço`, `bairro`, `cidade`, `cep`) VALUES
(10, '090909090909', 'Casas Baia', 'Rua 1', 'Setro', 'Caiba', '69073070'),
(20, '9090909090', 'Ricardo Electro', 'Rua 7', 'Compensado', 'Panaos', '69045444');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `ID` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL,
  `valor` decimal(10,0) NOT NULL,
  `peso` decimal(10,0) NOT NULL,
  `volume` decimal(10,0) NOT NULL,
  `imposto` decimal(10,0) NOT NULL,
  `estabelecimento_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`ID`, `nome`, `valor`, `peso`, `volume`, `imposto`, `estabelecimento_id`) VALUES
(1, 'Gordura vegetal', '35', '102', '5', '10', 20);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `estabelecimentos`
--
ALTER TABLE `estabelecimentos`
  ADD PRIMARY KEY (`est_id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `estabelecimento_id` (`estabelecimento_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`estabelecimento_id`) REFERENCES `estabelecimentos` (`est_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
