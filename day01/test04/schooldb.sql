/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : java24

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 30/01/2021 21:41:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for schooldb
-- ----------------------------
DROP TABLE IF EXISTS `schooldb`;
CREATE TABLE `schooldb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(3) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schooldb
-- ----------------------------
BEGIN;
INSERT INTO `schooldb` VALUES (1, '张三', '女', '体育系', 9);
INSERT INTO `schooldb` VALUES (2, '李四', '男', '外语系', 10);
INSERT INTO `schooldb` VALUES (3, '娜娜', '女', '中文系', 6);
INSERT INTO `schooldb` VALUES (4, '凯蒂', '男', '外语系', 7);
INSERT INTO `schooldb` VALUES (5, '肖鹿', '男', '表演系', 1);
INSERT INTO `schooldb` VALUES (7, '李波', '男', '银河系', 999);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
