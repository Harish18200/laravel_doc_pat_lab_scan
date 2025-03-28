/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.32-MariaDB : Database - hms_doc
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `appointments` */

DROP TABLE IF EXISTS `appointments`;

CREATE TABLE `appointments` (
  `appointment_status` varchar(255) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patientName` varchar(255) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=279 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `appointments` */

insert  into `appointments`(`appointment_status`,`id`,`patientName`,`patient_id`,`doctor_id`,`problem`,`appointment_date`,`appointment_time`,`created_at`,`updated_at`) values 
('1',1,'Patient_797',514,9,'Headache','2025-03-31','18:30:36',NULL,'2025-03-27 17:55:32'),
('1',2,'Patient_624',958,46,'Cold','2025-04-19','20:50:01',NULL,'2025-03-27 18:03:58'),
('1',3,'Patient_104',696,9,'Cold','2025-04-02','21:38:43',NULL,'2025-03-27 17:57:20'),
(NULL,4,'Patient_426',654,50,'Back Pain','2025-04-23','14:46:40',NULL,NULL),
('1',5,'Patient_938',621,15,'Diabetes','2025-03-28','11:11:10',NULL,'2025-03-27 18:04:09'),
(NULL,6,'Patient_619',489,30,'Diabetes','2025-04-10','03:05:39',NULL,NULL),
(NULL,7,'Patient_411',578,33,'Diabetes','2025-04-18','03:28:56',NULL,NULL),
(NULL,8,'Patient_855',904,48,'Fever','2025-04-07','19:31:53',NULL,NULL),
(NULL,9,'Patient_13',393,47,'Diabetes','2025-04-09','22:34:53',NULL,NULL),
(NULL,10,'Patient_861',299,46,'Cold','2025-04-10','11:12:31',NULL,NULL),
(NULL,11,'Patient_116',873,1,'Diabetes','2025-03-31','10:53:40',NULL,NULL),
(NULL,12,'Patient_692',30,4,'Headache','2025-03-29','14:54:16',NULL,NULL),
(NULL,13,'Patient_486',822,33,'Cold','2025-04-23','06:07:54',NULL,NULL),
(NULL,14,'Patient_917',977,7,'Cold','2025-04-02','22:55:21',NULL,NULL),
(NULL,15,'Patient_636',883,26,'Back Pain','2025-04-19','08:55:21',NULL,NULL),
(NULL,16,'Patient_337',215,4,'Cold','2025-03-30','16:10:49',NULL,NULL),
(NULL,17,'Patient_838',275,43,'Diabetes','2025-04-19','11:04:32',NULL,NULL),
(NULL,18,'Patient_536',730,2,'Back Pain','2025-04-21','08:13:26',NULL,NULL),
(NULL,19,'Patient_556',430,25,'Fever','2025-03-30','06:20:46',NULL,NULL),
(NULL,20,'Patient_14',188,45,'Back Pain','2025-04-22','17:01:39',NULL,NULL),
(NULL,21,'Patient_237',570,7,'Back Pain','2025-04-08','05:43:08',NULL,NULL),
(NULL,22,'Patient_827',413,29,'Cold','2025-04-12','20:19:56',NULL,NULL),
(NULL,23,'Patient_147',123,9,'Diabetes','2025-04-23','02:00:55',NULL,NULL),
(NULL,24,'Patient_245',128,46,'Fever','2025-04-23','06:18:37',NULL,NULL),
(NULL,25,'Patient_854',686,44,'Headache','2025-04-18','21:20:08',NULL,NULL),
(NULL,26,'Patient_494',778,21,'Cold','2025-04-01','21:32:43',NULL,NULL),
(NULL,27,'Patient_949',961,48,'Back Pain','2025-04-13','06:40:23',NULL,NULL),
(NULL,28,'Patient_267',478,30,'Diabetes','2025-04-16','21:17:29',NULL,NULL),
(NULL,29,'Patient_506',232,32,'Diabetes','2025-04-13','11:15:23',NULL,NULL),
(NULL,30,'Patient_384',250,5,'Cold','2025-04-04','08:09:20',NULL,NULL),
(NULL,31,'Patient_21',683,18,'Cold','2025-04-08','01:49:43',NULL,NULL),
(NULL,32,'Patient_185',681,43,'Fever','2025-04-07','09:06:07',NULL,NULL),
(NULL,33,'Patient_545',520,49,'Headache','2025-04-06','22:49:28',NULL,NULL),
(NULL,34,'Patient_877',148,6,'Fever','2025-03-29','05:32:42',NULL,NULL),
(NULL,35,'Patient_653',659,17,'Cold','2025-04-08','00:14:01',NULL,NULL),
(NULL,36,'Patient_58',842,2,'Cold','2025-03-29','11:53:10',NULL,NULL),
(NULL,37,'Patient_692',754,35,'Fever','2025-04-23','22:42:56',NULL,NULL),
(NULL,38,'Patient_217',53,31,'Back Pain','2025-04-16','15:36:58',NULL,NULL),
(NULL,39,'Patient_250',531,46,'Back Pain','2025-04-22','16:29:03',NULL,NULL),
(NULL,40,'Patient_777',587,30,'Headache','2025-04-07','03:54:46',NULL,NULL),
(NULL,41,'Patient_993',880,21,'Diabetes','2025-04-25','13:55:37',NULL,NULL),
(NULL,42,'Patient_999',156,39,'Diabetes','2025-04-18','10:36:23',NULL,NULL),
(NULL,43,'Patient_684',416,2,'Back Pain','2025-04-05','23:36:43',NULL,NULL),
(NULL,44,'Patient_770',19,40,'Back Pain','2025-04-23','02:18:05',NULL,NULL),
(NULL,45,'Patient_117',546,19,'Headache','2025-03-29','16:51:59',NULL,NULL),
(NULL,46,'Patient_165',66,42,'Back Pain','2025-04-03','09:39:20',NULL,NULL),
(NULL,47,'Patient_122',815,36,'Fever','2025-04-05','09:07:41',NULL,NULL),
(NULL,48,'Patient_414',339,23,'Headache','2025-04-21','12:04:30',NULL,NULL),
(NULL,49,'Patient_402',66,7,'Diabetes','2025-04-15','01:58:02',NULL,NULL),
(NULL,50,'Patient_923',316,41,'Fever','2025-03-27','21:03:35',NULL,NULL),
(NULL,51,'Patient_858',400,22,'Back Pain','2025-04-03','13:33:04',NULL,NULL),
(NULL,52,'Patient_600',825,17,'Fever','2025-04-17','05:48:34',NULL,NULL),
(NULL,53,'Patient_337',648,12,'Fever','2025-04-04','19:12:40',NULL,NULL),
(NULL,54,'Patient_489',915,6,'Cold','2025-04-13','12:52:05',NULL,NULL),
(NULL,55,'Patient_191',76,41,'Cold','2025-04-13','12:03:42',NULL,NULL),
(NULL,56,'Patient_356',465,13,'Back Pain','2025-04-12','04:14:44',NULL,NULL),
(NULL,57,'Patient_614',388,5,'Headache','2025-04-02','05:34:29',NULL,NULL),
(NULL,58,'Patient_703',80,15,'Fever','2025-03-29','19:06:48',NULL,NULL),
(NULL,59,'Patient_468',30,38,'Cold','2025-04-21','09:34:29',NULL,NULL),
(NULL,60,'Patient_55',926,23,'Diabetes','2025-04-03','14:25:12',NULL,NULL),
(NULL,61,'Patient_713',661,8,'Back Pain','2025-04-13','11:24:57',NULL,NULL),
(NULL,62,'Patient_735',779,35,'Fever','2025-04-09','23:19:34',NULL,NULL),
(NULL,63,'Patient_528',176,15,'Back Pain','2025-04-19','02:14:28',NULL,NULL),
(NULL,64,'Patient_404',611,42,'Headache','2025-04-04','08:36:33',NULL,NULL),
(NULL,65,'Patient_571',68,32,'Back Pain','2025-04-17','18:15:42',NULL,NULL),
(NULL,66,'Patient_230',47,27,'Diabetes','2025-03-31','02:08:14',NULL,NULL),
(NULL,67,'Patient_716',591,41,'Headache','2025-04-21','11:02:47',NULL,NULL),
(NULL,68,'Patient_483',97,2,'Back Pain','2025-04-05','22:08:05',NULL,NULL),
(NULL,69,'Patient_568',843,26,'Fever','2025-04-11','12:30:18',NULL,NULL),
(NULL,70,'Patient_850',4,24,'Headache','2025-04-01','23:57:16',NULL,NULL),
(NULL,71,'Patient_108',283,5,'Diabetes','2025-04-16','16:04:03',NULL,NULL),
(NULL,72,'Patient_407',188,36,'Fever','2025-04-23','12:07:53',NULL,NULL),
(NULL,73,'Patient_513',151,11,'Cold','2025-04-07','01:29:19',NULL,NULL),
(NULL,74,'Patient_771',285,6,'Cold','2025-03-28','05:10:24',NULL,NULL),
(NULL,75,'Patient_46',415,47,'Diabetes','2025-04-06','09:31:14',NULL,NULL),
(NULL,76,'Patient_687',512,25,'Back Pain','2025-04-02','04:45:26',NULL,NULL),
(NULL,77,'Patient_334',514,29,'Headache','2025-04-17','19:00:54',NULL,NULL),
(NULL,78,'Patient_489',126,9,'Diabetes','2025-04-16','03:09:45',NULL,NULL),
(NULL,79,'Patient_588',152,50,'Diabetes','2025-04-13','10:25:34',NULL,NULL),
(NULL,80,'Patient_611',908,36,'Cold','2025-04-22','23:25:51',NULL,NULL),
(NULL,81,'Patient_375',97,18,'Diabetes','2025-04-07','10:03:04',NULL,NULL),
(NULL,82,'Patient_557',898,41,'Headache','2025-04-11','08:03:12',NULL,NULL),
(NULL,83,'Patient_863',797,20,'Diabetes','2025-04-14','11:25:07',NULL,NULL),
(NULL,84,'Patient_999',541,36,'Back Pain','2025-04-08','09:17:18',NULL,NULL),
(NULL,85,'Patient_180',897,48,'Fever','2025-04-03','03:58:21',NULL,NULL),
(NULL,86,'Patient_35',860,10,'Headache','2025-04-04','06:06:06',NULL,NULL),
(NULL,87,'Patient_520',234,31,'Headache','2025-04-20','03:40:29',NULL,NULL),
(NULL,88,'Patient_945',886,30,'Headache','2025-04-18','18:38:10',NULL,NULL),
(NULL,89,'Patient_30',136,30,'Diabetes','2025-04-21','17:00:43',NULL,NULL),
(NULL,90,'Patient_766',896,9,'Fever','2025-04-09','17:17:09',NULL,NULL),
(NULL,91,'Patient_896',848,28,'Headache','2025-04-07','06:19:34',NULL,NULL),
(NULL,92,'Patient_164',248,38,'Back Pain','2025-04-15','09:06:17',NULL,NULL),
(NULL,93,'Patient_395',257,5,'Cold','2025-04-03','04:00:56',NULL,NULL),
(NULL,94,'Patient_796',805,32,'Cold','2025-04-20','21:04:11',NULL,NULL),
(NULL,95,'Patient_993',193,50,'Headache','2025-04-17','13:39:09',NULL,NULL),
(NULL,96,'Patient_822',996,26,'Diabetes','2025-04-04','18:28:09',NULL,NULL),
(NULL,97,'Patient_538',786,16,'Headache','2025-03-29','17:36:03',NULL,NULL),
(NULL,98,'Patient_132',264,46,'Cold','2025-04-03','19:13:05',NULL,NULL),
(NULL,99,'Patient_29',290,18,'Back Pain','2025-04-11','19:59:54',NULL,NULL),
(NULL,100,'Patient_572',21,20,'Back Pain','2025-03-31','04:09:40',NULL,NULL),
(NULL,101,'Patient_545',488,41,'Diabetes','2025-04-05','21:31:14',NULL,NULL),
(NULL,102,'Patient_166',119,5,'Fever','2025-04-03','23:09:57',NULL,NULL),
(NULL,103,'Patient_378',726,25,'Headache','2025-03-27','03:20:57',NULL,NULL),
(NULL,104,'Patient_964',794,4,'Back Pain','2025-04-17','16:07:41',NULL,NULL),
(NULL,105,'Patient_855',756,11,'Cold','2025-04-04','02:02:29',NULL,NULL),
(NULL,106,'Patient_566',138,50,'Diabetes','2025-04-17','00:13:34',NULL,NULL),
(NULL,107,'Patient_324',10,4,'Headache','2025-04-11','12:33:12',NULL,NULL),
(NULL,108,'Patient_807',811,32,'Cold','2025-04-17','10:41:37',NULL,NULL),
(NULL,109,'Patient_957',610,9,'Fever','2025-04-18','14:17:29',NULL,NULL),
(NULL,110,'Patient_800',853,43,'Cold','2025-03-29','06:22:40',NULL,NULL),
(NULL,111,'Patient_448',95,7,'Headache','2025-04-07','19:15:37',NULL,NULL),
(NULL,112,'Patient_97',784,32,'Cold','2025-04-25','14:31:52',NULL,NULL),
(NULL,113,'Patient_562',586,13,'Diabetes','2025-04-11','04:03:22',NULL,NULL),
(NULL,114,'Patient_213',36,27,'Diabetes','2025-04-05','18:50:13',NULL,NULL),
(NULL,115,'Patient_651',252,16,'Cold','2025-04-24','09:49:51',NULL,NULL),
(NULL,116,'Patient_831',521,6,'Back Pain','2025-04-14','02:35:04',NULL,NULL),
(NULL,117,'Patient_142',635,38,'Back Pain','2025-04-21','19:34:00',NULL,NULL),
(NULL,118,'Patient_135',131,13,'Back Pain','2025-04-09','16:01:43',NULL,NULL),
(NULL,119,'Patient_184',812,26,'Fever','2025-04-21','00:50:49',NULL,NULL),
(NULL,120,'Patient_38',306,21,'Fever','2025-04-10','23:41:50',NULL,NULL),
(NULL,121,'Patient_464',866,47,'Fever','2025-04-12','13:05:14',NULL,NULL),
(NULL,122,'Patient_730',431,49,'Diabetes','2025-04-17','00:27:58',NULL,NULL),
(NULL,123,'Patient_682',569,40,'Headache','2025-04-23','20:42:33',NULL,NULL),
(NULL,124,'Patient_37',613,48,'Back Pain','2025-04-16','15:45:26',NULL,NULL),
(NULL,125,'Patient_343',929,31,'Headache','2025-04-13','23:54:36',NULL,NULL),
(NULL,126,'Patient_392',134,25,'Fever','2025-04-19','19:07:27',NULL,NULL),
(NULL,127,'Patient_666',500,25,'Back Pain','2025-04-08','04:13:13',NULL,NULL),
(NULL,128,'Patient_497',675,44,'Headache','2025-04-01','18:55:41',NULL,NULL),
(NULL,129,'Patient_737',427,47,'Headache','2025-04-21','07:44:59',NULL,NULL),
(NULL,130,'Patient_214',965,9,'Back Pain','2025-04-09','07:06:27',NULL,NULL),
(NULL,131,'Patient_637',870,22,'Diabetes','2025-04-13','04:27:13',NULL,NULL),
(NULL,132,'Patient_309',26,11,'Back Pain','2025-03-28','12:39:18',NULL,NULL),
(NULL,133,'Patient_605',716,39,'Cold','2025-03-27','02:22:29',NULL,NULL),
(NULL,134,'Patient_940',359,49,'Cold','2025-03-27','19:02:09',NULL,NULL),
(NULL,135,'Patient_954',172,50,'Diabetes','2025-04-04','01:25:20',NULL,NULL),
(NULL,136,'Patient_52',924,23,'Diabetes','2025-04-03','16:42:49',NULL,NULL),
(NULL,137,'Patient_492',314,5,'Diabetes','2025-04-03','18:01:58',NULL,NULL),
(NULL,138,'Patient_742',717,18,'Cold','2025-03-27','06:32:31',NULL,NULL),
(NULL,139,'Patient_627',271,24,'Diabetes','2025-04-03','15:00:42',NULL,NULL),
(NULL,140,'Patient_121',407,34,'Fever','2025-04-15','21:45:46',NULL,NULL),
(NULL,141,'Patient_12',422,4,'Fever','2025-04-03','21:48:24',NULL,NULL),
(NULL,142,'Patient_457',778,26,'Headache','2025-04-15','14:22:26',NULL,NULL),
(NULL,143,'Patient_202',12,23,'Headache','2025-04-19','05:05:11',NULL,NULL),
(NULL,144,'Patient_981',736,37,'Diabetes','2025-03-30','05:49:33',NULL,NULL),
(NULL,145,'Patient_413',584,34,'Cold','2025-03-29','14:07:17',NULL,NULL),
(NULL,146,'Patient_573',863,30,'Headache','2025-03-29','07:23:18',NULL,NULL),
(NULL,147,'Patient_501',653,38,'Back Pain','2025-04-22','22:53:27',NULL,NULL),
(NULL,148,'Patient_625',834,15,'Back Pain','2025-04-24','21:52:29',NULL,NULL),
(NULL,149,'Patient_593',972,4,'Diabetes','2025-03-31','07:35:50',NULL,NULL),
(NULL,150,'Patient_720',203,43,'Cold','2025-04-14','06:04:04',NULL,NULL),
(NULL,151,'Patient_84',319,17,'Cold','2025-04-16','04:07:04',NULL,NULL),
(NULL,152,'Patient_609',572,2,'Diabetes','2025-03-29','01:47:10',NULL,NULL),
(NULL,153,'Patient_522',164,13,'Cold','2025-03-29','02:38:00',NULL,NULL),
(NULL,154,'Patient_177',983,20,'Back Pain','2025-04-15','09:04:42',NULL,NULL),
(NULL,155,'Patient_555',964,8,'Back Pain','2025-04-21','16:32:11',NULL,NULL),
(NULL,156,'Patient_342',67,16,'Headache','2025-04-16','12:31:49',NULL,NULL),
(NULL,157,'Patient_21',556,36,'Back Pain','2025-04-06','02:17:40',NULL,NULL),
(NULL,158,'Patient_717',387,40,'Cold','2025-04-06','14:32:52',NULL,NULL),
(NULL,159,'Patient_843',423,29,'Cold','2025-04-07','02:21:53',NULL,NULL),
(NULL,160,'Patient_236',266,31,'Headache','2025-04-12','22:34:26',NULL,NULL),
(NULL,161,'Patient_347',636,7,'Cold','2025-04-10','00:15:26',NULL,NULL),
(NULL,162,'Patient_225',171,9,'Headache','2025-04-07','18:44:59',NULL,NULL),
(NULL,163,'Patient_376',650,6,'Cold','2025-04-22','11:11:58',NULL,NULL),
(NULL,164,'Patient_33',108,22,'Back Pain','2025-04-25','08:54:42',NULL,NULL),
(NULL,165,'Patient_316',924,34,'Diabetes','2025-04-20','10:03:20',NULL,NULL),
(NULL,166,'Patient_879',516,48,'Fever','2025-04-25','08:37:12',NULL,NULL),
(NULL,167,'Patient_401',322,21,'Fever','2025-03-27','21:52:11',NULL,NULL),
(NULL,168,'Patient_933',67,27,'Diabetes','2025-04-17','03:40:27',NULL,NULL),
(NULL,169,'Patient_763',886,7,'Fever','2025-04-16','07:43:29',NULL,NULL),
(NULL,170,'Patient_979',130,36,'Fever','2025-04-15','17:10:09',NULL,NULL),
(NULL,171,'Patient_229',123,47,'Headache','2025-04-10','17:22:43',NULL,NULL),
(NULL,172,'Patient_471',970,22,'Headache','2025-03-27','07:02:50',NULL,NULL),
(NULL,173,'Patient_201',758,10,'Cold','2025-04-15','07:53:03',NULL,NULL),
(NULL,174,'Patient_489',363,18,'Cold','2025-03-30','17:22:41',NULL,NULL),
(NULL,175,'Patient_80',650,1,'Fever','2025-04-08','20:21:38',NULL,NULL),
(NULL,176,'Patient_315',663,19,'Back Pain','2025-03-30','01:33:48',NULL,NULL),
(NULL,177,'Patient_644',319,33,'Headache','2025-04-16','10:41:21',NULL,NULL),
(NULL,178,'Patient_474',885,1,'Headache','2025-04-18','18:23:09',NULL,NULL),
(NULL,179,'Patient_367',239,5,'Cold','2025-04-07','17:12:28',NULL,NULL),
(NULL,180,'Patient_56',960,32,'Headache','2025-04-07','04:05:22',NULL,NULL),
(NULL,181,'Patient_961',726,38,'Diabetes','2025-04-08','13:25:11',NULL,NULL),
(NULL,182,'Patient_845',715,2,'Fever','2025-03-29','07:32:49',NULL,NULL),
(NULL,183,'Patient_620',165,49,'Headache','2025-04-15','08:37:01',NULL,NULL),
(NULL,184,'Patient_56',803,43,'Back Pain','2025-04-11','03:03:52',NULL,NULL),
(NULL,185,'Patient_154',452,40,'Cold','2025-04-15','11:52:32',NULL,NULL),
(NULL,186,'Patient_927',189,9,'Headache','2025-04-17','22:20:04',NULL,NULL),
(NULL,187,'Patient_489',77,46,'Headache','2025-03-27','00:03:04',NULL,NULL),
(NULL,188,'Patient_870',426,26,'Headache','2025-03-27','03:45:23',NULL,NULL),
(NULL,189,'Patient_136',519,10,'Headache','2025-04-03','03:45:07',NULL,NULL),
(NULL,190,'Patient_738',570,32,'Diabetes','2025-04-07','12:06:46',NULL,NULL),
(NULL,191,'Patient_499',290,48,'Back Pain','2025-04-12','02:47:58',NULL,NULL),
(NULL,192,'Patient_294',686,28,'Cold','2025-04-15','08:12:28',NULL,NULL),
(NULL,193,'Patient_572',706,41,'Back Pain','2025-04-01','02:55:19',NULL,NULL),
(NULL,194,'Patient_38',953,33,'Headache','2025-04-23','10:05:26',NULL,NULL),
(NULL,195,'Patient_676',220,4,'Cold','2025-04-02','02:12:01',NULL,NULL),
(NULL,196,'Patient_551',460,33,'Back Pain','2025-04-04','21:41:15',NULL,NULL),
(NULL,197,'Patient_571',889,37,'Back Pain','2025-04-17','14:43:59',NULL,NULL),
(NULL,198,'Patient_846',421,29,'Diabetes','2025-03-29','16:32:47',NULL,NULL),
(NULL,199,'Patient_137',966,21,'Fever','2025-04-14','15:02:21',NULL,NULL),
(NULL,200,'Patient_335',947,37,'Cold','2025-04-19','11:55:51',NULL,NULL),
(NULL,201,'Patient_334',176,44,'Back Pain','2025-04-14','14:07:08',NULL,NULL),
(NULL,202,'Patient_518',423,28,'Diabetes','2025-04-23','00:05:25',NULL,NULL),
(NULL,203,'Patient_426',271,4,'Diabetes','2025-04-13','04:34:01',NULL,NULL),
(NULL,204,'Patient_580',214,17,'Back Pain','2025-04-23','16:06:15',NULL,NULL),
(NULL,205,'Patient_943',944,45,'Cold','2025-04-06','22:43:03',NULL,NULL),
(NULL,206,'Patient_567',794,14,'Back Pain','2025-04-22','15:13:39',NULL,NULL),
(NULL,207,'Patient_636',660,20,'Back Pain','2025-04-15','07:28:05',NULL,NULL),
(NULL,208,'Patient_268',423,16,'Headache','2025-04-07','02:04:13',NULL,NULL),
(NULL,209,'Patient_324',674,20,'Back Pain','2025-04-12','20:28:37',NULL,NULL),
(NULL,210,'Patient_725',659,6,'Diabetes','2025-04-14','06:33:28',NULL,NULL),
(NULL,211,'Patient_888',817,21,'Cold','2025-04-25','21:43:13',NULL,NULL),
(NULL,212,'Patient_389',86,13,'Fever','2025-04-08','21:33:18',NULL,NULL),
(NULL,213,'Patient_748',877,7,'Fever','2025-04-21','01:52:33',NULL,NULL),
(NULL,214,'Patient_28',586,43,'Diabetes','2025-04-17','05:04:01',NULL,NULL),
(NULL,215,'Patient_995',200,1,'Diabetes','2025-04-03','22:01:14',NULL,NULL),
(NULL,216,'Patient_305',94,28,'Diabetes','2025-04-18','06:54:55',NULL,NULL),
(NULL,217,'Patient_148',133,11,'Cold','2025-04-20','00:48:19',NULL,NULL),
(NULL,218,'Patient_372',778,39,'Diabetes','2025-04-05','00:57:35',NULL,NULL),
(NULL,219,'Patient_3',345,36,'Diabetes','2025-04-09','17:04:35',NULL,NULL),
(NULL,220,'Patient_872',759,9,'Cold','2025-04-10','13:54:24',NULL,NULL),
(NULL,221,'Patient_606',625,16,'Cold','2025-04-06','18:55:42',NULL,NULL),
(NULL,222,'Patient_105',844,46,'Back Pain','2025-04-01','22:13:30',NULL,NULL),
(NULL,223,'Patient_824',761,17,'Headache','2025-04-19','22:01:32',NULL,NULL),
(NULL,224,'Patient_235',587,12,'Headache','2025-03-30','11:27:47',NULL,NULL),
(NULL,225,'Patient_876',197,18,'Fever','2025-04-20','14:04:03',NULL,NULL),
(NULL,226,'Patient_547',356,7,'Diabetes','2025-04-13','04:19:09',NULL,NULL),
(NULL,227,'Patient_30',809,48,'Headache','2025-04-21','04:48:48',NULL,NULL),
(NULL,228,'Patient_741',301,14,'Diabetes','2025-04-14','14:19:23',NULL,NULL),
(NULL,229,'Patient_933',236,19,'Fever','2025-04-17','00:33:26',NULL,NULL),
(NULL,230,'Patient_953',756,46,'Headache','2025-04-19','00:04:04',NULL,NULL),
(NULL,231,'Patient_306',546,41,'Headache','2025-04-12','13:47:47',NULL,NULL),
(NULL,232,'Patient_377',228,1,'Headache','2025-04-16','07:57:48',NULL,NULL),
(NULL,233,'Patient_283',450,20,'Cold','2025-04-25','00:55:56',NULL,NULL),
(NULL,234,'Patient_14',395,47,'Diabetes','2025-04-11','03:13:43',NULL,NULL),
(NULL,235,'Patient_442',706,10,'Back Pain','2025-04-19','08:26:54',NULL,NULL),
(NULL,236,'Patient_777',788,31,'Cold','2025-04-11','14:59:42',NULL,NULL),
(NULL,237,'Patient_847',606,25,'Cold','2025-04-13','03:12:06',NULL,NULL),
(NULL,238,'Patient_46',567,35,'Cold','2025-04-17','07:16:40',NULL,NULL),
(NULL,239,'Patient_940',591,7,'Back Pain','2025-03-27','11:30:31',NULL,NULL),
(NULL,240,'Patient_157',830,34,'Back Pain','2025-04-08','10:04:42',NULL,NULL),
(NULL,241,'Patient_980',357,43,'Fever','2025-04-02','13:36:53',NULL,NULL),
(NULL,242,'Patient_462',615,35,'Diabetes','2025-04-21','11:54:10',NULL,NULL),
(NULL,243,'Patient_199',188,17,'Fever','2025-04-13','12:54:39',NULL,NULL),
(NULL,244,'Patient_168',975,19,'Back Pain','2025-04-08','09:11:17',NULL,NULL),
(NULL,245,'Patient_149',770,20,'Cold','2025-04-02','23:12:30',NULL,NULL),
(NULL,246,'Patient_267',638,20,'Fever','2025-04-22','08:31:28',NULL,NULL),
(NULL,247,'Patient_705',65,11,'Back Pain','2025-04-14','12:09:00',NULL,NULL),
(NULL,248,'Patient_996',875,20,'Headache','2025-04-04','14:29:47',NULL,NULL),
(NULL,249,'Patient_882',998,18,'Cold','2025-04-11','11:47:55',NULL,NULL),
(NULL,250,'Patient_958',135,40,'Diabetes','2025-04-10','15:28:24',NULL,NULL),
(NULL,256,'Prof. Noel Douglas I',4,1,'Iusto exercitationem','1997-10-13','16:19:00','2025-03-27 19:51:00','2025-03-27 19:51:00'),
(NULL,257,'Prof. Noel Douglas I',4,1,'Quam quam est iure','2024-10-17','07:46:00','2025-03-27 19:51:09','2025-03-27 19:51:09'),
('0',258,'Alice Johnson',1,3,'Fever and headache','2025-04-01','10:30:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',259,'Bob Smith',2,5,'Chest pain and dizziness','2025-04-02','11:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',260,'Charlie Davis',3,8,'Skin rash and itching','2025-04-03','14:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',261,'Diana Roberts',4,2,'Cough and sore throat','2025-04-04','09:30:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',262,'Ethan Brown',5,6,'Back pain and stiffness','2025-04-05','13:15:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',263,'Fiona Wilson',6,4,'Migraine and nausea','2025-04-06','15:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',264,'George Harris',7,7,'Joint pain and swelling','2025-04-07','16:30:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',265,'Hannah Clark',8,1,'Anxiety and stress','2025-04-08','12:45:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',266,'Ian Martinez',9,9,'Stomach pain and bloating','2025-04-09','08:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',267,'Jessica Taylor',10,10,'Difficulty breathing','2025-04-10','17:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',268,'Kevin White',11,3,'Ear pain and infection','2025-04-11','11:30:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',269,'Laura Thomas',12,5,'Swollen glands and fever','2025-04-12','09:45:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',270,'Michael Lee',13,8,'Blurred vision and headache','2025-04-13','14:30:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',271,'Nancy Walker',14,2,'Diabetes check-up','2025-04-14','13:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',272,'Oliver Young',15,6,'High blood pressure','2025-04-15','10:15:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',273,'Paula Scott',16,4,'Depression and fatigue','2025-04-16','12:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',274,'Quentin Adams',17,7,'Sprained ankle','2025-04-17','15:45:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',275,'Rachel Nelson',18,1,'Insomnia and stress','2025-04-18','16:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',276,'Samuel Carter',19,9,'Digestive problems','2025-04-19','08:30:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',277,'Tina Evans',20,10,'Cold and flu symptoms','2025-04-20','17:30:00','2025-03-28 01:33:38','2025-03-28 01:33:38'),
('0',278,'User 150',150,8,'General check-up','2025-05-15','10:00:00','2025-03-28 01:33:38','2025-03-28 01:33:38');

/*Table structure for table `diseases` */

DROP TABLE IF EXISTS `diseases`;

CREATE TABLE `diseases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `diseases` varchar(255) NOT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `treatment` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `diseases_diseases_unique` (`diseases`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `diseases` */

insert  into `diseases`(`id`,`diseases`,`symptoms`,`treatment`,`description`,`created_at`,`updated_at`) values 
(39,'Influenza','Fever','Rest and hydration','A contagious respiratory illness.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(40,'Diabetes','Diabetes','Insulin therapy','A condition affecting blood sugar regulation.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(41,'Hypertension','Headache','Lifestyle changes','A condition with high blood pressure.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(42,'Asthma','Shortness of breath','Inhalers','A chronic lung disease.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(43,'Tuberculosis','Persistent cough','Antibiotics','An infectious disease affecting the lungs.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(44,'Pneumonia','Cough','Antibiotics','Inflammation of the lungs due to infection.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(45,'Malaria','Fever','Antimalarial drugs','A mosquito-borne disease.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(46,'Dengue Fever','High fever','Pain relievers','A viral infection spread by mosquitoes.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(47,'Hepatitis B','Fatigue','Antiviral medications','A liver infection caused by a virus.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(48,'Hepatitis C','Jaundice','Antiviral therapy','A viral infection affecting the liver.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(49,'Cholera','Diarrhea','Oral rehydration therapy','An acute diarrheal illness.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(50,'Typhoid Fever','Abdominal pain','Antibiotics','A bacterial infection from contaminated food.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(51,'Measles','Rash','Supportive care','A highly contagious viral disease.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(52,'Chickenpox','Itchy rash','Calamine lotion','A viral infection causing skin blisters.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(53,'Rabies','Hydrophobia','Rabies vaccine','A deadly viral infection.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(54,'Ebola','Bleeding','Supportive care','A virus causing hemorrhagic fever.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(55,'COVID-19','Cough','Supportive care','A respiratory illness caused by a virus.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(56,'HIV/AIDS','Weight loss','Antiretroviral therapy','A virus that weakens the immune system.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(57,'Leprosy','Skin lesions','Antibiotics','A bacterial disease affecting skin and nerves.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(58,'Mumps','Swollen glands','Pain relief','A viral infection of the salivary glands.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(59,'Gonorrhea','Painful urination','Antibiotics','A sexually transmitted bacterial infection.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(60,'Syphilis','Sores','Penicillin','A sexually transmitted bacterial infection.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(61,'Chikungunya','Joint pain','Pain relievers','A mosquito-borne viral disease.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(62,'Zika Virus','Mild fever','Supportive care','A viral infection spread by mosquitoes.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(63,'Plague','Swollen lymph nodes','Antibiotics','A bacterial infection transmitted by fleas.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(64,'Anthrax','Skin sores','Antibiotics','A bacterial infection.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(65,'Tetanus','Muscle stiffness','Tetanus vaccine','A bacterial infection affecting the nervous system.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(66,'Whooping Cough','Coughing fits','Antibiotics','A bacterial respiratory infection.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(67,'Meningitis','Stiff neck','Antibiotics','Inflammation of brain membranes.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(68,'Parkinson’s Disease','Tremors','Medication','A neurological disorder.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(69,'Alzheimer’s Disease','Memory loss','Cognitive therapy','A degenerative brain disease.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(70,'Epilepsy','Seizures','Anti-seizure medication','A disorder causing seizures.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(71,'Stroke','Weakness','Clot-busting drugs','A condition due to interrupted blood supply to the brain.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(72,'Cataracts','Blurry vision','Surgery','A clouding of the eye’s lens.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(73,'Glaucoma','Vision loss','Eye drops','A disease damaging the optic nerve.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(74,'Psoriasis','Red patches','Topical creams','A chronic autoimmune skin disease.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(75,'Arthritis','Joint pain','Pain relief','Inflammation of the joints.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(76,'Osteoporosis','Weak bones','Calcium supplements','A disease that weakens bones.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(77,'Common Cold','Runny nose','Rest and fluids','A mild viral infection.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(78,'Migraine','Headache','Painkillers','A neurological condition causing headaches.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(79,'Appendicitis','Abdominal pain','Surgery','Inflammation of the appendix.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(80,'Ulcer','Stomach pain','Antacids','A sore in the stomach lining.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(81,'Anemia','Fatigue','Iron supplements','A condition with low red blood cells.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(82,'Bronchitis','Cough','Cough syrup','Inflammation of bronchial tubes.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(83,'Gastritis','Nausea','Antacids','Inflammation of the stomach lining.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(84,'Gout','Joint swelling','Pain relievers','A form of arthritis caused by uric acid.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(85,'Vertigo','Dizziness','Vestibular therapy','A sensation of spinning.','2025-03-28 00:49:56','2025-03-28 00:49:56'),
(86,'Sinusitis','Facial pain','Nasal spray','Inflammation of sinuses.','2025-03-28 00:49:56','2025-03-28 00:49:56');

/*Table structure for table `doctors` */

DROP TABLE IF EXISTS `doctors`;

CREATE TABLE `doctors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fees` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `doctors_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `doctors` */

insert  into `doctors`(`id`,`name`,`email`,`mobile`,`age`,`address`,`specialization`,`password`,`fees`,`created_at`,`updated_at`) values 
(1,'Doctor','doctor@gmail.com','9089098909',40,'123 Main St','Cardiology','$2y$10$OoyeB466AyklrQKj/HGDxOcOC2IGxd7TXiCKjJhuNwySOtzMn4qWa',500.00,'2025-03-27 16:42:53','2025-03-27 16:42:53'),
(2,'Dr. Alice Johnson','alice.johnson@example.com','9876543210',45,'123 Main St, NY','Cardiologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(3,'Dr. Bob Smith','bob.smith@example.com','9876543211',50,'456 Elm St, CA','Neurologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(4,'Dr. Charlie Davis','charlie.davis@example.com','9876543212',38,'789 Oak St, TX','Dermatologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(5,'Dr. Diana Roberts','diana.roberts@example.com','9876543213',42,'101 Pine St, FL','Pediatrician','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(6,'Dr. Ethan Brown','ethan.brown@example.com','9876543214',36,'202 Cedar St, IL','Orthopedic Surgeon','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(7,'Dr. Fiona Wilson','fiona.wilson@example.com','9876543215',47,'303 Birch St, WA','Gynecologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(8,'Dr. George Harris','george.harris@example.com','9876543216',39,'404 Maple St, NV','Oncologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(9,'Dr. Hannah Clark','hannah.clark@example.com','9876543217',41,'505 Walnut St, AZ','Ophthalmologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(10,'Dr. Ian Martinez','ian.martinez@example.com','9876543218',44,'606 Ash St, CO','ENT Specialist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(11,'Dr. Jessica Taylor','jessica.taylor@example.com','9876543219',37,'707 Redwood St, GA','Psychiatrist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(12,'Dr. Kevin White','kevin.white@example.com','9876543220',49,'808 Chestnut St, OR','Radiologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(13,'Dr. Laura Thomas','laura.thomas@example.com','9876543221',43,'909 Cypress St, MI','General Surgeon','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(14,'Dr. Michael Lee','michael.lee@example.com','9876543222',46,'1010 Sycamore St, NC','Endocrinologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(15,'Dr. Nancy Walker','nancy.walker@example.com','9876543223',40,'1111 Dogwood St, MN','Nephrologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(16,'Dr. Oliver Young','oliver.young@example.com','9876543224',48,'1212 Willow St, TN','Pulmonologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(17,'Dr. Paula Scott','paula.scott@example.com','9876543225',35,'1313 Hickory St, MO','Urologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(18,'Dr. Quentin Adams','quentin.adams@example.com','9876543226',51,'1414 Fir St, OK','Anesthesiologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(19,'Dr. Rachel Nelson','rachel.nelson@example.com','9876543227',39,'1515 Spruce St, MA','Rheumatologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(20,'Dr. Samuel Carter','samuel.carter@example.com','9876543228',38,'1616 Poplar St, IN','Gastroenterologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(21,'Dr. Tina Evans','tina.evans@example.com','9876543229',45,'1717 Magnolia St, KY','Plastic Surgeon','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34'),
(22,'Dr. User 100','user100@example.com','9876543310',52,'2000 Rose St, LA','Hematologist','ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f',0.00,'2025-03-28 01:27:34','2025-03-28 01:27:34');

/*Table structure for table `expenses` */

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `ebbill` decimal(10,2) DEFAULT NULL,
  `physio_expenses` decimal(10,2) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `tv` decimal(10,2) DEFAULT NULL,
  `tea` decimal(10,2) DEFAULT NULL,
  `phone_bill` decimal(10,2) DEFAULT NULL,
  `food` decimal(10,2) DEFAULT NULL,
  `biscuit` decimal(10,2) DEFAULT NULL,
  `cooldrinks` decimal(10,2) DEFAULT NULL,
  `service` decimal(10,2) DEFAULT NULL,
  `work` decimal(10,2) DEFAULT NULL,
  `milk` decimal(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `expenses` */

insert  into `expenses`(`id`,`date`,`ebbill`,`physio_expenses`,`salary`,`tv`,`tea`,`phone_bill`,`food`,`biscuit`,`cooldrinks`,`service`,`work`,`milk`,`created_at`,`updated_at`) values 
(2,'1990-06-30',88.00,66.00,59.00,65.00,70.00,NULL,25.00,39.00,NULL,41.00,41.00,95.00,'2025-03-27 19:29:21','2025-03-27 19:29:21');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `lab_applications` */

DROP TABLE IF EXISTS `lab_applications`;

CREATE TABLE `lab_applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lab_applications` */

/*Table structure for table `labs` */

DROP TABLE IF EXISTS `labs`;

CREATE TABLE `labs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `labs_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `labs` */

insert  into `labs`(`id`,`name`,`email`,`mobile`,`gender`,`address`,`dob`,`password`,`created_at`,`updated_at`) values 
(1,'Lab Technician','lab@gmail.com','9089098907','male','789 Lab St','1990-10-15','$2y$10$vdYIOgxAlNBWui8mt8SDle3Ec9iYp0x/LRaFqfRuVdV5Zy9mrE2ZK','2025-03-27 16:42:53','2025-03-27 16:42:53');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_reset_tokens_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2024_06_13_023221_create_permission_tables',1),
(6,'2024_06_16_031248_create_nsap_schemes_table',1),
(7,'2025_03_25_172250_create_user_types_table',1),
(8,'2025_03_25_173821_create_doctors_table',1),
(9,'2025_03_25_173821_create_labs_table',1),
(10,'2025_03_25_173821_create_patients_table',1),
(11,'2025_03_25_173822_create_pharmas_table',1),
(12,'2025_03_25_173822_create_scan_doctors_table',1),
(13,'2025_03_26_034647_create_appointments_table',1),
(14,'2025_03_26_081304_create_labs_table',1),
(15,'2025_03_26_115056_create_user_management_table',1),
(16,'2025_03_26_130156_create_pharmas_application_table',1),
(17,'2025_03_26_133202_create_scan_invoices_table',1),
(18,'2025_03_26_153015_create_expenses_table',1),
(20,'2025_03_27_181526_create_diseases_table',2);

/*Table structure for table `model_has_permissions` */

DROP TABLE IF EXISTS `model_has_permissions`;

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `model_has_permissions` */

/*Table structure for table `model_has_roles` */

DROP TABLE IF EXISTS `model_has_roles`;

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `model_has_roles` */

insert  into `model_has_roles`(`role_id`,`model_type`,`model_id`) values 
(1,'App\\Models\\User',1);

/*Table structure for table `nsap_schemes` */

DROP TABLE IF EXISTS `nsap_schemes`;

CREATE TABLE `nsap_schemes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `scheme_code` varchar(255) NOT NULL,
  `scheme_name` varchar(255) NOT NULL,
  `central_state_scheme` varchar(255) NOT NULL,
  `fin_year` varchar(255) NOT NULL,
  `state_disbursement` decimal(15,2) NOT NULL,
  `central_disbursement` decimal(15,2) NOT NULL,
  `total_disbursement` decimal(15,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `nsap_schemes` */

/*Table structure for table `password_reset_tokens` */

DROP TABLE IF EXISTS `password_reset_tokens`;

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_reset_tokens` */

/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `patients_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `patients` */

insert  into `patients`(`id`,`name`,`email`,`mobile`,`age`,`problem`,`gender`,`address`,`dob`,`password`,`created_at`,`updated_at`) values 
(4,'Prof. Noel Douglas I','david@gmail.com','9843858778',37,'Qui ut illo.','male','500 Jolie Freeway Apt. 176\nWest Audreybury, MT 45584-4406','2006-12-27','$2y$10$staCI5l7tjlaL8VxIfyREujbnYrtOwqEvDne/isE2zgqXGh0l6kU6','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(5,'Prof. Kolby Kub II','eveline.kilback@example.net','9816247724',56,'Ut sed praesentium.','male','627 Obie Center\nWest Zeldashire, NH 82341-4504','1981-04-01','$2y$10$8qPI.X6e9p9XhwE9W4R35OWE5/NvzgBs5Wx5gaQZU5TN1fG8TurA2','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(6,'Oral West PhD','odare@example.com','9858405534',39,'Molestiae dolorem voluptatibus.','other','1432 Pauline Underpass Suite 238\nSouth Darenmouth, OR 03668','1970-03-03','$2y$10$6MSe3ixS6iQJHMnB4/KTjuhv0NojtQeUTR5VyyvSnKH7Y8cyX4Opm','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(7,'Cody Corwin','thaag@example.net','9845864798',35,'Similique aut praesentium.','male','6755 Maggio Fall\nAlfonsoport, PA 75404','1975-01-25','$2y$10$uaqAndFzR5vDE3FIu8A5GuTpEDmNacvtQwhOvaHVR9YotGXYDtT6K','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(8,'Sydni Bednar','jakubowski.grover@example.com','9871396763',44,'Qui esse.','male','2296 Timothy Forks Apt. 968\nNorth Aubree, MO 88181-6690','1976-11-24','$2y$10$sQvWFlnSUAbdKRjU4CqTvuv1S.FzJGgWfoxOc8J/C6GkFrCsczJ6q','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(9,'Brenna Conroy','audrey58@example.org','9875587619',64,'Magnam nemo et iure sit.','other','16311 Ara Overpass Apt. 610\nGeoffreyberg, MT 83499-5250','1975-02-14','$2y$10$54RFy.3PkwT2VvV4uM6nveSTVwIY27.0QJqzjWd57cL9v0oJvOKLu','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(10,'Roberta Cruickshank','ukreiger@example.com','9806504053',80,'Vel ut enim porro.','female','222 Kuvalis Stream\nSalmaville, AL 10142','2002-12-24','$2y$10$7Rd/qqty7wHFRGj79i6MUuvxGTirxyHWWMzSZQYLhGUFz7dqsDA8W','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(11,'Mr. Dejon Strosin','lucie12@example.net','9818760371',21,'Voluptatem ipsa corrupti.','male','60672 Maggio Gardens Apt. 506\nDuBuquemouth, HI 53233-0350','1978-11-13','$2y$10$91rGxJYf5C4Sn77l9sYAN.lDBUt.LaNaHFt.rHFZesQr6bWvzamIi','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(12,'Tyrese Wisoky MD','jedediah88@example.com','9822315625',43,'Voluptas assumenda fugiat.','other','6980 Marshall Hill\nPort Clarissaside, MD 36949','1980-09-07','$2y$10$D6L9i9Li8ZS4y1dCA.uuGeibdI17Gitwhy1hQzJfN1mvJanKysbzK','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(13,'Connie Wolff DDS','harvey.cesar@example.org','9881227465',80,'Dignissimos mollitia et et.','other','7132 Mraz Orchard Suite 685\nNorth Annamarieville, HI 83606','1982-06-30','$2y$10$Nhh79UkmQtHVwUL44MdTge0n5ts.O6WUgcBWY.y052SVGF73R4YL6','2025-03-27 17:07:42','2025-03-27 17:07:42'),
(14,'Ruthe Herman','beier.nora@example.net','9836314936',73,'Accusantium doloremque ratione.','female','1311 Gusikowski Coves\nBoehmview, OK 04503','2003-04-26','$2y$10$mQvTlqRj3JvbI4l8yl5eM.ix8lF8Ye7PNF56LNYefaJH71kYukw.a','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(15,'Prof. Tristian Fritsch','vgrimes@example.com','9890602146',77,'Dignissimos quaerat labore.','male','2690 Darien Fall Suite 191\nEast Moshe, IA 20101','2006-04-20','$2y$10$pgLB0MB51nMaUhe9HDQP1und0UxyJ5wWHiRfJ/LyBt2D4S7/4UIUa','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(16,'Jannie Spinka','evalyn.powlowski@example.org','9893030490',72,'Quis fugit omnis.','male','15965 Vivien Stream Suite 927\nEast Jaymestad, MD 69673-0000','1974-10-13','$2y$10$wnEj/nB21FWaPWXOMpBuquRmUmtgg1XT5kOP1sSvAzHXAPYSsgAvG','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(17,'Shakira Treutel II','lemmerich@example.com','9804139397',47,'Magni est ea molestiae.','male','6869 Alfredo Causeway\nNorth Nonaborough, NJ 50187-3407','1979-04-17','$2y$10$3JUzIjnKpMt9CayoQ79JZusf6EhvI7OkjnP3sJJeSCaTOnkXoCeqS','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(18,'Prof. Daron Kassulke Sr.','rcorkery@example.org','9823110423',48,'Et perspiciatis beatae autem.','female','9960 Leopoldo Lodge\nEast Lucioton, IA 81701-4346','1972-10-21','$2y$10$dGcpYig13h96kRTpigB8Y.WVGjXlQBeKEtaxw1m5EZTEWkhFJ9l3y','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(19,'Dorian Vandervort','elmore.glover@example.com','9815832936',23,'Deserunt aut rem hic.','male','3095 Ernser Stravenue\nNew Lauren, VT 96943-0152','1987-07-11','$2y$10$mYn0tRZ6jQSsL0jUaAf4XOtruAwE59rJbhzc4jWBoKAqp8Ovoa/B2','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(20,'Novella Wunsch','marina46@example.net','9801107726',32,'Perspiciatis molestiae et eius.','other','42933 Mayer Bypass Suite 306\nCharliebury, MD 44101-4579','1975-08-11','$2y$10$tlyBT06eHpAuN8hlXi7qn.Vf0MyDm.PjDY8b0uxVucL9nlEsirw1G','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(21,'Mr. Ephraim Mueller PhD','pascale32@example.com','9814700296',74,'Magni ad minima reprehenderit.','male','553 Alta Key Suite 562\nRoobside, LA 24763-5031','1983-06-13','$2y$10$qB21JG1N3I0GjipVfIfB5.XFZm2TwI/G0VlPBVZzM1BTGSjYJ2eYO','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(22,'Wade Bednar IV','selina52@example.net','9821269454',42,'Dolorem rem eos.','other','5382 Grover Brooks\nRandalmouth, NY 98789','1976-04-28','$2y$10$in3VLdkGfMddKTRF4NSkheN/zwIFmAQZebOF0yi7nc9Lxiik/lB3W','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(23,'Ms. Tessie Wisoky','hertha.nader@example.net','9897866687',64,'Excepturi id eum.','other','707 Kreiger Divide\nKunzeburgh, GA 84997','1991-02-20','$2y$10$syrmm7bamORb.NIpxb2RYuyNWwVl5Is88B8NKO4LHVi5K3Yh.4WKC','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(24,'Prof. Aletha Turcotte IV','yvette97@example.net','9847678170',36,'Officiis eius quae.','other','20025 Candido Via Suite 317\nNorth Antwon, DC 99120','1979-08-09','$2y$10$0CWucM92UpFcaU2uPHCtGOE4gGhnI18aWsEm7.i5vq1M.//Kb5XMC','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(25,'Ricky Mohr','sanford.wilford@example.com','9818827420',56,'Quo rerum dolore id.','male','157 Hermiston Hills\nWest Heleneshire, MN 68203','1989-01-31','$2y$10$Ej7kzuCMKLNLgStE8GDMauEVjL1SybeA8zwp30PYFcMqUEcLl/eFG','2025-03-27 17:07:43','2025-03-27 17:07:43'),
(26,'Amy Schuster','marcellus.zieme@example.net','9840218952',53,'Molestiae repellendus officiis.','male','802 Rosalind Manors Suite 976\nWest Martaburgh, CA 89853','1975-11-19','$2y$10$7a2M.riPtKR4oespk7CVX.XbZr0QG2LcJv3QkqCevDZvqrsi2Wbdm','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(27,'Leta Mills','piper38@example.com','9899455046',58,'Voluptate earum quia necessitatibus.','other','947 Darryl Loaf Apt. 501\nLockmanport, CT 62340-3085','1997-02-05','$2y$10$R4dUmipsoxw1oN.nVEjTguJTsegHpX9FQh/ZSIxWsjNczYbX6bBH.','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(28,'Mr. Dante Vandervort V','wilton56@example.org','9897045111',73,'Numquam alias maxime autem.','male','231 Eichmann Valley Apt. 023\nWest Karl, ND 47179-3969','1990-12-22','$2y$10$GOUdP/scy/NQYDzxiXwwEuDhRDXQV/SmicuixTgTsgsq50PvZtiKe','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(29,'Leland Sipes','karley55@example.net','9863100052',33,'Quaerat eos odio voluptatem.','other','454 Fadel Cliff Apt. 032\nNew Liam, NY 43647','1976-04-08','$2y$10$IU9RdWbu3QJlNCGqzh0eR.5l0otADf2ddrLKWfXBrBNQXZaDcXF0W','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(30,'Summer Bayer','arnold91@example.net','9876975774',52,'Labore perspiciatis dolorem officia.','other','9117 Ernesto Avenue Suite 138\nHarberport, SC 08953-7589','2006-02-20','$2y$10$yduUsVW9yBpgeDT6U42SXe56qR7ZDyjJPCLAOahUbLNNX9m7ZQUJ6','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(31,'Prof. Felipe Eichmann I','jbrakus@example.net','9801139772',66,'Porro necessitatibus ullam.','other','8662 Kaylin Forks\nNorth Lawrence, IA 60882','1990-01-01','$2y$10$iqFVhytulntX6BNqtX9lT.SqQvVv2gAp.3QPjNAjUhzwcgOhYvKQ.','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(32,'Brittany Walker IV','schmidt.ron@example.com','9853308691',25,'Optio eius dolor.','other','62082 Christina Estates Apt. 880\nEast Cooperside, SD 67500','1992-04-03','$2y$10$HJC9VHEkWjmK540/iOHz1.5V7JwtvpO6P7FAlZsJDTwbJXQ0ILCse','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(33,'Maye Kilback V','zrosenbaum@example.net','9878595620',75,'Ut eaque et.','other','540 Jodie Valleys Suite 250\nLake Jewel, NH 88433-9146','1977-03-17','$2y$10$Fx9kXl/3B9VmPzdoBK6YN.PXI3qg3tWK6AbsYlJrsn24kioBvjVsG','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(34,'Mireille Lehner','sylvia28@example.net','9855926996',25,'Voluptas quos.','female','3335 Johnson Drive\nLeschmouth, MD 44405-6592','1979-08-20','$2y$10$yHY5UhtBeYJ6EhFrNhrB..kBJgV3WPNkSHaSi4wlRfB/ulsPeMc2.','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(35,'Cara Jacobson','feeney.william@example.net','9877183924',36,'Harum qui beatae nihil.','female','755 Vita Passage\nClaudtown, NE 25823-4522','2003-10-02','$2y$10$hx2MvKP2So5r5.yeUXawEeS/ONL3qFiY3mAyUbp.IK/G1iIvp.33.','2025-03-27 17:07:44','2025-03-27 17:07:44'),
(36,'Chaya Moore PhD','sawayn.kaley@example.net','9821679444',55,'At natus voluptatem.','male','828 Sharon Village Suite 658\nLake Simone, DE 11321','2003-06-16','$2y$10$S7A7C2MFUqC6vxlresdfDeEgbmYGGhmQwWOPs3IJK.2E7p.Mh58qS','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(37,'Cecil McClure','blick.ron@example.com','9888313172',63,'Officiis in nostrum.','other','28305 Batz Plaza\nNorth Rooseveltmouth, OK 00048-9448','1980-05-03','$2y$10$3UOZ840s2SURk5pIsdFDIu42pY6wFxXYGcZOgy/sDuzRU1wxotW7m','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(38,'Jovany Reinger DDS','ijakubowski@example.com','9863557571',75,'Ex voluptatem cupiditate.','other','905 Kole Glens Apt. 455\nNorth Elenora, CO 54798','1994-07-24','$2y$10$QERWUhZjZ95SCdtRM9I0de2O1sWTzLr.didRe3qc0zXAV/J1SsPpK','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(39,'Maggie Trantow','joseph.stamm@example.net','9845640920',49,'Dolor autem consequuntur delectus.','male','5032 Ignatius Oval Suite 988\nAbbigailfurt, HI 94220','1997-10-19','$2y$10$0yhO/TwKtP9d2L25I4JiW.PhuMQY3dodm8SSUEJbKYIubpSmyVnpy','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(40,'Yasmin Hoppe','rusty.casper@example.com','9806914827',29,'Sapiente eaque quasi distinctio.','female','2098 Bahringer Way Apt. 389\nHeidenreichland, NC 37754-6558','1985-02-09','$2y$10$P7E4tWH.jQG9rLWqzsdvSeSjnCkiragEu.mh7fb8zVUborpniEs0y','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(41,'Aida Renner DVM','yessenia96@example.org','9854804844',52,'Voluptas quam molestiae.','male','403 Jacobs Flat\nNorth Leannafurt, FL 57774','1977-05-15','$2y$10$eDIG/NfXt3aYfnPdPsOd/uOISqlWfwzL8by7LEpNg6RcEXy6Gsh3W','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(42,'Prof. Eli Weimann','skassulke@example.com','9899611025',51,'Non doloremque nostrum.','male','397 Mertz Prairie\nEast Elvisville, UT 19550','1980-10-16','$2y$10$.iXURnQ0Fgnyet8ENdm7sOq02Z9IoUEOJKQh.PV5bRopC8JvfghJK','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(43,'Prof. Kevon Hills','ykohler@example.net','9859870131',47,'Quia et velit.','male','73909 Judge Unions Apt. 948\nEast Jessie, MT 04657-1548','1988-01-07','$2y$10$4Gf//EjmOHqlz7KeyXODfutNkjyjYoMv0dSsaPFW6vE3YWD4vUS4q','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(44,'Alejandrin Tillman','fern65@example.com','9855095184',48,'Voluptate quod deleniti.','female','480 Efrain Burgs\nEast Enrico, MT 08183-1007','1975-12-14','$2y$10$ptF.2b0Hpq8gGdH2XNdKp.1C2TTAGaazkBKGJOZSGJLCWpIM/5ESO','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(45,'Mariah Rolfson','schaden.shemar@example.net','9803421968',21,'Qui non molestiae dolor sint.','other','662 Cassin Prairie\nGrahamburgh, CO 08671','1978-09-27','$2y$10$C3J/g/oh3/u66cWUMeScTOGgEbZ5.frVYnANicOC7diBVu4cgBJhG','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(46,'Luisa Schmidt','aframi@example.net','9818374117',64,'Non ullam sit.','male','30838 Brenda Parkway\nEast Neha, FL 29724-5465','1991-05-05','$2y$10$bTdFMWRT/AoITvZcmxrH5Oio0klKh1fR/hcIf7IteZG5s8BEO4tLu','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(47,'Vernice Koch','ford59@example.com','9801128284',19,'Earum iusto vero.','male','546 Block Avenue Suite 385\nBrakusside, TN 40515-8748','1991-08-21','$2y$10$M.ZM1uxM.49.OeoFK1AN9.iHE.z1DxpqfF2nqvqOUoFy7XKYTZAHC','2025-03-27 17:07:45','2025-03-27 17:07:45'),
(48,'Preston Schimmel','reilly.elvis@example.com','9805652923',74,'Delectus natus alias qui.','other','163 Alexandro Mission Suite 521\nSouth Ryleighmouth, NC 95014','1992-08-20','$2y$10$cYdDEi.1xDK1J445danH1OPAXunMG7.i7GP1NYMJPNaxH2MN.aTsS','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(49,'Mrs. Alexandrea O\'Conner Sr.','rempel.gloria@example.net','9811217417',35,'Eaque placeat.','other','125 Wilderman Place\nWest Octavialand, VT 71763','1972-07-17','$2y$10$QlbHDcmqQR6KS8gjarSHH.Dqpco7dP75UQFq1pZFlDwvRwswsEv22','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(50,'Aisha Littel','ruecker.piper@example.com','9821476893',46,'Nam consequatur dolor.','female','69224 McKenzie Road\nMarksbury, RI 82966-0506','1988-08-27','$2y$10$dw0cieD9gmIGf98QqUjDIOXN7EUZiarJOr9RmyvKQRG8zauJwGyiq','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(51,'Cristal Hackett','thaley@example.com','9839176818',48,'Et aliquid quos et.','male','1660 Emard Vista\nWest Clarissa, NJ 52413','1975-01-28','$2y$10$5GNfW6K9TVeTv.sqjXhaue4.2.2XlqYZdp4vC.tWdIbuOMrvZRfOa','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(52,'Quinn Mueller','orlo73@example.org','9825301239',41,'Quia quos molestiae consequatur.','female','9880 Sanford Wells Apt. 680\nPort Darrick, WY 10515-6246','1978-10-31','$2y$10$.kZZn4h4UQe0BmH.Vk0H5.31ELR9tU8G8.1BIwUvCRWumKLRNBNH2','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(53,'Sandrine Wunsch','collin.lueilwitz@example.com','9891983817',68,'Sit porro nisi.','female','8111 Jaida Views\nSallyburgh, NC 13783','1993-08-18','$2y$10$1qbTaMfj5vQExDAYom8oU.AfCrSVAoqc0d4PXJxBNUbW/y7AeE6ai','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(54,'Miss Pat Goyette MD','stella69@example.net','9841354050',23,'Dicta omnis.','female','88175 Kunde Gardens\nWhitestad, LA 71717','2001-10-03','$2y$10$T1mOvSs/HsIj8vqFNqrdTu7GHJVxxDQF1jXMqlYh1qGGgPlaPvkk.','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(55,'Ms. Katharina Hettinger','eriberto.welch@example.com','9847567896',61,'Voluptas dolor commodi et.','female','237 Jovani Mall Suite 086\nNorth Kristamouth, SC 26947','1978-04-26','$2y$10$R1HvEZK5ChGxF0AMpI7rVOFf9a1wTkJKwIt20fM.MjQAYI3saQSly','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(56,'Prof. Dagmar Batz','chaag@example.com','9802318064',75,'Quia est.','other','9700 Mayer Point Suite 278\nEast Lonland, NY 61763','1994-12-28','$2y$10$F6KoW/72p0.ej9HhzFwqRucYjgjTAqgE6LWVw1zUULn.5thTLYq1O','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(57,'Mrs. Marianne Brekke DVM','vesta.ullrich@example.net','9804784261',18,'Nesciunt quia facere.','other','256 Franecki Coves\nChristview, AL 48040-5067','1997-11-23','$2y$10$szVlK1xCwhNsRyiVb4IcS.n75TiYSd344PBu98DLv3ccka259YoEG','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(58,'Mr. Bobbie Bahringer','rzemlak@example.org','9836213171',50,'Id et reiciendis pariatur.','male','1412 Isai Loop\nLake Larissa, NY 60234','2005-06-24','$2y$10$FFU/L7rEeyNY/isU.oOgNeRYYjx28netqvYOabhI4tlh1QzzO4yXC','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(59,'Drew Mayert','dkohler@example.com','9871005207',27,'Cumque quam praesentium.','other','787 Robel Locks\nRathmouth, CO 95465','2000-11-28','$2y$10$uSY9SZLsYZaVigyD9sao8urSJnrQiizMGl2J/G3TDnPE5wKp5FcTO','2025-03-27 17:07:46','2025-03-27 17:07:46'),
(60,'Jayne Paucek','trent.hills@example.org','9872447693',49,'Deleniti maxime qui ex.','other','760 Upton Crescent Apt. 942\nJabariberg, MD 70724-6026','1990-03-27','$2y$10$t2MyFWg8U.N/R5STRet49.P.V39DjMn/DxfF57ystlNkBRLeSThdO','2025-03-27 17:07:47','2025-03-27 17:07:47'),
(61,'Dr. Cortney McKenzie','curtis39@example.net','9804447738',22,'Animi quia.','male','745 Feeney Manor\nPort Margarita, SD 54802-5270','1970-10-10','$2y$10$Xa/BuaCRlevT.WUN56Vzoe.UWF4V53Q9.sr8y6VFSENBxrJxYRk32','2025-03-27 17:07:47','2025-03-27 17:07:47'),
(62,'Gabe Kuphal','lfunk@example.com','9897621761',38,'Vel vel eos odio.','female','108 Kuhic Orchard\nNew Stanleyland, AZ 62254','1987-06-06','$2y$10$O2knGBxByJ5UG.oVf2SVvOXpr6MlpdSNbSak.PeTTMCljYm0q1UqK','2025-03-27 17:07:47','2025-03-27 17:07:47'),
(63,'Kattie Haley','bshanahan@example.net','9865037563',21,'Nihil commodi qui repudiandae.','female','34383 Wolff Glens Suite 944\nKaylifurt, AK 46580-4689','1975-08-13','$2y$10$ixvcocNjwMdJMuJRg7D0Pe6DSppZhyNt8jcj6azfAIRvpbahztmmi','2025-03-27 17:07:47','2025-03-27 17:07:47'),
(64,'Scarlett Schmidt','golson@example.org','9865672357',41,'Et fugiat quisquam.','female','75649 Ethan Square\nPaucekchester, CO 95040-1141','1972-04-09','$2y$10$A3w0TLvoHYvGBOt3LOf/c.XED9yCLIq2XaqbvvIasYPlUfQMejatW','2025-03-27 17:07:47','2025-03-27 17:07:47'),
(65,'Elbert Cartwright','bhuel@example.net','9842395551',24,'Odio porro maxime repellendus.','male','234 Rohan Path Apt. 260\nAuerberg, AR 69051-5250','1992-05-29','$2y$10$kPgbYcjAiE2EJiOvokJWV.VTU4sqRjmPKHm6GFdoIBHhROohyj4Kq','2025-03-27 17:07:47','2025-03-27 17:07:47'),
(66,'Elfrieda Trantow','boyle.terry@example.net','9878165007',55,'Sapiente pariatur voluptates expedita.','male','31858 Marquardt Fields\nHaneview, LA 49444','1985-12-10','$2y$10$oFQIDYnzkhegsqEqYHtKvO33uEX6PbzxMu6SBljb5LrAGlOXBuvCO','2025-03-27 17:07:47','2025-03-27 17:07:47'),
(67,'Lolita Franecki','rosenbaum.laurence@example.com','9866420208',43,'Deleniti magnam voluptas non.','other','9556 Jeremy Summit\nSouth Kelsie, DC 22971','1977-01-25','$2y$10$.OgRylFGKofELKmsElq.2eGm/JDSpEwNDNKqFwtXqrKs9xTJul9cO','2025-03-27 17:07:47','2025-03-27 17:07:47'),
(68,'Terrell Doyle','dedrick86@example.net','9858309530',26,'Et sint expedita fuga.','other','784 Amparo Viaduct Suite 574\nWest Wanda, LA 30821-0026','1970-12-21','$2y$10$yPmAbKkz3B113NVZ703EJ.gGoepSOxkKUZmCO2VrI3tY8gzs5p.vi','2025-03-27 17:07:48','2025-03-27 17:07:48'),
(69,'Edwardo Stanton','magdalen.kerluke@example.com','9828598757',78,'Ut quam quod qui.','male','141 Crona Dam\nLake Aubreyport, MO 39621-2182','1978-02-16','$2y$10$JLurPxyAplJDZ9geC8nBPuJ6d7Y3VQFYoEwf9/Putw4ZJnzgRp2ly','2025-03-27 17:07:48','2025-03-27 17:07:48'),
(70,'Theo Greenholt','torp.wellington@example.org','9879786386',24,'Itaque harum in voluptas.','female','91894 White Knolls\nMcDermottburgh, IN 37434-4402','1971-04-29','$2y$10$a9JpEP6h0xXLGQlwhVOeCuYukSD7iJsI7HRevv2idYiWo2jgbNOjm','2025-03-27 17:07:48','2025-03-27 17:07:48'),
(71,'Shemar Hamill','bashirian.alta@example.com','9810973773',72,'Perspiciatis dignissimos cupiditate.','female','10114 Donnelly Loop\nPaucekshire, WV 54866','1988-12-29','$2y$10$yUphfRnJo9cFvTa9looy/ubVatHijRSkX0eR8mHwGIeS/QoC3bdme','2025-03-27 17:07:48','2025-03-27 17:07:48'),
(72,'Guillermo Borer','rosalia87@example.com','9889027672',58,'Quia libero impedit perferendis.','other','3907 Cartwright Valley\nFatimabury, MA 74536','1994-03-12','$2y$10$4YHDKidkplmgxBJo/wlWC.SFkjK7GoQChxhnm5A01leZFW3mFVz26','2025-03-27 17:07:48','2025-03-27 17:07:48'),
(73,'Joan Dooley','adams.amara@example.net','9812413705',34,'Quos et voluptas.','female','178 Weimann Glens\nSouth Frederikhaven, OR 79251','1999-11-26','$2y$10$JMnlNux6W3H65.6lMGqMDeXM.AcwSZfhLtQvLVekuBTQR9Lr.MSRW','2025-03-27 17:07:48','2025-03-27 17:07:48'),
(74,'Mr. Gino Sporer','daniel.devon@example.org','9824366894',44,'Error dolores dignissimos.','female','52810 Wiza Orchard\nBrookebury, CA 90550','1994-02-11','$2y$10$90Cmwxp1mFgnrH0z77reJOynTY5rK1QwSSM2aKgU2PPzyaiLoC5Ki','2025-03-27 17:07:48','2025-03-27 17:07:48'),
(75,'Dr. Kirstin Baumbach DVM','leann14@example.org','9890567157',72,'Qui eius et itaque.','male','9084 Schmidt Ridge Apt. 455\nCristhaven, ND 11014','1999-04-09','$2y$10$vsRHF5Phyl9esk5yNg9N2eOOWeIhNvwxOsYpry.D.H8H5pNaml94y','2025-03-27 17:07:48','2025-03-27 17:07:48'),
(76,'Emmalee Braun','hirthe.clint@example.org','9827611628',62,'Fugiat et at.','other','4917 Gideon Centers Suite 987\nSchroedermouth, VT 55540','1986-09-16','$2y$10$3Nw40tN4ZbVLUTHNT/iYtuZ.LO8BWjsyREaXdISA5ZSrd092e0yQy','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(77,'Giovani Hamill','schulist.judy@example.com','9873124383',49,'Qui blanditiis.','female','24039 Elwin Fords Suite 021\nRocioville, OK 97587','2005-05-24','$2y$10$o89F3jI.K2lNvl0AudUj0O467wcQcV8kB/F3aaZaTn4IrQMWaMfwa','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(78,'Viviane Mueller','gcremin@example.net','9852683477',54,'Ipsum occaecati ea.','other','9819 Murazik Cape Suite 046\nEast Micah, WY 09394','1981-06-16','$2y$10$Rv20X2hpaiGGBGkPOQDikeLN5tezal/h6A9JlHL7G0.D7Sk8Z5xWG','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(79,'Gerald Sanford','nikita55@example.com','9852402214',21,'Voluptatibus omnis molestiae est impedit.','male','7207 Fermin Circles\nSouth Landen, IN 82742','1994-11-24','$2y$10$ViuZ8yuJRGbLEOaIBjij5.w2rF6k6Fu9oJGhzf/R55UFB9saMRaJS','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(80,'Aleen Larkin','della64@example.org','9804398612',20,'Praesentium similique occaecati.','female','5639 Marks Stravenue\nEast Orenland, VA 61412','1991-01-19','$2y$10$zrpdbodKd2WPeCoBEgxWMOhfedMO.XnqPagAVPSIAtoYTqvShYSru','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(81,'Dr. Adrianna Bahringer DDS','nelle.oconnell@example.org','9822894255',51,'Vero enim dolores.','female','73332 Rolfson Rapids Apt. 085\nWest Brittanymouth, GA 20981','1982-04-14','$2y$10$F1PO1Ws4LQZAhjp5FPElOeMpCOlvUzPYniznOkvOzl5F/b8MQCxYm','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(82,'Jo Marvin','aniya21@example.org','9826085456',44,'Nisi repellat aut.','female','1092 Idell Square\nAlfordfurt, PA 49086','1975-03-21','$2y$10$gstNiKc6VsKkTDn20m/jSeksliHlhcRB2mKgtKfXdBywcEIkmCjt6','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(83,'Leta Little','vanessa70@example.com','9816544395',63,'Et id et.','other','571 Cameron Key\nKaciborough, KS 91606','1991-12-13','$2y$10$YlOvSiU4JeKt5CzvaYEJGOmfFpR1f2pUXxwIPZ0l7C4K.so9PbAcS','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(84,'Queenie Doyle','goldner.consuelo@example.com','9809549541',33,'Quo molestias possimus.','other','7981 Zachariah Motorway\nSouth Providenciside, KS 72868','2002-08-13','$2y$10$sjOBHaLiB0Z4NVpjYSdXr.kV2f1nape6Ft/R2ex3.xWFKHV32ZKjC','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(85,'Brandyn Kohler DVM','cartwright.janiya@example.com','9853467658',67,'Veniam ratione eos ut.','male','6441 Barton Prairie Apt. 596\nKoeppland, TX 23397-7283','1976-12-10','$2y$10$1WqsAg/.7lDtyXIlKJy6R.gMO187XBm9zj642yEPkDwX3DSJVUW2W','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(86,'Miss Lacy Christiansen','ugreenfelder@example.com','9832658628',26,'Laboriosam deleniti velit animi.','other','695 Felicita Village Suite 996\nSebastianmouth, MI 59754-5554','1985-04-10','$2y$10$JKUSBOKqobzKrYCYNEgW7uvsC7dHw02KrluUAYmgpQ7gOxxKI48hO','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(87,'Malachi DuBuque','mcdermott.vallie@example.com','9821427627',42,'Sint quisquam sunt molestiae.','female','405 Vinnie Skyway Suite 423\nHeathcotemouth, HI 66138-4556','1979-05-27','$2y$10$Ai.2MZjrAZjnKkhdSXnoKOGFoJeDUWrwBxYrhyEbBJA9kTMLiOGVm','2025-03-27 17:07:49','2025-03-27 17:07:49'),
(88,'Edna Douglas','ratke.laila@example.com','9896288972',27,'Ut tempora.','other','73601 Stiedemann Squares\nLemkebury, WA 82466','1991-02-01','$2y$10$5VTHCOUiFZQznchdkMoiRu5JFqI.Z0r6kIaX0uRnxTH9kZTGVpCeC','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(89,'Abdullah Bradtke','kihn.kim@example.net','9813946399',52,'Rerum distinctio sint et.','other','714 Mayra River\nLake Thaliabury, NH 63774-0033','1979-06-17','$2y$10$sKFaeDWGGuhBC6hESMP0AuixTNUI8dlkKo2lg/UUlyq2LTGCvKa9W','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(90,'Hester Mosciski','brannon60@example.com','9825786195',43,'Est dolores pariatur.','male','788 Hortense Lakes\nBrendanland, SC 08302','1970-04-24','$2y$10$BVg3DgSsGNJzRFD0HkU/seGyyxXF.u.9WOGytDWldr60hIl8TrL0W','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(91,'Jillian Kunze II','art.hermiston@example.com','9803558498',40,'Cum modi commodi veritatis.','female','3683 Wallace Avenue Apt. 231\nKeelingburgh, NJ 37344','1981-01-05','$2y$10$SIQNNupbhdeAG5zhfYK6fuz8/VTs38VtMbA.aZLwqOU.6V74ghwhK','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(92,'Reagan Spinka','denesik.jaqueline@example.com','9811401225',43,'Aut voluptate qui non quia.','male','3783 Murphy Common Apt. 363\nStehrbury, TN 61503','1988-06-16','$2y$10$2VxEXZmOIxciIOdFrTXbaOzco2ctSJvic4.gKd5PJIcrxyYHY1cBC','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(93,'Dr. Georgette Casper Sr.','eichmann.fae@example.org','9816959140',57,'Voluptates enim esse.','other','310 Dewayne Freeway Suite 541\nWest Jazlyn, OH 12055','1980-10-02','$2y$10$K8dvlifJ8lvUDy8XKAITkuguMta7qNDsffhVScE4U0.w7JMI6UcB2','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(94,'Arlo Howe','caleigh.kassulke@example.net','9803042518',55,'Eum accusamus ut fugit.','male','55040 Emmy Burgs Suite 398\nEast Deontaefort, DC 65901-5849','1982-09-27','$2y$10$SFkGrXM4Fomfi9xtqa87SOW3mu7/3.hDnVrtO0vb/vj65jY0iSky.','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(95,'Adelia Gleason','ledner.kiley@example.org','9803245401',46,'Nihil excepturi deleniti.','male','297 Ahmed Valley Suite 954\nOmerborough, TX 06864-2755','1970-11-23','$2y$10$6bMhcMo8I1b9UmCpDVDGnuvlGQp7IBCXx/hMQr5uhTTYHK1i3.SHK','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(96,'Randal West','roel.welch@example.net','9802046698',77,'Aut distinctio repellat.','male','87295 Eliza Hollow\nSouth Ines, ID 47761','1982-03-30','$2y$10$nGjzuidph1q4KujKF6UTfOWmW5qjfiWWCjRkq8k8Y1UrDsxwJ8CgK','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(97,'Reva McCullough','henderson78@example.com','9842799299',77,'Ipsa id.','female','33952 Herzog Summit Suite 492\nMarleyland, AL 17373-5926','1992-09-24','$2y$10$HGDQG51KCfxUL1t5YJ39j.Xfxx4j3gV65eICmd7MmiKQhxaTIeT9O','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(98,'Morgan Friesen','deanna83@example.com','9819138626',76,'Numquam corporis pariatur laborum sed.','other','896 Keebler Loaf\nMarquiseview, AK 10914','1978-05-10','$2y$10$jwByCoIK1jJPx8sqNbP1Fu677klNgBsEkWxoy8LsVjewWYtZXeryS','2025-03-27 17:07:50','2025-03-27 17:07:50'),
(99,'Kareem Predovic','ustrosin@example.org','9889217686',33,'Nulla dolorem vel.','female','217 Shaniya Haven\nEast Naomi, TN 30181-9440','1982-06-05','$2y$10$KdfTSHa746x/UWNIaTHOCekmB1nh96wRl5gut7XH3su2INk18Ou86','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(100,'Prof. Owen Corkery II','leland.kohler@example.com','9810367057',51,'Fuga id qui.','male','7178 Langworth Street Apt. 952\nNelstown, WI 02941-6346','1989-11-19','$2y$10$QE2Do/y5Ex.xvrmanIHjJOEwU6Kmp79RD841Cq5jRSahv4eZ2uWHi','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(101,'Marilyne Hagenes','rahsaan65@example.com','9874904502',68,'Natus cupiditate voluptas nobis eum.','other','75992 Sim Vista\nWest Corene, CO 09882','2005-12-19','$2y$10$frTNyu9cFu2BewOKjEoAMuvb9sY5BvjsvC4j40rmOtlf067FjiAl6','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(102,'Adele Rosenbaum II','goldner.adele@example.com','9833609780',36,'Dicta nesciunt nulla ea.','male','520 Johnston Ramp\nLavinabury, NM 15618','1978-09-26','$2y$10$KUcCN4Ql6hXHUIhb7SnVqO7ogGfOkjt7NPsabob3JOzevqCQ8rtEa','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(103,'Santos Roob','koss.jerome@example.org','9865817771',72,'Vero voluptas voluptatem velit.','male','330 Nikita Wall\nLake Emmett, MS 51838','2007-02-23','$2y$10$NAVs7qQQJlXnVCGzV4fcIuRhB48mCzX6GvrjVfyN0rGsLFUc3V26K','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(104,'Mr. Brady Rutherford','lstrosin@example.com','9869737516',74,'Cum maxime rerum voluptas.','other','3891 Ortiz Groves Apt. 167\nJadonchester, KY 31587-6211','1970-03-30','$2y$10$.t1axtB43G.hFpJVZzDIvun7j.DhHY4sh5Ss3Hu1RqARdFdC9kaUK','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(105,'Dr. Abdullah Kuhic','bosco.jailyn@example.org','9819921425',70,'Assumenda reiciendis quibusdam.','female','3684 Rhett Passage Apt. 709\nWest Roberta, DC 24674','1980-12-29','$2y$10$SSSy6N2O/hL3evcfgPQMm.GbWoUuyvp0CZ2Bgt4/IkMwWdzKiD2L2','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(106,'Erich McCullough','sim99@example.org','9861287083',74,'Dolor dolorum ut.','female','55067 Bernier Junction\nDaughertychester, NM 84261-1860','1993-04-08','$2y$10$nGowmtxODtLK7Qz0uzkxXOb17qATbDtwjEZXqRXOJvgA0Ai2E3WpC','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(107,'Mr. Lucio Wolf','ariel97@example.com','9872526204',51,'Aut accusamus officiis alias.','female','48298 Domingo Plaza\nKesslerhaven, ID 56989','1974-01-20','$2y$10$gNu6cJyD/4r4IuK1YCGJnOsAtk9mKgBzXzj9npM6rM3qoncY1BkUG','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(108,'Dr. Wilfred Ward','zoila51@example.org','9899362179',42,'Illum est expedita dolorem.','male','4508 Walsh Ranch\nAbernathybury, AZ 01327','1984-04-10','$2y$10$if.a5RqEreapmEtQqxqFyepa7E8xyS8GkuIFWD1gTXc9SO8XNM6eW','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(109,'Coy Corkery','zdamore@example.org','9877364162',24,'In ut illo.','other','4356 Lindgren Crest\nMertzberg, MS 06906-5507','2000-04-07','$2y$10$1gZZTzZ7JHKNmO91aEY9f.Z4/HziGWA2Iv53kJk.ruNPlBJ58lWsm','2025-03-27 17:07:51','2025-03-27 17:07:51'),
(110,'Gene Batz','lizzie.hahn@example.org','9867236658',27,'Ut earum non.','other','7728 Vanessa Skyway\nDaisyburgh, VT 88475','1988-02-29','$2y$10$0Ylhjhk1uD8pH6MZOdO3GuVMRIiIyaeoJdZfBBLUWmxCY3hpValI6','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(111,'Sigrid Kunze','ebert.dee@example.com','9823965505',75,'Rem voluptas cupiditate veritatis officia.','other','32234 Daisy Rapids Apt. 174\nUllrichchester, SC 55944-6967','2005-07-29','$2y$10$xswhQHkckikzFP74DX/xqubU5H0CmuTyHKS7GJZqQpB95KO5QZ9m6','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(112,'Laurine Schultz','priscilla.doyle@example.com','9883772433',69,'Eaque adipisci perspiciatis minus.','male','5246 Schroeder Common Apt. 568\nLake Xavier, AZ 75161-1899','2002-10-30','$2y$10$zXd4F4BdB671fZiK1hnBxOFL88a3CdYzqqDswm7K1E2FoGhTiZJG.','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(113,'Ricky Paucek','noe64@example.net','9871482695',30,'Voluptatem beatae aperiam.','male','36795 Serena Mission\nEnidburgh, VA 71917','1997-04-25','$2y$10$GnACiN.dHJBD77kuZgm39O/eZdSXcM16ubh2s53GSN4m4osGI9zGi','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(114,'Dayna Johnson','lmertz@example.com','9844053152',32,'Nobis quis debitis hic.','other','93127 Ledner Village Apt. 475\nPort Ardellatown, IN 12040','1983-11-06','$2y$10$1izZXf7tNHo3RUtldl2WR.Wbc4WUdL64LjPD5YAQ57RwotttRUzgW','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(115,'Georgette Ortiz','kiana.ziemann@example.com','9840680985',44,'Fugiat numquam.','other','20310 Mueller Plain\nWest Leola, MS 52657-4257','2001-02-20','$2y$10$UCqXvq0aN.G3/xauqPHBAO4.QM5Mk4wdZIz8luMfvU1ZiWqOzusNi','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(116,'Queenie Fisher','fdach@example.org','9816694743',66,'Reprehenderit ex voluptatem sint.','female','3654 Cummerata Causeway Apt. 154\nCruickshankborough, CO 16887','1983-03-05','$2y$10$w/5bFrr.rugU0MUTl9RBw.MgM2LvFMkYpGXDjpBnTi9gktFJMGIwi','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(117,'Dr. Hayden Medhurst Sr.','anika.powlowski@example.com','9810128002',28,'Vero a dolorem autem.','male','70246 Beatty Forge\nRetahaven, DC 84598','2006-04-29','$2y$10$0s5QFifgvQtBcw7OJdzAKuBn/BYV/otGn9SJ21m/O6rol1k9y6B2i','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(118,'Prof. Jackson Rodriguez Sr.','salvatore.auer@example.net','9801118503',74,'Exercitationem debitis.','female','2515 Rippin Squares Suite 344\nNorth Mathewshire, CA 32746','1975-08-05','$2y$10$1LAOoFw6YI6ubKBBXVr9zO5d11qsaqvAr1zycwTwbMPw1mkosHXXK','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(119,'Rodrigo Braun','magali.fay@example.com','9807748282',62,'Consectetur laborum perspiciatis ad.','male','458 Berneice Village\nClotildemouth, OR 00450','2002-06-13','$2y$10$c.1qSvpLQ8gSRHs49MvOA.ySxm74cCnNz1q45XlHFdy4tDePs23U2','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(120,'Fatima Schamberger','willy60@example.com','9852864076',20,'Suscipit impedit in.','female','63175 Mohr Avenue\nBeckermouth, FL 64872-9481','1990-10-07','$2y$10$FvXYRVK3FC0/MAiZ.RNAMeHOp.LwoUlLOf27dAMtCB1g6Ir9eK5N6','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(121,'Althea Murphy','wuckert.lafayette@example.org','9848201680',63,'Quia rem ut.','other','25782 Block Row\nLake Pansyside, VA 73901','1999-07-17','$2y$10$zISFYemAfGSk3hr9lk4PN.fGxo8Rokw6hv7ZAHb6cNgb7HcY42Ofa','2025-03-27 17:07:52','2025-03-27 17:07:52'),
(122,'Weston Prosacco','zachariah41@example.org','9838373973',54,'Iste perferendis deleniti voluptatibus et.','male','757 Glover Harbors\nPort Devanchester, MT 18942','1984-11-12','$2y$10$43wxWG49Ae3my2DmVcqUUePVC3LnbtuzRFOgLXxEDKx9Yc2RtI/dK','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(123,'Narciso Hoeger','bobbie.toy@example.com','9833359416',52,'Et laboriosam aut.','male','40002 Marvin Walks Apt. 980\nMagnoliatown, ND 85740-4551','1980-10-21','$2y$10$2U2PLdaXsxeCOevM4HTBvumhTCUk/Lf5m1elAa06xf00WuWwMlK3K','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(124,'Virginie Herman','kolby06@example.com','9883764181',71,'Voluptas eum fugit.','male','514 Eunice Radial\nNorth Irwin, WV 88764','1980-08-11','$2y$10$CnroJGqen.ZAHFGoNa2bUOAk8aP1ehkcBAfC2jHcCebWlsm7aogYq','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(125,'Rahul Von DDS','xfay@example.com','9897998837',79,'Est non.','male','81873 Bettie Shores\nLake Clareburgh, MD 91735','1976-10-14','$2y$10$WinTNYuodPFzB9/7QgK0t.qROKQFgIJhoALwRY3T1tDW/84.G/KWu','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(126,'Mrs. Yasmeen Blanda V','kavon47@example.org','9842523490',65,'Commodi recusandae consequatur.','female','2102 Petra Hill\nNorth Mckenna, CO 50850','1993-03-09','$2y$10$9Jkr05WZd2CTlIAc93nfA.Jq5mhm7nvcVYoVic5jQ4p41T6qt2YYm','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(127,'Berry Ruecker','brooks07@example.com','9829189237',29,'Rerum nulla ipsa.','other','1336 Hilpert Union\nNew Mittieside, KY 84439','2000-06-05','$2y$10$v73qA4ZmTwR3eQA7wQRB4.vwzB3NSyZI2DoJUSxU4kccjQOpM5rk6','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(128,'Ernestine Hartmann','nicolas.wilton@example.net','9825161001',78,'Doloribus ullam impedit.','male','7086 Wisozk Glen\nLuettgenville, IA 61158-2793','2005-11-05','$2y$10$6WbClyHNcOeBbsi5FLn8zeE6s.KUpjjyPfZailVpO/F5fUZnX04EW','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(129,'Prof. Verona Bruen','lester.von@example.com','9891098525',38,'Eum omnis.','other','5396 Stanton Well Apt. 932\nLednerhaven, TN 92907-7051','2004-06-25','$2y$10$rYg9iNcEbsCESLvODx1Uh.Aj5lo5oGjrR/wCJDVx9liIs7il4Mag.','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(130,'Ms. Prudence Wunsch DDS','reta.marks@example.net','9876867596',28,'Suscipit sequi sunt molestiae.','male','157 Alia Track\nRusselville, MT 74224-6949','1979-08-26','$2y$10$vBuzmSZnNe/26kruNfHwvODah5PiRylBkSYAb8o11S9nWn08NTkW6','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(131,'Xzavier Bayer','mallie.dietrich@example.com','9848146772',29,'Sint tempora dicta.','female','16548 Theodora Brook\nEast Zackmouth, MD 12952','1990-06-29','$2y$10$zz2mZEJMf1iXiI.IFDQvVuyUAmydXDDNfNboex.y3zxDjlpj9rgRG','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(132,'Dr. Patience Streich MD','smitham.evan@example.org','9819974231',67,'Harum recusandae rerum dolorem.','female','5990 Grace Ranch\nSouth Timmothyfort, NV 56568','1985-08-17','$2y$10$6DIb/8UJZHp7J4KHWNWLVe6NJanPIz22c/m0KXIDCCQez.zvg4oWq','2025-03-27 17:07:53','2025-03-27 17:07:53'),
(133,'Eleonore Zieme','lwelch@example.net','9878345352',37,'Similique ut iusto temporibus.','male','6044 McClure Street Apt. 317\nNew Melbabury, IN 64221-1298','2003-10-07','$2y$10$3bMjbvru.8rw3dXIfFsYy.pPUoquUJ8aVdJYwWVF0/1j4M8hj8rC2','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(134,'Cortez Corwin','elta86@example.org','9803737421',26,'Rem quo.','other','649 Kessler Cove\nNorth Danielaton, ID 61954','1971-05-19','$2y$10$15NJd78S1Y9euZFtW8s8Z.0CKOl2zecC1qQDtP3JXyO/4VoFT7FRm','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(135,'Prof. Sabrina Dietrich III','shanel.lowe@example.net','9842409808',47,'Nobis delectus porro.','male','22737 Jacobi Tunnel\nWest Mabelle, TX 91788-1127','1976-11-28','$2y$10$JgZnCSevgYJzdZa38SdWg.yP6itqY4Bfdk7OAthXLVS7kNOO/Ksti','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(136,'Prof. Markus Funk','rosalind.nicolas@example.net','9840360950',52,'Eum nihil ipsam dolores.','male','81651 Clara Highway\nCarloland, NY 16294-8904','1997-09-03','$2y$10$kbT5m6kloLpMAKF792VxcOsJ.dshbVPBuTdHhp4OiJ7YfSFbV3KKi','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(137,'Anderson Ankunding','adickinson@example.com','9847092554',75,'Corporis nisi qui et.','female','735 Mertz Dam\nPort Parkerport, LA 88294-2390','1999-02-24','$2y$10$hF0w8uLPEF8e0jikur8T3e6.1WpUXVqEXPA44P5hgyrdgMRi2F9La','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(138,'Billie Kuhlman','xbreitenberg@example.org','9828704842',20,'Quia nam rerum.','female','4911 Flavie Square Apt. 069\nJamesonmouth, SC 07775-7865','1982-12-02','$2y$10$N0NkmsQOCesz2/nKEOTsGOte3ZT0Qx.cy6JkoMpAif5kL11AlR5ea','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(139,'Aileen Legros','charlene.leuschke@example.com','9860743242',61,'Voluptas est debitis est.','male','7852 Lebsack Mountain\nEast Murielborough, CA 08258-6513','2006-08-01','$2y$10$vOyHvGGCpz.7S.EacQhWwu/ORu6b8Wh0Kk7G0bHXThj2Qvs70Zs.a','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(140,'Mr. Orin DuBuque III','oberbrunner.terrill@example.org','9871239267',70,'In libero quia pariatur.','female','6459 Lilliana Manor Suite 942\nPatrickport, MS 42174-5350','1972-02-09','$2y$10$NAuGDsIQeybn.6xJtaFp9.K4kXgwKfPPCnQ0z1eug18BFYerXl4L2','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(141,'Edd Denesik','xgreenfelder@example.org','9833720950',19,'Dignissimos sint ut.','female','63800 Hane Estate Suite 625\nNorth Scottyton, NE 42284-4478','1976-10-26','$2y$10$76htJuHKV6dW5ldBkD94K.l.OCN./6.O3tj5kH/4WvwEGw3ccAXFa','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(142,'Aric Davis','ramona.baumbach@example.org','9818565067',54,'Commodi tempore velit quibusdam.','male','205 Hettinger Dam\nSouth Brandiside, CT 64852','2000-10-07','$2y$10$EJBl4KSlHJ.CqVfWdMUxne.VaIPZf/7Axrtrwc2A/qHVKm1lT7Igm','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(143,'Elmo O\'Keefe','tpaucek@example.org','9848126749',60,'Ullam labore facere maiores.','female','744 Destany Extensions Suite 207\nRitchiefurt, OH 83973-3842','1998-10-27','$2y$10$AhxL3YAhL4zPu5vZNoUuYOVtFyDkPXWbMhS4m3R0TU7s8wAkhxxrG','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(144,'Dr. Johnathon Ruecker II','sydney.hane@example.com','9856660811',53,'Illum earum laudantium.','female','64445 Shawn Skyway\nLulaside, ND 68514-4982','1993-03-22','$2y$10$o/2MKHMpYFH29x5W6olUFeOX23ONEYoXmVArOXX3BeAvvwiimqz6e','2025-03-27 17:07:54','2025-03-27 17:07:54'),
(145,'Clementina Sporer','vweber@example.org','9835008250',56,'Nobis quaerat rem non maxime.','male','34532 Adell Junctions Apt. 989\nErnestinastad, TX 93109','1975-01-30','$2y$10$H.Dt5Nzu2sshBKZnvgfVruqb/TvBbDbY7c8kbrxuF1xHz.Q7M4deW','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(146,'Prof. Helen Treutel','clifton90@example.com','9828601962',52,'Magnam rerum laborum architecto.','female','806 Crona Mountain Suite 717\nNew Adeliaside, CA 92396-4076','1985-06-04','$2y$10$fHYbPN4c6aWGzaKeSJDCGuLm2Ls/KeAatx6HjTS9dV1xZ6sDHc3Ca','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(147,'Prof. Cristian Lesch Sr.','delbert60@example.net','9886893136',40,'Aut tenetur a qui.','other','61971 O\'Conner Plains\nGreenfelderhaven, NH 52808','2002-06-12','$2y$10$S3b8oMib16dAMfXgqzewguuwogcr8.N8fu7n9A1zt2kk.Sz64muMO','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(148,'Rod Larkin','rmckenzie@example.com','9823941187',54,'Repellat explicabo et.','other','975 Tromp Keys Suite 556\nSabrinastad, SC 22338-5770','1982-04-08','$2y$10$zmQuhWK7mo20cMP7KOOTZupnNI8DrfB8TVYze8XEeFfixHipOaNmq','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(149,'Tia Paucek','frederik.ferry@example.net','9844206976',31,'Et qui ex aliquid.','other','279 Vivienne Port Apt. 551\nLarkinhaven, WV 90479','1974-09-01','$2y$10$Q3MTIutnI9IFFkrfS5ZkfeXfP59b1dQAbfM5owNNCnnaOCTOA.43K','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(150,'Modesta Cole','yconroy@example.com','9877823923',72,'Dolor ratione nam.','other','62143 Crystel Drives\nHayleyland, TN 59849-7415','1998-11-15','$2y$10$dKOpB7znT2B7NgIfXQGGOupBjYfgsHbm7NTxBcr8pfJupBP/soScy','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(151,'Ms. Maryam Mills IV','evan80@example.com','9878560835',64,'Beatae in laudantium porro.','other','31717 Cindy Overpass\nPort Kale, KY 95630','1979-04-08','$2y$10$0k9XQy8WKUB9RBlA6m7wlOsmJajB4i5ApIkeSW6QTAg9sS5C6xEVC','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(152,'Soledad Berge','sedrick00@example.net','9835105798',52,'In cupiditate minus molestias.','male','377 Chaim Trail\nMedachester, ME 33399','1972-03-17','$2y$10$9.stRrXwYvMr09V3YkvSM.c7U7SD4GLIsVfWPG412I9YY.jXtjnUO','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(153,'Prof. Amalia Herzog DDS','herzog.ross@example.net','9814870851',23,'Et maiores rerum.','female','318 Hegmann Pike\nBashirianview, NH 25180','1989-07-05','$2y$10$9lIxYN0QygqdpZxxg0bPnen/a3vu4ZJKAakBgo9SgHs0bJW.LPz32','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(154,'Ubaldo O\'Keefe IV','cleveland08@example.org','9829420803',38,'Nihil esse nihil dolores.','female','708 Karson Avenue Apt. 926\nEast Hattiemouth, SC 39606-2930','1982-06-22','$2y$10$1AqcfnNrcYeZC4Bsi8Q2Juo1CLiohqDHqBwjy0kIY4I.KuvKGip1.','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(155,'Keely Wehner','mwitting@example.org','9844660005',74,'Et quia id vel.','female','869 Elyse Mountains Suite 889\nYostview, ID 73328','1983-05-04','$2y$10$xsXIs3DhOTjI8U.pmS71hO9n8rXC/cvYJo/maPXwaL5dbPE3SmAhe','2025-03-27 17:07:55','2025-03-27 17:07:55'),
(156,'Maya Kuhlman MD','vivien.tromp@example.com','9834845966',35,'Ipsa fugit nisi.','other','2057 Lynch Springs Suite 433\nColeburgh, SD 52032','1988-12-25','$2y$10$pLGTJ3QOTi7FZjHtZbdK6OXe8jsZKHsOgTHahMngn6M1b3WiRfEBy','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(157,'Blair Senger','gerald.wolf@example.com','9871596384',77,'Qui quis consequatur.','other','943 Ryan Circles Apt. 233\nMinniemouth, MS 85790','2001-09-21','$2y$10$62kCswbZBbJlRbvIhgDlNO5LGUjnMphPRSzuqQ5hjga8F2Qm4nj4m','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(158,'Reanna Jones','wkeeling@example.com','9809862063',33,'Sunt ut.','male','705 Maegan Ridges\nNew Estelchester, AR 90965-3310','1994-02-13','$2y$10$UxJthgN7kMgnsR7/ZL3D3.RR9kPS/Yt2Es4kgSarW3s92F86AHeQO','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(159,'Ms. Krystal Lebsack Jr.','chowe@example.org','9893616658',30,'Rerum accusantium ut.','other','2700 Alivia Squares\nSouth Gerard, IN 27497','2003-07-13','$2y$10$0MyE7y0yG1UB6b5RP5ViEOmufGiY6jvrBJLrYAeYNCmf9z84yWK4u','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(160,'Nels Bashirian','aondricka@example.net','9858309641',76,'Eum veritatis laudantium.','female','912 Nedra Union Suite 946\nTateview, AR 65788-8663','1974-06-09','$2y$10$PLrT8yZ6DFnqFK7t91OyAO0aiYAgvERXeJKuvT8SF1hwI6/8tBFMW','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(161,'Adan Donnelly','lorna61@example.net','9885437650',39,'Et et minima aut.','other','892 Danny Pike Suite 862\nPort Shaun, OR 82215','1972-10-11','$2y$10$eo.ctuGvCkSmeTbuj4tWLuhJ6uXcPAAa3pO5xjlMWUJKNrP2Mm5LW','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(162,'Mrs. Bella McGlynn Sr.','blanda.taryn@example.org','9876952282',57,'Nostrum sunt sit voluptate.','other','4077 Stiedemann Pine\nWest Terrill, AK 85613','1990-07-06','$2y$10$e7tGvocDPoSYEz57rFKjhu7g4TZYOl7LXQ0VWstb3Rw9DjebJRs8S','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(163,'Jacinthe Schimmel','crooks.van@example.net','9882329645',31,'Cupiditate quia et molestiae.','female','6855 Purdy Corner\nGrovertown, VT 52649','1993-07-26','$2y$10$bePsLVILRB9A/0cBcHE8i.l9ObKh4q81aTwwZ2s5oHCPZXwZNKcCy','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(164,'Roberta Russel','elvera.rogahn@example.com','9806652821',78,'Voluptas explicabo distinctio assumenda.','female','9915 Weissnat Rest Suite 603\nJoanytown, ME 86001-9425','1974-05-28','$2y$10$NEtfDSdscjHcCDjI/4xSCOyAQofWb1oQRP2iQwiEvw0RNbOYPPZha','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(165,'Nathanael Stoltenberg I','julio.ohara@example.org','9893597269',54,'Id dolore quasi optio.','female','96116 Justyn Ranch Suite 746\nNew Erling, IA 32858-6089','1991-10-04','$2y$10$lD/piTOJsubAr12Jisw61.iKCFOlOzL1jZegYl7atiJJYX6jDGZmi','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(166,'Princess Conroy V','theodore.walsh@example.com','9810103355',65,'Unde id quidem.','male','8577 Pacocha Pike\nEast Rodolfo, VT 84581','2002-03-18','$2y$10$Ue2Y5/nm23CfjF4sP5aFFO3DbtbmHXew.0m3KODnfubLhi74CRSMu','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(167,'Alexzander Mraz','ncorkery@example.net','9822690600',45,'Quia aspernatur quia aspernatur.','other','97900 Maximillian Rapid\nWest Mara, TN 73444','1986-05-22','$2y$10$mfLn/NO8snagLnqfgn/Oj.wpBMiUPy/IRvHo9QDmn60DQHdv55HBC','2025-03-27 17:07:56','2025-03-27 17:07:56'),
(168,'Mr. Demarcus Sawayn IV','eduardo.durgan@example.org','9897921482',54,'Reiciendis ea eum non.','other','6780 Huels Inlet Apt. 361\nKerlukemouth, RI 29051','1998-11-09','$2y$10$DDzSZrkEcr9q5wJHyyKj..FAvBC/d5iUlaopWNVYKiYSwmB2nofYS','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(169,'Devan Eichmann','sedrick.anderson@example.org','9899934141',18,'Asperiores vel ad ut non.','other','247 Una View\nCyrusburgh, IL 92168','1982-02-02','$2y$10$baKGnQWGq9NdH129Rp53weS/NLH2APrFudb2XDWf5yEA5ELWw7D8G','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(170,'Mr. Filiberto Mitchell','kerluke.teresa@example.org','9836942644',71,'Nam quisquam velit dolores.','male','2749 Travis Course Apt. 007\nCrookschester, HI 40596','1991-10-13','$2y$10$7ILLOaimfC7/jJ0eOjTzvu5O1.iqCeTMzYE0PNtBCKIieGZoaC7Xi','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(171,'Jerad Toy','elisha.cartwright@example.net','9863544481',24,'Laboriosam et optio.','male','3620 Homenick Plain\nElbertfort, WY 65469-3689','1999-05-01','$2y$10$HrHuQW1x7QOoestGmzR6auJwcZn/jGHP4f.K1atNwZEa1WXH2Sini','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(172,'Adrien Brakus','eborer@example.net','9813959789',28,'Minus qui dicta.','male','3753 Sibyl Manor\nTurcotteburgh, MA 10978','1974-05-18','$2y$10$znUkgbP.ozDpdnliXM/qF.nje/EAxA14JbmKPiAJWPd9soJTuTSre','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(173,'Prof. Kali Huels III','rhiannon.dietrich@example.com','9851802497',53,'Molestiae sed distinctio sed cum.','female','6150 Tillman Isle Suite 278\nNew Katelyn, MI 29357-5672','1998-03-01','$2y$10$Ez8O15.ES0h4AOba3DCxYOOfXCLCVHEUkxIUNnuMlGZZtRN4GeF9q','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(174,'Mr. Sigurd Wuckert','stefan.ernser@example.org','9855141606',31,'Quod voluptatem corrupti repellat.','other','4256 Jenkins Spring\nJarrettland, TX 26601-5047','1985-04-03','$2y$10$bvkY92wqUyPi57FT2cuUFe.FhfAZsC6r9956Jzwd.R/Vj0.r3jorK','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(175,'Wava Zulauf','reid98@example.com','9873659209',70,'Dicta neque veniam aspernatur.','other','233 Weldon Crossroad Suite 648\nJuniorville, RI 35326-2100','1994-11-13','$2y$10$fOtrrrVH9t9TlPbjjJ.ufeX2psTMndfAFLjNqEBNLzdgsymWYEgCa','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(176,'Miss Adrianna McClure II','dale.prosacco@example.org','9893453678',79,'Iusto porro qui aut deleniti.','other','659 Muhammad Crossing Apt. 904\nPort Ramontown, GA 94125','1996-12-17','$2y$10$2KxL05hitC5Ix8qc1KVIG.ZOAj29yMSpf4jvq9N.HmOviULQnDnli','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(177,'Dr. Dannie Hamill','nya16@example.net','9870537887',78,'Magnam error magnam rem.','male','75350 Kamron Trail\nEast Donny, NJ 63755-5124','1975-04-28','$2y$10$nKJZJeiXUErBb0qQi2TsEOtNnNfUiWhcsVn9XIdRqWfFxO2Gvw3ba','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(178,'Devin Lesch','lnikolaus@example.com','9859046658',37,'Eos facilis id magni.','female','569 Kirlin Pines Suite 621\nSimonisborough, GA 32719','1975-06-07','$2y$10$BDbHzsn41wsk0lUMppDlh.s/FjQk5u9snkG5b2GNgv2TwFCKUEDoy','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(179,'Santiago Hodkiewicz','qbogisich@example.net','9809875545',26,'In sit perspiciatis pariatur temporibus.','female','13744 Becker Branch Suite 223\nSkyefort, RI 81399-5038','1987-05-20','$2y$10$1krs0FWAtJudDlKVeprEVeP.XNPxTvmY6Ti4scmIQyEkLLpB6Z/wa','2025-03-27 17:07:57','2025-03-27 17:07:57'),
(180,'Mr. Rosendo Hettinger II','qkohler@example.com','9829321962',23,'Est suscipit adipisci minus.','other','477 Wehner Drives Suite 962\nPort Bennychester, FL 83686','1990-12-24','$2y$10$skqbOptF8wvv8TSLUY/CeOrCTwIH025tzVwO8DJU.ghL.kQjwpqSC','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(181,'Dr. Paul Keeling','obeier@example.com','9863994970',61,'Et eos ipsam et.','other','23942 Meda Ford Apt. 899\nLake Alfonso, SC 98657-0974','1986-01-23','$2y$10$MV2WEWUeujQ8pLt8qMwyru1504jiZTcW6SKSSaXqqG6hDCx2iWDKK','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(182,'Sheila Wiegand','quinn09@example.net','9863362039',58,'Incidunt omnis eaque nam non.','male','90123 Mitchell Manors Apt. 506\nRunolfssonberg, GA 34610-0025','1976-11-03','$2y$10$BoxaKB3SnGvc4.4yhFiPxO2JP7AETMB.j3noe4avaml3IjxdxJVd.','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(183,'Francisca Parker','jaylan57@example.org','9872135820',56,'Praesentium saepe non ullam.','other','9902 Barton Manor Suite 686\nEast Reannatown, TN 91276','1979-12-06','$2y$10$c6OTEQLTZukrenvb8xrNPeOwniG.KinFSEbtofB2w1VCYNH800jOS','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(184,'Mrs. Myah Wisoky','rath.mittie@example.net','9837537168',44,'In sint qui esse velit.','female','716 Janessa Trace\nPort Nicholas, OR 52964-9909','1993-11-29','$2y$10$6UWxJp.8bjvdhk9QIF9DtOHPGF0DlrbohERJaSeJxQIKft2QhElum','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(185,'Casandra King','nsteuber@example.com','9847601249',43,'Enim earum tempora.','other','27976 Stoltenberg Springs Suite 336\nCollinsview, TN 52675-8515','1982-05-08','$2y$10$Z8.Vo1KbB6PXFqZRiTiOOOnrsX2Dq8nGnvtwy0w9IVRu2VYbwYVTq','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(186,'Rachel Koss','rubye30@example.com','9824428500',39,'Id quo odio velit.','female','651 Stehr Vista Suite 313\nWest Ophelia, FL 12420-4830','1993-08-01','$2y$10$qb95mdcGTAbwfkWtOOdc.e3br2D1vphZPG1tzNHIL9nr9nkrlPcZa','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(187,'Miss Chyna Prosacco','ortiz.elissa@example.net','9863016469',62,'Minus voluptates nulla suscipit.','male','128 Harvey Vista\nGeorgiannaview, NM 59566','1992-02-11','$2y$10$m6W6zMIB0bQRYYMeKJumcON75w14VyzYz1MiNj.BsLUsW9OfZOj8C','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(188,'Hillary Kiehn','schowalter.rhett@example.com','9820228334',20,'Voluptate corrupti occaecati omnis.','female','664 Edythe Views\nPort Lorine, FL 76296','1981-04-27','$2y$10$nFJ4lco0suq.Cp2PqSkCC.97wpoajpAolnkB3eY5GMoklCvSr78ca','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(189,'Emil Swift','taylor89@example.org','9807541297',34,'Voluptatem sed cum.','male','8176 McClure Wells\nNorth Janisborough, ME 92068-2134','1978-01-16','$2y$10$eKi.idHmQo7ulFy.L0gyMe6KS6WAcSkWWtsmyK4LV289HYbrg4cau','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(190,'Rupert Stehr','rtrantow@example.net','9863116085',65,'Assumenda aut dolore.','male','588 Albert Rest Suite 993\nUllrichland, TN 41357','1989-09-28','$2y$10$aejLKByVANPXbu/n1qMZCORmoVOfP26e1LTzUOqAJY4shgehxpXKy','2025-03-27 17:07:58','2025-03-27 17:07:58'),
(191,'Darby Maggio','kaitlyn10@example.com','9891665992',25,'Et nihil at labore.','male','9357 Noelia Stravenue Apt. 093\nMonserratetown, SD 31934','1997-05-24','$2y$10$a9xcSXb4391NbXTAIhhXy.bG1lF4W8yDXhZ/HqoHft9f20ImSBPJm','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(192,'Dr. Lexus Becker','hodkiewicz.estevan@example.net','9857777271',60,'Numquam ut sint.','other','822 Corwin Valley Suite 073\nWest Ashlee, VA 13650','1988-01-17','$2y$10$GeA0dEE8S2BbpA9SvrSIu.81.szDHKiqnvfeqGZWS5Bpnjf2/9AFe','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(193,'Vickie Gaylord','clovis10@example.net','9871521363',77,'Possimus et.','female','791 Erdman Inlet Apt. 556\nNew Jaredburgh, CT 21492-2167','2001-12-20','$2y$10$siv2xYUY860ieDmHulATG.fAaAjTvaGSqfh4wAjHDdXX3qbvHOyMm','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(194,'Isac Baumbach I','oschulist@example.com','9807071359',69,'Veritatis qui quos delectus quod.','other','7599 Gutkowski Forest\nMarcmouth, NC 59513','1970-04-09','$2y$10$EROH7NMzsxLhHeUQqF.70e4nk3dYfZcIXihgjlOIiNFYxL.zXYLwW','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(195,'Muhammad Schinner','mable.mckenzie@example.com','9894084050',69,'Quod eligendi non vel.','female','176 Cora Unions\nNew Jermeyton, DC 67941-9138','1974-11-19','$2y$10$OhMyqPeSYymG99l8V7cOR.rA0gn03pssgfixP1lA4EcRu.Whdugku','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(196,'Erica Stokes DVM','carmel.anderson@example.org','9877925593',51,'Assumenda qui quidem.','other','584 Rosalind Creek Apt. 679\nLake Madisynborough, KY 89904','2000-03-19','$2y$10$xYFZ6T6ik8c0I.ADThgePuysmizX0y7ItZpJOYHZos0z.MvSc/9eu','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(197,'Eva Gottlieb','daren77@example.org','9814488494',40,'Cumque rem dolor fuga.','male','643 Shad Shores Apt. 103\nPort Delpha, SD 06061','1972-03-09','$2y$10$vUbWRLMZ.MN7Zfikq5xLyOt/LYTk8rbEB7VsMB8Y.qz2n/QrWkZIS','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(198,'Ms. Christy Kihn','nitzsche.rosendo@example.net','9869739986',67,'Reiciendis explicabo amet.','male','48196 Ansel Crossroad Apt. 882\nFeeneymouth, AZ 46028','1983-06-04','$2y$10$CzibxQ3s4UK3zrrllVkE6OLREHdbv9nQThWKxj7k.s7hxGt0D14KG','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(199,'Shayna Waters','isobel60@example.org','9819099478',53,'Quisquam illo impedit.','female','6225 Mueller Pine Apt. 283\nMablestad, MI 41186','1998-07-26','$2y$10$5pUPqYyAbWDIFR0iExjoou52GoixWW7xD/UMz1pX3yeI8MuKmnfBq','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(200,'Rosemarie Jerde','balistreri.carlo@example.org','9834195213',62,'Doloribus nemo sit.','female','85311 Dach Estates Suite 424\nSouth Kearaport, IA 21329-4638','1985-02-02','$2y$10$F9j0C0KQkm3b3LpJjQsUdeY2fx0Pjt2nCr/Q/pfAcqZ23m.wVWlZq','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(201,'Bethany Jones','cesar.prosacco@example.net','9826126526',47,'Corporis accusantium culpa esse.','female','29649 Leuschke Fork Apt. 924\nLake Jerome, NM 13814','1986-07-23','$2y$10$q2Xh5LeM2QWnrlEoIdos/OdNdiaLr1uaVEYOWejUug/TqZBhn1wsK','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(202,'Mrs. Myra Shields IV','cnolan@example.org','9872017913',56,'Laudantium molestias earum qui.','male','1086 Boyle Valleys Apt. 016\nLake Evansfurt, IN 98786-3711','1991-02-22','$2y$10$ENX5kcxof3eaIH6jQYGJLOusdsMTzv6J9iOpEmHWgzUJ5QeXyG8x6','2025-03-27 17:07:59','2025-03-27 17:07:59'),
(203,'Amie Greenholt','kunze.fidel@example.com','9861168441',62,'Explicabo ullam.','male','616 Devyn Extensions Apt. 936\nOthaton, NJ 13002','1982-10-15','$2y$10$eHUKwXnRG2W10AA.fihuo.m8tcBux.jk8DCbTW503NzB/.sXj0COS','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(204,'Reilly DuBuque','aubree18@example.org','9884145401',27,'Et et excepturi.','other','69396 Kiarra Tunnel\nSarahstad, PA 20917-2184','1991-03-14','$2y$10$K8tFM9BK4qOlelgRDLDJfOtkWb0lpl4wZZjdjululkZBjEUpDGN5a','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(205,'Dr. Eldred Boehm','ramona29@example.org','9858892227',78,'Et aut veritatis laudantium.','male','66179 Giles Mountains\nZiemannmouth, TX 30870-2981','1987-05-09','$2y$10$vb28VdlDqIiD.rhyIGQIUeOHlDHYLX4kHjwW9E7AQhuucYhpG3pni','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(206,'Prof. Jaycee Parker MD','maynard96@example.org','9834335560',61,'At exercitationem sint at.','male','24731 Conn Roads Apt. 515\nSouth Rocio, SC 29779','2004-11-11','$2y$10$9jd7aPgkA2MgqrVOPYmlTexKOU1JiRoDOIjpaT3xR52dRJxKyFYES','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(207,'Lori Morissette','ugleichner@example.org','9827745493',39,'Rerum aliquam reiciendis id neque.','male','11395 Selmer Walks Suite 602\nWest Donny, VT 26440-0511','2003-01-07','$2y$10$gr71OSR4jyUoMU31Fv9EfOE8V7EMsYShaIdianL7A5VeiuQoo6bLO','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(208,'Dr. Woodrow Wyman','aniyah81@example.net','9896068618',27,'Consequatur qui facere blanditiis.','other','9499 Noble Village\nRodton, DC 73563-6528','1980-01-21','$2y$10$Lx.pusqQx6bwbjojck7yJOVAe4REnMXnGI/lCcgJARYeVwpX9eY2a','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(209,'Willie Welch','brice.stiedemann@example.org','9816827991',67,'Totam corrupti vel.','other','57162 Barton Islands Apt. 362\nMarianomouth, VT 47396','1974-06-10','$2y$10$k9NYSnJcaT03CfRPdh5P2uzFIkFxCc0vUXcXeYzu9pla1KACTisHu','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(210,'Talia Bahringer','meghan99@example.org','9824348944',25,'Reiciendis unde voluptas modi.','male','24477 Felicita Hills Suite 675\nNienowberg, VT 16858-1481','1991-12-03','$2y$10$XT.3khiflkbS9B60ibuO5ebeu9irPF49V5KTuFiDcuH.aFSUeD2j6','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(211,'Garnett Goodwin','tiara.mckenzie@example.org','9858619705',76,'Voluptatem rem unde.','female','981 Aufderhar Orchard\nAubreestad, LA 76986-9422','1975-09-22','$2y$10$xIumrTL1ML89hmtraIC8rOly0sFgu.zQfhgmGo5fSPj61uGl50b8W','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(212,'Alanna Daugherty DDS','harvey.herta@example.com','9870757614',46,'Suscipit quo est culpa eos.','male','8069 Cummerata Street\nLake Roderick, WV 89697','2005-01-18','$2y$10$Fqsx8TZnvxqg.FIIBkqZju5hhzcuMudFwRa7mW63ZKCO6cDItYWsi','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(213,'Miss Rosetta Kessler III','myrtice66@example.net','9810307717',41,'Quos hic quis quasi.','male','3322 Durgan Loaf Apt. 328\nMissouriburgh, HI 32833-3456','1976-11-12','$2y$10$/sHfeCLHnI.Mv2KR4lqN0OPrzRJMk2woB1MSM3QwVz8XdfsJU9sRe','2025-03-27 17:08:00','2025-03-27 17:08:00'),
(214,'Jody Wolff Jr.','emard.kraig@example.net','9835853181',52,'Qui laborum consequatur.','female','97332 Wilford Cove Apt. 926\nHyattton, SC 03347','1978-11-29','$2y$10$CJkdtB7sfLUOljR7.c49weHN7cvZfAhykDl64lfbqnTSZNbKMNeOS','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(215,'Cleora Rempel','nicklaus12@example.org','9881667402',25,'Aut aut repellat tenetur.','other','46335 Stanton Mall Apt. 381\nElysebury, IA 44351','1989-02-04','$2y$10$p.zKLTh7FN3pXsXcLvjVuuaYVbzVQQ8Uw/h.rMTTZ3NudvjI2kWV2','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(216,'Crystel Rolfson I','aufderhar.luz@example.org','9853249662',63,'Unde odit sequi.','male','44128 McGlynn Estates Apt. 145\nZiemannstad, WI 18693','1975-09-16','$2y$10$22rFcVtbcm7b.tTKl/vBv.AK64MCIRINfH3mKaB2dQBh4qXZ68D7W','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(217,'Mr. Lukas Dibbert','khickle@example.com','9817135518',42,'Quam officiis rerum quia.','other','365 Mittie Isle\nStromanbury, TN 74517-9383','1971-10-10','$2y$10$pTiqLbYtN9iZJMDV8wyCb.MVUkwyn30F06/ciWzt4Mt7.Jlkeer8i','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(218,'Webster Casper','angus47@example.com','9852873781',39,'Et ipsum error magnam.','male','31479 Treutel Plaza\nWillbury, VT 46580','1998-05-28','$2y$10$UOqw3VEkFr0CjAS3XIrZmOAOJjCaC46ycdiY3xSoSva6siePjSf7e','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(219,'Krystina Schaefer','tillman.aniya@example.net','9877487066',60,'Voluptate earum non itaque.','other','963 Goyette Street Apt. 590\nPort Tania, FL 91175-1611','2002-01-19','$2y$10$MLejWWM/sZqInrBqvvgfru/1zGPQShLtlIOKJF.lqE7CWsMMkNzqa','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(220,'Arely Schamberger MD','mzemlak@example.org','9884403901',74,'Ut voluptatem officiis voluptatem.','male','61561 Hollie Dale\nMortonshire, SC 53167','1994-11-24','$2y$10$wtNAKocy87QvgpJlxiWvfex9AID.5K4Si5IWFjb0/Ia6XJiuUpPbe','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(221,'Roslyn Stokes','xschmidt@example.net','9873332609',68,'Et consectetur quis dolores similique.','male','1134 Hardy Island\nBechtelarport, DC 24490','1975-06-28','$2y$10$T/gCf2dURyq389hV9584cOHMXqnwwRpaUB3ROZJj7.atJ1OMRXUei','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(222,'Jarvis Jakubowski','reinger.rebekah@example.org','9836596368',45,'Voluptatem suscipit tempore.','other','938 Columbus Crescent Suite 983\nLake Monteshire, NY 79109-9826','1996-08-13','$2y$10$cxA6Z3cLbQ5kpgwNf/4EW.PBxVJZmessEtXxI2o6JyALkkN7/ivv.','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(223,'Mr. Arthur Hahn DDS','reggie.king@example.com','9801965913',54,'Qui voluptatum id et.','other','667 Parker Parkway Suite 846\nBruenland, CO 09534-0674','1988-11-20','$2y$10$ZcdyygsloQwBQr1ozKsdmevT.ihcp0EAE2FvD2Ikeq3JxeML2rN.2','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(224,'Lonie Rutherford','carole16@example.com','9817819745',77,'Minima ad ut facere maiores.','female','4789 Isidro Rest\nNew Katelynntown, DC 19007','1999-10-17','$2y$10$qDTcoomTFtgTxIWgHorHluY.HP0rwFGV.UpXgeL7ABNBq0PjcG6MG','2025-03-27 17:08:01','2025-03-27 17:08:01'),
(225,'Gaetano Graham','mattie.kuhlman@example.org','9852477530',18,'Nam earum atque.','male','87212 Stanton Roads Suite 631\nRicetown, GA 74334-5493','1973-09-26','$2y$10$UIuxRLsJIAWvMP0YxgZxPux0dWRafPRMJpQ87q/cRM3qOMwaNWvHq','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(226,'Elyse Greenholt','kiarra.sipes@example.com','9832443421',27,'Est autem aut quia repellendus.','male','447 Connelly Turnpike Suite 860\nLake Mozelle, UT 09126-6150','2001-05-08','$2y$10$nGC9xtfd7CuDRDQpk8VBAeVQwcZJ9y0apKlhqjx.ti4MLc4S0h7GK','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(227,'Jocelyn Hills','rrobel@example.net','9811665459',18,'Quia at nisi modi.','male','5027 Feeney Plains\nLake Xander, OR 83052-7602','1991-02-05','$2y$10$Ji9lF3JFqkzDpnYQTcmt8up1LPAj/4568fcZ5co.7uchmoybXFI/a','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(228,'Mrs. Alessandra Friesen II','cordie.greenholt@example.net','9816199800',76,'Dolore earum laboriosam quia.','other','86182 Lueilwitz Turnpike\nGiovannihaven, NH 23207','2007-02-10','$2y$10$TKQzTG/BafnZRlHUSkjqLuDPNe2tFvR7l5FSS8ZWxRgKqE0uxcfcC','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(229,'Mariano Mohr','litzy.gerlach@example.net','9828612729',21,'Velit in nemo.','male','960 Edyth Stream\nLake Herminaside, ID 58216-6413','1999-01-04','$2y$10$VtXKUpliP0O/gTx.K.nWkuebtYNrIVeDmn8bpVvsf9DNCPI08EJfu','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(230,'Miss Gabriella Kirlin','ozella.shanahan@example.net','9820082566',56,'Nulla nihil rem ut.','male','12643 Fabian Ramp Suite 781\nBartonville, ND 51217-8686','1985-04-25','$2y$10$rPXPCYp7Nltfl2jFcGiehOjpdUhUTp3gTYNzbyyQ3mE1ZOhi/Axd2','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(231,'Prof. Avery Carroll','wiegand.ebony@example.org','9861208947',26,'Nostrum repudiandae soluta saepe.','other','27261 Sipes Springs Apt. 829\nSauershire, NH 04435','1994-01-08','$2y$10$l/K.h4GRvuld4gISFgLY1eZm/HFD6zZQ6t0n7YyNleG4iURUXC2/K','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(232,'Elise Goldner','uwaters@example.com','9827549559',60,'Qui consequatur eligendi.','female','5474 Mitchell Street\nBlicktown, ID 53444','1983-04-10','$2y$10$7oyQKAcLbGIFjm8RbDPuSubpRf8EohOtTNX1X6Vbus.5LOsdpdM0e','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(233,'Neva Bernhard','mosciski.germaine@example.com','9868280729',77,'Libero a voluptatibus quod.','male','3744 Marquis Ridges\nNorth Alessandramouth, MS 07494','1993-10-21','$2y$10$wZipd8oXadLQnrS8gLUMhuYEatbJp6pJ3QE6CYJAlejUkGVvFPs3q','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(234,'Jaqueline McGlynn','jovanny.wolf@example.com','9876057840',57,'Voluptatum rerum qui.','female','2712 Lynch Summit Suite 735\nCorrineshire, MD 27171','1979-05-19','$2y$10$J0/m6am.ISrytuxT4C6.curEn7kFoHVjdlle/T/UNVX8p8NU02jwK','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(235,'Bettye Thompson II','ydoyle@example.net','9854004632',36,'Quis numquam et.','male','8635 Hershel Fields\nSouth Rebaville, NH 34247','2003-08-21','$2y$10$EbS5sB5p0VwRDY1A1HNgDONPbzxjmLSRN5hgTQuXbHjZv/KuAiGJC','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(236,'Ms. Providenci Hilpert Sr.','bailey.giovanni@example.com','9818704519',69,'Voluptatem voluptatem inventore aliquam.','other','96046 Stehr Shores Suite 945\nNew Gordon, CA 04407','1980-12-20','$2y$10$6EJjY9XcQ/TTu1KgnLUbe.yjYyqKLpgAyRDxt3JSPZkQinmEEvcX2','2025-03-27 17:08:02','2025-03-27 17:08:02'),
(237,'Dejuan Feeney Sr.','valentina29@example.org','9895345556',63,'Et ea.','male','50780 Cassidy Cliffs Apt. 650\nRayhaven, PA 22149','1985-07-11','$2y$10$2N4UM3btHJDbRuxTCFr4JearBhWVMpK2C9bvZwzfgn8ej7tmYUmX2','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(238,'Prof. Marcelino Marvin','ddaniel@example.net','9860110108',63,'Aut delectus enim.','other','12037 Strosin Burg\nWilkinsonstad, OR 40335','1983-05-12','$2y$10$1w4yufx.4lis/DB6W.Xv/OKQPGHVg5jhev29nYMFYejMZBRMUc2Kq','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(239,'Dr. Gaston Fahey','antone.emmerich@example.net','9894737122',71,'Aut tenetur voluptatem.','male','11059 Delphine Isle Suite 731\nCartertown, WI 62757','1973-06-12','$2y$10$lV6gg3kb8iZrDgT4gShjY.5.3GShJGMnPOGstfheq8t34V4r5R3Bq','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(240,'Ms. Leanne Denesik IV','teresa80@example.net','9802555769',63,'Magni debitis ut.','male','598 Johnston Forest Apt. 461\nWest Quincyborough, VA 52084','1983-11-05','$2y$10$mELNBQbLlr17Bovn.NJG2udFdzRjJFlj/xMffT4IBcpuZD8CZ/WQa','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(241,'Jaycee Sipes','clay85@example.com','9873326224',64,'Laboriosam ex ut cumque dolorem.','other','85012 Guillermo Unions\nLake Irma, WI 00048-2457','1986-12-31','$2y$10$ucfXtuWYiIF3ObElLWedoOriSFcjjkefnHzF/mbe1890iuBuLCQjO','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(242,'Mr. Jasper Harber','william87@example.net','9840979442',55,'Non blanditiis animi quia.','female','2990 Amelie Plains\nDibbertmouth, ND 22082','2000-08-17','$2y$10$s.eMjFiU/Hv7NbszP02nHuUE./q0X9R9p2ItiQ/U7BOj6SwT0JxcW','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(243,'Miss Alda Kassulke V','lfeest@example.net','9831065829',31,'A consectetur et sunt.','male','46963 Torphy Pine Suite 840\nPort Gerhard, NE 00284','1984-05-04','$2y$10$rk8.ElfQTGmI8/B9Gyww.u9eBT1cr1BdwaCZeO5QJxTXbftWqKMUK','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(244,'Sigmund Cremin','everardo63@example.net','9890274121',75,'Porro sed.','other','739 Uriah Throughway Apt. 701\nEast Susanahaven, MA 61311-7308','1978-12-31','$2y$10$I/Xi6whQ9IFlq.BwWUIYvek3C5d1sBMmXsCHcnyOgj9GhLg1qTr82','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(245,'Dr. Roderick Heaney V','bkulas@example.net','9828619562',44,'Ut eius tenetur.','male','912 Rau Fort\nNew Kenna, RI 97947','1992-01-14','$2y$10$MMZc1B1bLZwceLPLdfF49OPd5yPdRqsblsK6pnCAYkATuEXwISDRK','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(246,'Zakary Bosco','andre.grant@example.net','9816833738',75,'Animi molestiae.','other','97438 Gottlieb Harbors Apt. 759\nJuanaport, AL 83053','1992-03-21','$2y$10$9J4RNgmSaOkRe55NUQOJEuTOacHaxZCW0CnGTvwnHS1D1f1G2Obxu','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(247,'Burdette Kunde','kihn.creola@example.net','9888165234',76,'Et rerum asperiores.','male','9683 Jakob Landing\nNorth Billyville, NY 54447','1971-01-14','$2y$10$ExNwU1uS1aT96bxrGQzajeeS1aNnr.NHtnjfMBIHQCx3ruTJQ.y0G','2025-03-27 17:08:03','2025-03-27 17:08:03'),
(248,'Dr. Reagan O\'Conner DDS','frederic72@example.org','9825070548',71,'Et ab et.','female','544 Johns Street\nEdisonborough, OH 66653','1981-01-23','$2y$10$aHMExJMznhy4pwkC3sOnOO17xyxnG9qrzRzWwXJe561apL.vdiwMG','2025-03-27 17:08:04','2025-03-27 17:08:04'),
(249,'Haley Oberbrunner','bauch.darius@example.net','9849510195',20,'Veritatis consequatur dolorem laboriosam.','male','2133 Mayer Fall\nEast Odellfurt, RI 04729','1973-08-18','$2y$10$zqQTJMUtyRQRz38U1ruS3.bBuTSsQBWGKKDw0mer.u0oVsA1ESArC','2025-03-27 17:08:04','2025-03-27 17:08:04'),
(250,'Dr. Geo Nienow I','ines82@example.com','9841903850',69,'Saepe voluptas ea.','male','85543 Blake Corner\nGrimesberg, MS 59348-9851','1978-01-09','$2y$10$XfainPxzV0YtvZ5OQYyUYeIMj44IivSurbeH4dlNaSzS28xWMzRMu','2025-03-27 17:08:04','2025-03-27 17:08:04'),
(251,'Mrs. Bria Keeling','kristopher10@example.org','9856387448',51,'Quis perferendis adipisci.','male','811 Witting Shoals Apt. 719\nFrederiquefurt, ND 04633-5591','1986-07-13','$2y$10$AyejzY0JYdtMbBC.QDn7UutSGyLBdDV1Tp17u/unkXWElqyRPX2BW','2025-03-27 17:08:04','2025-03-27 17:08:04'),
(252,'Hulda Jakubowski','odie95@example.org','9886857850',69,'Occaecati ut.','female','384 Aimee Green Suite 523\nMozellhaven, HI 86158','1991-10-07','$2y$10$Hk1VEv./gRPjisEBDip.iuGNeELrWalbb82vZzVAoxs1bjXWiNpmi','2025-03-27 17:08:04','2025-03-27 17:08:04'),
(253,'Mallie Wisoky','marcel93@example.com','9848158948',71,'Debitis praesentium est et.','female','36453 Waelchi Divide\nRebeccashire, AZ 90990','2004-07-21','$2y$10$BEGMPOw0QiJongi9HPylveIdUyTKbVh7IgZYiKBZVsipO2yzLBv0u','2025-03-27 17:08:04','2025-03-27 17:08:04');

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`name`,`guard_name`,`created_at`,`updated_at`) values 
(1,'view new user','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(2,'edit new user','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(3,'delete new user','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(4,'assign role','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(5,'view user','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(6,'edit user','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(7,'delete user','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(8,'create role','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(9,'view role','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(10,'edit role','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(11,'create users bulk data','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(12,'create NSAP scheme bulk data','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(13,'edit NSAP scheme','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(14,'delete NSAP scheme','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(15,'view NSAP scheme','web','2025-03-27 16:42:48','2025-03-27 16:42:48');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `pharma_applications` */

DROP TABLE IF EXISTS `pharma_applications`;

CREATE TABLE `pharma_applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `medicine` varchar(255) NOT NULL,
  `Batch_no` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `record_level` varchar(255) DEFAULT NULL,
  `exp_date` varchar(255) DEFAULT NULL,
  `mfg_date` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `potency` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pharma_applications` */

insert  into `pharma_applications`(`id`,`medicine`,`Batch_no`,`price`,`record_level`,`exp_date`,`mfg_date`,`quantity`,`potency`,`created_at`,`updated_at`) values 
(1,'Paracetamol','BATCH001',50.00,'10','2026-01-15','2024-01-15','500',500,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(2,'Ibuprofen','BATCH002',80.00,'20','2025-11-10','2023-11-10','300',400,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(3,'Amoxicillin','BATCH003',120.00,'15','2026-02-20','2024-02-20','250',250,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(4,'Ciprofloxacin','BATCH004',150.00,'30','2025-09-05','2023-09-05','400',500,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(5,'Aspirin','BATCH005',40.00,'25','2026-04-01','2024-04-01','600',75,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(6,'Azithromycin','BATCH006',200.00,'12','2025-10-15','2023-10-15','350',500,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(7,'Metformin','BATCH007',90.00,'18','2026-01-20','2024-01-20','500',850,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(8,'Losartan','BATCH008',75.00,'10','2025-08-30','2023-08-30','450',50,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(9,'Omeprazole','BATCH009',110.00,'22','2026-02-10','2024-02-10','320',20,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(10,'Cetirizine','BATCH010',30.00,'28','2025-12-05','2023-12-05','700',10,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(11,'Doxycycline','BATCH011',130.00,'15','2026-03-12','2024-03-12','400',100,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(12,'Prednisolone','BATCH012',85.00,'20','2025-07-22','2023-07-22','500',5,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(13,'Clopidogrel','BATCH013',95.00,'14','2026-04-30','2024-04-30','380',75,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(14,'Levothyroxine','BATCH014',60.00,'12','2025-11-18','2023-11-18','600',50,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(15,'Salbutamol','BATCH015',55.00,'25','2026-01-05','2024-01-05','420',100,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(16,'Hydrochlorothiazide','BATCH016',70.00,'18','2025-09-28','2023-09-28','450',25,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(17,'Furosemide','BATCH017',140.00,'10','2026-02-25','2024-02-25','500',40,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(18,'Warfarin','BATCH018',190.00,'12','2025-06-12','2023-06-12','300',2,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(19,'Lisinopril','BATCH019',125.00,'20','2026-03-30','2024-03-30','450',10,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(20,'Atorvastatin','BATCH020',180.00,'15','2025-07-10','2023-07-10','320',20,'2025-03-28 01:41:23','2025-03-28 01:41:23'),
(21,'Vitamin C','BATCH080',50.00,'25','2025-05-10','2023-05-10','800',500,'2025-03-28 01:41:23','2025-03-28 01:41:23');

/*Table structure for table `pharmas` */

DROP TABLE IF EXISTS `pharmas`;

CREATE TABLE `pharmas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pharmas_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `pharmas` */

insert  into `pharmas`(`id`,`name`,`email`,`mobile`,`age`,`gender`,`address`,`dob`,`password`,`created_at`,`updated_at`) values 
(1,'Pharma','pharma@gmail.com','9089098905',28,'male','654 Pharma St','1996-02-25','$2y$10$j6jGg0Q6p0Q2RhG5CqnWZex.fZ8eEIYsCJZq8LaK32Ov19U8lQxKu','2025-03-27 16:42:54','2025-03-27 16:42:54');

/*Table structure for table `role_has_permissions` */

DROP TABLE IF EXISTS `role_has_permissions`;

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `role_has_permissions` */

insert  into `role_has_permissions`(`permission_id`,`role_id`) values 
(1,1),
(1,2),
(1,3),
(1,6),
(2,1),
(2,2),
(2,6),
(3,1),
(4,1),
(5,1),
(5,2),
(5,3),
(5,4),
(5,5),
(6,1),
(6,2),
(6,4),
(7,1),
(7,3),
(7,4),
(8,1),
(9,1),
(10,1),
(11,1),
(11,4),
(11,5),
(11,6),
(12,1),
(13,1),
(14,1),
(15,1);

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`guard_name`,`created_at`,`updated_at`) values 
(1,'super admin','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(2,'role1','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(3,'role2','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(4,'role3','web','2025-03-27 16:42:48','2025-03-27 16:42:48'),
(5,'role4','web','2025-03-27 16:42:49','2025-03-27 16:42:49'),
(6,'role5','web','2025-03-27 16:42:49','2025-03-27 16:42:49');

/*Table structure for table `scan_doctors` */

DROP TABLE IF EXISTS `scan_doctors`;

CREATE TABLE `scan_doctors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` enum('male','female','other') NOT NULL,
  `address` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scan_doctors_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `scan_doctors` */

insert  into `scan_doctors`(`id`,`name`,`email`,`mobile`,`age`,`gender`,`address`,`dob`,`password`,`created_at`,`updated_at`) values 
(1,'Scan Doctor','scandoctor@gmail.com','9089098906',35,'male','321 Scan St','1988-07-12','$2y$10$NUeWC5TqSVgEMBH/LY.pEOengc2mHtt5ukjdCmFTeEEhGhqbXZOeK','2025-03-27 16:42:54','2025-03-27 16:42:54');

/*Table structure for table `scan_invoices` */

DROP TABLE IF EXISTS `scan_invoices`;

CREATE TABLE `scan_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) NOT NULL,
  `invoice_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `scan_invoices_invoice_number_unique` (`invoice_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `scan_invoices` */

/*Table structure for table `user_management` */

DROP TABLE IF EXISTS `user_management`;

CREATE TABLE `user_management` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_management` */

insert  into `user_management`(`id`,`address`,`dob`,`age`,`name`,`email`,`mobile`,`department`,`gender`,`created_at`,`updated_at`) values 
(2,NULL,NULL,NULL,'Alice Johnson','alice.johnson@example.com','9876543210','Junior Doctor','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(3,NULL,NULL,NULL,'Bob Smith','bob.smith@example.com','9876543211','Doctor','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(4,NULL,NULL,NULL,'Charlie Davis','charlie.davis@example.com','9876543212','Laboratory','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(5,NULL,NULL,NULL,'Diana Roberts','diana.roberts@example.com','9876543213','Pharma','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(6,NULL,NULL,NULL,'Ethan Brown','ethan.brown@example.com','9876543214','Junior Doctor','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(7,NULL,NULL,NULL,'Fiona Wilson','fiona.wilson@example.com','9876543215','Doctor','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(8,NULL,NULL,NULL,'George Harris','george.harris@example.com','9876543216','Laboratory','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(9,NULL,NULL,NULL,'Hannah Clark','hannah.clark@example.com','9876543217','Pharma','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(10,NULL,NULL,NULL,'Ian Martinez','ian.martinez@example.com','9876543218','Junior Doctor','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(11,NULL,NULL,NULL,'Jessica Taylor','jessica.taylor@example.com','9876543219','Doctor','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(12,NULL,NULL,NULL,'Kevin White','kevin.white@example.com','9876543220','Laboratory','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(13,NULL,NULL,NULL,'Laura Thomas','laura.thomas@example.com','9876543221','Pharma','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(14,NULL,NULL,NULL,'Michael Lee','michael.lee@example.com','9876543222','Junior Doctor','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(15,NULL,NULL,NULL,'Nancy Walker','nancy.walker@example.com','9876543223','Doctor','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(16,NULL,NULL,NULL,'Oliver Young','oliver.young@example.com','9876543224','Laboratory','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(17,NULL,NULL,NULL,'Paula Scott','paula.scott@example.com','9876543225','Pharma','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(18,NULL,NULL,NULL,'Quentin Adams','quentin.adams@example.com','9876543226','Junior Doctor','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(19,NULL,NULL,NULL,'Rachel Nelson','rachel.nelson@example.com','9876543227','Doctor','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(20,NULL,NULL,NULL,'Samuel Carter','samuel.carter@example.com','9876543228','Laboratory','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(21,NULL,NULL,NULL,'Tina Evans','tina.evans@example.com','9876543229','Pharma','Female','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(22,NULL,NULL,NULL,'User 250','user250@example.com','9876543460','Doctor','Male','2025-03-28 01:07:00','2025-03-28 01:07:00'),
(23,'Expedita magnam cupi','1995-03-25','59','Beck Dunn','ravimylar@mailinator.com','Do voluptate quos es',NULL,NULL,'2025-03-27 19:45:46','2025-03-27 19:45:46');

/*Table structure for table `user_types` */

DROP TABLE IF EXISTS `user_types`;

CREATE TABLE `user_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_types_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_types` */

insert  into `user_types`(`id`,`name`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Admin','2025-03-27 16:42:53','2025-03-27 16:42:53',NULL),
(2,'Doctor','2025-03-27 16:42:53','2025-03-27 16:42:53',NULL),
(3,'Patient','2025-03-27 16:42:53','2025-03-27 16:42:53',NULL),
(4,'Lab','2025-03-27 16:42:53','2025-03-27 16:42:53',NULL),
(5,'pharma','2025-03-27 16:42:53','2025-03-27 16:42:53',NULL),
(6,'Scan Doctor','2025-03-27 16:42:53','2025-03-27 16:42:53',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(1,'Jayanta Das','jayantadas.dev@gmail.com',NULL,'$2y$10$0ICnw3H.1M9rv318z.BHeuCaqDWo4BP7liTXpL6onOQcLpY/x.g8i',NULL,'2025-03-27 16:42:47','2025-03-27 16:42:47'),
(2,'Test User 1','test1@gmail.com',NULL,'$2y$10$eEgm.Y101stXZEre/c1KwutfgFB.PSbJtV409NeLlAy.AjUFYaq2y',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(3,'Test User 2','test2@gmail.com',NULL,'$2y$10$tqY/sTUQWXf6wt2nl.Inw.8hZiUYKrNJ.m4p8KS2d3kb6exVYzVfu',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(4,'Test User 3','test3@gmail.com',NULL,'$2y$10$6eJ4cVsbLI13XxegIZGWHOrP.kl63Mx3wvfFdCWWeGC3uFDCtxPP2',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(5,'Test User 4','test4@gmail.com',NULL,'$2y$10$vnk3S80l7K61KRsOkvBb9.9Ch/4BBlh9E/QjD7tdLT5B5N5VJwcn.',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(6,'Test User 5','test5@gmail.com',NULL,'$2y$10$6CRx1KbBzMzIdaJx0Upiue9JZCsUbfSMZKN59gqq8ME9ucjn/GU7S',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(7,'Test User 6','test6@gmail.com',NULL,'$2y$10$dlmounU4s1I3ja3M68CXGuKYT8zdEbEwe1SaHu1ByLDlgwaKlYcGi',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(8,'Test User 7','test7@gmail.com',NULL,'$2y$10$H5Vp0/01hGLPqXANeYwA/.jOGtWfSn/JHjezS62OBIys.62NiSUE6',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(9,'Test User 8','test8@gmail.com',NULL,'$2y$10$BF1fILpX02Lh.9pmWTxj1eu6YHbwvcO0Z5W.N0N1pdezMuAOxcIum',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(10,'Test User 9','test9@gmail.com',NULL,'$2y$10$OXnMwO1jEbk0DgFV8GkvFeipl4HUTOGJ6HED0B9HkNKI.fIZMBonm',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(11,'Test User 10','test10@gmail.com',NULL,'$2y$10$IrBc8bogJPU35U7ApOtQoO/iCX2ZJK6AlPzcBkFtdoZBkdsxJsz.S',NULL,'2025-03-27 16:42:49','2025-03-27 16:42:49'),
(12,'Test User 11','test11@gmail.com',NULL,'$2y$10$xE5mEG3w7FyzUBTtGJtctehVP94DRhVlzJkD/mGl1TAuCI39IDa6G',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(13,'Test User 12','test12@gmail.com',NULL,'$2y$10$SwkDnCgC0cllxf9p29SC8ufyqBCPnyrf241PZq4PNv2pVVJ677Z46',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(14,'Test User 13','test13@gmail.com',NULL,'$2y$10$58EX/F7yV6pDUjML/nmY9ObLxjgZETM2pZXkOxncWmKYfRutUiZQm',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(15,'Test User 14','test14@gmail.com',NULL,'$2y$10$KWdb3Vdi63DzL9MGpcvq/uYhRpWWl2EipK7wWzPSJ13pW3nOnoJOy',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(16,'Test User 15','test15@gmail.com',NULL,'$2y$10$Z8KN1g.R9FAh6UcTGmPg7.LSQsBgYOGHS37iUWzKgqpNsh9xCKWhy',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(17,'Test User 16','test16@gmail.com',NULL,'$2y$10$80Zd68ff9d4xLqMbhw56NuPYc8NaMtxFqRtaLS.Ap1Xp5cjOcPzGG',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(18,'Test User 17','test17@gmail.com',NULL,'$2y$10$Kx5tgpikTl5F6f./A6rluemYAx5YuuEPXPVUheLfhgxI9VF4EBnOi',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(19,'Test User 18','test18@gmail.com',NULL,'$2y$10$IcPDvMni0qedPzqL2WXv4Oj6jeW8xVnICSZd5QDICt9jOpVlbosWC',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(20,'Test User 19','test19@gmail.com',NULL,'$2y$10$8kHzG8vruiHC.kBvuXHrvuf8F/xqBGN9FBOgHfgY0Vd4yCkjtoYbK',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(21,'Test User 20','test20@gmail.com',NULL,'$2y$10$Y.Zhn0qo7FH.f9uyYxHaK.KCFGBwCQeXrqQrOYWWbLOKUbmieaufS',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(22,'Test User 21','test21@gmail.com',NULL,'$2y$10$O8kt.an4HBOxIKRPYas6xuZHUrPAIiiCQOoDQjd7jOW28MP7SBdRm',NULL,'2025-03-27 16:42:50','2025-03-27 16:42:50'),
(23,'Test User 22','test22@gmail.com',NULL,'$2y$10$DSheNdJBFpW50FQ4QSh9OemTfQXKCflySBRJi1iHK..03o/F4wNSa',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(24,'Test User 23','test23@gmail.com',NULL,'$2y$10$shEp1Vv0GWNV.ncunDsRJ.mvGrFcw4hqe7PN0IkZfbX4keSMNxItq',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(25,'Test User 24','test24@gmail.com',NULL,'$2y$10$qWkDV2P9O4Qj68jZrQkF9ehE/tyECek8nqwKDEPGNxTAaEx/ntmD6',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(26,'Test User 25','test25@gmail.com',NULL,'$2y$10$mFMe1N/4lEfNquoApUaic.YupNLroezmpk55yUFOr.CaFh4./P5qK',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(27,'Test User 26','test26@gmail.com',NULL,'$2y$10$ISr1DeGQRb1dbblrclu4XuYtpSVkNRhnSMxf1DRzc.ixlcquOQqCO',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(28,'Test User 27','test27@gmail.com',NULL,'$2y$10$x4y6JybEyTWQoQzDiN6Pee1QEmGzkp/BOOUf7auspceOXFvtjPA22',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(29,'Test User 28','test28@gmail.com',NULL,'$2y$10$4sxE55mathZ5GBQjc4J4NeUOTPHtMiXWi8ZA/PjrbaZnweXKt1YXu',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(30,'Test User 29','test29@gmail.com',NULL,'$2y$10$msGkLgn8SIPxYyX8H7adpOzWN4AJGepJK83pv0a2GgvcFviJ/.vqG',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(31,'Test User 30','test30@gmail.com',NULL,'$2y$10$y3jvfE4y4inyeGcyagdg9.ka1OYt4Vm22CqiaoICPDlhC3sHBpcIe',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(32,'Test User 31','test31@gmail.com',NULL,'$2y$10$6vyuh83PH26ptTDROs/VlOJgVbCaOPialsHlNXtephbu2V0nKHEkq',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(33,'Test User 32','test32@gmail.com',NULL,'$2y$10$33fCUmC/AKaNystzOeMVMeVCCw/DWCTgcaPFa88/n/k6Xp686bs0C',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(34,'Test User 33','test33@gmail.com',NULL,'$2y$10$GP4nF85zy3liWr7dUYjfTOZ9jOZrQjjTfsfd30ZGYtqYu9P6xTmY.',NULL,'2025-03-27 16:42:51','2025-03-27 16:42:51'),
(35,'Test User 34','test34@gmail.com',NULL,'$2y$10$YGc.cj/DvrB1BXhQj5wJj.tdxguPSWhIkCyVMYCIncspv2D7NvgJK',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(36,'Test User 35','test35@gmail.com',NULL,'$2y$10$gzgk.nLh.M9d428Eu2SpeupnufzHvMwXGo5FtZjo7ACjdOcH5D4NS',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(37,'Test User 36','test36@gmail.com',NULL,'$2y$10$3fAvTZcE6P5QyE1j1KDTKOHx1.K8E2s3mWmYCNPn.NkFRw/2r131W',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(38,'Test User 37','test37@gmail.com',NULL,'$2y$10$TSckFTy6kqoU9pHdfb/sYe4qzcJyAq57Je3imZIlUwjcTaJUcJbxq',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(39,'Test User 38','test38@gmail.com',NULL,'$2y$10$dePA6thmgzBUtJzrodVZZuWz1RoViUA2N.Iur.KoawRf1hFAe1C4y',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(40,'Test User 39','test39@gmail.com',NULL,'$2y$10$NR.RrVzUidF4Q/j90DpVMOy5egpcgqpL2ItaJWrXlAzZpr2w.tt.2',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(41,'Test User 40','test40@gmail.com',NULL,'$2y$10$hKzdE5jECDr4y64XQHpKeuAC7FXqoxvD6vng.R3rx8yM5Q3kEHEN.',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(42,'Test User 41','test41@gmail.com',NULL,'$2y$10$ln9Ji.0rRHkhlczSVAmlm.4C.RZh6tv53i3/tNqBL3J.EQvs21rzq',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(43,'Test User 42','test42@gmail.com',NULL,'$2y$10$e4uCTZsYIBDd0MrPg/tPGeQLJWY8/o5eLgnTdiK2Q.hwZ/yRD7VZK',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(44,'Test User 43','test43@gmail.com',NULL,'$2y$10$ZOT6NXiWCCTwqs58wU7c6.hx345cfzb2SAYIElEBp3QDE/vP.ITfW',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(45,'Test User 44','test44@gmail.com',NULL,'$2y$10$4E/vhtRwp9bDwXm3nTVOsO2EEmb2k95DMR16PdhKEt9blMQWEzDUy',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(46,'Test User 45','test45@gmail.com',NULL,'$2y$10$2TVlTUYEME.M4lCEiGBoMesNL2arXMRAkm5k0UODtY78RLo2kZVLy',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(47,'Test User 46','test46@gmail.com',NULL,'$2y$10$4odGLrLGu91Kc0tINdjYp.a1mT5GkGGOdygLfLwGv9PAK8KCigZvy',NULL,'2025-03-27 16:42:52','2025-03-27 16:42:52'),
(48,'Test User 47','test47@gmail.com',NULL,'$2y$10$WUY4lM90RlbRRxcgYTnFbubgkN5UnIY491HdsBgXMK9NR9nCemS8W',NULL,'2025-03-27 16:42:53','2025-03-27 16:42:53'),
(49,'Test User 48','test48@gmail.com',NULL,'$2y$10$DyWcvP8FIy9pkz4t0HL9Huhwz4KcHfWyaxeKpqVDwYDGxwtpOgofK',NULL,'2025-03-27 16:42:53','2025-03-27 16:42:53'),
(50,'Test User 49','test49@gmail.com',NULL,'$2y$10$XEFE/jysU1t8iHp4fgVQe.1fH8SEy6EBNEgvDiEfBv3esgCa7O0.O',NULL,'2025-03-27 16:42:53','2025-03-27 16:42:53'),
(51,'Test User 50','test50@gmail.com',NULL,'$2y$10$XVdQaqLsOPMDVPglS4rLtOB./.G.IkqVyQREzN4KrLPApTc98qL5a',NULL,'2025-03-27 16:42:53','2025-03-27 16:42:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
