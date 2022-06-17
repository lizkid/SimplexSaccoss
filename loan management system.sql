/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.14-MariaDB : Database - loan management system
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`loan management system` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `loan management system`;

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4;

/*Data for the table `accounts` */

insert  into `accounts`(`id`,`name`) values 
(100,'saving_account'),
(200,'social_account');

/*Table structure for table `adonis_schema` */

DROP TABLE IF EXISTS `adonis_schema`;

CREATE TABLE `adonis_schema` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  `migration_time` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `adonis_schema` */

/*Table structure for table `api_tokens` */

DROP TABLE IF EXISTS `api_tokens`;

CREATE TABLE `api_tokens` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `expires_at` timestamp NULL DEFAULT NULL,
  `name` varchar(35) NOT NULL,
  `token` varchar(255) NOT NULL,
  `type` varchar(40) NOT NULL,
  `user_id` int(8) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `api_tokens` */

insert  into `api_tokens`(`id`,`created_at`,`expires_at`,`name`,`token`,`type`,`user_id`) values 
(1,'2021-10-01 16:03:26.000000',NULL,'Opaque Access Token','38ec1f4c15a488cd6f7292a0b50c38600c6675f66a138139cd0c8dbd4e31f691','api',9),
(2,'2021-10-01 17:14:58.000000',NULL,'Opaque Access Token','83212847554475b2dda64c0807f0fc77b4d1ebfb11a2f40ff15a900d609f434e','api',9);

/*Table structure for table `approval_levels` */

DROP TABLE IF EXISTS `approval_levels`;

CREATE TABLE `approval_levels` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `level` int(4) NOT NULL,
  `name` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `approval_levels` */

insert  into `approval_levels`(`id`,`level`,`name`,`created_at`,`updated_at`) values 
(1,1,'maker','2021-04-24 13:44:47','2021-04-24 13:44:47'),
(2,2,'checker','2021-04-24 13:44:47','2021-04-24 13:44:47'),
(3,3,'approver','2021-04-24 13:44:47','2021-04-24 13:44:47');

/*Table structure for table `approved_contributions` */

DROP TABLE IF EXISTS `approved_contributions`;

CREATE TABLE `approved_contributions` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `contribution_id` bigint(8) NOT NULL,
  `comment` varchar(60) NOT NULL,
  `level_id` int(8) NOT NULL,
  `approver_id` bigint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4;

/*Data for the table `approved_contributions` */

insert  into `approved_contributions`(`id`,`contribution_id`,`comment`,`level_id`,`approver_id`,`created_at`,`updated_at`) values 
(1,21,'ok',3,9,'2021-05-19 20:15:40','2021-05-19 20:15:40'),
(2,28,'imechangwa',3,9,'2021-06-18 19:17:36','2021-06-18 19:17:36'),
(3,27,'ok',3,9,'2021-06-18 19:40:13','2021-06-18 19:40:13'),
(23,26,'ok',3,9,'2021-06-18 20:12:36','2021-06-18 20:12:36'),
(25,25,'ok',3,9,'2021-06-18 20:13:31','2021-06-18 20:13:31'),
(32,24,'ok',3,9,'2021-06-18 20:18:48','2021-06-18 20:18:48'),
(37,29,'ok',3,9,'2021-06-18 22:25:13','2021-06-18 22:25:13'),
(39,30,'ok',3,9,'2021-06-18 22:29:37','2021-06-18 22:29:37'),
(63,30,'ok',3,9,'2021-06-19 16:57:49','2021-06-19 16:57:49'),
(65,30,'ok',3,9,'2021-06-19 16:59:45','2021-06-19 16:59:45'),
(66,31,'ok',3,9,'2021-06-19 17:01:12','2021-06-19 17:01:12'),
(67,31,'ok',3,9,'2021-06-19 17:01:41','2021-06-19 17:01:41'),
(148,34,'vc',3,9,'2021-06-21 20:47:42','2021-06-21 20:47:42'),
(221,39,'ok',3,9,'2021-06-27 23:27:14','2021-06-27 23:27:14'),
(222,40,'ok',3,9,'2021-06-27 23:29:30','2021-06-27 23:29:30'),
(223,46,'ok',3,9,'2021-06-29 19:58:06','2021-06-29 19:58:06'),
(224,47,'ok',3,9,'2021-06-29 20:00:13','2021-06-29 20:00:13'),
(225,48,'ok',3,9,'2021-06-29 20:01:48','2021-06-29 20:01:48'),
(226,49,'ok',3,9,'2021-06-29 20:04:21','2021-06-29 20:04:21'),
(227,50,'xx',3,9,'2021-06-29 20:06:58','2021-06-29 20:06:58'),
(228,0,'ok',3,9,'2021-08-18 22:36:56','2021-08-18 22:36:56'),
(229,51,'ok',3,9,'2021-08-18 22:37:48','2021-08-18 22:37:48'),
(230,52,'ok',3,9,'2021-08-18 22:42:11','2021-08-18 22:42:11'),
(235,53,'ok',3,9,'2021-08-18 23:00:27','2021-08-18 23:00:27'),
(236,50,'ok',3,9,'2021-08-29 15:55:02','2021-08-29 15:55:02'),
(237,0,'ok',3,9,'2021-08-29 16:01:19','2021-08-29 16:01:19'),
(238,48,'ok',3,9,'2021-08-29 16:44:45','2021-08-29 16:44:45'),
(242,54,'ok',3,35,'2021-08-30 22:48:07','2021-08-30 22:48:07'),
(243,2,'Ok',3,9,'2022-02-09 15:28:28','2022-02-09 15:28:28'),
(244,1,'Ok',3,9,'2022-02-09 15:29:54','2022-02-09 15:29:54'),
(245,3,'ok',3,9,'2022-02-09 15:33:28','2022-02-09 15:33:28'),
(246,4,'ok',3,9,'2022-02-09 15:34:10','2022-02-09 15:34:10'),
(247,5,'ok',3,9,'2022-02-10 00:12:31','2022-02-10 00:12:31'),
(248,6,'uko fresh',3,9,'2022-02-13 15:49:03','2022-02-13 15:49:03'),
(249,6,'nimeuona tena ',3,9,'2022-02-13 15:51:07','2022-02-13 15:51:07'),
(250,2,'okay',3,9,'2022-02-13 17:53:09','2022-02-13 17:53:09'),
(251,3,'ok',3,9,'2022-02-13 17:56:01','2022-02-13 17:56:01'),
(252,3,'ok',3,9,'2022-02-13 17:58:48','2022-02-13 17:58:48'),
(253,3,'ok',3,9,'2022-02-13 18:01:33','2022-02-13 18:01:33'),
(254,4,'ok',3,9,'2022-02-13 18:10:57','2022-02-13 18:10:57'),
(255,5,'ok',3,9,'2022-02-13 23:18:51','2022-02-13 23:18:51'),
(256,6,'ok',3,9,'2022-02-13 23:32:03','2022-02-13 23:32:03'),
(257,8,'ok',3,9,'2022-02-13 23:35:20','2022-02-13 23:35:20'),
(258,7,'ok',3,9,'2022-02-13 23:46:42','2022-02-13 23:46:42'),
(259,2,'ok',3,9,'2022-02-13 23:48:31','2022-02-13 23:48:31'),
(260,10,'ok',3,9,'2022-03-11 18:56:14','2022-03-11 18:56:14'),
(261,11,'ok',3,9,'2022-03-11 18:57:06','2022-03-11 18:57:06'),
(262,12,'ok',3,9,'2022-03-11 18:58:01','2022-03-11 18:58:01'),
(263,13,'ok',3,9,'2022-03-11 19:15:02','2022-03-11 19:15:02'),
(264,14,'ok',3,9,'2022-03-11 19:15:45','2022-03-11 19:15:45'),
(265,15,'ok',3,9,'2022-03-11 19:18:39','2022-03-11 19:18:39');

/*Table structure for table `approved_loans` */

DROP TABLE IF EXISTS `approved_loans`;

CREATE TABLE `approved_loans` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `loan_id` bigint(6) NOT NULL,
  `level_id` int(6) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `approver_id` bigint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `approved_loans` */

insert  into `approved_loans`(`id`,`loan_id`,`level_id`,`comment`,`approver_id`,`created_at`,`updated_at`) values 
(1,26,0,'',9,'0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,22,0,'',9,'2021-04-17 15:45:28','2021-04-17 15:45:28'),
(3,22,0,'',9,'2021-04-17 00:00:00','2021-04-17 00:00:00'),
(4,22,0,'',9,'2021-04-17 00:00:00','2021-04-17 00:00:00'),
(5,22,0,'',9,'2021-04-17 15:47:40','2021-04-17 15:47:40'),
(6,22,0,'',9,'2021-04-17 15:50:09','2021-04-17 15:50:09'),
(7,26,0,'',9,'2021-04-17 15:50:53','2021-04-17 15:50:53'),
(8,25,0,'',9,'2021-04-17 16:31:56','2021-04-17 16:31:56'),
(9,25,0,'',9,'2021-04-17 16:32:55','2021-04-17 16:32:55'),
(10,26,0,'',9,'2021-04-17 16:52:32','2021-04-17 16:52:32'),
(11,24,0,'',9,'2021-04-17 17:28:51','2021-04-17 17:28:51'),
(12,52,0,'',9,'2021-04-25 00:18:28','2021-04-25 00:18:28'),
(13,59,0,'',9,'2021-04-29 01:50:40','2021-04-29 01:50:40'),
(14,60,2,'',9,'2021-05-09 14:46:54','2021-05-09 14:46:54'),
(15,61,2,'',9,'2021-05-09 14:48:10','2021-05-09 14:48:10'),
(16,64,2,'',9,'2021-05-09 21:12:40','2021-05-09 14:58:06'),
(17,78,0,'mnnbbbv',9,'2021-06-13 17:15:27','2021-06-13 17:15:27'),
(18,79,0,'apewe',9,'2021-06-15 22:24:43','2021-06-15 22:24:43'),
(19,85,0,'vc',9,'2021-06-22 23:58:03','2021-06-22 23:58:03'),
(20,84,0,'ok',9,'2021-06-22 23:58:32','2021-06-22 23:58:32'),
(21,83,0,'cv',9,'2021-06-23 00:03:30','2021-06-23 00:03:30'),
(22,82,0,'ok',9,'2022-02-10 10:30:01','2022-02-10 10:30:01'),
(23,86,0,'ok',9,'2022-03-11 19:27:28','2022-03-11 19:27:28');

/*Table structure for table `approved_payment` */

DROP TABLE IF EXISTS `approved_payment`;

CREATE TABLE `approved_payment` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `payment_id` bigint(8) NOT NULL,
  `comment` varchar(60) NOT NULL,
  `level_id` int(8) NOT NULL,
  `approver_id` bigint(6) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `approved_payment` */

insert  into `approved_payment`(`id`,`payment_id`,`comment`,`level_id`,`approver_id`,`created_at`,`updated_at`) values 
(1,18,'ok',2,9,'2021-05-19 00:32:46','2021-05-19 00:32:46'),
(2,17,'ok',2,9,'2021-05-19 01:06:40','2021-05-19 01:06:40'),
(3,15,'ok',2,9,'2021-05-19 11:13:32','2021-05-19 11:13:32'),
(4,15,'ok',2,9,'2021-05-19 12:18:08','2021-05-19 12:18:08'),
(5,16,'ok',2,9,'2021-05-19 18:27:38','2021-05-19 18:27:38'),
(6,19,'ok',2,9,'2022-02-09 16:03:56','2022-02-09 16:03:56'),
(7,20,'ok',2,9,'2022-02-09 16:08:09','2022-02-09 16:08:09');

/*Table structure for table `attachments_type` */

DROP TABLE IF EXISTS `attachments_type`;

CREATE TABLE `attachments_type` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `type` varchar(60) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `attachments_type` */

insert  into `attachments_type`(`id`,`type`,`created_at`,`updated_at`) values 
(1,'Commitment letter','2021-04-25 17:48:26','2021-04-25 17:48:26');

/*Table structure for table `collection_account` */

DROP TABLE IF EXISTS `collection_account`;

CREATE TABLE `collection_account` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `account_id` bigint(60) NOT NULL,
  `previous_balance` varchar(60) NOT NULL DEFAULT '0',
  `balance` varchar(60) NOT NULL DEFAULT '0',
  `created_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  `updated_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `collection_account` */

insert  into `collection_account`(`id`,`account_id`,`previous_balance`,`balance`,`created_at`,`updated_at`) values 
(1,100,'1240000','1140000','2021-04-20 09:09:46.11613','2022-03-11 19:15:45.00000'),
(2,200,'140000','160000','2021-04-20 09:09:46.11613','2022-03-11 19:18:39.00000');

/*Table structure for table `contribution_category` */

DROP TABLE IF EXISTS `contribution_category`;

CREATE TABLE `contribution_category` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `code` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `contribution_category` */

/*Table structure for table `contribution_types` */

DROP TABLE IF EXISTS `contribution_types`;

CREATE TABLE `contribution_types` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `contribution_types` */

insert  into `contribution_types`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'All contributions','2021-04-26 22:59:26','2021-04-26 22:59:26'),
(2,'Saving contributions','2021-04-26 22:59:26','2021-04-26 22:59:26'),
(3,'Social contributions','2021-04-26 23:00:21','2021-04-26 23:00:21');

/*Table structure for table `contributions` */

DROP TABLE IF EXISTS `contributions`;

CREATE TABLE `contributions` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `amount_contributed` decimal(40,2) NOT NULL,
  `previous_balance` decimal(40,2) NOT NULL DEFAULT 0.00,
  `current_balance` decimal(40,2) NOT NULL DEFAULT 0.00,
  `saving_amount` decimal(40,2) NOT NULL,
  `social_amount` decimal(40,2) NOT NULL,
  `share_contributed` double NOT NULL,
  `contribution_type_id` int(8) NOT NULL,
  `contribution_month` int(4) NOT NULL,
  `contribution_year` int(6) NOT NULL,
  `date_contributed` date NOT NULL,
  `reference_no` varchar(60) NOT NULL,
  `reference_text` text NOT NULL,
  `generated_ref_no` varchar(60) NOT NULL,
  `status_id` int(8) NOT NULL DEFAULT 2,
  `level_id` int(8) NOT NULL DEFAULT 1,
  `checker_comment` text NOT NULL,
  `approver_comment` text NOT NULL,
  `is_confirmed` varchar(35) NOT NULL DEFAULT 'No',
  `created_by` bigint(11) NOT NULL,
  `approved_by` bigint(11) NOT NULL,
  `confirmed_by` bigint(11) NOT NULL,
  `notification_id` bigint(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference_no` (`reference_no`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

/*Data for the table `contributions` */

insert  into `contributions`(`id`,`member_id`,`amount_contributed`,`previous_balance`,`current_balance`,`saving_amount`,`social_amount`,`share_contributed`,`contribution_type_id`,`contribution_month`,`contribution_year`,`date_contributed`,`reference_no`,`reference_text`,`generated_ref_no`,`status_id`,`level_id`,`checker_comment`,`approver_comment`,`is_confirmed`,`created_by`,`approved_by`,`confirmed_by`,`notification_id`,`created_at`,`updated_at`) values 
(2,36972841,100000.00,0.00,80000.00,80000.00,20000.00,2,1,1,2022,'2022-02-09','xe5444tf','umelipwa kupitia kitambaa cheupe','S950462378',3,3,'its okay','ok','Yes',9,9,9,2,'2022-01-13 07:14:08','2022-02-13 00:00:00'),
(3,36972841,100000.00,0.00,0.00,100000.00,0.00,2.5,2,2,2022,'2022-02-13','mmmmmmx','umelipwa kupitia kitambaa cheupe','S049721385',3,2,'ok','ok','Yes',9,9,9,2,'2022-02-13 00:00:00','2022-02-13 00:00:00'),
(4,29861573,100000.00,0.00,0.00,80000.00,20000.00,2,1,1,2022,'2022-02-13','nmmmm','umelipwa kupitia kitambaa cheupe','S780943516',3,3,'ok','ok','Yes',9,9,9,2,'2022-01-13 00:00:00','2022-02-13 00:00:00'),
(5,29861573,100000.00,260000.00,340000.00,80000.00,20000.00,2,1,2,2022,'2022-02-07','78098','umelipwa kupitia kitambaa cheupe','S139247805',3,3,'ok','ok','Yes',9,9,9,2,'2022-02-13 00:00:00','2022-02-13 00:00:00'),
(6,29861573,100000.00,340000.00,420000.00,80000.00,20000.00,2,1,10,2021,'2021-12-08','78098p','umelipwa kupitia kitambaa cheupe','S526319780',3,3,'ok','ok','Yes',9,9,9,2,'2022-02-16 00:00:00','2022-02-13 00:00:00'),
(7,29861573,100000.00,160000.00,260000.00,100000.00,0.00,2.5,1,1,2022,'2022-02-13','78098w','umelipwa kupitia kitambaa cheupe','S601275843',3,3,'ok','ok','Yes',9,9,9,2,'2022-02-13 00:00:00','2022-02-13 00:00:00'),
(8,36972841,100000.00,0.00,0.00,100000.00,0.00,2.5,1,1,2022,'2022-02-03','nmmmmn','umelipwa kupitia kitambaa cheupe','S152703498',2,2,'ok','ok','Yes',9,9,9,2,'2022-02-13 22:41:09','2022-02-13 22:41:09'),
(9,0,100000.00,0.00,0.00,80000.00,20000.00,2,1,0,2022,'2022-03-09','78098d','umelipwa kupitia kitambaa cheupe','W023865971',4,2,'','','No',9,0,0,2,'2022-03-09 15:35:58','2022-03-09 15:35:58'),
(10,36972841,100000.00,80000.00,160000.00,80000.00,20000.00,2,1,3,2022,'2022-03-11','mh@t','umelipwa kupitia kitambaa cheupe','F849706213',3,3,'ok','ok','Yes',9,9,9,1,'2022-03-11 18:55:49','2022-03-11 18:55:49'),
(11,36972841,100000.00,160000.00,260000.00,100000.00,0.00,2.5,1,3,2022,'2022-03-11','mh@w','umelipwa kupitia kitambaa cheupe','F749106258',3,3,'ok','ok','Yes',9,9,9,2,'2022-03-11 18:56:49','2022-03-11 18:56:49'),
(12,36972841,100000.00,260000.00,340000.00,80000.00,20000.00,2,1,0,2022,'2022-03-11','xe5444q','umelipwa kupitia kitambaa cheupe','F358074192',3,3,'ok','ok','Yes',9,9,9,2,'2022-03-11 18:57:51','2022-03-11 18:57:51'),
(13,29861573,100000.00,340000.00,420000.00,80000.00,20000.00,2,1,3,2021,'2022-03-11','mh@ss','umelipwa kupitia kitambaa cheupe','F524673809',3,3,'ok','ok','Yes',9,9,9,1,'2022-03-11 19:14:40','2022-03-11 19:14:40'),
(14,29861573,200000.00,420000.00,620000.00,200000.00,0.00,5,1,3,2021,'2022-03-11','mh@d','umelipwa kupitia kitambaa cheupe','F701962543',3,3,'ok','ok','Yes',9,9,9,1,'2022-03-11 19:15:35','2022-03-11 19:15:35'),
(15,36972841,20000.00,340000.00,340000.00,0.00,20000.00,0,3,3,2021,'2022-03-11','y','umelipwa kupitia kitambaa cheupe','F096215837',3,3,'ok','ok','Yes',9,9,9,2,'2022-03-11 19:18:11','2022-03-11 19:18:11');

/*Table structure for table `event_types` */

DROP TABLE IF EXISTS `event_types`;

CREATE TABLE `event_types` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `payment_type_code` varchar(35) NOT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `event_types` */

insert  into `event_types`(`id`,`name`,`payment_type_code`,`status_id`) values 
(3,'Marriage','EM101',1),
(4,'New Born Baby  Wishes','EM101',1),
(5,'Mourning','EM101',1),
(7,'Charity','GU101',1),
(8,' Meeting & Vacation','GU101',1),
(9,'Marriage','EM101',10),
(10,'10','0',10),
(11,'Application maintenance','GU101',1);

/*Table structure for table `gender` */

DROP TABLE IF EXISTS `gender`;

CREATE TABLE `gender` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(6) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `gender` */

insert  into `gender`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'Male','2021-04-17 22:19:56.000000','2021-04-17 22:19:56.000000'),
(2,'Female','2021-04-17 22:19:56.000000','2021-04-17 22:19:56.000000');

/*Table structure for table `group_details` */

DROP TABLE IF EXISTS `group_details`;

CREATE TABLE `group_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `registered_members` int(11) NOT NULL DEFAULT 0,
  `enabled_members` int(11) NOT NULL DEFAULT 0,
  `disabled_members` int(11) NOT NULL DEFAULT 0,
  `terminated_members` int(11) NOT NULL DEFAULT 0,
  `requested_loan` int(11) NOT NULL DEFAULT 0,
  `released_loan` int(11) NOT NULL DEFAULT 0,
  `rejected_loan` int(11) NOT NULL DEFAULT 0,
  `paid_loan` int(11) NOT NULL DEFAULT 0,
  `unpaid_loan` int(11) NOT NULL DEFAULT 0,
  `total_contributions` int(11) NOT NULL DEFAULT 0,
  `total_social_contributions` int(11) NOT NULL DEFAULT 0,
  `total_paid_social_events` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `group_details` */

insert  into `group_details`(`id`,`registered_members`,`enabled_members`,`disabled_members`,`terminated_members`,`requested_loan`,`released_loan`,`rejected_loan`,`paid_loan`,`unpaid_loan`,`total_contributions`,`total_social_contributions`,`total_paid_social_events`) values 
(1,10,7,2,1,0,0,0,0,0,0,0,0);

/*Table structure for table `interest_history` */

DROP TABLE IF EXISTS `interest_history`;

CREATE TABLE `interest_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `interest_id` int(11) DEFAULT NULL,
  `value` varchar(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `interest_history` */

insert  into `interest_history`(`id`,`interest_id`,`value`,`created_at`,`updated_at`) values 
(1,23,' 6','2022-03-14 14:15:42','2022-03-14 14:15:42');

/*Table structure for table `interests` */

DROP TABLE IF EXISTS `interests`;

CREATE TABLE `interests` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `value` varchar(8) NOT NULL,
  `duration` int(2) NOT NULL,
  `status_id` bigint(20) NOT NULL,
  `created_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  `updated_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `interests` */

insert  into `interests`(`id`,`value`,`duration`,`status_id`,`created_at`,`updated_at`) values 
(8,'  7',3,6,'2021-01-26 12:16:55.69794','2021-01-26 12:16:55.69794'),
(9,'6.667',2,6,'2021-01-26 12:25:05.52985','2021-01-26 12:25:05.52985'),
(10,'  3.333',1,6,'2021-01-26 12:25:28.31686','2021-01-26 12:25:28.31686'),
(13,'20',3,6,'2021-05-12 13:17:15.22193','2021-05-12 13:17:15.22193'),
(14,' 10',4,6,'2021-06-15 19:02:40.20856','2021-06-15 19:02:40.20856'),
(15,' 9',5,6,'2021-06-15 19:02:52.65887','2021-06-15 19:02:52.65887'),
(16,' 10',6,6,'2021-06-15 19:03:03.41765','2021-06-15 19:03:03.41765'),
(17,' 11',7,6,'2021-06-15 19:03:26.04988','2021-06-15 19:03:26.04988'),
(18,'12',8,6,'2021-06-15 19:04:44.31648','2021-06-15 19:04:44.31648'),
(19,'13',9,6,'2021-06-15 19:04:54.30119','2021-06-15 19:04:54.30119'),
(20,'14',10,6,'2021-06-15 19:05:04.69277','2021-06-15 19:05:04.69277'),
(21,'15',11,6,'2021-06-15 19:05:12.87209','2021-06-15 19:05:12.87209'),
(22,'16',12,6,'2021-06-15 19:05:21.27286','2021-06-15 19:05:21.27286'),
(24,'10',0,1,'2022-03-14 14:15:42.28515','2022-03-14 14:15:42.28515');

/*Table structure for table `loan` */

DROP TABLE IF EXISTS `loan`;

CREATE TABLE `loan` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `amount_taken` varchar(60) NOT NULL,
  `paytime` varchar(11) NOT NULL,
  `first_witness_id` varchar(20) NOT NULL,
  `second_witness_id` varchar(20) DEFAULT NULL,
  `total_amount_to_be_paid` decimal(40,2) NOT NULL,
  `monthly_payment` decimal(40,2) NOT NULL,
  `level_id` int(8) NOT NULL,
  `date_requested` date NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status_id` bigint(8) NOT NULL DEFAULT 2,
  `notification_id` bigint(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4;

/*Data for the table `loan` */

insert  into `loan`(`id`,`member_id`,`amount_taken`,`paytime`,`first_witness_id`,`second_witness_id`,`total_amount_to_be_paid`,`monthly_payment`,`level_id`,`date_requested`,`start_date`,`end_date`,`status_id`,`notification_id`,`created_at`,`updated_at`) values 
(74,25479836,'50000','7','25479836','',0.00,0.00,2,'2021-06-22','2021-05-20','2021-12-20',4,2,'2021-05-20 15:02:54','2021-05-20 15:02:54'),
(75,25479836,'100000','4','25479836','',0.00,0.00,1,'2021-06-22','2021-05-22','2021-09-22',4,2,'2021-05-22 17:24:08','2021-05-22 17:24:08'),
(76,25479836,'300000','7','25479836','',0.00,0.00,2,'2021-06-22','2021-06-13','2022-01-13',4,2,'2021-06-13 05:59:27','2021-06-13 05:59:27'),
(77,25479836,'300000','6','25479836','',0.00,0.00,2,'2021-06-22','2021-06-13','2021-12-13',4,2,'2021-06-13 06:40:15','2021-06-13 06:40:15'),
(78,71695328,'100000','4','25479836','',0.00,0.00,2,'2021-06-22','2021-06-13','2021-10-13',4,2,'2021-06-13 12:55:05','2021-06-13 12:55:05'),
(79,25479836,'100000','4','25479836','',102091.98,25522.99,3,'2021-06-22','2021-06-15','2021-10-15',8,2,'2021-06-15 22:03:17','2021-06-15 22:03:17'),
(80,25479836,'100000','4','25479836','',102091.98,25522.99,1,'2021-06-22','2021-06-16','2021-10-16',4,2,'2021-06-16 21:51:53','2021-06-16 21:51:53'),
(81,25479836,'100000','4','25479836','',102091.98,25522.99,1,'2021-06-22','2021-06-16','2021-10-16',4,2,'2021-06-16 21:57:33','2021-06-16 21:57:33'),
(82,25479836,'100000','3','25479836','',101168.93,33722.98,3,'2021-06-22','2022-02-10','2022-05-10',9,2,'2021-06-22 22:59:02','2021-06-22 22:59:02'),
(83,25479836,'100000','5','25479836','',102261.21,20452.24,3,'2021-06-22','2022-02-10','2022-07-10',3,2,'2021-06-22 22:59:51','2021-06-22 22:59:51'),
(84,25479836,'100000','3','25479836','',0.00,0.00,2,'2021-06-22','2021-06-22','2021-09-22',3,2,'2021-06-22 23:13:29','2021-06-22 23:13:29'),
(85,25479836,'100000','4','25479836','',102091.98,25522.99,3,'2021-06-22','2021-06-22','2021-10-22',2,2,'2021-06-22 23:21:17','2021-06-22 23:21:17'),
(86,29861573,'100000','6','36972841','',102936.84,17156.14,3,'2022-03-10','2022-03-11','2022-09-11',2,1,'2022-03-11 19:26:50','2022-03-11 19:26:50');

/*Table structure for table `loan_duration` */

DROP TABLE IF EXISTS `loan_duration`;

CREATE TABLE `loan_duration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `min_amount` varchar(20) NOT NULL,
  `max_amount` varchar(25) NOT NULL,
  `duration` varchar(20) NOT NULL,
  `status_id` bigint(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `loan_duration` */

insert  into `loan_duration`(`id`,`min_amount`,`max_amount`,`duration`,`status_id`,`created_at`,`updated_at`) values 
(1,'0','1000000','3',1,'2022-03-14 16:37:54','2022-03-14 16:37:54'),
(2,'1000000','3000000','6',1,'2022-03-14 16:49:08','2022-03-14 16:49:08'),
(3,'3000000','6000000','12',1,'2022-03-14 16:49:42','2022-03-14 16:49:42'),
(4,' 6000000',' 10000000','18',1,'2022-03-14 17:08:48','2022-03-14 16:50:36');

/*Table structure for table `loan_window` */

DROP TABLE IF EXISTS `loan_window`;

CREATE TABLE `loan_window` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `loan_window` */

insert  into `loan_window`(`id`,`type`,`created_at`,`updated_at`) values 
(1,0,'2021-04-27 01:44:50','2021-04-27 01:44:50');

/*Table structure for table `max_min_shares` */

DROP TABLE IF EXISTS `max_min_shares`;

CREATE TABLE `max_min_shares` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `detail` varchar(20) NOT NULL,
  `value` int(6) NOT NULL,
  `status_id` int(8) NOT NULL DEFAULT 1,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `max_min_shares` */

insert  into `max_min_shares`(`id`,`detail`,`value`,`status_id`,`created_at`,`updated_at`) values 
(1,'maximum share',7,1,'2021-04-19 19:21:03.000000','2021-04-19 19:21:03.000000'),
(2,'minimum share',2,1,'2021-04-19 19:21:03.000000','2021-04-19 19:21:03.000000');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(35) NOT NULL,
  `second_name` varchar(35) NOT NULL,
  `email` varchar(60) NOT NULL,
  `member_id` int(12) NOT NULL,
  `gender_id` int(2) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date_joined` date NOT NULL,
  `status_id` int(2) NOT NULL DEFAULT 1,
  `is_application_form_submitted` bit(1) NOT NULL DEFAULT b'1',
  `attachment_type_id` int(2) NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `created_at` datetime(6) DEFAULT current_timestamp(6),
  `updated_at` datetime(6) DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`),
  UNIQUE KEY `index` (`email`),
  UNIQUE KEY `email` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

/*Data for the table `member` */

insert  into `member`(`id`,`first_name`,`second_name`,`email`,`member_id`,`gender_id`,`phone`,`date_joined`,`status_id`,`is_application_form_submitted`,`attachment_type_id`,`file_name`,`created_at`,`updated_at`) values 
(29,'dddd','ssss','lucksisa2@gmail.com',903864752,1,'0758155015','2022-06-09',1,'',1,'9319627328.pdf','2022-06-16 11:08:26.000000','2022-06-16 11:08:26.000000');

/*Table structure for table `members_account` */

DROP TABLE IF EXISTS `members_account`;

CREATE TABLE `members_account` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `no_of_contributions` int(8) NOT NULL DEFAULT 0,
  `previous_share` varchar(20) NOT NULL DEFAULT '0',
  `current_share` varchar(60) NOT NULL DEFAULT '0',
  `previous_balance` varchar(20) NOT NULL DEFAULT '0',
  `current_contribution_balance` varchar(60) NOT NULL DEFAULT '0',
  `previous_social_balance` varchar(60) NOT NULL DEFAULT '0',
  `social_balance` varchar(50) NOT NULL DEFAULT '0',
  `requested_loans` int(4) NOT NULL DEFAULT 0,
  `unpaid_loan` int(4) NOT NULL DEFAULT 0,
  `loan_amount_remained` varchar(60) NOT NULL DEFAULT '0',
  `total_loan_amount` varchar(60) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `contribution_date` date DEFAULT NULL,
  `contribution_month` varchar(12) DEFAULT NULL,
  `contribution_year` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `members_account` */

insert  into `members_account`(`id`,`member_id`,`no_of_contributions`,`previous_share`,`current_share`,`previous_balance`,`current_contribution_balance`,`previous_social_balance`,`social_balance`,`requested_loans`,`unpaid_loan`,`loan_amount_remained`,`total_loan_amount`,`created_at`,`updated_at`,`contribution_date`,`contribution_month`,`contribution_year`) values 
(14,2222,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-15 23:06:01','2022-06-15 23:06:01',NULL,NULL,NULL),
(15,905768431,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-15 23:06:39','2022-06-15 23:06:39',NULL,NULL,NULL),
(16,908625137,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 09:09:19','2022-06-16 09:09:19',NULL,NULL,NULL),
(17,903864752,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 11:08:26','2022-06-16 11:08:26',NULL,NULL,NULL),
(18,905843216,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 11:11:41','2022-06-16 11:11:41',NULL,NULL,NULL),
(19,904261783,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 11:52:07','2022-06-16 11:52:07',NULL,NULL,NULL),
(20,905726381,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 11:53:19','2022-06-16 11:53:19',NULL,NULL,NULL),
(21,904865312,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 11:54:48','2022-06-16 11:54:48',NULL,NULL,NULL),
(22,905624371,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 11:56:13','2022-06-16 11:56:13',NULL,NULL,NULL),
(23,901538274,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 11:57:51','2022-06-16 11:57:51',NULL,NULL,NULL),
(24,902387156,0,'0','0','0','0','0','0',0,0,'0','0','2022-06-16 11:59:53','2022-06-16 11:59:53',NULL,NULL,NULL);

/*Table structure for table `months` */

DROP TABLE IF EXISTS `months`;

CREATE TABLE `months` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `value` int(4) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `months` */

insert  into `months`(`id`,`value`,`name`) values 
(1,1,'January'),
(2,2,'February'),
(3,3,'March'),
(4,4,'April'),
(5,5,'May'),
(6,6,'June'),
(7,7,'July'),
(8,8,'August'),
(9,9,'September'),
(10,10,'October'),
(11,11,'November'),
(12,12,'December');

/*Table structure for table `notifications` */

DROP TABLE IF EXISTS `notifications`;

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `notifications` */

insert  into `notifications`(`id`,`name`) values 
(1,'unread'),
(2,'read');

/*Table structure for table `paid_loans` */

DROP TABLE IF EXISTS `paid_loans`;

CREATE TABLE `paid_loans` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `loan_id` int(8) NOT NULL,
  `amount_paid` varchar(255) NOT NULL,
  `amount_remained` varchar(255) NOT NULL,
  `dop` date NOT NULL,
  `reference_no` varchar(60) NOT NULL,
  `reference_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Data for the table `paid_loans` */

insert  into `paid_loans`(`id`,`loan_id`,`amount_paid`,`amount_remained`,`dop`,`reference_no`,`reference_text`) values 
(1,0,'245,678','-','2020-12-18','',''),
(2,0,'60000','-60000','2021-06-15','tyuuuu','umelipwa kupitia kitambaa cheupe'),
(7,79,'60000','42091.97775092','2021-06-17','tyuuuuty','umelipwa kupitia kitambaa cheupe'),
(8,79,'42091.97775092','60000','2021-06-17','tyuuuuty','umelipwa kupitia kitambaa cheupe'),
(9,79,'60000','42091.97775092','2021-06-17','tyuuuuty','umelipwa kupitia kitambaa cheupe'),
(10,79,'42091.97775092','60000','2021-06-17','tyuuuuty','umelipwa kupitia kitambaa cheupe'),
(11,79,'60000','42091.97775092','2021-06-17','tyuuuuty','umelipwa kupitia kitambaa cheupe'),
(12,79,'60000','42091.97775092','2021-06-17','tyuuuu','umelipwa kupitia kitambaa cheupe'),
(13,79,'42091.97775092','0','2021-06-17','tyuuuuty','umelipwa kupitia kitambaa cheupe'),
(14,64,'160000','-57908.02224908','2021-06-17','tyuuuuty','umelipwa kupitia kitambaa cheupe'),
(15,64,'60000','-117908.02224908','2021-06-17','tyuuuuty','umelipwa kupitia kitambaa cheupe'),
(16,64,'60000','-177908.02224908','2021-06-17','h7','umelipwa kupitia kitambaa cheupe'),
(19,59,'600','7308.02224908','2021-06-17','tyuuuutydd','umelipwa kupitia kitambaa cheupe'),
(20,59,'22','7886.02224908','2021-06-17','tyuuuuty22','umelipwa kupitia kitambaa cheupe'),
(21,59,'22','7864.02224908','2021-06-17','tyuuuutycf','umelipwa kupitia kitambaa cheupe'),
(23,61,'6000','1864.02224908','2021-06-18','tyuuuumn','umelipwa kupitia kitambaa cheupe,m'),
(25,60,'1,864.02','1863.02224908','2021-06-20','tyuuuutyn','umelipwa kupitia kitambaa cheupe');

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `payment_status` */

DROP TABLE IF EXISTS `payment_status`;

CREATE TABLE `payment_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `payment_status` */

insert  into `payment_status`(`id`,`name`) values 
(1,'Not paid'),
(2,'Paid');

/*Table structure for table `payment_type` */

DROP TABLE IF EXISTS `payment_type`;

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(35) NOT NULL,
  `code` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `payment_type` */

insert  into `payment_type`(`id`,`name`,`code`) values 
(1,'Existing member','EM101'),
(2,'Guest','GU101');

/*Table structure for table `payments` */

DROP TABLE IF EXISTS `payments`;

CREATE TABLE `payments` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `guest_type` varchar(35) DEFAULT NULL,
  `amount_paid` varchar(35) NOT NULL,
  `status_id` int(8) NOT NULL DEFAULT 2,
  `level_id` int(8) NOT NULL DEFAULT 1,
  `date_paid` date NOT NULL,
  `event_id` bigint(8) NOT NULL,
  `reference_no` text NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_by` int(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

/*Data for the table `payments` */

insert  into `payments`(`id`,`name`,`email`,`phone`,`guest_type`,`amount_paid`,`status_id`,`level_id`,`date_paid`,`event_id`,`reference_no`,`comment`,`created_by`,`created_at`,`updated_at`) values 
(15,'mwanamkasi abdala','lucksisack442@gmail.com','07591550154','','90000',4,3,'2021-05-12',4,'MNBS25527882','kajifungua bana',9,'2021-05-12 21:03:59','2021-05-12 21:03:59'),
(16,'mwanamkasi abdala','lucksisack442@gmail.com','07591550154','','120000',8,3,'2021-05-12',4,'MNBS25527882','kajifungua bana\r\n',9,'2021-05-12 21:03:59','2021-05-12 21:03:59'),
(17,'Grove Back Resort','jhhhdl@gmail.com','0723155015','Hotel','30000',8,3,'2021-05-12',8,'MNBS25527882','kula bata bana',9,'2021-05-12 21:20:25','2021-05-12 21:20:25'),
(18,'Watoto Orphan','lax@gmail.com','0754155015','Group','100000',8,3,'2021-05-12',7,'MNBS25527882','kutembelea watoto yatima na wasiojiweza',9,'2021-05-12 21:23:16','2021-05-12 21:23:16'),
(20,'mwanamkasi abdala','lucksisack442@gmail.com','07591550154','','50000',8,3,'2022-02-09',4,'78098d','dddd',9,'2022-02-09 16:07:32','2022-02-09 16:07:32'),
(26,'Luksford Isack','aa98@gmail.com','0759155015','','20000',2,1,'2022-02-21',0,'78098','xcc',9,'2022-02-28 18:24:19','2022-02-28 18:24:19');

/*Table structure for table `permissions` */

DROP TABLE IF EXISTS `permissions`;

CREATE TABLE `permissions` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `perm_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

/*Data for the table `permissions` */

insert  into `permissions`(`id`,`perm_name`,`created_at`,`updated_at`) values 
(2,'Create user','2020-12-24 12:10:58','2020-12-24 12:10:58'),
(3,'View user','2020-12-24 12:11:14','2020-12-24 12:11:14'),
(4,'Disable user','2020-12-24 12:11:23','2020-12-24 12:11:23'),
(5,'Create member','2020-12-24 12:11:35','2020-12-24 12:11:35'),
(6,'Edit member','2020-12-24 12:11:43','2020-12-24 12:11:43'),
(7,'Delete member','2020-12-24 12:11:51','2020-12-24 12:11:51'),
(8,'Enable member','2020-12-24 12:11:58','2020-12-24 12:11:58'),
(9,'Disable member','2020-12-24 12:12:07','2020-12-24 12:12:07'),
(10,'Approve loan','2020-12-24 12:12:15','2020-12-24 12:12:15'),
(11,'Reject loan','2020-12-24 12:12:28','2020-12-24 12:12:28'),
(12,'View member list','2020-12-24 12:12:56','2020-12-24 12:12:56'),
(13,'Create social event','2020-12-24 12:13:08','2020-12-24 12:13:08'),
(14,'Edit social event ','2020-12-24 12:13:30','2020-12-24 12:13:30'),
(15,'View social event list','2020-12-24 12:13:46','2020-12-24 12:13:46'),
(16,'Create roles','2020-12-24 12:14:21','2020-12-24 12:14:21'),
(17,'View roles list','2020-12-24 12:14:40','2020-12-24 12:14:40'),
(18,'Edit roles ','2020-12-24 12:14:48','2020-12-24 12:14:48'),
(19,'Delete roles','2020-12-24 12:14:57','2020-12-24 12:14:57'),
(20,'View contribution list','2020-12-24 12:16:52','2020-12-24 12:16:52'),
(22,'Release loan','2021-04-17 17:25:21','2021-04-17 17:25:21'),
(23,'Enable user','2021-04-25 15:43:36','2021-04-25 15:43:36'),
(24,'Reverse contribution','2021-05-10 10:32:52','2021-05-10 10:32:52'),
(25,'View reversed contribution','2021-05-10 10:32:52','2021-05-10 10:32:52'),
(26,'Create contribution','2021-05-10 10:32:52','2021-05-10 10:32:52'),
(27,'View contribution statement','2021-05-10 10:32:52','2021-05-10 10:32:52'),
(30,'View account details','2021-05-10 10:58:48','2021-05-10 10:58:48'),
(31,'Create Payments','2021-05-10 11:10:55','2021-05-10 11:10:55'),
(32,'View Payments','2021-05-10 11:10:55','2021-05-10 11:10:55'),
(33,'Create loan','2021-05-10 11:22:26','2021-05-10 11:22:26'),
(34,'View loan list','2021-05-10 11:22:26','2021-05-10 11:22:26'),
(35,'Reset password','2021-05-10 14:00:21','2021-05-10 14:00:21'),
(36,'View rejected loan','2021-05-11 16:35:38','2021-05-11 16:35:50'),
(37,'View paid loan','2021-05-11 16:35:55','2021-05-11 16:36:05'),
(38,'View unpaid loan','2021-05-11 16:36:46','2021-05-11 16:36:46');

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `rejected_event_payment` */

DROP TABLE IF EXISTS `rejected_event_payment`;

CREATE TABLE `rejected_event_payment` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `payment_id` bigint(8) NOT NULL,
  `rejected_by` bigint(6) NOT NULL,
  `comment` varchar(45) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `rejected_event_payment` */

insert  into `rejected_event_payment`(`id`,`payment_id`,`rejected_by`,`comment`,`created_at`,`updated_at`) values 
(1,16,9,'not ok','2021-05-19 10:31:18','2021-05-19 10:31:18');

/*Table structure for table `rejected_loans` */

DROP TABLE IF EXISTS `rejected_loans`;

CREATE TABLE `rejected_loans` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `loan_id` bigint(6) NOT NULL,
  `rejected_by` bigint(6) NOT NULL,
  `reason` varchar(35) NOT NULL DEFAULT 'did not meet our loan criteria',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `rejected_loans` */

insert  into `rejected_loans`(`id`,`loan_id`,`rejected_by`,`reason`,`created_at`,`updated_at`) values 
(1,22,9,'did not meet our loan criteria','2021-04-17 16:11:02','2021-04-17 16:11:02'),
(2,26,9,'did not meet our loan criteria','2021-04-17 16:49:00','2021-04-17 16:49:00'),
(3,22,9,'did not meet our loan criteria','2021-04-17 16:54:08','2021-04-17 16:54:08'),
(4,26,9,'did not meet our loan criteria','2021-04-17 17:26:35','2021-04-17 17:26:35'),
(5,26,9,'did not meet our loan criteria','2021-04-25 00:12:15','2021-04-25 00:12:15'),
(6,22,9,'did not meet our loan criteria','2021-04-25 00:12:22','2021-04-25 00:12:22'),
(7,65,9,'did not meet our loan criteria','2021-05-11 15:04:04','2021-05-11 15:04:04'),
(8,74,9,'did not meet our loan criteria','2021-05-22 17:40:56','2021-05-22 17:40:56'),
(9,76,9,'did not meet our loan criteria','2021-06-13 06:01:26','2021-06-13 06:01:26'),
(10,77,9,'did not meet our loan criteria','2021-06-13 11:14:14','2021-06-13 11:14:14'),
(11,84,9,'did not meet our loan criteria','2022-03-11 19:19:48','2022-03-11 19:19:48'),
(12,78,9,'did not meet our loan criteria','2022-03-11 19:21:43','2022-03-11 19:21:43'),
(13,77,9,'did not meet our loan criteria','2022-03-11 19:21:50','2022-03-11 19:21:50');

/*Table structure for table `released_loans` */

DROP TABLE IF EXISTS `released_loans`;

CREATE TABLE `released_loans` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `loan_id` bigint(6) NOT NULL,
  `released_by` bigint(6) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `released_loans` */

insert  into `released_loans`(`id`,`loan_id`,`released_by`,`created_at`,`updated_at`) values 
(1,25,9,'2021-04-17 16:33:07.000000','2021-04-17 16:33:07.000000'),
(2,26,9,'2021-04-17 16:53:32.000000','2021-04-17 16:53:32.000000'),
(3,52,9,'2021-04-25 00:21:41.000000','2021-04-25 00:21:41.000000'),
(4,64,9,'2021-05-09 21:20:44.000000','2021-05-09 21:20:44.000000'),
(5,60,9,'2021-05-11 17:30:05.000000','2021-05-11 17:30:05.000000'),
(6,61,9,'2021-05-11 17:42:30.000000','2021-05-11 17:42:30.000000'),
(7,59,9,'2021-06-13 06:01:33.000000','2021-06-13 06:01:33.000000'),
(8,77,9,'2021-06-13 10:53:54.000000','2021-06-13 10:53:54.000000'),
(9,79,9,'2021-06-15 22:25:02.000000','2021-06-15 22:25:02.000000'),
(10,85,9,'2021-06-23 00:04:05.000000','2021-06-23 00:04:05.000000'),
(11,82,9,'2022-02-10 10:30:45.000000','2022-02-10 10:30:45.000000'),
(12,83,9,'2022-02-10 10:49:24.000000','2022-02-10 10:49:24.000000'),
(13,86,9,'2022-03-11 19:27:51.000000','2022-03-11 19:27:51.000000');

/*Table structure for table `reversed_contributions` */

DROP TABLE IF EXISTS `reversed_contributions`;

CREATE TABLE `reversed_contributions` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `contribution_id` bigint(8) NOT NULL,
  `member_id` int(11) NOT NULL,
  `amount_contributed` varchar(30) NOT NULL,
  `saving_amount` varchar(30) NOT NULL,
  `social_amount` varchar(30) NOT NULL,
  `share_contributed` double NOT NULL,
  `contribution_month` varchar(8) NOT NULL,
  `contribution_year` int(6) NOT NULL,
  `date_contributed` date NOT NULL,
  `reference_no` varchar(60) NOT NULL,
  `generated_ref_no` varchar(60) NOT NULL,
  `created_by` bigint(8) NOT NULL,
  `reversed_by` bigint(8) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `reversed_contributions` */

insert  into `reversed_contributions`(`id`,`contribution_id`,`member_id`,`amount_contributed`,`saving_amount`,`social_amount`,`share_contributed`,`contribution_month`,`contribution_year`,`date_contributed`,`reference_no`,`generated_ref_no`,`created_by`,`reversed_by`,`created_at`,`updated_at`) values 
(9,10,0,'100000','100000','0',2.5,'April',2021,'2021-04-24','ytr','AzK2104101017610817',9,9,'2021-04-24 23:46:29.084616','2021-04-26 10:58:23.374356'),
(10,22,0,'10000','0','10000',0,'April',2021,'2021-04-29','cff','T903562814',9,9,'2021-04-29 18:58:06.600810','2021-05-19 20:13:57.112757'),
(11,49,58246971,'100000','80000',' 20000',2,'January',2021,'2021-06-29','nmmmm','T596341280',9,35,'2021-06-29 20:04:15.519894','2021-08-30 21:33:17.626726');

/*Table structure for table `role_permissions` */

DROP TABLE IF EXISTS `role_permissions`;

CREATE TABLE `role_permissions` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `role_id` int(8) NOT NULL,
  `permission_id` int(8) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  PRIMARY KEY (`id`),
  KEY `permission_role_ibfk_2` (`permission_id`),
  KEY `role_permissions_ibfk_1` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=utf8mb4;

/*Data for the table `role_permissions` */

insert  into `role_permissions`(`id`,`role_id`,`permission_id`,`created_at`,`updated_at`) values 
(129,1,2,'2021-05-10 15:10:38.538329','2021-05-10 15:10:38.538329'),
(130,1,3,'2021-05-10 15:10:38.538872','2021-05-10 15:10:38.538872'),
(131,1,4,'2021-05-10 15:10:38.539155','2021-05-10 15:10:38.539155'),
(132,1,5,'2021-05-10 15:10:38.539394','2021-05-10 15:10:38.539394'),
(133,1,6,'2021-05-10 15:10:38.539711','2021-05-10 15:10:38.539711'),
(134,1,7,'2021-05-10 15:10:38.540118','2021-05-10 15:10:38.540118'),
(135,1,8,'2021-05-10 15:10:38.540400','2021-05-10 15:10:38.540400'),
(136,1,9,'2021-05-10 15:10:38.540615','2021-05-10 15:10:38.540615'),
(137,1,10,'2021-05-10 15:10:38.540817','2021-05-10 15:10:38.540817'),
(138,1,11,'2021-05-10 15:10:38.541017','2021-05-10 15:10:38.541017'),
(139,1,12,'2021-05-10 15:10:38.541225','2021-05-10 15:10:38.541225'),
(140,1,20,'2021-05-10 15:10:38.541418','2021-05-10 15:10:38.541418'),
(141,1,22,'2021-05-10 15:10:38.541612','2021-05-10 15:10:38.541612'),
(142,1,23,'2021-05-10 15:10:38.541803','2021-05-10 15:10:38.541803'),
(143,1,24,'2021-05-10 15:10:38.541997','2021-05-10 15:10:38.541997'),
(144,1,25,'2021-05-10 15:10:38.542192','2021-05-10 15:10:38.542192'),
(145,1,26,'2021-05-10 15:10:38.542372','2021-05-10 15:10:38.542372'),
(146,1,27,'2021-05-10 15:10:38.542559','2021-05-10 15:10:38.542559'),
(147,1,30,'2021-05-10 15:10:38.542739','2021-05-10 15:10:38.542739'),
(148,1,31,'2021-05-10 15:10:38.542913','2021-05-10 15:10:38.542913'),
(149,1,32,'2021-05-10 15:10:38.543130','2021-05-10 15:10:38.543130'),
(150,1,33,'2021-05-10 15:10:38.543337','2021-05-10 15:10:38.543337'),
(151,1,34,'2021-05-10 15:10:38.543544','2021-05-10 15:10:38.543544'),
(152,1,35,'2021-05-10 15:10:38.543732','2021-05-10 15:10:38.543732'),
(153,4,20,'2021-05-11 18:03:01.228907','2021-05-11 18:03:01.228907'),
(154,4,22,'2021-05-11 18:03:01.361391','2021-05-11 18:03:01.361391'),
(155,4,24,'2021-05-11 18:03:01.361741','2021-05-11 18:03:01.361741'),
(156,4,25,'2021-05-11 18:03:01.361951','2021-05-11 18:03:01.361951'),
(157,4,26,'2021-05-11 18:03:01.362140','2021-05-11 18:03:01.362140'),
(158,4,27,'2021-05-11 18:03:01.362330','2021-05-11 18:03:01.362330'),
(159,4,30,'2021-05-11 18:03:01.362515','2021-05-11 18:03:01.362515'),
(160,4,31,'2021-05-11 18:03:01.362697','2021-05-11 18:03:01.362697'),
(161,4,32,'2021-05-11 18:03:01.362874','2021-05-11 18:03:01.362874'),
(162,4,34,'2021-05-11 18:03:01.363050','2021-05-11 18:03:01.363050'),
(163,13,10,'2021-05-11 18:05:53.804481','2021-05-11 18:05:53.804481'),
(164,13,11,'2021-05-11 18:05:53.804952','2021-05-11 18:05:53.804952'),
(165,13,33,'2021-05-11 18:05:53.805208','2021-05-11 18:05:53.805208'),
(166,13,34,'2021-05-11 18:05:53.805471','2021-05-11 18:05:53.805471'),
(167,13,36,'2021-05-11 18:05:53.805762','2021-05-11 18:05:53.805762'),
(168,13,37,'2021-05-11 18:05:53.806031','2021-05-11 18:05:53.806031'),
(169,13,38,'2021-05-11 18:05:53.806296','2021-05-11 18:05:53.806296'),
(174,2,8,'2021-05-11 18:09:07.577623','2021-05-11 18:09:07.577623'),
(175,2,10,'2021-05-11 18:09:07.578312','2021-05-11 18:09:07.578312'),
(176,2,11,'2021-05-11 18:09:07.579330','2021-05-11 18:09:07.579330'),
(177,2,12,'2021-05-11 18:09:07.580511','2021-05-11 18:09:07.580511'),
(178,2,20,'2021-05-11 18:09:07.582232','2021-05-11 18:09:07.582232'),
(179,2,25,'2021-05-11 18:09:07.583203','2021-05-11 18:09:07.583203'),
(180,2,27,'2021-05-11 18:09:07.583641','2021-05-11 18:09:07.583641'),
(181,2,30,'2021-05-11 18:09:07.583897','2021-05-11 18:09:07.583897'),
(182,2,32,'2021-05-11 18:09:07.584171','2021-05-11 18:09:07.584171'),
(183,2,34,'2021-05-11 18:09:07.584398','2021-05-11 18:09:07.584398'),
(184,2,36,'2021-05-11 18:09:07.584604','2021-05-11 18:09:07.584604'),
(185,2,37,'2021-05-11 18:09:07.584807','2021-05-11 18:09:07.584807'),
(186,2,38,'2021-05-11 18:09:07.585048','2021-05-11 18:09:07.585048');

/*Table structure for table `roles` */

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `status_id` int(8) NOT NULL DEFAULT 1,
  `description` varchar(60) NOT NULL,
  `created_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5) ON UPDATE current_timestamp(5),
  `updated_at` timestamp(5) NOT NULL DEFAULT current_timestamp(5),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

/*Data for the table `roles` */

insert  into `roles`(`id`,`name`,`status_id`,`description`,`created_at`,`updated_at`) values 
(1,'Admin',1,'','2021-05-12 22:18:57.19465','2020-12-24 12:34:58.27157'),
(2,'Chairman',1,'','2021-05-12 22:22:29.45203','2020-12-24 12:38:38.36394'),
(4,' Accountant',1,'bnnmm','2021-05-12 22:19:04.04276','2021-01-01 15:23:49.33620'),
(5,'Normal User',6,'','2021-05-12 22:21:33.87810','2021-01-01 15:31:13.46852'),
(13,'Loan Officer',1,'Manage all loans','2021-05-12 22:19:09.49494','2021-01-01 16:33:58.01767'),
(17,'',1,'','2021-06-14 19:39:24.38168','2021-06-14 19:39:24.38168'),
(18,'',1,'','2021-06-14 19:39:42.12977','2021-06-14 19:39:42.12977'),
(19,'',1,'','2021-06-14 19:40:22.97190','2021-06-14 19:40:22.97190'),
(20,'',1,'','2021-06-14 19:44:32.57171','2021-06-14 19:44:32.57171'),
(21,'',1,'','2021-08-29 15:28:21.58148','2021-08-29 15:28:21.58148'),
(22,'',1,'','2021-08-29 15:28:26.87176','2021-08-29 15:28:26.87176'),
(23,'',1,'','2022-02-09 15:24:28.49267','2022-02-09 15:24:28.49267');

/*Table structure for table `sessions` */

DROP TABLE IF EXISTS `sessions`;

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sessions` */

insert  into `sessions`(`id`,`user_id`,`ip_address`,`user_agent`,`payload`,`last_activity`) values 
('c0JesMLHYOmVKIHDj2Kz4TtlCVemT3qw96qQqcio',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiM0tocTkzdVhJVXJhZVk4VFVlS0hKQjJVbURVNVFNWFZuNE1qZ3hYUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9kYXNoYm9hcmQiO319',1608133802),
('PDWTuWeKEuL83HvCAV4x4XHsoDken97E0BBxbxyJ',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.198 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiZzJHQkVobzZubWhieWZabnpuSlNTTEtsT1p3WXJnM2ZnSGtEdGdscCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1607252558);

/*Table structure for table `shares` */

DROP TABLE IF EXISTS `shares`;

CREATE TABLE `shares` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `number_of_share` varchar(60) NOT NULL,
  `value` int(60) NOT NULL,
  `status_id` int(5) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `shares` */

insert  into `shares`(`id`,`number_of_share`,`value`,`status_id`) values 
(11,'2',398883,10),
(18,'    1',40000,1);

/*Table structure for table `shares_history` */

DROP TABLE IF EXISTS `shares_history`;

CREATE TABLE `shares_history` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `share_id` int(8) NOT NULL,
  `number_of_share` varchar(60) NOT NULL,
  `value` int(60) NOT NULL,
  `status_id` int(5) NOT NULL DEFAULT 10,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `shares_history` */

insert  into `shares_history`(`id`,`share_id`,`number_of_share`,`value`,`status_id`) values 
(1,11,'        1',40000,10);

/*Table structure for table `social_contributions` */

DROP TABLE IF EXISTS `social_contributions`;

CREATE TABLE `social_contributions` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `amount_contributed` varchar(60) NOT NULL,
  `reference_no` varchar(60) NOT NULL,
  `date_contributed` date NOT NULL,
  `contribution_month` varchar(8) NOT NULL,
  `contribution_year` int(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4;

/*Data for the table `social_contributions` */

insert  into `social_contributions`(`id`,`member_id`,`amount_contributed`,`reference_no`,`date_contributed`,`contribution_month`,`contribution_year`) values 
(5,0,'2000','mmmmmm','2021-04-24','April',2021),
(6,0,'2000','drt','2021-04-26','April',2021),
(7,0,'20000','3434','2021-04-27','January',2021),
(8,0,'10000','cff','2021-04-29','April',2021),
(9,0,'8000','cffy','2021-04-29','April',2021),
(10,0,'8000','cffyy','2021-04-29','April',2021),
(11,0,'3000','mkk','2021-04-29','August',2021),
(12,71695328,' 20000','nbv','2021-05-16','2',2021),
(13,25479836,' 20000','vxvx','2021-05-20','March',2021),
(15,0,'20000','mh@c','2021-06-20','June',2021),
(16,0,' 20000','mmmmmmd','2021-06-27','May',2021),
(17,0,'20000','mh@x','2021-06-27','May',2021),
(18,25479836,' 20000','mmmmmmty','2021-06-27','May',2021),
(19,58246971,' 20000','mmmmmmcv','2021-06-27','April',2021),
(20,25479836,' 20000','mmmmmm','2021-06-29','January',2021),
(21,25479836,' 20000','78098','2021-06-29','February',2021),
(22,25479836,' 20000','ytreeee','2021-06-29','January',2021),
(23,25479836,' 20000','xe5444','2021-06-29','January',2021),
(24,25479836,' 20000','xe5444','2021-06-29','January',2021),
(26,25479836,' 20000','cccdd','2021-08-18','August',2021),
(27,71695328,' 20000','vbvbv','2021-08-18','August',2021),
(28,58246971,' 20000','mh@xd','2021-08-30','August',2021),
(29,25479836,' 20000','78098cv','2021-09-06','9',2021),
(30,25479836,' 20000','78098we','2021-12-22','12',2021),
(31,58246971,' 20000','mh@qw','2022-01-21','1',2022),
(32,25479836,' 20000','mmmmmm','2022-02-08','9',2021),
(33,58246971,' 20000','mh@','2022-02-09','9',2021),
(34,71695328,' 20000','df','2022-02-09','1',2022),
(35,27931856,' 20000','bv','2022-02-09','1',2022),
(36,58246971,' 20000','78098r','2022-02-13','2',2022),
(37,58246971,' 20000','mmmmmm','2022-02-13','2',2022),
(38,36972841,' 20000','mmmmmm','2022-02-11','2',2022),
(39,36972841,' 20000','xe5444tf','2022-02-09','1',2022),
(40,29861573,' 20000','nmmmm','2022-02-13','1',2022),
(41,29861573,' 20000','78098','2022-02-07','2',2022),
(42,29861573,' 20000','78098p','2021-12-08','10',2021),
(43,0,' 20000','78098d','2022-03-09','',2022),
(44,36972841,' 20000','mh@t','2022-03-11','3',2022),
(45,36972841,' 20000','xe5444q','2022-03-11','',2022),
(46,29861573,' 20000','mh@ss','2022-03-11','3',2021),
(47,36972841,'20000','y','2022-03-11','3',2021);

/*Table structure for table `social_fixed_amount` */

DROP TABLE IF EXISTS `social_fixed_amount`;

CREATE TABLE `social_fixed_amount` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `value` varchar(35) NOT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `social_fixed_amount` */

insert  into `social_fixed_amount`(`id`,`value`,`status_id`) values 
(5,' 20000',1);

/*Table structure for table `social_fixed_amount_history` */

DROP TABLE IF EXISTS `social_fixed_amount_history`;

CREATE TABLE `social_fixed_amount_history` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `social_fixed_amount_id` int(8) NOT NULL,
  `value` varchar(35) NOT NULL,
  `status_id` int(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

/*Data for the table `social_fixed_amount_history` */

insert  into `social_fixed_amount_history`(`id`,`social_fixed_amount_id`,`value`,`status_id`) values 
(1,1,'20000',0),
(2,3,'  20000',0),
(3,4,'30000',0);

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `status` */

insert  into `status`(`id`,`name`,`created_at`,`updated_at`) values 
(1,'Active','2020-12-31 16:43:33','2020-12-31 16:43:33'),
(2,'Pending','2020-12-31 16:43:33','2020-12-31 16:43:33'),
(3,'Approved','2020-12-31 16:43:33','2020-12-31 16:43:33'),
(4,'Rejected','2020-12-31 16:43:33','2020-12-31 16:43:33'),
(5,'Disabled','2020-12-31 16:52:09','2020-12-31 16:52:09'),
(6,'Terminated','2020-12-31 16:48:18','2020-12-31 16:48:18'),
(7,'Ongoing payment','2020-12-31 16:48:18','2020-12-31 16:48:18'),
(8,'Paid','2020-12-31 16:48:18','2020-12-31 16:48:18'),
(9,'Unpaid','2021-01-01 12:12:30','2021-01-01 12:12:30'),
(10,'Inactive','2021-04-17 20:20:50','2021-04-17 20:20:50');

/*Table structure for table `temporary_loan` */

DROP TABLE IF EXISTS `temporary_loan`;

CREATE TABLE `temporary_loan` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `loan_id` bigint(8) NOT NULL,
  `member_id` int(11) NOT NULL,
  `if_paid_in_one_month` varchar(40) NOT NULL,
  `if_paid_in_two_month` varchar(40) NOT NULL,
  `if_paid_in_three_month` varchar(40) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `temporary_loan` */

insert  into `temporary_loan`(`id`,`loan_id`,`member_id`,`if_paid_in_one_month`,`if_paid_in_two_month`,`if_paid_in_three_month`,`created_at`,`updated_at`) values 
(1,59,0,'105000','103333.5','101666.5','2021-04-29 01:19:00','2021-04-29 01:19:00'),
(2,60,0,'105000','103333.5','101666.5','2021-04-29 01:48:08','2021-04-29 01:48:08'),
(3,61,0,'105833.33333333','103889.08333333','101944.25','2021-04-29 01:48:39','2021-04-29 01:48:39'),
(6,64,0,'105000','103333.5','101666.5','2021-04-29 02:29:56','2021-04-29 02:29:56'),
(7,65,0,'105000','103333.5','101666.5','2021-04-29 02:30:39','2021-04-29 02:30:39'),
(16,74,25479836,'52916.666666667','51944.541666667','50972.125','2021-05-20 15:02:54','2021-05-20 15:02:54'),
(17,75,25479836,'103333.33333333','102222.33333333','101111','2021-05-22 17:24:08','2021-05-22 17:24:08'),
(18,76,25479836,'317500','311667.25','305832.75','2021-06-13 05:59:27','2021-06-13 05:59:27'),
(19,77,25479836,'315000','310000.5','304999.5','2021-06-13 06:40:15','2021-06-13 06:40:15'),
(20,78,71695328,'103333.33333333','102222.33333333','101111','2021-06-13 12:55:05','2021-06-13 12:55:05');

/*Table structure for table `unpaid_loans` */

DROP TABLE IF EXISTS `unpaid_loans`;

CREATE TABLE `unpaid_loans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `amount_tb_paid` varchar(255) NOT NULL,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

/*Data for the table `unpaid_loans` */

insert  into `unpaid_loans`(`id`,`member_id`,`amount_tb_paid`,`status`) values 
(1,7999,'500000','0'),
(2,4444,'60000','Unpaid'),
(3,4444,'3000000','Unpaid'),
(4,4444,'3000000','Unpaid'),
(5,7999,'3000000','Unpaid'),
(6,1111,'330000','Unpaid'),
(7,1111,'330000','Unpaid'),
(8,4444,'130000','Unpaid'),
(9,4444,'130000','Unpaid'),
(10,7999,'130000','Unpaid'),
(11,777899,'130000','Unpaid'),
(12,22222,'130000','Unpaid');

/*Table structure for table `user_levels` */

DROP TABLE IF EXISTS `user_levels`;

CREATE TABLE `user_levels` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `level_id` bigint(20) NOT NULL,
  `created_by` int(8) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_levels` */

insert  into `user_levels`(`id`,`user_id`,`level_id`,`created_by`,`created_at`,`updated_at`) values 
(2,9,2,9,'2021-04-24 13:50:58','2021-04-24 13:50:58'),
(3,9,3,9,'2021-04-24 13:51:59','2021-04-24 13:51:59'),
(7,91,2,9,'2021-06-14 19:43:08','2021-06-14 19:43:08'),
(8,35,3,9,'2021-08-29 13:02:40','2021-08-29 13:02:40'),
(9,89,1,9,'2021-08-29 13:03:09','2021-08-29 13:03:09');

/*Table structure for table `user_roles` */

DROP TABLE IF EXISTS `user_roles`;

CREATE TABLE `user_roles` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(60) NOT NULL,
  `role_id` bigint(60) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `created_by` bigint(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user_roles` */

insert  into `user_roles`(`id`,`user_id`,`role_id`,`created_at`,`updated_at`,`created_by`) values 
(19,45,2,'2021-04-25 15:27:56.690089','2021-04-25 15:27:56.690089',9),
(20,45,4,'2021-04-25 15:27:56.690359','2021-04-25 15:27:56.690359',9),
(21,45,13,'2021-04-25 15:27:56.690591','2021-04-25 15:27:56.690591',9),
(22,78,1,'2021-04-25 19:58:38.419677','2021-04-25 19:58:38.419677',9),
(23,79,5,'2021-04-25 22:45:16.159475','2021-04-25 22:45:16.159475',9),
(24,79,13,'2021-04-25 22:45:16.160209','2021-04-25 22:45:16.160209',9),
(25,80,5,'2021-04-27 02:11:05.729475','2021-04-27 02:11:05.729475',9),
(29,84,13,'2021-04-27 11:33:05.016584','2021-04-27 11:33:05.016584',9),
(30,85,13,'2021-04-27 11:34:03.307509','2021-04-27 11:34:03.307509',9),
(31,86,13,'2021-04-27 11:34:42.794871','2021-04-27 11:34:42.794871',9),
(32,87,13,'2021-04-27 11:35:30.589312','2021-04-27 11:35:30.589312',9),
(33,88,13,'2021-04-27 11:40:22.588266','2021-04-27 11:40:22.588266',9),
(37,89,13,'2021-06-06 10:42:54.645690','2021-06-06 10:42:54.645690',9),
(38,35,4,'2021-06-06 11:52:55.947351','2021-06-06 11:52:55.947351',9),
(43,91,2,'2021-06-14 19:44:32.706848','2021-06-14 19:44:32.706848',9),
(47,9,2,'2022-02-09 15:24:28.578947','2022-02-09 15:24:28.578947',9),
(48,9,4,'2022-02-09 15:24:28.579220','2022-02-09 15:24:28.579220',9),
(49,9,13,'2022-02-09 15:24:28.579405','2022-02-09 15:24:28.579405',9);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `username` varchar(35) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL,
  `token` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `status_id` int(6) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `login_num` bigint(8) NOT NULL DEFAULT 0,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`firstname`,`lastname`,`username`,`email`,`phone`,`password`,`token`,`image`,`status_id`,`created_at`,`updated_at`,`login_num`,`last_login`) values 
(9,'juma','hamis','lucks','lucksisack22@gmail.com','0759155015','$2y$10$M/MQ4DmzdfCuEHv4SwfCUubwVbMQxTdCr1ACmlYADs8TG.KFI6Zwm','','20211219_174434.jpg',1,'2021-03-28 00:11:44','2021-06-05 17:59:03',326,'2022-06-16 16:34:57'),
(10,'lucks','Isack','lizy','lucks@gmail.com','','$2y$10$arPHT9q1kroPe50e4Fv0ceTGw2wGvT/s4hLUoIUaxE0GHJJ.aabJO','','',5,'2021-03-28 00:11:44','2021-03-28 00:11:44',0,'2021-04-17 11:36:48'),
(35,'Luksford','Isack','tvvyyy','aa98@gmail.com','','$2y$10$mWAYUtNpQRRVlQ367ELkTeYZnXwovOGQ5dD32.YpI5Bv5izfy3zQu','','',1,'2021-04-12 20:50:18','2021-04-12 20:50:18',39,'2021-09-06 11:54:26'),
(45,'Baraka','Machumu','drum','baraka.machumu@simplextz.co.tz','','$2y$10$h2/vqu.czqObR2yNzfEpMu0oLc5Niw7rfJSQiHRgA5MN2Rd1wdorC','','',5,'2021-04-24 23:21:59','2021-04-24 23:21:59',0,NULL),
(89,'Izzo','Bizness','mito mingi','lucksisacyk2@gmail.com','07596155015','$2y$10$/4tikGJYAvmyse2BsaUNG.rpKGpXlmdGhYb/flQ3ouIRdyMdpQ/yq','','',1,'2021-05-10 09:42:22','2021-05-17 18:48:20',1,'2021-05-17 18:48:06'),
(91,'Dulla','Makabila','chair','lucksisack2@gmail.com','0759155015','$2y$10$h6ArpncQ/zwwM1Y6JpMl9.fzEEMnXEsfkL/xgPverG5xh5gP4tUgu','','',1,'2021-06-13 12:40:41','2021-06-13 12:43:53',3,'2021-06-13 12:55:51'),
(104,'mzee wa','kamba','kamba','lucksisack2562@gmail.com','0759155015','$bcrypt$v=98$r=10$203JWSpfAVrLtnSqi4vQqQ$JvEck4uQJyJ9UGNgANa','','',1,'2021-10-19 09:28:28','2021-10-19 09:28:28',0,NULL);

/* Procedure structure for procedure `getAllContributionsSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getAllContributionsSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllContributionsSP`()
BEGIN
select c.id, c.member_id, c.amount_contributed,  c.saving_amount, c.date_contributed,
 c.generated_ref_no, status.name as status_name, al.name as level, c.is_confirmed, m.first_name, m.second_name
 from contributions as c
 join member as m on c.member_id=m.member_id
 join status on c.status_id=status.id
 join approval_levels as al on c.level_id = al.id;
 

END */$$
DELIMITER ;

/* Procedure structure for procedure `getAllLoanSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getAllLoanSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllLoanSP`()
BEGIN
	select l.id, l.member_id, l.amount_taken, l.first_witness_id, l.second_witness_id, l.date_requested,
	l.level_id, l.total_amount_to_be_paid, status.name as status, member.first_name, member.second_name
	from loan as l join status on l.status_id = status.id left join member on l.first_witness_id=member.member_id
	where l.status_id =2 or l.status_id =3 order by l.id desc;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getAllMembersSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getAllMembersSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllMembersSP`()
BEGIN
	select m.id, m.first_name, m.second_name, m.email, m.member_id,
	 m.phone, m.date_joined, s.name as status, g.name as gender from member as m
	inner join status as s on m.status_id = s.id 
	inner join gender as g on m.gender_id=g.id;

End */$$
DELIMITER ;

/* Procedure structure for procedure `getAllSavingContributionsSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getAllSavingContributionsSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getAllSavingContributionsSP`()
Begin
    SELECT c.id, c.member_id, c.amount_contributed,c.previous_balance, c.current_balance,c.saving_amount, 
    c.social_amount, c.contribution_type_id,c.is_confirmed, c.share_contributed, c.date_contributed, c.level_id, 
    c.reference_no, status.name as status, member.first_name, member.second_name from contributions as c
    join status on c.status_id= status.id JOIN member on c.member_id = member.member_id
    WHERE c.status_id = 2 or c.status_id = 3;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getAttachementsSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getAttachementsSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getAttachementsSP`()
BEGIN
	select id, type, created_at from attachments_type;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getContributionType` */

/*!50003 DROP PROCEDURE IF EXISTS  `getContributionType` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getContributionType`()
BEGIN
	select id, name, created_at from contribution_types;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `getGenderSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getGenderSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getGenderSP`()
BEGIN
	select id, name, created_at from gender;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `getMSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getMSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getMSP`(memberId varchar(30))
BEGIN
	
	select members_account.no_of_contributions, 
                        members_account.contribution_month from
                        members_account join member on members_account.member_id =
                        member.member_id where members_account.member_id=memberId limit 1;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getRolePermissionsSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getRolePermissionsSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getRolePermissionsSP`(u_id bigint(45))
BEGIN
	
	select p.perm_name, rp.permission_id from permissions as p left join 
        role_permissions as rp on p.id=rp.permission_id 
        LEFT JOIN user_roles as ur on ur.role_id = rp.role_id 
        where ur.user_id =u_id;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `getUserRolesSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `getUserRolesSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `getUserRolesSP`(u_id bigint(60))
BEGIN
	
	SELECT ur.role_id, roles.name as role from user_roles as ur
	JOIN roles on ur.role_id = roles.id where ur.user_id=u_id;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `LoginSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `LoginSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `LoginSP`(Uname varchar(60))
BEGIN
	
	IF EXISTS(SELECT * FROM users WHERE username = Uname) then
        select 'success' as message, '0' as result_code, 
        id, firstname, lastname, email, phone, username, password, status_id, login_num, 
        last_login from users where username = Uname ;
    ELSE
         select 'Wrong username or password';
    END IF;
		
		 	


	END */$$
DELIMITER ;

/* Procedure structure for procedure `saveMemberSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `saveMemberSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `saveMemberSP`(fName varchar(35), sName varchar(35), email varchar(60), 
    m_id int(11), g_id int(2), phone varchar(20), d_joined date, attachmet int(2), 
    file_name varchar(60))
BEGIN	
	insert into member(first_name, second_name, email, member_id, gender_id, phone, date_joined,
	attachment_type_id, file_name, created_at, updated_at) 
	values(fName, sName, email, m_id, g_id, phone, d_joined, attachmet, file_name, now(), now() );
	
	
	insert into members_account(member_id, created_at, updated_at) values(m_id, now(), now());
	IF(ROW_COUNT() > 0) THEN
	SELECT 'success' AS message, '0' AS result_code;
	ELSE
	SELECT 'failed' AS message, '01' AS result_code;
	END IF;
	
	END */$$
DELIMITER ;

/* Procedure structure for procedure `viewContributionSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `viewContributionSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `viewContributionSP`(contrId bigint)
BEGIN
	SELECT c.id, c.member_id, c.amount_contributed,c.previous_balance, c.current_balance, c.saving_amount, c.social_amount, contribution_types.name as type,c.is_confirmed, c.share_contributed, c.date_contributed, c.reference_no, approval_levels.name as level,
c.approved_by, c.confirmed_by, c.checker_comment, c.approver_comment, c.contribution_year, c.date_contributed, c.reference_no, c.reference_text, c.generated_ref_no, c.created_by, c.created_at, status.name as status, member.first_name, member.second_name from contributions as c join status on c.status_id= status.id JOIN member on c.member_id = member.member_id
join contribution_types on c.contribution_type_id=contribution_types.id
JOIN approval_levels on c.level_id = approval_levels.level
    WHERE c.id = contrId;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `viewMembersSP` */

/*!50003 DROP PROCEDURE IF EXISTS  `viewMembersSP` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `viewMembersSP`(memberID int(20))
BEGIN
	SELECT m.first_name, m.second_name, m.member_id, m.email, m.phone, m.date_joined, 
	m.file_name, m.created_at, m.updated_at, s.name AS STATUS, g.name AS gender,
	ma.no_of_contributions, ma.previous_share, ma.current_share, ma.previous_balance,
	ma.current_contribution_balance, ma.previous_social_balance, ma.social_balance, ma.requested_loans,
	ma.unpaid_loan, ma.loan_amount_remained, ma.total_loan_amount, ma.created_at,
	ma.updated_at, ma.contribution_date, ma.contribution_month, ma.contribution_year
	FROM MEMBER AS m 
	 JOIN members_account AS ma ON m.member_id = ma.member_id
	 JOIN STATUS AS s ON m.status_id=s.id
	 JOIN gender AS g ON m.gender_id=g.id
	WHERE m.member_id = memberID limit 1;

END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
