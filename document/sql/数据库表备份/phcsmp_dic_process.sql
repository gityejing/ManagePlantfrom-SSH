/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_dic_process
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_process`;
CREATE TABLE `phcsmp_dic_process` (
  `process_ID` int(11) NOT NULL AUTO_INCREMENT,
  `process_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`process_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_process
-- ----------------------------
INSERT INTO `phcsmp_dic_process` VALUES ('-1', '已离区');
INSERT INTO `phcsmp_dic_process` VALUES ('0', '其他业务');
INSERT INTO `phcsmp_dic_process` VALUES ('1', '人身安全检查');
INSERT INTO `phcsmp_dic_process` VALUES ('2', '信息采集');
INSERT INTO `phcsmp_dic_process` VALUES ('3', '询问讯问');
INSERT INTO `phcsmp_dic_process` VALUES ('4', '侯问');
INSERT INTO `phcsmp_dic_process` VALUES ('5', '出区离区登记');
