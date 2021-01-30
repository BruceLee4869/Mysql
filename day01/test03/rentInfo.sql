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

 Date: 30/01/2021 22:07:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for rentInfo
-- ----------------------------
DROP TABLE IF EXISTS `rentInfo`;
CREATE TABLE `rentInfo` (
  `type` varchar(8) DEFAULT NULL,
  `rent` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `agencyPrice` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rentInfo
-- ----------------------------
BEGIN;
INSERT INTO `rentInfo` VALUES ('主卧', 2600, 25, 1000);
INSERT INTO `rentInfo` VALUES ('两居室', 3600, 50, 800);
INSERT INTO `rentInfo` VALUES ('主卧', 2200, 26, 0);
INSERT INTO `rentInfo` VALUES ('次卧', 1800, 21, 0);
INSERT INTO `rentInfo` VALUES ('沙漠海景房', 100000000, 100000, 0);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
