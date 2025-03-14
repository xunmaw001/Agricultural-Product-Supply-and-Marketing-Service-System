-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: jspmk37ae
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614845594075 DEFAULT CHARSET=utf8 COMMENT='地址';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'2021-03-04 08:05:22',1,'宇宙银河系金星1号','金某','13823888881','是'),(2,'2021-03-04 08:05:22',2,'宇宙银河系木星1号','木某','13823888882','是'),(3,'2021-03-04 08:05:22',3,'宇宙银河系水星1号','水某','13823888883','是'),(4,'2021-03-04 08:05:22',4,'宇宙银河系火星1号','火某','13823888884','是'),(5,'2021-03-04 08:05:22',5,'宇宙银河系土星1号','土某','13823888885','是'),(6,'2021-03-04 08:05:22',6,'宇宙银河系月球1号','月某','13823888886','是'),(1614845594074,'2021-03-04 08:13:13',1614845517785,'福建省南平市建瓯市吉阳镇高水','xxxx联系人','12345678910','是');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'nongchanpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614845540602 DEFAULT CHARSET=utf8 COMMENT='购物车表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614845655641 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (51,'2021-03-04 08:05:22',1,1,'提问1','回复1',1),(52,'2021-03-04 08:05:22',2,2,'提问2','回复2',2),(53,'2021-03-04 08:05:22',3,3,'提问3','回复3',3),(54,'2021-03-04 08:05:22',4,4,'提问4','回复4',4),(55,'2021-03-04 08:05:22',5,5,'提问5','回复5',5),(56,'2021-03-04 08:05:22',6,6,'提问6','回复6',6),(1614845619867,'2021-03-04 08:13:39',1614845517785,NULL,'‍有个问题\r\n','你说\r\n',0),(1614845655640,'2021-03-04 08:14:15',1614845517785,NULL,'456789',NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/jspmk37ae/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmk37ae/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmk37ae/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussnongchanpin`
--

DROP TABLE IF EXISTS `discussnongchanpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussnongchanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614845532223 DEFAULT CHARSET=utf8 COMMENT='农产品评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussnongchanpin`
--

LOCK TABLES `discussnongchanpin` WRITE;
/*!40000 ALTER TABLE `discussnongchanpin` DISABLE KEYS */;
INSERT INTO `discussnongchanpin` VALUES (101,'2021-03-04 08:05:22',1,1,'评论内容1','回复内容1'),(102,'2021-03-04 08:05:22',2,2,'评论内容2','回复内容2'),(103,'2021-03-04 08:05:22',3,3,'评论内容3','回复内容3'),(104,'2021-03-04 08:05:22',4,4,'评论内容4','回复内容4'),(105,'2021-03-04 08:05:22',5,5,'评论内容5','回复内容5'),(106,'2021-03-04 08:05:22',6,6,'评论内容6','回复内容6'),(1614845532222,'2021-03-04 08:12:11',32,1614845517785,'adas',NULL);
/*!40000 ALTER TABLE `discussnongchanpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nongchanpin`
--

DROP TABLE IF EXISTS `nongchanpin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nongchanpin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `chanpinbianhao` varchar(200) DEFAULT NULL COMMENT '产品编号',
  `chanpinmingcheng` varchar(200) DEFAULT NULL COMMENT '产品名称',
  `nongchanpinfenlei` varchar(200) DEFAULT NULL COMMENT '农产品分类',
  `gongyingshang` varchar(200) DEFAULT NULL COMMENT '供应商',
  `laizidiqu` varchar(200) DEFAULT NULL COMMENT '来自地区',
  `chanpinjieshao` longtext COMMENT '产品介绍',
  `chanpintupian` varchar(200) DEFAULT NULL COMMENT '产品图片',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chanpinbianhao` (`chanpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='农产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nongchanpin`
--

LOCK TABLES `nongchanpin` WRITE;
/*!40000 ALTER TABLE `nongchanpin` DISABLE KEYS */;
INSERT INTO `nongchanpin` VALUES (31,'2021-03-04 08:05:22','产品编号1','产品名称1','农产品分类3','供应商1','来自地区1','产品介绍1\r\n','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian1.jpg',99.9),(32,'2021-03-04 08:05:22','产品编号2','产品名称2','农产品分类2','供应商2','来自地区2','产品介绍2','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian2.jpg',99.9),(33,'2021-03-04 08:05:22','产品编号3','产品名称3','农产品分类3','供应商3','来自地区3','产品介绍3','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian3.jpg',99.9),(34,'2021-03-04 08:05:22','产品编号4','产品名称4','农产品分类4','供应商4','来自地区4','产品介绍4','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian4.jpg',99.9),(35,'2021-03-04 08:05:22','产品编号5','产品名称5','农产品分类5','供应商5','来自地区5','产品介绍5','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian5.jpg',99.9),(36,'2021-03-04 08:05:22','产品编号6','产品名称6','农产品分类6','供应商6','来自地区6','产品介绍6','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian6.jpg',99.9);
/*!40000 ALTER TABLE `nongchanpin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nongchanpinfenlei`
--

DROP TABLE IF EXISTS `nongchanpinfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nongchanpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `nongchanpinfenlei` varchar(200) DEFAULT NULL COMMENT '农产品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='农产品分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nongchanpinfenlei`
--

LOCK TABLES `nongchanpinfenlei` WRITE;
/*!40000 ALTER TABLE `nongchanpinfenlei` DISABLE KEYS */;
INSERT INTO `nongchanpinfenlei` VALUES (21,'2021-03-04 08:05:22','农产品分类11111111111'),(22,'2021-03-04 08:05:22','农产品分类2'),(23,'2021-03-04 08:05:22','农产品分类3'),(24,'2021-03-04 08:05:22','农产品分类4'),(25,'2021-03-04 08:05:22','农产品分类5'),(26,'2021-03-04 08:05:22','农产品分类6');
/*!40000 ALTER TABLE `nongchanpinfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nongchanpinzixun`
--

DROP TABLE IF EXISTS `nongchanpinzixun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nongchanpinzixun` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) NOT NULL COMMENT '标题',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `laiyuan` varchar(200) DEFAULT NULL COMMENT '来源',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `neirong` longtext COMMENT '内容',
  `faburen` varchar(200) DEFAULT NULL COMMENT '发布人',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='农产品资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nongchanpinzixun`
--

LOCK TABLES `nongchanpinzixun` WRITE;
/*!40000 ALTER TABLE `nongchanpinzixun` DISABLE KEYS */;
INSERT INTO `nongchanpinzixun` VALUES (41,'2021-03-04 08:05:22','标题1','http://localhost:8080/jspmk37ae/upload/nongchanpinzixun_fengmian1.jpg','来源1','2021-03-04','内容1','发布人1',1),(42,'2021-03-04 08:05:22','标题2','http://localhost:8080/jspmk37ae/upload/nongchanpinzixun_fengmian2.jpg','来源2','2021-03-04','内容2','发布人2',2),(43,'2021-03-04 08:05:22','标题3','http://localhost:8080/jspmk37ae/upload/nongchanpinzixun_fengmian3.jpg','来源3','2021-03-04','内容3','发布人3',3),(44,'2021-03-04 08:05:22','标题4','http://localhost:8080/jspmk37ae/upload/nongchanpinzixun_fengmian4.jpg','来源4','2021-03-04','内容4','发布人4',5),(45,'2021-03-04 08:05:22','标题5','http://localhost:8080/jspmk37ae/upload/nongchanpinzixun_fengmian5.jpg','来源5','2021-03-04','内容5','发布人5',5),(46,'2021-03-04 08:05:22','标题6','http://localhost:8080/jspmk37ae/upload/nongchanpinzixun_fengmian6.jpg','来源6','2021-03-04','内容6','发布人6',6);
/*!40000 ALTER TABLE `nongchanpinzixun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'nongchanpin' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614845608096 DEFAULT CHARSET=utf8 COMMENT='订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1614845607899,'2021-03-04 08:13:27','20213416133713644427','nongchanpin',1614845517785,32,'产品名称2','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian2.jpg',1,99.9,99.9,199.8,99.9,1,'已完成','福建省南平市建瓯市吉阳镇高水'),(1614845608095,'2021-03-04 08:13:27','20213416133712934195','nongchanpin',1614845517785,36,'产品名称6','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian6.jpg',1,99.9,99.9,199.8,99.9,1,'已支付','福建省南平市建瓯市吉阳镇高水');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614845527643 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1614845527642,'2021-03-04 08:12:07',1614845517785,32,'nongchanpin','产品名称2','http://localhost:8080/jspmk37ae/upload/nongchanpin_chanpintupian2.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','rustjqmdy3qrvlygd6uhrwzh2in3yzau','2021-03-04 08:10:37','2021-03-04 09:10:37'),(2,1614845517785,'1','yonghu','用户','hvd3qv8x5oko5tjf4w1604l6jnajsyiz','2021-03-04 08:12:02','2021-03-04 09:12:02');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-04 08:05:23');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yonghuxingming` varchar(200) DEFAULT NULL COMMENT '用户姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1614845517786 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-04 08:05:22','用户1','123456','用户姓名1','男',1,'http://localhost:8080/jspmk37ae/upload/yonghu_touxiang1.jpg',100),(12,'2021-03-04 08:05:22','用户2','123456','用户姓名2','男',2,'http://localhost:8080/jspmk37ae/upload/yonghu_touxiang2.jpg',100),(13,'2021-03-04 08:05:22','用户3','123456','用户姓名3','男',3,'http://localhost:8080/jspmk37ae/upload/yonghu_touxiang3.jpg',100),(14,'2021-03-04 08:05:22','用户4','123456','用户姓名4','男',4,'http://localhost:8080/jspmk37ae/upload/yonghu_touxiang4.jpg',100),(15,'2021-03-04 08:05:22','用户5','123456','用户姓名5','男',5,'http://localhost:8080/jspmk37ae/upload/yonghu_touxiang5.jpg',100),(16,'2021-03-04 08:05:22','用户6','123456','用户姓名6','男',6,'http://localhost:8080/jspmk37ae/upload/yonghu_touxiang6.jpg',100),(1614845517785,'2021-03-04 08:11:57','1','1','xxx用户','男',22,'http://localhost:8080/jspmk37ae/upload/1614845555148.png',19600.4);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 17:54:50
