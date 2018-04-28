/*
Navicat MySQL Data Transfer

Source Server         : 192.168.6.222
Source Server Version : 50552
Source Host           : 192.168.6.222:3306
Source Database       : XMind

Target Server Type    : MYSQL
Target Server Version : 50552
File Encoding         : 65001

Date: 2018-04-28 15:47:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_menu`
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu` (
  `menu_id` varchar(50) NOT NULL COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parentid` varchar(50) NOT NULL DEFAULT '0' COMMENT '父级id',
  `m` varchar(30) DEFAULT NULL COMMENT '模块',
  `c` varchar(30) DEFAULT NULL COMMENT '控制器',
  `a` varchar(30) DEFAULT NULL COMMENT '方法',
  `color` varchar(20) DEFAULT NULL COMMENT '二级菜单背景色',
  `img` varchar(100) DEFAULT NULL COMMENT '图标',
  `data` varchar(100) DEFAULT NULL COMMENT '附加参数',
  `listorder` int(11) DEFAULT '0' COMMENT '排序',
  `display` tinyint(1) DEFAULT NULL COMMENT '是否显示1显示0隐藏',
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM AUTO_INCREMENT=287 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES ('1', '系统设置', '0', 'admin', 'aaa', 'aaa', '', '/statics/image/icon/xtsz.png', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('2', '用户管理', '1', 'admin', 'user_role', 'init', '#FF812B', '/statics/image/icon/account.png', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('3', '角色管理', '1', 'admin', 'user_role', 'role_list', '#998181', 'http://ch.local.com/statics/image/icon/all.png', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('4', '菜单管理', '1', 'admin', 'menu', 'init', '#33FFAC', 'http://ch.local.com/statics/image/icon/set.png', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('5', '应急管理', '0', 'bb', 'bb', 'bb', '', '/statics/image/icon/hzbj.png', '', '3', '1');
INSERT INTO `admin_menu` VALUES ('6', '应急机构', '5', 'admin', 'emergecy_esu', 'index', '#CC8100', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('7', '应急预案', '5', 'admin', 'emergency', 'plan', '#CCAC2B', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('8', '应急值班', '5', 'admin', 'emergency', 'duty', '#CC2BFF', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('10', '应急专家', '5', 'admin', 'emergecy_person', 'index', '#33AC2B', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('11', '信息接报', '5', 'admin', 'emergency', 'received', '#FF812B', '/statics/image/icon/account.png', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('20', '信息发布', '0', 'admin', 'release', 'flora', '#CCAC2B', '/statics/image/icon/xxfb2.png', '', '2', '1');
INSERT INTO `admin_menu` VALUES ('13', '应急事件', '5', 'admin', 'emergency', 'event', '#0081FF', '/statics/image/icon/daoh.png', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('14', '应急仓库', '5', 'admin', 'emergency_material_storehouse', 'index', '#00ACFF', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('15', '应急物资', '5', 'admin', 'emergency_material', 'index', '#FF002B', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('16', '医疗卫生站', '5', 'admin', 'emergency_heal', 'index', '#FFACFF', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('17', '应急装备', '5', 'admin', 'emergency_rescue', 'index', '#99ACFF', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('18', '应急保障计划', '5', 'admin', 'emergency_safeguard', 'index', '#99FF56', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('21', '动植物资源', '20', 'admin', 'release', 'floralist', '#FFAC81', '/statics/image/icon/natural.png', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('22', '动植物分类', '20', 'admin', 'release', 'floratype', '#338181', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('23', '景区管理', '0', 'admin', 'jq', 'jq', '#33AC2B', '/statics/image/icon/natural.png', '', '4', '1');
INSERT INTO `admin_menu` VALUES ('24', '景点管理', '23', 'admin', 'spot_management', 'index', '#00AC2B', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('25', '滚动字幕', '20', 'admin', 'release', 'scroll', '#33ACAC', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('26', '景区路线', '23', 'admin', 'spot_line', 'index', '#0081FF', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('30', '特色旅游点', '23', 'admin', 'spot_feature', 'index', '#99FFFF', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('28', '漫游路线', '23', 'admin', 'spot_guide', 'index', '#CCACFF', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('29', '内容发布', '20', 'admin', 'release', 'maneger', '#CCAC56', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('36', '日志管理', '1', 'admin', 'logs', 'index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('31', 'POI信息', '23', 'admin', 'spot_interest', 'interest', '#FF8156', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('32', 'POI类型管理', '23', 'admin', 'spot_interest', 'stype_index', '#FF81FF', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('33', '视频管理', '20', 'admin', 'release', 'videolist', '#99AC56', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('34', '图片管理', '20', 'admin', 'release', 'imglist', '#FFAC56', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('154', '票务管理', '0', 'admin', 'ticket', 'init', '', '/statics/image/icon/xxfb.png', '', '1', '1');
INSERT INTO `admin_menu` VALUES ('35', '应急路线', '5', 'admin', 'emergency', 'emergency_route', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('37', '添加用户', '2', 'admin', 'user_role', 'add_admin', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('38', '修改用户', '2', 'admin', 'user_role', 'edit_admin', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('39', '修改用户状态', '2', 'admin', 'user_role', 'edit_status', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('40', '删除用户', '2', 'admin', 'user_role', 'del_admin', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('41', '添加角色', '3', 'admin', 'user_role', 'add_role', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('42', '修改角色', '3', 'admin', 'user_role', 'edit_role', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('43', '删除角色', '3', 'admin', 'user_role', 'role_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('44', '角色权限管理', '3', 'admin', 'user_role', 'role_priv', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('45', '角色排序', '3', 'admin', 'user_role', 'listorder', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('46', '修改角色状态', '3', 'admin', 'user_role', 'change_status', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('47', '添加动植物信息', '21', 'admin', 'release', 'add_flora', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('48', '修改动植物信息', '21', 'admin', 'release', 'edit_flora', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('49', '查看动植物信息', '21', 'admin', 'release', 'view_flora', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('50', '删除动植物信息', '21', 'admin', 'release', 'del_flora', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('51', '添加动植物分类', '22', 'admin', 'release', 'add_floratype', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('52', '修改动植物分类', '22', 'admin', 'release', 'edit_floratype', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('53', '删除动植物分类', '22', 'admin', 'release', 'del_floratype', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('54', '添加滚动字幕', '25', 'admin', 'release', 'add_scroll', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('55', '修改滚动字幕', '25', 'admin', 'release', 'edit_scroll', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('56', '删除滚动字幕', '25', 'admin', 'release', 'del_scroll', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('57', '滚动字幕发布', '25', 'admin', 'release', 'view_scroll', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('58', '添加图片', '34', 'admin', 'release', 'add_img', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('59', '修改图片', '34', 'admin', 'release', 'edit_img', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('60', '删除图片', '34', 'admin', 'release', 'del_img', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('61', '修改图片状态', '34', 'admin', 'release', 'img_enabled', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('62', '添加视频', '33', 'admin', 'release', 'add_video', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('63', '修改视频', '33', 'admin', 'release', 'edit_video', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('64', '删除视频', '33', 'admin', 'release', 'del_video', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('65', '修改视频状态', '33', 'admin', 'release', 'video_enabled', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('66', '添加信息发布', '29', 'admin', 'release', 'add_maneger', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('67', '修改信息发布', '29', 'admin', 'release', 'edit_maneger', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('68', '查看信息发布', '29', 'admin', 'release', 'view_maneger', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('69', '删除信息发布', '29', 'admin', 'release', 'del_maneger', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('70', '信息发布时间轴列表', '29', 'admin', 'release', 'maneger_time', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('71', '信息发布选择视频列表', '29', 'admin', 'release', 'maneger_video', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('72', '信息发布选择视频', '29', 'admin', 'release', 'add_maneger_video', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('73', '信息发布选择图片列表', '29', 'admin', 'release', 'maneger_img', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('74', '信息发布选择图片', '29', 'admin', 'release', 'add_maneger_img', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('75', '信息发布选择动植物列表', '29', 'admin', 'release', 'maneger_flora', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('76', '信息发布选择动植物', '29', 'admin', 'release', 'add_maneger_flora', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('77', '信息发布时间轴排序', '29', 'admin', 'release', 'maneger_order', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('78', '信息发布时间轴删除', '29', 'admin', 'release', 'del_maneger_time', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('79', '添加景点', '24', 'admin', 'spot_management', 'add_spot', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('80', '修改景点', '24', 'admin', 'spot_management', 'update_spot', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('81', '查看景点', '24', 'admin', 'spot_management', 'look_spot', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('82', '修改景点状态', '24', 'admin', 'spot_management', 'spot_status_update', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('83', '添加路线', '26', 'admin', 'spot_line', 'add_spot_line', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('84', '修改路线', '26', 'admin', 'spot_line', 'update_spot_line', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('85', '修改路线状态', '26', 'admin', 'spot_line', 'spot_line_status_update', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('87', '添加漫游路线', '28', 'admin', 'spot_guide', 'add_spot_guide', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('88', '修改漫游路线', '28', 'admin', 'spot_guide', 'update_spot_guide', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('90', '添加特色旅游点', '30', 'admin', 'spot_feature', 'add_spot_feature', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('91', '修改特色旅游点', '30', 'admin', 'spot_feature', 'update_spot_feature', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('92', '查看特色旅游点', '30', 'admin', 'spot_feature', 'look_spot_feature', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('93', '添加POI', '31', 'admin', 'spot_interest', 'interest_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('94', '修改POI', '31', 'admin', 'spot_interest', 'interest_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('95', '应急机构状态修改', '6', 'admin', 'emergecy_esu', 'esu_status_update', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('97', '删除POI', '31', 'admin', 'spot_interest', 'interest_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('98', '添加POI类型', '32', 'admin', 'spot_interest', 'stype_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('99', '修改POI类型', '32', 'admin', 'spot_interest', 'stype_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('100', '删除POI类型', '32', 'admin', 'spot_interest', 'stype_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('101', '添加应急机构', '6', 'admin', 'emergecy_esu', 'add_esu', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('102', '修改应急机构', '6', 'admin', 'emergecy_esu', 'update_esu', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('105', '修改预案', '7', 'admin', 'emergency', 'edit_plan', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('108', '添加值班信息', '8', 'admin', 'emergency', 'add_duty', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('109', '修改值班信息', '8', 'admin', 'emergency', 'edit_duty', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('112', '添加应急队伍', '9', 'admin', 'emergecy_team', 'add_team', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('116', '添加应急专家', '10', 'admin', 'emergecy_person', 'add_person', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('117', '修改应急专家', '10', 'admin', 'emergecy_person', 'update_person', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('118', '删除应急专家', '10', 'admin', 'emergecy_person', 'del_person', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('119', '添加信息接报', '11', 'admin', 'emergency', 'add_received', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('120', '修改信息接报', '11', 'admin', 'emergency', 'edit_received', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('122', '删除信息接报', '11', 'admin', 'emergency', 'del_received', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('123', '添加事件', '13', 'admin', 'emergency', 'add_event', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('124', '修改事件', '13', 'admin', 'emergency', 'edit_event', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('141', '删除装备', '17', 'admin', 'emergency_rescue', 'del_rescue', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('142', '添加应急保障计划', '18', 'admin', 'emergency_safeguard', 'add_safeguard', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('143', '修改应急保障计划', '18', 'admin', 'emergency_safeguard', 'update_safeguard', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('144', '查看应急保障计划', '18', 'admin', 'emergency_safeguard', 'look_safeguard', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('145', '删除应急保障计划', '18', 'admin', 'emergency_safeguard', 'del_safeguard', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('146', '添加应急路线', '35', 'admin', 'emergency', 'add_emergency_route', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('147', '修改应急路线', '35', 'admin', 'emergency', 'update_emergency_route', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('148', '查看应急路线', '35', 'admin', 'emergency', 'look_emergency_route', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('149', '修改应急路线状态', '35', 'admin', 'emergency', 'route_status_update', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('150', '数据备份', '20', 'admin', 'logs', 'data_backup_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('151', '运行监控', '20', 'admin', 'monitor', 'index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('152', '发布记录', '20', 'admin', 'release', 'record', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('153', '服务器管理', '20', 'admin', 'monitor', 'server_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('156', '单票号查询', '154', 'admin', 'SingleTicketQuery', 'index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('157', '连续票号查询', '154', 'admin', 'singleTicketQuery', 'between_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('158', '销售统计查询', '154', 'admin', 'singleTicketQuery', 'ticketSum', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('159', '售检票时间段统计', '154', 'admin', 'timeQuantumStatistics', 'index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('160', '销售年汇总', '154', 'admin', 'yearStatistics', 'index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('161', '客户购票排名统计', '154', 'admin', 'yearStatistics', 'clientIndex', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('162', '未使用票号统计', '154', 'admin', 'singleTicketQuery', 'unused_ticket', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('163', '业务协同', '0', 'res', 'Business', 'index', '', '/statics/image/icon/jsgl.png', '', '7', '0');
INSERT INTO `admin_menu` VALUES ('164', '旅游企业结构图', '166', 'res', 'prediction', 'structure', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('165', '旅游资源管理', '0', 'res', 'Resources', '', '', '/statics/image/icon/daoh.png', '', '8', '0');
INSERT INTO `admin_menu` VALUES ('166', '分析预测', '0', 'res', 'prediction', 'aa', '', '/statics/image/icon/xxjb.png', '', '6', '0');
INSERT INTO `admin_menu` VALUES ('167', '景区', '165', 'res', 'Resources', 'res_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('168', '经济收入结构图', '166', 'res', 'prediction', 'economic', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('169', '个人工作台', '163', 'res', 'Business', 'main', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('170', '投诉事件结构图', '166', 'res', 'prediction', 'complaints', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('176', '日程管理', '163', 'res', 'Business', 'schedule', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('172', '重点节假日客流量', '166', 'res', 'prediction', 'traffic', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('173', '游客性别年龄', '166', 'res', 'prediction', 'sex', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('174', '从业情况统计', '166', 'res', 'prediction', 'guide', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('175', '旅游行业接待能力', '166', 'res', 'prediction', 'ability', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('177', '日志管理', '163', 'res', 'Business', 'work_log', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('178', '流程管理', '163', 'res', 'Business', 'process', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('179', '会议管理', '163', 'res', 'Business', 'meeting', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('180', '旅游汽车公司', '165', 'res', 'Resources', 'res_car', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('181', '规章制度管理', '163', 'res', 'Business', 'rule', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('182', '通知管理', '163', 'res', 'Business', 'notice', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('183', '任务管理', '163', 'res', 'Business', 'task', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('184', '旅游商品', '165', 'res', 'Resources', 'res_commodity', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('185', '旅游路线', '165', 'res', 'Resources', 'res_line', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('186', '农家乐', '165', 'res', 'Resources', 'res_happy', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('187', '停车场', '165', 'res', 'Resources', 'res_parking', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('188', '导游', '165', 'res', 'Resources', 'res_person', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('189', '酒店宾馆', '165', 'res', 'Resources', 'res_hotel', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('190', '产业监测子系统', '0', 'res', 'Product', 'product_index', '', '/statics/image/icon/dzwzyglk.png', '', '5', '0');
INSERT INTO `admin_menu` VALUES ('191', '产业宣传营销', '190', 'res', 'Product', 'marketing', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('192', '产业数据采集', '190', 'res', 'Product', 'collection', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('193', '产业需求收集', '190', 'res', 'Product', 'requirement', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('194', '用户管理', '163', 'admin', 'user_role', 'init', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('195', '角色管理', '163', 'admin', 'user_role', 'role_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('196', '乡村旅游点', '165', 'res', 'Resources', 'res_village', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('197', '娱乐场所', '165', 'res', 'Resources', 'res_enter', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('198', '租车公司', '165', 'res', 'Resources', 'res_taxi', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('199', '旅行社', '165', 'res', 'Resources', 'res_travel', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('200', '旅游厕所', '165', 'res', 'Resources', 'res_wc', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('201', '节庆活动', '165', 'res', 'Resources', 'res_festival', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('202', '景点', '165', 'res', 'Resources', 'res_jingdian', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('203', '旅游餐饮', '165', 'res', 'Resources', 'res_canyin', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('204', '旅游大巴', '165', 'res', 'Resources', 'res_daba', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('205', '视频监控类型', '218', 'admin', 'spot_video_monitor', 'stype_index', '#0081AC', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('206', '添加类型', '205', 'admin', 'spot_video_monitor', 'stype_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('207', '修改类型', '205', 'admin', 'spot_video_monitor', 'stype_edit', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('208', '删除类型', '205', 'admin', 'spot_video_monitor', 'stype_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('209', '视频监控', '218', 'admin', 'spot_video_monitor', 'index', '#00ACAC', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('210', '添加视频监控', '209', 'admin', 'spot_video_monitor', 'video_monitor_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('211', '查看视频监控', '209', 'admin', 'spot_video_monitor', 'video_monitor_view', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('212', '修改视频监控', '209', 'admin', 'spot_video_monitor', 'video_monitor_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('213', '删除视频监控', '209', 'admin', 'spot_video_monitor', 'video_monitor_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('214', '配置管理', '1', 'admin', 'configser', 'index', '#00ACAC', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('215', '添加配置', '214', 'admin', 'configser', 'type_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('216', '修改配置', '214', 'admin', 'configser', 'type_update', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('217', '删除配置', '214', 'admin', 'configser', 'del_config', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('218', '视频监控', '0', '', '', '', '', '/statics/image/icon/spjk.png', '', '1', '1');
INSERT INTO `admin_menu` VALUES ('219', '周边推荐', '0', 'admin', 'zbtj', 'zbtj', '', '/statics/image/icon/jdgl.png', '', '1', '1');
INSERT INTO `admin_menu` VALUES ('220', '娱乐分类管理', '219', 'admin', 'around', 'play_type_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('221', '添加娱乐分类', '220', 'admin', 'around', 'play_type_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('222', '修改娱乐分类', '220', 'admin', 'around', 'play_type_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('223', '删除娱乐分类', '220', 'admin', 'around', 'play_type_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('224', '娱乐管理', '219', 'admin', 'around', 'play_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('225', '娱乐添加', '224', 'admin', 'around', 'play_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('226', '娱乐修改', '224', 'admin', 'around', 'play_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('227', '娱乐删除', '224', 'admin', 'around', 'play_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('228', '娱乐查看', '224', 'admin', 'around', 'play_view', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('229', '站点管理', '219', 'admin', 'around', 'site_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('230', '铁路管理', '219', 'admin', 'around', 'railway_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('231', '客车管理', '219', 'admin', 'around', 'bus_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('232', '公交管理', '219', 'admin', 'around', 'transit_list', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('233', '景点管理', '219', 'admin', 'around', 'travel_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('234', '添加站点', '229', 'admin', 'around', 'site_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('235', '修改站点', '229', 'admin', 'around', 'site_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('236', '查看站点', '229', 'admin', 'around', 'site_view', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('237', '删除站点', '229', 'admin', 'around', 'site_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('238', '添加车次', '230', 'admin', 'around', 'railway_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('239', '修改车次', '230', 'admin', 'around', 'railway_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('240', '删除车次', '230', 'admin', 'around', 'railway_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('241', '添加客车', '231', 'admin', 'around', 'bus_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('242', '修改客车', '231', 'admin', 'around', 'bus_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('243', '删除客车', '231', 'admin', 'around', 'bus_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('244', '添加公交线路', '232', 'admin', 'around', 'transit_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('245', '修改公交线路', '232', 'admin', 'around', 'transit_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('246', '删除公交线路', '232', 'admin', 'around', 'transit_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('247', '美食店铺管理', '219', 'admin', 'around', 'food_store_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('248', '添加美食店铺', '247', 'admin', 'around', 'food_store_add', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('249', '修改美食店铺', '247', 'admin', 'around', 'food_store_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('250', '修改美食店铺状态', '247', 'admin', 'around', 'food_store_status_update', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('251', '删除美食店铺', '247', 'admin', 'around', 'food_store_del', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('252', '小吃类型管理', '219', 'admin', 'around', 'food_type_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('253', '美食小吃管理', '219', 'admin', 'around', 'food_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('254', '酒店管理', '219', 'admin', 'around', 'hotel_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('255', '住房管理', '219', 'admin', 'around', 'hotel_room_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('256', '商店管理', '219', 'admin', 'around', 'store_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('257', '商品管理', '219', 'admin', 'around', 'store_goods_index', '', '', '', '0', '1');
INSERT INTO `admin_menu` VALUES ('258', '添加小吃类型', '252', 'admin', 'around', 'type_add', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('259', '修改小吃类型', '252', 'admin', 'around', 'type_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('260', '修改小吃类型状态', '252', 'admin', 'around', 'food_type_status_update', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('261', '删除小吃类型', '252', 'admin', 'around', 'type_del', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('262', '添加小吃', '253', 'admin', 'around', 'food_add', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('263', '修改小吃', '253', 'admin', 'around', 'food_edit', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('264', '删除小吃', '253', 'admin', 'around', 'food_del', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('265', '修改小吃状态', '253', 'admin', 'around', 'food_status_update', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('266', '添加酒店', '254', 'admin', 'around', 'hotel_add', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('267', '修改酒店', '254', 'admin', 'around', 'hotel_edit', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('268', '删除酒店', '254', 'admin', 'around', 'hotel_del', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('269', '修改酒店状态', '254', 'admin', 'around', 'hotel_status_update', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('270', '添加住房', '255', 'admin', 'around', 'hotel_room_add', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('271', '修改住房', '255', 'admin', 'around', 'hotel_room_edit', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('272', '删除住房', '255', 'admin', 'around', 'hotel_room_del', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('273', '修改住房状态', '255', 'admin', 'around', 'hotel_status_update', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('274', '添加商店', '256', 'admin', 'around', 'store_add', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('275', '修改商店', '256', 'admin', 'around', 'store_edit', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('276', '删除商店', '256', 'admin', 'around', 'store_del', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('277', '修改商店状态', '256', 'admin', 'around', 'store_status_update', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('278', '添加商品', '257', 'admin', 'around', 'store_goods_add', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('279', '修改商品', '257', 'admin', 'around', 'store_goods_edit', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('280', '删除商品', '257', 'admin', 'around', 'store_goods_del', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('281', '修改商品状态', '257', 'admin', 'around', 'store_goods_status_update', null, null, null, '0', '0');
INSERT INTO `admin_menu` VALUES ('282', '添加景点', '233', 'admin', 'around', 'add_travel', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('283', '删除景点', '233', 'admin', 'around', 'del_index', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('284', '修改', '233', 'admin', 'around', 'travel_edit', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('285', '查看', '233', 'admin', 'around', 'travel_look', '', '', '', '0', '0');
INSERT INTO `admin_menu` VALUES ('286', '修改状态', '233', 'a', 'around', 'travel_status_edit', '', '', '', '0', '0');

-- ----------------------------
-- Table structure for `admin_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role` (
  `roleid` varchar(50) NOT NULL COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '角色名称',
  `description` text COMMENT '描述',
  `listorder` int(11) DEFAULT NULL COMMENT '排序',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0正常1禁用',
  PRIMARY KEY (`roleid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES ('1', '超级管理员', '超级管理员', '0', '0');
INSERT INTO `admin_role` VALUES ('2', '管理员', '管理员', '0', '1');
INSERT INTO `admin_role` VALUES ('4', '操作人员', '操作人员', '0', '0');

-- ----------------------------
-- Table structure for `admin_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_user`;
CREATE TABLE `admin_user` (
  `userid` varchar(50) NOT NULL COMMENT '主键',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` char(32) NOT NULL COMMENT '密码',
  `realname` varchar(30) DEFAULT NULL COMMENT '姓名',
  `mobile` varchar(20) DEFAULT NULL COMMENT '电话',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `card` varchar(20) DEFAULT NULL COMMENT '身份证号',
  `roleid` varchar(50) DEFAULT NULL COMMENT '角色id',
  `add_time` int(10) NOT NULL,
  `lastloginip` varchar(20) DEFAULT NULL COMMENT '最后登录ip',
  `lastlogintime` int(10) DEFAULT NULL COMMENT '最后登录时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态0启用1禁用',
  `img_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin_user
-- ----------------------------
INSERT INTO `admin_user` VALUES ('39A48949-33A4-0E63-5752-5E47B5B58204', 'admin', 'e116029f59352af9986e47c3abfcdd56', '管理员', '0', '0', null, '2', '1493013619', '124.202.244.194', '1503910490', '0', 'uploadfile/2017/08/31/1504161385.jpg');
INSERT INTO `admin_user` VALUES ('3731528B-9B01-EB06-B0AE-B215F968541B', 'root', 'ee2322e54fb1771e5e0a7d3f12484619', '系统开发', '0', '0', null, '1', '1503910424', '127.0.0.1', '1509087576', '0', 'uploadfile/2017/10/12/1507779008.png');
INSERT INTO `admin_user` VALUES ('5EA6F87B-00DE-DDDC-552C-18852EF303CF', 'yang', 'dc642c03d8d35b681752fb63b86a9232', '测试', '13812864326', 'test@qq.com', null, '2', '1504089397', null, null, '0', 'uploadfile/2017/08/31/1504161974.jpg');
INSERT INTO `admin_user` VALUES ('C0871BB5-DF99-0CE5-1958-B4C7B89C8BEF', 'yang2', 'dc642c03d8d35b681752fb63b86a9232', '测试', '13812864326', 'test@qq.com', null, '2', '1504162019', null, null, '1', 'uploadfile/2017/09/04/1504508311.jpg');

-- ----------------------------
-- Table structure for `brand`
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `rn` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES ('1', '奔驰', null);
INSERT INTO `brand` VALUES ('2', '宝马', null);
INSERT INTO `brand` VALUES ('3', '奥迪', null);

-- ----------------------------
-- Table structure for `cm7_servers`
-- ----------------------------
DROP TABLE IF EXISTS `cm7_servers`;
CREATE TABLE `cm7_servers` (
  `id` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `port` varchar(6) DEFAULT NULL,
  `desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cm7_servers
-- ----------------------------
INSERT INTO `cm7_servers` VALUES ('353e8372-381a-11e8-9190-000c29d2bf7b', '222', '192.168.6.222', '8040', '192.168.6.222');

-- ----------------------------
-- Table structure for `members`
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members` (
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rn` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of members
-- ----------------------------

-- ----------------------------
-- Table structure for `series`
-- ----------------------------
DROP TABLE IF EXISTS `series`;
CREATE TABLE `series` (
  `name` varchar(50) DEFAULT NULL,
  `brandId` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rn` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_SERIES_REFERENCE_BRAND` (`brandId`),
  CONSTRAINT `FK_SERIES_REFERENCE_BRAND` FOREIGN KEY (`brandId`) REFERENCES `brand` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of series
-- ----------------------------
INSERT INTO `series` VALUES ('C级', '1', '1', null);
INSERT INTO `series` VALUES ('S级', '1', '2', null);
INSERT INTO `series` VALUES ('1系', '2', '3', null);
INSERT INTO `series` VALUES ('7系', '2', '4', null);

-- ----------------------------
-- Table structure for `sys_authority`
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority`;
CREATE TABLE `sys_authority` (
  `rolemodelid` varchar(50) NOT NULL DEFAULT '' COMMENT '角色菜单id',
  `roleid` varchar(50) DEFAULT NULL COMMENT '角色id',
  `modelid` varchar(50) DEFAULT NULL COMMENT '功能id',
  `type` varchar(200) DEFAULT NULL COMMENT '权限类型 0:models,1:menus',
  `fieldname` varchar(20) DEFAULT NULL COMMENT '字段名称',
  PRIMARY KEY (`rolemodelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_authority
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_codes`
-- ----------------------------
DROP TABLE IF EXISTS `sys_codes`;
CREATE TABLE `sys_codes` (
  `codeid` varchar(50) NOT NULL COMMENT '编码id',
  `parentid` varchar(50) DEFAULT NULL COMMENT '上级编码',
  `codetypeid` varchar(50) DEFAULT NULL COMMENT '类型编码fk',
  `orderby` varchar(9) DEFAULT NULL COMMENT '排序',
  `us` varchar(20) DEFAULT NULL COMMENT '英文值',
  `en` varchar(20) DEFAULT NULL COMMENT '中文值',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  `isused` char(1) DEFAULT NULL COMMENT '是否启用：0启用，1未启用',
  PRIMARY KEY (`codeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codes
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_codetypes`
-- ----------------------------
DROP TABLE IF EXISTS `sys_codetypes`;
CREATE TABLE `sys_codetypes` (
  `codetypeid` varchar(50) NOT NULL COMMENT '编码类型id',
  `orderby` int(9) DEFAULT NULL COMMENT '类型顺序',
  `codetypename` varchar(200) DEFAULT NULL COMMENT '类型名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`codetypeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_codetypes
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_departrole`
-- ----------------------------
DROP TABLE IF EXISTS `sys_departrole`;
CREATE TABLE `sys_departrole` (
  `departroleid` varchar(50) NOT NULL DEFAULT '' COMMENT '机构角色id',
  `roleid` varchar(50) DEFAULT NULL COMMENT '角色id',
  `departid` varchar(50) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`departroleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_departrole
-- ----------------------------
INSERT INTO `sys_departrole` VALUES ('64a1f90f-4202-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', 'b5099e99-413e-11e8-8acc-000c29d2bf7b');

-- ----------------------------
-- Table structure for `sys_departs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_departs`;
CREATE TABLE `sys_departs` (
  `departid` varchar(50) NOT NULL COMMENT '机构编码',
  `parentid` varchar(50) DEFAULT NULL COMMENT '上级编码',
  `departname` varchar(200) NOT NULL COMMENT '机构名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`departid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_departs
-- ----------------------------
INSERT INTO `sys_departs` VALUES ('b5099e99-413e-11e8-8acc-000c29d2bf7b', '1', 'VR产品部', 'VR产品部', null, null, null, null);
INSERT INTO `sys_departs` VALUES ('c122abeb-3ae0-11e8-8acc-000c29d2bf7b', '01', '宣传部', '宣传部', null, null, null, null);
INSERT INTO `sys_departs` VALUES ('c6f90114-413e-11e8-8acc-000c29d2bf7b', '01', '研发部', '研发部', null, null, null, null);

-- ----------------------------
-- Table structure for `sys_departuser`
-- ----------------------------
DROP TABLE IF EXISTS `sys_departuser`;
CREATE TABLE `sys_departuser` (
  `departuserid` varchar(50) NOT NULL DEFAULT '' COMMENT '机构用户   id',
  `userid` varchar(50) DEFAULT NULL COMMENT 'yonghu id',
  `departid` varchar(50) DEFAULT NULL COMMENT '机构id',
  PRIMARY KEY (`departuserid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_departuser
-- ----------------------------
INSERT INTO `sys_departuser` VALUES ('f0555eb6-4143-11e8-8acc-000c29d2bf7b', '6f920749-3b09-11e8-8acc-000c29d2bf7b', 'b5099e99-413e-11e8-8acc-000c29d2bf7b');

-- ----------------------------
-- Table structure for `sys_loginlog`
-- ----------------------------
DROP TABLE IF EXISTS `sys_loginlog`;
CREATE TABLE `sys_loginlog` (
  `loginlogid` varchar(50) NOT NULL DEFAULT '',
  `userid` varchar(50) DEFAULT NULL COMMENT '登录人员id',
  `username` varchar(200) DEFAULT NULL COMMENT '登录人员名称',
  `roleid` varchar(50) DEFAULT NULL COMMENT '登录人员角色id',
  `rolename` varchar(200) DEFAULT NULL COMMENT '登录人员角色名称',
  `clientname` varchar(100) DEFAULT NULL COMMENT '客户机器名',
  `clientip` varchar(20) DEFAULT NULL COMMENT '客户机器ip',
  `logintime` datetime DEFAULT NULL COMMENT '登录时间',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`loginlogid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_loginlog
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_logs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_logs`;
CREATE TABLE `sys_logs` (
  `logid` varchar(50) NOT NULL DEFAULT '',
  `logfrom` varchar(200) DEFAULT NULL COMMENT '日志来源',
  `logtypeid` varchar(50) DEFAULT NULL COMMENT '日志类型编号',
  `logtypename` varchar(200) DEFAULT NULL COMMENT '日志类型名称',
  `values` varchar(2000) DEFAULT NULL COMMENT '日志内容',
  `nodes` varchar(2000) DEFAULT NULL COMMENT '日志备注',
  `userid` varchar(50) DEFAULT NULL COMMENT '登录人员id',
  `username` varchar(200) DEFAULT NULL COMMENT '登录人员名称',
  `logtime` datetime DEFAULT NULL COMMENT '登录时间',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`logid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_logs
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_menus`
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `menuid` varchar(50) NOT NULL DEFAULT '' COMMENT '按钮id',
  `menuname` varchar(200) DEFAULT NULL COMMENT '按钮名称',
  `orderby` int(9) DEFAULT NULL COMMENT '按钮顺序',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标名',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES ('2e982a02-3b01-11e8-8acc-000c29d2bf7b', '新增', '1', 'fa fa-plus', '新增', null, null, null, null);
INSERT INTO `sys_menus` VALUES ('32faf83a-3b01-11e8-8acc-000c29d2bf7b', '修改', '2', 'fa fa-edit', '修改', null, null, null, null);
INSERT INTO `sys_menus` VALUES ('a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', '删除', '3', 'fa fa-close', '删除', null, null, null, null);

-- ----------------------------
-- Table structure for `sys_modelfuncs`
-- ----------------------------
DROP TABLE IF EXISTS `sys_modelfuncs`;
CREATE TABLE `sys_modelfuncs` (
  `funcid` varchar(50) NOT NULL DEFAULT '' COMMENT '方法id',
  `modelid` varchar(50) DEFAULT NULL COMMENT '模块id',
  `funcname` varchar(200) DEFAULT NULL COMMENT '方法名',
  `url` varchar(1000) DEFAULT NULL COMMENT '地址',
  `icon` varchar(200) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `modelname` varchar(200) DEFAULT NULL,
  `isau` char(1) DEFAULT NULL COMMENT '0:验证1：不验证',
  PRIMARY KEY (`funcid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_modelfuncs
-- ----------------------------
INSERT INTO `sys_modelfuncs` VALUES ('078606ce-476f-11e8-8acc-000c29d2bf7b', '', '首页面加载', '/sys/index.do', 'fa fa-hourglass-3', '首页面加载', '', null);
INSERT INTO `sys_modelfuncs` VALUES ('3dbb4b9e-476e-11e8-8acc-000c29d2bf7b', '889391fd-3d66-11e8-8acc-000c29d2bf7b', '部门列表ajax', '/sys_departs/serch.do', 'fa fa-map', '部门列表ajax', '部门管理', null);
INSERT INTO `sys_modelfuncs` VALUES ('4a00e52f-46c6-11e8-8acc-000c29d2bf7b', '889391fd-3d66-11e8-8acc-000c29d2bf7b', '查询部门树', '/sys_departs/queryTreeMenu.do', 'fa fa-amazon', '查询部门树', '部门管理', null);
INSERT INTO `sys_modelfuncs` VALUES ('60e24e8c-476e-11e8-8acc-000c29d2bf7b', '889391fd-3d66-11e8-8acc-000c29d2bf7b', '部门列表总笔数', '/sys_departs/serchCount.do', 'fa fa-bell-o', '部门列表总笔数', '部门管理', null);
INSERT INTO `sys_modelfuncs` VALUES ('8609c05b-476e-11e8-8acc-000c29d2bf7b', '889391fd-3d66-11e8-8acc-000c29d2bf7b', '部门新增提交', '/sys_departs/add.do', 'fa fa-hand-stop-o', '部门新增提交', '部门管理', null);
INSERT INTO `sys_modelfuncs` VALUES ('975f4dcf-476e-11e8-8acc-000c29d2bf7b', '889391fd-3d66-11e8-8acc-000c29d2bf7b', '部门修改提交', '/sys_departs/edit.do', 'fa fa-calendar-times-o', '部门修改提交', '部门管理', null);
INSERT INTO `sys_modelfuncs` VALUES ('e6a5d0a6-476e-11e8-8acc-000c29d2bf7b', '', '首页面左侧列表树请求', '/sys_models/models_Tree.do', 'fa fa-500px', '首页面左侧列表树请求', '', null);

-- ----------------------------
-- Table structure for `sys_modelmenu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_modelmenu`;
CREATE TABLE `sys_modelmenu` (
  `modelmenuid` varchar(50) NOT NULL DEFAULT '' COMMENT '功能菜单id',
  `modelid` varchar(50) DEFAULT NULL COMMENT '功能id',
  `menuid` varchar(50) DEFAULT NULL COMMENT '菜单id',
  `action` varchar(50) DEFAULT NULL COMMENT '对应的方法',
  `jsfunc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`modelmenuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_modelmenu
-- ----------------------------
INSERT INTO `sys_modelmenu` VALUES ('121a4335-4905-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', '1', null);
INSERT INTO `sys_modelmenu` VALUES ('121a8390-4905-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', '2', null);
INSERT INTO `sys_modelmenu` VALUES ('121ae2ad-4905-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b', 'a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', '3', null);
INSERT INTO `sys_modelmenu` VALUES ('53f35af2-3d65-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', 'sys_users/add_edit.do', null);
INSERT INTO `sys_modelmenu` VALUES ('53f9a461-3d65-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b', 'a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', 'sys_users/delmenu.do', null);
INSERT INTO `sys_modelmenu` VALUES ('53f9e5c4-3d65-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', 'sys_users/add_view.do', null);
INSERT INTO `sys_modelmenu` VALUES ('97db1ba9-3c97-11e8-8acc-000c29d2bf7b', '808c02ff-3b0f-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', '11', null);
INSERT INTO `sys_modelmenu` VALUES ('97db6b6b-3c97-11e8-8acc-000c29d2bf7b', '808c02ff-3b0f-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', '22', null);
INSERT INTO `sys_modelmenu` VALUES ('97dbba38-3c97-11e8-8acc-000c29d2bf7b', '808c02ff-3b0f-11e8-8acc-000c29d2bf7b', 'a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', '33', null);
INSERT INTO `sys_modelmenu` VALUES ('cb5a34ee-415a-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', '1', null);

-- ----------------------------
-- Table structure for `sys_models`
-- ----------------------------
DROP TABLE IF EXISTS `sys_models`;
CREATE TABLE `sys_models` (
  `modelid` varchar(50) NOT NULL DEFAULT '' COMMENT '功能编码',
  `parentid` varchar(50) DEFAULT NULL COMMENT '上级编码',
  `orderby` int(9) DEFAULT NULL COMMENT '功能顺序',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `modelname` varchar(200) DEFAULT NULL COMMENT '功能名称',
  `icon` varchar(40) DEFAULT NULL COMMENT '图标',
  `url` varchar(500) DEFAULT NULL COMMENT 'url',
  `isview` char(1) DEFAULT NULL COMMENT '是否可见：0可见，1不可见',
  `isused` char(1) DEFAULT NULL COMMENT '是否启用：0启用，1未启用',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`modelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_models
-- ----------------------------
INSERT INTO `sys_models` VALUES ('106edd36-3d65-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b', '1', '用户管理', '用户管理', 'glyphicon glyphicon-user', 'sys_users/view.do', '0', '0', null, null, null, null);
INSERT INTO `sys_models` VALUES ('889391fd-3d66-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b', '2', '部门管理', '部门管理', 'glyphicon glyphicon-lock', 'sys_departs/view.do', '0', '0', null, null, null, null);
INSERT INTO `sys_models` VALUES ('a3014e48-3d66-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b', '3', '模块管理', '模块管理', 'glyphicon glyphicon-th-large', 'sys_models/view.do', '0', '0', null, null, null, null);
INSERT INTO `sys_models` VALUES ('d6bfcb81-469d-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b', '7', '方法管理', '方法管理', 'glyphicon glyphicon-subtitles', 'sys_modelfuncs/view.do', '0', '0', null, null, null, null);
INSERT INTO `sys_models` VALUES ('dac57768-3d66-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b', '4', '角色管理', '角色管理', 'glyphicon glyphicon-cloud', 'sys_roles/view.do', '0', '0', null, null, null, null);
INSERT INTO `sys_models` VALUES ('f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b', '5', '菜单管理', '菜单管理', 'glyphicon glyphicon-th', 'sys_menus/view.do', '0', '0', null, null, null, null);
INSERT INTO `sys_models` VALUES ('fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b', '0', '1', '系统管理', '系统管理', 'glyphicon glyphicon-asterisk', '', '0', '0', null, null, null, null);

-- ----------------------------
-- Table structure for `sys_parm`
-- ----------------------------
DROP TABLE IF EXISTS `sys_parm`;
CREATE TABLE `sys_parm` (
  `sysparmid` varchar(50) NOT NULL DEFAULT '',
  `values` varchar(20) DEFAULT NULL COMMENT '参数值',
  `isedit` char(1) DEFAULT NULL COMMENT '用户是否可编辑',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`sysparmid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_parm
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_rolemodel`
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolemodel`;
CREATE TABLE `sys_rolemodel` (
  `rolemodelid` varchar(50) NOT NULL DEFAULT '' COMMENT '角色功能id',
  `roleid` varchar(50) DEFAULT NULL COMMENT '角色id',
  `modelid` varchar(50) DEFAULT NULL COMMENT '功能id',
  PRIMARY KEY (`rolemodelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rolemodel
-- ----------------------------
INSERT INTO `sys_rolemodel` VALUES ('08fda2a8-4902-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('08fe3ba5-4902-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('08fee12b-4902-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', 'a3014e48-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('08ff688c-4902-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', 'd6bfcb81-469d-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('08fff984-4902-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', 'dac57768-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('09008a30-4902-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('2bd30fee-4790-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', '889391fd-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('2bd3aa54-4790-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', 'd6bfcb81-469d-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('2bd44783-4790-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', 'dac57768-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('2bdb52e6-4790-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('e37e3bf0-4124-11e8-8acc-000c29d2bf7b', '533fdd6b-3c9c-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodel` VALUES ('e381d496-4124-11e8-8acc-000c29d2bf7b', '533fdd6b-3c9c-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b');

-- ----------------------------
-- Table structure for `sys_rolemodelfunc`
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolemodelfunc`;
CREATE TABLE `sys_rolemodelfunc` (
  `rolemodelfuncid` varchar(50) NOT NULL DEFAULT '',
  `modelfuncid` varchar(50) DEFAULT NULL,
  `roleid` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`rolemodelfuncid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rolemodelfunc
-- ----------------------------
INSERT INTO `sys_rolemodelfunc` VALUES ('c3530a37-4791-11e8-8acc-000c29d2bf7b', '078606ce-476f-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('c355ee4f-4791-11e8-8acc-000c29d2bf7b', '4a00e52f-46c6-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('c3569314-4791-11e8-8acc-000c29d2bf7b', '8609c05b-476e-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('c357eddb-4791-11e8-8acc-000c29d2bf7b', 'e6a5d0a6-476e-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('c35881ce-4791-11e8-8acc-000c29d2bf7b', '3dbb4b9e-476e-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('c3590dda-4791-11e8-8acc-000c29d2bf7b', '60e24e8c-476e-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('c3599cef-4791-11e8-8acc-000c29d2bf7b', '975f4dcf-476e-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('cad168c3-4791-11e8-8acc-000c29d2bf7b', '078606ce-476f-11e8-8acc-000c29d2bf7b', '533fdd6b-3c9c-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('cad21692-4791-11e8-8acc-000c29d2bf7b', 'e6a5d0a6-476e-11e8-8acc-000c29d2bf7b', '533fdd6b-3c9c-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('ce52539c-4791-11e8-8acc-000c29d2bf7b', '078606ce-476f-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelfunc` VALUES ('ce568801-4791-11e8-8acc-000c29d2bf7b', 'e6a5d0a6-476e-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b');

-- ----------------------------
-- Table structure for `sys_rolemodelmenu`
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolemodelmenu`;
CREATE TABLE `sys_rolemodelmenu` (
  `rolemenumodelid` varchar(50) NOT NULL DEFAULT '' COMMENT '角色菜单id',
  `roleid` varchar(50) DEFAULT NULL COMMENT '角色id',
  `menuid` varchar(50) DEFAULT NULL COMMENT '菜单id',
  `modelid` varchar(50) DEFAULT NULL COMMENT '功能id',
  PRIMARY KEY (`rolemenumodelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rolemodelmenu
-- ----------------------------
INSERT INTO `sys_rolemodelmenu` VALUES ('305609da-4162-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('305693bf-4162-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('3057506b-4162-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('3057d64c-4162-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', 'a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('306164e4-4162-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('30649cf8-4162-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('306550e5-4162-11e8-8acc-000c29d2bf7b', '4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', 'a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f46edf03-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f46fa62e-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f473b8f2-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', 'a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', 'fc2cabc6-3b0a-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f4746e96-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f47be71c-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f47c7ebc-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', 'a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', '106edd36-3d65-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f47d02ef-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', '2e982a02-3b01-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f47dd0bd-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', '32faf83a-3b01-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b');
INSERT INTO `sys_rolemodelmenu` VALUES ('f485827b-4124-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', 'a6bd92ac-3bd0-11e8-8acc-000c29d2bf7b', 'f1aeb7bc-3d66-11e8-8acc-000c29d2bf7b');

-- ----------------------------
-- Table structure for `sys_roles`
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles`;
CREATE TABLE `sys_roles` (
  `roleid` varchar(50) NOT NULL DEFAULT '' COMMENT '角色id',
  `orderby` int(9) DEFAULT NULL COMMENT '角色顺序',
  `rolename` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `description` varchar(1000) DEFAULT NULL COMMENT '描述',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_roles
-- ----------------------------
INSERT INTO `sys_roles` VALUES ('4c2ba86d-3c9c-11e8-8acc-000c29d2bf7b', '2', '管理员', '管理员', null, null, null, null);
INSERT INTO `sys_roles` VALUES ('533fdd6b-3c9c-11e8-8acc-000c29d2bf7b', '3', '普通用户', '普通用户', null, null, null, null);
INSERT INTO `sys_roles` VALUES ('d624e6ea-3af4-11e8-8acc-000c29d2bf7b', '1', '超级管理员', '超级管理员', null, null, null, null);

-- ----------------------------
-- Table structure for `sys_rolesetau`
-- ----------------------------
DROP TABLE IF EXISTS `sys_rolesetau`;
CREATE TABLE `sys_rolesetau` (
  `rolesetauid` varchar(50) NOT NULL DEFAULT '' COMMENT '角色授权编号',
  `roleid` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `setauid` varchar(50) DEFAULT NULL COMMENT '授权编号',
  PRIMARY KEY (`rolesetauid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_rolesetau
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_setau`
-- ----------------------------
DROP TABLE IF EXISTS `sys_setau`;
CREATE TABLE `sys_setau` (
  `setauid` varchar(50) DEFAULT NULL COMMENT '授权id',
  `setauname` varchar(200) DEFAULT NULL COMMENT '授权名称',
  `parentid` varchar(50) DEFAULT NULL,
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_setau
-- ----------------------------

-- ----------------------------
-- Table structure for `sys_userrole`
-- ----------------------------
DROP TABLE IF EXISTS `sys_userrole`;
CREATE TABLE `sys_userrole` (
  `userrolelid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户角色id',
  `roleid` varchar(50) DEFAULT NULL COMMENT '角色id',
  `userid` varchar(50) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`userrolelid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_userrole
-- ----------------------------
INSERT INTO `sys_userrole` VALUES ('0b250c80-4792-11e8-8acc-000c29d2bf7b', 'd624e6ea-3af4-11e8-8acc-000c29d2bf7b', '6f920749-3b09-11e8-8acc-000c29d2bf7b');

-- ----------------------------
-- Table structure for `sys_users`
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `userid` varchar(50) NOT NULL DEFAULT '' COMMENT '用户编码',
  `orderby` int(9) DEFAULT NULL COMMENT '用户顺序',
  `username` varchar(200) NOT NULL COMMENT '用户名称',
  `description` varchar(2000) DEFAULT NULL COMMENT '描述',
  `password` varchar(50) DEFAULT NULL COMMENT '用户密码',
  `rolename` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `departname` varchar(200) DEFAULT NULL COMMENT '机构名称',
  `setting` varchar(200) DEFAULT NULL COMMENT '用户配置',
  `isused` char(1) DEFAULT NULL COMMENT '是否启用',
  `logincount` int(9) DEFAULT NULL COMMENT '登录次数',
  `lastlogintime` datetime DEFAULT NULL COMMENT '最后登录时间',
  `creatuser` varchar(50) DEFAULT NULL COMMENT '创建人员',
  `creattime` datetime DEFAULT NULL COMMENT '创建日期',
  `modifyuser` varchar(50) DEFAULT NULL COMMENT '更新人员',
  `modifytime` datetime DEFAULT NULL COMMENT '更新日期',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
INSERT INTO `sys_users` VALUES ('6f920749-3b09-11e8-8acc-000c29d2bf7b', '1', '小明', '小明', '123456', null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `sys_usersets`
-- ----------------------------
DROP TABLE IF EXISTS `sys_usersets`;
CREATE TABLE `sys_usersets` (
  `userid` varchar(50) NOT NULL COMMENT '用户id fk',
  `usersetid` varchar(50) NOT NULL COMMENT '用户设置编码',
  `setno` varchar(20) NOT NULL COMMENT '设置编码',
  `setname` varchar(200) DEFAULT NULL COMMENT '设置名称',
  `setvalue` varchar(20) DEFAULT NULL COMMENT '设置值',
  `description` varchar(2000) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`usersetid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_usersets
-- ----------------------------

-- ----------------------------
-- Table structure for `type`
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `name` varchar(50) DEFAULT NULL,
  `seriesId` bigint(20) DEFAULT NULL,
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `rn` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_TYPE_REFERENCE_SERIES` (`seriesId`),
  CONSTRAINT `FK_TYPE_REFERENCE_SERIES` FOREIGN KEY (`seriesId`) REFERENCES `series` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('C200', '1', '1', null);
INSERT INTO `type` VALUES ('C200L', '1', '2', null);
INSERT INTO `type` VALUES ('S300', '2', '3', null);
INSERT INTO `type` VALUES ('118i', '3', '4', null);
INSERT INTO `type` VALUES ('120i', '3', '5', null);
INSERT INTO `type` VALUES ('750', '4', '6', null);
INSERT INTO `type` VALUES ('760', '4', '7', null);

-- ----------------------------
-- Table structure for `vehicle`
-- ----------------------------
DROP TABLE IF EXISTS `vehicle`;
CREATE TABLE `vehicle` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vin` varchar(50) DEFAULT NULL,
  `typeId` bigint(20) DEFAULT NULL,
  `licensePlateNumber` varchar(50) DEFAULT NULL,
  `registerCode` varchar(50) DEFAULT NULL,
  `mileage` decimal(10,2) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `startingPrice` bigint(20) DEFAULT NULL,
  `hopePrice` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `memberId` bigint(20) DEFAULT NULL,
  `rn` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_VEHICLE_REFERENCE_TYPE` (`typeId`),
  KEY `FK_VEHICLE_REFERENCE_MEMBERS` (`memberId`),
  CONSTRAINT `FK_VEHICLE_REFERENCE_MEMBERS` FOREIGN KEY (`memberId`) REFERENCES `members` (`id`),
  CONSTRAINT `FK_VEHICLE_REFERENCE_TYPE` FOREIGN KEY (`typeId`) REFERENCES `type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vehicle
-- ----------------------------
INSERT INTO `vehicle` VALUES ('1', '123456798', '2', '京A11111', '0000001', '100.00', '2016-12-01', '10', '1000000', '10000000', '1', null, null);
INSERT INTO `vehicle` VALUES ('2', '8888888', '4', '京A88888', '0000002', '100.00', '2016-12-01', '0', '10000000', '100000000', '1', null, null);
INSERT INTO `vehicle` VALUES ('3', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('4', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('5', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('6', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('7', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('8', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('9', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('10', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('11', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('12', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('13', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('14', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('15', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('16', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('17', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('18', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('19', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('20', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('24', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('25', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('26', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('27', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('28', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('29', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('30', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('31', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('32', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('33', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('34', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('35', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('36', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('37', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('38', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('39', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('40', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('41', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('42', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('43', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('44', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('45', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('46', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('47', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('48', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('49', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('50', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('51', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('52', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('53', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('54', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('55', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('56', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('57', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('58', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('59', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('60', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('61', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('62', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('63', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('64', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('65', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('66', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('67', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('68', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('69', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('70', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('71', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('72', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('73', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('74', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('75', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('76', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('77', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('78', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('79', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('80', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('81', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('82', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('83', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('84', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('85', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('86', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('87', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('88', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('89', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('90', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('91', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('92', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('93', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('94', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('95', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('96', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('97', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('98', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('99', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('100', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('101', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('102', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('103', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('104', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('105', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('106', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('107', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('108', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('109', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('110', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('111', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('112', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('113', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('114', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('115', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('116', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('117', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('118', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('119', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('120', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('121', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('122', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('123', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('124', '987654311', '3', '京A12345', '123456', '500.00', '2016-12-17', '0', '500', '600', '1', null, null);
INSERT INTO `vehicle` VALUES ('125', '12345679811', '1', '京A00001', '123', '123.00', '2016-12-21', '0', '50', '51', '1', null, null);
INSERT INTO `vehicle` VALUES ('127', '测试的vin', '1', '12123', '123', '123.00', '2016-12-28', '0', '11', '222', '1', null, null);
INSERT INTO `vehicle` VALUES ('128', '测试的vinJDBC', '1', '213123', '123', '123.00', '2016-12-06', '0', '123', '1231', '1', null, null);
