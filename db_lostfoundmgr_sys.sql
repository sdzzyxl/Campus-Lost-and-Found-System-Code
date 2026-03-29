/*
SQLyog Community v13.2.0 (64 bit)
MySQL - 8.0.12 : Database - db_lostfoundmgr_sys
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_lostfoundmgr_sys` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `db_lostfoundmgr_sys`;

/*Table structure for table `banner` */

DROP TABLE IF EXISTS `banner`;

CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '轮播图编号',
  `img` varchar(200) DEFAULT NULL COMMENT '图片',
  `url` varchar(200) DEFAULT NULL COMMENT '链接地址',
  `index_radio` varchar(20) DEFAULT NULL COMMENT '是否首页',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='轮播图';

/*Data for the table `banner` */

insert  into `banner`(`id`,`img`,`url`,`index_radio`) values 
(5,'http://localhost:9090/media/c8d2d017-3c9a-4f1c-98d8-248685a36ace.png',NULL,'是'),
(6,'http://localhost:9090/media/9d1c0310-deff-4cad-83a6-c84ed7259941.png',NULL,'是'),
(7,'http://localhost:9090/media/6ac88279-1f07-479c-a978-453130af0043.png',NULL,'否');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '申领编号',
  `user_id` int(11) DEFAULT NULL COMMENT '申领用户',
  `name` varchar(200) DEFAULT NULL COMMENT '申领物品',
  `img` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `biz_user_id` int(11) DEFAULT NULL COMMENT '拾取物品人',
  `goodid` int(11) DEFAULT NULL COMMENT '物品编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='待申领信息';

/*Data for the table `cart` */

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '分类名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='物品类型';

/*Data for the table `category` */

insert  into `category`(`id`,`name`) values 
(1,'衣物'),
(2,'数码产品'),
(3,'日用品'),
(4,'书籍');

/*Table structure for table `dict` */

DROP TABLE IF EXISTS `dict`;

CREATE TABLE `dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '编码',
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '内容',
  `type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '类型',
  `deleted` int(11) DEFAULT '0' COMMENT '删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `c_d` (`code`,`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='数据字典';

/*Data for the table `dict` */

insert  into `dict`(`id`,`code`,`value`,`type`,`deleted`) values 
(2,'message','message','icon',0),
(3,'menu','menu','icon',0),
(4,'grid','grid','icon',0),
(5,'house','house','icon',0),
(6,'user','user','icon',0),
(7,'file','files','icon',0),
(8,'money','money','icon',0),
(9,'school','school','icon',0),
(10,'notebook','notebook','icon',0),
(11,'coin','coin','icon',0),
(12,'set-up','set-up','icon',0),
(13,'postcard','postcard','icon',0),
(14,'food','food','icon',0),
(15,'position','position','icon',0),
(16,'chat-line-round','chat-line-round','icon',0),
(17,'chat-dot-round','chat-dot-round','icon',0),
(18,'setting','setting','icon',0),
(19,'comment','comment','icon',0);

/*Table structure for table `lost` */

DROP TABLE IF EXISTS `lost`;

CREATE TABLE `lost` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` int(11) DEFAULT NULL COMMENT '物品分类',
  `name` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `img` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `content` text COMMENT '物品描述',
  `address` varchar(200) DEFAULT NULL COMMENT '丢失地点',
  `time` varchar(200) DEFAULT NULL COMMENT '丢失时间',
  `phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `user_id` int(11) DEFAULT NULL COMMENT '发布者',
  `create_time` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='遗失物品信息';

/*Data for the table `lost` */

insert  into `lost`(`id`,`category_id`,`name`,`img`,`content`,`address`,`time`,`phone`,`user_id`,`create_time`) values 
(1,1,'丢了一件李宁运动衣','http://localhost:9090/media/b8bcd7e9-4f77-4cb2-ad1c-6fe6fcada0b9.png','<p>丢了一件李宁运动衣</p>','第二饭堂2楼','2023-12-31 00:00:00','13233334444',38,'2023-12-31 17:56:30');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(200) DEFAULT NULL COMMENT '登录账户',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名',
  `user_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `member` */

insert  into `member`(`id`,`username`,`name`,`user_id`,`phone`) values 
(1,'zhangsan','张三',38,'13211112222'),
(2,'lisi','李四',39,'13566667777');

/*Table structure for table `notice` */

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `user_id` int(11) DEFAULT NULL COMMENT '创建人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `notice` */

insert  into `notice`(`id`,`name`,`content`,`create_time`,`user_id`) values 
(16,'失物招领系统正式成立','<p>失物招领系统正式成立</p>','2023-12-31 17:52:15',1);

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '申领编号',
  `name` varchar(100) DEFAULT NULL COMMENT '申领号',
  `content` text COMMENT '申领明细',
  `state_radio` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT '申领中' COMMENT '订单状态,申领中|确认为失主|已归还|已取消',
  `user_id` int(11) DEFAULT NULL COMMENT '申领用户',
  `create_time` datetime DEFAULT NULL COMMENT '申领时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `biz_user_id` int(11) DEFAULT NULL COMMENT '失物拾取人',
  `goodids` varchar(100) DEFAULT NULL COMMENT '物品编号',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='失物申领记录';

/*Data for the table `orders` */

insert  into `orders`(`id`,`name`,`content`,`state_radio`,`user_id`,`create_time`,`update_time`,`biz_user_id`,`goodids`) values 
(3,'20231231232428','用户失物申领信息：<br/><ul><li>认领人姓名：张三</li><li>认领人手机：13211112222</li><li>遗失物品特征描述：手机壳上有个蔡徐坤</li></ul>遗失物品明细：<br/><ul><li>物品名称：捡到一部全新华为Mate60</li></ul>','申领中',39,'2023-12-31 23:24:29','2023-12-31 23:24:29',38,'2'),
(4,'20231231234801','用户失物申领信息：<br/><ul><li>认领人姓名：张三</li><li>认领人手机：1321112222</li><li>遗失物品特征描述：书的第一页有我的名字名字为：xxxx</li></ul>遗失物品明细：<br/><ul><li>物品名称：捡到考研数学书一本</li></ul>','确认为失主',38,'2023-12-31 23:48:02','2023-12-31 23:48:31',39,'3');

/*Table structure for table `recruit` */

DROP TABLE IF EXISTS `recruit`;

CREATE TABLE `recruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `category_id` int(11) DEFAULT NULL COMMENT '物品分类',
  `name` varchar(200) DEFAULT NULL COMMENT '物品名称',
  `img` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `content` text COMMENT '物品介绍',
  `address` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拾取地点',
  `time` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '拾取时间',
  `user_id` int(11) DEFAULT NULL COMMENT '发布者',
  `create_time` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='失物招领信息';

/*Data for the table `recruit` */

insert  into `recruit`(`id`,`category_id`,`name`,`img`,`content`,`address`,`time`,`user_id`,`create_time`) values 
(1,1,'捡到一件男装衣服','http://localhost:9090/media/d4207df9-a9a4-42f0-b009-2735d95ed18f.png','<p>捡到一件男装衣服</p>','第二教学楼101课室','2023-12-31 17:51:38',38,'2023-12-31 17:51:39'),
(2,2,'捡到一部全新华为Mate60','http://localhost:9090/media/b9feb215-57f7-4ac2-987c-8817afb4d8cc.png','<p>捡到一部全新华为Mate60</p>','第一饭堂1楼','2023-12-31 17:53:45',38,'2023-12-31 17:53:46'),
(3,4,'捡到考研数学书一本','http://localhost:9090/media/3b7054b3-4cc0-4908-9dda-53447ad63006.jpg','<p>捡到考研数学书一本捡到考研数学书一本捡到考研数学书一本</p>','第二饭堂二楼','2023-12-26 10:00:00',39,'2023-12-31 23:46:37');

/*Table structure for table `sys_permission` */

DROP TABLE IF EXISTS `sys_permission`;

CREATE TABLE `sys_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '路径',
  `orders` int(11) DEFAULT '1' COMMENT '顺序',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'grid' COMMENT '图标',
  `page` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '页面路径',
  `auth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '权限',
  `p_id` int(11) DEFAULT NULL COMMENT '父级id',
  `deleted` int(11) DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `type` int(11) DEFAULT NULL COMMENT '类型',
  `hide` tinyint(1) DEFAULT '0' COMMENT '是否隐藏',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `a_d_index` (`auth`,`deleted`) USING BTREE,
  UNIQUE KEY `p_p_d_index` (`path`,`page`,`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=579 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='权限';

/*Data for the table `sys_permission` */

insert  into `sys_permission`(`id`,`name`,`path`,`orders`,`icon`,`page`,`auth`,`p_id`,`deleted`,`create_time`,`update_time`,`type`,`hide`) values 
(1,'系统管理','',2,'menu',NULL,NULL,NULL,0,'2023-01-16 20:45:51','2023-01-16 20:45:51',1,0),
(3,'用户管理','user',1,'user','User','user.list',1,0,'2023-01-16 20:45:51','2023-08-16 23:06:21',2,0),
(4,'用户新增','',1,NULL,'','user.add',3,0,'2023-01-16 20:45:51','2023-01-16 20:45:51',3,0),
(8,'用户编辑','',1,NULL,NULL,'user.edit',3,0,NULL,'2023-01-28 11:45:21',3,0),
(9,'用户删除',NULL,1,NULL,NULL,'user.delete',3,0,'2023-01-29 11:04:15','2023-01-29 11:04:15',3,0),
(10,'角色管理','role',1,'grid','Role','role.list',1,0,'2023-01-31 20:32:59','2023-01-31 20:32:59',2,0),
(11,'权限管理','permission',1,'position','Permission','permission.list',1,0,'2023-01-31 20:33:25','2023-08-16 23:05:29',2,0),
(12,'首页','home',1,'house','Home',NULL,NULL,0,'2023-01-31 21:03:00','2023-01-31 21:03:00',2,0),
(13,'数据字典管理','dict',1,'set-up','Dict','dict.list',1,0,'2023-02-02 20:41:32','2023-08-16 23:32:18',2,0),
(14,'批量删除',NULL,1,'',NULL,'user.deleteBatch',3,0,'2023-02-02 22:32:22','2023-02-02 22:32:22',3,0),
(16,'用户导出',NULL,1,NULL,NULL,'user.export',3,0,'2023-02-02 22:33:08','2023-02-02 22:33:08',3,0),
(21,'角色新增',NULL,1,NULL,'','role.add',10,0,'2023-01-16 20:45:51','2023-01-16 20:45:51',3,0),
(22,'角色编辑',NULL,1,NULL,NULL,'role.edit',10,0,NULL,'2023-01-28 11:45:21',3,0),
(23,'角色删除',NULL,1,NULL,NULL,'role.delete',10,0,'2023-01-29 11:04:15','2023-01-29 11:04:15',3,0),
(25,'批量删除',NULL,1,NULL,NULL,'role.deleteBatch',10,0,'2023-02-02 22:32:22','2023-02-02 22:32:22',3,0),
(27,'角色导出',NULL,1,NULL,NULL,'role.export',10,0,'2023-02-02 22:33:08','2023-02-02 22:33:08',3,0),
(30,'权限新增',NULL,1,NULL,'','permission.add',11,0,'2023-01-16 20:45:51','2023-01-16 20:45:51',3,0),
(31,'权限编辑',NULL,1,NULL,NULL,'permission.edit',11,0,NULL,'2023-01-28 11:45:21',3,0),
(32,'权限删除',NULL,1,NULL,NULL,'permission.delete',11,0,'2023-01-29 11:04:15','2023-01-29 11:04:15',3,0),
(35,'权限导出',NULL,1,NULL,NULL,'permission.export',11,0,'2023-02-02 22:33:08','2023-02-02 22:33:08',3,0),
(37,'数据字典新增',NULL,1,NULL,'','dict.add',13,0,'2023-01-16 20:45:51','2023-01-16 20:45:51',3,0),
(38,'数据字典编辑',NULL,1,NULL,NULL,'dict.edit',13,0,NULL,'2023-01-28 11:45:21',3,0),
(39,'数据字典删除',NULL,1,NULL,NULL,'dict.delete',13,0,'2023-01-29 11:04:15','2023-01-29 11:04:15',3,0),
(40,'批量删除',NULL,1,NULL,NULL,'dict.deleteBatch',13,0,'2023-02-02 22:32:22','2023-02-02 22:32:22',3,0),
(42,'数据字典导出',NULL,1,NULL,NULL,'dict.export',13,0,'2023-02-02 22:33:08','2023-02-02 22:33:08',3,0),
(505,'公告管理','notice',1,'comment','Notice',NULL,NULL,0,NULL,'2023-08-16 23:04:04',2,0),
(506,'公告查询',NULL,1,'grid',NULL,'notice.list',505,0,NULL,'2023-08-14 16:28:13',3,0),
(507,'公告新增',NULL,1,'grid',NULL,'notice.add',505,0,NULL,'2023-08-14 16:28:16',3,0),
(509,'公告导出',NULL,1,'grid',NULL,'notice.export',505,0,NULL,NULL,3,0),
(510,'批量删除',NULL,1,'grid',NULL,'notice.deleteBatch',505,0,NULL,NULL,3,0),
(511,'公告编辑',NULL,1,'grid',NULL,'notice.edit',505,0,NULL,NULL,3,0),
(512,'公告删除',NULL,1,'grid',NULL,'notice.delete',505,0,NULL,NULL,3,0),
(530,'用户管理','member',1,'grid','Member',NULL,NULL,0,NULL,NULL,2,0),
(531,'用户查询',NULL,1,'grid',NULL,'member.list',530,0,NULL,NULL,3,0),
(532,'用户新增',NULL,1,'grid',NULL,'member.add',530,0,NULL,NULL,3,0),
(533,'用户导出',NULL,1,'grid',NULL,'member.export',530,0,NULL,NULL,3,0),
(534,'批量删除',NULL,1,'grid',NULL,'member.deleteBatch',530,0,NULL,NULL,3,0),
(535,'用户编辑',NULL,1,'grid',NULL,'member.edit',530,0,NULL,NULL,3,0),
(536,'用户删除',NULL,1,'grid',NULL,'member.delete',530,0,NULL,NULL,3,0),
(537,'失物招领管理','recruit',1,'grid','Recruit',NULL,NULL,0,NULL,NULL,2,0),
(538,'失物招领查询',NULL,1,'grid',NULL,'recruit.list',537,0,NULL,NULL,3,0),
(539,'失物招领新增',NULL,1,'grid',NULL,'recruit.add',537,0,NULL,NULL,3,0),
(540,'失物招领导出',NULL,1,'grid',NULL,'recruit.export',537,0,NULL,NULL,3,0),
(541,'批量删除',NULL,1,'grid',NULL,'recruit.deleteBatch',537,0,NULL,NULL,3,0),
(542,'失物招领编辑',NULL,1,'grid',NULL,'recruit.edit',537,0,NULL,NULL,3,0),
(543,'失物招领删除',NULL,1,'grid',NULL,'recruit.delete',537,0,NULL,NULL,3,0),
(544,'物品挂失管理','lost',1,'grid','Lost',NULL,NULL,0,NULL,NULL,2,0),
(545,'物品挂失查询',NULL,1,'grid',NULL,'lost.list',544,0,NULL,NULL,3,0),
(546,'物品挂失新增',NULL,1,'grid',NULL,'lost.add',544,0,NULL,NULL,3,0),
(547,'物品挂失导出',NULL,1,'grid',NULL,'lost.export',544,0,NULL,NULL,3,0),
(548,'批量删除',NULL,1,'grid',NULL,'lost.deleteBatch',544,0,NULL,NULL,3,0),
(549,'物品挂失编辑',NULL,1,'grid',NULL,'lost.edit',544,0,NULL,NULL,3,0),
(550,'物品挂失删除',NULL,1,'grid',NULL,'lost.delete',544,0,NULL,NULL,3,0),
(551,'物品类型管理','category',1,'grid','Category',NULL,NULL,0,NULL,NULL,2,0),
(552,'物品类型查询',NULL,1,'grid',NULL,'category.list',551,0,NULL,NULL,3,0),
(553,'物品类型新增',NULL,1,'grid',NULL,'category.add',551,0,NULL,NULL,3,0),
(554,'物品类型导出',NULL,1,'grid',NULL,'category.export',551,0,NULL,NULL,3,0),
(555,'批量删除',NULL,1,'grid',NULL,'category.deleteBatch',551,0,NULL,NULL,3,0),
(556,'物品类型编辑',NULL,1,'grid',NULL,'category.edit',551,0,NULL,NULL,3,0),
(557,'物品类型删除',NULL,1,'grid',NULL,'category.delete',551,0,NULL,NULL,3,0),
(558,'待申领信息管理','cart',1,'grid','Cart',NULL,NULL,0,NULL,'2024-05-31 08:58:38',2,1),
(559,'待申领信息查询',NULL,1,'grid',NULL,'cart.list',558,0,NULL,NULL,3,0),
(560,'待申领信息新增',NULL,1,'grid',NULL,'cart.add',558,0,NULL,NULL,3,0),
(561,'待申领信息导出',NULL,1,'grid',NULL,'cart.export',558,0,NULL,NULL,3,0),
(562,'批量删除',NULL,1,'grid',NULL,'cart.deleteBatch',558,0,NULL,NULL,3,0),
(563,'待申领信息编辑',NULL,1,'grid',NULL,'cart.edit',558,0,NULL,NULL,3,0),
(564,'待申领信息删除',NULL,1,'grid',NULL,'cart.delete',558,0,NULL,NULL,3,0),
(565,'失物申领记录管理','orders',1,'grid','Orders',NULL,NULL,0,NULL,NULL,2,0),
(566,'失物申领记录查询',NULL,1,'grid',NULL,'orders.list',565,0,NULL,NULL,3,0),
(567,'失物申领记录新增',NULL,1,'grid',NULL,'orders.add',565,0,NULL,NULL,3,0),
(568,'失物申领记录导出',NULL,1,'grid',NULL,'orders.export',565,0,NULL,NULL,3,0),
(569,'批量删除',NULL,1,'grid',NULL,'orders.deleteBatch',565,0,NULL,NULL,3,0),
(570,'失物申领记录编辑',NULL,1,'grid',NULL,'orders.edit',565,0,NULL,NULL,3,0),
(571,'失物申领记录删除',NULL,1,'grid',NULL,'orders.delete',565,0,NULL,NULL,3,0),
(572,'轮播图管理','banner',1,'grid','Banner',NULL,NULL,0,NULL,NULL,2,0),
(573,'轮播图查询',NULL,1,'grid',NULL,'banner.list',572,0,NULL,NULL,3,0),
(574,'轮播图新增',NULL,1,'grid',NULL,'banner.add',572,0,NULL,NULL,3,0),
(575,'轮播图导出',NULL,1,'grid',NULL,'banner.export',572,0,NULL,NULL,3,0),
(576,'批量删除',NULL,1,'grid',NULL,'banner.deleteBatch',572,0,NULL,NULL,3,0),
(577,'轮播图编辑',NULL,1,'grid',NULL,'banner.edit',572,0,NULL,NULL,3,0),
(578,'轮播图删除',NULL,1,'grid',NULL,'banner.delete',572,0,NULL,NULL,3,0);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '唯一标识',
  `deleted` int(11) DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `flag_deleted_idnex` (`flag`,`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色';

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`name`,`flag`,`deleted`,`create_time`,`update_time`) values 
(1,'管理员','ADMIN',0,'2023-01-16 19:49:44','2023-08-16 05:17:54'),
(9,'用户','MEMBER',0,'2023-12-31 14:54:09','2023-12-31 23:46:56');

/*Table structure for table `sys_role_permission` */

DROP TABLE IF EXISTS `sys_role_permission`;

CREATE TABLE `sys_role_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `role_id` int(11) NOT NULL COMMENT '角色编号',
  `permission_id` int(11) NOT NULL COMMENT '权限编号',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `role_id` (`role_id`,`permission_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5475 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='角色权限';

/*Data for the table `sys_role_permission` */

insert  into `sys_role_permission`(`id`,`role_id`,`permission_id`) values 
(5375,1,1),
(5376,1,3),
(5377,1,4),
(5378,1,8),
(5379,1,9),
(5380,1,10),
(5381,1,11),
(5382,1,12),
(5383,1,13),
(5384,1,14),
(5385,1,16),
(5386,1,21),
(5387,1,22),
(5388,1,23),
(5389,1,25),
(5390,1,27),
(5391,1,30),
(5392,1,31),
(5393,1,32),
(5394,1,35),
(5395,1,37),
(5396,1,38),
(5397,1,39),
(5398,1,40),
(5399,1,42),
(5400,1,505),
(5401,1,506),
(5402,1,507),
(5403,1,509),
(5404,1,510),
(5405,1,511),
(5406,1,512),
(5407,1,530),
(5408,1,531),
(5409,1,532),
(5410,1,533),
(5411,1,534),
(5412,1,535),
(5413,1,536),
(5414,1,537),
(5415,1,538),
(5416,1,539),
(5417,1,540),
(5418,1,541),
(5419,1,542),
(5420,1,543),
(5421,1,544),
(5422,1,545),
(5423,1,546),
(5424,1,547),
(5425,1,548),
(5426,1,549),
(5427,1,550),
(5428,1,551),
(5429,1,552),
(5430,1,553),
(5431,1,554),
(5432,1,555),
(5433,1,556),
(5434,1,557),
(5435,1,558),
(5436,1,559),
(5437,1,560),
(5438,1,561),
(5439,1,562),
(5440,1,563),
(5441,1,564),
(5442,1,565),
(5443,1,566),
(5444,1,567),
(5445,1,568),
(5446,1,569),
(5447,1,570),
(5448,1,571),
(5449,1,572),
(5450,1,573),
(5451,1,574),
(5452,1,575),
(5453,1,576),
(5454,1,577),
(5455,1,578),
(5456,9,12),
(5457,9,505),
(5458,9,506),
(5464,9,530),
(5465,9,531),
(5468,9,535),
(5469,9,537),
(5470,9,538),
(5471,9,539),
(5473,9,542),
(5474,9,543),
(5459,9,544),
(5460,9,545),
(5461,9,546),
(5462,9,549),
(5463,9,550),
(5466,9,565),
(5467,9,566),
(5472,9,570);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `uid` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户唯一id',
  `deleted` int(11) NOT NULL DEFAULT '0' COMMENT '逻辑删除',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `avatar` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '角色',
  `score` int(11) DEFAULT '0' COMMENT '积分',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uid_index` (`uid`) USING BTREE,
  UNIQUE KEY `username_index` (`username`,`deleted`) USING BTREE,
  UNIQUE KEY `email_index` (`email`,`deleted`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`username`,`password`,`name`,`email`,`address`,`uid`,`deleted`,`create_time`,`update_time`,`avatar`,`role`,`score`) values 
(1,'admin','21232f297a57a5a743894a0e4a801fc3','管理员','admin@126.com','广州南沙区','4918ea50c06a458f94878abe741b4f51',0,'2022-12-09 20:08:17','2023-08-16 15:46:27','http://localhost:9090/media/c1c271a8-1f2a-4fbe-b9dd-584fe04e0c08.jpeg','ADMIN',0),
(38,'zhangsan','e10adc3949ba59abbe56e057f20f883e','张三','zhangsan@qq.com',NULL,'b692fb8a-a7c1-11ee-99b9-94e70b2ad9be',0,'2023-12-31 17:48:13','2023-12-31 17:49:18','http://localhost:9090/media/c96e2606-44a3-4a6c-afdc-e32b76710d66.png','MEMBER',0),
(39,'lisi','e10adc3949ba59abbe56e057f20f883e','李四','lisi@qq.com',NULL,'0753c2db-a7c3-11ee-8ea7-94e70b2ad9be',0,'2023-12-31 17:57:38','2023-12-31 17:58:18','http://localhost:9090/media/9867db96-0328-49b7-80e4-b4cd2036473c.jpg','MEMBER',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
