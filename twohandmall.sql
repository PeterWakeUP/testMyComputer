/*
Navicat MySQL Data Transfer

Source Server         : link
Source Server Version : 50615
Source Host           : localhost:3306
Source Database       : twohandmall

Target Server Type    : MYSQL
Target Server Version : 50615
File Encoding         : 65001

Date: 2018-03-01 00:45:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `carousel`
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `Carousel_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Object_ID` int(11) NOT NULL,
  `Object_Type` varchar(10) NOT NULL,
  `Carousel_State` varchar(10) NOT NULL,
  `Carousel_CreateTime` datetime NOT NULL,
  PRIMARY KEY (`Carousel_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('1', '1', 'good', 'active', '2018-02-27 16:30:01');
INSERT INTO `carousel` VALUES ('2', '2', 'good', 'active', '2018-02-27 16:32:50');
INSERT INTO `carousel` VALUES ('3', '4', 'good', 'active', '2018-02-27 16:33:00');

-- ----------------------------
-- Table structure for `collection`
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection` (
  `Collection_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Target_ID` int(11) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Type` varchar(10) NOT NULL,
  PRIMARY KEY (`Collection_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES ('1', '1', '6', 'goods');

-- ----------------------------
-- Table structure for `exchanges`
-- ----------------------------
DROP TABLE IF EXISTS `exchanges`;
CREATE TABLE `exchanges` (
  `Exchanges_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Exchanges_Number` varchar(20) NOT NULL,
  `Exchanges_Time` datetime NOT NULL,
  `Exchanges_Address` varchar(50) NOT NULL,
  `Exchanges_Remarks` varchar(255) DEFAULT NULL,
  `Exchanges_State` varchar(10) NOT NULL,
  `BuyUser_ID` int(11) NOT NULL,
  `SellUser_ID` int(11) NOT NULL,
  `Exchanges_CreateTime` datetime NOT NULL,
  `BuyUser_State` varchar(10) DEFAULT NULL,
  `SellUser_State` varchar(10) DEFAULT NULL,
  `Goods_ID` int(11) NOT NULL,
  PRIMARY KEY (`Exchanges_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exchanges
-- ----------------------------

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `Goods_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Goods_Name` varchar(20) NOT NULL,
  `Goods_Price` int(11) NOT NULL,
  `Goods_Description` varchar(255) DEFAULT NULL,
  `Goods_Phone` varchar(11) NOT NULL,
  `Goods_WeChat` varchar(30) DEFAULT NULL,
  `Goods_Address` varchar(50) DEFAULT NULL,
  `User_ID` int(11) NOT NULL,
  `Goods_CreateTime` datetime NOT NULL,
  `Goods_ReadCount` int(11) NOT NULL,
  `PrimaryTypes_ID` int(11) NOT NULL,
  `SecondaryTypes_ID` int(11) NOT NULL,
  `Goods_State` varchar(10) NOT NULL,
  PRIMARY KEY (`Goods_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '华硕显示器', '1000', '我这个显示器没怎么用过，9成新', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '4', '1', '5', 'pass');
INSERT INTO `goods` VALUES ('2', '华硕键盘', '20', '没用过', '13631788614', null, '07208', '6', '2018-02-04 18:37:21', '0', '1', '5', 'pass');
INSERT INTO `goods` VALUES ('4', '摄像头(华硕)', '100', null, '13631788615', null, '07301', '6', '2018-02-05 00:02:13', '0', '1', '5', 'noPass');
INSERT INTO `goods` VALUES ('5', '摄像头(三星)', '100', null, '13631788615', null, '07333', '6', '2018-02-05 00:21:30', '0', '1', '5', 'noPass');
INSERT INTO `goods` VALUES ('6', 'iPhone6', '500', '一部iPhone6，有锁机，解不开，8成新', '13631788616', null, '07999', '6', '2018-02-27 17:04:14', '0', '1', '1', 'pass');
INSERT INTO `goods` VALUES ('7', '台式机', '3000', '配置：6代i7，8g内存，无独显，毕业不想带回家', '13631788715', null, '07308', '6', '2018-02-27 17:12:31', '0', '1', '3', 'pass');
INSERT INTO `goods` VALUES ('8', '华硕笔记本', '3000', '配置：6代i7，8g内存，1g独显', '13631788615', null, '07209', '6', '2018-02-27 17:14:46', '0', '1', '2', 'pass');
INSERT INTO `goods` VALUES ('9', 'ipad air', '2000', '7成新，边框有点掉漆', '13631788615', null, '09999', '6', '2018-02-27 17:16:53', '0', '1', '4', 'pass');
INSERT INTO `goods` VALUES ('10', '哑铃', '100', '用了一年，毕业卖了', '13631788615', 'aaa', '07310', '6', '2018-02-03 16:54:41', '0', '2', '12', 'pass');
INSERT INTO `goods` VALUES ('11', '斯伯丁篮球', '100', '用了一年，毕业卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '2', '13', 'pass');
INSERT INTO `goods` VALUES ('12', '足球', '50', '用了一年，毕业卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '2', '13', 'pass');
INSERT INTO `goods` VALUES ('13', '网球拍', '150', '用了一年，毕业卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '2', '15', 'pass');
INSERT INTO `goods` VALUES ('14', '山地车', '150', '用了3年，毕业卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '2', '19', 'pass');
INSERT INTO `goods` VALUES ('15', 'c++语言', '30', '考完研了，卖了', '13631788615', 'aaa', '07310', '6', '2018-02-03 16:54:41', '0', '3', '23', 'pass');
INSERT INTO `goods` VALUES ('16', 'java语言设计', '50', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '3', '23', 'pass');
INSERT INTO `goods` VALUES ('17', 'spring框架', '50', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '3', '23', 'pass');
INSERT INTO `goods` VALUES ('18', '珍藏版老夫子漫画全集', '250', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '3', '28', 'pass');
INSERT INTO `goods` VALUES ('19', '高等数学', '50', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '3', '22', 'pass');
INSERT INTO `goods` VALUES ('20', '英语四级', '30', '考完研了，卖了', '13631788615', 'aaa', '07310', '6', '2018-02-03 16:54:41', '0', '3', '27', 'pass');
INSERT INTO `goods` VALUES ('21', '海底两万年', '50', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '3', '21', 'pass');
INSERT INTO `goods` VALUES ('22', '电子信息基础', '50', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '3', '24', 'pass');
INSERT INTO `goods` VALUES ('23', '机械工程导论', '50', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '3', '25', 'pass');
INSERT INTO `goods` VALUES ('24', '化工能源职业导论', '50', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '3', '26', 'pass');
INSERT INTO `goods` VALUES ('25', '6成新电风扇', '30', '考完研了，卖了', '13631788615', 'aaa', '07310', '6', '2018-02-03 16:54:41', '0', '4', '29', 'pass');
INSERT INTO `goods` VALUES ('26', '6成新洗衣机', '650', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '4', '30', 'pass');
INSERT INTO `goods` VALUES ('27', '风筒', '40', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '4', '31', 'pass');
INSERT INTO `goods` VALUES ('28', '水机', '100', '考完研了，卖了', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '4', '33', 'pass');
INSERT INTO `goods` VALUES ('29', '可折叠椅子', '30', '毕业了，大甩卖', '13631788615', 'aaa', '07310', '6', '2018-02-03 16:54:41', '0', '6', '37', 'pass');
INSERT INTO `goods` VALUES ('30', '床上小桌子', '20', '毕业了，大甩卖', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '6', '38', 'pass');
INSERT INTO `goods` VALUES ('31', '镜子', '40', '毕业了，大甩卖', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '6', '39', 'pass');
INSERT INTO `goods` VALUES ('33', '手表', '100', '毕业了，大甩卖', '13631788615', 'aaa', '07309', '6', '2018-02-03 16:54:41', '0', '5', '41', 'pass');

-- ----------------------------
-- Table structure for `goodsimage`
-- ----------------------------
DROP TABLE IF EXISTS `goodsimage`;
CREATE TABLE `goodsimage` (
  `GoodsImage_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Image_ID` int(11) NOT NULL,
  `Goods_ID` int(11) NOT NULL,
  PRIMARY KEY (`GoodsImage_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsimage
-- ----------------------------
INSERT INTO `goodsimage` VALUES ('1', '20', '1');
INSERT INTO `goodsimage` VALUES ('2', '20', '1');
INSERT INTO `goodsimage` VALUES ('3', '19', '2');
INSERT INTO `goodsimage` VALUES ('4', '19', '2');
INSERT INTO `goodsimage` VALUES ('5', '20', '1');
INSERT INTO `goodsimage` VALUES ('6', '6', '6');
INSERT INTO `goodsimage` VALUES ('7', '7', '6');
INSERT INTO `goodsimage` VALUES ('8', '6', '6');
INSERT INTO `goodsimage` VALUES ('9', '28', '7');
INSERT INTO `goodsimage` VALUES ('10', '29', '7');
INSERT INTO `goodsimage` VALUES ('11', '13', '8');
INSERT INTO `goodsimage` VALUES ('12', '13', '8');
INSERT INTO `goodsimage` VALUES ('13', '13', '8');
INSERT INTO `goodsimage` VALUES ('14', '10', '9');
INSERT INTO `goodsimage` VALUES ('15', '10', '9');
INSERT INTO `goodsimage` VALUES ('16', '33', '10');
INSERT INTO `goodsimage` VALUES ('17', '33', '10');
INSERT INTO `goodsimage` VALUES ('18', '33', '10');
INSERT INTO `goodsimage` VALUES ('19', '24', '11');
INSERT INTO `goodsimage` VALUES ('20', '24', '11');
INSERT INTO `goodsimage` VALUES ('21', '35', '12');
INSERT INTO `goodsimage` VALUES ('22', '35', '12');
INSERT INTO `goodsimage` VALUES ('23', '35', '12');
INSERT INTO `goodsimage` VALUES ('24', '31', '13');
INSERT INTO `goodsimage` VALUES ('25', '31', '13');
INSERT INTO `goodsimage` VALUES ('26', '14', '14');
INSERT INTO `goodsimage` VALUES ('27', '14', '14');
INSERT INTO `goodsimage` VALUES ('28', '14', '14');
INSERT INTO `goodsimage` VALUES ('29', '15', '15');
INSERT INTO `goodsimage` VALUES ('30', '15', '15');
INSERT INTO `goodsimage` VALUES ('31', '11', '16');
INSERT INTO `goodsimage` VALUES ('32', '11', '16');
INSERT INTO `goodsimage` VALUES ('33', '11', '16');
INSERT INTO `goodsimage` VALUES ('34', '12', '17');
INSERT INTO `goodsimage` VALUES ('35', '12', '17');
INSERT INTO `goodsimage` VALUES ('36', '25', '18');
INSERT INTO `goodsimage` VALUES ('37', '25', '18');
INSERT INTO `goodsimage` VALUES ('38', '25', '18');
INSERT INTO `goodsimage` VALUES ('39', '26', '19');
INSERT INTO `goodsimage` VALUES ('40', '26', '19');
INSERT INTO `goodsimage` VALUES ('41', '8', '20');
INSERT INTO `goodsimage` VALUES ('42', '8', '20');
INSERT INTO `goodsimage` VALUES ('43', '8', '20');
INSERT INTO `goodsimage` VALUES ('44', '18', '21');
INSERT INTO `goodsimage` VALUES ('45', '18', '21');
INSERT INTO `goodsimage` VALUES ('46', '15', '22');
INSERT INTO `goodsimage` VALUES ('47', '15', '22');
INSERT INTO `goodsimage` VALUES ('48', '22', '23');
INSERT INTO `goodsimage` VALUES ('49', '22', '23');
INSERT INTO `goodsimage` VALUES ('50', '21', '24');
INSERT INTO `goodsimage` VALUES ('51', '21', '24');
INSERT INTO `goodsimage` VALUES ('52', '16', '25');
INSERT INTO `goodsimage` VALUES ('53', '16', '25');
INSERT INTO `goodsimage` VALUES ('54', '32', '26');
INSERT INTO `goodsimage` VALUES ('55', '32', '26');
INSERT INTO `goodsimage` VALUES ('56', '17', '27');
INSERT INTO `goodsimage` VALUES ('57', '17', '27');
INSERT INTO `goodsimage` VALUES ('58', '27', '28');
INSERT INTO `goodsimage` VALUES ('59', '27', '28');
INSERT INTO `goodsimage` VALUES ('60', '30', '29');
INSERT INTO `goodsimage` VALUES ('61', '30', '29');
INSERT INTO `goodsimage` VALUES ('62', '34', '30');
INSERT INTO `goodsimage` VALUES ('63', '34', '30');
INSERT INTO `goodsimage` VALUES ('64', '23', '31');
INSERT INTO `goodsimage` VALUES ('65', '23', '31');
INSERT INTO `goodsimage` VALUES ('68', '3', '33');
INSERT INTO `goodsimage` VALUES ('69', '4', '33');

-- ----------------------------
-- Table structure for `goodsmessage`
-- ----------------------------
DROP TABLE IF EXISTS `goodsmessage`;
CREATE TABLE `goodsmessage` (
  `GoodsMessage_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Message_ID` int(11) NOT NULL,
  `Goods_ID` int(11) NOT NULL,
  PRIMARY KEY (`GoodsMessage_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsmessage
-- ----------------------------
INSERT INTO `goodsmessage` VALUES ('1', '1', '1');
INSERT INTO `goodsmessage` VALUES ('2', '2', '1');

-- ----------------------------
-- Table structure for `goodsrecords`
-- ----------------------------
DROP TABLE IF EXISTS `goodsrecords`;
CREATE TABLE `goodsrecords` (
  `Records_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_ID` int(11) NOT NULL,
  `Goods_ID` int(11) NOT NULL,
  `Records_Createtime` datetime NOT NULL,
  PRIMARY KEY (`Records_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goodsrecords
-- ----------------------------

-- ----------------------------
-- Table structure for `image`
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image` (
  `Image_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Image_Path` varchar(255) NOT NULL,
  PRIMARY KEY (`Image_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES ('2', '/twohandmall/pictures/c1.jpg');
INSERT INTO `image` VALUES ('3', '/twohandmall/pictures/c2.jpg');
INSERT INTO `image` VALUES ('4', '/twohandmall/pictures/c3.jpg');
INSERT INTO `image` VALUES ('5', '/twohandmall/pictures/c4.png');
INSERT INTO `image` VALUES ('6', '/twohandmall/pictures/iphone61.jpg');
INSERT INTO `image` VALUES ('7', '/twohandmall/pictures/iphone62.jpg');
INSERT INTO `image` VALUES ('8', '/twohandmall/pictures/4级.jpg');
INSERT INTO `image` VALUES ('9', '/twohandmall/pictures/c.jpg');
INSERT INTO `image` VALUES ('10', '/twohandmall/pictures/ipad.jpg');
INSERT INTO `image` VALUES ('11', '/twohandmall/pictures/java.jpg');
INSERT INTO `image` VALUES ('12', '/twohandmall/pictures/spring.jpg');
INSERT INTO `image` VALUES ('13', '/twohandmall/pictures/笔记本.jpg');
INSERT INTO `image` VALUES ('14', '/twohandmall/pictures/单车.jpg');
INSERT INTO `image` VALUES ('15', '/twohandmall/pictures/电子.jpg');
INSERT INTO `image` VALUES ('16', '/twohandmall/pictures/风扇.jpg');
INSERT INTO `image` VALUES ('17', '/twohandmall/pictures/风筒.jpg');
INSERT INTO `image` VALUES ('18', '/twohandmall/pictures/海里.jpg');
INSERT INTO `image` VALUES ('19', '/twohandmall/pictures/华硕键盘.jpg');
INSERT INTO `image` VALUES ('20', '/twohandmall/pictures/华硕显示器1.jpg');
INSERT INTO `image` VALUES ('21', '/twohandmall/pictures/化工.jpg');
INSERT INTO `image` VALUES ('22', '/twohandmall/pictures/机械.jpg');
INSERT INTO `image` VALUES ('23', '/twohandmall/pictures/镜子.jpg');
INSERT INTO `image` VALUES ('24', '/twohandmall/pictures/篮球.jpg');
INSERT INTO `image` VALUES ('25', '/twohandmall/pictures/老夫子.jpg');
INSERT INTO `image` VALUES ('26', '/twohandmall/pictures/数学.jpg');
INSERT INTO `image` VALUES ('27', '/twohandmall/pictures/水机.jpg');
INSERT INTO `image` VALUES ('28', '/twohandmall/pictures/台式电脑1.jpg');
INSERT INTO `image` VALUES ('29', '/twohandmall/pictures/台式电脑2.jpg');
INSERT INTO `image` VALUES ('30', '/twohandmall/pictures/躺椅.jpg');
INSERT INTO `image` VALUES ('31', '/twohandmall/pictures/网球拍.jpg');
INSERT INTO `image` VALUES ('32', '/twohandmall/pictures/洗衣.jpg');
INSERT INTO `image` VALUES ('33', '/twohandmall/pictures/哑铃.jpg');
INSERT INTO `image` VALUES ('34', '/twohandmall/pictures/桌子.jpg');
INSERT INTO `image` VALUES ('35', '/twohandmall/pictures/足球.jpg');

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `Manager_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Manager_UserName` varchar(20) NOT NULL,
  `Manager_Password` varchar(20) NOT NULL,
  `IsSpuerManager` varchar(5) NOT NULL,
  PRIMARY KEY (`Manager_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', '123456', 'Yes');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `Message_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Message_Content` varchar(255) NOT NULL,
  `Message_Time` datetime NOT NULL,
  `User_ID` int(11) NOT NULL,
  PRIMARY KEY (`Message_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '能不能便宜点', '2018-02-03 16:47:16', '6');
INSERT INTO `message` VALUES ('2', '太贵了', '2018-02-03 16:47:47', '11');
INSERT INTO `message` VALUES ('3', '我200卖给你，要不要', '2018-02-03 17:28:51', '6');
INSERT INTO `message` VALUES ('5', '我草你', '2018-02-03 11:01:42', '6');
INSERT INTO `message` VALUES ('6', '我草你', '2018-02-03 11:17:50', '6');
INSERT INTO `message` VALUES ('7', '我草你', '2018-02-03 11:29:51', '6');

-- ----------------------------
-- Table structure for `notifications`
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `Notifications_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Notifications_Content` varchar(255) NOT NULL,
  `Notifications_State` varchar(10) NOT NULL,
  `Notifications_Time` datetime NOT NULL,
  `User_ID` int(11) NOT NULL,
  PRIMARY KEY (`Notifications_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notifications
-- ----------------------------
INSERT INTO `notifications` VALUES ('2', '恭喜你注册', 'read', '2018-02-05 11:24:54', '6');
INSERT INTO `notifications` VALUES ('3', '恭喜你注册成功', 'read', '2018-02-05 11:25:13', '6');

-- ----------------------------
-- Table structure for `primarytypes`
-- ----------------------------
DROP TABLE IF EXISTS `primarytypes`;
CREATE TABLE `primarytypes` (
  `PrimaryTypes_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PrimaryTypes_Name` varchar(10) NOT NULL,
  PRIMARY KEY (`PrimaryTypes_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of primarytypes
-- ----------------------------
INSERT INTO `primarytypes` VALUES ('1', '数码');
INSERT INTO `primarytypes` VALUES ('2', '运动户外');
INSERT INTO `primarytypes` VALUES ('3', '书籍');
INSERT INTO `primarytypes` VALUES ('4', '家电');
INSERT INTO `primarytypes` VALUES ('5', '其他');
INSERT INTO `primarytypes` VALUES ('6', '家具装饰');

-- ----------------------------
-- Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `Reply_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Reply_Content` varchar(255) NOT NULL,
  `User_ID` int(11) NOT NULL,
  `Message_ID` int(11) NOT NULL,
  `Reply_Createtime` datetime NOT NULL,
  PRIMARY KEY (`Reply_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reply
-- ----------------------------
INSERT INTO `reply` VALUES ('1', '赞同', '11', '1', '2018-02-03 16:48:24');
INSERT INTO `reply` VALUES ('2', '我也觉得太贵了', '13', '2', '2018-02-03 16:50:09');
INSERT INTO `reply` VALUES ('3', '老哥，我有点兴趣', '11', '3', '2018-02-03 17:29:19');
INSERT INTO `reply` VALUES ('4', '我也有点兴趣', '13', '3', '2018-02-03 17:31:16');
INSERT INTO `reply` VALUES ('6', '别人也要赚钱的', '6', '1', '2018-02-03 11:19:05');

-- ----------------------------
-- Table structure for `secondarytypes`
-- ----------------------------
DROP TABLE IF EXISTS `secondarytypes`;
CREATE TABLE `secondarytypes` (
  `SecondaryTypes_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SecondaryTypes_Name` varchar(10) NOT NULL,
  `PrimaryTypes_ID` int(11) NOT NULL,
  PRIMARY KEY (`SecondaryTypes_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of secondarytypes
-- ----------------------------
INSERT INTO `secondarytypes` VALUES ('1', '手机', '1');
INSERT INTO `secondarytypes` VALUES ('2', '笔记本电脑', '1');
INSERT INTO `secondarytypes` VALUES ('3', '台式电脑', '1');
INSERT INTO `secondarytypes` VALUES ('4', '平板电脑', '1');
INSERT INTO `secondarytypes` VALUES ('5', '其他硬件', '1');
INSERT INTO `secondarytypes` VALUES ('12', '健身器材', '2');
INSERT INTO `secondarytypes` VALUES ('13', '球', '2');
INSERT INTO `secondarytypes` VALUES ('15', '球杆球拍', '2');
INSERT INTO `secondarytypes` VALUES ('17', '户外用具', '2');
INSERT INTO `secondarytypes` VALUES ('19', '自行车', '2');
INSERT INTO `secondarytypes` VALUES ('21', '文学', '3');
INSERT INTO `secondarytypes` VALUES ('22', '数学', '3');
INSERT INTO `secondarytypes` VALUES ('23', '计算机', '3');
INSERT INTO `secondarytypes` VALUES ('24', '电子', '3');
INSERT INTO `secondarytypes` VALUES ('25', '机械', '3');
INSERT INTO `secondarytypes` VALUES ('26', '化工能源', '3');
INSERT INTO `secondarytypes` VALUES ('27', '外语', '3');
INSERT INTO `secondarytypes` VALUES ('28', '其他书籍', '3');
INSERT INTO `secondarytypes` VALUES ('29', '电风扇', '4');
INSERT INTO `secondarytypes` VALUES ('30', '洗衣机', '4');
INSERT INTO `secondarytypes` VALUES ('31', '电吹风', '4');
INSERT INTO `secondarytypes` VALUES ('32', '其他电器', '4');
INSERT INTO `secondarytypes` VALUES ('34', '水机电热壶', '4');
INSERT INTO `secondarytypes` VALUES ('37', '椅子', '6');
INSERT INTO `secondarytypes` VALUES ('38', '桌子', '6');
INSERT INTO `secondarytypes` VALUES ('39', '其他家具', '6');
INSERT INTO `secondarytypes` VALUES ('41', '其他', '5');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL AUTO_INCREMENT,
  `User_Name` varchar(20) NOT NULL,
  `User_Email` varchar(50) NOT NULL,
  `User_Password` varchar(20) NOT NULL,
  `User_Avatar` varchar(255) NOT NULL,
  `User_Sex` int(11) DEFAULT NULL,
  `User_Phone` varchar(11) DEFAULT NULL,
  `User_WeChat` varchar(30) DEFAULT NULL,
  `User_Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', '取名字很难', '787297031@qq.com', '111111', '/twohandmall/avatar/carter.jpg', '2', '13631788615', 'qmzhn', '7栋309');
INSERT INTO `user` VALUES ('11', '张三', '123456@163.com', '123456789', '/twohandmall/avatar/default.png', null, null, null, null);
INSERT INTO `user` VALUES ('13', '苏文辉', '13631788615@163.com', '123456', '/twohandmall/avatar/default.png', '2', null, null, null);
INSERT INTO `user` VALUES ('14', '苏文辉', '13631788615@163.com', '123456', '/twohandmall/avatar/default.png', '2', null, null, null);

-- ----------------------------
-- Table structure for `want`
-- ----------------------------
DROP TABLE IF EXISTS `want`;
CREATE TABLE `want` (
  `Want_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Want_Name` varchar(50) NOT NULL,
  `Want_Description` varchar(255) DEFAULT NULL,
  `Want_Price` int(11) DEFAULT NULL,
  `User_ID` int(11) NOT NULL,
  `Want_CreateTime` datetime NOT NULL,
  `Want_State` varchar(10) NOT NULL,
  `Want_Phone` varchar(11) NOT NULL,
  PRIMARY KEY (`Want_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of want
-- ----------------------------
INSERT INTO `want` VALUES ('1', '自行车', '想要一辆可以代步，挺新的自行车', '100', '6', '2018-02-03 17:57:56', 'pass', '13631788615');
INSERT INTO `want` VALUES ('3', '收购一个正义高达模型', null, null, '6', '2018-02-05 06:14:56', 'pass', '13631788615');

-- ----------------------------
-- Table structure for `wantimage`
-- ----------------------------
DROP TABLE IF EXISTS `wantimage`;
CREATE TABLE `wantimage` (
  `WantImage_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Want_ID` int(11) NOT NULL,
  `Image_ID` int(11) NOT NULL,
  PRIMARY KEY (`WantImage_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wantimage
-- ----------------------------
INSERT INTO `wantimage` VALUES ('1', '1', '2');
INSERT INTO `wantimage` VALUES ('2', '1', '3');

-- ----------------------------
-- Table structure for `wantmessage`
-- ----------------------------
DROP TABLE IF EXISTS `wantmessage`;
CREATE TABLE `wantmessage` (
  `WantMessage_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Want_ID` int(11) NOT NULL,
  `Message_ID` int(11) NOT NULL,
  PRIMARY KEY (`WantMessage_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of wantmessage
-- ----------------------------
INSERT INTO `wantmessage` VALUES ('1', '1', '3');
