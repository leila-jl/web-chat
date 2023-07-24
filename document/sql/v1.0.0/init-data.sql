SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (1, NULL, '平台总览', 'home', 1, 'icon_shouye', 1, 1, b'0', 1, NULL, '2022-06-28 10:16:03', '2022-06-28 10:16:05');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (2, NULL, '门户管理', 'portalManagement', 1, 'icon_xitongguanli', 2, 1, b'0', 1, NULL, '2022-06-28 10:27:28', '2022-06-28 10:27:30');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (3, NULL, '运营大屏', 'operatingScreen', 1, 'icon_xitongguanli', 3, 1, b'0', 1, NULL, '2022-06-28 10:30:10', '2022-06-28 10:30:12');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (4, NULL, '指数大屏', 'indexScreen', 1, 'icon_xitongguanli', 4, 1, b'0', 1, NULL, '2022-06-28 10:30:25', '2022-06-28 10:30:27');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (5, NULL, '应用中心', 'applicationCenter', 1, 'icon_xitongguanli', 5, 1, b'0', 1, NULL, '2022-06-28 10:30:45', '2022-06-28 10:30:47');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (6, NULL, '用户管理', 'userManagement', 1, 'icon_xitongguanli', 6, 1, b'0', 1, NULL, '2022-06-28 10:31:02', '2022-06-28 10:31:04');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (7, NULL, '系统管理', 'systemManagement', 1, 'icon_xitongguanli', 7, 1, b'0', 1, NULL, '2022-06-28 10:31:19', '2022-06-28 10:31:22');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (8, 2, '动态发布', 'dynamicRelease', 1, 'icon_yuandian', 2, 2, b'0', 1, NULL, '2022-06-28 10:43:13', '2022-06-28 10:43:16');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (9, 2, '动态审核', 'dynamicAudit', 1, 'icon_yuandian', 3, 2, b'0', 1, NULL, '2022-06-28 10:43:35', '2022-06-28 10:43:38');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (10, 2, '轮播管理', 'lbyManagement', 1, 'icon_yuandian', 1, 2, b'0', 1, NULL, '2022-06-28 10:43:58', '2022-06-28 10:44:00');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (11, 7, '应用管理', 'applicationManagement', 1, 'icon_yuandian', 2, 2, b'0', 1, NULL, '2022-06-28 10:44:42', '2022-06-28 10:44:45');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (12, 7, '数据字典', 'dataDictionary', 1, 'icon_yuandian', 4, 2, b'0', 1, NULL, '2022-06-28 10:45:11', '2022-06-28 10:45:14');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (13, 7, '系统公告', 'systemAnnouncement', 1, 'icon_yuandian', 3, 2, b'0', 1, NULL, '2022-06-28 10:45:33', '2022-06-28 10:45:35');
INSERT INTO `sys_menu`(`id`, `parent_id`, `name`, `route`, `type`, `icon`, `sort`, `level`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (14, 7, '角色管理', 'roleManagement', 1, 'icon_yuandian', 1, 2, b'0', 1, NULL, '2022-06-28 10:45:56', '2022-06-28 10:45:59');

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (1, '超级管理员', '超级管理员', 1, b'0', b'1', 1, 1, '2022-06-24 16:49:24', '2022-06-30 19:47:18');
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (2, '省级管理员', '省级管理员', 1, b'0', b'0', 1, 1, '2022-06-28 10:02:51', '2022-06-30 14:39:37');
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (3, '市级管理员', '市级管理员', 1, b'0', b'0', 1, 1, '2022-06-28 10:03:13', '2022-06-30 14:41:48');
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (4, '县级管理员', '县级管理员', 1, b'0', b'0', 1, 1, '2022-06-28 10:03:46', '2022-06-30 14:41:18');
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (5, '乡级管理员', '乡级管理员', 1, b'0', b'0', 1, 1, '2022-06-28 10:04:07', '2022-06-30 14:28:13');
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (6, '村级管理员', '村级管理员', 1, b'0', b'0', 1, 1, '2022-06-28 10:04:26', '2022-06-30 14:28:13');
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (7, '移动管理员', '移动管理员', 1, b'0', b'0', 1, NULL, '2022-07-15 11:02:31', '2022-07-15 11:02:31');
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (8, '内容审核员', '内容审核员', 1, b'0', b'0', 1, NULL, '2022-07-15 11:03:01', '2022-07-15 11:03:01');
INSERT INTO `sys_role`(`id`, `name`, `description`, `status`, `is_deleted`, `is_supervisor`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (9, '政企用户', '政企用户', 1, b'0', b'0', 1, NULL, '2022-07-15 11:06:18', '2022-07-15 11:06:18');

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
INSERT INTO `sys_admin`(`id`, `create_admin_id`, `area_id`, `password`, `phone`, `status`, `avatar`, `create_time`, `update_time`, `update_admin_id`, `name`, `uid`, `md5_password`, `uid_expire_time`, `gender`, `birthday`, `address`, `industry`)
VALUES (1, 1, 26, '$2a$10$sgjn1Ye.gw8tnQ1QQAU1LupSJreQb2CutH6TSbFNStAYoV/1uBuA2', '18512825950', 1, NULL, '2022-07-08 14:00:08', '2022-07-11 10:01:45', 1, '超级管理员', NULL, 'bf79f75e8f8b9625fb9d7021266a8685', NULL, 1, NULL, NULL, NULL);

-- ----------------------------
-- Records of sys_admin_role
-- ----------------------------
INSERT INTO `sys_admin_role`(`admin_id`, `role_id`, `create_admin_id`, `create_time`)
VALUES (1, 1, 1, '2022-07-11 10:09:00');

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 1);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 2);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 3);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 4);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 5);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 6);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 7);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 8);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 9);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 10);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 11);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 12);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 13);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (1, 14);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 1);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 2);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 3);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 4);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 5);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 6);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 7);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 8);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (7, 10);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (8, 9);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (9, 4);
INSERT INTO `sys_role_menu`(`role_id`, `menu_id`) VALUES (9, 5);

-- ----------------------------
-- Records of sys_dictionary_group
-- ----------------------------
INSERT INTO `sys_dictionary_group`(`id`, `name`, `code`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (1, '应用类型', 'SYS_APP_TYPE', 1, b'0', 1, 1, '2022-06-22 13:58:51', '2022-07-04 16:53:16');
INSERT INTO `sys_dictionary_group`(`id`, `name`, `code`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (2, '应用分组', 'SYS_APP_GROUP', 1, b'0', 1, 1, '2022-06-22 13:59:16', '2022-06-22 13:59:18');
INSERT INTO `sys_dictionary_group`(`id`, `name`, `code`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (3, '动态栏目', 'NEWS_PROGRAM', 1, b'0', 1, NULL, '2022-06-22 14:27:25', '2022-06-22 14:27:28');
INSERT INTO `sys_dictionary_group`(`id`, `name`, `code`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (4, '小程序应用分组', 'XCX_APP_TYPE', 1, b'0', 1, 1, '2022-06-24 11:43:36', '2022-06-24 11:43:39');

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (1, 1, '管理后台', 2, 1, b'0', 1, 1, '2022-06-22 13:59:54', '2022-07-04 15:28:58');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (2, 1, '数据大屏', 1, 1, b'0', 1, 1, '2022-06-22 13:59:55', '2022-07-04 15:28:58');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (3, 2, '乡村综治', 1, 1, b'0', 1, 1, '2022-06-22 13:59:56', '2022-06-22 14:00:03');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (4, 2, '数智农业', 2, 1, b'0', 1, 1, '2022-06-22 13:59:57', '2022-06-22 14:00:04');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (5, 2, '振兴管理', 3, 1, b'0', 1, 1, '2022-06-22 13:59:58', '2022-06-22 14:00:05');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (6, 2, '基层医疗', 4, 1, b'0', 1, 1, '2022-06-22 13:59:59', '2022-06-22 14:00:06');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (7, 2, '乡村教育', 5, 1, b'0', 1, 1, '2022-06-22 14:59:59', '2022-06-22 14:00:07');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (8, 3, '政策解读', 1, 1, b'0', 1, NULL, '2022-06-22 14:28:16', '2022-06-22 14:28:19');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (9, 3, '智慧农业', 2, 1, b'0', 1, NULL, '2022-06-22 14:28:16', '2022-06-22 14:28:19');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (10, 3, '数智乡村', 3, 1, b'0', 1, NULL, '2022-06-22 14:28:16', '2022-06-22 14:28:19');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (11, 3, '一村一品', 4, 1, b'0', 1, NULL, '2022-06-22 14:28:16', '2022-06-22 14:28:19');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (12, 3, '美丽乡村', 5, 1, b'0', 1, NULL, '2022-06-22 14:28:16', '2022-06-22 14:28:19');
INSERT INTO `sys_dictionary`(`id`, `dictionary_group_id`, `name`, `sort`, `status`, `is_deleted`, `create_admin_id`, `update_admin_id`, `create_time`, `update_time`)
VALUES (13, 2, '美丽乡村', 6, 1, b'0', 1, 1, '2022-06-24 10:58:59', '2022-06-24 10:59:02');

-- ----------------------------
-- Records of sys_member
-- ----------------------------
INSERT INTO `sys_member`(`id`, `phone`, `password`, `open_id`, `nick_name`, `avatar`, `status`, `create_time`, `update_time`)
VALUES (1, '18512825950', '$2a$10$EzXEa2gyVwVMn3iFxq06EO0tKPjLCgqODqj6UiQvLZbE6N9h6b4l2', 'olePm4hvrAOA1KMVhxlKy2xA1kVo', '马马', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJianppdS8dFfUwEkojTcx9gGpuzpKL4lR0kUYGRdzPdCYjicOpsMrl92o4ckNEufBOGxdgicQticFdUw/132', 1, '2022-07-11 09:04:59', '2022-07-11 09:04:59');
INSERT INTO `sys_member`(`id`, `phone`, `password`, `open_id`, `nick_name`, `avatar`, `status`, `create_time`, `update_time`)
VALUES (2, '15330094466', '$2a$10$EzXEa2gyVwVMn3iFxq06EO0tKPjLCgqODqj6UiQvLZbE6N9h6b4l2', 'olePm4hvrAOA1KMVhxlKy2xA1kVo', '徐俊', 'https://thirdwx.qlogo.cn/mmopen/vi_32/Q0j4TwGTfTJianppdS8dFfUwEkojTcx9gGpuzpKL4lR0kUYGRdzPdCYjicOpsMrl92o4ckNEufBOGxdgicQticFdUw/132', 1, '2022-07-11 09:04:59', '2022-07-11 09:04:59');

SET FOREIGN_KEY_CHECKS = 1;