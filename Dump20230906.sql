-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_linkedev
-- ------------------------------------------------------
-- Server version	8.0.31

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
  `nome` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `descricao` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `itens_vendidos` int DEFAULT '0',
  `imagem_icon` varchar(150) COLLATE utf8mb3_bin DEFAULT NULL,
  `corriculo` varchar(150) COLLATE utf8mb3_bin DEFAULT NULL,
  `curtidas` int DEFAULT '0',
  PRIMARY KEY (`id`),
  CONSTRAINT `assinante_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assinante`
--

LOCK TABLES `assinante` WRITE;
/*!40000 ALTER TABLE `assinante` DISABLE KEYS */;
INSERT INTO `assinante` VALUES (1,'Conta Teste',NULL,0,NULL,NULL,0),(22,'novaoASSINANTE',NULL,0,NULL,NULL,0),(23,'assinantenovissimo',NULL,0,NULL,NULL,0),(24,'vitor',NULL,0,NULL,NULL,0),(25,'fg',NULL,0,NULL,NULL,0),(27,'TESTEASSINANTE',NULL,0,NULL,NULL,0),(28,'TESTEASSINANTE',NULL,0,NULL,NULL,0),(29,'EYJ',NULL,0,NULL,NULL,0),(30,'JJ',NULL,0,NULL,NULL,0),(31,'JJ',NULL,0,NULL,NULL,0),(37,'assinanenter',NULL,0,NULL,NULL,0),(38,'uyço',NULL,0,NULL,NULL,0),(39,'jj',NULL,0,NULL,NULL,0);
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
  `nome` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `descricao` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `imagem_icon` varchar(150) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (10,'primeiroCliente',NULL,NULL),(19,'AAAAAA',NULL,NULL),(20,'aaaa',NULL,NULL),(26,'pessoaa',NULL,NULL),(33,'',NULL,NULL),(35,'assinanteOficialReal111',NULL,NULL),(36,'assinanteOficialReal111',NULL,NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicos`
--

DROP TABLE IF EXISTS `servicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicos` (
  `id` int NOT NULL,
  `id_assinante` int DEFAULT NULL,
  `nome_assinante` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `nome` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `descricao` varchar(200) COLLATE utf8mb3_bin DEFAULT NULL,
  `tipo` varchar(40) COLLATE utf8mb3_bin NOT NULL,
  `publicado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `valor` decimal(10,2) DEFAULT NULL,
  `imagem_1` varchar(150) COLLATE utf8mb3_bin DEFAULT NULL,
  `imagem_2` varchar(150) COLLATE utf8mb3_bin DEFAULT NULL,
  `imagem_3` varchar(150) COLLATE utf8mb3_bin DEFAULT NULL,
  `vendidos` int DEFAULT '0',
  `curtidas` int DEFAULT '0',
  `qtd_favoritados` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `servicos_ibfk_1` (`id_assinante`),
  CONSTRAINT `servicos_ibfk_1` FOREIGN KEY (`id_assinante`) REFERENCES `assinante` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicos`
--

LOCK TABLES `servicos` WRITE;
/*!40000 ALTER TABLE `servicos` DISABLE KEYS */;
INSERT INTO `servicos` VALUES (22,NULL,NULL,NULL,NULL,'Teste','2023-09-05 18:18:29',NULL,'https://i.imgur.com/32Z2J4Z.jpeg','https://i.imgur.com/FSXJMGu.png','https://i.imgur.com/mOT1SSi.png',0,0,0),(23,NULL,NULL,NULL,NULL,'Teste','2023-09-06 16:38:52',NULL,'https://i.imgur.com/Kn4csWH.jpg','https://i.imgur.com/ReMS1qe.jpeg','https://i.imgur.com/Yve8nMd.png',0,0,0);
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
  `id_usuario` int DEFAULT NULL,
  `id_servico` int DEFAULT NULL,
  `nome_servico` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `tipo` varchar(40) COLLATE utf8mb3_bin NOT NULL,
  `imagem_1` varchar(150) COLLATE utf8mb3_bin DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `comprado_em` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `servicos_comprados_ibfk_1` (`id_usuario`),
  KEY `servicos_comprados_ibfk_2` (`id_servico`),
  CONSTRAINT `servicos_comprados_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicos_comprados_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `id_usuario` int DEFAULT NULL,
  `id_servico` int DEFAULT NULL,
  `nome_servico` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `imagem_1` varchar(100) COLLATE utf8mb3_bin DEFAULT NULL,
  `tipo` varchar(40) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `servicos_favoritados_ibfk_1` (`id_usuario`),
  KEY `servicos_favoritados_ibfk_2` (`id_servico`),
  CONSTRAINT `servicos_favoritados_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `servicos_favoritados_ibfk_2` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
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
  `email` varchar(30) COLLATE utf8mb3_bin NOT NULL,
  `senha` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `assinante` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'login@email.com','123teste',0),(6,'eduardo@gmail.com','dudu',0),(7,'aa','',0),(8,'adm','adm',0),(9,'cliente1@gmail.com','123',0),(10,'clientee@gmail.com','123',0),(11,'cliente2@gmail.com','123',0),(12,'clienteee@gmail.com','123',0),(13,'testeeeeee','testee',0),(14,'cliente3@fmail.com','123',0),(15,'cliente333@gmail.com','123',0),(16,'abc','123',0),(17,'a','11',0),(18,'novoCliente@gmail.com','12345',0),(19,'EFDIUQWEF','WDQWDQ',0),(20,'aaa','aaa',0),(21,'novoAssinante@gmail.com','123',0),(22,'novaoAssinantao@gmail.com','1123',0),(23,'assinantenovoooo','123',0),(24,'eu','123',0),(25,'gf','dfg',0),(26,'pessoa1','123',0),(27,'TESTE','123',0),(28,'','123',0),(29,'YJ','EYJ',0),(30,'','UK',0),(31,'K,','',0),(32,'','',0),(33,'','kk',0),(34,'novoassinantereal','123',0),(35,'assinante@gmail.comm','123',0),(36,'assinante@gmail.comm','123',0),(37,'assinantão','123',1),(38,'7il','uil',0),(39,'jj','jj',0);
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

-- Dump completed on 2023-09-06 16:32:12
