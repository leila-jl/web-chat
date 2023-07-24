SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
//admin表增加用户协议已读未读
ALTER TABLE sys_admin ADD `is_read_user_agreement` int(1) NOT NULL DEFAULT '0' COMMENT '是否读用户协议 0-没读 1-读了';

ALTER TABLE bg_tag ADD `area_id` bigint(20) NOT NULL COMMENT '区域ID';

SET FOREIGN_KEY_CHECKS = 1;