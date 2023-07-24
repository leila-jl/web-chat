SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `bg_tag`;
CREATE TABLE `bg_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(64) NOT NULL COMMENT '标签名',
  `color` varchar(255) NOT NULL COMMENT '标签颜色',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `creator_id` bigint(20) NOT NULL COMMENT '创建用户',
  `updater_id` bigint(20) NOT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `bg_villager`;
CREATE TABLE `bg_villager` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(64) NOT NULL COMMENT '村民姓名',
  `phone` varchar(11) NOT NULL COMMENT '电话号码',
  `area_id` bigint(20) NOT NULL COMMENT '机构ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `creator_id` bigint(20) NOT NULL COMMENT '创建用户',
  `updater_id` bigint(20) NOT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `bg_villager_tag`;
CREATE TABLE `bg_villager_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `villager_id` bigint(20) NOT NULL COMMENT '村民ID',
  `tag_id` bigint(20) NOT NULL COMMENT '标签ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `creator_id` bigint(20) NOT NULL COMMENT '创建用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS `home_page`;
CREATE TABLE `home_page` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `name` varchar(64) NOT NULL COMMENT '首页名称',
  `data` text NOT NULL COMMENT '首页数据',
  `ex_data` text NOT NULL COMMENT '首页附加数据',
  `creator_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `updater_id` bigint(20) NOT NULL COMMENT '修改者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='首页表';

DROP TABLE IF EXISTS `home_page_define`;
CREATE TABLE `home_page_define` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `type` int NOT NULL COMMENT '自定义组件类型',
  `data` text NOT NULL COMMENT '自定义组件数据',
  `creator_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `updater_id` bigint(20) NOT NULL COMMENT '修改者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='首页自定义组件表';

DROP TABLE IF EXISTS `site_define`;
CREATE TABLE `site_define` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `title` varchar(64) NOT NULL COMMENT '网站标题',
  `url` varchar(128) NOT NULL COMMENT '网站URL',
  `data` text NOT NULL COMMENT '建站数据',
  `creator_id` bigint(20) NOT NULL COMMENT '创建者ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `updater_id` bigint(20) NOT NULL COMMENT '修改者id',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='建站表';

SET FOREIGN_KEY_CHECKS = 1;