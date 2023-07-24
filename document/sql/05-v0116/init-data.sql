SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` (`name`, `description`, `status`, `is_deleted`, `type`, `area_id`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`) VALUES ('村管理员', '预置角色-村管理员', '1', b'0', '2', NULL, '1', '1', '2023-01-04 13:39:58', '2023-01-10 14:33:23');

INSERT INTO `sys_menu` (`parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`, `category`) VALUES ('7', '特色功能管理', 'specialFunctionManage', '0', 'icon_shouye', '5', '2', b'0', '1', NULL, '2022-09-16 10:51:02', '2022-09-16 10:51:04', '2');

SET FOREIGN_KEY_CHECKS = 1;