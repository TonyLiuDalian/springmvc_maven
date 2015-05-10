/*
SQLyog v10.2 
MySQL - 5.0.22-community-nt : Database - bkytest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bkytest` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bkytest`;

/*Table structure for table `tadd` */

DROP TABLE IF EXISTS `tadd`;

CREATE TABLE `tadd` (
  `id` varchar(36) NOT NULL default '',
  `tname` varchar(32) default NULL,
  `tpwd` varchar(32) default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `tname` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tadd` */

insert  into `tadd`(`id`,`tname`,`tpwd`) values ('0a3c146e-0e28-41b6-a1e5-568e35a712b3','admin','admin1'),('164112a9-1d01-47c3-9d71-1ff83aa02126','2','2'),('38fbc14d-9511-4851-b040-4a23d8e2fb9a','3','3'),('8eedb008-e404-4c14-899e-15ce46d9cf13','5','5'),('b3bdcd3a-7b04-4dd8-81cf-e34e67494a44','7','7'),('be970acb-ff95-4d25-8bd0-48a1139099bc','6','6'),('caeded00-1f81-46ac-9c77-f517b03a8c40','4','4'),('f38b7346-3778-4954-8ccb-3fb5926ff721','1','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
