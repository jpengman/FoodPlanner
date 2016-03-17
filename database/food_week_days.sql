-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: food
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

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
-- Table structure for table `week_days`
--

DROP TABLE IF EXISTS `week_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `week_days` (
  `week_day_id` int(11) NOT NULL AUTO_INCREMENT,
  `week_id` int(11) DEFAULT NULL,
  `day_id` int(11) DEFAULT NULL,
  `lunch_recipe_id` int(11) DEFAULT NULL,
  `dinner_recipe_id` int(11) DEFAULT NULL,
  `breakfast_recipe_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`week_day_id`),
  UNIQUE KEY `sevendaysperweek` (`week_id`,`day_id`),
  KEY `fk_week_days__days_idx` (`day_id`),
  KEY `fk_week_days_breakfast_recipe_idx` (`breakfast_recipe_id`),
  KEY `fk_week_days_lunch_recipes_idx` (`lunch_recipe_id`),
  KEY `fk_week_days_dinner_recipies_idx` (`dinner_recipe_id`),
  CONSTRAINT `fk_week_days_breakfast_recipes` FOREIGN KEY (`breakfast_recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_week_days_dinner_recipies` FOREIGN KEY (`dinner_recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_week_days_lunch_recipes` FOREIGN KEY (`lunch_recipe_id`) REFERENCES `recipes` (`recipe_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_week_days_weeks` FOREIGN KEY (`week_id`) REFERENCES `weeks` (`week_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_week_days__days` FOREIGN KEY (`day_id`) REFERENCES `days` (`day_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `week_days`
--

LOCK TABLES `week_days` WRITE;
/*!40000 ALTER TABLE `week_days` DISABLE KEYS */;
INSERT INTO `week_days` VALUES (1,1,1,1,1,1),(3,1,2,1,1,1),(5,1,3,NULL,NULL,NULL);
/*!40000 ALTER TABLE `week_days` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-03-17 15:14:23
