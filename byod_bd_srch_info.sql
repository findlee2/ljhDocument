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
-- Table structure for table `bd_srch_info`
--

DROP TABLE IF EXISTS `bd_srch_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bd_srch_info` (
  `report_no` varchar(50) NOT NULL COMMENT '보고서 번호',
  `user_id` varchar(20) NOT NULL COMMENT '사용자 아이디',
  `business_nm` varchar(1000) NOT NULL COMMENT '업무명',
  `object_place_nm` varchar(1000) NOT NULL COMMENT '명칭',
  `object_relation_user` varchar(100) NOT NULL COMMENT '관계인',
  `object_relation_user_home_tel` varchar(20) DEFAULT NULL COMMENT '관계인 전화',
  `object_relation_user_mobil_tel` varchar(20) DEFAULT NULL COMMENT '관계인 휴대전화',
  `object_location` varchar(1000) NOT NULL COMMENT '소재지',
  `object_use` varchar(1000) NOT NULL COMMENT '용도',
  `object_buil_struc` varchar(1000) NOT NULL COMMENT '건물구조',
  `check_extgsh_kind` varchar(100) DEFAULT NULL COMMENT '소화기구 종류',
  `check_extgsh_result` varchar(1000) DEFAULT NULL COMMENT '소화기구 점검결과',
  `check_alarm_equip_kind` varchar(100) DEFAULT NULL COMMENT '경보설비 종류',
  `check_alarm_equip_result` varchar(1000) DEFAULT NULL COMMENT '경보설비 점검결과',
  `check_extgsh_equip_kind` varchar(100) DEFAULT NULL COMMENT '소화설비 종류',
  `check_extgsh_equip_result` varchar(1000) DEFAULT NULL COMMENT '소화설비 점검결과',
  `check_flee_equip_kind` varchar(100) DEFAULT NULL COMMENT '피난설비 종류',
  `check_flee_equip_result` varchar(1000) DEFAULT NULL COMMENT '피난설비 점검결과',
  `check_etc_equip_kind` varchar(100) DEFAULT NULL COMMENT '기타설비 종류',
  `check_etc_equip_result` varchar(1000) DEFAULT NULL COMMENT '기타설비 점검결과',
  `check_period_start` char(8) NOT NULL COMMENT '점검기간시작일',
  `check_period_end` char(8) NOT NULL COMMENT '점검기간종료일',
  `special_note` varchar(200) DEFAULT NULL COMMENT '특기 사항',
  `check_user_nm` varchar(400) NOT NULL COMMENT '점검자성명',
  `check_user_qualfication_class` varchar(50) NOT NULL COMMENT '자격구분',
  `check_user_qualfication_no` varchar(50) NOT NULL COMMENT '자격번호',
  `submit_dt` datetime DEFAULT NULL COMMENT '제출일',
  `head_fire_depart` varchar(10) NOT NULL COMMENT '소방서장',
  `location_lat` varchar(30) NOT NULL COMMENT '소재지위도',
  `location_lon` varchar(30) NOT NULL COMMENT '소재지경도',
  `report_cre_dt` datetime NOT NULL COMMENT '보고서 생성일자\n(관리자가 조사자에게 분배하기 위해 보고서 생성일자)',
  `report_stats` char(1) NOT NULL DEFAULT '1' COMMENT '보고서 진행상태\n(1:진행중, 2:완료)',
  PRIMARY KEY (`report_no`),
  KEY `userid_idx` (`user_id`),
  CONSTRAINT `userid` FOREIGN KEY (`user_id`) REFERENCES `bd_user_info` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='조사정보';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bd_srch_info`
--

LOCK TABLES `bd_srch_info` WRITE;
/*!40000 ALTER TABLE `bd_srch_info` DISABLE KEYS */;
INSERT INTO `bd_srch_info` VALUES ('SL_ResultReport_000001','ahnsu234','ClM1WHtMzeta9DnBr0hpPZGrlxseCBrM1Z1Qb7LaHog=','6ObskCGZKz/DpBm5eVo+eu4dfsI8mN8uBOHGZigZacs=','안대환','042-630-5000','010-1234-8956','Paz6z0tOzd09MrEtTt+WJSMsPUID7Illtei/4BK6A9fSxlQcm5z/ehn5tCRAndWq','3ZWJuCZD2ks5Hb+e6YmKYbkC1SYblmK6L7i6OmVSqDM=','+uLLjwJf1qrsJOv5YBwPVDtEJDuV0u7qY3lXzrO8Uykcbg18XgEuBkYGNsH/dqLN5Ic3+YA5OHpOcEtP1rPxWADEQLZuyiuiBxSILj4jz7c=',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'20161222','20161230',NULL,'Qy2mYcJdcHwm+mUZ8MIC6w==','소방안전관리자','2016-12-22-2-000432','2016-12-21 11:02:23','북부','36.428079','127.392783','2016-12-21 10:53:09','2');
/*!40000 ALTER TABLE `bd_srch_info` ENABLE KEYS */;
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
