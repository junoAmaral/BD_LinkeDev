-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_agoravai
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `assinante`
--

DROP TABLE IF EXISTS `assinante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `assinante` (
  `id` int NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `descricao` varchar(200) COLLATE utf8mb3_bin DEFAULT ' ',
  `itens_vendidos` int DEFAULT '0',
  `imagem_icon` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT 'https://i.imgur.com/RLGgdO4.png',
  PRIMARY KEY (`id`),
  CONSTRAINT `assinante_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assinante`
--

LOCK TABLES `assinante` WRITE;
/*!40000 ALTER TABLE `assinante` DISABLE KEYS */;
INSERT INTO `assinante` VALUES (7,'Sofia','Back-end',0,'https://i.imgur.com/RLGgdO4.png'),(9,'Mateus','Full-stack',0,'https://i.imgur.com/RLGgdO4.png'),(10,'Julia','Templates',0,'https://i.imgur.com/RLGgdO4.png'),(11,'Maria','Mobile',0,'https://i.imgur.com/RLGgdO4.png'),(12,'Julio','Games',0,'https://i.imgur.com/RLGgdO4.png');
/*!40000 ALTER TABLE `assinante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL,
  `nome` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `descricao` varchar(200) COLLATE utf8mb3_bin DEFAULT ' ',
  `imagem_icon` varchar(150) COLLATE utf8mb3_bin DEFAULT 'https://i.imgur.com/mhJBOxe.png',
  PRIMARY KEY (`id`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (4,'Conrado','Conradito Lavajato','https://i.imgur.com/mhJBOxe.png'),(5,'Maria','Pizzaria Forno à Lenha','https://i.imgur.com/mhJBOxe.png'),(6,'Pedro','Materiais de construção P&P','https://i.imgur.com/mhJBOxe.png'),(8,'Ana','Carpintaria Madeira de Lei','https://i.imgur.com/mhJBOxe.png'),(13,'Lucas','Brechó Tudo Novo','https://i.imgur.com/mhJBOxe.png');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_assinante` int DEFAULT NULL,
  `nome_assinante` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nome` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `descricao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `tipo` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `publicado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `valor` decimal(10,2) DEFAULT '0.00',
  `imagem_1` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `imagem_2` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `imagem_3` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `vendidos` int DEFAULT '0',
  `curtidas` int DEFAULT '0',
  `qtd_favoritados` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `servicos_ibfk_1` (`id_assinante`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (7,NULL,NULL,' ',' ','Template','2023-09-10 22:44:31',0.00,'https://i.imgur.com/yaP8UQm.png','https://i.imgur.com/81i6Q9Z.png','https://i.imgur.com/5Sy5X75.png',0,0,0),(9,NULL,NULL,' ',' ','Template','2023-09-10 22:44:31',0.00,'https://i.imgur.com/36TnD7z.png','https://i.imgur.com/9lF7CUe.png','https://i.imgur.com/afjIe9J.png',0,0,0),(10,NULL,NULL,' ',' ','Template','2023-09-10 22:44:31',0.00,'https://i.imgur.com/3LJ3BQx.png','https://i.imgur.com/TMTyIAr.png','https://i.imgur.com/cUOHgid.png',0,0,0),(11,NULL,NULL,' ',' ','Template','2023-09-10 22:44:31',0.00,'https://i.imgur.com/XQcu71i.png','https://i.imgur.com/WM37ica.png','https://i.imgur.com/lbLRliC.png  ',0,0,0),(12,NULL,NULL,' ',' ','Template','2023-09-10 23:10:37',0.00,'https://i.imgur.com/aqsQhyY.png','https://i.imgur.com/9OkPVCJ.png','https://i.imgur.com/6pk6OVo.png',0,0,0);
/*!40000 ALTER TABLE `servicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos_comprados`
--

DROP TABLE IF EXISTS `servicos_comprados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos_comprados` (
  `id` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_servico` int NOT NULL,
  `nome_servico` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `tipo` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `imagem_1` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `valor` decimal(10,2) DEFAULT '0.00',
  `comprado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `servicos_comprados_ibfk_1` (`id_usuario`),
  KEY `fk_servicos_comprados_idx` (`id_servico`),
  CONSTRAINT `fk_servicos_comprados` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicos_comprados_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos_comprados`
--

LOCK TABLES `servicos_comprados` WRITE;
/*!40000 ALTER TABLE `servicos_comprados` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicos_comprados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos_favoritados`
--

DROP TABLE IF EXISTS `servicos_favoritados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos_favoritados` (
  `id` int NOT NULL,
  `id_usuario` int NOT NULL,
  `id_servico` int NOT NULL,
  `nome_servico` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `imagem_1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  `tipo` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT ' ',
  PRIMARY KEY (`id`),
  KEY `servicos_favoritados_ibfk_1` (`id_usuario`),
  KEY `fk_servicos_favoritados_idx` (`id_servico`),
  CONSTRAINT `fk_servicos_favoritados` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicos_favoritados_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos_favoritados`
--

LOCK TABLES `servicos_favoritados` WRITE;
/*!40000 ALTER TABLE `servicos_favoritados` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicos_favoritados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `senha` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `assinante` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'adm','adm',0),(2,'eduardo@gmail.com','dudu',0),(4,'cliente1@gmail.com','123',0),(5,'cliente2@gmail.com','abc',0),(6,'cliente3@gmail.com','1234',0),(7,'assinante1@gmail.com','123',1),(8,'cliente4@gmail.com','abcd',0),(9,'assinante2@gmail.com','abc',1),(10,'assinante3@gmail.com','1234',1),(11,'assinante4@gmail.com','abcd',1),(12,'assinante5@gmail.com','123abc',1),(13,'cliente5@gmail.com','123abc',0);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_agoravai'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-10 20:37:18
