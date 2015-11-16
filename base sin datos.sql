CREATE DATABASE  IF NOT EXISTS `pvwlmad` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pvwlmad`;
-- MySQL dump 10.13  Distrib 5.6.19, for Win64 (x86_64)
--
-- Host: localhost    Database: pvwlmad
-- ------------------------------------------------------
-- Server version	5.6.22-enterprise-commercial-advanced-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulo` (
  `idArticulo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codigoArticulo` varchar(100) NOT NULL,
  `idDepartamento` int(10) unsigned NOT NULL,
  `descripcionCorta` varchar(150) NOT NULL,
  `descripcionLarga` varchar(500) NOT NULL,
  `precioPublico` decimal(8,2) NOT NULL,
  `unidadMedida` varchar(145) NOT NULL,
  `existencia` int(10) unsigned NOT NULL,
  `impuestos` decimal(8,2) DEFAULT NULL,
  `descuento` decimal(8,2) DEFAULT NULL,
  `activoArticulo` tinyint(1) unsigned DEFAULT '1',
  `tipoDescuento` char(1) DEFAULT NULL,
  PRIMARY KEY (`idArticulo`),
  KEY `idDepartamento_idx` (`idDepartamento`),
  CONSTRAINT `idDepartamento` FOREIGN KEY (`idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `articulosucursal`
--

DROP TABLE IF EXISTS `articulosucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articulosucursal` (
  `idArticuloSucursal` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idArticuloS` int(10) unsigned NOT NULL,
  `idSucursalS` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idArticuloSucursal`),
  KEY `idArticuloS` (`idArticuloS`),
  KEY `idSucursalS` (`idSucursalS`),
  CONSTRAINT `articulosucursal_ibfk_1` FOREIGN KEY (`idArticuloS`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `articulosucursal_ibfk_2` FOREIGN KEY (`idSucursalS`) REFERENCES `sucursal` (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `idCiudad` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreCiudad` varchar(145) NOT NULL,
  `idEstado` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idCiudad`),
  KEY `idEstado_idx` (`idEstado`),
  CONSTRAINT `idEstado` FOREIGN KEY (`idEstado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `idDepartamento` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreDepartamento` varchar(75) NOT NULL,
  `activoDepartamento` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `idEmpresa` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `eslogan` varchar(245) NOT NULL,
  `nombreEmpresa` varchar(45) NOT NULL,
  PRIMARY KEY (`idEmpresa`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `idEstado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreEstado` varchar(145) NOT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen` (
  `idImagen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pathImagen` varchar(245) NOT NULL,
  `fechaImagen` date DEFAULT NULL,
  `horaImagen` time DEFAULT NULL,
  `idArticulo` int(10) unsigned DEFAULT NULL,
  `idEmpresa` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idImagen`),
  KEY `idArticulo_idx` (`idArticulo`),
  KEY `idEmpresa_idx` (`idEmpresa`),
  CONSTRAINT `idArticulo` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`idArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idEmpresa` FOREIGN KEY (`idEmpresa`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metodopago`
--

DROP TABLE IF EXISTS `metodopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metodopago` (
  `idMetodoPago` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreMetodoPago` varchar(75) NOT NULL,
  PRIMARY KEY (`idMetodoPago`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nivelestudio`
--

DROP TABLE IF EXISTS `nivelestudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nivelestudio` (
  `idNivelEstudio` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreNivelEstudio` varchar(45) NOT NULL,
  PRIMARY KEY (`idNivelEstudio`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `reporteventa`
--

DROP TABLE IF EXISTS `reporteventa`;
/*!50001 DROP VIEW IF EXISTS `reporteventa`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `reporteventa` AS SELECT 
 1 AS `fechaVenta`,
 1 AS `nombreSucursal`,
 1 AS `nombreDepartamento`,
 1 AS `nombreUsuario`,
 1 AS `codigoArticulo`,
 1 AS `descripcionCorta`,
 1 AS `descripcionLarga`,
 1 AS `cantidadVenta`,
 1 AS `descuento`,
 1 AS `impuestos`,
 1 AS `subtotal`,
 1 AS `nombreMetodoPago`,
 1 AS `idSucursalVenta`,
 1 AS `idDepartamentoVenta`,
 1 AS `idUsuarioVenta`,
 1 AS `idMetodoPagoVenta`,
 1 AS `puesto`,
 1 AS `idArticuloVenta`,
 1 AS `precioPublico`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sucursal`
--

DROP TABLE IF EXISTS `sucursal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sucursal` (
  `idSucursal` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreSucursal` varchar(75) NOT NULL,
  `activoSucursal` tinyint(1) unsigned DEFAULT '1',
  PRIMARY KEY (`idSucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(70) NOT NULL,
  `apellidoPaterno` varchar(70) NOT NULL,
  `apellidoMaterno` varchar(70) NOT NULL,
  `puesto` varchar(1) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `calle` varchar(145) NOT NULL,
  `numero` int(10) unsigned NOT NULL,
  `colonia` varchar(140) NOT NULL,
  `municipio` int(10) unsigned NOT NULL,
  `estado` int(10) unsigned NOT NULL,
  `codigoPostal` int(10) unsigned NOT NULL,
  `RFC` varchar(15) NOT NULL,
  `CURP` varchar(25) NOT NULL,
  `numeroNomina` int(10) unsigned NOT NULL,
  `foto` longblob NOT NULL,
  `correoElectronico` varchar(145) NOT NULL,
  `activoUsuario` tinyint(1) unsigned DEFAULT '1',
  `idNivelEstudioU` int(10) unsigned NOT NULL,
  `contrasenia` varchar(45) NOT NULL,
  `idSucursalVe` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `idNivelEstudioU_idx` (`idNivelEstudioU`),
  KEY `municipio_idx` (`municipio`),
  KEY `estado_idx` (`estado`),
  KEY `idSucursalVe_idx` (`idSucursalVe`),
  CONSTRAINT `estado` FOREIGN KEY (`estado`) REFERENCES `estado` (`idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idNivelEstudioU` FOREIGN KEY (`idNivelEstudioU`) REFERENCES `nivelestudio` (`idNivelEstudio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idSucursalVe` FOREIGN KEY (`idSucursalVe`) REFERENCES `sucursal` (`idSucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `municipio` FOREIGN KEY (`municipio`) REFERENCES `ciudad` (`idCiudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `venta` (
  `idVenta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idUsuarioVenta` int(10) unsigned NOT NULL,
  `subtotal` decimal(8,2) unsigned NOT NULL,
  `idMetodoPagoVenta` int(10) unsigned NOT NULL,
  `fechaVenta` date NOT NULL,
  `idSucursalVent` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idUsuarioVenta_idx` (`idUsuarioVenta`),
  KEY `idMetodoPagoVenta_idx` (`idMetodoPagoVenta`),
  KEY `idSucursalVent_idx` (`idSucursalVent`),
  CONSTRAINT `idMetodoPagoVenta` FOREIGN KEY (`idMetodoPagoVenta`) REFERENCES `metodopago` (`idMetodoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idSucursalVent` FOREIGN KEY (`idSucursalVent`) REFERENCES `sucursal` (`idSucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idUsuarioVenta` FOREIGN KEY (`idUsuarioVenta`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger backupventa
after insert on venta for each row
begin

insert into ventatemp (idUsuarioVenta, subtotal, idMetodoPagoVenta,fechaVenta,idSucursalVent) 
values (NEW.idUsuarioVenta, NEW.subtotal, NEW.idMetodoPagoVenta,NEW.fechaVenta,NEW.idSucursalVent);

end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ventatemp`
--

DROP TABLE IF EXISTS `ventatemp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventatemp` (
  `idVenta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idUsuarioVenta` int(10) unsigned NOT NULL,
  `subtotal` decimal(8,2) unsigned NOT NULL,
  `idMetodoPagoVenta` int(10) unsigned NOT NULL,
  `fechaVenta` date NOT NULL,
  `idSucursalVent` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idVenta`),
  KEY `idMetodoPagoVenta` (`idMetodoPagoVenta`),
  KEY `idUsuarioVenta` (`idUsuarioVenta`),
  KEY `idSucursalVent_idx` (`idSucursalVent`),
  CONSTRAINT `idSucursalVentt` FOREIGN KEY (`idSucursalVent`) REFERENCES `sucursal` (`idSucursal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ventatemp_ibfk_3` FOREIGN KEY (`idMetodoPagoVenta`) REFERENCES `metodopago` (`idMetodoPago`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ventatemp_ibfk_5` FOREIGN KEY (`idUsuarioVenta`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ventaventa`
--

DROP TABLE IF EXISTS `ventaventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ventaventa` (
  `idVentaVenta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idVentaV` int(10) unsigned NOT NULL,
  `cantidadVenta` int(10) unsigned NOT NULL,
  `idArticuloVenta` int(10) unsigned NOT NULL,
  `idDepartamentoVenta` int(10) unsigned NOT NULL,
  PRIMARY KEY (`idVentaVenta`),
  KEY `idVentaV_idx` (`idVentaV`),
  KEY `idDepartamentoVenta_idx` (`idDepartamentoVenta`),
  KEY `idArticuloVenta2_idx` (`idArticuloVenta`),
  CONSTRAINT `idArticuloVenta` FOREIGN KEY (`idArticuloVenta`) REFERENCES `articulo` (`idArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idDepartamentoVenta` FOREIGN KEY (`idDepartamentoVenta`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idVentaV` FOREIGN KEY (`idVentaV`) REFERENCES `venta` (`idVenta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `idVideo` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pathVideo` varchar(245) NOT NULL,
  `fechaVideo` date DEFAULT NULL,
  `horaVideo` time DEFAULT NULL,
  `idArticuloV` int(10) unsigned DEFAULT NULL,
  `idEmpresaV` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idVideo`),
  KEY `idArticulo_idx` (`idArticuloV`),
  KEY `idEmpresa_idx` (`idEmpresaV`),
  CONSTRAINT `idArticuloV` FOREIGN KEY (`idArticuloV`) REFERENCES `articulo` (`idArticulo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `idEmpresaV` FOREIGN KEY (`idEmpresaV`) REFERENCES `empresa` (`idEmpresa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'pvwlmad'
--

--
-- Dumping routines for database 'pvwlmad'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizarArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarArticulo`(
IN idA int(10),
IN  codigo int(10),
IN idDepartamentoa int (10),
IN descriCorta varchar(150),
IN descriLarga varchar(500),
IN precio decimal(8,2),
IN medida varchar(145),
IN existencia int (10),
IN impuesto int(10),
IN descuento int (11),
in tipoDesc char(1)
)
BEGIN 

update articulo
set codigoArticulo = codigo,
idDepartamento = idDepartamentoa,
descripcionCorta = descriCorta,
descripcionLarga = descriLarga,
precioPublico = precio,
unidadMedida = medida,
existencia = existencia,
impuestos = impuesto,
descuento = descuento,
tipoDescuento = tipoDesc
where idArticulo = idA;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizararticulosucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizararticulosucursal`(in idArticulo int, in idSucursal int)
begin

UPDATE articulosucursal
SET
idSucursalS = idSucursal
WHERE idArticuloS = idArticulo;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarDepartamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarDepartamento`(
IN idD int(10),
IN  nombreDepa varchar(75)
)
BEGIN 

update departamento
set nombreDepartamento = nombreDepa
where idDepartamento = idD;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarImagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarImagen`(
IN idI int(10),
IN fechImagen date,
IN  horImagen time
)
BEGIN 

update imagen
set idImagen = idI,
fechaImagen = fechImagen,
horaImagen = horImagen
where idImagen = idI;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarImagenA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarImagenA`(
IN pathIma varchar (245),
IN idArticulo int(10)
)
begin

UPDATE imagen
SET
pathImagen = pathIma
WHERE idArticulo = idArticulo;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarSucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarSucursal`(
IN idS int(10),
IN  nombreSucu varchar(75)
)
BEGIN 

update sucursal
set nombreSucursal = nombreSucu
where idSucursal = idS;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarUsuario`(
IN idU int(10),
IN  nomU varchar(70),
IN apellidoP varchar(70),
IN apellidoM varchar(70),
IN puesto varchar(1),
IN sexo varchar(1),
IN fecha date,
IN nivelEstudio int,
IN calle varchar (70),
IN numero int(10),
IN colonia varchar(140),
IN municipio int (10),
IN estado int(10),
IN codigoPostal int (10),
IN RFC varchar(15),
IN CURP varchar (70),
IN numeroNomina int(10),
IN foto longblob,
IN email varchar (145),
IN contra varchar (45),
in idSucursalVen int(10)
)
BEGIN 
if idSucursalVen > 0 then
if foto = 'NO' then

update usuario
set nombreUsuario = nomU,
apellidoPaterno =  apellidoP,
apellidoMaterno = apellidoM,
puesto = puesto,
sexo = sexo,
fechaNacimiento = fecha,
idNivelEstudioU = nivelEstudio,
calle = calle,
numero= numero, 
colonia = colonia,
municipio = municipio,
estado = estado,
codigoPostal = codigoPostal,
RFC = RFC,
CURP = CURP,
numeroNomina = numeroNomina,
correoElectronico = email,
contrasenia = contra,
idSucursalVe = idSucursalVen
where idUSuario = idU;

elseif foto != 'NO' then

update usuario
set nombreUsuario = nomU,
apellidoPaterno =  apellidoP,
apellidoMaterno = apellidoM,
puesto = puesto,
sexo = sexo,
fechaNacimiento = fecha,
idNivelEstudioU = nivelEstudio,
calle = calle,
numero= numero, 
colonia = colonia,
municipio = municipio,
estado = estado,
codigoPostal = codigoPostal,
RFC = RFC,
CURP = CURP,
numeroNomina = numeroNomina,
foto = foto,
correoElectronico = email,
contrasenia = contra,
idSucursalVe = idSucursalVen
where idUSuario = idU;

end if;

else

if foto = 'NO' then

update usuario
set nombreUsuario = nomU,
apellidoPaterno =  apellidoP,
apellidoMaterno = apellidoM,
puesto = puesto,
sexo = sexo,
fechaNacimiento = fecha,
idNivelEstudioU = nivelEstudio,
calle = calle,
numero= numero, 
colonia = colonia,
municipio = municipio,
estado = estado,
codigoPostal = codigoPostal,
RFC = RFC,
CURP = CURP,
numeroNomina = numeroNomina,
correoElectronico = email,
contrasenia = contra,
idSucursalVe = null
where idUSuario = idU;

elseif foto != 'NO' then

update usuario
set nombreUsuario = nomU,
apellidoPaterno =  apellidoP,
apellidoMaterno = apellidoM,
puesto = puesto,
sexo = sexo,
fechaNacimiento = fecha,
idNivelEstudioU = nivelEstudio,
calle = calle,
numero= numero, 
colonia = colonia,
municipio = municipio,
estado = estado,
codigoPostal = codigoPostal,
RFC = RFC,
CURP = CURP,
numeroNomina = numeroNomina,
foto = foto,
correoElectronico = email,
contrasenia = contra,
idSucursalVe = null
where idUSuario = idU;

end if;

end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarUsuarioSinFoto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarUsuarioSinFoto`(
IN idU int(10),
IN  nomU varchar(70),
IN apellidoP varchar(70),
IN apellidoM varchar(70),
IN puesto varchar(1),
IN sexo varchar(1),
IN fecha date,
IN nivelEstudio int,
IN calle varchar (70),
IN numero int(10),
IN colonia varchar(140),
IN municipio int (10),
IN estado int(10),
IN codigoPostal int (10),
IN RFC varchar(15),
IN CURP varchar (70),
IN numeroNomina int(10),
IN email varchar (145),
IN contra varchar (45)
)
BEGIN 

update usuario
set nombreUsuario = nomU,
apellidoPaterno =  apellidoP,
apellidoMaterno = apellidoM,
puesto = puesto,
sexo = sexo,
fechaNacimiento = fecha,
idNivelEstudioU = nivelEstudio,
calle = calle,
numero= numero, 
colonia = colonia,
municipio = municipio,
estado = estado,
codigoPostal = codigoPostal,
RFC = RFC,
CURP = CURP,
numeroNomina = numeroNomina,
correoElectronico = email,
contrasenia = contra
where idUSuario = idU;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `actualizarVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizarVideo`(
IN idV int(10),
IN fechVideo date,
IN  horVideo time
)
BEGIN 

update video
set idVideo = idV,
fechaVideo = fechVideo,
horaVideo = horVideo
where idVideo = idV;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarArticulo`(in id int)
BEGIN
   
     SELECT a.idArticulo,a.codigoArticulo,d.idDepartamento,a.descripcionCorta,a.descripcionLarga,a.precioPublico,a.unidadMedida,a.existencia,
    a.impuestos,a.descuento, a.tipoDescuento, i.idImagen,i.pathImagen,i.fechaImagen,i.horaImagen,v.idVideo,v.pathVideo,v.fechaVideo,v.horaVideo,asp.idSucursalS
    from articulo as a
    left join imagen as i
    on a.idArticulo = i.idArticulo
    left join video as v
    on a.idArticulo = v.idArticuloV
    left join departamento as d
    on a.idDepartamento = d.idDepartamento
    left join articulosucursal asp
    on asp.idArticuloS = a.idArticulo
    where i.idEmpresa is NULL and v.idEmpresaV is Null and a.idArticulo = id ;
        end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarArticuloC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarArticuloC`(in codigo int, in idsucursalc int)
BEGIN
   
     SELECT a.idArticulo,a.codigoArticulo,a.descripcionCorta,a.precioPublico,existencia,
    a.impuestos,a.descuento, d.idDepartamento, a.tipoDescuento, i.pathImagen
    from articulo as a
    left join imagen as i
    on a.idArticulo = i.idArticulo
    left join departamento as d
    on a.idDepartamento = d.idDepartamento
    inner join articulosucursal asp
    on a.idArticulo = asp.idArticuloS
    where i.idEmpresa is NULL and a.codigoArticulo = codigo and a.existencia > 0 and activoArticulo = 1 and asp.idSucursalS = idsucursalc;
        end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarArticuloDes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarArticuloDes`(in descr varchar(200), in idsucursalc int)
begin
select a.idArticulo, codigoArticulo, pathImagen
from articulo a
left join imagen i
on a.idArticulo = i.idArticulo
inner join articulosucursal asp
on a.idArticulo = asp.idArticuloS
where descripcionCorta like CONCAT('%', descr, '%') and activoArticulo = 1 and asp.idSucursalS = idsucursalc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarDepartamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarDepartamento`(in id int)
begin

    SELECT 
        `departamento`.`idDepartamento` AS `idDepartamento`,
        `departamento`.`nombreDepartamento` AS `nombreDepartamento`
    FROM
        `departamento`
        where activoDepartamento = 1 and idDepartamento = id;
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarSucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarSucursal`(in id int)
begin
select idSucursal,nombreSucursal from sucursal
where idSucursal = id ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `buscarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarUsuario`(in id int)
BEGIN
    SELECT 
        `u`.`idUsuario` AS `idUsuario`,
        `u`.`nombreUsuario`,
                `u`.`apellidoPaterno`,
                `u`.`apellidoMaterno`,
        `u`.`puesto` AS `puesto`,
        `u`.`sexo` AS `sexo`,
        `u`.`fechaNacimiento` AS `fechaNacimiento`,
       `u`.`calle`,
                `u`.`numero`,
                `u`.`colonia`,
        `cd`.`nombreCiudad` AS `nombreCiudad`,
        `edo`.`nombreEstado` AS `nombreEstado`,
        `cd`.`idCiudad` AS `idCiudad`,
        `edo`.`idEstado` AS `idEstado`,
        `u`.`codigoPostal` AS `codigoPostal`,
        `u`.`RFC` AS `RFC`,
        `u`.`CURP` AS `CURP`,
        `u`.`numeroNomina` AS `numeroNomina`,
         u.foto,
        `u`.`correoElectronico` AS `correoElectronico`,
        ne.nombreNivelEstudio,
        ne.idNivelEstudio,
        u.contrasenia,
        u.idSucursalVe
    FROM
        ((`usuario` `u`
        JOIN `estado` `edo` ON ((`u`.`estado` = `edo`.`idEstado`)))
        JOIN `ciudad` `cd` ON ((`u`.`municipio` = `cd`.`idCiudad`)))
        join nivelestudio as ne on u.idNivelEstudioU = ne.idNivelEstudio
        where activoUsuario = 1 and idUsuario = id;
        end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `cajeroReporte` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `cajeroReporte`()
begin
select idUsuario,nombreUsuario,apellidoPaterno from usuario where activoUsuario = 1 and puesto = 'C';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarArticulo`(
 IN idA int
)
begin
 UPDATE articulo
set activoArticulo=0
where idArticulo=idA; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarDepartamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarDepartamento`(
 IN idD int
)
begin
 UPDATE departamento
set activoDepartamento=0
where idDepartamento=idD; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarSucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarSucursal`(
 IN idS int
)
begin
 UPDATE sucursal
set activoSucursal=0
where idSucursal=idS; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `eliminarUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `eliminarUsuario`(
 IN idU int
)
begin
 UPDATE usuario
set activoUsuario=0
where idUsuario=idU; 

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `imagenReproducir` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `imagenReproducir`()
begin

SELECT idImagen, pathImagen
FROM imagen
where idEmpresa = 1
and fechaImagen = now() and horaImagen = TIME(now());
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `imagenUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `imagenUsuario`(in id int)
BEGIN
select foto from usuario
where idUsuario = id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `inicioSesion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `inicioSesion`(
	in mail varchar(100),
	in contra varchar(100)
    )
begin 
		Select idUsuario, nombreUsuario, puesto, idSucursalVe
        from usuario
        where correoElectronico = mail and contrasenia = contra and activoUsuario = 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertArticulo`(
IN  codigo int(10),
IN idDepartamento int (10),
IN descriCorta varchar(150),
IN descriLarga varchar(500),
IN precio decimal(8,2),
IN medida varchar(145),
IN existencia int (10),
IN impuesto int(10),
IN descuento int (11),
in tipoDesc char(1)
)
begin
INSERT INTO articulo (codigoArticulo,idDepartamento,descripcionCorta,descripcionLarga,precioPublico,unidadMedida,existencia,impuestos,descuento, 
activoArticulo, tipoDescuento)

VALUES(codigo,idDepartamento,descriCorta,descriLarga,precio,medida,existencia,impuesto,descuento, 1, tipoDesc);

SELECT LAST_INSERT_ID() as idArticulo;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertarticulosucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertarticulosucursal`(in idArticulo int, in idSucursal int)
begin
INSERT INTO articulosucursal
(idArticuloS,
idSucursalS)
VALUES
(idArticulo,
idSucursal);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertDepartamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertDepartamento`(IN  nombreDepa varchar(75))
begin
INSERT INTO departamento (nombreDepartamento,activoDepartamento)

VALUES(nombreDepa, 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertImagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertImagen`(
IN pathIma varchar (245),
IN idArticulo int(10)
)
begin
INSERT INTO imagen (pathImagen,fechaImagen,horaImagen,idArticulo,idEmpresa)

VALUES(pathIma,null,null,idArticulo,null);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertSucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertSucursal`(IN  nombreSucu varchar(75))
begin
INSERT INTO sucursal (nombreSucursal,activoSucursal)

VALUES(nombreSucu, 1);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertUsuario`(
IN  nomU varchar(70),
IN apellidoP varchar(70),
IN apellidoM varchar(70),
IN puesto varchar(1),
IN sexo varchar(1),
IN fecha date,
IN nivelEstudio varchar(70),
IN calle varchar (70),
IN numero int(10),
IN colonia varchar(140),
IN municipio int (10),
IN estado int(10),
IN codigoPostal int (10),
IN RFC varchar(15),
IN CURP varchar (70),
IN numeroNomina int(10),
IN foto longblob,
IN email varchar (145),
IN contra varchar (45),
in idSucursalVen int(10)
)
begin
if idSucursalVen > 0 then
INSERT INTO usuario (nombreUsuario,apellidoPaterno,apellidoMaterno,puesto,sexo,fechaNacimiento,calle,numero, 
colonia,municipio,estado,codigoPostal,RFC,CURP,numeroNomina,foto,correoElectronico,activoUsuario,idNivelEstudioU,contrasenia,idSucursalVe)

VALUES(nomU,apellidoP,apellidoM,puesto,sexo,fecha,calle,numero,colonia,municipio,estado,codigoPostal,RFC,CURP,numeroNomina,foto,
email,1,nivelEstudio,contra,idSucursalVen);
else

INSERT INTO usuario (nombreUsuario,apellidoPaterno,apellidoMaterno,puesto,sexo,fechaNacimiento,calle,numero, 
colonia,municipio,estado,codigoPostal,RFC,CURP,numeroNomina,foto,correoElectronico,activoUsuario,idNivelEstudioU,contrasenia,idSucursalVe)

VALUES(nomU,apellidoP,apellidoM,puesto,sexo,fecha,calle,numero,colonia,municipio,estado,codigoPostal,RFC,CURP,numeroNomina,foto,
email,1,nivelEstudio,contra,null);

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertVenta`(
IN idUsuario int(10),
IN subtotalv decimal(8,2),
IN idMetodoPagov int (10),
in idSucursalVen int(10)
)
begin
INSERT INTO venta (idUsuarioVenta,subtotal,idMetodoPagoVenta, fechaVenta, idSucursalVent)

VALUES(idUsuario,subtotalv,idMetodoPagov, now(), idSucursalVen);



SELECT LAST_INSERT_ID() as idVenta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertVentaVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertVentaVenta`(
IN idVenta int (10),
IN cantidadVentaV int(10),
IN idArticuloV int(10),
in idDepartamentov int(10)
)
begin

INSERT INTO ventaventa
(
idVentaV,
cantidadVenta,
idArticuloVenta,
idDepartamentoVenta)
VALUES
(idVenta,cantidadVentaV, idArticuloV,idDepartamentov);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertVideo`(
IN pathVid varchar (245),
IN fechaVid date,
IN horaVid time,
IN idArticuloV int(10),
IN idEmpresaV int(10)
)
begin
INSERT INTO video (pathVideo,fechaVideo,horaVideo,idArticuloV,idEmpresaV)

VALUES(pathVid,fechaVid,horaVid,idArticuloV,idEmpresaV);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaArticulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaArticulo`()
BEGIN
   
  SELECT a.idArticulo,a.codigoArticulo,d.idDepartamento,d.nombreDepartamento,a.descripcionCorta,a.descripcionLarga,a.precioPublico,a.unidadMedida,a.existencia,
    a.impuestos,a.descuento, a.tipoDescuento, i.idImagen,i.pathImagen,i.fechaImagen,i.horaImagen,v.idVideo,v.pathVideo,v.fechaVideo,v.horaVideo
    from articulo as a
    left join imagen as i
    on a.idArticulo = i.idArticulo
    left join video as v
    on a.idArticulo = v.idArticuloV
    left join departamento as d
    on a.idDepartamento = d.idDepartamento
    where i.idEmpresa is NULL and v.idEmpresaV is Null and a.activoArticulo=1 ;
        end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaCiudad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaCiudad`()
begin

    SELECT 
        `ciudad`.`idCiudad` AS `idCiudad`,
        `ciudad`.`nombreCiudad` AS `nombreCiudad`,
        `ciudad`.`idEstado` AS `idEstado`
    FROM
        `ciudad`;
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaCiudadEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaCiudadEstado`()
begin
    SELECT c.idCiudad, c.nombreCiudad, e.idEstado, e.nombreEstado from ciudad as c
    join estado as e
    on c.idEstado = e.idEstado;
    

    
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaDepartamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaDepartamento`()
begin

    SELECT 
        `departamento`.`idDepartamento` AS `idDepartamento`,
        `departamento`.`nombreDepartamento` AS `nombreDepartamento`
    FROM
        `departamento`
        where activoDepartamento = 1;
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaEmpresa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaEmpresa`()
begin
    SELECT e.idEmpresa,e.eslogan,e.logo, i.idImagen,i.pathImagen,i.fechaImagen,i.horaImagen, v.idVideo,v.pathVideo,v.fechaVideo,v.horaVideo
    from empresa as e
    join imagen as i
    on e.idEmpresa = i.idEmpresa
    join video as v
    on e.idEmpresa = v.idEmpresaV
    where i.idArticulo is NULL and v.idArticuloV  is null ;

    

    
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaEstado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaEstado`()
begin

    SELECT 
        `estado`.`idEstado` AS `idEstado`,
        `estado`.`nombreEstado` AS `nombreEstado`
    FROM
        `estado`;
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaImagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaImagen`(in id int, in idArticuloI int)
begin

if id > 0  then

    SELECT idImagen,pathImagen,fechaImagen,horaImagen,idArticulo,idEmpresa from imagen where idEmpresa = id;
   
   elseif idArticuloI > 0 then

     SELECT idImagen,pathImagen,fechaImagen,horaImagen,idArticulo,idEmpresa from imagen where idArticulo = idArticuloI;
end if;
    
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaNivelEstudio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaNivelEstudio`()
begin

select idNivelEstudio, nombreNivelEstudio
from nivelestudio;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaPago`()
BEGIN
    SELECT 
        `metodopago`.`idMetodoPago` AS `idMetodoPago`,
        `metodopago`.`nombreMetodoPago` AS `nombreMetodoPago`
    FROM
        `metodopago`;
       END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaSucursal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaSucursal`()
begin
select idSucursal,nombreSucursal from sucursal
where activoSucursal=1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaUsuarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaUsuarios`()
BEGIN
    SELECT 
        `u`.`idUsuario` AS `idUsuario`,
        `u`.`nombreUsuario`,
                `u`.`apellidoPaterno`,
                `u`.`apellidoMaterno`,
        `u`.`puesto` AS `puesto`,
        `u`.`sexo` AS `sexo`,
        `u`.`fechaNacimiento` AS `fechaNacimiento`,
       `u`.`calle`,
                `u`.`numero`,
                `u`.`colonia`,
        `cd`.`nombreCiudad` AS `nombreCiudad`,
        `edo`.`nombreEstado` AS `nombreEstado`,
        `cd`.`idCiudad` AS `idCiudad`,
        `edo`.`idEstado` AS `idEstado`,
        `u`.`codigoPostal` AS `codigoPostal`,
        `u`.`RFC` AS `RFC`,
        `u`.`CURP` AS `CURP`,
        `u`.`numeroNomina` AS `numeroNomina`,
         u.foto,
        `u`.`correoElectronico` AS `correoElectronico`,  
        ne.nombreNivelEstudio,
        ne.idNivelEstudio,
        u.idSucursalVe
    FROM
        ((`usuario` `u`
        JOIN `estado` `edo` ON ((`u`.`estado` = `edo`.`idEstado`)))
        JOIN `ciudad` `cd` ON ((`u`.`municipio` = `cd`.`idCiudad`)))
        join nivelestudio as ne on u.idNivelEstudioU = ne.idNivelEstudio
        where activoUsuario = 1;
        end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaVenta`()
begin
    SELECT 
        `v`.`fechaVenta` AS `fechaVenta`,
        `s`.`nombreSucursal` AS `nombreSucursal`,
        `d`.`nombreDepartamento` AS `nombreDepartamento`,
        `u`.`nombreUsuario` AS `nombreUsuario`,
        `a`.`codigoArticulo` AS `codigoArticulo`,
        `a`.`descripcionCorta` AS `descripcionCorta`,
        `v`.`cantidadVenta` AS `cantidadVenta`,
        `a`.`descuento` AS `descuento`,
        `a`.`impuestos` AS `impuestos`,
        `v`.`subtotal` AS `subtotal`,
        `m`.`nombreMetodoPago` AS `nombreMetodoPago`,
        `v`.`idSucursalVenta` AS `idSucursalVenta`,
        `v`.`idDepartamentoVenta` AS `idDepartamentoVenta`,
        `v`.`idUsuarioVenta` AS `idUsuarioVenta`,
        `v`.`idMetodoPagoVenta` AS `idMetodoPagoVenta`,
        `u`.`puesto` AS `puesto`
    FROM
        (((((`venta` `v`
        JOIN `sucursal` `s` ON ((`v`.`idSucursalVenta` = `s`.`idSucursal`)))
        JOIN `departamento` `d` ON ((`v`.`idDepartamentoVenta` = `d`.`idDepartamento`)))
        JOIN `usuario` `u` ON ((`v`.`idUsuarioVenta` = `u`.`idUsuario`)))
        JOIN `metodopago` `m` ON ((`v`.`idMetodoPagoVenta` = `m`.`idMetodoPago`)))
        JOIN `articulo` `a` ON ((`v`.`idArticuloVenta` = `a`.`idArticulo`)));
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listaVideo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listaVideo`(in id int, in idArticulo int)
begin

if id > 0 then
    SELECT idVideo,pathVideo,fechaVideo,horaVideo,idArticuloV,idEmpresaV from video where idEmpresaV = id;
      elseif idArticulo >0 then

    SELECT idVideo,pathVideo,fechaVideo,horaVideo,idArticuloV,idEmpresaV from video where idArticuloV = idArticulo;
end if;
    
        END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `reporteVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `reporteVenta`(
in fechaInicial date,
in fechaFinal date,
in idUsuarioV int,
in idSucursalV int,
in idDepartamentoV int,
in idPagoV int
)
begin
if fechaInicial is not null and fechaFinal is not null and idUsuarioV = 0 and idSucursalV = 0 and idDepartamentoV = 0 and idPagoV = 0 then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idUsuarioV > 0 and idSucursalV = 0 and idDepartamentoV = 0 and idPagoV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idUsuarioVenta = idUsuarioV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idSucursalV > 0 and idUsuarioV = 0 and idDepartamentoV = 0 and idPagoV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idSucursalVenta = idSucursalV and fechaVenta between fechaInicial and fechaFinal;
        end if;

if idDepartamentoV > 0 and idUsuarioV = 0 and idSucursalV = 0 and idPagoV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idDepartamentoVenta = idDepartamentoV and fechaVenta between fechaInicial and fechaFinal;
        end if;

if idPagoV > 0 and  idDepartamentoV = 0 and idUsuarioV = 0 and idSucursalV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idMetodoPagoVenta = idPagoV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idSucursalV > 0 and  idDepartamentoV > 0 and idUsuarioV = 0 and idPagoV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idSucursalVenta = idSucursalV and idDepartamentoVenta = idDepartamentoV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idSucursalV > 0 and  idDepartamentoV = 0 and idUsuarioV > 0 and idPagoV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idSucursalVenta = idSucursalV and idUsuarioVenta = idUsuarioV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idSucursalV > 0 and  idDepartamentoV = 0 and idUsuarioV = 0 and idPagoV > 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idMetodoPagoVenta = idPagoV and idSucursalVenta = idSucursalV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idSucursalV > 0 and  idDepartamentoV > 0 and idUsuarioV > 0 and idPagoV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idSucursalVenta = idSucursalV and idUsuarioVenta = idUsuarioV and idDepartamentoVenta = idDepartamentoV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idSucursalV > 0 and  idDepartamentoV > 0 and idUsuarioV = 0 and idPagoV > 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idSucursalVenta = idSucursalV and idMetodoPagoVenta = idPagoV and idDepartamentoVenta = idDepartamentoV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idSucursalV > 0 and  idDepartamentoV = 0 and idUsuarioV > 0 and idPagoV > 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idSucursalVenta = idSucursalV and idUsuarioVenta = idUsuarioV and idMetodoPagoVenta = idPagoV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idSucursalV > 0 and  idDepartamentoV > 0 and idUsuarioV > 0 and idPagoV > 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idSucursalVenta = idSucursalV and idDepartamentoVenta = idDepartamentoV and idUsuarioVenta = idUsuarioV and idMetodoPagoVenta = idPagoV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
                
if idDepartamentoV > 0 and  idSucursalV = 0 and idUsuarioV > 0 and idPagoV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idDepartamentoVenta = idDepartamentoV and idUsuarioVenta = idUsuarioV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idDepartamentoV > 0 and  idSucursalV = 0 and idUsuarioV = 0 and idPagoV > 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idDepartamentoVenta = idDepartamentoV and idMetodoPagoVenta = idPagoV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
if idDepartamentoV > 0 and  idSucursalV = 0 and idUsuarioV > 0 and idPagoV > 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idDepartamentoVenta = idDepartamentoV and idUsuarioVenta = idUsuarioV and idMetodoPagoVenta = idPagoV and fechaVenta between fechaInicial and fechaFinal;
        end if;
        
        if idPagoV > 0 and  idSucursalV = 0 and idUsuarioV > 0 and idDepartamentoV = 0 and fechaInicial is not null and fechaFinal is not null then
select 
		DATE_FORMAT(fechaVenta, '%d/%m/%Y') AS fechaVenta,
		nombreSucursal,
		nombreDepartamento,
		nombreUsuario,
		codigoArticulo,
		descripcionCorta,
		descripcionLarga,
        cantidadVenta,
		descuento,
		impuestos,
        subtotal,
		nombreMetodoPago,
        idSucursalVenta,
		idDepartamentoVenta,
		idUsuarioVenta,
		idMetodoPagoVenta,
        idArticuloVenta,
        precioPublico,
        puesto 
        from  reporteventa where idMetodoPagoVenta = idPagoV and idUsuarioVenta = idUsuarioV and fechaVenta between fechaInicial and fechaFinal;
        end if;


end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `videoReproducir` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `videoReproducir`(in id int)
begin


if id = 1 then
   SELECT idVideo, pathVideo FROM video where idEmpresaV = 1 and fechaVideo = DATE(now()) and TIME(now()) <=  horaVideo;
      
      elseif id = 2 then

    SELECT idVideo, pathVideo FROM video where idEmpresaV = 2;

end if;
    

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `reporteventa`
--

/*!50001 DROP VIEW IF EXISTS `reporteventa`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reporteventa` AS select `v`.`fechaVenta` AS `fechaVenta`,`s`.`nombreSucursal` AS `nombreSucursal`,`d`.`nombreDepartamento` AS `nombreDepartamento`,`u`.`nombreUsuario` AS `nombreUsuario`,`a`.`codigoArticulo` AS `codigoArticulo`,`a`.`descripcionCorta` AS `descripcionCorta`,`a`.`descripcionLarga` AS `descripcionLarga`,`vv`.`cantidadVenta` AS `cantidadVenta`,`a`.`descuento` AS `descuento`,`a`.`impuestos` AS `impuestos`,`v`.`subtotal` AS `subtotal`,`m`.`nombreMetodoPago` AS `nombreMetodoPago`,`v`.`idSucursalVent` AS `idSucursalVenta`,`vv`.`idDepartamentoVenta` AS `idDepartamentoVenta`,`v`.`idUsuarioVenta` AS `idUsuarioVenta`,`v`.`idMetodoPagoVenta` AS `idMetodoPagoVenta`,`u`.`puesto` AS `puesto`,`a`.`idArticulo` AS `idArticuloVenta`,`a`.`precioPublico` AS `precioPublico` from ((((((`venta` `v` join `ventaventa` `vv` on((`v`.`idVenta` = `vv`.`idVentaV`))) join `sucursal` `s` on((`v`.`idSucursalVent` = `s`.`idSucursal`))) join `departamento` `d` on((`vv`.`idDepartamentoVenta` = `d`.`idDepartamento`))) join `usuario` `u` on((`v`.`idUsuarioVenta` = `u`.`idUsuario`))) join `metodopago` `m` on((`v`.`idMetodoPagoVenta` = `m`.`idMetodoPago`))) join `articulo` `a` on((`vv`.`idArticuloVenta` = `a`.`idArticulo`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-15 20:26:59
