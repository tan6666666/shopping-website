/*
Navicat MySQL Data Transfer

Source Server         : aa
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-12-20 16:28:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `kinds` varchar(50) NOT NULL,
  `gname` varchar(100) NOT NULL,
  `gphoto` varchar(100) NOT NULL,
  `types` varchar(100) NOT NULL,
  `producer` varchar(50) NOT NULL,
  `price` float(10,2) NOT NULL,
  `carriage` float(10,2) NOT NULL,
  `pdate` datetime NOT NULL,
  `paddress` varchar(100) NOT NULL,
  `described` varchar(200) NOT NULL,
  PRIMARY KEY (`gid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100000023 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('10000003', '苹果', '红富士', 'image\\elec\\pingguo1.jpg', '现摘陕西红富士', '红富士', '49.80', '0.00', '2018-06-08 10:41:56', '陕西', '10斤');
INSERT INTO `goods` VALUES ('10000004', '苹果', '红星', 'image\\elec\\hongxingpingguo.jpg', '红星苹果', '红星', '54.90', '0.00', '2018-06-08 10:39:10', '青岛', '10斤');
INSERT INTO `goods` VALUES ('10000005', '苹果', '澳洲青苹', 'image\\elec\\aozhouqingping.jpg', '青苹果', '澳洲青苹', '30.99', '0.00', '2018-06-08 10:36:14', '澳大利亚', '10斤');
INSERT INTO `goods` VALUES ('10000010', '苹果', '国光', 'image\\elec\\guoguangpingguo.jpg', '国光苹果', '国光', '15.59', '0.00', '2018-06-08 10:32:58', '石家庄', '10斤');
INSERT INTO `goods` VALUES ('100000006', '橘子', '砂糖橘', 'image\\elec\\shatangju.jpg', '砂糖', '砂糖橘', '20.99', '0.00', '2018-06-08 10:15:57', '四会市', '5斤');
INSERT INTO `goods` VALUES ('100000011', '橘子', '蜜桔', 'image\\elec\\miju.jpg', '蜜桔', '橘子', '35.80', '0.00', '2018-06-08 10:21:24', '广西', '5斤');
INSERT INTO `goods` VALUES ('100000019', '橘子', '贡桔', 'image\\elec\\gongju.jpg', '贡桔', '橘子', '15.80', '0.00', '2018-06-08 10:28:58', '山东', '3斤');
INSERT INTO `goods` VALUES ('100000020', '香蕉', '仙人蕉', 'image\\elec\\xianrenjiao.jpg', 'xianrejiao', '香蕉', '55.99', '0.00', '2018-06-07 17:22:50', '台湾', '10斤');
INSERT INTO `goods` VALUES ('100000021', '香蕉', '北蕉', 'image\\elec\\beijiao.jpg', '北蕉', '香蕉', '60.88', '0.00', '2018-05-07 00:00:00', '台湾', '10斤');
INSERT INTO `goods` VALUES ('100000022', '香蕉', '仙人蕉', 'image\\elec\\xianrenjiao.jpg', 'xianrejiao', '香蕉', '55.99', '0.00', '2018-06-07 17:22:50', '台湾', '10斤');

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_shoppingcart_user` (`uid`) USING BTREE,
  KEY `fk_shoppingcart_goods` (`gid`) USING BTREE,
  CONSTRAINT `fk_shoppingcart_goods` FOREIGN KEY (`gid`) REFERENCES `goods` (`gid`),
  CONSTRAINT `fk_shoppingcart_user` FOREIGN KEY (`uid`) REFERENCES `users` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('2', '1', '100000019', '1', '1');
INSERT INTO `shoppingcart` VALUES ('4', '1', '100000020', '0', '1');
INSERT INTO `shoppingcart` VALUES ('5', '1', '100000011', '0', '1');
INSERT INTO `shoppingcart` VALUES ('6', '1', '10000005', '0', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `passwd` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `lastlogin` datetime NOT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'lhz', '123456', '1234567@123.com', '2018-06-07 16:38:45');
