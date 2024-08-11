/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t319`;
CREATE DATABASE IF NOT EXISTS `t319` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t319`;

DROP TABLE IF EXISTS `bingfang`;
CREATE TABLE IF NOT EXISTS `bingfang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingfang_uuid_number` varchar(200) DEFAULT NULL COMMENT '病房编号',
  `bingfang_name` varchar(200) DEFAULT NULL COMMENT '病房名称 Search111',
  `bingfang_photo` varchar(200) DEFAULT NULL COMMENT '病房图片',
  `bingfang_new_money` decimal(10,2) DEFAULT NULL COMMENT '病房价格',
  `bingfang_kucun_number` int DEFAULT NULL COMMENT '病房数量',
  `bingfang_types` int DEFAULT NULL COMMENT '病房类型 Search111',
  `bingfang_content` text COMMENT '病房详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='病房信息';

DELETE FROM `bingfang`;
INSERT INTO `bingfang` (`id`, `bingfang_uuid_number`, `bingfang_name`, `bingfang_photo`, `bingfang_new_money`, `bingfang_kucun_number`, `bingfang_types`, `bingfang_content`, `create_time`) VALUES
	(1, '165130521643974', '病房名称1', 'http://localhost:8080/yiyuanjizhenxitong/upload/1651307373078.jpeg', 411.08, 101, 1, '<p>病房详情1</p>', '2022-04-30 07:53:36'),
	(2, '165130521643942', '病房名称2', 'http://localhost:8080/yiyuanjizhenxitong/upload/1651307363562.jpeg', 199.92, 102, 1, '<p>病房详情2</p>', '2022-04-30 07:53:36'),
	(3, '165130521643993', '病房名称3', 'http://localhost:8080/yiyuanjizhenxitong/upload/1651307353516.jpeg', 428.64, 103, 3, '<p>病房详情3</p>', '2022-04-30 07:53:36'),
	(4, '165130521643953', '病房名称4', 'http://localhost:8080/yiyuanjizhenxitong/upload/1651307334400.jpeg', 251.14, 104, 2, '<p>病房详情4</p>', '2022-04-30 07:53:36'),
	(5, '16513052164396', '病房名称5', 'http://localhost:8080/yiyuanjizhenxitong/upload/1651307325139.jpeg', 154.68, 103, 3, '<p>病房详情5</p>', '2022-04-30 07:53:36');

DROP TABLE IF EXISTS `bingfang_order`;
CREATE TABLE IF NOT EXISTS `bingfang_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingfang_id` int DEFAULT NULL COMMENT '病房',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `bingfang_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `bingfang_order_text` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='病房预约';

DELETE FROM `bingfang_order`;
INSERT INTO `bingfang_order` (`id`, `bingfang_id`, `yonghu_id`, `bingfang_order_time`, `bingfang_order_text`, `create_time`) VALUES
	(7, 5, 1, '2022-04-30 16:00:00', '备注信息112', '2022-04-30 09:06:48');

DROP TABLE IF EXISTS `bingli`;
CREATE TABLE IF NOT EXISTS `bingli` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `bingli_uuid_number` varchar(200) DEFAULT NULL COMMENT '病例编号',
  `bingli_name` varchar(200) DEFAULT NULL COMMENT '病例名称 Search111',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `bingli_bingqing` varchar(200) DEFAULT NULL COMMENT '病情',
  `jianchaxiangmu` varchar(200) DEFAULT NULL COMMENT '检查项目',
  `jianchajieguo` varchar(200) DEFAULT NULL COMMENT '检查结果',
  `yaodan_text` text COMMENT '药单',
  `bingli_file` varchar(200) DEFAULT NULL COMMENT '病例附件',
  `bingli_time` date DEFAULT NULL COMMENT '日期',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='病例信息';

DELETE FROM `bingli`;
INSERT INTO `bingli` (`id`, `bingli_uuid_number`, `bingli_name`, `yonghu_id`, `bingli_bingqing`, `jianchaxiangmu`, `jianchajieguo`, `yaodan_text`, `bingli_file`, `bingli_time`, `yisheng_id`, `create_time`) VALUES
	(1, '16513052164540', '病例名称1', 3, '病情1', '检查项目1', '检查结果1', '药单1', 'http://localhost:8080/yiyuanjizhenxitong/upload/file.rar', '2022-04-30', 1, '2022-04-30 07:53:36'),
	(2, '165130521645441', '病例名称2', 3, '病情2', '检查项目2', '检查结果2', '药单2', 'http://localhost:8080/yiyuanjizhenxitong/upload/file.rar', '2022-04-30', 3, '2022-04-30 07:53:36'),
	(3, '165130521645418', '病例名称3', 2, '病情3', '检查项目3', '检查结果3', '药单3', 'http://localhost:8080/yiyuanjizhenxitong/upload/file.rar', '2022-04-30', 1, '2022-04-30 07:53:36'),
	(4, '16513052164542', '病例名称4', 3, '病情4', '检查项目4', '检查结果4', '药单4', 'http://localhost:8080/yiyuanjizhenxitong/upload/file.rar', '2022-04-30', 1, '2022-04-30 07:53:36'),
	(5, '165130521645452', '病例名称5', 3, '病情5', '检查项目5', '检查结果5', '药单5', 'http://localhost:8080/yiyuanjizhenxitong/upload/file.rar', '2022-04-30', 2, '2022-04-30 07:53:36');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/yiyuanjizhenxitong/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/yiyuanjizhenxitong/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/yiyuanjizhenxitong/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(14, 'yisheng_order_types', '时间类型', 1, '上午', NULL, NULL, '2022-03-11 09:54:04'),
	(15, 'yisheng_order_types', '时间类型', 2, '下午', NULL, NULL, '2022-03-11 09:54:04'),
	(16, 'yisheng_order_status_types', '挂号状态', 1, '未就诊', NULL, NULL, '2022-03-11 09:54:04'),
	(17, 'yisheng_order_status_types', '挂号状态', 2, '已就诊', NULL, NULL, '2022-03-11 09:54:04'),
	(18, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-11 09:54:05'),
	(19, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-11 09:54:05'),
	(20, 'jiankangjiaoyu_types', '健康教育类型', 1, '健康教育类型1', NULL, NULL, '2022-03-11 09:54:05'),
	(21, 'jiankangjiaoyu_types', '健康教育类型', 2, '健康教育类型2', NULL, NULL, '2022-03-11 09:54:05'),
	(22, 'jiankangjiaoyu_types', '健康教育类型', 3, '健康教育类型3', NULL, NULL, '2022-03-11 09:54:05'),
	(23, 'yisheng_order_yesno_types', '挂号审核', 1, '审核中', NULL, NULL, '2022-03-11 09:54:05'),
	(24, 'yisheng_order_yesno_types', '挂号审核', 2, '通过', NULL, NULL, '2022-03-11 09:54:05'),
	(25, 'yisheng_order_yesno_types', '挂号审核', 3, '拒绝', NULL, NULL, '2022-03-11 09:54:05'),
	(26, 'news_types', '公告类型', 1, '公告类型1', NULL, NULL, '2022-03-11 09:54:05'),
	(27, 'news_types', '公告类型', 2, '公告类型2', NULL, NULL, '2022-03-11 09:54:05'),
	(28, 'yisheng_types', '科室', 1, '科室1', NULL, NULL, '2022-03-11 09:54:05'),
	(29, 'yisheng_types', '科室', 2, '科室2', NULL, NULL, '2022-03-11 09:54:05'),
	(30, 'yisheng_types', '科室', 3, '科室3', NULL, NULL, '2022-03-11 09:54:05'),
	(31, 'zhiwei_types', '职位', 1, '职位1', NULL, NULL, '2022-03-11 09:54:05'),
	(32, 'zhiwei_types', '职位', 2, '职位2', NULL, NULL, '2022-03-11 09:54:05'),
	(33, 'zhiwei_types', '职位', 3, '职位3', NULL, NULL, '2022-03-11 09:54:05'),
	(34, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2022-03-11 09:54:05'),
	(35, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2022-03-11 09:54:05'),
	(36, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2022-03-11 09:54:05'),
	(37, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2022-03-11 09:54:05'),
	(38, 'bingfang_types', '病房类型', 1, '病房类型1', NULL, NULL, '2022-04-30 07:53:22'),
	(39, 'bingfang_types', '病房类型', 2, '病房类型2', NULL, NULL, '2022-04-30 07:53:22'),
	(40, 'bingfang_types', '病房类型', 3, '病房类型3', NULL, NULL, '2022-04-30 07:53:22'),
	(41, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-04-30 07:53:22'),
	(42, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-04-30 07:53:22');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='论坛信息';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `yisheng_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, NULL, '发布内容1', NULL, 1, '2022-04-30 07:53:36', '2022-04-30 07:53:36', '2022-04-30 07:53:36'),
	(2, '帖子标题2', 1, NULL, NULL, '发布内容2', NULL, 1, '2022-04-30 07:53:36', '2022-04-30 07:53:36', '2022-04-30 07:53:36'),
	(3, '帖子标题3', 3, NULL, NULL, '发布内容3', NULL, 1, '2022-04-30 07:53:36', '2022-04-30 07:53:36', '2022-04-30 07:53:36'),
	(4, '帖子标题4', 3, NULL, NULL, '发布内容4', NULL, 1, '2022-04-30 07:53:36', '2022-04-30 07:53:36', '2022-04-30 07:53:36'),
	(5, '帖子标题5', 3, NULL, NULL, '发布内容5', NULL, 1, '2022-04-30 07:53:36', '2022-04-30 07:53:36', '2022-04-30 07:53:36'),
	(7, NULL, 1, NULL, NULL, '未登录进入页面详情会强制跳转登录页面，', 5, 2, '2022-04-30 09:06:24', NULL, '2022-04-30 09:06:24'),
	(8, NULL, NULL, NULL, 1, '管理评论11', 5, 2, '2022-04-30 09:09:31', NULL, '2022-04-30 09:09:31'),
	(9, NULL, NULL, 1, NULL, '医生评论212', 5, 2, '2022-04-30 09:10:38', NULL, '2022-04-30 09:10:38'),
	(10, NULL, 1, NULL, NULL, '111', 4, 2, '2024-08-04 01:24:37', NULL, '2024-08-04 01:24:37');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `news_types` int NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `news_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='公告信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '公告名称1', 'http://localhost:8080/yiyuanjizhenxitong/upload/news1.jpg', 1, '2022-04-30 07:53:36', '公告详情1', '2022-04-30 07:53:36'),
	(2, '公告名称2', 'http://localhost:8080/yiyuanjizhenxitong/upload/news2.jpg', 2, '2022-04-30 07:53:36', '公告详情2', '2022-04-30 07:53:36'),
	(3, '公告名称3', 'http://localhost:8080/yiyuanjizhenxitong/upload/news3.jpg', 1, '2022-04-30 07:53:36', '公告详情3', '2022-04-30 07:53:36'),
	(4, '公告名称4', 'http://localhost:8080/yiyuanjizhenxitong/upload/news4.jpg', 1, '2022-04-30 07:53:36', '公告详情4', '2022-04-30 07:53:36'),
	(5, '公告名称5', 'http://localhost:8080/yiyuanjizhenxitong/upload/news5.jpg', 2, '2022-04-30 07:53:36', '公告详情5', '2022-04-30 07:53:36');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(4, 1, 'a1', 'yonghu', '用户', '48e7hpm780vkz8l3hwp44zsi26shgr5a', '2022-04-30 08:26:40', '2024-08-04 02:24:19'),
	(5, 1, 'admin', 'users', '管理员', 'gmb8o1oz44gwmg8h9zlzxq0smd1anvda', '2022-04-30 08:28:31', '2024-08-04 02:22:43'),
	(6, 1, 'a1', 'yisheng', '医生', '6wiehenhxvl2pv9yc3mp7zoctl5w9uvb', '2022-04-30 09:10:24', '2024-08-04 02:23:57'),
	(7, 2, 'a2', 'yisheng', '医生', 'w6f0xg18t5bkpi8hfymedo0a13opiz4v', '2022-04-30 09:10:49', '2022-04-30 10:10:50'),
	(8, 3, 'a3', 'yisheng', '医生', '93t1fmgq4awgqe49lhu00p11vdflr4id', '2022-04-30 09:10:57', '2022-04-30 10:10:58');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_uuid_number` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yisheng_name` varchar(200) DEFAULT NULL COMMENT '医生名称 Search111',
  `yisheng_types` int DEFAULT NULL COMMENT '科室 Search111',
  `zhiwei_types` int DEFAULT NULL COMMENT '职位 Search111',
  `yisheng_zhichneg` varchar(200) DEFAULT NULL COMMENT '职称',
  `yisheng_photo` varchar(200) DEFAULT NULL COMMENT '医生头像',
  `yisheng_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yisheng_guahao` varchar(200) DEFAULT NULL COMMENT '挂号须知',
  `yisheng_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yisheng_new_money` decimal(10,2) DEFAULT NULL COMMENT '预约价格',
  `yisheng_content` text COMMENT '履历介绍',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `yisheng_uuid_number`, `username`, `password`, `yisheng_name`, `yisheng_types`, `zhiwei_types`, `yisheng_zhichneg`, `yisheng_photo`, `yisheng_phone`, `yisheng_guahao`, `yisheng_email`, `yisheng_new_money`, `yisheng_content`, `create_time`) VALUES
	(1, '165130521647470', '医生1', '123456', '医生名称1', 2, 2, '职称1', 'http://localhost:8080/yiyuanjizhenxitong/upload/yisheng1.jpg', '17703786901', '挂号须知1', '1@qq.com', 323.78, '履历介绍1', '2022-04-30 07:53:36'),
	(2, '165130521647477', '医生2', '123456', '医生名称2', 2, 3, '职称2', 'http://localhost:8080/yiyuanjizhenxitong/upload/yisheng2.jpg', '17703786902', '挂号须知2', '2@qq.com', 376.14, '履历介绍2', '2022-04-30 07:53:36'),
	(3, '165130521647499', '医生3', '123456', '医生名称3', 3, 3, '职称3', 'http://localhost:8080/yiyuanjizhenxitong/upload/yisheng3.jpg', '17703786903', '挂号须知3', '3@qq.com', 478.05, '履历介绍3', '2022-04-30 07:53:36');

DROP TABLE IF EXISTS `yisheng_order`;
CREATE TABLE IF NOT EXISTS `yisheng_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yisheng_id` int DEFAULT NULL COMMENT '医生',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yisheng_order_uuin_number` varchar(200) DEFAULT NULL COMMENT '就诊识别码',
  `yisheng_order_time` date DEFAULT NULL COMMENT '预约时间 Search111',
  `yisheng_order_types` int DEFAULT NULL COMMENT '时间类型 Search111',
  `yisheng_order_text` text COMMENT '患者症状',
  `yisheng_order_status_types` int DEFAULT NULL COMMENT '预约状态',
  `yisheng_order_yesno_types` int DEFAULT NULL COMMENT '预约审核',
  `yisheng_order_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COMMENT='急诊预约';

DELETE FROM `yisheng_order`;
INSERT INTO `yisheng_order` (`id`, `yisheng_id`, `yonghu_id`, `yisheng_order_uuin_number`, `yisheng_order_time`, `yisheng_order_types`, `yisheng_order_text`, `yisheng_order_status_types`, `yisheng_order_yesno_types`, `yisheng_order_yesno_text`, `create_time`) VALUES
	(17, 3, 1, '00121354', '2022-05-01', 2, '患者症状123', 2, 2, '同意12', '2022-04-30 09:08:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `sex_types`, `new_money`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/yiyuanjizhenxitong/upload/yonghu1.jpg', '17703786901', '410224199610232001', '1@qq.com', 2, 111.79, 1, '2022-04-30 07:53:36'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/yiyuanjizhenxitong/upload/yonghu2.jpg', '17703786902', '410224199610232002', '2@qq.com', 2, 671.59, 1, '2022-04-30 07:53:36'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/yiyuanjizhenxitong/upload/yonghu3.jpg', '17703786903', '410224199610232003', '3@qq.com', 2, 41.92, 1, '2022-04-30 07:53:36');

DROP TABLE IF EXISTS `yonghujiankangma`;
CREATE TABLE IF NOT EXISTS `yonghujiankangma` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `yonghujiankangma_photo` varchar(200) DEFAULT NULL COMMENT '健康码',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='用户健康码';

DELETE FROM `yonghujiankangma`;
INSERT INTO `yonghujiankangma` (`id`, `yonghu_id`, `yonghujiankangma_photo`, `create_time`) VALUES
	(1, 3, 'http://localhost:8080/yiyuanjizhenxitong/upload/1651309815255.jpeg', '2022-04-30 07:53:36');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
