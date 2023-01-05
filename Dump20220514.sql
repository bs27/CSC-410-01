CREATE DATABASE  IF NOT EXISTS `commandopos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `commandopos`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: commandopos
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `delivery_type`
--

DROP TABLE IF EXISTS `delivery_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_type` (
  `delivery_type_id` int NOT NULL AUTO_INCREMENT,
  `delivery_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`delivery_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_type`
--

LOCK TABLES `delivery_type` WRITE;
/*!40000 ALTER TABLE `delivery_type` DISABLE KEYS */;
INSERT INTO `delivery_type` VALUES (1,'in-store'),(2,'drive-thru'),(3,'takeout');
/*!40000 ALTER TABLE `delivery_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_list`
--

DROP TABLE IF EXISTS `employee_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_list` (
  `employee_list_id` int NOT NULL AUTO_INCREMENT,
  `employee_first_name` varchar(45) DEFAULT NULL,
  `employee_last_name` varchar(45) DEFAULT NULL,
  `employee_role_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_list`
--

LOCK TABLES `employee_list` WRITE;
/*!40000 ALTER TABLE `employee_list` DISABLE KEYS */;
INSERT INTO `employee_list` VALUES (1,'Anita','Beer',1),(2,'B','O\'Problem',2),(3,'Hugh','Jas',3),(4,'Ivanna','Tinkle',4),(5,'Doug','Dimadome',5),(6,'Justin','Kase',6),(7,'Will','Power',7),(8,'Yura','Winer',8),(9,'Pepper','Jack',2);
/*!40000 ALTER TABLE `employee_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_type`
--

DROP TABLE IF EXISTS `employee_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_type` (
  `employee_type_id` int NOT NULL AUTO_INCREMENT,
  `employee_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`employee_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_type`
--

LOCK TABLES `employee_type` WRITE;
/*!40000 ALTER TABLE `employee_type` DISABLE KEYS */;
INSERT INTO `employee_type` VALUES (1,'Manager'),(2,'Server'),(3,'Line Cook'),(4,'Janitor'),(5,'Drive-Thru Operator'),(6,'Head Chef'),(7,'Busser'),(8,'Dishwasher');
/*!40000 ALTER TABLE `employee_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_item`
--

DROP TABLE IF EXISTS `menu_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_item` (
  `menu_item_id` int NOT NULL AUTO_INCREMENT,
  `menu_item` varchar(45) DEFAULT NULL,
  `base_price` double DEFAULT NULL,
  `half_price` double DEFAULT NULL,
  `free_price` double DEFAULT NULL,
  `menu_type_ref` int DEFAULT NULL,
  `service_type_ref` int DEFAULT NULL,
  `isOption` tinyint(1) DEFAULT NULL,
  `menu_item_unique_item_id` varchar(45) DEFAULT NULL,
  `tax_ref` int DEFAULT NULL,
  PRIMARY KEY (`menu_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_item`
--

LOCK TABLES `menu_item` WRITE;
/*!40000 ALTER TABLE `menu_item` DISABLE KEYS */;
INSERT INTO `menu_item` VALUES (1,'Fresh Orange Juice(12 oz)-Base',5,2.5,0,1,4,0,'1',2),(2,'Fresh Orange Juice(12 oz)-Strained',5,2.5,0,1,4,1,'1',2),(3,'Fountain Drink(16 oz)-Base',3,1.5,0,4,4,0,'2',2),(4,'Single Burger-Base',5,2.5,0,4,2,0,'3',2),(5,'Single Burger-with Cheese',5.5,2.75,0,4,2,1,'3',2),(6,'Fries-Regular',3,1.5,0,4,3,0,'4',2),(7,'Fries-Extra Salt',3,1.5,0,4,3,1,'4',2),(8,'Benmaster Brewed Beer-16 oz',6,3,0,3,1,0,'5',1),(9,'Strawberry Lemonade(16 oz)',4,2,0,2,4,0,'6',2),(10,'Hashbrowns',2.5,1.25,0,1,3,0,'7',2),(11,'Single Burger-No Bun',5,2.5,0,4,2,1,'3',2),(12,'Chicken and Waffle Sandwitch-Classic',6,3,0,1,2,0,'8',2),(13,'Chicken and Waffle Sandwitch-With Syrup',6.5,3.25,0,1,2,1,'8',2);
/*!40000 ALTER TABLE `menu_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_type`
--

DROP TABLE IF EXISTS `menu_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu_type` (
  `menu_type_id` int NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`menu_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_type`
--

LOCK TABLES `menu_type` WRITE;
/*!40000 ALTER TABLE `menu_type` DISABLE KEYS */;
INSERT INTO `menu_type` VALUES (1,'breakfast'),(2,'lunch'),(3,'dinner'),(4,'all-day');
/*!40000 ALTER TABLE `menu_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `status_type_ref` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `delivery_type_ref` int DEFAULT NULL,
  `tablenum` int DEFAULT NULL,
  `server_ref` int DEFAULT NULL,
  `time` time DEFAULT NULL,
  `tip_ref` int DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,1,'2022-12-31',1,3,2,'09:10:00',3),(2,1,'2022-12-31',2,0,5,'09:15:00',0),(3,1,'2022-12-31',3,1,0,'10:30:34',0),(4,1,'2022-12-31',1,2,9,'11:18:45',2),(5,2,'2022-12-31',2,0,5,'11:55:07',0),(6,2,'2022-12-31',3,1,0,'23:00:01',0),(7,3,'2022-12-31',1,4,2,'23:01:00',3),(8,3,'2022-12-31',2,0,5,'23:02:00',0),(9,3,'2022-12-31',1,5,9,'23:04:00',3),(10,3,'2022-12-31',1,6,9,'23:05:00',2);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `order_item_id` int NOT NULL AUTO_INCREMENT,
  `menu_item_ref` int DEFAULT NULL,
  `order_ref` int DEFAULT NULL,
  `price_type_ref` int DEFAULT NULL,
  `tender_type_ref` int DEFAULT NULL,
  PRIMARY KEY (`order_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,12,1,1,1),(2,10,1,1,1),(3,1,1,1,1),(4,7,2,1,2),(5,4,2,1,2),(6,3,3,1,2),(7,4,4,1,2),(8,3,4,1,1),(9,4,4,1,1),(10,11,5,1,1),(11,3,5,1,2),(12,3,6,1,1),(13,4,6,1,2),(14,7,6,3,3),(15,7,7,1,2),(16,3,7,1,1),(17,8,8,1,2),(18,8,9,2,1),(19,8,10,2,2);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_type`
--

DROP TABLE IF EXISTS `price_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_type` (
  `price_type_id` int NOT NULL AUTO_INCREMENT,
  `price_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`price_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_type`
--

LOCK TABLES `price_type` WRITE;
/*!40000 ALTER TABLE `price_type` DISABLE KEYS */;
INSERT INTO `price_type` VALUES (1,'full'),(2,'half'),(3,'free');
/*!40000 ALTER TABLE `price_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_type`
--

DROP TABLE IF EXISTS `service_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_type` (
  `service_type_id` int NOT NULL AUTO_INCREMENT,
  `service_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`service_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_type`
--

LOCK TABLES `service_type` WRITE;
/*!40000 ALTER TABLE `service_type` DISABLE KEYS */;
INSERT INTO `service_type` VALUES (1,'bar'),(2,'grill'),(3,'fryer'),(4,'beverages(non-alcoholic)');
/*!40000 ALTER TABLE `service_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_type`
--

DROP TABLE IF EXISTS `status_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_type` (
  `status_type_id` int NOT NULL AUTO_INCREMENT,
  `status_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`status_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_type`
--

LOCK TABLES `status_type` WRITE;
/*!40000 ALTER TABLE `status_type` DISABLE KEYS */;
INSERT INTO `status_type` VALUES (1,'delivered'),(2,'in queue'),(3,'in kitchen');
/*!40000 ALTER TABLE `status_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_val`
--

DROP TABLE IF EXISTS `tax_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tax_val` (
  `tax_val_id` int NOT NULL AUTO_INCREMENT,
  `tax_val_lable` varchar(45) DEFAULT NULL,
  `tax_val` double DEFAULT NULL,
  PRIMARY KEY (`tax_val_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_val`
--

LOCK TABLES `tax_val` WRITE;
/*!40000 ALTER TABLE `tax_val` DISABLE KEYS */;
INSERT INTO `tax_val` VALUES (1,'alcohol',0.1),(2,'prepared foods',0.0735);
/*!40000 ALTER TABLE `tax_val` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tender_type`
--

DROP TABLE IF EXISTS `tender_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tender_type` (
  `tender_type_id` int NOT NULL AUTO_INCREMENT,
  `tender_type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`tender_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tender_type`
--

LOCK TABLES `tender_type` WRITE;
/*!40000 ALTER TABLE `tender_type` DISABLE KEYS */;
INSERT INTO `tender_type` VALUES (1,'cash'),(2,'credit'),(3,'refund');
/*!40000 ALTER TABLE `tender_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timesheet`
--

DROP TABLE IF EXISTS `timesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `timesheet` (
  `timesheet_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int NOT NULL,
  `date` date NOT NULL,
  `clock_in` time NOT NULL,
  `clock_out` time NOT NULL,
  PRIMARY KEY (`timesheet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timesheet`
--

LOCK TABLES `timesheet` WRITE;
/*!40000 ALTER TABLE `timesheet` DISABLE KEYS */;
INSERT INTO `timesheet` VALUES (1,2,'2022-12-25','08:00:00','22:00:00'),(2,2,'2022-12-26','08:00:00','22:00:00'),(3,3,'2022-12-25','08:00:00','22:00:00'),(8,2,'2022-12-27','08:00:00','22:00:00'),(9,2,'2022-12-28','08:00:00','22:00:00'),(10,2,'2022-12-29','08:00:00','22:00:00'),(11,2,'2022-12-30','08:00:00','22:00:00'),(12,2,'2022-12-31','08:00:00','22:00:00');
/*!40000 ALTER TABLE `timesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_val`
--

DROP TABLE IF EXISTS `tip_val`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tip_val` (
  `tip_val_id` int NOT NULL AUTO_INCREMENT,
  `tip_val_name` varchar(45) DEFAULT NULL,
  `tip_val` double DEFAULT NULL,
  PRIMARY KEY (`tip_val_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_val`
--

LOCK TABLES `tip_val` WRITE;
/*!40000 ALTER TABLE `tip_val` DISABLE KEYS */;
INSERT INTO `tip_val` VALUES (1,'20%',0.2),(2,'15%',0.15),(3,'25%',0.25),(4,'0%',0);
/*!40000 ALTER TABLE `tip_val` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14  2:37:53
