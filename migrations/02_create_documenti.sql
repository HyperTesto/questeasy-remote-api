CREATE TABLE `questura`.`documenti` (
  `codice` VARCHAR(10) NOT NULL,
  `nome` VARCHAR(45) NOT NULL,
  `validator` VARCHAR(100) NULL,
  PRIMARY KEY (`codice`),
  INDEX `ricerca` (`nome` ASC));
