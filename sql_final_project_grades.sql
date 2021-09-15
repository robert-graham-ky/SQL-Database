-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sql_final_project
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `enrolled_student_id` int NOT NULL,
  `enrolled_course_id` int NOT NULL,
  `grade` decimal(3,2) NOT NULL,
  KEY `enrolled_student_id_idx` (`enrolled_student_id`),
  KEY `enrolled_course_id_idx` (`enrolled_course_id`),
  CONSTRAINT `enrolled_course_id` FOREIGN KEY (`enrolled_course_id`) REFERENCES `courses` (`course_id`),
  CONSTRAINT `enrolled_student_id` FOREIGN KEY (`enrolled_student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (1,2,1.50),(2,2,4.00),(3,2,2.26),(4,2,2.81),(5,3,3.27),(6,3,3.90),(7,3,1.69),(8,3,0.74),(9,3,2.62),(10,3,2.91),(11,3,2.66),(12,3,0.59),(13,3,2.98),(14,3,1.10),(15,3,0.57),(16,3,3.57),(1,1,0.12),(2,1,1.91),(3,1,1.19),(4,1,0.20),(5,1,1.44),(6,1,2.62),(7,1,0.75),(8,4,3.89),(9,4,1.20),(10,4,2.33),(11,4,0.05),(12,4,1.24),(13,4,2.09),(14,4,2.69),(15,4,3.21),(16,4,3.98),(1,5,2.24),(2,6,3.29),(3,7,1.73),(4,5,2.79),(5,5,0.73),(6,6,3.30),(7,7,2.32),(8,5,1.68),(9,6,1.43),(10,7,2.12),(11,5,2.30),(12,6,1.15),(13,7,2.84),(14,5,2.76),(15,6,1.28),(16,7,2.10);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-14 19:31:29
