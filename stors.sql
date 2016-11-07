/*
Navicat MySQL Data Transfer

Source Server         : luoluo
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : text2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-10-28 15:26:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `stors`
-- ----------------------------
DROP TABLE IF EXISTS `stors`;
CREATE TABLE `stors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_name` varchar(255) DEFAULT NULL,
  `give_time` varchar(255) DEFAULT NULL,
  `store_head` varchar(255) DEFAULT NULL,
  `store_rank` int(11) DEFAULT NULL,
  `store_sale` varchar(255) DEFAULT NULL,
  `store_activity` varchar(255) DEFAULT NULL,
  `store_dada` int(11) DEFAULT NULL,
  `store_i` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stors
-- ----------------------------
INSERT INTO `stors` VALUES ('1', '电果网-马驹桥店', '61分钟', 'shop1/1.jpg', '5', '927', '电果网全场满减 49减10', '1', '1');
INSERT INTO `stors` VALUES ('2', '多隆超市-马驹桥店', '50分钟', 'shop2/1.jpg', '5', '1470', null, '1', '0');
INSERT INTO `stors` VALUES ('3', '福瑞宏达大药房-马驹桥店', '41分钟', 'shop3/1.jpg', '5', '304', '全天24小时送药,1小时送达', '1', '1');
INSERT INTO `stors` VALUES ('4', '超市发', '41分钟', 'shop4/1.png', '5', '274', '', '1', '0');
INSERT INTO `stors` VALUES ('5', '味多美-定海园店', '38分钟', 'shop5/1.jpg', '5', '246', '', '1', '0');
INSERT INTO `stors` VALUES ('6', '111医药馆-经海路...', '38分钟', 'shop6/1.jpg', '5', '147', '要健康！要美丽！要时尚！', '1', '1');
INSERT INTO `stors` VALUES ('7', '萝先生优质生鲜-科...', '47分钟', 'shop7/1.jpg', '5', '380', '萝鲜生，爆款商品，款款低价，快来抢购~', '1', '1');
INSERT INTO `stors` VALUES ('8', '花里花外鲜花-北京店', '3小时', 'shop8/1.jpg', '5', '622', '鲜花上新，敬请关注~', '0', '1');
