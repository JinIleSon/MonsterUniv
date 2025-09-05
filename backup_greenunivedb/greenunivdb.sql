aa_courregaa_courreg-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: greenunivdb
-- ------------------------------------------------------
-- Server version	8.4.6

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
-- Table structure for table `aa_courreg`
--

USE `greendae3`;

DROP TABLE IF EXISTS `aa_courreg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aa_courreg` (
  `department` varchar(300) NOT NULL,
  `grade` varchar(300) NOT NULL,
  `targetdepartment` varchar(500) NOT NULL,
  PRIMARY KEY (`department`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aa_courreg`
--

LOCK TABLES `aa_courreg` WRITE;
/*!40000 ALTER TABLE `aa_courreg` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_courreg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aa_faq`
--

DROP TABLE IF EXISTS `aa_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aa_faq` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(500) NOT NULL,
  `answer` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aa_faq`
--

LOCK TABLES `aa_faq` WRITE;
/*!40000 ALTER TABLE `aa_faq` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aa_grad_comp`
--

DROP TABLE IF EXISTS `aa_grad_comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aa_grad_comp` (
  `sep` varchar(50) NOT NULL,
  `gradesum` int NOT NULL,
  `freshmen` int NOT NULL,
  `sophomore` int NOT NULL,
  `third` int NOT NULL,
  `fourth` int NOT NULL,
  PRIMARY KEY (`sep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aa_grad_comp`
--

LOCK TABLES `aa_grad_comp` WRITE;
/*!40000 ALTER TABLE `aa_grad_comp` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_grad_comp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aa_grad_grad`
--

DROP TABLE IF EXISTS `aa_grad_grad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aa_grad_grad` (
  `sep` varchar(50) NOT NULL,
  `gradesum` int NOT NULL,
  `plurality` int NOT NULL,
  `single` int NOT NULL,
  `minor` varchar(100) NOT NULL,
  PRIMARY KEY (`sep`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aa_grad_grad`
--

LOCK TABLES `aa_grad_grad` WRITE;
/*!40000 ALTER TABLE `aa_grad_grad` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_grad_grad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aa_grades`
--

DROP TABLE IF EXISTS `aa_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aa_grades` (
  `rating` varchar(50) NOT NULL,
  `grade` decimal(10,2) NOT NULL,
  `percentilerank` int NOT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aa_grades`
--

LOCK TABLES `aa_grades` WRITE;
/*!40000 ALTER TABLE `aa_grades` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aa_notice`
--

DROP TABLE IF EXISTS `aa_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aa_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_aa_notice_nickname` (`nickname`),
  CONSTRAINT `fk_aa_notice_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aa_notice`
--

LOCK TABLES `aa_notice` WRITE;
/*!40000 ALTER TABLE `aa_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aa_schedules`
--

DROP TABLE IF EXISTS `aa_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aa_schedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(200) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_aa_schedules_nickname` (`nickname`),
  CONSTRAINT `fk_aa_schedules_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aa_schedules`
--

LOCK TABLES `aa_schedules` WRITE;
/*!40000 ALTER TABLE `aa_schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `aa_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adm_counsel`
--

DROP TABLE IF EXISTS `adm_counsel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_counsel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classify` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `condition` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_adm_counsel_nickname` (`nickname`),
  CONSTRAINT `fk_adm_counsel_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_counsel`
--

LOCK TABLES `adm_counsel` WRITE;
/*!40000 ALTER TABLE `adm_counsel` DISABLE KEYS */;
/*!40000 ALTER TABLE `adm_counsel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adm_notice`
--

DROP TABLE IF EXISTS `adm_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_adm_notice_nickname` (`nickname`),
  CONSTRAINT `fk_adm_notice_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_notice`
--

LOCK TABLES `adm_notice` WRITE;
/*!40000 ALTER TABLE `adm_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `adm_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_gallery`
--

DROP TABLE IF EXISTS `cl_gallery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cl_gallery` (
  `imageroute` varchar(768) NOT NULL,
  `title` varchar(100) NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  `where` varchar(50) NOT NULL,
  `regdate` datetime NOT NULL,
  PRIMARY KEY (`imageroute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_gallery`
--

LOCK TABLES `cl_gallery` WRITE;
/*!40000 ALTER TABLE `cl_gallery` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_gallery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cl_menuguide`
--

DROP TABLE IF EXISTS `cl_menuguide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cl_menuguide` (
  `date` date NOT NULL,
  `price` varchar(50) NOT NULL,
  `rice` varchar(50) DEFAULT NULL,
  `soup` varchar(50) DEFAULT NULL,
  `side1` varchar(50) DEFAULT NULL,
  `side2` varchar(50) DEFAULT NULL,
  `side3` varchar(50) DEFAULT NULL,
  `side4` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cl_menuguide`
--

LOCK TABLES `cl_menuguide` WRITE;
/*!40000 ALTER TABLE `cl_menuguide` DISABLE KEYS */;
/*!40000 ALTER TABLE `cl_menuguide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `college`
--

DROP TABLE IF EXISTS `college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `college` (
  `major` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `note` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`major`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `college`
--

LOCK TABLES `college` WRITE;
/*!40000 ALTER TABLE `college` DISABLE KEYS */;
/*!40000 ALTER TABLE `college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commu_anno`
--

DROP TABLE IF EXISTS `commu_anno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commu_anno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_commu_anno_nickname` (`nickname`),
  CONSTRAINT `fk_commu_anno_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commu_anno`
--

LOCK TABLES `commu_anno` WRITE;
/*!40000 ALTER TABLE `commu_anno` DISABLE KEYS */;
/*!40000 ALTER TABLE `commu_anno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commu_emp`
--

DROP TABLE IF EXISTS `commu_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commu_emp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `condition` varchar(100) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_commu_emp_nickname` (`nickname`),
  CONSTRAINT `fk_commu_emp_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commu_emp`
--

LOCK TABLES `commu_emp` WRITE;
/*!40000 ALTER TABLE `commu_emp` DISABLE KEYS */;
/*!40000 ALTER TABLE `commu_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commu_free`
--

DROP TABLE IF EXISTS `commu_free`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commu_free` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_commu_free_nickname` (`nickname`),
  CONSTRAINT `fk_commu_free_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commu_free`
--

LOCK TABLES `commu_free` WRITE;
/*!40000 ALTER TABLE `commu_free` DISABLE KEYS */;
/*!40000 ALTER TABLE `commu_free` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commu_news`
--

DROP TABLE IF EXISTS `commu_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commu_news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `classify` varchar(100) NOT NULL,
  `title` varchar(200) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_commu_news_nickname` (`nickname`),
  CONSTRAINT `fk_commu_news_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commu_news`
--

LOCK TABLES `commu_news` WRITE;
/*!40000 ALTER TABLE `commu_news` DISABLE KEYS */;
/*!40000 ALTER TABLE `commu_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commu_qna`
--

DROP TABLE IF EXISTS `commu_qna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commu_qna` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `condition` varchar(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_commu_qna_nickname` (`nickname`),
  CONSTRAINT `fk_commu_qna_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commu_qna`
--

LOCK TABLES `commu_qna` WRITE;
/*!40000 ALTER TABLE `commu_qna` DISABLE KEYS */;
/*!40000 ALTER TABLE `commu_qna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commu_refer`
--

DROP TABLE IF EXISTS `commu_refer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commu_refer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `nickname` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `hits` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_commu_refer_nickname` (`nickname`),
  CONSTRAINT `fk_commu_refer_user` FOREIGN KEY (`nickname`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commu_refer`
--

LOCK TABLES `commu_refer` WRITE;
/*!40000 ALTER TABLE `commu_refer` DISABLE KEYS */;
/*!40000 ALTER TABLE `commu_refer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_acadaffairs`
--

DROP TABLE IF EXISTS `main_acadaffairs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_acadaffairs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identification` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_main_aa_identification` (`identification`),
  CONSTRAINT `fk_main_aa_user` FOREIGN KEY (`identification`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_acadaffairs`
--

LOCK TABLES `main_acadaffairs` WRITE;
/*!40000 ALTER TABLE `main_acadaffairs` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_acadaffairs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_notice`
--

DROP TABLE IF EXISTS `main_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_notice` (
  `id` int NOT NULL AUTO_INCREMENT,
  `identification` varchar(200) NOT NULL,
  `title` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_main_notice_identification` (`identification`),
  CONSTRAINT `fk_main_notice_user` FOREIGN KEY (`identification`) REFERENCES `user` (`identification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_notice`
--

LOCK TABLES `main_notice` WRITE;
/*!40000 ALTER TABLE `main_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `main_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_curriculum`
--

DROP TABLE IF EXISTS `sa_curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_curriculum` (
  `code` varchar(100) NOT NULL,
  `year` int NOT NULL,
  `completiondivision` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `grade` int NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `sa_curriculum__un` (`code`,`year`,`subject`,`grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_curriculum`
--

LOCK TABLES `sa_curriculum` WRITE;
/*!40000 ALTER TABLE `sa_curriculum` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_details`
--

DROP TABLE IF EXISTS `sa_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_details` (
  `code` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `year` int NOT NULL,
  `professor` varchar(100) NOT NULL,
  `grade` int NOT NULL,
  `classify` varchar(50) NOT NULL,
  `time` varchar(100) NOT NULL,
  `where` varchar(100) NOT NULL,
  PRIMARY KEY (`code`),
  UNIQUE KEY `sa_details__un` (`code`,`subject`,`year`,`professor`,`classify`,`grade`),
  KEY `idx_sa_details_curriculum` (`code`,`year`,`subject`,`grade`),
  KEY `idx_sa_details_reg` (`classify`,`professor`),
  CONSTRAINT `fk_sa_details_curriculum` FOREIGN KEY (`code`, `year`, `subject`, `grade`) REFERENCES `sa_curriculum` (`code`, `year`, `subject`, `grade`),
  CONSTRAINT `fk_sa_details_reg` FOREIGN KEY (`classify`, `professor`) REFERENCES `sa_reg` (`classify`, `professor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_details`
--

LOCK TABLES `sa_details` WRITE;
/*!40000 ALTER TABLE `sa_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_grade`
--

DROP TABLE IF EXISTS `sa_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_grade` (
  `code` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `year` int NOT NULL,
  `professor` varchar(100) NOT NULL,
  `classify` varchar(100) NOT NULL,
  `score` decimal(10,2) NOT NULL,
  `grade` int NOT NULL,
  PRIMARY KEY (`code`),
  KEY `idx_sa_grade_details` (`code`,`subject`,`year`,`professor`,`classify`,`grade`),
  CONSTRAINT `fk_sa_grade_details` FOREIGN KEY (`code`, `subject`, `year`, `professor`, `classify`, `grade`) REFERENCES `sa_details` (`code`, `subject`, `year`, `professor`, `classify`, `grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_grade`
--

LOCK TABLES `sa_grade` WRITE;
/*!40000 ALTER TABLE `sa_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_record_grade`
--

DROP TABLE IF EXISTS `sa_record_grade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_record_grade` (
  `collegenum` int NOT NULL,
  `major` int NOT NULL,
  `refinement` int NOT NULL,
  `select` int NOT NULL,
  `social` int NOT NULL,
  `others` int NOT NULL,
  `requirement` int NOT NULL,
  PRIMARY KEY (`collegenum`),
  CONSTRAINT `fk_sa_record_grade_info` FOREIGN KEY (`collegenum`) REFERENCES `sa_record_info` (`collegenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_record_grade`
--

LOCK TABLES `sa_record_grade` WRITE;
/*!40000 ALTER TABLE `sa_record_grade` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_record_grade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_record_info`
--

DROP TABLE IF EXISTS `sa_record_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_record_info` (
  `collegenum` int NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `year` int NOT NULL,
  `term` int NOT NULL,
  `department` varchar(100) NOT NULL,
  `resinum` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `condition` varchar(10) NOT NULL,
  PRIMARY KEY (`collegenum`),
  KEY `idx_sa_record_info_user_triplet` (`nickname`,`phone`,`email`),
  CONSTRAINT `fk_sa_record_info_user_triplet` FOREIGN KEY (`nickname`, `phone`, `email`) REFERENCES `user` (`nickname`, `phone`, `email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_record_info`
--

LOCK TABLES `sa_record_info` WRITE;
/*!40000 ALTER TABLE `sa_record_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_record_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_record_year`
--

DROP TABLE IF EXISTS `sa_record_year`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_record_year` (
  `collegenum` int NOT NULL,
  `year` int NOT NULL,
  `grade` int NOT NULL,
  `term` int NOT NULL,
  `request` int DEFAULT NULL,
  `major` int NOT NULL,
  `select` int NOT NULL,
  `others` int NOT NULL,
  `avg` decimal(10,2) NOT NULL,
  `comment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`year`,`grade`,`term`,`collegenum`),
  KEY `idx_sa_record_year_collegenum` (`collegenum`),
  CONSTRAINT `fk_sa_record_year_info` FOREIGN KEY (`collegenum`) REFERENCES `sa_record_info` (`collegenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_record_year`
--

LOCK TABLES `sa_record_year` WRITE;
/*!40000 ALTER TABLE `sa_record_year` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_record_year` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sa_reg`
--

DROP TABLE IF EXISTS `sa_reg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sa_reg` (
  `major` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `classify` varchar(50) NOT NULL,
  `year` int NOT NULL,
  `subject` varchar(100) NOT NULL,
  `grade` int NOT NULL,
  `professor` varchar(100) NOT NULL,
  `numofpeople` int NOT NULL,
  `note` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`major`,`code`),
  UNIQUE KEY `sa_reg__un` (`classify`,`professor`),
  KEY `idx_sa_reg_curriculum` (`code`,`year`,`subject`,`grade`),
  KEY `idx_sa_reg_college` (`major`),
  CONSTRAINT `fk_sa_reg_college` FOREIGN KEY (`major`) REFERENCES `college` (`major`),
  CONSTRAINT `fk_sa_reg_curriculum` FOREIGN KEY (`code`, `year`, `subject`, `grade`) REFERENCES `sa_curriculum` (`code`, `year`, `subject`, `grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sa_reg`
--

LOCK TABLES `sa_reg` WRITE;
/*!40000 ALTER TABLE `sa_reg` DISABLE KEYS */;
/*!40000 ALTER TABLE `sa_reg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `identification` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`identification`),
  UNIQUE KEY `user__un` (`nickname`,`phone`,`email`),
  UNIQUE KEY `user__un_nickname` (`nickname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULgreendae3TS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-01 11:42:17
