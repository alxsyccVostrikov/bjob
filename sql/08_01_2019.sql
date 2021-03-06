-- MySQL dump 10.13  Distrib 5.5.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: bingojob
-- ------------------------------------------------------
-- Server version	5.5.61-0ubuntu0.14.04.1

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
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `tipo` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES ('EngenhariaCívil'),('Tecnologia');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bj`
--

DROP TABLE IF EXISTS `bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bj` (
  `nome` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bj`
--

LOCK TABLES `bj` WRITE;
/*!40000 ALTER TABLE `bj` DISABLE KEYS */;
INSERT INTO `bj` VALUES ('bingojob');
/*!40000 ALTER TABLE `bj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa` (
  `nome` varchar(100) NOT NULL DEFAULT '',
  `endereco` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `requisito` varchar(500) DEFAULT NULL,
  `vaga` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`nome`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES ('3i Informática','Av. Tancredo Neves, 1632 - Caminho das Árvores, Salvador - BA, 41820-020','3i@3i.com.br','(71)3114-5450','Tecnologia da Informação',NULL,NULL),('algar s/a','                    ','recrutamento@cscalgar.com.br','','Tecnologia da Informação',NULL,NULL),('ânima','Ed. Empresarial Torre do Parque, Av. Antônio Carlos Magalhães, 771 - 706-807 - Pituba, BA, 41830-910','nurec@anima-ba.com.br','(71)3353-6473','Tecnologia da Informação',NULL,NULL),('colégio nossa senhora da conceição','Avenida Dom João VI, nº 89 – Brotas, Salvador – Bahia.    ','curriculo@cnscsalvador.com.br','(71)3028-7500','Educação',NULL,NULL),('goldxengenharia','praia do flamengo','goldxengenharia@gmail.com','','Engenharia Civil',NULL,NULL),('login','caminho das árvores,proximo a unifacs iguatemi','paulopestana@login.com.br','','Tecnologia da Informação',NULL,NULL),('solutis',' Salvador. Av. Tancredo Neves, 1186. Ed. Catabas Center, 8º andar, sala 802. Caminho das Ãrvores,proximo ao sumaré','rh.solutis@solutis.com.br','(71)3021-2999','Tecnologia da Informação',NULL,NULL),('sysdesign','Av. Tancredo Neves, 2421 - Caminho das Árvores, Salvador - BA, 41820-021             ','rh@sysdesign.com.br','(71)2103-02','Tecnologia da Informação',NULL,NULL),('Tribunal Justiça Bahia','                    ','clsilva@tjba.jus.br','','Tecnologia da Informação',NULL,NULL),('wtf(welcome the future)',NULL,'contato@wtf.inf.br','','Tecnologia da Informação',NULL,NULL),('zrc Informática','Av. Luis Viana, s/n, km 10, Parque Tecnológico da Bahia, Edf. Tecnocentro, sala 201, - Paralela, Salvador','selecionatirh@gmail.com','(71)3612-8500','Tecnologia da Informação',NULL,NULL);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo` (
  `sigla` varchar(10) DEFAULT NULL,
  `quant` int(11) DEFAULT '0',
  `descricao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES ('TI',7,'Tecnologia da Informação'),('EM',0,'Engenharia Mecânica'),('EC',1,'Engenharia Civil'),('EE',0,'Engenharia Elétrica'),('PB',0,'Publicidade'),('ADM',0,'Administração'),('ED',1,'Educação');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `nome` varchar(10) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `curriculo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-08 19:28:40
