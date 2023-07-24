/*
 Navicat Premium Data Transfer

 Source Server         : 云南统一门户192.168.34.85
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : 192.168.34.85:3306
 Source Schema         : bg-tymh-dev

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 10/02/2023 09:51:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for home_page_icon
-- ----------------------------
DROP TABLE IF EXISTS `home_page_icon`;
CREATE TABLE `home_page_icon`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `type` int(1) NOT NULL COMMENT '类型',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'icon url',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 108 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '首页大屏图标表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of home_page_icon
-- ----------------------------
INSERT INTO `home_page_icon` VALUES (1, '银行卡', 1, '/cmccbg/银行卡.png', '2023-02-06 16:43:39', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (2, '钱包', 1, '/cmccbg/钱包.png', '2023-02-06 16:43:39', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (3, '金币', 1, '/cmccbg/金币.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (4, '车', 1, '/cmccbg/车.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (5, '资产', 1, '/cmccbg/资产.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (6, '设置', 1, '/cmccbg/设置.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (7, '警报', 1, '/cmccbg/警报.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (8, '视频', 1, '/cmccbg/视频.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (9, '花草', 1, '/cmccbg/花草.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (10, '耕地', 1, '/cmccbg/耕地.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (11, '群组', 1, '/cmccbg/群组.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (12, '笔', 1, '/cmccbg/笔.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (13, '种类', 1, '/cmccbg/种类.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (14, '电脑', 1, '/cmccbg/电脑.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (15, '环保', 1, '/cmccbg/环保.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (16, '爱心', 1, '/cmccbg/爱心.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (17, '水电', 1, '/cmccbg/水电.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (18, '森林', 1, '/cmccbg/森林.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (19, '旗子', 1, '/cmccbg/旗子.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (20, '文档', 1, '/cmccbg/文档.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (21, '文化', 1, '/cmccbg/文化.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (22, '政府', 1, '/cmccbg/政府.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (23, '收入', 1, '/cmccbg/收入.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (24, '支出', 1, '/cmccbg/支出.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (25, '摄影', 1, '/cmccbg/摄影.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (26, '房屋', 1, '/cmccbg/房屋.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (27, '叶子', 1, '/cmccbg/叶子.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (28, '列表', 1, '/cmccbg/列表.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (29, '公务', 1, '/cmccbg/公务.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (30, '党政', 1, '/cmccbg/党政.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (31, '保障', 1, '/cmccbg/保障.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (32, '低碳', 1, '/cmccbg/低碳.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (33, '位置', 1, '/cmccbg/位置.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (34, '会员', 1, '/cmccbg/会员.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (35, '优惠券', 1, '/cmccbg/优惠券.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (36, '任务', 1, '/cmccbg/任务.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (37, '价格', 1, '/cmccbg/价格.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (38, '人员', 1, '/cmccbg/人员.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (39, '云', 1, '/cmccbg/云.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (40, '个人', 1, '/cmccbg/个人.png', '2023-02-06 16:43:36', '2023-02-06 16:43:36');
INSERT INTO `home_page_icon` VALUES (41, '银行卡', 1, '/cmccbg/银行卡Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (42, '钱包', 1, '/cmccbg/钱包Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:07');
INSERT INTO `home_page_icon` VALUES (43, '金币', 1, '/cmccbg/金币Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (44, '车', 1, '/cmccbg/车Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (45, '资产', 1, '/cmccbg/资产Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (46, '设置', 1, '/cmccbg/设置Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (47, '警报', 1, '/cmccbg/警报Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (48, '视频', 1, '/cmccbg/视频Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (49, '花草', 1, '/cmccbg/花草Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (50, '耕地', 1, '/cmccbg/耕地Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (51, '群组', 1, '/cmccbg/群组Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (52, '笔', 1, '/cmccbg/笔Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (53, '种类', 1, '/cmccbg/种类Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (54, '电脑', 1, '/cmccbg/电脑Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (55, '环保', 1, '/cmccbg/环保Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (56, '爱心', 1, '/cmccbg/爱心Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (57, '水电', 1, '/cmccbg/水电Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (58, '森林', 1, '/cmccbg/森林Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (59, '旗子', 1, '/cmccbg/旗子Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (60, '文档', 1, '/cmccbg/文档Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (61, '文化', 1, '/cmccbg/文化Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (62, '政府', 1, '/cmccbg/政府Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (63, '收入', 1, '/cmccbg/收入Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (64, '支出', 1, '/cmccbg/支出Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (65, '摄影', 1, '/cmccbg/摄影Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (66, '房屋', 1, '/cmccbg/房屋Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (67, '叶子', 1, '/cmccbg/叶子Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (68, '列表', 1, '/cmccbg/列表Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (69, '公务', 1, '/cmccbg/公务Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (70, '党政', 1, '/cmccbg/党政Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (71, '保障', 1, '/cmccbg/保障Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (72, '低碳', 1, '/cmccbg/低碳Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (73, '位置', 1, '/cmccbg/位置Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (74, '会员', 1, '/cmccbg/会员Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (75, '优惠券', 1, '/cmccbg/优惠券Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (76, '任务', 1, '/cmccbg/任务Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (77, '价格', 1, '/cmccbg/价格Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (78, '人员', 1, '/cmccbg/人员Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (79, '云', 1, '/cmccbg/云Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (90, '个人', 1, '/cmccbg/个人Green.png', '2023-02-07 14:42:01', '2023-02-07 14:42:01');
INSERT INTO `home_page_icon` VALUES (91, '爱心', 2, '/cmccbg/爱心Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (92, '安全', 2, '/cmccbg/安全Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (94, '房屋', 2, '/cmccbg/房屋Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (95, '风险', 2, '/cmccbg/风险Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (96, '金币', 2, '/cmccbg/金币Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (97, '数据', 2, '/cmccbg/数据Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (98, '锁', 2, '/cmccbg/锁Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (99, '乡村', 2, '/cmccbg/乡村Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (100, '消息', 2, '/cmccbg/消息Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (101, '用户', 2, '/cmccbg/用户Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (102, '云', 2, '/cmccbg/云Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (103, '知识', 2, '/cmccbg/知识Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (104, '柱状图', 2, '/cmccbg/柱状图Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (105, '转换', 2, '/cmccbg/转换Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (106, '资产', 2, '/cmccbg/资产Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');
INSERT INTO `home_page_icon` VALUES (107, '钻石', 2, '/cmccbg/钻石Concerned.png', '2023-02-07 17:00:28', '2023-02-07 17:00:28');

SET FOREIGN_KEY_CHECKS = 1;
