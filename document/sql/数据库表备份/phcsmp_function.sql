/*
Navicat MySQL Data Transfer

Source Server         : police
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-05-17 21:59:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_function
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_function`;
CREATE TABLE `phcsmp_function` (
  `function_id` int(11) NOT NULL AUTO_INCREMENT,
  `function_name` varchar(255) DEFAULT NULL,
  `function_desc` varchar(255) DEFAULT NULL,
  `function_parentId` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`function_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_function
-- ----------------------------
INSERT INTO `phcsmp_function` VALUES ('1', '办案区业务登记', null, '0', null);
INSERT INTO `phcsmp_function` VALUES ('2', '角色管理', null, '0', null);
INSERT INTO `phcsmp_function` VALUES ('3', '嫌疑人信息管理', null, '0', null);
INSERT INTO `phcsmp_function` VALUES ('4', '系统日志管理', null, '0', null);
INSERT INTO `phcsmp_function` VALUES ('5', '数据库管理', null, '0', null);
INSERT INTO `phcsmp_function` VALUES ('6', '系统初始化', null, '0', null);
INSERT INTO `phcsmp_function` VALUES ('7', '入区登记', null, '1', '/suspect/load');
INSERT INTO `phcsmp_function` VALUES ('8', '其他业务', null, '1', '/home/index');
INSERT INTO `phcsmp_function` VALUES ('9', '添加用户', null, '2', '/user/adduser');
INSERT INTO `phcsmp_function` VALUES ('10', '查看用户', null, '2', '/user/load');
INSERT INTO `phcsmp_function` VALUES ('11', '查看角色', null, '2', '/role/loadRole');
INSERT INTO `phcsmp_function` VALUES ('12', '入区信息查询', '', '3', '/suspectManage/load');
INSERT INTO `phcsmp_function` VALUES ('13', '录像下载失败信息', '', '3', '/suspectManage/downVideoFail');
INSERT INTO `phcsmp_function` VALUES ('14', '录像下载成功信息', '', '3', '/suspectManage/downVideoSucc');
INSERT INTO `phcsmp_function` VALUES ('15', '查看嫌疑人日志', null, '4', '/log/executeProcess?page=1');
INSERT INTO `phcsmp_function` VALUES ('16', '查看系统使用日志', null, '4', '/log/executeinfo?page=1');
INSERT INTO `phcsmp_function` VALUES ('17', '备份', null, '5', null);
INSERT INTO `phcsmp_function` VALUES ('18', '导入', null, '5', null);
INSERT INTO `phcsmp_function` VALUES ('19', '初始化配置', null, '6', '/properties/load');
INSERT INTO `phcsmp_function` VALUES ('20', '房间初始化', null, '6', '/room/load');
INSERT INTO `phcsmp_function` VALUES ('21', '读卡器初始化', null, '6', '/CardReaderManage/loadInfor');
INSERT INTO `phcsmp_function` VALUES ('22', '手环初始化', null, '6', '/band/bandFindAll');
