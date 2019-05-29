/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : db_library

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 06/05/2019 16:51:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_bookinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_bookinfo`;
CREATE TABLE `tb_bookinfo`  (
  `ISBN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `typeId` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `writer` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `translator` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publisher` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double(30, 2) NULL DEFAULT NULL,
  `bookname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_bookinfo
-- ----------------------------
INSERT INTO `tb_bookinfo` VALUES ('1233212312321', '4', '邹鑫', '无', '***出版社', '2019-4-2', 39.00, '构建之法');
INSERT INTO `tb_bookinfo` VALUES ('3123466950985', '5', '王晓东', '王东东', '**信息出版社', '2019-4-2', 40.00, '移动开发');
INSERT INTO `tb_bookinfo` VALUES ('5245241673421', '6', '斯蒂芬·霍金', '吴忠超', '**信息出版社', '2010-4-24', 50.00, '大设计');
INSERT INTO `tb_bookinfo` VALUES ('5123423424256', '6', '加来道雄', '伍义生', '***出版社', '2011-5-22', 45.00, '平行宇宙');
INSERT INTO `tb_bookinfo` VALUES ('3123132453123', '6', '史蒂芬·霍金', '许明贤', '***出版社', '2009-1-24', 70.00, '时间简史');
INSERT INTO `tb_bookinfo` VALUES ('3123148675938', '7', '许慎', '无', '**信息出版社', '2019-4-24', 30.00, '画说汉字');
INSERT INTO `tb_bookinfo` VALUES ('3847295017483', '7', '林西莉', '李之义', '***出版社', '2019-4-24', 35.00, '汉字王国');
INSERT INTO `tb_bookinfo` VALUES ('2749375027172', '8', '乔汉娜贝斯福', '无', '***出版社', '2013-6-1', 26.00, '秘密花园');
INSERT INTO `tb_bookinfo` VALUES ('5729472948317', '8', '飞乐鸟', '无', '***小型出版社', '2012-3-24', 34.00, '花之绘');
INSERT INTO `tb_bookinfo` VALUES ('5749273917381', '8', '希文·巴内特', '张坚', '**大型出版社', '2016-2-8', 36.00, '艺术写作简明指南');
INSERT INTO `tb_bookinfo` VALUES ('3758274917483', '9', '柴静', '无', '**信息出版社', '2015-2-20', 39.80, '看见');
INSERT INTO `tb_bookinfo` VALUES ('4738294719271', '4', '三毛', '无', '**信息出版社', '2010-3-1', 32.00, '撒哈拉的故事');

-- ----------------------------
-- Table structure for tb_booklost
-- ----------------------------
DROP TABLE IF EXISTS `tb_booklost`;
CREATE TABLE `tb_booklost`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `bookISBN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `losedate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookexist` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `finddate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_booklost
-- ----------------------------
INSERT INTO `tb_booklost` VALUES (1, '4738294719271', '2019-4-28', '0', 'admin', '2019-4-28');

-- ----------------------------
-- Table structure for tb_booktype
-- ----------------------------
DROP TABLE IF EXISTS `tb_booktype`;
CREATE TABLE `tb_booktype`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `days` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `fk` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_booktype
-- ----------------------------
INSERT INTO `tb_booktype` VALUES (4, '文学类', '10', '1.0');
INSERT INTO `tb_booktype` VALUES (5, '学术类', '15', '2.0');
INSERT INTO `tb_booktype` VALUES (6, '科学类', '5', '0.5');
INSERT INTO `tb_booktype` VALUES (7, '语言类', '10', '0.2');
INSERT INTO `tb_booktype` VALUES (8, '艺术类', '10', '0.5');
INSERT INTO `tb_booktype` VALUES (9, '文化类', '12', '0.3');

-- ----------------------------
-- Table structure for tb_borrow
-- ----------------------------
DROP TABLE IF EXISTS `tb_borrow`;
CREATE TABLE `tb_borrow`  (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `bookISBN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `readerISBN` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `num` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `borrowDate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `backDate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bookName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operatorId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isback` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_borrow
-- ----------------------------
INSERT INTO `tb_borrow` VALUES (7, '3123466950985', '3123321321321', NULL, '2019-04-02 04:07:12', '2019-04-17 04:07:12', NULL, '1', 0);
INSERT INTO `tb_borrow` VALUES (8, '1233212312321', '4213213213431', NULL, '2019-04-03 09:38:34', '2019-04-13 09:38:34', NULL, '1', 1);
INSERT INTO `tb_borrow` VALUES (15, '1233212312321', '4213213213431', NULL, '2019-04-15 12:13:09', '2019-04-25 12:13:09', NULL, '1', 1);
INSERT INTO `tb_borrow` VALUES (16, '1231231231231', '3123321321321', NULL, '2019-04-15 02:50:38', '2019-04-30 02:50:38', NULL, '1', 0);
INSERT INTO `tb_borrow` VALUES (17, '3123148675938', '4213213213431', NULL, '2019-04-25 10:11:56', '2019-05-05 10:11:56', NULL, '1', 1);
INSERT INTO `tb_borrow` VALUES (18, '2749375027172', '3123321321321', NULL, '2019-04-25 10:12:49', '2019-05-05 10:12:49', NULL, '1', 1);
INSERT INTO `tb_borrow` VALUES (19, '2749375027172', '4213213213431', NULL, '2019-04-25 10:13:27', '2019-05-05 10:13:27', NULL, '1', 1);
INSERT INTO `tb_borrow` VALUES (20, '2749375027172', '4213213213431', NULL, '2019-04-25 10:14:08', '2019-05-05 10:14:08', NULL, '1', 1);

-- ----------------------------
-- Table structure for tb_donate
-- ----------------------------
DROP TABLE IF EXISTS `tb_donate`;
CREATE TABLE `tb_donate`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ISBN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `donator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_donate
-- ----------------------------
INSERT INTO `tb_donate` VALUES (1, '3123466950985', '2019-4-11', 'admin', '1231', '16765263547');
INSERT INTO `tb_donate` VALUES (2, '1231231231231', '2019-4-15', 'admin', '100', '13221232123');
INSERT INTO `tb_donate` VALUES (3, '1231231231232', '2019-4-15', 'admin', '110', '32123123212');

-- ----------------------------
-- Table structure for tb_operator
-- ----------------------------
DROP TABLE IF EXISTS `tb_operator`;
CREATE TABLE `tb_operator`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `grade` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(20) NULL DEFAULT NULL,
  `identityCard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `workdate` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_operator
-- ----------------------------
INSERT INTO `tb_operator` VALUES (1, 'admin', NULL, '1234', '1', '2', 12, '123123123123132', '2018-05-06', '12321232123');

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`  (
  `ISBN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `operator` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `checkAndAccept` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zk` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_penalty
-- ----------------------------
DROP TABLE IF EXISTS `tb_penalty`;
CREATE TABLE `tb_penalty`  (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `bookISBN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `readerISBN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `penalty` double(50, 0) NULL DEFAULT NULL,
  `length` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_penalty
-- ----------------------------
INSERT INTO `tb_penalty` VALUES (1, '1233212312321', '3123321321321', '2019-04-02 04:07:12', 10, 4);
INSERT INTO `tb_penalty` VALUES (19, '3123466950985', '3123321321321', '2019-04-23 09:39:14', 12, 6);

-- ----------------------------
-- Table structure for tb_reader
-- ----------------------------
DROP TABLE IF EXISTS `tb_reader`;
CREATE TABLE `tb_reader`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `identityCard` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maxNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keepMoney` double(50, 0) NULL DEFAULT NULL,
  `zj` int(50) NULL DEFAULT NULL,
  `zy` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bztime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ISBN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_reader
-- ----------------------------
INSERT INTO `tb_reader` VALUES ('小红', '2', '20', '3101051999120', '2020-4-1', '12', '13509827362', 100, 3, '销售员', '2019-4-2', '4213213213431');
INSERT INTO `tb_reader` VALUES ('叨叨', '2', '21', '3213213213213', '2020-4-1', '20', '18952938204', 200, 0, '程序员', '2019-4-2', '3123321321321');

SET FOREIGN_KEY_CHECKS = 1;
