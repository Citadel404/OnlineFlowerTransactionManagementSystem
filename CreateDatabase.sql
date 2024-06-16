/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 8.2.0 : Database - flower_transaction
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`flower_transaction` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `flower_transaction`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1660897722065 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1620373007699,'2021-05-07 15:36:47',11,'河北省石家庄市桥西区休门街道休门街滨江优谷','张三','12333333333','是'),(1620373027329,'2021-05-07 15:37:07',11,'河北省石家庄市桥西区东华街道煤市路绿地中山公馆','111','13444444444','否'),(1660897722064,'2022-08-19 16:28:41',1660843983170,'北京','1k2j3kl','18818818888','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'xianhuayoulan' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1660844000256 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

/*Data for the table `cart` */

insert  into `cart`(`id`,`addtime`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`) values (1620483047314,'2021-05-08 22:10:46','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,0),(1620483052816,'2021-05-08 22:10:52','xianhuayoulan',11,1620372824492,'向日葵','http://localhost:8080/bishe/upload/xianhuayoulan_tupian3.jpg',1,55,0);

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620620026298 DEFAULT CHARSET=utf8mb3 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1620373055062,'2021-05-07 15:37:34',11,NULL,'111113333',NULL,0),(1620373491746,'2021-05-07 15:44:50',11,1,NULL,'111111',0),(1620373495390,'2021-05-07 15:44:55',11,1,NULL,'恶趣味无群二',0),(1620374031678,'2021-05-07 15:53:50',11,NULL,'HHHHHH',NULL,0),(1620619812381,'2021-05-10 12:10:11',11,NULL,'哈哈哈',NULL,0),(1620619954805,'2021-05-10 12:12:34',11,NULL,'你哈哦',NULL,0),(1620620026297,'2021-05-10 12:13:45',11,NULL,'你你你',NULL,1);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (7,'1','http://localhost:8080/bishe/upload/lbt1.jpg'),(8,'2','http://localhost:8080/bishe/upload/lbt2.jpg'),(9,'3','http://localhost:8080/bishe/upload/lbt3.jpg');

/*Table structure for table `discussshangjia` */

DROP TABLE IF EXISTS `discussshangjia`;

CREATE TABLE `discussshangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620617881884 DEFAULT CHARSET=utf8mb3 COMMENT='商家评论表';

/*Data for the table `discussshangjia` */

insert  into `discussshangjia`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620373040695,'2021-05-07 15:37:20',21,11,'1','123','EQWEWQEWQ'),(1620373048156,'2021-05-07 15:37:27',22,11,'1','123',NULL),(1620373920597,'2021-05-07 15:52:00',21,11,'1','123','9999\n'),(1620373925389,'2021-05-07 15:52:05',21,11,'1','QWEQWE',NULL),(1620373940853,'2021-05-07 15:52:20',22,11,'1','QWEQWEQWEQ',NULL),(1620617881883,'2021-05-10 11:38:01',21,11,'1','冲冲冲',NULL);

/*Table structure for table `discussxianhuayoulan` */

DROP TABLE IF EXISTS `discussxianhuayoulan`;

CREATE TABLE `discussxianhuayoulan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620372946343 DEFAULT CHARSET=utf8mb3 COMMENT='鲜花游览评论表';

/*Data for the table `discussxianhuayoulan` */

insert  into `discussxianhuayoulan`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (1620372934409,'2021-05-07 15:35:33',1620372705300,11,'1','去去去','11111123213'),(1620372946342,'2021-05-07 15:35:45',1620372824492,11,'1','凄凄切切','3123123123');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620372396618 DEFAULT CHARSET=utf8mb3 COMMENT='系统公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1620372349849,'2021-05-07 15:25:49','鲜花上新啦','菊花上新','http://localhost:8080/bishe/upload/jjjjjjjjjj.jpg','<p>菊花上新菊花上新菊花上新菊花上新菊花上新</p>'),(1620372396617,'2021-05-07 15:26:35','系统更新','系统更新','http://localhost:8080/bishe/upload/123.jpg','<p>系统更新请输入新网址http://localhost:8080/bishe</p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'xianhuayoulan' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1660897790835 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1620373076774,'2021-05-07 15:37:56','20215715375634932306','xianhuayoulan',11,1620372824492,'向日葵','http://localhost:8080/bishe/upload/xianhuayoulan_tupian3.jpg',1,55,55,55,55,1,'已退款','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620373109834,'2021-05-07 15:38:29','20215715382971884173','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,999,999,1,'已完成','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620373121881,'2021-05-07 15:38:41','20215715384159639656','xianhuayoulan',11,1620372869977,'菊花','http://localhost:8080/bishe/upload/jjjjjjjjjj.jpg',4,54,54,216,216,1,'已发货','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620373151367,'2021-05-07 15:39:11','20215715391110300171','xianhuayoulan',11,1620372824492,'向日葵','http://localhost:8080/bishe/upload/xianhuayoulan_tupian3.jpg',1,55,55,55,55,1,'已发货','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620373159934,'2021-05-07 15:39:19','20215715391964201193','xianhuayoulan',11,1620372705300,'月季','http://localhost:8080/bishe/upload/111111.jpg',1,13,13,13,13,1,'已支付','河北省石家庄市桥西区东华街道煤市路绿地中山公馆'),(1620373169846,'2021-05-07 15:39:29','20215715392948598833','xianhuayoulan',11,1620372598896,'向日葵','http://localhost:8080/bishe/upload/xianhuayoulan_tupian3.jpg',1,99,99,99,99,1,'已退款','河北省石家庄市桥西区东华街道煤市路绿地中山公馆'),(1620373211212,'2021-05-07 15:40:10','20215715401063922989','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',35,999,999,34965,34965,1,'已取消','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620395900758,'2021-05-07 21:58:20','20215721581996149808','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,1012,999,1,'已支付','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620395900759,'2021-05-07 21:58:19','20215721581993551539','xianhuayoulan',11,1620372705300,'月季','http://localhost:8080/bishe/upload/111111.jpg',1,13,13,1012,13,1,'已支付','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620395932524,'2021-05-07 21:58:52','20215721585239090677','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,999,999,1,'已取消','河北省石家庄市桥西区东华街道煤市路绿地中山公馆'),(1620396706094,'2021-05-07 22:11:45','20215722114595784371','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,999,999,1,'已退款','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620616804381,'2021-05-10 11:20:04','20215101120413264717','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,999,999,1,'已退款','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620616807995,'2021-05-10 11:20:07','20215101120716097084','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,999,999,1,'已发货','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1620616813444,'2021-05-10 11:20:12','202151011201252437975','xianhuayoulan',11,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,999,999,1,'未支付','河北省石家庄市桥西区休门街道休门街滨江优谷'),(1660897746093,'2022-08-19 16:29:05','20228191629559058579','xianhuayoulan',1660843983170,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,999,999,1,'已完成','北京'),(1660897790834,'2022-08-19 16:29:49','202281916294975908398','xianhuayoulan',1660843983170,1620372536411,'99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg',1,999,999,999,999,1,'已完成','北京');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangjiazhanghao` varchar(200) NOT NULL COMMENT '商家账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `dianpuming` varchar(200) DEFAULT NULL COMMENT '店铺名',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `shangjiatupian` varchar(200) DEFAULT NULL COMMENT '商家图片',
  `jingyingfanwei` varchar(200) DEFAULT NULL COMMENT '经营范围',
  `shangjiajieshao` longtext COMMENT '商家介绍',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangjiazhanghao` (`shangjiazhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`addtime`,`shangjiazhanghao`,`mima`,`dianpuming`,`dianpudizhi`,`lianxifangshi`,`lianxiren`,`shangjiatupian`,`jingyingfanwei`,`shangjiajieshao`,`money`) values (21,'2021-03-20 11:34:03','1','1','花店1','北京','13566666666','张三','http://localhost:8080/bishe/upload/1660844439625.jpg','全部','<h1>冲冲冲</h1>',100),(22,'2021-03-20 11:34:03','2','2','花店2','123','15666666666','李四','http://localhost:8080/bishe/upload/1660844458003.jpg','全部','<p>冲冲冲</p>',100),(23,'2021-03-20 11:34:03','3','3','花店3','111','15666666666','联系人','http://localhost:8080/bishe/upload/1660844468980.jpg','6','<p>1111</p>',100),(24,'2021-03-20 11:34:03','4','4','花店4','店铺地址','15666666666','联系人','http://localhost:8080/bishe/upload/1660844481014.jpg','经营范围','<p>商家介绍</p>',100),(25,'2021-03-20 11:34:03','5','5','花店5','店铺地址','15666666666','联系人','http://localhost:8080/bishe/upload/1660844493229.jpg','经营范围','<p>商家介绍</p>',100);

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620618308208 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1620618308207,'2021-05-10 11:45:07',11,1620372536411,'xianhuayoulan','99朵玫瑰','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','nxoqyntlbl0ez7vy89kvtmhscg0lgikf','2021-03-20 11:44:21','2022-08-19 17:46:45'),(2,21,'1','shangjia','商家','qvtc40602uy0594gho3g6wux3gs5g3pv','2021-03-20 11:44:51','2022-08-19 17:45:08'),(3,1616211974112,'1','yonghu','用户','4mz57zj97kgh276qa79520yg9lb55fwr','2021-03-20 11:46:18','2021-03-20 12:46:18'),(4,22,'2','shangjia','商家','ersgtqjf3ep1wxn1yn2s9xwaisfy516o','2021-05-07 15:33:10','2022-08-19 02:50:29'),(5,11,'1','yonghu','用户','0dr7fdtja80o4b9s7hd0lb73arpn1fpa','2021-05-07 15:34:37','2022-07-18 12:15:45'),(6,16,'6','yonghu','用户','w9o9mgocz9is55prg2prwrfy2r80yfn9','2021-05-07 21:50:09','2021-05-07 22:50:10'),(7,1620482029495,'999','yonghu','用户','t81ynsx5yh4732j96rim068msy2ae0s8','2021-05-08 21:54:35','2021-05-08 23:01:36'),(8,1660843983170,'001','yonghu','用户','qfic25ot2v5gmfqwjvi4ihvnaexegxuj','2022-08-19 01:33:09','2022-08-19 17:47:32'),(9,23,'3','shangjia','商家','lwxd6oe41qds771wi7vty75xe68tcwd8','2022-08-19 01:50:51','2022-08-19 02:50:52'),(10,24,'4','shangjia','商家','mrkoj483rdekzghdqx391i9bnq9yoc6q','2022-08-19 01:51:04','2022-08-19 02:51:04');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-03-20 11:34:03');

/*Table structure for table `xianhuafenlei` */

DROP TABLE IF EXISTS `xianhuafenlei`;

CREATE TABLE `xianhuafenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianhuafenlei` varchar(200) DEFAULT NULL COMMENT '鲜花分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620372731276 DEFAULT CHARSET=utf8mb3 COMMENT='鲜花分类';

/*Data for the table `xianhuafenlei` */

insert  into `xianhuafenlei`(`id`,`addtime`,`xianhuafenlei`) values (31,'2021-03-20 11:34:03','月季'),(32,'2021-03-20 11:34:03','玫瑰'),(33,'2021-03-20 11:34:03','向日葵'),(35,'2021-03-20 11:34:03','百合'),(36,'2021-03-20 11:34:03','绿萝'),(1620372731275,'2021-05-07 15:32:10','菊花');

/*Table structure for table `xianhuayoulan` */

DROP TABLE IF EXISTS `xianhuayoulan`;

CREATE TABLE `xianhuayoulan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianhuamingcheng` varchar(200) NOT NULL COMMENT '鲜花名称',
  `xianhuafenlei` varchar(200) DEFAULT NULL COMMENT '鲜花分类',
  `xianhuayongtu` varchar(200) DEFAULT NULL COMMENT '鲜花用途',
  `zengsongduixiang` varchar(200) DEFAULT NULL COMMENT '赠送对象',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `xiangguanhuayu` varchar(200) DEFAULT NULL COMMENT '相关花语',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `shangjiazhanghao` varchar(200) DEFAULT NULL COMMENT '商家账号',
  `dianpuming` varchar(200) DEFAULT NULL COMMENT '店铺名',
  `dianpudizhi` varchar(200) DEFAULT NULL COMMENT '店铺地址',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620372869978 DEFAULT CHARSET=utf8mb3 COMMENT='鲜花游览';

/*Data for the table `xianhuayoulan` */

insert  into `xianhuayoulan`(`id`,`addtime`,`xianhuamingcheng`,`xianhuafenlei`,`xianhuayongtu`,`zengsongduixiang`,`tupian`,`xiangguanhuayu`,`shangpinxiangqing`,`shangjiazhanghao`,`dianpuming`,`dianpudizhi`,`lianxifangshi`,`lianxiren`,`clicktime`,`clicknum`,`price`) values (1620372536411,'2021-05-07 15:28:55','99朵玫瑰','玫瑰','爱情','恋人','http://localhost:8080/bishe/upload/xianhuayoulan_tupian1.jpg','无','<p>好</p>','1','花店1','北京','13566666666','张三','2022-08-19 16:30:10',73,999),(1620372598896,'2021-05-07 15:29:58','向日葵','向日葵','爱情','恋人','http://localhost:8080/bishe/upload/xianhuayoulan_tupian3.jpg','我爱你','<p>去</p>','1','花店1','北京','13566666666','张三','2021-05-08 21:56:25',6,99),(1620372624930,'2021-05-07 15:30:24','玫瑰','玫瑰','爱情','恋人','http://localhost:8080/bishe/upload/xianhuayoulan_tupian5.jpg','无','','1','花店1','北京','13566666666','张三','2021-05-08 21:56:35',3,99),(1620372668819,'2021-05-07 15:31:08','绿萝','绿萝','开业','同事','http://localhost:8080/bishe/upload/xianhuayoulan_tupian2.jpg','我','','1','花店1','北京','13566666666','张三','2021-05-08 21:56:45',2,33),(1620372824492,'2021-05-07 15:33:44','向日葵','向日葵','爱情','恋人','http://localhost:8080/bishe/upload/xianhuayoulan_tupian3.jpg','1','<p>1</p>','2','花店2','123','15666666666','李四','2021-05-10 11:47:26',50,55);

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghushouji` varchar(200) DEFAULT NULL COMMENT '用户手机',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1660843983171 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`mima`,`yonghuxingming`,`xingbie`,`nianling`,`touxiang`,`yonghushouji`,`money`) values (11,'2021-03-20 11:34:03','1','1','张三','男',20,'http://localhost:8080/bishe/upload/downlo2ad.jpg','13811111111',3053),(12,'2021-03-20 11:34:03','2','2','小丽','女',20,'http://localhost:8080/bishe/upload/downlo3ad.jpg','13822222222',100),(13,'2021-03-20 11:34:03','3','3','李四','男',30,'http://localhost:8080/bishe/upload/downloa1d.jpg','13833333333',100),(14,'2021-03-20 11:34:03','4','4','赵六','男',41,'http://localhost:8080/bishe/upload/download.jpg','13833333334',100),(1660843983170,'2022-08-19 01:33:03','001','123456','ff',NULL,12,NULL,'18818818818',1140120);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
