SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------

ALTER TABLE sys_role ADD `area_id` bigint(20) DEFAULT NULL COMMENT '区域ID';
ALTER TABLE sys_role CHANGE `is_supervisor` `type` int(1) NOT NULL COMMENT '角色类型（0：普通；1：超管；2：村管）';

SET FOREIGN_KEY_CHECKS = 1;

ALTER TABLE `sys_menu`
ADD COLUMN `category`  int(1) NOT NULL DEFAULT 1 COMMENT '菜单分类 1普通菜单 2特别菜单' AFTER `update_time`;