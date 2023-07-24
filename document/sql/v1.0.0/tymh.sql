SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for industry_reports
-- ----------------------------
DROP TABLE IF EXISTS `industry_reports`;
CREATE TABLE `industry_reports` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `cover` varchar(255) NOT NULL COMMENT '封面url',
  `cover_type` int(1) NOT NULL COMMENT '封面类型（1图片 2视频）',
  `src` varchar(255) DEFAULT NULL COMMENT '视频url',
  `introduction` varchar(255) NOT NULL COMMENT '简介',
  `type_name` varchar(50) NOT NULL COMMENT '报告类型',
  `content` mediumtext NOT NULL COMMENT '内容',
  `status` bit(1) DEFAULT b'1' COMMENT '1启用 0禁用 ',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='行业报告表';

-- ----------------------------
-- Table structure for portal_visit_num
-- ----------------------------
DROP TABLE IF EXISTS `portal_visit_num`;
CREATE TABLE `portal_visit_num` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `visit_num` int(10) NOT NULL COMMENT '访问次数',
  `visit_date` datetime NOT NULL COMMENT '访问记录时间（精确到天）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='web官网每天访问量表';

-- ----------------------------
-- Table structure for premium_case
-- ----------------------------
DROP TABLE IF EXISTS `premium_case`;
CREATE TABLE `premium_case` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `cover` varchar(255) CHARACTER SET utf32 NOT NULL COMMENT '封面',
  `cover_type` int(1) NOT NULL COMMENT '封面类型（1图片 2视频）',
  `src` varchar(255) DEFAULT NULL COMMENT '视频url',
  `introduction` varchar(255) NOT NULL COMMENT '简介',
  `type_name` varchar(50) NOT NULL COMMENT '案例类型',
  `content` mediumtext NOT NULL COMMENT '内容',
  `status` bit(1) DEFAULT b'1' COMMENT '1启用 0禁用 ',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='优秀案例表';

-- ----------------------------
-- Table structure for solution
-- ----------------------------
DROP TABLE IF EXISTS `solution`;
CREATE TABLE `solution` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `cover` varchar(255) NOT NULL COMMENT '封面',
  `cover_type` int(1) NOT NULL COMMENT '封面类型（1图片 2视频）',
  `src` varchar(255) DEFAULT NULL COMMENT '视频url',
  `introduction` varchar(255) NOT NULL COMMENT '简介',
  `type_name` varchar(50) NOT NULL COMMENT '解决方案类型',
  `content` mediumtext NOT NULL COMMENT '内容',
  `status` bit(1) DEFAULT b'1' COMMENT '1启用 0禁用 ',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='解决方案表';

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `create_admin_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `password` varchar(64) DEFAULT NULL COMMENT 'springsecurity 加密后的密码',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `status` int(1) NOT NULL COMMENT '状态（1：启用；2：禁用；3：注销；4：到期；5：锁定）',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_admin_id` bigint(20) NOT NULL COMMENT '修改者id',
  `name` varchar(64) DEFAULT NULL COMMENT '姓名',
  `uid` varchar(150) DEFAULT NULL COMMENT 'uid 用于统一认证',
  `md5_password` varchar(64) NOT NULL COMMENT 'md5密码',
  `uid_expire_time` datetime DEFAULT NULL COMMENT 'uid过期时间',
  `gender` int(1) NOT NULL COMMENT '性别 0-保密（默认） 1-男 20女',
  `birthday` varchar(50) DEFAULT NULL COMMENT '生日',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `industry` varchar(100) DEFAULT NULL COMMENT '所属行业',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `area_id` (`area_id`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

-- ----------------------------
-- Table structure for sys_admin_active_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_active_info`;
CREATE TABLE `sys_admin_active_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `admin_id` bigint(20) NOT NULL COMMENT '管理员ID',
  `active_info` varchar(120) NOT NULL COMMENT '活跃信息 时间+adminId',
  `create_time` datetime NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `active_info_unique` (`active_info`) USING BTREE COMMENT 'active_info唯一索引',
  KEY `admin_id` (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员活跃信息表';

-- ----------------------------
-- Table structure for sys_admin_bis_sim_login_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_bis_sim_login_info`;
CREATE TABLE `sys_admin_bis_sim_login_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `request_id` varchar(120) NOT NULL COMMENT '请求id 唯一',
  `call_back_status` bigint(20) DEFAULT NULL COMMENT '状态（0：初始化；1：成功；2：失败）',
  `desc` varchar(120) DEFAULT NULL COMMENT '描述',
  `create_time` datetime NOT NULL COMMENT '登录时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `task_id` varchar(120) DEFAULT NULL COMMENT '任务id',
  `call_back_data` varchar(2000) DEFAULT NULL COMMENT '回调时间',
  `sim_rpc_result` varchar(2000) DEFAULT NULL COMMENT '超级sim卡登录返回结果',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `request_id_unique` (`request_id`) USING BTREE COMMENT 'request_id唯一索引',
  KEY `request_id` (`request_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员超级sim卡登录信息表';

-- ----------------------------
-- Table structure for sys_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_login_log`;
CREATE TABLE `sys_admin_login_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `admin_id` bigint(20) NOT NULL COMMENT '管理员ID',
  `ip` varchar(50) DEFAULT NULL,
  `create_time` datetime NOT NULL COMMENT '登录时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=736 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员登录日志表';

-- ----------------------------
-- Table structure for sys_admin_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_role`;
CREATE TABLE `sys_admin_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `admin_id` bigint(20) NOT NULL COMMENT '管理员ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `create_admin_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `admin_id` (`admin_id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `create_admin_id` (`create_admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=628 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员角色关联';

-- ----------------------------
-- Table structure for sys_admin_wechat_login_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin_wechat_login_info`;
CREATE TABLE `sys_admin_wechat_login_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `request_id` varchar(120) NOT NULL COMMENT '请求id 唯一',
  `status` int(1) NOT NULL COMMENT '状态（0：初始化；1：成功；2：失败）',
  `create_time` datetime NOT NULL COMMENT '登录时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `request_id_unique` (`request_id`) USING BTREE COMMENT 'request_id唯一索引',
  KEY `request_id` (`request_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='管理员微信登录信息表';

-- ----------------------------
-- Table structure for sys_app
-- ----------------------------
DROP TABLE IF EXISTS `sys_app`;
CREATE TABLE `sys_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `type_entry_id` bigint(20) NOT NULL COMMENT '类型id 对应字典表id',
  `group_entry_id` bigint(20) NOT NULL COMMENT '分组id 对应字典表id',
  `white_logo` varchar(255) NOT NULL COMMENT '白底logo',
  `black_logo` varchar(255) NOT NULL COMMENT '黑底logo',
  `url` varchar(1000) NOT NULL COMMENT '跳转链接',
  `source_id` varchar(20) NOT NULL DEFAULT '' COMMENT '移动认证sourceid',
  `status` int(1) NOT NULL COMMENT '1待接入 2启用 3禁用 ',
  `secret` varchar(128) NOT NULL COMMENT '秘钥',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `creator_id` bigint(20) NOT NULL COMMENT '创建人id',
  `updater_id` bigint(20) NOT NULL COMMENT '更新人id',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `nameIndex` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='应用中心表';

-- ----------------------------
-- Table structure for sys_app_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_app_admin`;
CREATE TABLE `sys_app_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `admin_id` bigint(20) NOT NULL COMMENT '账号id',
  `app_id` bigint(20) NOT NULL COMMENT '应用id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `last_access_time` datetime DEFAULT NULL COMMENT '最后访问时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `adminIndex` (`app_id`,`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='应用账号关联表';

-- ----------------------------
-- Table structure for sys_area
-- ----------------------------
DROP TABLE IF EXISTS `sys_area`;
CREATE TABLE `sys_area` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父ID',
  `name` varchar(30) NOT NULL COMMENT '名称',
  `level` int(1) NOT NULL COMMENT '机构层级（0：国；1：省；2：市；3：县；4：乡；5：村）',
  `area_code` varchar(20) NOT NULL COMMENT '机构编码',
  `whole_area_code` varchar(20) NOT NULL COMMENT '完整机构编码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `is_last` bit(1) NOT NULL DEFAULT b'1' COMMENT '是否最后节点 0否1是',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_name` (`name`) USING BTREE,
  KEY `idx_area_code` (`area_code`) USING BTREE,
  KEY `idx_parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=707971 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='区域';

-- ----------------------------
-- Table structure for sys_area_extra
-- ----------------------------
DROP TABLE IF EXISTS `sys_area_extra`;
CREATE TABLE `sys_area_extra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `expand_target_num` int(10) DEFAULT NULL COMMENT '拓展目标达标数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `areaIndex` (`area_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='区域附加信息表';

-- ----------------------------
-- Table structure for sys_common_sms_send_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_common_sms_send_record`;
CREATE TABLE `sys_common_sms_send_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `result_code` varchar(20) NOT NULL COMMENT '返回结果',
  `success` int(1) DEFAULT NULL COMMENT '是否成功',
  `result_json` varchar(2000) DEFAULT NULL COMMENT '结果json',
  `create_time` datetime NOT NULL COMMENT '修改时间',
  `template_id` varchar(20) DEFAULT NULL COMMENT '模板id',
  `request_id` varchar(200) DEFAULT NULL COMMENT 'requestId',
  `msg_id` varchar(200) DEFAULT NULL COMMENT '消息id',
  `msg` varchar(255) DEFAULT NULL COMMENT '返回信息',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `result_code` (`result_code`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=290 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='通用短信发送记录表';

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `dictionary_group_id` bigint(20) NOT NULL COMMENT '字典组ID',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `sort` int(1) NOT NULL COMMENT '排序',
  `status` int(1) NOT NULL COMMENT '状态（1：已启用；2：已停用）',
  `is_deleted` bit(1) NOT NULL COMMENT '是否删除（0：否；1：是）',
  `create_admin_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `update_admin_id` bigint(20) DEFAULT NULL COMMENT '修改者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `dictionary_group_id` (`dictionary_group_id`) USING BTREE,
  KEY `create_admin_id` (`create_admin_id`) USING BTREE,
  KEY `update_admin_id` (`update_admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典';

-- ----------------------------
-- Table structure for sys_dictionary_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary_group`;
CREATE TABLE `sys_dictionary_group` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `code` varchar(20) NOT NULL COMMENT '编码',
  `status` int(1) NOT NULL COMMENT '状态（1：已启用；2：已停用）',
  `is_deleted` bit(1) NOT NULL COMMENT '是否删除（0：否；1：是）',
  `create_admin_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `update_admin_id` bigint(20) DEFAULT NULL COMMENT '修改者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `create_admin_id` (`create_admin_id`) USING BTREE,
  KEY `update_admin_id` (`update_admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='字典组';

-- ----------------------------
-- Table structure for sys_import_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_import_template`;
CREATE TABLE `sys_import_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `create_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `template_url` varchar(255) DEFAULT NULL COMMENT '模板url',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `update_id` bigint(20) NOT NULL COMMENT '修改者id',
  `type` int(11) NOT NULL COMMENT '模板类型 1-web管理用户导入',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='系统导入模板表';

-- ----------------------------
-- Table structure for sys_member
-- ----------------------------
DROP TABLE IF EXISTS `sys_member`;
CREATE TABLE `sys_member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `open_id` varchar(50) DEFAULT NULL COMMENT '微信id',
  `nick_name` varchar(20) DEFAULT NULL COMMENT '昵称',
  `avatar` varchar(255) DEFAULT NULL COMMENT '头像',
  `status` int(1) NOT NULL COMMENT '状态（1：正常；2：禁用；3：注销）',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='app用户表';

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `route` varchar(50) NOT NULL COMMENT '路由',
  `type` int(1) NOT NULL COMMENT '类型（1：菜单；2：按钮）',
  `icon` varchar(100) NOT NULL COMMENT '图标',
  `sort` int(1) NOT NULL COMMENT '排序',
  `level` int(1) DEFAULT NULL COMMENT '层级（type=2时，为空）',
  `is_deleted` bit(1) NOT NULL COMMENT '是否删除（0：否；1：是）',
  `create_admin_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `update_admin_id` bigint(20) DEFAULT NULL COMMENT '修改者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `create_admin_id` (`create_admin_id`) USING BTREE,
  KEY `update_admin_id` (`update_admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='菜单';

-- ----------------------------
-- Table structure for sys_message_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_message_task`;
CREATE TABLE `sys_message_task` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `content` varchar(255) NOT NULL COMMENT '内容',
  `push_system` int(10) NOT NULL COMMENT '推送终端',
  `push_time` datetime NOT NULL COMMENT '推送时间',
  `push_status` int(10) NOT NULL COMMENT '推送状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(20) NOT NULL COMMENT '名称',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `status` int(1) NOT NULL COMMENT '状态（1：已启用；2：已停用）',
  `is_deleted` bit(1) NOT NULL COMMENT '是否删除（0：否；1：是）',
  `is_supervisor` bit(1) NOT NULL COMMENT '是否为超级管理员角色（0：否；1：是）',
  `create_admin_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `update_admin_id` bigint(20) DEFAULT NULL COMMENT '修改者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `create_admin_id` (`create_admin_id`) USING BTREE,
  KEY `update_admin_id` (`update_admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色';

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `role_id` (`role_id`) USING BTREE,
  KEY `menu_id` (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='角色菜单关联';

-- ----------------------------
-- Table structure for sys_unified_certification_sms_send_record
-- ----------------------------
DROP TABLE IF EXISTS `sys_unified_certification_sms_send_record`;
CREATE TABLE `sys_unified_certification_sms_send_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `phone` varchar(11) NOT NULL COMMENT '手机号',
  `result_code` varchar(20) NOT NULL COMMENT '返回结果',
  `result_desc` varchar(100) DEFAULT NULL COMMENT '结果描述',
  `result_json` varchar(2000) DEFAULT NULL COMMENT '结果json',
  `create_time` datetime NOT NULL COMMENT '修改时间',
  `mac` varchar(1000) DEFAULT NULL COMMENT 'mac',
  `inresponseto` varchar(1000) DEFAULT NULL COMMENT '返回to',
  `msg_id` varchar(100) NOT NULL COMMENT '请求id',
  `postData` varchar(2000) DEFAULT NULL COMMENT 'postData',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `result_code` (`result_code`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=280 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='移动认证短信登陆发送短信表';

-- ----------------------------
-- Table structure for undo_log
-- ----------------------------
CREATE TABLE `undo_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'increment id',
  `branch_id` bigint(20) NOT NULL COMMENT 'branch transaction id',
  `xid` varchar(100) NOT NULL COMMENT 'global transaction id',
  `context` varchar(128) NOT NULL COMMENT 'undo_log context,such as serialization',
  `rollback_info` longblob NOT NULL COMMENT 'rollback info',
  `log_status` int(11) NOT NULL COMMENT '0:normal status,1:defense status',
  `log_created` datetime NOT NULL COMMENT 'create datetime',
  `log_modified` datetime NOT NULL COMMENT 'modify datetime',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `ux_undo_log` (`xid`,`branch_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='AT transaction mode undo table';

-- ----------------------------
-- Table structure for xcx_app
-- ----------------------------
DROP TABLE IF EXISTS `xcx_app`;
CREATE TABLE `xcx_app` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `logo` varchar(500) NOT NULL COMMENT '应用logo',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `sys_dictionary_id` bigint(20) NOT NULL COMMENT '类型id 对应sys_district的id',
  `url` varchar(1000) NOT NULL COMMENT '跳转链接',
  `resource_type` int(2) NOT NULL COMMENT '跳转类型（1 H5；2小程序）',
  `is_top` bit(2) DEFAULT NULL COMMENT '是否为热门应用',
  `top_banner` varchar(500) DEFAULT NULL COMMENT '热门应用的banner',
  `status` int(2) NOT NULL COMMENT '1待接入 2启用 3禁用 ',
  `create_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `creator_id` bigint(20) DEFAULT NULL COMMENT '创建人id',
  `updater_id` bigint(20) DEFAULT NULL COMMENT '更新人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='小程序-应用中心表';

-- ----------------------------
-- Table structure for xcx_visit_num
-- ----------------------------
DROP TABLE IF EXISTS `xcx_visit_num`;
CREATE TABLE `xcx_visit_num` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `visit_num` int(10) NOT NULL COMMENT '访问次数',
  `visit_date` datetime NOT NULL COMMENT '访问记录时间（精确到天）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC COMMENT='小程序每天访问量表';

SET FOREIGN_KEY_CHECKS = 1;