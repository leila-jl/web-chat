SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area_base_function
-- ----------------------------

CREATE TABLE `area_base_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `admin_id` bigint(20) NOT NULL COMMENT '主账号ID',
  `group_number` varchar(200) NOT NULL COMMENT '集团号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `expire_time` datetime NOT NULL COMMENT '过期时间',
  `is_deleted` bit(1) NOT NULL COMMENT '是否删除（0：否；1：是）',
  `service_acceptance_time` datetime DEFAULT NULL COMMENT '业务受理时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COMMENT='区域订购基础功能表';

CREATE TABLE `admin_special_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `admin_id` bigint(20) NOT NULL COMMENT '用户ID',
  `area_id` bigint(20) DEFAULT NULL COMMENT '区域ID',
  `admin_id_area_id_unique` varchar(50) NOT NULL COMMENT 'adminId和区域id唯一',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `creator_id` bigint(20) NOT NULL COMMENT '创建用户',
  `updater_id` bigint(20) NOT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `adminIdAndAreaIdUnique` (`admin_id_area_id_unique`) USING BTREE COMMENT 'adminId和areaId唯一key'
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COMMENT='管理员关联特色功能表';

CREATE TABLE `admin_special_function_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `admin_special_function_id` bigint(20) NOT NULL COMMENT '关联表id',
  `special_function_code` varchar(80) DEFAULT NULL COMMENT '特色功能code',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `creator_id` bigint(20) NOT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8mb4 COMMENT='管理员关联特色功能明细表';

CREATE TABLE `area_resource_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `special_function_code` varchar(80) NOT NULL COMMENT '特色功能code',
  `service_acceptance_time` datetime DEFAULT NULL COMMENT '业务受理时间',
  `group_number` varchar(200) NOT NULL COMMENT '集团号',
  `type` int(1) NOT NULL COMMENT '类型 0退订 1订购',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `expire_time` datetime NOT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`),
  KEY `areaIndex` (`area_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='资源订购记录表';

CREATE TABLE `area_special_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `special_function_code` varchar(80) NOT NULL COMMENT '特色功能code',
  `service_acceptance_time` datetime DEFAULT NULL COMMENT '业务受理时间',
  `group_number` varchar(200) NOT NULL COMMENT '集团号',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `expire_time` datetime NOT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `areaIdAndCodeUnique` (`area_id`,`special_function_code`) USING BTREE COMMENT '一个区一个特色服务只有1条'
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8mb4 COMMENT='区域订购特色功能表';

CREATE TABLE `offer_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `offer_id` varchar(80) NOT NULL COMMENT 'offerId',
  `type` int(1) NOT NULL COMMENT '类型 0-基础业务  1-特色功能 2-资源包',
  `comment` varchar(255) DEFAULT NULL COMMENT '备注',
  `special_function_code` varchar(80) DEFAULT NULL COMMENT '对应的特色功能code',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `offerIdUnique` (`offer_id`) COMMENT 'offerId唯一'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `special_function` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(64) NOT NULL COMMENT '特色功能名称',
  `code` varchar(80) NOT NULL COMMENT '特色功能编码  全局唯一',
  `describe` varchar(255) DEFAULT NULL COMMENT '描述',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `menu_id` bigint(20) NOT NULL COMMENT '对应菜单ID',
  `rpc_info` varchar(500) NOT NULL COMMENT '远程调用相关信息，存的json',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_unique` (`code`) COMMENT 'code全局唯一'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

CREATE TABLE `resource_order_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `offer_id` varchar(80) NOT NULL COMMENT 'offerId',
  `nonce` varchar(255) NOT NULL COMMENT '请求随机数',
  `application_id` varchar(20) NOT NULL COMMENT '调用方applicationId',
  `result_code` varchar(10) DEFAULT NULL COMMENT '返回code',
  `request_json` text COMMENT '请求参数',
  `exception_Info` text COMMENT '异常结果',
  `create_time` datetime DEFAULT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5811 DEFAULT CHARSET=utf8mb4 COMMENT='资源订购日志表';

CREATE TABLE `resource_order_other_application_rpc_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `request_id` varchar(100) NOT NULL COMMENT '请求唯一id',
  `app_id` varchar(40) NOT NULL COMMENT 'appId',
  `app_secret` varchar(50) NOT NULL COMMENT 'appSecret',
  `url` varchar(255) DEFAULT NULL COMMENT '请求地址',
  `sign` varchar(100) NOT NULL COMMENT '签名',
  `body` text COMMENT '请求体',
  `result` text COMMENT '返回结果',
  `result_code` varchar(10) DEFAULT NULL COMMENT '返回code',
  `exception_Info` text COMMENT '异常结果',
  `create_time` datetime DEFAULT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5712 DEFAULT CHARSET=utf8mb4 COMMENT='资源订购三方应用rpc调用日志表';



SET FOREIGN_KEY_CHECKS = 1;

