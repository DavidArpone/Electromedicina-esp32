-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: practicas
-- ------------------------------------------------------
-- Server version	5.7.29-log

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
-- Table structure for table `favoritos`
--

DROP TABLE IF EXISTS `favoritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favoritos` (
  `idfavoritos` int(11) NOT NULL AUTO_INCREMENT,
  `idprofesionales` int(11) NOT NULL,
  `idpacientes` int(11) NOT NULL,
  `entrada` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  PRIMARY KEY (`idfavoritos`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metricas`
--

DROP TABLE IF EXISTS `metricas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metricas` (
  `idmetricas` int(11) NOT NULL AUTO_INCREMENT,
  `idpacientes` int(11) NOT NULL,
  `dato` varchar(45) NOT NULL,
  `valor` float(4,1) NOT NULL,
  `fecha` timestamp(2) NOT NULL DEFAULT CURRENT_TIMESTAMP(2) ON UPDATE CURRENT_TIMESTAMP(2),
  `obs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmetricas`),
  UNIQUE KEY `idmetricas_UNIQUE` (`idmetricas`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pacientes`
--

DROP TABLE IF EXISTS `pacientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pacientes` (
  `idpacientes` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `tel` double NOT NULL,
  `edad` int(11) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `obs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpacientes`),
  UNIQUE KEY `id_UNIQUE` (`idpacientes`),
  UNIQUE KEY `dni_UNIQUE` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pacientes`
--

LOCK TABLES `pacientes` WRITE;
/*!40000 ALTER TABLE `pacientes` DISABLE KEYS */;
INSERT INTO `pacientes` VALUES (1,'Jaime','Root','23534576','jaimeroot@gmail.com',2219999999,63,'Masculino','Diabetico'),
(2,'Jaime','Arnef','37132145','jaimearnef@gmail.com',2213223456,39,'Masculino','Insuficiencia renal'),
(3,'Shein','carlomagno','17345763','sheinmagno@gmail.com',2212653456,67,'Masculino','Sin observaciones'),
(4,'Maria','Zarlo','3132654','mariz@gmail.com',2219834657,53,'Femenino','Diabetica'),
(5,'Elizabeth','Serena','34984536','lizzyserena@gmail.com',2214323423,29,'Femenino','Sin observaciones'),
(6,'Carlos','Gisno','30214389','gisnocarlosf@gmail.com',2214098012,43,'Masculino','Soplo'),
(7,'Ernesto','Genaro','33125487','ernestogenaro@gmail.com',2219879612,40,'Masculino','Cancer'),
(8,'Sahara','Hernan','40126589','saharahernan@gmail.com',2211230628,28,'Femenino','Diabetica'),
(9,'Arnedo','Poledo','32986742','arnedo@gmail.com',2215891283,41,'Masculino','Sin observaciones'),
(10,'Ailin','Quijada','23978154','Ailin@gmail.com',2216073192,47,'Femenino','Presion alta');

/*!40000 ALTER TABLE `pacientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesionales`
--

DROP TABLE IF EXISTS `profesionales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profesionales` (
  `idprofesionales` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `dni` int(11) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `tel` double NOT NULL,
  `psw` varchar(45) NOT NULL,
  `obs` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprofesionales`),
  UNIQUE KEY `dni_UNIQUE` (`dni`),
  UNIQUE KEY `id_UNIQUE` (`idprofesionales`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesionales`
--

LOCK TABLES `profesionales` WRITE;
/*!40000 ALTER TABLE `profesionales` DISABLE KEYS */;
INSERT INTO `profesionales` VALUES (1,'Cosme','Fulanito',99999999,'cosme@gmail.com',2212222222,'12345',NULL);
/*!40000 ALTER TABLE `profesionales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'practicas'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-16 20:02:32
