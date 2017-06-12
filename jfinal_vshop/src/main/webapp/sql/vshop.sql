/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : vshop

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2016-06-12 23:15:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_menu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `MENU_ID` varchar(36) NOT NULL,
  `MENU_NAME` varchar(20) DEFAULT NULL,
  `MENU_URL` varchar(100) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `menu_icon` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`MENU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('0527b9c4-332f-4f88-bb62-20e32801f0a8', '子账号管理', 'user/employe.html', 'ada4f7b2-44b7-4767-b670-14470985bf65', null);
INSERT INTO `sys_menu` VALUES ('083086f0-633c-4422-a655-6cb7361ae3a0', '文章管理', '', '', 'icon-youtube-sign');
INSERT INTO `sys_menu` VALUES ('092a4c8f-86ad-4507-b358-5fb71ada873a', '退货管理', 'tuihuo.html', '3532b823-4102-495b-a348-471c6ce15bb8', null);
INSERT INTO `sys_menu` VALUES ('3222ce4b-b197-48c4-aa01-bd01ed2cab0d', '系统参数', 'sysparameter.html', 'edd1024d-eecc-4e8e-b807-dddf94faf527', null);
INSERT INTO `sys_menu` VALUES ('3532b823-4102-495b-a348-471c6ce15bb8', '我的工作', '', '', 'icon-user');
INSERT INTO `sys_menu` VALUES ('3ae913c5-03d4-470e-be94-e75afe8a3b22', '账号管理', '', '', 'icon-cog');
INSERT INTO `sys_menu` VALUES ('4258bffb-230e-4c21-b9e9-0f277120a565', '账号管理', 'user.html', '3ae913c5-03d4-470e-be94-e75afe8a3b22', null);
INSERT INTO `sys_menu` VALUES ('45c70a0e-c1fe-43d0-8348-a5428db0f718', '菜单管理', 'menu.html', 'edd1024d-eecc-4e8e-b807-dddf94faf527', null);
INSERT INTO `sys_menu` VALUES ('53cc1438-08e8-48b9-8984-db8e415445d3', '会员管理', 'client.html', '3ae913c5-03d4-470e-be94-e75afe8a3b22', null);
INSERT INTO `sys_menu` VALUES ('56e81783-dbf9-4fe4-8735-1ee9af30b041', '商品类别', 'goodstype.html', '3532b823-4102-495b-a348-471c6ce15bb8', null);
INSERT INTO `sys_menu` VALUES ('5794b1f9-7284-49d8-9026-1591b59dd434', '销售情况', 'sales.html', 'fe8a50c7-1d9f-4433-ab53-1db908cf6d83', null);
INSERT INTO `sys_menu` VALUES ('5bef39cf-f361-4f7e-9963-73119833fb6c', '广告视频', 'client/movie.html', '3532b823-4102-495b-a348-471c6ce15bb8', null);
INSERT INTO `sys_menu` VALUES ('6421d84b-07fa-4abf-9aa6-8c62578afbfe', '任务管理', 'jobtask.html', 'edd1024d-eecc-4e8e-b807-dddf94faf527', null);
INSERT INTO `sys_menu` VALUES ('6861d160-62a7-4bc4-8443-d4e6e5237490', '提现管理', 'withdraw.html', '3532b823-4102-495b-a348-471c6ce15bb8', null);
INSERT INTO `sys_menu` VALUES ('6a46d367-88aa-4507-ad16-555f515bd88d', '分销简介', 'article/edit.html?code=2', '083086f0-633c-4422-a655-6cb7361ae3a0', null);
INSERT INTO `sys_menu` VALUES ('7b3fa4d8-379c-4430-8893-51e12fae1d8a', '发群消息', '', '3532b823-4102-495b-a348-471c6ce15bb8', 'icon-bolt');
INSERT INTO `sys_menu` VALUES ('89eb0594-e13c-4d55-9364-7f6484547da1', '审核商户', 'shenhe.html', '3532b823-4102-495b-a348-471c6ce15bb8', null);
INSERT INTO `sys_menu` VALUES ('8f7945d3-33c4-4b46-a813-ad2b724f0db4', '订单管理', 'allorder.html', '3532b823-4102-495b-a348-471c6ce15bb8', '');
INSERT INTO `sys_menu` VALUES ('a0107715-d459-4ee5-8d81-394d80177546', '系统帮助', 'hywy.html', 'ada4f7b2-44b7-4767-b670-14470985bf65', null);
INSERT INTO `sys_menu` VALUES ('ada4f7b2-44b7-4767-b670-14470985bf65', '个人设置', '', '', 'icon-bolt');
INSERT INTO `sys_menu` VALUES ('afd153c8-ce7a-4012-b9bc-b086c2466446', '快递分配', 'kuaidifp.html', '3ae913c5-03d4-470e-be94-e75afe8a3b22', null);
INSERT INTO `sys_menu` VALUES ('b37982ca-8969-4414-8840-cac3516ca8bd', '角色管理', 'role.html', 'edd1024d-eecc-4e8e-b807-dddf94faf527', null);
INSERT INTO `sys_menu` VALUES ('d19414f1-db05-4325-bec7-c502990e2835', '营业执照', 'hywy/yyzhizhao.html', 'ada4f7b2-44b7-4767-b670-14470985bf65', null);
INSERT INTO `sys_menu` VALUES ('dd33ab9e-3bf6-434d-8e57-90b1227359e1', '商品管理', 'goods.html', '3532b823-4102-495b-a348-471c6ce15bb8', null);
INSERT INTO `sys_menu` VALUES ('e5804ba8-c7bb-4927-91f1-619489285596', '发货管理', 'order.html', '3532b823-4102-495b-a348-471c6ce15bb8', null);
INSERT INTO `sys_menu` VALUES ('e9e7b261-32f8-4e6e-a2ad-b7191b272f90', '查询订单', 'seachordder.html', '3532b823-4102-495b-a348-471c6ce15bb8', null);
INSERT INTO `sys_menu` VALUES ('ec26f12d-267b-4953-bd07-795bedb881cd', '个人资料', 'hywy/owndata.html', 'ada4f7b2-44b7-4767-b670-14470985bf65', null);
INSERT INTO `sys_menu` VALUES ('edd1024d-eecc-4e8e-b807-dddf94faf527', '系统配置', null, null, 'icon-table');
INSERT INTO `sys_menu` VALUES ('f5d9cdfd-c015-4409-ba0e-0073c861f709', '营收情况', 'revenue.html', 'fe8a50c7-1d9f-4433-ab53-1db908cf6d83', null);
INSERT INTO `sys_menu` VALUES ('fc35f222-497d-4206-b5b2-d73e20e10438', '新手必读', 'article/edit.html?code=1', '083086f0-633c-4422-a655-6cb7361ae3a0', null);
INSERT INTO `sys_menu` VALUES ('fe8a50c7-1d9f-4433-ab53-1db908cf6d83', '财务管理', '', '', 'icon-jpy');
INSERT INTO `sys_menu` VALUES ('ffebd12b-8dc7-4db7-84cd-06e206d12fec', '修改密码', 'user/viewmodfypw.html', 'ada4f7b2-44b7-4767-b670-14470985bf65', null);

-- ----------------------------
-- Table structure for `sys_role`
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `ROLE_ID` varchar(36) NOT NULL,
  `ROLE_NAME` varchar(20) DEFAULT NULL,
  `RIGHTS` varchar(1024) DEFAULT NULL,
  `DEFAULT_PAGE` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '系统管理员', '3532b823-4102-495b-a348-471c6ce15bb8,092a4c8f-86ad-4507-b358-5fb71ada873a,56e81783-dbf9-4fe4-8735-1ee9af30b041,5bef39cf-f361-4f7e-9963-73119833fb6c,6861d160-62a7-4bc4-8443-d4e6e5237490,89eb0594-e13c-4d55-9364-7f6484547da1,8f7945d3-33c4-4b46-a813-ad2b724f0db4,dd33ab9e-3bf6-434d-8e57-90b1227359e1,e5804ba8-c7bb-4927-91f1-619489285596,e9e7b261-32f8-4e6e-a2ad-b7191b272f90,ada4f7b2-44b7-4767-b670-14470985bf65,0527b9c4-332f-4f88-bb62-20e32801f0a8,a0107715-d459-4ee5-8d81-394d80177546,d19414f1-db05-4325-bec7-c502990e2835,ec26f12d-267b-4953-bd07-795bedb881cd,ffebd12b-8dc7-4db7-84cd-06e206d12fec,fe8a50c7-1d9f-4433-ab53-1db908cf6d83,5794b1f9-7284-49d8-9026-1591b59dd434,f5d9cdfd-c015-4409-ba0e-0073c861f709', 'allorder.html');
INSERT INTO `sys_role` VALUES ('3581131a-3fdc-4401-a905-28d4f055f4df', '发货角色', '3532b823-4102-495b-a348-471c6ce15bb8,e5804ba8-c7bb-4927-91f1-619489285596,ada4f7b2-44b7-4767-b670-14470985bf65,a0107715-d459-4ee5-8d81-394d80177546', null);
INSERT INTO `sys_role` VALUES ('37e774d9-8ed2-4ab3-ae49-2b2e7f56f7dc', '超级系统管理员', '3532b823-4102-495b-a348-471c6ce15bb8,092a4c8f-86ad-4507-b358-5fb71ada873a,56e81783-dbf9-4fe4-8735-1ee9af30b041,5bef39cf-f361-4f7e-9963-73119833fb6c,6861d160-62a7-4bc4-8443-d4e6e5237490,89eb0594-e13c-4d55-9364-7f6484547da1,8f7945d3-33c4-4b46-a813-ad2b724f0db4,dd33ab9e-3bf6-434d-8e57-90b1227359e1,e5804ba8-c7bb-4927-91f1-619489285596,e9e7b261-32f8-4e6e-a2ad-b7191b272f90,3ae913c5-03d4-470e-be94-e75afe8a3b22,4258bffb-230e-4c21-b9e9-0f277120a565,53cc1438-08e8-48b9-8984-db8e415445d3,ada4f7b2-44b7-4767-b670-14470985bf65,0527b9c4-332f-4f88-bb62-20e32801f0a8,a0107715-d459-4ee5-8d81-394d80177546,d19414f1-db05-4325-bec7-c502990e2835,ec26f12d-267b-4953-bd07-795bedb881cd,ffebd12b-8dc7-4db7-84cd-06e206d12fec,edd1024d-eecc-4e8e-b807-dddf94faf527,3222ce4b-b197-48c4-aa01-bd01ed2cab0d,45c70a0e-c1fe-43d0-8348-a5428db0f718,b37982ca-8969-4414-8840-cac3516ca8bd,fe8a50c7-1d9f-4433-ab53-1db908cf6d83,5794b1f9-7284-49d8-9026-1591b59dd434,f5d9cdfd-c015-4409-ba0e-0073c861f709', 'user.html');
INSERT INTO `sys_role` VALUES ('484d52a8-c579-4c53-8844-c369ec38dd06', '审核角色', '3532b823-4102-495b-a348-471c6ce15bb8,8f7945d3-33c4-4b46-a813-ad2b724f0db4,dd33ab9e-3bf6-434d-8e57-90b1227359e1,e5804ba8-c7bb-4927-91f1-619489285596,ada4f7b2-44b7-4767-b670-14470985bf65,0527b9c4-332f-4f88-bb62-20e32801f0a8,a0107715-d459-4ee5-8d81-394d80177546,d19414f1-db05-4325-bec7-c502990e2835,ec26f12d-267b-4953-bd07-795bedb881cd,ffebd12b-8dc7-4db7-84cd-06e206d12fec', null);
INSERT INTO `sys_role` VALUES ('4b446792-70c0-40b5-b193-2d4c56777ffe', '注册角色', 'ada4f7b2-44b7-4767-b670-14470985bf65,a0107715-d459-4ee5-8d81-394d80177546,d19414f1-db05-4325-bec7-c502990e2835,ec26f12d-267b-4953-bd07-795bedb881cd,ffebd12b-8dc7-4db7-84cd-06e206d12fec', null);
INSERT INTO `sys_role` VALUES ('951bd24d-6e65-4fb6-8bf1-0133f61ad161', '商品管理角色', '3532b823-4102-495b-a348-471c6ce15bb8,dd33ab9e-3bf6-434d-8e57-90b1227359e1,ada4f7b2-44b7-4767-b670-14470985bf65,a0107715-d459-4ee5-8d81-394d80177546', null);

-- ----------------------------
-- Table structure for `sys_sequence`
-- ----------------------------
DROP TABLE IF EXISTS `sys_sequence`;
CREATE TABLE `sys_sequence` (
  `NAME` varchar(50) NOT NULL,
  `CURRENT_VALUE` int(11) NOT NULL DEFAULT '0',
  `INCREMENT` int(11) NOT NULL DEFAULT '1',
  `CURRDATE` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_sequence
-- ----------------------------
INSERT INTO `sys_sequence` VALUES ('TBL_FS', '4', '1', '06-03-2016');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `USER_ID` varchar(36) NOT NULL,
  `LOGINNAME` varchar(36) DEFAULT NULL,
  `PASSWORD` varchar(32) DEFAULT NULL,
  `USERNAME` varchar(20) DEFAULT NULL,
  `RIGHTS` varchar(1024) DEFAULT NULL,
  `STATUS` varchar(1) DEFAULT NULL,
  `ROLE_ID` varchar(36) DEFAULT NULL,
  `LAST_LOGIN` varchar(19) DEFAULT NULL,
  `activeStatus` varchar(1) DEFAULT NULL,
  `pariend_id` varchar(36) DEFAULT NULL,
  `auditStatus` varchar(1) DEFAULT '1' COMMENT '0-审核，1-未审核',
  `goodstypeid` varchar(1024) DEFAULT NULL,
  `checkcode` varchar(4) DEFAULT NULL,
  `uploadflg` varchar(1) DEFAULT NULL COMMENT '0-上传商品数量不受限制',
  `uploadcount` int(11) DEFAULT '10' COMMENT '可以上传商品的数量',
  `shoptel` varchar(16) DEFAULT NULL COMMENT '商家电话',
  `shopaddr` varchar(64) DEFAULT NULL COMMENT '商家地址',
  `yyphoto` varchar(128) DEFAULT NULL COMMENT '商家营业执照',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'c4ca4238a0b923820dcc509a6f75849b', '超级管理员', null, '0', '37e774d9-8ed2-4ab3-ae49-2b2e7f56f7dc', '2016-05-28 21:09:11', '0', null, '0', 'd93240c5-9902-4c5b-ba7d-188f2d70169f,8a748533-0615-4751-8a82-3991e287d4b1,a721395e-75c9-4298-a343-44629c1933be,', null, null, '10', '13794498220', '广东深圳1', '/URLResource/yyzhizhao/yyzz_1.jpg');
INSERT INTO `sys_user` VALUES ('100fec27-801c-402d-ace2-62f8c6412065', '449182096@qq.com', 'c81e728d9d4c2f636f067f89cc14862c', '心情飞扬', '', '0', '484d52a8-c579-4c53-8844-c369ec38dd06', '2016-05-22 16:06:46', '0', null, '0', '56e75237-2f06-4912-9f4a-e8185671e830,ce11fbd0-59cd-410f-9136-492ddc349044,9470c584-ec26-45b4-88cb-90a877ea0651,', null, null, '10', null, null, '');
INSERT INTO `sys_user` VALUES ('29592a90-48fd-4482-b0f8-272b33fec6e2', 'fhgl', 'c4ca4238a0b923820dcc509a6f75849b', '商品管理', '', '0', '3581131a-3fdc-4401-a905-28d4f055f4df', '2016-05-22 15:59:16', '0', '100fec27-801c-402d-ace2-62f8c6412065', '0', null, null, null, '10', null, null, null);
INSERT INTO `sys_user` VALUES ('411696f6-5325-424c-af07-159a0aab910d', 'huayiweiye163@163.com', '91e36aa9cf0499332212192b917c0248', '华艺伟业', '', '0', '1', '2016-05-24 22:39:35', '0', '', '0', 'd93240c5-9902-4c5b-ba7d-188f2d70169f,8a748533-0615-4751-8a82-3991e287d4b1,56e75237-2f06-4912-9f4a-e8185671e830,ce11fbd0-59cd-410f-9136-492ddc349044,9470c584-ec26-45b4-88cb-90a877ea0651,87184f64-20cf-4435-97ca-6f10009d6506,ff12c554-bc3b-44d6-a6d1-638eb9abdf2e,', null, null, '10', null, null, null);
INSERT INTO `sys_user` VALUES ('6eb4fc2c-f7ab-47b4-a32f-09b78b352a6f', 'hylg056@163.com', '3c39d309638b50361a7af7e4dcde5905', '彭帮琼', '', '0', '484d52a8-c579-4c53-8844-c369ec38dd06', '2016-05-23 22:15:47', '0', '', '0', 'ff12c554-bc3b-44d6-a6d1-638eb9abdf2e,', null, null, '10', null, null, null);
INSERT INTO `sys_user` VALUES ('70027e19-7a0d-468b-ab5e-ee15652a3e3c', 'bb', 'c4ca4238a0b923820dcc509a6f75849b', '商品管理', '', '0', '3581131a-3fdc-4401-a905-28d4f055f4df', '2016-05-24 22:45:06', '0', 'ad2a3d2d-c7ce-4cf1-987f-7de9cd6d840f', '0', null, null, null, '10', null, null, null);
INSERT INTO `sys_user` VALUES ('8c7d7aa4-f5ce-4dc7-8f80-231236868f4d', 'spgl', 'c4ca4238a0b923820dcc509a6f75849b', '商品管理', '', '0', '951bd24d-6e65-4fb6-8bf1-0133f61ad161', '2016-05-22 15:55:33', '0', '100fec27-801c-402d-ace2-62f8c6412065', '0', null, null, null, '10', null, null, null);
INSERT INTO `sys_user` VALUES ('ad2a3d2d-c7ce-4cf1-987f-7de9cd6d840f', '1577633138@qq.com', 'cfcd208495d565ef66e7dff9f98764da', '糖糖', '', '0', '484d52a8-c579-4c53-8844-c369ec38dd06', '2016-05-24 22:43:00', '0', null, '0', '56e75237-2f06-4912-9f4a-e8185671e830,ce11fbd0-59cd-410f-9136-492ddc349044,9470c584-ec26-45b4-88cb-90a877ea0651,', null, null, '10', '3423432', '465s深圳', '/URLResource/yyzhizhao/yyzz_ad2a3d2d-c7ce-4cf1-987f-7de9cd6d840f.jpg');
INSERT INTO `sys_user` VALUES ('c9862ee7-c475-460f-8472-2af99295dc94', 'aa', 'c4ca4238a0b923820dcc509a6f75849b', '商品管理', '', '0', '951bd24d-6e65-4fb6-8bf1-0133f61ad161', '2016-05-24 22:44:47', '0', 'ad2a3d2d-c7ce-4cf1-987f-7de9cd6d840f', '0', null, null, null, '10', null, null, null);
INSERT INTO `sys_user` VALUES ('e0d00ce9-0c16-49b4-b150-49d77479a3df', 'tian5168@126.com', '1738a5016be79b72430c8c2efba20ae8', 'hui', '', '0', '484d52a8-c579-4c53-8844-c369ec38dd06', '2016-05-01 22:05:13', '0', '', '0', 'd93240c5-9902-4c5b-ba7d-188f2d70169f,8a748533-0615-4751-8a82-3991e287d4b1,56e75237-2f06-4912-9f4a-e8185671e830,ce11fbd0-59cd-410f-9136-492ddc349044,9470c584-ec26-45b4-88cb-90a877ea0651,87184f64-20cf-4435-97ca-6f10009d6506,ff12c554-bc3b-44d6-a6d1-638eb9abdf2e,', null, null, '10', null, null, null);

-- ----------------------------
-- Table structure for `tb_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `goodscode` varchar(36) NOT NULL DEFAULT '' COMMENT '商品编码',
  `goodsname` varchar(64) DEFAULT NULL COMMENT '商品名称',
  `goodsprice` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `goodstextinfo` longblob COMMENT '商品描述',
  `goodsimageinfo` longblob COMMENT '商品详细描述页面',
  `goodsdownpricebefore` decimal(10,2) DEFAULT NULL COMMENT '改价钱价格',
  `goodsstate` int(11) DEFAULT '1' COMMENT '商品状态，0已发布，1未发布',
  `goodsheadimage` varchar(128) DEFAULT NULL COMMENT '商品头像图片',
  `creator` varchar(36) DEFAULT NULL COMMENT '商品创建人',
  `createtime` varchar(20) DEFAULT NULL COMMENT '商品创建时间',
  `updatetime` varchar(20) DEFAULT NULL COMMENT '商品更新时间',
  `updator` varchar(36) DEFAULT NULL COMMENT '商品更新人',
  `goodstypecode` varchar(36) DEFAULT NULL COMMENT '商品类别',
  `buyable` int(11) DEFAULT '0' COMMENT '0-可买 1-非卖品',
  `goodsindexcode` int(11) DEFAULT NULL COMMENT '商品序号',
  `goodssort` int(11) DEFAULT '100' COMMENT '商品在list页面的排序',
  PRIMARY KEY (`goodscode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------
INSERT INTO `tb_goods` VALUES ('05c04e00-eae8-442b-93f2-48a5ff834dd7', '龙井茶', '36666.00', null, null, '124.00', '0', 'http://img13.360buyimg.com/n7/jfs/t2443/125/2712874936/197337/81fcc854/5715dba5N15258b2b.jpg', null, null, null, null, '001', '0', '1', '100');
INSERT INTO `tb_goods` VALUES ('0d95ae0a-6408-4c71-9d64-c57750f6fee7', '名贵手表', '178.23', null, null, '100.36', '0', 'http://img11.360buyimg.com/n1/jfs/t916/134/1013003656/84865/6126dfd1/55643863N466e4037.jpg', null, null, null, null, '002', '0', '2', '100');
INSERT INTO `tb_goods` VALUES ('111', '上好蜂蜜', '69.99', null, null, '50.12', '0', 'http://img11.360buyimg.com/n7/jfs/t412/299/63138571/103972/35acaf9/540815eeN618b8375.jpg', null, null, null, null, '001', '0', '3', '100');
INSERT INTO `tb_goods` VALUES ('2222', '燕窝', '18888.00', null, null, '111111.00', '0', 'http://img13.360buyimg.com/n7/jfs/t2401/133/258850759/184205/450af7b3/55fbe44cN860fefca.jpg', null, null, null, null, '001', '0', '5', '1');
INSERT INTO `tb_goods` VALUES ('333', '苹果', '33333.00', null, null, '333.00', '0', 'http://img13.360buyimg.com/n7/jfs/t2461/281/145335373/97081/8af73dbf/55f0e80aN532efcae.jpg', null, null, null, null, '002', '0', '4', '100');

-- ----------------------------
-- Table structure for `tb_goodstype`
-- ----------------------------
DROP TABLE IF EXISTS `tb_goodstype`;
CREATE TABLE `tb_goodstype` (
  `goodstypecode` varchar(36) NOT NULL DEFAULT '' COMMENT '类型编码',
  `goodstypename` varchar(32) NOT NULL DEFAULT '' COMMENT '类型名称-唯一',
  `usestate` int(11) DEFAULT '1' COMMENT '使用状态0-开启，1-关闭',
  `indexnumber` int(11) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`goodstypecode`),
  UNIQUE KEY `code` (`goodstypecode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goodstype
-- ----------------------------
INSERT INTO `tb_goodstype` VALUES ('001', '养生保健', '0', '1');
INSERT INTO `tb_goodstype` VALUES ('002', '消费电子', '0', '2');

-- ----------------------------
-- Function structure for `currval`
-- ----------------------------
DROP FUNCTION IF EXISTS `currval`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `currval`(seq_name VARCHAR(50)) RETURNS int(11)
BEGIN
DECLARE VALUE INTEGER;
SET VALUE=0;
SELECT current_value INTO VALUE
FROM sys_sequence 
WHERE NAME=seq_name;
RETURN VALUE;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `nextval`
-- ----------------------------
DROP FUNCTION IF EXISTS `nextval`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` FUNCTION `nextval`(seq_name varchar(50)) RETURNS int(11)
begin
declare currdate1 varchar(10);
declare currdate2 varchar(10);
set currdate1=date_format(now(),'%m-%d-%Y');
select currdate into currdate2 from sys_sequence  where name=seq_name;
if currdate2 <> currdate1 then
update sys_sequence set currdate = currdate1 where  name=seq_name;
update sys_sequence set current_value = 0 where name=seq_name;
else
set currdate2 = currdate2;
end if;
update sys_sequence set current_value = current_value + increment where name=seq_name;
return currval(seq_name);
end
;;
DELIMITER ;
