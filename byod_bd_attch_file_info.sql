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
-- Table structure for table `bd_attch_file_info`
--

DROP TABLE IF EXISTS `bd_attch_file_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_attch_file_info` (
  `file_id` varchar(50) NOT NULL,
  `report_no` varchar(50) NOT NULL COMMENT '보고서 번호',
  `user_id` varchar(20) NOT NULL COMMENT '사용자 아이디 ',
  `attch_file_kind` char(1) DEFAULT NULL COMMENT '첨부파일 종류',
  `attch_file_path` varchar(2000) DEFAULT NULL COMMENT '파일 경로 ',
  `attch_file_nm` varchar(255) DEFAULT NULL COMMENT '파일 이름   ',
  `ori_file_nm` varchar(2000) DEFAULT NULL COMMENT '원본파일 이름 ',
  `attch_file_extsn` varchar(20) DEFAULT NULL COMMENT '파일 확장자 ',
  `cre_dt` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '생성일자',
  PRIMARY KEY (`file_id`),
  KEY `reportNo_idx` (`report_no`),
  CONSTRAINT `reportNo` FOREIGN KEY (`report_no`) REFERENCES `bd_srch_info` (`report_no`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='첨부파일정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd_attch_file_info`
--

LOCK TABLES `bd_attch_file_info` WRITE;
/*!40000 ALTER TABLE `bd_attch_file_info` DISABLE KEYS */;
INSERT INTO `bd_attch_file_info` VALUES ('FILE_0000000001','SL_ResultReport_000001','ahnsu234','1','t0qNBOtUxM78gX6eZ+7SOA==','JvdUD9D7BjaOnLaM8hd5lFIL7t2muzs0.mp3','5wvD1cyk6984jxabYXnOnQot/n7tfg48mtnJeILoJjVfqxVvl/gj/UHrJJK6RJAf','mp3','2016-12-21 11:02:23'),('FILE_0000000002','SL_ResultReport_000001','ahnsu234','2','t0qNBOtUxM78gX6eZ+7SOA==','82kcwi3sMeQdrKU0yMMPctacWjQUmcxR.jpg','ZsIvU6cgWtrE+TzuhjYtSQ==','jpg','2016-12-21 11:02:24');
/*!40000 ALTER TABLE `bd_attch_file_info` ENABLE KEYS */;
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
