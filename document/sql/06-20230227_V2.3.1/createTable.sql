SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area_base_function
-- ----------------------------
CREATE TABLE `home_page_collect_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `area_id` bigint(20) NOT NULL COMMENT '区域ID',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `creator_id` bigint(20) NOT NULL COMMENT '创建用户',
  `updater_id` bigint(20) NOT NULL COMMENT '更新用户',
  `introduction_url` varchar(255) DEFAULT NULL COMMENT '简介图URL',
  `introduction` text COMMENT '简介',
  `background_url` varchar(255) DEFAULT NULL COMMENT '背景图URL',
  `population` bigint(11) DEFAULT NULL COMMENT '人口',
  `family` bigint(11) DEFAULT NULL COMMENT '户数',
  `party_member` bigint(11) DEFAULT NULL COMMENT '党员',
  `village_cadre` bigint(11) DEFAULT NULL COMMENT '村干部',
  `grid_member` bigint(11) DEFAULT NULL COMMENT '网格员',
  `total_assets` bigint(11) DEFAULT NULL COMMENT '总资产',
  `dividend_current_year` bigint(11) DEFAULT NULL COMMENT '当年分红',
  `income_current_year` bigint(11) DEFAULT NULL COMMENT '当年收入',
  `expense_current_year` bigint(11) DEFAULT NULL COMMENT '当年支出',
  `farmland` bigint(11) DEFAULT NULL COMMENT '耕地',
  `woodland` bigint(11) DEFAULT NULL COMMENT '林地',
  `wheat` bigint(11) DEFAULT NULL COMMENT '小麦',
  `corn` bigint(11) DEFAULT NULL COMMENT '玉米',
  `cattle` bigint(11) DEFAULT NULL COMMENT '牛',
  `sheep` bigint(11) DEFAULT NULL COMMENT '羊',
  `branch_committee` bigint(11) DEFAULT NULL COMMENT '支部委员会',
  `branch_membership_meeting` bigint(11) DEFAULT NULL COMMENT '支部党员大会',
  `group_meeting` bigint(11) DEFAULT NULL COMMENT '党小组会',
  `party_class` bigint(11) DEFAULT NULL COMMENT '党课',
  `formal_member` bigint(11) DEFAULT NULL COMMENT '正式党员',
  `probationary_member` bigint(11) DEFAULT NULL COMMENT '预备党员',
  `development_member` bigint(11) DEFAULT NULL COMMENT '发展对象',
  `activist` bigint(11) DEFAULT NULL COMMENT '积极分子',
  `male017` bigint(11) DEFAULT NULL COMMENT '男0-17岁',
  `male1834` bigint(11) DEFAULT NULL COMMENT '男18-34岁',
  `male3564` bigint(11) DEFAULT NULL COMMENT '男35-64岁',
  `male6579` bigint(11) DEFAULT NULL COMMENT '男65-79岁',
  `male80` bigint(11) DEFAULT NULL COMMENT '男80岁及以上',
  `female017` bigint(11) DEFAULT NULL COMMENT '女0-17岁',
  `female1834` bigint(11) DEFAULT NULL COMMENT '女18-34岁',
  `female3564` bigint(11) DEFAULT NULL COMMENT '女35-64岁',
  `female6579` bigint(11) DEFAULT NULL COMMENT '女65-79岁',
  `female80` bigint(11) DEFAULT NULL COMMENT '女80岁及以上',
  `extremely_poor` bigint(11) DEFAULT NULL COMMENT '特困人员',
  `subsistence` bigint(11) DEFAULT NULL COMMENT '低保人员',
  `elderly` bigint(11) DEFAULT NULL COMMENT '高龄老人',
  `disabled` bigint(11) DEFAULT NULL COMMENT '残疾人',
  `left_behind_children` bigint(11) DEFAULT NULL COMMENT '留守儿童',
  `empty_nester` bigint(11) DEFAULT NULL COMMENT '空巢老人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COMMENT='汇聚大屏数据表';


SET FOREIGN_KEY_CHECKS = 1;

