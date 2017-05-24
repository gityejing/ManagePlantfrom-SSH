/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_dic_keeping_way
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_keeping_way`;
CREATE TABLE `phcsmp_dic_keeping_way` (
  `keeping_ID` int(11) NOT NULL AUTO_INCREMENT,
  `keeping_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`keeping_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_keeping_way
-- ----------------------------
INSERT INTO `phcsmp_dic_keeping_way` VALUES ('1', '扣押');
INSERT INTO `phcsmp_dic_keeping_way` VALUES ('2', '暂存');
INSERT INTO `phcsmp_dic_keeping_way` VALUES ('3', '代保管');
