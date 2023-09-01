-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: dbcerty
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `certificado_auxiliar`
--

DROP TABLE IF EXISTS `certificado_auxiliar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificado_auxiliar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creditos` int NOT NULL,
  `horas` int NOT NULL,
  `lugar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `estudiante_id` int NOT NULL,
  `programa_estudio_id` int NOT NULL,
  `documento_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `certificado_auxiliar_FK` (`estudiante_id`),
  KEY `certificado_auxiliar_FK_1` (`programa_estudio_id`),
  KEY `certificado_auxiliar_FK_2` (`documento_id`),
  CONSTRAINT `certificado_auxiliar_FK` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`),
  CONSTRAINT `certificado_auxiliar_FK_1` FOREIGN KEY (`programa_estudio_id`) REFERENCES `programa_estudio` (`id`),
  CONSTRAINT `certificado_auxiliar_FK_2` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificado_auxiliar`
--

LOCK TABLES `certificado_auxiliar` WRITE;
/*!40000 ALTER TABLE `certificado_auxiliar` DISABLE KEYS */;
INSERT INTO `certificado_auxiliar` VALUES (1,400,600,'Juliaca','111111','2023-08-08',1,1,1);
/*!40000 ALTER TABLE `certificado_auxiliar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificado_grado`
--

DROP TABLE IF EXISTS `certificado_grado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificado_grado` (
  `id` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(100) NOT NULL,
  `entidad_id` int NOT NULL,
  `estudiante_id` int NOT NULL,
  `nivel_academico_id` int NOT NULL,
  `documento_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `certificado_grado_FK` (`entidad_id`),
  KEY `certificado_grado_FK_1` (`estudiante_id`),
  KEY `certificado_grado_FK_2` (`nivel_academico_id`),
  KEY `certificado_grado_FK_3` (`documento_id`),
  CONSTRAINT `certificado_grado_FK` FOREIGN KEY (`entidad_id`) REFERENCES `entidad` (`id`),
  CONSTRAINT `certificado_grado_FK_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`),
  CONSTRAINT `certificado_grado_FK_2` FOREIGN KEY (`nivel_academico_id`) REFERENCES `nivel_academico` (`id`),
  CONSTRAINT `certificado_grado_FK_3` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificado_grado`
--

LOCK TABLES `certificado_grado` WRITE;
/*!40000 ALTER TABLE `certificado_grado` DISABLE KEYS */;
INSERT INTO `certificado_grado` VALUES (1,'2312322222',1,1,1,1);
/*!40000 ALTER TABLE `certificado_grado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificado_modular`
--

DROP TABLE IF EXISTS `certificado_modular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificado_modular` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creditos` int NOT NULL,
  `horas` int NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `estudiante_id` int NOT NULL,
  `modulo_formativo_id` int NOT NULL,
  `documento_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `certificado_modular_FK` (`estudiante_id`),
  KEY `certificado_modular_FK_1` (`modulo_formativo_id`),
  KEY `certificado_modular_FK_2` (`documento_id`),
  CONSTRAINT `certificado_modular_FK` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`),
  CONSTRAINT `certificado_modular_FK_1` FOREIGN KEY (`modulo_formativo_id`) REFERENCES `modulo_formativo` (`id`),
  CONSTRAINT `certificado_modular_FK_2` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificado_modular`
--

LOCK TABLES `certificado_modular` WRITE;
/*!40000 ALTER TABLE `certificado_modular` DISABLE KEYS */;
INSERT INTO `certificado_modular` VALUES (1,200,700,'Arequipa','2023-08-25','12321311',1,1,1);
/*!40000 ALTER TABLE `certificado_modular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificado_titulo`
--

DROP TABLE IF EXISTS `certificado_titulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `certificado_titulo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` char(1) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `entidad_id` int NOT NULL,
  `estudiante_id` int NOT NULL,
  `nivel_academico_id` int NOT NULL,
  `documento_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `certificado_titulo_FK` (`entidad_id`),
  KEY `certificado_titulo_FK_1` (`estudiante_id`),
  KEY `certificado_titulo_FK_2` (`nivel_academico_id`),
  KEY `certificado_titulo_FK_3` (`documento_id`),
  CONSTRAINT `certificado_titulo_FK` FOREIGN KEY (`entidad_id`) REFERENCES `entidad` (`id`),
  CONSTRAINT `certificado_titulo_FK_1` FOREIGN KEY (`estudiante_id`) REFERENCES `estudiante` (`id`),
  CONSTRAINT `certificado_titulo_FK_2` FOREIGN KEY (`nivel_academico_id`) REFERENCES `nivel_academico` (`id`),
  CONSTRAINT `certificado_titulo_FK_3` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificado_titulo`
--

LOCK TABLES `certificado_titulo` WRITE;
/*!40000 ALTER TABLE `certificado_titulo` DISABLE KEYS */;
INSERT INTO `certificado_titulo` VALUES (1,'0','1112321121',1,1,1,1);
/*!40000 ALTER TABLE `certificado_titulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `copia_documento`
--

DROP TABLE IF EXISTS `copia_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `copia_documento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url_copia_documento` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `estado` char(1) NOT NULL,
  `tipo` char(1) NOT NULL,
  `documento_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `copia_documento_FK` (`documento_id`),
  CONSTRAINT `copia_documento_FK` FOREIGN KEY (`documento_id`) REFERENCES `documento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `copia_documento`
--

LOCK TABLES `copia_documento` WRITE;
/*!40000 ALTER TABLE `copia_documento` DISABLE KEYS */;
INSERT INTO `copia_documento` VALUES (1,'src/documentos/copia-doc1.pdf','1','1',1);
/*!40000 ALTER TABLE `copia_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `url_documento` varchar(200) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
INSERT INTO `documento` VALUES (1,'src/documentos/doc1.pdf','1');
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidad`
--

DROP TABLE IF EXISTS `entidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entidad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `url_logo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `responsable` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tipo` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidad`
--

LOCK TABLES `entidad` WRITE;
/*!40000 ALTER TABLE `entidad` DISABLE KEYS */;
INSERT INTO `entidad` VALUES (1,'UPEU','src/logo.png','Lukas','1');
/*!40000 ALTER TABLE `entidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `apellidos` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `foto` varchar(200) NOT NULL,
  `codigo_universitario` varchar(9) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `estudiante_FK` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'lenin','quispe','src/lenin.png','202014561','12345678','2023-08-04');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `indicador_logro`
--

DROP TABLE IF EXISTS `indicador_logro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `indicador_logro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `unidad_competencia_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `indicador_logro_FK` (`unidad_competencia_id`),
  CONSTRAINT `indicador_logro_FK` FOREIGN KEY (`unidad_competencia_id`) REFERENCES `unidad_competencia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `indicador_logro`
--

LOCK TABLES `indicador_logro` WRITE;
/*!40000 ALTER TABLE `indicador_logro` DISABLE KEYS */;
INSERT INTO `indicador_logro` VALUES (1,'IL01-Hola4',1);
/*!40000 ALTER TABLE `indicador_logro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modulo_formativo`
--

DROP TABLE IF EXISTS `modulo_formativo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modulo_formativo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `creditos_minimos` int NOT NULL,
  `horas_minimas` int NOT NULL,
  `programa_estudio_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `modulo_formativo_FK` (`programa_estudio_id`),
  CONSTRAINT `modulo_formativo_FK` FOREIGN KEY (`programa_estudio_id`) REFERENCES `programa_estudio` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modulo_formativo`
--

LOCK TABLES `modulo_formativo` WRITE;
/*!40000 ALTER TABLE `modulo_formativo` DISABLE KEYS */;
INSERT INTO `modulo_formativo` VALUES (1,'MF01-Hola2','2023-08-02','2023-08-25',100,411,1);
/*!40000 ALTER TABLE `modulo_formativo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel_academico`
--

DROP TABLE IF EXISTS `nivel_academico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel_academico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nivel` varchar(100) NOT NULL,
  `tipo` char(1) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel_academico`
--

LOCK TABLES `nivel_academico` WRITE;
/*!40000 ALTER TABLE `nivel_academico` DISABLE KEYS */;
INSERT INTO `nivel_academico` VALUES (1,'grado de bachiller en osiptel','0','2023-08-04','2023-08-08');
/*!40000 ALTER TABLE `nivel_academico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa_estudio`
--

DROP TABLE IF EXISTS `programa_estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `programa_estudio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `creditos_minimos` int NOT NULL,
  `horas_minimas` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa_estudio`
--

LOCK TABLES `programa_estudio` WRITE;
/*!40000 ALTER TABLE `programa_estudio` DISABLE KEYS */;
INSERT INTO `programa_estudio` VALUES (1,'PE01-Hola','2023-08-01','2023-08-31',200,550);
/*!40000 ALTER TABLE `programa_estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad_competencia`
--

DROP TABLE IF EXISTS `unidad_competencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidad_competencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `modulo_competencia_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `unidad_competencia_FK` (`modulo_competencia_id`),
  CONSTRAINT `unidad_competencia_FK` FOREIGN KEY (`modulo_competencia_id`) REFERENCES `modulo_formativo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad_competencia`
--

LOCK TABLES `unidad_competencia` WRITE;
/*!40000 ALTER TABLE `unidad_competencia` DISABLE KEYS */;
INSERT INTO `unidad_competencia` VALUES (1,'UC01-Hola3',1);
/*!40000 ALTER TABLE `unidad_competencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasenia` varchar(100) NOT NULL,
  `estado` char(1) NOT NULL,
  `rol` char(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'saul','saul@gmail.com','123456','1','1');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbcerty'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-31 23:25:49
