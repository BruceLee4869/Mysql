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

 Date: 30/01/2021 23:53:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sell
-- ----------------------------
DROP TABLE IF EXISTS `sell`;
CREATE TABLE `sell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(6) DEFAULT NULL,
  `sellnumbers` int(11) DEFAULT NULL,
  `sellmoney` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sell
-- ----------------------------
BEGIN;
INSERT INTO `sell` VALUES (1, '郭凤芝', 3, 900000, 8500);
INSERT INTO `sell` VALUES (2, '李清风', 1, 250000, 5000);
INSERT INTO `sell` VALUES (4, '霍币', 5, 1000000, 6800);
INSERT INTO `sell` VALUES (5, '宋明', 6, 1200000, 6000);
INSERT INTO `sell` VALUES (6, '杨洋', 2, 502000, 7000);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
