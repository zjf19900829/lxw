SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `college`
-- ----------------------------
CREATE TABLE `college` (
	`college_id` int(11)  AUTO_INCREMENT,
	`name` varchar(255) DEFAULT '',
	`cover` text DEFAULT NULL,
	`website` varchar(255) DEFAULT '',
	`phone` varchar(255) DEFAULT '',
	`addr` varchar(255) DEFAULT '',
	`imgs` text DEFAULT NULL,
	`email` varchar(255) DEFAULT '',
	PRIMARY KEY (`college_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `college` ADD `college_id` int(11)  AUTO_INCREMENT;
ALTER TABLE `college` ADD `name` varchar(255) DEFAULT '';
ALTER TABLE `college` ADD `cover` text DEFAULT NULL;
ALTER TABLE `college` ADD `website` varchar(255) DEFAULT '';
ALTER TABLE `college` ADD `phone` varchar(255) DEFAULT '';
ALTER TABLE `college` ADD `addr` varchar(255) DEFAULT '';
ALTER TABLE `college` ADD `imgs` text DEFAULT NULL;
ALTER TABLE `college` ADD `email` varchar(255) DEFAULT '';