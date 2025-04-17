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
/*Table structure for table `admissions` */

DROP TABLE IF EXISTS `admissions`;

CREATE TABLE `admissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` int(11) DEFAULT NULL,
  `primary_consultant` varchar(255) DEFAULT NULL,
  `admission_date` datetime DEFAULT NULL,
  `discharge_date` datetime DEFAULT NULL,
  `ip_op` varchar(255) DEFAULT NULL,
  `informant` varchar(255) DEFAULT NULL,
  `arrival_mode` varchar(255) DEFAULT NULL,
  `allergies` text DEFAULT NULL,
  `immunization_utd` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `admissions` */

insert  into `admissions`(`id`,`patient_id`,`primary_consultant`,`admission_date`,`discharge_date`,`ip_op`,`informant`,`arrival_mode`,`allergies`,`immunization_utd`,`created_at`,`updated_at`) values 
(3,8,'Adipisci voluptatem','1978-10-28 10:48:00','2024-01-27 18:06:00','Iste cupiditate dolo','Velit quidem volupta','Fuga Pariatur Fugi','Voluptas id veniam','No','2025-04-03 04:17:24','2025-04-03 04:17:24');

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
) ENGINE=InnoDB AUTO_INCREMENT=305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `appointments` */

insert  into `appointments`(`appointment_status`,`id`,`patientName`,`patient_id`,`doctor_id`,`problem`,`appointment_date`,`appointment_time`,`created_at`,`updated_at`) values 
('1',279,'Cecilia Mcpherson New',1,1,'Fever','2025-04-11','19:48:00','2025-04-03 12:18:55','2025-04-05 06:12:02'),
('0',280,'Dr. Moshe Koch',12,1,'Fatigue','2024-07-15','10:30:00',NULL,NULL),
('1',281,'Vivian Snyder',4,1,'Painful urination','2024-08-10','09:45:00',NULL,NULL),
('0',282,'Dr. Eliseo Padberg DVM',33,1,'Diabetes','2024-07-22','11:15:00',NULL,NULL),
('1',283,'Linwood Feil I',17,1,'Joint pain','2024-09-03','14:00:00',NULL,NULL),
('0',284,'Mr. Gideon Thompson',8,1,'Headache','2024-07-30','15:30:00',NULL,NULL),
('0',285,'Jean Goodwin',25,1,'Tremors','2024-06-12','13:45:00',NULL,NULL),
('0',286,'Nola Harrington',3,1,'Painful urination','2024-06-25','08:15:00',NULL,NULL),
('1',287,'Orval Smith',42,1,'Headache','2024-07-05','12:00:00',NULL,NULL),
('0',288,'Prof. Barrett Hane II',21,1,'Weight loss','2024-07-19','09:00:00',NULL,NULL),
('0',289,'Jaden Adams',38,1,'Weakness','2024-07-11','10:00:00',NULL,NULL),
('1',290,'German Johnston',7,1,'Skin lesions','2024-08-01','14:30:00',NULL,NULL),
('0',291,'Molly',31,1,'Fatigue','2024-09-10','16:15:00',NULL,NULL),
('0',292,'Tyler Weissnat',19,1,'Joint pain','2024-08-20','10:45:00',NULL,NULL),
('1',293,'Rae Donnelly',45,1,'Weakness','2024-06-15','13:00:00',NULL,NULL),
('0',294,'Vernon Kinney',2,1,'Skin sores','2024-07-27','11:30:00',NULL,NULL),
('1',295,'Beryl Klocko Jr.',27,1,'Painful urination','2024-09-01','15:45:00',NULL,NULL),
('0',296,'Mr. Luigi Terry',11,1,'Weight loss','2024-06-18','08:45:00',NULL,NULL),
('0',297,'Dr. Joan Heidenreich',22,1,'Skin lesions','2024-08-05','09:30:00',NULL,NULL),
('0',298,'Amir Hoppe',36,1,'Muscle stiffness','2024-07-09','16:00:00',NULL,NULL),
('1',299,'Marvin Schimmel',6,1,'Skin lesions','2024-08-25','10:15:00',NULL,NULL),
('0',300,'Zack Rempel',14,1,'Joint pain','2024-07-14','13:30:00',NULL,NULL),
('1',301,'Prof. Luigi Lang',29,1,'Headache','2024-07-01','12:30:00',NULL,NULL),
('0',302,'Bart Jaskolski',9,1,'Joint pain','2024-07-03','15:00:00',NULL,NULL),
('1',303,'Alexandrine Dietrich Sr.',16,1,'Weakness','2024-08-14','14:15:00',NULL,NULL),
('0',304,'Berta Bartoletti',40,1,'Memory loss','2024-09-05','11:00:00',NULL,NULL);

/*Table structure for table `bill_masters` */

DROP TABLE IF EXISTS `bill_masters`;

CREATE TABLE `bill_masters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) NOT NULL,
  `bill_type_id` int(11) DEFAULT NULL CHECK (`bill_type_id` in (1,2,3)),
  `Price` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `bill_masters` */

insert  into `bill_masters`(`id`,`Description`,`bill_type_id`,`Price`,`status`,`updated_at`,`created_at`) values 
(1,'Consulting fee',1,500,1,NULL,NULL),
(2,'Nursing fee',2,300,0,NULL,NULL),
(3,'X-Ray(small)',3,700,0,NULL,NULL),
(4,'ECG',1,450,0,NULL,NULL),
(5,'Laser',2,1500,0,NULL,NULL),
(6,'SPIRO',3,1000,0,NULL,NULL),
(7,'X-Ray(large)',1,900,0,NULL,NULL),
(8,'SOCPY',2,1200,0,NULL,NULL),
(9,'TMT',3,800,0,NULL,NULL),
(10,'USG',1,600,0,NULL,NULL),
(11,'BED 1/2 DAY',2,2500,0,NULL,NULL),
(12,'BED FULL DAY',3,4000,0,NULL,NULL),
(13,'MAINTANANCE',1,200,0,NULL,NULL),
(14,'TRIP CHARGES',2,350,0,NULL,NULL),
(15,'IP MEDICINES',3,750,0,NULL,NULL),
(16,'DRESSING',1,450,0,NULL,NULL),
(17,'BLOOD SUGAR',2,200,0,NULL,NULL),
(18,'PHYSIOTHERAPY',3,1000,0,NULL,NULL),
(19,'SYRINGE',1,100,0,NULL,NULL),
(20,'EXERCISE 1',2,500,0,NULL,NULL),
(21,'EXERCISE 2',3,550,0,NULL,NULL),
(22,'DUTY DOCTOR CONSULTING',1,600,0,NULL,NULL),
(23,'SV SET',2,250,0,NULL,NULL),
(24,'IV SET',3,300,0,NULL,NULL),
(25,'CORIER',1,150,0,NULL,NULL),
(26,'CATHETER CHARGE',2,500,0,NULL,NULL),
(27,'NUBULISER',3,700,0,NULL,NULL),
(28,'SPO2',1,350,0,NULL,NULL),
(29,'I @ D',2,450,0,NULL,NULL),
(30,'VISITING DR CONSULTING',3,550,0,NULL,NULL),
(31,'THEATRE CHARGE',1,5000,0,NULL,NULL),
(32,'DUTY DR',2,800,0,NULL,NULL),
(33,'welll',2,123,0,'2025-03-28 07:10:25','2025-03-28 07:10:25'),
(34,'Consequatur Ipsa e',1,198,1,'2025-03-28 07:13:48','2025-03-28 07:13:48');

/*Table structure for table `bill_type` */

DROP TABLE IF EXISTS `bill_type`;

CREATE TABLE `bill_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `bill_type` */

insert  into `bill_type`(`id`,`type`,`description`,`created_at`,`updated_at`) values 
(1,'IP','Inpatient billing','2025-03-28 12:08:18','2025-03-28 12:08:18'),
(2,'OP','Outpatient billing','2025-03-28 12:08:18','2025-03-28 12:08:18'),
(3,'IP/OP','Both inpatient and outpatient billing','2025-03-28 12:08:18','2025-03-28 12:08:18');

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
(1,'Dr. Alice thomsan','doctor@gmail.com','9089098909',40,'123 Main St','Cardiology','$2y$10$OoyeB466AyklrQKj/HGDxOcOC2IGxd7TXiCKjJhuNwySOtzMn4qWa',500.00,'2025-03-27 16:42:53','2025-03-27 16:42:53'),
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
  `date` date DEFAULT NULL,
  `ebbill` int(11) DEFAULT NULL,
  `physio_expenses` int(11) DEFAULT NULL,
  `salary` int(11) DEFAULT NULL,
  `tv` int(11) DEFAULT NULL,
  `tea` int(11) DEFAULT NULL,
  `phone_bill` int(11) DEFAULT NULL,
  `food` int(11) DEFAULT NULL,
  `amazon` int(11) DEFAULT NULL,
  `out_side_lab` int(11) DEFAULT NULL,
  `medicine_company` int(11) DEFAULT NULL,
  `laundry` int(11) DEFAULT NULL,
  `car` int(11) DEFAULT NULL,
  `biscuit` int(11) DEFAULT NULL,
  `cool_drinks` int(11) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `work` int(11) DEFAULT NULL,
  `milk` int(11) DEFAULT NULL,
  `flower` int(11) DEFAULT NULL,
  `manju` decimal(8,2) DEFAULT NULL,
  `courier` decimal(8,2) DEFAULT NULL,
  `desil` decimal(8,2) DEFAULT NULL,
  `bio_waste` decimal(8,2) DEFAULT NULL,
  `autitor` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `expenses` */

insert  into `expenses`(`id`,`date`,`ebbill`,`physio_expenses`,`salary`,`tv`,`tea`,`phone_bill`,`food`,`amazon`,`out_side_lab`,`medicine_company`,`laundry`,`car`,`biscuit`,`cool_drinks`,`service`,`work`,`milk`,`flower`,`manju`,`courier`,`desil`,`bio_waste`,`autitor`,`created_at`,`updated_at`) values 
(3,'1976-01-16',67,98,33,36,54,5,9,11,92,80,51,7,58,11,70,23,47,61,20.00,90.00,23.00,83.00,36.00,'2025-04-07 08:54:33','2025-04-07 08:54:33'),
(4,'1975-04-12',96,38,51,38,61,41,37,12,20,70,74,34,82,87,42,46,88,54,46.00,38.00,59.00,70.00,71.00,'2025-04-07 08:58:26','2025-04-07 09:00:54'),
(5,'2024-01-15',29,2,43,4,98,28,15,33,44,62,28,22,26,43,21,4,19,3,3.00,90.00,97.00,21.00,98.00,'2025-04-07 08:59:08','2025-04-07 08:59:08'),
(6,'2024-06-01',1200,450,15000,500,60,300,700,1500,600,300,500,1000,20,50,400,200,40,200,1000.00,150.00,100.00,400.00,250.00,NULL,NULL),
(7,'2024-06-02',1000,300,14000,300,40,250,650,1200,550,200,400,800,10,40,300,250,50,150,800.00,120.00,80.00,350.00,200.00,NULL,NULL),
(8,'2024-06-01',1200,450,15000,500,60,300,700,1500,600,300,500,1000,20,50,400,200,40,200,1000.00,150.00,100.00,400.00,250.00,NULL,NULL),
(9,'2024-06-02',1000,300,14000,300,40,250,650,1200,550,200,400,800,10,40,300,250,50,150,800.00,120.00,80.00,350.00,200.00,NULL,NULL),
(10,'2024-06-01',1200,450,15000,500,60,300,700,1500,600,300,500,1000,20,50,400,200,40,200,1000.00,150.00,100.00,400.00,250.00,NULL,NULL),
(11,'2024-06-01',1200,450,15000,500,60,300,700,1500,600,300,500,1000,20,50,400,200,40,200,1000.00,150.00,100.00,400.00,250.00,NULL,NULL),
(12,'2024-06-02',1000,300,14000,300,40,250,650,1200,550,200,400,800,10,40,300,250,50,150,800.00,120.00,80.00,350.00,200.00,NULL,NULL),
(13,'2024-06-03',950,420,13000,450,50,270,620,1300,520,280,450,900,15,60,350,220,45,170,900.00,130.00,90.00,370.00,180.00,NULL,NULL),
(14,'2024-06-04',1100,390,16000,400,55,290,680,1400,580,260,470,850,18,55,380,240,42,180,950.00,140.00,95.00,360.00,170.00,NULL,NULL),
(15,'2024-06-05',1050,410,15500,420,65,310,690,1600,530,310,490,1000,25,52,420,230,44,160,970.00,145.00,105.00,390.00,190.00,NULL,NULL),
(16,'2024-06-06',980,380,14500,370,48,280,660,1100,560,250,430,870,12,45,360,210,38,175,880.00,135.00,85.00,340.00,160.00,NULL,NULL),
(17,'2024-06-07',1010,400,13500,390,58,300,640,1250,590,270,460,930,22,53,390,225,41,185,920.00,138.00,92.00,345.00,165.00,NULL,NULL),
(18,'2024-06-08',1070,370,15200,410,62,320,710,1450,600,240,510,910,17,47,410,215,39,195,990.00,142.00,98.00,385.00,175.00,NULL,NULL),
(19,'2024-06-09',990,360,14700,440,51,260,630,1350,540,230,440,860,13,49,370,205,36,165,860.00,128.00,87.00,330.00,140.00,NULL,NULL),
(20,'2024-06-10',1030,430,14900,460,66,340,720,1550,610,290,520,940,20,56,430,235,43,190,1010.00,148.00,110.00,395.00,195.00,NULL,NULL),
(21,'2024-06-11',970,350,14200,350,42,270,605,1000,500,210,405,780,11,38,320,198,35,145,850.00,118.00,75.00,320.00,130.00,NULL,NULL),
(22,'2024-06-12',1150,460,15700,470,70,350,750,1650,620,320,530,1050,30,60,450,245,47,205,1030.00,155.00,115.00,410.00,210.00,NULL,NULL),
(23,'2024-06-13',1020,440,14800,390,54,295,675,1320,570,275,495,890,19,51,385,218,40,176,935.00,136.00,96.00,355.00,168.00,NULL,NULL),
(24,'2024-06-14',1080,415,15300,425,63,305,700,1480,610,295,515,970,21,57,415,228,46,185,995.00,147.00,108.00,400.00,185.00,NULL,NULL),
(25,'2024-06-15',960,345,14100,365,46,265,615,1180,510,225,420,820,14,42,340,200,37,158,865.00,122.00,82.00,325.00,145.00,NULL,NULL),
(26,'2024-06-16',1120,470,15800,480,68,345,740,1700,630,330,550,1070,28,59,440,250,49,210,1050.00,160.00,120.00,415.00,220.00,NULL,NULL),
(27,'2024-06-17',1005,385,14600,385,52,285,660,1270,560,260,470,900,16,50,375,212,42,172,910.00,132.00,89.00,350.00,170.00,NULL,NULL),
(28,'2024-06-18',995,395,14400,395,60,295,670,1370,580,265,480,920,23,54,395,220,43,180,945.00,140.00,100.00,370.00,178.00,NULL,NULL),
(29,'2024-06-19',1110,450,15900,450,67,335,730,1600,600,310,525,980,27,58,425,242,46,200,1020.00,150.00,112.00,405.00,200.00,NULL,NULL),
(30,'2025-04-05',1055,405,15100,405,64,315,705,1500,590,285,500,950,24,55,405,226,45,188,985.00,143.00,106.00,390.00,182.00,NULL,NULL);

/*Table structure for table `expenses_masters` */

DROP TABLE IF EXISTS `expenses_masters`;

CREATE TABLE `expenses_masters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `expenses_detail` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `expenses_masters` */

insert  into `expenses_masters`(`id`,`expenses_detail`,`description`,`created_at`,`updated_at`) values 
(1,'Date',NULL,'2025-04-04 03:53:09','2025-04-04 04:06:53'),
(2,'ebbill',NULL,'2025-04-04 03:53:48','2025-04-04 04:07:03'),
(3,'physio_expenses',NULL,'2025-04-04 04:00:07','2025-04-04 04:08:32'),
(4,'salary',NULL,'2025-04-04 04:08:40','2025-04-04 04:08:40'),
(5,'tv',NULL,'2025-04-04 04:08:44','2025-04-04 04:08:44'),
(6,'tea',NULL,'2025-04-04 04:08:49','2025-04-04 04:08:49'),
(7,'phone bill',NULL,'2025-04-04 04:09:03','2025-04-04 04:09:03'),
(8,'Food',NULL,'2025-04-04 04:09:08','2025-04-04 04:09:08'),
(9,'Biscuit',NULL,'2025-04-04 04:09:17','2025-04-04 04:09:17'),
(10,'CoolDrinks',NULL,'2025-04-04 04:09:26','2025-04-04 04:09:26'),
(11,'Service',NULL,'2025-04-04 04:09:37','2025-04-04 04:09:37'),
(12,'Work',NULL,'2025-04-04 04:09:43','2025-04-04 04:09:43'),
(13,'Milk',NULL,'2025-04-04 04:09:49','2025-04-04 04:09:49');

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
  `lab_details` varchar(255) DEFAULT NULL,
  `normal_range` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `Child` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lab_applications` */

insert  into `lab_applications`(`id`,`lab_details`,`normal_range`,`unit`,`price`,`Child`,`created_at`,`updated_at`) values 
(1,'Illum ratione dolor','Non neque voluptas i','Sed saepe vel rem si','579','In ipsam culpa cons','2025-04-03 10:23:21','2025-04-03 10:23:21');

/*Table structure for table `lab_details` */

DROP TABLE IF EXISTS `lab_details`;

CREATE TABLE `lab_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lab_select_id` int(10) unsigned NOT NULL,
  `lab_details` varchar(255) NOT NULL,
  `normal_range` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `child` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `lab_details` */

insert  into `lab_details`(`id`,`lab_select_id`,`lab_details`,`normal_range`,`unit`,`price`,`child`,`created_at`,`updated_at`,`deleted_at`) values 
(128,10,'Blood Sugar Fasting','72-133','Unit 6','403.74','Child 14','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(129,4,'Blood Sugar (Random)','99-182','Unit 2','430.5','Child 38','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(130,10,'Urea','70-233','Unit 4','616.63','Child 6','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(131,16,'Serum Creatinine','77-118','Unit 8','318.48','Child 22','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(132,5,'Serum Uric Acid','92-114','Unit 2','550.48','Child 15','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(133,18,'Total Calcium','72-102','Unit 9','172.3','Child 17','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(134,4,'Phosphorous','92-157','Unit 3','147.74','Child 7','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(135,5,'Amylase','89-213','Unit 10','922.41','Child 42','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(136,10,'Lipase','88-254','Unit 1','896.62','Child 18','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(137,2,'GGT','77-122','Unit 8','533.61','Child 18','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(138,4,'Control Test','90-299','Unit 10','641.73','Child 22','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(139,5,'APTT','92-134','Unit 6','395.77','Child 12','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(140,22,'Urine Complete','75-284','Unit 2','738.91','Child 20','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(141,17,'Glucose','87-230','Unit 6','594.82','Child 23','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(142,10,'Bilirubin','96-111','Unit 7','76.15','Child 22','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(143,21,'pH','82-154','Unit 1','644.93','Child 48','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(144,18,'Protein','76-231','Unit 7','183.71','Child 2','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(145,13,'Urobilinogen','92-118','Unit 2','643.19','Child 34','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(146,9,'Nitrite','70-261','Unit 1','768.13','Child 37','2025-03-28 10:24:07','2025-03-28 10:24:07',NULL),
(147,1,'Harum voluptate nihi9','In ad voluptatem vol9','Elit corrupti elit9','699','Child 38','2025-04-03 10:25:31','2025-04-03 11:36:04','2025-04-03 11:36:04'),
(149,2,'Eum id tempore ipsa','Occaecat dolor sed f','Amet vitae in error','734','120','2025-04-03 11:00:15','2025-04-03 11:36:23','2025-04-03 11:36:23');

/*Table structure for table `lab_master` */

DROP TABLE IF EXISTS `lab_master`;

CREATE TABLE `lab_master` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lab_select` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `lab_master` */

insert  into `lab_master`(`id`,`lab_select`,`description`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Haematology',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(2,'Bio-Chemistry',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(3,'Urine Analysis',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(4,'Motion Analysis',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(5,'Liver Function Test',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(6,'Enzymes Assay',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(7,'Electrolytes',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(8,'Lipid Profile',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(9,'Immuno Serology',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(10,'Culture & Drug Sensitivity',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(11,'Fluid Analysis',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(12,'Coagulation Assay',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(13,'Sputum Analysis',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(14,'Semen Analysis',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(15,'Endocrinology',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(16,'1.5T M.R.I Study',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(17,'Breast Imaging',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(18,'64 Slice C.T. Angiography',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(19,'C. T. Study',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(20,'Ultrasound Study',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(21,'Doppler Studies',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL),
(22,'Other Studies',NULL,'2025-03-28 09:48:34','2025-03-28 09:48:34',NULL);

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

/*Table structure for table `medicine_stocks` */

DROP TABLE IF EXISTS `medicine_stocks`;

CREATE TABLE `medicine_stocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `medicine` varchar(255) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `potency` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `record_level` int(11) DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `gst` decimal(8,2) DEFAULT NULL,
  `sgst` decimal(8,2) DEFAULT NULL,
  `cgst` decimal(8,2) DEFAULT NULL,
  `price_per_quantity` decimal(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `medicine_stocks` */

insert  into `medicine_stocks`(`id`,`medicine`,`batch_no`,`price`,`potency`,`quantity`,`record_level`,`mfg_date`,`exp_date`,`gst`,`sgst`,`cgst`,`price_per_quantity`,`created_at`,`updated_at`) values 
(3,'ECHINACEA OINTMENT','MHO53',82.00,'34',12,5,'2023-03-20','2025-03-20',NULL,NULL,NULL,NULL,NULL,NULL),
(4,'GUM FORTE GEL','B1251',134.00,'40',20,4,'2023-04-25','2025-04-25',NULL,NULL,NULL,NULL,NULL,NULL),
(5,'HAIR COLOR BLACK','SL230034',128.00,'50',18,1,'2023-05-18','2025-05-18',NULL,NULL,NULL,NULL,NULL,NULL),
(6,'MULLEIN OIL EAR DROPS','JO231039',78.00,'43',25,3,'2023-06-12','2025-06-12',NULL,NULL,NULL,NULL,NULL,NULL),
(7,'TOPI AESCULUS OINTMENT','SP65',126.00,'39',30,3,'2023-07-22','2025-07-22',NULL,NULL,NULL,NULL,NULL,NULL),
(8,'TOPI SULPHUR OINTMENT','CRO54',122.00,'40',28,1,'2023-08-14','2025-08-14',NULL,NULL,NULL,NULL,NULL,NULL),
(9,'TOPI CANTHARIS','CRO91',78.00,'46',22,1,'2023-09-05','2025-09-05',NULL,NULL,NULL,NULL,NULL,NULL),
(10,'TOPI THUJA','7164D77',84.00,'45',16,3,'2023-10-10','2025-10-10',NULL,NULL,NULL,NULL,NULL,NULL),
(11,'ACIDUM ACETICUM','MY1917',69.00,'41',14,2,'2023-11-01','2025-11-01',NULL,NULL,NULL,NULL,NULL,NULL),
(12,'ACID BENZOICUM','C17K026',87.00,'31',18,4,'2023-12-08','2025-12-08',NULL,NULL,NULL,NULL,NULL,NULL),
(13,'ACID CARBOLICUM','7215D201',119.00,'32',20,1,'2023-01-30','2025-01-30',NULL,NULL,NULL,NULL,NULL,NULL),
(14,'ACID FLUORICUM','0127636',68.00,'35',12,1,'2023-02-22','2025-02-22',NULL,NULL,NULL,NULL,NULL,NULL),
(15,'ACID NITRICUM','0127636',88.00,'49',14,1,'2023-03-18','2025-03-18',NULL,NULL,NULL,NULL,NULL,NULL),
(16,'ACID SULPHURICUM','351TRB2',136.00,'39',26,5,'2023-04-25','2025-04-25',NULL,NULL,NULL,NULL,NULL,NULL),
(17,'ACONITUM NAPELLUS','C17K026',148.00,'38',30,4,'2023-05-10','2025-05-10',NULL,NULL,NULL,NULL,NULL,NULL),
(18,'ACONITUM NAPELLUS','7215D201',60.00,'43',22,3,'2023-06-15','2025-06-15',NULL,NULL,NULL,NULL,NULL,NULL),
(19,'ADRENALINUM','O116091',122.00,'40',16,1,'2023-07-10','2025-07-10',NULL,NULL,NULL,NULL,NULL,NULL),
(20,'AESCULUS HIPPOCASTANUM','351TRB2',92.00,'46',25,4,'2023-08-18','2025-08-18',NULL,NULL,NULL,NULL,NULL,NULL),
(21,'AESCULUS HIPPOCASTANUM','7215D201',61.00,'35',18,5,'2023-09-20','2025-09-20',NULL,NULL,NULL,NULL,NULL,NULL),
(22,'AESCULUS HIPPOCASTANUM','5DC284B20',147.00,'49',14,1,'2023-10-22','2025-10-22',NULL,NULL,NULL,NULL,NULL,NULL),
(23,'AETHUSA CYNAPIUM','MY1917',64.00,'49',12,5,'2023-11-10','2025-11-10',NULL,NULL,NULL,NULL,NULL,NULL),
(24,'AETHUSA CYNAPIUM','0127636',138.00,'32',15,1,'2023-12-18','2025-12-18',NULL,NULL,NULL,NULL,NULL,NULL),
(25,'Dolan Cline','Dolor non sapiente s',244.00,'Tempor labore dignis',575,68,'1990-04-28','2009-06-20',43.00,36.00,51.00,796.00,'2025-04-02 14:16:38','2025-04-02 14:16:38'),
(26,'Kevin Greer','Reiciendis nisi dist',827.00,'Explicabo Sequi ape',712,47,'1991-03-18','1999-11-23',71.00,31.00,78.00,709.00,'2025-04-02 14:17:01','2025-04-02 14:17:01');

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11,'2025_03_25_173822_create_pharmas_table',1),
(12,'2025_03_25_173822_create_scan_doctors_table',1),
(13,'2025_03_26_034647_create_appointments_table',1),
(16,'2025_03_26_130156_create_pharmas_application_table',1),
(17,'2025_03_26_133202_create_scan_invoices_table',1),
(20,'2025_03_27_181526_create_diseases_table',2),
(21,'2025_03_28_041635_create_lab_master_table',3),
(22,'2025_03_28_060921_create_therapy_masters_table',4),
(23,'2025_03_26_115056_create_user_management_table',5),
(24,'2025_04_02_132115_create_medicine_stocks_table',6),
(26,'2025_04_03_035835_create_admissions_table',7),
(29,'2025_04_03_041957_create_physical_examinations_table',8),
(30,'2025_03_26_081304_create_labs_table',9),
(32,'2025_03_25_173821_create_patients_table',10),
(33,'2025_04_04_034625_create_expenses_masters_table',11),
(35,'2025_03_26_153015_create_expenses_table',12);

/*Table structure for table `modality_master` */

DROP TABLE IF EXISTS `modality_master`;

CREATE TABLE `modality_master` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modality_details` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `modality_master` */

insert  into `modality_master`(`id`,`modality_details`,`price`,`created_at`,`updated_at`) values 
(1,'Interferential Therapy (IFT) NEw',5030.00,'2025-03-28 11:16:03','2025-03-28 05:58:17'),
(2,'Intermittent Pelvic Traction (IPT)',600.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(3,'Continuos Pelvic Traction',550.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(4,'Intermittent Cervical Traction (ICT)',700.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(5,'Ultrasound Therapy',800.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(6,'Wax Therapy',400.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(7,'Electrical Muscle Stimulation',750.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(8,'Infrared Therapy (IRR)',650.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(9,'TENS',550.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(10,'Laser Therapy',900.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(11,'Continuos Cervical Traction',720.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(12,'Leg Traction',580.00,'2025-03-28 11:16:03','2025-03-28 11:16:03'),
(13,'Laborum quis sed sun',272.00,'2025-03-28 06:01:27','2025-03-28 06:01:27'),
(14,'Laborum quis sed sun',272.00,'2025-03-28 06:01:42','2025-03-28 06:01:42'),
(15,'Exercitationem corru',943.00,'2025-03-28 06:04:50','2025-03-28 06:04:50');

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

/*Table structure for table `patient_diseases` */

DROP TABLE IF EXISTS `patient_diseases`;

CREATE TABLE `patient_diseases` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(255) DEFAULT NULL,
  `symptoms` varchar(255) DEFAULT NULL,
  `diseases` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `patient_diseases` */

insert  into `patient_diseases`(`id`,`patient_id`,`symptoms`,`diseases`,`created_at`,`updated_at`) values 
(5,'1','fever','Influenza','2025-04-03 12:23:40','2025-04-03 12:23:40'),
(7,'45','fever','Influenza, Malaria, Dengue Fever, Zika Virus','2025-04-07 12:20:49','2025-04-07 12:20:49');

/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `alternate_no` varchar(255) DEFAULT NULL,
  `caregiver_name` varchar(255) DEFAULT NULL,
  `relationship` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `refferred_by` varchar(255) DEFAULT NULL,
  `martial_status` varchar(255) DEFAULT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `patients` */

insert  into `patients`(`id`,`patient_name`,`email`,`mobile`,`alternate_no`,`caregiver_name`,`relationship`,`remarks`,`refferred_by`,`martial_status`,`gender`,`address`,`dob`,`password`,`created_at`,`updated_at`) values 
(1,'Cecilia Mcpherson','david@gmail.com','678909877','9087908767','Cain Stout','Est molestiae conse','New','NEw','Single','Female','Nulla quam consectet','1994-08-25','$2y$10$OoyeB466AyklrQKj/HGDxOcOC2IGxd7TXiCKjJhuNwySOtzMn4qWa','2025-04-03 12:02:22','2025-04-03 12:08:54'),
(2,'Vernon Kinney','lymicegaw@mailinator.com','789067787','9087654567','Arthur Wiggins','Voluptatem officiis','Optio est explicabo','Rerum rerum laborum','Married','Female','Dolorum et molestias','2008-11-07','$2y$10$pZQlRWthC5RNTi3Pj/Oz..lzMspXJaNmmZUVctEGIXuFE6UqBgXEG','2025-04-03 12:05:03','2025-04-03 12:05:03'),
(3,'Nola Harrington','fidegij@mailinator.com','907876755','8907656789','Hasad England','A elit soluta fugia','Eveniet qui volupta','Expedita quis ipsum','Widowed','Other','Veniam dolores face','1991-04-11','$2y$10$NbLj7.GPtLzVYOjU1Nx77O6gln9PXG.lK4KG355edVhZK/E6duqQ.','2025-04-03 12:05:10','2025-04-03 12:05:10'),
(4,'Vivian Snyder','becolegosu@mailinator.com','890767655','9879087654','Hammett Golden','Sunt omnis eveniet','Dolorem soluta excep','Suscipit rerum repre','Single','Female','Molestiae earum nequ','1982-02-14','$2y$10$/ptr2UwMZCuaJxFmtFIns.n9VBhFDYJBmDiQvwEG95hvGnrTfpobq','2025-04-03 12:05:19','2025-04-03 12:05:19'),
(6,'Marvin Schimmel','orrin29@example.org','9871462537','9868639457','Joelle McGlynn DDS','Sister','Veritatis earum aliquid ullam cupiditate accusamus eligendi.','Dr. Bradtke','Married','Male','416 Lavon Gateway Apt. 381\nNew Tillman, VA 65271-4646','2001-11-22','$2y$10$itop1QDSgbOdguFWU296uevgVZSTQB2GR65vHCN2iLp17Et32H/8K','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(7,'German Johnston','berneice45@example.org','9858890662','9840602481','Cydney Reilly','Brother','Eum possimus et dolores.','Dr. Heller','Married','Male','2138 Kulas Park Apt. 649\nDoviestad, TX 04242','1991-11-09','$2y$10$ixlbkQ754ZCVC1OFCsyabes7YPov.xRV7zng0Aa1RObve6mVCjKiS','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(8,'Mr. Gideon Thompson','lwelch@example.com','9837376801','9855496384','Miss Lucile Langosh V','Sister','Omnis amet sint cum voluptate quia facilis eos.','Dr. O\'Reilly','Single','Male','39967 Jerrod Stream\nSouth Hermann, MS 76485','1992-10-26','$2y$10$4bExt20fssLXehYgoLi.u.Vao/hvy9H5fC1R89sTQy3DJ1RYg/9gu','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(9,'Bart Jaskolski','ehilpert@example.org','9814946677','9867266453','Ulises O\'Reilly','Sister','Molestiae eum dolore et qui.','Dr. Okuneva','Married','Male','9249 Mraz Tunnel\nNew Kiptown, UT 77691','1988-04-11','$2y$10$K72uwFakRwzu.QpbZR8YSOZmb6VbPkX54gmGaIc06V.BMY0MVBJ3S','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(10,'Geovanni Schneider','beatty.marcelina@example.net','9889167820','9886873516','Gillian Hyatt','Sister','Sed accusamus praesentium ut occaecati eaque.','Dr. Adams','Single','Female','623 Schmidt Mill Suite 124\nCummingsburgh, FL 52900','1989-07-20','$2y$10$RVVM00Fr93IxxxQW0DwgaOVN.YHfYyuZCAtel.cpEaWU30KYlmdXC','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(11,'Mr. Luigi Terry','koch.verda@example.org','9840622066','9800168826','Mr. Jerrod Daugherty','Daughter','Beatae et voluptates quae placeat illo autem et iusto.','Dr. Nicolas','Single','Female','25942 Ryder Club\nLake Freedastad, MI 68842','1972-09-13','$2y$10$4kih4vBKj9On.W0PPdLPLebycGDWlU762VMSCbypMDCMEFAxlQaO.','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(12,'Dr. Moshe Koch','margaretta99@example.net','9859558909','9814000160','Jacey Sporer','Wife','Et consequatur aperiam inventore aliquam.','Dr. Gerlach','Single','Male','19522 Haag Ferry\nRutherfordmouth, ND 21406','2002-04-17','$2y$10$wcTYtd4/6ymHx5xnr/PS/.ibLvQRVvVHjPjFTH9UtYln6SX6DaaS.','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(13,'Ron D\'Amore','gaston.hyatt@example.org','9856083444','9856425938','Gaylord Kub','Sister','Ea voluptatem qui quos reprehenderit et voluptatibus eveniet.','Dr. Aufderhar','Single','Female','16631 Oran Stream\nNorth Jalen, WI 79554','1974-11-11','$2y$10$9LigVgKVVvOHeq/0WSU.4uv.JTkt5K2yFvgyfRFYjrXs.ERVE3n6i','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(14,'Zack Rempel','jwuckert@example.com','9864763357','9858376243','Domenico Welch','Daughter','Sint velit sapiente impedit omnis officia libero et provident.','Dr. Dooley','Married','Male','4386 Camille Plains\nSouth Vinnie, AK 59128-6290','2003-04-22','$2y$10$mx.CVHfzMvYXHSYYqitjt.3jcPPQ7ZK.YtJgY633dXyFSIVALTdz6','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(15,'Sasha Grimes','camila07@example.net','9865614622','9899472938','Dell Harris','Brother','Facilis delectus consequuntur non magni dolor quo vitae itaque.','Dr. Funk','Married','Female','76596 Von Plains Apt. 746\nToreystad, MI 08300-1441','2003-09-16','$2y$10$2048zl/Z92cW0aYPnycxpO9j1Rs.12YSIbZ/XO006ZAtV67FeP54m','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(16,'Alexandrine Dietrich Sr.','elowe@example.org','9812119835','9885210211','Eunice King','Brother','Optio qui maxime temporibus eum.','Dr. Kub','Single','Female','597 Dejah Tunnel Suite 402\nNew Jessyca, KS 19811-0845','2003-07-23','$2y$10$PVBTaz3ArRl90AE2OFWtuuLIOzp6uqJLGpOFSNMXnntvVfaWZWevm','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(17,'Linwood Feil I','mkuphal@example.org','9841334606','9837975978','Seth Bergstrom','Son','Consequatur adipisci iste quasi aliquam facilis.','Dr. Goodwin','Married','Female','75523 Flavio Station Suite 732\nCurtland, SC 84550-7513','1972-09-16','$2y$10$zugtsDzCuLhx6ERmXUj/9ultK8MHPuTyi3Frd8YSNvvPGcX7ZHc0i','2025-04-05 04:45:25','2025-04-05 04:45:25'),
(18,'Madie Emmerich','presley.sanford@example.net','9827342624','9879791385','Dr. Andrew Collins','Daughter','Ad quaerat magni eaque nisi et aliquam ut.','Dr. Ullrich','Single','Female','45378 Beier Bridge\nEast Jeanneport, KY 04993','1993-02-21','$2y$10$Hozxzpjn5/Wp9CahJRx./uHCxn3H.LLYM7Q.H55CnGU1py.H/XVsG','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(19,'Tyler Weissnat','delmer72@example.org','9862202551','9853570360','Brendon Hoeger','Son','Commodi asperiores occaecati occaecati labore.','Dr. Douglas','Married','Female','6578 Kirlin Oval Apt. 599\nRohanview, CT 33618','1984-11-02','$2y$10$3ztJqvhMEsMYBeIpgf2kIuy0H4ndCrGYy2.hfrWoQXm7xbtGE3NE6','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(20,'Beatrice Schuppe IV','dejon13@example.net','9894451940','9822826313','Minnie Lesch','Son','Vitae asperiores ea non adipisci dolores.','Dr. Kiehn','Married','Female','8345 Klocko Streets\nNorth Deltaview, OH 39840','1975-01-29','$2y$10$Eiy6mNuCEkUFd6nT422AH.f5/0.4J3hxZmp0BM8bZ0NGWudYNgDOe','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(21,'Prof. Barrett Hane II','uhermiston@example.net','9838163271','9858846994','Paxton Nolan','Daughter','Et delectus totam accusamus nostrum quibusdam.','Dr. Nienow','Married','Female','758 Oliver Manors\nEast Rachael, NV 60312','1973-09-28','$2y$10$CNDrXngdt2M/eaN9xrUVieZFEEwklbaw2BRQiVDfXlR0Qgg2kqo3a','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(22,'Dr. Joan Heidenreich','shields.cathy@example.com','9810525161','9877667918','Reginald Lindgren Jr.','Daughter','Omnis nam placeat atque omnis quo quas officia repudiandae.','Dr. Hirthe','Married','Female','12205 Shanon Cove\nThompsonfort, CT 08429-3118','1977-11-27','$2y$10$JHfYwwoRBTajGfNwdGl5QutOmN2zn9aZR1pqKCeeO1RjSrIBi1HS.','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(23,'Florencio Hartmann','johnpaul56@example.org','9804964668','9849012507','Dr. Amaya Ortiz','Daughter','Quas placeat dicta omnis dolor corporis velit officia.','Dr. Flatley','Single','Male','15734 Prosacco Key Suite 188\nBiankaside, NV 67266','1986-09-04','$2y$10$tmc0phxGq86l972SMKPBD.JrSXuweUa5Brz6AxxCelR4.BlU6NXQW','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(24,'Adrain Cronin','meggie25@example.org','9897616330','9848590359','Alisa Blanda','Daughter','Culpa ab quas voluptatem vero ipsam ut odit.','Dr. Hoeger','Married','Male','31531 Reinger Port\nLaronchester, NV 33824','1973-04-26','$2y$10$uGMZsXEPfShN5sQ.rj1O2.0/HBZ8f9IdNyhMml2yByWXnyuzXJoK6','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(25,'Jean Goodwin','rogelio.bashirian@example.net','9870084987','9845321410','Alessandro Moore','Wife','Maxime voluptas ut maxime dolorem laboriosam minima.','Dr. Runolfsdottir','Single','Female','32938 Burnice Green\nGusikowskiburgh, FL 81027-2475','1991-08-06','$2y$10$87DZjqYoK3.FkjRg2vIu2u65cjvzKopMP7/QpIBzl7GYc7cSCN5/C','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(26,'Dr. Torrey Olson','mraz.curtis@example.net','9845507464','9826127699','Eryn Block','Brother','Necessitatibus similique aut tempore nulla et dolor voluptates ut.','Dr. Maggio','Married','Male','76574 Herzog Point\nLake Nellie, NC 61175','1991-06-04','$2y$10$LHA6.Z3nVNcLKpKlL8LGU.RK3gqiUdg1QbcZcbGx2Usg9ScgfZeZO','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(27,'Beryl Klocko Jr.','weimann.madelyn@example.org','9826574483','9888437682','Mazie Bosco','Daughter','Et sint unde nesciunt consequatur ratione non.','Dr. Gibson','Married','Female','8357 Tabitha Viaduct Apt. 975\nSouth Darronstad, DE 30157-0148','1997-12-15','$2y$10$2CRprKqhi/XipLJ63bi.zOhVGTnxmlRWzhKD5sO1WndGsggdhg9.2','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(28,'Cassandre Heller V','abbott.johnathon@example.com','9884278998','9897937916','Madge Yost','Wife','Odio ut aut quam dolorem ullam tempore enim totam.','Dr. Dooley','Single','Female','8257 Ortiz Unions Apt. 535\nPort Crystelville, DC 36028','1999-02-04','$2y$10$2Gib7LxZmTxXDrpYhA5rqenGUaa6t/b.BxhZDoho/99fkQoS6Tygq','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(29,'Prof. Luigi Lang','kyle.boyle@example.org','9872135421','9814541784','Amy Wilkinson PhD','Son','Aliquam ad nihil quia.','Dr. Greenfelder','Married','Female','2686 Zboncak Mountains Apt. 111\nPercivaltown, IL 28831','2000-08-18','$2y$10$TUQ0i6xVyPwwso9REr1.Z.ZZlqR3l5ML.oGAvdqzLZ4SQmteJN4vO','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(30,'Ms. Harmony Smitham DVM','kemmer.amely@example.com','9853845345','9886463432','Flavio Murphy III','Son','Ea dolore cumque error.','Dr. Kuhlman','Single','Female','9946 Feest Motorway Apt. 738\nWest Earl, DC 87723','2003-12-03','$2y$10$cj/8W9oxDdSy40KqvP8lBOz8sgBpdY./bSbe/XBVV.Nyy.xNgCsIS','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(31,'Molly ','sunny.wilkinson@example.net','9834115059','9865424010','Enid Ward PhD','Sister','Dicta et vel recusandae non architecto ratione.','Dr. Homenick','Married','Male','307 Kip Circle\nPort Zacharyville, WY 97751','1993-05-27','$2y$10$ANV.aIRJgKkplA8BCMxfGuRVu91qSr2aaXicVBPMQrBxMNEiwAsP6','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(32,'Theodora Smitham','xfarrell@example.org','9802071457','9849701335','Miss Abigale Barton I','Sister','Qui earum porro totam aut facere illo quis.','Dr. Pagac','Single','Male','913 Golden Fort\nWalkerfurt, MO 47786','1980-12-31','$2y$10$SjnbHxkTqwXu5ISa2UtASuH2BMID2q3KoaSVgakU03cvzSHZnnqqe','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(33,'Dr. Eliseo Padberg DVM','schneider.kacie@example.org','9879944803','9850146261','Jack Mann','Wife','Tempora tempora eveniet labore ea.','Dr. Ruecker','Single','Female','52088 Kerluke Common Suite 618\nNew Jairotown, ME 05918','1973-08-11','$2y$10$Z31hyOfOTbm9VP8zqm2OcO98zWYWyMs0RykxNIVLvQ7opfC66tjw.','2025-04-05 04:45:26','2025-04-05 04:45:26'),
(34,'Santiago Ritchie Sr.','murphy05@example.com','9814618625','9888940163','Miss Shana Bogan','Daughter','Non itaque possimus soluta odio cupiditate et.','Dr. Ziemann','Married','Male','4465 Myrtice Field Apt. 483\nGleasonfort, VA 05773','1985-09-03','$2y$10$Nl6n8cfLXvOPbyKABkHxN.siR0941411J4iHOeXka/M94H4lpbN3C','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(35,'Dean Deckow IV','flakin@example.org','9885066272','9857134800','Amparo Frami DVM','Brother','Voluptates vero voluptatum voluptatem et aliquam itaque est.','Dr. Schneider','Single','Male','69222 Greenholt Crossroad\nFabiolamouth, VA 68364','1977-06-24','$2y$10$Q7WytKgE5paldc4LGAQHjuZhTS/cLO22CeZ.BjvHscirKfUxr4W8S','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(36,'Amir Hoppe','muriel27@example.org','9863743594','9841869624','Madisen Windler','Daughter','Ipsa perspiciatis earum blanditiis eligendi provident nihil.','Dr. Leffler','Single','Male','833 Tom Rue Apt. 817\nLake Paul, DE 06707','1994-06-11','$2y$10$Zi0OGEkUFQ0apKXLaP0tDeCWX.qUf8nQIul7yqVjSUhLM2Ya/iMuO','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(37,'Durward Bergnaum','yvolkman@example.com','9871489837','9848296210','Dr. Emelia Gibson Jr.','Son','Sit incidunt voluptates accusantium et aut explicabo nostrum.','Dr. Sawayn','Married','Male','7201 Blaze Divide Apt. 505\nBodetown, NC 51515-8449','1989-10-26','$2y$10$4H7iFsiE1PeVI5N52HSpzevWTtqtzKEN9Qr9D3lpxFTHWEtsSC18C','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(38,'Jaden Adams','fisher.bernie@example.com','9830493166','9846654793','Lurline Keebler','Son','Quia vel nostrum omnis cum atque quibusdam incidunt nam.','Dr. Walker','Married','Male','640 King Knolls\nBergnaumshire, VT 01402','1987-04-11','$2y$10$hl6CGzcaDD8WYX/7U3lXNeHdWK2S0.2ejaOyepkZNube/iUyhcGDm','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(39,'Dr. Cindy Bechtelar Jr.','bergstrom.paula@example.com','9811729851','9800894985','Gus Collier PhD','Daughter','Aut quasi qui saepe ipsam.','Dr. Johns','Married','Male','849 Parker Lane\nWest Breannashire, NY 83422','2001-10-12','$2y$10$DOvOZzTxOw2.KS3/8Cp/me.Tw9GsSofQ7WL49ORh514jeTrMK.MhO','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(40,'Berta Bartoletti','gusikowski.karson@example.com','9859912021','9819034723','Cleora Pfannerstill','Son','Sequi temporibus esse cumque eum in eum.','Dr. Jast','Married','Male','29929 Carissa Crossing Apt. 454\nOrlomouth, NY 16268-9681','1997-06-05','$2y$10$qjozlRmroiWo2t0iuyfkl.kC.Uh2U.11Csk2...CU4vKnQXI3xpAy','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(41,'Beau Mante','nmorissette@example.com','9834388972','9844248999','Myrtie Mayert','Sister','Ipsum consequuntur aut et minus nam.','Dr. Feest','Married','Female','856 Blanda Stream Apt. 862\nNew Quintonstad, NM 70190','1970-05-18','$2y$10$D8BNooKh28hWhAl4rwdzxuIF7KaLD/16J8jQ3gIrTqhQXtL1ZFyza','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(42,'Orval Smith','cade59@example.net','9892130825','9803446927','Nickolas Aufderhar','Son','Accusamus ut aut atque aut deleniti repudiandae hic nostrum.','Dr. Mraz','Married','Male','60047 Claud Ramp\nReichelborough, CT 57879-9682','1974-04-23','$2y$10$S.PYk47ZWy009ER/U/eyiurMaGsyG/9VNSogdxvxGyQuvI2QS.vYK','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(43,'Casimir Ferry','aiden.koepp@example.org','9829177762','9819529064','Shakira Jenkins','Sister','Aut accusantium magnam est voluptas quis veniam accusamus reprehenderit.','Dr. Ernser','Single','Female','8448 Rogahn Summit Apt. 926\nPort Kaylah, OH 68198','1987-04-21','$2y$10$F8Z3sL/wuynXTMP3uBa7cOSWqvYNsqixuS0Xc1aVayWVceIL3tnOm','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(44,'Kim Green','magali.nienow@example.net','9812942205','9882489015','Demarco Rutherford','Son','Consectetur eos ut et voluptate iure expedita.','Dr. Hauck','Single','Male','158 Alisha Plaza\nNorth Sylvia, SD 22624','1987-01-29','$2y$10$2z8/EeUYmS3YVwk8gasi3.8mmNpfYuwJ9pUqXFaf5MymGyFB1JwEC','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(45,'Rae Donnelly','shad.tromp@example.com','9886841591','9860219424','Miss Eleanore Quitzon V','Son','Cum dolorem et accusamus.','Dr. Gaylord','Married','Female','276 Shields Turnpike Apt. 050\nEast Hudson, OH 49604-5166','1991-10-08','$2y$10$N0c8.HrO5ltLNoyZf1HbWe.jIbQXS7ohT/rhYBysoXKLgJlUDub/y','2025-04-05 04:45:27','2025-04-05 04:45:27'),
(46,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,NULL,NULL,NULL);

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

/*Table structure for table `physical_examinations` */

DROP TABLE IF EXISTS `physical_examinations`;

CREATE TABLE `physical_examinations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `temperature` varchar(255) DEFAULT NULL,
  `pulse` varchar(255) DEFAULT NULL,
  `bp_left` varchar(255) DEFAULT NULL,
  `bp_right` varchar(255) DEFAULT NULL,
  `respiratory_rate` varchar(255) DEFAULT NULL,
  `spo2` varchar(255) DEFAULT NULL,
  `pain_scale` varchar(255) DEFAULT NULL,
  `grbs` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `physical_examinations` */

insert  into `physical_examinations`(`id`,`patient_id`,`weight`,`temperature`,`pulse`,`bp_left`,`bp_right`,`respiratory_rate`,`spo2`,`pain_scale`,`grbs`,`created_at`,`updated_at`) values 
(1,'8','6','Harum velit deserunt','28','Laboris iure quibusd','Aut animi voluptate','1','95','57','Non sint perferendis','2025-04-03 04:31:05','2025-04-03 04:31:05');

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

/*Table structure for table `symptom_diseases` */

DROP TABLE IF EXISTS `symptom_diseases`;

CREATE TABLE `symptom_diseases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symptom` varchar(255) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `symptom_diseases` */

insert  into `symptom_diseases`(`id`,`symptom`,`disease`) values 
(1,'Idiopathic pulmonary fibrosis, Crohn’s disease, Insomnia, Iron deficiency anaemia, Reactive arthritis, Respiratory syncytial virus, Rheumatoid arthritis,Oesophageal cancer,Ewing sarcoma, Ewing sarcoma: Children, Flu, Heart failure, Hepatitis A, Hepatitis ','Tiredness'),
(2,'Idiopathic pulmonary fibrosis,Food Allergy, Heart Attack, Heart block, Heart palpitation, High blood pressure, High cholesterol, Aplastic anaemia, Lung cancer, Vitamin B12 or Folate Deficiency Anaemia, mesothelioma, wolff-parkinson, white syndrome, Wolff-','shortness of breath,'),
(3,'Idiopathic pulmonary fibrosis, Respiratory syncytial virus, Oesophageal cancer, ovarian cancer:Teenagers and young adults,Yellow fever, kidney infection, Carcinoid Syndrome, Chronic Kidney Disease, Chronic Pancreatitis, Cirrhosis, Cervical Cancer,Food Poi','loss of appetite'),
(4,'Idiopathic pulmonary fibrosis, Asbestosis, Lung cancer','a persistent dry cough'),
(5,'Cold and flu symptoms in babies, Cold and flu symptoms in children, Inherited heart conditions,obesity, Heart failure, Hodgkin lymphoma, acute lymphoblastic leukaemia, acute myeloid leukaemia, Acute myeloid leukaemia: Teenagers and young adults, Asthma, A','Breathlessness,'),
(6,'Cold and flu symptoms in babies, Cold and flu symptoms in children, Respiratory syncytial virus,Oesophageal cancer, neuroendocrine tumours, bronchiectasis, Measles, Mesothelioma, Laryngeal(larynx) cancer, measles, mesothelioma','Cough'),
(7,'Cold and flu symptoms in children, Respiratory syncytial virus, Allergic rhinitis, Allergies, Measles, whooping cough','runny nose'),
(8,'Impetigo, Reactive arthritis, Rheumatoid arthritis, Acute cholecystitis, Anxiety, Appendicitis,Meningitis','high temperature (fever)'),
(9,'Impetigo','red sores'),
(10,'Impetigo','swollen glands'),
(11,'Indigestion, norovirus, Acute cholecystitis, Appendicitis, Brain tumour, Brain tumours: Children, Brain tumours: Teenagers and young adults,liver cancer,liver disease,lyme tumours,malaria,whooping cough, Urinary tract infection (UTI) in children','Vomiting'),
(12,'Indigestion, ovarian cancer,  Acute cholecystitis,Vertigo, vomiting in adults, Malaria, Malignant Brain Tumor, Meningitis, Migraine, Minor Head Injury, Wilm’s Tumour,Molar pregnancy,liver disease','(nausea)'),
(13,'Indigestion','Discomfort In upper abodomen'),
(14,'Ingrown toenail, Aplastic anaemia,vulval cancer','Bleeding'),
(15,'Ingrown toenail','overgrowth of skin'),
(16,'Ingrown toenail','inflammation of the skin'),
(17,'Ingrown toenail','white or yellow pus coming from the affected area'),
(18,'Crohn’s disease, Ulcerative colitis, Irritable bowel syndrome, Reactive arthritis,  neuroendocrine tumours,acute pancreatitis,  Bowel polyps,Lactose intolerance, Carcinoid Syndrome, Clostridium Difficile, Coeliac Disease, Crohn’s Disease, Cholera','diarrhoea'),
(19,'Crohn’s disease, Ulcerative colitis, Reactive arthritis, ovarian cancer ,ovariancancer:Teenagers and young adults,recurrent miscarriage, Pancreatic cancer, Pelvic inflammatory disease, Polycystic ovary syndrome (PCOS), Appendicitis, Bile duct cancer(chola','abdominal pain'),
(20,'Crohn’s disease, osteoarthritis of the knee,obesity, Rare Conditions, Arthritis,lupus, Zika virus, Joint hypermobility, Kaposi’s sarcoma, Cervical Spondylosis, Crohn’s Disease, Carpal Tunnel Syndrome','joint pain'),
(21,'Crohn’s disease, Ulcerative colitis, Iron deficiency anaemia,\nReactive arthritis','mouth ulcers'),
(22,'Measles,whooping cough','Runny nose'),
(23,'Ulcerative colitis','painful and swollen joints'),
(24,'Meningitis','Stiff neck'),
(25,'Inherited heart conditions, Aplastic anaemia,Mesothelioma, Kaposi’s sarcoma, Lung Carcinoid Tumour, Carcinoid Syndrome, Carcinoid Tumour, Cardiovascular Disease, Chest Infection, Costochondritis, Coronary Heart Disease','chest pain'),
(26,'Inherited heart conditions','dizzy spells'),
(27,'Meniere’s disease','vertigo'),
(28,'Menopause','Hot flashes'),
(29,'Inherited heart conditions, Atrial fibrillation','Palpitations'),
(30,'Insomnia','hard to fall asleep'),
(31,'Insomnia','wake up several times during the night'),
(32,'Idiopathic pulmonary fibrosis, Reactive arthritis, Rheumatoid arthritis, Oesophageal cancer,rare tumours,  Non-Hodgkin lymphoma, alcohol-related liver disease,mouth cancer,liver cancer, Threadworms,Diarrhoea, Stomach Carcinoid Tumour','weight loss'),
(33,'Iron deficiency anaemia','hair loss'),
(34,'Iron deficiency anaemia, Allergies,Lichen planus','feeling itchy'),
(35,'Iron deficiency anaemia, Neck injury, norovirus, Acute lymphoblastic leukaemia: Teenagers and young adults, Acute myeloid leukaemia: Teenagers and young adults, Anxiety, Aplastic anaemia, Brain tumour, Brain tumours: Children, Brain tumours: Teenagers and','headache'),
(36,'Iron deficiency anaemia','(heart palpitations'),
(37,'Iron deficiency anaemia','spoon-shaped nails'),
(38,'Iron deficiency anaemia,Lung cancer, Vitamin B12 or Folate Deficiency Anaemia, mesothelioma, wolff-parkinson, white syndrome','shortness of breath'),
(39,'Irritable bowel syndrome, Norovirus, alcohol-related liver disease,Low blood pressure,Lyme tumours,liver cancer\nle bowel syndrome','feeling sick'),
(40,'Irritable bowel syndrome','Heartburn'),
(41,'Irritable bowel syndrome','swelling of your stomach'),
(42,'Irritable bowel syndrome, Rhabdomyosarcoma, neuroendocrine tumours, Bowel polyps, Joint hypermobility, diverticulitis, Bowel Carcinoid Tumour, Cervical Spondylosis, Chronic Pain, Crohn’s Disease, Chronic Kidney Disease','constipation'),
(43,'Irritable bowel syndrome,  Acute lymphoblastic leukaemia: Children, Acute myeloid leukaemia: Children','lack of energy (lethargy)'),
(44,'Reactive arthritis, Rheumatoid arthritis,Osteoarthritis of the thumb, otitis externa,  Achilles tendinopathy,ankle sprain, Ankle avulsion fracture, Bone Cancer, Bunion(halluxvalgus),liver disease,Varicose Eczema, varicose veins, venous leg ulcer, managing','Swelling'),
(45,'Reactive arthritis, Rheumatoid arthritis,Rare Conditions','Stiffness'),
(46,'Reactive arthritis, Brain tumours: Children, Brain tumours: Teenagers and young adults','eye pain, eye problem'),
(47,'Reactive arthritis, Rheumatoid arthritis, otitis externa ,oral thrush in adults, itchy skin,Itching, Ankle sprain','Redness'),
(48,'Reactive arthritis','or discharge from the penis or vagina'),
(49,'Reactive arthritis','pain when peeing'),
(50,'Respiratory syncytial virus','shortness of breath'),
(51,'Respiratory syncytial virus, Allergies, Asthma, Asbestosis, Lung Carcinoid Tumour, Carcinoid Syndrome, Carcinoid Tumour, Chronic Obstructive Pulmonary Disease (COPD), Coronavirus (COVID-19), Croup','wheezing'),
(52,'Rheumatoid arthritis, Acute cholecystitis','sweating'),
(53,'Rheumatoid arthritis','a poor appetite'),
(54,'Rheumatoid arthritis','heat around the joints'),
(55,'Ringworm and other fungal infections','silvery rash on your skin'),
(56,'Ringworm and other fungal infections','inflamed skin'),
(57,'Ringworm and other fungal infections','Skin red and irritated'),
(58,'Fungal scalp infection','itchy scalp'),
(59,'Fungal scalp infection','patchy hair loss'),
(60,'Rosacea, Atopic eczeme','Itching'),
(61,'Rosacea','thickened skin'),
(62,'Rosacea','flushing'),
(63,'Rosacea','facial swelling'),
(64,'Rosacea','rough skin'),
(65,'Rosacea','red patches'),
(66,'Obsessive compulsive disorder, Alzheimer’s disease','Anxiety'),
(67,'Obstructive sleep apnoea','loud snoring'),
(68,'Obstructive sleep apnoea','sleepy during the day'),
(69,'Obstructive sleep apnoea','breathing pauses through the night'),
(70,'Obstructive sleep apnoea','repeated period'),
(71,'Oesophageal cancer,Rare Conditions','Difficult swallowing'),
(72,'Oesophageal cancer','persistent vomiting'),
(73,'Oesophageal cancer','hoarseness'),
(74,'Oesophageal cancer','Persistent heartburn'),
(75,'Oesophageal cancer,  alcohol-related liver disease','vomiting blood'),
(76,'Oesophageal cancer','Pain upper tummy'),
(77,'Osteoarthritis','joint tenderness'),
(78,'Osteoarthritis','loss of muscle bulk'),
(79,'Osteoarthritis,  Arthritis, Back problems','stiffness in joints'),
(80,'Osteoarthritis','limited range of movement in joints'),
(81,'Osteoarthritis of the hip','stiffness in hip'),
(82,'Osteoarthritis of the hip','difficulty in daily activities such as walking'),
(83,'Osteoarthritis of the hip','weakness in the buttock muscles'),
(84,'Osteoarthritis of the hip','pain in or around the hip joint'),
(85,'Osteoarthritis of the knee','swelling in the joint.'),
(86,'Osteoarthritis of the knee','weakness in the thigh muscle.'),
(87,'Osteoarthritis of the knee','stiffness in the knee'),
(88,'Osteoarthritis of the knee','crunching noises'),
(89,'Osteoarthritis of the thumb, Neck problems,ankle sprain, Ankle avulsion fracture,ankylosing spondylitis, Bone cancer: Teenagers and young adults,Bunion(halluxvalgus','pain'),
(90,'Osteoarthritis of the thumb','reduced ability to grip'),
(91,'Osteoarthritis of the thumb','loss of movement around the thumb and wrist'),
(92,'Osteosarcoma, Acute lymphoblastic leukaemia: Teenagers and young adults, Acute myeloid leukaemia: Children, Acute myeloid leukaemia: Teenagers and young adults','Pain in the bone'),
(93,'Osteosarcoma','Swelling around the bone'),
(94,'Osteosarcoma','Persistent bone pain'),
(95,'Osteosarcoma','Limping'),
(96,'otitis externa','ear pain'),
(97,'otitis externa, Ankle avulsion fracture, Deep vein thrombosis, dehydration','tenderness'),
(98,'otitis externa','Sore glands'),
(99,'otitis externa','discharge from ear'),
(100,'oral thrush in adults,Itchy Bottom','soreness'),
(101,'ovarian cancer','difficulty eating'),
(102,'ovarian cancer','persistent pelvic pain'),
(103,'ovarian cancer','increased abdominal size'),
(104,'ovarian cancer ,obesity, osteoporosis','back pain'),
(105,'ovarian cancer , Ovarian cyst','pain during sex'),
(106,'Ovarian cyst','difficulty having a poo'),
(107,'Ovarian cyst','a frequent need to urinate'),
(108,'Ovarian cyst','difficulty getting pregnant'),
(109,'Ovarian cyst,infertility','Irregular periods'),
(110,'Ovarian cyst, Anorexia nervosa','Regular periods'),
(111,'Ovarian cyst,Infertility, Pelvic inflammatory disease, Pelvic organ prolapse, Polycystic ovary syndrome (PCOS),Vaginal cancer, womb(uterus)cancer','Pelvic pain'),
(112,'Overactive thyroid','Hyperactivity'),
(113,'Overactive thyroid, Addison’s disease,Arterial Thrombosis,Motor neurone disease(MND), multiple sclerosis(MS), muscular dystrophy, Myasthenia gravis','muscle weakness'),
(114,'Overactive thyroid,Rare Conditions,rare tumours, Pulmonary hypertension, Non-alcoholic fatty liver disease (NAFLD),Aplastic anaemia, Asbestosis, Ataxia, bronchiectasis, Neuroblastoma: Children, Addison’s disease,Lupus, liver disease, lung cancer, vitamin ','Fatigue'),
(115,'Overactive thyroid,obesity','Excess sweating'),
(116,'Overactive thyroid','needing to poo or pee more frequently'),
(117,'Overactive thyroid,Menopause','mood swings'),
(118,'Overactive thyroid','Difficult sleeping'),
(119,'ovarian cancer:Teenagers and young adults','Changes in bowel habits'),
(120,'ovarian cancer:Teenagers and young adults,  Adenomyosis, diverticulitis','Persistent bloating'),
(121,'ovarian cancer:Teenagers and young adults','Frequent urination'),
(122,'Obsessive compulsive disorder','Obsession'),
(123,'Obsessive compulsive disorder, Alzheimer’s disease','distress'),
(124,'oral thrush in adults','White patches in the mouth'),
(125,'oral thrush in adults','Cracks at the corners of the mouth'),
(126,'osteoporosis','Bone fractures'),
(127,'Osteoporosis','Loss of height'),
(128,'Infertility, Adenomyosis','Heavy periods'),
(129,'Infertility, Rare Conditions','Weight gain'),
(130,'Infertility','Hair growth'),
(131,'itchy skin','Persistent itching'),
(132,'itchy skin, Itchy bottom,Itching','Dry skin'),
(133,'itchy skin','leathery skin'),
(134,'itchy skin, Itchy bottom, Itching','Thickened skin'),
(135,'Itchy Bottom, Itching','scaly skin'),
(136,'Itchy Bottom','Occasional bleeding'),
(137,'itchy skin, Itchy bottom, Itching','Cracked skin'),
(138,'Itching, Bacterial vaginosis','irritation'),
(139,'Rare Conditions','Digestive problems'),
(140,'rare tumours, Acute myeloid leukaemia: Teenagers and young adults,\nAcute lymphoblastic leukaemia: Teenagers and young adults,Vomiting in Children and Babies, Malaria, Measles, Middle Ear Infection, Mumps, Wilm’s Tumour,Meningitis,Laryngitis, vomiting in c','fever'),
(141,'rare tumours','Unusual bleeding or discharge'),
(142,'rare tumours, Asbestosis,lung cancer','persistent cough'),
(143,'rare tumours','Night sweats'),
(144,'rare tumours','Unexplained lumps or swelling'),
(145,'rare tumours, Carcinoid Syndrome, Cervical Cancer','Difficulty swallowing'),
(146,'Raynaud’s phenomenon','Skin ulcers'),
(147,'Raynaud’s phenomenon','Cold fingers or toes'),
(148,'Raynaud’s phenomenon','Colour changes in fingers and toes'),
(149,'Raynaud’s phenomenon','Numbness or tingling'),
(150,'recurrent miscarriage,Late miscarriage, vaginal cancer, miscarriage, molar pregnancy, womb cancer,Womb (Uterus) cancer','Vaginal bleeding'),
(151,'recurrent miscarriage','Loss of pregnancy'),
(152,'recurrent miscarriage','Cramping'),
(153,'recurrent miscarriage','Passing tissue or fluid from the vagina'),
(154,'Restless Legs Syndrome','Uncomfortable sensations in the legs'),
(155,'Restless Legs Syndrome','Involuntary jerking of the legs'),
(156,'Restless Legs Syndrome','An irresistible urge to move the legs'),
(157,'Restless Legs Syndrome','Temporary relief with movement'),
(158,'Retinoblastoma','Change in eye color'),
(159,'Retinoblastoma','Poor vision'),
(160,'Retinoblastoma','sore eye'),
(161,'Retinoblastoma','wollen'),
(162,'Retinoblastoma','squint'),
(163,'Rhabdomyosarcoma,  angioedema','swelling of the eye'),
(164,'Rhabdomyosarcoma,','A lump or swelling'),
(165,'Rhabdomyosarcoma, Benign prostate enlargement','Difficulty urinating or blood in urine'),
(166,'Rhabdomyosarcoma','numbness'),
(167,'Rhabdomyosarcoma','Persistent pain'),
(168,'Pulmonary hypertension','Shortness of breath'),
(169,'Phobias','Extreme fear or avoidance behavior'),
(170,'Pain in the ball of the foot','Plantar heel pain'),
(171,'Pain in the ball of the foot','Patellofemoral pain syndrome'),
(172,'Pancreatic cancer, Prostate cancer, Polymyalgia rheumatica','Unexplained weight loss'),
(173,'Pregnancy and baby','Pregnancy related symptoms'),
(174,'Postnatal depression','Persistent low mood after childbirth'),
(175,'Pubic lice','Intense itching in pubic area'),
(176,'Pressure ulcers','Bedsores or skin ulcers'),
(177,'Psychosis, Alzheimer’s disease','Hallucinations or delusions'),
(178,'Psoriasis, Psoriatic arthritis, Allergies','Red, scaly skin patches'),
(179,'Prostate cancer, Pelvic organ prolapse','Difficulty urinating'),
(180,'Psoriatic arthritis, Polymyalgia rheumatic','Swollen, painful joints'),
(181,'Patellofemoral pain syndrome','Knee pain'),
(182,'Pelvic organ prolapse, Postnatal depression','Urinary incontinence'),
(183,'Progressive supranuclear palsy (PSP)','Progressive balance and movement problems'),
(184,'Post-traumatic stress disorder (PTSD)','Flashbacks and nightmares'),
(185,'Post-concussion syndrome','Headaches, dizziness after injury'),
(186,'Plantar heel pain','Heel pain'),
(187,'Penile cancer, Pubic lice','Penile sores or lumps'),
(188,'Patau’s syndrome','Severe developmental issues'),
(189,'Parkinson’s disease, Progressive supranuclear palsy (PSP)','Tremors and slow movement'),
(190,'Paget’s disease of the nipple','Nipple changes (redness, rash, discharge)'),
(191,'Panic disorder, Phobias, Post-traumatic stress disorder (PTSD)','Intense fear or panic attacks'),
(192,'Peripheral neuropathy, Polymyalgia rheumatica','Numbness or tingling in hands and feet'),
(193,'Personality disorder, Psychosis, Postnatal depression','Changes in mood and behavior'),
(194,'PIMS (Paediatric Inflammatory Multisystem Syndrome)','Persistent fever in children'),
(195,'Pleurisy, Pneumonia, Pulmonary hypertension','Chest pain with breathing'),
(196,'Pneumonia, Pulmonary hypertension, Prostate cancer','Cough with phlegm or blood'),
(197,'Polio, Post-polio syndrome, Progressive supranuclear palsy (PSP)','Muscle weakness or paralysis'),
(198,'Polycystic ovary syndrome (PCOS)','Irregular periods or infertility'),
(199,'Polymyalgia rheumatica, Psoriatic arthritis','Joint and muscle stiffness'),
(200,'Postural orthostatic tachycardia syndrome (PoTS)','Rapid heartbeat and dizziness when standing'),
(201,'Haemorrhoids (piles)','Bleeding during bowel movements'),
(202,'Haemorrhoids (piles)','Mucus discharge'),
(203,'Head lice and nits','Small white eggs (nits) in the hair'),
(204,'Head lice and nits','Rash on the back of the neck'),
(205,'Hearing loss','Difficulty hearing the telephone or doorbell'),
(206,'Hearing loss','Asking people to repeat themselves'),
(207,'Heart block,','Fainting'),
(208,'Heart failure','Swelling in the legs or ankles'),
(209,'Heart palpitations','Irregular Heartbeat'),
(210,'Heart palpitations, Dizziness','Lightheadedness'),
(211,'Hives','Be raised'),
(212,'Hives','Be on one part of the body'),
(213,'Hives','Spread over large areas'),
(214,'Frozen shoulder','Difficult to bath'),
(215,'Frozen shoulder','Difficult to dressing'),
(216,'Frozen shoulder','Difficult to driving'),
(217,'Functional neurological disorder,Hepatitis C','Depression'),
(218,'Functional neurological disorder','Panic attack'),
(219,'Functional neurological disorder','Insomnia'),
(220,'Functional neurological disorder','Migraine'),
(221,'Fungal nail infection','Crumbly nails'),
(222,'Fungal nail infection','Distortion of the nail'),
(223,'Fungal nail infection','Discolouration of the nail'),
(224,'Gallbladder cancer, Gallstones, Hepatitis A, Hepatitis B, Hepatitis C, Acute cholecystitis, Bile duct cancer','Jaundice'),
(225,'Gallstones','Chills'),
(226,'Farting','Gurgling Sounds'),
(227,'Globus','Tightness or pressure in the throat'),
(228,'Globus','Discomfort or irritation in the throat'),
(229,'Globus','Persistent mucus that cannot be cleared'),
(230,'Fibroids','lower back pain'),
(231,'Fibromyalgia','sharp stabbing pain'),
(232,'Fibromyalgia','burning sensation'),
(233,'Flu, Hay fever, Allergic rhinitis, Allergies','sneezing'),
(234,'Eye cancer, high blood pressure, Hydrocephalus, Hyperglycaemia (high blood sugar), Hypoglycaemia (low blood sugar), Neck injury','Blurred vision'),
(235,'Eye cancer','Bulging of one eye'),
(236,'Eye cancer','Wiggly lines'),
(237,'Eating disorders','Eating very little or a large quantity of food'),
(238,'Eating disorders','Exercising too much'),
(239,'Earache, Earwax build-up,Labyrinthitis, vertigo, Meniere disease','Hearing loss'),
(240,'Earache','Swelling around the ear'),
(241,'Labyrinthitis, vertigo, Meniere disease','Hearing loss'),
(242,'Lactose intolerance','Bloated stomach'),
(243,'Lichen planus','Skin may be itchy and develop gradually'),
(244,'Lichen planus','mouth tongue or inside the cheeks'),
(245,'Lipoedema','Heaviness or tenderness affected areas'),
(246,'Lyme disease','bull’s-eye on a dart board'),
(247,'Liver disease','Swelling in legs and ankles'),
(248,'Lipoedema','Heaviness or tenderness affected areas'),
(249,'Early miscarriage, Ectopic pregnancy','Vaginal bleeding'),
(250,'Early miscarriage,  Non-Hodgkin lymphoma: Children,Anxiety, Kaposi’s sarcoma, Stomach Carcinoid Tumour','Stomach pain or cramping'),
(251,'Early miscarriage','Pregnancy symptoms suddenly stopping'),
(252,'Long-term effects of COVID-19','Digestive system'),
(253,'Long-term effects of COVID-19','Heart and circulation'),
(254,'Long-term effects of COVID-19','Mental health'),
(255,'Licen planus','nails like scarring'),
(256,'Earwax build-up','Tinnitus'),
(257,'Earwax build-up','Ear infections'),
(258,'Endometriosis','pain during ovulation'),
(259,'Endometriosis','difficulty getting pregnant'),
(260,'Epilepsy','Repeated Seizures'),
(261,'Epilepsy','Unusual Sensations'),
(262,'Epilepsy','Convulsions'),
(263,'Gastro-oesophageal reflux disease (GORD)','Acidreflux'),
(264,'Genital herpes, Gonorrhoea','Vaginal discharge'),
(265,'Genital warts,Haemorrhoids (piles)','Pain in the anus'),
(266,'Genital warts','Pain around the vagina'),
(267,'Genital warts','Pain around the penis'),
(268,'Germ cell tumours','Lump in the abdomen'),
(269,'Golfers elbow','Difficulty with twisting'),
(270,'Golfers elbow','Difficulty with gripping'),
(271,'Gonorrhoea','A burning sensation when peeing'),
(272,'Gonorrhoea','Swelling of the testicles'),
(273,'Gout','Severe pain in one or more joints'),
(274,'Gout','Affecting joints like toes (especially the big toe), ankles, knees, and fingers'),
(275,'Greater trochanteric pain syndrome','Pain when lifting legs in/out a car'),
(276,'Greater trochanteric pain syndrome','Pain when climbing stairs'),
(277,'Greater trochanteric pain syndrome','Pain sitting with the legs crossed.'),
(278,'Gum disease, Alzheimer’s disease\ndental abscess','Red and swollen gums'),
(279,'Gum disease','Bleeding gums after brushing your teeth'),
(280,'Gum disease','Bad breath (halitosis)'),
(281,'Gum disease','Sensitive of painful teeth'),
(282,'Hodgkin lymphoma','Swelling in the neck, armpit'),
(283,'Hodgkin lymphoma: Teenagers and young adults','A painless lump'),
(284,'Huntington’s disease','A lack of emotions'),
(285,'Huntington’s disease, Hypoglycaemia (low blood sugar)','Irritability and impulsiveness'),
(286,'Huntington’s disease','periods of aggression'),
(287,'Hydrocephalus','Drowsiness'),
(288,'Hydrocephalus, Ankle sprain, Bunion(halluxvalgus)','Difficulty walking'),
(289,'Hyperglycaemia (high blood sugar)','Thirst'),
(290,'Hyperglycaemia (high blood sugar), dehydration','Dry mouth'),
(291,'Hypoglycaemia (low blood sugar)','Feeling hungry'),
(292,'Hypoglycaemia (low blood sugar)','Tingling lips'),
(293,'Hypoglycaemia (low blood sugar)','Trembling or shakiness'),
(294,'Haemorrhoids (piles)','Bleeding during bowel movements'),
(295,'Haemorrhoids (piles)','Mucus discharge'),
(296,'Head lice and nits','Small white eggs (nits) in the hair'),
(297,'Head lice and nits','Rash on the back of the neck'),
(298,'Hearing loss','Difficulty hearing the telephone or doorbell'),
(299,'Hearing loss','Asking people to repeat themselves'),
(300,'Heart block,','Fainting'),
(301,'Heart failure','Swelling in the legs or ankles'),
(302,'Heart palpitations','Irregular Heartbeat'),
(303,'Nasal and sinus cancer, Nasopharyngeal cancer, acute myeloid leukaemia','nosebleeds'),
(304,'Nasal and sinus cancer','mucus draining from the nose, which may be blood-stained'),
(305,'Nasal and sinus cancer','a decreased sense of smell'),
(306,'Nasal and sinus cancer, Acute lymphoblastic leukaemia: Teenagers and young adults, Acute myeloid leukaemia: Teenagers and young adults','swollen glands in the neck'),
(307,'Nasopharyngeal cancer','a lump in the neck'),
(308,'Nasopharyngeal cancer','hearing loss'),
(309,'Nasopharyngeal cancer','a blocked or stuffy nose'),
(310,'Neck injury, Neck problems','neck stiffness'),
(311,'Neck injury','difficulty turning your neck'),
(312,'Neck injury, Back problems','muscle spasms'),
(313,'Neck injury,Labyrinthitis, vertigo, malnutrition, Minor hard injury, whiplash, Wolff-Parkinson-White Syndrome','dizziness'),
(314,'Neck problems','pins and needles or numbness in your arm or hand'),
(315,'Neuroblastoma: Children','Spinal cord'),
(316,'Neuroblastoma: Children','Jerky eyes'),
(317,'Neuroblastoma: Children','High blood pressure'),
(318,'Non-alcoholic fatty liver disease (NAFLD)','a dull or aching pain in the top right of the'),
(319,'Non-alcoholic fatty liver disease (NAFLD)','unexplained weight loss\n weight loss'),
(320,'Non-alcoholic fatty liver disease (NAFLD), Stomach Carcinoid Tumour, Carcinoid Tumour, Chronic Fatigue Syndrome, Chronic Kidney Disease, Chronic Myeloid Leukaemia, Cerebral Palsy','weakness'),
(321,'non-Hodgkin lymphoma','painless swelling in a lymph node'),
(322,'non-Hodgkin lymphoma','armpit or groin.'),
(323,'non-Hodgkin lymphoma','glandular fever'),
(324,'norovirus','watery diarrhoea'),
(325,'Nosebleed','Trauma'),
(326,'Nosebleed','Heavy bleeding'),
(327,'Nosebleed','Infections'),
(328,'Nosebleed','Trauma'),
(329,'Nosebleed','Heavy bleeding'),
(330,'Nosebleed','Infections'),
(331,'Abdominal aortic aneurysm','severe pain in the abdomen.'),
(332,'Abdominal aortic aneurysm','Pain or pulsating feeling in the abdomen'),
(333,'Achilles tendinopathy','pain that’s worse during or after moving or exercising'),
(334,'Achilles tendinopathy','mild heat'),
(335,'Achilles tendinopathy','loss of movement and strength around the ankle and foot'),
(336,'Acne','Oily Skin'),
(337,'Acne','Skin Sensitivity'),
(338,'Acne','Spots'),
(339,'acute lymphoblastic leukaemia, acute myeloid leukaemia','pale skin'),
(340,'acute lymphoblastic leukaemia','unusual and frequent bleeding'),
(341,'acute lymphoblastic leukaemia','having repeated infections over a short space of time'),
(342,'Acute lymphoblastic leukaemia: Children','Swollen lymph glands'),
(343,'Acute lymphoblastic leukaemia: Children, Bronchitis(aches and pain only)','aches and pains in the limbs.'),
(344,'Acute lymphoblastic leukaemia: Teenagers and young adults','bruises'),
(345,'Acute lymphoblastic leukaemia: Teenagers and young adults','bruises'),
(346,'Acute myeloid leukaemia: Children','Bruising and Prolonged Bleeding'),
(347,'Acute myeloid leukaemia: Children','General Malaise'),
(348,'Acute pancreatitis','feeling or being sick'),
(349,'Acute pancreatitis','suddenly getting severe pain in the centre of your abdomen (tummy)'),
(350,'Addison’s disease','low mood'),
(351,'Addison’s disease','increased thirst'),
(352,'Addison’s disease','Darkened skin'),
(353,'Adenomyosis','severe period pain'),
(354,'Adenomyosis','a feeling of pressure in your tummy'),
(355,'alcohol-related liver disease','yellowing of the eyes and skin'),
(356,'alcohol-related liver disease','swelling in the ankles and tummy'),
(357,'Allergic rhinitis, Allergies','sneezing'),
(358,'Allergic rhinitis','itchiness'),
(359,'Allergies','red, itchy, watery eyes'),
(360,'Allergies, Asthma, tonsillitis','wheezing and coughing'),
(361,'Allergies','worsening of asthma or eczema'),
(362,'Alzheimer’s disease','problems with speech and language'),
(363,'Alzheimer’s disease','low mood or anxiety'),
(364,'Anal cancer','bleeding from the bottom'),
(365,'Anal cancer','itching and pain around the anus'),
(366,'Anal cancer','small lumps around the anus'),
(367,'Anal cancer','a discharge of mucus from the anus'),
(368,'Anal cancer','loss of bowel control'),
(369,'Anaphylaxis','Gastrointestinal'),
(370,'Anaphylaxis','Breathing difficulties'),
(371,'Anaphylaxis','Cardiovascular'),
(372,'angina','feel like a dull pain,ache,heavy,tight,chest'),
(373,'angina','spread to your arms, neck, jaw or back'),
(374,'angina','be triggered by physical exertion'),
(375,'Angioedema,Varicose Eczema, varicose veins, venous leg ulcer, managing gential symptoms, metacarpal fracture, wrist fracture','Swelling of the eyes,lips,gentials,hands,feet'),
(376,'Ankle sprain','mild heat and redness'),
(377,'Ankle sprain','loss of movement and strength around the ankle and foot'),
(378,'Ankle avulsion fracture','Limited Range of Motion'),
(379,'Ankylosing spondylitis','arthritis'),
(380,'Ankylosing spondylitis','fatigue'),
(381,'Ankylosing spondylitis','enthesitis'),
(382,'Anorexia nervosa','Feeling tired and cold'),
(383,'Anorexia nervosa','Reduced bone density'),
(384,'Anorexia nervosa','Low weight for age'),
(385,'Anorexia nervosa','Avoiding certain foods'),
(386,'Anxiety','restlessness'),
(387,'Anxiety','a sense of dread'),
(388,'Anxiety','trembling or shaking'),
(389,'Anxiety disorders in children','Panic Disorder'),
(390,'Anxiety disorders in children','Obsessive-Compulsive Disorder'),
(391,'Anxiety disorders in children','Social Anxiety Disorder (Social Phobia)'),
(392,'Appendicitis','Changes in Bowel Movements'),
(393,'Arterial thrombosis','Sudden pain'),
(394,'Arterial thrombosis, Neuroblastoma: Children','Paleness(pallor)'),
(395,'Arterial thrombosis','coldness'),
(396,'Arterial thrombosis,Blood poisoning (sepsis), Breast cancer(male), Breast cancer(female)','Skin Changes'),
(397,'Arthritis','tenderness in the joints'),
(398,'Arthritis, Back problems(stiffness only)','stiffness in the joints'),
(399,'Arthritis','warm, red skin on your joints'),
(400,'Asbestosis','Clubbing of fingertips'),
(401,'Asbestosis','Clubbing of fingertips'),
(402,'Asthma','chest tightness'),
(403,'Ataxia, Blood poisoning(sepsis)','slurred speech'),
(404,'Ataxia','Becoming more clumsy'),
(405,'Ataxia','Slurred speech'),
(406,'Ataxia','Tremors or shaking'),
(407,'Atopic eczeme','itching'),
(408,'Atopic eczema, Bone Cancer','Redness'),
(409,'Atopic eczeme','Dryness'),
(410,'Atopic eczeme','Cracking'),
(411,'Atrial fibrillation','dizziness'),
(412,'Atrial fibrillation','Feeling faint'),
(413,'Attention deficit hyperactivity disorder','Impulsivity'),
(414,'Attention deficit hyperactivity disorder','Restlessness'),
(415,'Attention deficit hyperactivity disorder','Difficulty listening'),
(416,'autism','Difficulty with social Interaction'),
(417,'autism','Delayed Language Development'),
(418,'autism','Limited Nonverbal Communication'),
(419,'Back problems','Hot, burning, shooting or stabbing'),
(420,'Back problems','Pins and needles'),
(421,'Bacterial vaginosis','Changes in vaginal discharge'),
(422,'Bacterial vaginosis','Unpleasant fishy odor'),
(423,'Measles','Rash starting on face'),
(424,'Benign prostate enlargement','Weak urine flow'),
(425,'Benign prostate enlargement, Bladder cancer, Bowel incontinence','Urgency'),
(426,'Bile duct cancer (cholangiocarcinoma), Kidney cancer, Carcinoid Tumour, Chronic Fatigue Syndrome, Chronic Kidney Disease, Chronic Myeloid Leukaemia, Cirrhosis, Crohn’s Disease, Cancer (Cervical, Carcinoid)','Unintentional weight loss'),
(427,'Binge eating Disorder','Loss of control'),
(428,'Binge eating Disorder','Shame and secrecy'),
(429,'Binge eating Disorder','Hoarding food'),
(430,'Bipolar disorder','tense'),
(431,'Bipolar disorder','Down, upset or tearful'),
(432,'Bipolar disorder','agitated'),
(433,'Bipolar disorder','guilt and despair'),
(434,'Bladder cancer','Blood in urine (hematuria)'),
(435,'Bladder cancer','Lower back pain'),
(436,'Blood poisoning(sepsis)','Feeling of impending doom'),
(437,'Blood poisoning(sepsis)','Passing no urine in day'),
(438,'Blood poisoning(sepsis)','Muscle pain'),
(439,'Bone Cancer','A noticeable lump over a bone'),
(440,'Bone Cancer','A weak bone that breaks'),
(441,'Bone cancer: Teenagers and young adults','Reduced Movement'),
(442,'Bone cancer: Teenagers and young adults','Broken bone'),
(443,'Bowel cancer','Blood in the poo'),
(444,'Bowel cancer','Changes in bowel habit'),
(445,'Bowel cancer','abdominal (tummy) pain'),
(446,'Bowel incontinence','Leakage'),
(447,'Bowel incontinence','Passive Incontinence'),
(448,'Bowel incontinence','Soiling'),
(449,'Bowel polyps','A small amount of rectal bleeding'),
(450,'Brain stem death','Ventilator Dependence'),
(451,'Brain stem death','Irreversible Brain Damage'),
(452,'Brain stem death','Unconsciousness'),
(453,'Brain tumour, Brain tumours: Children, Brain tumours: Teenagers and young adults','Seizures(fits)'),
(454,'Brain tumour','Mental or Behavioural changes'),
(455,'Brain tumours Children','Feeling very irritated'),
(456,'Brain tumours: Children, Brain tumours: Teenagers and young adults','Eye problems'),
(457,'Brain tumours: Children','Feeling extremely sleepy'),
(458,'Brain tumours: Teenagers and young adults','Balance and Coordination issues'),
(459,'Breast cancer(male), Breast cancer(female)','Change in size or Shape'),
(460,'Breast cancer(male), Breast cancer(female)','Nipple Discharge'),
(461,'Breast cancer(male)','Lumps in Armpit'),
(462,'Breast cancer(female)','Thickening'),
(463,'bronchiectasis','Chest infections'),
(464,'Bronchitis','Sore throat'),
(465,'Bronchitis','Blocked nose'),
(466,'Bulimia nervosa','Preoccupation with food'),
(467,'Bulimia nervosa','bingeing'),
(468,'Bulimia nervosa','Sleep Disturbances'),
(469,'Bulimia nervosa','Mood changes'),
(470,'Motor neurone disease(MND), mouth cancer','difficulty swallowing'),
(471,'Motor neurone disease(MND)','breathing issues'),
(472,'Mouth cancer','Persistent sores'),
(473,'Mouth cancer','lumps'),
(474,'Mouth cancer','unexplained weight loss'),
(475,'Mouth ulcer','Painful sores in the mouth'),
(476,'Mouth ulcer','Difficulty eating or speaking'),
(477,'Multiple myeloma','Bone pain'),
(478,'Multiple myeloma','frequent infections'),
(479,'Multiple myeloma','anemia'),
(480,'Multiple myeloma','kidney issues'),
(481,'Multiple Sclerosis (MS)','vision issues'),
(482,'Multiple Sclerosis (MS)','coordination problems'),
(483,'Multiple Sclerosis (MS), Vitamin B12 or Folate Deficiency Anaemia, wrist fracture','Numbness'),
(484,'Molar pregnancy','No fetal heartbeat'),
(485,'Motor neurone disease(MND)','slurred speech'),
(486,'Multiple System Atrophy (MSA)','Tremors'),
(487,'Multiple System Atrophy (MSA)','muscle rigidity'),
(488,'Multiple System Atrophy (MSA)','speech/swallowing problems'),
(489,'Multiple System Atrophy (MSA)','blood pressure fluctuations'),
(490,'Mumps','Swollen salivary glands'),
(491,'Mumps','Muscle aches'),
(492,'Munchausen’s Syndrome','Faking or exaggerating illnesses'),
(493,'Munchausen’s Syndrome','seeking medical attention unnecessarily'),
(494,'Muscular Dystrophy','difficulty walking'),
(495,'Muscular Dystrophy','frequent falls'),
(496,'Muscular Dystrophy','delayed motor skills'),
(497,'Chronic Fatigue Syndrome (ME/CFS)','Severe fatigue'),
(498,'Chronic Fatigue Syndrome (ME/CFS)','unrefreshing sleep'),
(499,'Chronic Fatigue Syndrome (ME/CFS)','concentration issues'),
(500,'Chronic Fatigue Syndrome (ME/CFS)','joint/muscle pain'),
(501,'Myasthenia Gravis','drooping eyelids'),
(502,'Myasthenia Gravis','breathing'),
(503,'Warts and Verrucas','rough bumps on skin'),
(504,'Warts and Verrucas','black dots (clotted blood vessels)'),
(505,'Warts and Verrucas','pain (verrucas on feet)'),
(506,'Whiplash','Neck pain'),
(507,'Whiplash, Wrist fracture','stiffness'),
(508,'Whiplash, tonsillitis','headaches'),
(509,'Whiplash','shoulder pain'),
(510,'Whooping cough','Severe coughing fits'),
(511,'Whooping cough','\"whoop\" sound when breathing in'),
(512,'Wilm’s tumour','Abdominal swelling or mass'),
(513,'Wilm’s tumour','blood in urine'),
(514,'Wilm’s tumour','wilm’s'),
(515,'Wolff-Parkinson-White Syndrome','Rapid heartbeat'),
(516,'Womb (Uterus) cancer','Vaginal bleeding (post-menopause or between periods)'),
(517,'Womb (Uterus) cancer','abnormal discharge'),
(518,'Wrist Fracture','Severe pain'),
(519,'Wrist Fracture','deformity'),
(520,'Wrist Fracture','Numbness in fingers'),
(521,'Metacarpal fracture','Hand pain'),
(522,'Metacarpal fracture, wrist fracture','bruising'),
(523,'Metacarpal fracture','difficulty moving fingers'),
(524,'Middle ear infection','fluid drainage'),
(525,'Middle ear infection, Deafblindness','hearing problems'),
(526,'Middle ear infection','irritability (in children)'),
(527,'migraine','Intense headache'),
(528,'migraine','light/sound sensitivity'),
(529,'migraine','visual disturbances'),
(530,'Miscarriage','cramping'),
(531,'Vulval cancer','Unusual bleeding'),
(532,'vertigo','Balance issues'),
(533,'vertigo','Hearing loss'),
(534,'Vitamin B12 or Folate Deficiency Anaemia','weakness'),
(535,'Vitamin B12 or Folate Deficiency Anaemia','Pale skin'),
(536,'Vitamin B12 or Folate Deficiency Anaemia','Memory loss'),
(537,'Vomiting in adults, vomiting in children and babies','dehydration'),
(538,'Vomiting in children and babies','irritability'),
(539,'Vulval cancer','Skin changes'),
(540,'Vulval cancer','Unusual bleeding'),
(541,'Malaria','Chills'),
(542,'Malaria','sweating'),
(543,'Managing gential symptoms','discharge'),
(544,'Managing gential symptoms','pain during urination'),
(545,'Managing gential symptoms','sores or lesions'),
(546,'Measles','rash starting on face'),
(547,'Measles, whooping cough','runny nose'),
(548,'Measles','red and watery eyes.'),
(549,'Meningitis','Stiff neck'),
(550,'Meningitis','high fever'),
(551,'Meningitis','severe headache'),
(552,'Meningitis, minor head injury','sensitivity to light'),
(553,'Meningitis, minor head injury','confusion'),
(554,'Meniere’s disease','Vertigo'),
(555,'Meniere’s disease','ringing in ears (tinnitus)'),
(556,'Meniere’s disease','ear pressure'),
(557,'Sunburn','Blistering (small fluid-filled bumps)'),
(558,'Sunburn','Dehydration'),
(559,'Sunburn','hot skin to the touch'),
(560,'Sudden infant death syndrome','No signs of struggle or distress'),
(561,'Sudden infant death syndrome','pale skin (cyanosis) after death'),
(562,'Sudden infant death syndrome','Periods of apnea (breathing pauses) before death (though not always observed)'),
(563,'Subacromial pain syndrome','Feeling of catching or grinding when moving the shoulder'),
(564,'Subacromial pain syndrome','Difficulty moving the arm, especially above shoulder height'),
(565,'stroke','loss of balance, or coordination issues'),
(566,'stroke','Sudden trouble seeing in one or both eyes'),
(567,'stroke','Sudden confusion, trouble speaking, or understanding speech'),
(568,'Streptococcus A (strep A)','Low blood pressure (shock)'),
(569,'Streptococcus A (strep A)','Strawberry-like red tongue'),
(570,'Streptococcus A (strep A)','Tiny red spots (petechiae) on the roof of the mouth'),
(571,'Stomach ulcer','indigestion'),
(572,'Stomach cancer','yellowing of the skin and whites of the eyes (jaundice)'),
(573,'Stomach cancer','lumpiness and swelling in your stomach (caused by a build-up of fluid)'),
(574,'Stomach cancer','blood in your stools, or black stools'),
(575,'Stomach cancer','pain in your stomach or breastbone'),
(576,'Stomach cancer','feeling bloated after eating'),
(577,'Stomach cancer','Heart burn'),
(578,'Stomach cancer','trapped wind and frequent burping'),
(579,'Spinal stenosis','stiffness'),
(580,'Spinal stenosis','weakness'),
(581,'Spina bifida','hydracephalus (excess fluid on the brain)'),
(582,'Spina bifida','bowel incontinence, leading to constipation'),
(583,'Spina bifida','repeat or frequent urinary tract infections'),
(584,'Spina bifida','urinary retention'),
(585,'Spina bifida','urinary incontinence'),
(586,'Spina bifida','weakness'),
(587,'Soft tissue sarcomas','nasal/throat blockage'),
(588,'Soft tissue sarcomas: Teenagers and young adults','Lower tummy pain'),
(589,'Soft tissue sarcomas: Teenagers and young adults','blood in urine'),
(590,'Soft tissue sarcomas: Teenagers and young adults','painful tummy'),
(591,'Soft tissue sarcomas: Teenagers and young adults','Painless lump'),
(592,'Soft tissue sarcomas','aching pain in muscles or joints'),
(593,'Soft tissue sarcomas','Persistent pain if the tumor presses on nerves or organs'),
(594,'Skin rashes in children','Sandpaper-like texture (scarlet fever)'),
(595,'Skin rashes in children','Blisters that crust over (chickenpox'),
(596,'Skin rashes in children','Red spots or bumps that may start on the face and spread'),
(597,'Skin rashes in children','Raised bumps or blisters'),
(598,'Skin cancer (melanoma)','A new, dark streak under a fingernail or toenail (can mimic a bruise).'),
(599,'Skin cancer (melanoma)','A sore that doesn’t heal'),
(600,'Skin cancer (melanoma)','bleeding or becoming crusty'),
(601,'Skin cancer (melanoma)','new mole or a change in the appearance of an existing mole'),
(602,'Sjogren’s syndrome','vasculitis (inflammation of blood vessels)'),
(603,'Sjogren’s syndrome','sensitivity to light (photophobia)'),
(604,'Sjogren’s syndrome','mucus discharge from your eyes'),
(605,'Sjogren’s syndrome','burning or stinging eyes'),
(606,'Sjogren’s syndrome','difficulty speaking'),
(607,'Sjogren’s syndrome','difficulty swallowing and chewing'),
(608,'Sjogren’s syndrome','dry mouth and eyes'),
(609,'Sinusitis','have difficulty feeding'),
(610,'Sinusitis','bad breath (halitosis)'),
(611,'Sinusitis','a high temperature (fever) of 38°C (100.4°F) or more'),
(612,'Sinusitis','toothache'),
(613,'Sinusitis','a green or yellow discharge from your nose'),
(614,'Sickle cell disease','sudden vision loss, or changes in your vision'),
(615,'Sickle cell disease','priapism – a painful erection lasting two hours or more'),
(616,'Sickle cell disease','weakness on one or both sides of your body'),
(617,'Sickle cell disease','drowsiness, confusion, or slurred speech'),
(618,'Sickle cell disease','infections, and anaemia'),
(619,'Shingles','rash usually appears on side of your body'),
(620,'Severe head injury','has severe neck pain or cannot move their head'),
(621,'Severe head injury','has signs of damage to their skull, like a dent in their head'),
(622,'Severe head injury','hit their head with force, like being hit by a car'),
(623,'Severe head injury','is struggling to walk, balance, speak, write, or understand other people'),
(624,'Severe head injury','is unresponsive'),
(625,'Sepsis','a soft spot on a baby’s head that bulges'),
(626,'Sepsis','“sunken” eyes'),
(627,'Sepsis','stiffness in the neck, especially when trying to look up or down'),
(628,'Sepsis','a fast heartbeat'),
(629,'Sepsis','faint'),
(630,'Sepsis','slurred speech'),
(631,'Sepsis','severe breathlessness'),
(632,'Sepsis','cold, clammy and pale or mottled skin'),
(633,'Sepsis','less urine production than normal – for example, not urinating for a day'),
(634,'Sepsis','black, green or bloody vomit'),
(635,'Seasonal affective disorder (SAD)','feel tired and sleep more than normal (hypersomnia)'),
(636,'Seasonal affective disorder (SAD)','have an increased appetite and eat more than usual (hyperphagia)'),
(637,'Seasonal affective disorder (SAD)','A reduced sex drive'),
(638,'Seasonal affective disorder (SAD)','feelings of despair'),
(639,'Seasonal affective disorder (SAD)','low mood , a loss of pleasure or interest in normal, everyday activities'),
(640,'scoliosis','a prominent ribcage'),
(641,'scoliosis','one shoulder or hip being more prominent than the other'),
(642,'Scoliosis','a visibly curved spine'),
(643,'Sciatica','muscle spasms in the back'),
(644,'Sciatica','burning sensations'),
(645,'Sciatica','a weakness in the leg or foot'),
(646,'Sciatica','leg pain, often this feels worse than back pain'),
(647,'Sciatica','lower back pain'),
(648,'Schizophrenia','Changes in thinking and behaviour'),
(649,'Ulcerative colitis','Recurring diarrhoea which may contain blood, mucus or pus'),
(650,'Ulcerative colitis, tonsillitis','extreme tiredness (fatigue)'),
(651,'Ulcerative colitis','weight loss'),
(652,'Ulcerative colitis','irritated and red eyes'),
(653,'Underactive thyroid','muscle cramps'),
(654,'Underactive thyroid','brittle hair and nails'),
(655,'Underactive thyroid','irregular periods or heavy periods'),
(656,'Underactive thyroid','low-pitched and hoarse voice'),
(657,'Underactive thyroid','thinned or partly missing eyebrows'),
(658,'Urinary incontinence','Leakage when sneezing, coughing, laughing, or lifting heavy objects'),
(659,'Urinary incontinence','Small amounts of urine loss due to pressure on the bladder'),
(660,'Urinary incontinence','Constant dribbling of urine'),
(661,'Urinary incontinence','Weak or intermittent urine stream'),
(662,'Urinary incontinence in women','Frequent urinary tract infections (UTIs)'),
(663,'Urinary incontinence in women','Small amounts of urine leakage without warning'),
(664,'Urinary incontinence in women','Involuntary loss of urine immediately after feeling the urge'),
(665,'Urinary tract infection (UTI)','need to pee more often than usual'),
(666,'Urinary tract infection (UTI)','pain or discomfort when peeing'),
(667,'Urinary tract infection (UTI)','feeling generally unwell, achy and tired'),
(668,'Urinary tract infection (UTI)','urine that’s cloudy, foul-smelling or contains blood'),
(669,'Urinary tract infection (UTI)','shivering and chills'),
(670,'Urinary tract infection (UTI)','pain in your sides or back'),
(671,'Urinary tract infection (UTI)','can see blood in pee'),
(672,'Urinary tract infection (UTI) in children','not gaining weight'),
(673,'Urinary tract infection (UTI) in children','yellowing of the skin and whites of the eyes (jaundice) in very young children'),
(674,'Urinary tract infection (UTI) in children','pain or a burning sensation when peeing'),
(675,'Urinary tract infection (UTI) in children','unpleasant-smelling pee'),
(676,'(urticaria) hives','change in appearance within 24 hours'),
(677,'(urticaria) hives','s size from a few millimetres to the size of a hand'),
(678,'(urticaria) hives','Swelling of the affected area'),
(679,'(urticaria) hives','Sudden outbreak of red, itchy welts'),
(680,'Tennis elbow','difficulty with gripping.'),
(681,'Tennis elbow','difficulty with twisting movements such as opening jars.'),
(682,'Tennis elbow','restriction in movement at the elbow.'),
(683,'Tennis elbow','tenderness when touching the area.'),
(684,'Testicular cancer','dull ache'),
(685,'Testicular cancer','sharp pain in your testicles or scrotum'),
(686,'Testicular cancer','feeling of heaviness in your scrotum'),
(687,'Testicular cancer','change in the texture or increase in firmness of a testicle'),
(688,'Testicular cancer','difference between one testicle and the other'),
(689,'Testicular cancer: Teenagers and young adults','Painless lump or swelling in one testicle'),
(690,'Testicular cancer: Teenagers and young adults','Breast enlargement or tenderness (due to hormonal changes)'),
(691,'Testicular cancer: Teenagers and young adults','Swelling in the legs (due to lymph blockage)'),
(692,'Testicular cancer: Teenagers and young adults','general malaise'),
(693,'Testicular lumps and swellings','sudden, severe pain in a testicle'),
(694,'Testicular lumps and swellings','testicle pain that has lasted more than an hour or continues when you’re resting'),
(695,'Testicular lumps and swellings','change in the shape of your testicles'),
(696,'Testicular lumps and swellings','change in the way your testicles feel'),
(697,'Testicular lumps and swellings','1 testicle that has become bigger than the other'),
(698,'Thirst','Dry mouth'),
(699,'Thirst','Frequent desire to drink water'),
(700,'Thirst','feeling dehydrated or lightheaded'),
(701,'Thirst','Cracked or dry lips'),
(702,'Threadworms','wetting the bed'),
(703,'Threadworms','irritated skin around the anus'),
(704,'Thrush','white vaginal discharge (often like cottage cheese), which does not usually smell'),
(705,'Thrush','itching and irritation around the vagina'),
(706,'Thrush','soreness and stinging during sex or when you pee'),
(707,'Thrush','difficulty pulling back the foreskin'),
(708,'Thrush','white or yellow discharge'),
(709,'Thyroid cancer','unexplained hoarseness that doesn’t get better after a few weeks'),
(710,'Thyroid cancer, tonsillitis','a sore throat or difficulty swallowing that doesn’t get better'),
(711,'Thyroid cancer','pain in your neck'),
(712,'Thyroid cancer','Unexplained weight changes'),
(713,'Thumb fracture','Visible deformity (if the bone is displaced'),
(714,'Thumb fracture','Thumb appears shorter or misaligned'),
(715,'Thumb fracture','Numbness or tingling in the thumb'),
(716,'Thumb fracture','Severe pain in the thumb, especially after injury'),
(717,'Thyroid cancer: Teenagers and young adults','Swollen lymph nodes in the neck'),
(718,'Thyroid cancer: Teenagers and young adults','Chronic cough not related to a cold'),
(719,'Thyroid cancer: Teenagers and young adults','Unexplained fatigue or weight changes'),
(720,'Tick bites','blistering'),
(721,'Tick bites','bruising'),
(722,'Tick bites','itchiness'),
(723,'Tinnitus','buzzing'),
(724,'Tinnitus','humming'),
(725,'Tinnitus','grinding'),
(726,'Tinnitus','noises that beat in time with your pulse'),
(727,'Tonsillitis','bad breath'),
(728,'Tonsillitis','white pus-filled spots on the tonsils'),
(729,'Tonsillitis','loss of voice or changes to your voice'),
(730,'tonsillitis','tooth sensitivity – you may feel tenderness or pain when eating or drinking something hot, cold or sweet'),
(731,'tonsillitis','an unpleasant taste in your mouth'),
(732,'tonsillitis','grey, brown or black spots appearing on your teeth'),
(733,'tonsillitis','toothache – either continuous pain keeping you awake or occasional sharp pain without an obvious cause'),
(734,'Tourette’s syndrome','eye blinking'),
(735,'Tourette’s syndrome','neck and head jerks'),
(736,'Tourette’s syndrome','arm and leg movements'),
(737,'Tourette’s syndrome','pinching'),
(738,'Tourette’s syndrome','kicking');

/*Table structure for table `therapy_masters` */

DROP TABLE IF EXISTS `therapy_masters`;

CREATE TABLE `therapy_masters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `therapy_details` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `therapy_masters` */

insert  into `therapy_masters`(`id`,`therapy_details`,`price`,`created_at`,`updated_at`) values 
(1,'Ceps Exercises',500.00,NULL,NULL),
(2,'Neck Exercises',400.00,NULL,NULL),
(3,'Shoulder Exercises',450.00,NULL,NULL),
(4,'Spinal Flexion Exercises',550.00,NULL,NULL),
(5,'Spinal Extension Exercises',600.00,NULL,NULL),
(6,'Abdomen Exercises',650.00,NULL,NULL),
(7,'Ankle Exercises',300.00,NULL,NULL),
(8,'Facial Exercises',350.00,NULL,NULL),
(9,'Moilisation Exercises',700.00,NULL,NULL),
(10,'Exercises',500.00,NULL,NULL),
(11,'Exercises 2',520.00,NULL,NULL),
(12,'Physio-I',750.00,NULL,NULL),
(13,'Physio-II',800.00,NULL,NULL),
(14,'Physio-III',850.00,NULL,NULL),
(15,'Physio-IV',900.00,NULL,NULL),
(16,'Physio-V',950.00,NULL,NULL),
(17,'Massage-1',1000.00,NULL,NULL),
(18,'Massage-2',1100.00,NULL,NULL),
(19,'Massage-3',1200.00,NULL,NULL),
(20,'Maiores sequi qui ma',573.00,'2025-03-28 06:20:29','2025-03-28 06:20:29'),
(21,'Sed qui esse ipsam44444',924447.00,'2025-03-28 06:21:28','2025-03-28 06:21:40');

/*Table structure for table `user_management` */

DROP TABLE IF EXISTS `user_management`;

CREATE TABLE `user_management` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  `gender_id` int(11) DEFAULT NULL,
  `marital_status_id` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `alternative_no` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_join` date DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `scan_user_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_management_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `user_management` */

insert  into `user_management`(`id`,`name`,`user_name`,`password`,`department_id`,`gender_id`,`marital_status_id`,`address`,`contact_no`,`alternative_no`,`email`,`date_of_join`,`dob`,`remarks`,`profile_pic`,`branch_id`,`scan_user_status`,`created_at`,`updated_at`) values 
(2,'Maggy Barrett',NULL,'$2y$10$efXVcO5pGQDwLRhHtLECJevVJlT9HlkMvub0L6/UdUVYn1V7OOyCu',3,2,3,'Doloremque est labor','Aute duis possimus','Magni dolorem minus','quvupynyka@mailinator.com','2003-09-30','1981-06-07','Minim ut doloribus i',NULL,NULL,0,'2025-04-01 16:10:49','2025-04-01 16:10:49'),
(3,'Bradley Hickman',NULL,'$2y$10$j48UHQbWTlYOV.xsRBnOnOragiiZ/bIQomjmoE3xJmb6NomEvbPPS',3,1,3,'Tenetur quasi cillum','Optio reprehenderit','Quia similique nostr','jasyzuv@mailinator.com','2025-04-24','2025-04-18','Quod error molestias','uploads/userPictures/1743524218_67ec117a15023.png',NULL,0,'2025-04-01 16:16:58','2025-04-01 16:24:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`created_at`,`updated_at`) values 
(54,'admin','admin@gmail.com',NULL,'$2y$10$ZIsGlqrdBs8pYMfYy6vibuQ/R5hfwMAZXfBZklL4qUJ3bC22QdLBG',NULL,'2025-04-04 04:55:58','2025-04-04 04:55:58');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
