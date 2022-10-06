create database encuesta;

CREATE TABLE `encuesta`.`personas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NULL,
  `Escuela` VARCHAR(45) NULL,
  `Nombre_Encuesta` VARCHAR(45) NULL,
  `pregunta1` VARCHAR(45) NULL,
  `pregunta2` VARCHAR(45) NULL,
  `pregunta3` VARCHAR(45) NULL,
  `pregunta4` VARCHAR(45) NULL,
  `pregunta5` VARCHAR(45) NULL,
  `pregunta6` VARCHAR(45) NULL,
  `pregunta7` VARCHAR(45) NULL,
  `pregunta8` VARCHAR(45) NULL,
  `total` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);