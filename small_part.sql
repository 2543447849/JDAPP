/*
Navicat MySQL Data Transfer

Source Server         : luoluo
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : text2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-10-27 17:55:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `small_part`
-- ----------------------------
DROP TABLE IF EXISTS `small_part`;
CREATE TABLE `small_part` (
  `id_img` int(11) NOT NULL AUTO_INCREMENT,
  `small_number` int(11) DEFAULT NULL,
  `small_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_img`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of small_part
-- ----------------------------
INSERT INTO `small_part` VALUES ('1', '11', '苹果');
INSERT INTO `small_part` VALUES ('2', '11', '梨');
INSERT INTO `small_part` VALUES ('3', '11', '瓜类');
INSERT INTO `small_part` VALUES ('4', '11', '猕猴桃');
INSERT INTO `small_part` VALUES ('5', '11', '柑桔柚');
INSERT INTO `small_part` VALUES ('6', '11', '更多水果');
INSERT INTO `small_part` VALUES ('7', '12', '根茎类');
INSERT INTO `small_part` VALUES ('8', '12', '叶菜类');
INSERT INTO `small_part` VALUES ('9', '12', '瓜果类');
INSERT INTO `small_part` VALUES ('10', '12', '菇菌类');
INSERT INTO `small_part` VALUES ('11', '12', '调味类');
INSERT INTO `small_part` VALUES ('12', '12', '半成品净菜');
INSERT INTO `small_part` VALUES ('13', '21', '牛肉');
INSERT INTO `small_part` VALUES ('14', '21', '羊肉');
INSERT INTO `small_part` VALUES ('15', '21', '猪肉');
INSERT INTO `small_part` VALUES ('16', '21', '内脏');
INSERT INTO `small_part` VALUES ('17', '21', '禽类');
INSERT INTO `small_part` VALUES ('18', '22', '鱼类');
INSERT INTO `small_part` VALUES ('19', '22', '虾蟹贝类');
INSERT INTO `small_part` VALUES ('20', '22', '其他水产');
INSERT INTO `small_part` VALUES ('21', '23', '鸡蛋');
INSERT INTO `small_part` VALUES ('22', '23', '鸭蛋');
INSERT INTO `small_part` VALUES ('23', '24', '牛奶');
INSERT INTO `small_part` VALUES ('24', '24', '酸奶');
INSERT INTO `small_part` VALUES ('25', '24', '加味奶');
INSERT INTO `small_part` VALUES ('26', '25', '进口牛奶');
INSERT INTO `small_part` VALUES ('27', '31', '火锅丸类');
INSERT INTO `small_part` VALUES ('28', '31', '汤圆');
INSERT INTO `small_part` VALUES ('29', '31', '水饺/混沌');
INSERT INTO `small_part` VALUES ('30', '31', '速食肉类');
INSERT INTO `small_part` VALUES ('31', '31', '冷藏米面制品');
INSERT INTO `small_part` VALUES ('32', '31', '素食蛋类');
INSERT INTO `small_part` VALUES ('33', '32', '方便面、粉');
INSERT INTO `small_part` VALUES ('34', '32', '酱菜类');
INSERT INTO `small_part` VALUES ('35', '32', '常温火腿肠');
INSERT INTO `small_part` VALUES ('36', '32', '罐头');
INSERT INTO `small_part` VALUES ('37', '32', '八宝粥');
INSERT INTO `small_part` VALUES ('38', '32', '果酱');
