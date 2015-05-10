# Host: localhost  (Version: 5.5.40)
# Date: 2015-01-07 11:55:01
# Generator: MySQL-Front 5.3  (Build 4.120)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "people"
#

DROP TABLE IF EXISTS `people`;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `salary` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "people"
#

INSERT INTO `people` VALUES (1,'lxd1',32,99999.98);

#
# Structure for table "tadd"
#

DROP TABLE IF EXISTS `tadd`;
CREATE TABLE `tadd` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `tname` varchar(32) DEFAULT NULL,
  `tpwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tname` (`tname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tadd"
#

INSERT INTO `tadd` VALUES ('0a3c146e-0e28-41b6-a1e5-568e35a712b3','admin','admin1'),('164112a9-1d01-47c3-9d71-1ff83aa02126','2','2'),('38fbc14d-9511-4851-b040-4a23d8e2fb9a','3','3'),('8eedb008-e404-4c14-899e-15ce46d9cf13','5','5'),('b3bdcd3a-7b04-4dd8-81cf-e34e67494a44','7','7'),('be970acb-ff95-4d25-8bd0-48a1139099bc','6','6'),('caeded00-1f81-46ac-9c77-f517b03a8c40','4','4'),('f38b7346-3778-4954-8ccb-3fb5926ff721','1','1');
