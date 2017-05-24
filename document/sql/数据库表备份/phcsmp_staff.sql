/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-17 21:59:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_staff
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_staff`;
CREATE TABLE `phcsmp_staff` (
  `Staff_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_Name` varchar(255) DEFAULT NULL,
  `PassWord` varchar(255) DEFAULT NULL,
  `real_Name` varchar(255) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RegistedDate` varchar(255) DEFAULT NULL,
  `Is_Dimission` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `role_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_staff
-- ----------------------------
INSERT INTO `phcsmp_staff` VALUES ('1', 'a', 'a', null, null, null, null, null, null, null, '1');
