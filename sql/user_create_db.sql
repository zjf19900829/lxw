SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `user`
-- ----------------------------
CREATE TABLE `user` (
	`user_id` int(11)  AUTO_INCREMENT,
	`acc` varchar(255) DEFAULT '',
	`discuz_id` varchar(255) DEFAULT '',
	`psw` varchar(255) DEFAULT '',
	`face` text DEFAULT NULL,
	`create_time` bigint(20) DEFAULT '0',
	`role` int(11) DEFAULT '0',
	`family_name` varchar(255) DEFAULT '',
	`given_name` varchar(255) DEFAULT '',
	`gender` int(11) DEFAULT '0',
	`province` varchar(255) DEFAULT '',
	`city` varchar(255) DEFAULT '',
	`email` varchar(255) DEFAULT '',
	`src` int(11) DEFAULT '0',
	`src_text` varchar(255) DEFAULT '',
	`contract_name` varchar(255) DEFAULT '',
	`contract_mobile` varchar(255) DEFAULT '',
	`website` varchar(255) DEFAULT '',
	PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `user` ADD `user_id` int(11)  AUTO_INCREMENT;
ALTER TABLE `user` ADD `acc` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `discuz_id` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `psw` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `face` text DEFAULT NULL;
ALTER TABLE `user` ADD `create_time` bigint(20) DEFAULT '0';
ALTER TABLE `user` ADD `role` int(11) DEFAULT '0';
ALTER TABLE `user` ADD `family_name` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `given_name` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `gender` int(11) DEFAULT '0';
ALTER TABLE `user` ADD `province` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `city` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `email` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `src` int(11) DEFAULT '0';
ALTER TABLE `user` ADD `src_text` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `contract_name` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `contract_mobile` varchar(255) DEFAULT '';
ALTER TABLE `user` ADD `website` varchar(255) DEFAULT '';