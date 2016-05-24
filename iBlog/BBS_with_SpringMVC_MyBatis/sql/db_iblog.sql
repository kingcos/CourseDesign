/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50712
 Source Host           : localhost
 Source Database       : db_iblog

 Target Server Type    : MySQL
 Target Server Version : 50712
 File Encoding         : utf-8

 Date: 05/24/2016 08:26:16 AM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `MsID` int(11) NOT NULL AUTO_INCREMENT,
  `MsUserName` varchar(50) DEFAULT NULL,
  `MsDate` datetime DEFAULT NULL,
  `MsTitle` varchar(100) DEFAULT NULL,
  `MsContent` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`MsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(50) DEFAULT NULL,
  `UserPassword` varchar(50) DEFAULT NULL,
  `UserEmail` varchar(50) DEFAULT NULL,
  `UserTel` varchar(11) DEFAULT NULL,
  `UserBlog` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `user` (UserName, UserPassword, UserEmail) VALUES ('maimieng.com', 'maimieng', 'kingcosv@hotmail.com');

-- ----------------------------
--  Table structure for `reply`
-- ----------------------------
DROP TABLE IF EXISTS `reply`;
CREATE TABLE `reply` (
  `ReID` int(11) NOT NULL AUTO_INCREMENT,
  `ReMsID` int(11) DEFAULT NULL,
  `ReUserName` varchar(50) DEFAULT NULL,
  `ReDate` datetime DEFAULT NULL,
  `ReContent` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ReID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
