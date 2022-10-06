create database encuesta;
use encuesta;
drop table personas;
CREATE TABLE `encuesta`.`personas` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(150) NULL,
  `Escuela` VARCHAR(150) NULL,
  `Nombre_Encuesta` int(10) NULL,
  `pregunta1` int(10) NULL,
  `pregunta2` int(10) NULL,
  `pregunta3` int(10) NULL,
  `pregunta4` int(10) NULL,
  `pregunta5` int(10) NULL,
  `pregunta6` int(10) NULL,
  `pregunta7` int(10) NULL,
  `pregunta8` int(10) NULL,
  `total` double NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);