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
('1',279,'Cecilia Mcpherson',1,1,'Fever','2025-04-11','19:48:00','2025-04-03 12:18:55','2025-04-05 06:12:02'),
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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `expenses` */

insert  into `expenses`(`id`,`date`,`ebbill`,`physio_expenses`,`salary`,`tv`,`tea`,`phone_bill`,`food`,`biscuit`,`cooldrinks`,`service`,`work`,`milk`,`created_at`,`updated_at`) values 
(2,'1990-06-30',88.00,66.00,59.00,65.00,70.00,NULL,25.00,39.00,NULL,41.00,41.00,95.00,'2025-03-27 19:29:21','2025-03-27 19:29:21'),
(3,'2025-04-05',310.00,800.00,15000.00,1200.00,50.00,600.00,300.00,30.00,60.00,500.00,1000.00,45.00,NULL,NULL),
(4,'2024-06-06',290.00,0.00,15000.00,0.00,40.00,700.00,350.00,35.00,40.00,450.00,950.00,42.00,NULL,NULL),
(5,'2024-06-07',330.00,400.00,15000.00,1000.00,45.00,800.00,310.00,20.00,50.00,400.00,1050.00,47.00,NULL,NULL),
(6,'2024-06-08',340.00,0.00,15000.00,500.00,60.00,620.00,320.00,40.00,55.00,420.00,1100.00,50.00,NULL,NULL),
(7,'2024-06-09',350.00,600.00,15000.00,0.00,35.00,580.00,290.00,50.00,45.00,470.00,1150.00,48.00,NULL,NULL),
(8,'2024-06-10',280.00,0.00,15000.00,1500.00,70.00,650.00,340.00,30.00,60.00,430.00,1200.00,43.00,NULL,NULL),
(9,'2024-06-11',300.00,700.00,15000.00,0.00,55.00,620.00,300.00,25.00,40.00,390.00,1250.00,41.00,NULL,NULL),
(10,'2024-06-12',310.00,900.00,15000.00,800.00,60.00,610.00,310.00,40.00,70.00,410.00,1300.00,46.00,NULL,NULL),
(11,'2024-06-13',295.00,0.00,15000.00,1100.00,50.00,590.00,280.00,35.00,55.00,440.00,1350.00,49.00,NULL,NULL),
(12,'2024-06-14',305.00,500.00,15000.00,0.00,45.00,640.00,330.00,20.00,65.00,460.00,1400.00,44.00,NULL,NULL),
(13,'2024-06-15',320.00,750.00,15000.00,900.00,65.00,600.00,310.00,30.00,50.00,480.00,1450.00,47.00,NULL,NULL),
(14,'2024-06-16',300.00,0.00,15000.00,1000.00,55.00,670.00,340.00,40.00,60.00,490.00,1500.00,45.00,NULL,NULL),
(15,'2024-06-17',310.00,850.00,15000.00,1200.00,40.00,610.00,300.00,25.00,70.00,500.00,1550.00,42.00,NULL,NULL),
(16,'2024-06-18',330.00,950.00,15000.00,0.00,50.00,640.00,350.00,35.00,45.00,510.00,1600.00,48.00,NULL,NULL),
(17,'2024-06-19',340.00,0.00,15000.00,1300.00,60.00,590.00,320.00,20.00,65.00,520.00,1650.00,43.00,NULL,NULL),
(18,'2024-06-20',285.00,400.00,15000.00,0.00,45.00,660.00,290.00,50.00,40.00,530.00,1700.00,46.00,NULL,NULL),
(19,'2024-06-21',295.00,600.00,15000.00,1100.00,70.00,580.00,310.00,30.00,60.00,540.00,1750.00,41.00,NULL,NULL),
(20,'2024-06-22',310.00,0.00,15000.00,900.00,65.00,630.00,280.00,25.00,55.00,550.00,1800.00,44.00,NULL,NULL),
(21,'2024-06-23',320.00,850.00,15000.00,1000.00,55.00,600.00,330.00,40.00,70.00,560.00,1850.00,47.00,NULL,NULL),
(22,'2024-06-24',330.00,0.00,15000.00,1200.00,60.00,610.00,300.00,20.00,45.00,570.00,1900.00,49.00,NULL,NULL),
(23,'2024-06-25',340.00,500.00,15000.00,0.00,50.00,650.00,310.00,35.00,65.00,580.00,1950.00,42.00,NULL,NULL),
(24,'2024-06-26',300.00,700.00,15000.00,1300.00,40.00,600.00,320.00,30.00,50.00,590.00,2000.00,45.00,NULL,NULL),
(25,'2024-06-27',310.00,0.00,15000.00,1000.00,45.00,620.00,290.00,25.00,60.00,600.00,2050.00,48.00,NULL,NULL),
(26,'2024-06-28',325.00,900.00,15000.00,0.00,55.00,640.00,340.00,40.00,55.00,610.00,2100.00,43.00,NULL,NULL),
(27,'2024-06-29',335.00,800.00,15000.00,1100.00,60.00,590.00,310.00,20.00,70.00,620.00,2150.00,41.00,NULL,NULL),
(28,'2024-06-30',290.00,0.00,15000.00,1200.00,65.00,630.00,280.00,35.00,45.00,630.00,2200.00,46.00,NULL,NULL),
(29,'2024-07-01',300.00,400.00,15000.00,0.00,50.00,610.00,300.00,30.00,60.00,640.00,2250.00,44.00,NULL,NULL),
(30,'2024-07-02',310.00,600.00,15000.00,900.00,55.00,600.00,320.00,25.00,50.00,650.00,2300.00,47.00,NULL,NULL),
(31,'2024-07-03',325.00,0.00,15000.00,1100.00,45.00,580.00,290.00,40.00,70.00,660.00,2350.00,43.00,NULL,NULL),
(32,'2024-07-04',335.00,750.00,15000.00,1000.00,60.00,620.00,330.00,20.00,55.00,670.00,2400.00,49.00,NULL,NULL),
(33,'2024-07-05',345.00,900.00,15000.00,0.00,70.00,640.00,310.00,30.00,45.00,680.00,2450.00,41.00,NULL,NULL),
(34,'2024-07-06',290.00,0.00,15000.00,1300.00,65.00,600.00,300.00,35.00,60.00,690.00,2500.00,46.00,NULL,NULL),
(35,'2024-07-07',300.00,500.00,15000.00,0.00,50.00,610.00,280.00,25.00,70.00,700.00,2550.00,44.00,NULL,NULL),
(36,'2024-07-08',310.00,800.00,15000.00,1200.00,55.00,630.00,340.00,40.00,50.00,710.00,2600.00,48.00,NULL,NULL),
(37,'2024-07-09',330.00,0.00,15000.00,1000.00,45.00,620.00,290.00,20.00,65.00,720.00,2650.00,43.00,NULL,NULL),
(38,'2024-07-10',340.00,600.00,15000.00,1100.00,60.00,640.00,300.00,30.00,55.00,730.00,2700.00,47.00,NULL,NULL),
(39,'2024-07-11',300.00,0.00,15000.00,900.00,50.00,590.00,320.00,35.00,70.00,740.00,2750.00,42.00,NULL,NULL),
(40,'2024-07-12',310.00,700.00,15000.00,0.00,65.00,600.00,310.00,40.00,60.00,750.00,2800.00,45.00,NULL,NULL),
(41,'2024-07-13',320.00,850.00,15000.00,1000.00,55.00,610.00,330.00,25.00,45.00,760.00,2850.00,49.00,NULL,NULL),
(42,'2024-07-14',335.00,0.00,15000.00,1300.00,60.00,620.00,280.00,20.00,50.00,770.00,2900.00,46.00,NULL,NULL),
(43,'2024-07-15',345.00,950.00,15000.00,0.00,70.00,640.00,300.00,30.00,60.00,780.00,2950.00,41.00,NULL,NULL),
(44,'2024-07-16',290.00,400.00,15000.00,1200.00,65.00,600.00,310.00,35.00,70.00,790.00,3000.00,44.00,NULL,NULL),
(45,'2024-07-17',305.00,600.00,15000.00,0.00,50.00,610.00,320.00,25.00,55.00,800.00,3050.00,48.00,NULL,NULL),
(46,'2024-07-18',315.00,0.00,15000.00,1100.00,55.00,630.00,290.00,40.00,60.00,810.00,3100.00,43.00,NULL,NULL),
(47,'2024-07-19',325.00,750.00,15000.00,1000.00,60.00,590.00,280.00,30.00,65.00,820.00,3150.00,47.00,NULL,NULL),
(48,'2024-07-20',335.00,0.00,15000.00,900.00,45.00,600.00,300.00,20.00,50.00,830.00,3200.00,41.00,NULL,NULL),
(49,'2024-07-21',345.00,850.00,15000.00,1300.00,70.00,610.00,340.00,35.00,70.00,840.00,3250.00,46.00,NULL,NULL),
(50,'2024-07-22',300.00,500.00,15000.00,0.00,50.00,620.00,310.00,25.00,60.00,850.00,3300.00,44.00,NULL,NULL),
(51,'2024-07-23',310.00,0.00,15000.00,1200.00,55.00,630.00,290.00,30.00,45.00,860.00,3350.00,48.00,NULL,NULL),
(52,'2024-07-24',320.00,700.00,15000.00,1100.00,65.00,600.00,280.00,40.00,50.00,870.00,3400.00,43.00,NULL,NULL),
(53,'2024-07-25',330.00,0.00,15000.00,900.00,60.00,610.00,300.00,20.00,55.00,880.00,3450.00,47.00,NULL,NULL),
(54,'2024-07-26',340.00,850.00,15000.00,1000.00,50.00,590.00,320.00,25.00,70.00,890.00,3500.00,46.00,NULL,NULL),
(55,'2024-07-27',295.00,600.00,15000.00,0.00,45.00,620.00,310.00,30.00,60.00,900.00,3550.00,41.00,NULL,NULL),
(56,'2024-07-28',305.00,0.00,15000.00,1300.00,55.00,630.00,290.00,35.00,65.00,910.00,3600.00,44.00,NULL,NULL),
(57,'2024-07-29',315.00,700.00,15000.00,1200.00,65.00,640.00,280.00,40.00,50.00,920.00,3650.00,49.00,NULL,NULL),
(58,'2024-07-30',325.00,0.00,15000.00,1000.00,60.00,600.00,300.00,20.00,70.00,930.00,3700.00,43.00,NULL,NULL),
(59,'2024-07-31',335.00,950.00,15000.00,0.00,50.00,610.00,310.00,25.00,55.00,940.00,3750.00,47.00,NULL,NULL),
(60,'2024-08-01',345.00,800.00,15000.00,1100.00,55.00,590.00,330.00,30.00,60.00,950.00,3800.00,41.00,NULL,NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(18,'2025_03_26_153015_create_expenses_table',1),
(20,'2025_03_27_181526_create_diseases_table',2),
(21,'2025_03_28_041635_create_lab_master_table',3),
(22,'2025_03_28_060921_create_therapy_masters_table',4),
(23,'2025_03_26_115056_create_user_management_table',5),
(24,'2025_04_02_132115_create_medicine_stocks_table',6),
(26,'2025_04_03_035835_create_admissions_table',7),
(29,'2025_04_03_041957_create_physical_examinations_table',8),
(30,'2025_03_26_081304_create_labs_table',9),
(32,'2025_03_25_173821_create_patients_table',10),
(33,'2025_04_04_034625_create_expenses_masters_table',11);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `patient_diseases` */

insert  into `patient_diseases`(`id`,`patient_id`,`symptoms`,`diseases`,`created_at`,`updated_at`) values 
(5,'1','fever','Influenza','2025-04-03 12:23:40','2025-04-03 12:23:40');

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
