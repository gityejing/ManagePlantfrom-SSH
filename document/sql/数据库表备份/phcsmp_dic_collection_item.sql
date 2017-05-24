/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_dic_collection_item
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_collection_item`;
CREATE TABLE `phcsmp_dic_collection_item` (
  `item_ID` int(11) NOT NULL AUTO_INCREMENT,
  `item_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_collection_item
-- ----------------------------
INSERT INTO `phcsmp_dic_collection_item` VALUES ('1', '身份信息');
INSERT INTO `phcsmp_dic_collection_item` VALUES ('2', '指纹');
INSERT INTO `phcsmp_dic_collection_item` VALUES ('3', '血液');
INSERT INTO `phcsmp_dic_collection_item` VALUES ('4', '尿液');
