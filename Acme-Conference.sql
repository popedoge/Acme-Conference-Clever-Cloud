drop database if exists `acme-conference`;
create database `acme-conference`;
use `acme-conference`;

-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: acme-conference
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `speakers` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `conference` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qy8knnuriq3w5yo8a6plf6vq7` (`conference`),
  CONSTRAINT `FK_qy8knnuriq3w5yo8a6plf6vq7` FOREIGN KEY (`conference`) REFERENCES `conference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `actor_preferences`
--

DROP TABLE IF EXISTS `actor_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `actor_preferences` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `display_address` bit(1) NOT NULL,
  `display_email` bit(1) NOT NULL,
  `display_phone_number` bit(1) NOT NULL,
  `display_real_name` bit(1) NOT NULL,
  `message_signature` varchar(255) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actor_preferences`
--

LOCK TABLES `actor_preferences` WRITE;
/*!40000 ALTER TABLE `actor_preferences` DISABLE KEYS */;
INSERT INTO `actor_preferences` VALUES (184,0,_binary '\0',_binary '',_binary '\0',_binary '\0','- ADMIN',175),(185,0,_binary '',_binary '',_binary '',_binary '','',177),(186,0,_binary '',_binary '',_binary '',_binary '','',178),(187,0,_binary '\0',_binary '',_binary '\0',_binary '','',179),(188,0,_binary '\0',_binary '',_binary '\0',_binary '','',180),(189,0,_binary '\0',_binary '',_binary '\0',_binary '','',181),(190,0,_binary '\0',_binary '',_binary '\0',_binary '','',182),(191,0,_binary '\0',_binary '',_binary '\0',_binary '','',176);
/*!40000 ALTER TABLE `actor_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrator`
--

DROP TABLE IF EXISTS `administrator`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `administrator` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_nao9qdpnimq3hix0axmli82ix` (`user`),
  CONSTRAINT `FK_nao9qdpnimq3hix0axmli82ix` FOREIGN KEY (`user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrator`
--

LOCK TABLES `administrator` WRITE;
/*!40000 ALTER TABLE `administrator` DISABLE KEYS */;
INSERT INTO `administrator` VALUES (175,0,'Admin address 1','admin11@mail.com','Pepe','Paco','666666666','https://media.tenor.com/images/c094a7e701671534e78d802cc91b40b3/tenor.gif','Lopez',167),(176,0,'i didnt want to have to create this bean grrr','admin11@mail.com','Admin','Wuango','666666666','https://media.tenor.com/images/c094a7e701671534e78d802cc91b40b3/tenor.gif','Lopez',174);
/*!40000 ALTER TABLE `administrator` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_6slrrwh37rnymj7tjgix74i35` (`user`),
  CONSTRAINT `FK_6slrrwh37rnymj7tjgix74i35` FOREIGN KEY (`user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (177,0,'Address 1','author1@mail.com',NULL,'Onesimo','666666666','https://media.tenor.com/images/c094a7e701671534e78d802cc91b40b3/tenor.gif','Guayabato',168),(178,0,'Address 2','author2@mail.com','Perro','Mano','666666666','https://media.tenor.com/images/c094a7e701671534e78d802cc91b40b3/tenor.gif','Critter',169),(179,0,'Address 3','author3@mail.com','RR','Jorgito','666666666','https://media.tenor.com/images/c094a7e701671534e78d802cc91b40b3/tenor.gif','Martin',170);
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conference`
--

DROP TABLE IF EXISTS `conference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `conference` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `acronym` varchar(255) DEFAULT NULL,
  `cameradl` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `fee` bigint(20) DEFAULT NULL,
  `locked` bit(1) NOT NULL,
  `notificationdl` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `submissiondl` datetime DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `venue` varchar(255) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference`
--

LOCK TABLES `conference` WRITE;
/*!40000 ALTER TABLE `conference` DISABLE KEYS */;
INSERT INTO `conference` VALUES (248,0,'DC','2020-03-12 13:20:00','2020-03-12 13:20:00',100,_binary '\0','2020-03-12 13:20:00','2020-03-12 13:20:00','2020-03-12 13:20:00','woof woof','DOGECON','Bush Stadium',175),(249,0,'CVSB','2020-03-12 13:20:00','2020-03-12 13:20:00',100,_binary '\0','2020-03-12 13:20:00','2020-03-12 13:20:00','2020-03-12 13:20:00','*sluuuuuuuuuuuuuuuuurp*','conke vs bepis: ultimate battle','Bush Stadium',176),(250,0,'HBC','2020-03-12 13:20:00','2020-03-12 13:20:00',12,_binary '\0','2020-03-12 13:20:00','2020-03-12 13:20:00','2020-03-12 13:20:00','*buuuuuuuuuuuuuuuuurp*','hillbill convention','Bush Stadium',175);
/*!40000 ALTER TABLE `conference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conference_activities`
--

DROP TABLE IF EXISTS `conference_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `conference_activities` (
  `conference` int(11) NOT NULL,
  `activities` int(11) NOT NULL,
  UNIQUE KEY `UK_8aa5t83jo5au40ul1o1mx9hp5` (`activities`),
  KEY `FK_60tvmyyemxoce7qvrh79gn6s7` (`conference`),
  CONSTRAINT `FK_60tvmyyemxoce7qvrh79gn6s7` FOREIGN KEY (`conference`) REFERENCES `conference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conference_activities`
--

LOCK TABLES `conference_activities` WRITE;
/*!40000 ALTER TABLE `conference_activities` DISABLE KEYS */;
/*!40000 ALTER TABLE `conference_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequences`
--

DROP TABLE IF EXISTS `hibernate_sequences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `hibernate_sequences` (
  `sequence_name` varchar(255) DEFAULT NULL,
  `sequence_next_hi_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequences`
--

LOCK TABLES `hibernate_sequences` WRITE;
/*!40000 ALTER TABLE `hibernate_sequences` DISABLE KEYS */;
INSERT INTO `hibernate_sequences` VALUES ('domain_entity',1);
/*!40000 ALTER TABLE `hibernate_sequences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lorem`
--

DROP TABLE IF EXISTS `lorem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `lorem` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `locked` bit(1) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `publication_moment` datetime DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `reference` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_nf8tagl7ddncvs1ypwpq3vylx` (`reference`),
  CONSTRAINT `FK_nf8tagl7ddncvs1ypwpq3vylx` FOREIGN KEY (`reference`) REFERENCES `conference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lorem`
--

LOCK TABLES `lorem` WRITE;
/*!40000 ALTER TABLE `lorem` DISABLE KEYS */;
INSERT INTO `lorem` VALUES (254,1,'this a test2',_binary '\0','https://i.kinja-img.com/gawker-media/image/upload/s--CAjFHOYm--/c_scale,f_auto,fl_progressive,q_80,w_800/19crhbdp4sanejpg.jpg','2019-08-22 13:20:00','QQQ-123456-WW',248),(255,0,'this a test',_binary '\0','https://i.kinja-img.com/gawker-media/image/upload/s--CAjFHOYm--/c_scale,f_auto,fl_progressive,q_80,w_800/19crhbdp4sanejpg.jpg','2019-07-22 13:20:00','QWE-123456-FF',248),(256,1,'this a test',_binary '','https://i.kinja-img.com/gawker-media/image/upload/s--CAjFHOYm--/c_scale,f_auto,fl_progressive,q_80,w_800/19crhbdp4sanejpg.jpg','2019-06-22 13:20:00','NEE-123456-ET',249),(257,1,'this a test',_binary '','https://i.kinja-img.com/gawker-media/image/upload/s--CAjFHOYm--/c_scale,f_auto,fl_progressive,q_80,w_800/19crhbdp4sanejpg.jpg','2019-07-22 13:20:00','OKT-123456-EP',249);
/*!40000 ALTER TABLE `lorem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `body` varchar(255) DEFAULT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `sender_alias` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `tick` bit(1) NOT NULL,
  `sender` int(11) DEFAULT NULL,
  `topic` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_9e5snvu7d6i2dypiwctuvm8fs` (`topic`),
  CONSTRAINT `FK_9e5snvu7d6i2dypiwctuvm8fs` FOREIGN KEY (`topic`) REFERENCES `topic` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (258,0,'vro wat','2019-03-12 13:20:00','','notif test',_binary '\0',NULL,240);
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_box`
--

DROP TABLE IF EXISTS `message_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message_box` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `owner` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_h8ejofn6k6j5gtbl2sb4fc3co` (`parent`),
  CONSTRAINT `FK_h8ejofn6k6j5gtbl2sb4fc3co` FOREIGN KEY (`parent`) REFERENCES `message_box` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_box`
--

LOCK TABLES `message_box` WRITE;
/*!40000 ALTER TABLE `message_box` DISABLE KEYS */;
INSERT INTO `message_box` VALUES (192,0,'ROOT','Mail',175,NULL),(193,0,'INBOX','Inbox',175,192),(194,0,'OUTBOX','Outbox',175,192),(195,0,'TRASHBOX','Trashbox',175,192),(196,0,'SPAMBOX','Spambox',175,192),(197,0,'NOTIF','Spambox',175,192),(198,0,'ROOT','Mail',176,NULL),(199,0,'INBOX','Inbox',176,198),(200,0,'OUTBOX','Outbox',176,198),(201,0,'TRASHBOX','Trashbox',176,198),(202,0,'SPAMBOX','Spambox',176,198),(203,0,'NOTIF','Spambox',176,198),(204,0,'ROOT','Mail',177,NULL),(205,0,'INBOX','Inbox',177,204),(206,0,'OUTBOX','Outbox',177,204),(207,0,'TRASHBOX','Trashbox',177,204),(208,0,'SPAMBOX','Spambox',177,204),(209,0,'NOTIF','Spambox',177,204),(210,0,'ROOT','Mail',178,NULL),(211,0,'INBOX','Inbox',178,210),(212,0,'OUTBOX','Outbox',178,210),(213,0,'TRASHBOX','Trashbox',178,210),(214,0,'SPAMBOX','Spambox',178,210),(215,0,'NOTIF','Spambox',178,210),(216,0,'ROOT','Mail',179,NULL),(217,0,'INBOX','Inbox',179,216),(218,0,'OUTBOX','Outbox',179,216),(219,0,'TRASHBOX','Trashbox',179,216),(220,0,'SPAMBOX','Spambox',179,216),(221,0,'NOTIF','Spambox',179,216),(222,0,'ROOT','Mail',180,NULL),(223,0,'INBOX','Inbox',180,222),(224,0,'OUTBOX','Outbox',180,222),(225,0,'TRASHBOX','Trashbox',180,222),(226,0,'SPAMBOX','Spambox',180,222),(227,0,'NOTIF','Spambox',180,222),(228,0,'ROOT','Mail',181,NULL),(229,0,'INBOX','Inbox',181,228),(230,0,'OUTBOX','Outbox',181,228),(231,0,'TRASHBOX','Trashbox',181,228),(232,0,'SPAMBOX','Spambox',181,228),(233,0,'NOTIF','Spambox',181,228),(234,0,'ROOT','Mail',182,NULL),(235,0,'INBOX','Inbox',182,234),(236,0,'OUTBOX','Outbox',182,234),(237,0,'TRASHBOX','Trashbox',182,234),(238,0,'SPAMBOX','Spambox',182,234),(239,0,'NOTIF','Spambox',182,234);
/*!40000 ALTER TABLE `message_box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_container`
--

DROP TABLE IF EXISTS `message_container`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message_container` (
  `message` int(11) NOT NULL,
  `container` int(11) NOT NULL,
  KEY `FK_if6gd5ir16th5590l74hbqpf1` (`container`),
  KEY `FK_r416lrs60qdbv9veh39m06785` (`message`),
  CONSTRAINT `FK_if6gd5ir16th5590l74hbqpf1` FOREIGN KEY (`container`) REFERENCES `message_box` (`id`),
  CONSTRAINT `FK_r416lrs60qdbv9veh39m06785` FOREIGN KEY (`message`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_container`
--

LOCK TABLES `message_container` WRITE;
/*!40000 ALTER TABLE `message_container` DISABLE KEYS */;
INSERT INTO `message_container` VALUES (258,197);
/*!40000 ALTER TABLE `message_container` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message_recipients`
--

DROP TABLE IF EXISTS `message_recipients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `message_recipients` (
  `message` int(11) NOT NULL,
  `recipients` int(11) NOT NULL,
  KEY `FK_1odmg2n3n487tvhuxx5oyyya2` (`message`),
  CONSTRAINT `FK_1odmg2n3n487tvhuxx5oyyya2` FOREIGN KEY (`message`) REFERENCES `message` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message_recipients`
--

LOCK TABLES `message_recipients` WRITE;
/*!40000 ALTER TABLE `message_recipients` DISABLE KEYS */;
/*!40000 ALTER TABLE `message_recipients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `panel`
--

DROP TABLE IF EXISTS `panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `panel` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `speakers` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `conference` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_g9jn8oaylcvixfdbmtesav3c3` (`conference`),
  CONSTRAINT `FK_g9jn8oaylcvixfdbmtesav3c3` FOREIGN KEY (`conference`) REFERENCES `conference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `panel`
--

LOCK TABLES `panel` WRITE;
/*!40000 ALTER TABLE `panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paper`
--

DROP TABLE IF EXISTS `paper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `paper` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `camera_ready` bit(1) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paper`
--

LOCK TABLES `paper` WRITE;
/*!40000 ALTER TABLE `paper` DISABLE KEYS */;
INSERT INTO `paper` VALUES (252,0,'http://www.google.com','Manoperros y Meji',_binary '\0','Se murio la yoni','La Yoni'),(253,0,'http://www.google.com','Doggie McDoge',_binary '\0','The frog ate the shark','The Frog and the Shark');
/*!40000 ALTER TABLE `paper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presentation`
--

DROP TABLE IF EXISTS `presentation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `presentation` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `speakers` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `conference` int(11) DEFAULT NULL,
  `submission` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_e9qf4qdrd5q4paa06xkv4q1by` (`submission`),
  KEY `FK_fu56gussuaw8r8865h3x4cvq0` (`conference`),
  CONSTRAINT `FK_e9qf4qdrd5q4paa06xkv4q1by` FOREIGN KEY (`submission`) REFERENCES `submission` (`id`),
  CONSTRAINT `FK_fu56gussuaw8r8865h3x4cvq0` FOREIGN KEY (`conference`) REFERENCES `conference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presentation`
--

LOCK TABLES `presentation` WRITE;
/*!40000 ALTER TABLE `presentation` DISABLE KEYS */;
/*!40000 ALTER TABLE `presentation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registration`
--

DROP TABLE IF EXISTS `registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `cvv` int(11) DEFAULT NULL,
  `expiration_month` int(11) DEFAULT NULL,
  `expiration_year` int(11) DEFAULT NULL,
  `holder` varchar(255) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `conference` int(11) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_lc3odbpd5lgo7qc3w33ugwafj` (`conference`),
  CONSTRAINT `FK_lc3odbpd5lgo7qc3w33ugwafj` FOREIGN KEY (`conference`) REFERENCES `conference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration`
--

LOCK TABLES `registration` WRITE;
/*!40000 ALTER TABLE `registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `decision` varchar(255) DEFAULT NULL,
  `originality_score` int(11) DEFAULT NULL,
  `quality_score` int(11) DEFAULT NULL,
  `readability_score` int(11) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `submission` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_a0lt5jqh9b7s1gw3q77nywxxn` (`submission`),
  CONSTRAINT `FK_a0lt5jqh9b7s1gw3q77nywxxn` FOREIGN KEY (`submission`) REFERENCES `submission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewer`
--

DROP TABLE IF EXISTS `reviewer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reviewer` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `user` int(11) NOT NULL,
  `expertise` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_axolrgrhrw2ofoplt20j41fm5` (`user`),
  CONSTRAINT `FK_axolrgrhrw2ofoplt20j41fm5` FOREIGN KEY (`user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewer`
--

LOCK TABLES `reviewer` WRITE;
/*!40000 ALTER TABLE `reviewer` DISABLE KEYS */;
INSERT INTO `reviewer` VALUES (180,0,'Address 3','reviewer1@mail.com','oo','moo','666666666','https://media.tenor.com/images/c094a7e701671534e78d802cc91b40b3/tenor.gif','oot',171,'woof'),(181,0,'Address 3','reviewer2@mail.com','Doesit','He','666666666','https://media.tenor.com/images/c094a7e701671534e78d802cc91b40b3/tenor.gif','Ferfree',172,'cleanup'),(182,0,'Address 3','reviewer2@mail.com',NULL,'Yanis','666666666','https://media.tenor.com/images/c094a7e701671534e78d802cc91b40b3/tenor.gif','Varoufakis',173,'destruction');
/*!40000 ALTER TABLE `reviewer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `section` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `pictures` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_config`
--

DROP TABLE IF EXISTS `site_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `site_config` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `banner_url` varchar(255) DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `welcome_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_config`
--

LOCK TABLES `site_config` WRITE;
/*!40000 ALTER TABLE `site_config` DISABLE KEYS */;
INSERT INTO `site_config` VALUES (183,0,'https://i.ibb.co/GVpZCtM/acme-conference.png',34,'Acme Conference','Welcome vro...');
/*!40000 ALTER TABLE `site_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_network`
--

DROP TABLE IF EXISTS `social_network`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_network` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_network`
--

LOCK TABLES `social_network` WRITE;
/*!40000 ALTER TABLE `social_network` DISABLE KEYS */;
INSERT INTO `social_network` VALUES (245,0,'https://image.flaticon.com/icons/png/512/33/33702.png','Facebook'),(246,0,'https://image.flaticon.com/icons/png/512/25/25684.png','VK');
/*!40000 ALTER TABLE `social_network` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_profile`
--

DROP TABLE IF EXISTS `social_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `social_profile` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `network` int(11) NOT NULL,
  `owner` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_28uedxmawuylvefmb9yf3c66r` (`network`),
  CONSTRAINT `FK_28uedxmawuylvefmb9yf3c66r` FOREIGN KEY (`network`) REFERENCES `social_network` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_profile`
--

LOCK TABLES `social_profile` WRITE;
/*!40000 ALTER TABLE `social_profile` DISABLE KEYS */;
INSERT INTO `social_profile` VALUES (247,0,'http://slither.io/',245,175);
/*!40000 ALTER TABLE `social_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission`
--

DROP TABLE IF EXISTS `submission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `submission` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `ticker` varchar(255) DEFAULT NULL,
  `camera_paper` int(11) DEFAULT NULL,
  `conference` int(11) DEFAULT NULL,
  `owner` int(11) DEFAULT NULL,
  `paper` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jmr900htx5g8ldv9qdhemib18` (`camera_paper`),
  KEY `FK_1vynnfw6cw1l40c8e342st672` (`conference`),
  KEY `FK_3osm3qjvt3r41xau9xwf5nkdt` (`paper`),
  CONSTRAINT `FK_1vynnfw6cw1l40c8e342st672` FOREIGN KEY (`conference`) REFERENCES `conference` (`id`),
  CONSTRAINT `FK_3osm3qjvt3r41xau9xwf5nkdt` FOREIGN KEY (`paper`) REFERENCES `paper` (`id`),
  CONSTRAINT `FK_jmr900htx5g8ldv9qdhemib18` FOREIGN KEY (`camera_paper`) REFERENCES `paper` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission`
--

LOCK TABLES `submission` WRITE;
/*!40000 ALTER TABLE `submission` DISABLE KEYS */;
INSERT INTO `submission` VALUES (251,0,'submission.pending','ABC-1234',252,248,177,253);
/*!40000 ALTER TABLE `submission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submission_reviewers`
--

DROP TABLE IF EXISTS `submission_reviewers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `submission_reviewers` (
  `submission` int(11) NOT NULL,
  `reviewers` int(11) NOT NULL,
  KEY `FK_rx31lgg0k67efoplhxv8len0c` (`reviewers`),
  KEY `FK_iwsj2ioiue7vmn5bnhxb2oatb` (`submission`),
  CONSTRAINT `FK_iwsj2ioiue7vmn5bnhxb2oatb` FOREIGN KEY (`submission`) REFERENCES `submission` (`id`),
  CONSTRAINT `FK_rx31lgg0k67efoplhxv8len0c` FOREIGN KEY (`reviewers`) REFERENCES `reviewer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submission_reviewers`
--

LOCK TABLES `submission_reviewers` WRITE;
/*!40000 ALTER TABLE `submission_reviewers` DISABLE KEYS */;
INSERT INTO `submission_reviewers` VALUES (251,181);
/*!40000 ALTER TABLE `submission_reviewers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `spanish` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c5viuo4hbs2v5lqy4ns4jlb6x` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topic`
--

LOCK TABLES `topic` WRITE;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` VALUES (240,0,'INVESTIGACION','INQUIRY'),(241,0,'REFUTACION','REBUTTAL'),(242,0,'REGISTRO','REGISTRATION'),(243,0,'TEMAS','TOPICS'),(244,0,'OTRO','OTHER');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial`
--

DROP TABLE IF EXISTS `tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tutorial` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `speakers` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `conference` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_gd8wor872gtoqt1siaw2k4din` (`conference`),
  CONSTRAINT `FK_gd8wor872gtoqt1siaw2k4din` FOREIGN KEY (`conference`) REFERENCES `conference` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial_sections`
--

DROP TABLE IF EXISTS `tutorial_sections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tutorial_sections` (
  `tutorial` int(11) NOT NULL,
  `sections` int(11) NOT NULL,
  KEY `FK_fam9vwtnrx0m7vmnqngwoekdo` (`sections`),
  KEY `FK_8sl8cpfc93exnk3nv9a6okamu` (`tutorial`),
  CONSTRAINT `FK_8sl8cpfc93exnk3nv9a6okamu` FOREIGN KEY (`tutorial`) REFERENCES `tutorial` (`id`),
  CONSTRAINT `FK_fam9vwtnrx0m7vmnqngwoekdo` FOREIGN KEY (`sections`) REFERENCES `section` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial_sections`
--

LOCK TABLES `tutorial_sections` WRITE;
/*!40000 ALTER TABLE `tutorial_sections` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorial_sections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (167,0,'5d93ceb70e2bf5daa84ec3d0cd2c731a','admin1'),(168,0,'5d93ceb70e2bf5daa84ec3d0cd2c731a','author1'),(169,0,'5d93ceb70e2bf5daa84ec3d0cd2c731a','author2'),(170,0,'5d93ceb70e2bf5daa84ec3d0cd2c731a','author3'),(171,0,'5d93ceb70e2bf5daa84ec3d0cd2c731a','reviewer1'),(172,0,'5d93ceb70e2bf5daa84ec3d0cd2c731a','reviewer2'),(173,0,'5d93ceb70e2bf5daa84ec3d0cd2c731a','reviewer3'),(174,0,'5d93ceb70e2bf5daa84ec3d0cd2c731a','admin2');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_authorities`
--

DROP TABLE IF EXISTS `user_authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user_authorities` (
  `user` int(11) NOT NULL,
  `authority` varchar(255) DEFAULT NULL,
  KEY `FK_p1ht56kktala9s1paow6fccma` (`user`),
  CONSTRAINT `FK_p1ht56kktala9s1paow6fccma` FOREIGN KEY (`user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_authorities`
--

LOCK TABLES `user_authorities` WRITE;
/*!40000 ALTER TABLE `user_authorities` DISABLE KEYS */;
INSERT INTO `user_authorities` VALUES (167,'ADMIN'),(168,'AUTHOR'),(169,'AUTHOR'),(170,'AUTHOR'),(171,'REVIEWER'),(172,'REVIEWER'),(173,'REVIEWER'),(174,'REVIEWER');
/*!40000 ALTER TABLE `user_authorities` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-05 11:07:57
