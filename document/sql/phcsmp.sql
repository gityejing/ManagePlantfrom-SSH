/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50553
Source Host           : localhost:3308
Source Database       : phcsmp

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-06-03 14:33:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for phcsmp_activity_record
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_activity_record`;
CREATE TABLE `phcsmp_activity_record` (
  `Activity_Record_ID` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_ID` varchar(255) DEFAULT NULL,
  `start_Time` varchar(255) DEFAULT NULL,
  `end_Time` varchar(255) DEFAULT NULL,
  `room_ID` int(11) DEFAULT NULL,
  `activity_Record` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `staffS` varchar(255) DEFAULT NULL,
  `total_record` int(11) NOT NULL DEFAULT '60',
  `fill_record` int(11) NOT NULL DEFAULT '0',
  `staff_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Activity_Record_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_activity_record
-- ----------------------------

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
INSERT INTO `phcsmp_band` VALUES ('1', 'E2004134721601870390ED9C', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('2', 'E20041347214027913408F7D', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('3', 'E200309891180202154079E3', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('4', 'E200413472150059200046F3', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('5', 'E2004134721702122590125B', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('6', 'E20041347214000427000820', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('7', 'E20041347214014227500741', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('8', 'E2004134721701392400206C', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('9', 'E20041347217005921803277', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('10', 'E20041347214010115207C14', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('11', 'E2004134721301400205F49F', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('12', 'E2004134721300982550147C', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('13', 'E200413472140246145083FD', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('14', 'E2004134721301180400EBBA', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('15', 'E20041347213003922202E6F', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('16', 'E2004134721400840510E3FB', '0', '0');
INSERT INTO `phcsmp_band` VALUES ('17', 'E20041347213021815207CFB', '0', '0');

-- ----------------------------
-- Table structure for phcsmp_belongings
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_belongings`;
CREATE TABLE `phcsmp_belongings` (
  `belongingS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_ID` varchar(255) DEFAULT NULL,
  `belonging_Number` varchar(255) DEFAULT NULL,
  `belonging_Name` varchar(255) DEFAULT NULL,
  `belonging_Character` varchar(255) DEFAULT NULL,
  `belonging_Count` int(11) DEFAULT NULL,
  `belonging_Unit` varchar(255) DEFAULT NULL,
  `keeping_ID` varchar(255) DEFAULT NULL,
  `cabinet_Number` varchar(255) DEFAULT NULL,
  `staff_ID` varchar(255) DEFAULT NULL,
  `staff_ID_Belonging` varchar(255) DEFAULT NULL,
  `room_ID` int(11) DEFAULT NULL,
  `total_record` int(11) NOT NULL DEFAULT '60',
  `fill_record` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`belongingS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_belongings
-- ----------------------------

-- ----------------------------
-- Table structure for phcsmp_cabinet
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_cabinet`;
CREATE TABLE `phcsmp_cabinet` (
  `cabinet_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cabinet_Number` varchar(255) DEFAULT NULL,
  `cabinet_Desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`cabinet_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_cabinet
-- ----------------------------
INSERT INTO `phcsmp_cabinet` VALUES ('1', '1', '');
INSERT INTO `phcsmp_cabinet` VALUES ('2', '2', '');
INSERT INTO `phcsmp_cabinet` VALUES ('3', '3', null);
INSERT INTO `phcsmp_cabinet` VALUES ('4', '4', null);
INSERT INTO `phcsmp_cabinet` VALUES ('5', '5', null);
INSERT INTO `phcsmp_cabinet` VALUES ('6', '6', null);
INSERT INTO `phcsmp_cabinet` VALUES ('7', '7', null);
INSERT INTO `phcsmp_cabinet` VALUES ('8', '8', null);
INSERT INTO `phcsmp_cabinet` VALUES ('9', '9', null);
INSERT INTO `phcsmp_cabinet` VALUES ('10', '10', null);
INSERT INTO `phcsmp_cabinet` VALUES ('11', '11', null);
INSERT INTO `phcsmp_cabinet` VALUES ('12', '12', null);
INSERT INTO `phcsmp_cabinet` VALUES ('13', '13', null);
INSERT INTO `phcsmp_cabinet` VALUES ('14', '14', null);
INSERT INTO `phcsmp_cabinet` VALUES ('15', '15', null);
INSERT INTO `phcsmp_cabinet` VALUES ('16', '16', null);
INSERT INTO `phcsmp_cabinet` VALUES ('17', '17', null);
INSERT INTO `phcsmp_cabinet` VALUES ('18', '18', null);
INSERT INTO `phcsmp_cabinet` VALUES ('19', '19', null);
INSERT INTO `phcsmp_cabinet` VALUES ('20', '20', null);

-- ----------------------------
-- Table structure for phcsmp_cardreader
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_cardreader`;
CREATE TABLE `phcsmp_cardreader` (
  `cardReader_ID` int(11) NOT NULL AUTO_INCREMENT,
  `cardReader_Name` varchar(255) DEFAULT NULL,
  `cardReader_Type` int(11) NOT NULL,
  PRIMARY KEY (`cardReader_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_cardreader
-- ----------------------------
INSERT INTO `phcsmp_cardreader` VALUES ('1', '01', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('2', '02', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('3', '03', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('4', '04', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('5', '05', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('6', '06', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('7', '07', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('8', '08', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('9', '09', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('10', '10', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('11', '11', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('12', '12', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('13', '13', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('14', '14', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('15', '15', '0');
INSERT INTO `phcsmp_cardreader` VALUES ('16', '16', '0');

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

-- ----------------------------
-- Table structure for phcsmp_dic_process
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_dic_process`;
CREATE TABLE `phcsmp_dic_process` (
  `process_ID` int(11) NOT NULL AUTO_INCREMENT,
  `process_Name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`process_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_dic_process
-- ----------------------------
INSERT INTO `phcsmp_dic_process` VALUES ('-1', '已离区');
INSERT INTO `phcsmp_dic_process` VALUES ('1', '人身安全检查');
INSERT INTO `phcsmp_dic_process` VALUES ('2', '信息采集');
INSERT INTO `phcsmp_dic_process` VALUES ('3', '询问讯问');
INSERT INTO `phcsmp_dic_process` VALUES ('4', '侯问');
INSERT INTO `phcsmp_dic_process` VALUES ('5', '出区离区登记');
INSERT INTO `phcsmp_dic_process` VALUES ('6', '入区');
INSERT INTO `phcsmp_dic_process` VALUES ('10', '其他业务');

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

-- ----------------------------
-- Table structure for phcsmp_duties
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_duties`;
CREATE TABLE `phcsmp_duties` (
  `duties_ID` int(11) NOT NULL AUTO_INCREMENT,
  `duties_Name` varchar(255) DEFAULT NULL,
  `duties_Desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`duties_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_duties
-- ----------------------------
INSERT INTO `phcsmp_duties` VALUES ('1', '超级管理员', null);
INSERT INTO `phcsmp_duties` VALUES ('2', '办案民警', null);

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

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
INSERT INTO `phcsmp_function` VALUES ('12', '所有入区信息查询', '', '3', '/suspectManage/load');
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
INSERT INTO `phcsmp_function` VALUES ('23', '部分入区信息查询', null, '3', '/suspectManage/suspecttosStaffload');

-- ----------------------------
-- Table structure for phcsmp_information_collection
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_information_collection`;
CREATE TABLE `phcsmp_information_collection` (
  `information_Collection_ID` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_ID` varchar(255) DEFAULT NULL,
  `is_Collected` varchar(255) DEFAULT NULL,
  `collected_Item` varchar(255) DEFAULT NULL,
  `is_Storaged` varchar(255) DEFAULT NULL,
  `is_Checked` varchar(255) DEFAULT NULL,
  `staff_ID` int(11) DEFAULT NULL,
  `room_ID` int(11) DEFAULT NULL,
  `ic_StartTime` varchar(255) DEFAULT NULL,
  `ic_EndTime` varchar(255) DEFAULT NULL,
  `total_record` int(11) NOT NULL DEFAULT '60',
  `fill_record` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`information_Collection_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_information_collection
-- ----------------------------

-- ----------------------------
-- Table structure for phcsmp_leave_record
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_leave_record`;
CREATE TABLE `phcsmp_leave_record` (
  `leave_Record_ID` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_ID` varchar(255) DEFAULT NULL,
  `leave_Time` varchar(255) DEFAULT NULL,
  `leave_Reason` varchar(255) DEFAULT NULL,
  `belongingS_Treatment_Method` varchar(255) DEFAULT NULL,
  `belongingS_Treatment_Record` varchar(255) DEFAULT NULL,
  `recipient_Person` varchar(255) DEFAULT NULL,
  `recipient_Person_Number` varchar(255) DEFAULT NULL,
  `treatment_Time` varchar(255) DEFAULT NULL,
  `staff_ID` varchar(255) DEFAULT NULL,
  `room_ID` int(11) DEFAULT NULL,
  `total_record` int(11) NOT NULL DEFAULT '60',
  `fill_record` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leave_Record_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_leave_record
-- ----------------------------

-- ----------------------------
-- Table structure for phcsmp_line
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_line`;
CREATE TABLE `phcsmp_line` (
  `line_Count` int(11) NOT NULL AUTO_INCREMENT,
  `line_Used` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`line_Count`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_line
-- ----------------------------
INSERT INTO `phcsmp_line` VALUES ('16', '0');

-- ----------------------------
-- Table structure for phcsmp_loginfo
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_loginfo`;
CREATE TABLE `phcsmp_loginfo` (
  `Log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Operation_Time` varchar(255) DEFAULT NULL,
  `Staff_Name` varchar(255) DEFAULT NULL,
  `Operation_Info` varchar(255) DEFAULT NULL,
  `Operation_Model` varchar(255) DEFAULT NULL,
  `Staff_ID` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Log_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_loginfo
-- ----------------------------

-- ----------------------------
-- Table structure for phcsmp_personal_check
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_personal_check`;
CREATE TABLE `phcsmp_personal_check` (
  `check_ID` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_ID` varchar(255) DEFAULT NULL,
  `self_ReportS` varchar(255) DEFAULT '',
  `check_ReportS` varchar(255) DEFAULT NULL,
  `check_Situation` varchar(255) DEFAULT NULL,
  `check_StartTime` varchar(255) DEFAULT NULL,
  `check_EndTime` varchar(255) DEFAULT NULL,
  `is_Drink` varchar(255) DEFAULT NULL,
  `is_Diseases` varchar(255) DEFAULT NULL,
  `staff_ID` varchar(255) DEFAULT NULL,
  `room_ID` int(11) DEFAULT NULL,
  `total_record` int(11) NOT NULL DEFAULT '60',
  `fill_record` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`check_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_personal_check
-- ----------------------------

-- ----------------------------
-- Table structure for phcsmp_process_log
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_process_log`;
CREATE TABLE `phcsmp_process_log` (
  `log_ID` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_ID` varchar(255) DEFAULT NULL,
  `process_ID` int(11) DEFAULT NULL,
  `start_Time` varchar(255) DEFAULT NULL,
  `end_Time` varchar(255) DEFAULT NULL,
  `staff_ID` int(11) DEFAULT NULL,
  `IP_Address` varchar(255) DEFAULT NULL,
  `suspect_active` varchar(255) DEFAULT NULL,
  `roomId` int(11) DEFAULT NULL,
  `suspected_Cause` varchar(255) DEFAULT NULL,
  `complete` int(11) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`log_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_process_log
-- ----------------------------

-- ----------------------------
-- Table structure for phcsmp_role
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_role`;
CREATE TABLE `phcsmp_role` (
  `role_ID` int(11) NOT NULL AUTO_INCREMENT,
  `role_Name` varchar(255) DEFAULT NULL,
  `role_Description` varchar(255) DEFAULT NULL,
  `is_Default_Role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_role
-- ----------------------------
INSERT INTO `phcsmp_role` VALUES ('1', '超级用户', '拥有所有的权限', '');
INSERT INTO `phcsmp_role` VALUES ('2', '办案民警', '拥有办案区业务登记和查询自己办理案件的权限', null);
INSERT INTO `phcsmp_role` VALUES ('3', '派出所所长', '拥有查询全部办案信息、管理派出所日志、数据库等功能', null);

-- ----------------------------
-- Table structure for phcsmp_rolefunction
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_rolefunction`;
CREATE TABLE `phcsmp_rolefunction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) DEFAULT NULL,
  `functionId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_rolefunction
-- ----------------------------
INSERT INTO `phcsmp_rolefunction` VALUES ('7', '1', '7');
INSERT INTO `phcsmp_rolefunction` VALUES ('8', '1', '8');
INSERT INTO `phcsmp_rolefunction` VALUES ('9', '1', '9');
INSERT INTO `phcsmp_rolefunction` VALUES ('10', '1', '10');
INSERT INTO `phcsmp_rolefunction` VALUES ('11', '1', '11');
INSERT INTO `phcsmp_rolefunction` VALUES ('12', '1', '12');
INSERT INTO `phcsmp_rolefunction` VALUES ('13', '1', '13');
INSERT INTO `phcsmp_rolefunction` VALUES ('14', '1', '14');
INSERT INTO `phcsmp_rolefunction` VALUES ('15', '1', '15');
INSERT INTO `phcsmp_rolefunction` VALUES ('16', '1', '16');
INSERT INTO `phcsmp_rolefunction` VALUES ('17', '1', '17');
INSERT INTO `phcsmp_rolefunction` VALUES ('18', '1', '18');
INSERT INTO `phcsmp_rolefunction` VALUES ('19', '1', '19');
INSERT INTO `phcsmp_rolefunction` VALUES ('20', '1', '20');
INSERT INTO `phcsmp_rolefunction` VALUES ('21', '1', '21');
INSERT INTO `phcsmp_rolefunction` VALUES ('22', '1', '22');
INSERT INTO `phcsmp_rolefunction` VALUES ('23', '1', '23');
INSERT INTO `phcsmp_rolefunction` VALUES ('26', '2', '7');
INSERT INTO `phcsmp_rolefunction` VALUES ('27', '2', '8');
INSERT INTO `phcsmp_rolefunction` VALUES ('28', '2', '23');
INSERT INTO `phcsmp_rolefunction` VALUES ('29', '3', '9');
INSERT INTO `phcsmp_rolefunction` VALUES ('30', '3', '10');
INSERT INTO `phcsmp_rolefunction` VALUES ('31', '3', '11');
INSERT INTO `phcsmp_rolefunction` VALUES ('32', '3', '12');
INSERT INTO `phcsmp_rolefunction` VALUES ('33', '3', '13');
INSERT INTO `phcsmp_rolefunction` VALUES ('34', '3', '14');
INSERT INTO `phcsmp_rolefunction` VALUES ('35', '3', '15');
INSERT INTO `phcsmp_rolefunction` VALUES ('36', '3', '16');
INSERT INTO `phcsmp_rolefunction` VALUES ('37', '3', '17');
INSERT INTO `phcsmp_rolefunction` VALUES ('38', '3', '18');

-- ----------------------------
-- Table structure for phcsmp_room
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_room`;
CREATE TABLE `phcsmp_room` (
  `room_ID` int(11) NOT NULL AUTO_INCREMENT,
  `room_Name` varchar(255) DEFAULT NULL,
  `cardReader_ID` int(11) DEFAULT NULL,
  `process_ID` int(11) DEFAULT NULL,
  `line_Number` int(11) DEFAULT NULL,
  `room_IPAddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`room_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_room
-- ----------------------------
INSERT INTO `phcsmp_room` VALUES ('1', '值班室', '1', '5', '1', '192.168.1.221');
INSERT INTO `phcsmp_room` VALUES ('2', '案情分析室', '2', '0', '2', '');
INSERT INTO `phcsmp_room` VALUES ('3', '人身安全检查室', '3', '1', '3', '192.168.1.98');
INSERT INTO `phcsmp_room` VALUES ('4', '信息采集室', '4', '2', '4', '192.168.1.99');
INSERT INTO `phcsmp_room` VALUES ('5', '侯问室1', '5', '4', '5', '');
INSERT INTO `phcsmp_room` VALUES ('6', '侯问室2', '6', '4', '6', '');
INSERT INTO `phcsmp_room` VALUES ('7', '询问室1', '7', '3', '7', '192.168.1.225');
INSERT INTO `phcsmp_room` VALUES ('8', '询问室2', '8', '3', '8', '192.168.1.226');
INSERT INTO `phcsmp_room` VALUES ('9', '询问室3', '9', '3', '9', '192.168.1.227');
INSERT INTO `phcsmp_room` VALUES ('10', '讯问室1', '10', '3', '10', '192.168.1.228');
INSERT INTO `phcsmp_room` VALUES ('11', '讯问室2', '11', '3', '11', '192.168.1.229');
INSERT INTO `phcsmp_room` VALUES ('12', '讯问室3', '12', '3', '12', '192.168.1.230');
INSERT INTO `phcsmp_room` VALUES ('13', null, '0', '0', '0', '');
INSERT INTO `phcsmp_room` VALUES ('14', null, '0', '0', '0', '');
INSERT INTO `phcsmp_room` VALUES ('15', null, '0', '0', '0', '');
INSERT INTO `phcsmp_room` VALUES ('16', null, '0', '0', '0', '');

-- ----------------------------
-- Table structure for phcsmp_staff
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_staff`;
CREATE TABLE `phcsmp_staff` (
  `Staff_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Staff_Name` varchar(255) DEFAULT NULL,
  `PassWord` varchar(255) DEFAULT NULL,
  `real_Name` varchar(255) DEFAULT NULL,
  `Sex` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `RegistedDate` varchar(255) DEFAULT NULL,
  `Is_Dimission` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Mobile` varchar(255) DEFAULT NULL,
  `role_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`Staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_staff
-- ----------------------------
INSERT INTO `phcsmp_staff` VALUES ('1', 'admin', 'admin', '超级管理员', null, null, null, null, null, null, '1');
INSERT INTO `phcsmp_staff` VALUES ('2', 'police', 'police', '办案民警', '', '', '', null, '', '', '2');
INSERT INTO `phcsmp_staff` VALUES ('3', 'manager', 'manager', '派出所所长', '', '', '', null, '', '', '3');

-- ----------------------------
-- Table structure for phcsmp_staff_in_role
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_staff_in_role`;
CREATE TABLE `phcsmp_staff_in_role` (
  `staff_ID` int(11) NOT NULL AUTO_INCREMENT,
  `role_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`staff_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_staff_in_role
-- ----------------------------
INSERT INTO `phcsmp_staff_in_role` VALUES ('1', '1');
INSERT INTO `phcsmp_staff_in_role` VALUES ('2', '2');
INSERT INTO `phcsmp_staff_in_role` VALUES ('3', '3');

-- ----------------------------
-- Table structure for phcsmp_suspect
-- ----------------------------
DROP TABLE IF EXISTS `phcsmp_suspect`;
CREATE TABLE `phcsmp_suspect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_ID` varchar(20) DEFAULT NULL,
  `band_ID` int(3) DEFAULT NULL,
  `suspect_Name` varchar(10) DEFAULT NULL,
  `birthday` varchar(30) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `type_ID` varchar(15) DEFAULT NULL,
  `nation` varchar(5) DEFAULT NULL,
  `now_address` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `identifyCard_Number` varchar(25) DEFAULT NULL,
  `suspected_Cause` varchar(25) DEFAULT NULL,
  `enter_Time` varchar(20) DEFAULT NULL,
  `staff_ID` varchar(20) DEFAULT NULL,
  `detain_Time` varchar(10) DEFAULT NULL,
  `vedio_Number` varchar(100) DEFAULT NULL,
  `total_record` int(11) NOT NULL DEFAULT '20',
  `fill_record` int(11) NOT NULL DEFAULT '0',
  `process_Now` int(11) NOT NULL DEFAULT '0',
  `room_Now` int(11) NOT NULL DEFAULT '0',
  `identityCard_Photo` varchar(4000) DEFAULT NULL,
  `frontal_Photo` varchar(8000) DEFAULT NULL,
  `sideWays_Photo` varchar(8000) DEFAULT NULL,
  `recordVideo_State` int(11) NOT NULL DEFAULT '0',
  `is_RecordVideo_DownLoad` int(11) NOT NULL DEFAULT '0',
  `cardReader_Switch` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of phcsmp_suspect
-- ----------------------------

-- ----------------------------
-- Table structure for temporary_leave
-- ----------------------------
DROP TABLE IF EXISTS `temporary_leave`;
CREATE TABLE `temporary_leave` (
  `temporary_Leave_Id` int(11) NOT NULL AUTO_INCREMENT,
  `suspect_ID` varchar(255) DEFAULT NULL,
  `tempLeave_Time` varchar(255) DEFAULT NULL,
  `tempLeave_Reason` varchar(255) DEFAULT NULL,
  `return_Time` varchar(255) DEFAULT NULL,
  `staff_ID` varchar(255) DEFAULT NULL,
  `room_ID` int(11) DEFAULT NULL,
  `manager` varchar(255) DEFAULT NULL,
  `return_staff_ID` int(11) DEFAULT NULL,
  `tempLeave_staff_ID` int(11) DEFAULT NULL,
  `tempLeave_manager` int(11) DEFAULT NULL,
  `return_manager` int(11) DEFAULT NULL,
  PRIMARY KEY (`temporary_Leave_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of temporary_leave
-- ----------------------------
