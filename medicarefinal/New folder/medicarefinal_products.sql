-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: medicarefinal
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pid` bigint NOT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_available` bit(1) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `total_available` int NOT NULL,
  `product_image_img_id` bigint DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKa2epoka3yrgstyhhn83cvrj18` (`product_image_img_id`),
  CONSTRAINT `FKa2epoka3yrgstyhhn83cvrj18` FOREIGN KEY (`product_image_img_id`) REFERENCES `product_image` (`img_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (19,'hello','Normal','its used for cold and cough',_binary '','hello',90,'hello',100,20),(23,'crocin','Normal','its used for cold and cough',_binary '','Crocin3',30,'crocin',100,24),(25,'crocin','Normal','its used for cold and cough',_binary '','Crocin4',900,'crocin',100,26),(29,'crocin','one apple a day keep the doctor away','hello',_binary '','shaikh juned1',999,'crocin',98,30),(106,'British Biologicals','Anti Diabetic','Fitness Family nutrition its chocolate flavored',_binary '','D Protin Chocolate Powder 500 gm',120,'D Protin',80,107),(112,'Aeronutrix-sports-products-pvt-ltd','Anti Hypertensives','Fast&Up Promega is an omega-3 supplement containing a high amount of 1250 mg omega-3 rich fish oil with 50 percent omega-3 fatty acids in 60 softgel capsules.',_binary '',' Fast&Up Promega Omega 3 Rich Fish Oil 1250 mg Softgel 60\'s',120,'Fast&Up ',50,113),(114,'Bakson Drugs & Pharmaceuticals Pvt.Ltd','Gastro Intestinal','tis is a Homeopathic medicine.',_binary '','Bakson\'s Gastro Aid Tablet 75 gm',80,'Bakson\'s',80,115),(116,'By LA RENON HEALTHCARE PVT LTD','Urology','Renolog Tablet is a prescription medicine containing Alpha ketoanalogue as an active ingredient.',_binary '','Renolog Strip Of 10 Tablets',40,'Renolog',100,117),(118,'Fabessentials','Anti Infectives','Fabessentials Bhringraj Amla Hair Oil is nourishing recipe made with powerful ingredients that smoothen and condition the hair. ',_binary '','Bhringraj Amla Oil 200 Ml',200,'Bhringraj ',20,119),(120,' INTAS PHARMACEUTICALS LTD','Gynaecological','Glycolate 1 tablet is used in the treatment of peptic (stomach) ulcers. It is also used as a general anaesthetic.',_binary '','Glycolate 1mg Tablets',300,'Glycolate',20,121),(122,'Volini store','Analgesics','It is a pain relief spray that provides you instant relief from muscle pain, sprain and joint pains.',_binary '','Volini Pain Relief Spray Bottle Of 100g',300,'Volini',40,123),(124,'ABBOTT HEALTHCARE PVT LTD','Vitamins','Vitamin C / Ascorbic Acid(32.0 Mg) + Zinc(4.5 Mg) + Curcumin(5.0 Mg)',_binary '','Limcee Orange Flavour Bottle Of 30 Gummies',400,'Limcee',20,125);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-07 13:15:06
