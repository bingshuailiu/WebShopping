-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `account` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `price` double NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account`,`name`,`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('13843869423','BOSE耳机','数码类',1,500,NULL),('13843869423','CASIO手表','数码类',1,100,NULL),('13843869423','书架','生活用品',1,30,NULL),('13843869423','山地自行车','其他',1,2000,NULL),('13843869423','收纳盒','生活用品',1,10,NULL),('13843869423','水杯','生活用品',1,30,NULL),('13843869423','水浒传','学习用品',2,99,NULL),('13843869423','洗发水','生活用品',1,99,NULL),('13843869423','相机','数码类',1,99,NULL),('13843869423','钢笔','学习用品',1,99,NULL),('root','化妆镜','生活用品',1,10,NULL),('root','火锅底料','食品',1,30,NULL),('root','自行车','交通工具',1,1000,NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemsort`
--

DROP TABLE IF EXISTS `itemsort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemsort` (
  `item_id` int NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `sort_id` int DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemsort`
--

LOCK TABLES `itemsort` WRITE;
/*!40000 ALTER TABLE `itemsort` DISABLE KEYS */;
INSERT INTO `itemsort` VALUES (1,'丁鲷',NULL),(2,'金鱼',NULL),(3,'大白鲨',NULL),(4,'虎鲨',NULL),(5,'锤头鲨',NULL),(6,'电鳐',NULL),(7,'黄貂鱼',NULL),(8,'公鸡',NULL),(9,'母鸡',NULL),(10,'鸵鸟',NULL),(11,'燕雀',NULL),(12,'金翅雀',NULL),(13,'家朱雀',NULL),(14,'灯芯草雀',NULL),(15,'靛蓝雀',NULL),(16,'蓝鹀',NULL),(17,'夜莺',NULL),(18,'松鸦',NULL),(19,'喜鹊',NULL),(20,'山雀',NULL),(21,'河鸟',NULL),(22,'鸢（猛禽）',NULL),(23,'秃头鹰',NULL),(24,'秃鹫',NULL),(25,'大灰猫头鹰',NULL),(26,'欧洲火蝾螈',NULL),(27,'普通蝾螈',NULL),(28,'水蜥',NULL),(29,'斑点蝾螈',NULL),(30,'蝾螈、泥狗',NULL),(31,'牛蛙',NULL),(32,'树蛙',NULL),(33,'尾蛙、铃蟾蜍、肋蟾蜍、尾蟾蜍',NULL),(34,'红海龟',NULL),(35,'皮革龟',NULL),(36,'泥龟',NULL),(37,'淡水龟',NULL),(38,'箱龟',NULL),(39,'带状壁虎',NULL),(40,'普通鬣蜥',NULL),(41,'美国变色龙',NULL),(42,'鞭尾蜥蜴',NULL),(43,'飞龙科蜥蜴',NULL),(44,'褶边蜥蜴',NULL),(45,'鳄鱼蜥蜴',NULL),(46,'毒蜥',NULL),(47,'绿蜥蜴',NULL),(48,'非洲变色龙',NULL),(49,'科莫多蜥蜴',NULL),(50,'非洲鳄、尼罗河鳄鱼',NULL),(51,'美国鳄鱼、鳄鱼',NULL),(52,'三角龙',NULL),(53,'雷蛇、蠕虫蛇',NULL),(54,'环蛇、环颈蛇',NULL),(55,'希腊蛇',NULL),(56,'绿蛇、草蛇',NULL),(57,'国王蛇',NULL),(58,'袜带蛇、草蛇',NULL),(59,'水蛇',NULL),(60,'藤蛇',NULL),(61,'夜蛇',NULL),(62,'大蟒蛇',NULL),(63,'岩石蟒蛇、岩蛇、蟒蛇',NULL),(64,'印度眼镜蛇',NULL),(65,'绿曼巴',NULL),(66,'海蛇',NULL),(67,'角腹蛇',NULL),(68,'菱纹响尾蛇',NULL),(69,'角响尾蛇',NULL),(70,'三叶虫',NULL),(71,'盲蜘蛛',NULL),(72,'蝎子',NULL),(73,'黑金花园蜘蛛',NULL),(74,'谷仓蜘蛛',NULL),(75,'花园蜘蛛',NULL),(76,'黑寡妇蜘蛛',NULL),(77,'狼蛛',NULL),(78,'狼蜘蛛、狩猎蜘蛛',NULL),(79,'壁虱',NULL),(80,'蜈蚣',NULL),(81,'黑松鸡',NULL),(82,'松鸡、雷鸟',NULL),(83,'披肩鸡、披肩榛鸡',NULL),(84,'草原鸡、草原松鸡',NULL),(85,'孔雀',NULL),(86,'鹌鹑',NULL),(87,'鹧鸪',NULL),(88,'非洲灰鹦鹉',NULL),(89,'金刚鹦鹉',NULL),(90,'硫冠鹦鹉',NULL),(91,'短尾鹦鹉',NULL),(92,'褐翅鸦鹃',NULL),(93,'蜜蜂',NULL),(94,'犀鸟',NULL),(95,'蜂鸟',NULL),(96,'鹟䴕',NULL),(97,'犀鸟',NULL),(98,'野鸭',NULL),(99,'红胸秋沙鸭',NULL),(100,'鹅',NULL),(101,'黑天鹅',NULL),(102,'大象',NULL),(103,'针鼹鼠',NULL),(104,'鸭嘴兽',NULL),(105,'沙袋鼠',NULL),(106,'考拉、考拉熊',NULL),(107,'袋熊',NULL),(108,'水母',NULL),(109,'海葵',NULL),(110,'脑珊瑚',NULL),(111,'扁形虫扁虫',NULL),(112,'线虫、蛔虫',NULL),(113,'海螺',NULL),(114,'蜗牛',NULL),(115,'鼻涕虫',NULL),(116,'海参',NULL),(117,'石鳖',NULL),(118,'鹦鹉螺',NULL),(119,'珍宝蟹',NULL),(120,'石蟹',NULL),(121,'招潮蟹',NULL),(122,'帝王蟹、阿拉斯加蟹',NULL),(123,'美国龙虾、缅因州龙虾',NULL),(124,'大螯虾',NULL),(125,'小龙虾',NULL),(126,'寄居蟹',NULL),(127,'等足目动物(明虾和螃蟹近亲)',NULL),(128,'白鹳',NULL),(129,'黑鹳',NULL),(130,'鹭',NULL),(131,'火烈鸟',NULL),(132,'小蓝鹭',NULL),(133,'美国鹭、大白鹭',NULL),(134,'麻鸦',NULL),(135,'鹤',NULL),(136,'秧鹤',NULL),(137,'欧洲水鸡',NULL),(138,'沼泽泥母鸡',NULL),(139,'鸨',NULL),(140,'红翻石鹬',NULL),(141,'红背鹬',NULL),(142,'红脚鹬',NULL),(143,'半蹼鹬',NULL),(144,'蛎鹬',NULL),(145,'鹈鹕',NULL),(146,'国王企鹅',NULL),(147,'信天翁',NULL),(148,'灰鲸',NULL),(149,'杀人鲸',NULL),(150,'海牛',NULL),(151,'海狮',NULL),(152,'奇瓦瓦',NULL),(153,'日本猎犬',NULL),(154,'马尔济斯犬',NULL),(155,'狮子狗',NULL),(156,'西施犬',NULL),(157,'布莱尼姆猎犬',NULL),(158,'巴比狗',NULL),(159,'玩具犬',NULL),(160,'罗得西亚长背猎狗',NULL),(161,'阿富汗猎犬',NULL),(162,'猎犬',NULL),(163,'比格犬',NULL),(164,'侦探犬',NULL),(165,'蓝色快狗',NULL),(166,'黑褐猎浣熊犬',NULL),(167,'沃克猎犬',NULL),(168,'英国猎狐犬',NULL),(169,'美洲赤狗',NULL),(170,'俄罗斯猎狼犬',NULL),(171,'爱尔兰猎狼犬',NULL),(172,'意大利灰狗',NULL),(173,'惠比特犬',NULL),(174,'依比沙猎犬',NULL),(175,'挪威猎犬',NULL),(176,'奥达猎犬',NULL),(177,'沙克犬',NULL),(178,'苏格兰猎鹿犬',NULL),(179,'威玛猎犬',NULL),(180,'斯塔福德郡牛头梗',NULL),(181,'美国斯塔福德郡梗',NULL),(182,'贝德灵顿梗',NULL),(183,'边境梗',NULL),(184,'凯丽蓝梗',NULL),(185,'爱尔兰梗',NULL),(186,'诺福克梗',NULL),(187,'诺维奇梗',NULL),(188,'约克郡梗',NULL),(189,'刚毛猎狐梗',NULL),(190,'莱克兰梗',NULL),(191,'锡利哈姆梗',NULL),(192,'艾尔谷犬',NULL),(193,'凯恩梗',NULL),(194,'澳大利亚梗',NULL),(195,'丹迪丁蒙梗',NULL),(196,'波士顿梗',NULL),(197,'迷你雪纳瑞犬',NULL),(198,'巨型雪纳瑞犬',NULL),(199,'标准雪纳瑞犬',NULL),(200,'苏格兰梗',NULL),(201,'西藏梗',NULL),(202,'丝毛梗',NULL),(203,'软毛麦色梗',NULL),(204,'西高地白梗',NULL),(205,'拉萨阿普索犬',NULL),(206,'平毛寻回犬',NULL),(207,'卷毛寻回犬',NULL),(208,'金毛猎犬',NULL),(209,'拉布拉多猎犬',NULL),(210,'乞沙比克猎犬',NULL),(211,'德国短毛猎犬',NULL),(212,'维兹拉犬',NULL),(213,'英国谍犬',NULL),(214,'爱尔兰雪达犬',NULL),(215,'戈登雪达犬',NULL),(216,'布列塔尼犬猎犬',NULL),(217,'黄毛',NULL),(218,'英国史宾格犬',NULL),(219,'威尔士史宾格犬',NULL),(220,'可卡犬',NULL),(221,'萨塞克斯猎犬',NULL),(222,'爱尔兰水猎犬',NULL),(223,'哥威斯犬',NULL),(224,'舒柏奇犬',NULL),(225,'比利时牧羊犬',NULL),(226,'马里努阿犬',NULL),(227,'伯瑞犬',NULL),(228,'凯尔皮犬',NULL),(229,'匈牙利牧羊犬',NULL),(230,'老英国牧羊犬',NULL),(231,'喜乐蒂牧羊犬',NULL),(232,'牧羊犬',NULL),(233,'边境牧羊犬',NULL),(234,'法兰德斯牧牛狗',NULL),(235,'罗特韦尔犬',NULL),(236,'德国牧羊犬',NULL),(237,'多伯曼犬',NULL),(238,'迷你杜宾犬',NULL),(239,'大瑞士山地犬',NULL),(240,'伯恩山犬',NULL),(241,'Appenzeller狗',NULL),(242,'EntleBucher狗',NULL),(243,'拳师狗',NULL),(244,'斗牛獒',NULL),(245,'藏獒',NULL),(246,'法国斗牛犬',NULL),(247,'大丹犬',NULL),(248,'圣伯纳德狗',NULL),(249,'爱斯基摩犬',NULL),(250,'雪橇犬',NULL),(251,'哈士奇',NULL),(252,'达尔马提亚',NULL),(253,'狮毛狗',NULL),(254,'巴辛吉狗',NULL),(255,'哈巴狗',NULL),(256,'莱昂贝格狗',NULL),(257,'纽芬兰岛狗',NULL),(258,'大白熊犬',NULL),(259,'萨摩耶犬',NULL),(260,'博美犬',NULL),(261,'松狮',NULL),(262,'荷兰卷尾狮毛狗',NULL),(263,'布鲁塞尔格林芬犬',NULL),(264,'彭布洛克威尔士科基犬',NULL),(265,'威尔士柯基犬',NULL),(266,'玩具贵宾犬',NULL),(267,'迷你贵宾犬',NULL),(268,'标准贵宾犬',NULL),(269,'墨西哥无毛犬',NULL),(270,'灰狼',NULL),(271,'白狼',NULL),(272,'红太狼',NULL),(273,'狼',NULL),(274,'澳洲野狗',NULL),(275,'豺',NULL),(276,'非洲猎犬',NULL),(277,'鬣狗',NULL),(278,'红狐狸',NULL),(279,'沙狐',NULL),(280,'北极狐狸',NULL),(281,'灰狐狸',NULL),(282,'虎斑猫',NULL),(283,'山猫',NULL),(284,'波斯猫',NULL),(285,'暹罗暹罗猫',NULL),(286,'埃及猫',NULL),(287,'美洲狮',NULL),(288,'猞猁',NULL),(289,'豹子',NULL),(290,'雪豹',NULL),(291,'美洲虎',NULL),(292,'狮子',NULL),(293,'老虎',NULL),(294,'猎豹',NULL),(295,'棕熊',NULL),(296,'美洲黑熊',NULL),(297,'冰熊',NULL),(298,'懒熊',NULL),(299,'猫鼬',NULL),(300,'猫鼬',NULL),(301,'虎甲虫',NULL),(302,'瓢虫',NULL),(303,'土鳖虫',NULL),(304,'天牛',NULL),(305,'龟甲虫',NULL),(306,'粪甲虫',NULL),(307,'犀牛甲虫',NULL),(308,'象甲',NULL),(309,'苍蝇',NULL),(310,'蜜蜂',NULL),(311,'蚂蚁',NULL),(312,'蚱蜢',NULL),(313,'蟋蟀',NULL),(314,'竹节虫',NULL),(315,'蟑螂',NULL),(316,'螳螂',NULL),(317,'蝉',NULL),(318,'叶蝉',NULL),(319,'草蜻蛉',NULL),(320,'蜻蜓',NULL),(321,'豆娘',NULL),(322,'优红蛱蝶',NULL),(323,'小环蝴蝶',NULL),(324,'君主蝴蝶',NULL),(325,'菜粉蝶',NULL),(326,'白蝴蝶',NULL),(327,'灰蝶',NULL),(328,'海星',NULL),(329,'海胆',NULL),(330,'海参',NULL),(331,'野兔',NULL),(332,'兔',NULL),(333,'安哥拉兔',NULL),(334,'仓鼠',NULL),(335,'刺猬',NULL),(336,'黑松鼠',NULL),(337,'土拨鼠',NULL),(338,'海狸',NULL),(339,'豚鼠',NULL),(340,'栗色马',NULL),(341,'斑马',NULL),(342,'猪',NULL),(343,'野猪',NULL),(344,'疣猪',NULL),(345,'河马',NULL),(346,'牛',NULL),(347,'水牛',NULL),(348,'野牛',NULL),(349,'公羊',NULL),(350,'大角羊',NULL),(351,'山羊',NULL),(352,'狷羚',NULL),(353,'黑斑羚',NULL),(354,'瞪羚',NULL),(355,'阿拉伯单峰骆驼',NULL),(356,'骆驼',NULL),(357,'黄鼠狼',NULL),(358,'水貂',NULL),(359,'臭猫',NULL),(360,'黑足鼬',NULL),(361,'水獭',NULL),(362,'臭鼬',NULL),(363,'獾',NULL),(364,'犰狳',NULL),(365,'树懒',NULL),(366,'猩猩',NULL),(367,'大猩猩',NULL),(368,'黑猩猩',NULL),(369,'长臂猿',NULL),(370,'合趾猿长臂猿',NULL),(371,'长尾猴',NULL),(372,'赤猴',NULL),(373,'狒狒',NULL),(374,'恒河猴',NULL),(375,'白头叶猴',NULL),(376,'疣猴',NULL),(377,'长鼻猴',NULL),(378,'狨（美洲产小型长尾猴）',NULL),(379,'卷尾猴',NULL),(380,'吼猴',NULL),(381,'伶猴',NULL),(382,'蜘蛛猴',NULL),(383,'松鼠猴',NULL),(384,'马达加斯加环尾狐猴',NULL),(385,'大狐猴',NULL),(386,'印度大象',NULL),(387,'非洲象',NULL),(388,'小熊猫',NULL),(389,'大熊猫',NULL),(390,'杖鱼',NULL),(391,'鳗鱼',NULL),(392,'银鲑',NULL),(393,'三色刺蝶鱼',NULL),(394,'海葵鱼',NULL),(395,'鲟鱼',NULL),(396,'雀鳝',NULL),(397,'狮子鱼',NULL),(398,'河豚',NULL),(399,'算盘',NULL),(400,'长袍',NULL),(401,'学位袍',NULL),(402,'手风琴',NULL),(403,'原声吉他',NULL),(404,'航空母舰',NULL),(405,'客机',NULL),(406,'飞艇',NULL),(407,'祭坛',NULL),(408,'救护车',NULL),(409,'水陆两用车',NULL),(410,'模拟时钟',NULL),(411,'蜂房',NULL),(412,'围裙',NULL),(413,'垃圾桶',NULL),(414,'攻击步枪',NULL),(415,'背包',NULL),(416,'面包店',NULL),(417,'平衡木',NULL),(418,'热气球',NULL),(419,'圆珠笔',NULL),(420,'创可贴',NULL),(421,'班卓琴',NULL),(422,'栏杆',NULL),(423,'杠铃',NULL),(424,'理发师的椅子',NULL),(425,'理发店',NULL),(426,'牲口棚',NULL),(427,'晴雨表',NULL),(428,'圆筒',NULL),(429,'园地小车',NULL),(430,'棒球',NULL),(431,'篮球',NULL),(432,'婴儿床',NULL),(433,'巴松管',NULL),(434,'游泳帽',NULL),(435,'沐浴毛巾',NULL),(436,'浴缸',NULL),(437,'沙滩车',NULL),(438,'灯塔',NULL),(439,'高脚杯',NULL),(440,'熊皮高帽',NULL),(441,'啤酒瓶',NULL),(442,'啤酒杯',NULL),(443,'钟塔',NULL),(444,'（小儿用的）围嘴',NULL),(445,'串联自行车',NULL),(446,'比基尼',NULL),(447,'装订册',NULL),(448,'双筒望远镜',NULL),(449,'鸟舍',NULL),(450,'船库',NULL),(451,'雪橇',NULL),(452,'饰扣式领带',NULL),(453,'阔边女帽',NULL),(454,'书橱',NULL),(455,'书店',NULL),(456,'瓶盖',NULL),(457,'弓箭',NULL),(458,'蝴蝶结领结',NULL),(459,'铜制牌位',NULL),(460,'奶罩',NULL),(461,'防波堤',NULL),(462,'铠甲',NULL),(463,'扫帚',NULL),(464,'桶',NULL),(465,'扣环',NULL),(466,'防弹背心',NULL),(467,'动车',NULL),(468,'肉铺',NULL),(469,'出租车',NULL),(470,'大锅',NULL),(471,'蜡烛',NULL),(472,'大炮',NULL),(473,'独木舟',NULL),(474,'开瓶器',NULL),(475,'开衫',NULL),(476,'车镜',NULL),(477,'旋转木马',NULL),(478,'木匠的工具包',NULL),(479,'纸箱',NULL),(480,'车轮',NULL),(481,'取款机',NULL),(482,'盒式录音带',NULL),(483,'卡带播放器',NULL),(484,'城堡',NULL),(485,'双体船',NULL),(486,'CD播放器',NULL),(487,'大提琴',NULL),(488,'移动电话',NULL),(489,'铁链',NULL),(490,'围栏',NULL),(491,'链甲',NULL),(492,'电锯',NULL),(493,'箱子',NULL),(494,'衣柜',NULL),(495,'编钟',NULL),(496,'中国橱柜',NULL),(497,'圣诞袜',NULL),(498,'教堂',NULL),(499,'电影院',NULL),(500,'切肉刀',NULL),(501,'悬崖屋',NULL),(502,'斗篷',NULL),(503,'木屐',NULL),(504,'鸡尾酒调酒器',NULL),(505,'咖啡杯',NULL),(506,'咖啡壶',NULL),(507,'螺旋结构（楼梯）',NULL),(508,'组合锁',NULL),(509,'电脑键盘',NULL),(510,'糖果',NULL),(511,'集装箱船',NULL),(512,'敞篷车',NULL),(513,'开瓶器',NULL),(514,'短号',NULL),(515,'牛仔靴',NULL),(516,'牛仔帽',NULL),(517,'摇篮',NULL),(518,'起重机',NULL),(519,'头盔',NULL),(520,'板条箱',NULL),(521,'小儿床',NULL),(522,'砂锅',NULL),(523,'槌球',NULL),(524,'拐杖',NULL),(525,'胸甲',NULL),(526,'大坝',NULL),(527,'书桌',NULL),(528,'台式电脑',NULL),(529,'有线电话',NULL),(530,'尿布湿',NULL),(531,'数字时钟',NULL),(532,'数字手表',NULL),(533,'餐桌板',NULL),(534,'抹布',NULL),(535,'洗碗机',NULL),(536,'盘式制动器',NULL),(537,'码头',NULL),(538,'狗拉雪橇',NULL),(539,'圆顶',NULL),(540,'门垫',NULL),(541,'钻井平台',NULL),(542,'鼓',NULL),(543,'鼓槌',NULL),(544,'哑铃',NULL),(545,'荷兰烤箱',NULL),(546,'电风扇',NULL),(547,'电吉他',NULL),(548,'电力机车',NULL),(549,'电视',NULL),(550,'信封',NULL),(551,'浓缩咖啡机',NULL),(552,'扑面粉',NULL),(553,'女用长围巾',NULL),(554,'文件',NULL),(555,'消防船',NULL),(556,'消防车',NULL),(557,'火炉栏',NULL),(558,'旗杆',NULL),(559,'长笛',NULL),(560,'折叠椅',NULL),(561,'橄榄球头盔',NULL),(562,'叉车',NULL),(563,'喷泉',NULL),(564,'钢笔',NULL),(565,'有四根帷柱的床',NULL),(566,'运货车厢',NULL),(567,'圆号',NULL),(568,'煎锅',NULL),(569,'裘皮大衣',NULL),(570,'垃圾车',NULL),(571,'防毒面具',NULL),(572,'汽油泵',NULL),(573,'高脚杯',NULL),(574,'卡丁车',NULL),(575,'高尔夫球',NULL),(576,'高尔夫球车',NULL),(577,'狭长小船',NULL),(578,'锣',NULL),(579,'礼服',NULL),(580,'钢琴',NULL),(581,'温室',NULL),(582,'散热器格栅',NULL),(583,'杂货店',NULL),(584,'断头台',NULL),(585,'小发夹',NULL),(586,'头发喷雾',NULL),(587,'半履带装甲车',NULL),(588,'锤子',NULL),(589,'大篮子',NULL),(590,'手摇鼓风机',NULL),(591,'手提电脑',NULL),(592,'手帕',NULL),(593,'硬盘',NULL),(594,'口琴',NULL),(595,'竖琴',NULL),(596,'收割机',NULL),(597,'斧头',NULL),(598,'手枪皮套',NULL),(599,'家庭影院',NULL),(600,'蜂窝',NULL),(601,'钩爪',NULL),(602,'衬裙',NULL),(603,'单杠',NULL),(604,'马车',NULL),(605,'沙漏',NULL),(606,'iPod',NULL),(607,'熨斗',NULL),(608,'南瓜灯笼',NULL),(609,'牛仔裤',NULL),(610,'吉普车',NULL),(611,'运动衫',NULL),(612,'拼图',NULL),(613,'人力车',NULL),(614,'操纵杆',NULL),(615,'和服',NULL),(616,'护膝',NULL),(617,'蝴蝶结',NULL),(618,'大褂',NULL),(619,'长柄勺',NULL),(620,'灯罩',NULL),(621,'笔记本电脑',NULL),(622,'割草机',NULL),(623,'镜头盖',NULL),(624,'开信刀',NULL),(625,'图书馆',NULL),(626,'救生艇',NULL),(627,'点火器',NULL),(628,'豪华轿车',NULL),(629,'远洋班轮',NULL),(630,'唇膏',NULL),(631,'平底便鞋',NULL),(632,'洗剂',NULL),(633,'扬声器',NULL),(634,'放大镜',NULL),(635,'锯木厂',NULL),(636,'磁罗盘',NULL),(637,'邮袋',NULL),(638,'信箱',NULL),(639,'女游泳衣',NULL),(640,'有肩带浴衣',NULL),(641,'窨井盖',NULL),(642,'沙球（一种打击乐器）',NULL),(643,'马林巴木琴',NULL),(644,'面膜',NULL),(645,'火柴',NULL),(646,'花柱',NULL),(647,'迷宫',NULL),(648,'量杯',NULL),(649,'药箱',NULL),(650,'巨石',NULL),(651,'麦克风',NULL),(652,'微波炉',NULL),(653,'军装',NULL),(654,'奶桶',NULL),(655,'迷你巴士',NULL),(656,'迷你裙',NULL),(657,'面包车',NULL),(658,'导弹',NULL),(659,'连指手套',NULL),(660,'搅拌钵',NULL),(661,'活动房屋（由汽车拖拉的）',NULL),(662,'T型发动机小汽车',NULL),(663,'调制解调器',NULL),(664,'修道院',NULL),(665,'显示器',NULL),(666,'电瓶车',NULL),(667,'砂浆',NULL),(668,'学士',NULL),(669,'清真寺',NULL),(670,'蚊帐',NULL),(671,'摩托车',NULL),(672,'山地自行车',NULL),(673,'登山帐',NULL),(674,'鼠标',NULL),(675,'捕鼠器',NULL),(676,'搬家车',NULL),(677,'口套',NULL),(678,'钉子',NULL),(679,'颈托',NULL),(680,'项链',NULL),(681,'乳头（瓶）',NULL),(682,'笔记本',NULL),(683,'方尖碑',NULL),(684,'双簧管',NULL),(685,'陶笛',NULL),(686,'里程表',NULL),(687,'滤油器',NULL),(688,'风琴',NULL),(689,'示波器',NULL),(690,'罩裙',NULL),(691,'牛车',NULL),(692,'氧气面罩',NULL),(693,'包装',NULL),(694,'船桨',NULL),(695,'明轮',NULL),(696,'挂锁',NULL),(697,'画笔',NULL),(698,'睡衣',NULL),(699,'宫殿',NULL),(700,'排箫',NULL),(701,'纸巾',NULL),(702,'降落伞',NULL),(703,'双杠',NULL),(704,'公园长椅',NULL),(705,'停车收费表',NULL),(706,'客车',NULL),(707,'露台',NULL),(708,'付费电话',NULL),(709,'基座',NULL),(710,'铅笔盒',NULL),(711,'卷笔刀',NULL),(712,'香水（瓶）',NULL),(713,'培养皿',NULL),(714,'复印机',NULL),(715,'拨弦片',NULL),(716,'尖顶头盔',NULL),(717,'栅栏',NULL),(718,'皮卡',NULL),(719,'桥墩',NULL),(720,'存钱罐',NULL),(721,'药瓶',NULL),(722,'枕头',NULL),(723,'乒乓球',NULL),(724,'风车',NULL),(725,'海盗船',NULL),(726,'水罐',NULL),(727,'木工刨',NULL),(728,'天文馆',NULL),(729,'塑料袋',NULL),(730,'板架',NULL),(731,'犁型铲雪机',NULL),(732,'手压皮碗泵',NULL),(733,'宝丽来相机',NULL),(734,'电线杆',NULL),(735,'警车',NULL),(736,'雨披',NULL),(737,'台球桌',NULL),(738,'充气饮料瓶',NULL),(739,'花盆',NULL),(740,'陶工旋盘',NULL),(741,'电钻',NULL),(742,'祈祷垫',NULL),(743,'打印机',NULL),(744,'监狱',NULL),(745,'炮弹',NULL),(746,'投影仪',NULL),(747,'冰球',NULL),(748,'沙包',NULL),(749,'钱包',NULL),(750,'羽管笔',NULL),(751,'被子',NULL),(752,'赛车',NULL),(753,'球拍',NULL),(754,'散热器',NULL),(755,'收音机',NULL),(756,'射电望远镜',NULL),(757,'雨桶',NULL),(758,'休闲车',NULL),(759,'卷轴',NULL),(760,'反射式照相机',NULL),(761,'冰箱',NULL),(762,'遥控器',NULL),(763,'餐厅',NULL),(764,'左轮手枪',NULL),(765,'步枪',NULL),(766,'摇椅',NULL),(767,'电转烤肉架',NULL),(768,'橡皮',NULL),(769,'橄榄球',NULL),(770,'直尺',NULL),(771,'跑步鞋',NULL),(772,'保险柜',NULL),(773,'安全别针',NULL),(774,'盐瓶（调味用）',NULL),(775,'凉鞋',NULL),(776,'纱笼',NULL),(777,'萨克斯管',NULL),(778,'剑鞘',NULL),(779,'秤',NULL),(780,'校车',NULL),(781,'帆船',NULL),(782,'记分牌',NULL),(783,'屏幕',NULL),(784,'螺丝',NULL),(785,'螺丝刀',NULL),(786,'安全带',NULL),(787,'缝纫机',NULL),(788,'盾牌',NULL),(789,'皮鞋店',NULL),(790,'障子',NULL),(791,'购物篮',NULL),(792,'购物车',NULL),(793,'铁锹',NULL),(794,'浴帽',NULL),(795,'浴帘',NULL),(796,'滑雪板',NULL),(797,'滑雪面罩',NULL),(798,'睡袋',NULL),(799,'滑尺',NULL),(800,'滑动门',NULL),(801,'角子老虎机',NULL),(802,'潜水通气管',NULL),(803,'雪橇',NULL),(804,'扫雪机',NULL),(805,'皂液器',NULL),(806,'足球',NULL),(807,'袜子',NULL),(808,'碟式太阳能',NULL),(809,'宽边帽',NULL),(810,'汤碗',NULL),(811,'空格键',NULL),(812,'空间加热器',NULL),(813,'航天飞机',NULL),(814,'铲（搅拌或涂敷用的）',NULL),(815,'快艇',NULL),(816,'蜘蛛网',NULL),(817,'纺锤',NULL),(818,'跑车',NULL),(819,'聚光灯',NULL),(820,'舞台',NULL),(821,'蒸汽机车',NULL),(822,'钢拱桥',NULL),(823,'钢滚筒',NULL),(824,'听诊器',NULL),(825,'女用披肩',NULL),(826,'石头墙',NULL),(827,'秒表',NULL),(828,'火炉',NULL),(829,'过滤器',NULL),(830,'有轨电车',NULL),(831,'担架',NULL),(832,'沙发床',NULL),(833,'佛塔',NULL),(834,'潜艇',NULL),(835,'套装',NULL),(836,'日晷',NULL),(837,'太阳镜',NULL),(838,'太阳镜',NULL),(839,'防晒霜',NULL),(840,'悬索桥',NULL),(841,'拖把',NULL),(842,'运动衫',NULL),(843,'游泳裤',NULL),(844,'秋千',NULL),(845,'开关',NULL),(846,'注射器',NULL),(847,'台灯',NULL),(848,'坦克',NULL),(849,'磁带播放器',NULL),(850,'茶壶',NULL),(851,'泰迪',NULL),(852,'电视',NULL),(853,'网球',NULL),(854,'茅草',NULL),(855,'幕布',NULL),(856,'顶针',NULL),(857,'脱粒机',NULL),(858,'宝座',NULL),(859,'瓦屋顶',NULL),(860,'烤面包机',NULL),(861,'烟草店',NULL),(862,'马桶',NULL),(863,'火炬',NULL),(864,'图腾柱',NULL),(865,'拖车',NULL),(866,'玩具店',NULL),(867,'拖拉机',NULL),(868,'拖车',NULL),(869,'托盘',NULL),(870,'风衣',NULL),(871,'三轮车',NULL),(872,'三体船',NULL),(873,'三脚架',NULL),(874,'凯旋门',NULL),(875,'无轨电车',NULL),(876,'长号',NULL),(877,'浴盆',NULL),(878,'旋转式栅门',NULL),(879,'打字机键盘',NULL),(880,'伞',NULL),(881,'独轮车',NULL),(882,'直立式钢琴',NULL),(883,'真空吸尘器',NULL),(884,'花瓶',NULL),(885,'拱顶',NULL),(886,'天鹅绒',NULL),(887,'自动售货机',NULL),(888,'祭服',NULL),(889,'高架桥',NULL),(890,'小提琴',NULL),(891,'排球',NULL),(892,'松饼机',NULL),(893,'挂钟',NULL),(894,'钱包',NULL),(895,'衣柜',NULL),(896,'军用飞机',NULL),(897,'洗脸盆',NULL),(898,'洗衣机',NULL),(899,'水瓶',NULL),(900,'水壶',NULL),(901,'水塔',NULL),(902,'威士忌壶',NULL),(903,'哨子',NULL),(904,'假发',NULL),(905,'纱窗',NULL),(906,'百叶窗',NULL),(907,'温莎领带',NULL),(908,'葡萄酒瓶',NULL),(909,'飞机翅膀',NULL),(910,'炒菜锅',NULL),(911,'木制的勺子',NULL),(912,'毛织品',NULL),(913,'栅栏',NULL),(914,'沉船',NULL),(915,'双桅船',NULL),(916,'蒙古包',NULL),(917,'网站',NULL),(918,'漫画',NULL),(919,'纵横字谜',NULL),(920,'路标',NULL),(921,'交通信号灯',NULL),(922,'防尘罩',NULL),(923,'菜单',NULL),(924,'盘子',NULL),(925,'鳄梨酱',NULL),(926,'清汤',NULL),(927,'罐焖土豆烧肉',NULL),(928,'蛋糕',NULL),(929,'冰淇淋',NULL),(930,'雪糕',NULL),(931,'法式面包',NULL),(932,'百吉饼',NULL),(933,'椒盐脆饼',NULL),(934,'芝士汉堡',NULL),(935,'热狗',NULL),(936,'土豆泥',NULL),(937,'结球甘蓝',NULL),(938,'西兰花',NULL),(939,'菜花',NULL),(940,'绿皮密生西葫芦',NULL),(941,'西葫芦',NULL),(942,'小青南瓜',NULL),(943,'南瓜',NULL),(944,'黄瓜',NULL),(945,'朝鲜蓟',NULL),(946,'甜椒',NULL),(947,'刺棘蓟',NULL),(948,'蘑菇',NULL),(949,'绿苹果',NULL),(950,'草莓',NULL),(951,'橘子',NULL),(952,'柠檬',NULL),(953,'无花果',NULL),(954,'菠萝',NULL),(955,'香蕉',NULL),(956,'菠萝蜜',NULL),(957,'蛋奶冻苹果',NULL),(958,'石榴',NULL),(959,'干草',NULL),(960,'烤面条加干酪沙司',NULL),(961,'巧克力酱',NULL),(962,'面团',NULL),(963,'瑞士肉包',NULL),(964,'披萨',NULL),(965,'馅饼',NULL),(966,'卷饼',NULL),(967,'红葡萄酒',NULL),(968,'意大利浓咖啡',NULL),(969,'杯子',NULL),(970,'蛋酒',NULL),(971,'高山',NULL),(972,'泡泡',NULL),(973,'悬崖',NULL),(974,'珊瑚礁',NULL),(975,'间歇泉',NULL),(976,'湖边',NULL),(977,'海角',NULL),(978,'沙洲',NULL),(979,'海滨',NULL),(980,'峡谷',NULL),(981,'火山',NULL),(982,'棒球',NULL),(983,'新郎',NULL),(984,'潜水员',NULL),(985,'油菜',NULL),(986,'雏菊',NULL),(987,'杓兰',NULL),(988,'玉米',NULL),(989,'橡子',NULL),(990,'玫瑰果',NULL),(991,'七叶树果实',NULL),(992,'珊瑚菌',NULL),(993,'木耳',NULL),(994,'鹿花菌',NULL),(995,'鬼笔菌',NULL),(996,'地星',NULL),(997,'多叶奇果菌',NULL),(998,'牛肝菌',NULL),(999,'玉米穗',NULL),(1000,'卫生纸',NULL);
/*!40000 ALTER TABLE `itemsort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `account` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES ('root','asdfghjkl;\'');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `buyerAccount` varchar(50) NOT NULL,
  `sellerAccount` varchar(50) NOT NULL,
  `date` datetime NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `buyCount` int DEFAULT NULL,
  UNIQUE KEY `orders_pk` (`price`,`buyerAccount`,`sellerAccount`,`name`,`date`),
  KEY `orders_shopping_cart_buyerAccount_sellerAccount_name_price_fk` (`buyerAccount`,`sellerAccount`,`name`,`price`),
  CONSTRAINT `orders_shopping_cart_buyerAccount_sellerAccount_name_price_fk` FOREIGN KEY (`buyerAccount`, `sellerAccount`, `name`, `price`) REFERENCES `shopping_cart` (`buyerAccount`, `sellerAccount`, `name`, `price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('13843869423','root','2021-07-05 14:27:19','化妆镜',10,1),('13843869423','root','2021-07-04 14:33:30','火锅底料',30,2),('13843869423','root','2021-07-05 14:34:51','火锅底料',30,1),('13843869423','root','2021-07-04 14:33:30','自行车',1000,1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `buyerAccount` varchar(50) NOT NULL,
  `sellerAccount` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `buyCount` int DEFAULT NULL,
  `price` double NOT NULL,
  PRIMARY KEY (`buyerAccount`,`sellerAccount`,`name`,`price`),
  KEY `Shopping_Cart_items_account_name_fk` (`sellerAccount`,`name`,`price`),
  CONSTRAINT `Shopping_Cart_items_account_name_fk` FOREIGN KEY (`sellerAccount`, `name`, `price`) REFERENCES `items` (`account`, `name`, `price`),
  CONSTRAINT `Shopping_Cart_user_account_fk` FOREIGN KEY (`buyerAccount`) REFERENCES `user` (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopping_cart`
--

LOCK TABLES `shopping_cart` WRITE;
/*!40000 ALTER TABLE `shopping_cart` DISABLE KEYS */;
INSERT INTO `shopping_cart` VALUES ('13843869423','root','自行车',1,1000);
/*!40000 ALTER TABLE `shopping_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `account` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('13843869423','111','1187291748@qq.com','13843869423','男'),('a11035','1','123456@qq.com','16872','女'),('a11124','106914','123456@qq.com','11295','男'),('a11300','121377','123456@qq.com','11495','男'),('a11458','194890','123456@qq.com','19213','女'),('a11539','165382','123456@qq.com','18041','女'),('a11691','108787','123456@qq.com','17242','男'),('a11863','101510','123456@qq.com','11151','女'),('a11955','180404','123456@qq.com','16021','男'),('a12038','153992','123456@qq.com','14545','男'),('a12532','135063','123456@qq.com','13556','女'),('a12561','157115','123456@qq.com','15984','女'),('a12581','181332','123456@qq.com','19803','女'),('a12729','197076','123456@qq.com','12519','女'),('a12887','141937','123456@qq.com','14343','男'),('a12934','110515','123456@qq.com','19597','女'),('a12952','147622','123456@qq.com','16056','男'),('a12984','170986','123456@qq.com','17940','女'),('a13095','147689','123456@qq.com','18043','男'),('a13174','168942','123456@qq.com','17808','女'),('a13226','163083','123456@qq.com','13933','女'),('a13412','104597','123456@qq.com','15633','女'),('a13433','198029','123456@qq.com','12266','女'),('a13561','163177','123456@qq.com','12649','女'),('a13686','189574','123456@qq.com','10521','女'),('a13793','129663','123456@qq.com','19821','男'),('a13820','153452','123456@qq.com','16241','男'),('a13962','196944','123456@qq.com','12891','男'),('a14097','153067','123456@qq.com','19438','女'),('a14284','144103','123456@qq.com','18647','男'),('a14506','188514','123456@qq.com','19978','男'),('a14533','126610','123456@qq.com','19363','男'),('a14549','171664','123456@qq.com','14580','女'),('a14603','160596','123456@qq.com','14845','女'),('a14638','136890','123456@qq.com','15304','男'),('a14686','158605','123456@qq.com','16608','女'),('a14691','165573','123456@qq.com','11151','女'),('a14739','127486','123456@qq.com','13946','女'),('a14740','130998','123456@qq.com','18329','男'),('a14770','142117','123456@qq.com','12265','女'),('a14840','172775','123456@qq.com','15874','女'),('a14856','116459','123456@qq.com','10674','女'),('a15044','157880','123456@qq.com','17457','男'),('a15048','158064','123456@qq.com','19980','男'),('a15092','126757','123456@qq.com','12148','女'),('a15175','145620','123456@qq.com','17569','女'),('a15253','198189','123456@qq.com','17584','女'),('a15259','196221','123456@qq.com','11630','女'),('a15290','137536','123456@qq.com','12803','男'),('a15320','158498','123456@qq.com','16520','男'),('a15514','157177','123456@qq.com','10265','男'),('a15597','112168','123456@qq.com','13804','男'),('a15608','143297','123456@qq.com','14861','男'),('a15707','194363','123456@qq.com','13989','男'),('a15913','141666','123456@qq.com','19349','女'),('a15918','138183','123456@qq.com','14558','女'),('a16008','176648','123456@qq.com','15955','女'),('a16192','162240','123456@qq.com','10473','男'),('a16247','141546','123456@qq.com','18908','女'),('a16290','151856','123456@qq.com','10380','男'),('a16336','166931','123456@qq.com','11245','女'),('a16372','144380','123456@qq.com','16960','男'),('a16517','124945','123456@qq.com','13096','女'),('a16700','154012','123456@qq.com','17138','男'),('a17104','181708','123456@qq.com','19697','男'),('a17159','188278','123456@qq.com','14842','男'),('a17358','181814','123456@qq.com','15291','女'),('a17413','175118','123456@qq.com','19697','男'),('a17562','147297','123456@qq.com','13160','女'),('a17582','119681','123456@qq.com','11151','男'),('a17589','172660','123456@qq.com','12044','男'),('a17714','135669','123456@qq.com','14900','女'),('a17797','130705','123456@qq.com','14062','女'),('a17904','136618','123456@qq.com','19282','女'),('a18049','151053','123456@qq.com','15168','男'),('a18173','118723','123456@qq.com','123456','男'),('a18245','132684','123456@qq.com','15411','女'),('a18324','192632','123456@qq.com','16619','女'),('a18326','114374','123456@qq.com','10029','女'),('a18457','159025','123456@qq.com','12988','女'),('a18580','122242','123456@qq.com','16983','男'),('a18780','166490','123456@qq.com','12542','男'),('a18823','140318','123456@qq.com','13808','男'),('a18886','185942','123456@qq.com','16252','女'),('a18939','134258','123456@qq.com','13010','女'),('a19023','156182','123456@qq.com','15849','女'),('a19033','159975','123456@qq.com','11546','女'),('a19058','139947','123456@qq.com','11503','女'),('a19161','187125','123456@qq.com','16971','男'),('a19196','177041','123456@qq.com','13034','男'),('a19270','167505','123456@qq.com','10141','男'),('a19558','177865','123456@qq.com','11243','男'),('a19595','123591','123456@qq.com','13112','男'),('a19663','102375','123456@qq.com','18346','男');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-07 15:04:27
