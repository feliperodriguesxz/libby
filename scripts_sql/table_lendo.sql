
CREATE TABLE `LENDO` (
  `contaCod` int(11) NOT NULL,
  `livCod` int(11) NOT NULL,
  `lendoUltimaPagina` int(11) DEFAULT NULL,
  `lendoAvaliacao` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

ALTER TABLE `LENDO`
  ADD PRIMARY KEY (`contaCod`,`livCod`),
  ADD KEY `fk_CONTA_has_LIVRO_LIVRO1_idx` (`livCod`),
  ADD KEY `fk_CONTA_has_LIVRO_CONTA1_idx` (`contaCod`);

ALTER TABLE `LENDO`
  ADD CONSTRAINT `fk_CONTA_has_LIVRO_LIVRO1` FOREIGN KEY (`livCod`) REFERENCES `LIVRO` (`livCod`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_CONTA_has_LIVRO_CONTA` FOREIGN KEY (`contaCod`) REFERENCES `CONTA` (`contaCod`) ON DELETE NO ACTION ON UPDATE NO ACTION;

INSERT INTO `LENDO` (`contaCod`, `livCod`, `lendoUltimaPagina`, `lendoAvaliacao`) VALUES ('1', '1', '1', '1');
INSERT INTO `LENDO` (`contaCod`, `livCod`, `lendoUltimaPagina`, `lendoAvaliacao`) VALUES ('2', '2', '10', 'top ');

ALTER TABLE `LENDO` ADD `quantVezes` INT NOT NULL AFTER `lendoAvaliacao`;

SELECT contaCod FROM LENDO WHERE contaCod = 1 AND livCod = 1;

UPDATE LENDO 
SET quantVezes = quantVezes+1
WHERE contaCod = 1;


 $pdo_update = $conexao_pdo->prepare('UPDATE LENDO SET quantVezes = quantVezes+1 WHERE contaCod = ? AND livCod = ?');
	    $pdo_update->execute(  array($_SESSION['contaCod'], 1));
       