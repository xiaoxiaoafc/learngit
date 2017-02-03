/*
Navicat MySQL Data Transfer

Source Server         : cheng
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : small_sell_db

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-02-03 16:15:06
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '操作表',
  `meun_name` varchar(100) NOT NULL COMMENT '操作名称',
  `url` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO menu VALUES ('1', '基础信息维护', 'www.baidu.com', '0');
INSERT INTO menu VALUES ('2', '商品类型管理', 'www', '1');
INSERT INTO menu VALUES ('3', '商品管理', 'www.baidu.com', '1');
INSERT INTO menu VALUES ('4', '交易信息维护', 'www.baidu.com', '0');
INSERT INTO menu VALUES ('5', '商品交易查询', 'www.baidu.com', '4');
INSERT INTO menu VALUES ('6', '立马需要', 'www.baidu.com', '4');
INSERT INTO menu VALUES ('7', '权限管理', 'www.baidu.com', '0');
INSERT INTO menu VALUES ('8', '菜单管理', 'menu/list', '7');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色表',
  `role_name` varchar(20) DEFAULT NULL COMMENT '角色名称',
  `descn` varchar(100) DEFAULT NULL COMMENT '描述',
  `status` int(11) DEFAULT NULL COMMENT '状态 0启用 1 禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO role VALUES ('1', '基础信息维护', '维护网站商品，商品类型等的基础消息', '0');
INSERT INTO role VALUES ('2', '交易管理员', '交易管理', '0');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色菜单表',
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `menu_id` (`menu_id`),
  CONSTRAINT `role_menu_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `role_menu_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO role_menu VALUES ('1', '1', '1');
INSERT INTO role_menu VALUES ('2', '1', '2');
INSERT INTO role_menu VALUES ('3', '1', '3');
INSERT INTO role_menu VALUES ('4', '2', '4');
INSERT INTO role_menu VALUES ('5', '2', '5');
INSERT INTO role_menu VALUES ('6', '2', '6');
INSERT INTO role_menu VALUES ('7', '2', '7');
INSERT INTO role_menu VALUES ('8', '2', '8');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户表',
  `user_name` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(40) DEFAULT NULL COMMENT '密码',
  `descn` varchar(100) DEFAULT NULL COMMENT '描述',
  `status` int(11) DEFAULT NULL COMMENT '状态 0启用 1 禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('1', '小a', 'E10ADC3949BA59ABBE56E057F20F883E', null, '0');

-- ----------------------------
-- Table structure for `user_role`
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户角色表',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `role_id` int(11) DEFAULT NULL COMMENT '角色id',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO user_role VALUES ('1', '1', '1');
INSERT INTO user_role VALUES ('2', '1', '2');
