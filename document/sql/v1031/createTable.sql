SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
SET FOREIGN_KEY_CHECKS = 1;

DROP TABLE IF EXISTS `open_api_caller`;
CREATE TABLE `open_api_caller` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `app_id` varchar(16) NOT NULL COMMENT 'appId',
  `app_secret` varchar(16) NOT NULL COMMENT 'app_secret',
  `caller_name` varchar(255) DEFAULT NULL COMMENT '调用方名称拼音',
  `caller_ip` varchar(255) DEFAULT NULL COMMENT '调用方IP',
  `manager_company` varchar(255) DEFAULT NULL COMMENT '业务管理接口人公司',
  `manager_name` varchar(255) DEFAULT NULL COMMENT '业务管理接口人',
  `manager_phone` varchar(11) DEFAULT NULL COMMENT '业务管理接口人手机号',
  `manager_email` varchar(255) DEFAULT NULL COMMENT '业务管理接口人邮箱',
  `developer_company` varchar(255) DEFAULT NULL COMMENT '业务开发接口人公司',
  `developer_name` varchar(255) DEFAULT NULL COMMENT '业务开发接口人姓名',
  `developer_phone` varchar(11) DEFAULT NULL COMMENT '业务开发接口人手机号',
  `developer_email` varchar(255) DEFAULT NULL COMMENT '业务开发接口人邮箱',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='开放接口调用者记录表';

DROP TABLE IF EXISTS `open_api_log`;
CREATE TABLE `open_api_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `app_sign` varchar(255) NOT NULL COMMENT '请求随机数',
  `app_id` varchar(16) NOT NULL COMMENT '调用方appId',
  `request_url` varchar(255) DEFAULT NULL COMMENT '请求URL',
  `is_success` bit(1) NOT NULL COMMENT '请求是否成功(1-成功,0-失败)',
  `request_json` text COMMENT '请求参数',
  `exception_json` text COMMENT '返回参数',
  `create_time` datetime DEFAULT NULL COMMENT '生成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COMMENT='开放接口日志表';