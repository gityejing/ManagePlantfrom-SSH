/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_dic_treatment_method
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_treatment_method`;
CREATE TABLE `phcsmp_dic_treatment_method` (
  `treatment_ID` int(11) NOT NULL AUTO_INCREMENT,
  `treatment_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`treatment_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_treatment_method
-- ----------------------------
INSERT INTO `phcsmp_dic_treatment_method` VALUES ('1', '全部返还');
INSERT INTO `phcsmp_dic_treatment_method` VALUES ('2', '部分返还');
INSERT INTO `phcsmp_dic_treatment_method` VALUES ('3', '未返还');
