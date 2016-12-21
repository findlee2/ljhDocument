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
-- Table structure for table `bd_log_info`
--

DROP TABLE IF EXISTS `bd_log_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_log_info` (
  `log_id` varchar(50) NOT NULL COMMENT '로그 아이디 \nex)SYSLOG_0000000001',
  `log_gb` char(1) NOT NULL COMMENT '구분\n(1:로그인,2:로그아웃,3:보고서 업무,4:암호변경,5:권한변경)',
  `report_no` varchar(50) DEFAULT NULL COMMENT '보고서 번호 ',
  `business_nm` varchar(1000) DEFAULT NULL COMMENT '업무명',
  `user_id` varchar(20) DEFAULT NULL COMMENT '조사자 아이디  ',
  `user_nm` varchar(400) DEFAULT NULL COMMENT '조사자 이름 ',
  `dispose_tm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '요청 시간\n(접속/업무처리)',
  `report_upload_tm` datetime DEFAULT NULL COMMENT '최종 보고서 업로드 시간',
  `report_status` char(1) DEFAULT NULL COMMENT '보고서 처리구분\n(1:생성,2:수정,3:삭제,4:완료)',
  `network_path` varchar(20) DEFAULT NULL COMMENT '단말기 접속경로',
  `access_loctn` varchar(1000) DEFAULT NULL COMMENT '단말기 접속 위치\n(위도,경도 파싱해서 신주소로 변환 (암호화 컬럼))',
  `dispose_user_nm` varchar(400) NOT NULL COMMENT '처리자(조사자/관리자 이름)',
  `dispose_user_id` varchar(20) NOT NULL COMMENT '처리자 아이디\n(조사자/관리자 아이디)',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='로그정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd_log_info`
--

LOCK TABLES `bd_log_info` WRITE;
/*!40000 ALTER TABLE `bd_log_info` DISABLE KEYS */;
INSERT INTO `bd_log_info` VALUES ('SYSLOG_0000000001','1',NULL,NULL,NULL,NULL,'2016-12-21 10:47:32',NULL,NULL,NULL,NULL,'rckR1pQkUnCj/oYHgpYVrQ==','admin'),('SYSLOG_0000000002','6',NULL,NULL,'ahnsu234','D94Ctruj5Npe7EMCONapPw==','2016-12-21 10:48:04',NULL,NULL,NULL,NULL,'rckR1pQkUnCj/oYHgpYVrQ==','admin'),('SYSLOG_0000000003','5',NULL,NULL,'ahnsu234','D94Ctruj5Npe7EMCONapPw==','2016-12-21 10:48:28',NULL,NULL,NULL,NULL,'rckR1pQkUnCj/oYHgpYVrQ==','admin'),('SYSLOG_0000000004','8',NULL,NULL,'ahnsu234','Qy2mYcJdcHwm+mUZ8MIC6w==','2016-12-21 10:50:03',NULL,NULL,NULL,NULL,'rckR1pQkUnCj/oYHgpYVrQ==','admin'),('SYSLOG_0000000005','3','SL_ResultReport_000001','ClM1WHtMzeta9DnBr0hpPZGrlxseCBrM1Z1Qb7LaHog=','ahnsu234','Qy2mYcJdcHwm+mUZ8MIC6w==','2016-12-21 10:53:09',NULL,'1',NULL,NULL,'rckR1pQkUnCj/oYHgpYVrQ==','admin'),('SYSLOG_0000000006','2',NULL,NULL,NULL,NULL,'2016-12-21 10:59:45',NULL,NULL,NULL,NULL,'rckR1pQkUnCj/oYHgpYVrQ==','admin'),('SYSLOG_0000000007','1',NULL,NULL,NULL,NULL,'2016-12-21 11:05:09',NULL,NULL,NULL,NULL,'rckR1pQkUnCj/oYHgpYVrQ==','admin');
/*!40000 ALTER TABLE `bd_log_info` ENABLE KEYS */;
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
