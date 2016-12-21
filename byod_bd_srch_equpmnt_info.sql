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
-- Table structure for table `bd_srch_equpmnt_info`
--

DROP TABLE IF EXISTS `bd_srch_equpmnt_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_srch_equpmnt_info` (
  `srch_equpmnt_id` varchar(50) NOT NULL COMMENT '조사장비 아이디',
  `srch_equpmnt_identi_no` varchar(2000) NOT NULL COMMENT '조사장비 고유번호',
  `srch_equpmnt_kind` varchar(2000) NOT NULL COMMENT '조사장비 종류',
  `user_nm` varchar(400) DEFAULT NULL COMMENT '사용자 이름',
  `user_id` varchar(20) DEFAULT NULL COMMENT '사용자 아이디',
  `cre_dt` datetime NOT NULL COMMENT '생성일자',
  `use_yn` char(1) DEFAULT NULL COMMENT '사용여부',
  PRIMARY KEY (`srch_equpmnt_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='조사장비정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd_srch_equpmnt_info`
--

LOCK TABLES `bd_srch_equpmnt_info` WRITE;
/*!40000 ALTER TABLE `bd_srch_equpmnt_info` DISABLE KEYS */;
INSERT INTO `bd_srch_equpmnt_info` VALUES ('EqupmntID_000002','7O920Cl0NH6yKf7ArcTm4g==','tf3xF7Ao830FuQRWleZe1Q==','NhN/TBmM8ZSM1TI4qNa4qQ==','findlee5','2016-12-19 15:03:34','Y'),('EqupmntID_000004','upu3j6jo/kXM0baGKdVyBeIA/p+WrlHuIwSzfny+tXo=','tf3xF7Ao830FuQRWleZe1Q==','Ul2TGIOAer2WL/nrd/ACtQ==','findlee2','2016-12-21 11:14:07','N');
/*!40000 ALTER TABLE `bd_srch_equpmnt_info` ENABLE KEYS */;
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
