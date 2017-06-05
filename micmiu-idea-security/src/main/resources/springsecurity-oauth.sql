/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : springsecurity

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2017-06-01 17:38:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for clientdetails
-- ----------------------------
DROP TABLE IF EXISTS `clientdetails`;
CREATE TABLE `clientdetails` (
  `appId` varchar(128) NOT NULL,
  `resourceIds` varchar(256) DEFAULT NULL,
  `appSecret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `grantTypes` varchar(256) DEFAULT NULL,
  `redirectUrl` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additionalInformation` varchar(4096) DEFAULT NULL,
  `autoApproveScopes` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`appId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of clientdetails
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_access_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_token`;
CREATE TABLE `oauth_access_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(128) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  `authentication` blob,
  `refresh_token` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_access_token
-- ----------------------------
INSERT INTO `oauth_access_token` VALUES ('c6cd572858e8ac5fea969d66e55de84a', 0xACED0005737200436F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E636F6D6D6F6E2E44656661756C744F4175746832416363657373546F6B656E0CB29E361B24FACE0200064C00156164646974696F6E616C496E666F726D6174696F6E74000F4C6A6176612F7574696C2F4D61703B4C000A65787069726174696F6E7400104C6A6176612F7574696C2F446174653B4C000C72656672657368546F6B656E74003F4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F636F6D6D6F6E2F4F417574683252656672657368546F6B656E3B4C000573636F706574000F4C6A6176612F7574696C2F5365743B4C0009746F6B656E547970657400124C6A6176612F6C616E672F537472696E673B4C000576616C756571007E000578707372001E6A6176612E7574696C2E436F6C6C656374696F6E7324456D7074794D6170593614855ADCE7D002000078707372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000015CF6F622E27870737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C0001637400164C6A6176612F7574696C2F436F6C6C656374696F6E3B7870737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F400000000000017400036170707874000662656172657274002433373135663331392D333733392D346232652D393336322D653431303635343766363564, '68d6901a59215e2cdaf742a811efebf7', 'admin', 'client2', 0xACED0005737200416F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F417574683241757468656E7469636174696F6EBD400B02166252130200024C000D73746F7265645265717565737474003C4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F4F4175746832526571756573743B4C00127573657241757468656E7469636174696F6E7400324C6F72672F737072696E676672616D65776F726B2F73656375726974792F636F72652F41757468656E7469636174696F6E3B787200476F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E416273747261637441757468656E7469636174696F6E546F6B656ED3AA287E6E47640E0200035A000D61757468656E746963617465644C000B617574686F7269746965737400164C6A6176612F7574696C2F436F6C6C656374696F6E3B4C000764657461696C737400124C6A6176612F6C616E672F4F626A6563743B787000737200266A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654C697374FC0F2531B5EC8E100200014C00046C6973747400104C6A6176612F7574696C2F4C6973743B7872002C6A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65436F6C6C656374696F6E19420080CB5EF71E0200014C00016371007E00047870737200136A6176612E7574696C2E41727261794C6973747881D21D99C7619D03000149000473697A65787000000001770400000001737200426F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E617574686F726974792E53696D706C654772616E746564417574686F7269747900000000000001A40200014C0004726F6C657400124C6A6176612F6C616E672F537472696E673B787074000A524F4C455F41444D494E7871007E000C707372003A6F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E4F41757468325265717565737400000000000000010200075A0008617070726F7665644C000B617574686F72697469657371007E00044C000A657874656E73696F6E7374000F4C6A6176612F7574696C2F4D61703B4C000B726564697265637455726971007E000E4C00077265667265736874003B4C6F72672F737072696E676672616D65776F726B2F73656375726974792F6F61757468322F70726F76696465722F546F6B656E526571756573743B4C000B7265736F7572636549647374000F4C6A6176612F7574696C2F5365743B4C000D726573706F6E7365547970657371007E0014787200386F72672E737072696E676672616D65776F726B2E73656375726974792E6F61757468322E70726F76696465722E426173655265717565737436287A3EA37169BD0200034C0008636C69656E74496471007E000E4C001172657175657374506172616D657465727371007E00124C000573636F706571007E00147870740007636C69656E7432737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C654D6170F1A5A8FE74F507420200014C00016D71007E00127870737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C77080000001000000006740004636F646574000659326B75534174000A6772616E745F74797065740012617574686F72697A6174696F6E5F636F646574000D726573706F6E73655F74797065740004636F646574000C72656469726563745F757269740016687474703A2F2F6C6F63616C686F73743A383038312F740006736563726574740006736563726574740009636C69656E745F6964740007636C69656E743278737200256A6176612E7574696C2E436F6C6C656374696F6E7324556E6D6F6469666961626C65536574801D92D18F9B80550200007871007E0009737200176A6176612E7574696C2E4C696E6B656448617368536574D86CD75A95DD2A1E020000787200116A6176612E7574696C2E48617368536574BA44859596B8B7340300007870770C000000103F4000000000000174000361707078017371007E002B770C000000103F40000000000000787371007E001A3F400000000000007708000000100000000078740016687474703A2F2F6C6F63616C686F73743A383038312F707371007E002B770C000000103F40000000000000787371007E002B770C000000103F4000000000000171007E0021787372004F6F72672E737072696E676672616D65776F726B2E73656375726974792E61757468656E7469636174696F6E2E557365726E616D6550617373776F726441757468656E7469636174696F6E546F6B656E00000000000001A40200024C000B63726564656E7469616C7371007E00054C00097072696E636970616C71007E00057871007E0003017371007E00077371007E000B0000000177040000000171007E000F7871007E0036737200486F72672E737072696E676672616D65776F726B2E73656375726974792E7765622E61757468656E7469636174696F6E2E57656241757468656E7469636174696F6E44657461696C7300000000000001A40200024C000D72656D6F74654164647265737371007E000E4C000973657373696F6E496471007E000E787074000F303A303A303A303A303A303A303A31740020434134374242444336434337353739323036454542303535303044343834384570737200326F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657200000000000001A40200075A00116163636F756E744E6F6E457870697265645A00106163636F756E744E6F6E4C6F636B65645A001563726564656E7469616C734E6F6E457870697265645A0007656E61626C65644C000B617574686F72697469657371007E00144C000870617373776F726471007E000E4C0008757365726E616D6571007E000E7870010101017371007E0028737200116A6176612E7574696C2E54726565536574DD98509395ED875B0300007870737200466F72672E737072696E676672616D65776F726B2E73656375726974792E636F72652E7573657264657461696C732E5573657224417574686F72697479436F6D70617261746F7200000000000001A4020000787077040000000171007E000F787074000561646D696E, null);

-- ----------------------------
-- Table structure for oauth_approvals
-- ----------------------------
DROP TABLE IF EXISTS `oauth_approvals`;
CREATE TABLE `oauth_approvals` (
  `userId` varchar(256) DEFAULT NULL,
  `clientId` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `expiresAt` datetime DEFAULT NULL,
  `lastModifiedAt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_approvals
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details` (
  `client_id` varchar(128) NOT NULL,
  `resource_ids` varchar(256) DEFAULT NULL,
  `client_secret` varchar(256) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `authorized_grant_types` varchar(256) DEFAULT NULL,
  `web_server_redirect_uri` varchar(256) DEFAULT NULL,
  `authorities` varchar(256) DEFAULT NULL,
  `access_token_validity` int(11) DEFAULT NULL,
  `refresh_token_validity` int(11) DEFAULT NULL,
  `additional_information` varchar(4096) DEFAULT NULL,
  `autoapprove` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('client', null, 'secret', 'app', 'authorization_code', 'http://www.baidu.com', null, null, null, null, null);
INSERT INTO `oauth_client_details` VALUES ('client2', null, 'secret', 'app', 'authorization_code', 'http://localhost:8081/', null, null, null, null, null);

-- ----------------------------
-- Table structure for oauth_client_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_token`;
CREATE TABLE `oauth_client_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication_id` varchar(128) NOT NULL,
  `user_name` varchar(256) DEFAULT NULL,
  `client_id` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`authentication_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_client_token
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_code
-- ----------------------------
DROP TABLE IF EXISTS `oauth_code`;
CREATE TABLE `oauth_code` (
  `code` varchar(256) DEFAULT NULL,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_code
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_token`;
CREATE TABLE `oauth_refresh_token` (
  `token_id` varchar(256) DEFAULT NULL,
  `token` blob,
  `authentication` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of oauth_refresh_token
-- ----------------------------

-- ----------------------------
-- Table structure for system_resources
-- ----------------------------
DROP TABLE IF EXISTS `system_resources`;
CREATE TABLE `system_resources` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` int(10) DEFAULT NULL COMMENT '上级资源 父节点ID',
  `name` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '资源名称',
  `action` enum('LINKED','BUTTON','MENU') COLLATE utf8_bin NOT NULL DEFAULT 'LINKED' COMMENT '动作:按钮,菜单',
  `url` varchar(255) COLLATE utf8_bin NOT NULL COMMENT '资源链接地址',
  `descritpion` varchar(255) COLLATE utf8_bin DEFAULT NULL COMMENT '资源描述',
  `clazz` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKj61cu435dgjpl59r5k0rbn4fi` (`parent_id`),
  CONSTRAINT `FKj61cu435dgjpl59r5k0rbn4fi` FOREIGN KEY (`parent_id`) REFERENCES `system_resources` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='系统资源表';

-- ----------------------------
-- Records of system_resources
-- ----------------------------
INSERT INTO `system_resources` VALUES ('1', null, '系统管理', 'MENU', '/system/manage', '系统管理', null);
INSERT INTO `system_resources` VALUES ('2', '1', '用户管理', 'MENU', '/systemUser/manage', '用户管理', null);
INSERT INTO `system_resources` VALUES ('3', '2', '用户列表', 'MENU', '/systemUser/getList/**', '用户列表', null);
INSERT INTO `system_resources` VALUES ('4', '1', '角色管理', 'MENU', '/systemRole/manage', '角色管理', null);
INSERT INTO `system_resources` VALUES ('5', '4', '角色列表', 'MENU', '/systemRole/getList/**', '角色列表', null);

-- ----------------------------
-- Table structure for system_role
-- ----------------------------
DROP TABLE IF EXISTS `system_role`;
CREATE TABLE `system_role` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `code` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '编码',
  `name` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_role
-- ----------------------------
INSERT INTO `system_role` VALUES ('1', 'C001', 'ROLE_ADMIN');
INSERT INTO `system_role` VALUES ('2', 'C002', 'ROLE_DBA');
INSERT INTO `system_role` VALUES ('3', 'C003', 'ROLE_USER');
INSERT INTO `system_role` VALUES ('4', 'C004', 'ROLE_ANON');

-- ----------------------------
-- Table structure for system_role_resource
-- ----------------------------
DROP TABLE IF EXISTS `system_role_resource`;
CREATE TABLE `system_role_resource` (
  `system_resource_id` int(10) NOT NULL,
  `system_role_id` int(10) NOT NULL,
  PRIMARY KEY (`system_resource_id`,`system_role_id`),
  KEY `FK5j9p7h9ei46dh8i5v9xhv991j` (`system_role_id`),
  CONSTRAINT `FK5j9p7h9ei46dh8i5v9xhv991j` FOREIGN KEY (`system_role_id`) REFERENCES `system_role` (`id`),
  CONSTRAINT `FKafykx3ch5i8c2ndckgkwvgqvo` FOREIGN KEY (`system_resource_id`) REFERENCES `system_resources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_role_resource
-- ----------------------------
INSERT INTO `system_role_resource` VALUES ('1', '1');
INSERT INTO `system_role_resource` VALUES ('2', '1');
INSERT INTO `system_role_resource` VALUES ('3', '1');
INSERT INTO `system_role_resource` VALUES ('5', '1');

-- ----------------------------
-- Table structure for system_user
-- ----------------------------
DROP TABLE IF EXISTS `system_user`;
CREATE TABLE `system_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(36) COLLATE utf8_bin NOT NULL COMMENT '用户名',
  `password` varchar(100) COLLATE utf8_bin NOT NULL COMMENT '用户密码',
  `email` varchar(36) COLLATE utf8_bin DEFAULT NULL COMMENT '用户邮箱',
  `phone` bigint(11) DEFAULT NULL COMMENT '用户手机号',
  `account_non_expired` tinyint(1) DEFAULT NULL COMMENT '账户是否过期',
  `account_non_locked` tinyint(1) DEFAULT NULL COMMENT '账户是否锁定',
  `credentials_non_expired` tinyint(1) DEFAULT NULL COMMENT '凭证是否过期',
  `enabled` tinyint(1) DEFAULT NULL COMMENT '账户启用状态',
  `last_time` timestamp NULL DEFAULT NULL COMMENT '用户最后登录时间',
  `attempts` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK74y7xiqrvp39wycn0ron4xq4h` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_user
-- ----------------------------
INSERT INTO `system_user` VALUES ('1', 'admin', '$2a$10$xJHQtZV2Dy4sq4bkitCJNeygXbW6mFaLhjT12GS2kxNCBvAP21Bd6', '15517551511@126.com', '15218725510', '1', '0', '1', '1', '2017-05-16 08:39:12', '3');
INSERT INTO `system_user` VALUES ('2', 'HeYixuan', '$2a$10$eRmIB.z4LUJ40N3NQ99y4u.ie2oDXjEO0e6zlJsLU/3IGwZa36FWW', '939531410@126.com', '15986350265', '1', '1', '1', '1', '2017-04-28 10:26:08', '3');
INSERT INTO `system_user` VALUES ('3', 'dada', 'aa', 'aaaad', '1111111', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('4', 'bbca', '111131', 'aaaada', '132331321', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('5', 'eqwdada', 'adaa', 'dada', '13131515', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('6', 'dasa', 'adada', '131', '131314154657', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('7', 'r8689', 'r74474', '1658', '907574', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('8', 'y235221', '23424', '2242', '654673', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('9', 'aag2422', 'faa', '131', '45631', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('10', '368489', '521sgng', '6734', '2142151', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('11', 'adalllk;', 'gds', 'gas', '1367', null, null, null, null, null, null);
INSERT INTO `system_user` VALUES ('12', 'dd', 'hdds', 'dhdhd', '13131', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for system_user_role
-- ----------------------------
DROP TABLE IF EXISTS `system_user_role`;
CREATE TABLE `system_user_role` (
  `system_user_id` int(10) NOT NULL,
  `system_role_id` int(10) NOT NULL,
  PRIMARY KEY (`system_user_id`,`system_role_id`),
  KEY `FK8rnw9xngs7ib3ll8rm6v6nq17` (`system_role_id`),
  CONSTRAINT `FK5soqc4583re86busn1idb194d` FOREIGN KEY (`system_user_id`) REFERENCES `system_user` (`id`),
  CONSTRAINT `FK8rnw9xngs7ib3ll8rm6v6nq17` FOREIGN KEY (`system_role_id`) REFERENCES `system_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of system_user_role
-- ----------------------------
INSERT INTO `system_user_role` VALUES ('1', '1');
INSERT INTO `system_user_role` VALUES ('2', '3');
