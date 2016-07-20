/*
Navicat MySQL Data Transfer

Source Server         : User
Source Server Version : 50015
Source Host           : localhost:3306
Source Database       : teacher

Target Server Type    : MYSQL
Target Server Version : 50015
File Encoding         : 65001

Date: 2016-05-24 11:41:38
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `cid` int(11) NOT NULL auto_increment,
  `c_name` varchar(50) default NULL,
  `u_id` int(11) default NULL,
  `schoolyear` int(11) default NULL,
  PRIMARY KEY  (`cid`),
  KEY `f_key` (`u_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO course VALUES ('1', 'java', '1', '4');
INSERT INTO course VALUES ('2', 'c++', '1', '4');

-- ----------------------------
-- Table structure for `eduplan`
-- ----------------------------
DROP TABLE IF EXISTS `eduplan`;
CREATE TABLE `eduplan` (
  `m_id` bigint(20) NOT NULL auto_increment,
  `m_course` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_class` varchar(255) NOT NULL,
  `m_date` date NOT NULL,
  `m_statu` varchar(255) NOT NULL,
  `m_describ` longtext NOT NULL,
  `m_remark` varchar(255) NOT NULL,
  `cid` int(11) default NULL,
  PRIMARY KEY  (`m_id`),
  KEY `f_key` (`cid`),
  CONSTRAINT `eduplan_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eduplan
-- ----------------------------
INSERT INTO eduplan VALUES ('18', 'java', 'java文件流实验', '公开', '2016-05-16', '是', 'java文件操作', '学习并进行文件流实践', '1');
INSERT INTO eduplan VALUES ('21', 'c++', 'c++文件实验', '公开', '2016-05-16', '是', 'c++文件操作', '文件操作练习', '2');
INSERT INTO eduplan VALUES ('22', 'java', 'java swing编程', '公开', '2016-05-16', '是', 'swing编程实现简单界面', '熟悉java swing编程', '1');

-- ----------------------------
-- Table structure for `grade`
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `g_id` bigint(20) NOT NULL auto_increment,
  `g_name` varchar(255) NOT NULL,
  PRIMARY KEY  (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO grade VALUES ('1', '软件工程1201');
INSERT INTO grade VALUES ('2', '软件工程1202');
INSERT INTO grade VALUES ('3', '软件工程1203');

-- ----------------------------
-- Table structure for `groups`
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `g_id` int(11) NOT NULL auto_increment,
  `g_name` varchar(255) NOT NULL,
  `g_pname` varchar(255) NOT NULL,
  `g_score` varchar(255) NOT NULL,
  `g_statu1` varchar(255) NOT NULL,
  `g_describ` longtext NOT NULL,
  `g_head` bigint(20) NOT NULL,
  `g_headdo` longtext NOT NULL,
  `g_member1` bigint(20) NOT NULL,
  `g_member1do` longtext NOT NULL,
  `g_member2` bigint(20) NOT NULL,
  `g_member2do` longtext NOT NULL,
  `g_member3` bigint(20) NOT NULL,
  `g_member3do` longtext NOT NULL,
  `g_member4` bigint(20) NOT NULL,
  `g_member4do` longtext NOT NULL,
  `g_statu2` varchar(255) NOT NULL,
  `g_headname` varchar(255) NOT NULL,
  `g_disagree` varchar(45) NOT NULL,
  PRIMARY KEY  (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO groups VALUES ('2', 'java五人开发小组', '简单java开发', '88', '录入', 'java文件流练习', '1', '模块1', '2', '模块2', '3', '模块3', '4', '模块4', '5', '模块5', '通过', '张三', '');

-- ----------------------------
-- Table structure for `model`
-- ----------------------------
DROP TABLE IF EXISTS `model`;
CREATE TABLE `model` (
  `m_id` bigint(20) NOT NULL auto_increment,
  `m_course` varchar(255) NOT NULL,
  `m_name` varchar(255) NOT NULL,
  `m_class` varchar(255) NOT NULL,
  `m_date` date NOT NULL,
  `m_statu` varchar(255) NOT NULL,
  `m_describ` longtext NOT NULL,
  `m_remark` varchar(255) NOT NULL,
  `cid` int(11) default NULL,
  PRIMARY KEY  (`m_id`),
  KEY `f_key` (`cid`),
  CONSTRAINT `model_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `course` (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of model
-- ----------------------------
INSERT INTO model VALUES ('6', 'java', 'java文件流实验', '公开', '2016-05-16', '是', 'java文件操作', '学习并进行文件流实践', '1');
INSERT INTO model VALUES ('8', 'c++', 'c++文件实验', '公开', '2016-05-16', '是', 'c++文件操作', '文件操作练习', '2');
INSERT INTO model VALUES ('9', 'java', 'java swing编程', '公开', '2016-05-16', '是', 'swing编程实现简单界面', '熟悉java swing编程', '1');

-- ----------------------------
-- Table structure for `question`
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question` (
  `id` bigint(20) NOT NULL auto_increment,
  `types` varchar(20) NOT NULL,
  `txt` longtext NOT NULL,
  `idx_1` varchar(255) default NULL,
  `idx_2` varchar(255) default NULL,
  `idx_3` varchar(255) default NULL,
  `idx_4` varchar(255) default NULL,
  `idx_5` varchar(255) default NULL,
  `idx_6` varchar(255) default NULL,
  `answer` longtext,
  `course` varchar(255) NOT NULL,
  `sno` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO question VALUES ('1', '1', 'test quesiton ', '1', '2', '3', '4', null, null, '1', '软件工程', '111');
INSERT INTO question VALUES ('4', '1', '下列关于网络编程错误的是______。', 'UDP 是不可靠服务', '主动关闭的一端会出现 TIME_WAIT 状态', '服务端编程会调用 listen(),客户端也可以调用 bind()', 'TCP 建立和关闭连接都只需要三次握手', null, null, '服务端编程会调用 listen(),客户端也可以调用 bind()', '软件工程', '111');
INSERT INTO question VALUES ('5', '1', '以下四种介质中，带宽最大的是________。', '同轴电缆(coaxial)', '双绞线(twisted pair)', '光纤(twisted pair)', '同步线(synchronous)', null, null, '光纤(twisted pair)', '软件工程', '111');
INSERT INTO question VALUES ('6', '1', 'Linux下的进程有哪三种状态？（）', '精确态，模糊态和随机态', '运行态，就绪态和等待态', '准备态，执行态和退出态', '准备态，执行态和退出态', null, null, '运行态，就绪态和等待态', '软件工程', '111');
INSERT INTO question VALUES ('7', '1', 'linux修改路由的命令是？', 'route', 'tracert', 'ping', 'netstat', null, null, 'route', '软件工程', '111');
INSERT INTO question VALUES ('8', '1', '在Shell环境中的预定义变量中，以下（   ）用于表示执行上一条命令后的返回状态。', '$!', '$?', '$$', '$0', null, null, '$?', '软件工程', '111');
INSERT INTO question VALUES ('9', '1', '下面的函数哪个是系统调用而不是库函数()？', 'printf', 'scanf', 'fgetc', 'read', null, null, 'read', '软件工程', '111');
INSERT INTO question VALUES ('10', '1', '下面选项中，_______是一个典型TCP客户端（主动建立连接，主动断开连接）会经历的状态序列。', 'SYNC_SENT->ESTABLISHED->FIN_WAIT_1->FIN_WAIT_2->TIME_WAIT', 'SYNC_SENT->ESTABLISHED->FIN_WAIT_1->FIN_WAIT_2->CLOSE_WAIT', 'SYNC_SENT->SYNC_RCVD->ESTABLISHED->FIN_WAIT_1->FIN_WAIT_2', 'SYNC_RCVD->ESTABLISHED->CLOSE_WAIT->TIME_WAIT->LAST_ACK', null, null, 'SYNC_SENT->ESTABLISHED->FIN_WAIT_1->FIN_WAIT_2->TIME_WAIT', '软件工程', '111');
INSERT INTO question VALUES ('11', '1', '下列关于网络编程错误的是______。', 'UDP 是不可靠服务', '主动关闭的一端会出现 TIME_WAIT 状态', '服务端编程会调用 listen(),客户端也可以调用 bind()', 'TCP 建立和关闭连接都只需要三次握手', null, null, '服务端编程会调用 listen(),客户端也可以调用 bind()', '软件工程', '111');
INSERT INTO question VALUES ('12', '1', '以下四种介质中，带宽最大的是________。', '同轴电缆(coaxial)', '双绞线(twisted pair)', '光纤(twisted pair)', '同步线(synchronous)', null, null, '光纤(twisted pair)', '软件工程', '111');
INSERT INTO question VALUES ('13', '1', 'Linux下的进程有哪三种状态？（）', '精确态，模糊态和随机态', '运行态，就绪态和等待态', '准备态，执行态和退出态', '准备态，执行态和退出态', null, null, '运行态，就绪态和等待态', '软件工程', '111');
INSERT INTO question VALUES ('14', '1', 'linux修改路由的命令是？', 'route', 'tracert', 'ping', 'netstat', null, null, 'route', '软件工程', '111');
INSERT INTO question VALUES ('15', '1', '在Shell环境中的预定义变量中，以下（   ）用于表示执行上一条命令后的返回状态。', '$!', '$?', '$$', '$0', null, null, '$?', '软件工程', '111');
INSERT INTO question VALUES ('16', '1', '以下哪些命令可以打印文件（demo.log）中包含ERP的行到标准输出（）', 'sed \"/ERR/a\" demo.log', 'sed \"/ERP/p\" demo.log', 'sed \"/ERP/d\" demo.log', 'sed -n \"/ERP/p\" demo.log', null, null, 'sed -n \"/ERP/p\" demo.log', '软件工程', '111');
INSERT INTO question VALUES ('17', '1', '下面有关linux查看系统负载的命令，说法错误的是？', 'uptime命令主要用于获取主机运行时间和查询linux系统负载等信息', 'vmstat命令可以查看查看cpu负载', 'sar命令可以查看网络接口信息', 'free命令可以查看磁盘负载情况', null, null, 'free命令可以查看磁盘负载情况', '软件工程', '111');
INSERT INTO question VALUES ('18', '1', 'sar命令可以查看网络接口信息', '-pthread', '-fthis-is-varialble', 'fcond-mismatch', '-MMD', null, null, '-pthread', '软件工程', '111');
INSERT INTO question VALUES ('19', '2', '假设淘宝网上某商品A在任一时刻t内若有人浏览，则该商品在下一时刻t+1内无人浏览的概率为0.35（即下一时刻的浏览情况仅与当前时段相关），定义此条件概率为 P(O_{t+1}=0|O_t=1)=0.35(即用“1”代表有人浏览的事件，用“0”代表无人浏览的事件），类似得定义P(O_{t+1}=1|O_t=1)=0.65，P(O_{t+1}=0|O_t=0)=0.4，P(O_{t+1}=1|O_t=0)=0.6。若此商品A在t=0时有人浏览，它在t=100000时有人浏览的概率是____。', '0.5371', '0.4582', '0.6316', '0.1435', '0.6516', '0.1435', '0.6316', '软件工程', '111');
INSERT INTO question VALUES ('20', '2', '猜数字游戏的过程是你输入一个4位数（数字选取0~9，不会重复），电脑会告诉你两个信息：A个数字和位置均正确，B个数字正确但位置错误。例如正确答案是7890你输入0789，电脑会告诉你0A4B，表示有0个数字和位置完全正确，但有4个数字正确但位置错误。现在牛妹猜了三次的结果分别是：1234=>0A4B，2341=>1A3B，3412=>2A2B，那么牛妹最少还要猜____次才能保证一定得到4A0B的结果。', '0', '1', '2', '3', '4', '5', '3', '软件工程', '111');
INSERT INTO question VALUES ('21', '2', '对一棵二叉树进行后续遍历，其输出结果为A，B，C，这样的二叉树有____棵。', '6', '1', '2', '3', '4', '5', '5', '软件工程', '111');
INSERT INTO question VALUES ('22', '2', '下面数据结构能够支持随机的插入和删除操作、并具有较好的性能的是____。', '数组和链表', '链表和哈希表', '哈希表和队列', '队列和堆栈\r\n', '堆栈和双向队列', '双向队列和数组', '链表和哈希表', '软件工程', '111');
INSERT INTO question VALUES ('23', '2', '以下函数中，和其他函数不属于一类的是____。', 'fwrite', 'putc', 'pwrite', 'putchar', 'putchar', 'scanf', 'pwrite', '软件工程', '111');
INSERT INTO question VALUES ('25', '2', '从1,2,3,......,49,50里选择一个集合S，使得若x属于S，则2x不属于S，则S最多能有____个元素。', '25', '27', '18', '28', '33', '29', '33', '软件工程', '111');
INSERT INTO question VALUES ('26', '2', '有1,2,3,......无穷个格子，你从1号格子出发，每次1/2概率向前跳一格，1/2概率向前跳两格，走到格子编号为4的倍数时结束，结束时期望走的步数为____。', '2', '12/5', '14/5', '16/5', '3', '18/5', '18/5', '软件工程', '111');
INSERT INTO question VALUES ('27', '2', '现有1G数据需要排序，计算资源只有1G内存可用，下列排序方法中最可能出现性能问题的是____。', '堆排序', '插入排序', '归并排序', '快速排序', '选择排序', '冒泡排序', '归并排序', '软件工程', '111');
INSERT INTO question VALUES ('28', '2', '凯撒（Caesar)密码是一种基于字符替换的对称式加密方法，它是通过对26个英文字母循环移位和替换来进行编码的。设待加密的消息为\"Alibaba Group\"，加密后的密文是\"RCzsrsr XIFLG\"，则采用的密匙k是____。', '11', '12', '17', '14', '15', '16', '17', '软件工程', '111');
INSERT INTO question VALUES ('29', '3', 'test1111 quesiton ', '22', null, null, null, null, null, '1', '软件工程', '111');
INSERT INTO question VALUES ('30', '3', '简答题 ', '22', null, null, null, null, null, '1', '软件工程', '111');
INSERT INTO question VALUES ('31', '3', '使用for循环冒泡 ', '222', null, null, null, null, null, '1', '软件工程', '111');
INSERT INTO question VALUES ('32', '3', '写一个选择排序 ', '222', null, null, null, null, null, '1', '软件工程', '111');
INSERT INTO question VALUES ('62', '4', '使用文件流进行文件复制', '', null, null, null, null, null, null, '软件工程', '111');
INSERT INTO question VALUES ('63', '4', '实现linux下ls命令和ls -l', null, null, null, null, null, null, null, '软件工程', '111');

-- ----------------------------
-- Table structure for `score`
-- ----------------------------
DROP TABLE IF EXISTS `score`;
CREATE TABLE `score` (
  `s_id` int(11) NOT NULL auto_increment,
  `t_id` int(11) default NULL,
  `g_id` int(11) default NULL,
  `s_score` varchar(50) default NULL,
  PRIMARY KEY  (`s_id`),
  KEY `f_key` (`t_id`),
  KEY `f_key1` (`g_id`),
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `tasktoplan` (`t_id`),
  CONSTRAINT `score_ibfk_2` FOREIGN KEY (`g_id`) REFERENCES `groups` (`g_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score
-- ----------------------------
INSERT INTO score VALUES ('1', '28', '2', '77');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` bigint(20) NOT NULL auto_increment,
  `s_name` varchar(255) NOT NULL,
  `s_no` varchar(255) NOT NULL,
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO student VALUES ('1', '张三', '123');
INSERT INTO student VALUES ('2', '李四', '124');
INSERT INTO student VALUES ('3', '王五', '125');
INSERT INTO student VALUES ('4', '琳琳', '126');
INSERT INTO student VALUES ('5', '小贝', '127');
INSERT INTO student VALUES ('6', '欧文', '128');
INSERT INTO student VALUES ('7', '库里', '129');
INSERT INTO student VALUES ('8', '史蒂芬库里', '130');
INSERT INTO student VALUES ('9', '勒布朗詹姆斯', '131');
INSERT INTO student VALUES ('10', '克莱汤普森', '132');
INSERT INTO student VALUES ('11', '伊戈达拉', '133');
INSERT INTO student VALUES ('12', '格林', '134');
INSERT INTO student VALUES ('13', '克里斯保罗', '135');

-- ----------------------------
-- Table structure for `studenttocourse`
-- ----------------------------
DROP TABLE IF EXISTS `studenttocourse`;
CREATE TABLE `studenttocourse` (
  `id` bigint(20) NOT NULL auto_increment,
  `s_id` bigint(20) NOT NULL,
  `c_id` bigint(20) NOT NULL,
  `c_score` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of studenttocourse
-- ----------------------------
INSERT INTO studenttocourse VALUES ('1', '1', '1', '0');
INSERT INTO studenttocourse VALUES ('2', '2', '1', '0');
INSERT INTO studenttocourse VALUES ('3', '3', '1', '0');
INSERT INTO studenttocourse VALUES ('4', '4', '1', '0');

-- ----------------------------
-- Table structure for `stutograde`
-- ----------------------------
DROP TABLE IF EXISTS `stutograde`;
CREATE TABLE `stutograde` (
  `id` bigint(20) NOT NULL auto_increment,
  `g_id` bigint(20) NOT NULL,
  `s_id` bigint(20) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stutograde
-- ----------------------------
INSERT INTO stutograde VALUES ('1', '1', '1');
INSERT INTO stutograde VALUES ('2', '1', '2');
INSERT INTO stutograde VALUES ('3', '2', '3');
INSERT INTO stutograde VALUES ('4', '2', '4');

-- ----------------------------
-- Table structure for `tasktomodel`
-- ----------------------------
DROP TABLE IF EXISTS `tasktomodel`;
CREATE TABLE `tasktomodel` (
  `t_id` bigint(20) NOT NULL auto_increment,
  `m_id` bigint(20) NOT NULL,
  `t_detail` longtext NOT NULL,
  `t_name` varchar(50) NOT NULL,
  `t_order` varchar(50) NOT NULL,
  PRIMARY KEY  (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasktomodel
-- ----------------------------
INSERT INTO tasktomodel VALUES ('21', '6', '1', '实现java文件复制', '1');
INSERT INTO tasktomodel VALUES ('22', '6', '2', '练习字节流，字符流', '2');
INSERT INTO tasktomodel VALUES ('23', '6', '3', '练习java对象流', '3');
INSERT INTO tasktomodel VALUES ('24', '6', '4', '文件流加Socket编程', '4');

-- ----------------------------
-- Table structure for `tasktoplan`
-- ----------------------------
DROP TABLE IF EXISTS `tasktoplan`;
CREATE TABLE `tasktoplan` (
  `t_id` int(11) NOT NULL auto_increment,
  `m_id` bigint(20) NOT NULL,
  `t_detail` longtext NOT NULL,
  `t_name` varchar(255) NOT NULL,
  `t_order` varchar(255) NOT NULL,
  PRIMARY KEY  (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasktoplan
-- ----------------------------
INSERT INTO tasktoplan VALUES ('28', '18', '1', '实现java文件复制', '1');
INSERT INTO tasktoplan VALUES ('29', '18', '2', '练习字节流，字符流', '2');
INSERT INTO tasktoplan VALUES ('30', '18', '3', '练习java对象流', '3');
INSERT INTO tasktoplan VALUES ('31', '18', '4', '文件流加Socket编程', '4');

-- ----------------------------
-- Table structure for `test`
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(255) NOT NULL auto_increment,
  `ids` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sno` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO test VALUES ('14', '7,8', 'testpaper1', '111');
INSERT INTO test VALUES ('15', '16,17,21,31', 'testpaper2', '111');
INSERT INTO test VALUES ('16', '11,12,26,27,32', 'testpaper3', '111');

-- ----------------------------
-- Table structure for `title`
-- ----------------------------
DROP TABLE IF EXISTS `title`;
CREATE TABLE `title` (
  `tit_id` int(11) NOT NULL auto_increment,
  `tit_name` varchar(50) default NULL,
  `tit_content` varchar(50) default NULL,
  `t_id` int(11) NOT NULL,
  PRIMARY KEY  (`tit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of title
-- ----------------------------

-- ----------------------------
-- Table structure for `titleedu`
-- ----------------------------
DROP TABLE IF EXISTS `titleedu`;
CREATE TABLE `titleedu` (
  `tit_id` int(11) NOT NULL auto_increment,
  `tit_name` varchar(45) NOT NULL,
  `tit_content` varchar(45) NOT NULL,
  `t_id` int(11) NOT NULL,
  PRIMARY KEY  (`tit_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of titleedu
-- ----------------------------
INSERT INTO titleedu VALUES ('3', 'java file stream', 'inputstream/outputstream', '28');
INSERT INTO titleedu VALUES ('4', 'java file', 'file copy', '28');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `sno` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `passwd` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('1', '111', '张三', '111');
INSERT INTO user VALUES ('2', '112', '李四', '112');
