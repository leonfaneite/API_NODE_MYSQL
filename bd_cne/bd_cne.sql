-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bd_cne
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `bd_cne`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `bd_cne` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `bd_cne`;

--
-- Table structure for table `centro_votacion`
--

DROP TABLE IF EXISTS `centro_votacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `centro_votacion` (
  `cv_id` int(11) NOT NULL,
  `cv_code` int(11) DEFAULT NULL,
  `condicion` tinyint(1) DEFAULT NULL,
  `geografia_edo_id` int(11) DEFAULT NULL,
  `cv_nombre` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `votantes` int(11) DEFAULT NULL,
  PRIMARY KEY (`cv_id`),
  KEY `geografia_edo_id` (`geografia_edo_id`),
  CONSTRAINT `centro_votacion_ibfk_1` FOREIGN KEY (`geografia_edo_id`) REFERENCES `geografia` (`edo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_votacion`
--

LOCK TABLES `centro_votacion` WRITE;
/*!40000 ALTER TABLE `centro_votacion` DISABLE KEYS */;
INSERT INTO `centro_votacion` VALUES (1,1,1,1,'escuela primera','barrio 23 de enero',1200);
INSERT INTO `centro_votacion` VALUES (2,2,1,1,'escuela primera','barrio 23 de enero',1200);
/*!40000 ALTER TABLE `centro_votacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `electors`
--

DROP TABLE IF EXISTS `electors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `electors` (
  `cedula` int(10) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `fecha_nac` date DEFAULT NULL,
  `sex` varchar(1) DEFAULT NULL,
  `centro_votacion_cv_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cedula`),
  KEY `centro_votacion_cv_id` (`centro_votacion_cv_id`),
  CONSTRAINT `electors_ibfk_1` FOREIGN KEY (`centro_votacion_cv_id`) REFERENCES `centro_votacion` (`cv_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `electors`
--

LOCK TABLES `electors` WRITE;
/*!40000 ALTER TABLE `electors` DISABLE KEYS */;
INSERT INTO `electors` VALUES (16198622,'lorena','1984-02-02','m',1);
INSERT INTO `electors` VALUES (16754377,'leon','1984-02-03','m',1);
/*!40000 ALTER TABLE `electors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geografia`
--

DROP TABLE IF EXISTS `geografia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geografia` (
  `edo_id` int(11) NOT NULL,
  `mun_id` int(11) DEFAULT NULL,
  `prq_id` int(11) DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL,
  `municipio` varchar(30) DEFAULT NULL,
  `parroquia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`edo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geografia`
--

LOCK TABLES `geografia` WRITE;
/*!40000 ALTER TABLE `geografia` DISABLE KEYS */;
INSERT INTO `geografia` VALUES (1,1,1,'amazonas','yanomami','indio');
INSERT INTO `geografia` VALUES (2,2,2,'amazonas','yanomami','indio');
/*!40000 ALTER TABLE `geografia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-09 15:30:14
