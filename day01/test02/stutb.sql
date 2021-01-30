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

 Date: 30/01/2021 23:26:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for stutb
-- ----------------------------
DROP TABLE IF EXISTS `stutb`;
CREATE TABLE `stutb` (
  `name` varchar(5) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `sex` varchar(5) DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stutb
-- ----------------------------
BEGIN;
INSERT INTO `stutb` VALUES ('张三丰', 103, '男', 'IOS就业班', 100);
INSERT INTO `stutb` VALUES ('李峰', 23, '男', 'IOS基础班', 90);
INSERT INTO `stutb` VALUES ('田甜', 23, '女', 'UI基础班', 80);
INSERT INTO `stutb` VALUES ('朱迪', 18, '女', 'javaEE基础班', 90);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
