CREATE DATABASE  IF NOT EXISTS `onlinebanking` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `onlinebanking`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinebanking
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `id` bigint NOT NULL,
  `confirmed` bit(1) NOT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa8m1smlfsc8kkjn2t6wpdmysk` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (15,_binary '\0','2016-10-15 19:10:00','i need to open a account','New York',9);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (34);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primary_account`
--

DROP TABLE IF EXISTS `primary_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primary_account` (
  `id` bigint NOT NULL,
  `account_balance` decimal(19,2) DEFAULT NULL,
  `account_number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primary_account`
--

LOCK TABLES `primary_account` WRITE;
/*!40000 ALTER TABLE `primary_account` DISABLE KEYS */;
INSERT INTO `primary_account` VALUES (1,17200.00,11223146),(7,2010220.00,11223148),(25,0.00,11223146),(26,0.00,11223147);
/*!40000 ALTER TABLE `primary_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `primary_transaction`
--

DROP TABLE IF EXISTS `primary_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `primary_transaction` (
  `id` bigint NOT NULL,
  `amount` double NOT NULL,
  `available_balance` decimal(19,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `primary_account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK643wtfdx6y0e093wlc09csehn` (`primary_account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `primary_transaction`
--

LOCK TABLES `primary_transaction` WRITE;
/*!40000 ALTER TABLE `primary_transaction` DISABLE KEYS */;
INSERT INTO `primary_transaction` VALUES (6,1200,1200.00,'2021-02-10 11:38:36','Deposit to Primary Account','Finished','Account',1),(11,2000220,2000220.00,'2021-02-10 11:50:29','Deposit to Primary Account','Finished','Account',7),(18,5000,2005220.00,'2021-02-10 12:31:43','Deposit to Primary Account','Finished','Account',7),(20,2000,2007220.00,'2021-02-11 12:20:48','Deposit to Primary Account','Finished','Account',7),(21,8000,2015220.00,'2021-02-11 12:21:04','Deposit to Primary Account','Finished','Account',7),(22,5000,2010220.00,'2021-02-11 12:22:04','Withdraw from Primary Account','Finished','Account',7),(24,5000,2010220.00,'2021-02-11 12:27:15','Between account transfer from Primary to Savings','Finished','Account',7),(30,8000,9200.00,'2021-02-11 12:43:59','Deposit to Primary Account','Finished','Account',1);
/*!40000 ALTER TABLE `primary_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipient`
--

DROP TABLE IF EXISTS `recipient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipient` (
  `id` bigint NOT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK3041ks22uyyuuw441k5671ah9` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipient`
--

LOCK TABLES `recipient` WRITE;
/*!40000 ALTER TABLE `recipient` DISABLE KEYS */;
INSERT INTO `recipient` VALUES (33,'01745890469','Buy a product','xyz@gmail.com','Md. Enamul Haque','01745890469',3);
/*!40000 ALTER TABLE `recipient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `role_id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savings_account`
--

DROP TABLE IF EXISTS `savings_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savings_account` (
  `id` bigint NOT NULL,
  `account_balance` decimal(19,2) DEFAULT NULL,
  `account_number` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings_account`
--

LOCK TABLES `savings_account` WRITE;
/*!40000 ALTER TABLE `savings_account` DISABLE KEYS */;
INSERT INTO `savings_account` VALUES (2,-7000.00,11223147),(8,9000.00,11223149),(27,0.00,11223148);
/*!40000 ALTER TABLE `savings_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `savings_transaction`
--

DROP TABLE IF EXISTS `savings_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savings_transaction` (
  `id` bigint NOT NULL,
  `amount` double NOT NULL,
  `available_balance` decimal(19,2) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `savings_account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4bt1l2090882974glyn79q2s9` (`savings_account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savings_transaction`
--

LOCK TABLES `savings_transaction` WRITE;
/*!40000 ALTER TABLE `savings_transaction` DISABLE KEYS */;
INSERT INTO `savings_transaction` VALUES (5,2000,2000.00,'2021-02-10 11:38:28','Deposit to savings Account','Finished','Account',2),(12,6000,6000.00,'2021-02-10 12:22:42','Deposit to savings Account','Finished','Account',8),(13,5000,1000.00,'2021-02-10 12:25:24','Withdraw from savings Account','Finished','Account',8),(16,5000,6000.00,'2021-02-10 12:31:07','Deposit to savings Account','Finished','Account',8),(17,5000,11000.00,'2021-02-10 12:31:17','Deposit to savings Account','Finished','Account',8),(19,2000,9000.00,'2021-02-11 12:17:34','Withdraw from savings Account','Finished','Account',8),(23,5000,4000.00,'2021-02-11 12:25:32','Between account transfer from Savings to Primary','Finished','Transfer',8),(31,1000,1000.00,'2021-02-11 12:44:07','Withdraw from savings Account','Finished','Account',2),(32,8000,-7000.00,'2021-02-11 12:44:43','Between account transfer from Savings to Primary','Finished','Transfer',2);
/*!40000 ALTER TABLE `savings_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` bigint NOT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `primary_account_id` bigint DEFAULT NULL,
  `savings_account_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `FKbj0uoj9i40dory8w4t5ojyb9n` (`primary_account_id`),
  KEY `FKihums7d3g5cv9ehminfs1539e` (`savings_account_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (3,'xyz@gmail.com',_binary '','Md.','Haque','$2a$12$JZIeQSBNeNZAYlu2a3HNAe/EgbtwXLVODVLcfmKDkJqI4x9ldgpVG','01745890469','arif1',1,2),(9,'xyzr@gmail.com',_binary '','Md.','Haques islam','$2a$12$esAokz.fy7KqbO7Cn4jxaudFHWo0QLe8O3Cx.jOd6qVBqg691.Fk2','01745890467','arifur',7,8),(28,'xyz@gmail.com',_binary '','Md.','Haque','$2a$12$esAokz.fy7KqbO7Cn4jxaudFHWo0QLe8O3Cx.jOd6qVBqg691.Fk2','01745890469','arif',26,27);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `user_role_id` bigint NOT NULL,
  `role_id` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`user_role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  KEY `FK859n2jvi8ivhui0rl0esws6o` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (4,1,3),(10,1,9),(29,1,28);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-13  9:22:08
