/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : zuanqun_main

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-01-31 18:38:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zq_admin
-- ----------------------------
DROP TABLE IF EXISTS `zq_admin`;
CREATE TABLE `zq_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `z_adminname` varchar(15) NOT NULL COMMENT '管理员名',
  `z_password` varchar(32) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_admin
-- ----------------------------

-- ----------------------------
-- Table structure for zq_alimama
-- ----------------------------
DROP TABLE IF EXISTS `zq_alimama`;
CREATE TABLE `zq_alimama` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` varchar(50) NOT NULL,
  `ad_name` varchar(30) NOT NULL DEFAULT '0',
  `posttime` varchar(30) NOT NULL,
  `zq_user_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_alimama
-- ----------------------------

-- ----------------------------
-- Table structure for zq_apidoc
-- ----------------------------
DROP TABLE IF EXISTS `zq_apidoc`;
CREATE TABLE `zq_apidoc` (
  `id` mediumint(9) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(6) unsigned NOT NULL,
  `posttime` mediumint(9) unsigned NOT NULL,
  `uid` mediumint(9) unsigned NOT NULL,
  `s_content` varchar(120) NOT NULL,
  `is_on` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '65535',
  `api_title` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_apidoc
-- ----------------------------
INSERT INTO `zq_apidoc` VALUES ('1', '1', '16777215', '1', '###测试内容\r\n>test', '1', '65535', '测试api文档');
INSERT INTO `zq_apidoc` VALUES ('2', '1', '16777215', '1', '###测试内容\r\n>test', '1', '65535', '测试api文档');

-- ----------------------------
-- Table structure for zq_apidoc_content
-- ----------------------------
DROP TABLE IF EXISTS `zq_apidoc_content`;
CREATE TABLE `zq_apidoc_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `api_id` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `posttime` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_apidoc_content
-- ----------------------------

-- ----------------------------
-- Table structure for zq_appkey
-- ----------------------------
DROP TABLE IF EXISTS `zq_appkey`;
CREATE TABLE `zq_appkey` (
  `id` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `zq_user_id` mediumint(11) NOT NULL,
  `app_key` varchar(64) NOT NULL,
  `app_secret` varchar(128) NOT NULL,
  `posttime` varchar(20) NOT NULL DEFAULT '0' COMMENT '申请时间',
  `app_id` mediumint(8) unsigned NOT NULL,
  `is_on` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_appkey
-- ----------------------------
INSERT INTO `zq_appkey` VALUES ('5', '11', 'zq4d28f8e450527d366f5b539c02aca4f5', '514515151', '1515482870', '0', '1');
INSERT INTO `zq_appkey` VALUES ('6', '12', 'zq02a91a95713d123d7c479049754d5865', '', '1516584427', '0', '1');
INSERT INTO `zq_appkey` VALUES ('7', '13', 'zqbf70a5379a1ec90faba95a649ad8de4d', '', '1516584429', '0', '1');
INSERT INTO `zq_appkey` VALUES ('8', '14', 'zqa4f604b1844f098fbf22b7fc75aa19b0', '', '1516873420', '0', '1');
INSERT INTO `zq_appkey` VALUES ('9', '15', 'zq46c0c6e9854ce382096cfabfbbf48c8a', '', '1516873425', '0', '1');

-- ----------------------------
-- Table structure for zq_cms
-- ----------------------------
DROP TABLE IF EXISTS `zq_cms`;
CREATE TABLE `zq_cms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website` varchar(50) NOT NULL COMMENT '网站名',
  `logo` varchar(255) NOT NULL DEFAULT '0' COMMENT '网站logo',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_cms
-- ----------------------------

-- ----------------------------
-- Table structure for zq_doc_cat
-- ----------------------------
DROP TABLE IF EXISTS `zq_doc_cat`;
CREATE TABLE `zq_doc_cat` (
  `id` smallint(8) unsigned NOT NULL AUTO_INCREMENT,
  `posttime` mediumint(9) NOT NULL,
  `cat_name` varchar(10) NOT NULL,
  `pid` smallint(6) NOT NULL DEFAULT '0',
  `uid` mediumint(9) unsigned NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '65535',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_doc_cat
-- ----------------------------

-- ----------------------------
-- Table structure for zq_goods
-- ----------------------------
DROP TABLE IF EXISTS `zq_goods`;
CREATE TABLE `zq_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `num_iid` int(13) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pict_url` varchar(255) NOT NULL,
  `reserve_price` decimal(10,0) NOT NULL,
  `zk_final_price` decimal(10,0) NOT NULL,
  `user_type` tinyint(1) NOT NULL,
  `provcity` varchar(20) NOT NULL,
  `item_url` varchar(50) NOT NULL,
  `seller_id` int(10) NOT NULL,
  `volume` int(8) NOT NULL,
  `nick` varchar(15) NOT NULL,
  `cid` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_goods
-- ----------------------------
INSERT INTO `zq_goods` VALUES ('1', '2147483647', '2017新款女装冬装宽松大码中长款外套女显瘦连帽毛领毛毛大衣加厚', 'https://img.alicdn.com/tfscom/i2/2507973110/TB28Jm7dtHO8KJjSZFtXXchfXXa_!!2507973110.jpg', '888', '358', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=563134733822', '2147483647', '24061', 'chaoming528', '0');
INSERT INTO `zq_goods` VALUES ('2', '2147483647', '2017冬季新款韩版加厚宽松时尚女装连帽过膝长款羽绒服超长外套女', 'https://img.alicdn.com/tfscom/i2/196599007/TB2NUWJhgnH8KJjSspcXXb3QFXa_!!196599007.jpg', '1028', '488', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=562598307082', '196599007', '6165', '落叶风_1988', '0');
INSERT INTO `zq_goods` VALUES ('3', '2147483647', '欧洲站2017冬季新款女装棉衣韩版宽松中长款羽绒棉服外套棉袄女潮', 'https://img.alicdn.com/tfscom/i4/1753682892/TB2p0MAi0nJ8KJjSszdXXaxuFXa_!!1753682892.jpg', '488', '218', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=562852346505', '1753682892', '14197', '海豚湾821', '0');
INSERT INTO `zq_goods` VALUES ('4', '2147483647', '2018新款女装春装冬裙背带裙子两件套2017秋冬季金丝绒连衣裙女春', 'https://img.alicdn.com/tfscom/i3/2075384612/TB15hCdn22H8KJjy1zkXXXr7pXa_!!0-item_pic.jpg', '279', '227', '1', '广东 东莞', 'http://item.taobao.com/item.htm?id=560721225474', '2075384612', '3698', '欧惑旗舰店', '0');
INSERT INTO `zq_goods` VALUES ('5', '2147483647', '秋冬季女装学生卫衣长款毛衣裙子过膝及踝长裙针织内搭打底连衣裙', 'https://img.alicdn.com/tfscom/i3/2575200001/TB2rnpviMfH8KJjy1zcXXcTzpXa_!!2575200001.jpg', '338', '148', '0', '广东 深圳', 'http://item.taobao.com/item.htm?id=562752704342', '2147483647', '7317', 'momo高端店', '0');
INSERT INTO `zq_goods` VALUES ('6', '2147483647', '2017秋冬季新款女装赫本小黑裙内搭厚冬裙子名媛小香风打底连衣裙', 'https://img.alicdn.com/tfscom/i2/2575200001/TB2QxERhMvD8KJjy0FlXXagBFXa_!!2575200001.jpg', '338', '148', '0', '广东 深圳', 'http://item.taobao.com/item.htm?id=562798419804', '2147483647', '7284', 'momo高端店', '0');
INSERT INTO `zq_goods` VALUES ('7', '2147483647', '加厚毛呢大衣女中长款2017冬季女装新款森系格子加绒皮毛一体外套', 'https://img.alicdn.com/tfscom/i3/2000231797/TB2aDoSe6nD8KJjSspbXXbbEXXa_!!2000231797.jpg', '1099', '278', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=562015234309', '2000231797', '2703', '叁小姐ms', '0');
INSERT INTO `zq_goods` VALUES ('8', '2147483647', '黑色毛呢外套中长款韩国女装2017冬装新款宽松显瘦茧型呢子大衣潮', 'https://img.alicdn.com/tfscom/i1/587451667/TB2c.XZdMDD8KJjy0FdXXcjvXXa_!!587451667.jpg', '698', '248', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=561009546638', '587451667', '994', '德国人家', '0');
INSERT INTO `zq_goods` VALUES ('9', '2147483647', '2017秋冬装韩版女装加厚毛呢外套女中长款廓形呢子大衣显瘦潮冬季', 'https://img.alicdn.com/tfscom/i4/2984548975/TB1IbL.mGigSKJjSsppXXabnpXa_!!0-item_pic.jpg', '798', '155', '1', '上海', 'http://item.taobao.com/item.htm?id=560365000704', '2147483647', '5390', '柯睐沃旗舰店', '0');
INSERT INTO `zq_goods` VALUES ('10', '2147483647', '气质女装2017秋冬新款修身显瘦打底针织连衣裙长袖V领名媛时尚潮', 'https://img.alicdn.com/tfscom/i2/2057678929/TB1oULadMDD8KJjy0FdXXcjvXXa_!!0-item_pic.jpg', '588', '128', '1', '广东 深圳', 'http://item.taobao.com/item.htm?id=561592189849', '2057678929', '2468', 'qe旗舰店', '0');
INSERT INTO `zq_goods` VALUES ('11', '2147483647', '棉衣女中长款2017冬装新款韩版女装加厚连帽宽松羽绒棉服外套棉袄', 'https://img.alicdn.com/tfscom/i4/1753682892/TB2deDdbPgy_uJjSZLeXXaPlFXa_!!1753682892.jpg', '489', '218', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=561850598607', '1753682892', '1629', '海豚湾821', '0');
INSERT INTO `zq_goods` VALUES ('12', '2147483647', '2017秋冬装新款女装名媛小香风针织裙子矮个子搭配内搭打底连衣裙', 'https://img.alicdn.com/tfscom/i2/2575200001/TB2tA7bb3DD8KJjy0FdXXcjvXXa_!!2575200001.jpg', '368', '128', '0', '广东 深圳', 'http://item.taobao.com/item.htm?id=561287286333', '2147483647', '3894', 'momo高端店', '0');
INSERT INTO `zq_goods` VALUES ('13', '2147483647', '2017冬装新款韩版女装羽绒棉衣女中长款金丝绒连帽假两件棉服外套', 'https://img.alicdn.com/tfscom/i3/TB1JkLKb8LN8KJjSZFpYXHZaVXa_M2.SS2', '998', '268', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=562151233259', '2147483647', '1384', '王波波19891118', '0');
INSERT INTO `zq_goods` VALUES ('14', '2147483647', '冬季毛呢外套女中长款韩版2017新款女装加厚过膝chic呢子大衣韩国', 'https://img.alicdn.com/tfscom/i4/3097226476/TB1qfjqf_nI8KJjSszbXXb4KFXa_!!0-item_pic.jpg', '499', '278', '1', '广东 东莞', 'http://item.taobao.com/item.htm?id=562234106781', '2147483647', '1014', 'hooskon晓珂旗舰店', '0');
INSERT INTO `zq_goods` VALUES ('15', '2147483647', '2017秋装新款女装V领金丝绒挂脖性感长袖裙裤丝绒显瘦系腰连衣裙', 'https://img.alicdn.com/tfscom/i1/116538553/TB2Nj0cd5pnpuFjSZFIXXXh2VXa_!!116538553.jpg', '316', '158', '0', '海外', 'http://item.taobao.com/item.htm?id=557854987076', '116538553', '1010', 'lsmenghao', '0');
INSERT INTO `zq_goods` VALUES ('16', '2147483647', '欧洲站大毛领加厚欧货秋冬中长款羽绒棉服棉袄工装宽松棉衣女装潮', 'https://img.alicdn.com/tfscom/i1/1583349179/TB2JD7me0uO.eBjSZFCXXXULFXa_!!1583349179.jpg', '458', '428', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=542303649234', '1583349179', '501', '1929赫本', '0');
INSERT INTO `zq_goods` VALUES ('17', '2147483647', '2018年新款女装春装潮连衣裙红色名媛小香风内搭针织打底裙秋冬季', 'https://img.alicdn.com/tfscom/i2/2967049126/TB1PT_an3fH8KJjy1zcXXcTzpXa_!!0-item_pic.jpg', '278', '178', '1', '广东 深圳', 'http://item.taobao.com/item.htm?id=563320754081', '2147483647', '2321', 'musecx旗舰店', '0');
INSERT INTO `zq_goods` VALUES ('18', '2147483647', '2017秋冬季新款女装毛呢冬裙子2018春装中长款名媛小香风连衣裙女', 'https://img.alicdn.com/tfscom/i4/2075384612/TB1padYn6nD8KJjSspbXXbbEXXa_!!0-item_pic.jpg', '399', '255', '1', '广东 东莞', 'http://item.taobao.com/item.htm?id=560624204695', '2075384612', '353', '欧惑旗舰店', '0');
INSERT INTO `zq_goods` VALUES ('19', '2147483647', '短款棉服女装2018冬春新款韩版宽松加厚连帽棉衣外套小个子面包服', 'https://img.alicdn.com/tfscom/i2/825236775/TB2Hik2aM685uJjSZFCXXXzlXXa_!!825236775.jpg', '289', '186', '0', '广东 广州', 'http://item.taobao.com/item.htm?id=560321390575', '825236775', '1282', '言若言诺', '0');
INSERT INTO `zq_goods` VALUES ('20', '2147483647', '2017新款女装中长款韩版修身轻薄高端奢华超长过膝羽绒服外套冬潮', 'https://img.alicdn.com/tfscom/i8/TB1M50wjv6H8KJjSspmYXH2WXXa_M2.SS2', '698', '368', '0', '浙江 杭州', 'http://item.taobao.com/item.htm?id=563135286299', '192699001', '30304', 'zhangpei12', '0');

-- ----------------------------
-- Table structure for zq_goods_cat
-- ----------------------------
DROP TABLE IF EXISTS `zq_goods_cat`;
CREATE TABLE `zq_goods_cat` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `uid` mediumint(8) unsigned NOT NULL,
  `pid` smallint(5) unsigned NOT NULL,
  `cat_name` varchar(10) NOT NULL,
  `posttime` mediumint(8) unsigned NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '65535',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_goods_cat
-- ----------------------------

-- ----------------------------
-- Table structure for zq_goods_images
-- ----------------------------
DROP TABLE IF EXISTS `zq_goods_images`;
CREATE TABLE `zq_goods_images` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `goods_is` mediumint(8) unsigned NOT NULL,
  `posttime` mediumint(8) unsigned NOT NULL,
  `images_1` varchar(32) NOT NULL,
  `images_2` varchar(32) NOT NULL,
  `images_3` varchar(32) NOT NULL,
  `images_4` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_goods_images
-- ----------------------------

-- ----------------------------
-- Table structure for zq_helpdoc
-- ----------------------------
DROP TABLE IF EXISTS `zq_helpdoc`;
CREATE TABLE `zq_helpdoc` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL,
  `uid` mediumint(9) NOT NULL,
  `s_content` varchar(0) NOT NULL,
  `posttime` mediumint(8) unsigned NOT NULL,
  `is_on` tinyint(2) unsigned NOT NULL,
  `sort` smallint(6) unsigned NOT NULL DEFAULT '65535',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_helpdoc
-- ----------------------------

-- ----------------------------
-- Table structure for zq_helpdoc_content
-- ----------------------------
DROP TABLE IF EXISTS `zq_helpdoc_content`;
CREATE TABLE `zq_helpdoc_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `help_id` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `posttime` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_helpdoc_content
-- ----------------------------

-- ----------------------------
-- Table structure for zq_noticedoc
-- ----------------------------
DROP TABLE IF EXISTS `zq_noticedoc`;
CREATE TABLE `zq_noticedoc` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `cid` smallint(5) unsigned NOT NULL,
  `uid` mediumint(8) unsigned NOT NULL,
  `s_content` varchar(0) NOT NULL,
  `posttime` mediumint(8) unsigned NOT NULL,
  `is_on` tinyint(2) unsigned NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '65535',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_noticedoc
-- ----------------------------

-- ----------------------------
-- Table structure for zq_noticedoc_content
-- ----------------------------
DROP TABLE IF EXISTS `zq_noticedoc_content`;
CREATE TABLE `zq_noticedoc_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `norice_id` mediumint(8) unsigned NOT NULL,
  `content` text NOT NULL,
  `posttime` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_noticedoc_content
-- ----------------------------

-- ----------------------------
-- Table structure for zq_team_info
-- ----------------------------
DROP TABLE IF EXISTS `zq_team_info`;
CREATE TABLE `zq_team_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `team_name` varchar(20) NOT NULL COMMENT '团队名',
  `logo` varchar(30) NOT NULL COMMENT '团队logo',
  `mobile` varchar(11) NOT NULL,
  `info` varchar(255) NOT NULL COMMENT '团队简介',
  `ad` varchar(255) NOT NULL COMMENT '推广渠道',
  `posttime` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_team_info
-- ----------------------------

-- ----------------------------
-- Table structure for zq_user
-- ----------------------------
DROP TABLE IF EXISTS `zq_user`;
CREATE TABLE `zq_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `z_username` varchar(32) NOT NULL COMMENT '用户名',
  `z_mobile` varchar(11) NOT NULL COMMENT '手机号',
  `z_password` varchar(32) NOT NULL DEFAULT '' COMMENT '密码',
  `reg_time` varchar(20) NOT NULL DEFAULT '' COMMENT '注册时间',
  `z_wechat` varchar(20) NOT NULL DEFAULT '0' COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_user
-- ----------------------------
INSERT INTO `zq_user` VALUES ('11', 'zuanqun_1515482870', '15558040535', '14e1b600b1fd579f47433b88e8d85291', '1515482870', '0');
INSERT INTO `zq_user` VALUES ('12', 'zuanqun_1516584427', '', '74be16979710d4c4e7c6647856088456', '1516584427', '0');
INSERT INTO `zq_user` VALUES ('13', 'zuanqun_1516584429', '', '74be16979710d4c4e7c6647856088456', '1516584429', '0');
INSERT INTO `zq_user` VALUES ('14', 'zuanqun_1516873420', '', '74be16979710d4c4e7c6647856088456', '1516873420', '0');
INSERT INTO `zq_user` VALUES ('15', 'zuanqun_1516873425', '', '74be16979710d4c4e7c6647856088456', '1516873425', '0');

-- ----------------------------
-- Table structure for zq_web_key
-- ----------------------------
DROP TABLE IF EXISTS `zq_web_key`;
CREATE TABLE `zq_web_key` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `zq_user_id` mediumint(8) unsigned NOT NULL,
  `app_id` mediumint(8) unsigned NOT NULL,
  `app_key` varchar(32) NOT NULL,
  `posttime` mediumint(8) unsigned NOT NULL,
  `is_on` tinyint(2) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zq_web_key
-- ----------------------------
