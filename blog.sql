/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-24 00:35:50
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `attr`
-- ----------------------------
DROP TABLE IF EXISTS `attr`;
CREATE TABLE `attr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) CHARACTER SET utf8 NOT NULL,
  `color` varchar(11) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of attr
-- ----------------------------
INSERT INTO `attr` VALUES ('1', '置顶', 'red');
INSERT INTO `attr` VALUES ('2', '点赞', 'blue');
INSERT INTO `attr` VALUES ('3', '收藏', 'green');

-- ----------------------------
-- Table structure for `blog`
-- ----------------------------
DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `click` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) COLLATE utf8_bin NOT NULL,
  `content` text COLLATE utf8_bin,
  `time` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `del` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of blog
-- ----------------------------
INSERT INTO `blog` VALUES ('10', '3', 'lbo', 0x3C703E616920E5A5BDE5989E3C2F703E, '1500202689', '8', '0');
INSERT INTO `blog` VALUES ('50', '5', 'ascs', 0x3C703E617363617363736463643C62722F3E3C2F703E, '1500294048', '8', '0');

-- ----------------------------
-- Table structure for `blog_attr`
-- ----------------------------
DROP TABLE IF EXISTS `blog_attr`;
CREATE TABLE `blog_attr` (
  `bid` int(10) NOT NULL,
  `aid` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of blog_attr
-- ----------------------------
INSERT INTO `blog_attr` VALUES ('3', '1');
INSERT INTO `blog_attr` VALUES ('3', '2');
INSERT INTO `blog_attr` VALUES ('3', '3');
INSERT INTO `blog_attr` VALUES ('5', '1');
INSERT INTO `blog_attr` VALUES ('5', '2');
INSERT INTO `blog_attr` VALUES ('6', '1');
INSERT INTO `blog_attr` VALUES ('6', '2');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `sort` int(11) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) COLLATE utf8_bin NOT NULL,
  `pid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('3', '2', 'Mysql', '0');
INSERT INTO `category` VALUES ('1', '3', '前端开发', '0');
INSERT INTO `category` VALUES ('2', '4', '后端开发', '0');
INSERT INTO `category` VALUES ('1', '5', 'php', '4');
INSERT INTO `category` VALUES ('2', '6', 'java', '4');
INSERT INTO `category` VALUES ('2', '7', 'html', '3');
INSERT INTO `category` VALUES ('1', '8', 'css', '3');
INSERT INTO `category` VALUES ('3', '9', 'javascript', '3');
INSERT INTO `category` VALUES ('4', '10', 'angular', '3');
INSERT INTO `category` VALUES ('5', '11', 'vue', '3');

-- ----------------------------
-- Table structure for `login`
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_bin NOT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL,
  `loginip` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `logintime` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES ('1', 'admin', '123456', '0.0.0.0', '1500776158');

-- ----------------------------
-- Table structure for `session`
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `session_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `session_expire` int(11) NOT NULL,
  `session_data` blob,
  UNIQUE KEY `session_id` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('lkou55ormfse6uncpjink9clf2', '1500828865', '');
