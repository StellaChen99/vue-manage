/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50648
 Source Host           : localhost:3306
 Source Schema         : vue-manage

 Target Server Type    : MySQL
 Target Server Version : 50648
 File Encoding         : 65001

 Date: 20/07/2020 17:36:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) NOT NULL,
  `anchor` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '播者',
  `author` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '作者',
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `title_image_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题图片地址',
  `cover_image_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '播放时大图地址',
  `summary` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '简介',
  `played_count` bigint(20) NOT NULL DEFAULT 0,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '描述',
  `subscription_count` bigint(20) NOT NULL DEFAULT 0 COMMENT '订阅数',
  `track_count` int(11) NOT NULL DEFAULT 0 COMMENT '包含单集数量',
  `nation` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '国家',
  `hot` bigint(20) NOT NULL DEFAULT 0 COMMENT '热度',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `free` tinyint(4) NOT NULL DEFAULT 0 COMMENT '免费标识',
  `finished` int(11) NOT NULL DEFAULT 1,
  `commentable` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否可评论',
  `rss_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'rss地址',
  `removed` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4214 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES (1, 16, '王更新', '王更新', '明朝那些事儿(当年明月著 王更新播讲)', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 15, 3, '', 0, '2018-11-20 23:58:02', 1, 1, 1, NULL, 1);
INSERT INTO `album` VALUES (3, 8, '浙江电子音像出版社', '浙江电子音像出版社', '少年说道之杜立特医生历险记', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 2, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (5, 16, '李森兔的秘密', '李森兔的秘密', '绿野仙踪', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 6, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (7, 16, '九儿_999', '九儿_999', '工作是一种修行', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (9, 8, '宝贝哈哈故事', '宝贝哈哈故事', '无敌狮王', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (11, 16, '华章有声读物', '华章有声读物', '海外投资税务筹划', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 0, 1, NULL, 0);
INSERT INTO `album` VALUES (13, 8, '鱼心理', '鱼心理', '陈默：告别吼叫 做高效家长', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (15, 8, '田艺苗', '田艺苗', '给孩子们的音乐课', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (17, 8, '网易100分', '网易100分', '玩转小学数学应用题', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (19, 16, '不太老的老季头', '不太老的老季头', '美国语文大全集', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (21, 16, '李森兔的秘密', '李森兔的秘密', '把坐出来的痛做回去', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (23, 16, '黄明哲正解道德经', '黄明哲正解道德经', '黄明哲正解《道德经》', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (25, 3, '华音传媒', '华音传媒', '聊斋志异新品集（李庆丰评书）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (27, 11, '正好intime', '正好intime', '爱情读心： 行为心理学看透男人', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (29, 4, '非星凡文化', '非星凡文化', '世界的凛冬：二战的权力游戏', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (31, 13, '张其成', '张其成', '张其成讲《黄帝内经》', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (33, 13, '李银河', '李银河', '李银河说爱情', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (35, 13, '超级制作', '超级制作', '郭论·郭德纲品俗文化史', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (37, 13, '纪涵邦', '纪涵邦', '《中国大儒传》之董仲舒传', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (39, 13, '东岳先生', '东岳先生', '王东岳的中西哲学启蒙课', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (41, 4, '笑果文化', '笑果文化', '李诞池子的幽默工具箱', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (43, 13, '范景中', '范景中', '范景中讲西方艺术史', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (45, 4, '米果文化', '米果文化', '蔡康永的201堂情商课', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (47, 4, '米果文化', '米果文化', '马东的职场B计划', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (49, 13, '大先生说', '大先生说', '世界名著大师课', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (51, 13, '蒋文跃老师', '蒋文跃老师', '北大蒋文跃的中医养生课', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (53, 4, '觉伟分享', '觉伟分享', '觉伟讲销售：500强实战精华', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (55, 1, '正好intime', '正好intime', 'Mandy收纳术：拆掉思维里的墙', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (57, 4, '龙庙山精品故事', '龙庙山精品故事', '周易密码 | 中国人第一堂国学课', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (59, 16, '中国法制出版社', '中国法制出版社', '王莽发迹史', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (61, 16, '寐尹', '寐尹', '在另一种生命里', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (63, 16, '沈念如', '沈念如', '《你和我的倾城时光》胡歌也在看！', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (65, 16, '译文有声', '译文有声', '珍物（李宗盛作序）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 0, 1, NULL, 0);
INSERT INTO `album` VALUES (67, 16, '中版去听', '中版去听', '京味老舍系列——月牙儿', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (69, 16, '文逸听书', '文逸听书', '周易大师前传之梅花易数（出版）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (71, 16, '阅米文化', '阅米文化', '凤凰的哭泣 | 青枚原著', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 0, 1, NULL, 0);
INSERT INTO `album` VALUES (73, 16, '全勇', '全勇', '《江湖三十年》（下全）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (75, 16, '重庆出版社有声书院', '重庆出版社有声书院', '北京宴', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (77, 16, '华音桑梓', '华音桑梓', '《白鹿原》- 桑梓演播', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (79, 16, '中版去听', '中版去听', '京味老舍系列——小坡的生日', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (81, 16, '中版去听', '中版去听', '京味老舍系列——我这一辈子', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (83, 16, '鸿达以太', '鸿达以太', '大明王朝1566', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 0, 1, NULL, 0);
INSERT INTO `album` VALUES (85, 16, '扒历史', '扒历史', '旷世奇才—孝庄太后', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (87, 16, '沐卿雪', '沐卿雪', '幸福的门槛', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (89, 16, '迷聲', '迷聲', '活着（余华经典著作）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (91, 16, '鸿达以太', '鸿达以太', '人民的名义', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (93, 16, '华播之声', '华播之声', '杜月笙传', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (95, 16, '雪夜潇潇', '雪夜潇潇', '玉簟秋', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (97, 16, '寐尹', '寐尹', '《芈月传：千古太后第一人》 主播：寐尹', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (99, 16, '华音传媒', '华音传媒', '清官海瑞（华音李庆丰演播）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (101, 16, '念念有声工作室', '念念有声工作室', '梅花烙｜琼瑶作品', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (103, 16, '龙庙山精品故事', '龙庙山精品故事', '沈从文的朋友圈', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (105, 16, '蓝狮子FM', '蓝狮子FM', '把生命浪费在美好的事物上', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (107, 16, '磨铁图书', '磨铁图书', '奇迹唱片行 《一个人的朝圣》作者最新力作', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (109, 16, '迷聲', '迷聲', '废都·合集版（李野墨演播）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (111, 16, 'kting北京东方视角', 'kting北京东方视角', '金瓶梅', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (113, 16, '最玄幻', '最玄幻', '朝花夕拾【鲁迅经典】', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (115, 16, '小玩纸先生', '小玩纸先生', '易中天中华史：女皇武则天', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (117, 16, '鸿达以太', '鸿达以太', '人民的名义（单集版）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (119, 16, '中版去听', '中版去听', '徐静波《遇见日本》', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (121, 16, '声音者景行', '声音者景行', '朱元璋传', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (123, 16, '新星出版社', '新星出版社', '阿加莎经典推理小说：尼罗河上的惨案', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (125, 16, '悦库时光', '悦库时光', '芳华（同名电影有声书晏积瑄演播版本）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (127, 16, '迷聲', '迷聲', '王小波*李银河：爱你就像爱生命', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (129, 16, '三联书情', '三联书情', '杨绛回忆《我们仨》（曹雷演播）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (131, 16, '可以这样', '可以这样', '爷爷毛泽东（毛新宇著、可以这样管恩亮演播）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (133, 16, '亘古皓月', '亘古皓月', '听林清玄讲禅意', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (135, 16, '扒历史', '扒历史', '周恩来二十六年总理风云', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (137, 16, '最玄幻', '最玄幻', '金粉世家 | 豪门贵族的兴衰史', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (139, 16, 'kting北京东方视角', 'kting北京东方视角', '万万没想到', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (141, 16, '历史军事达人说', '历史军事达人说', '第一高参元帅叶剑英', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (143, 16, '声音者景行', '声音者景行', '曾国藩的正面与侧面', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (145, 16, '极简课堂', '极简课堂', '毕淑敏:你要学着自己强大|情商', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (147, 16, '扬腔扬调FM', '扬腔扬调FM', '军统教父戴笠', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (149, 16, '华夏汉易', '华夏汉易', '摸尸匠', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (151, 16, '淘漉音乐', '淘漉音乐', '1980年代的爱情', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (153, 16, '扒历史', '扒历史', '盛世流芳—长孙皇后', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (155, 16, '饶雪漫', '饶雪漫', '大约在冬季（饶雪漫2018年最新长篇小说）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (157, 16, '演播艺术家艾宝良', '演播艺术家艾宝良', '艾宝良播讲《知青(上）》（梁晓声著作）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (159, 16, '不太老的老季头', '不太老的老季头', '行者玄奘', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (161, 16, '9频道', '9频道', '侠隐（姜文电影《邪不压正》原著小说）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (163, 16, '扒历史', '扒历史', '一代天骄—武则天', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (165, 16, '迷聲', '迷聲', '兄弟（余华经典著作）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (167, 16, '三喜有声FM', '三喜有声FM', '尸姐攻略', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (169, 16, '江西人民出版社书声朗', '江西人民出版社书声朗', '标点符号历险记', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (171, 16, '最悬疑', '最悬疑', '西安大追捕', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (173, 16, '悦库时光', '悦库时光', '《白鹿原》-李野墨演播', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (175, 16, '迷聲', '迷聲', '可可西里狼', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (177, 16, '快乐的宇飞', '快乐的宇飞', '笑场（《吐槽大会》总策划、总撰稿人李诞首部作品）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (179, 16, '臥龙先生_臧汝德', '臥龙先生_臧汝德', '西游释厄传（爆笑西游记）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (181, 16, '迷聲', '迷聲', '苦难辉煌·单集版（金一南作品）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (183, 16, '骆驼', '骆驼', '天意（典藏版）', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (185, 16, '念念有声工作室', '念念有声工作室', '帝国的惆怅', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (187, 16, '章鱼讲故事', '章鱼讲故事', '情锁', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (189, 16, '鸿达以太', '鸿达以太', '暗访十年一，纪涵邦', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (191, 16, '天悦艺音', '天悦艺音', '为妃倾城', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (193, 16, '人文社科大讲堂', '人文社科大讲堂', '希拉里：我的抉择时刻', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (195, 16, '历史军事达人说', '历史军事达人说', '第一元帅朱德', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 2, 1, NULL, 0);
INSERT INTO `album` VALUES (197, 16, '骆驼', '骆驼', '焦虑的中产｜骆驼演播', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (199, 16, '蜀山御令', '蜀山御令', '怒天决', 'aaa_title_iamge', 'bbb_cover_image', 'bbb_summary', 0, 'aaa_description', 0, 0, '', 0, '2018-10-27 16:09:12', 1, 1, 1, NULL, 0);
INSERT INTO `album` VALUES (4211, 17, '是是是', '去去去', '嗷嗷嗷啊', 'ccccccvvvvv', 'sssssssdddddd', 'ss的的的的错错', 1, '惆怅长岑长', 1, 0, 'US', 1, '2018-10-27 23:31:12', 1, 1, 1, 'aaaaa', 1);
INSERT INTO `album` VALUES (4212, 17, '飞凤飞飞付', '对对对', '飞凤飞飞付', '飞凤飞飞付', '飞凤飞飞付', '飞凤飞飞付', 1, '飞凤飞飞付', 1, 0, 'US', 1, '2018-10-28 09:38:30', 1, 1, 1, '飞凤飞飞付', 1);
INSERT INTO `album` VALUES (4213, 3, 'jun', 'jun1', '喜羊羊', 'http://dfs.image.com/dbaff34b-42dc-47b4-ba7a-4422b4c1e770.png', 'http://dfs.image.com/a21d1d77-f41d-4cbf-9a2c-eff6f1e3a4f1.png', '<p>喜羊羊喜羊羊喜羊羊11</p>', 11, '<p>喜羊羊喜羊羊11</p>', 11, 2, 'CN', 111, '2018-11-21 15:18:33', 1, 1, 1, 'rss11', 1);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NOT NULL,
  `category_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `image_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '分类图标链接',
  `removed` tinyint(2) NOT NULL DEFAULT 0,
  `rank` int(11) NOT NULL DEFAULT 0,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 0, '啊啊啊', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 111, NULL);
INSERT INTO `category` VALUES (2, 0, '商业', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 200, NULL);
INSERT INTO `category` VALUES (3, 2, '娱乐', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 12, NULL);
INSERT INTO `category` VALUES (4, 2, '教育', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 13, NULL);
INSERT INTO `category` VALUES (5, 2, '游戏与爱好', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 14, NULL);
INSERT INTO `category` VALUES (6, 3, '政府与组织', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 15, 'kkkk');
INSERT INTO `category` VALUES (7, 3, '健康', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 54, NULL);
INSERT INTO `category` VALUES (8, 3, '儿童与家庭', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 56, NULL);
INSERT INTO `category` VALUES (9, 3, '音乐', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 68, 'jjjjj');
INSERT INTO `category` VALUES (10, 0, '新闻与政治', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 300, NULL);
INSERT INTO `category` VALUES (11, 0, '心灵修炼', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 400, NULL);
INSERT INTO `category` VALUES (12, 0, '科学与技术', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 500, NULL);
INSERT INTO `category` VALUES (13, 1, '社会与文化', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 11, NULL);
INSERT INTO `category` VALUES (14, 3, '运动与休闲', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 22, NULL);
INSERT INTO `category` VALUES (15, 3, '电视与电影', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 33, '发发发');
INSERT INTO `category` VALUES (16, 3, '有声书', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 33, 'ddd发发发');
INSERT INTO `category` VALUES (17, 13, '得到', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 111, '嗷嗷嗷啊');
INSERT INTO `category` VALUES (32, 12, '电磁阀风格更好', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 333, 'dddddddddd');
INSERT INTO `category` VALUES (33, 12, '发符合规划', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 333, 'gggggggggggg');
INSERT INTO `category` VALUES (34, 12, '呆呆呆呆呆呆地', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 3333, 'ddddddddd');
INSERT INTO `category` VALUES (35, 12, '哦哦哦哦哦', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 1, 2222, 'ddddddd');
INSERT INTO `category` VALUES (36, 0, 'qqqq', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 1, '嗷嗷嗷啊');
INSERT INTO `category` VALUES (37, 0, 'bbb', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 2, 'sss');
INSERT INTO `category` VALUES (38, 0, 'bfff', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 4, 'qqqd');
INSERT INTO `category` VALUES (39, 0, 'vvvvvv', 'http://dfs.image.com/ca9417dd-e6d4-421e-b169-2bcfe4a95d7c.png', 0, 5, 's');
INSERT INTO `category` VALUES (40, 0, 'qqqqddd', 'http://dfs.image.com/37bb1914-f27c-4b08-8dba-775dee8a811d.png', 1, 22, 'xxxx');

-- ----------------------------
-- Table structure for hr
-- ----------------------------
DROP TABLE IF EXISTS `hr`;
CREATE TABLE `hr`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'hrID',
  `name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `telephone` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住宅电话',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `enabled` tinyint(1) NULL DEFAULT 1,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `userface` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hr
-- ----------------------------
INSERT INTO `hr` VALUES (3, '系统管理员', '17611261201', '029-82881234', '深圳南山', 1, 'admin', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', 'http://bpic.588ku.com/element_pic/01/40/00/64573ce2edc0728.jpg', NULL);
INSERT INTO `hr` VALUES (5, '李白', '18568123489', '029-82123434', '海口美兰', 1, 'libai', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1514093920321&di=913e88c23f382933ef430024afd9128a&imgtype=0&src=http%3A%2F%2Fp.3761.com%2Fpic%2F9771429316733.jpg', NULL);
INSERT INTO `hr` VALUES (10, '韩愈', '18568123666', '029-82111555', '广州番禺', 1, 'hanyu', '$2a$10$ySG2lkvjFHY5O0./CPIE1OI8VJsuKYEzOYzqIa7AJR6sEgSzUFOAm', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', NULL);
INSERT INTO `hr` VALUES (11, '柳宗元', '18568123377', '029-82111333', '广州天河', 1, 'liuzongyuan', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1515233756&di=0856d923a0a37a87fd26604a2c871370&imgtype=jpg&er=1&src=http%3A%2F%2Fwww.qqzhi.com%2Fuploadpic%2F2014-09-27%2F041716704.jpg', NULL);
INSERT INTO `hr` VALUES (12, '曾巩', '18568128888', '029-82111222', '广州越秀', 1, 'zenggong', '$2a$10$oE39aG10kB/rFu2vQeCJTu/V/v4n6DRR0f8WyXRiAYvBpmadoOBE.', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1517070040185&di=be0375e0c3db6c311b837b28c208f318&imgtype=0&src=http%3A%2F%2Fimg2.soyoung.com%2Fpost%2F20150213%2F6%2F20150213141918532.jpg', NULL);

-- ----------------------------
-- Table structure for hr_role
-- ----------------------------
DROP TABLE IF EXISTS `hr_role`;
CREATE TABLE `hr_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hrid` int(11) NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE,
  INDEX `hr_role_ibfk_1`(`hrid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 75 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hr_role
-- ----------------------------
INSERT INTO `hr_role` VALUES (1, 3, 6);
INSERT INTO `hr_role` VALUES (35, 12, 4);
INSERT INTO `hr_role` VALUES (36, 12, 3);
INSERT INTO `hr_role` VALUES (37, 12, 2);
INSERT INTO `hr_role` VALUES (43, 11, 3);
INSERT INTO `hr_role` VALUES (44, 11, 2);
INSERT INTO `hr_role` VALUES (45, 11, 4);
INSERT INTO `hr_role` VALUES (46, 11, 5);
INSERT INTO `hr_role` VALUES (48, 10, 3);
INSERT INTO `hr_role` VALUES (49, 10, 4);
INSERT INTO `hr_role` VALUES (72, 5, 1);
INSERT INTO `hr_role` VALUES (73, 5, 2);
INSERT INTO `hr_role` VALUES (74, 5, 3);

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `component` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `iconCls` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keepAlive` tinyint(1) NULL DEFAULT NULL,
  `requireAuth` tinyint(1) NULL DEFAULT NULL,
  `parentId` int(11) NULL DEFAULT NULL,
  `enabled` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `parentId`(`parentId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '/', NULL, NULL, '所有', NULL, NULL, NULL, NULL, 1);
INSERT INTO `menu` VALUES (2, '/', '/home', 'Home', '员工资料', 'fa fa-user-circle-o', NULL, 1, 1, 1);
INSERT INTO `menu` VALUES (3, '/', '/home', 'Home', '人事管理', 'fa fa-address-card-o', NULL, 1, 1, 1);
INSERT INTO `menu` VALUES (4, '/', '/home', 'Home', '薪资管理', 'fa fa-money', NULL, 1, 1, 1);
INSERT INTO `menu` VALUES (5, '/', '/home', 'Home', '统计管理', 'fa fa-bar-chart', NULL, 1, 1, 1);
INSERT INTO `menu` VALUES (6, '/', '/home', 'Home', '系统管理', 'fa fa-windows', NULL, 1, 1, 1);
INSERT INTO `menu` VALUES (7, '/employee/basic/**', '/emp/basic', 'EmpBasic', '基本资料', NULL, NULL, 1, 2, 1);
INSERT INTO `menu` VALUES (8, '/employee/advanced/**', '/emp/adv', 'EmpAdv', '高级资料', NULL, NULL, 1, 2, 1);
INSERT INTO `menu` VALUES (9, '/personnel/emp/**', '/per/emp', 'PerEmp', '员工资料', NULL, NULL, 1, 3, 1);
INSERT INTO `menu` VALUES (10, '/personnel/ec/**', '/per/ec', 'PerEc', '员工奖惩', NULL, NULL, 1, 3, 1);
INSERT INTO `menu` VALUES (11, '/personnel/train/**', '/per/train', 'PerTrain', '员工培训', NULL, NULL, 1, 3, 1);
INSERT INTO `menu` VALUES (12, '/personnel/salary/**', '/per/salary', 'PerSalary', '员工调薪', NULL, NULL, 1, 3, 1);
INSERT INTO `menu` VALUES (13, '/personnel/remove/**', '/per/mv', 'PerMv', '员工调动', NULL, NULL, 1, 3, 1);
INSERT INTO `menu` VALUES (14, '/salary/sob/**', '/sal/sob', 'SalSob', '工资账套管理', NULL, NULL, 1, 4, 1);
INSERT INTO `menu` VALUES (15, '/salary/sobcfg/**', '/sal/sobcfg', 'SalSobCfg', '员工账套设置', NULL, NULL, 1, 4, 1);
INSERT INTO `menu` VALUES (16, '/salary/table/**', '/sal/table', 'SalTable', '工资表管理', NULL, NULL, 1, 4, 1);
INSERT INTO `menu` VALUES (17, '/salary/month/**', '/sal/month', 'SalMonth', '月末处理', NULL, NULL, 1, 4, 1);
INSERT INTO `menu` VALUES (18, '/salary/search/**', '/sal/search', 'SalSearch', '工资表查询', NULL, NULL, 1, 4, 1);
INSERT INTO `menu` VALUES (19, '/statistics/all/**', '/sta/all', 'StaAll', '综合信息统计', NULL, NULL, 1, 5, 1);
INSERT INTO `menu` VALUES (20, '/statistics/score/**', '/sta/score', 'StaScore', '员工积分统计', NULL, NULL, 1, 5, 1);
INSERT INTO `menu` VALUES (21, '/statistics/personnel/**', '/sta/pers', 'StaPers', '人事信息统计', NULL, NULL, 1, 5, 1);
INSERT INTO `menu` VALUES (22, '/statistics/recored/**', '/sta/record', 'StaRecord', '人事记录统计', NULL, NULL, 1, 5, 1);
INSERT INTO `menu` VALUES (23, '/system/basic/**', '/sys/basic', 'SysBasic', '基础信息设置', NULL, NULL, 1, 6, 1);
INSERT INTO `menu` VALUES (24, '/system/cfg/**', '/sys/cfg', 'SysCfg', '系统管理', NULL, NULL, 1, 6, 1);
INSERT INTO `menu` VALUES (25, '/system/log/**', '/sys/log', 'SysLog', '操作日志管理', NULL, NULL, 1, 6, 1);
INSERT INTO `menu` VALUES (26, '/system/hr/**', '/sys/hr', 'SysHr', '操作员管理', NULL, NULL, 1, 6, 1);
INSERT INTO `menu` VALUES (27, '/system/data/**', '/sys/data', 'SysData', '备份恢复数据库', NULL, NULL, 1, 6, 1);
INSERT INTO `menu` VALUES (28, '/system/init/**', '/sys/init', 'SysInit', '初始化数据库', NULL, NULL, 1, 6, 1);

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NULL DEFAULT NULL,
  `rid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `mid`(`mid`) USING BTREE,
  INDEX `rid`(`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 283 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (161, 7, 3);
INSERT INTO `menu_role` VALUES (162, 7, 6);
INSERT INTO `menu_role` VALUES (163, 9, 6);
INSERT INTO `menu_role` VALUES (164, 10, 6);
INSERT INTO `menu_role` VALUES (165, 11, 6);
INSERT INTO `menu_role` VALUES (166, 12, 6);
INSERT INTO `menu_role` VALUES (167, 13, 6);
INSERT INTO `menu_role` VALUES (168, 14, 6);
INSERT INTO `menu_role` VALUES (169, 15, 6);
INSERT INTO `menu_role` VALUES (170, 16, 6);
INSERT INTO `menu_role` VALUES (171, 17, 6);
INSERT INTO `menu_role` VALUES (172, 18, 6);
INSERT INTO `menu_role` VALUES (173, 19, 6);
INSERT INTO `menu_role` VALUES (174, 20, 6);
INSERT INTO `menu_role` VALUES (175, 21, 6);
INSERT INTO `menu_role` VALUES (176, 22, 6);
INSERT INTO `menu_role` VALUES (177, 23, 6);
INSERT INTO `menu_role` VALUES (178, 25, 6);
INSERT INTO `menu_role` VALUES (179, 26, 6);
INSERT INTO `menu_role` VALUES (180, 27, 6);
INSERT INTO `menu_role` VALUES (181, 28, 6);
INSERT INTO `menu_role` VALUES (182, 24, 6);
INSERT INTO `menu_role` VALUES (247, 7, 4);
INSERT INTO `menu_role` VALUES (248, 8, 4);
INSERT INTO `menu_role` VALUES (249, 11, 4);
INSERT INTO `menu_role` VALUES (250, 7, 2);
INSERT INTO `menu_role` VALUES (251, 8, 2);
INSERT INTO `menu_role` VALUES (252, 9, 2);
INSERT INTO `menu_role` VALUES (253, 10, 2);
INSERT INTO `menu_role` VALUES (254, 12, 2);
INSERT INTO `menu_role` VALUES (255, 13, 2);
INSERT INTO `menu_role` VALUES (256, 7, 1);
INSERT INTO `menu_role` VALUES (257, 8, 1);
INSERT INTO `menu_role` VALUES (258, 9, 1);
INSERT INTO `menu_role` VALUES (259, 10, 1);
INSERT INTO `menu_role` VALUES (260, 11, 1);
INSERT INTO `menu_role` VALUES (261, 12, 1);
INSERT INTO `menu_role` VALUES (262, 13, 1);
INSERT INTO `menu_role` VALUES (263, 14, 1);
INSERT INTO `menu_role` VALUES (264, 15, 1);
INSERT INTO `menu_role` VALUES (265, 16, 1);
INSERT INTO `menu_role` VALUES (266, 17, 1);
INSERT INTO `menu_role` VALUES (267, 18, 1);
INSERT INTO `menu_role` VALUES (268, 19, 1);
INSERT INTO `menu_role` VALUES (269, 20, 1);
INSERT INTO `menu_role` VALUES (270, 21, 1);
INSERT INTO `menu_role` VALUES (271, 22, 1);
INSERT INTO `menu_role` VALUES (272, 23, 1);
INSERT INTO `menu_role` VALUES (273, 24, 1);
INSERT INTO `menu_role` VALUES (274, 25, 1);
INSERT INTO `menu_role` VALUES (275, 26, 1);
INSERT INTO `menu_role` VALUES (276, 27, 1);
INSERT INTO `menu_role` VALUES (277, 28, 1);
INSERT INTO `menu_role` VALUES (280, 7, 14);
INSERT INTO `menu_role` VALUES (281, 8, 14);
INSERT INTO `menu_role` VALUES (282, 9, 14);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nameZh` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'ROLE_manager', '部门经理');
INSERT INTO `role` VALUES (2, 'ROLE_personnel', '人事专员');
INSERT INTO `role` VALUES (3, 'ROLE_recruiter', '招聘主管');
INSERT INTO `role` VALUES (4, 'ROLE_train', '培训主管');
INSERT INTO `role` VALUES (5, 'ROLE_performance', '薪酬绩效主管');
INSERT INTO `role` VALUES (6, 'ROLE_admin', '系统管理员');
INSERT INTO `role` VALUES (13, 'ROLE_test2', '测试角色2');
INSERT INTO `role` VALUES (14, 'ROLE_test1', '测试角色1');
INSERT INTO `role` VALUES (17, 'ROLE_test3', '测试角色3');
INSERT INTO `role` VALUES (18, 'ROLE_test4', '测试角色4');
INSERT INTO `role` VALUES (19, 'ROLE_test4', '测试角色4');
INSERT INTO `role` VALUES (20, 'ROLE_test5', '测试角色5');
INSERT INTO `role` VALUES (21, 'ROLE_test6', '测试角色6');

-- ----------------------------
-- Table structure for track
-- ----------------------------
DROP TABLE IF EXISTS `track`;
CREATE TABLE `track`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) NOT NULL,
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题',
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `title_image_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '标题图片地址',
  `image_url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `media_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '播放链接',
  `duration` bigint(20) NOT NULL DEFAULT 0 COMMENT '时长(保留字段)',
  `free` tinyint(4) NOT NULL DEFAULT 1 COMMENT '收费标识',
  `public` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否可以公开给第三方',
  `played_count` bigint(20) NOT NULL DEFAULT 0 COMMENT '播放次数',
  `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `release_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '发布时间',
  `commentable` tinyint(4) NOT NULL DEFAULT 1,
  `removed` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1004 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of track
-- ----------------------------
INSERT INTO `track` VALUES (145, 1, '明朝那些事儿 第89集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1494, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (147, 1, '明朝那些事儿 第152集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1429, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (149, 1, '明朝那些事儿 第122集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1398, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (151, 1, '明朝那些事儿 第181集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1504, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (153, 1, '明朝那些事儿 第90集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1447, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (155, 1, '明朝那些事儿 第29集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1267, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (157, 1, '明朝那些事儿 第105集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1439, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (159, 1, '明朝那些事儿 第123集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1432, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (161, 1, '明朝那些事儿 第153集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1479, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (163, 1, '明朝那些事儿 第182集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1562, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (165, 1, '明朝那些事儿 第106集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1467, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (167, 1, '明朝那些事儿 第30集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1431, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (169, 1, '明朝那些事儿 第124集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1477, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (171, 1, '明朝那些事儿 第183集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1584, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (173, 1, '明朝那些事儿 第107集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1360, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (175, 1, '明朝那些事儿 第125集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1383, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (177, 1, '明朝那些事儿 第184集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1405, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (179, 1, '明朝那些事儿 第241集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1432, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (181, 1, '明朝那些事儿 第154集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1474, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (183, 1, '明朝那些事儿 第126集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1403, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (185, 1, '明朝那些事儿 第108集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1462, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (187, 1, '明朝那些事儿 第185集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1426, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (189, 1, '明朝那些事儿 第155集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1489, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (191, 1, '明朝那些事儿 第242集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1482, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (193, 1, '明朝那些事儿 第186集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1443, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (195, 1, '明朝那些事儿 第156集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1525, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (197, 1, '明朝那些事儿 第127集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1451, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (199, 1, '明朝那些事儿 第109集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1324, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (201, 1, '明朝那些事儿 第243集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1442, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (203, 1, '明朝那些事儿 第211集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1500, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (205, 1, '明朝那些事儿 第187集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1416, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (207, 1, '明朝那些事儿 第157集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1411, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (209, 1, '明朝那些事儿 第128集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1389, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (211, 1, '明朝那些事儿 第110集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1278, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (213, 1, '明朝那些事儿 第244集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1449, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (215, 1, '明朝那些事儿 第212集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1446, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (217, 1, '明朝那些事儿 第188集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1455, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (219, 1, '明朝那些事儿 第158集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1436, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (221, 1, '明朝那些事儿 第129集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1377, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (223, 1, '明朝那些事儿 第111集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1355, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (225, 1, '明朝那些事儿 第245集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1400, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (227, 1, '明朝那些事儿 第213集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1402, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (229, 1, '明朝那些事儿 第189集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1461, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (231, 1, '明朝那些事儿 第159集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1467, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (233, 1, '明朝那些事儿 第130集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1402, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (235, 1, '明朝那些事儿 第112集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1122, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (237, 1, '明朝那些事儿 第214集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1407, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (239, 1, '明朝那些事儿 第246集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1469, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (241, 1, '明朝那些事儿 第190集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1508, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (243, 1, '明朝那些事儿 第160集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1450, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (245, 1, '明朝那些事儿 第131集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1429, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (247, 1, '明朝那些事儿 第113集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1482, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (249, 1, '明朝那些事儿 第215集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1425, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (251, 1, '明朝那些事儿 第247集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1454, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (253, 1, '明朝那些事儿 第191集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1396, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (255, 1, '明朝那些事儿 第161集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1459, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (257, 1, '明朝那些事儿 第132集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1411, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (259, 1, '明朝那些事儿 第114集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1368, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (261, 1, '明朝那些事儿 第216集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1408, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (263, 1, '明朝那些事儿 第248集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1436, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (265, 1, '明朝那些事儿 第192集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1439, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (267, 1, '明朝那些事儿 第162集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1497, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (327, 1, '明朝那些事儿 第167集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1475, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (329, 1, '明朝那些事儿 第138集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1452, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (331, 1, '明朝那些事儿 第120集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1442, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (333, 1, '明朝那些事儿 第222集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1401, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (335, 1, '明朝那些事儿 第254集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1466, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (337, 1, '明朝那些事儿 第198集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1443, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (339, 1, '明朝那些事儿 第168集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1473, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (341, 1, '明朝那些事儿 第139集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1298, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (343, 1, '明朝那些事儿 第223集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1424, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (345, 1, '明朝那些事儿 第255集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1442, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (347, 1, '明朝那些事儿 第199集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1389, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (349, 1, '明朝那些事儿 第169集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1468, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (351, 1, '明朝那些事儿 第140集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1234, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (353, 1, '明朝那些事儿 第224集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1410, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (355, 1, '明朝那些事儿 第256集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1393, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (357, 1, '明朝那些事儿 第200集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1436, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (359, 1, '明朝那些事儿 第170集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1391, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (361, 1, '明朝那些事儿 第141集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1481, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (363, 1, '明朝那些事儿 第225集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1440, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (365, 1, '明朝那些事儿 第257集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1358, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (367, 1, '明朝那些事儿 第171集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1496, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (369, 1, '明朝那些事儿 第142集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1538, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (371, 1, '明朝那些事儿 第201集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1464, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (373, 1, '明朝那些事儿 第226集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1392, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (375, 1, '明朝那些事儿 第258集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1372, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (377, 1, '明朝那些事儿 第143集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1526, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (379, 1, '明朝那些事儿 第202集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1372, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (381, 1, '明朝那些事儿 第227集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1501, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (461, 1, '明朝那些事儿 第180集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1526, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (463, 1, '明朝那些事儿 第267集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1407, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (465, 1, '明朝那些事儿 第236集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1468, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (467, 1, '明朝那些事儿 第268集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1345, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (469, 1, '明朝那些事儿 第237集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1459, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (471, 1, '明朝那些事儿 第238集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1377, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (473, 1, '明朝那些事儿 第239集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1428, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (475, 1, '明朝那些事儿 第240集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1392, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (477, 1, '明朝那些事儿 第31集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1409, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (479, 1, '明朝那些事儿 第32集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1455, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (481, 1, '明朝那些事儿 第33集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1424, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (483, 1, '明朝那些事儿 第34集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1439, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (485, 1, '明朝那些事儿 第35集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1432, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (487, 1, '明朝那些事儿 第36集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1417, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (489, 1, '明朝那些事儿 第37集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1416, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (491, 1, '明朝那些事儿 第38集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1455, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (493, 1, '明朝那些事儿 第39集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1407, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (495, 1, '明朝那些事儿 第40集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1465, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (497, 1, '明朝那些事儿 第41集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1560, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (499, 1, '明朝那些事儿 第42集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1543, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (501, 1, '明朝那些事儿 第43集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1562, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (503, 1, '明朝那些事儿 第44集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1405, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (505, 1, '明朝那些事儿 第45集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1460, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (507, 1, '明朝那些事儿 第46集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1471, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (509, 1, '明朝那些事儿 第47集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1453, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (511, 1, '明朝那些事儿 第48集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1397, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (513, 1, '明朝那些事儿 第49集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1545, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (515, 1, '明朝那些事儿 第50集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1436, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (517, 1, '明朝那些事儿 第51集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1415, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (519, 1, '明朝那些事儿 第52集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1331, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (521, 1, '明朝那些事儿 第53集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1322, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (523, 1, '明朝那些事儿 第54集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1472, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (525, 1, '明朝那些事儿 第55集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1510, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (527, 1, '明朝那些事儿 第56集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1436, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (529, 1, '明朝那些事儿 第57集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1491, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (531, 1, '明朝那些事儿 第58集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1455, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (533, 1, '明朝那些事儿 第59集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1468, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (535, 1, '明朝那些事儿 第60集', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1511, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:32', 1, 0);
INSERT INTO `track` VALUES (537, 11, '30、投资北美洲：墨西哥税制介绍 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 424, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (539, 11, '00、 海外投资税务筹划课程导论', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 333, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (541, 11, '31、投资北美洲：墨西哥税务筹划方法', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 430, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (543, 11, '01、国际重复征税对企业税务的影响 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 707, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (545, 11, '32、投资北美洲综述', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 456, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (547, 11, '02、 国际重复征税对企业税务的影响 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 631, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (549, 11, '33、投资大洋洲：澳大利亚税制介绍 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 624, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (551, 11, '34、投资大洋洲：澳大利亚税制介绍 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 669, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (553, 11, '03、 国际税收协定对企业税务的影响 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 635, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (555, 11, '35、投资大洋洲：澳大利亚税务筹划方法', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 354, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (557, 11, '04、 国际税收协定对企业税务的影响 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 657, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (559, 11, '05、 企业境外所得回国汇总纳税办法 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 402, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (561, 11, '36、投资大洋洲：新西兰税制和税务筹划方法 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 429, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (563, 11, '06、 企业境外所得回国汇总纳税办法 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 680, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (565, 11, '37、投资大洋洲：新西兰税制和税务筹划方法 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 754, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (567, 11, '07、 税务筹划：运用公司组织形式', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 797, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (569, 11, '38、投资大洋洲综述', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 376, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (571, 11, '08、 税务筹划：运用转让定价', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 766, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (573, 11, '39、投资欧洲：德国税制介绍 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 800, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (575, 11, '09、 税务筹划：运用资本结构', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 665, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (577, 11, '40、投资欧洲：德国税制介绍 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 747, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (579, 11, '10、国际避税地：开曼、百慕大、BVI等', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 872, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (581, 11, '41：投资欧洲：德国税务筹划方法', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 384, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (583, 11, '11、国际避税地：香港 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 774, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (585, 11, '42、投资欧洲：法国税制介绍 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 773, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (587, 11, '12、国际避税地：香港 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 521, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (589, 11, '43、投资欧洲：法国税制介绍 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 524, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (591, 11, '13、国际避税地：新加坡 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 674, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (593, 11, '44、投资欧洲：法国税务筹划方法', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 554, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (595, 11, '14、 国际避税地：新加坡 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 535, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (597, 11, '45、投资欧洲：意大利税制介绍 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 569, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (599, 11, '15、 国际避税地：毛里求斯', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 781, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (601, 11, '46、投资欧洲：意大利税制介绍 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 759, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (603, 11, '16、 税务筹划：运用税收协定网络', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 555, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (605, 11, '47、投资欧洲：意大利税务筹划方法', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 836, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (607, 11, '17 、架构地税务筹划：英国 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 725, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (609, 11, '48、投资欧洲：俄罗斯税制介绍 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 617, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (611, 11, '18、 架构地税务筹划：英国 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 605, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (613, 11, '48、投资欧洲：俄罗斯税制介绍 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 799, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (615, 11, '19、 架构地税务筹划：卢森堡 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 592, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (617, 11, '50、投资欧洲：俄罗斯税务筹划方法', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 511, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (619, 11, '20、 架构地税务筹划：卢森堡 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 434, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (621, 11, '21、 架构地税务筹划：荷兰', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 780, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (623, 11, '22、 避税地、架构地汇总与比较', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 407, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (625, 11, '23、投资北美洲：美国税制介绍 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 734, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (627, 11, '24、投资北美洲：美国税制介绍 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 841, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (629, 11, '25、投资北美洲：美国税务筹划方法', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 741, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (631, 11, '26、投资北美洲：加拿大税制介绍 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 611, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (633, 11, '27、投资北美洲：加拿大税制介绍 2', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 702, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (635, 11, '28、投资北美洲：加拿大税务筹划方法', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 507, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (637, 11, '29、投资北美洲：墨西哥税制介绍 1', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 620, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:38', 1, 0);
INSERT INTO `track` VALUES (639, 15, '【趣味乐理】耳熟能详的婚礼进行曲是怎么来的呢？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 474, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (641, 15, '附曲丨海顿：弦乐四重奏 Op.33，第五号第三首谐谑曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 164, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (643, 15, '【趣味乐理】提琴家族的前世今生', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 541, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (645, 15, '附曲丨圣桑：动物狂欢节，天鹅', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 200, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (647, 15, '【趣味乐理】丰富多彩的管乐家族', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 586, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (649, 15, '【小小音乐家】让孩子在动画片里面爱上古典音乐', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 464, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (651, 15, '附曲丨普罗柯菲耶夫：彼得与狼', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1712, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (653, 15, '附曲丨海顿：惊愕交响曲，第二乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 451, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (655, 15, '附曲丨罗西尼：威廉退尔序曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 269, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (657, 15, '【如何引导】音乐天赋到底是什么', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 584, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (659, 15, '【给儿童的音乐史】古典风格巨匠：莫扎特', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 623, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (661, 15, '【小小音乐家】迪斯尼如何用动画诠释古典乐？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 524, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (663, 15, '附曲丨莫扎特：降E大调交响曲，K.543 第一乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 489, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (665, 15, '附曲丨莫扎特B大调第十七号弦乐四重奏k.458，第一乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 726, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (667, 15, '附曲丨爱德华·埃德加：威风堂堂进行曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 401, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (669, 15, '【给儿童的音乐史】古典风格巨匠：贝多芬', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 733, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (671, 15, '【乐器学习进阶指南】最适合你的钢琴老师，就是最好的钢琴老师', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 495, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (673, 15, '【如何引导】如何科学的培养孩子的音乐天赋', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 576, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (675, 15, '附曲丨贝多芬第三交响曲“英雄”，第四乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 740, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (677, 15, '【音乐故事】如何逼迫孩子练琴，才算真爱？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 454, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (679, 15, '附曲丨李斯特：超技练习曲·追雪', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 364, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (681, 15, '附曲丨勃拉姆斯：德意志安魂曲，Op45，四手联弹版本', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 466, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (683, 15, '【给儿童的音乐史】我们弹钢琴的技法都是来自他', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 478, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (685, 15, '附曲丨柴可夫斯基：钢琴曲杜姆卡“俄国乡间风景”Op.59', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 457, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (687, 15, '【乐器学习进阶指南】小提琴入门到底难在哪里？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 431, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (689, 15, '【如何引导】如何正确的引导孩子玩音乐', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 557, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (691, 15, '附曲丨李斯特：超级练习曲，黄昏的和谐', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 532, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (693, 15, '【音乐故事】适合熊孩子的古典音乐曲单：动物狂欢节', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 570, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (695, 15, '附曲丨穆特：莫扎特D调第二小提琴协奏曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 500, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (697, 15, '附曲丨莫扎特：D大调嬉游曲，K136，第二乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 370, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (699, 15, '【给儿童的音乐史】浪漫主义巨星的成长经历', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 667, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (701, 15, '附曲丨圣桑：动物狂欢节', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1414, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (703, 15, '【乐器学习进阶指南】除了钢琴小提琴，孩子们还可以学哪些乐器？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 490, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (705, 15, '【如何引导】如何引导孩子自信表演？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 577, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (707, 15, '附曲丨门德尔松：苏格兰交响曲，第二乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 258, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (709, 15, '附曲丨莫扎特：A大调单簧管协奏曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 464, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (711, 15, '附曲丨阿格里奇：柴可夫斯基第一钢琴协奏曲，第一乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1152, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (713, 15, '【给儿童的音乐史】二十世纪的实验和黑暗童话', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 595, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (715, 15, '【发刊词】田艺苗：学习音乐是每个孩子的权利', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 616, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (717, 15, '【音乐故事】给熊孩子的古典音乐曲单2：莫扎的音乐游戏', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 455, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (719, 15, '【乐器学习进阶指南】除了钢琴小提琴，孩子们还可以学哪些乐器（2）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 453, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (721, 15, '【如何引导】游戏如何改变音乐教育？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 606, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (723, 15, '附曲丨莫扎特：嬉游曲K136', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 359, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (725, 15, '附曲丨斯特拉文斯基：彼得鲁斯卡选段', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 259, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (727, 15, '附曲丨莫扎特：降E大调圆号协奏曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 491, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (729, 15, '【家庭指南】你的胎教音乐听对了吗', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 600, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (731, 15, '附曲丨舒曼：童年情景，Op.15', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1024, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (733, 15, '【音乐故事】熊孩子们的古典音乐曲单：巴赫为孩子们写的乐曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 545, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (735, 15, '【趣味乐理】谁说学乐理很枯燥，让我们一边玩纸牌一边认识音高', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 563, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (737, 15, '【乐器学习进阶指南】除了钢琴小提琴，孩子们还可以学哪些乐器（3）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 540, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (739, 15, '【家庭指南】如何营造家庭音乐的氛围', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 855, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (741, 15, '【如何引导】游戏如何改变音乐教育（2）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 601, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (743, 15, '附曲丨巴赫：二部创意曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 783, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (745, 15, '附曲丨亨德尔：竖琴协奏曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 650, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (747, 15, '附曲｜绝对音高训练：标准音A', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1793, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (749, 15, '【特别节目】田艺苗对谈郎朗：钢琴王子的音乐启蒙靠ta', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 485, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (751, 15, '附曲丨李斯特：匈牙利狂想曲S.244', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 577, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (753, 15, '【音乐故事】给熊孩子们的古典音乐曲单：古典主义精神是给予孩子们最好的熏陶', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 569, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (755, 15, '【乐器学习进阶指南】除了钢琴小提琴，孩子们还可以学哪些乐器（4）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 471, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (757, 15, '【趣味乐理】认识节奏韵律', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 667, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (759, 15, '附曲 | 维瓦尔第 D大调琉特琴双小提琴及通奏低音协奏曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 210, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (761, 15, '【如何引导】游戏如何改变音乐教育（3）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 567, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (763, 15, '附曲丨海顿：玩笑四重奏', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 985, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (765, 15, '附曲丨马林巴琴：卡农', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 212, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (767, 15, '附曲｜拉德斯基进行曲 Op.228', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 174, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (769, 15, '附曲 | 海顿 C大调弦乐四重奏（“皇帝”），第二乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 505, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (771, 15, '附曲丨李斯特：塔兰泰拉舞曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 538, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (773, 15, '【音乐故事】给熊孩子们的古典音乐曲单：你真的听懂了《灰姑娘》吗？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 576, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (775, 15, '7.8【乐器学习进阶指南】音乐的终极秘诀是什么', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 418, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (777, 15, '【趣味乐理】声音有色彩吗？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 542, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (779, 15, '【直播回听】音乐与文学在这里相遇', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 7245, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (781, 15, '【音乐故事】巴赫的音乐家庭', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 533, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (783, 15, '附曲丨普罗科菲耶夫：灰姑娘与王子共舞', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 302, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (785, 15, '7.9【古典采风】什么是音乐风格？早期的音乐风格又是什么样的？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 552, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (787, 15, '附曲丨德彪西：亚麻色头发的少女', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 334, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (789, 15, '【家庭指南】怎样选择好的入睡音乐？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 921, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (791, 15, '【音乐故事】给熊孩子的古典音乐曲单：蹲下来，以孩子的视角看世界', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 482, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (793, 15, '附曲丨C.P.E巴赫：E大调双簧管协奏曲，Wq 165', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 429, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (795, 15, '【趣味乐理】如何唱准旋律，跟贝多芬学作曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 636, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (797, 15, '附曲丨拉赫玛尼诺夫第二钢琴协奏曲，第二乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 747, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (799, 15, '7.9 附曲丨帕勒斯特里那：教皇马切利', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 371, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (801, 15, '附曲丨德彪西：儿童园地', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 974, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (803, 15, '【音乐故事】老莫扎特是如何培养小莫扎特的？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 556, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (805, 15, '附曲丨贝多芬：第九交响曲，第三乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1498, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (807, 15, '附曲 ｜ D大调双钢琴奏鸣曲 K.448', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 607, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (809, 15, '8.0【音乐风格】文艺复兴时期最美妙的民谣，牧歌', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 478, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (811, 15, '附曲丨莫扎特：G大调第四十交响曲，第一乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 498, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (813, 15, '【音乐故事】给熊孩子们的古典音乐曲单：为儿童树立诗意与美妙的审美追求', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 554, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (815, 15, '【直播回听】田艺苗带你打破常规玩转古典乐', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 5586, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (817, 15, '【家庭指南】孔子和门德尔松告诉你，音乐如何塑造孩子良好的仪态和性情', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 776, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (819, 15, '8.0 附曲丨蒙特威尔第：牧歌第二卷', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 262, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (821, 15, '【音乐故事】门德尔松家族如何富养孩子？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 536, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (823, 15, '附曲丨拉威尔：鹅妈妈组曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 799, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (825, 15, '【趣味乐理】如何写出简单的旋律，柴可夫斯基的无限热情', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 590, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (827, 15, '附曲 ｜ 巴赫：平均律第一册，C大调前奏曲, BWV 846-869', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 160, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (829, 15, '附曲丨门德尔松：意大利交响曲，第一乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 642, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (831, 15, '【小小音乐家】带孩子去听音乐会需要注意哪些剧院礼仪？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 529, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (833, 15, '附曲丨柴可夫斯基：天鹅湖选段', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 166, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (835, 15, '8.1【音乐风格】巴洛克风格之歌剧的诞生', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 553, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (837, 15, '【音乐故事】家中不受欢迎的天才', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 455, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (839, 15, '附曲丨门德尔松：平静的海洋和幸福的航行', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 748, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (841, 15, '【趣味乐理】你知道古典音乐有哪些形式？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 564, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (843, 17, '【开篇】课程导论与综述', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 275, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (845, 15, '【家庭指南】初学乐器的儿童需要做哪些准备', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 649, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (847, 15, '8.1 附曲丨普塞尔：《狄多与埃涅阿斯》歌剧选段', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 139, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (849, 15, '附曲丨小约翰施特劳斯：当我们年轻时', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 207, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (851, 15, '【小小音乐家】儿童音乐心理学是如何启发孩子的？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 559, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (853, 15, '附曲丨门德尔松：D小调第一钢琴三重奏 Op.49，第一乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 599, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (855, 15, '附曲 ｜ 肖邦圆舞曲第十首,b小调,作品69第2号', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 221, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (857, 17, '第1讲：归一问题（基础版）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 537, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (859, 15, '8.2【音乐风格】巴洛克风格的变革者——巴赫', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 617, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (861, 15, '【音乐故事】孩子们在学乐器的过程中学会了什么？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 518, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (863, 15, '附曲丨莫扎特：第四十一交响曲第四乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 441, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (865, 15, '【趣味乐理】优雅活泼的小步舞曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 548, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (867, 15, '【家庭指南】好妈妈和好老师一样重要', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 655, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (869, 15, '8.2 附曲丨巴赫：哥德堡变奏曲 节选', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 597, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (871, 17, '第30讲：进阶的追及问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 602, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (873, 17, '第2讲：归一问题（进阶版）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 570, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (875, 15, '附曲丨郑氏三姐弟：勃拉姆斯B大调第一钢琴三重奏，Op4', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 404, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (877, 15, '【小小音乐家】神奇的音乐记忆力是什么？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 560, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (879, 15, '附曲丨柏辽兹：浮士德的惩罚鬼火小步舞曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 344, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (881, 15, '【家庭指南】为家长们推荐几本与音乐教育有关的图书', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 672, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (883, 15, '9.3【音乐风格】古典主义时代的开启之主调音乐', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 559, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (885, 17, '第3讲：归总问题（基础版）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 647, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (887, 15, '附曲丨巴赫：风笛舞曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 49, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (889, 15, '【趣味乐理】什么是能够让人翩翩起舞的乐曲呢？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 563, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (891, 15, '附曲丨傅聪：贝多芬D大调钢琴协奏曲，第二乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 441, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (893, 15, '8.3 附曲丨C.P.E巴赫：D大调索纳塔', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 311, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (895, 17, '第4讲：归总问题（进阶版）', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 670, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (897, 15, '【小小音乐家】如何以色彩联觉培养儿童的音乐感？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 561, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (899, 15, '附曲丨柴可夫斯基：胡桃夹子花之圆舞曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 405, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (901, 15, '【家庭指南】 推荐适合家长和儿童看的音乐电影', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 686, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (903, 15, '8.4【音乐风格】古典时代的代表——海顿爸爸', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 525, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (905, 17, '第5讲：和差问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 600, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (907, 15, '附曲丨德彪西：黄昏空气中的的音乐和芳香', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 180, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (909, 15, '【趣味乐理】带来冬日暖意的芭蕾舞剧', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 601, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (911, 15, '附曲丨 舒曼：A小调钢琴协奏曲 Op.54 第一乐章', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 875, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (913, 15, '8.4 附曲丨海顿：惊愕交响曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 451, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (915, 17, '第6讲：隐藏的和与差', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 578, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (917, 15, '【小小音乐家】培养乐感的秘密', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 639, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (919, 15, '附曲丨柴可夫斯基：天鹅湖选段', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 183, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (921, 15, '【家庭指南】如何引导孩子在弹奏中融入情感', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 726, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (923, 15, '附曲丨肖邦：第二谐谑曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 590, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (925, 17, '第7讲：多个量的和差问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 521, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (927, 15, '附曲丨小克莱伯：小约翰施特劳斯蝙蝠序曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 529, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (929, 15, '【小小音乐家】猫和老鼠中的名曲，Tom郎朗的游戏精神和夸张的喜剧式演奏', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 446, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (931, 15, '【家庭指南】孩子学习音乐究竟哪些益处？', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 575, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (933, 17, '第8讲：多个量的和差问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 569, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (935, 15, '附曲丨郎朗：李斯特匈牙利狂想曲第二号', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 543, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (937, 15, '附曲丨莫扎特C大调16号钢琴协奏曲，第三乐章回旋曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 121, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (939, 17, '第9讲：倍数问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 553, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (941, 15, '【小小音乐家】猫和老鼠中的名曲：蓝色狂想曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 434, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (943, 15, '【给儿童的音乐史】中世纪的宗教音乐', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 719, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (945, 17, '第10讲：多个量的倍数问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 786, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (947, 15, '附曲丨郎朗：蓝色狂想曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 1282, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (949, 15, '附曲丨门德尔松第二交响曲Op.52，赞美颂', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 291, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (951, 17, '第11讲：和倍问题的陷阱', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 790, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (953, 15, '【给儿童的音乐史】百花齐放的文艺复兴', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 627, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (955, 17, '第12讲：基础的年龄问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 579, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (957, 15, '附曲丨帕莱斯特里纳教皇马尔切里弥撒，信经', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 537, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (959, 17, '第13讲：百变的年龄问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 676, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (961, 17, '第14讲：猜猜第N个是什么', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 723, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (963, 17, '第15讲：数值中的周期问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 582, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (965, 15, '【给儿童的音乐史】璀璨的巴洛克时代', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 678, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (967, 17, '第16讲：日期中的周期问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 498, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (969, 15, '附曲丨古尔德：哥德堡变奏曲', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 185, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (971, 17, '第17讲：移动数和相差数', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 664, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (973, 15, '【给儿童的音乐史】古典风格巨匠：海顿', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 691, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (975, 17, '第18讲：基本的平均数问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 537, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (977, 17, '第19讲：平均数问题的变式', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 641, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (979, 17, '第20讲：平均速度中的陷阱', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 574, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (981, 17, '第21讲：基本的价格问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 623, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (983, 17, '第22讲：租船的策略', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 758, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (985, 17, '第23讲：购物的策略', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 494, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (987, 17, '第24讲：选址的策略', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 656, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (989, 17, '第25讲：生活中的分级付费', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 574, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (991, 17, '第26讲：行程问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 598, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (993, 17, '第27讲：基本的相遇问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 537, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (995, 17, '第28讲：进阶的相遇问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 754, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (997, 17, '第29讲：基本的追及问题', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 564, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:39', 1, 0);
INSERT INTO `track` VALUES (999, 23, '《道德经》第17章_幸福社会，都是百姓的功劳', NULL, NULL, '', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.png', 'http://www.baidu.com/group42/M03/FA/22/wKgJ9FqrHNvT-R7QALXG-3pnac4610.mp3', 692, 1, 1, 0, '2018-11-21 14:19:50', '2018-10-25 17:46:44', 1, 0);
INSERT INTO `track` VALUES (1002, 4213, '喜羊羊第1节', NULL, NULL, 'http://dfs.image.com/f556a9fb-3b28-41b1-9a6e-a0336a9ac59f.jpg', 'http://dfs.image.com/154a324e-9687-4c40-a507-d8bfd4cd9ded.jpg', 'http://dfs.image.com/316696cc-4b4a-49fc-9926-7a5f4ab91ecb.mp3', 0, 1, 1, 11, '2018-11-21 15:24:52', '2018-11-21 15:17:29', 1, 1);
INSERT INTO `track` VALUES (1003, 4213, '喜羊羊第2节', NULL, NULL, 'http://dfs.image.com/4ff26d7f-05ed-4767-959e-235388582e0f.jpg', 'http://dfs.image.com/e629c22c-d2f0-4cff-9456-a2184b93d879.jpg', 'http://dfs.image.com/6b43287b-75ca-402b-8e55-393041041b63.mp3', 0, 1, 1, 22, '2018-11-21 15:24:52', '2018-11-21 15:18:34', 1, 1);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` int(4) NOT NULL,
  `age` int(11) NOT NULL,
  `removed` tinyint(2) NOT NULL DEFAULT 0,
  `register_date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'baiding@123.com', '八行书', '123456', 1, 22, 0, '2018-11-21 17:00:11');
INSERT INTO `user` VALUES (2, '1232@qq.com', '小马', '123456', 0, 43, 0, '2018-10-27 14:09:22');
INSERT INTO `user` VALUES (6, '1236@qq.com', 'user4', '123456', 0, 14, 1, '2018-10-27 16:48:12');
INSERT INTO `user` VALUES (7, '1237@qq.com', 'user5', '123456', 1, 15, 1, '2018-10-27 16:48:12');
INSERT INTO `user` VALUES (9, '1239@qq.com', 'user7', '123456', 1, 17, 1, '2018-10-27 16:48:12');
INSERT INTO `user` VALUES (23, 'nanjnj@123.com', '八行书2', '123456', 1, 22, 1, '2018-11-22 14:30:52');
INSERT INTO `user` VALUES (28, '111@123.com', '张三', '123456', 1, 18, 1, '2018-11-22 22:36:59');
INSERT INTO `user` VALUES (29, '12ws@123.com', '王五', '123456', 0, 22, 0, '2018-11-22 22:36:59');
INSERT INTO `user` VALUES (30, 'q2w@123.com', '敢不敢', '123456', 1, 11, 0, '2018-11-22 22:36:00');

-- ----------------------------
-- Triggers structure for table track
-- ----------------------------
DROP TRIGGER IF EXISTS `trigger_track_count_of_album`;
delimiter ;;
CREATE DEFINER = `root`@`localhost` TRIGGER `trigger_track_count_of_album` AFTER INSERT ON `track` FOR EACH ROW BEGIN
update album set track_count= track_count+1 where id =new.album_id;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
