/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_dic_leaving_reason
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_leaving_reason`;
CREATE TABLE `phcsmp_dic_leaving_reason` (
  `leaving_ID` int(11) NOT NULL AUTO_INCREMENT,
  `leaving_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`leaving_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_leaving_reason
-- ----------------------------
INSERT INTO `phcsmp_dic_leaving_reason` VALUES ('1', '查证结束');
INSERT INTO `phcsmp_dic_leaving_reason` VALUES ('2', '刑拘');
INSERT INTO `phcsmp_dic_leaving_reason` VALUES ('3', '行政拘留');
INSERT INTO `phcsmp_dic_leaving_reason` VALUES ('4', '警告');
INSERT INTO `phcsmp_dic_leaving_reason` VALUES ('5', '罚款');
INSERT INTO `phcsmp_dic_leaving_reason` VALUES ('6', '教育');
INSERT INTO `phcsmp_dic_leaving_reason` VALUES ('7', '释放');
INSERT INTO `phcsmp_dic_leaving_reason` VALUES ('8', '其他');
