/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-16 13:56:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_band
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_band`;
CREATE TABLE `phcsmp_band` (
  `band_ID` int(11) NOT NULL AUTO_INCREMENT,
  `remark` varchar(255) DEFAULT NULL,
  `is_Used` int(11) NOT NULL DEFAULT '0',
  `band_Type` int(11) NOT NULL,
  PRIMARY KEY (`band_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_band
-- ----------------------------
INSERT INTO `phcsmp_band` VALUES ('1', 'E20041347213006323602363', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('2', 'E2.00.41.34.72.14.02.79.13.40.8F.7D', '1', '0');
INSERT INTO `phcsmp_band` VALUES ('3', 'E2.00.30.98.91.18.02.02.15.40.79.E3', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('4', 'E2.00.41.34.72.15.00.59.20.00.46.F3', '1', '0');
INSERT INTO `phcsmp_band` VALUES ('5', 'E2.00.41.34.72.17.02.12.25.90.12.5B', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('6', 'E2.00.41.34.72.14.00.04.27.00.08.20', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('7', 'E2.00.41.34.72.14.01.42.27.50.07.41', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('8', 'E2.00.41.34.72.17.01.39.24.00.20.6C', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('9', 'E2.00.41.34.72.17.00.59.21.80.32.77', '1', '0');
INSERT INTO `phcsmp_band` VALUES ('10', 'E2.00.41.34.72.14.01.01.15.20.7C.14', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('11', 'E2.00.41.34.72.13.01.40.02.05.F4.9F', '1', '0');
INSERT INTO `phcsmp_band` VALUES ('12', 'E2.00.41.34.72.13.00.98.25.50.14.7C', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('13', 'E2.00.41.34.72.14.02.46.14.50.83.FD', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('14', 'E2.00.41.34.72.13.01.18.04.00.EB.BA', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('15', 'E2.00.41.34.72.13.00.39.22.20.2E.6F', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('16', 'E2.00.41.34.72.14.00.84.05.10.E3.FB', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('17', 'E2.00.41.34.72.13.02.18.15.20.7C.FB', '0', '0');
