/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_fwzl_web

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2024-02-01 23:25:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '13666666666', '123456', '管理员');

-- ----------------------------
-- Table structure for agency
-- ----------------------------
DROP TABLE IF EXISTS `agency`;
CREATE TABLE `agency` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `tx` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `gznx` varchar(255) DEFAULT NULL COMMENT '工作年限',
  `note` varchar(255) DEFAULT NULL COMMENT '个人描述',
  `cno` varchar(45) DEFAULT NULL COMMENT '身份证号',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  `qq` varchar(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL COMMENT '状态',
  `pwd` varchar(45) DEFAULT NULL COMMENT '密码',
  `agentstore` varchar(255) DEFAULT NULL COMMENT '加盟店',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of agency
-- ----------------------------
INSERT INTO `agency` VALUES ('12', '李明', '女', '20211117220219-my.jpg', '15555555555', '3', '测试', '411381199011146736', '硕士', '1728608455', '1', '123456', '德佑');
INSERT INTO `agency` VALUES ('17', '逍遥游', '1', '20211124180441-logo.jpg', '16666666666', '3', '我很喜欢这份工作', '411381199011146736', '大专', '16666666666', '1', '123456', '德佑');
INSERT INTO `agency` VALUES ('18', '逍遥游', '1', '20211124180509-logo.jpg', '13333333333', '1', '我很喜欢这份工作', '411381199011146736', '硕士', '13333333333', '1', '123456', '链家');
INSERT INTO `agency` VALUES ('19', '南京', '男', '20220221145916-timg0X19WH39.jpg', '12345678913', '3', '46654', '5465', '硕士', '6455', '1', '123456', '百业');
INSERT INTO `agency` VALUES ('20', '1', '女', '20240201222010-8c57d8c8fe6553eeeb3172e32d1db209.jpg', '17766091168', '1', '55', '11', '大专', '1', '1', '1', '德佑');
INSERT INTO `agency` VALUES ('21', '1', '女', '20240201222025-8c57d8c8fe6553eeeb3172e32d1db209.jpg', '17766033168', '1', '1', '11', '大专', '1', '1', '1', '德佑');
INSERT INTO `agency` VALUES ('22', '4', '女', '20240201222548-logo.jpg', '17746033168', '1', '4', '11', '大专', '1', '1', '1', '德佑');

-- ----------------------------
-- Table structure for gzfy
-- ----------------------------
DROP TABLE IF EXISTS `gzfy`;
CREATE TABLE `gzfy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(45) DEFAULT NULL COMMENT '我的手机号',
  `h_id` int(11) DEFAULT NULL COMMENT '关注的房源',
  `gzsj` datetime DEFAULT NULL COMMENT '关注时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of gzfy
-- ----------------------------
INSERT INTO `gzfy` VALUES ('8', '17766091168', '8', null);
INSERT INTO `gzfy` VALUES ('10', '17766091168', '8', '2026-02-01 23:30:53');
INSERT INTO `gzfy` VALUES ('12', '17766091168', '8', '2026-02-01 23:30:53');
INSERT INTO `gzfy` VALUES ('13', '17766091168', '12', '2026-02-01 23:30:53');
INSERT INTO `gzfy` VALUES ('14', '17766091168', '8', '2026-02-01 23:30:53');
INSERT INTO `gzfy` VALUES ('15', '17766091168', '9', '2026-02-01 23:30:53');
INSERT INTO `gzfy` VALUES ('16', '15581131512', '8', '2026-02-01 23:30:53');
INSERT INTO `gzfy` VALUES ('17', '12345678912', '10', '2026-02-01 23:30:53');
INSERT INTO `gzfy` VALUES ('18', '17766091168', '13', '2026-02-01 23:30:53');
INSERT INTO `gzfy` VALUES ('19', '13777777777', '9', '2024-02-01 23:13:49');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `l_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `fwbh` varchar(45) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `htype` varchar(255) DEFAULT NULL COMMENT '房源类型',
  `rtype` varchar(255) DEFAULT NULL,
  `style` varchar(255) DEFAULT NULL COMMENT '装修风格',
  `direction` varchar(45) DEFAULT NULL,
  `area` int(255) DEFAULT NULL COMMENT '朝向',
  `floor` varchar(255) DEFAULT NULL,
  `xq` varchar(45) DEFAULT NULL COMMENT '小区',
  `address` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `fbrq` date DEFAULT NULL COMMENT '发布日期',
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('8', '1', '12', '武夷绿洲27栋406', '20211113223016', '2000.00', '三室一厅', '整租', '精装修', '朝南', '82', '4/4', '武夷绿洲', '竹山路', '好得很哪', '2026-11-13', '1');
INSERT INTO `house` VALUES ('9', '1', '12', '丹桂居401', '20211117231443', '2000.00', '一室一厅', '整租', '精装修', '朝北', '25', '4/4', '丹桂居', '通江路一号', '很不错的房间', '2026-11-13', '1');
INSERT INTO `house` VALUES ('10', '1', '12', '竹山路湖景房', '20211123141940', '3000.00', '两室一厅', '整租', '普通装修', '朝南', '80', '3/4', '武夷绿洲品茗苑', '武夷绿洲竹山路附近', '房子很好', '2026-11-13', '1');
INSERT INTO `house` VALUES ('11', '3', '12', '竹山路品茗苑401', '20211123145953', '2000.00', '两室一厅', '朝南', '精装修', '整租', '58', '2/6', '武夷绿洲', '竹山路', '好房子', '2026-11-13', '0');
INSERT INTO `house` VALUES ('12', '1', '12', '竹山路301', '20211123160109', '11.00', '三室一厅', '整租', '普通装修', '朝南', '10', '4/4', '武夷绿洲品茗苑', '竹山路', '不错', '2026-11-13', '0');
INSERT INTO `house` VALUES ('13', '1', '12', '阳光家园106', '20211124181615', '2000.00', '两室一厅', '朝北', '普通装修', '合租', '10', '一楼', '阳光嘉园', '江苏省南京市通江路一号', '房源很不错', '2026-11-13', '0');
INSERT INTO `house` VALUES ('14', '3', '12', '竹山路', '20211124181920', '4000.00', '四室两厅', '朝南', '精装修', '整租', '10', '1/2', '武夷绿洲', '竹山路', '竹山路一号', '2026-11-13', '0');
INSERT INTO `house` VALUES ('15', '4', '19', '岳麓小区', '20220221152217', '1000.00', '一室一厅', '朝南', '精装修', '整租', '80', '6', '岳麓小区', '岳麓山下', '很好', '2026-11-13', '0');
INSERT INTO `house` VALUES ('18', '1', '17', '0', '20240201232420', '0.00', '一室一厅', '朝南', '精装修', '整租', '80', '1/6', '000', '陕西省大雁塔', '00', '2024-02-01', '0');

-- ----------------------------
-- Table structure for imgs
-- ----------------------------
DROP TABLE IF EXISTS `imgs`;
CREATE TABLE `imgs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fwbh` varchar(45) DEFAULT NULL,
  `img_url` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of imgs
-- ----------------------------
INSERT INTO `imgs` VALUES ('24', '20211113141500', 'my.jpg');
INSERT INTO `imgs` VALUES ('25', '20211113141500', 'logo.jpg');
INSERT INTO `imgs` VALUES ('26', '20211113141500', 'logo.jpg');
INSERT INTO `imgs` VALUES ('31', '20211113223016', '2.jpg');
INSERT INTO `imgs` VALUES ('32', '20211117231443', '8c57d8c8fe6553eeeb3172e32d1db209.jpg');
INSERT INTO `imgs` VALUES ('33', '20211117231443', 'logo.jpg');
INSERT INTO `imgs` VALUES ('34', '20211123141940', '20211123141940-湖景房1.png');
INSERT INTO `imgs` VALUES ('35', '20211123141940', '20211123141940-湖景房2.png');
INSERT INTO `imgs` VALUES ('36', '20211123141940', '20211123141940-湖景房3.png');
INSERT INTO `imgs` VALUES ('37', '20211123145953', '20211123145953-武夷绿洲1.png');
INSERT INTO `imgs` VALUES ('38', '20211123145953', '20211123145953-武夷绿洲2.png');
INSERT INTO `imgs` VALUES ('39', '20211123145953', '20211123145953-五一绿洲3.png');
INSERT INTO `imgs` VALUES ('40', '20211123160020', '20211123160020-竹山路1.png');
INSERT INTO `imgs` VALUES ('41', '20211123160020', '20211123160020-竹山路2.png');
INSERT INTO `imgs` VALUES ('42', '20211123160020', '20211123160020-竹山路3.png');
INSERT INTO `imgs` VALUES ('43', '20211123160109', '20211123160109-竹山路3.png');
INSERT INTO `imgs` VALUES ('44', '20211124181615', '20211124181615-武夷绿洲1.png');
INSERT INTO `imgs` VALUES ('45', '20211124181615', '20211124181615-竹山路1.png');
INSERT INTO `imgs` VALUES ('46', '20211124181920', '20211124181920-竹山路2.png');
INSERT INTO `imgs` VALUES ('47', '20220221152217', '20220221152217-timg0X19WH39.jpg');
INSERT INTO `imgs` VALUES ('48', '20220221152217', '20220221152217-timgHN6Z4FHH.jpg');
INSERT INTO `imgs` VALUES ('50', '20240201232420', '20240201232420-bg20.jpg');
INSERT INTO `imgs` VALUES ('51', '20240201232420', '20240201232420-bingmayong.JPG');
INSERT INTO `imgs` VALUES ('52', '20240201232420', '20240201232420-logo.jpg');
INSERT INTO `imgs` VALUES ('53', '20240201232420', '20240201232420-2.jpg');

-- ----------------------------
-- Table structure for landloard
-- ----------------------------
DROP TABLE IF EXISTS `landloard`;
CREATE TABLE `landloard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of landloard
-- ----------------------------
INSERT INTO `landloard` VALUES ('1', '李明', '123456', '女', '18888888888', '2026-10-24 21:31:38');
INSERT INTO `landloard` VALUES ('3', '逍遥游', '123456', '男', '15698745633', '2026-10-24 21:31:38');
INSERT INTO `landloard` VALUES ('4', '苏州', '123456', '男', '12345678914', '2026-10-24 21:31:38');

-- ----------------------------
-- Table structure for nav
-- ----------------------------
DROP TABLE IF EXISTS `nav`;
CREATE TABLE `nav` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `px` int(2) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of nav
-- ----------------------------
INSERT INTO `nav` VALUES ('4', '关于我们', 'CommonServlet?action=toAbout', '关于我们', '6');
INSERT INTO `nav` VALUES ('5', '申请房产中介', 'CommonServlet?action=toAgencyRegiste', '网站首页导航栏可以进行跳转', null);
INSERT INTO `nav` VALUES ('6', '首页', 'CommonServlet?action=toWebsite', '跳转到首页', '1');
INSERT INTO `nav` VALUES ('9', '联系我们', 'CommonServlet?action=toContact', '跳转到联系我们的界面', '6');
INSERT INTO `nav` VALUES ('10', '更多房源', 'CommonServlet?action=moreHouse', '可以浏览更多房源', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `realname` varchar(45) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '13777777777', '123456', '逍遥游', '男', '李明', '2026-10-24 21:31:38');
INSERT INTO `user` VALUES ('4', '13042356854', '123456', '32234', '男', '二', '2026-10-24 21:31:38');
INSERT INTO `user` VALUES ('6', '12345678912', '123456', '库里', '男', '库里', '2026-10-24 21:31:38');

-- ----------------------------
-- Table structure for yykf
-- ----------------------------
DROP TABLE IF EXISTS `yykf`;
CREATE TABLE `yykf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(11) DEFAULT NULL,
  `h_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of yykf
-- ----------------------------
INSERT INTO `yykf` VALUES ('8', '17766091168', '8', '12', '2', '2026-10-24 21:31:38');
INSERT INTO `yykf` VALUES ('10', '12345678912', '10', '12', '2', '2026-10-24 21:31:38');
INSERT INTO `yykf` VALUES ('11', '12345678912', '15', '19', '2', '2026-10-24 21:31:38');
INSERT INTO `yykf` VALUES ('12', '17766091168', '9', '12', '2', '2026-10-24 21:31:38');
INSERT INTO `yykf` VALUES ('13', '13777777777', '13', '12', '1', '2024-02-01 23:13:59');
