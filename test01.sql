/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : test01

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 26/11/2022 19:55:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '杨晓明');
INSERT INTO `user` VALUES (2, '贺安琪');
INSERT INTO `user` VALUES (3, '马睿');
INSERT INTO `user` VALUES (4, '陆杰宏');
INSERT INTO `user` VALUES (5, '秦子韬');
INSERT INTO `user` VALUES (6, '黎子异');
INSERT INTO `user` VALUES (7, '毛秀英');
INSERT INTO `user` VALUES (8, '董秀英');
INSERT INTO `user` VALUES (9, '武璐');
INSERT INTO `user` VALUES (10, '常秀英');

SET FOREIGN_KEY_CHECKS = 1;
