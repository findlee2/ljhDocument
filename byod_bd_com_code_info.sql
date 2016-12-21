-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: byod
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `bd_com_code_info`
--

DROP TABLE IF EXISTS `bd_com_code_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_com_code_info` (
  `code_grp_id` varchar(6) NOT NULL COMMENT '코드그룹 아이디',
  `code_detail_id` varchar(15) NOT NULL COMMENT '코드 상세 아이디',
  `code_detail_name` varchar(60) DEFAULT NULL COMMENT '코드 상세 이름',
  `code_detail_desc` varchar(200) DEFAULT NULL COMMENT '코드 상세 설명',
  `use_yn` char(1) DEFAULT NULL COMMENT '사용 여부',
  PRIMARY KEY (`code_grp_id`,`code_detail_id`),
  KEY `bd_com_code_ibfk_1_idx` (`code_grp_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd_com_code_info`
--

LOCK TABLES `bd_com_code_info` WRITE;
/*!40000 ALTER TABLE `bd_com_code_info` DISABLE KEYS */;
INSERT INTO `bd_com_code_info` VALUES ('COM001','1','로그인','로그인','Y'),('COM001','2','로그아웃','로그아웃','Y'),('COM001','3','보고서 업무','보고서 업무','Y'),('COM001','4','암호 변경','암호 변경','Y'),('COM001','5','권한 변경','권한 변경','Y'),('COM001','6','조사자 등록','조사자 등록','Y'),('COM001','7','조사자 삭제','조사자 삭제','Y'),('COM001','8','조사자 수정','조사자 수정','Y');
/*!40000 ALTER TABLE `bd_com_code_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-21 15:39:33
