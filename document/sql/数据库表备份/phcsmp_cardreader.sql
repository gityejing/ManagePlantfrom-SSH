/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_cardreader
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_cardreader`;
CREATE TABLE `phcsmp_cardreader` (
  `cardReader_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cardReader_Name` varchar(255) DEFAULT NULL,
  `cardReader_Type` int(11) NOT NULL,
  PRIMARY KEY (`cardReader_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_cardreader
-- ----------------------------
INSERT INTO `phcsmp_cardreader` VALUES ('1', '03', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('2', '02', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('3', '01', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('4', '04', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('5', '05', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('6', '06', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('7', '07', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('8', '08', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('9', '09', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('10', '10', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('11', '11', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('12', '12', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('13', '00', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('14', '14', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('15', '15', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('16', '16', '0');
