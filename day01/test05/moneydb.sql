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

 Date: 30/01/2021 20:51:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for moneydb
-- ----------------------------
DROP TABLE IF EXISTS `moneydb`;
CREATE TABLE `moneydb` (
  `NAME` varchar(8) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(20) DEFAULT NULL,
  `sex` varchar(6) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `subject` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneydb
-- ----------------------------
BEGIN;
INSERT INTO `moneydb` VALUES ('帅地瓜', 18, '山西省大同市', '女', 15000, 'java');
INSERT INTO `moneydb` VALUES ('肖丁丁', 19, '山东省青岛市', '女', 10500, 'java');
INSERT INTO `moneydb` VALUES ('盖小二', 17, '山东省淄博市', '女', 10000, 'java');
INSERT INTO `moneydb` VALUES ('杜老大', 23, '山东省济南市', '女', 9000, 'javaEE');
INSERT INTO `moneydb` VALUES ('菜菜', 24, '河北省石家庄', '女', 12000, 'javaEE');
INSERT INTO `moneydb` VALUES ('张庄稼', 32, '辽宁省大连市', '男', 9200, 'javaEE');
INSERT INTO `moneydb` VALUES ('大白', 45, '陕西省西安市', '男', 17500, 'java');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
