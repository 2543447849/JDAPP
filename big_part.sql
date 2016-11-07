/*
Navicat MySQL Data Transfer

Source Server         : luoluo
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : text2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2016-10-27 17:54:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `big_part`
-- ----------------------------
DROP TABLE IF EXISTS `big_part`;
CREATE TABLE `big_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of big_part
-- ----------------------------
INSERT INTO `big_part` VALUES ('1', '水果蔬菜');
INSERT INTO `big_part` VALUES ('2', '肉禽蛋奶');
INSERT INTO `big_part` VALUES ('3', '冷热速食');
INSERT INTO `big_part` VALUES ('4', '休闲食品');
INSERT INTO `big_part` VALUES ('5', '酒水饮料');
INSERT INTO `big_part` VALUES ('6', '粮油调味');
INSERT INTO `big_part` VALUES ('7', '清洁日化');
INSERT INTO `big_part` VALUES ('8', '家居用品');
INSERT INTO `big_part` VALUES ('9', '鲜花蛋糕');
INSERT INTO `big_part` VALUES ('10', '医药健康');
INSERT INTO `big_part` VALUES ('11', '上门服务');

-- ----------------------------
-- Table structure for `middle_part`
-- ----------------------------
DROP TABLE IF EXISTS `middle_part`;
CREATE TABLE `middle_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `part_num` int(11) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `small_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of middle_part
-- ----------------------------
INSERT INTO `middle_part` VALUES ('1', '1', '水果', '11');
INSERT INTO `middle_part` VALUES ('2', '1', '蔬菜', '12');
INSERT INTO `middle_part` VALUES ('3', '2', '牛羊猪禽', '21');
INSERT INTO `middle_part` VALUES ('4', '2', '水产海鲜', '22');
INSERT INTO `middle_part` VALUES ('5', '2', '蛋类', '23');
INSERT INTO `middle_part` VALUES ('6', '2', '奶制品', '24');
INSERT INTO `middle_part` VALUES ('7', '2', '进口乳制品', '25');
INSERT INTO `middle_part` VALUES ('8', '3', '低温速食', '31');
INSERT INTO `middle_part` VALUES ('9', '3', '常温速食', '32');
INSERT INTO `middle_part` VALUES ('10', '4', '休闲零食', '41');
INSERT INTO `middle_part` VALUES ('11', '4', '饼干/糕点', '42');
INSERT INTO `middle_part` VALUES ('12', '4', '进口休闲食品', '43');
INSERT INTO `middle_part` VALUES ('13', '5', '酒', '51');
INSERT INTO `middle_part` VALUES ('14', '5', '饮料', '52');
INSERT INTO `middle_part` VALUES ('15', '5', '冲调类', '53');
INSERT INTO `middle_part` VALUES ('16', '5', '进口冲饮', '54');
INSERT INTO `middle_part` VALUES ('17', '5', '进口酒水饮料', '55');
INSERT INTO `middle_part` VALUES ('18', '6', '米面杂粮', '61');
INSERT INTO `middle_part` VALUES ('19', '6', '油', '62');
INSERT INTO `middle_part` VALUES ('20', '6', '调味品', '63');
INSERT INTO `middle_part` VALUES ('21', '6', '干货', '64');
INSERT INTO `middle_part` VALUES ('22', '7', '面部护理', '71');
INSERT INTO `middle_part` VALUES ('23', '7', '身体护理', '72');
INSERT INTO `middle_part` VALUES ('24', '7', '洗发护发', '73');
INSERT INTO `middle_part` VALUES ('25', '7', '口腔洗浴', '74');
INSERT INTO `middle_part` VALUES ('26', '7', '衣物护理', '75');
INSERT INTO `middle_part` VALUES ('27', '7', '厨卫清洁', '76');
INSERT INTO `middle_part` VALUES ('28', '7', '进口个人洗护', '77');
INSERT INTO `middle_part` VALUES ('29', '8', '家用电器', '81');
INSERT INTO `middle_part` VALUES ('30', '8', '厨具', '82');
INSERT INTO `middle_part` VALUES ('31', '8', '纸品湿巾', '83');
INSERT INTO `middle_part` VALUES ('32', '8', '一次性用品', '84');
INSERT INTO `middle_part` VALUES ('33', '9', '鲜花', '91');
INSERT INTO `middle_part` VALUES ('34', '9', '绿植多肉', '92');
INSERT INTO `middle_part` VALUES ('35', '9', '蛋糕', '93');
INSERT INTO `middle_part` VALUES ('36', '9', '礼品', '94');
INSERT INTO `middle_part` VALUES ('37', '10', '中西药品', '101');
INSERT INTO `middle_part` VALUES ('38', '10', '营养保健', '102');
INSERT INTO `middle_part` VALUES ('39', '10', '家用器械', '103');
INSERT INTO `middle_part` VALUES ('40', '10', '计生用品 ', '104');
INSERT INTO `middle_part` VALUES ('41', '10', '眼睛', '105');
INSERT INTO `middle_part` VALUES ('42', '10', '健康服务', '106');
INSERT INTO `middle_part` VALUES ('43', '11', '家政保洁', '111');
INSERT INTO `middle_part` VALUES ('44', '11', '家电清洗', '112');
INSERT INTO `middle_part` VALUES ('45', '11', '洗衣洗鞋', '113');
INSERT INTO `middle_part` VALUES ('46', '11', '生活周边', '114');
INSERT INTO `middle_part` VALUES ('47', '11', '母婴护理', '115');
INSERT INTO `middle_part` VALUES ('48', '11', '按摩美业', '116');
INSERT INTO `middle_part` VALUES ('49', '11', '安装维修', '117');
INSERT INTO `middle_part` VALUES ('50', '11', '汽车服务', '118');

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
