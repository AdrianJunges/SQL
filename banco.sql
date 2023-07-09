-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: localhost    Database: flow
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `ambiente`
--

DROP TABLE IF EXISTS `ambiente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ambiente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `logo` text NOT NULL,
  `wallpaper` text NOT NULL,
  `cabecalho_email` text NOT NULL,
  `rodape_email` text NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `ambiente_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambiente`
--

LOCK TABLES `ambiente` WRITE;
/*!40000 ALTER TABLE `ambiente` DISABLE KEYS */;
INSERT INTO `ambiente` VALUES (1,'','','','',0,6,'2023-06-07 15:46:18'),(2,'','','','',0,7,'2023-06-07 16:12:10'),(3,'https://www.avancorealizacoes.com.br/asset/dist/img/custom_avanco/logo_rodape+svg','','','',1,8,'2023-06-09 12:40:37'),(4,'https://habitaresa.com.br/wp-content/uploads/2022/06/logo-sou-itacoa-light.png','https://habitaresa.com.br/empreendimentos/soumais/wp-content/uploads/2023/04/SOU-_FACHADA.jpg','','',1,9,'2023-06-12 12:51:22'),(5,'https://habitaresa.com.br/wp-content/uploads/2022/06/logo-sou-itacoa-light.png','https://habitaresa.com.br/empreendimentos/soumais/wp-content/uploads/2023/04/SOU-_FACHADA.jpg','','',1,10,'2023-06-13 13:44:20'),(6,'','','','',0,11,'2023-06-13 18:01:35'),(7,'https://www.toledoferrari.com.br/assets/images/toledo-ferrari.png','https://www.toledoferrari.com.br/assets/images/img-toledo-ferrari.jpg','','',1,12,'2023-06-14 20:06:52'),(8,'https://drive.google.com/file/d/1eAh8rtZD_WHu83hXzxtDoBN3Ecoikhf0/preview','https://drive.google.com/file/d/1eAh8rtZD_WHu83hXzxtDoBN3Ecoikhf0/preview','','',1,13,'2023-06-22 13:08:40'),(9,'','','','',0,14,'2023-06-22 13:22:50');
/*!40000 ALTER TABLE `ambiente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytics`
--

DROP TABLE IF EXISTS `analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytics` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) DEFAULT NULL,
  `largura` int DEFAULT NULL,
  `altura` int DEFAULT NULL,
  `frameborder` int DEFAULT NULL,
  `allowFullScreen` tinyint(1) DEFAULT NULL,
  `src` text,
  `empresa_id` bigint DEFAULT NULL,
  `tipo_de_relatorio_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `tipo_de_relatorio_id` (`tipo_de_relatorio_id`),
  KEY `ix_analytics_id` (`id`),
  CONSTRAINT `analytics_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `analytics_ibfk_2` FOREIGN KEY (`tipo_de_relatorio_id`) REFERENCES `tipo_de_relatorio` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytics`
--

LOCK TABLES `analytics` WRITE;
/*!40000 ALTER TABLE `analytics` DISABLE KEYS */;
INSERT INTO `analytics` VALUES (1,'Planejamento',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiNTE1OWYxNTQtMTlkNC00N2MzLWI3YmMtMWYwMzAxNDhhNzk1IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',6,1,'2023-06-07 15:54:06'),(2,'Viabilidade',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiYjI3NDRlYTAtODQxMC00NWY0LTgzYTYtZmZjNmYyYWU3ODFlIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',7,1,'2023-06-07 16:16:32'),(3,'Planejamento',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiOWY3MWQwNDItNDdkOC00OGQ4LWFlY2ItNzNhMWQ0MmI0ZWJiIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',7,1,'2023-06-07 16:22:55'),(4,'Fluxo de Caixa',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiM2QxYmI2MDAtYTJiYS00NDllLTk1ZjUtYzNiZTYzMTY4MWU4IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',7,1,'2023-06-07 16:33:34'),(5,'Comercial',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiZjIyNTE3MGEtNDczZC00NGQwLWFhYTAtZmY0MTkzNTJlNGZhIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',8,1,'2023-06-09 13:01:37'),(6,'Jurídico',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiYTMxMTM0MDEtM2VmMC00Zjk0LWIyMzgtMTNlM2ZhMjkyYWI3IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',8,1,'2023-06-09 13:01:37'),(7,'Repasse',1260,720,1,1,'https://app.powerbi.com/view?r=eyJrIjoiODYzYjhlMDktMWU4Ny00ZWM5LWI5ZmEtZWI5N2M4NjA2YjczIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',8,1,'2023-06-09 13:01:38'),(8,'Licenciamento',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMjk2MTEzNDYtMjJkYi00YmRkLTgwOTItZTAwOWZkNTE2YzAzIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',8,1,'2023-06-09 13:01:38'),(9,'Financeiro',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiNmJmNDgzMDAtNjJlNC00YTIzLWIyYmQtMjYwOTgyYmE5NTk3IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',8,1,'2023-06-09 13:01:38'),(10,'Sac',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiZmJmOGIzNDYtOGYyNC00YWE4LTkyMzAtYjkyNjc1YjY2YmI4IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',8,1,'2023-06-09 13:01:40'),(11,'Arquitetura',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMDQyNzY2ZWMtMmI3ZS00NjE4LTk2MGUtM2Y2NmRlNzRiMWU2IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',8,1,'2023-06-09 13:01:40'),(12,'Marketing',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMWNiZDk4MTMtMWE5OS00NzNkLWIyZTctMzQ2ODhjN2Q2NmRjIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',8,1,'2023-06-09 13:01:40'),(13,'Inadimplência',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiZDVkNzFmZTItMDhmMC00MDE4LThiYjEtMDdkOTdhMjM5OWZlIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',9,1,'2023-06-12 13:38:01'),(14,'Fluxo de Caixa',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMTVhNDg1NzQtY2VmYS00ZmIzLWE0OGEtYmRjNGIzNzQ0NzEyIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',9,1,'2023-06-12 13:38:01'),(15,'Planejamento',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMDQ0MjI4MDAtMWQxMS00Mjk2LTk4MDUtNzZkN2VjNTY5MTQ0IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',9,1,'2023-06-12 13:38:02'),(16,'Atendimento',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiYjU0NjMzZTctNmQ0Ny00ZjljLTk3ZDMtYTBhYzYwYTkwYWQ0IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',9,1,'2023-06-12 13:38:02'),(17,'Visão SPE',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiY2FmMWQzZjktM2EzNy00YTNmLTljYWUtYjZhZTg3ZDU2OTdhIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',9,1,'2023-06-12 13:38:03'),(18,'Leads',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMDg5MDcxMTgtYTg2Mi00MDIxLTlmMDUtOGY2MTE3NTk3MTQ0IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',9,1,'2023-06-12 13:38:03'),(19,'Inadimplência',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiZDVkNzFmZTItMDhmMC00MDE4LThiYjEtMDdkOTdhMjM5OWZlIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',10,1,'2023-06-13 14:27:13'),(20,'Planejamento',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMDQ0MjI4MDAtMWQxMS00Mjk2LTk4MDUtNzZkN2VjNTY5MTQ0IiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',10,1,'2023-06-13 14:27:14'),(21,'Visão SPE',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiY2FmMWQzZjktM2EzNy00YTNmLTljYWUtYjZhZTg3ZDU2OTdhIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',10,1,'2023-06-13 14:27:14'),(22,'Fluxo de Caixa',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMTVhNDg1NzQtY2VmYS00ZmIzLWE0OGEtYmRjNGIzNzQ0NzEyIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',10,1,'2023-06-13 14:27:14'),(23,'SAC',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiZWM1OTY2MWMtNmZkMy00YWU2LTkxNjktY2Y1N2E4ZjZlYzVhIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',12,1,'2023-06-14 20:44:09'),(24,'Performance',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiMWQ0ZmIxYTctNmU3YS00M2Y0LWI1NjAtZmFkZDk3MmQ0MjBhIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',1,1,'2023-06-21 12:19:06'),(25,'Villa Romana',1260,1024,1,1,'https://app.powerbi.com/view?r=eyJrIjoiZDkwMmI0YzktYzdmMi00OTQyLWJiZDgtYzA3Zjc2NDk4NjlhIiwidCI6ImJmMTVmOTg3LWEzZjEtNGYyYy04NWY5LTdhZDQ2MzZjYWE2YyJ9',14,1,'2023-06-22 13:25:56');
/*!40000 ALTER TABLE `analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexo_cotacao`
--

DROP TABLE IF EXISTS `anexo_cotacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anexo_cotacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `numero_cotacao` bigint DEFAULT NULL,
  `nome_arquivo` text,
  `url_publica` text,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `ix_anexo_cotacao_id` (`id`),
  CONSTRAINT `anexo_cotacao_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexo_cotacao`
--

LOCK TABLES `anexo_cotacao` WRITE;
/*!40000 ALTER TABLE `anexo_cotacao` DISABLE KEYS */;
INSERT INTO `anexo_cotacao` VALUES (1,'3d8023ea-a0a3-4ce0-8613-d5b746b56edd',1,59,'DOCUMENTO TESTE PARA FLOW.pdf','','2023-06-09 18:39:29'),(3,'7f943909-8333-4be2-bb4d-eaa55e368161',11,551,'Design (1).png','','2023-06-29 20:49:47'),(4,'4921fc30-af61-4229-82ba-b5fb570fc0ab',1,92,'logo fundo preto.png','','2023-07-04 17:58:26'),(5,'82c14c26-14da-44a1-9fc2-1ab73d9726c6',1,101,'DOCUMENTO TESTE PARA FLOW.pdf','','2023-07-04 18:53:38');
/*!40000 ALTER TABLE `anexo_cotacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexo_homologacao`
--

DROP TABLE IF EXISTS `anexo_homologacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anexo_homologacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `codigo_tipo_de_documento` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `nome_arquivo` varchar(100) DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_de_vencimento` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  KEY `ix_anexo_homologacao_id` (`id`),
  KEY `ix_anexo_homologacao_codigo_tipo_de_documento` (`codigo_tipo_de_documento`),
  CONSTRAINT `anexo_homologacao_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`),
  CONSTRAINT `anexo_homologacao_ibfk_2` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`),
  CONSTRAINT `anexo_homologacao_ibfk_3` FOREIGN KEY (`codigo_tipo_de_documento`) REFERENCES `tipo_de_documento` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexo_homologacao`
--

LOCK TABLES `anexo_homologacao` WRITE;
/*!40000 ALTER TABLE `anexo_homologacao` DISABLE KEYS */;
INSERT INTO `anexo_homologacao` VALUES (1,'2d4d40be-6581-46e1-9ca6-98cbe0adbc18',1,2,'Doc.01','DOCUMENTO TESTE PARA FLOW.pdf','DOCUMENTO TESTE PARA FLOW.pdf','2023-06-07 17:42:57','2023-12-01 00:00:00'),(2,'2af105e4-3203-4683-837a-bd2a2c0057d1',1,3,'Doc.01','DOCUMENTO TESTE PARA FLOW.pdf','DOCUMENTO TESTE PARA FLOW.pdf','2023-06-21 13:19:53','2024-01-01 00:00:00'),(3,'eda2d83a-c544-4a5a-9724-27df646d3684',1,4,'Doc.01','DOCUMENTO TESTE PARA FLOW.pdf','DOCUMENTO TESTE PARA FLOW.pdf','2023-06-23 18:59:45','2024-12-01 00:00:00'),(4,'d49a1e65-1bbf-4108-85ab-deb4dfdc9aa6',1,7,'Doc.01','LogoMananciaisSP (1).png','LogoMananciaisSP (1).png','2023-06-28 22:32:54','2023-09-28 00:00:00'),(5,'19e3905c-a2bf-41db-b9a2-6caa2c3f6458',1,8,'Doc.01','DOCUMENTO TESTE PARA FLOW.pdf','DOCUMENTO TESTE PARA FLOW.pdf','2023-06-29 16:54:09','2024-01-01 00:00:00'),(6,'9b4f9d2d-b09f-451f-8bbc-75f7159b91dc',1,9,'Doc.01','DOCUMENTO TESTE PARA FLOW.pdf','DOCUMENTO TESTE PARA FLOW.pdf','2023-06-29 19:31:24','2024-02-01 00:00:00');
/*!40000 ALTER TABLE `anexo_homologacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anexo_recorrente`
--

DROP TABLE IF EXISTS `anexo_recorrente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anexo_recorrente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) DEFAULT NULL,
  `nome_arquivo` varchar(100) DEFAULT NULL,
  `documento_codigo` varchar(100) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `mes_referencia` date DEFAULT NULL,
  `aprovado` tinyint(1) DEFAULT NULL,
  `primeiro_vencimento` date DEFAULT NULL,
  `quem_aprovou` bigint DEFAULT NULL,
  `quando_aprovou` date DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `quem_aprovou` (`quem_aprovou`),
  KEY `idx_anexo_mes-fornecedor-codigo` (`fornecedor_id`,`mes_referencia`,`documento_codigo`),
  CONSTRAINT `anexo_recorrente_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `anexo_recorrente_ibfk_2` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`) ON DELETE CASCADE,
  CONSTRAINT `anexo_recorrente_ibfk_3` FOREIGN KEY (`quem_aprovou`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anexo_recorrente`
--

LOCK TABLES `anexo_recorrente` WRITE;
/*!40000 ALTER TABLE `anexo_recorrente` DISABLE KEYS */;
INSERT INTO `anexo_recorrente` VALUES (1,'fd74ab56-4c3c-46ab-b5fe-258f4807b9f8','headEmail_exct (1).png','Doc.01',1,1,'2023-01-01',0,NULL,2,'2023-06-30','2023-06-30 13:57:42'),(2,'3cd7f61a-4a72-47c7-8011-5a28e23176a7','ItemizeBW.png','Doc.01',1,1,'2023-02-01',1,NULL,2,'2023-07-05','2023-07-04 18:04:52');
/*!40000 ALTER TABLE `anexo_recorrente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_de_documento`
--

DROP TABLE IF EXISTS `categoria_de_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_de_documento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` varchar(100) DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `ix_categoria_de_documento_id` (`id`),
  CONSTRAINT `categoria_de_documento_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_de_documento`
--

LOCK TABLES `categoria_de_documento` WRITE;
/*!40000 ALTER TABLE `categoria_de_documento` DISABLE KEYS */;
INSERT INTO `categoria_de_documento` VALUES (1,'Documentos Obrigatórios',1,1,'2023-06-07 14:31:05');
/*!40000 ALTER TABLE `categoria_de_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_de_fornecedor`
--

DROP TABLE IF EXISTS `categoria_de_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_de_fornecedor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `ix_categoria_de_fornecedor_id` (`id`),
  CONSTRAINT `categoria_de_fornecedor_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=309 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_de_fornecedor`
--

LOCK TABLES `categoria_de_fornecedor` WRITE;
/*!40000 ALTER TABLE `categoria_de_fornecedor` DISABLE KEYS */;
INSERT INTO `categoria_de_fornecedor` VALUES (1,'TRABALHOS EM SOLO',1,'2023-06-05 15:57:13'),(2,'INFRAESTRUTURA',1,'2023-06-05 15:57:13'),(3,'SUPRAESTRUTURA',1,'2023-06-05 15:57:14'),(4,'PAREDES E PAINÉIS',1,'2023-06-05 15:57:14'),(5,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',1,'2023-06-05 15:57:14'),(6,'REVESTIMENTOS ESPECIAIS',1,'2023-06-05 15:57:15'),(7,'REVESTIMENTOS CERÂMICOS',1,'2023-06-05 15:57:15'),(8,'LOUÇAS E METAIS',1,'2023-06-05 15:57:15'),(9,'INSTALAÇÕES',1,'2023-06-05 15:57:15'),(10,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',1,'2023-06-05 15:57:15'),(11,'URBANIZAÇÃO INTERNA',1,'2023-06-05 15:57:15'),(12,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',1,'2023-06-05 15:57:15'),(13,'ELEVADORES',1,'2023-06-05 15:57:15'),(14,'REVESTIMENTOS EM MASSA',1,'2023-06-05 15:57:15'),(15,'ESQUADRIAS DE MADEIRA',1,'2023-06-05 15:57:16'),(16,'VIDROS',1,'2023-06-05 15:57:16'),(17,'PISOS ESPECIAIS',1,'2023-06-05 15:57:16'),(18,'PINTURA',1,'2023-06-05 15:57:16'),(19,'FORROS',1,'2023-06-05 15:57:16'),(20,'LIMPEZA FINAL',1,'2023-06-05 15:57:16'),(21,'ASSISTÊNCIA TÉCNICA',1,'2023-06-05 15:57:16'),(22,'OUTROS',1,'2023-06-05 15:57:16'),(111,'TRABALHOS EM SOLO',6,'2023-06-07 15:46:15'),(112,'INFRAESTRUTURA',6,'2023-06-07 15:46:16'),(113,'SUPRAESTRUTURA',6,'2023-06-07 15:46:16'),(114,'PAREDES E PAINÉIS',6,'2023-06-07 15:46:16'),(115,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',6,'2023-06-07 15:46:16'),(116,'REVESTIMENTOS ESPECIAIS',6,'2023-06-07 15:46:16'),(117,'REVESTIMENTOS CERÂMICOS',6,'2023-06-07 15:46:16'),(118,'LOUÇAS E METAIS',6,'2023-06-07 15:46:16'),(119,'INSTALAÇÕES',6,'2023-06-07 15:46:16'),(120,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',6,'2023-06-07 15:46:16'),(121,'URBANIZAÇÃO INTERNA',6,'2023-06-07 15:46:16'),(122,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',6,'2023-06-07 15:46:16'),(123,'ELEVADORES',6,'2023-06-07 15:46:16'),(124,'REVESTIMENTOS EM MASSA',6,'2023-06-07 15:46:17'),(125,'ESQUADRIAS DE MADEIRA',6,'2023-06-07 15:46:17'),(126,'VIDROS',6,'2023-06-07 15:46:17'),(127,'PISOS ESPECIAIS',6,'2023-06-07 15:46:17'),(128,'PINTURA',6,'2023-06-07 15:46:17'),(129,'FORROS',6,'2023-06-07 15:46:17'),(130,'LIMPEZA FINAL',6,'2023-06-07 15:46:17'),(131,'ASSISTÊNCIA TÉCNICA',6,'2023-06-07 15:46:17'),(132,'OUTROS',6,'2023-06-07 15:46:17'),(133,'TRABALHOS EM SOLO',7,'2023-06-07 16:12:07'),(134,'INFRAESTRUTURA',7,'2023-06-07 16:12:07'),(135,'SUPRAESTRUTURA',7,'2023-06-07 16:12:07'),(136,'PAREDES E PAINÉIS',7,'2023-06-07 16:12:07'),(137,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',7,'2023-06-07 16:12:08'),(138,'REVESTIMENTOS ESPECIAIS',7,'2023-06-07 16:12:08'),(139,'REVESTIMENTOS CERÂMICOS',7,'2023-06-07 16:12:08'),(140,'LOUÇAS E METAIS',7,'2023-06-07 16:12:08'),(141,'INSTALAÇÕES',7,'2023-06-07 16:12:08'),(142,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',7,'2023-06-07 16:12:08'),(143,'URBANIZAÇÃO INTERNA',7,'2023-06-07 16:12:08'),(144,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',7,'2023-06-07 16:12:08'),(145,'ELEVADORES',7,'2023-06-07 16:12:08'),(146,'REVESTIMENTOS EM MASSA',7,'2023-06-07 16:12:08'),(147,'ESQUADRIAS DE MADEIRA',7,'2023-06-07 16:12:08'),(148,'VIDROS',7,'2023-06-07 16:12:08'),(149,'PISOS ESPECIAIS',7,'2023-06-07 16:12:08'),(150,'PINTURA',7,'2023-06-07 16:12:08'),(151,'FORROS',7,'2023-06-07 16:12:08'),(152,'LIMPEZA FINAL',7,'2023-06-07 16:12:09'),(153,'ASSISTÊNCIA TÉCNICA',7,'2023-06-07 16:12:09'),(154,'OUTROS',7,'2023-06-07 16:12:09'),(155,'TRABALHOS EM SOLO',8,'2023-06-09 12:40:35'),(156,'INFRAESTRUTURA',8,'2023-06-09 12:40:35'),(157,'SUPRAESTRUTURA',8,'2023-06-09 12:40:35'),(158,'PAREDES E PAINÉIS',8,'2023-06-09 12:40:35'),(159,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',8,'2023-06-09 12:40:35'),(160,'REVESTIMENTOS ESPECIAIS',8,'2023-06-09 12:40:36'),(161,'REVESTIMENTOS CERÂMICOS',8,'2023-06-09 12:40:36'),(162,'LOUÇAS E METAIS',8,'2023-06-09 12:40:36'),(163,'INSTALAÇÕES',8,'2023-06-09 12:40:36'),(164,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',8,'2023-06-09 12:40:36'),(165,'URBANIZAÇÃO INTERNA',8,'2023-06-09 12:40:36'),(166,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',8,'2023-06-09 12:40:36'),(167,'ELEVADORES',8,'2023-06-09 12:40:36'),(168,'REVESTIMENTOS EM MASSA',8,'2023-06-09 12:40:36'),(169,'ESQUADRIAS DE MADEIRA',8,'2023-06-09 12:40:36'),(170,'VIDROS',8,'2023-06-09 12:40:36'),(171,'PISOS ESPECIAIS',8,'2023-06-09 12:40:36'),(172,'PINTURA',8,'2023-06-09 12:40:36'),(173,'FORROS',8,'2023-06-09 12:40:36'),(174,'LIMPEZA FINAL',8,'2023-06-09 12:40:36'),(175,'ASSISTÊNCIA TÉCNICA',8,'2023-06-09 12:40:36'),(176,'OUTROS',8,'2023-06-09 12:40:36'),(177,'TRABALHOS EM SOLO',9,'2023-06-12 12:51:20'),(178,'INFRAESTRUTURA',9,'2023-06-12 12:51:20'),(179,'SUPRAESTRUTURA',9,'2023-06-12 12:51:20'),(180,'PAREDES E PAINÉIS',9,'2023-06-12 12:51:20'),(181,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',9,'2023-06-12 12:51:20'),(182,'REVESTIMENTOS ESPECIAIS',9,'2023-06-12 12:51:20'),(183,'REVESTIMENTOS CERÂMICOS',9,'2023-06-12 12:51:20'),(184,'LOUÇAS E METAIS',9,'2023-06-12 12:51:20'),(185,'INSTALAÇÕES',9,'2023-06-12 12:51:20'),(186,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',9,'2023-06-12 12:51:20'),(187,'URBANIZAÇÃO INTERNA',9,'2023-06-12 12:51:20'),(188,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',9,'2023-06-12 12:51:20'),(189,'ELEVADORES',9,'2023-06-12 12:51:20'),(190,'REVESTIMENTOS EM MASSA',9,'2023-06-12 12:51:20'),(191,'ESQUADRIAS DE MADEIRA',9,'2023-06-12 12:51:21'),(192,'VIDROS',9,'2023-06-12 12:51:21'),(193,'PISOS ESPECIAIS',9,'2023-06-12 12:51:21'),(194,'PINTURA',9,'2023-06-12 12:51:21'),(195,'FORROS',9,'2023-06-12 12:51:21'),(196,'LIMPEZA FINAL',9,'2023-06-12 12:51:21'),(197,'ASSISTÊNCIA TÉCNICA',9,'2023-06-12 12:51:21'),(198,'OUTROS',9,'2023-06-12 12:51:21'),(199,'TRABALHOS EM SOLO',10,'2023-06-13 13:44:17'),(200,'INFRAESTRUTURA',10,'2023-06-13 13:44:17'),(201,'SUPRAESTRUTURA',10,'2023-06-13 13:44:17'),(202,'PAREDES E PAINÉIS',10,'2023-06-13 13:44:17'),(203,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',10,'2023-06-13 13:44:17'),(204,'REVESTIMENTOS ESPECIAIS',10,'2023-06-13 13:44:17'),(205,'REVESTIMENTOS CERÂMICOS',10,'2023-06-13 13:44:17'),(206,'LOUÇAS E METAIS',10,'2023-06-13 13:44:17'),(207,'INSTALAÇÕES',10,'2023-06-13 13:44:17'),(208,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',10,'2023-06-13 13:44:18'),(209,'URBANIZAÇÃO INTERNA',10,'2023-06-13 13:44:18'),(210,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',10,'2023-06-13 13:44:18'),(211,'ELEVADORES',10,'2023-06-13 13:44:18'),(212,'REVESTIMENTOS EM MASSA',10,'2023-06-13 13:44:18'),(213,'ESQUADRIAS DE MADEIRA',10,'2023-06-13 13:44:18'),(214,'VIDROS',10,'2023-06-13 13:44:18'),(215,'PISOS ESPECIAIS',10,'2023-06-13 13:44:18'),(216,'PINTURA',10,'2023-06-13 13:44:18'),(217,'FORROS',10,'2023-06-13 13:44:18'),(218,'LIMPEZA FINAL',10,'2023-06-13 13:44:18'),(219,'ASSISTÊNCIA TÉCNICA',10,'2023-06-13 13:44:18'),(220,'OUTROS',10,'2023-06-13 13:44:18'),(221,'TRABALHOS EM SOLO',11,'2023-06-13 18:01:33'),(222,'INFRAESTRUTURA',11,'2023-06-13 18:01:33'),(223,'SUPRAESTRUTURA',11,'2023-06-13 18:01:33'),(224,'PAREDES E PAINÉIS',11,'2023-06-13 18:01:33'),(225,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',11,'2023-06-13 18:01:33'),(226,'REVESTIMENTOS ESPECIAIS',11,'2023-06-13 18:01:33'),(227,'REVESTIMENTOS CERÂMICOS',11,'2023-06-13 18:01:33'),(228,'LOUÇAS E METAIS',11,'2023-06-13 18:01:33'),(229,'INSTALAÇÕES',11,'2023-06-13 18:01:34'),(230,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',11,'2023-06-13 18:01:34'),(231,'URBANIZAÇÃO INTERNA',11,'2023-06-13 18:01:34'),(232,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',11,'2023-06-13 18:01:34'),(233,'ELEVADORES',11,'2023-06-13 18:01:34'),(234,'REVESTIMENTOS EM MASSA',11,'2023-06-13 18:01:34'),(235,'ESQUADRIAS DE MADEIRA',11,'2023-06-13 18:01:34'),(236,'VIDROS',11,'2023-06-13 18:01:34'),(237,'PISOS ESPECIAIS',11,'2023-06-13 18:01:34'),(238,'PINTURA',11,'2023-06-13 18:01:34'),(239,'FORROS',11,'2023-06-13 18:01:34'),(240,'LIMPEZA FINAL',11,'2023-06-13 18:01:34'),(241,'ASSISTÊNCIA TÉCNICA',11,'2023-06-13 18:01:34'),(242,'OUTROS',11,'2023-06-13 18:01:34'),(243,'TRABALHOS EM SOLO',12,'2023-06-14 20:06:49'),(244,'INFRAESTRUTURA',12,'2023-06-14 20:06:49'),(245,'SUPRAESTRUTURA',12,'2023-06-14 20:06:50'),(246,'PAREDES E PAINÉIS',12,'2023-06-14 20:06:50'),(247,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',12,'2023-06-14 20:06:50'),(248,'REVESTIMENTOS ESPECIAIS',12,'2023-06-14 20:06:50'),(249,'REVESTIMENTOS CERÂMICOS',12,'2023-06-14 20:06:50'),(250,'LOUÇAS E METAIS',12,'2023-06-14 20:06:50'),(251,'INSTALAÇÕES',12,'2023-06-14 20:06:50'),(252,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',12,'2023-06-14 20:06:50'),(253,'URBANIZAÇÃO INTERNA',12,'2023-06-14 20:06:50'),(254,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',12,'2023-06-14 20:06:50'),(255,'ELEVADORES',12,'2023-06-14 20:06:50'),(256,'REVESTIMENTOS EM MASSA',12,'2023-06-14 20:06:50'),(257,'ESQUADRIAS DE MADEIRA',12,'2023-06-14 20:06:50'),(258,'VIDROS',12,'2023-06-14 20:06:50'),(259,'PISOS ESPECIAIS',12,'2023-06-14 20:06:50'),(260,'PINTURA',12,'2023-06-14 20:06:50'),(261,'FORROS',12,'2023-06-14 20:06:50'),(262,'LIMPEZA FINAL',12,'2023-06-14 20:06:50'),(263,'ASSISTÊNCIA TÉCNICA',12,'2023-06-14 20:06:50'),(264,'OUTROS',12,'2023-06-14 20:06:51'),(265,'TRABALHOS EM SOLO',13,'2023-06-22 13:08:37'),(266,'INFRAESTRUTURA',13,'2023-06-22 13:08:37'),(267,'SUPRAESTRUTURA',13,'2023-06-22 13:08:37'),(268,'PAREDES E PAINÉIS',13,'2023-06-22 13:08:38'),(269,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',13,'2023-06-22 13:08:38'),(270,'REVESTIMENTOS ESPECIAIS',13,'2023-06-22 13:08:38'),(271,'REVESTIMENTOS CERÂMICOS',13,'2023-06-22 13:08:38'),(272,'LOUÇAS E METAIS',13,'2023-06-22 13:08:38'),(273,'INSTALAÇÕES',13,'2023-06-22 13:08:38'),(274,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',13,'2023-06-22 13:08:38'),(275,'URBANIZAÇÃO INTERNA',13,'2023-06-22 13:08:38'),(276,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',13,'2023-06-22 13:08:38'),(277,'ELEVADORES',13,'2023-06-22 13:08:38'),(278,'REVESTIMENTOS EM MASSA',13,'2023-06-22 13:08:38'),(279,'ESQUADRIAS DE MADEIRA',13,'2023-06-22 13:08:38'),(280,'VIDROS',13,'2023-06-22 13:08:39'),(281,'PISOS ESPECIAIS',13,'2023-06-22 13:08:39'),(282,'PINTURA',13,'2023-06-22 13:08:39'),(283,'FORROS',13,'2023-06-22 13:08:39'),(284,'LIMPEZA FINAL',13,'2023-06-22 13:08:39'),(285,'ASSISTÊNCIA TÉCNICA',13,'2023-06-22 13:08:39'),(286,'OUTROS',13,'2023-06-22 13:08:39'),(287,'TRABALHOS EM SOLO',14,'2023-06-22 13:22:46'),(288,'INFRAESTRUTURA',14,'2023-06-22 13:22:46'),(289,'SUPRAESTRUTURA',14,'2023-06-22 13:22:47'),(290,'PAREDES E PAINÉIS',14,'2023-06-22 13:22:47'),(291,'IMPERMEABILIZAÇÕES / COBERTURAS E TRATAMENTOS',14,'2023-06-22 13:22:47'),(292,'REVESTIMENTOS ESPECIAIS',14,'2023-06-22 13:22:47'),(293,'REVESTIMENTOS CERÂMICOS',14,'2023-06-22 13:22:47'),(294,'LOUÇAS E METAIS',14,'2023-06-22 13:22:47'),(295,'INSTALAÇÕES',14,'2023-06-22 13:22:47'),(296,'EQUIPAMENTOS / MOBILIÁRIOS ESPECIAIS',14,'2023-06-22 13:22:47'),(297,'URBANIZAÇÃO INTERNA',14,'2023-06-22 13:22:47'),(298,'MÁRMORES / GRANITOS / PEDRAS DECORATIVAS',14,'2023-06-22 13:22:48'),(299,'ELEVADORES',14,'2023-06-22 13:22:48'),(300,'REVESTIMENTOS EM MASSA',14,'2023-06-22 13:22:48'),(301,'ESQUADRIAS DE MADEIRA',14,'2023-06-22 13:22:48'),(302,'VIDROS',14,'2023-06-22 13:22:48'),(303,'PISOS ESPECIAIS',14,'2023-06-22 13:22:48'),(304,'PINTURA',14,'2023-06-22 13:22:48'),(305,'FORROS',14,'2023-06-22 13:22:48'),(306,'LIMPEZA FINAL',14,'2023-06-22 13:22:48'),(307,'ASSISTÊNCIA TÉCNICA',14,'2023-06-22 13:22:48'),(308,'OUTROS',14,'2023-06-22 13:22:48');
/*!40000 ALTER TABLE `categoria_de_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centro_de_custo`
--

DROP TABLE IF EXISTS `centro_de_custo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centro_de_custo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cno` varchar(100) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_termino` date NOT NULL,
  `email` varchar(100) NOT NULL,
  `tipo_faturamento` enum('Empresa','Filial','Cliente') DEFAULT NULL,
  `tipo_de_obra` enum('Propria','Empreitada_total','Empreitada_parcial','Prestacao_de_servico') DEFAULT NULL,
  `situacao` enum('Bloqueada','Finalizada','Oculta','Andamento') DEFAULT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `uf` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `conta_bancaria_id` bigint DEFAULT NULL,
  `filial_id` bigint DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `conta_bancaria_id` (`conta_bancaria_id`),
  KEY `filial_id` (`filial_id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `ix_centro_de_custo_id` (`id`),
  CONSTRAINT `centro_de_custo_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE SET NULL,
  CONSTRAINT `centro_de_custo_ibfk_2` FOREIGN KEY (`conta_bancaria_id`) REFERENCES `conta_bancaria_filial` (`id`) ON DELETE SET NULL,
  CONSTRAINT `centro_de_custo_ibfk_3` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`) ON DELETE CASCADE,
  CONSTRAINT `centro_de_custo_ibfk_4` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_de_custo`
--

LOCK TABLES `centro_de_custo` WRITE;
/*!40000 ALTER TABLE `centro_de_custo` DISABLE KEYS */;
INSERT INTO `centro_de_custo` VALUES (1,'fc94ad22-fbe6-40fe-97fd-8991783eb38f','728CO','ITEMIZE - CUSTO DE CONSTRUÇÃO OBRA X','','2021-01-01','2023-12-31','',NULL,'Propria',NULL,'Via 15','15','','Setor de Chácaras Sul','Formosa','GO','73802-421',NULL,1,1,1,'2023-06-22 14:31:43'),(2,'5078e0cc-f3a6-447b-a4f5-da546ad1f23b','728IN','ITEMIZE - INCORPORAÇÃO','','2021-01-01','2023-12-31','',NULL,'Propria',NULL,'Rua 7','904','','Formosinha','Formosa','GO','73813420',NULL,1,1,1,'2023-06-22 14:42:27'),(3,'7db8f8a8-0023-4cca-90ee-e51adfc487e0','1236','Obra Teste','','2000-01-01','2030-11-30','',NULL,'Propria',NULL,'','','','','','','',NULL,2,2,11,'2023-07-04 19:28:03');
/*!40000 ALTER TABLE `centro_de_custo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classificacao_de_documento`
--

DROP TABLE IF EXISTS `classificacao_de_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classificacao_de_documento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `descricao` text,
  PRIMARY KEY (`id`),
  KEY `ix_classificacao_de_documento_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classificacao_de_documento`
--

LOCK TABLES `classificacao_de_documento` WRITE;
/*!40000 ALTER TABLE `classificacao_de_documento` DISABLE KEYS */;
INSERT INTO `classificacao_de_documento` VALUES (1,'Homologação'),(2,'Recorrente');
/*!40000 ALTER TABLE `classificacao_de_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo_cliente` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `cnpj_cpf` text NOT NULL,
  `inscricao_estadual` varchar(100) NOT NULL,
  `inscricao_municipal` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `uf` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `conta_bancaria_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_cliente_id` (`id`),
  KEY `conta_bancaria_id` (`conta_bancaria_id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`conta_bancaria_id`) REFERENCES `conta_bancaria_cliente` (`id`) ON DELETE SET NULL,
  CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'73802-421','ADRIAN MILENA JUNGES',1,'05706063141','','','61996361441',1,'Via 15','904','','Setor de Chácaras Sul','Formosa','GO','73802-421','adrian@itemize.com.br',NULL),(2,'1','BP8 BANCO DE PROJETOS IMOBILIARIOS LTDA',1,'05166785000190','','','1144446666',11,'Avenida Santo Antônio','1453','de 1117 a 1611 - lado ímpar','Vila Osasco','Osasco','SP','06083-210','alessandro.oliveira@bp8construtora.com.br',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `codigos_bancarios`
--

DROP TABLE IF EXISTS `codigos_bancarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `codigos_bancarios` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo_dv` text NOT NULL,
  `instituicao` text NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `codigos_bancarios`
--

LOCK TABLES `codigos_bancarios` WRITE;
/*!40000 ALTER TABLE `codigos_bancarios` DISABLE KEYS */;
INSERT INTO `codigos_bancarios` VALUES (1,'001','Banco do Brasil S.A.',1),(2,'003','Banco da Amazônia S.A.',1),(3,'004','Banco do Nordeste do Brasil S.A.',1),(4,'008','Banco Santander Meridional S.A.',1),(5,'021','BANESTES S.A. Banco do Estado do Espírito Santo',1),(6,'022','Banco de Crédito Real de Minas Gerais S.A.',1),(7,'024','Banco de Pernambuco S.A. - BANDEPE',1),(8,'027','Banco do Estado de Santa Catarina S.A.',1),(9,'028','Banco Baneb S.A.',1),(10,'029','Banco Banerj S.A.',1),(11,'030','PARAIBAN - Banco do Estado da Paraíba S.A.',1),(12,'031','Banco do Estado de Goiás S.A. - BEG',1),(13,'033','Banco do Estado de São Paulo S.A. - Banespa',1),(14,'034','Banco do Estado do Amazonas S.A.',1),(15,'035','Banco do Estado do Ceará S.A.',1),(16,'036','Banco do Estado do Maranhão S.A.',1),(17,'037','Banco do Estado do Pará S.A.',1),(18,'038','Banco Banestado S.A.',1),(19,'039','Banco do Estado do Piauí S.A.',1),(20,'041','Banco do Estado do Rio Grande do Sul S.A.',1),(21,'047','Banco do Estado de Sergipe S.A.',1),(22,'048','Banco Bemge S.A.',1),(23,'070','BRB - Banco de Brasília S.A.',1),(24,'104','Caixa Econômica Federal',1),(25,'107','Banco BBM S.A.',1),(26,'109','Banco Credibanco S.A.',1),(27,'116','Banco BNL do Brasil S.A.',1),(28,'148','Multi Banco S.A.',1),(29,'151','Banco Nossa Caixa S.A.',1),(30,'168','HSBC Investment Bank Brasil S.A. - Banco Múltiplo',1),(31,'175','Continental Banco S.A.',1),(32,'184','Banco BBA - CREDITANSTALT S.A.',1),(33,'200','Banco Ficrisa Axelrud S.A.',1),(34,'204','Banco Inter American Express S.A.',1),(35,'205','Banco Sul América S.A.',1),(36,'208','Banco Pactual S.A.',1),(37,'210','Dresdner Bank Lateinamerika AG',1),(38,'211','Banco Sistema S.A.',1),(39,'212','Banco Matone S.A.',1),(40,'213','Banco Arbi S.A.',1),(41,'214','Banco Dibens S.A.',1),(42,'215','Banco América do Sul S.A.',1),(43,'216','Banco Regional Malcon S.A. Com.e de Cred.ao Cons.',1),(44,'217','Banco John Deere S.A.',1),(45,'218','Banco Bonsucesso S.A.',1),(46,'219','Banco Zogbi S.A.',1),(47,'221','Banco Chase Fleming S.A.',1),(48,'222','Banco AGF Braseg S.A.',1),(49,'224','Banco Fibra S.A.',1),(50,'225','Banco Brascan S.A.',1),(51,'228','Banco Icatu S.A.',1),(52,'229','Banco Cruzeiro do Sul S.A.',1),(53,'230','Banco Bandeirantes S.A.',1),(54,'231','Banco Boavista Interatlântico S.A.',1),(55,'232','Banco Interpart S.A.',1),(56,'233','Banco GE Capital S.A.',1),(57,'235','Bank of America - Liberal S.A. (Banco Múltiplo)',1),(58,'237','Banco Bradesco S.A.',1),(59,'241','Banco Clássico S.A.',1),(60,'242','Banco Euroinvest S.A. - Eurobanco',1),(61,'243','Banco Multi Stock S.A.',1),(62,'244','Banco Cidade S.A.',1),(63,'246','Banco ABC Brasil S.A.',1),(64,'247','Banco UBS Warburg S.A.',1),(65,'249','Banco Investcred S.A.',1),(66,'250','Banco Schahin S.A.',1),(67,'252','Banco Fininvest S.A.',1),(68,'254','Paraná Banco S.A.',1),(69,'258','Banco Induscred S.A.',1),(70,'262','Banco Boreal S.A.',1),(71,'263','Banco Cacique S.A.',1),(72,'265','Banco Fator S.A.',1),(73,'266','Banco Cédula S.A.',1),(74,'291','Banco de Crédito Nacional S.A.',1),(75,'294','BCR Banco de Crédito Real S.A.',1),(76,'298','Banco Alfa S.A.',1),(77,'300','Banco de La Nacion Argentina',1),(78,'318','Banco BMG S.A.',1),(79,'320','Banco Industrial e Comercial S.A.',1),(80,'341','Banco Itaú S.A.',1),(81,'346','Banco Francês e Brasileiro S.A.',1),(82,'347','Banco Sudameris Brasil S.A.',1),(83,'351','Banco Santander S.A.',1),(84,'353','Banco Santander (Brasil) S.A.',1),(85,'356','ABN Amro S.A.',1),(86,'366','Banco Société Générale Brasil S.A.',1),(87,'370','Banco WestLB do Brasil S.A.',1),(88,'376','Banco J. P. Morgan S.A.',1),(89,'389','Banco Mercantil do Brasil S.A.',1),(90,'394','Banco Mercantil de Crédito S.A.',1),(91,'399','HSBC Bank Brasil S.A. - Banco Múltiplo',1),(92,'409','UNIBANCO - União de Bancos Brasileiros S.A.',1),(93,'412','Banco Capital S.A.',1),(94,'422','Banco Safra S.A.',1),(95,'453','Banco Rural S.A.',1),(96,'456','Banco Tokyo-Mitsubishi UFJ Brasil S.A.',1),(97,'464','Banco Sumitomo Mitsui Brasileiro S.A.',1),(98,'473','Banco Caixa Geral - Brasil S.A.',1),(99,'477','Citibank N.A.',1),(100,'479','Itaubank - Itaú Holdings S.A.',1),(101,'487','Deutsche Bank S.A. - Banco Alemão',1),(102,'488','JPMorgan Chase Bank',1),(103,'492','ING Bank N.V.',1),(104,'494','Banco de La Republica Oriental del Uruguay',1),(105,'495','Banco de La Provincia de Buenos Aires',1),(106,'505','Banco Credit Suisse (Brasil) S.A.',1),(107,'600','Banco Luso Brasileiro S.A.',1),(108,'604','Banco Industrial do Brasil S.A.',1),(109,'610','Banco VR S.A.',1),(110,'611','Banco Paulista S.A.',1),(111,'612','Banco Guanabara S.A.',1),(112,'613','Banco Pecúnia S.A.',1),(113,'623','Banco Panamericano S.A.',1),(114,'626','Banco Ficsa S.A.',1),(115,'630','Banco Intercap S.A.',1),(116,'633','Banco Rendimento S.A.',1),(117,'634','Banco Triângulo S.A.',1),(118,'637','Banco Sofisa S.A.',1),(119,'641','Banco Alvorada S.A.',1),(120,'643','Banco Pine S.A.',1),(121,'652','Itaú Unibanco Holding S.A.',1),(122,'653','Banco Indusval S.A.',1),(123,'654','Banco A.J.Renner S.A.',1),(124,'655','Banco Votorantim S.A.',1),(125,'707','Banco Daycoval S.A.',1),(126,'719','Banif-Banco Internacional do Funchal (Brasil)S.A.',1),(127,'721','Banco Credibel S.A.',1),(128,'734','Banco Gerdau S.A.',1),(129,'735','Banco Pottencial S.A.',1),(130,'738','Banco Morada S.A.',1),(131,'739','Banco BGN S.A.',1),(132,'740','Banco Barclays S.A.',1),(133,'741','Banco Ribeirão Preto S.A.',1),(134,'743','Banco Semear S.A.',1),(135,'745','Banco Citibank S.A.',1),(136,'746','Banco Modal S.A.',1),(137,'747','Banco Rabobank International Brasil S.A.',1),(138,'748','Banco Cooperativo Sicredi S.A.',1),(139,'751','Dresdner Bank Brasil S.A. - Banco Múltiplo',1),(140,'752','Banco BNP Paribas Brasil S.A.',1),(141,'753','Novo Banco Continental S.A. - Banco Múltiplo',1),(142,'755','Banco Merrill Lynch de Investimentos S.A.',1),(143,'756','Banco Cooperativo do Brasil S.A. - BANCOOB',1),(144,'757','Banco KEB do Brasil S.A.',1);
/*!40000 ALTER TABLE `codigos_bancarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprador`
--

DROP TABLE IF EXISTS `comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprador` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `ix_comprador_id` (`id`),
  CONSTRAINT `comprador_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE SET NULL,
  CONSTRAINT `comprador_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprador`
--

LOCK TABLES `comprador` WRITE;
/*!40000 ALTER TABLE `comprador` DISABLE KEYS */;
INSERT INTO `comprador` VALUES (1,'comprador itemize','27000001','comprador@itemize.com.br',1,3,1,'2023-06-05 15:57:17'),(3,'Adrian Milena','(61) 99636-1441','adrianjunges@gmail.com',1,6,1,'2023-06-07 14:11:18'),(4,'Isabela','(21) 97378-7923','comercial@mjre.com.br',6,12,1,'2023-06-07 15:49:53'),(6,'Jader','(21) 99999-9999','jader@avancorealizacoes.com.br',8,17,1,'2023-06-09 15:16:45'),(7,'Roberto Coutinho','(21) 99999-9999','roberto.baranowski@uniaorealizacoes.com.br',9,19,1,'2023-06-12 13:32:02'),(8,'Thayane Ferreira','(21) 99999-9999','thayane.ferreira@habitaresa.com.br',9,20,1,'2023-06-12 13:38:58'),(9,'Cheyenne Gomes','(21) 99999-9999','cheyenne.gomes@uniaorealizacoes.com.br',9,21,1,'2023-06-12 13:40:08'),(10,'Haissa Alcantara','(21) 99999-9999','haissa.alcantara@uniaorealizacoes.com.br',9,22,1,'2023-06-12 13:59:03'),(11,'Eduardo Remião','(11) 99999-9999','eduardo@rev3.com.br',7,23,1,'2023-06-12 15:56:34'),(13,'Jorge Ferrari','(21) 99999-9999','jferrari@arbi.com.br',10,26,1,'2023-06-13 14:29:09'),(14,'Fernanda Veiga','(21) 99999-9999','fveiga@arbi.com.br',10,27,1,'2023-06-13 14:29:51'),(15,'Catia Santana','(21) 99999-9999','catia.santana@c2sarquitetura.com.br',10,28,1,'2023-06-13 14:30:48'),(16,'Bruno Rosa','(11) 99999-9999','bruno.rosa@toledoferrari.com.br',12,31,1,'2023-06-14 21:28:33'),(17,'Marco Simões','(11) 99999-9999','marco.simoes@toledoferrari.com.br',12,32,1,'2023-06-14 21:29:42'),(18,'Alessandro Oliveira','(11) 98256-8635','alessandro.oliveira@bp8construtora.com.br',11,33,1,'2023-06-15 13:22:19'),(19,'Bi Rev3','(11) 99999-9999','bi@rev3.com.br',7,35,1,'2023-06-21 13:50:26'),(20,'Cida','(11) 99999-9999','mariasouza@arboreengenharia.com.br',14,38,1,'2023-06-22 13:24:45'),(21,'Adrian Milena','(61) 96361-441','adrian@itemize.com.br',11,42,1,'2023-06-28 18:32:15');
/*!40000 ALTER TABLE `comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprador_analytics`
--

DROP TABLE IF EXISTS `comprador_analytics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprador_analytics` (
  `comprador_id` bigint NOT NULL,
  `analytics_id` bigint NOT NULL,
  PRIMARY KEY (`comprador_id`,`analytics_id`),
  KEY `analytics_id` (`analytics_id`),
  CONSTRAINT `comprador_analytics_ibfk_1` FOREIGN KEY (`comprador_id`) REFERENCES `comprador` (`id`),
  CONSTRAINT `comprador_analytics_ibfk_2` FOREIGN KEY (`analytics_id`) REFERENCES `analytics` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprador_analytics`
--

LOCK TABLES `comprador_analytics` WRITE;
/*!40000 ALTER TABLE `comprador_analytics` DISABLE KEYS */;
INSERT INTO `comprador_analytics` VALUES (11,2),(19,2),(11,3),(19,3),(11,4),(19,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(7,13),(8,13),(9,13),(10,13),(7,14),(8,14),(9,14),(10,14),(7,15),(8,15),(9,15),(10,15),(7,16),(8,16),(9,16),(10,16),(7,17),(8,17),(9,17),(10,17),(7,18),(8,18),(9,18),(10,18);
/*!40000 ALTER TABLE `comprador_analytics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comprador_centro_de_custo`
--

DROP TABLE IF EXISTS `comprador_centro_de_custo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comprador_centro_de_custo` (
  `comprador_id` bigint NOT NULL,
  `centro_de_custo_id` bigint NOT NULL,
  PRIMARY KEY (`comprador_id`,`centro_de_custo_id`),
  KEY `centro_de_custo_id` (`centro_de_custo_id`),
  CONSTRAINT `comprador_centro_de_custo_ibfk_1` FOREIGN KEY (`comprador_id`) REFERENCES `comprador` (`id`),
  CONSTRAINT `comprador_centro_de_custo_ibfk_2` FOREIGN KEY (`centro_de_custo_id`) REFERENCES `centro_de_custo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comprador_centro_de_custo`
--

LOCK TABLES `comprador_centro_de_custo` WRITE;
/*!40000 ALTER TABLE `comprador_centro_de_custo` DISABLE KEYS */;
INSERT INTO `comprador_centro_de_custo` VALUES (18,3),(21,3);
/*!40000 ALTER TABLE `comprador_centro_de_custo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comunicado_geral`
--

DROP TABLE IF EXISTS `comunicado_geral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comunicado_geral` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `texto` text,
  `empresa_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `comunicado_geral_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comunicado_geral`
--

LOCK TABLES `comunicado_geral` WRITE;
/*!40000 ALTER TABLE `comunicado_geral` DISABLE KEYS */;
INSERT INTO `comunicado_geral` VALUES (1,'Prezado fornecedor, pedimos que fique atento ao envio do documentos exigidos. \r\n\r\nAtt, \r\nDiretoria',1,'2023-06-07 17:50:36');
/*!40000 ALTER TABLE `comunicado_geral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracao_casas_decimais`
--

DROP TABLE IF EXISTS `configuracao_casas_decimais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracao_casas_decimais` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `casas_decimais_preco` int DEFAULT NULL,
  `casas_decimais_quantidade` int DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `configuracao_casas_decimais_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracao_casas_decimais`
--

LOCK TABLES `configuracao_casas_decimais` WRITE;
/*!40000 ALTER TABLE `configuracao_casas_decimais` DISABLE KEYS */;
INSERT INTO `configuracao_casas_decimais` VALUES (1,11,4,4,'2023-06-14 19:32:26');
/*!40000 ALTER TABLE `configuracao_casas_decimais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracao_de_documentos`
--

DROP TABLE IF EXISTS `configuracao_de_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracao_de_documentos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `requerido` tinyint(1) DEFAULT NULL,
  `mes_referencia` date DEFAULT NULL,
  `ultimo_mes` date DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  CONSTRAINT `configuracao_de_documentos_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `configuracao_de_documentos_ibfk_2` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracao_de_documentos`
--

LOCK TABLES `configuracao_de_documentos` WRITE;
/*!40000 ALTER TABLE `configuracao_de_documentos` DISABLE KEYS */;
INSERT INTO `configuracao_de_documentos` VALUES (1,1,'2023-06-01','2028-12-01',1,2),(2,1,'2023-06-01','2028-06-01',1,3),(3,1,'2023-06-01','2028-06-01',1,4),(4,1,'2023-04-01','2023-12-01',11,5),(5,1,'2023-01-01','2023-12-01',1,1);
/*!40000 ALTER TABLE `configuracao_de_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta_bancaria_cliente`
--

DROP TABLE IF EXISTS `conta_bancaria_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conta_bancaria_cliente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo_banco` varchar(100) DEFAULT NULL,
  `agencia` varchar(100) DEFAULT NULL,
  `conta_corrente` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo_de_conta` enum('conta_corrente','conta_poupanca','conta_investimento') DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  `quem_cadastrou` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ix_conta_bancaria_cliente_id` (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `cliente_id` (`cliente_id`),
  KEY `quem_cadastrou` (`quem_cadastrou`),
  CONSTRAINT `conta_bancaria_cliente_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE SET NULL,
  CONSTRAINT `conta_bancaria_cliente_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`) ON DELETE SET NULL,
  CONSTRAINT `conta_bancaria_cliente_ibfk_3` FOREIGN KEY (`quem_cadastrou`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta_bancaria_cliente`
--

LOCK TABLES `conta_bancaria_cliente` WRITE;
/*!40000 ALTER TABLE `conta_bancaria_cliente` DISABLE KEYS */;
INSERT INTO `conta_bancaria_cliente` VALUES (1,'341','1234','12345-6',1,'conta_corrente',1,1,2,'2023-06-22 14:12:35');
/*!40000 ALTER TABLE `conta_bancaria_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta_bancaria_filial`
--

DROP TABLE IF EXISTS `conta_bancaria_filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conta_bancaria_filial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) DEFAULT NULL,
  `codigo_banco` varchar(100) DEFAULT NULL,
  `agencia` varchar(100) DEFAULT NULL,
  `conta_corrente` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo_de_conta` enum('conta_corrente','conta_poupanca','conta_investimento') DEFAULT NULL,
  `filial_id` bigint DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `quem_cadastrou` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ix_conta_bancaria_filial_id` (`id`),
  KEY `filial_id` (`filial_id`),
  KEY `quem_cadastrou` (`quem_cadastrou`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `conta_bancaria_filial_ibfk_1` FOREIGN KEY (`filial_id`) REFERENCES `filial` (`id`) ON DELETE SET NULL,
  CONSTRAINT `conta_bancaria_filial_ibfk_2` FOREIGN KEY (`quem_cadastrou`) REFERENCES `usuario` (`id`),
  CONSTRAINT `conta_bancaria_filial_ibfk_3` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta_bancaria_filial`
--

LOCK TABLES `conta_bancaria_filial` WRITE;
/*!40000 ALTER TABLE `conta_bancaria_filial` DISABLE KEYS */;
INSERT INTO `conta_bancaria_filial` VALUES (1,'c989f21d-4765-4bcd-abcf-7c813ff82319','341','2545','12545-7',1,'conta_corrente',1,1,2,'2023-06-22 14:27:55'),(2,'fdc599b2-dbfb-453d-a356-17beaa315b3b','237','9999','999999-1',1,'conta_corrente',2,11,29,'2023-06-27 20:37:59'),(3,'52fb6e8b-42a2-46aa-a226-5c52195d1273','001','8598','58694-6',1,'conta_corrente',1,1,2,'2023-07-04 18:44:19');
/*!40000 ALTER TABLE `conta_bancaria_filial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta_bancaria_fornecedor`
--

DROP TABLE IF EXISTS `conta_bancaria_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conta_bancaria_fornecedor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo_banco` varchar(100) DEFAULT NULL,
  `agencia` varchar(100) DEFAULT NULL,
  `conta_corrente` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `tipo_de_conta` enum('conta_corrente','conta_poupanca','conta_investimento') DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `quem_cadastrou` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  KEY `quem_cadastrou` (`quem_cadastrou`),
  KEY `ix_conta_bancaria_fornecedor_id` (`id`),
  CONSTRAINT `conta_bancaria_fornecedor_ibfk_1` FOREIGN KEY (`fornecedor_id`) REFERENCES `empresa` (`id`) ON DELETE SET NULL,
  CONSTRAINT `conta_bancaria_fornecedor_ibfk_2` FOREIGN KEY (`quem_cadastrou`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta_bancaria_fornecedor`
--

LOCK TABLES `conta_bancaria_fornecedor` WRITE;
/*!40000 ALTER TABLE `conta_bancaria_fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `conta_bancaria_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contato_comercial`
--

DROP TABLE IF EXISTS `contato_comercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contato_comercial` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `telefone` varchar(100) DEFAULT NULL,
  `ramal` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fornecedor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  KEY `ix_contato_comercial_id` (`id`),
  CONSTRAINT `contato_comercial_ibfk_1` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contato_comercial`
--

LOCK TABLES `contato_comercial` WRITE;
/*!40000 ALTER TABLE `contato_comercial` DISABLE KEYS */;
INSERT INTO `contato_comercial` VALUES (1,'Adrian','','','61996361441','adrianjunges@gmail.com','2023-06-07 17:42:58',2),(2,'JOÃO','','','6199999999','adrianjunges@itemize.com','2023-06-21 13:19:55',3),(3,'ADRIAN','6199636144','','6199999999','adrian@itemize.com.br','2023-06-23 18:59:47',4),(4,'Fulano','1144446666','','11982568635','alessandro.oliveira@bp8.com.vc','2023-06-27 19:53:48',5),(5,'Lucas Itemize','','','11955920212','lucas@itemize.com.br','2023-06-28 17:53:23',6),(6,'Marcos','','','3199999999','marcos@incontec.com.br','2023-06-28 22:32:55',7),(7,'Lucas','','','61996845255','adrian@itemize.com.br','2023-06-29 16:54:10',8),(8,'Matheus','','','61996584552','matheus@itemize.com.br','2023-06-29 19:31:25',9);
/*!40000 ALTER TABLE `contato_comercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotacao`
--

DROP TABLE IF EXISTS `cotacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) DEFAULT NULL,
  `participando` tinyint(1) NOT NULL,
  `entrega_dos_insumos` varchar(100) DEFAULT NULL,
  `entrega_dos_materiais` varchar(100) DEFAULT NULL,
  `prazo_de_pagamento` int DEFAULT NULL,
  `quantidade_de_parcelas` int DEFAULT NULL,
  `intervalo_parcela` int DEFAULT NULL,
  `intervalo_entrega` int DEFAULT NULL,
  `quantidade_entrega` int DEFAULT NULL,
  `cnpj_do_frete` varchar(100) DEFAULT NULL,
  `valor_do_frete` float DEFAULT NULL,
  `tipo_de_frete` varchar(100) DEFAULT NULL,
  `observacoes` text,
  `total_impostos` float DEFAULT NULL,
  `total_itens` float DEFAULT NULL,
  `total_geral` float DEFAULT NULL,
  `desconto` float DEFAULT NULL,
  `total_liquido` float DEFAULT NULL,
  `cnpj_fornecedor` varchar(100) DEFAULT NULL,
  `cnpj_empresa` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `codigo_empresa` int NOT NULL,
  `codigo_obra` varchar(5) NOT NULL,
  `codigo_cotacao` int NOT NULL,
  `codigo_fornecedor` int NOT NULL,
  `contraproposta` text,
  `versao` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empresa_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  KEY `ix_cotacao_id` (`id`),
  CONSTRAINT `cotacao_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE SET NULL,
  CONSTRAINT `cotacao_ibfk_2` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotacao`
--

LOCK TABLES `cotacao` WRITE;
/*!40000 ALTER TABLE `cotacao` DISABLE KEYS */;
INSERT INTO `cotacao` VALUES (1,'b79dc060-13a2-42bb-b8fc-5afcb825d974',1,'unica','12',30,1,0,0,1,NULL,NULL,'cif','',0,25,25,0,25,'40365927000140','40365927000140','',728,'728CO',101,61516,NULL,1,0,'2023-06-28 17:44:30',1,1),(2,'3e8d11a6-3d87-4373-ac79-69a28a7a647b',1,'unica','1',30,1,0,0,1,NULL,NULL,'cif','',0,24,24,0,24,'40365927000140','40365927000140','',728,'728CO',102,61516,NULL,1,0,'2023-06-28 17:47:07',1,1),(3,'72f0e2e8-ba55-43e1-b198-8c30d5c427ec',1,'unica','1',30,1,0,0,1,NULL,NULL,'cif','',0.046,2.3,2.346,0,2.346,'37242114000158','40365927000140','',728,'728CO',101,61811,'1,5',1,1,'2023-06-28 22:41:52',1,7),(4,'b710d1f8-152a-4043-8837-8f5d20a59b9e',1,'unica','2',30,1,0,0,1,NULL,NULL,'cif','',0,200,200,0,200,'40769709000170','40365927000140','',728,'728CO',98,61923,'Por favor, consegue valor mais baixo',1,1,'2023-07-04 19:40:09',1,2),(5,'017c67a8-04fd-43ea-ae73-ca9156b2795d',1,'parcial','1',30,2,30,0,1,NULL,NULL,'cif','',0,62.5,62.5,0,62.5,'81772253000185','05166785000190','itemize',1,'1236',551,14223,NULL,1,0,'2023-07-05 14:57:17',11,5);
/*!40000 ALTER TABLE `cotacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotacao_job`
--

DROP TABLE IF EXISTS `cotacao_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cotacao_job` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo_empresa` int NOT NULL,
  `codigo_obra` varchar(5) NOT NULL,
  `codigo_cotacao` int NOT NULL,
  `codigo_fornecedor` int NOT NULL,
  `versao` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_cotacao_job_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotacao_job`
--

LOCK TABLES `cotacao_job` WRITE;
/*!40000 ALTER TABLE `cotacao_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `cotacao_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dropbox_config`
--

DROP TABLE IF EXISTS `dropbox_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dropbox_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ativo` tinyint(1) DEFAULT NULL,
  `oauth2_refresh_token` text,
  `app_key` text,
  `app_secret` text,
  `empresa_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `ix_dropbox_config_id` (`id`),
  CONSTRAINT `dropbox_config_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dropbox_config`
--

LOCK TABLES `dropbox_config` WRITE;
/*!40000 ALTER TABLE `dropbox_config` DISABLE KEYS */;
INSERT INTO `dropbox_config` VALUES (1,1,'gAAAAABkfgXdue_WkGsUK0d1ul2Sh7JL5AbL31TfVYxFNreEiTJSWH9MfSLoj_QD6XUr_Wf_DoBaxHCSl8tg_AgUDNoQQQqBc8seZlvfPefHnik8_Hf-rKag80-HSq6BeU1FsaPNaEA1olZS61-sb3raySPOQMzUz_fxKEGu3v_kjNbp4Q3_8GA=','vwetyh9ci41qyz7','gAAAAABkfgXden3ZIvkvF4BZddvsBUFVWPtDbgfWgwL2ko20EGkk05hN-q0QzX2Aj3iWCqVziJWv-3HRRcEPk0n8ih6QGcg1sw==',1),(6,1,'gAAAAABkgKZKjPrvwdW9pGzCqstwclyksLq03RUiy19O9Sab0VBdXGg6A06tM7K5RwAxi583euTVq-edqsk3nBd2zKEViUHSopqAPE6uVJe5cHV_gWqgSh6e2DtpHyHUgQV3h6iX6FigDnkzQ4DMHbUIeCH3oh7IYauxGOYf_jg-Dwu7MES11bI=','vwetyh9ci41qyz7','gAAAAABkgKZKTYFU_Q14hoHB-BI8zCes2geadfeo8lEy2JNPDCPqFWlDvtOr7E1LpQexiEUKITWQD6PVcntr3lrUJGT_610uYw==',6),(7,1,'gAAAAABkgKxaDG8saurspKlT1suZBL_Vct8EzGsBuqZ4v4cDQG-h9qdfp0jsDvBw_zxppp5k0XrWuJgx5rRt_CNkpGh8t2dB-kWnZXgwrFuyYWs9rZsMCjOlyK9A1cj55iBaaPbCXDHm7fx4L14CsWju91l64Nja-lQZ7bpaJqv-XB1wo23YRoA=','vwetyh9ci41qyz7','gAAAAABkgKxaEr06ZBtSwnImGU-wHBAP0bKr6kuLEbZMY43cO9qaJF3ofZITA33gqS1H4sORuU0qpWQaN8ZLgUUWgu-PVuHvJw==',7),(8,1,'gAAAAABkgx3FAdgCYNz8LHmrgtc-k_L0-0g-WeYBjwoF-2V6WfjvtFP52CDEhqqHkFHTuLNp56UD-Zz8AYFEXfMuhnYDg_Gp4uT6Iv5-JRKwn3A4gumD6RZsjSwzU-f6U9Y_NEcEoEL6wPgTEBsN11n1k9xO5AOKqDMr-Pwck4x7eeOKY36bx5E=','vwetyh9ci41qyz7','gAAAAABkgx3FqE-cO3y0q_XsWCGbL3MCN0fW77xPj9Yfa6zgc82kKC-9uEFkhbQMZdqgRcwiA1k1_yJeucXU8vZzwMn27tH1WA==',8),(9,1,'gAAAAABkhxTKRK-eiN8TNc-OydWlv7NZ5fgU7SSBPbl7uADqU8oUz-T8fka3OR5EFiDXLA7Z3_06v07-ET8MlluyCyCooq8K_hZ5XYNoYJxHU-k3U2j_4QFzyIuDIehw62vpF_Q_SrCj088M2xKllqvF1UI2C_kthADT4-fQGw-un5fefaxfA9s=','vwetyh9ci41qyz7','gAAAAABkhxTKZPf2k7Yt-nvlxL0W4YXbLOXNmHe7CIk7HweBR_wWJ0M49YpAGr5OYZrVlY-TWGccnQ58AduiBa6cG_bSf_W1kg==',9),(10,1,'gAAAAABkiHK0GZKJskQvnE2NNcvLCb2pNOe-6Brajjymd0Sxnk954rqX9OB0FQsRbKfuZlHB5wlyTr62alb2P9bZ0hHjW9h7p0d5i0KxoQ8RlQhTewfcOWhFHSPlZadNkFq-SbG1OELh5eSKpcj-zdUdIzslYTMZWFfVg9FiZXutX3Am3efeeOQ=','vwetyh9ci41qyz7','gAAAAABkiHK0PD_KzWoCTyA6i21MXeOcSDjYppVqGsFuRKPBgIxjATX6a8sVZH6G8Y7CkX9B9q8X0FJTHFX1_PJpLrMsDnmbyA==',10),(11,1,'gAAAAABkiK7_7UwNGu-l8KsNDXG7SJTo-ZTwIZAzTnhHKadnTra2vrwMCueiVotk7JPEpR4z0Sm2Qto05cZnx7VmoMUBNyWjUxQtaNNsYdLlYEJg_XjjUT3ATacSce0nD4zXFDskA0IB0in5WZ50PqNLUbQsHQFvmycgUQzFvd5V1d1W9lsNCEk=','vwetyh9ci41qyz7','gAAAAABkiK7__VublqefcPS1yGUNrknqsohkr-TFY-Ij5reCEXYLr-zgDUO7RqOGc-1-pcxIl1UbHsAhUnpakY-lZicY4fzDpA==',11),(12,1,'gAAAAABkih3cgR6vaHX241eE1emqPZ3AqYdDwhgAZrhsC_g3OMOuYOJTh70BMoOStu2NhkGurJszgFIHnke66v2mDHka4wKwCtXxZXS67To-nQOUmbwcetA8VV1J90ckhhzYb8XliV8MNswVIDk80YjEzP1TDn73Dcp9f9j7NIX8jIFM9bhZzVQ=','vwetyh9ci41qyz7','gAAAAABkih3c-Hs29MxwHspzs9X0TMJP2rcIMNmjdVtKYokBOa2iZUZIUCEu_xm0O09Ic3WhQiKLGiiBciPHCpyD-sSEXu_clQ==',12),(13,1,'gAAAAABklEfY-KFwAaJwKEYyQn7EsuK4VMWGw3zdy990Gt7_znAWH2fx_c3kEOg1Q5zbbpXAshXoqaW3iXzUQ_zyHdMCKb-U2nezNSRjjWOGCIpg_dooMPSJsTc1ONhArcXSB282fKeEkNGHpjZM8TwfSIen1PcnE2wx_VNxgcJF6u3kNKFGrjs=','vwetyh9ci41qyz7','gAAAAABklEfYTeq1GLJt3E1p0QLkOAUzrMyjnS-g2hgKsfRp5vl2dBzAvyVI4oVRVupgcLrTqSFBRcaXCi6AGGftBqBGRqEXog==',13),(14,1,'gAAAAABklEsqOoBAeDGLPQJBwT-s9zaaAyl1JT8dVHt4FlLXDww3wFiuQjCyfhfi66GGpl5u4a7Hba9zDoWk83qVyKL1LqmVL6a8Pi9mNEAIPSmPpi7g6lZiLaYAFVzIpZGLH76h2kww8tBtEPz0PhltUDe6q5ukT_aRvqrRUSIB65q_SIdM6cs=','vwetyh9ci41qyz7','gAAAAABklEsqpE4_2bV4tA-YN_qSiezw5xX8l36sbw1o6cVEH79S4jW3eXhmGWSG1y6UxmJYxHSZIIEBT6WQNWpBzIdLiwdUFg==',14);
/*!40000 ALTER TABLE `dropbox_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `cnpj` varchar(100) NOT NULL,
  `responsavel` varchar(100) NOT NULL,
  `atividade_principal` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `natureza_juridica` varchar(100) NOT NULL,
  `situacao` varchar(100) NOT NULL,
  `porte` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `uf` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `url_erp` varchar(100) NOT NULL,
  `token_erp` text NOT NULL,
  `usr_erp` varchar(100) NOT NULL,
  `senha_erp` text NOT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usuario_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `empresa_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'7659897c-6279-4d9d-96bb-f44767a188f9',1,'Itemize','Itemize','40365927000140','Lucas','62.04-0-00','OK','MATRIZ','1155174157','206-2 - Sociedade Empresária Limitada','ATIVA','EMPRESA DE PEQUENO PORTE','fiscal@itemize.com.br','R GENERAL ANDRADE NEVES','9','SALA 726','CENTRO','NITEROI','RJ','24210000','https://uauweb.virtuau.com.br:51478/uauAPI/','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','Itemize','gAAAAABkfgXZMogH-Gdx0pvVJa_YfFIVL90r5Q-CDBOUOOSkrH6c8gaG_pxB1xe3VwActTPnCV3OL2fMpMe3-T69kemTXjz-0g==','2023-06-05 15:57:13',2),(6,'1809191f-c29a-4915-917b-913264cff349',1,'MJRE CONSTRUTORA LTDA','','05851921000181','Vinicius','43.13-4-00','OK','MATRIZ','2125010353','206-2 - Sociedade Empresária Limitada','ATIVA','DEMAIS','dir.contabil@mjre.com.br','RUA BALDRACO','179',': PARTE;','CACHAMBI','RIO DE JANEIRO','RJ','20780220','https://uauweb.virtuau.com.br:51565/uauAPI/','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','Itemize','gAAAAABkgKZHC1eqhEhr0LZ5zA_RTv-XLzP1NHjIGk2OFgpMDwuy9OesvXAoJhbtPIKnkQtWP4XsKgEg_lLC9VeOu9dtkKxWCA==','2023-06-07 15:46:15',11),(7,'f2934174-a7a5-40f8-bea2-5962229c813b',1,'REV 3 INCORPORACOES E PARTICIPACOES S/A','','17781324000107','Eduardo Remião','41.10-7-00','OK','MATRIZ','1130320663','205-4 - Sociedade Anônima Fechada','ATIVA','DEMAIS','eduardo@rev3.com.br','AV BRIG FARIA LIMA','2128','ANDAR 2 CONJ 202','JARDIM PAULISTANO','SAO PAULO','SP','01451903','http://apialtana01.fwc.cloud:28200/uauAPI/','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','Itemize','gAAAAABkgKxX1pZWTwB6UNQ1_Q_9I0JPXNmLLHW942cWDEs38KsUILR6xUNk37yC1rKWjqYVZCieMquEpGrgYeL_JP24ihEqKQ==','2023-06-07 16:12:07',13),(8,'23c21e60-d641-407d-949d-7b6a6993ef53',1,'AVANÇO','AVANCO EMPREENDIMENTOS IMOBILIARIOS LTDA','00543284000162','JADER','41.10-7-00','OK','MATRIZ','2134154248','206-2 - Sociedade Empresária Limitada','ATIVA','DEMAIS','sanderson@avancorealizacoes.com.br','AVENIDA DAS AMERICAS','3301','BLOCO 05 LOJA 104 LOJA 105','BARRA DA TIJUCA','RIO DE JANEIRO','RJ','22631003','http://avancoaliados.no-ip.org:28080/uauAPI/','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','Itemize','gAAAAABkgx3Dup0lDqkTUEi2ZQmbSi4RjeD-7cqeOyi3nJEpMcyPpWJFg94ccCZYD0vSZRCSKYhNu9HF2PcsI76gR5nWrWRb7A==','2023-06-09 12:40:35',16),(9,'a98c0af5-2eb4-4fd6-aacc-63b4ba6b6e2f',1,'HABITARE EMPREENDIMENTOS E PARTICIPACOES S.A.','HABITARE','37241027000186','Roberto Coutinho','41.10-7-00','OK','MATRIZ','2138063650','205-4 - Sociedade Anônima Fechada','ATIVA','DEMAIS','contato@habitaresa.com.br','RUA GAVIAO PEIXOTO','70','SALA 1704','ICARAI','NITEROI','RJ','24230100','https://globaltec01.fwc.cloud:27500/uauApi','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','Itemize','gAAAAABkhxTHinprIFpT_Qar7h3h-8_XbHr1B2F2CEE03DRf1u7cwo8OIx0rQ9YbJ-zxNSczssNhnHUPMHFT5F58y58jeG_Qog==','2023-06-12 12:51:19',18),(10,'0f11c254-78a3-4240-92a5-a01a7a03e860',1,'MONACO INCORPORACOES IMOBILIARIAS LTDA','MONACO INCORPORACOES IMOBILIARIAS LTDA','10909064000163','Jorge Ferrari','41.10-7-00','OK','MATRIZ','2132066000','206-2 - Sociedade Empresária Limitada','ATIVA','DEMAIS','jferrari@monacoemp.com.br','AVENIDA NIEMEYER','2','LOJA 101-PARTE','LEBLON','RIO DE JANEIRO','RJ','22450220','https://globaltec01.fwc.cloud:27500/uauApi','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','Itemize','gAAAAABkiHKxsYIYKTRMX51Hewzym9DsQSq8o9suMpNFcnFToDL2GKHeWx79u7HW3PYLrU6ps23cYyaU82UGPBzNYSstbzWPnQ==','2023-06-13 13:44:17',24),(11,'dae2935e-144f-40e7-8293-1bb15802a6ba',1,'BP8 BANCO DE PROJETOS IMOBILIARIOS LTDA','','05166785000190','Alessandro Oliveira','41.10-7-00','OK','MATRIZ','1144446666','206-2 - Sociedade Empresária Limitada','ATIVA','DEMAIS','debora@bancodeprojetos.net','PRACA DA SE','399','SALA 102','SE','SAO PAULO','SP','01001000','http://187.93.92.234:80/uauAPI/','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','Itemize','gAAAAABkiK79OPDoa3cVvzF3nf0fF8VuFBHmc04bCP1LCfLGE6YF8PBUNxUNRZol1Bfjv_NQucG0ldaE6L30YHVVnyKu42nD9w==','2023-06-13 18:01:33',29),(12,'e6ce8a01-031c-4bac-b976-cce76e56ac8d',1,'TF ENGENHARIA LTDA','','26452410000167','Cid Ferrari','41.20-4-00','OK','MATRIZ','1121984677','206-2 - Sociedade Empresária Limitada','ATIVA','DEMAIS','auxiliarcontabil@ceplan.com.br','RUA HUNGRIA','620','','JARDIM EUROPA','SAO PAULO','SP','01455000','https://itemize.com.br/uauapi','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','Itemize','gAAAAABkih3ZQzLqTT5NUBQejSjm45ymOHTCb4wUR2TbPjhA1MFD-hmNO19Oc0oe9insKMNpSUjK36u3-02LNe0wQSbP6wFCRQ==','2023-06-14 20:06:49',30),(13,'bbded474-3b97-4fd9-a772-ccbc393f8ff4',1,'CONSORCIO MANANCIAIS SAO PAULO','CONSORCIO MANANCIAIS SP','16927599000143','Marcus','42.22-7-01','OK','MATRIZ','1130378381','215-1 - Consórcio de Sociedades','ATIVA','DEMAIS','andreia.lima@cariocaengenharia.com.br','R SURUBIM','577','ANDAR 9 - PARTE CONJ 91','CIDADE MONCOES','SAO PAULO','SP','04571050','http://','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','empresa@itemize.com.br','gAAAAABklEfVscbk6dQJGdPg4G_l8yj59yVUZfs-fWjuoWEiVbqUr0PcTetZocelzI3Tq2h6VRO_8NiNnU4qQxG4kGZjWqkrXA==','2023-06-22 13:08:37',36),(14,'99c3ebe1-f46a-4e66-ac30-843a9231f8d4',1,'ARBORE ENGENHARIA LTDA','ARBORE ENGENHARIA','02534715000150','Maria Aparecida','41.20-4-00','OK','MATRIZ','1137426888','206-2 - Sociedade Empresária Limitada','ATIVA','DEMAIS','leandrosouza@arboreengenharia.com.br','AV DOUTOR GUILHERME DUMONT VILLARES','500','','JARDIM LONDRINA','SAO PAULO','SP','05640001','http://','eyJhbGciOiJkaXIiLCJlbmMiOiJBMTI4Q0JDLUhTMjU2In0..8t9Cbi2sVtJ5LUQdILV7fw.2p1HSZiu2Xrms03fWynfegJezS06QWWuJ9sm7wdUbkncPgYeCCMDrfhQK-LEqAfeIKSl57lciUC_1rcnlRaN_WaEj75ALGkG-Jfq0kIbN-GAsOMYOE7E-ayUC_0VbEZLUG2NKsu1JE5lCqc_gNR7b_VUCyP6lOtLaC2VTuLB6w8.eEYf9qxnwCAjw1liqIULYw','itemize','gAAAAABklEsmhs41hqatPXrFsvbozPeImRxdv6qaoZkj29bZ49j5lxon5dEVeR1NQUqUkr1xyUgpuCMuaV-Yh508x7gb_07jmQ==','2023-06-22 13:22:46',37);
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `uf` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento_negociacao`
--

DROP TABLE IF EXISTS `evento_negociacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento_negociacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fornecedor_id` bigint DEFAULT NULL,
  `cotacao_id` bigint DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `cotacao_versao` int DEFAULT NULL,
  `rotina_negociacao_id` bigint DEFAULT NULL,
  `data_contraproposta` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  KEY `cotacao_id` (`cotacao_id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `rotina_negociacao_id` (`rotina_negociacao_id`),
  CONSTRAINT `evento_negociacao_ibfk_1` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`) ON DELETE CASCADE,
  CONSTRAINT `evento_negociacao_ibfk_2` FOREIGN KEY (`cotacao_id`) REFERENCES `cotacao` (`id`) ON DELETE CASCADE,
  CONSTRAINT `evento_negociacao_ibfk_3` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `evento_negociacao_ibfk_4` FOREIGN KEY (`rotina_negociacao_id`) REFERENCES `rotina_negociacao` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento_negociacao`
--

LOCK TABLES `evento_negociacao` WRITE;
/*!40000 ALTER TABLE `evento_negociacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `evento_negociacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filial`
--

DROP TABLE IF EXISTS `filial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filial` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `inscricao_estadual` varchar(100) NOT NULL,
  `inscricao_municipal` varchar(100) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `cnpj` varchar(100) NOT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `uf` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `conta_bancaria_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_filial_id` (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `conta_bancaria_id` (`conta_bancaria_id`),
  CONSTRAINT `filial_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `filial_ibfk_2` FOREIGN KEY (`conta_bancaria_id`) REFERENCES `conta_bancaria_filial` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filial`
--

LOCK TABLES `filial` WRITE;
/*!40000 ALTER TABLE `filial` DISABLE KEYS */;
INSERT INTO `filial` VALUES (1,'c58bf986-93fb-492c-8c8e-9d86cb4fd518','21980226446','','03038761','728','ITEMIZE CONSTRUTORA E INCORPORADORA','40.365.927/0001-40',1,'Rua General Andrade Neves','09','até 118/119','São Domingos','Niterói','RJ','24210-000','2023-06-22 14:25:40',NULL),(2,'21142bcb-8093-4fd6-9c3c-879f5fc838b2','1144446666','492.625.585.118','54420059','1','BP8 BANCO DE PROJETOS IMOBILIARIOS LTDA','05166785000190',11,'','','','','','','','2023-06-27 20:33:50',NULL);
/*!40000 ALTER TABLE `filial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `abertura` varchar(100) NOT NULL,
  `atividade_principal` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `telefone` varchar(100) NOT NULL,
  `natureza_juridica` varchar(100) NOT NULL,
  `ultima_atualizacao` varchar(100) NOT NULL,
  `situacao` varchar(100) NOT NULL,
  `porte` varchar(100) NOT NULL,
  `email_fornecedor` varchar(100) NOT NULL,
  `email_solicitante` varchar(100) NOT NULL,
  `data_situacao` varchar(100) NOT NULL,
  `logradouro` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `complemento` varchar(100) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `uf` varchar(100) NOT NULL,
  `cep` varchar(100) NOT NULL,
  `cnpj` varchar(100) NOT NULL,
  `razao_social` varchar(100) NOT NULL,
  `nome_fantasia` varchar(100) NOT NULL,
  `codigo_pes_uau` int NOT NULL,
  `apresentacao` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `comentario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avaliado` tinyint(1) NOT NULL,
  `aprovado` tinyint(1) NOT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `empresa_id` bigint DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `usuario_id` (`usuario_id`),
  CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE SET NULL,
  CONSTRAINT `fornecedor_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'abertura','atividade_principal','ativo','construcao civil','(23)3523-4523','ltda','23-06-05','ativo','media','fornecedor@itemize.com.br','comprador.itemize.com.br','23-06-05','Rua Dois','12','apto 15','Santa Rosa','Niterói','RJ','112341243','40365927000140','Itemize','Itemize',12341234,'.','comentários',1,1,'2023-06-05 15:57:17',1,4,1),(2,'09/02/2021','95.11-8-00','OK','MATRIZ','6198180526','213-5 - Empresário (Individual)','23-05-13','ATIVA','MICRO EMPRESA','adrianjunges@gmail.com','adrian@itemize.com.br','2021-02-09','RUA VALDOMIRO DE MIRANDA','8','','CENTRO','FORMOSA','GO','73801610','40769709000170','ADRIAN MILENA NATAL JUNGES 05706063141','TEC CENTER',0,'Empresa de vendas de materiais de construção civil em geral. Temos várias filiais localizadas nos estados do RJ E SP. Trabalhamos com as melhore marcas do mercado para atender nossos clientes.','',1,1,'2023-06-07 17:42:57',1,15,1),(3,'08/08/1997','81.11-7-00','OK','MATRIZ','1239118872','206-2 - Sociedade Empresária Limitada','23-05-13','ATIVA','DEMAIS','ederson.faria@grupoconeleste.com.br','','2005-10-14','AVENIDA DOUTOR JOAO BATISTA SOARES DE QUEIROZ JUNIOR','1240','','JARDIM DAS INDUSTRIAS','SAO JOSE DOS CAMPOS','SP','12240000','02034846000178','CONELESTE SERVICOS LTDA','CONELESTE SERVICOS',0,'','',1,1,'2023-06-21 13:19:53',1,34,1),(4,'25/02/2003','47.44-0-99','OK','MATRIZ','6136422015','206-2 - Sociedade Empresária Limitada','23-05-22','ATIVA','EMPRESA DE PEQUENO PORTE','marcosalves8@hotmail.com','','2005-11-03','AV BRASILIA','1530','QUADRA132','FORMOSINHA','FORMOSA','GO','73813010','05559853000181','CASA DO CONSTRUTOR E DISTRIBUIDORA DE MATERIAIS PARA CONSTRUCAO LTDA','CASA DO CONSTRUTOR',0,'','',1,1,'2023-06-23 18:59:45',1,39,1),(5,'22/02/1990','00.00-0-00','OK','MATRIZ','','206-2 - Sociedade Empresária Limitada','23-05-13','BAIXADA','DEMAIS','','alessandro.oliveira@bp8.com.vc','2008-12-31','AVENIDA PRES COSTA E SILVA','235','','CENTRO','CAMBORIU','SC','88340001','81772253000185','FORNECEDOR DE SERVIÇOS E MATERIAIS FULANO DE TAL LTDA','Fornecedor Fake para testes',0,'Prestadores de serviços e materiais','Médio e Grande Porte',1,1,'2023-06-27 19:53:48',11,40,1),(6,'12/01/2021','62.04-0-00','OK','MATRIZ','1155174157','206-2 - Sociedade Empresária Limitada','23-05-13','ATIVA','EMPRESA DE PEQUENO PORTE','fiscal@itemize.com.br','','2021-01-12','RUA GENERAL ANDRADE NEVES','9','SALA 726','CENTRO','NITEROI','RJ','24210000','40365927000140','ITEMIZE SOLUCOES ESTRATEGICAS LTDA','ITEMIZE LTDA',0,'','',1,1,'2023-06-28 17:53:23',11,41,1),(7,'27/05/2020','82.11-3-00','OK','MATRIZ','1186742961','206-2 - Sociedade Empresária Limitada','23-05-21','ATIVA','MICRO EMPRESA','','','2020-05-27','R PERNAMBUCO','353','SALA 1311','FUNCIONARIOS','BELO HORIZONTE','MG','30130151','37242114000158','INCONTEC CONSULTORIA LTDA','INCONTEC',0,'','',1,1,'2023-06-28 22:32:54',1,43,1),(8,'21/09/2018','47.44-0-99','OK','MATRIZ','6136316407','213-5 - Empresário (Individual)','23-05-29','ATIVA','MICRO EMPRESA','jairoornelas2015@gmail.com','adrian@itemize.com.br','2018-09-21','AV FERROVIARIA','281','','SETOR NORDESTE','FORMOSA','GO','73807175','31571138000174','JAIRO P ORNELAS MATERIAIS DE CONSTRUCAO','J O MATERIAIS DE CONSTRUCAO',0,'','',1,1,'2023-06-29 16:54:09',1,44,1),(9,'22/02/1989','47.44-0-99','OK','MATRIZ','','206-2 - Sociedade Empresária Limitada','23-06-12','ATIVA','EMPRESA DE PEQUENO PORTE','','adrian@itemize.com.br','2005-11-03','AV TANCREDO NEVES','950','','SETOR BOSQUE','FORMOSA','GO','73802005','25077371000100','MATERIAIS DE CONSTRUCAO CONSTRULAR LTDA','CONSTRULAR MATERIAS DE CONSTRUCAO',0,'Possuímos matriz em Formosa - Go. Atendemos em todos os Estados do país. Trabalhamos com todos os materiais do básico ao acabamento. Estamos felizes em ter a oportunidade de fecharmos essa parceria','',1,1,'2023-06-29 19:31:24',1,45,1);
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ix_grupo_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'fornecedor','2023-06-05 15:57:10'),(2,'comprador','2023-06-05 15:57:10'),(3,'empresa','2023-06-05 15:57:10'),(4,'admin','2023-06-05 15:57:10');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_de_cotacao`
--

DROP TABLE IF EXISTS `item_de_cotacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_de_cotacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) DEFAULT NULL,
  `insumo` varchar(100) DEFAULT NULL,
  `descricao` text,
  `unidade` varchar(10) DEFAULT NULL,
  `quantidade` float DEFAULT NULL,
  `preco` float DEFAULT NULL,
  `porcentagem_ipi` float DEFAULT NULL,
  `valor_ipi` float DEFAULT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `porcentagem_icms` float DEFAULT NULL,
  `valor_icms` float DEFAULT NULL,
  `cotacao_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `cotacao_id` (`cotacao_id`),
  KEY `ix_item_de_cotacao_id` (`id`),
  CONSTRAINT `item_de_cotacao_ibfk_1` FOREIGN KEY (`cotacao_id`) REFERENCES `cotacao` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_de_cotacao`
--

LOCK TABLES `item_de_cotacao` WRITE;
/*!40000 ALTER TABLE `item_de_cotacao` DISABLE KEYS */;
INSERT INTO `item_de_cotacao` VALUES (1,'fac8e2dc-77d9-40e0-a256-9193807d6842','176551','CIMENTO PORTLAND CP 32','KG',1,25,0,0,'testeContrato',0,0,1,'2023-06-28 17:44:30'),(2,'b453dc27-7397-4c65-a770-03fb602ca148','176551','CIMENTO PORTLAND CP 32','SC',2,12,0,0,'testeAdiantamento',0,0,2,'2023-06-28 17:47:07'),(3,'870a3dd2-1a04-4be9-b37a-c13d05229a1e','176551','CIMENTO PORTLAND CP 32','KG',1,2.3,2,0.046,'Incontec',0,0,3,'2023-06-28 22:41:52'),(4,'d8353b89-8d54-460a-982a-dd26c285c3f3','2001','CIMENTO','KG',100,2,0,0,'Votorantim',0,0,4,'2023-07-04 19:40:09'),(5,'fd6644bf-6ac6-4e8e-96ee-dde8a8b2b184','M048013001','Tampa de concreto para caixa - armado - L 110 x A 110 x E 5 cm -  NBR 16085','un',5,12.5,0,0,'TesteSandro',0,0,5,'2023-07-05 14:57:17');
/*!40000 ALTER TABLE `item_de_cotacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_de_questionario`
--

DROP TABLE IF EXISTS `local_de_questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_de_questionario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `local` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_de_questionario`
--

LOCK TABLES `local_de_questionario` WRITE;
/*!40000 ALTER TABLE `local_de_questionario` DISABLE KEYS */;
INSERT INTO `local_de_questionario` VALUES (1,'Cotação'),(2,'Homologação');
/*!40000 ALTER TABLE `local_de_questionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `opcao_de_resposta`
--

DROP TABLE IF EXISTS `opcao_de_resposta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `opcao_de_resposta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `pergunta_id` bigint DEFAULT NULL,
  `texto` varchar(100) DEFAULT NULL,
  `n_ordem` int DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  `peso` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `pergunta_id` (`pergunta_id`),
  CONSTRAINT `opcao_de_resposta_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `opcao_de_resposta_ibfk_2` FOREIGN KEY (`pergunta_id`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `opcao_de_resposta`
--

LOCK TABLES `opcao_de_resposta` WRITE;
/*!40000 ALTER TABLE `opcao_de_resposta` DISABLE KEYS */;
INSERT INTO `opcao_de_resposta` VALUES (1,1,1,'Sim',NULL,1,5),(2,1,1,'Não',NULL,1,5),(3,1,2,'Sim',NULL,1,5),(4,1,2,'Não',NULL,1,5),(5,1,3,'Sim',NULL,1,5),(6,1,3,'Não',NULL,1,5),(7,1,4,'Sim',NULL,1,5),(8,1,4,'Não',NULL,1,5),(9,1,5,'Sim',NULL,1,5),(10,1,5,'Não',NULL,1,5),(11,1,6,'Sim',NULL,1,5),(12,1,6,'Não',NULL,1,5),(13,1,7,'Sim',NULL,1,5),(14,1,7,'Não',NULL,1,5),(15,1,8,'Sim',NULL,1,5),(16,1,8,'Não',NULL,1,5),(17,1,9,'Sim',NULL,1,5),(18,1,9,'Não',NULL,1,5),(19,1,10,'Sim',NULL,1,5),(20,1,10,'Não',NULL,1,5),(21,1,11,'Sim',NULL,1,5),(22,1,11,'Não',NULL,1,5),(23,1,12,'Sim',NULL,1,5),(24,1,12,'Não',NULL,1,5),(25,1,13,'Sim',NULL,1,5),(26,1,13,'Não',NULL,1,5),(27,1,14,'Sim',NULL,1,5),(28,1,14,'Não',NULL,1,5),(29,1,15,'Sim',NULL,1,5),(30,1,15,'Não',NULL,1,5),(31,1,16,'Sim',NULL,1,5),(32,1,16,'Não',NULL,1,5),(33,1,17,'Sim',NULL,1,5),(34,1,17,'Não',NULL,1,5),(35,1,18,'Até 1 ano',NULL,1,10),(36,1,18,'De 1 à  2 anos ',NULL,1,20),(37,1,18,'De 2 à 5 anos',NULL,1,30),(38,1,18,'De 5 à 8 anos ',NULL,1,40),(39,1,18,'Mais de 8 anos',NULL,1,50),(40,1,19,'Sim',NULL,1,50),(41,1,19,'Não',NULL,1,20),(42,1,20,'Boleto bancário',NULL,1,20),(43,1,20,'Transferência bancária',NULL,1,10),(44,1,20,'Cheque',NULL,1,10),(45,1,20,'Pix',NULL,1,10),(182,6,89,'Sim',NULL,1,5),(183,6,89,'Não',NULL,1,5),(184,6,90,'Sim',NULL,1,5),(185,6,90,'Não',NULL,1,5),(186,6,91,'Sim',NULL,1,5),(187,6,91,'Não',NULL,1,5),(188,6,92,'Sim',NULL,1,5),(189,6,92,'Não',NULL,1,5),(190,6,93,'Sim',NULL,1,5),(191,6,93,'Não',NULL,1,5),(192,6,94,'Sim',NULL,1,5),(193,6,94,'Não',NULL,1,5),(194,6,95,'Sim',NULL,1,5),(195,6,95,'Não',NULL,1,5),(196,6,96,'Sim',NULL,1,5),(197,6,96,'Não',NULL,1,5),(198,6,97,'Sim',NULL,1,5),(199,6,97,'Não',NULL,1,5),(200,6,98,'Sim',NULL,1,5),(201,6,98,'Não',NULL,1,5),(202,6,99,'Sim',NULL,1,5),(203,6,99,'Não',NULL,1,5),(204,6,100,'Sim',NULL,1,5),(205,6,100,'Não',NULL,1,5),(206,6,101,'Sim',NULL,1,5),(207,6,101,'Não',NULL,1,5),(208,6,102,'Sim',NULL,1,5),(209,6,102,'Não',NULL,1,5),(210,6,103,'Sim',NULL,1,5),(211,6,103,'Não',NULL,1,5),(212,6,104,'Sim',NULL,1,5),(213,6,104,'Não',NULL,1,5),(214,6,105,'Sim',NULL,1,5),(215,6,105,'Não',NULL,1,5),(216,7,106,'Sim',NULL,1,5),(217,7,106,'Não',NULL,1,5),(218,7,107,'Sim',NULL,1,5),(219,7,107,'Não',NULL,1,5),(220,7,108,'Sim',NULL,1,5),(221,7,108,'Não',NULL,1,5),(222,7,109,'Sim',NULL,1,5),(223,7,109,'Não',NULL,1,5),(224,7,110,'Sim',NULL,1,5),(225,7,110,'Não',NULL,1,5),(226,7,111,'Sim',NULL,1,5),(227,7,111,'Não',NULL,1,5),(228,7,112,'Sim',NULL,1,5),(229,7,112,'Não',NULL,1,5),(230,7,113,'Sim',NULL,1,5),(231,7,113,'Não',NULL,1,5),(232,7,114,'Sim',NULL,1,5),(233,7,114,'Não',NULL,1,5),(234,7,115,'Sim',NULL,1,5),(235,7,115,'Não',NULL,1,5),(236,7,116,'Sim',NULL,1,5),(237,7,116,'Não',NULL,1,5),(238,7,117,'Sim',NULL,1,5),(239,7,117,'Não',NULL,1,5),(240,7,118,'Sim',NULL,1,5),(241,7,118,'Não',NULL,1,5),(242,7,119,'Sim',NULL,1,5),(243,7,119,'Não',NULL,1,5),(244,7,120,'Sim',NULL,1,5),(245,7,120,'Não',NULL,1,5),(246,7,121,'Sim',NULL,1,5),(247,7,121,'Não',NULL,1,5),(248,7,122,'Sim',NULL,1,5),(249,7,122,'Não',NULL,1,5),(250,8,123,'Sim',NULL,1,5),(251,8,123,'Não',NULL,1,5),(252,8,124,'Sim',NULL,1,5),(253,8,124,'Não',NULL,1,5),(254,8,125,'Sim',NULL,1,5),(255,8,125,'Não',NULL,1,5),(256,8,126,'Sim',NULL,1,5),(257,8,126,'Não',NULL,1,5),(258,8,127,'Sim',NULL,1,5),(259,8,127,'Não',NULL,1,5),(260,8,128,'Sim',NULL,1,5),(261,8,128,'Não',NULL,1,5),(262,8,129,'Sim',NULL,1,5),(263,8,129,'Não',NULL,1,5),(264,8,130,'Sim',NULL,1,5),(265,8,130,'Não',NULL,1,5),(266,8,131,'Sim',NULL,1,5),(267,8,131,'Não',NULL,1,5),(268,8,132,'Sim',NULL,1,5),(269,8,132,'Não',NULL,1,5),(270,8,133,'Sim',NULL,1,5),(271,8,133,'Não',NULL,1,5),(272,8,134,'Sim',NULL,1,5),(273,8,134,'Não',NULL,1,5),(274,8,135,'Sim',NULL,1,5),(275,8,135,'Não',NULL,1,5),(276,8,136,'Sim',NULL,1,5),(277,8,136,'Não',NULL,1,5),(278,8,137,'Sim',NULL,1,5),(279,8,137,'Não',NULL,1,5),(280,8,138,'Sim',NULL,1,5),(281,8,138,'Não',NULL,1,5),(282,8,139,'Sim',NULL,1,5),(283,8,139,'Não',NULL,1,5),(284,9,140,'Sim',NULL,1,5),(285,9,140,'Não',NULL,1,5),(286,9,141,'Sim',NULL,1,5),(287,9,141,'Não',NULL,1,5),(288,9,142,'Sim',NULL,1,5),(289,9,142,'Não',NULL,1,5),(290,9,143,'Sim',NULL,1,5),(291,9,143,'Não',NULL,1,5),(292,9,144,'Sim',NULL,1,5),(293,9,144,'Não',NULL,1,5),(294,9,145,'Sim',NULL,1,5),(295,9,145,'Não',NULL,1,5),(296,9,146,'Sim',NULL,1,5),(297,9,146,'Não',NULL,1,5),(298,9,147,'Sim',NULL,1,5),(299,9,147,'Não',NULL,1,5),(300,9,148,'Sim',NULL,1,5),(301,9,148,'Não',NULL,1,5),(302,9,149,'Sim',NULL,1,5),(303,9,149,'Não',NULL,1,5),(304,9,150,'Sim',NULL,1,5),(305,9,150,'Não',NULL,1,5),(306,9,151,'Sim',NULL,1,5),(307,9,151,'Não',NULL,1,5),(308,9,152,'Sim',NULL,1,5),(309,9,152,'Não',NULL,1,5),(310,9,153,'Sim',NULL,1,5),(311,9,153,'Não',NULL,1,5),(312,9,154,'Sim',NULL,1,5),(313,9,154,'Não',NULL,1,5),(314,9,155,'Sim',NULL,1,5),(315,9,155,'Não',NULL,1,5),(316,9,156,'Sim',NULL,1,5),(317,9,156,'Não',NULL,1,5),(318,10,157,'Sim',NULL,1,5),(319,10,157,'Não',NULL,1,5),(320,10,158,'Sim',NULL,1,5),(321,10,158,'Não',NULL,1,5),(322,10,159,'Sim',NULL,1,5),(323,10,159,'Não',NULL,1,5),(324,10,160,'Sim',NULL,1,5),(325,10,160,'Não',NULL,1,5),(326,10,161,'Sim',NULL,1,5),(327,10,161,'Não',NULL,1,5),(328,10,162,'Sim',NULL,1,5),(329,10,162,'Não',NULL,1,5),(330,10,163,'Sim',NULL,1,5),(331,10,163,'Não',NULL,1,5),(332,10,164,'Sim',NULL,1,5),(333,10,164,'Não',NULL,1,5),(334,10,165,'Sim',NULL,1,5),(335,10,165,'Não',NULL,1,5),(336,10,166,'Sim',NULL,1,5),(337,10,166,'Não',NULL,1,5),(338,10,167,'Sim',NULL,1,5),(339,10,167,'Não',NULL,1,5),(340,10,168,'Sim',NULL,1,5),(341,10,168,'Não',NULL,1,5),(342,10,169,'Sim',NULL,1,5),(343,10,169,'Não',NULL,1,5),(344,10,170,'Sim',NULL,1,5),(345,10,170,'Não',NULL,1,5),(346,10,171,'Sim',NULL,1,5),(347,10,171,'Não',NULL,1,5),(348,10,172,'Sim',NULL,1,5),(349,10,172,'Não',NULL,1,5),(350,10,173,'Sim',NULL,1,5),(351,10,173,'Não',NULL,1,5),(352,11,174,'Sim',NULL,1,5),(353,11,174,'Não',NULL,1,5),(354,11,175,'Sim',NULL,1,5),(355,11,175,'Não',NULL,1,5),(356,11,176,'Sim',NULL,1,5),(357,11,176,'Não',NULL,1,5),(358,11,177,'Sim',NULL,1,5),(359,11,177,'Não',NULL,1,5),(360,11,178,'Sim',NULL,1,5),(361,11,178,'Não',NULL,1,5),(362,11,179,'Sim',NULL,1,5),(363,11,179,'Não',NULL,1,5),(364,11,180,'Sim',NULL,1,5),(365,11,180,'Não',NULL,1,5),(366,11,181,'Sim',NULL,1,5),(367,11,181,'Não',NULL,1,5),(368,11,182,'Sim',NULL,1,5),(369,11,182,'Não',NULL,1,5),(370,11,183,'Sim',NULL,1,5),(371,11,183,'Não',NULL,1,5),(372,11,184,'Sim',NULL,1,5),(373,11,184,'Não',NULL,1,5),(374,11,185,'Sim',NULL,1,5),(375,11,185,'Não',NULL,1,5),(376,11,186,'Sim',NULL,1,5),(377,11,186,'Não',NULL,1,5),(378,11,187,'Sim',NULL,1,5),(379,11,187,'Não',NULL,1,5),(380,11,188,'Sim',NULL,1,5),(381,11,188,'Não',NULL,1,5),(382,11,189,'Sim',NULL,1,5),(383,11,189,'Não',NULL,1,5),(384,11,190,'Sim',NULL,1,5),(385,11,190,'Não',NULL,1,5),(386,12,191,'Sim',NULL,1,5),(387,12,191,'Não',NULL,1,5),(388,12,192,'Sim',NULL,1,5),(389,12,192,'Não',NULL,1,5),(390,12,193,'Sim',NULL,1,5),(391,12,193,'Não',NULL,1,5),(392,12,194,'Sim',NULL,1,5),(393,12,194,'Não',NULL,1,5),(394,12,195,'Sim',NULL,1,5),(395,12,195,'Não',NULL,1,5),(396,12,196,'Sim',NULL,1,5),(397,12,196,'Não',NULL,1,5),(398,12,197,'Sim',NULL,1,5),(399,12,197,'Não',NULL,1,5),(400,12,198,'Sim',NULL,1,5),(401,12,198,'Não',NULL,1,5),(402,12,199,'Sim',NULL,1,5),(403,12,199,'Não',NULL,1,5),(404,12,200,'Sim',NULL,1,5),(405,12,200,'Não',NULL,1,5),(406,12,201,'Sim',NULL,1,5),(407,12,201,'Não',NULL,1,5),(408,12,202,'Sim',NULL,1,5),(409,12,202,'Não',NULL,1,5),(410,12,203,'Sim',NULL,1,5),(411,12,203,'Não',NULL,1,5),(412,12,204,'Sim',NULL,1,5),(413,12,204,'Não',NULL,1,5),(414,12,205,'Sim',NULL,1,5),(415,12,205,'Não',NULL,1,5),(416,12,206,'Sim',NULL,1,5),(417,12,206,'Não',NULL,1,5),(418,12,207,'Sim',NULL,1,5),(419,12,207,'Não',NULL,1,5),(420,13,208,'Sim',NULL,1,5),(421,13,208,'Não',NULL,1,5),(422,13,209,'Sim',NULL,1,5),(423,13,209,'Não',NULL,1,5),(424,13,210,'Sim',NULL,1,5),(425,13,210,'Não',NULL,1,5),(426,13,211,'Sim',NULL,1,5),(427,13,211,'Não',NULL,1,5),(428,13,212,'Sim',NULL,1,5),(429,13,212,'Não',NULL,1,5),(430,13,213,'Sim',NULL,1,5),(431,13,213,'Não',NULL,1,5),(432,13,214,'Sim',NULL,1,5),(433,13,214,'Não',NULL,1,5),(434,13,215,'Sim',NULL,1,5),(435,13,215,'Não',NULL,1,5),(436,13,216,'Sim',NULL,1,5),(437,13,216,'Não',NULL,1,5),(438,13,217,'Sim',NULL,1,5),(439,13,217,'Não',NULL,1,5),(440,13,218,'Sim',NULL,1,5),(441,13,218,'Não',NULL,1,5),(442,13,219,'Sim',NULL,1,5),(443,13,219,'Não',NULL,1,5),(444,13,220,'Sim',NULL,1,5),(445,13,220,'Não',NULL,1,5),(446,13,221,'Sim',NULL,1,5),(447,13,221,'Não',NULL,1,5),(448,13,222,'Sim',NULL,1,5),(449,13,222,'Não',NULL,1,5),(450,13,223,'Sim',NULL,1,5),(451,13,223,'Não',NULL,1,5),(452,13,224,'Sim',NULL,1,5),(453,13,224,'Não',NULL,1,5),(454,14,225,'Sim',NULL,1,5),(455,14,225,'Não',NULL,1,5),(456,14,226,'Sim',NULL,1,5),(457,14,226,'Não',NULL,1,5),(458,14,227,'Sim',NULL,1,5),(459,14,227,'Não',NULL,1,5),(460,14,228,'Sim',NULL,1,5),(461,14,228,'Não',NULL,1,5),(462,14,229,'Sim',NULL,1,5),(463,14,229,'Não',NULL,1,5),(464,14,230,'Sim',NULL,1,5),(465,14,230,'Não',NULL,1,5),(466,14,231,'Sim',NULL,1,5),(467,14,231,'Não',NULL,1,5),(468,14,232,'Sim',NULL,1,5),(469,14,232,'Não',NULL,1,5),(470,14,233,'Sim',NULL,1,5),(471,14,233,'Não',NULL,1,5),(472,14,234,'Sim',NULL,1,5),(473,14,234,'Não',NULL,1,5),(474,14,235,'Sim',NULL,1,5),(475,14,235,'Não',NULL,1,5),(476,14,236,'Sim',NULL,1,5),(477,14,236,'Não',NULL,1,5),(478,14,237,'Sim',NULL,1,5),(479,14,237,'Não',NULL,1,5),(480,14,238,'Sim',NULL,1,5),(481,14,238,'Não',NULL,1,5),(482,14,239,'Sim',NULL,1,5),(483,14,239,'Não',NULL,1,5),(484,14,240,'Sim',NULL,1,5),(485,14,240,'Não',NULL,1,5),(486,14,241,'Sim',NULL,1,5),(487,14,241,'Não',NULL,1,5);
/*!40000 ALTER TABLE `opcao_de_resposta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pergunta`
--

DROP TABLE IF EXISTS `pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pergunta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `questionario_id` bigint DEFAULT NULL,
  `descricao` text NOT NULL,
  `obrigatorio` tinyint(1) DEFAULT NULL,
  `tipo_de_pergunta_id` int DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `questionario_id` (`questionario_id`),
  KEY `tipo_de_pergunta_id` (`tipo_de_pergunta_id`),
  CONSTRAINT `pergunta_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pergunta_ibfk_2` FOREIGN KEY (`questionario_id`) REFERENCES `questionario` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pergunta_ibfk_3` FOREIGN KEY (`tipo_de_pergunta_id`) REFERENCES `tipo_de_pergunta` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pergunta`
--

LOCK TABLES `pergunta` WRITE;
/*!40000 ALTER TABLE `pergunta` DISABLE KEYS */;
INSERT INTO `pergunta` VALUES (1,1,1,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(2,1,1,'Fornecimento de ART para os serviços?',1,2,0),(3,1,1,'Assinou e enviou carta convite junto com a proposta?',1,2,0),(4,1,1,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,0),(5,1,1,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,0),(6,1,1,'Considerou supervisão de encarregado em período integral na obra?',1,2,0),(7,1,1,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,0),(8,1,1,'Transporte de ida e volta dos equipamentos:',1,2,0),(9,1,1,'Cargas, descarga e conferência dos equipamento:',1,2,0),(10,1,1,'Assistência Técnica:',1,2,0),(11,1,1,'Elaboração dos projetos de montagem:',1,2,0),(12,1,1,'Limpeza/danos/furtos do material:',1,2,1),(13,1,1,'Medição e condições de pagamento:',1,2,1),(14,1,1,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(15,1,1,'Indenização:',1,2,1),(16,1,1,'Distância do Empreendimento em KM:',1,2,0),(17,1,1,'Custo adicional para carga e descarga:',1,2,1),(18,1,2,'Tempo de atividade da empresa',1,2,1),(19,1,2,'Realiza entrega de materiais?',1,2,1),(20,1,2,'Meios de recebimento que utiliza',1,1,1),(89,6,11,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(90,6,11,'Fornecimento de ART para os serviços?',1,2,1),(91,6,11,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(92,6,11,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(93,6,11,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(94,6,11,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(95,6,11,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(96,6,11,'Transporte de ida e volta dos equipamentos:',1,2,1),(97,6,11,'Cargas, descarga e conferência dos equipamento:',1,2,1),(98,6,11,'Assistência Técnica:',1,2,1),(99,6,11,'Elaboração dos projetos de montagem:',1,2,1),(100,6,11,'Limpeza/danos/furtos do material:',1,2,1),(101,6,11,'Medição e condições de pagamento:',1,2,1),(102,6,11,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(103,6,11,'Indenização:',1,2,1),(104,6,11,'Distância do Empreendimento em KM:',1,2,1),(105,6,11,'Custo adicional para carga e descarga:',1,2,1),(106,7,13,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(107,7,13,'Fornecimento de ART para os serviços?',1,2,1),(108,7,13,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(109,7,13,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(110,7,13,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(111,7,13,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(112,7,13,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(113,7,13,'Transporte de ida e volta dos equipamentos:',1,2,1),(114,7,13,'Cargas, descarga e conferência dos equipamento:',1,2,1),(115,7,13,'Assistência Técnica:',1,2,1),(116,7,13,'Elaboração dos projetos de montagem:',1,2,1),(117,7,13,'Limpeza/danos/furtos do material:',1,2,1),(118,7,13,'Medição e condições de pagamento:',1,2,1),(119,7,13,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(120,7,13,'Indenização:',1,2,1),(121,7,13,'Distância do Empreendimento em KM:',1,2,1),(122,7,13,'Custo adicional para carga e descarga:',1,2,1),(123,8,15,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(124,8,15,'Fornecimento de ART para os serviços?',1,2,1),(125,8,15,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(126,8,15,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(127,8,15,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(128,8,15,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(129,8,15,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(130,8,15,'Transporte de ida e volta dos equipamentos:',1,2,1),(131,8,15,'Cargas, descarga e conferência dos equipamento:',1,2,1),(132,8,15,'Assistência Técnica:',1,2,1),(133,8,15,'Elaboração dos projetos de montagem:',1,2,1),(134,8,15,'Limpeza/danos/furtos do material:',1,2,1),(135,8,15,'Medição e condições de pagamento:',1,2,1),(136,8,15,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(137,8,15,'Indenização:',1,2,1),(138,8,15,'Distância do Empreendimento em KM:',1,2,1),(139,8,15,'Custo adicional para carga e descarga:',1,2,1),(140,9,17,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(141,9,17,'Fornecimento de ART para os serviços?',1,2,1),(142,9,17,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(143,9,17,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(144,9,17,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(145,9,17,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(146,9,17,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(147,9,17,'Transporte de ida e volta dos equipamentos:',1,2,1),(148,9,17,'Cargas, descarga e conferência dos equipamento:',1,2,1),(149,9,17,'Assistência Técnica:',1,2,1),(150,9,17,'Elaboração dos projetos de montagem:',1,2,1),(151,9,17,'Limpeza/danos/furtos do material:',1,2,1),(152,9,17,'Medição e condições de pagamento:',1,2,1),(153,9,17,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(154,9,17,'Indenização:',1,2,1),(155,9,17,'Distância do Empreendimento em KM:',1,2,1),(156,9,17,'Custo adicional para carga e descarga:',1,2,1),(157,10,19,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(158,10,19,'Fornecimento de ART para os serviços?',1,2,1),(159,10,19,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(160,10,19,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(161,10,19,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(162,10,19,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(163,10,19,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(164,10,19,'Transporte de ida e volta dos equipamentos:',1,2,1),(165,10,19,'Cargas, descarga e conferência dos equipamento:',1,2,1),(166,10,19,'Assistência Técnica:',1,2,1),(167,10,19,'Elaboração dos projetos de montagem:',1,2,1),(168,10,19,'Limpeza/danos/furtos do material:',1,2,1),(169,10,19,'Medição e condições de pagamento:',1,2,1),(170,10,19,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(171,10,19,'Indenização:',1,2,1),(172,10,19,'Distância do Empreendimento em KM:',1,2,1),(173,10,19,'Custo adicional para carga e descarga:',1,2,1),(174,11,21,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(175,11,21,'Fornecimento de ART para os serviços?',1,2,1),(176,11,21,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(177,11,21,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(178,11,21,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(179,11,21,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(180,11,21,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(181,11,21,'Transporte de ida e volta dos equipamentos:',1,2,1),(182,11,21,'Cargas, descarga e conferência dos equipamento:',1,2,1),(183,11,21,'Assistência Técnica:',1,2,1),(184,11,21,'Elaboração dos projetos de montagem:',1,2,1),(185,11,21,'Limpeza/danos/furtos do material:',1,2,1),(186,11,21,'Medição e condições de pagamento:',1,2,1),(187,11,21,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(188,11,21,'Indenização:',1,2,1),(189,11,21,'Distância do Empreendimento em KM:',1,2,1),(190,11,21,'Custo adicional para carga e descarga:',1,2,1),(191,12,23,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(192,12,23,'Fornecimento de ART para os serviços?',1,2,1),(193,12,23,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(194,12,23,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(195,12,23,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(196,12,23,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(197,12,23,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(198,12,23,'Transporte de ida e volta dos equipamentos:',1,2,1),(199,12,23,'Cargas, descarga e conferência dos equipamento:',1,2,1),(200,12,23,'Assistência Técnica:',1,2,1),(201,12,23,'Elaboração dos projetos de montagem:',1,2,1),(202,12,23,'Limpeza/danos/furtos do material:',1,2,1),(203,12,23,'Medição e condições de pagamento:',1,2,1),(204,12,23,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(205,12,23,'Indenização:',1,2,1),(206,12,23,'Distância do Empreendimento em KM:',1,2,1),(207,12,23,'Custo adicional para carga e descarga:',1,2,1),(208,13,25,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(209,13,25,'Fornecimento de ART para os serviços?',1,2,1),(210,13,25,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(211,13,25,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(212,13,25,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(213,13,25,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(214,13,25,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(215,13,25,'Transporte de ida e volta dos equipamentos:',1,2,1),(216,13,25,'Cargas, descarga e conferência dos equipamento:',1,2,1),(217,13,25,'Assistência Técnica:',1,2,1),(218,13,25,'Elaboração dos projetos de montagem:',1,2,1),(219,13,25,'Limpeza/danos/furtos do material:',1,2,1),(220,13,25,'Medição e condições de pagamento:',1,2,1),(221,13,25,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(222,13,25,'Indenização:',1,2,1),(223,13,25,'Distância do Empreendimento em KM:',1,2,1),(224,13,25,'Custo adicional para carga e descarga:',1,2,1),(225,14,27,'Levantamento de quantitativo feito pelo PROPONENTE utilizando projetos?',1,2,1),(226,14,27,'Fornecimento de ART para os serviços?',1,2,1),(227,14,27,'Assinou e enviou carta convite junto com a proposta?',1,2,1),(228,14,27,'Ciente do fornecimento de PPRA, PCMSO, Exames médicos específicos, Treinamento NR-35?',1,2,1),(229,14,27,'Considerou fornecimento de refeições, transporte ou alojamento para todos os funcionários?',1,2,1),(230,14,27,'Considerou supervisão de encarregado em período integral na obra?',1,2,1),(231,14,27,'Todos os impostos estão inclusos nos preços (ISS, INSS)?',1,2,1),(232,14,27,'Transporte de ida e volta dos equipamentos:',1,2,1),(233,14,27,'Cargas, descarga e conferência dos equipamento:',1,2,1),(234,14,27,'Assistência Técnica:',1,2,1),(235,14,27,'Elaboração dos projetos de montagem:',1,2,1),(236,14,27,'Limpeza/danos/furtos do material:',1,2,1),(237,14,27,'Medição e condições de pagamento:',1,2,1),(238,14,27,'Índice de correção ou reajuste (ANUALMENTE) incluso?',1,2,1),(239,14,27,'Indenização:',1,2,1),(240,14,27,'Distância do Empreendimento em KM:',1,2,1),(241,14,27,'Custo adicional para carga e descarga:',1,2,1);
/*!40000 ALTER TABLE `pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissoes_de_comprador`
--

DROP TABLE IF EXISTS `permissoes_de_comprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissoes_de_comprador` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `email` tinyint(1) DEFAULT NULL,
  `importar_fornecedores` tinyint(1) DEFAULT NULL,
  `questionario` tinyint(1) DEFAULT NULL,
  `rotinas` tinyint(1) DEFAULT NULL,
  `tipos_de_documentos` tinyint(1) DEFAULT NULL,
  `preferencias` tinyint(1) DEFAULT NULL,
  `armazenamento` tinyint(1) DEFAULT NULL,
  `categorias_e_subcategorias` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `permissoes_de_comprador_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissoes_de_comprador`
--

LOCK TABLES `permissoes_de_comprador` WRITE;
/*!40000 ALTER TABLE `permissoes_de_comprador` DISABLE KEYS */;
INSERT INTO `permissoes_de_comprador` VALUES (1,11,1,1,1,1,1,1,0,1),(2,1,1,1,1,1,1,1,0,1);
/*!40000 ALTER TABLE `permissoes_de_comprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferencia`
--

DROP TABLE IF EXISTS `preferencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferencia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `fornecedor_acesso_menu_financeiro` tinyint(1) DEFAULT NULL,
  `fornecedor_acesso_cotacoes` tinyint(1) DEFAULT NULL,
  `fornecedor_acesso_cotacoes_gerais` tinyint(1) DEFAULT NULL,
  `fornecedor_acesso_anexo` tinyint(1) DEFAULT NULL,
  `fornecedor_acesso_contratos` tinyint(1) DEFAULT NULL,
  `fornecedor_acesso_documentos` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `ix_preferencia_id` (`id`),
  CONSTRAINT `preferencia_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferencia`
--

LOCK TABLES `preferencia` WRITE;
/*!40000 ALTER TABLE `preferencia` DISABLE KEYS */;
INSERT INTO `preferencia` VALUES (1,11,1,1,1,1,1,1),(2,1,1,1,1,1,1,1);
/*!40000 ALTER TABLE `preferencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questionario`
--

DROP TABLE IF EXISTS `questionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questionario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `local_id` bigint DEFAULT NULL,
  `descricao` text,
  `ativo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `local_id` (`local_id`),
  CONSTRAINT `questionario_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `questionario_ibfk_2` FOREIGN KEY (`local_id`) REFERENCES `local_de_questionario` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questionario`
--

LOCK TABLES `questionario` WRITE;
/*!40000 ALTER TABLE `questionario` DISABLE KEYS */;
INSERT INTO `questionario` VALUES (1,1,1,'Questionário sobre a cotação',1),(2,1,2,'Questionário sobre a homologacao',1),(11,6,1,'Questionário sobre a cotação',1),(12,6,2,'Questionário sobre a homologacao',1),(13,7,1,'Questionário sobre a cotação',1),(14,7,2,'Questionário sobre a homologacao',1),(15,8,1,'Questionário sobre a cotação',1),(16,8,2,'Questionário sobre a homologacao',1),(17,9,1,'Questionário sobre a cotação',1),(18,9,2,'Questionário sobre a homologacao',1),(19,10,1,'Questionário sobre a cotação',1),(20,10,2,'Questionário sobre a homologacao',1),(21,11,1,'Questionário sobre a cotação',1),(22,11,2,'Questionário sobre a homologacao',1),(23,12,1,'Questionário sobre a cotação',1),(24,12,2,'Questionário sobre a homologacao',1),(25,13,1,'Questionário sobre a cotação',1),(26,13,2,'Questionário sobre a homologacao',1),(27,14,1,'Questionário sobre a cotação',1),(28,14,2,'Questionário sobre a homologacao',1);
/*!40000 ALTER TABLE `questionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta_cotacao`
--

DROP TABLE IF EXISTS `resposta_cotacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta_cotacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `pergunta_id` bigint DEFAULT NULL,
  `cotacao_id` bigint DEFAULT NULL,
  `texto` text,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `pergunta_id` (`pergunta_id`),
  KEY `cotacao_id` (`cotacao_id`),
  CONSTRAINT `resposta_cotacao_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resposta_cotacao_ibfk_2` FOREIGN KEY (`pergunta_id`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resposta_cotacao_ibfk_3` FOREIGN KEY (`cotacao_id`) REFERENCES `cotacao` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta_cotacao`
--

LOCK TABLES `resposta_cotacao` WRITE;
/*!40000 ALTER TABLE `resposta_cotacao` DISABLE KEYS */;
INSERT INTO `resposta_cotacao` VALUES (1,1,1,3,'Sim'),(2,1,12,3,'Sim'),(3,1,14,3,'Não'),(4,1,15,3,'Sim'),(5,1,17,3,'Sim'),(6,1,1,4,'Sim'),(7,1,12,4,'Sim'),(8,1,13,4,'Sim'),(9,1,14,4,'Sim'),(10,1,15,4,'Sim'),(11,1,17,4,'Sim');
/*!40000 ALTER TABLE `resposta_cotacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resposta_homologacao`
--

DROP TABLE IF EXISTS `resposta_homologacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resposta_homologacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `pergunta_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `texto` text,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `pergunta_id` (`pergunta_id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  CONSTRAINT `resposta_homologacao_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resposta_homologacao_ibfk_2` FOREIGN KEY (`pergunta_id`) REFERENCES `pergunta` (`id`) ON DELETE CASCADE,
  CONSTRAINT `resposta_homologacao_ibfk_3` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resposta_homologacao`
--

LOCK TABLES `resposta_homologacao` WRITE;
/*!40000 ALTER TABLE `resposta_homologacao` DISABLE KEYS */;
INSERT INTO `resposta_homologacao` VALUES (1,1,18,2,'De 1 à  2 anos '),(2,1,19,2,'Sim'),(3,1,20,2,'Boleto bancário'),(4,1,20,2,'Transferência bancária'),(5,1,20,2,'Cheque'),(6,1,20,2,'Pix'),(7,1,18,3,'De 5 à 8 anos '),(8,1,19,3,'Sim'),(9,1,20,3,'Boleto bancário'),(10,1,20,3,'Transferência bancária'),(11,1,20,3,'Cheque'),(12,1,20,3,'Pix'),(13,1,18,4,'De 2 à 5 anos'),(14,1,19,4,'Sim'),(15,1,20,4,'Boleto bancário'),(16,1,20,4,'Transferência bancária'),(17,1,20,4,'Pix'),(18,1,18,7,'De 5 à 8 anos '),(19,1,19,7,'Sim'),(20,1,20,7,'Boleto bancário'),(21,1,18,8,'De 1 à  2 anos '),(22,1,19,8,'Sim'),(23,1,20,8,'Boleto bancário'),(24,1,20,8,'Transferência bancária'),(25,1,20,8,'Pix'),(26,1,18,9,'De 2 à 5 anos'),(27,1,19,9,'Sim'),(28,1,20,9,'Boleto bancário'),(29,1,20,9,'Transferência bancária'),(30,1,20,9,'Pix');
/*!40000 ALTER TABLE `resposta_homologacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rotina_negociacao`
--

DROP TABLE IF EXISTS `rotina_negociacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rotina_negociacao` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `empresa_id` bigint DEFAULT NULL,
  `dias` int DEFAULT NULL,
  `texto` text,
  `subject` text,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  CONSTRAINT `rotina_negociacao_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rotina_negociacao`
--

LOCK TABLES `rotina_negociacao` WRITE;
/*!40000 ALTER TABLE `rotina_negociacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `rotina_negociacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `smtp_config`
--

DROP TABLE IF EXISTS `smtp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `smtp_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `senha` text,
  `porta` int DEFAULT NULL,
  `servidor` varchar(50) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `tls` tinyint(1) DEFAULT NULL,
  `ssl` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `ix_smtp_config_id` (`id`),
  CONSTRAINT `smtp_config_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `smtp_config`
--

LOCK TABLES `smtp_config` WRITE;
/*!40000 ALTER TABLE `smtp_config` DISABLE KEYS */;
INSERT INTO `smtp_config` VALUES (1,'bi@itemize.com.br','gAAAAABkfgXdoDzDfM9t5Q1By8mRMSttzWtph4JaUtV_4vbht9Xi-iFHsBd6EEaBHm_vfKywPHj45mCnTPR1QF8xZUzeak_PRQ==',587,'smtp.office365.com',1,1,0),(2,'bi@itemize.com.br','gAAAAABkgKbL-Br8X-etVkSS9VNzXnruACWyP3VLy9t8vKbjImKbntQywOZIEVLn52ZFx2FreCpfZqc3hWWz47ObS_YrOLlaAg==',587,'smtp.office365.com',6,1,0),(3,'bi@itemize.com.br','gAAAAABkgK3t09mpys9f6Ca20rg3t7zVS2NdFcKQxYaEPl3gDYqwRRDKOIT5d-tez5Q8hKz5oReWtqqcCwxurJUC3tAL3T5VWA==',587,'smtp.office365.com',7,1,0),(4,'bi@itemize.com.br','gAAAAABkgyPddjhaBWL5B70CwEVpMHeEZQNUqFuOhgVjX1bMQtCIIP4a2D9tZ1qD-jt4wVUUVAS6WJOn1VxFBg3b_iPfEjmEWQ==',587,'smtp.office365.com',8,1,0),(5,'bi@itemize.com.br','gAAAAABkhx3-ocu3Nxiveus1mt0nRHLG_OWnXp-38shlK-h26nuD6yltKQFAvKub4QXWqPVz9XarYeMrBlF4K9287SpjftApCA==',587,'smtp.office365.com',9,1,0),(6,'bi@itemize.com.br','gAAAAABkiHu4pLs7bXemsSuPWHEyPmacr2ybMDYrvedG2DocDQadWCEwSj56KDuQ5uPsvbOSWSD9pCHOHu-q5PmMKnXQrpIYjw==',587,'smtp.office365.com',10,1,0),(7,'bi@itemize.com.br','gAAAAABkijDiJMgZAl2zBnjWfT9REBbJdlRKZJK53kWA751_8GFmmu-yr5TP9ZNzkue7YzQsPyZ8K70BB5sY_A5xR7TVOj9Iqw==',587,'smtp.office365.com',12,1,0),(8,'informativo@bancodeprojetos.net','gAAAAABkmznNtoEiQcqTXL7Eq6iXI9Wbz-CY5eYExwhbW8vjDFoLH01kbfIj-HWOveyTRyP4jaFnYwRFotZIfe8H7xxLOhQfNg==',587,'smtp.office365.com',11,1,0),(9,'bi@itemize.com.br','gAAAAABklEt8qtV0dNEuVDdcheGLgRXC72IHY80hG6CC2ZovwAOXg-40uKHIqD_NlKry_08loGd5UuLfCv--G0jiZiOJ0c3B9Q==',587,'smtp.office365.com',14,1,0);
/*!40000 ALTER TABLE `smtp_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategoria_de_fornecedor`
--

DROP TABLE IF EXISTS `subcategoria_de_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategoria_de_fornecedor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `categoria_id` bigint NOT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `ix_subcategoria_de_fornecedor_id` (`id`),
  CONSTRAINT `subcategoria_de_fornecedor_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE,
  CONSTRAINT `subcategoria_de_fornecedor_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_de_fornecedor` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=645 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategoria_de_fornecedor`
--

LOCK TABLES `subcategoria_de_fornecedor` WRITE;
/*!40000 ALTER TABLE `subcategoria_de_fornecedor` DISABLE KEYS */;
INSERT INTO `subcategoria_de_fornecedor` VALUES (1,'Movimento de terra',1,1,'2023-06-05 15:57:13'),(2,'Rebaixamento de lençol freático',1,1,'2023-06-05 15:57:13'),(3,'Fundações',1,2,'2023-06-05 15:57:13'),(4,'Contenções',1,2,'2023-06-05 15:57:13'),(5,'Outros Serviços de Infraestrutura',1,2,'2023-06-05 15:57:13'),(6,'Redução solução de contenção',1,2,'2023-06-05 15:57:14'),(7,'Supraestrutura convencional',1,3,'2023-06-05 15:57:14'),(8,'Supraestrutura - alvenaria estrutural',1,3,'2023-06-05 15:57:14'),(9,'Supraestrutura - outros',1,3,'2023-06-05 15:57:14'),(10,'Alvenarias',1,4,'2023-06-05 15:57:14'),(11,'Painéis',1,4,'2023-06-05 15:57:14'),(12,'Divisórias',1,4,'2023-06-05 15:57:14'),(13,'Impermeabilizações',1,5,'2023-06-05 15:57:14'),(14,'Serviços de tratamentos',1,5,'2023-06-05 15:57:14'),(15,'Coberturas',1,5,'2023-06-05 15:57:15'),(16,'Revestimentos em gesso',1,6,'2023-06-05 15:57:15'),(17,'Revest. de Paredes com pedras naturais',1,6,'2023-06-05 15:57:15'),(18,'Revestimento acústico',1,6,'2023-06-05 15:57:15'),(19,'Revestimentos cerâmicos',1,7,'2023-06-05 15:57:15'),(20,'Regularizações de estrutura',1,7,'2023-06-05 15:57:15'),(21,'Pisos cerâmicos',1,7,'2023-06-05 15:57:15'),(22,'Revestimento porcelanato',1,7,'2023-06-05 15:57:15'),(23,'Piso porcelanato',1,7,'2023-06-05 15:57:15'),(24,'Louças',1,8,'2023-06-05 15:57:15'),(25,'Metais',1,8,'2023-06-05 15:57:15'),(26,'Acessórios',1,8,'2023-06-05 15:57:15'),(27,'Instalações prediais',1,9,'2023-06-05 15:57:15'),(28,'Instalações especiais',1,9,'2023-06-05 15:57:15'),(29,'Outras instalações especiais',1,9,'2023-06-05 15:57:15'),(30,'Equipamentos especiais',1,10,'2023-06-05 15:57:15'),(31,'Mobiliários especiais',1,10,'2023-06-05 15:57:15'),(32,'Infraestrutura do Condomínio',1,11,'2023-06-05 15:57:15'),(33,'Pavimentações',1,11,'2023-06-05 15:57:15'),(34,'Edificações externas',1,11,'2023-06-05 15:57:15'),(35,'Fornec. e colocação de mármore e granito',1,12,'2023-06-05 15:57:15'),(36,'Elevadores',1,13,'2023-06-05 15:57:15'),(37,'Revestimentos internos',1,14,'2023-06-05 15:57:15'),(38,'Revestimentos externos',1,14,'2023-06-05 15:57:16'),(39,'Fornec. e inst. de esquadrias de madeira',1,15,'2023-06-05 15:57:16'),(40,'Fornecimento de vidros',1,16,'2023-06-05 15:57:16'),(41,'Pisos especiais',1,17,'2023-06-05 15:57:16'),(42,'Serviços de pintura',1,18,'2023-06-05 15:57:16'),(43,'Forros',1,19,'2023-06-05 15:57:16'),(44,'Limpeza final',1,20,'2023-06-05 15:57:16'),(45,'Assistência Técnica',1,21,'2023-06-05 15:57:16'),(46,'outros',1,22,'2023-06-05 15:57:16'),(231,'Movimento de terra',6,111,'2023-06-07 15:46:15'),(232,'Rebaixamento de lençol freático',6,111,'2023-06-07 15:46:15'),(233,'Fundações',6,112,'2023-06-07 15:46:16'),(234,'Contenções',6,112,'2023-06-07 15:46:16'),(235,'Outros Serviços de Infraestrutura',6,112,'2023-06-07 15:46:16'),(236,'Redução solução de contenção',6,112,'2023-06-07 15:46:16'),(237,'Supraestrutura convencional',6,113,'2023-06-07 15:46:16'),(238,'Supraestrutura - alvenaria estrutural',6,113,'2023-06-07 15:46:16'),(239,'Supraestrutura - outros',6,113,'2023-06-07 15:46:16'),(240,'Alvenarias',6,114,'2023-06-07 15:46:16'),(241,'Painéis',6,114,'2023-06-07 15:46:16'),(242,'Divisórias',6,114,'2023-06-07 15:46:16'),(243,'Impermeabilizações',6,115,'2023-06-07 15:46:16'),(244,'Serviços de tratamentos',6,115,'2023-06-07 15:46:16'),(245,'Coberturas',6,115,'2023-06-07 15:46:16'),(246,'Revestimentos em gesso',6,116,'2023-06-07 15:46:16'),(247,'Revest. de Paredes com pedras naturais',6,116,'2023-06-07 15:46:16'),(248,'Revestimento acústico',6,116,'2023-06-07 15:46:16'),(249,'Revestimentos cerâmicos',6,117,'2023-06-07 15:46:16'),(250,'Regularizações de estrutura',6,117,'2023-06-07 15:46:16'),(251,'Pisos cerâmicos',6,117,'2023-06-07 15:46:16'),(252,'Revestimento porcelanato',6,117,'2023-06-07 15:46:16'),(253,'Piso porcelanato',6,117,'2023-06-07 15:46:16'),(254,'Louças',6,118,'2023-06-07 15:46:16'),(255,'Metais',6,118,'2023-06-07 15:46:16'),(256,'Acessórios',6,118,'2023-06-07 15:46:16'),(257,'Instalações prediais',6,119,'2023-06-07 15:46:16'),(258,'Instalações especiais',6,119,'2023-06-07 15:46:16'),(259,'Outras instalações especiais',6,119,'2023-06-07 15:46:16'),(260,'Equipamentos especiais',6,120,'2023-06-07 15:46:16'),(261,'Mobiliários especiais',6,120,'2023-06-07 15:46:16'),(262,'Infraestrutura do Condomínio',6,121,'2023-06-07 15:46:16'),(263,'Pavimentações',6,121,'2023-06-07 15:46:16'),(264,'Edificações externas',6,121,'2023-06-07 15:46:16'),(265,'Fornec. e colocação de mármore e granito',6,122,'2023-06-07 15:46:16'),(266,'Elevadores',6,123,'2023-06-07 15:46:17'),(267,'Revestimentos internos',6,124,'2023-06-07 15:46:17'),(268,'Revestimentos externos',6,124,'2023-06-07 15:46:17'),(269,'Fornec. e inst. de esquadrias de madeira',6,125,'2023-06-07 15:46:17'),(270,'Fornecimento de vidros',6,126,'2023-06-07 15:46:17'),(271,'Pisos especiais',6,127,'2023-06-07 15:46:17'),(272,'Serviços de pintura',6,128,'2023-06-07 15:46:17'),(273,'Forros',6,129,'2023-06-07 15:46:17'),(274,'Limpeza final',6,130,'2023-06-07 15:46:17'),(275,'Assistência Técnica',6,131,'2023-06-07 15:46:17'),(276,'outros',6,132,'2023-06-07 15:46:17'),(277,'Movimento de terra',7,133,'2023-06-07 16:12:07'),(278,'Rebaixamento de lençol freático',7,133,'2023-06-07 16:12:07'),(279,'Fundações',7,134,'2023-06-07 16:12:07'),(280,'Contenções',7,134,'2023-06-07 16:12:07'),(281,'Outros Serviços de Infraestrutura',7,134,'2023-06-07 16:12:07'),(282,'Redução solução de contenção',7,134,'2023-06-07 16:12:07'),(283,'Supraestrutura convencional',7,135,'2023-06-07 16:12:07'),(284,'Supraestrutura - alvenaria estrutural',7,135,'2023-06-07 16:12:07'),(285,'Supraestrutura - outros',7,135,'2023-06-07 16:12:07'),(286,'Alvenarias',7,136,'2023-06-07 16:12:07'),(287,'Painéis',7,136,'2023-06-07 16:12:07'),(288,'Divisórias',7,136,'2023-06-07 16:12:07'),(289,'Impermeabilizações',7,137,'2023-06-07 16:12:08'),(290,'Serviços de tratamentos',7,137,'2023-06-07 16:12:08'),(291,'Coberturas',7,137,'2023-06-07 16:12:08'),(292,'Revestimentos em gesso',7,138,'2023-06-07 16:12:08'),(293,'Revest. de Paredes com pedras naturais',7,138,'2023-06-07 16:12:08'),(294,'Revestimento acústico',7,138,'2023-06-07 16:12:08'),(295,'Revestimentos cerâmicos',7,139,'2023-06-07 16:12:08'),(296,'Regularizações de estrutura',7,139,'2023-06-07 16:12:08'),(297,'Pisos cerâmicos',7,139,'2023-06-07 16:12:08'),(298,'Revestimento porcelanato',7,139,'2023-06-07 16:12:08'),(299,'Piso porcelanato',7,139,'2023-06-07 16:12:08'),(300,'Louças',7,140,'2023-06-07 16:12:08'),(301,'Metais',7,140,'2023-06-07 16:12:08'),(302,'Acessórios',7,140,'2023-06-07 16:12:08'),(303,'Instalações prediais',7,141,'2023-06-07 16:12:08'),(304,'Instalações especiais',7,141,'2023-06-07 16:12:08'),(305,'Outras instalações especiais',7,141,'2023-06-07 16:12:08'),(306,'Equipamentos especiais',7,142,'2023-06-07 16:12:08'),(307,'Mobiliários especiais',7,142,'2023-06-07 16:12:08'),(308,'Infraestrutura do Condomínio',7,143,'2023-06-07 16:12:08'),(309,'Pavimentações',7,143,'2023-06-07 16:12:08'),(310,'Edificações externas',7,143,'2023-06-07 16:12:08'),(311,'Fornec. e colocação de mármore e granito',7,144,'2023-06-07 16:12:08'),(312,'Elevadores',7,145,'2023-06-07 16:12:08'),(313,'Revestimentos internos',7,146,'2023-06-07 16:12:08'),(314,'Revestimentos externos',7,146,'2023-06-07 16:12:08'),(315,'Fornec. e inst. de esquadrias de madeira',7,147,'2023-06-07 16:12:08'),(316,'Fornecimento de vidros',7,148,'2023-06-07 16:12:08'),(317,'Pisos especiais',7,149,'2023-06-07 16:12:08'),(318,'Serviços de pintura',7,150,'2023-06-07 16:12:08'),(319,'Forros',7,151,'2023-06-07 16:12:08'),(320,'Limpeza final',7,152,'2023-06-07 16:12:09'),(321,'Assistência Técnica',7,153,'2023-06-07 16:12:09'),(322,'outros',7,154,'2023-06-07 16:12:09'),(323,'Movimento de terra',8,155,'2023-06-09 12:40:35'),(324,'Rebaixamento de lençol freático',8,155,'2023-06-09 12:40:35'),(325,'Fundações',8,156,'2023-06-09 12:40:35'),(326,'Contenções',8,156,'2023-06-09 12:40:35'),(327,'Outros Serviços de Infraestrutura',8,156,'2023-06-09 12:40:35'),(328,'Redução solução de contenção',8,156,'2023-06-09 12:40:35'),(329,'Supraestrutura convencional',8,157,'2023-06-09 12:40:35'),(330,'Supraestrutura - alvenaria estrutural',8,157,'2023-06-09 12:40:35'),(331,'Supraestrutura - outros',8,157,'2023-06-09 12:40:35'),(332,'Alvenarias',8,158,'2023-06-09 12:40:35'),(333,'Painéis',8,158,'2023-06-09 12:40:35'),(334,'Divisórias',8,158,'2023-06-09 12:40:35'),(335,'Impermeabilizações',8,159,'2023-06-09 12:40:35'),(336,'Serviços de tratamentos',8,159,'2023-06-09 12:40:36'),(337,'Coberturas',8,159,'2023-06-09 12:40:36'),(338,'Revestimentos em gesso',8,160,'2023-06-09 12:40:36'),(339,'Revest. de Paredes com pedras naturais',8,160,'2023-06-09 12:40:36'),(340,'Revestimento acústico',8,160,'2023-06-09 12:40:36'),(341,'Revestimentos cerâmicos',8,161,'2023-06-09 12:40:36'),(342,'Regularizações de estrutura',8,161,'2023-06-09 12:40:36'),(343,'Pisos cerâmicos',8,161,'2023-06-09 12:40:36'),(344,'Revestimento porcelanato',8,161,'2023-06-09 12:40:36'),(345,'Piso porcelanato',8,161,'2023-06-09 12:40:36'),(346,'Louças',8,162,'2023-06-09 12:40:36'),(347,'Metais',8,162,'2023-06-09 12:40:36'),(348,'Acessórios',8,162,'2023-06-09 12:40:36'),(349,'Instalações prediais',8,163,'2023-06-09 12:40:36'),(350,'Instalações especiais',8,163,'2023-06-09 12:40:36'),(351,'Outras instalações especiais',8,163,'2023-06-09 12:40:36'),(352,'Equipamentos especiais',8,164,'2023-06-09 12:40:36'),(353,'Mobiliários especiais',8,164,'2023-06-09 12:40:36'),(354,'Infraestrutura do Condomínio',8,165,'2023-06-09 12:40:36'),(355,'Pavimentações',8,165,'2023-06-09 12:40:36'),(356,'Edificações externas',8,165,'2023-06-09 12:40:36'),(357,'Fornec. e colocação de mármore e granito',8,166,'2023-06-09 12:40:36'),(358,'Elevadores',8,167,'2023-06-09 12:40:36'),(359,'Revestimentos internos',8,168,'2023-06-09 12:40:36'),(360,'Revestimentos externos',8,168,'2023-06-09 12:40:36'),(361,'Fornec. e inst. de esquadrias de madeira',8,169,'2023-06-09 12:40:36'),(362,'Fornecimento de vidros',8,170,'2023-06-09 12:40:36'),(363,'Pisos especiais',8,171,'2023-06-09 12:40:36'),(364,'Serviços de pintura',8,172,'2023-06-09 12:40:36'),(365,'Forros',8,173,'2023-06-09 12:40:36'),(366,'Limpeza final',8,174,'2023-06-09 12:40:36'),(367,'Assistência Técnica',8,175,'2023-06-09 12:40:36'),(368,'outros',8,176,'2023-06-09 12:40:36'),(369,'Movimento de terra',9,177,'2023-06-12 12:51:20'),(370,'Rebaixamento de lençol freático',9,177,'2023-06-12 12:51:20'),(371,'Fundações',9,178,'2023-06-12 12:51:20'),(372,'Contenções',9,178,'2023-06-12 12:51:20'),(373,'Outros Serviços de Infraestrutura',9,178,'2023-06-12 12:51:20'),(374,'Redução solução de contenção',9,178,'2023-06-12 12:51:20'),(375,'Supraestrutura convencional',9,179,'2023-06-12 12:51:20'),(376,'Supraestrutura - alvenaria estrutural',9,179,'2023-06-12 12:51:20'),(377,'Supraestrutura - outros',9,179,'2023-06-12 12:51:20'),(378,'Alvenarias',9,180,'2023-06-12 12:51:20'),(379,'Painéis',9,180,'2023-06-12 12:51:20'),(380,'Divisórias',9,180,'2023-06-12 12:51:20'),(381,'Impermeabilizações',9,181,'2023-06-12 12:51:20'),(382,'Serviços de tratamentos',9,181,'2023-06-12 12:51:20'),(383,'Coberturas',9,181,'2023-06-12 12:51:20'),(384,'Revestimentos em gesso',9,182,'2023-06-12 12:51:20'),(385,'Revest. de Paredes com pedras naturais',9,182,'2023-06-12 12:51:20'),(386,'Revestimento acústico',9,182,'2023-06-12 12:51:20'),(387,'Revestimentos cerâmicos',9,183,'2023-06-12 12:51:20'),(388,'Regularizações de estrutura',9,183,'2023-06-12 12:51:20'),(389,'Pisos cerâmicos',9,183,'2023-06-12 12:51:20'),(390,'Revestimento porcelanato',9,183,'2023-06-12 12:51:20'),(391,'Piso porcelanato',9,183,'2023-06-12 12:51:20'),(392,'Louças',9,184,'2023-06-12 12:51:20'),(393,'Metais',9,184,'2023-06-12 12:51:20'),(394,'Acessórios',9,184,'2023-06-12 12:51:20'),(395,'Instalações prediais',9,185,'2023-06-12 12:51:20'),(396,'Instalações especiais',9,185,'2023-06-12 12:51:20'),(397,'Outras instalações especiais',9,185,'2023-06-12 12:51:20'),(398,'Equipamentos especiais',9,186,'2023-06-12 12:51:20'),(399,'Mobiliários especiais',9,186,'2023-06-12 12:51:20'),(400,'Infraestrutura do Condomínio',9,187,'2023-06-12 12:51:20'),(401,'Pavimentações',9,187,'2023-06-12 12:51:20'),(402,'Edificações externas',9,187,'2023-06-12 12:51:20'),(403,'Fornec. e colocação de mármore e granito',9,188,'2023-06-12 12:51:20'),(404,'Elevadores',9,189,'2023-06-12 12:51:20'),(405,'Revestimentos internos',9,190,'2023-06-12 12:51:21'),(406,'Revestimentos externos',9,190,'2023-06-12 12:51:21'),(407,'Fornec. e inst. de esquadrias de madeira',9,191,'2023-06-12 12:51:21'),(408,'Fornecimento de vidros',9,192,'2023-06-12 12:51:21'),(409,'Pisos especiais',9,193,'2023-06-12 12:51:21'),(410,'Serviços de pintura',9,194,'2023-06-12 12:51:21'),(411,'Forros',9,195,'2023-06-12 12:51:21'),(412,'Limpeza final',9,196,'2023-06-12 12:51:21'),(413,'Assistência Técnica',9,197,'2023-06-12 12:51:21'),(414,'outros',9,198,'2023-06-12 12:51:21'),(415,'Movimento de terra',10,199,'2023-06-13 13:44:17'),(416,'Rebaixamento de lençol freático',10,199,'2023-06-13 13:44:17'),(417,'Fundações',10,200,'2023-06-13 13:44:17'),(418,'Contenções',10,200,'2023-06-13 13:44:17'),(419,'Outros Serviços de Infraestrutura',10,200,'2023-06-13 13:44:17'),(420,'Redução solução de contenção',10,200,'2023-06-13 13:44:17'),(421,'Supraestrutura convencional',10,201,'2023-06-13 13:44:17'),(422,'Supraestrutura - alvenaria estrutural',10,201,'2023-06-13 13:44:17'),(423,'Supraestrutura - outros',10,201,'2023-06-13 13:44:17'),(424,'Alvenarias',10,202,'2023-06-13 13:44:17'),(425,'Painéis',10,202,'2023-06-13 13:44:17'),(426,'Divisórias',10,202,'2023-06-13 13:44:17'),(427,'Impermeabilizações',10,203,'2023-06-13 13:44:17'),(428,'Serviços de tratamentos',10,203,'2023-06-13 13:44:17'),(429,'Coberturas',10,203,'2023-06-13 13:44:17'),(430,'Revestimentos em gesso',10,204,'2023-06-13 13:44:17'),(431,'Revest. de Paredes com pedras naturais',10,204,'2023-06-13 13:44:17'),(432,'Revestimento acústico',10,204,'2023-06-13 13:44:17'),(433,'Revestimentos cerâmicos',10,205,'2023-06-13 13:44:17'),(434,'Regularizações de estrutura',10,205,'2023-06-13 13:44:17'),(435,'Pisos cerâmicos',10,205,'2023-06-13 13:44:17'),(436,'Revestimento porcelanato',10,205,'2023-06-13 13:44:17'),(437,'Piso porcelanato',10,205,'2023-06-13 13:44:17'),(438,'Louças',10,206,'2023-06-13 13:44:17'),(439,'Metais',10,206,'2023-06-13 13:44:17'),(440,'Acessórios',10,206,'2023-06-13 13:44:17'),(441,'Instalações prediais',10,207,'2023-06-13 13:44:17'),(442,'Instalações especiais',10,207,'2023-06-13 13:44:18'),(443,'Outras instalações especiais',10,207,'2023-06-13 13:44:18'),(444,'Equipamentos especiais',10,208,'2023-06-13 13:44:18'),(445,'Mobiliários especiais',10,208,'2023-06-13 13:44:18'),(446,'Infraestrutura do Condomínio',10,209,'2023-06-13 13:44:18'),(447,'Pavimentações',10,209,'2023-06-13 13:44:18'),(448,'Edificações externas',10,209,'2023-06-13 13:44:18'),(449,'Fornec. e colocação de mármore e granito',10,210,'2023-06-13 13:44:18'),(450,'Elevadores',10,211,'2023-06-13 13:44:18'),(451,'Revestimentos internos',10,212,'2023-06-13 13:44:18'),(452,'Revestimentos externos',10,212,'2023-06-13 13:44:18'),(453,'Fornec. e inst. de esquadrias de madeira',10,213,'2023-06-13 13:44:18'),(454,'Fornecimento de vidros',10,214,'2023-06-13 13:44:18'),(455,'Pisos especiais',10,215,'2023-06-13 13:44:18'),(456,'Serviços de pintura',10,216,'2023-06-13 13:44:18'),(457,'Forros',10,217,'2023-06-13 13:44:18'),(458,'Limpeza final',10,218,'2023-06-13 13:44:18'),(459,'Assistência Técnica',10,219,'2023-06-13 13:44:18'),(460,'outros',10,220,'2023-06-13 13:44:18'),(461,'Movimento de terra',11,221,'2023-06-13 18:01:33'),(462,'Rebaixamento de lençol freático',11,221,'2023-06-13 18:01:33'),(463,'Fundações',11,222,'2023-06-13 18:01:33'),(464,'Contenções',11,222,'2023-06-13 18:01:33'),(465,'Outros Serviços de Infraestrutura',11,222,'2023-06-13 18:01:33'),(466,'Redução solução de contenção',11,222,'2023-06-13 18:01:33'),(467,'Supraestrutura convencional',11,223,'2023-06-13 18:01:33'),(468,'Supraestrutura - alvenaria estrutural',11,223,'2023-06-13 18:01:33'),(469,'Supraestrutura - outros',11,223,'2023-06-13 18:01:33'),(470,'Alvenarias',11,224,'2023-06-13 18:01:33'),(471,'Painéis',11,224,'2023-06-13 18:01:33'),(472,'Divisórias',11,224,'2023-06-13 18:01:33'),(473,'Impermeabilizações',11,225,'2023-06-13 18:01:33'),(474,'Serviços de tratamentos',11,225,'2023-06-13 18:01:33'),(475,'Coberturas',11,225,'2023-06-13 18:01:33'),(476,'Revestimentos em gesso',11,226,'2023-06-13 18:01:33'),(477,'Revest. de Paredes com pedras naturais',11,226,'2023-06-13 18:01:33'),(478,'Revestimento acústico',11,226,'2023-06-13 18:01:33'),(479,'Revestimentos cerâmicos',11,227,'2023-06-13 18:01:33'),(480,'Regularizações de estrutura',11,227,'2023-06-13 18:01:33'),(481,'Pisos cerâmicos',11,227,'2023-06-13 18:01:33'),(482,'Revestimento porcelanato',11,227,'2023-06-13 18:01:33'),(483,'Piso porcelanato',11,227,'2023-06-13 18:01:33'),(484,'Louças',11,228,'2023-06-13 18:01:34'),(485,'Metais',11,228,'2023-06-13 18:01:34'),(486,'Acessórios',11,228,'2023-06-13 18:01:34'),(487,'Instalações prediais',11,229,'2023-06-13 18:01:34'),(488,'Instalações especiais',11,229,'2023-06-13 18:01:34'),(489,'Outras instalações especiais',11,229,'2023-06-13 18:01:34'),(490,'Equipamentos especiais',11,230,'2023-06-13 18:01:34'),(491,'Mobiliários especiais',11,230,'2023-06-13 18:01:34'),(492,'Infraestrutura do Condomínio',11,231,'2023-06-13 18:01:34'),(493,'Pavimentações',11,231,'2023-06-13 18:01:34'),(494,'Edificações externas',11,231,'2023-06-13 18:01:34'),(495,'Fornec. e colocação de mármore e granito',11,232,'2023-06-13 18:01:34'),(496,'Elevadores',11,233,'2023-06-13 18:01:34'),(497,'Revestimentos internos',11,234,'2023-06-13 18:01:34'),(498,'Revestimentos externos',11,234,'2023-06-13 18:01:34'),(499,'Fornec. e inst. de esquadrias de madeira',11,235,'2023-06-13 18:01:34'),(500,'Fornecimento de vidros',11,236,'2023-06-13 18:01:34'),(501,'Pisos especiais',11,237,'2023-06-13 18:01:34'),(502,'Serviços de pintura',11,238,'2023-06-13 18:01:34'),(503,'Forros',11,239,'2023-06-13 18:01:34'),(504,'Limpeza final',11,240,'2023-06-13 18:01:34'),(505,'Assistência Técnica',11,241,'2023-06-13 18:01:34'),(506,'outros',11,242,'2023-06-13 18:01:34'),(507,'Movimento de terra',12,243,'2023-06-14 20:06:49'),(508,'Rebaixamento de lençol freático',12,243,'2023-06-14 20:06:49'),(509,'Fundações',12,244,'2023-06-14 20:06:49'),(510,'Contenções',12,244,'2023-06-14 20:06:50'),(511,'Outros Serviços de Infraestrutura',12,244,'2023-06-14 20:06:50'),(512,'Redução solução de contenção',12,244,'2023-06-14 20:06:50'),(513,'Supraestrutura convencional',12,245,'2023-06-14 20:06:50'),(514,'Supraestrutura - alvenaria estrutural',12,245,'2023-06-14 20:06:50'),(515,'Supraestrutura - outros',12,245,'2023-06-14 20:06:50'),(516,'Alvenarias',12,246,'2023-06-14 20:06:50'),(517,'Painéis',12,246,'2023-06-14 20:06:50'),(518,'Divisórias',12,246,'2023-06-14 20:06:50'),(519,'Impermeabilizações',12,247,'2023-06-14 20:06:50'),(520,'Serviços de tratamentos',12,247,'2023-06-14 20:06:50'),(521,'Coberturas',12,247,'2023-06-14 20:06:50'),(522,'Revestimentos em gesso',12,248,'2023-06-14 20:06:50'),(523,'Revest. de Paredes com pedras naturais',12,248,'2023-06-14 20:06:50'),(524,'Revestimento acústico',12,248,'2023-06-14 20:06:50'),(525,'Revestimentos cerâmicos',12,249,'2023-06-14 20:06:50'),(526,'Regularizações de estrutura',12,249,'2023-06-14 20:06:50'),(527,'Pisos cerâmicos',12,249,'2023-06-14 20:06:50'),(528,'Revestimento porcelanato',12,249,'2023-06-14 20:06:50'),(529,'Piso porcelanato',12,249,'2023-06-14 20:06:50'),(530,'Louças',12,250,'2023-06-14 20:06:50'),(531,'Metais',12,250,'2023-06-14 20:06:50'),(532,'Acessórios',12,250,'2023-06-14 20:06:50'),(533,'Instalações prediais',12,251,'2023-06-14 20:06:50'),(534,'Instalações especiais',12,251,'2023-06-14 20:06:50'),(535,'Outras instalações especiais',12,251,'2023-06-14 20:06:50'),(536,'Equipamentos especiais',12,252,'2023-06-14 20:06:50'),(537,'Mobiliários especiais',12,252,'2023-06-14 20:06:50'),(538,'Infraestrutura do Condomínio',12,253,'2023-06-14 20:06:50'),(539,'Pavimentações',12,253,'2023-06-14 20:06:50'),(540,'Edificações externas',12,253,'2023-06-14 20:06:50'),(541,'Fornec. e colocação de mármore e granito',12,254,'2023-06-14 20:06:50'),(542,'Elevadores',12,255,'2023-06-14 20:06:50'),(543,'Revestimentos internos',12,256,'2023-06-14 20:06:50'),(544,'Revestimentos externos',12,256,'2023-06-14 20:06:50'),(545,'Fornec. e inst. de esquadrias de madeira',12,257,'2023-06-14 20:06:50'),(546,'Fornecimento de vidros',12,258,'2023-06-14 20:06:50'),(547,'Pisos especiais',12,259,'2023-06-14 20:06:50'),(548,'Serviços de pintura',12,260,'2023-06-14 20:06:50'),(549,'Forros',12,261,'2023-06-14 20:06:50'),(550,'Limpeza final',12,262,'2023-06-14 20:06:50'),(551,'Assistência Técnica',12,263,'2023-06-14 20:06:51'),(552,'outros',12,264,'2023-06-14 20:06:51'),(553,'Movimento de terra',13,265,'2023-06-22 13:08:37'),(554,'Rebaixamento de lençol freático',13,265,'2023-06-22 13:08:37'),(555,'Fundações',13,266,'2023-06-22 13:08:37'),(556,'Contenções',13,266,'2023-06-22 13:08:37'),(557,'Outros Serviços de Infraestrutura',13,266,'2023-06-22 13:08:37'),(558,'Redução solução de contenção',13,266,'2023-06-22 13:08:37'),(559,'Supraestrutura convencional',13,267,'2023-06-22 13:08:37'),(560,'Supraestrutura - alvenaria estrutural',13,267,'2023-06-22 13:08:37'),(561,'Supraestrutura - outros',13,267,'2023-06-22 13:08:38'),(562,'Alvenarias',13,268,'2023-06-22 13:08:38'),(563,'Painéis',13,268,'2023-06-22 13:08:38'),(564,'Divisórias',13,268,'2023-06-22 13:08:38'),(565,'Impermeabilizações',13,269,'2023-06-22 13:08:38'),(566,'Serviços de tratamentos',13,269,'2023-06-22 13:08:38'),(567,'Coberturas',13,269,'2023-06-22 13:08:38'),(568,'Revestimentos em gesso',13,270,'2023-06-22 13:08:38'),(569,'Revest. de Paredes com pedras naturais',13,270,'2023-06-22 13:08:38'),(570,'Revestimento acústico',13,270,'2023-06-22 13:08:38'),(571,'Revestimentos cerâmicos',13,271,'2023-06-22 13:08:38'),(572,'Regularizações de estrutura',13,271,'2023-06-22 13:08:38'),(573,'Pisos cerâmicos',13,271,'2023-06-22 13:08:38'),(574,'Revestimento porcelanato',13,271,'2023-06-22 13:08:38'),(575,'Piso porcelanato',13,271,'2023-06-22 13:08:38'),(576,'Louças',13,272,'2023-06-22 13:08:38'),(577,'Metais',13,272,'2023-06-22 13:08:38'),(578,'Acessórios',13,272,'2023-06-22 13:08:38'),(579,'Instalações prediais',13,273,'2023-06-22 13:08:38'),(580,'Instalações especiais',13,273,'2023-06-22 13:08:38'),(581,'Outras instalações especiais',13,273,'2023-06-22 13:08:38'),(582,'Equipamentos especiais',13,274,'2023-06-22 13:08:38'),(583,'Mobiliários especiais',13,274,'2023-06-22 13:08:38'),(584,'Infraestrutura do Condomínio',13,275,'2023-06-22 13:08:38'),(585,'Pavimentações',13,275,'2023-06-22 13:08:38'),(586,'Edificações externas',13,275,'2023-06-22 13:08:38'),(587,'Fornec. e colocação de mármore e granito',13,276,'2023-06-22 13:08:38'),(588,'Elevadores',13,277,'2023-06-22 13:08:38'),(589,'Revestimentos internos',13,278,'2023-06-22 13:08:38'),(590,'Revestimentos externos',13,278,'2023-06-22 13:08:38'),(591,'Fornec. e inst. de esquadrias de madeira',13,279,'2023-06-22 13:08:39'),(592,'Fornecimento de vidros',13,280,'2023-06-22 13:08:39'),(593,'Pisos especiais',13,281,'2023-06-22 13:08:39'),(594,'Serviços de pintura',13,282,'2023-06-22 13:08:39'),(595,'Forros',13,283,'2023-06-22 13:08:39'),(596,'Limpeza final',13,284,'2023-06-22 13:08:39'),(597,'Assistência Técnica',13,285,'2023-06-22 13:08:39'),(598,'outros',13,286,'2023-06-22 13:08:39'),(599,'Movimento de terra',14,287,'2023-06-22 13:22:46'),(600,'Rebaixamento de lençol freático',14,287,'2023-06-22 13:22:46'),(601,'Fundações',14,288,'2023-06-22 13:22:46'),(602,'Contenções',14,288,'2023-06-22 13:22:46'),(603,'Outros Serviços de Infraestrutura',14,288,'2023-06-22 13:22:47'),(604,'Redução solução de contenção',14,288,'2023-06-22 13:22:47'),(605,'Supraestrutura convencional',14,289,'2023-06-22 13:22:47'),(606,'Supraestrutura - alvenaria estrutural',14,289,'2023-06-22 13:22:47'),(607,'Supraestrutura - outros',14,289,'2023-06-22 13:22:47'),(608,'Alvenarias',14,290,'2023-06-22 13:22:47'),(609,'Painéis',14,290,'2023-06-22 13:22:47'),(610,'Divisórias',14,290,'2023-06-22 13:22:47'),(611,'Impermeabilizações',14,291,'2023-06-22 13:22:47'),(612,'Serviços de tratamentos',14,291,'2023-06-22 13:22:47'),(613,'Coberturas',14,291,'2023-06-22 13:22:47'),(614,'Revestimentos em gesso',14,292,'2023-06-22 13:22:47'),(615,'Revest. de Paredes com pedras naturais',14,292,'2023-06-22 13:22:47'),(616,'Revestimento acústico',14,292,'2023-06-22 13:22:47'),(617,'Revestimentos cerâmicos',14,293,'2023-06-22 13:22:47'),(618,'Regularizações de estrutura',14,293,'2023-06-22 13:22:47'),(619,'Pisos cerâmicos',14,293,'2023-06-22 13:22:47'),(620,'Revestimento porcelanato',14,293,'2023-06-22 13:22:47'),(621,'Piso porcelanato',14,293,'2023-06-22 13:22:47'),(622,'Louças',14,294,'2023-06-22 13:22:47'),(623,'Metais',14,294,'2023-06-22 13:22:47'),(624,'Acessórios',14,294,'2023-06-22 13:22:47'),(625,'Instalações prediais',14,295,'2023-06-22 13:22:47'),(626,'Instalações especiais',14,295,'2023-06-22 13:22:47'),(627,'Outras instalações especiais',14,295,'2023-06-22 13:22:47'),(628,'Equipamentos especiais',14,296,'2023-06-22 13:22:47'),(629,'Mobiliários especiais',14,296,'2023-06-22 13:22:47'),(630,'Infraestrutura do Condomínio',14,297,'2023-06-22 13:22:47'),(631,'Pavimentações',14,297,'2023-06-22 13:22:48'),(632,'Edificações externas',14,297,'2023-06-22 13:22:48'),(633,'Fornec. e colocação de mármore e granito',14,298,'2023-06-22 13:22:48'),(634,'Elevadores',14,299,'2023-06-22 13:22:48'),(635,'Revestimentos internos',14,300,'2023-06-22 13:22:48'),(636,'Revestimentos externos',14,300,'2023-06-22 13:22:48'),(637,'Fornec. e inst. de esquadrias de madeira',14,301,'2023-06-22 13:22:48'),(638,'Fornecimento de vidros',14,302,'2023-06-22 13:22:48'),(639,'Pisos especiais',14,303,'2023-06-22 13:22:48'),(640,'Serviços de pintura',14,304,'2023-06-22 13:22:48'),(641,'Forros',14,305,'2023-06-22 13:22:48'),(642,'Limpeza final',14,306,'2023-06-22 13:22:48'),(643,'Assistência Técnica',14,307,'2023-06-22 13:22:48'),(644,'outros',14,308,'2023-06-22 13:22:48');
/*!40000 ALTER TABLE `subcategoria_de_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_documento`
--

DROP TABLE IF EXISTS `tipo_de_documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_documento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(100) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `homologacao` tinyint(1) DEFAULT NULL,
  `recorrente` tinyint(1) DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `categoria_de_documento_id` bigint DEFAULT NULL,
  `tipo_de_vencimento_id` bigint DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `categoria_de_documento_id` (`categoria_de_documento_id`),
  KEY `tipo_de_vencimento_id` (`tipo_de_vencimento_id`),
  KEY `ix_tipo_de_documento_codigo` (`codigo`),
  KEY `ix_tipo_de_documento_id` (`id`),
  CONSTRAINT `tipo_de_documento_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_de_fornecedor` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tipo_de_documento_ibfk_2` FOREIGN KEY (`categoria_de_documento_id`) REFERENCES `categoria_de_documento` (`id`) ON DELETE CASCADE,
  CONSTRAINT `tipo_de_documento_ibfk_3` FOREIGN KEY (`tipo_de_vencimento_id`) REFERENCES `tipo_de_vencimento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_documento`
--

LOCK TABLES `tipo_de_documento` WRITE;
/*!40000 ALTER TABLE `tipo_de_documento` DISABLE KEYS */;
INSERT INTO `tipo_de_documento` VALUES (1,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,1,1,5,'2023-06-07 14:32:16'),(2,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,2,1,5,'2023-06-07 14:32:16'),(3,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,3,1,5,'2023-06-07 14:32:16'),(4,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,4,1,5,'2023-06-07 14:32:16'),(5,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,5,1,5,'2023-06-07 14:32:16'),(6,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,6,1,5,'2023-06-07 14:32:16'),(7,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,7,1,5,'2023-06-07 14:32:16'),(8,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,8,1,5,'2023-06-07 14:32:16'),(9,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,9,1,5,'2023-06-07 14:32:16'),(10,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,10,1,5,'2023-06-07 14:32:16'),(11,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,11,1,5,'2023-06-07 14:32:16'),(12,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,12,1,5,'2023-06-07 14:32:16'),(13,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,13,1,5,'2023-06-07 14:32:16'),(14,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,14,1,5,'2023-06-07 14:32:16'),(15,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,15,1,5,'2023-06-07 14:32:16'),(16,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,16,1,5,'2023-06-07 14:32:16'),(17,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,17,1,5,'2023-06-07 14:32:16'),(18,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,18,1,5,'2023-06-07 14:32:16'),(19,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,19,1,5,'2023-06-07 14:32:16'),(20,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,20,1,5,'2023-06-07 14:32:16'),(21,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,21,1,5,'2023-06-07 14:32:16'),(22,'Doc.01','CERTIDÃO NEGATIVA DE DÉBITO',1,1,22,1,5,'2023-06-07 14:32:16'),(23,'Doc.002','GFIP',0,1,1,1,26,'2023-06-30 13:46:41'),(24,'Doc.002','GFIP',0,1,2,1,26,'2023-06-30 13:46:41'),(25,'Doc.002','GFIP',0,1,3,1,26,'2023-06-30 13:46:41'),(26,'Doc.002','GFIP',0,1,4,1,26,'2023-06-30 13:46:41'),(27,'Doc.002','GFIP',0,1,5,1,26,'2023-06-30 13:46:41'),(28,'Doc.002','GFIP',0,1,6,1,26,'2023-06-30 13:46:41'),(29,'Doc.002','GFIP',0,1,7,1,26,'2023-06-30 13:46:41');
/*!40000 ALTER TABLE `tipo_de_documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_pergunta`
--

DROP TABLE IF EXISTS `tipo_de_pergunta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_pergunta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_tipo_de_pergunta_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_pergunta`
--

LOCK TABLES `tipo_de_pergunta` WRITE;
/*!40000 ALTER TABLE `tipo_de_pergunta` DISABLE KEYS */;
INSERT INTO `tipo_de_pergunta` VALUES (1,'Múltipla escolha'),(2,'Escolha única'),(3,'Texto');
/*!40000 ALTER TABLE `tipo_de_pergunta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_prestacao`
--

DROP TABLE IF EXISTS `tipo_de_prestacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_prestacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(100) DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  `subcategoria_id` bigint DEFAULT NULL,
  `fornecedor_id` bigint DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  KEY `subcategoria_id` (`subcategoria_id`),
  KEY `fornecedor_id` (`fornecedor_id`),
  KEY `ix_tipo_de_prestacao_id` (`id`),
  CONSTRAINT `tipo_de_prestacao_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria_de_fornecedor` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tipo_de_prestacao_ibfk_2` FOREIGN KEY (`subcategoria_id`) REFERENCES `subcategoria_de_fornecedor` (`id`) ON DELETE SET NULL,
  CONSTRAINT `tipo_de_prestacao_ibfk_3` FOREIGN KEY (`fornecedor_id`) REFERENCES `fornecedor` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_prestacao`
--

LOCK TABLES `tipo_de_prestacao` WRITE;
/*!40000 ALTER TABLE `tipo_de_prestacao` DISABLE KEYS */;
INSERT INTO `tipo_de_prestacao` VALUES (1,'Serviço',1,1,1,'descrição do tipo da prestação','2023-06-05 15:57:17'),(2,'Serviço',2,2,1,'descrição do tipo da prestação','2023-06-05 15:57:17'),(3,'material',8,24,2,'','2023-06-07 17:42:58'),(4,'material',8,25,2,'','2023-06-07 17:42:58'),(5,'material',7,21,2,'','2023-06-07 17:42:58'),(7,'material',13,36,3,'','2023-06-21 13:19:55'),(8,'serviço',18,42,3,'','2023-06-21 13:19:55'),(9,'material',13,36,4,'','2023-06-23 18:59:47'),(10,'material',242,506,5,'Informatática','2023-06-27 19:53:48'),(11,'serviço',242,506,5,'Consultorias','2023-06-27 19:53:48'),(12,'material',221,461,6,'','2023-06-28 17:53:23'),(13,'serviço',1,1,7,'','2023-06-28 22:32:56'),(14,'material',17,41,8,'','2023-06-29 16:54:10'),(15,'material',16,40,9,'','2023-06-29 19:31:25');
/*!40000 ALTER TABLE `tipo_de_prestacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_relatorio`
--

DROP TABLE IF EXISTS `tipo_de_relatorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_relatorio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_tipo_de_relatorio_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_relatorio`
--

LOCK TABLES `tipo_de_relatorio` WRITE;
/*!40000 ALTER TABLE `tipo_de_relatorio` DISABLE KEYS */;
INSERT INTO `tipo_de_relatorio` VALUES (1,'Gestão de suprimentos'),(2,'Visão de comprador'),(3,'Visão de fornecedor');
/*!40000 ALTER TABLE `tipo_de_relatorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_de_vencimento`
--

DROP TABLE IF EXISTS `tipo_de_vencimento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_de_vencimento` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `frequencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_tipo_de_vencimento_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_de_vencimento`
--

LOCK TABLES `tipo_de_vencimento` WRITE;
/*!40000 ALTER TABLE `tipo_de_vencimento` DISABLE KEYS */;
INSERT INTO `tipo_de_vencimento` VALUES (1,'Único'),(2,'Mensal'),(3,'Quinzenal'),(4,'Trimestral'),(5,'Semestral'),(6,'Anual'),(7,'Todo dia 01'),(8,'Todo dia 02'),(9,'Todo dia 03'),(10,'Todo dia 04'),(11,'Todo dia 05'),(12,'Todo dia 06'),(13,'Todo dia 07'),(14,'Todo dia 08'),(15,'Todo dia 09'),(16,'Todo dia 10'),(17,'Todo dia 11'),(18,'Todo dia 12'),(19,'Todo dia 13'),(20,'Todo dia 14'),(21,'Todo dia 15'),(22,'Todo dia 16'),(23,'Todo dia 17'),(24,'Todo dia 18'),(25,'Todo dia 19'),(26,'Todo dia 20'),(27,'Todo dia 21'),(28,'Todo dia 22'),(29,'Todo dia 23'),(30,'Todo dia 24'),(31,'Todo dia 25'),(32,'Todo dia 26'),(33,'Todo dia 27'),(34,'Todo dia 28'),(35,'Todo dia 29'),(36,'Todo dia 30'),(37,'Todo dia 31');
/*!40000 ALTER TABLE `tipo_de_vencimento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `url_token`
--

DROP TABLE IF EXISTS `url_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `url_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `token` varchar(10) DEFAULT NULL,
  `url` text,
  PRIMARY KEY (`id`),
  KEY `ix_url_token_id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `url_token`
--

LOCK TABLES `url_token` WRITE;
/*!40000 ALTER TABLE `url_token` DISABLE KEYS */;
INSERT INTO `url_token` VALUES (1,'8z6MLp9V','/fornecedor/editar-cotacao-material/1/?numero_cotacao=90&obra=728CO&empresa=728'),(2,'sEVFMwh0','/fornecedor/editar-cotacao-material/1/?numero_cotacao=59&obra=728CO&empresa=728'),(3,'sC-0sBuX','/fornecedor/editar-cotacao-material/1/?numero_cotacao=101&obra=728CO&empresa=728'),(4,'6buYmkHm','/fornecedor/editar-cotacao-material/1/?numero_cotacao=551&obra=1236&empresa=1'),(5,'FYlYU2yN','/fornecedor/editar-cotacao-material/1/?numero_cotacao=102&obra=728CO&empresa=728'),(6,'n4ft3ol9','/fornecedor/editar-cotacao-material/1/?numero_cotacao=77&obra=728CO&empresa=728');
/*!40000 ALTER TABLE `url_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) NOT NULL,
  `empresa_uuid` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `senha` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `token` text,
  `ultimo_login` datetime NOT NULL,
  `ativo` tinyint(1) NOT NULL,
  `grupo_id` int DEFAULT NULL,
  `cadastrado_em` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `grupo_id` (`grupo_id`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`grupo_id`) REFERENCES `grupo` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'6108b155-c2a5-4568-aa56-7e70ac034c56','7659897c-6279-4d9d-96bb-f44767a188f9','admin','admin','pbkdf2:sha256:260000$N0bq5PxXVgc8w9vZ$221ee24a5773ab946a03c42f6ea1acbaf10a49c27fdcdf3e1cf94933dd164e75','admin@itemize.com.br',NULL,'2023-07-05 14:28:27',1,4,'2023-06-05 15:57:10'),(2,'9304f09f-a97c-41bd-b951-faed6a944ad1','7659897c-6279-4d9d-96bb-f44767a188f9','empresa_itemize','empresa itemize','pbkdf2:sha256:260000$oiAWl9JzcbMZUj2W$e1348a3922a22a716fcd14ed3cbef1369da982ba4742b1aec8b7428541d2c287','empresa@itemize.com.br',NULL,'2023-07-05 18:52:09',1,3,'2023-06-05 15:57:10'),(3,'70566541-2470-4846-96e0-3e1200e9b6e5','7659897c-6279-4d9d-96bb-f44767a188f9','comprador_itemize','comprador itemize','pbkdf2:sha256:260000$S53sr5XESxEUeaxK$6695724cae9aa65d19ee8220c476ea7420af03da6f42a6009c0d8319f77ffe61','comprador@itemize.com.br',NULL,'2023-06-05 15:57:12',1,2,'2023-06-05 15:57:11'),(4,'47b34da9-be65-4010-92b1-3b4e507bdd40','7659897c-6279-4d9d-96bb-f44767a188f9','fornecedor_itemize','fornecedor itemize','pbkdf2:sha256:260000$3HmetOmXEtHzN37l$ea6f6dea9dfcce6a8c47ca5de01d4ed30bc2e9da01f23ede4b9c59bfa256e3d0','fornecedor@itemize.com.br',NULL,'2023-07-05 18:55:33',1,1,'2023-06-05 15:57:13'),(6,'caa7bef8-49a2-48c0-a876-b528becd41c4','7659897c-6279-4d9d-96bb-f44767a188f9','Adrian','Adrian Milena','pbkdf2:sha256:260000$dqHOWiqhpOGNLLPr$2d7e2edf65e61c9b7f21cf443e1433b5de7ee6f129dc7218dee3a6bda385351f','adrianjunges@gmail.com',NULL,'2023-06-07 14:11:19',1,2,'2023-06-07 14:11:18'),(11,'1809191f-c29a-4915-917b-913264cff349','1809191f-c29a-4915-917b-913264cff349','05851921000181','05851921000181','pbkdf2:sha256:260000$ympmEwngDpE2CCZ5$65484a445c0271064dc15b501a803350d9fab6302602fdabee81b77e40317a59','mjre@itemize.com.br',NULL,'2023-06-14 17:08:19',1,3,'2023-06-07 15:46:15'),(12,'a72433c8-bac6-423b-b99a-b6912645fff5','1809191f-c29a-4915-917b-913264cff349','mjre.isabela','Isabela','pbkdf2:sha256:260000$HEQ02E214tDvhpUV$01cc18797aa6766cae15fe5138ca2c324a5b6cc7c7f0e097bc2f0804d2099969','comercial@mjre.com.br',NULL,'2023-06-12 18:56:02',1,2,'2023-06-07 15:49:53'),(13,'f2934174-a7a5-40f8-bea2-5962229c813b','f2934174-a7a5-40f8-bea2-5962229c813b','17781324000107','17781324000107','pbkdf2:sha256:260000$HlvT7rSiZIBSjuBw$dada87b9f6ae438c37091258ecdea7444567a5824b49c371f17e13f67c0f8bb6','rev3@itemize.com.br',NULL,'2023-07-04 18:21:26',1,3,'2023-06-07 16:12:07'),(15,'c5bf9a28-edc3-4e46-bd2a-17d515db0928','7659897c-6279-4d9d-96bb-f44767a188f9','40769709000170','TEC CENTER','pbkdf2:sha256:260000$k4rbnu2IY3efUWuC$117b0e983b61bc453103981ed0039f6f222b3cf88345ca0e94052fd327d47328','adrianjunges@gmail.com',NULL,'2023-07-05 18:26:40',1,1,'2023-06-07 17:42:57'),(16,'23c21e60-d641-407d-949d-7b6a6993ef53','23c21e60-d641-407d-949d-7b6a6993ef53','00543284000162','00543284000162','pbkdf2:sha256:260000$X5JtRom7ntyTGixE$c314f60a4c2c499e85e3eb6511f034c4675967f16e547c0c951e8acdc0186291','avanco@itemize.com.br',NULL,'2023-06-23 10:03:54',1,3,'2023-06-09 12:40:35'),(17,'ef67d3c3-58a6-422f-9b18-825167c4c555','23c21e60-d641-407d-949d-7b6a6993ef53','avanco.jader','Jader','pbkdf2:sha256:260000$3wLjSWpST3lwFDbF$32bb30b398a62b3132beb71001381262d019a0e026905d26ffb075a58f69aae4','jader@avancorealizacoes.com.br',NULL,'2023-07-03 18:05:43',1,2,'2023-06-09 15:16:45'),(18,'a98c0af5-2eb4-4fd6-aacc-63b4ba6b6e2f','a98c0af5-2eb4-4fd6-aacc-63b4ba6b6e2f','37241027000186','37241027000186','pbkdf2:sha256:260000$5uhgnRALbFlteG8r$f692edeeab81c2efdec5776f1fdc182ac4845e617357464ab44ea2e1398c59bc','suporte@habitare.com.br',NULL,'2023-06-28 22:14:16',1,3,'2023-06-12 12:51:19'),(19,'acb06d04-30dc-4a1b-bfab-7026fdb33cb6','a98c0af5-2eb4-4fd6-aacc-63b4ba6b6e2f','habitare.roberto','Roberto Coutinho','pbkdf2:sha256:260000$38QoPtUY7bjh2Op3$486d43dc63df3ad669cfb798c5b0ceb4ac20abb9716652074341e4978589849f','roberto.baranowski@uniaorealizacoes.com.br',NULL,'2023-07-05 13:58:07',1,2,'2023-06-12 13:32:02'),(20,'2734223b-15ac-4eea-8a4d-468864a86bae','a98c0af5-2eb4-4fd6-aacc-63b4ba6b6e2f','habitare.thayanne','Thayane Ferreira','pbkdf2:sha256:260000$HnL343jMKigfaM7H$8702ec69a24976efa2c824230a8d978370a1f8d290a1ec86156d49f9cb4a9fc9','thayane.ferreira@habitaresa.com.br',NULL,'2023-06-12 13:50:20',1,2,'2023-06-12 13:38:58'),(21,'01283fa9-3ee2-4652-8ba3-29e20ec66f6b','a98c0af5-2eb4-4fd6-aacc-63b4ba6b6e2f','habitare.cheyenne','Cheyenne Gomes','pbkdf2:sha256:260000$gULG6vbPEdaf5r9u$1df63852af9b218820a813051a20ad2a09acaa9e67a7daa793061277613742b8','cheyenne.gomes@uniaorealizacoes.com.br',NULL,'2023-06-12 13:40:08',1,2,'2023-06-12 13:40:08'),(22,'5339bcd3-6f37-4e53-9555-8225a0cb9fde','a98c0af5-2eb4-4fd6-aacc-63b4ba6b6e2f','habitare.haissa','Haissa Alcantara','pbkdf2:sha256:260000$oewIvKeGX8iU6dpE$a6e090d0cf05ce773765f1a7544fd48be4393543d3fb664c041b58285c1145a4','haissa.alcantara@uniaorealizacoes.com.br',NULL,'2023-07-03 12:37:03',1,2,'2023-06-12 13:59:03'),(23,'e07ed037-90c8-4457-9a43-a32839fe1023','f2934174-a7a5-40f8-bea2-5962229c813b','rev3.eduardo','Eduardo Remião','pbkdf2:sha256:260000$pYjxRIxg99FOXzkp$19a1aa2c759c9beee042490ded98327b5b80ea4d5e882cb4d88454c19478c057','eduardo@rev3.com.br',NULL,'2023-06-29 18:43:29',1,2,'2023-06-12 15:56:34'),(24,'0f11c254-78a3-4240-92a5-a01a7a03e860','0f11c254-78a3-4240-92a5-a01a7a03e860','10909064000163','10909064000163','pbkdf2:sha256:260000$kLFdz7t1POrNYDpS$01ac9ef54e15474be518a32a9447b1758239d4ded16c777b964d299ca95010eb','monaco@itemize.com.br',NULL,'2023-06-13 14:22:15',1,3,'2023-06-13 13:44:17'),(26,'2baeb8d5-3199-4362-ab98-c5e40c825774','0f11c254-78a3-4240-92a5-a01a7a03e860','monaco.jorge','Jorge Ferrari','pbkdf2:sha256:260000$aBfYRgmgXQnE1Mx6$4a17694936fa99552f0af8aa078838e1742b28f97a7fd7a51fa06b34bafc5cc1','jferrari@arbi.com.br',NULL,'2023-06-13 14:29:09',1,2,'2023-06-13 14:29:09'),(27,'ee2f7368-b9f9-4231-bf04-31bbd0734e31','0f11c254-78a3-4240-92a5-a01a7a03e860','monaco.fernanda','Fernanda Veiga','pbkdf2:sha256:260000$vOmd0bjlaKj1s2yH$db49cf50b91451f4174f01a307201607b7237bf74219f537bb7d8d3e62de9b73','fveiga@arbi.com.br',NULL,'2023-06-13 14:29:51',1,2,'2023-06-13 14:29:51'),(28,'f08041fd-dafb-4af9-acbf-efe8da24b8f5','0f11c254-78a3-4240-92a5-a01a7a03e860','monaco.catia','Catia Santana','pbkdf2:sha256:260000$QOGuTj2oZN3sTyaE$a69a4812775be0800647ebf6c3e3f428b9c018ec8955f594cc86691448035113','catia.santana@c2sarquitetura.com.br',NULL,'2023-06-13 14:30:49',1,2,'2023-06-13 14:30:48'),(29,'dae2935e-144f-40e7-8293-1bb15802a6ba','dae2935e-144f-40e7-8293-1bb15802a6ba','05166785000190','05166785000190','pbkdf2:sha256:260000$b0fcE1wsVj27516w$8a82930abc6e1d2602a7feb31e94f93b1fda3ede426cbc63db89bf4fff299a37','bancodeprojetos@itemize.com.br',NULL,'2023-07-04 22:05:26',1,3,'2023-06-13 18:01:33'),(30,'e6ce8a01-031c-4bac-b976-cce76e56ac8d','e6ce8a01-031c-4bac-b976-cce76e56ac8d','26452410000167','26452410000167','pbkdf2:sha256:260000$UepjpTUIM9X642yo$ac0159339759924e4c57a36b07bfc314c355ea786718aa6a87b4fd5f8a3ca765','tf@itemize.com.br',NULL,'2023-06-14 21:14:04',1,3,'2023-06-14 20:06:49'),(31,'843299b0-88a9-4459-8149-4d933c236adb','e6ce8a01-031c-4bac-b976-cce76e56ac8d','tf.brunorosa','Bruno Rosa','pbkdf2:sha256:260000$GATqZ8eS4h5nIJ00$22e8a129f96993a5c89ae2c0399ad057f9558649eb0003007ded235b28fcad83','bruno.rosa@toledoferrari.com.br',NULL,'2023-06-14 21:53:12',1,2,'2023-06-14 21:28:33'),(32,'8b53afd6-ad04-4d25-a816-56e045ec9199','e6ce8a01-031c-4bac-b976-cce76e56ac8d','tf.marcosimoes','Marco Simões','pbkdf2:sha256:260000$1gDCHauOYF6Ib0UK$0c2510b026f16642e01da7805ab4e0136f2ec1bcb7409c734f7d688e38f65152','marco.simoes@toledoferrari.com.br',NULL,'2023-06-14 21:29:42',1,2,'2023-06-14 21:29:42'),(33,'4a46be83-38bf-4956-81ed-639724cec97e','dae2935e-144f-40e7-8293-1bb15802a6ba','Alessandro','Alessandro Oliveira','pbkdf2:sha256:260000$sV7hnrMBkJqwtEkD$a3b324cb973ae6fa8d3c382d82ac30bf09b58e1db2aa856c028d317e021f065b','alessandro.oliveira@bp8construtora.com.br',NULL,'2023-07-04 19:20:01',1,2,'2023-06-15 13:22:19'),(34,'7ef1efd3-14cc-487c-8fee-a4de6afdea7f','7659897c-6279-4d9d-96bb-f44767a188f9','02034846000178','CONELESTE SERVICOS','pbkdf2:sha256:260000$VXMmYDhNuBb9Gx79$0a0b85a360a5602a2c21302330a86bc86ee1b982016e1c28d59bb837df4f1d2c','conceleste@itemize.com.br',NULL,'2023-06-22 13:03:37',1,1,'2023-06-21 13:19:53'),(35,'1d9237c2-95cb-4be7-b8ac-72178da1db93','f2934174-a7a5-40f8-bea2-5962229c813b','rev3.bi','Bi Rev3','pbkdf2:sha256:260000$55r6rcPyYV8x23Q6$cd1ae804c829de99c7d4274e1317f6a48ffe976d9435804d56cb98c432894c4f','bi@rev3.com.br',NULL,'2023-07-05 20:43:43',1,2,'2023-06-21 13:50:26'),(36,'bbded474-3b97-4fd9-a772-ccbc393f8ff4','bbded474-3b97-4fd9-a772-ccbc393f8ff4','16927599000143','16927599000143','pbkdf2:sha256:260000$T2ybjVc33plSv7kT$8c695cc3d49aad525fce2477de2f988e9e3f43f97161ae7fb387da4cfe87e306','mananciais@itemize.com.br',NULL,'2023-06-22 13:17:46',1,3,'2023-06-22 13:08:37'),(37,'99c3ebe1-f46a-4e66-ac30-843a9231f8d4','99c3ebe1-f46a-4e66-ac30-843a9231f8d4','02534715000150','02534715000150','pbkdf2:sha256:260000$TEgblQBszDlLMQ11$9a3a0ed3a75e727b949743cc2407dc6143d8abb23591b75f6b55b9740e6666f6','arbore@itemize.com.br',NULL,'2023-06-22 13:23:48',1,3,'2023-06-22 13:22:46'),(38,'63c58d35-c89d-459d-a90e-c3f8dc010afa','99c3ebe1-f46a-4e66-ac30-843a9231f8d4','arbore.cida','Cida','pbkdf2:sha256:260000$1ZeRnTfedXHMkAtW$6a2fb3059215e29fe221fb597efb785a1d89f27085fe520dacb87a8e265f828f','mariasouza@arboreengenharia.com.br',NULL,'2023-06-22 13:28:06',1,2,'2023-06-22 13:24:44'),(39,'f317833c-f03a-458e-bc68-c14c605c6c4c','7659897c-6279-4d9d-96bb-f44767a188f9','05559853000181','CASA DO CONSTRUTOR','pbkdf2:sha256:260000$F4PdFAZSP6Wf5wes$30bfee76e5d1693ede74d7d6f8a9a98b90d469fa180a07e946b6b6f118071547','adrian@itemize.com.br',NULL,'2023-06-23 18:59:45',1,1,'2023-06-23 18:59:45'),(40,'c3f692cd-c2b9-4b34-add0-0bda12297585','dae2935e-144f-40e7-8293-1bb15802a6ba','81772253000185','Fornecedor Fake para testes','pbkdf2:sha256:260000$xH85Um2Yz8obX8cV$5e7527d449585e0ba4dde98cec47a19e8b73a56775bc3329d768cc71ea650a0d','alessandro.oliveira@bp8.com.vc',NULL,'2023-07-05 14:30:08',1,1,'2023-06-27 19:53:48'),(41,'e35c8c37-f525-455a-a7ab-10ae11e8c140','dae2935e-144f-40e7-8293-1bb15802a6ba','40365927000140','ITEMIZE LTDA','pbkdf2:sha256:260000$5sWReh2l61yk6ExT$2ba58dbd29242f438df9ed2a0ff4310afce18a18a0c1b8ccf30008f61d8b53c5','itemize@itemize.com.br',NULL,'2023-06-29 20:51:15',1,1,'2023-06-28 17:53:23'),(42,'36452b82-e8dd-4310-956f-73c20630afd5','dae2935e-144f-40e7-8293-1bb15802a6ba','Adrian','Adrian Milena','pbkdf2:sha256:260000$xa3WAwyijfN8RkNp$866a31c96b5a4f441b8c18cfa670153d434e51d7dc9739d193696d351fe4042c','adrian@itemize.com.br',NULL,'2023-06-28 18:33:12',1,2,'2023-06-28 18:32:15'),(43,'649d563a-e839-4b56-a86f-62dcf4c117a4','7659897c-6279-4d9d-96bb-f44767a188f9','37242114000158','INCONTEC','pbkdf2:sha256:260000$W7T25fOWQxhX12Sd$fa00dd496db677ea89268fb7c2437ba9ac4e7dbbdb4c4b1cbd7ad3133abd44ab','incontec@itemize.com.br',NULL,'2023-06-28 22:53:49',1,1,'2023-06-28 22:32:54'),(44,'486b7a24-48af-43e5-bafb-155a141a7558','7659897c-6279-4d9d-96bb-f44767a188f9','31571138000174','J O MATERIAIS DE CONSTRUCAO','pbkdf2:sha256:260000$qwUoB3to79hkerXx$e8885a78432c406c76cdc95c88b86a9791eb3ba830176d65a35508a0b156f6f5','adrian@itemize.com.br',NULL,'2023-06-29 18:14:31',1,1,'2023-06-29 16:54:09'),(45,'5413928e-0bdc-4723-86fe-7480731e4ccf','7659897c-6279-4d9d-96bb-f44767a188f9','25077371000100','CONSTRULAR MATERIAS DE CONSTRUCAO','pbkdf2:sha256:260000$vhB3JyWGGsGt1q75$fd3c174febe4279ba177df98fd21b0d5495cd94b10f4a285a652d41eed286481','matheus@itemize.com.br',NULL,'2023-06-29 19:31:24',1,1,'2023-06-29 19:31:24');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whatsapp_config`
--

DROP TABLE IF EXISTS `whatsapp_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `whatsapp_config` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mensagem` text,
  `numero` varchar(50) DEFAULT NULL,
  `empresa_id` bigint DEFAULT NULL,
  `ativo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `empresa_id` (`empresa_id`),
  KEY `ix_whatsapp_config_id` (`id`),
  CONSTRAINT `whatsapp_config_ibfk_1` FOREIGN KEY (`empresa_id`) REFERENCES `empresa` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whatsapp_config`
--

LOCK TABLES `whatsapp_config` WRITE;
/*!40000 ALTER TABLE `whatsapp_config` DISABLE KEYS */;
INSERT INTO `whatsapp_config` VALUES (1,'Olá, cheguei através do portal de fornecedores.','21980226446',1,1);
/*!40000 ALTER TABLE `whatsapp_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 22:59:59
