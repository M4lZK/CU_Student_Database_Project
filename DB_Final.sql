-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: databaseproject
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

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
-- Table structure for table `activityandaward`
--

DROP TABLE IF EXISTS `activityandaward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activityandaward` (
  `name` varchar(360) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `aid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `prize` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`aid`,`sid`,`national_id`),
  KEY `activityandaward_ibfk_1` (`sid`,`national_id`),
  CONSTRAINT `activityandaward_ibfk_1` FOREIGN KEY (`sid`, `national_id`) REFERENCES `student` (`sid`, `national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activityandaward`
--

LOCK TABLES `activityandaward` WRITE;
/*!40000 ALTER TABLE `activityandaward` DISABLE KEYS */;
INSERT INTO `activityandaward` VALUES ('วันแรกพบนิสิตใหม่',2012,'0123456789','','5731017921','1100702284499'),('รางวัลดีเด่น',2012,'0123957912','ชนะเลิศ','5731013321','1579900647291'),('รางวัลดีเด่นมาก',2017,'0124813213','ชนะเลิศ','5731017921','1100702284499'),('รับน้องก้าวใหม่',2016,'212121','พ่อบ้าน','5731034521','1100801007990'),('ดาวซัลโว ฟุตบอลพรีเมียร์ลีกอังกฤษ',2015,'28545121','ชนะเลิศ','5848888824','3101888421123'),('งานฟุตบอลประเพณีจุฬา-ธรรมศาสตร์ครั้งที่ 71',2015,'4003','ผู้นำเชียร์','5731034521','1100801007990'),('วิ่งมาราธอน จุฬา-ธรรมศาสตร์',2017,'451212121','ชนะเลิศ','5731034521','1100801007990'),('บัลลงดอร์',2012,'54845212','ชนะเลิศ','5848888824','3101888421123'),('บัลลงดอร์',2009,'55552009','ชนะเลิศ','5912153221','3212155555887'),('บัลลงดอร์',2010,'55552010','ชนะเลิศ','5912153221','3212155555887'),('บัลลงดอร์',2011,'55552011','ชนะเลิศ','5912153221','3212155555887'),('หนุ่มสุดฮอตแห่งจุฬาลงกรณ์มหาวิทยาลัย',2015,'5556','ชนะเลิศ','5731034521','1100801007990'),('แ่ข่งขัน E-Sport',2016,'84524','รองชนะเลิศอันดับ 2','5933215427','1541822222323'),('เตะตะกร้าลอดห่วง ชิงถ้วยพระราชทาน',2016,'8485152121','รองชนะเลิศอันดับ 1','5848888824','3101888421123'),('World Robotic Challenge 2016',2016,'945366','รองชนะเลิศอันดับ 1','5830021521','1444455213684'),('The Voice Thailand Season 77',2016,'98451','รองชนะเลิศอันดับ 1','5731034521','1100801007990'),('The Voice Thailand Season 77',2016,'98451','ชนะเลิศ','5830021521','1444455213684'),('55552009',2009,'บัลลงดอร์','ชนะเลิศ','5912153221','3212155555887');
/*!40000 ALTER TABLE `activityandaward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `house_num` int(11) NOT NULL,
  `building` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `road` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `alley` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdistrict` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `postal_code` int(11) NOT NULL,
  PRIMARY KEY (`house_num`,`subdistrict`,`district`,`province`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (0,'ทอง','หนทาง','เร็วมาก','เขวียง','ไม่ใช่ตำบล','ดีครับ',10990),(1,'-','ดอร์ทมุน','-','ดอร์ทมุน','เมือง','สตุ๊ตการ์ท',523212),(3,'','พระอาทิตย์','1','คลองต้นไทร','ภาษีเจริญ','กรุงเทพ',10256),(3,'','เยาวราช','','คลองต้นไทร','เมือง','กรุงเทพ',54810),(3,'-','แฮริงตัน','-','แคริงตัน','ไบรท์ตัน','แมนเชสเตอร์',212000),(4,'','เพชรเกษม','98/1','บางแคเหนือ','บางแค','กรุงเทพ',10160),(7,'-','ราชพฤกษ์','-','สายสี่','ทวีวัฒนา','กรุงเทพ',10432),(8,'-','แอนฟิลด์','-','เมอซีไซด์','แอนฟิลด์','ลิเวอร์พูล',851223),(10,'-','คัม','-','นู','บาซ่า','กาตาลัน',15222),(11,'','ไอแพด','','ธนาคารโลก','นักเขียน','กระชับ',44440),(11,'','แคบมาก','','ฟาร์มเฮ้า','อินเทล','ชลบุรี',12345),(12,'-','ราชเทวี','-','วังเงินหลาง','ปทุมวัน','กรุงเทพมหานคร',10555),(15,'สูตรเตี่ยว','เคม','','ปั่นงาน','เร็วดิ๊','เหนื่อยโว้ย',40040),(15,'กอขอคอ','แอปพรูฟ','','รีพอท','วิวคอส','แอดมิสชั่น',33030),(21,'-','สุขุมวิท','ปรีดี','บางนา','บางนา','กรุงเทพมหานคร',10400),(47,'','เลียบคลองสอง','6','บางชัน','คลองสามวา','กรุงเทพ',10510),(48,'-','พระราม4','-','คลองเตย','คลองเตย','กรุงเทพมหานคร',10400),(71,'','อุตรกิจ','','เวียง','เมืองเชียงราย','กรุงเทพ',57000),(77,'-','อักขร','วัฒนา','หนองบัวงา','เมือง','หนองบัวลำพู',11555),(80,'อาเงิน','นะจ๊ะ','โคตรถี่','ตำล่าง','ซีอุส','ไม่ดีครับ',11990),(87,'-','บางนา-ตราด','-','บางนา','หลายนา','กรุงเทพมหานคร',11212),(95,'-','ยมราช','อิอิ','ยมโลก','ยมทูต','ยมบาล',77000),(96,'-','เพชรบุรีตัดเก่า','โคนอนตม','วัฒนา','วัฒนา','กรุงเทพมหานคร',10110),(99,'-','รัตนาธิเบศ','ขิงแก่','สวนใหญ่','เมือง','นนทบุรี',11000),(123,'-','บราโว่','-','คาฟู','ฟิลิปโป้','ริโอเดอจาเนโร่',555555),(123,'-','ลาดพร้าว','ลาดพร้าว 52','ลาดพร้าว','ลาดพร้าว','กรุงเทพมหานคร',10799),(123,'-','ซานติอ้าโก้','-','เบอนาบิว','ดุสิต','มาดริด',98533),(135,'-','สีลม','สีลม ซอย 2','ปทุมวัน','ปทุมวัน','กรุงเทพมหานคร',10150),(156,'','นานาชาติ','','การผลิต','ภูมิภาค','สตรีม',66066),(156,'','แชร์','','ทวีต','อินสตาแกรม','ยูเฟลล์',61600),(192,'-','-','-','วังใหม่','ท่าใหม่','จันทบุรีี',22120),(654,'-','-','-','ปทุมวัน','เมือง','นนทบุรี',11510),(777,'-','อักขระ','วัฒนา','หนองบัวงาม','เมือง','หนองบัวล',0),(777,'-','อักขระ','วัฒนา','หนองบัวงาม','เมือง','หนองบัวลำพูน',11555);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consist_of`
--

DROP TABLE IF EXISTS `consist_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consist_of` (
  `cid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cur_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cid`,`cur_id`),
  KEY `consist_of_ibfk_2` (`cur_id`),
  CONSTRAINT `consist_of_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `consist_of_ibfk_2` FOREIGN KEY (`cur_id`) REFERENCES `curriculum` (`cur_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consist_of`
--

LOCK TABLES `consist_of` WRITE;
/*!40000 ALTER TABLE `consist_of` DISABLE KEYS */;
INSERT INTO `consist_of` VALUES ('2102201','2'),('2102210','2'),('2102222','2'),('2102383','2'),('2202112','22'),('2301107','1'),('2301108','1'),('2302127','1'),('2302163','1'),('2304107','1'),('2304108','1'),('2304108','44'),('2402309','62'),('2601111','104'),('2605327','104'),('2802312','142'),('2802489','142');
/*!40000 ALTER TABLE `consist_of` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consult`
--

DROP TABLE IF EXISTS `consult`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `consult` (
  `tid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id_t` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `sid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id_s` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tid`,`national_id_t`,`sid`,`national_id_s`),
  KEY `consult_ibfk_2` (`sid`,`national_id_s`),
  CONSTRAINT `consult_ibfk_1` FOREIGN KEY (`tid`, `national_id_t`) REFERENCES `instructor` (`tid`, `national_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `consult_ibfk_2` FOREIGN KEY (`sid`, `national_id_s`) REFERENCES `student` (`sid`, `national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consult`
--

LOCK TABLES `consult` WRITE;
/*!40000 ALTER TABLE `consult` DISABLE KEYS */;
INSERT INTO `consult` VALUES ('5391000232','1100234567891','5731013321','1579900647291'),('5731018911','1100702284488','5731017921','1100702284499'),('7777777','1524854333213','5912153221','3212155555887');
/*!40000 ALTER TABLE `consult` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `cid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `c_sname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `c_detail` varchar(360) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `c_sname_UNIQUE` (`c_sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('2102201',3,'ELECT ENG MATH I','วิชาบังคับ',''),('2102210',3,'CIRCUIT THEORY I','วิชาบังคับ',''),('2102222',3,'ENG EMAG','วิชาบังคับ',''),('2102383',3,'FUND DIGITAL SYS','วิชาบังคับ','Digital Circuit'),('2108202',3,'SURV ENG','วิชาบังคับ',''),('2110200',3,'DISCRETE STRUC','วิชาบังคับ','วิชาการคำนวณแบบแยก'),('2202112',3,'ENGLISH II','วิชาบังคับ',''),('2301107',3,'Cal I','วิชาบังคับ',''),('2301108',3,'Cal II','วิชาบังคับ',''),('2302127',3,'GEN CHEM','วิชาบังคับ',''),('2302163',1,'LAB CHEM','วิชาบังคับ',''),('2304107',3,'GEN PHY I','วิชาบังคับ',NULL),('2304108',3,'GEN PHY II','วิชาบังคับ',''),('2313213',3,'DIGITAL PHOTO','วิชาการเรียนทั่วไป',''),('2402309',3,'POL THEO/IR','วิชาบังคับ',''),('2601111',3,'BUS ACCT','วิชาบังคับ','ทำบัญชีจ้า'),('2605327',3,'DIGITAL MKTG','วิชาบังคับ',''),('2802312',3,'RADIO/TV NEWS','วิชาบังคับ',''),('2802489',3,'PROJECT WORK TV','วิชาบังคับ',''),('5500308',3,'TECH WRIT ENG','วิชาภาษาทั่วไป','');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursefullname`
--

DROP TABLE IF EXISTS `coursefullname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coursefullname` (
  `c_fname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `c_sname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  KEY `courseshortname_ibfk_1_idx` (`c_sname`),
  CONSTRAINT `coursefullname_ibfk_1` FOREIGN KEY (`c_sname`) REFERENCES `course` (`c_sname`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursefullname`
--

LOCK TABLES `coursefullname` WRITE;
/*!40000 ALTER TABLE `coursefullname` DISABLE KEYS */;
INSERT INTO `coursefullname` VALUES ('discrete structure','DISCRETE STRUC'),('Calculus I','Cal I'),('Calculus II','Cal II'),('General Chemistry','GEN CHEM'),('General Chemistry Laboratory','LAB CHEM'),('General Physics II','GEN PHY II'),('General Physics I','GEN PHY I'),('ELECTRICAL ENGINEERING MATHEMA','ELECT ENG MATH I'),('CIRCUIT THEORY I','CIRCUIT THEORY I'),('Business Accountant','BUS ACCT'),('ENGINEERING ELECTROMAGNETICS','ENG EMAG'),('TECHNICAL WRITING FOR ENGINEER','TECH WRIT ENG'),('TECHNICAL WRITING FOR ENGINEER','TECH WRIT ENG'),('DIGITAL PHOTOGRAPHY','DIGITAL PHOTO'),('FUNDAMENTALS TO DIGITAL SYSTEM','FUND DIGITAL SYS'),('SURVEYING ENGINEERING','SURV ENG'),('ENGLISH II','ENGLISH II'),('DIGITAL MARKETING','DIGITAL MKTG'),('PROJECT WORK IN TELEVISION','PROJECT WORK TV'),('PRINCIPLE OF RADIO AND TV NEWS','RADIO/TV NEWS'),('POLITICAL THEORY AND INTERNATI','POL THEO/IR');
/*!40000 ALTER TABLE `coursefullname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `curriculum`
--

DROP TABLE IF EXISTS `curriculum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `curriculum` (
  `cur_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cur_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `year` int(11) NOT NULL,
  `degree` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `curriculum`
--

LOCK TABLES `curriculum` WRITE;
/*!40000 ALTER TABLE `curriculum` DISABLE KEYS */;
INSERT INTO `curriculum` VALUES ('1','วิศวกรรมคอมพิวเตอร์',2014,'ตรี'),('104','การตลาด',2014,'ตรี'),('142','การสื่อสารมวลชน',2015,'ตรี'),('2','วิศวกรรมไฟฟ้า',2014,'ตรี'),('22','ประวัติศาสตร์',2013,'ตรี'),('44','ฟิสิกส์',2013,'ตรี'),('62','ความสัมพันธ์ระหว่างประเทศ',2014,'ตรี'),('8','วิศวกรรมสำรวจ',2014,'ตรี'),('82','สถาปัตยกรรมภายใน',2015,'ตรี');
/*!40000 ALTER TABLE `curriculum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `did` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `dname_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`did`),
  UNIQUE KEY `dname_th_UNIQUE` (`dname_th`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('104','การตลาด'),('103','การธนาคารและการเงิน'),('101','การบัญชี'),('61','การปกครอง'),('141','การประชาสัมพันธ์'),('145','การภาพยนตร์และภาพนิ่ง'),('83','การวางแผนภาคและเมือง'),('125','การศึกษาตลอดชีวิต'),('142','การสื่อสารมวลชน'),('84','การออกแบบอุตสาหกรรม'),('41','คณิตศาสตร์และวิทยาการคอมพิวเตอร์'),('62','ความสัมพันธ์ระหว่างประเทศ'),('52','จุลชีววิทยา'),('43','ชีววิทยา'),('50','ชีวเคมี'),('47','ธรณีวิทยา'),('124','นโยบาย การจัดการและความเป็นผู้นำทางการศึกษา'),('21','บรรณารักษศาสตร์'),('22','ประวัติศาสตร์'),('23','ปรัชญา'),('45','พฤกษศาสตร์'),('102','พาณิชยศาสตร์'),('44','ฟิสิกส์'),('24','ภาษาตะวันตก'),('25','ภาษาตะวันออก'),('27','ภาษาศาสตร์'),('28','ภาษาอังกฤษ'),('26','ภาษาไทย'),('29','ภูมิศาสตร์'),('85','ภูมิสถาปัตยกรรม'),('63','รัฐประศาสนศาสตร์'),('31','วรรณคดีเปรียบเทียบ'),('51','วัสดุศาสตร์'),('144','วาทวิทยาและสื่อสารการแสดง'),('143','วารสารสนเทศ'),('126','วิจัยและจิตวิทยาการศึกษา'),('49','วิทยาศาสตร์ทางทะเล'),('53','วิทยาศาสตร์ทางภาพถ่ายและเทคโนโลยีทางการพิมพ์'),('48','วิทยาศาสตร์สิ่งแวดล้อม'),('1','วิศวกรรมคอมพิวเตอร์'),('11','วิศวกรรมนิวเคลียร์'),('8','วิศวกรรมสำรวจ'),('7','วิศวกรรมสิ่งแวดล้อม'),('4','วิศวกรรมอุตสาหการ'),('5','วิศวกรรมเคมี'),('3','วิศวกรรมเครื่องกล'),('6','วิศวกรรมเหมืองแร่และปิโตรเลียม'),('12','วิศวกรรมแหล่งน้ำ'),('10','วิศวกรรมโยธา'),('9','วิศวกรรมโลหการ'),('2','วิศวกรรมไฟฟ้า'),('30','ศิลปการละคร'),('123','ศิลปะ ดนตรี และนาฏศิลป์ศึกษา'),('82','สถาปัตยกรรมภายใน'),('81','สถาปัตยกรรมศาสตร์'),('105','สถิติ'),('64','สังคมวิทยาและมานุษยวิทยา'),('121','หลักสูตรและการสอน'),('42','เคมี'),('46','เคมีเทคนิค'),('86','เคหการ'),('54','เทคโนโลยีทางอาหาร'),('122','เทคโนโลยีและการสื่อสารการศึกษา'),('151','เศรษฐศาสตร์.');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departmentengname`
--

DROP TABLE IF EXISTS `departmentengname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departmentengname` (
  `dname_eng` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dname_th` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dname_th`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departmentengname`
--

LOCK TABLES `departmentengname` WRITE;
/*!40000 ALTER TABLE `departmentengname` DISABLE KEYS */;
INSERT INTO `departmentengname` VALUES ('Marketing','การตลาด'),('Banking and Finance','การธนาคารและการเงิน'),('Accounting','การบัญชี'),('Government','การปกครอง'),('Public Relations','การประชาสัมพันธ์'),('Motion Pictures and Still Photography','การภาพยนตร์และภาพนิ่ง'),('Urban and Regional Planning','การวางแผนภาคและเมือง'),('Lifelong Education','การศึกษาตลอดชีวิต'),('Mass Communication','การสื่อสารมวลชน'),('Industrial Design','การออกแบบอุตสาหกรรม'),('Mathematics and Computer Scien','คณิตศาสตร์และวิทยาการคอมพิวเตอ'),('International Relations','ความสัมพันธ์ระหว่างประเทศ'),('Microbiology','จุลชีววิทยา'),('Biology','ชีววิทยา'),('Biochemistry','ชีวเคมี'),('Geology','ธรณีวิทยา'),('Educational Policy, Management, and Leadership','นโยบาย การจัดการและความเป็นผู้นำทางการศึกษา'),('Library Science','บรรณารักษศาสตร์'),('History','ประวัติศาสตร์'),('Philosophy','ปรัชญา'),('Botany','พฤกษศาสตร์'),('Commerce','พาณิชยศาสตร์'),('Physics','ฟิสิกส์'),('Western Languages','ภาษาตะวันตก'),('Eastern Languages','ภาษาตะวันออก'),('Linguistics','ภาษาศาสตร์'),('English','ภาษาอังกฤษ'),('Thai','ภาษาไทย'),('Geography','ภูมิศาสตร์'),('Landscape Architecture','ภูมิสถาปัตยกรรม'),('Public Administration','รัฐประศาสนศาสตร์'),('Comparative Literature','วรรณคดีเปรียบเทียบ'),('Material Science','วัสดุศาสตร์'),('Speech Communication and Performing Arts','วาทวิทยาและสื่อสารการแสดง'),('Journalism','วารสารสนเทศ'),('Educational Research and Psychology','วิจัยและจิตวิทยาการศึกษา'),('Marine Science','วิทยาศาสตร์ทางทะเลย'),('Photographic Science and Print','วิทยาศาสตร์ทางภาพถ่ายและเทคโนโ'),('Enviromental Science','วิทยาศาสตร์สิ่งแวดล้อม'),('Computer Engineering','วิศวกรรมคอมพิวเตอร์'),('Nuclear Engineering','วิศวกรรมนิวเคลียร์'),('Survey Engineering','วิศวกรรมสำรวจ'),('Environmental Engineering','วิศวกรรมสิ่งแวดล้อม'),('Industrial Engineering','วิศวกรรมอุตสาหการ'),('Chemical Engineering','วิศวกรรมเคมี'),('Mechanical Engineering','วิศวกรรมเครื่องกล'),('Mining and Petroleum Engineering','วิศวกรรมเหมืองแร่และปิโตรเลียม'),('Water Resources Engineering','วิศวกรรมแหล่งน้ำ'),('Civil Engineering','วิศวกรรมโยธา'),('Metallurgical Engineering','วิศวกรรมโลหการ'),('Electrical Engineering','วิศวกรรมไฟฟ้า'),('Dramatic Arts','ศิลปการละคร'),('Art, Music and Dance Education','ศิลปะ ดนตรี และนาฏศิลป์ศึกษา'),('Interior Architecture','สถาปัตยกรรมภายใน'),('Architecture','สถาปัตยกรรมศาสตร์'),('Statistics','สถิติ'),('Sociology and Anthropology','สังคมวิทยาและมานุษยวิทยา'),('Curriculum and Instruction','หลักสูตรและการสอน'),('Chemistry','เคมี'),('Chemical Technology','เคมีเทคนิค'),('Housing','เคหการ'),('Food Technology','เทคโนโลยีทางอาหาร'),('Educational Communication and Technology','เทคโนโลยีและการสื่อสารการศึกษา'),('','เศรษฐศาสตร์'),('Economics','เศรษฐศาสตร์.');
/*!40000 ALTER TABLE `departmentengname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange`
--

DROP TABLE IF EXISTS `exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange` (
  `eid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `e_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`eid`,`sid`,`national_id`),
  KEY `exchange_ibfk_1` (`sid`,`national_id`),
  CONSTRAINT `exchange_ibfk_1` FOREIGN KEY (`sid`, `national_id`) REFERENCES `student` (`sid`, `national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange`
--

LOCK TABLES `exchange` WRITE;
/*!40000 ALTER TABLE `exchange` DISABLE KEYS */;
INSERT INTO `exchange` VALUES ('0123456789','5731017921','1100702284499','2005-03-03','2006-04-04','ไทย','test'),('54211111','5845555524','1100702284415','2016-01-10','2016-01-30','อิหร่าน','สานฝันเด็กไทย ไปหาอิหร่าน'),('548542','5848888824','3101888421123','2015-05-18','2015-07-30','อังกฤษ','British Professional Footballer Exchange'),('5512','5631188721','1700154111999','2015-09-09','2015-12-12','อูกันดา','สานฝันเด็กไทย ไปสู่อูกันดา'),('6','5731034521','1100801007990','2014-12-20','2014-12-25','กรีซ','โครงการแลกเปลี่ยนวัฒนธรรม ทะเลเมดิเตอร์เรเนีย'),('8411135478','5731034521','1100801007990','2017-12-08','2017-12-22','UK','ช้างไทยไป Everton'),('9152','5871212325','1700154321999','2016-01-01','2016-05-01','Germany','Maximum Program Germany-Thailand '),('9999999','5930909923','1100702284409','2017-05-30','2017-08-30','เวเนซูเอล่า','โครงการแลกเปลี่ยนภาษา ทวีปอเมริกาใต้');
/*!40000 ALTER TABLE `exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faculty` (
  `fid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fname_th` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`fid`),
  UNIQUE KEY `fname_th_UNIQUE` (`fname_th`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faculty`
--

LOCK TABLES `faculty` WRITE;
/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` VALUES ('27','ครุศาสตร์'),('38','จิตวิทยา'),('32','ทันตแพทยศาสตร์'),('34','นิติศาสตร์'),('28','นิเทศศาสตร์'),('36','พยาบาลศาสตร์'),('26','พาณิชยศาสตร์และการบัญชี'),('24','รัฐศาสตร์'),('23','วิทยาศาสตร์'),('39','วิทยาศาสตร์การกีฬา'),('21','วิศวกรรมศาสตร์'),('35','ศิลปกรรมศาสตร์'),('25','สถาปัตยกรรมศาสตร์ '),('37','สหเวชศาสตร์'),('31','สัตวแพทยศาสตร์'),('22','อักษรศาสตร์'),('33','เภสัชศาสตร์'),('29','เศรษฐศาสตร์'),('30','แพทยศาสตร์');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facultyengname`
--

DROP TABLE IF EXISTS `facultyengname`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facultyengname` (
  `fname_eng` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `fname_th` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`fname_th`),
  CONSTRAINT `facultyengname_ibfk_1` FOREIGN KEY (`fname_th`) REFERENCES `faculty` (`fname_th`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facultyengname`
--

LOCK TABLES `facultyengname` WRITE;
/*!40000 ALTER TABLE `facultyengname` DISABLE KEYS */;
INSERT INTO `facultyengname` VALUES ('FACULTY OF EDUCATION','ครุศาสตร์'),('FACULTY OF PSYCHOLOGY','จิตวิทยา'),('FACULTY OF DENTISTRY','ทันตแพทยศาสตร์'),('FACULTY OF LAW','นิติศาสตร์'),('FACULTY OF COMMUNICATION ARTS','นิเทศศาสตร์'),('FACULTY OF NURSING','พยาบาลศาสตร์'),('FACULTY OF COMMERCE AND ACCOUN','พาณิชยศาสตร์และการบัญชี'),('FACULTY OF POLITICAL SCIENCE','รัฐศาสตร์'),('FACULTY OF SCIENCE','วิทยาศาสตร์'),('FACULTY OF SPORTS SCIENCE','วิทยาศาสตร์การกีฬา'),('FACULTY OF ENGINEERING','วิศวกรรมศาสตร์'),('FACULTY OF FINE AND APPLIED AR','ศิลปกรรมศาสตร์'),('FACULTY OF ARCHITECTURE','สถาปัตยกรรมศาสตร์ '),('FACULTY OF ALLIED HEALTH SCIEN','สหเวชศาสตร์'),('FACULTY OF VETERINARY SCIENCE','สัตวแพทยศาสตร์'),('FACULTY OF ART','อักษรศาสตร์'),('FACULTY OF PHARMACEUTICAL SCIE','เภสัชศาสตร์'),('FACULTY OF ECONOMICS','เศรษฐศาสตร์'),('FACULTY OF MEDICINE','แพทยศาสตร์');
/*!40000 ALTER TABLE `facultyengname` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instructor`
--

DROP TABLE IF EXISTS `instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instructor` (
  `tid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`tid`,`national_id`),
  KEY `instructor_ibfk_1` (`national_id`),
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`national_id`) REFERENCES `person` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES ('5391000232','ปกติ','1100234567891'),('5391055532','ปกติ','1100454534555'),('555555555','ปกติ','1184525333987'),('571232152','ปกติ','2121235555123'),('5731018911','ปกติ','1100702284488'),('5933015151','ปกติ','1210001234999'),('6666666','ปกติ','1184525555987'),('7777777','ปกติ','1524854333213');
/*!40000 ALTER TABLE `instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_in`
--

DROP TABLE IF EXISTS `live_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_in` (
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `house_num` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `subdistrict` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `province` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`national_id`,`house_num`,`subdistrict`,`district`,`province`),
  KEY `house_num` (`house_num`,`subdistrict`,`district`,`province`),
  CONSTRAINT `live_in_ibfk_1` FOREIGN KEY (`national_id`) REFERENCES `person` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_in`
--

LOCK TABLES `live_in` WRITE;
/*!40000 ALTER TABLE `live_in` DISABLE KEYS */;
INSERT INTO `live_in` VALUES ('1100234567891','3','คลองต้นไทร','ภาษีเจริญ','กรุงเทพ'),('1100454534554','654','ปทุมวัน','เมือง','นนทบุรี'),('1100454534555','123','ลาดพร้าว','ลาดพร้าว','กรุงเทพมหานคร'),('1100702284409','0','เขวียง','ไม่ใช่ตำบล','ดีครับ'),('1100702284415','11','ฟาร์มเฮ้า','อินเทล','ชลบุรี'),('1100702284422','11','ธนาคารโลก','นักเขียน','กระชับ'),('1100702284433','15','รีพอท','วิวคอส','แอดมิสชั่น'),('1100702284444','15','ปั่นงาน','เร็วดิ๊','เหนื่อยโว้ย'),('1100702284461','156','ทวีต','อินสตาแกรม','ยูเฟลล์'),('1100702284466','156','การผลิต','ภูมิภาค','สตรีม'),('1100702284499','4','บางแคเหนือ','บางแค','กรุงเทพ'),('1100801007990','135/753','ปทุมวัน','ปทุมวัน','กรุงเทพมหานคร'),('1103456349766','47/294','บางชัน','คลองสามวา','กรุงเทพ'),('1184521345987','99','สวนใหญ่','เมือง','นนทบุรี'),('1184525333987','3','แคริงตัน','ไบรท์ตัน','แมนเชสเตอร์'),('1184525555987','1','ดอร์ทมุน','เมือง','สตุ๊ตการ์ท'),('1210001234999','12','วังเงินหลาง','ปทุมวัน','กรุงเทพมหานคร'),('1220400156845','192','วังใหม่','ท่าใหม่','จันทบุรีี'),('1232091124576','7','สายสี่','ทวีวัฒนา','กรุงเทพ'),('123456789012','4','บางแคเหนือ','บางแค','กรุงเทพ'),('1444455111684','123/785','คาฟู','ฟิลิปโป้','ริโอเดอจาเนโร่'),('1444455213684','96','วัฒนา','วัฒนา','กรุงเทพมหานคร'),('1524854333213','123','เบอนาบิว','ดุสิต','มาดริด'),('1541822222323','77','หนองบัวงา','เมือง','หนองบัวลำพู'),('1541822222355','21','บางนา','บางนา','กรุงเทพมหานคร'),('1579900647291','71','เวียง','เมืองเชียงราย','กรุงเทพ'),('1700154111999','48/55','คลองเตย','คลองเตย','กรุงเทพมหานคร'),('1700154321999','95','ยมโลก','ยมทูต','ยมบาล'),('1723020345719','3','คลองต้นไทร','เมือง','กรุงเทพ'),('2121235555123','87','บางนา','หลายนา','กรุงเทพมหานคร'),('3101888421123','8','เมอซีไซด์','แอนฟิลด์','ลิเวอร์พูล'),('3212155555887','10','นู','บาซ่า','กาตาลัน');
/*!40000 ALTER TABLE `live_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manage`
--

DROP TABLE IF EXISTS `manage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manage` (
  `cur_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `did` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cur_id`,`did`),
  KEY `manage_ibfk_2` (`did`),
  CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`cur_id`) REFERENCES `curriculum` (`cur_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`did`) REFERENCES `department` (`did`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` VALUES ('1','1'),('104','104'),('142','142'),('2','2'),('22','22'),('44','44'),('62','62'),('8','8');
/*!40000 ALTER TABLE `manage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part_of`
--

DROP TABLE IF EXISTS `part_of`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `part_of` (
  `did` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `fid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`did`,`fid`),
  KEY `part_of_ibfk_2` (`fid`),
  CONSTRAINT `part_of_ibfk_1` FOREIGN KEY (`did`) REFERENCES `department` (`did`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `part_of_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_of`
--

LOCK TABLES `part_of` WRITE;
/*!40000 ALTER TABLE `part_of` DISABLE KEYS */;
INSERT INTO `part_of` VALUES ('1','21'),('10','21'),('101','26'),('102','26'),('103','26'),('104','26'),('105','26'),('11','21'),('12','21'),('121','27'),('122','27'),('123','27'),('124','27'),('125','27'),('126','27'),('141','28'),('142','28'),('143','28'),('144','28'),('145','28'),('151','29'),('2','21'),('21','22'),('22','22'),('23','22'),('24','22'),('25','22'),('26','22'),('27','22'),('28','22'),('29','22'),('3','21'),('30','22'),('31','22'),('4','21'),('41','23'),('42','23'),('43','23'),('44','23'),('45','23'),('46','23'),('47','23'),('48','23'),('49','23'),('5','21'),('50','23'),('51','23'),('52','23'),('53','23'),('54','23'),('6','21'),('61','24'),('62','24'),('63','24'),('64','24'),('7','21'),('8','21'),('81','25'),('82','25'),('83','25'),('84','25'),('85','25'),('86','25'),('9','21');
/*!40000 ALTER TABLE `part_of` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `firstname_th` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `surname_th` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nationality` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `firstname_en` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `surname_en` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `phone_num` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `e_mail` varchar(320) COLLATE utf8_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES ('กิตติพงษ์','พูลขำ','ไทย','ชาย','1100234567891','Kittipong','Phoonkhum','0916458273','-','1978-03-31'),('ปิติ','ภิรม','ไทย','ชาย','1100454534554','Piti','Pirom','0942221355','blah_@hotmail.com','1996-05-30'),('วิชัย','ชูช่า','ไทย','ชาย','1100454534555','Vichai','Chucha','0805445966','vichaiza555@hotmail.com','1975-05-20'),('โฮม','สตูเด้น','ไทย','ชาย','1100702284409','Home','Student','0910095150','homestu@local.com','1998-05-05'),('เฟส','บุ้ค','ไทย','หญิง','1100702284415','Face','Book','0910095151','facebook','1996-11-11'),('คอส','เคอริคูลัม','ไทย','ชาย','1100702284422','Cos','Curriculum','0910095155','costansin@hotmail.com','1997-02-02'),('แอ๊ด','ของดี','ไทย','ชาย','1100702284433','Add','khongdee','0910095133','addkhongdee@hotmail.com','1997-03-03'),('ตรี','โท','ไทย','ชาย','1100702284444','Tee','To','0910095144','teetoaek@hotmail.com','1994-04-04'),('โอ','เลี้ยง','ไทย','หญิง','1100702284461','Owl','Luang','0910095262','oluang@amail.com','1990-01-06'),('นิว','เคลียร์','ไทย','หญิง','1100702284466','New','Clear','0910095166','newclear@icemail.com','1994-06-06'),('จิรันตน์','พุ่มกุมาร','ไทย','ชาย','1100702284488','Jirun','Pumkuman','0816550800','ampol.pong@gmail.com','1967-01-31'),('จิรัฏฐ์','โพธิ์โลหะกุล','ไทย','ชาย','1100702284499','Jirut','Polohakul','0910095150','jirut.pol@gmail.com','1996-03-03'),('ณัฐภัท','ธานินธรณ์','ไทย','ชาย','1100801007990','Nathaphat','Thanintorn','0616156993','mugen_rebellion@outlook.com','1995-06-30'),('เกรียงศักดิ์','หทัยเกษมสุข','ไทย','ชาย','1103456349766','Kraingsak','Hathaikasemsuk','091091190','0Protocal0@gmail.com','1996-01-04'),('ปฏิญาณ','เบ็ญจพันธ์','ไทย','ชาย','1184521345987','Patiyan','Benjapan','0885414122','Pay@msn.com','1996-02-18'),('อเล็ก','เฟอร์กูสัน','สกอตแลนด์','ชาย','1184525333987','Alex','Ferguson','0621553222','Alex.F@outlook.com','1944-02-15'),('เจอร์เก้น','คลอป','เยอรมัน','ชาย','1184525555987','Jurgen','Klopp','0512889654','JKlopp@gmail.com','1970-10-15'),('บิล','เกต','อเมริกา','ชาย','1210001234999','Bill','Gate','0215448777','BG@gmail.com','1960-08-08'),('กานต์กวี','ชนะสิทธิ์','ไทย','ชาย','1220400156845','Kankawee','Chanasit','0841094759','krawan511@gmail.com','1995-08-19'),('สิน','มานิตพิสิตกุล','ไทย','ชาย','1232091124576','Sinn','Manitpisitkul','0813214755','-','1995-01-01'),('เขียว','แดง','ไทย','ชาย','123456789012','keaw','red','0859214544','keaw@gmail.com','1998-07-05'),('ฟิลิปเป้','คูติญโญ่','บราซิล','ชาย','1444455111684','Philippe','Coutinho','0542336698','Couty@gmail.com','1990-01-01'),('พงศ์ตะวัน','ฉายประถีบ','ไทย','ชาย','1444455213684','Pongtawan','Chaiprateep','0915556213','ptw_cpt@gmail.com','1995-09-16'),('คริสเตียโน่','โรนัลโด้','โปรตุเกส','ชาย','1524854333213','Cristiano','Ronaldo','0665213999','CR7@gmail.com','1985-05-18'),('กิตติชัย','เสน่หา','ไทย','ชาย','1541822222323','Kittichai ','Sanaeha','0638412258','kt_asdf@hotmail.com','1995-10-27'),('ทรงยศ','สุขมันอนาค','ไทย','ชาย','1541822222355','Songyos','Sukmunanak','0812235668','SYS@gmail.com','1998-09-09'),('คณิติน','จันทร์ประเสริฐ','ไทย','ชาย','1579900647291','Khanitin','Chanprasert','0804943878','khanitin@hotmail.com','1996-02-02'),('อิอิ','ซ่า','ไทย','ชาย','1700154111999','Eiei','Za','028541666','eiei@gmail.com','1994-05-05'),('ทีปกร','ศรีทอง','ไทย','ชาย','1700154321999','Theepakorn','Srithong','0851236666','tpk_@hotmail.com','1995-10-28'),('ไกรภพ','ฟ้าส่งมา','ไทย','ชาย','1723020345719','Kraipob','Fasongma','0921394859','-','1999-02-02'),('สมหญิง','วิ่งเปรี้ยว','ไทย','หญิง','2121235555123','Somying','Wingpreaw','0885223214','sw@outlook.co.th','1966-01-01'),('สตีเว่น','เจอร์ราร์ด','อังกฤษ','ชาย','3101888421123','Steven','Gerrard','0813216548','sg8@outlook.com','1997-05-30'),('เลโอ','เมสซี่','อาเจนติน่า','ชาย','3212155555887','Leo','Messi','0998543222','Lmessiza555@outlook.com','1987-07-07');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prereq`
--

DROP TABLE IF EXISTS `prereq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prereq` (
  `cid1` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `cid2` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cid1`,`cid2`),
  KEY `prereq_ibfk_2` (`cid2`),
  CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`cid1`) REFERENCES `course` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`cid2`) REFERENCES `course` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prereq`
--

LOCK TABLES `prereq` WRITE;
/*!40000 ALTER TABLE `prereq` DISABLE KEYS */;
INSERT INTO `prereq` VALUES ('2301108','2301107');
/*!40000 ALTER TABLE `prereq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `section` (
  `sec_num` int(11) NOT NULL,
  `cid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sec_num`,`cid`),
  KEY `section_ibfk_1` (`cid`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'2102210'),(1,'2102383'),(1,'2108202'),(1,'2202112'),(1,'2301107'),(1,'2301108'),(1,'2302127'),(1,'2302163'),(1,'2304107'),(1,'2304108'),(1,'2402309'),(1,'2601111'),(1,'2605327'),(1,'2802312'),(1,'2802489'),(33,'2108202'),(33,'2110200');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stay_in`
--

DROP TABLE IF EXISTS `stay_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stay_in` (
  `did` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`did`,`national_id`),
  KEY `stay_in_ibfk_2` (`national_id`),
  CONSTRAINT `stay_in_ibfk_1` FOREIGN KEY (`did`) REFERENCES `department` (`did`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stay_in_ibfk_2` FOREIGN KEY (`national_id`) REFERENCES `person` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay_in`
--

LOCK TABLES `stay_in` WRITE;
/*!40000 ALTER TABLE `stay_in` DISABLE KEYS */;
INSERT INTO `stay_in` VALUES ('1','1100234567891'),('1','1100702284499'),('1','1103456349766'),('1','1210001234999'),('1','1220400156845'),('1','1232091124576'),('1','123456789012'),('1','1579900647291'),('1','1723020345719'),('104','1100454534554'),('104','1100702284433'),('104','1184525555987'),('104','1541822222323'),('104','1541822222355'),('142','1100702284422'),('142','1524854333213'),('142','2121235555123'),('2','1100454534555'),('2','1100801007990'),('2','1184521345987'),('2','1444455213684'),('2','1700154111999'),('2','3212155555887'),('22','1100702284466'),('44','1100702284409'),('61','1100702284461'),('62','1100702284415'),('62','1444455111684'),('62','3101888421123'),('8','1100702284444'),('82','1184525333987'),('82','1700154321999');
/*!40000 ALTER TABLE `stay_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `sid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `year_enrolled` int(11) NOT NULL,
  `Behaviour_score` int(11) NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sid`,`national_id`),
  KEY `student_ibfk_1` (`national_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`national_id`) REFERENCES `person` (`national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('5230088724','จบการศึกษา',2009,100,'1100702284461'),('5610923421','ปกติ',2013,100,'1232091124576'),('5630021521','ปกติ',2013,100,'1184521345987'),('5630088721','ปกติ',2013,99,'1100702284444'),('5630088722','ปกติ',2013,99,'1100702284466'),('5631188721','ปกติ',2013,100,'1700154111999'),('5730088726','ปกติ',2014,95,'1100702284433'),('5730345121','ปกติ',2015,50,'123456789012'),('5731007621','ปกติ',2014,100,'1220400156845'),('5731009921','ปกติ',2014,1000000,'1103456349766'),('5731013321','ปกติ',2014,95,'1579900647291'),('5731017921','ปกติ',2014,100,'1100702284499'),('5731034521','ปกติ',2014,100,'1100801007990'),('5830021521','ปกติ',2015,100,'1444455213684'),('5839988728','ปกติ',2015,97,'1100702284422'),('5845555524','ปกติ',2015,100,'1100702284415'),('5848828824','ปกติ',2015,100,'1444455111684'),('5848888824','ปกติ',2015,100,'3101888421123'),('5871212325','ปกติ',2015,100,'1700154321999'),('5912153221','ปกติ',2016,100,'3212155555887'),('5930102721','ปกติ',2016,100,'1723020345719'),('5930909923','ปกติ',2016,88,'1100702284409'),('5933205426','ปกติ',2016,100,'1100454534554'),('5933205526','ปกติ',2016,100,'1541822222355'),('5933215427','ปกติ',2016,100,'1541822222323');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_in`
--

DROP TABLE IF EXISTS `study_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `study_in` (
  `cur_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cur_id`,`sid`),
  KEY `fk2_idx` (`sid`),
  CONSTRAINT `fk1` FOREIGN KEY (`cur_id`) REFERENCES `curriculum` (`cur_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk2` FOREIGN KEY (`sid`) REFERENCES `student` (`sid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_in`
--

LOCK TABLES `study_in` WRITE;
/*!40000 ALTER TABLE `study_in` DISABLE KEYS */;
INSERT INTO `study_in` VALUES ('1','5610923421'),('1','5730345121'),('1','5731007621'),('1','5731009921'),('1','5731013321'),('1','5731017921'),('1','5731034521'),('1','5871212325'),('1','5930102721'),('104','5933205426'),('104','5933205526'),('104','5933215427'),('142','5839988728'),('2','5630021521'),('2','5631188721'),('2','5731034521'),('2','5830021521'),('2','5912153221'),('44','5930909923'),('62','5845555524'),('62','5848828824'),('62','5848888824'),('8','5630088721');
/*!40000 ALTER TABLE `study_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `take`
--

DROP TABLE IF EXISTS `take`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `take` (
  `year` int(11) NOT NULL,
  `semester` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `grade` float NOT NULL,
  `sid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `sec_num` int(11) NOT NULL,
  `cid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sid`,`national_id`,`sec_num`,`cid`,`year`,`semester`),
  KEY `take_ibfk_2` (`sec_num`,`cid`),
  CONSTRAINT `take_ibfk_1` FOREIGN KEY (`sid`, `national_id`) REFERENCES `student` (`sid`, `national_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `take_ibfk_2` FOREIGN KEY (`sec_num`, `cid`) REFERENCES `section` (`sec_num`, `cid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `take`
--

LOCK TABLES `take` WRITE;
/*!40000 ALTER TABLE `take` DISABLE KEYS */;
INSERT INTO `take` VALUES (2013,'เทอมต้น',3.5,'5610923421','1232091124576',1,'2301107'),(2014,'เทอมต้น',2,'5630021521','1184521345987',1,'2102210'),(2014,'เทอมต้น',3,'5630088721','1100702284444',1,'2108202'),(2013,'เทอมปลาย',3,'5630088722','1100702284466',1,'2202112'),(2014,'เทอมต้น',4,'5631188721','1700154111999',1,'2102383'),(2015,'เทอมต้น',3,'5730088726','1100702284433',1,'2605327'),(2014,'เทอมต้น',2,'5730345121','123456789012',1,'2301107'),(2014,'เทอมต้น',1,'5730345121','123456789012',1,'2302163'),(2014,'เทอมต้น',4,'5731007621','1220400156845',1,'2301107'),(2014,'เทอมต้น',3.5,'5731007621','1220400156845',1,'2302163'),(2014,'เทอมต้น',4,'5731007621','1220400156845',1,'2304107'),(2014,'เทอมต้น',2.5,'5731009921','1103456349766',1,'2301107'),(2014,'เทอมต้น',3.5,'5731013321','1579900647291',1,'2301107'),(2014,'เทอมต้น',2.5,'5731017921','1100702284499',1,'2301107'),(2014,'เทอมปลาย',2.5,'5731017921','1100702284499',1,'2301108'),(2014,'เทอมต้น',2.5,'5731017921','1100702284499',1,'2302127'),(2014,'เทอมต้น',0,'5731017921','1100702284499',1,'2302163'),(2016,'เทอมต้น',4,'5731017921','1100702284499',33,'2110200'),(2015,'เทอมต้น',4,'5731034521','1100801007990',1,'2102210'),(2016,'เทอมต้น',2.5,'5830021521','1444455213684',1,'2102210'),(2016,'เทอมต้น',1,'5830021521','1444455213684',1,'2102383'),(2016,'เทอมปลาย',2,'5839988728','1100702284422',1,'2802312'),(2015,'เทอมปลาย',3,'5845555524','1100702284415',1,'2402309'),(2016,'เทอมต้น',2.5,'5848828824','1444455111684',1,'2402309'),(2015,'เทอมต้น',4,'5848888824','3101888421123',1,'2402309'),(2016,'เทอมต้น',2,'5912153221','3212155555887',1,'2102383'),(2016,'เทอมต้น',4,'5930102721','1723020345719',1,'2301107'),(2016,'เทอมปลาย',1.5,'5930909923','1100702284409',1,'2304108'),(2016,'เทอมต้น',2,'5933205426','1100454534554',1,'2601111'),(2016,'เทอมต้น',1.5,'5933205526','1541822222355',1,'2601111'),(2016,'เทอมต้น',1,'5933215427','1541822222323',1,'2601111');
/*!40000 ALTER TABLE `take` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teach`
--

DROP TABLE IF EXISTS `teach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teach` (
  `year` int(11) NOT NULL,
  `semester` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sec_num` int(11) NOT NULL,
  `cid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `tid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`sec_num`,`cid`,`tid`,`national_id`,`semester`,`year`),
  KEY `teach_ibfk_2` (`tid`,`national_id`),
  CONSTRAINT `teach_ibfk_1` FOREIGN KEY (`sec_num`, `cid`) REFERENCES `section` (`sec_num`, `cid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `teach_ibfk_2` FOREIGN KEY (`tid`, `national_id`) REFERENCES `instructor` (`tid`, `national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teach`
--

LOCK TABLES `teach` WRITE;
/*!40000 ALTER TABLE `teach` DISABLE KEYS */;
INSERT INTO `teach` VALUES (2344,'เทอมต้น',33,'2110200','5731018911','1100702284488');
/*!40000 ALTER TABLE `teach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacation`
--

DROP TABLE IF EXISTS `vacation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vacation` (
  `vid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `national_id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `v_date_start` date NOT NULL,
  `v_date_end` date NOT NULL,
  PRIMARY KEY (`vid`,`sid`,`national_id`),
  KEY `vacation_ibfk_1` (`sid`,`national_id`),
  CONSTRAINT `vacation_ibfk_1` FOREIGN KEY (`sid`, `national_id`) REFERENCES `student` (`sid`, `national_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacation`
--

LOCK TABLES `vacation` WRITE;
/*!40000 ALTER TABLE `vacation` DISABLE KEYS */;
INSERT INTO `vacation` VALUES ('0123456781','5731017921','1100702284499','1995-12-21','2000-04-30'),('7222','5731034521','1100801007990','2015-02-10','2015-02-15'),('8151','5848888824','3101888421123','2015-12-20','2015-12-30'),('8451212','5730345121','123456789012','2017-05-01','2017-05-02'),('951212111','5731034521','1100801007990','2014-10-30','2014-11-08'),('9848151','5871212325','1700154321999','2016-02-01','2016-02-21');
/*!40000 ALTER TABLE `vacation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-01 19:40:25
