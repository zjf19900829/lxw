SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `apply`
-- ----------------------------
CREATE TABLE `apply` (
	`apply_id` int(11)  AUTO_INCREMENT,
	`user_id` int(11) DEFAULT '0',
	`agency_id` int(11) DEFAULT '0',
	`status` int(11) DEFAULT '0',
	`family_name` varchar(255) DEFAULT '',
	`given_name` varchar(255) DEFAULT '',
	`gender` int(11) DEFAULT '0',
	`birthday` bigint(20) DEFAULT '0',
	`province` varchar(255) DEFAULT '',
	`city` varchar(255) DEFAULT '',
	`live_addr` varchar(255) DEFAULT '',
	`email` varchar(255) DEFAULT '',
	`mobile` varchar(255) DEFAULT '',
	`qualification` varchar(255) DEFAULT '',
	`is_studying` int(11) DEFAULT '0',
	`max_score` int(11) DEFAULT '0',
	`lang` int(11) DEFAULT '0',
	`resume` text DEFAULT NULL,
	`is_punish` int(11) DEFAULT '0',
	`is_crime` int(11) DEFAULT '0',
	`cmnt` text DEFAULT NULL,
	`atv` text DEFAULT NULL,
	`award` text DEFAULT NULL,
	PRIMARY KEY (`apply_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `apply` ADD `apply_id` int(11)  AUTO_INCREMENT;
ALTER TABLE `apply` ADD `user_id` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `agency_id` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `status` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `family_name` varchar(255) DEFAULT '';
ALTER TABLE `apply` ADD `given_name` varchar(255) DEFAULT '';
ALTER TABLE `apply` ADD `gender` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `birthday` bigint(20) DEFAULT '0';
ALTER TABLE `apply` ADD `province` varchar(255) DEFAULT '';
ALTER TABLE `apply` ADD `city` varchar(255) DEFAULT '';
ALTER TABLE `apply` ADD `live_addr` varchar(255) DEFAULT '';
ALTER TABLE `apply` ADD `email` varchar(255) DEFAULT '';
ALTER TABLE `apply` ADD `mobile` varchar(255) DEFAULT '';
ALTER TABLE `apply` ADD `qualification` varchar(255) DEFAULT '';
ALTER TABLE `apply` ADD `is_studying` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `max_score` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `lang` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `resume` text DEFAULT NULL;
ALTER TABLE `apply` ADD `is_punish` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `is_crime` int(11) DEFAULT '0';
ALTER TABLE `apply` ADD `cmnt` text DEFAULT NULL;
ALTER TABLE `apply` ADD `atv` text DEFAULT NULL;
ALTER TABLE `apply` ADD `award` text DEFAULT NULL;