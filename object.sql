/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : object

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2017-07-19 20:12:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(32) NOT NULL,
  `admin_password` varchar(32) NOT NULL,
  `admin_img` varchar(255) DEFAULT NULL,
  `admin_email` varchar(32) DEFAULT NULL,
  `admin_phone` char(11) DEFAULT NULL,
  `admin_power` tinyint(4) DEFAULT '0',
  `admin_first_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'zhangsan', '21232f297a57a5a743894a0e4a801fc3', null, 'admin@lamp.com', '17610063675', '0', null);

-- ----------------------------
-- Table structure for admin_node
-- ----------------------------
DROP TABLE IF EXISTS `admin_node`;
CREATE TABLE `admin_node` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `method` varchar(8) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `state` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_node` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_node
-- ----------------------------
INSERT INTO `admin_node` VALUES ('12', '添加会员', 'get', 'admin/user/create', '1', '2017-07-03 11:24:55', null);
INSERT INTO `admin_node` VALUES ('16', '修改会员信息', 'get', 'admin/user/edit', '1', '2017-07-03 14:51:58', null);
INSERT INTO `admin_node` VALUES ('17', '普通管理员执行添加', 'post', 'admin/user', '1', '2017-07-16 11:06:57', null);
INSERT INTO `admin_node` VALUES ('18', '执行普通管理员修改', 'put', 'admin/user', '1', '2017-07-16 11:07:39', null);
INSERT INTO `admin_node` VALUES ('19', '执行普通管理员删除', 'delete', 'admin/delete', '1', '2017-07-16 11:08:14', null);
INSERT INTO `admin_node` VALUES ('20', '角色加载添加页', 'get', 'admin/role/create', '1', '2017-07-16 11:08:59', null);
INSERT INTO `admin_node` VALUES ('21', '角色执行添加', 'post', 'admin/role', '1', '2017-07-16 11:09:24', null);
INSERT INTO `admin_node` VALUES ('22', '加载角色编辑模板', 'get', 'admin/role/edit', '1', '2017-07-16 11:09:51', null);
INSERT INTO `admin_node` VALUES ('23', '执行角色修改', 'put', 'admin/role', '1', '2017-07-16 11:10:50', null);
INSERT INTO `admin_node` VALUES ('24', '角色删除操作', 'delete', 'admin//role/destroy', '1', '2017-07-16 11:11:45', null);
INSERT INTO `admin_node` VALUES ('25', '加载节点分配模板', 'get', 'admin/role/loadNode', '1', '2017-07-16 11:12:36', null);

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(16) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('27', '普通员工', '1', '2017-07-03 10:38:49', '2017-07-16 08:52:13');
INSERT INTO `admin_role` VALUES ('28', '经理', '1', '2017-07-03 10:39:05', '2017-07-16 04:47:05');

-- ----------------------------
-- Table structure for admin_user
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `name` varchar(16) DEFAULT NULL,
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `picname` varchar(255) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `role` varchar(16) DEFAULT NULL,
  `logtime` timestamp NULL DEFAULT NULL,
  `addtime` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_user` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('tina4', '20', '$2y$10$O1IaP.GYZtbWYCHgkajPhO5Xo9lI5KFi5Ps4cx6bzNn70RNXGjpi2', '10b31e21d00ce08e4caf0f39d1004f77.jpg', '15138958854', '28', '2017-07-16 12:25:20', '2017-07-16 06:49:39', '2017-07-16 09:04:49');
INSERT INTO `admin_user` VALUES ('tina1', '23', '$2y$10$APhZh3P.YL37W3Z0XOtkD.3EBGo41C4NLdvcXuP1Qp45X/knHNq6G', '8d06a6882988f41410a6edf043295075.jpg', '15138958851', '27', '2017-07-16 12:24:48', '2017-07-16 11:42:02', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for adu
-- ----------------------------
DROP TABLE IF EXISTS `adu`;
CREATE TABLE `adu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adu_title` varchar(32) DEFAULT NULL,
  `adu_img` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of adu
-- ----------------------------
INSERT INTO `adu` VALUES ('5', '美女大全', '14989256129650.jpeg', '2017-07-03 06:47:49');
INSERT INTO `adu` VALUES ('6', '美女', '14991292746146.jpeg', '2017-07-07 05:33:14');
INSERT INTO `adu` VALUES ('7', '哈喽', '19ca6776f5bb5e9478c02ed7dca7f20d.jpg', '2017-07-18 07:36:39');
INSERT INTO `adu` VALUES ('8', '山东美女', 'f64120711b3ec0d82c7a56d407dab90e.jpg', null);
INSERT INTO `adu` VALUES ('9', '北京', '0d886f64bdd50b485b2a2e97529c5a3f.jpg', null);

-- ----------------------------
-- Table structure for answer
-- ----------------------------
DROP TABLE IF EXISTS `answer`;
CREATE TABLE `answer` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ques_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `answer_content` text NOT NULL,
  `answer_state` char(1) DEFAULT '1' COMMENT '0未通过1已通过',
  `answer_img` varchar(32) DEFAULT NULL,
  `answer_inte` int(11) NOT NULL DEFAULT '0' COMMENT '点赞次数',
  `answer_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `answer_ip` varchar(16) NOT NULL,
  `answer_comments` int(11) NOT NULL DEFAULT '0' COMMENT '评论次数',
  `answer_browse` int(11) DEFAULT '0',
  `answer_adopt` int(11) DEFAULT '0',
  `answer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ques_id` (`ques_id`),
  KEY `user_id` (`user_id`),
  KEY `answer_id` (`answer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of answer
-- ----------------------------
INSERT INTO `answer` VALUES ('1', '1', '1', 'PHP是最好的语言aa', '1', null, '0', '2017-07-18 07:41:34', '127.0.0.1', '0', '0', '0', '1');
INSERT INTO `answer` VALUES ('2', '1', '2', '你妹', '0', null, '0', '2017-07-18 15:39:34', '127.0.0.1', '0', '0', '0', '2');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `answer_id` int(11) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `comment_ip` varchar(16) NOT NULL,
  `comment_id` int(11) DEFAULT NULL,
  `comment_state` char(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `answer_id` (`answer_id`),
  KEY `ques_id` (`ques_id`),
  KEY `comment_id` (`comment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '2', '1', '1', '我认为也是', '2017-07-18 15:33:23', '127.0.0.1', '1', '1');

-- ----------------------------
-- Table structure for lanmu
-- ----------------------------
DROP TABLE IF EXISTS `lanmu`;
CREATE TABLE `lanmu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `column_type` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lanmu
-- ----------------------------
INSERT INTO `lanmu` VALUES ('1', '社会');
INSERT INTO `lanmu` VALUES ('2', '军事');
INSERT INTO `lanmu` VALUES ('3', '生活');
INSERT INTO `lanmu` VALUES ('4', '情感');

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户表id',
  `log_time` varchar(32) NOT NULL DEFAULT '00:00:00',
  `log_ip` varchar(32) NOT NULL,
  `log_update` varchar(255) DEFAULT NULL,
  `logoff_time` varchar(32) NOT NULL DEFAULT '00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('1', '1', '2017-07-15 13:20:47', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('2', '1', '2017-07-16 01:57:20', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('3', '1', '2017-07-16 01:57:44', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('4', '1', '2017-07-16 03:14:12', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('5', '1', '2017-07-16 06:51:04', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('6', '1', '2017-07-16 15:31:52', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('7', '1', '2017-07-17 01:31:04', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('8', '4', '2017-07-17 05:42:06', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('9', '3', '00:00:00', '127.0.0.1', null, '1500274737');
INSERT INTO `log` VALUES ('10', '1', '2017-07-17 07:00:09', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('11', '1', '2017-07-17 07:00:20', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('12', '1', '2017-07-17 07:00:58', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('13', '1', '2017-07-17 07:01:20', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('14', '1', '2017-07-17 07:01:36', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('15', '1', '2017-07-17 07:01:55', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('16', '1', '2017-07-17 07:03:03', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('17', '3', '00:00:00', '127.0.0.1', null, '1500274995');
INSERT INTO `log` VALUES ('18', '1', '2017-07-17 07:03:54', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('19', '1', '2017-07-17 08:04:30', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('20', '3', '00:00:00', '127.0.0.1', null, '1500298576');
INSERT INTO `log` VALUES ('21', '3', '00:00:00', '127.0.0.1', null, '1500298586');
INSERT INTO `log` VALUES ('22', '3', '00:00:00', '127.0.0.1', null, '1500298594');
INSERT INTO `log` VALUES ('23', '2', '2017-07-17 13:38:42', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('24', '2', '2017-07-17 13:38:46', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('25', '2', '2017-07-17 13:39:39', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('26', '3', '00:00:00', '127.0.0.1', null, '1500298806');
INSERT INTO `log` VALUES ('27', '2', '2017-07-17 13:40:22', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('28', '3', '00:00:00', '127.0.0.1', null, '1500298826');
INSERT INTO `log` VALUES ('29', '3', '2017-07-17 13:41:36', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('30', '3', '2017-07-17 13:42:38', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('31', '1', '2017-07-17 13:46:45', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('32', '1', '2017-07-17 13:47:54', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('33', '1', '2017-07-17 13:48:02', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('34', '3', '00:00:00', '127.0.0.1', null, '1500299558');
INSERT INTO `log` VALUES ('35', '1', '2017-07-17 13:53:58', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('36', '1', '2017-07-18 06:08:51', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('37', '3', '00:00:00', '127.0.0.1', null, '1500358954');
INSERT INTO `log` VALUES ('38', '1', '2017-07-18 06:24:05', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('39', '3', '00:00:00', '127.0.0.1', null, '1500360203');
INSERT INTO `log` VALUES ('40', '2', '2017-07-18 06:44:58', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('41', '2', '2017-07-18 06:45:10', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('42', '2', '2017-07-18 06:45:23', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('43', '2', '2017-07-18 06:45:39', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('44', '3', '00:00:00', '127.0.0.1', null, '1500360384');
INSERT INTO `log` VALUES ('45', '3', '00:00:00', '127.0.0.1', null, '1500360393');
INSERT INTO `log` VALUES ('46', '1', '2017-07-18 06:46:51', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('47', '3', '00:00:00', '127.0.0.1', null, '1500361742');
INSERT INTO `log` VALUES ('48', '3', '00:00:00', '127.0.0.1', null, '1500361751');
INSERT INTO `log` VALUES ('49', '1', '2017-07-18 07:12:01', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('50', '3', '00:00:00', '127.0.0.1', null, '1500362211');
INSERT INTO `log` VALUES ('51', '1', '2017-07-18 07:19:10', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('52', '3', '00:00:00', '127.0.0.1', null, '1500362376');
INSERT INTO `log` VALUES ('53', '2', '2017-07-18 07:29:16', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('54', '3', '00:00:00', '127.0.0.1', null, '1500363029');
INSERT INTO `log` VALUES ('55', '1', '2017-07-18 07:30:58', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('56', '3', '00:00:00', '127.0.0.1', null, '1500363144');
INSERT INTO `log` VALUES ('57', '2', '2017-07-18 07:32:55', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('58', '3', '00:00:00', '127.0.0.1', null, '1500363602');
INSERT INTO `log` VALUES ('59', '1', '2017-07-18 07:40:27', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('60', '3', '00:00:00', '127.0.0.1', null, '1500363710');
INSERT INTO `log` VALUES ('61', '1', '2017-07-18 07:42:08', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('62', '3', '00:00:00', '127.0.0.1', null, '1500363778');
INSERT INTO `log` VALUES ('63', '2', '2017-07-18 07:43:15', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('64', '3', '00:00:00', '127.0.0.1', null, '1500364117');
INSERT INTO `log` VALUES ('65', '3', '2017-07-18 07:49:46', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('66', '3', '00:00:00', '127.0.0.1', null, '1500364284');
INSERT INTO `log` VALUES ('67', '4', '2017-07-18 07:53:54', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('68', '4', '2017-07-18 07:53:54', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('69', '1', '2017-07-19 08:31:56', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('70', '3', '00:00:00', '127.0.0.1', null, '1500453158');
INSERT INTO `log` VALUES ('71', '2', '2017-07-19 08:33:00', '127.0.0.1', null, '00:00:00');
INSERT INTO `log` VALUES ('72', '2', '2017-07-19 08:33:09', '127.0.0.1', null, '00:00:00');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_name` varchar(32) NOT NULL COMMENT '用户名',
  `login_email` varchar(32) DEFAULT NULL,
  `login_phone` char(11) DEFAULT NULL,
  `login_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `login_password` varchar(32) NOT NULL,
  `login_ip` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `login_name` (`login_name`),
  UNIQUE KEY `login_email` (`login_email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'qq1234567', 'qq1234567@qq.com', '14785236901', '2017-07-18 07:11:08', 'dbc6fe4900e9350a53cdbdcb39640b38', '127.0.0.1');
INSERT INTO `login` VALUES ('2', 'ww1234567', 'ww1234567@qq.com', '14723568901', '2017-07-18 07:29:03', 'dbc6fe4900e9350a53cdbdcb39640b38', '127.0.0.1');
INSERT INTO `login` VALUES ('3', 'user11', '124333@qq.com', '18049552656', '2017-07-18 07:49:28', 'e10adc3949ba59abbe56e057f20f883e', '127.0.0.1');
INSERT INTO `login` VALUES ('4', '111111', '111111@163.com', '17775343664', '2017-07-18 07:53:38', '96e79218965eb72c92a549dd5a330112', '127.0.0.1');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(32) NOT NULL,
  `notice_content` text NOT NULL,
  `notice_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('7', 'dajiahao', 'fdsjdfoijds', '2017-07-03 14:41:16', '2017-07-03 06:41:16');
INSERT INTO `notice` VALUES ('9', '十月一放假', '放假了', '2017-07-03 14:56:44', '2017-07-03 06:56:44');

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `ques_title` varchar(32) DEFAULT NULL,
  `ques_details` text,
  `ques_img` varchar(32) DEFAULT NULL,
  `ques_state` char(1) DEFAULT '1' COMMENT '0未通过1已通过',
  `ques_note` varchar(64) DEFAULT NULL COMMENT '备注',
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ques_ip` varchar(16) NOT NULL,
  `ques_inte` smallint(1) DEFAULT '0' COMMENT '悬赏积分',
  `ques_id` int(11) DEFAULT NULL,
  `lanmu_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ques_id` (`ques_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES ('1', '2', '什么编程语言最流行', 'Java c php c++ c# vb', null, '1', null, '2017-07-18 07:29:51', '127.0.0.1', '0', '1', '1');
INSERT INTO `question` VALUES ('2', '2', null, '真的', null, '1', null, '2017-07-18 07:43:51', '127.0.0.1', '0', '1', '1');
INSERT INTO `question` VALUES ('3', '4', 'PHP语言好不好', '就爱上花式虐狗', '15003645702483.jpeg', '1', null, '2017-07-18 07:56:10', '127.0.0.1', '0', '3', '1');

-- ----------------------------
-- Table structure for r_n
-- ----------------------------
DROP TABLE IF EXISTS `r_n`;
CREATE TABLE `r_n` (
  `rid` int(11) DEFAULT NULL,
  `nid` int(11) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_n
-- ----------------------------
INSERT INTO `r_n` VALUES ('28', '12', '8');
INSERT INTO `r_n` VALUES ('28', '16', '9');
INSERT INTO `r_n` VALUES ('28', '17', '10');
INSERT INTO `r_n` VALUES ('28', '18', '11');
INSERT INTO `r_n` VALUES ('28', '19', '12');
INSERT INTO `r_n` VALUES ('28', '20', '13');
INSERT INTO `r_n` VALUES ('28', '21', '14');
INSERT INTO `r_n` VALUES ('28', '22', '15');
INSERT INTO `r_n` VALUES ('28', '23', '16');
INSERT INTO `r_n` VALUES ('28', '24', '17');
INSERT INTO `r_n` VALUES ('28', '25', '18');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `login_id` int(11) NOT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `user_sex` char(1) DEFAULT '0' COMMENT '0男1女',
  `user_img` varchar(255) DEFAULT NULL,
  `user_address` varchar(64) DEFAULT NULL,
  `user_inte` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `user_age` tinyint(4) DEFAULT NULL,
  `user_fab` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', null, '0', null, null, '1', null, '0');
INSERT INTO `user` VALUES ('2', '2', null, '0', null, null, '2', null, '0');
INSERT INTO `user` VALUES ('3', '3', null, '0', null, null, '0', null, '0');
INSERT INTO `user` VALUES ('4', '4', null, '0', null, null, '1', null, '0');

-- ----------------------------
-- Table structure for u_r
-- ----------------------------
DROP TABLE IF EXISTS `u_r`;
CREATE TABLE `u_r` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of u_r
-- ----------------------------
INSERT INTO `u_r` VALUES ('4', '20', '28');
INSERT INTO `u_r` VALUES ('6', '23', '27');
