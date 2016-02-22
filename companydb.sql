-- MySQL dump 10.13  Distrib 5.5.42, for osx10.6 (i386)
--
-- Host: localhost    Database: companydb
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `employee_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `assignment_employee_fk` (`employee_id`),
  KEY `assignment_project_fk` (`project_id`),
  CONSTRAINT `assignment_employee_fk` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  CONSTRAINT `assignment_project_fk` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assignments`
--

LOCK TABLES `assignments` WRITE;
/*!40000 ALTER TABLE `assignments` DISABLE KEYS */;
INSERT INTO `assignments` VALUES (1,NULL,'1939-10-30','1984-08-15',1043,1),(2,NULL,'1939-10-31','1984-08-15',1002,1),(3,NULL,'1939-10-31','1984-08-15',1004,1),(4,NULL,'1939-10-31','1984-08-15',1005,1),(5,NULL,'1939-10-31','1984-08-15',1011,1),(6,NULL,'1939-10-31','1984-08-15',1013,1),(7,NULL,'1939-10-31','1984-08-15',1016,1),(8,NULL,'1939-10-31','1984-08-15',1024,1),(9,NULL,'1939-10-31','1984-08-15',1031,1),(10,NULL,'1939-10-31','1984-08-15',1042,1),(11,NULL,'1939-10-31','1984-08-15',1049,1),(12,NULL,'1939-10-31','1984-08-15',1053,1),(13,NULL,'1939-10-31','1979-05-25',1060,1),(14,NULL,'1939-10-31','1950-01-02',1066,1),(15,NULL,'1939-10-31','1984-08-15',1072,1),(16,NULL,'1939-10-31','1984-08-15',1077,1),(17,NULL,'1939-10-31','1984-08-15',1078,1),(18,NULL,'1939-10-31','1984-08-15',1082,1),(19,NULL,'1939-10-31','1984-08-15',1084,1),(20,NULL,'1939-10-31','1984-08-15',1086,1),(21,NULL,'1939-10-31','1984-08-15',1087,1),(22,NULL,'1939-10-31','1984-08-15',1096,1),(23,NULL,'1939-10-31','1984-08-15',1098,1),(24,NULL,'1939-10-31','1984-08-15',1103,1),(25,NULL,'1939-10-31','1984-08-15',1107,1),(26,NULL,'1939-10-31','1984-08-15',1116,1),(27,NULL,'1939-10-31','1984-08-15',1130,1),(28,NULL,'1939-10-31','1984-08-15',1133,1),(29,NULL,'1950-01-02','1982-07-09',1066,2),(30,NULL,'1974-10-12',NULL,1012,4),(31,NULL,'1978-04-08',NULL,1029,3),(32,NULL,'1979-05-25',NULL,1060,5),(33,NULL,'1982-09-03',NULL,1126,4),(34,NULL,'1983-12-02',NULL,1079,3),(35,NULL,'1986-07-05','2002-11-26',1039,3),(36,NULL,'1986-05-09',NULL,1075,3),(37,NULL,'1986-05-21','2005-06-29',1047,4),(38,NULL,'1987-08-02',NULL,1046,3),(39,NULL,'1987-08-31','2005-06-29',1009,4),(40,NULL,'1988-12-01',NULL,1096,7),(41,NULL,'1989-01-23',NULL,1112,4),(42,NULL,'1989-11-22','1990-05-25',1066,8),(43,NULL,'1989-12-16',NULL,1053,6),(44,NULL,'1990-04-30',NULL,1108,4),(45,NULL,'1995-03-18','2005-06-29',1093,4),(46,NULL,'1995-07-21',NULL,1095,3),(47,NULL,'2001-02-15',NULL,1056,4),(48,NULL,'2002-11-26',NULL,1039,11),(49,NULL,'2002-11-26',NULL,1023,11),(50,NULL,'2002-11-26',NULL,1040,11),(51,NULL,'2003-04-14',NULL,1058,11),(52,NULL,'2003-07-11',NULL,1099,11),(53,NULL,'2004-06-06','2005-06-29',1127,4),(54,NULL,'2004-07-07',NULL,1024,10),(55,NULL,'2005-06-29',NULL,1127,12),(56,NULL,'2005-06-29',NULL,1009,12),(57,NULL,'2005-06-29',NULL,1047,12),(58,NULL,'2005-06-29',NULL,1093,12),(59,NULL,'2008-11-04',NULL,1004,9),(60,NULL,'2009-05-21',NULL,1129,12);
/*!40000 ALTER TABLE `assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `manager_id` int(11) NOT NULL DEFAULT '0',
  `location_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_mgr_u` (`manager_id`),
  KEY `department_loc_fk` (`location_id`),
  CONSTRAINT `department_loc_fk` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  CONSTRAINT `department_mgr_fk` FOREIGN KEY (`manager_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'Research',1062,4),(2,'Administration',1135,2),(3,'Software Development',1113,3),(4,'Hardware Development',1120,3),(5,'Test And Integration',1026,3),(6,'Sales',1063,1),(7,'HR',1048,2),(8,'Facilities',1100,2),(9,'Operations',1101,1),(10,'Documentation',1035,2);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(20) NOT NULL,
  `middlename` varchar(20) DEFAULT NULL,
  `lastname` varchar(30) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(31) DEFAULT NULL,
  `extension` smallint(6) DEFAULT NULL,
  `hiredate` date DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `commission_pct` int(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `address` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `employee_job_fk` (`job_id`),
  KEY `employee_dept_fk` (`department_id`),
  CONSTRAINT `employee_dept_fk` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  CONSTRAINT `employee_job_fk` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1136 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1001,'Patrick','','Acosta','M',NULL,1147,'1986-08-13',61000,NULL,9,4,'876 Vesper Drive','Atlanta','GA','30324',0),(1002,'John','','Amdell','M',NULL,1243,'1938-10-31',15000,0,1,10,'1938 Grover Avenue','Grover\'s Mill','NJ','08538',0),(1003,'Letitia','Rochelle','Anderson','F',NULL,1136,'1995-01-29',21000,NULL,2,26,'515 North Fork Drive','Boston','MA','02131',0),(1004,'John','','Angel','M',NULL,1220,'1938-10-31',30000,0,1,8,'1938 Old Hightstown Place','Cranburg','NJ','08512',0),(1005,'John','','Ayer','M',NULL,1242,'1938-10-31',15000,NULL,1,10,'1938 Old Princeton Trail','Windsor','NJ','08561',0),(1006,'Patrick','','Bailey','M',NULL,1154,'1984-09-24',41000,0,9,6,'728 Roswell Road','Atlanta','GA','30316',0),(1007,'John','','Barrell','M',NULL,1214,'1938-10-31',50000,NULL,1,4,'1938 Hightstown Place','Princeton','NJ','08541',0),(1008,'Vivian','Reyna','Baxter','F',NULL,1158,'1994-12-22',82000,0,2,30,'16 Quincy Hills Boulevard','Boston','MA','02129',0),(1009,'Ty','','Beard','M',NULL,1206,'1987-08-31',65000,NULL,3,17,'843 Fern Park Circle','Charlotte','NC','28228',0),(1010,'Luigi','Bruno','Berger','M',NULL,1192,'1955-10-20',90000,0,5,16,'412 Springwater Drive','Charlotte','NC','28206',0),(1011,'John','Mini','Berries','M',NULL,1235,'1938-10-31',20000,NULL,1,9,'1938 Grover Place','Grover\'s Mill','NJ','08538',0),(1012,'Larry','','Best','M',NULL,1188,'1974-10-12',65000,0,3,18,'536 Orchard Drive','Charlotte','NC','28205',0),(1013,'John','Sky','Bird','M',NULL,1236,'1938-10-31',20000,NULL,1,9,'1938 West Mill Drive','Princeton Junction','NJ','08550',0),(1014,'John','','Bivouc','M',NULL,1212,'1938-10-31',60000,0,1,3,'1938 Old Junction Street','Windsor','NJ','08561',0),(1015,'Kearie','Jasmine','Booker','F',NULL,1122,'1994-04-20',25000,NULL,9,14,'983 Unadilla Road','Atlanta','GA','30321',0),(1016,'John','','Bowlin','M',NULL,1229,'1938-10-31',20000,0,1,9,'1938 Grover Street','Grover\'s Mill','NJ','08538',0),(1017,'Thelma','Dionne','Burgess','F',NULL,1155,'1989-03-13',67000,10,6,3,'153 Alpharetta Highway','Atlanta','GA','30315',0),(1018,'Glenda','','Burks','F',NULL,1125,'1990-04-02',29000,0,3,7,'302 Hametown Road','Charlotte','NC','28210',0),(1019,'Elwood','Merle','Calhoun','M',NULL,1174,'1996-06-28',22000,NULL,2,26,'658 Ira Road','Boston','MA','02101',0),(1020,'Walker','','Calhoun','M',NULL,1207,'1998-06-02',38000,8,6,21,'536 Beamer Lane','Boston','MA','02101',0),(1021,'Hugh','','Campbell','M',NULL,1179,'1988-01-18',32000,6,6,23,'798 Montrose Avenue','Boston','MA','02125',0),(1022,'King','Dewayne','Cardenas','M',NULL,1185,'1999-02-09',84000,0,2,31,'910 Flannery Circle','Charlotte','NC','28225',0),(1023,'Mariana','Eliza','Castillo','F',NULL,1141,'1988-09-02',67000,NULL,4,17,'848 Round Rock Drive','Charlotte','NC','28215',0),(1024,'John','Qim','Chee','M',NULL,1223,'1938-10-31',30000,0,1,8,'1938 Hightstown Place, South','Grover\'s Mill','NJ','08538',0),(1025,'Kareem','','Christian','M',NULL,1182,'1999-02-26',25000,NULL,4,7,'359 Oak Knoll Road','Charlotte','NC','28203',0),(1026,'Jami','Silvia','Church','F',NULL,1127,'1996-02-17',65000,0,5,3,'189 Idlebrook Drive','Charlotte','NC','28211',0),(1027,'John','Town','Crier','M',NULL,1213,'1938-10-31',60000,NULL,1,3,'1938 North Cranburg Highway','Grover\'s Mill','NJ','08538',0),(1028,'Elliot','','Cross','M',NULL,1173,'1976-02-26',36000,0,9,14,'962 High Ridge Trail','Atlanta','GA','30308',0),(1029,'Travis','Damion','David','M',NULL,1205,'1978-04-08',75000,NULL,4,17,'855 Main Street','Charlotte','NC','28229',0),(1030,'Korie','Bianca','Dean','F',NULL,1130,'2002-12-31',26000,8,6,23,'533 Knollwood Lane','Atlanta','GA','30320',0),(1031,'John','','deConnor','M',NULL,1230,'1938-10-31',20000,0,1,9,'1938 Old Mill Drive','Cranburg','NJ','08512',0),(1032,'Donovan','Nestor','Dorsey','M',NULL,1170,'1978-03-13',44000,NULL,5,24,'453 Ghent Ridge Road','Charlotte','NC','28236',0),(1033,'Wiley','','Durham','M',NULL,1208,'1984-03-15',57000,2,6,20,'587 Rose Avenue','Atlanta','GA','30322',0),(1034,'Lucas','Marquis','Espinoza','M',NULL,1191,'1980-09-16',38000,6,6,23,'817 Revere Road','Charlotte','NC','28209',0),(1035,'Ernestine','','Estrada','F',NULL,1121,'1992-02-05',53000,0,7,5,'442 Four Seasons Drive','Boston','MA','02133',0),(1036,'Georgia','','Farmer','F',NULL,1124,'2000-03-08',28000,6,6,23,'782 Greenhaven Drive','Boston','MA','02114',0),(1037,'Wendy','','Fleming','F',NULL,1159,'1990-05-12',42000,8,6,21,'425 Fulton Drive','Atlanta','GA','30312',0),(1038,'Edgar','Andre','Frank','M',NULL,1171,'1990-08-25',28000,NULL,9,12,'873 Greenhaven Circle','Atlanta','GA','30309',0),(1039,'Ross','Samual','Franks','M',NULL,1201,'1986-01-05',68000,0,4,16,'971 Park Street','Charlotte','NC','28232',0),(1040,'Noble','Dana','Frazier','M',NULL,1195,'1979-06-17',62000,NULL,4,18,'730 Timberline Drive','Charlotte','NC','28207',0),(1041,'Kitty','Tara','French','F',NULL,1131,'1977-03-01',43000,0,5,24,'419 Lake View Drive','Charlotte','NC','28211',0),(1042,'John','','Garnet','M',NULL,1210,'1938-10-31',20000,0,1,9,'1938 Junction Street','Cranburg','NJ','08512',0),(1043,'John','','Gonzales','M',NULL,1218,'1938-10-31',30000,0,1,8,'1938 Old Windsor Rd','Hightstown','NJ','08520',0),(1044,'Latasha','','Goodwin','F',NULL,1132,'1970-04-21',43000,6,6,23,'826 Lois Drive','Charlotte','NC','28213',0),(1045,'Jefferson','','Gray','M',NULL,1180,'1992-09-20',41000,8,6,22,'537 North Ridge Street','Atlanta','GA','30307',0),(1046,'Lesa','','Griffith','F',NULL,1135,'1987-08-02',52000,0,4,18,'759 Nina Lane','Charlotte','NC','28212',0),(1047,'Eloise','','Gross','F',NULL,1119,'1986-05-21',51000,0,3,18,'580 Everett Road','Charlotte','NC','28209',0),(1048,'Napoleon','','Gross','M',NULL,1194,'1972-08-09',76000,0,7,3,'355 Tanager Drive','Boston','MA','02137',0),(1049,'John','','Gus','M',NULL,1244,'1938-10-31',15000,0,1,10,'1938 Grover Way','Grover\'s Mill','NJ','08538',0),(1050,'Leola','Annmarie','Harris','F',NULL,1134,'1988-07-25',32000,6,6,23,'616 Motz Drive','Atlanta','GA','30320',0),(1051,'Rowena','Helena','Hebert','F',NULL,1151,'1980-08-18',34000,0,9,14,'886 Peachtree Street','Atlanta','GA','30317',0),(1052,'Leopoldo','','Holden','M',NULL,1190,'1983-03-14',40000,0,5,24,'462 Raintree Drive','Charlotte','NC','28205',0),(1053,'John','Robin','Hood','M',NULL,1225,'1938-10-31',30000,0,1,8,'1938 Welles Way, West','Grover\'s Mill','NJ','08538',0),(1054,'Galen','','Hopper','M',NULL,1177,'1986-06-06',25000,0,2,26,'243 Ledgewood Drive','Boston','MA','02110',0),(1055,'Erick','Minh','House','M',NULL,1176,'1976-08-05',63000,0,4,4,'222 Larkspur Lane, South','Charlotte','NC','28201',0),(1056,'Rhonda','Roberta','Hunt','F',NULL,1150,'1970-06-10',81000,0,3,16,'995 Yellow Creek Lane','Charlotte','NC','28218',0),(1057,'Shanna','Wilma','Hunter','F',NULL,1153,'1969-11-12',43000,6,6,23,'720 Peachtree Industrial Drive','Atlanta','GA','30317',0),(1058,'Deloris','Tina','Hurst','F',NULL,1114,'2003-04-14',40000,0,4,18,'786 Caladonia Place','Charlotte','NC','28208',0),(1059,'Orval','Quinn','Johns','M',NULL,1196,'1967-03-07',120000,0,9,11,'80 Walnut Ridge Street, North','Atlanta','GA','30304',0),(1060,'John','','Jones','M',NULL,1221,'1938-10-31',30000,0,1,8,'1938 Hightstown Place, North','Grover\'s Mill','NJ','08538',0),(1061,'Dane','Brain','King','M',NULL,1166,'1992-01-28',28000,6,6,23,'701 Canterbury Road','Atlanta','GA','30309',0),(1062,'John','','Bigboote','M',NULL,1211,'1938-10-31',95000,0,1,2,'1938 East Windsor Rd','Grover\'s Mill','NJ','08538',0),(1063,'Tricia','','Larsen','F',NULL,1156,'1982-07-25',81000,10,6,2,'116 Marietta Boulevard','Atlanta','GA','30314',0),(1064,'Delmar','','Le','M',NULL,1168,'1981-06-16',59000,0,3,4,'203 Darlington Drive','Charlotte','NC','28220',0),(1065,'Dona','Kristen','Leonard','F',NULL,1115,'2004-05-14',16000,0,2,26,'538 Candlewood Lane','Boston','MA','02134',0),(1066,'John','','Li','M',NULL,1224,'1938-10-31',30000,0,1,8,'1938 Old Welles Way','Princeton','NJ','08541',0),(1067,'Penny','','Pretty','F',NULL,1126,'1966-01-07',24000,0,2,6,'164 Hillandale Drive','Boston','MA','02104',0),(1068,'Cruz','','Lyons','M',NULL,1165,'1985-10-23',35000,0,8,7,'706 Bridle Trail','Boston','MA','02128',0),(1069,'Randall','','Marsh','M',NULL,1197,'1965-04-20',45000,6,6,23,'628 Wood Thursh Drive','Atlanta','GA','30303',0),(1070,'Tommy','','Martin','M',NULL,1204,'1993-02-04',40000,8,6,21,'393 Magnolia Drive','Charlotte','NC','28201',0),(1071,'Emanuel','Jesus','Martinez','M',NULL,1175,'1984-09-04',32000,0,9,12,'872 Kensington Road','Atlanta','GA','30301',0),(1072,'John','','Mary','M',NULL,1222,'1938-10-31',30000,0,1,8,'1938 Welles Way','Windsor','NJ','08561',0),(1073,'Kory','','Maynard','M',NULL,1187,'1961-04-03',83000,0,5,16,'371 Ivey Street','Charlotte','NC','28205',0),(1074,'Vanessa','','McConnell','F',NULL,1157,'1986-02-15',48000,8,6,21,'477 Old Vermont Road','Boston','MA','02128',0),(1075,'Elias','Alphonso','McCoy','M',NULL,1172,'1977-11-06',72000,0,4,16,'969 Harmony Hills Street','Charlotte','NC','28235',0),(1076,'Rhonda','','McKee','F',NULL,1149,'1991-07-09',35000,8,6,22,'570 Wye Road','Atlanta','GA','30317',0),(1077,'John','','Milton','M',NULL,1227,'1938-10-31',20000,0,1,9,'1938 Welles Way, East','Grover\'s Mill','NJ','08538',0),(1078,'John','','Mister','M',NULL,1234,'1938-10-31',20000,0,1,9,'1938 South Mill Drive','Princeton','NJ','08541',0),(1079,'William','','Moses','M',NULL,1209,'1983-12-02',59000,0,4,18,'697 Ginger Drive','Charlotte','NC','28237',0),(1080,'Nola','Sondra','Mullins','F',NULL,1145,'1975-03-19',37000,0,9,12,'873 Tulip Drive','Atlanta','GA','30317',0),(1081,'Charley','Jerry','Nelson','M',NULL,1163,'1996-06-22',32000,0,8,6,'166 Autumn Lane','Atlanta','GA','30303',0),(1082,'John','','Newbie','M',NULL,1217,'1938-10-31',50000,0,1,4,'1938 South Princeton Trail','Grover\'s Mill','NJ','08538',0),(1083,'Korey','Rey','Newton','M',NULL,1186,'1997-09-01',63000,0,9,13,'830 Ford Street, SE','Atlanta','GA','30305',0),(1084,'John','','Niece','M',NULL,1228,'1938-10-31',20000,0,1,9,'1938 Cranburg Highway','Hightstown','NJ','08520',0),(1085,'Ken','Booker','Nixon','M',NULL,1183,'1971-01-07',62000,2,6,20,'583 Elvin Way','Atlanta','GA','30306',0),(1086,'John','','Pantry','M',NULL,1226,'1938-10-31',20000,0,1,9,'1938 Old Cranburg Highway','Princeton Junction','NJ','08550',0),(1087,'John','','Parakeet','M',NULL,1232,'1938-10-31',20000,0,1,9,'1938 North Mill Drive','Windsor','NJ','08561',0),(1088,'Juliet','Mia','Parker','F',NULL,1128,'1984-09-24',45000,0,2,6,'19 Inner Circle Drive','Boston','MA','02132',0),(1089,'Emma','Lucy','Parks','F',NULL,1120,'1976-09-22',63000,0,3,4,'218 Fairway Drive','Charlotte','NC','28210',0),(1090,'Effie','Evelyn','Patterson','F',NULL,1118,'2002-08-22',20000,0,7,7,'445 Echo Hills Highway','Boston','MA','02133',0),(1091,'Georgette','Karina','Petty','F',NULL,1123,'1968-11-27',52000,8,6,21,'259 Ghent Hills Road','Atlanta','GA','30320',0),(1092,'John','','Physh','M',NULL,1216,'1938-10-31',50000,0,1,4,'1938 Windsor Rd','Princeton Junction','NJ','08550',0),(1093,'Samuel','Winston','Pugh','M',NULL,1202,'1995-03-18',45000,0,3,18,'61 Tennessee Avenue','Charlotte','NC','28231',0),(1094,'Mary','Stella','Randolph','F',NULL,1142,'1987-10-02',62000,0,9,4,'850 Squires Court','Atlanta','GA','30312',0),(1095,'Olga','Gertrude','Ratliff','F',NULL,1146,'1995-07-21',45000,0,4,18,'798 Valley Wood Drive','Charlotte','NC','28217',0),(1096,'John','','Reaper','M',NULL,1219,'1938-10-31',30000,0,1,8,'1938 West Junction Street','Grover\'s Mill','NJ','08538',0),(1097,'Mara','','Reese','F',NULL,1140,'1984-04-15',49000,8,6,21,'428 Rotunda Drive','Atlanta','GA','30319',0),(1098,'John','','Rite','M',NULL,1239,'1938-10-31',20000,0,1,9,'1938 Grover Trail','Grover\'s Mill','NJ','08538',0),(1099,'Shad','Gilbert','Robertson','M',NULL,1203,'2003-07-11',32000,0,4,19,'89 Berkshire Circle','Charlotte','NC','28230',0),(1100,'Aurelia','Kathleen','Rollins','F',NULL,1112,'1964-01-11',80000,0,8,3,'675 Burnbrick Drive','Boston','MA','02102',0),(1101,'Adan','','Roth','M',NULL,1160,'1971-06-27',82000,0,9,29,'138 Peachtree Dunwoody Road','Atlanta','GA','30311',0),(1102,'David','Carmine','Santana','M',NULL,1167,'1994-09-15',19000,0,2,26,'248 Colonade Drive','Boston','MA','02109',0),(1103,'John','','Shariff','M',NULL,1231,'1938-10-31',20000,0,1,9,'1938 Grover Road','Grover\'s Mill','NJ','08538',0),(1104,'Monica','','Shepherd','F',NULL,1143,'1998-11-02',33000,8,6,23,'428 Sugar Knoll Drive','Atlanta','GA','30318',0),(1105,'Mable','Debbie','Skinner','F',NULL,1139,'1993-07-15',20000,0,2,26,'572 Partridge Lane','Boston','MA','02106',0),(1106,'Roman','','Small','M',NULL,1200,'1991-11-19',42000,8,6,21,'43 Jasper Road','Atlanta','GA','30302',0),(1107,'John','','Smith','M',NULL,1241,'1938-10-31',15000,0,1,10,'1938 Grover Trace','Grover\'s Mill','NJ','08538',0),(1108,'Katelyn','Shana','Smith','F',NULL,1129,'1990-04-30',49000,0,3,18,'649 Kemery Road','Charlotte','NC','28211',0),(1109,'Jerry','Norris','Smyth','M',NULL,1181,'1989-12-30',31000,0,7,7,'49 North Shore Drive','Boston','MA','02111',0),(1110,'Devin','','Smythe','M',NULL,1169,'1986-02-27',64000,0,7,5,'394 Diandrea Drive','Boston','MA','02127',0),(1111,'Nell','','Stafford','F',NULL,1144,'1993-01-17',35000,0,5,24,'449 Trellis Green Drive','Charlotte','NC','28216',0),(1112,'Arlen','','Stevens','M',NULL,1162,'1989-01-23',45000,0,3,15,'96 Appian Way','Charlotte','NC','28218',0),(1113,'Ken','','Stevenson','M',NULL,1184,'1996-03-08',60000,0,3,3,'949 Evergreen Street','Charlotte','NC','28204',0),(1114,'Audra','','Swanson','F',NULL,1111,'1997-06-02',72000,0,3,28,'945 Aegean Road','Charlotte','NC','28229',0),(1115,'Earlene','','Taylor','F',NULL,1117,'1996-12-04',18000,0,2,25,'266 Ducan Spur','Boston','MA','02103',0),(1116,'John','','Temple','M',NULL,1233,'1938-10-31',20000,0,1,9,'1938 Grover Highway','Grover\'s Mill','NJ','08538',0),(1117,'Leann','Twila','Valenzuela','F',NULL,1133,'2000-05-01',42000,0,3,18,'689 Mackinaw Avenue','Charlotte','NC','28211',0),(1118,'Dora','Simone','Velez','F',NULL,1116,'1975-01-02',42000,0,2,6,'277 Dogwood Lane','Charlotte','NC','28208',0),(1119,'K_ry','Courtney','Walsh','M',NULL,1198,'2001-07-10',23000,0,5,7,'361 Yellow Creek Road','Charlotte','NC','28234',0),(1120,'Christian','Alvin','Walton','M',NULL,1164,'1961-09-10',80000,0,4,3,'997 Brentwood Drive','Charlotte','NC','28233',0),(1121,'Lyman','','Ward','M',NULL,1193,'2001-01-04',52000,0,4,4,'225 Sun Valley Drive','Charlotte','NC','28206',0),(1122,'Leo','Boris','Watts','M',NULL,1189,'1997-07-08',31000,0,8,6,'156 Pine Pointe Drive','Charlotte','NC','28205',0),(1123,'John','','Wharf','M',NULL,1237,'1938-10-31',20000,0,1,9,'1938 Grover Drive','Grover\'s Mill','NJ','08538',0),(1124,'Lorena','','Wilcox','F',NULL,1137,'1956-12-03',60000,0,5,32,'871 Oak Hill Road','Charlotte','NC','28213',0),(1125,'Sabrina','Rosanna','Wiley','F',NULL,1152,'1995-07-24',27000,6,6,23,'727 Peachtree Circle','Atlanta','GA','30317',0),(1126,'Amie','','Wilkerson','F',NULL,1110,'1982-09-03',72000,0,3,17,'824 Acacia Road','Charlotte','NC','28208',0),(1127,'Rocco','Titus','Williamson','M',NULL,1199,'2004-06-06',30000,0,3,19,'944 Juniper Lane','Charlotte','NC','28233',0),(1128,'John','','Wolf','M',NULL,1215,'1938-10-31',50000,0,1,4,'1938 Mill Drive','Grover\'s Mill','NJ','08538',0),(1129,'Lynne','','Workman','F',NULL,1138,'1973-02-19',78000,0,3,16,'99 Oxbow Road','Charlotte','NC','28214',0),(1130,'John','','Would','M',NULL,1238,'1938-10-31',20000,0,1,9,'1938 East Mill Drive','Hightstown','NJ','08520',0),(1131,'Antwan','Joaquin','Wright','M',NULL,1161,'2002-02-22',26000,8,6,23,'355 Mitchell Avenue','Atlanta','GA','30310',0),(1132,'Carmela','','Yang','F',NULL,1113,'1974-02-16',75000,10,6,3,'162 Burr Oak Drive','Atlanta','GA','30322',0),(1133,'John','Yo','Yo','M',NULL,1240,'1938-10-31',20000,0,1,9,'1938 Princeton Trail','Cranburg','NJ','08512',0),(1134,'Hubert','Lou','Young','M',NULL,1178,'1970-03-11',50000,0,5,24,'458 Mackinaw Circle','Charlotte','NC','28202',0),(1135,'Rebecca','','Zimmerman','F',NULL,1148,'1986-10-29',97000,0,2,1,'124 Walnut Ridge Road','Boston','MA','02107',0);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `minimum_salary` int(11) DEFAULT NULL,
  `maximum_salary` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'President',80000,100000),(2,'Vice President',70000,90000),(3,'Director',60000,80000),(4,'Manager',50000,70000),(5,'Supervisor',40000,60000),(6,'Administrative Assistant',25000,45000),(7,'Secretary',20000,40000),(8,'Lead Engineer',30000,40000),(9,'Engineer',20000,30000),(10,'Junior Engineer',15000,20000),(11,'DataBase Administrator',80000,120000),(12,'DataBase Operator',20000,40000),(13,'Systems Administrator',60000,80000),(14,'Systems Operator',20000,40000),(15,'Data Analyst',30000,50000),(16,'Project Lead',70000,90000),(17,'Senior Developer',60000,80000),(18,'Developer',40000,70000),(19,'Junior Developer',30000,50000),(20,'Product Evangelist',50000,70000),(21,'Senior Sales Rep',35000,55000),(22,'Account Rep',30000,50000),(23,'Sales Rep',25000,45000),(24,'Tester',30000,50000),(25,'Receptionist',18000,30000),(26,'Data Entry Clerk',16000,25000),(27,'Technical Writer',25000,50000),(28,'Trainer',40000,65000),(29,'COO',70000,90000),(30,'CFO',70000,90000),(31,'CIO',70000,90000),(32,'Test Designer',40000,60000);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `square_footage` int(11) DEFAULT NULL,
  `street_address` varchar(30) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `zipcode` char(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,6300,'3 Peachtree Plaza','Atlanta','GA','30365'),(2,4500,'791 Massachusetts Avenue','Boston','MA','02101'),(3,8000,'1045 University City Boulevard','Charlotte','NC','28226'),(4,12000,'1 Grover\'s Mill Circle','Grover\'s Mill','NJ','08538');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `parent_project_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_parent_project_fk` (`parent_project_id`),
  CONSTRAINT `project_parent_project_fk` FOREIGN KEY (`parent_project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Oscillation Overthruster','1939-10-30','1984-08-15',10),(2,'Nuclear Tobor Ram','1949-06-27','1982-07-09',NULL),(3,'Meson Disruptor 2','1953-08-26',NULL,5),(4,'RLP10 Database Management System 13.2','1963-11-23',NULL,7),(5,'Ion Cannon','1977-05-25','1980-05-21',NULL),(6,'Miniature Particle Accelerator','1984-06-08',NULL,13),(7,'Top Secret Clandestine Tool','1984-08-15',NULL,NULL),(8,'Flux Capacitor','1985-07-03','1990-05-25',10),(9,'Nanotechnology Processes and Devices','1989-09-23',NULL,13),(10,'Dimensional Warp Drive','1996-11-22',NULL,7),(11,'Nano-Catalyst Reactor 1.1','2002-11-26',NULL,13),(12,'Yoyodyne Laser Guidance System 2.3.0.1','2005-06-29',NULL,1),(13,'Wearable Nuclear Devices','2010-05-07',NULL,7);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-22 16:23:21
