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
-- Table structure for table `bd_user_info`
--

DROP TABLE IF EXISTS `bd_user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_user_info` (
  `user_id` varchar(20) NOT NULL COMMENT '사용자 아이디',
  `user_nm` varchar(400) NOT NULL COMMENT '사용자 이름',
  `user_pw` varchar(100) NOT NULL COMMENT '사용자 비밀번호',
  `user_appve_yn` char(1) NOT NULL DEFAULT '2' COMMENT '사용자 승인여부(1:승인, 2:미승인)',
  `user_reg_dt` datetime NOT NULL COMMENT '사용자 가입일자',
  `user_role` char(1) NOT NULL DEFAULT '2' COMMENT '사용자 권한(1:관리자,2:일반사용자)',
  `user_otg_no` varchar(20) DEFAULT NULL COMMENT 'OTG 번호',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_otg_no_UNIQUE` (`user_otg_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='사용자정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd_user_info`
--

LOCK TABLES `bd_user_info` WRITE;
/*!40000 ALTER TABLE `bd_user_info` DISABLE KEYS */;
INSERT INTO `bd_user_info` VALUES ('admin','rckR1pQkUnCj/oYHgpYVrQ==','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=','1','2016-12-21 10:45:28','1',NULL),('ahnsu234','Qy2mYcJdcHwm+mUZ8MIC6w==','a4ayc/80/OGda4BO/1o/V0etpOqiLx1JwB5S3beHW0s=','1','2016-12-21 10:48:04','2','BYOD-00000001');
/*!40000 ALTER TABLE `bd_user_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-21 15:39:34
