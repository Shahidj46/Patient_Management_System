CREATE DATABASE  IF NOT EXISTS `pms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `pms`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: pms
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `adddoctor`
--

DROP TABLE IF EXISTS `adddoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adddoctor` (
  `doctorId` int NOT NULL,
  `doctorName` varchar(45) DEFAULT NULL,
  `doctorGender` varchar(45) DEFAULT NULL,
  `doctorDepartment` varchar(45) DEFAULT NULL,
  `doctorEmail` varchar(45) DEFAULT NULL,
  `doctorUserName` varchar(45) DEFAULT NULL,
  `doctorPassword` varchar(45) DEFAULT NULL,
  `doctorJoin` date DEFAULT NULL,
  `doctorImage` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`doctorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adddoctor`
--

LOCK TABLES `adddoctor` WRITE;
/*!40000 ALTER TABLE `adddoctor` DISABLE KEYS */;
INSERT INTO `adddoctor` VALUES (701,'Shohidul','Male','Oncology','r@gmail.com','doctor','123','2021-12-02','/images/doctor/s.jpg'),(702,'Rizvi','Male','Orthopedics','t@gmail.ocm','doctor','123','2021-11-09','/images/doctor/r.jpg'),(703,'Dill','Female','Cardiology','m@gmail.com','munni','123','2021-11-17','/images/doctor/d.jpg'),(704,'Parvez','Male','Cardiology','r@gmail.com','dfd','123','2021-11-10','/images/doctor/p.jpg'),(705,'Shamim','Male','Dental','s@gmail.com','smim','123','2021-05-09','/images/doctor/sa.jpg');
/*!40000 ALTER TABLE `adddoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addmedicine`
--

DROP TABLE IF EXISTS `addmedicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addmedicine` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addmedicine`
--

LOCK TABLES `addmedicine` WRITE;
/*!40000 ALTER TABLE `addmedicine` DISABLE KEYS */;
INSERT INTO `addmedicine` VALUES (101,'Napa',2);
/*!40000 ALTER TABLE `addmedicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addpatient`
--

DROP TABLE IF EXISTS `addpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addpatient` (
  `patientId` varchar(45) NOT NULL,
  `patientName` varchar(45) DEFAULT NULL,
  `patientAddress` varchar(45) DEFAULT NULL,
  `patientMobile` varchar(45) DEFAULT NULL,
  `patientAge` varchar(45) DEFAULT NULL,
  `patientDisease` varchar(45) DEFAULT NULL,
  `referenceDoctor` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `admittedDate` date DEFAULT NULL,
  PRIMARY KEY (`patientId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addpatient`
--

LOCK TABLES `addpatient` WRITE;
/*!40000 ALTER TABLE `addpatient` DISABLE KEYS */;
INSERT INTO `addpatient` VALUES ('5201','Habib','Khulna','01254565245','21','Fever','Shamim','Orthoprdic','2021-11-17'),('5202','Rasel','Baddaa','01478545554','25','Canceer','Shamim','Orthoprdic','2022-07-21'),('5203','Munni','Dhaka','0145875445','11','Canceer','Shamim','Orthoprdic','2021-11-03'),('5204','Shohidul','Natore','01525263561','34','Cynocrigy','Shamim','Orthoprdic','2021-12-15'),('5205','Rumpa','Dhaka','01454785965','21','Fever','Parvez','Urology','2021-12-23');
/*!40000 ALTER TABLE `addpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appoinment`
--

DROP TABLE IF EXISTS `appoinment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appoinment` (
  `appoinmentId` int NOT NULL,
  `patientName` varchar(45) DEFAULT NULL,
  `patientAge` varchar(45) DEFAULT NULL,
  `patientPhone` varchar(45) DEFAULT NULL,
  `doctorName` varchar(45) DEFAULT NULL,
  `doctorEmail` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'no',
  PRIMARY KEY (`appoinmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appoinment`
--

LOCK TABLES `appoinment` WRITE;
/*!40000 ALTER TABLE `appoinment` DISABLE KEYS */;
INSERT INTO `appoinment` VALUES (5001,'Shohidul','40','01515262157','Shohidul','shohiduljnu419@gmail.com','Medicology','2021-11-02','02:06','no'),(5002,'Rumpa','35','0132564855','Shamim','s@gmail.com','Orthoprdic','2021-08-18','10:45','yes'),(5003,'Habib','25','01254547855','Shamim','s@gmail.com','Orthoprdic','2021-11-10','19:45','no'),(5004,'Habib','25','01525252525','Shamim','s@gmail.com','Orthoprdic','2021-06-22','13:05','yes'),(5005,'Rasel','11','0145874585','Shamim','s@gmail.com','Orthoprdic','2021-12-05','03:07','yes'),(5006,'Munni','40','0147859655','Parvez','p@gmail.com','Sexual Health','2021-05-18','16:08','yes'),(5007,'Tapu','54','0125458585','Shohidul','s@gmail.com','Medicology','2020-04-19','14:01','no'),(5008,'Rajon','16','0124552554','Shamim','r@gmail.com','Orthopedic','2020-02-20','08:30','yes');
/*!40000 ALTER TABLE `appoinment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covid`
--

DROP TABLE IF EXISTS `covid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `covid` (
  `covidId` int NOT NULL AUTO_INCREMENT,
  `covidName` varchar(45) DEFAULT NULL,
  `covidEmail` varchar(45) DEFAULT NULL,
  `covidPhone` varchar(45) DEFAULT NULL,
  `covidDate` date DEFAULT NULL,
  `covidMessage` varchar(45) DEFAULT NULL,
  `covidStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`covidId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covid`
--

LOCK TABLES `covid` WRITE;
/*!40000 ALTER TABLE `covid` DISABLE KEYS */;
INSERT INTO `covid` VALUES (23,'Parvez','p@gmail.com','0125485967','2021-11-12','Covid-Test','yes'),(24,'Rizvi','r@gmail.com','012565895','2021-11-11','sdfsafsdfaf','yes'),(28,'Maharam','m@gmail.com','01985474856','2021-12-22','Covid test','no'),(29,'Nipa','n@gmail.com','012458554','2021-12-15','Covid test','yes'),(30,'Rita','r@gmail.com','0124587555','2021-12-15','Covid test','yes'),(31,'Rasel','r@gmail.com','0125478555','2021-12-02','Covid test','yes'),(32,'Nishat ','n@gmail.com','0145858584','2021-07-14','Covid test','yes');
/*!40000 ALTER TABLE `covid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `covidtest`
--

DROP TABLE IF EXISTS `covidtest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `covidtest` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  `fee` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `covidtest`
--

LOCK TABLES `covidtest` WRITE;
/*!40000 ALTER TABLE `covidtest` DISABLE KEYS */;
INSERT INTO `covidtest` VALUES (23,'Parvez','0125485967','2021-11-08','Positive','500'),(25,'Munni','01245789554','2021-11-03','Positive','500'),(26,'Imran','0198547859','2021-11-10','Positive','500'),(27,'Monia','01985475624','2021-11-10','Positive','500'),(29,'Nipa','012458554','2021-11-30','Positive','500'),(30,'Rita','0124587555','2021-12-07','Positive','500'),(31,'Rasel','0125478555','2021-11-30','Positive','500');
/*!40000 ALTER TABLE `covidtest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `departmentId` int NOT NULL,
  `departmentName` varchar(45) DEFAULT NULL,
  `departmentStatus` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (5661,'Urology','Active'),(5662,'Canceer','Active'),(5663,'Orthoprdic','Active'),(5664,'Urology','Active'),(5669,'Sexual Health','Active');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoice` (
  `invoiceId` int NOT NULL,
  `patientName` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `referenceDoctor` varchar(45) DEFAULT NULL,
  `billingAddress` varchar(45) DEFAULT NULL,
  `invoiceDate` date DEFAULT NULL,
  `bedCharge` varchar(45) DEFAULT NULL,
  `medecineCharge` varchar(45) DEFAULT NULL,
  `pathologyCharge` varchar(45) DEFAULT NULL,
  `subTotal` varchar(45) DEFAULT NULL,
  `discount` varchar(45) DEFAULT NULL,
  `grandTotal` varchar(45) DEFAULT NULL,
  `paymentMethod` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`invoiceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoice`
--

LOCK TABLES `invoice` WRITE;
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` VALUES (6005,'Habib','21','01254565245','Khulna','Shamim','dhaka','2021-02-01','31000','7390','25750','64140','10','57726','Bkash'),(6006,'Munni','11','0145875445','Dhaka','Shamim','khulna','2021-01-02','24370','8000','31980','64350','12','56628','Nagad'),(6007,'Munni','11','0145875445','Dhaka','Shamim','dhaka','2021-12-06','500','500','500','1500','10','1350','Nagad'),(6008,'Munni','11','0145875445','Dhaka','Shamim','dhkaa','2021-12-14','500','500','500','1500','10','1350','Bkash'),(6009,'Munni','11','0145875445','Dhaka','Shamim','dhaka','2021-12-07','500','700','800','2000','10','1800','Nagad'),(6010,'Habib','21','01254565245','Khulna','Shamim','dhaka','2021-12-01','500','500','500','1500','10','1350','Bkash'),(6011,'Munni','11','0145875445','Dhaka','Shamim','dhaka','2021-12-08','500','500','500','1500','20','1200','Nagad');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginadmin`
--

DROP TABLE IF EXISTS `loginadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginadmin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginadmin`
--

LOCK TABLES `loginadmin` WRITE;
/*!40000 ALTER TABLE `loginadmin` DISABLE KEYS */;
INSERT INTO `loginadmin` VALUES (101,'admin','s@gmail.com','123');
/*!40000 ALTER TABLE `loginadmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logindoctor`
--

DROP TABLE IF EXISTS `logindoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logindoctor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logindoctor`
--

LOCK TABLES `logindoctor` WRITE;
/*!40000 ALTER TABLE `logindoctor` DISABLE KEYS */;
INSERT INTO `logindoctor` VALUES (201,'Doctor','t@gmail.com','123','/images/userpic/s.jpg');
/*!40000 ALTER TABLE `logindoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginfarmacy`
--

DROP TABLE IF EXISTS `loginfarmacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginfarmacy` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginfarmacy`
--

LOCK TABLES `loginfarmacy` WRITE;
/*!40000 ALTER TABLE `loginfarmacy` DISABLE KEYS */;
INSERT INTO `loginfarmacy` VALUES (101,'f','123');
/*!40000 ALTER TABLE `loginfarmacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginpathology`
--

DROP TABLE IF EXISTS `loginpathology`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginpathology` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginpathology`
--

LOCK TABLES `loginpathology` WRITE;
/*!40000 ALTER TABLE `loginpathology` DISABLE KEYS */;
INSERT INTO `loginpathology` VALUES (101,'p','p@gmail.com','123');
/*!40000 ALTER TABLE `loginpathology` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginpatient`
--

DROP TABLE IF EXISTS `loginpatient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginpatient` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginpatient`
--

LOCK TABLES `loginpatient` WRITE;
/*!40000 ALTER TABLE `loginpatient` DISABLE KEYS */;
INSERT INTO `loginpatient` VALUES (101,'pa','123');
/*!40000 ALTER TABLE `loginpatient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loginreciption`
--

DROP TABLE IF EXISTS `loginreciption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loginreciption` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loginreciption`
--

LOCK TABLES `loginreciption` WRITE;
/*!40000 ALTER TABLE `loginreciption` DISABLE KEYS */;
INSERT INTO `loginreciption` VALUES (101,'rec','123');
/*!40000 ALTER TABLE `loginreciption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescription`
--

DROP TABLE IF EXISTS `prescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription` (
  `prescriptionId` int NOT NULL,
  `patientName` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `pathology1` varchar(45) DEFAULT 'none',
  `medecine1` varchar(45) DEFAULT 'none',
  `M` varchar(45) DEFAULT 'o',
  `A` varchar(45) DEFAULT 'o',
  `N` varchar(45) DEFAULT 'o',
  `pathology2` varchar(45) DEFAULT 'none',
  `medecine2` varchar(45) DEFAULT 'none',
  `M1` varchar(45) DEFAULT 'o',
  `A1` varchar(45) DEFAULT 'o',
  `N1` varchar(45) DEFAULT 'o',
  `doctorName` varchar(45) DEFAULT 'none',
  PRIMARY KEY (`prescriptionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES (5609,'Rumpa','35','2021-11-09','Sugar ','Rapid X',NULL,'A','N','MRI','Alcoli','M',NULL,NULL,'tapu'),(5610,'Rasel','25','2021-12-14','Xray','Napa',NULL,'A','N','Blood','Alcoli','M',NULL,NULL,'Shamim'),(5611,'Rasel','25','2021-12-09','Xray','Napa','M',NULL,NULL,'Blood','Alcoliy',NULL,'A',NULL,'Shamim'),(5612,'Habib','21','2021-12-13','Xray','Napa','M','A','N','Blood','Alcoli',NULL,'A',NULL,'Shamim'),(5613,'Rasel','11','2021-12-14','Xray','Napa','M',NULL,'N','Blood','Alcoli',NULL,'A',NULL,'Shamim'),(5614,'Rumpa','35','2021-12-09','Xray','Napa','M',NULL,'N','Blood','Alcoliy','M','A',NULL,'Shamim');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptholgy`
--

DROP TABLE IF EXISTS `ptholgy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ptholgy` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `descripton` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptholgy`
--

LOCK TABLES `ptholgy` WRITE;
/*!40000 ALTER TABLE `ptholgy` DISABLE KEYS */;
INSERT INTO `ptholgy` VALUES (5001,'XRy','Xray is a complecate gamaRoxmy '),(5002,'Blood','Xray is a complecate gamaRoxmy ');
/*!40000 ALTER TABLE `ptholgy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-03 22:51:10
