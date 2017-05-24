/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_dic_inspection_situation
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_inspection_situation`;
CREATE TABLE `phcsmp_dic_inspection_situation` (
  `situation_ID` int(11) NOT NULL AUTO_INCREMENT,
  `situation_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`situation_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_inspection_situation
-- ----------------------------
INSERT INTO `phcsmp_dic_inspection_situation` VALUES ('1', '体表有伤痕');
INSERT INTO `phcsmp_dic_inspection_situation` VALUES ('2', '有饮酒');
INSERT INTO `phcsmp_dic_inspection_situation` VALUES ('3', '有拍照');
