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
  KEY `sid` (`sid`,`national_id`),
  CONSTRAINT `activityandaward_ibfk_1` FOREIGN KEY (`sid`, `national_id`) REFERENCES `student` (`sid`, `national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activityandaward`
--

LOCK TABLES `activityandaward` WRITE;
/*!40000 ALTER TABLE `activityandaward` DISABLE KEYS */;
INSERT INTO `activityandaward` VALUES ('วันแรกพบนิสิตใหม่',2012,'0123456789','','5731017921','1100702284499');
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
INSERT INTO `address` VALUES (0,'ทอง','หนทาง','เร็วมาก','เขวียง','ไม่ใช่ตำบล','ดีครับ',10990),(4,'','เพชรเกษม','98/1','บางแคเหนือ','บางแค','กรุงเทพ',10160),(11,'','ไอแพด','','ธนาคารโลก','นักเขียน','กระชับ',44440),(11,'','แคบมาก','','ฟาร์มเฮ้า','อินเทล','ชลบุรี',12345),(15,'สูตรเตี่ยว','เคม','','ปั่นงาน','เร็วดิ๊','เหนื่อยโว้ย',40040),(15,'กอขอคอ','แอปพรูฟ','','รีพอท','วิวคอส','แอดมิสชั่น',33030),(71,'','อุตรกิจ','','เวียง','เมืองเชียงราย','กรุงเทพ',57000),(80,'อาเงิน','นะจ๊ะ','โคตรถี่','ตำล่าง','ซีอุส','ไม่ดีครับ',11990),(156,'','นานาชาติ','','การผลิต','ภูมิภาค','สตรีม',66066),(156,'','แชร์','','ทวีต','อินสตาแกรม','ยูเฟลล์',61600);
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
  KEY `cur_id` (`cur_id`),
  CONSTRAINT `consist_of_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`),
  CONSTRAINT `consist_of_ibfk_2` FOREIGN KEY (`cur_id`) REFERENCES `curriculum` (`cur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consist_of`
--

LOCK TABLES `consist_of` WRITE;
/*!40000 ALTER TABLE `consist_of` DISABLE KEYS */;
INSERT INTO `consist_of` VALUES ('2301107','1'),('2301108','1'),('2302127','1'),('2302163','1'),('2304107','1'),('2304108','1');
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
  KEY `sid` (`sid`,`national_id_s`),
  CONSTRAINT `consult_ibfk_1` FOREIGN KEY (`tid`, `national_id_t`) REFERENCES `instructor` (`tid`, `national_id`),
  CONSTRAINT `consult_ibfk_2` FOREIGN KEY (`sid`, `national_id_s`) REFERENCES `student` (`sid`, `national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consult`
--

LOCK TABLES `consult` WRITE;
/*!40000 ALTER TABLE `consult` DISABLE KEYS */;
INSERT INTO `consult` VALUES ('5731018911','1100702284488','5731017921','1100702284499');
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
INSERT INTO `course` VALUES ('2110200',3,'DISCRETE STRUC','วิชาบังคับ','วิชาการคำนวณแบบแยก'),('2301107',3,'Cal I','วิชาบังคับ',''),('2301108',3,'Cal II','วิชาบังคับ',''),('2302127',3,'GEN CHEM','วิชาบังคับ',''),('2302163',1,'LAB CHEM','วิชาบังคับ',''),('2304107',3,'GEN PHY I','วิชาบังคับ',NULL),('2304108',3,'GEN PHY II','วิชาบังคับ','');
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
  CONSTRAINT `coursefullname_ibfk_1` FOREIGN KEY (`c_sname`) REFERENCES `course` (`c_sname`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursefullname`
--

LOCK TABLES `coursefullname` WRITE;
/*!40000 ALTER TABLE `coursefullname` DISABLE KEYS */;
INSERT INTO `coursefullname` VALUES ('discrete structure','DISCRETE STRUC'),('Calculus I','Cal I'),('Calculus II','Cal II'),('General Chemistry','GEN CHEM'),('General Chemistry Laboratory','LAB CHEM'),('General Physics II','GEN PHY II'),('General Physics I','GEN PHY I');
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
INSERT INTO `curriculum` VALUES ('1','วิศวกรรมคอมพิวเตอร์',2014,'ตรี');
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
INSERT INTO `department` VALUES ('104','การตลาด'),('103','การธนาคารและการเงิน'),('101','การบัญชี'),('61','การปกครอง'),('141','การประชาสัมพันธ์'),('145','การภาพยนตร์และภาพนิ่ง'),('83','การวางแผนภาคและเมือง'),('125','การศึกษาตลอดชีวิต'),('142','การสื่อสารมวลชน'),('84','การออกแบบอุตสาหกรรม'),('41','คณิตศาสตร์และวิทยาการคอมพิวเตอร์'),('62','ความสัมพันธ์ระหว่างประเทศ'),('52','จุลชีววิทยา'),('43','ชีววิทยา'),('50','ชีวเคมี'),('47','ธรณีวิทยา'),('124','นโยบาย การจัดการและความเป็นผู้นำทางการศึกษา'),('21','บรรณารักษศาสตร์'),('22','ประวัติศาสตร์'),('23','ปรัชญา'),('45','พฤกษศาสตร์'),('102','พาณิชยศาสตร์'),('44','ฟิสิกส์'),('24','ภาษาตะวันตก'),('25','ภาษาตะวันออก'),('27','ภาษาศาสตร์'),('28','ภาษาอังกฤษ'),('26','ภาษาไทย'),('29','ภูมิศาสตร์'),('85','ภูมิสถาปัตยกรรม'),('63','รัฐประศาสนศาสตร์'),('31','วรรณคดีเปรียบเทียบ'),('51','วัสดุศาสตร์'),('144','วาทวิทยาและสื่อสารการแสดง'),('143','วารสารสนเทศ'),('126','วิจัยและจิตวิทยาการศึกษา'),('49','วิทยาศาสตร์ทางทะเล'),('53','วิทยาศาสตร์ทางภาพถ่ายและเทคโนโลยีทางการพิมพ์'),('48','วิทยาศาสตร์สิ่งแวดล้อม'),('1','วิศวกรรมคอมพิวเตอร์'),('11','วิศวกรรมนิวเคลียร์'),('8','วิศวกรรมสำรวจ'),('7','วิศวกรรมสิ่งแวดล้อม'),('4','วิศวกรรมอุตสาหการ'),('5','วิศวกรรมเคมี'),('3','วิศวกรรมเครื่องกล'),('6','วิศวกรรมเหมืองแร่และปิโตรเลียม'),('12','วิศวกรรมแหล่งน้ำ'),('10','วิศวกรรมโยธา'),('9','วิศวกรรมโลหการ'),('2','วิศวกรรมไฟฟ้า'),('30','ศิลปการละคร'),('123','ศิลปะ ดนตรี และนาฏศิลป์ศึกษา'),('82','สถาปัตยกรรมภายใน'),('81','สถาปัตยกรรมศาสตร์'),('105','สถิติ'),('64','สังคมวิทยาและมานุษยวิทยา'),('121','หลักสูตรและการสอน'),('42','เคมี'),('46','เคมีเทคนิค'),('86','เคหการ'),('54','เทคโนโลยีทางอาหาร'),('122','เทคโนโลยีและการสื่อสารการศึกษา');
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
INSERT INTO `departmentengname` VALUES ('Marketing','การตลาด'),('Banking and Finance','การธนาคารและการเงิน'),('Accounting','การบัญชี'),('Government','การปกครอง'),('Public Relations','การประชาสัมพันธ์'),('Motion Pictures and Still Photography','การภาพยนตร์และภาพนิ่ง'),('Urban and Regional Planning','การวางแผนภาคและเมือง'),('Lifelong Education','การศึกษาตลอดชีวิต'),('Mass Communication','การสื่อสารมวลชน'),('Industrial Design','การออกแบบอุตสาหกรรม'),('Mathematics and Computer Scien','คณิตศาสตร์และวิทยาการคอมพิวเตอ'),('International Relations','ความสัมพันธ์ระหว่างประเทศ'),('Microbiology','จุลชีววิทยา'),('Biology','ชีววิทยา'),('Biochemistry','ชีวเคมี'),('Geology','ธรณีวิทยา'),('Educational Policy, Management, and Leadership','นโยบาย การจัดการและความเป็นผู้นำทางการศึกษา'),('Library Science','บรรณารักษศาสตร์'),('History','ประวัติศาสตร์'),('Philosophy','ปรัชญา'),('Botany','พฤกษศาสตร์'),('Commerce','พาณิชยศาสตร์'),('Physics','ฟิสิกส์'),('Western Languages','ภาษาตะวันตก'),('Eastern Languages','ภาษาตะวันออก'),('Linguistics','ภาษาศาสตร์'),('English','ภาษาอังกฤษ'),('Thai','ภาษาไทย'),('Geography','ภูมิศาสตร์'),('Landscape Architecture','ภูมิสถาปัตยกรรม'),('Public Administration','รัฐประศาสนศาสตร์'),('Comparative Literature','วรรณคดีเปรียบเทียบ'),('Material Science','วัสดุศาสตร์'),('Speech Communication and Performing Arts','วาทวิทยาและสื่อสารการแสดง'),('Journalism','วารสารสนเทศ'),('Educational Research and Psychology','วิจัยและจิตวิทยาการศึกษา'),('Marine Science','วิทยาศาสตร์ทางทะเลย'),('Photographic Science and Print','วิทยาศาสตร์ทางภาพถ่ายและเทคโนโ'),('Enviromental Science','วิทยาศาสตร์สิ่งแวดล้อม'),('Computer Engineering','วิศวกรรมคอมพิวเตอร์'),('Nuclear Engineering','วิศวกรรมนิวเคลียร์'),('Survey Engineering','วิศวกรรมสำรวจ'),('Environmental Engineering','วิศวกรรมสิ่งแวดล้อม'),('Industrial Engineering','วิศวกรรมอุตสาหการ'),('Chemical Engineering','วิศวกรรมเคมี'),('Mechanical Engineering','วิศวกรรมเครื่องกล'),('Mining and Petroleum Engineering','วิศวกรรมเหมืองแร่และปิโตรเลียม'),('Water Resources Engineering','วิศวกรรมแหล่งน้ำ'),('Civil Engineering','วิศวกรรมโยธา'),('Metallurgical Engineering','วิศวกรรมโลหการ'),('Electrical Engineering','วิศวกรรมไฟฟ้า'),('Dramatic Arts','ศิลปการละคร'),('Art, Music and Dance Education','ศิลปะ ดนตรี และนาฏศิลป์ศึกษา'),('Interior Architecture','สถาปัตยกรรมภายใน'),('Architecture','สถาปัตยกรรมศาสตร์'),('Statistics','สถิติ'),('Sociology and Anthropology','สังคมวิทยาและมานุษยวิทยา'),('Curriculum and Instruction','หลักสูตรและการสอน'),('Chemistry','เคมี'),('Chemical Technology','เคมีเทคนิค'),('Housing','เคหการ'),('Food Technology','เทคโนโลยีทางอาหาร'),('Educational Communication and Technology','เทคโนโลยีและการสื่อสารการศึกษา');
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
  KEY `sid` (`sid`,`national_id`),
  CONSTRAINT `exchange_ibfk_1` FOREIGN KEY (`sid`, `national_id`) REFERENCES `student` (`sid`, `national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange`
--

LOCK TABLES `exchange` WRITE;
/*!40000 ALTER TABLE `exchange` DISABLE KEYS */;
INSERT INTO `exchange` VALUES ('0123456789','5731017921','1100702284499','2005-03-03','2006-04-04','ไทย','test');
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
  CONSTRAINT `facultyengname_ibfk_1` FOREIGN KEY (`fname_th`) REFERENCES `faculty` (`fname_th`) ON DELETE CASCADE ON UPDATE NO ACTION
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
  KEY `national_id` (`national_id`),
  CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`national_id`) REFERENCES `person` (`national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instructor`
--

LOCK TABLES `instructor` WRITE;
/*!40000 ALTER TABLE `instructor` DISABLE KEYS */;
INSERT INTO `instructor` VALUES ('5731018911','ปกติ','1100702284488');
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
  CONSTRAINT `live_in_ibfk_1` FOREIGN KEY (`national_id`) REFERENCES `person` (`national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_in`
--

LOCK TABLES `live_in` WRITE;
/*!40000 ALTER TABLE `live_in` DISABLE KEYS */;
INSERT INTO `live_in` VALUES ('1100702284405','80','ตำล่าง','ซีอุส','ไม่ดีครับ'),('1100702284409','0','เขวียง','ไม่ใช่ตำบล','ดีครับ'),('1100702284415','11','ฟาร์มเฮ้า','อินเทล','ชลบุรี'),('1100702284422','11','ธนาคารโลก','นักเขียน','กระชับ'),('1100702284433','15','รีพอท','วิวคอส','แอดมิสชั่น'),('1100702284444','15','ปั่นงาน','เร็วดิ๊','เหนื่อยโว้ย'),('1100702284461','156','ทวีต','อินสตาแกรม','ยูเฟลล์'),('1100702284466','156','การผลิต','ภูมิภาค','สตรีม'),('1100702284499','4','บางแคเหนือ','บางแค','กรุงเทพ'),('123456789012','4','บางแคเหนือ','บางแค','กรุงเทพ'),('1579900647291','71','เวียง','เมืองเชียงราย','กรุงเทพ');
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
  KEY `did` (`did`),
  CONSTRAINT `manage_ibfk_1` FOREIGN KEY (`cur_id`) REFERENCES `curriculum` (`cur_id`),
  CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`did`) REFERENCES `department` (`did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manage`
--

LOCK TABLES `manage` WRITE;
/*!40000 ALTER TABLE `manage` DISABLE KEYS */;
INSERT INTO `manage` VALUES ('1','1');
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
  KEY `fid` (`fid`),
  CONSTRAINT `part_of_ibfk_1` FOREIGN KEY (`did`) REFERENCES `department` (`did`),
  CONSTRAINT `part_of_ibfk_2` FOREIGN KEY (`fid`) REFERENCES `faculty` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part_of`
--

LOCK TABLES `part_of` WRITE;
/*!40000 ALTER TABLE `part_of` DISABLE KEYS */;
INSERT INTO `part_of` VALUES ('1','21'),('10','21'),('101','26'),('102','26'),('103','26'),('104','26'),('105','26'),('11','21'),('12','21'),('121','27'),('122','27'),('123','27'),('124','27'),('125','27'),('126','27'),('141','28'),('142','28'),('143','28'),('144','28'),('145','28'),('2','21'),('21','22'),('22','22'),('23','22'),('24','22'),('25','22'),('26','22'),('27','22'),('28','22'),('29','22'),('3','21'),('30','22'),('31','22'),('4','21'),('41','23'),('42','23'),('43','23'),('44','23'),('45','23'),('46','23'),('47','23'),('48','23'),('49','23'),('5','21'),('50','23'),('51','23'),('52','23'),('53','23'),('54','23'),('6','21'),('61','24'),('62','24'),('63','24'),('64','24'),('7','21'),('8','21'),('81','25'),('82','25'),('83','25'),('84','25'),('85','25'),('86','25'),('9','21');
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
INSERT INTO `person` VALUES ('แอกตี้','อะหวาด','ไทย','ชาย','1100702284405','Acti','Award','0919009090','actiaward@gmail.com','1998-06-06'),('โฮม','สตูเด้น','ไทย','ชาย','1100702284409','Home','Student','0910095150','homestu@local.com','1998-05-05'),('เฟส','บุ้ค','ไทย','หญิง','1100702284415','Face','Book','0910095151','facebook','1996-11-11'),('คอส','เคอริคูลัม','ไทย','ชาย','1100702284422','Cos','Curriculum','0910095155','costansin@hotmail.com','1997-02-02'),('แอ๊ด','ของดี','ไทย','ชาย','1100702284433','Add','khongdee','0910095133','addkhongdee@hotmail.com','1997-03-03'),('ตรี','โท','ไทย','ชาย','1100702284444','Tee','To','0910095144','teetoaek@hotmail.com','1994-04-04'),('โอ','เลี้ยง','ไทย','หญิง','1100702284461','Owl','Luang','0910095262','oluang@amail.com','1990-01-06'),('นิว','เคลียร์','ไทย','หญิง','1100702284466','New','Clear','0910095166','newclear@icemail.com','1994-06-06'),('จิรันตน์','พุ่มกุมาร','ไทย','ชาย','1100702284488','Ampol','Polohakul','0816550800','ampol.pong@gmail.com','1967-01-31'),('จิรัฏฐ์','โพธิ์โลหะกุล','ไทย','ชาย','1100702284499','Jirut','Polohakul','0910095150','jirut.pol@gmail.com','1996-03-03'),('เขียว','แดง','ไทย','ชาย','123456789012','keaw','red','0859214544','keaw@gmail.com','1998-07-05'),('คณิติน','จันทร์ประเสริฐ','ไทย','ชาย','1579900647291','Khanitin','Chanprasert','0804943878','khanitin@hotmail.com','1996-02-02');
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
  KEY `cid2` (`cid2`),
  CONSTRAINT `prereq_ibfk_1` FOREIGN KEY (`cid1`) REFERENCES `course` (`cid`),
  CONSTRAINT `prereq_ibfk_2` FOREIGN KEY (`cid2`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prereq`
--

LOCK TABLES `prereq` WRITE;
/*!40000 ALTER TABLE `prereq` DISABLE KEYS */;
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
  KEY `cid` (`cid`),
  CONSTRAINT `section_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (1,'2301107'),(1,'2301108'),(1,'2302127'),(1,'2302163'),(1,'2304107'),(1,'2304108'),(33,'2110200');
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
  CONSTRAINT `stay_in_ibfk_1` FOREIGN KEY (`did`) REFERENCES `department` (`did`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `stay_in_ibfk_2` FOREIGN KEY (`national_id`) REFERENCES `person` (`national_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay_in`
--

LOCK TABLES `stay_in` WRITE;
/*!40000 ALTER TABLE `stay_in` DISABLE KEYS */;
INSERT INTO `stay_in` VALUES ('1','1100702284499'),('1','123456789012'),('1','1579900647291'),('104','1100702284433'),('105','1100702284405'),('142','1100702284422'),('22','1100702284466'),('44','1100702284409'),('61','1100702284461'),('62','1100702284415'),('8','1100702284444');
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
  KEY `national_id` (`national_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`national_id`) REFERENCES `person` (`national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('5230088724','จบการศึกษา',2009,100,'1100702284461'),('5630088721','ปกติ',2013,99,'1100702284444'),('5630088722','ปกติ',2013,99,'1100702284466'),('5730088726','ปกติ',2014,95,'1100702284433'),('5730345121','ปกติ',2015,50,'123456789012'),('5731013321','ปกติ',2014,95,'1579900647291'),('5731017921','ปกติ',2014,100,'1100702284499'),('5839988728','ปกติ',2015,97,'1100702284422'),('5845555524','ปกติ',2015,100,'1100702284415'),('5930909923','ปกติ',2016,88,'1100702284409'),('5931010923','ปกติ',2016,100,'1100702284405');
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
INSERT INTO `study_in` VALUES ('1','5731013321'),('1','5731017921');
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
  KEY `sec_num` (`sec_num`,`cid`),
  CONSTRAINT `take_ibfk_1` FOREIGN KEY (`sid`, `national_id`) REFERENCES `student` (`sid`, `national_id`),
  CONSTRAINT `take_ibfk_2` FOREIGN KEY (`sec_num`, `cid`) REFERENCES `section` (`sec_num`, `cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `take`
--

LOCK TABLES `take` WRITE;
/*!40000 ALTER TABLE `take` DISABLE KEYS */;
INSERT INTO `take` VALUES (2014,'เทอมต้น',2.5,'5731017921','1100702284499',1,'2301107'),(2014,'เทอมปลาย',2.5,'5731017921','1100702284499',1,'2301108'),(2014,'เทอมต้น',2.5,'5731017921','1100702284499',1,'2302127'),(2014,'เทอมต้น',0,'5731017921','1100702284499',1,'2302163'),(2016,'เทอมต้น',4,'5731017921','1100702284499',33,'2110200');
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
  KEY `tid` (`tid`,`national_id`),
  CONSTRAINT `teach_ibfk_1` FOREIGN KEY (`sec_num`, `cid`) REFERENCES `section` (`sec_num`, `cid`),
  CONSTRAINT `teach_ibfk_2` FOREIGN KEY (`tid`, `national_id`) REFERENCES `instructor` (`tid`, `national_id`)
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
  KEY `sid` (`sid`,`national_id`),
  CONSTRAINT `vacation_ibfk_1` FOREIGN KEY (`sid`, `national_id`) REFERENCES `student` (`sid`, `national_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacation`
--

LOCK TABLES `vacation` WRITE;
/*!40000 ALTER TABLE `vacation` DISABLE KEYS */;
INSERT INTO `vacation` VALUES ('0123456781','5731017921','1100702284499','1995-12-21','2000-04-30');
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

-- Dump completed on 2017-04-23 21:53:59
