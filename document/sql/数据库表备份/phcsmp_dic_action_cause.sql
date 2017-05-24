/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:57:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_dic_action_cause
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_action_cause`;
CREATE TABLE `phcsmp_dic_action_cause` (
  `cause_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cause_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cause_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_action_cause
-- ----------------------------
INSERT INTO `phcsmp_dic_action_cause` VALUES ('1', '投案自首');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('2', '治安传唤');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('3', '刑事传唤');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('4', '据传');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('5', '刑事拘留');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('6', '取保候审');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('7', '监视居住');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('8', '逮捕');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('9', '被害人');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('10', '证人');
INSERT INTO `phcsmp_dic_action_cause` VALUES ('11', '辨认陪伴人员');
