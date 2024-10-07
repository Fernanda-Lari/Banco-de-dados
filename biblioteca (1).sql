-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Out-2024 às 22:47
-- Versão do servidor: 10.4.25-MariaDB
-- versão do PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `emprestimos`
--

CREATE TABLE `emprestimos` (
  `CodEmprestimo` int(11) NOT NULL,
  `Data_Emprestimo` date DEFAULT NULL,
  `Data_Devolução` date DEFAULT NULL,
  `CodLivro` int(11) DEFAULT NULL,
  `CodLeitor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `emprestimos`
--

INSERT INTO `emprestimos` (`CodEmprestimo`, `Data_Emprestimo`, `Data_Devolução`, `CodLivro`, `CodLeitor`) VALUES
(1, '2020-06-14', '2020-06-16', 1, 1),
(2, '2020-11-15', '2020-12-15', 2, 2),
(3, '2020-10-25', '2020-11-25', 6, 4),
(4, '2020-10-22', '2020-11-25', 4, 3),
(5, '2021-07-25', '2021-08-25', 1, 5),
(6, '2021-10-03', '2020-11-03', 3, 8),
(7, '2021-11-03', '2021-12-03', 14, 8),
(8, '2022-12-13', '2023-01-13', 5, 7),
(9, '2023-02-18', '2023-03-18', 8, 6),
(10, '2023-02-23', '2023-03-23', 10, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `leitores`
--

CREATE TABLE `leitores` (
  `CodLeitor` int(11) NOT NULL,
  `Nome` varchar(255) DEFAULT NULL,
  `DtNasc` date DEFAULT NULL,
  `Celular` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RA` int(11) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `NumEnd` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) DEFAULT NULL,
  `CidadeUF` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `leitores`
--

INSERT INTO `leitores` (`CodLeitor`, `Nome`, `DtNasc`, `Celular`, `Email`, `RA`, `Endereco`, `NumEnd`, `Bairro`, `CidadeUF`) VALUES
(1, 'João Silva Sauro', '2001-04-01', '(11)98788-2311', 'joao@hotmail.com', 631113101, 'Rua Boa Esperança', '201', 'Janga', 'Paulista/PE'),
(2, 'Maria Silva Nascimento', '2011-07-21', '(11)98788-2311', 'maria@hotmail.com', 631113102, 'Rua da Vovó', '101', 'MAranguape I', 'Paulista/PE'),
(3, 'Maria Fernanda', '2014-10-06', '81998423461', 'marinanda@gmail.com', 631113103, 'Rua Boa Vida', '51', 'Janga', 'Paulista/PE'),
(4, 'Julia', '2007-06-14', '81997423461', 'juliaa1@gmail.com', 631113104, 'Rua Tranquila Vida', '52', 'Maria Farinha', 'Paulista/PE'),
(5, 'Rayssa', '2006-10-24', '81996423461', 'yssaia@hotmail.com', 631113105, 'Rua São Paulo', '55', 'Pau Amarelo', 'Paulista/PE'),
(6, 'Milena', '2005-12-12', '81995423461', 'mmilenda@gmail.com', 631113106, 'Rua Luiz de Souza', '521', 'Janga', 'Paulista/PE'),
(7, 'Otniel', '2004-04-28', '81994423461', 'silvaotniel@hotmail.com', 631113103, 'Rua Rosa Martina', '41', 'Maria Farinha', 'Paulista/PE'),
(8, 'Maria Fernanda', '2000-11-15', '81998423461', 'marinanda@gmail.com', 631113103, 'Rua Boa Vida', '11', 'Janga', 'Paulista/PE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `CodLivro` int(11) NOT NULL,
  `Titulo` varchar(255) DEFAULT NULL,
  `Autor` varchar(255) DEFAULT NULL,
  `Editora` varchar(255) DEFAULT NULL,
  `Sinopse` varchar(255) DEFAULT NULL,
  `AnoPublicacao` int(11) DEFAULT NULL,
  `Genero` varchar(255) DEFAULT NULL,
  `Paginas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`CodLivro`, `Titulo`, `Autor`, `Editora`, `Sinopse`, `AnoPublicacao`, `Genero`, `Paginas`) VALUES
(1, 'A cinco passos de você', 'Rachael Lippincott, Mikki Daughtry, Tobias Iaconis, Amanda Moura', '‎Alt', NULL, 2015, 'romance', 288),
(2, 'Cristianismo puro e simples', 'C.S Lewis', 'Thomas Nelson Brasil', NULL, 1997, 'Religioso', 287),
(3, '1984', ' George Orwell', ' Companhia das Letras', '', 1949, 'Distopia, Ficção Científica', 416),
(4, 'Dom Quixote', 'Miguel de Cervantes', 'Editora 34', '', 1605, 'Romance, aventura', 1200),
(5, 'Orgulho e Preconceito', 'Jane Austen', 'Martin Claret', '', 1813, 'Romance, Ficção histórica', 424),
(6, 'A Revolução dos Bichos', 'George Orwell', 'Companhia das Letras', '', 1945, 'Fábula, Sátira', 152),
(7, 'O Senhor dos Anéis: A Sociedade do Anel', 'J.R.R. Tolkien', 'HarperCollins Brasil', '', 1954, 'Fantasia, Aventura', 576),
(8, 'Cem Anos de Solidão', 'Gabriel García Márquez', 'Record', '', 1967, 'Realismo Mágico, Ficção Literária', 448),
(9, 'O Morro dos Ventos Uivantes', 'Emily Brontë', 'Martin Claret', '', 1847, 'Romance Gótico', 368),
(10, 'O Código Da Vinci', 'Dan Brown', 'Arqueiro', '', 2003, 'Suspense, Thriller', 480),
(11, 'O Alquimista', 'Paulo Coelho', 'HarperOne', '', 1988, 'Ficção Filosófica, Autoajuda', 208),
(12, 'O Sol é Para Todos', 'Harper Lee', 'José Olympio', '', 1960, 'Romance, Ficção Social', 364),
(13, 'A Menina que Roubava Livros', 'Markus Zusak', 'Intrínseca', '', 2005, 'Ficção Histórica, Guerra', 480),
(14, 'Frankenstein', 'Mary Shelley', 'Penguin Companhia', '', 1818, 'Ficção Científica, Terror', 288);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD PRIMARY KEY (`CodEmprestimo`),
  ADD KEY `CodLivro` (`CodLivro`),
  ADD KEY `CodLeitor` (`CodLeitor`);

--
-- Índices para tabela `leitores`
--
ALTER TABLE `leitores`
  ADD PRIMARY KEY (`CodLeitor`);

--
-- Índices para tabela `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`CodLivro`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  MODIFY `CodEmprestimo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `leitores`
--
ALTER TABLE `leitores`
  MODIFY `CodLeitor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `livros`
--
ALTER TABLE `livros`
  MODIFY `CodLivro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `emprestimos`
--
ALTER TABLE `emprestimos`
  ADD CONSTRAINT `emprestimos_ibfk_1` FOREIGN KEY (`CodLivro`) REFERENCES `livros` (`CodLivro`),
  ADD CONSTRAINT `emprestimos_ibfk_2` FOREIGN KEY (`CodLeitor`) REFERENCES `leitores` (`CodLeitor`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
