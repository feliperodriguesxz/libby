-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 27-Jun-2018 às 22:35
-- Versão do servidor: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_pokemon`
--
CREATE DATABASE IF NOT EXISTS `database_pokemon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `database_pokemon`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pokemon`
--

INSERT INTO `pokemon` (`id`, `name`) VALUES
(13, '433'),
(14, 'ZE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;--
-- Database: `dbteste`
--
CREATE DATABASE IF NOT EXISTS `dbteste` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbteste`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `MyGuests`
--

CREATE TABLE `MyGuests` (
  `id` int(11) NOT NULL,
  `firstname` varchar(40) NOT NULL,
  `lastname` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `MyGuests`
--

INSERT INTO `MyGuests` (`id`, `firstname`, `lastname`, `email`) VALUES
(1, 'John', 'Doe', 'john@example.com'),
(2, 'John', 'Doe', 'john@example.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MyGuests`
--
ALTER TABLE `MyGuests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `MyGuests`
--
ALTER TABLE `MyGuests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;--
-- Database: `desktop_pokemon`
--
CREATE DATABASE IF NOT EXISTS `desktop_pokemon` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `desktop_pokemon`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pokemon`
--

CREATE TABLE `pokemon` (
  `name` varchar(255) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '1',
  `hp` int(11) NOT NULL DEFAULT '0',
  `agility` int(11) NOT NULL DEFAULT '0',
  `attack` int(11) NOT NULL DEFAULT '0',
  `defense` int(11) NOT NULL DEFAULT '0',
  `specialAttack` int(11) NOT NULL DEFAULT '0',
  `specialDefense` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pokemon`
--

INSERT INTO `pokemon` (`name`, `level`, `hp`, `agility`, `attack`, `defense`, `specialAttack`, `specialDefense`) VALUES
('Pikachu', 25, 100, 80, 80, 80, 80, 80),
('Raichu', 12, 12, 12, 12, 12, 12, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`name`);
--
-- Database: `devmedia`
--
CREATE DATABASE IF NOT EXISTS `devmedia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `devmedia`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `identificador` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`identificador`, `nome`, `telefone`) VALUES
(1, 'ze', '10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`identificador`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `identificador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;--
-- Database: `event_manager`
--
CREATE DATABASE IF NOT EXISTS `event_manager` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `event_manager`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `campus`
--

CREATE TABLE `campus` (
  `idCampus` int(11) NOT NULL,
  `CampusName` varchar(100) NOT NULL,
  `CampusCity` varchar(100) NOT NULL,
  `CampusFantasyName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `campus`
--

INSERT INTO `campus` (`idCampus`, `CampusName`, `CampusCity`, `CampusFantasyName`) VALUES
(2, 'dfadf', 'dfadfsaddsfa', 'fsd'),
(3, 'dfadfsdfa', 'dfadfsaddsfa', 'fsdsdaf'),
(8, '1sdafsfsa', '444', '2222'),
(9, '555552222', '444', '333'),
(10, '1', '1', '1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipaments`
--

CREATE TABLE `equipaments` (
  `idEquipaments` int(11) NOT NULL,
  `EquipamentsName` varchar(200) NOT NULL,
  `EquipamentsType` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `equipaments`
--

INSERT INTO `equipaments` (`idEquipaments`, `EquipamentsName`, `EquipamentsType`) VALUES
(2, '34', 'Projetor'),
(3, '54', 'Notebook'),
(4, '5454', 'Projetor'),
(6, 'prooo', 'Projetor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `event`
--

CREATE TABLE `event` (
  `idEvent` int(11) NOT NULL,
  `EventName` varchar(100) NOT NULL,
  `EventDate` date NOT NULL,
  `EventClass` varchar(100) NOT NULL,
  `EventCampus` varchar(100) NOT NULL,
  `EventResponsible` varchar(100) NOT NULL,
  `EventTrainee` varchar(100) DEFAULT NULL,
  `EventHour` varchar(100) NOT NULL,
  `Class_idClass` int(11) NOT NULL,
  `Person_idPerson` int(11) NOT NULL,
  `Campus_idCampus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventequipament`
--

CREATE TABLE `eventequipament` (
  `idEventEquipament` int(11) NOT NULL,
  `idEvent` int(11) DEFAULT NULL,
  `idEquipament` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `person`
--

CREATE TABLE `person` (
  `idPerson` int(11) NOT NULL,
  `PersonName` varchar(100) DEFAULT NULL,
  `PersonRG` varchar(20) DEFAULT NULL,
  `PersonCPF` varchar(20) DEFAULT NULL,
  `PersonDateBorn` date DEFAULT NULL,
  `PersonPrivileges` tinyint(4) DEFAULT NULL,
  `PersonHourWork` varchar(100) DEFAULT NULL,
  `PersonEmail` varchar(45) NOT NULL,
  `PersonPassword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `place`
--

CREATE TABLE `place` (
  `idPlace` int(11) NOT NULL,
  `PlaceName` varchar(100) NOT NULL,
  `PlaceCampus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `type`
--

CREATE TABLE `type` (
  `idType` int(11) NOT NULL,
  `TypeName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`idCampus`);

--
-- Indexes for table `equipaments`
--
ALTER TABLE `equipaments`
  ADD PRIMARY KEY (`idEquipaments`),
  ADD KEY `typefk_idx` (`EquipamentsType`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`idEvent`),
  ADD KEY `fk_Event_Class1_idx` (`Class_idClass`),
  ADD KEY `fk_Event_Person1_idx` (`Person_idPerson`),
  ADD KEY `fk_Event_Campus1_idx` (`Campus_idCampus`);

--
-- Indexes for table `eventequipament`
--
ALTER TABLE `eventequipament`
  ADD PRIMARY KEY (`idEventEquipament`),
  ADD KEY `index2` (`idEvent`,`idEquipament`),
  ADD KEY `equipFk_idx` (`idEquipament`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`idPerson`),
  ADD UNIQUE KEY `PersonRG_UNIQUE` (`PersonRG`),
  ADD UNIQUE KEY `PersonCPF_UNIQUE` (`PersonCPF`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`idPlace`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `idCampus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `equipaments`
--
ALTER TABLE `equipaments`
  MODIFY `idEquipaments` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `idEvent` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `idPerson` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `idPlace` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `libby`
--
CREATE DATABASE IF NOT EXISTS `libby` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `libby`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `AUTOR`
--

CREATE TABLE `AUTOR` (
  `autCod` int(11) NOT NULL,
  `autNome` varchar(45) DEFAULT NULL,
  `autBio` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `AUTOR`
--

INSERT INTO `AUTOR` (`autCod`, `autNome`, `autBio`) VALUES
(1, '1', '1'),
(2, '2', '2'),
(3, '3', '3'),
(5, '5', '5'),
(51, '52', '53');

-- --------------------------------------------------------

--
-- Estrutura da tabela `CARTAO`
--

CREATE TABLE `CARTAO` (
  `cardCod` int(11) NOT NULL,
  `contaCod` int(11) NOT NULL,
  `cardNum` varchar(16) NOT NULL,
  `cardVal` varchar(20) NOT NULL COMMENT 'EXEMPLO: 05/20',
  `cardCVV` varchar(3) NOT NULL,
  `cardNomeImpresso` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `CARTAO`
--

INSERT INTO `CARTAO` (`cardCod`, `contaCod`, `cardNum`, `cardVal`, `cardCVV`, `cardNomeImpresso`) VALUES
(1, 1, 'teste cartao2', '10/10', '123', 'teste cartao'),
(5, 1, 'q', '10/10', 'q', 'q'),
(6, 1, 'qq', '10/10', 'q', 'qq'),
(8, 1, 'qqqqqq', '04/04', '123', 'qqqqqq'),
(9, 1, 'q1', '04/04', 'q11', 'q'),
(11, 1, 're', '01/01', '123', 're'),
(12, 1, 'yu', '10/10', 'yuy', 'yu'),
(13, 1, 'yuuu', '10/10', 'yuu', 'yuuu'),
(14, 30, 'n11 cartao', '11/11', 'n11', 'n11 nome'),
(15, 31, 'yu novo cartao', '12/12', 'yun', 'yu novo nome'),
(16, 36, 'teste plano', '08/08', '567', 'teste plano'),
(17, 36, 't3', '10/10', 't33', 't3'),
(18, 36, 't77', '05/05', 't77', 't77'),
(19, 30, 'nm', '05/05', 'nm', 'nm'),
(20, 1, 'jjjj', 'jjj', 'jjj', 'jjjj'),
(21, 47, 'ii', 'ii', 'ii', 'ii'),
(22, 48, 'ooo', 'ooo', 'ooo', 'ooo'),
(23, 49, 'ju', 'ju', 'ju', 'ju'),
(24, 50, 'rer', 'rer', 'rer', 'rer'),
(25, 51, 'gh', 'gh', 'gh', 'gh'),
(26, 51, '55', '55', '55', '55'),
(27, 30, '77@77', '77@', '77@', '77@77'),
(28, 30, '85', '85', '85', '85'),
(29, 58, '9', '9', '9', '9'),
(30, 60, 'p', 'p', 'p', 'p'),
(31, 60, 'pp', 'pp', 'pp', 'pp'),
(32, 60, 'ppp', 'ppp', 'ppp', 'ppp');

-- --------------------------------------------------------

--
-- Estrutura da tabela `CONTA`
--

CREATE TABLE `CONTA` (
  `contaCod` int(11) NOT NULL,
  `contaNome` varchar(200) NOT NULL,
  `contaCPF` varchar(12) NOT NULL,
  `contaSenha` varchar(15) NOT NULL,
  `contaEmail` varchar(200) NOT NULL,
  `contaPlano` int(11) NOT NULL COMMENT '1 = PLANO BASICO\n2 = PLANO PADRÃO\n3 = PLANO PREMIUM'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `CONTA`
--

INSERT INTO `CONTA` (`contaCod`, `contaNome`, `contaCPF`, `contaSenha`, `contaEmail`, `contaPlano`) VALUES
(1, 'jj', 'jj', 'jj', 'jj', 1),
(2, 'jj5', 'jj5', 'jj', 'jj5', 1),
(6, 'kk', 'kk', 'jj', 'jj', 1),
(7, 'ww', 'ww', 'ww', 'ww', 1),
(8, '1', '1', '', '1@1', 1),
(9, 'joao', '123', '', 'joao@joao', 1),
(10, 'pedro', '456', 'pedro', 'pedro@pedro', 1),
(11, '', '', '', '', 1),
(13, 'bruno', '123456789', 'nruno', 'bruno@bruno', 1),
(14, 'w', 'w', 'e', 'e@e', 1),
(15, 'wjoao', '13', '', 'joapo@aoas', 1),
(17, 'er', 'fd', 'erer', 'df@e', 1),
(18, 'teste', '3', 'teste', 'teste@teste.com', 1),
(19, 'nome', 'cpf', 'senha', 'email', 1),
(20, 'qwqw', 'qw', 'crypt( wq )', 'w@w.comqwwq', 1),
(25, 'teste1', '123teste1', 'teste1', 'teste1@teste1.com', 1),
(26, 'teste2', 'teste2', 'crypt(teste2)', 'teste2@teste2.com', 1),
(27, 'teste3', 'teste3', 'teste3', 'teste3@teste3.com', 1),
(28, 'teste4', 'teste4', 'teste4', 'teste4@teste4', 1),
(29, 'n1', 'n1', 'n1', 'n1@n1', 1),
(30, 'n11', 'n11', 'n1', 'n11@n11', 1),
(31, 'yu', 'yu', 'yu', 'yu@yu', 1),
(32, 'yuuu', 'yuuu', 'yuuu', 'yuuu@yuuu', 1),
(33, 'yu novo', 'yu novo', 'yunovo', 'yunovo@yunovo', 1),
(34, 'us3', 'us3', 'us3', 'us3@us3', 1),
(35, 'us3us3', 'us3us3', 'us3us3', 'us3us3@us3us3', 1),
(36, 'ty', 'ty', 'ty', 'ty@ty', 1),
(37, 'teste plano', 'teste plano', 'testeplano', 'testeplano@testeplano', 1),
(38, 't3', 't3', 't3', 't3@t3', 1),
(39, 't4', 't4', 't4', 't4@t4', 1),
(40, 't66', 't66', 't66', 't66@t66', 1),
(41, 't77', 't77', 't77', 't77@t77', 1),
(42, 'nm', 'nm', 'nm', 'nm@nm', 1),
(43, 'oo', 'oo', 'oo', 'oo@oo', 0),
(45, 'jjjj', 'jjjj', 'jjjj', 'jjjj@jjjj', 0),
(46, 'rrr', 'rrr', 'rrr', 'rrr@rrr', 0),
(47, 'ii', 'ii', 'ii', 'ii@ii', 0),
(48, 'ooo', 'ooo', 'ooo', 'ooo@ooo', 0),
(49, 'ju', 'ju', 'ju', 'ju@ju', 0),
(50, 'rer', 'rer', 'rer', 'rer@rer', 5),
(51, 'gh', 'gh', 'gh', 'gh@gh', 5),
(53, '78', '78', '78', '78@78', 8),
(54, '877', '877', '877', '877@877', 0),
(58, '9', '9', '9', '9@9', 0),
(59, '5', '5', '5', '5@5', 2),
(60, 'p', 'p', 'p', 'p@p', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `EDITORA`
--

CREATE TABLE `EDITORA` (
  `editCod` int(11) NOT NULL,
  `editNome` varchar(45) NOT NULL,
  `editLocalizacao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `EDITORA`
--

INSERT INTO `EDITORA` (`editCod`, `editNome`, `editLocalizacao`) VALUES
(1, '1', '1'),
(2, '2', '2'),
(3, '3', '3'),
(22, '22', '22'),
(41, '42', '43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `GENERO`
--

CREATE TABLE `GENERO` (
  `genCod` int(11) NOT NULL,
  `genNome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `GENERO`
--

INSERT INTO `GENERO` (`genCod`, `genNome`) VALUES
(1, '1'),
(2, '2'),
(4, '4'),
(11, '12'),
(12, '12'),
(222, '222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `LENDO`
--

CREATE TABLE `LENDO` (
  `contaCod` int(11) NOT NULL,
  `userNome` varchar(45) NOT NULL,
  `livCod` int(11) NOT NULL,
  `lendoUltimaPagina` int(11) DEFAULT NULL,
  `lendoAvaliacao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `LIVRO`
--

CREATE TABLE `LIVRO` (
  `livCod` int(11) NOT NULL,
  `livTitulo` varchar(45) NOT NULL,
  `livISBN` int(11) NOT NULL COMMENT '13 digitos\ne precedida de 978',
  `livANO` int(11) NOT NULL,
  `livNPag` int(11) NOT NULL,
  `livTags` varchar(1000) NOT NULL,
  `autCod` int(11) NOT NULL,
  `editCod` int(11) NOT NULL,
  `GENERO_genCod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `USUARIO`
--

CREATE TABLE `USUARIO` (
  `contaCod` int(11) NOT NULL,
  `userNome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AUTOR`
--
ALTER TABLE `AUTOR`
  ADD PRIMARY KEY (`autCod`);

--
-- Indexes for table `CARTAO`
--
ALTER TABLE `CARTAO`
  ADD PRIMARY KEY (`cardCod`),
  ADD UNIQUE KEY `cardNum_UNIQUE` (`cardNum`),
  ADD KEY `fk_CARTAO_CONTA1_idx` (`contaCod`);

--
-- Indexes for table `CONTA`
--
ALTER TABLE `CONTA`
  ADD PRIMARY KEY (`contaCod`),
  ADD UNIQUE KEY `userNome_UNIQUE` (`contaNome`),
  ADD UNIQUE KEY `userCPF_UNIQUE` (`contaCPF`);

--
-- Indexes for table `EDITORA`
--
ALTER TABLE `EDITORA`
  ADD PRIMARY KEY (`editCod`);

--
-- Indexes for table `GENERO`
--
ALTER TABLE `GENERO`
  ADD PRIMARY KEY (`genCod`);

--
-- Indexes for table `LENDO`
--
ALTER TABLE `LENDO`
  ADD PRIMARY KEY (`contaCod`,`userNome`,`livCod`),
  ADD KEY `fk_USUARIO_has_LIVRO_LIVRO1_idx` (`livCod`),
  ADD KEY `fk_USUARIO_has_LIVRO_USUARIO1_idx` (`contaCod`,`userNome`);

--
-- Indexes for table `LIVRO`
--
ALTER TABLE `LIVRO`
  ADD PRIMARY KEY (`livCod`),
  ADD UNIQUE KEY `livISBN_UNIQUE` (`livISBN`),
  ADD UNIQUE KEY `livCod_UNIQUE` (`livCod`),
  ADD KEY `fk_LIVRO_AUTOR1_idx` (`autCod`),
  ADD KEY `fk_LIVRO_EDITORA1_idx` (`editCod`),
  ADD KEY `fk_LIVRO_GENERO1_idx` (`GENERO_genCod`);

--
-- Indexes for table `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`contaCod`,`userNome`),
  ADD KEY `fk_USUARIO_CONTA1_idx` (`contaCod`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `CARTAO`
--
ALTER TABLE `CARTAO`
  MODIFY `cardCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `CONTA`
--
ALTER TABLE `CONTA`
  MODIFY `contaCod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `CARTAO`
--
ALTER TABLE `CARTAO`
  ADD CONSTRAINT `fk_CARTAO_CONTA1` FOREIGN KEY (`contaCod`) REFERENCES `CONTA` (`contaCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `LENDO`
--
ALTER TABLE `LENDO`
  ADD CONSTRAINT `fk_USUARIO_has_LIVRO_LIVRO1` FOREIGN KEY (`livCod`) REFERENCES `LIVRO` (`livCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_USUARIO_has_LIVRO_USUARIO1` FOREIGN KEY (`contaCod`,`userNome`) REFERENCES `USUARIO` (`contaCod`, `userNome`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `LIVRO`
--
ALTER TABLE `LIVRO`
  ADD CONSTRAINT `fk_LIVRO_AUTOR1` FOREIGN KEY (`autCod`) REFERENCES `AUTOR` (`autCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_LIVRO_EDITORA1` FOREIGN KEY (`editCod`) REFERENCES `EDITORA` (`editCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_LIVRO_GENERO1` FOREIGN KEY (`GENERO_genCod`) REFERENCES `GENERO` (`genCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD CONSTRAINT `fk_USUARIO_CONTA1` FOREIGN KEY (`contaCod`) REFERENCES `CONTA` (`contaCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"libby","table":"LIVRO"},{"db":"libby","table":"GENERO"},{"db":"libby","table":"EDITORA"},{"db":"libby","table":"AUTOR"},{"db":"libby","table":"USUARIO"},{"db":"libby","table":"LENDO"},{"db":"libby","table":"CARTAO"},{"db":"libby","table":"CONTA"},{"db":"sistema_login","table":"usuarios"},{"db":"event_manager","table":"type"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'libby', 'CARTAO', '{"sorted_col":"`CARTAO`.`cardCod`  DESC"}', '2018-06-22 05:33:54'),
('root', 'libby', 'CONTA', '{"sorted_col":"`CONTA`.`contaCod`  DESC"}', '2018-06-26 00:04:04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-05-23 23:47:04', '{"lang":"pt","collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `projeto3`
--
CREATE DATABASE IF NOT EXISTS `projeto3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projeto3`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_personagem`
--

CREATE TABLE `cadastro_personagem` (
  `id` int(11) NOT NULL,
  `background` varchar(200) DEFAULT NULL,
  `player_name` varchar(200) DEFAULT NULL,
  `faction` varchar(200) DEFAULT NULL,
  `race` varchar(200) DEFAULT NULL,
  `alignment` varchar(200) DEFAULT NULL,
  `class` varchar(200) NOT NULL,
  `level_character` int(11) DEFAULT NULL,
  `experience_points` int(11) DEFAULT NULL,
  `dci_number` int(11) DEFAULT NULL,
  `inspiration` int(11) DEFAULT NULL,
  `proficiency_bonus` int(11) DEFAULT NULL,
  `strength` int(11) NOT NULL,
  `dexterity` int(11) NOT NULL,
  `constitution` int(11) NOT NULL,
  `intelligence` int(11) NOT NULL,
  `wisdom` int(11) NOT NULL,
  `charisma` int(11) NOT NULL,
  `acrobatics` int(11) DEFAULT NULL,
  `animal_handling` int(11) DEFAULT NULL,
  `arcana` int(11) DEFAULT NULL,
  `athletics` int(11) DEFAULT NULL,
  `deception` int(11) DEFAULT NULL,
  `history` int(11) DEFAULT NULL,
  `insight` int(11) DEFAULT NULL,
  `intimidation` int(11) DEFAULT NULL,
  `investigation` int(11) DEFAULT NULL,
  `medicine` int(11) DEFAULT NULL,
  `nature` int(11) DEFAULT NULL,
  `perception` int(11) DEFAULT NULL,
  `performance` int(11) DEFAULT NULL,
  `persuasion` int(11) DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `sleight_of_hand` int(11) DEFAULT NULL,
  `stealth` int(11) DEFAULT NULL,
  `survival` int(11) DEFAULT NULL,
  `passive_wisdom_perception` int(11) DEFAULT NULL,
  `other_proficiencies_languages` varchar(200) DEFAULT NULL,
  `armor_class` int(11) DEFAULT NULL,
  `initiative` int(11) DEFAULT NULL,
  `speed` int(11) DEFAULT NULL,
  `current_hit_points` varchar(200) DEFAULT NULL,
  `temporary_hit_points` varchar(200) DEFAULT NULL,
  `hit_dice` int(11) DEFAULT NULL,
  `death_saves_sucesses` int(11) DEFAULT NULL,
  `death_saves_failures` int(11) DEFAULT NULL,
  `name_attack` varchar(200) DEFAULT NULL,
  `damage_type` varchar(200) DEFAULT NULL,
  `atack_bonus` int(11) DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `sp` int(11) DEFAULT NULL,
  `ep` int(11) DEFAULT NULL,
  `gp` int(11) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  `equipament` varchar(200) DEFAULT NULL,
  `personality_traits` varchar(200) DEFAULT NULL,
  `ideals` varchar(200) DEFAULT NULL,
  `bonds` varchar(200) DEFAULT NULL,
  `flaws` varchar(200) DEFAULT NULL,
  `features_traits` varchar(200) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `eyes` varchar(200) DEFAULT NULL,
  `skin` varchar(200) DEFAULT NULL,
  `hair` varchar(200) DEFAULT NULL,
  `character_backstory` varchar(200) DEFAULT NULL,
  `faction_rank` varchar(200) DEFAULT NULL,
  `additional_features_traits` varchar(200) DEFAULT NULL,
  `treasure` varchar(200) DEFAULT NULL,
  `total_non_consumable_magic_items` int(11) DEFAULT NULL,
  `character_name` varchar(200) NOT NULL,
  `character_appearance` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastro_personagem`
--

INSERT INTO `cadastro_personagem` (`id`, `background`, `player_name`, `faction`, `race`, `alignment`, `class`, `level_character`, `experience_points`, `dci_number`, `inspiration`, `proficiency_bonus`, `strength`, `dexterity`, `constitution`, `intelligence`, `wisdom`, `charisma`, `acrobatics`, `animal_handling`, `arcana`, `athletics`, `deception`, `history`, `insight`, `intimidation`, `investigation`, `medicine`, `nature`, `perception`, `performance`, `persuasion`, `religion`, `sleight_of_hand`, `stealth`, `survival`, `passive_wisdom_perception`, `other_proficiencies_languages`, `armor_class`, `initiative`, `speed`, `current_hit_points`, `temporary_hit_points`, `hit_dice`, `death_saves_sucesses`, `death_saves_failures`, `name_attack`, `damage_type`, `atack_bonus`, `cp`, `sp`, `ep`, `gp`, `pp`, `equipament`, `personality_traits`, `ideals`, `bonds`, `flaws`, `features_traits`, `age`, `height`, `weight`, `eyes`, `skin`, `hair`, `character_backstory`, `faction_rank`, `additional_features_traits`, `treasure`, `total_non_consumable_magic_items`, `character_name`, `character_appearance`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, 'Mage', NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'name', NULL),
(2, '', '', '', '', '', 'bard', 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', 0, 'w', ''),
(3, 'dino', 'dino', 'dino', 'dino', 'dino', 'wizard', 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', 0, 'dino', ''),
(4, 'rino', 'rino', 'rino', 'rino', 'rino', 'wizard', 1, 68, 8, 8, 8, 8, 8, 8, 8, 8, 88, 8, 8, 8, 8, 88, 8, 8, 8, 5, 88, 8, 8, 8, 8, 8, 8, 8, 8, 8, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', 0, 'rino', ''),
(5, 'unio', 'unio', 'unio', 'unio', 'unio', 'barbarian', 5, 9, 6, 9, 9, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 92, 9, 9, 9, 9, 9, 9, 9, 'unio', 5, 5, 5, 'unio', 'unio', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', 0, 'unio', ''),
(6, 'dragon ball', 'dragon ball', 'dragon ball', 'dragon ball', 'dragon ball', 'barbarian', 6, 6, 6, 6, 9, 8, 8, 88, 989, 8, 98, 9, 8, 9, 8989, 898, 98, 98, 8, 9, 898, 9, 89, 8, 8, 98, 9, 8, 98, 9, 'dragon ball', 98, 0, 898, 'dragon ball', 'dragon ball', 8, 98, 8, 'dragon ball', 'dragon ball', 65, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', 0, 'dragon ball', ''),
(7, 'z', 'z', 'z', 'z', 'z', 'druid', 3, 65, 6, 55, 6565, 5, 5, 5, 6, 5, 65, 6, 5, 65, 6, 5, 6, 56, 5, 6, 5, 65, 6, 56, 5, 6, 56, 5, 65, 6, 'z', 65, 6, 0, 'z', 'z', 6, 56, 5, 'z', 'z', 5, 6, 5, 65, 0, 5, 'z', 'z', 'z', 'z', 'z', 'z', 0, 0, 0, '', '', '', '', '', '', '', 0, 'z', ''),
(8, 'tyty', 'tyty', 'tyty', 'tyty', 'tyty', 'bard', 5, 55, 54, 45, 4, 5454, 5, 4, 5, 45, 4, 5, 4545, 4, 5, 4, 54, 5, 45, 4, 5, 45, 4, 5, 45, 4, 5, 45, 4, 5, 'tyty', 5, 2323, 2323, 'tyty', 'tyty', 2323, 5454, 553, 'tyty', 'tyty', 2323, 2323, 2323, 2323, 0, 2323, 'tyty', 'tyty', 'tyty', 'tyty', 'tyty', 'tyty', 54, 56, 45, 'tyty', 'tyty', 'tyty', '', '', '', '', 0, 'tyty', ''),
(9, 'rreergr', '', '', '', '', 'bard', 5, 0, 0, 0, 0, 5, 5, 6, 565, 6, 5, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', 'rreergr', 'rreergr', 'rreergr', 'rreergr', 23, 'rreergr', 'rreergr'),
(10, 'rreergr', '', '', '', '', 'bard', 5, 0, 0, 0, 0, 5, 5, 6, 565, 6, 5, 6, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 0, 0, '', '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, '', '', '', '', '', '', 0, 0, 0, '', '', '', 'rreergr', 'rreergr', 'rreergr', 'rreergr', 23, 'rreergr', 'rreergr');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastrousuario`
--

CREATE TABLE `cadastrousuario` (
  `nome` varchar(60) NOT NULL,
  `login` varchar(25) NOT NULL,
  `senha` varchar(12) NOT NULL,
  `id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cadastrousuario`
--

INSERT INTO `cadastrousuario` (`nome`, `login`, `senha`, `id`, `email`) VALUES
('felipe', 'felipe', 'felipe', 2, ''),
('flavio', 'flavio', 'flavio', 3, ''),
('wqw', 'wqw', 'wqw', 9, 'wqw'),
('lp', 'lp', 'lp', 10, 'lp'),
('ww', 'ww', 'ee', 11, 'ww'),
('ff', 'ff', 'ff', 12, 'ff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cadastro_personagem`
--
ALTER TABLE `cadastro_personagem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cadastrousuario`
--
ALTER TABLE `cadastrousuario`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cadastro_personagem`
--
ALTER TABLE `cadastro_personagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `cadastrousuario`
--
ALTER TABLE `cadastrousuario`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;--
-- Database: `sistema_login`
--
CREATE DATABASE IF NOT EXISTS `sistema_login` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sistema_login`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `user_id` int(11) NOT NULL COMMENT 'ID do Usuário',
  `user` varchar(255) NOT NULL COMMENT 'Usuário',
  `user_name` varchar(255) NOT NULL COMMENT 'Nome do usuário',
  `user_password` varchar(255) NOT NULL COMMENT 'Senha'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`user_id`, `user`, `user_name`, `user_password`) VALUES
(1, 'w', 'w', '$1$qxagK/QO$KIzlzSKkwOa.P3a8ldgPg0'),
(2, 'q', 'q', '$1$sH1gZURG$3MavQgHp4GM7tNFXF3hst.'),
(3, 'y', 'y', '$1$v2LGB52A$6Vyt3lUKWFGXUeaKt/1Ek0'),
(4, 'ww', 'ww', '$1$S7kQ5j6j$OzGJCwWGcJsqbslGIMFZ21'),
(5, 'tt', 'tt', '$1$ICfHiVJy$TpE.wCim7X4YiYkMcUYgE0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID do Usuário', AUTO_INCREMENT=6;--
-- Database: `suite_obi`
--
CREATE DATABASE IF NOT EXISTS `suite_obi` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `suite_obi`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `DATABASECHANGELOG`
--

CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `DATABASECHANGELOG`
--

INSERT INTO `DATABASECHANGELOG` (`ID`, `AUTHOR`, `FILENAME`, `DATEEXECUTED`, `ORDEREXECUTED`, `EXECTYPE`, `MD5SUM`, `DESCRIPTION`, `COMMENTS`, `TAG`, `LIQUIBASE`, `CONTEXTS`, `LABELS`) VALUES
('create_country', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:15', 1, 'EXECUTED', '7:ffa07e329b54c4ac2e931cda1686a8a3', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_state', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:15', 2, 'EXECUTED', '7:50f98cc3752fac60e9d8e8b842b046cc', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_city', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:15', 3, 'EXECUTED', '7:9ba1b33aa44e14131cadc085f2237333', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_address', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:16', 4, 'EXECUTED', '7:49bc0ee2b506573035af27704c162a28', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_contact', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:16', 5, 'EXECUTED', '7:1dd858e2b6fcf6c03c6a9840e74d0281', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_academy', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:17', 6, 'EXECUTED', '7:fcb968c9cd77e86826ad5f412a71aa17', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_operator', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:17', 7, 'EXECUTED', '7:adb73ad7db39474f0cd6e69cb4e57f9d', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_operator_contact', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:18', 8, 'EXECUTED', '7:efb5f0c7cedaaabed3a9dad77a6d9173', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_role', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:18', 9, 'EXECUTED', '7:bdbb51f8df7c2cea1aa371c59e23e72d', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_operator_role', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:18', 10, 'EXECUTED', '7:b143a9772402018a2dc305c6599aafde', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_academy_contact', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:20', 11, 'EXECUTED', '7:d9db8226db9c113618523115d67389af', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_student', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:20', 12, 'EXECUTED', '7:157cf86a842bd658d4f829b54cb797e5', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_student_contact', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:20', 13, 'EXECUTED', '7:f05ac1931d9b4f53ef70c8d03755e311', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('create_constraints', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:32', 14, 'EXECUTED', '7:8b81635f5fa0c519f56960bdb0b5fb97', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('dump_country', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:32', 15, 'EXECUTED', '7:174bc61376930d08a3bb13d80bbcb67b', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('dump_state', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:33', 16, 'EXECUTED', '7:2928c99148523f1e942117c019694b51', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('dump_city', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:33', 17, 'EXECUTED', '7:2c45165fa2737ee9a98b5b43bab91360', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_contact', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:33', 18, 'EXECUTED', '7:1b7b98a9e16999ac3bf58ab7d6b5dbbd', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_role', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:33', 19, 'EXECUTED', '7:0cd14bc71db876846485932f1cff6a31', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_address', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:33', 20, 'EXECUTED', '7:5914de8ae7b076a444183591bbbee162', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_academy', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:33', 21, 'EXECUTED', '7:5baa412979dee2f53d195f3d2b66a952', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_operator', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:33', 22, 'EXECUTED', '7:4429f2b526b4a4df3bdef0c43bc23f10', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_operator_role', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:34', 23, 'EXECUTED', '7:b2ae9c64dfe2d43a9dc41850ac799bb5', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_operator_contact', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:35', 24, 'EXECUTED', '7:7c16921e309afbb5409c6922b3b15ddf', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_student', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:35', 25, 'EXECUTED', '7:224be6c00acb82f08ae628fad709f084', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('01_insert_student_contact', 'obi', 'src/main/resources/db.changelog/changeset/create_struct_initial.yaml', '2018-04-24 21:59:35', 26, 'EXECUTED', '7:b6259a386a5c0b88a14da5b0527e05d3', 'sqlFile', '', NULL, '3.4.2', 'local', NULL),
('create_class', 'obi', 'src/main/resources/db.changelog/changeset/obi_05.yaml', '2018-04-24 21:59:38', 27, 'EXECUTED', '7:5e15078e9c1202a7f8dd038bc0fb5943', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('update_table_student_add_colunm_id_class', 'obi', 'src/main/resources/db.changelog/changeset/obi_05.yaml', '2018-04-24 21:59:43', 28, 'EXECUTED', '7:68a3c34bd54a4beb7843156e0236d859', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('update_table_student_add_constraint_fk_class', 'obi', 'src/main/resources/db.changelog/changeset/obi_05.yaml', '2018-04-24 21:59:45', 29, 'EXECUTED', '7:e9ff8f6dd834f05d086a4d5bfce24616', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL),
('insert_class', 'obi', 'src/main/resources/db.changelog/changeset/obi_05.yaml', '2018-04-24 21:59:46', 30, 'EXECUTED', '7:5ccbd84a344459b032492dbeb3810ab6', 'sqlFile', '', NULL, '3.4.2', 'local, dev, hom, prod', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `DATABASECHANGELOGLOCK`
--

CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `DATABASECHANGELOGLOCK`
--

INSERT INTO `DATABASECHANGELOGLOCK` (`ID`, `LOCKED`, `LOCKGRANTED`, `LOCKEDBY`) VALUES
(1, b'0', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `academy`
--

CREATE TABLE `academy` (
  `id_academy` int(11) NOT NULL,
  `cnpj` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `trading_name` varchar(100) DEFAULT NULL,
  `id_address` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `academy`
--

INSERT INTO `academy` (`id_academy`, `cnpj`, `name`, `trading_name`, `id_address`) VALUES
(1, '12.432.647/0001-71', 'Gracie Barra COSMOPOLIS', 'GB Cosmopolis', 1),
(2, '15.142.474/0001-45', 'Gracie Barra ARTUR NOGUEIRA', 'GB Artur', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `academy_contact`
--

CREATE TABLE `academy_contact` (
  `id_academy` int(11) NOT NULL,
  `id_contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `id_address` int(11) NOT NULL,
  `address` varchar(60) NOT NULL,
  `additional_address` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `id_city` int(11) NOT NULL,
  `cep` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `address`
--

INSERT INTO `address` (`id_address`, `address`, `additional_address`, `number`, `id_city`, `cep`) VALUES
(1, 'RUA SIQUEIRA CAMPOS', '', 1, 1, '57200000'),
(2, 'AV ACM', '', 846, 1, '41192165');

-- --------------------------------------------------------

--
-- Estrutura da tabela `campus`
--

CREATE TABLE `campus` (
  `idCampus` int(11) NOT NULL,
  `CampusName` varchar(100) NOT NULL,
  `CampusCity` varchar(100) NOT NULL,
  `CampusFantasyName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `campus`
--

INSERT INTO `campus` (`idCampus`, `CampusName`, `CampusCity`, `CampusFantasyName`) VALUES
(2, 'dfadf', 'dfadfsaddsfa', 'fsd'),
(3, 'dfadfsdfa', 'dfadfsaddsfa', 'fsdsdaf'),
(8, '1sdafsfsa', '444', '2222'),
(9, '555552222', '444', '333');

-- --------------------------------------------------------

--
-- Estrutura da tabela `city`
--

CREATE TABLE `city` (
  `id_city` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `neighborhood` varchar(40) DEFAULT NULL,
  `id_state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `city`
--

INSERT INTO `city` (`id_city`, `name`, `neighborhood`, `id_state`) VALUES
(1, 'CAMPINAS', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `classes`
--

CREATE TABLE `classes` (
  `id_class` int(11) NOT NULL,
  `id_academy` int(11) NOT NULL,
  `week_days` varchar(50) NOT NULL,
  `hour_start` varchar(20) NOT NULL,
  `hour_end` varchar(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `classes`
--

INSERT INTO `classes` (`id_class`, `id_academy`, `week_days`, `hour_start`, `hour_end`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, 'SUNDAY/SATURDAY', '20h', '22h', 'Turma Avançado', NULL, NULL),
(2, 1, 'SUNDAY/MONDAY', '10h', '12h', 'Turma Intermediario', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contact`
--

CREATE TABLE `contact` (
  `id_contact` int(11) NOT NULL,
  `type` varchar(10) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `contact`
--

INSERT INTO `contact` (`id_contact`, `type`, `value`) VALUES
(1, 'TELEPHONE', '9935234980'),
(2, 'TELEPHONE', '9854318082'),
(3, 'TELEPHONE', '9753290909'),
(4, 'TELEPHONE', '9644516784'),
(5, 'TELEPHONE', '9555290802'),
(6, 'EMAIL', 'joao@joao.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `country`
--

CREATE TABLE `country` (
  `id_country` int(11) NOT NULL,
  `code` char(2) NOT NULL,
  `name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `country`
--

INSERT INTO `country` (`id_country`, `code`, `name`) VALUES
(1, 'BR', 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipaments`
--

CREATE TABLE `equipaments` (
  `idEquipaments` int(11) NOT NULL,
  `EquipamentsName` varchar(200) NOT NULL,
  `EquipamentsType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `event`
--

CREATE TABLE `event` (
  `idEvent` int(11) NOT NULL,
  `EventName` varchar(100) NOT NULL,
  `EventDate` date NOT NULL,
  `EventClass` varchar(100) NOT NULL,
  `EventCampus` varchar(100) NOT NULL,
  `EventResponsible` varchar(100) NOT NULL,
  `EventTrainee` varchar(100) DEFAULT NULL,
  `EventHour` varchar(100) NOT NULL,
  `Class_idClass` int(11) NOT NULL,
  `Person_idPerson` int(11) NOT NULL,
  `Campus_idCampus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventequipament`
--

CREATE TABLE `eventequipament` (
  `idEventEquipament` int(11) NOT NULL,
  `idEvent` int(11) DEFAULT NULL,
  `idEquipament` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `operator`
--

CREATE TABLE `operator` (
  `id_operator` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `last_name` varchar(200) DEFAULT NULL,
  `id_academy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `operator`
--

INSERT INTO `operator` (`id_operator`, `first_name`, `status`, `username`, `password`, `last_name`, `id_academy`) VALUES
(10, 'Gandalf', 1, 'gandalf@acad.com', '$2a$06$w5aYBWZaMNVf9onEKlCMrOTL/32tgz0MJv83Ebgju2rJdRAH0kr5K', 'Grey', 1),
(11, 'Aragorn', 1, 'aragorn@acad.com', '$2a$06$w5aYBWZaMNVf9onEKlCMrOTL/32tgz0MJv83Ebgju2rJdRAH0kr5K', 'Aragorn', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `operator_contact`
--

CREATE TABLE `operator_contact` (
  `id_operator` int(11) NOT NULL,
  `id_contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `operator_contact`
--

INSERT INTO `operator_contact` (`id_operator`, `id_contact`) VALUES
(10, 1),
(11, 2),
(10, 3),
(11, 4),
(10, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `operator_role`
--

CREATE TABLE `operator_role` (
  `id_operator` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `operator_role`
--

INSERT INTO `operator_role` (`id_operator`, `id_role`) VALUES
(10, 1),
(11, 1),
(10, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `person`
--

CREATE TABLE `person` (
  `idPerson` int(11) NOT NULL,
  `PersonName` varchar(100) DEFAULT NULL,
  `PersonRG` varchar(20) DEFAULT NULL,
  `PersonCPF` varchar(20) DEFAULT NULL,
  `PersonDateBorn` date DEFAULT NULL,
  `PersonPrivileges` tinyint(4) DEFAULT NULL,
  `PersonHourWork` varchar(100) DEFAULT NULL,
  `PersonEmail` varchar(45) NOT NULL,
  `PersonPassword` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `place`
--

CREATE TABLE `place` (
  `idPlace` int(11) NOT NULL,
  `PlaceName` varchar(100) NOT NULL,
  `PlaceCampus` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `description` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `role`
--

INSERT INTO `role` (`id_role`, `description`) VALUES
(1, 'OPERADOR'),
(2, 'ADMINISTRATOR');

-- --------------------------------------------------------

--
-- Estrutura da tabela `state`
--

CREATE TABLE `state` (
  `id_state` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `code` char(2) NOT NULL,
  `id_country` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `state`
--

INSERT INTO `state` (`id_state`, `name`, `code`, `id_country`) VALUES
(1, 'Alagoas', 'AL', 1),
(2, 'Bahia', 'BA', 1),
(3, 'Ceará', 'CE', 1),
(4, 'Maranhão', 'MA', 1),
(5, 'Minas Gerais', 'MG', 1),
(6, 'Mato Grosso do Sul', 'MS', 1),
(7, 'Pará', 'PA', 1),
(8, 'Paraná', 'PR', 1),
(11, 'São Paulo', 'SP', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `student`
--

CREATE TABLE `student` (
  `id_student` int(11) NOT NULL,
  `belt` varchar(20) NOT NULL,
  `birthdate` varchar(20) NOT NULL,
  `degrees` int(11) DEFAULT NULL,
  `gender` char(2) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `id_academy` int(11) NOT NULL,
  `id_class` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `student`
--

INSERT INTO `student` (`id_student`, `belt`, `birthdate`, `degrees`, `gender`, `name`, `id_academy`, `id_class`) VALUES
(1, 'BLUE', '2000-01-01', 1, 'M', 'Pedro', 1, NULL),
(2, 'RED', '1970-11-21', 1, 'M', 'Raul', 1, NULL),
(3, 'YELLOW', '2010-10-10', 1, 'F', 'Maria', 1, NULL),
(4, 'YELLOW', '2008-01-15', 2, 'M', 'joao', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `student_contact`
--

CREATE TABLE `student_contact` (
  `id_student` int(11) NOT NULL,
  `id_contact` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `student_contact`
--

INSERT INTO `student_contact` (`id_student`, `id_contact`) VALUES
(1, 1),
(4, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `type`
--

CREATE TABLE `type` (
  `idType` int(11) NOT NULL,
  `TypeName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DATABASECHANGELOGLOCK`
--
ALTER TABLE `DATABASECHANGELOGLOCK`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `academy`
--
ALTER TABLE `academy`
  ADD PRIMARY KEY (`id_academy`),
  ADD KEY `fk_address_academy` (`id_address`);

--
-- Indexes for table `academy_contact`
--
ALTER TABLE `academy_contact`
  ADD PRIMARY KEY (`id_academy`,`id_contact`);

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id_address`),
  ADD KEY `fk_city_id_address` (`id_city`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`idCampus`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id_city`),
  ADD KEY `fk_state_city` (`id_state`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id_class`),
  ADD KEY `fk_academy_class` (`id_academy`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id_contact`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id_country`);

--
-- Indexes for table `equipaments`
--
ALTER TABLE `equipaments`
  ADD PRIMARY KEY (`idEquipaments`),
  ADD KEY `typefk_idx` (`EquipamentsType`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`idEvent`),
  ADD KEY `fk_Event_Class1_idx` (`Class_idClass`),
  ADD KEY `fk_Event_Person1_idx` (`Person_idPerson`),
  ADD KEY `fk_Event_Campus1_idx` (`Campus_idCampus`);

--
-- Indexes for table `eventequipament`
--
ALTER TABLE `eventequipament`
  ADD PRIMARY KEY (`idEventEquipament`),
  ADD KEY `index2` (`idEvent`,`idEquipament`),
  ADD KEY `equipFk_idx` (`idEquipament`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id_operator`),
  ADD UNIQUE KEY `uk_operator` (`username`),
  ADD KEY `fk_academy_operator` (`id_academy`);

--
-- Indexes for table `operator_contact`
--
ALTER TABLE `operator_contact`
  ADD PRIMARY KEY (`id_operator`,`id_contact`),
  ADD KEY `fk_contact_operator_contact` (`id_contact`);

--
-- Indexes for table `operator_role`
--
ALTER TABLE `operator_role`
  ADD PRIMARY KEY (`id_operator`,`id_role`),
  ADD KEY `fk_role_operator_role` (`id_role`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`idPerson`),
  ADD UNIQUE KEY `PersonName_UNIQUE` (`PersonName`),
  ADD UNIQUE KEY `PersonRG_UNIQUE` (`PersonRG`),
  ADD UNIQUE KEY `PersonCPF_UNIQUE` (`PersonCPF`),
  ADD UNIQUE KEY `PersonDateBorn_UNIQUE` (`PersonDateBorn`),
  ADD UNIQUE KEY `PersonPrivileges_UNIQUE` (`PersonPrivileges`),
  ADD UNIQUE KEY `PersonHourWork_UNIQUE` (`PersonHourWork`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`idPlace`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id_state`),
  ADD KEY `fk_country_state` (`id_country`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id_student`),
  ADD KEY `fk_academy_student` (`id_academy`),
  ADD KEY `fk_student_class` (`id_class`);

--
-- Indexes for table `student_contact`
--
ALTER TABLE `student_contact`
  ADD KEY `fk_contact_student_contact` (`id_contact`),
  ADD KEY `fk_student_student_contact` (`id_student`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`idType`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academy`
--
ALTER TABLE `academy`
  MODIFY `id_academy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `idCampus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id_class` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id_contact` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `equipaments`
--
ALTER TABLE `equipaments`
  MODIFY `idEquipaments` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `idEvent` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id_operator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `idPerson` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `idPlace` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id_state` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id_student` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `academy`
--
ALTER TABLE `academy`
  ADD CONSTRAINT `fk_address_academy` FOREIGN KEY (`id_address`) REFERENCES `address` (`id_address`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `fk_city_id_address` FOREIGN KEY (`id_city`) REFERENCES `city` (`id_city`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `fk_state_city` FOREIGN KEY (`id_state`) REFERENCES `state` (`id_state`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `fk_academy_class` FOREIGN KEY (`id_academy`) REFERENCES `academy` (`id_academy`);

--
-- Limitadores para a tabela `equipaments`
--
ALTER TABLE `equipaments`
  ADD CONSTRAINT `typefk` FOREIGN KEY (`EquipamentsType`) REFERENCES `type` (`idType`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `fk_Event_Campus1` FOREIGN KEY (`Campus_idCampus`) REFERENCES `campus` (`idCampus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Event_Class1` FOREIGN KEY (`Class_idClass`) REFERENCES `place` (`idPlace`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Event_Person1` FOREIGN KEY (`Person_idPerson`) REFERENCES `person` (`idPerson`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `eventequipament`
--
ALTER TABLE `eventequipament`
  ADD CONSTRAINT `equipFk` FOREIGN KEY (`idEquipament`) REFERENCES `equipaments` (`idEquipaments`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `eventoFk` FOREIGN KEY (`idEvent`) REFERENCES `event` (`idEvent`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `operator`
--
ALTER TABLE `operator`
  ADD CONSTRAINT `fk_academy_operator` FOREIGN KEY (`id_academy`) REFERENCES `academy` (`id_academy`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `operator_contact`
--
ALTER TABLE `operator_contact`
  ADD CONSTRAINT `fk_contact_operator_contact` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_operator_operator_contact` FOREIGN KEY (`id_operator`) REFERENCES `operator` (`id_operator`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `operator_role`
--
ALTER TABLE `operator_role`
  ADD CONSTRAINT `fk_operator_operator_role` FOREIGN KEY (`id_operator`) REFERENCES `operator` (`id_operator`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_role_operator_role` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `state`
--
ALTER TABLE `state`
  ADD CONSTRAINT `fk_country_state` FOREIGN KEY (`id_country`) REFERENCES `country` (`id_country`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `fk_academy_student` FOREIGN KEY (`id_academy`) REFERENCES `academy` (`id_academy`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_student_class` FOREIGN KEY (`id_class`) REFERENCES `classes` (`id_class`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limitadores para a tabela `student_contact`
--
ALTER TABLE `student_contact`
  ADD CONSTRAINT `fk_contact_student_contact` FOREIGN KEY (`id_contact`) REFERENCES `contact` (`id_contact`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_student_student_contact` FOREIGN KEY (`id_student`) REFERENCES `student` (`id_student`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `utfpr_tests`
--
CREATE DATABASE IF NOT EXISTS `utfpr_tests` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `utfpr_tests`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `java_course`
--

CREATE TABLE `java_course` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `java_course`
--

INSERT INTO `java_course` (`id`, `name`) VALUES
(2, 'Computação'),
(3, 'Engenharia'),
(9, 'tr'),
(10, 'wqee'),
(11, 'ADS'),
(12, 'Computação'),
(13, 'Engenharia'),
(14, '45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `java_item`
--

CREATE TABLE `java_item` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `java_item`
--

INSERT INTO `java_item` (`id`, `name`) VALUES
(1, 'Gomes'),
(3, 'João Moreira'),
(5, 'Filho'),
(6, 'Almeida Silva');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `java_course`
--
ALTER TABLE `java_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `java_item`
--
ALTER TABLE `java_item`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `java_course`
--
ALTER TABLE `java_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `java_item`
--
ALTER TABLE `java_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
