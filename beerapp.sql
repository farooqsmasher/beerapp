# Host: localhost  (Version 5.7.16-log)
# Date: 2017-06-22 06:34:39
# Generator: MySQL-Front 5.4  (Build 3.4)
# Internet: http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "products"
#

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `alcohol_percent` varchar(255) DEFAULT NULL,
  `brewery_location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "products"
#

INSERT INTO `products` VALUES (1,'Kingfisher','best beer in bangalore Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.','5','Bangalore'),(2,'Budweiser','Best beer in chennaiLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.','4','Chennai'),(3,'Guiness','Best beer in ireland  Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.','5','Ireland');

#
# Structure for table "user_creds"
#

DROP TABLE IF EXISTS `user_creds`;
CREATE TABLE `user_creds` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(11) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

#
# Data for table "user_creds"
#

INSERT INTO `user_creds` VALUES (20,'106348158014043753002','106348158014043753002','W',0),(21,'test@test.com','test','M',0),(22,'106272743736884843092','106272743736884843092','W',0),(23,'mastertest@yopmail.com','123','M',0),(24,'testmaster@yopmail.com','test','M',0),(25,'viqar@yopmail.com','123','M',0),(26,'viq@yopmail.com','123','M',0),(27,'viq123@yopmail.com','123','M',0);

#
# Structure for table "user_token"
#

DROP TABLE IF EXISTS `user_token`;
CREATE TABLE `user_token` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `unique` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "user_token"
#

