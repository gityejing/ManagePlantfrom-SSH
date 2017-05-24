/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_dic_identifycard_type
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_identifycard_type`;
CREATE TABLE `phcsmp_dic_identifycard_type` (
  `type_ID` int(11) NOT NULL AUTO_INCREMENT,
  `type_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_identifycard_type
-- ----------------------------
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('1', '居民身份证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('2', '临时身份证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('3', '军官证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('4', '武警警官证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('5', '士兵证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('6', '军队学员证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('7', '军队文职干部证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('8', '军队离退休干部证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('9', '军队职工证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('10', '护照');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('11', '港澳同胞回乡证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('12', '港澳居民来往内地通行证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('13', '中华人民共和国来往港澳通行证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('14', '台湾居民来往大陆通行证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('15', '大陆居民往来台湾通行证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('16', '外国人居留证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('17', '外国人出入境证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('18', '外交官证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('19', '领事馆证');
INSERT INTO `phcsmp_dic_identifycard_type` VALUES ('20', '海员证');
