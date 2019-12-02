-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2019-11-30 14:24:08
-- 服务器版本： 5.7.23
-- PHP 版本： 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `l_rules`
--

CREATE TABLE `l_rules` (
  `id` int(11) NOT NULL,
  `ptype` varchar(255) DEFAULT NULL,
  `v0` varchar(255) DEFAULT NULL,
  `v1` varchar(255) DEFAULT NULL,
  `v2` varchar(255) DEFAULT NULL,
  `v3` varchar(255) DEFAULT NULL,
  `v4` varchar(255) DEFAULT NULL,
  `v5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `l_rules`
--

INSERT INTO `l_rules` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`) VALUES
(1, 'g', 'eve', 'writer', NULL, NULL, NULL, NULL),
(6, 'g', '10000', 'administrator', NULL, NULL, NULL, NULL),
(7, 'p', '10000', 'writer', 'read', 'edit', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `l_system_user`
--

CREATE TABLE `l_system_user` (
  `id` smallint(5) UNSIGNED NOT NULL COMMENT '后台管理员表ID',
  `account` varchar(32) NOT NULL COMMENT '后台管理员账号',
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nickName` varchar(255) NOT NULL,
  `updateTime` int(11) NOT NULL,
  `pwd` char(32) NOT NULL COMMENT '后台管理员密码',
  `real_name` varchar(16) NOT NULL COMMENT '后台管理员姓名',
  `roles` varchar(128) NOT NULL COMMENT '后台管理员权限(menus_id)',
  `last_ip` varchar(16) DEFAULT NULL COMMENT '后台管理员最后一次登录ip',
  `last_time` int(10) UNSIGNED DEFAULT NULL COMMENT '后台管理员最后一次登录时间',
  `create_time` int(10) UNSIGNED NOT NULL COMMENT '后台管理员添加时间',
  `login_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '登录次数',
  `level` tinyint(3) UNSIGNED NOT NULL DEFAULT '1' COMMENT '后台管理员级别',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1' COMMENT '后台管理员状态 1有效0无效',
  `is_del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `headImg` varchar(500) NOT NULL,
  `remark` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='后台管理员表';

--
-- 转存表中的数据 `l_system_user`
--

INSERT INTO `l_system_user` (`id`, `account`, `email`, `name`, `nickName`, `updateTime`, `pwd`, `real_name`, `roles`, `last_ip`, `last_time`, `create_time`, `login_count`, `level`, `status`, `is_del`, `username`, `phone`, `headImg`, `remark`) VALUES
(10000, 'admin', '4504462@qq.com', '管理员', '超级管理员', 1567440664, '00ba7ceab606427071d5d755ea99e976', 'admin', '1', '42.101.64.227', 1573364689, 1567440664, 0, 0, 1, 0, 'admin', '13941832188', 'https://cool-admin-test.oss-cn-shenzhen.aliyuncs.com/20191112/66f601a0-04ed-11ea-a6c3-85aa43fd65db.gif', '这是一个备注');

-- --------------------------------------------------------

--
-- 表的结构 `l_sys_log`
--

CREATE TABLE `l_sys_log` (
  `id` bigint(20) NOT NULL,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `userId` bigint(20) DEFAULT NULL,
  `params` text,
  `action` varchar(100) NOT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `ipAddr` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `l_sys_log`
--

INSERT INTO `l_sys_log` (`id`, `createTime`, `updateTime`, `userId`, `params`, `action`, `ip`, `ipAddr`) VALUES
(1, '2019-11-11 22:07:30.411425', '2019-11-11 22:07:30.411425', 1, '{\"t\":\"1573481250000\"}', '/admin/sys/log/clear', '211.162.236.221', '中国福建厦门'),
(2, '2019-11-11 22:07:30.473566', '2019-11-11 22:07:30.473566', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\",\"t\":\"1573481250000\"}', '/admin/sys/log/page', '211.162.236.221', '中国福建厦门'),
(3, '2019-11-11 22:09:22.967016', '2019-11-11 22:09:22.967016', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573481362000\"}', '/admin/comm/captcha', '123.244.102.124', '中国辽宁朝阳'),
(4, '2019-11-11 22:09:28.089385', '2019-11-11 22:09:28.089385', NULL, '{\"t\":\"1573481368000\"}', '/admin/comm/login', '123.244.102.124', '中国辽宁朝阳'),
(5, '2019-11-11 22:09:28.176367', '2019-11-11 22:09:28.176367', 1, '{\"t\":\"1573481368000\"}', '/admin/comm/person', '123.244.102.124', '中国辽宁朝阳'),
(6, '2019-11-11 22:09:28.251200', '2019-11-11 22:09:28.251200', 1, '{\"t\":\"1573481368000\"}', '/admin/comm/permmenu', '123.244.102.124', '中国辽宁朝阳'),
(7, '2019-11-11 22:10:03.499292', '2019-11-11 22:10:03.499292', 1, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573481403000\"}', '/admin/comm/captcha', '123.244.102.124', '中国辽宁朝阳'),
(8, '2019-11-11 22:10:14.847397', '2019-11-11 22:10:14.847397', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573481414000\"}', '/admin/comm/captcha', '125.67.137.201', '中国四川绵阳'),
(9, '2019-11-11 22:10:23.189275', '2019-11-11 22:10:23.189275', NULL, '{\"t\":\"1573481423000\"}', '/admin/comm/login', '125.67.137.201', '中国四川绵阳'),
(10, '2019-11-11 22:10:23.290526', '2019-11-11 22:10:23.290526', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573481423000\"}', '/admin/comm/captcha', '125.67.137.201', '中国四川绵阳'),
(11, '2019-11-11 22:10:27.577730', '2019-11-11 22:10:27.577730', NULL, '{\"t\":\"1573481427000\"}', '/admin/comm/login', '125.67.137.201', '中国四川绵阳'),
(12, '2019-11-11 22:10:27.660557', '2019-11-11 22:10:27.660557', 1, '{\"t\":\"1573481427000\"}', '/admin/comm/person', '125.67.137.201', '中国四川绵阳'),
(13, '2019-11-11 22:10:27.747155', '2019-11-11 22:10:27.747155', 1, '{\"t\":\"1573481427000\"}', '/admin/comm/permmenu', '125.67.137.201', '中国四川绵阳'),
(14, '2019-11-11 22:11:24.538302', '2019-11-11 22:11:24.538302', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\",\"t\":\"1573481484000\"}', '/admin/sys/user/page', '125.67.137.201', '中国四川绵阳'),
(15, '2019-11-11 22:11:29.500907', '2019-11-11 22:11:29.500907', 1, '{\"t\":\"1573481489000\"}', '/admin/sys/menu/list', '125.67.137.201', '中国四川绵阳'),
(16, '2019-11-11 22:11:55.203257', '2019-11-11 22:11:55.203257', 1, '{\"id\":\"17\",\"t\":\"1573481515000\"}', '/admin/sys/menu/info', '125.67.137.201', '中国四川绵阳'),
(17, '2019-11-11 22:11:55.368157', '2019-11-11 22:11:55.368157', 1, '{\"t\":\"1573481515000\"}', '/admin/sys/menu/list', '125.67.137.201', '中国四川绵阳'),
(18, '2019-11-11 22:12:04.873875', '2019-11-11 22:12:04.873875', 1, '{\"id\":\"18\",\"t\":\"1573481524000\"}', '/admin/sys/menu/info', '125.67.137.201', '中国四川绵阳'),
(19, '2019-11-11 22:12:04.876790', '2019-11-11 22:12:04.876790', 1, '{\"t\":\"1573481524000\"}', '/admin/sys/menu/list', '125.67.137.201', '中国四川绵阳'),
(20, '2019-11-11 22:12:07.307984', '2019-11-11 22:12:07.307984', 1, '{\"t\":\"1573481528000\"}', '/admin/comm/permmenu', '117.25.244.2', '中国福建厦门'),
(21, '2019-11-11 22:12:07.314604', '2019-11-11 22:12:07.314604', 1, '{\"t\":\"1573481528000\"}', '/admin/comm/person', '117.25.244.2', '中国福建厦门'),
(22, '2019-11-11 22:13:07.430728', '2019-11-11 22:13:07.430728', 1, '{\"t\":\"1573481587000\"}', '/admin/sys/menu/list', '125.67.137.201', '中国四川绵阳'),
(23, '2019-11-11 22:13:07.433283', '2019-11-11 22:13:07.433283', 1, '{\"id\":\"13\",\"t\":\"1573481587000\"}', '/admin/sys/menu/info', '125.67.137.201', '中国四川绵阳'),
(24, '2019-11-11 22:13:16.972208', '2019-11-11 22:13:16.972208', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\",\"t\":\"1573481596000\"}', '/admin/sys/role/page', '125.67.137.201', '中国四川绵阳'),
(25, '2019-11-11 22:13:21.532517', '2019-11-11 22:13:21.532517', 1, '{\"id\":\"28\",\"t\":\"1573481601000\"}', '/admin/sys/role/info', '125.67.137.201', '中国四川绵阳'),
(26, '2019-11-11 22:13:21.582772', '2019-11-11 22:13:21.582772', 1, '{\"t\":\"1573481601000\"}', '/admin/sys/menu/list', '125.67.137.201', '中国四川绵阳'),
(27, '2019-11-11 22:13:43.564010', '2019-11-11 22:13:43.564010', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\",\"t\":\"1573481623000\"}', '/admin/sys/log/page', '125.67.137.201', '中国四川绵阳'),
(28, '2019-11-11 22:15:25.133727', '2019-11-11 22:15:25.133727', 1, '{\"t\":\"1573481724000\"}', '/admin/comm/permmenu', '140.243.39.70', '中国福建'),
(29, '2019-11-11 22:15:25.145249', '2019-11-11 22:15:25.145249', 1, '{\"t\":\"1573481724000\"}', '/admin/comm/person', '140.243.39.70', '中国福建'),
(30, '2019-11-11 22:20:10.762853', '2019-11-11 22:20:10.762853', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573482010000\"}', '/admin/comm/captcha', '117.174.102.234', '中国四川成都'),
(31, '2019-11-11 22:20:11.369393', '2019-11-11 22:20:11.369393', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573482010000\"}', '/admin/comm/captcha', '117.174.102.234', '中国四川成都'),
(32, '2019-11-11 22:20:13.765491', '2019-11-11 22:20:13.765491', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573482013000\"}', '/admin/comm/captcha', '117.174.102.234', '中国四川成都'),
(33, '2019-11-11 22:20:14.652402', '2019-11-11 22:20:14.652402', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573482014000\"}', '/admin/comm/captcha', '117.174.102.234', '中国四川成都'),
(34, '2019-11-11 22:20:15.684468', '2019-11-11 22:20:15.684468', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573482015000\"}', '/admin/comm/captcha', '117.174.102.234', '中国四川成都'),
(35, '2019-11-11 22:20:15.782645', '2019-11-11 22:20:15.782645', NULL, '{\"height\":\"40\",\"width\":\"120\",\"t\":\"1573482015000\"}', '/admin/comm/captcha', '117.174.102.234', '中国四川成都'),
(36, '2019-11-11 22:22:35.373014', '2019-11-11 22:22:35.373014', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\",\"t\":\"1573482154000\"}', '/admin/sys/log/page', '211.162.236.221', '中国福建厦门'),
(37, '2019-11-11 22:22:38.553584', '2019-11-11 22:22:38.553584', 1, '{\"t\":\"1573482158000\"}', '/admin/comm/person', '211.162.236.221', '中国福建厦门'),
(38, '2019-11-11 22:22:38.553875', '2019-11-11 22:22:38.553875', 1, '{\"t\":\"1573482158000\"}', '/admin/comm/permmenu', '211.162.236.221', '中国福建厦门'),
(39, '2019-11-11 22:22:38.740848', '2019-11-11 22:22:38.740848', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\",\"t\":\"1573482158000\"}', '/admin/sys/log/page', '211.162.236.221', '中国福建厦门'),
(40, '2019-11-11 22:22:42.189859', '2019-11-11 22:22:42.189859', 1, '{\"page\":\"1\",\"size\":\"20\",\"sort\":\"desc\",\"order\":\"createTime\",\"t\":\"1573482162000\"}', '/admin/sys/user/page', '211.162.236.221', '中国福建厦门');

-- --------------------------------------------------------

--
-- 表的结构 `l_sys_menu`
--

CREATE TABLE `l_sys_menu` (
  `id` bigint(20) NOT NULL,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `parentId` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `router` varchar(255) DEFAULT NULL,
  `perms` varchar(255) DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `orderNum` int(11) NOT NULL DEFAULT '0',
  `viewPath` varchar(255) DEFAULT NULL,
  `keepAlive` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `l_sys_menu`
--

INSERT INTO `l_sys_menu` (`id`, `createTime`, `updateTime`, `parentId`, `name`, `router`, `perms`, `type`, `icon`, `orderNum`, `viewPath`, `keepAlive`) VALUES
(1, '2019-09-11 11:14:44.000000', '2019-11-08 02:04:30.000000', NULL, '工作台', '/', NULL, 0, 'icon-gongzuotai', 1, NULL, 1),
(2, '2019-09-11 11:14:47.000000', '2019-09-18 15:37:18.000000', NULL, '系统', '/sys', NULL, 0, 'icon-systemfill', 2, NULL, 1),
(8, '2019-09-11 23:19:57.053631', '2019-09-12 15:53:39.000000', 27, '菜单列表', '/sys/menu', NULL, 1, 'icon-menu', 2, 'views/system/menu/index.vue', 1),
(10, '2019-09-12 00:19:27.325922', '2019-09-12 00:19:27.325922', 8, '新增', NULL, 'sys:menu:add', 2, NULL, 1, NULL, 0),
(11, '2019-09-12 00:19:51.101514', '2019-09-12 00:19:51.101514', 8, '删除', NULL, 'sys:menu:delete', 2, NULL, 2, NULL, 0),
(12, '2019-09-12 00:20:05.150021', '2019-09-12 00:20:05.150021', 8, '修改', NULL, 'sys:menu:update', 2, NULL, 3, NULL, 0),
(13, '2019-09-12 00:20:19.341206', '2019-09-12 00:20:19.341206', 8, '查询', NULL, 'sys:menu:page,sys:menu:list,sys:menu:info', 2, NULL, 4, NULL, 0),
(17, '2019-09-12 00:31:25.334489', '2019-09-15 23:45:57.000000', 27, '用户列表', '/sys/user', NULL, 1, 'icon-user', 1, 'views/system/user/index.vue', 1),
(18, '2019-09-12 00:32:21.000000', '2019-11-09 22:22:19.000000', 17, '新增', NULL, 'sys:user:add', 2, NULL, 1, NULL, 0),
(19, '2019-09-12 00:32:34.578645', '2019-09-12 00:32:34.578645', 17, '删除', NULL, 'sys:user:delete', 2, NULL, 2, NULL, 0),
(20, '2019-09-12 00:32:47.291027', '2019-09-12 00:32:47.291027', 17, '修改', NULL, 'sys:user:update', 2, NULL, 3, NULL, 0),
(21, '2019-09-12 00:33:00.053653', '2019-09-12 00:33:00.053653', 17, '查询', NULL, 'sys:user:page,sys:user:list,sys:user:info', 2, NULL, 4, NULL, 0),
(22, '2019-09-12 00:34:01.141743', '2019-09-15 23:47:27.000000', 27, '角色列表', '/sys/role', NULL, 1, 'icon-role', 3, 'views/system/role/index.vue', 1),
(23, '2019-09-12 00:34:23.459460', '2019-09-12 00:34:23.459460', 22, '新增', NULL, 'sys:role:add', 2, NULL, 1, NULL, 0),
(24, '2019-09-12 00:34:40.523471', '2019-09-12 00:34:40.523471', 22, '删除', NULL, 'sys:role:delete', 2, NULL, 2, NULL, 0),
(25, '2019-09-12 00:34:53.306692', '2019-09-12 00:34:53.306692', 22, '修改', NULL, 'sys:role:update', 2, NULL, 3, NULL, 0),
(26, '2019-09-12 00:35:05.024307', '2019-09-12 00:35:05.024307', 22, '查询', NULL, 'sys:role:page,sys:role:list,sys:role:info', 2, NULL, 4, NULL, 0),
(27, '2019-09-12 15:52:44.342387', '2019-09-15 22:11:56.000000', 2, '权限管理', NULL, NULL, 0, 'icon-permission', 1, NULL, 0),
(28, '2019-09-12 17:19:16.827254', '2019-09-15 22:12:08.000000', 2, '系统监控', NULL, NULL, 0, 'icon-monitor', 2, NULL, 0),
(29, '2019-09-12 17:35:51.003534', '2019-09-24 10:29:53.000000', 28, '日志列表', '/sys/log', '1', 1, 'icon-log', 1, 'views/system/log/index.vue', 0),
(30, '2019-09-12 17:37:03.519372', '2019-09-12 17:56:50.000000', 29, '权限', NULL, 'sys:log:page,sys:log:clear', 2, NULL, 1, NULL, 0),
(38, '2019-11-02 18:53:58.469695', '2019-11-02 18:53:58.469695', 8, '11111', NULL, NULL, 0, NULL, 1, NULL, 1),
(43, '2019-11-07 14:22:34.000000', '2019-11-09 22:11:18.000000', 45, 'crud 示例', '/crud', NULL, 1, 'icon-radioboxfill', 1, 'views/test/crud.vue', 1),
(45, '2019-11-07 22:36:57.000000', '2019-11-11 15:21:10.000000', 1, '组件库', 'app', NULL, 0, 'layui-icon-home', 2, NULL, 1),
(46, '2019-11-07 22:39:30.000000', '2019-11-07 22:43:05.000000', 45, 'Froala富文本', '/editor-froala', NULL, 1, 'icon-radioboxfill', 2, 'views/test/editor-froala.vue', 1),
(47, '2019-11-08 09:35:08.000000', '2019-11-08 19:44:44.000000', NULL, '微信设置', '/tutorial', NULL, 0, 'icon-weibiaoti4', 3, NULL, 1),
(48, '2019-11-08 09:35:53.000000', '2019-11-08 09:37:02.000000', 47, '微信授权信息', '/tutorial/doc', NULL, 1, 'icon-favorfill', 0, 'https://docs.cool-admin.com/#/', 1),
(49, '2019-11-09 22:11:13.000000', '2019-11-09 22:11:34.000000', 45, 'Quill富文本', '/editor-quill', NULL, 1, 'icon-radioboxfill', 3, 'views/test/editor-quill.vue', 1),
(51, '2019-11-10 21:57:14.000000', '2019-11-11 15:19:04.000000', 2, '测试404页面', '/test', NULL, 1, 'icon-newfill', 10, NULL, 1),
(53, '2019-11-11 15:21:00.457911', '2019-11-11 15:21:00.457911', 1, '组件预览', '/ui-components', NULL, 1, 'icon-activityfill', 1, 'views/workbench/ui-components', 1),
(54, '2019-11-13 11:59:50.376751', '2019-11-13 11:59:50.376751', 47, '小程序设置', ' /tutorial/doc', NULL, 1, 'icon-business', 2, '/tutorial/doc', 1);

-- --------------------------------------------------------

--
-- 表的结构 `l_sys_role`
--

CREATE TABLE `l_sys_role` (
  `id` bigint(20) NOT NULL,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `l_sys_role`
--

INSERT INTO `l_sys_role` (`id`, `createTime`, `updateTime`, `name`, `remark`, `label`) VALUES
(1, '2019-09-11 23:04:35.193681', '2019-09-11 23:04:35.193681', '超管', NULL, NULL),
(27, '2019-11-07 02:35:13.129487', '2019-11-10 08:57:09.000000', 'testRole', NULL, 'testRole'),
(28, '2019-11-11 10:21:11.192497', '2019-11-11 10:21:11.192497', '测试', NULL, '2'),
(29, '2019-11-11 15:15:37.181624', '2019-11-11 15:15:37.181624', 'HI 标题', NULL, 'hititle');

-- --------------------------------------------------------

--
-- 表的结构 `l_sys_role_menu`
--

CREATE TABLE `l_sys_role_menu` (
  `id` bigint(20) NOT NULL,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `roleId` bigint(20) NOT NULL,
  `menuId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `l_sys_role_menu`
--

INSERT INTO `l_sys_role_menu` (`id`, `createTime`, `updateTime`, `roleId`, `menuId`) VALUES
(89, '2019-09-24 10:48:52.467519', '2019-09-24 10:48:52.467519', 3, 1),
(90, '2019-09-24 10:48:52.557034', '2019-09-24 10:48:52.557034', 3, 34),
(91, '2019-09-24 10:48:52.660929', '2019-09-24 10:48:52.660929', 3, 2),
(92, '2019-09-24 10:48:52.777932', '2019-09-24 10:48:52.777932', 3, 27),
(93, '2019-09-24 10:48:52.879811', '2019-09-24 10:48:52.879811', 3, 17),
(94, '2019-09-24 10:48:52.970470', '2019-09-24 10:48:52.970470', 3, 18),
(95, '2019-09-24 10:48:53.076595', '2019-09-24 10:48:53.076595', 3, 19),
(96, '2019-09-24 10:48:53.197894', '2019-09-24 10:48:53.197894', 3, 20),
(97, '2019-09-24 10:48:53.315433', '2019-09-24 10:48:53.315433', 3, 21),
(98, '2019-09-24 10:48:53.443267', '2019-09-24 10:48:53.443267', 3, 8),
(99, '2019-09-24 10:48:53.545574', '2019-09-24 10:48:53.545574', 3, 10),
(100, '2019-09-24 10:48:53.635436', '2019-09-24 10:48:53.635436', 3, 11),
(101, '2019-09-24 10:48:53.739326', '2019-09-24 10:48:53.739326', 3, 12),
(102, '2019-09-24 10:48:53.851149', '2019-09-24 10:48:53.851149', 3, 13),
(103, '2019-09-24 10:48:53.967937', '2019-09-24 10:48:53.967937', 3, 22),
(104, '2019-09-24 10:48:54.095735', '2019-09-24 10:48:54.095735', 3, 23),
(105, '2019-09-24 10:48:54.222146', '2019-09-24 10:48:54.222146', 3, 24),
(106, '2019-09-24 10:48:54.348489', '2019-09-24 10:48:54.348489', 3, 25),
(107, '2019-09-24 10:48:54.460685', '2019-09-24 10:48:54.460685', 3, 26),
(108, '2019-09-24 10:48:54.556885', '2019-09-24 10:48:54.556885', 3, 28),
(109, '2019-09-24 10:48:54.647511', '2019-09-24 10:48:54.647511', 3, 29),
(110, '2019-09-24 10:48:54.756336', '2019-09-24 10:48:54.756336', 3, 30),
(111, '2019-09-24 10:48:54.873173', '2019-09-24 10:48:54.873173', 3, 3),
(112, '2019-09-24 10:48:54.998758', '2019-09-24 10:48:54.998758', 3, 35),
(113, '2019-09-24 10:49:03.229459', '2019-09-24 10:49:03.229459', 2, 1),
(114, '2019-09-24 10:49:03.340162', '2019-09-24 10:49:03.340162', 2, 34),
(115, '2019-09-24 10:49:03.458236', '2019-09-24 10:49:03.458236', 2, 2),
(116, '2019-09-24 10:49:03.577590', '2019-09-24 10:49:03.577590', 2, 27),
(117, '2019-09-24 10:49:03.691109', '2019-09-24 10:49:03.691109', 2, 17),
(118, '2019-09-24 10:49:03.802532', '2019-09-24 10:49:03.802532', 2, 18),
(119, '2019-09-24 10:49:03.907959', '2019-09-24 10:49:03.907959', 2, 19),
(120, '2019-09-24 10:49:04.003739', '2019-09-24 10:49:04.003739', 2, 20),
(121, '2019-09-24 10:49:04.107757', '2019-09-24 10:49:04.107757', 2, 21),
(122, '2019-09-24 10:49:04.227512', '2019-09-24 10:49:04.227512', 2, 8),
(123, '2019-09-24 10:49:04.341716', '2019-09-24 10:49:04.341716', 2, 10),
(124, '2019-09-24 10:49:04.452449', '2019-09-24 10:49:04.452449', 2, 11),
(125, '2019-09-24 10:49:04.557443', '2019-09-24 10:49:04.557443', 2, 12),
(126, '2019-09-24 10:49:04.653254', '2019-09-24 10:49:04.653254', 2, 13),
(127, '2019-09-24 10:49:04.756598', '2019-09-24 10:49:04.756598', 2, 22),
(128, '2019-09-24 10:49:04.876996', '2019-09-24 10:49:04.876996', 2, 23),
(129, '2019-09-24 10:49:04.990503', '2019-09-24 10:49:04.990503', 2, 24),
(130, '2019-09-24 10:49:05.101961', '2019-09-24 10:49:05.101961', 2, 25),
(131, '2019-09-24 10:49:05.206586', '2019-09-24 10:49:05.206586', 2, 26),
(132, '2019-09-24 10:49:05.302415', '2019-09-24 10:49:05.302415', 2, 28),
(133, '2019-09-24 10:49:05.407244', '2019-09-24 10:49:05.407244', 2, 29),
(134, '2019-09-24 10:49:05.526579', '2019-09-24 10:49:05.526579', 2, 30),
(135, '2019-09-24 10:49:05.628459', '2019-09-24 10:49:05.628459', 2, 3),
(136, '2019-09-24 10:49:05.744732', '2019-09-24 10:49:05.744732', 2, 35),
(137, '2019-09-25 00:41:21.138065', '2019-09-25 00:41:21.138065', 18, 1),
(138, '2019-09-25 00:41:21.144458', '2019-09-25 00:41:21.144458', 18, 34),
(867, '2019-10-12 16:15:06.167767', '2019-10-12 16:15:06.167767', 24, 34),
(868, '2019-10-12 16:15:06.172573', '2019-10-12 16:15:06.172573', 24, 2),
(869, '2019-10-12 16:15:06.176941', '2019-10-12 16:15:06.176941', 24, 27),
(870, '2019-10-12 16:15:06.182146', '2019-10-12 16:15:06.182146', 24, 17),
(871, '2019-10-12 16:15:06.186409', '2019-10-12 16:15:06.186409', 24, 18),
(872, '2019-10-12 16:15:06.190788', '2019-10-12 16:15:06.190788', 24, 19),
(873, '2019-10-12 16:15:06.194922', '2019-10-12 16:15:06.194922', 24, 20),
(874, '2019-10-12 16:15:06.199735', '2019-10-12 16:15:06.199735', 24, 21),
(875, '2019-10-12 16:15:06.205756', '2019-10-12 16:15:06.205756', 24, 8),
(876, '2019-10-12 16:15:06.211841', '2019-10-12 16:15:06.211841', 24, 10),
(877, '2019-10-12 16:15:06.216456', '2019-10-12 16:15:06.216456', 24, 11),
(878, '2019-10-12 16:15:06.220695', '2019-10-12 16:15:06.220695', 24, 12),
(879, '2019-10-12 16:15:06.224822', '2019-10-12 16:15:06.224822', 24, 13),
(880, '2019-10-12 16:15:06.233621', '2019-10-12 16:15:06.233621', 24, 22),
(881, '2019-10-12 16:15:06.239309', '2019-10-12 16:15:06.239309', 24, 23),
(882, '2019-10-12 16:15:06.243481', '2019-10-12 16:15:06.243481', 24, 24),
(883, '2019-10-12 16:15:06.247731', '2019-10-12 16:15:06.247731', 24, 25),
(884, '2019-10-12 16:15:06.252832', '2019-10-12 16:15:06.252832', 24, 26),
(885, '2019-10-12 16:15:06.257061', '2019-10-12 16:15:06.257061', 24, 28),
(886, '2019-10-12 16:15:06.261862', '2019-10-12 16:15:06.261862', 24, 29),
(887, '2019-10-12 16:15:06.267708', '2019-10-12 16:15:06.267708', 24, 30),
(888, '2019-10-12 16:15:06.274844', '2019-10-12 16:15:06.274844', 24, 3),
(889, '2019-10-12 16:15:06.279153', '2019-10-12 16:15:06.279153', 24, 35),
(890, '2019-10-12 16:15:06.283420', '2019-10-12 16:15:06.283420', 24, 1),
(891, '2019-11-05 22:14:16.056755', '2019-11-05 22:14:16.056755', 23, 34),
(892, '2019-11-05 22:14:16.063030', '2019-11-05 22:14:16.063030', 23, 17),
(893, '2019-11-05 22:14:16.069977', '2019-11-05 22:14:16.069977', 23, 18),
(894, '2019-11-05 22:14:16.078227', '2019-11-05 22:14:16.078227', 23, 19),
(895, '2019-11-05 22:14:16.091438', '2019-11-05 22:14:16.091438', 23, 20),
(896, '2019-11-05 22:14:16.096875', '2019-11-05 22:14:16.096875', 23, 21),
(897, '2019-11-05 22:14:16.103069', '2019-11-05 22:14:16.103069', 23, 10),
(898, '2019-11-05 22:14:16.109508', '2019-11-05 22:14:16.109508', 23, 11),
(899, '2019-11-05 22:14:16.114690', '2019-11-05 22:14:16.114690', 23, 12),
(900, '2019-11-05 22:14:16.124765', '2019-11-05 22:14:16.124765', 23, 13),
(901, '2019-11-05 22:14:16.136467', '2019-11-05 22:14:16.136467', 23, 22),
(902, '2019-11-05 22:14:16.145850', '2019-11-05 22:14:16.145850', 23, 23),
(903, '2019-11-05 22:14:16.151799', '2019-11-05 22:14:16.151799', 23, 24),
(904, '2019-11-05 22:14:16.156997', '2019-11-05 22:14:16.156997', 23, 25),
(905, '2019-11-05 22:14:16.162013', '2019-11-05 22:14:16.162013', 23, 26),
(906, '2019-11-05 22:14:16.166897', '2019-11-05 22:14:16.166897', 23, 28),
(907, '2019-11-05 22:14:16.172890', '2019-11-05 22:14:16.172890', 23, 29),
(908, '2019-11-05 22:14:16.179600', '2019-11-05 22:14:16.179600', 23, 30),
(909, '2019-11-05 22:14:16.184456', '2019-11-05 22:14:16.184456', 23, 1),
(910, '2019-11-05 22:14:16.189343', '2019-11-05 22:14:16.189343', 23, 2),
(911, '2019-11-05 22:14:16.195251', '2019-11-05 22:14:16.195251', 23, 27),
(912, '2019-11-05 22:14:16.200053', '2019-11-05 22:14:16.200053', 23, 8),
(913, '2019-11-05 22:14:18.192401', '2019-11-05 22:14:18.192401', 22, 34),
(914, '2019-11-05 22:14:18.197334', '2019-11-05 22:14:18.197334', 22, 21),
(915, '2019-11-05 22:14:18.202609', '2019-11-05 22:14:18.202609', 22, 3),
(916, '2019-11-05 22:14:18.211358', '2019-11-05 22:14:18.211358', 22, 35),
(917, '2019-11-05 22:14:18.222491', '2019-11-05 22:14:18.222491', 22, 1),
(918, '2019-11-05 22:14:18.227339', '2019-11-05 22:14:18.227339', 22, 2),
(919, '2019-11-05 22:14:18.232034', '2019-11-05 22:14:18.232034', 22, 27),
(920, '2019-11-05 22:14:18.242783', '2019-11-05 22:14:18.242783', 22, 17),
(927, '2019-11-06 16:28:47.239598', '2019-11-06 16:28:47.239598', 26, 18),
(928, '2019-11-06 16:28:47.250806', '2019-11-06 16:28:47.250806', 26, 39),
(929, '2019-11-06 16:28:47.256429', '2019-11-06 16:28:47.256429', 26, 2),
(930, '2019-11-06 16:28:47.261071', '2019-11-06 16:28:47.261071', 26, 27),
(931, '2019-11-06 16:28:47.276814', '2019-11-06 16:28:47.276814', 26, 17),
(932, '2019-11-10 08:57:09.225716', '2019-11-10 08:57:09.225716', 27, 2),
(933, '2019-11-10 08:57:09.233113', '2019-11-10 08:57:09.233113', 27, 27),
(934, '2019-11-10 08:57:09.238001', '2019-11-10 08:57:09.238001', 27, 17),
(935, '2019-11-10 08:57:09.244425', '2019-11-10 08:57:09.244425', 27, 18),
(936, '2019-11-10 08:57:09.249160', '2019-11-10 08:57:09.249160', 27, 19),
(937, '2019-11-10 08:57:09.253545', '2019-11-10 08:57:09.253545', 27, 20),
(938, '2019-11-10 08:57:09.258099', '2019-11-10 08:57:09.258099', 27, 21),
(939, '2019-11-10 08:57:09.262494', '2019-11-10 08:57:09.262494', 27, 8),
(940, '2019-11-10 08:57:09.272118', '2019-11-10 08:57:09.272118', 27, 10),
(941, '2019-11-10 08:57:09.276790', '2019-11-10 08:57:09.276790', 27, 38),
(942, '2019-11-10 08:57:09.281389', '2019-11-10 08:57:09.281389', 27, 11),
(943, '2019-11-10 08:57:09.285795', '2019-11-10 08:57:09.285795', 27, 12),
(944, '2019-11-10 08:57:09.290956', '2019-11-10 08:57:09.290956', 27, 13),
(945, '2019-11-10 08:57:09.295784', '2019-11-10 08:57:09.295784', 27, 22),
(946, '2019-11-10 08:57:09.300214', '2019-11-10 08:57:09.300214', 27, 23),
(947, '2019-11-10 08:57:09.311856', '2019-11-10 08:57:09.311856', 27, 24),
(948, '2019-11-10 08:57:09.317030', '2019-11-10 08:57:09.317030', 27, 25),
(949, '2019-11-10 08:57:09.322118', '2019-11-10 08:57:09.322118', 27, 26),
(950, '2019-11-10 08:57:09.326914', '2019-11-10 08:57:09.326914', 27, 28),
(951, '2019-11-10 08:57:09.331880', '2019-11-10 08:57:09.331880', 27, 29),
(952, '2019-11-10 08:57:09.336407', '2019-11-10 08:57:09.336407', 27, 30);

-- --------------------------------------------------------

--
-- 表的结构 `l_sys_user`
--

CREATE TABLE `l_sys_user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `passwordV` int(11) NOT NULL DEFAULT '1',
  `nickName` varchar(255) DEFAULT NULL,
  `headImg` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `username` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `l_sys_user`
--

INSERT INTO `l_sys_user` (`id`, `name`, `password`, `passwordV`, `nickName`, `headImg`, `email`, `remark`, `status`, `createTime`, `updateTime`, `username`, `phone`) VALUES
(1, '超级管理员', 'e10adc3949ba59abbe56e057f20f883e', 1, '超管', 'https://cool-admin-test.oss-cn-shenzhen.aliyuncs.com/20191110/8f2b8440-038c-11ea-a7ce-13d8147e1490.jpg', '123456@qq.com', '备注', 1, '2019-06-25 10:20:20.600461', '2019-11-11 15:17:24.000000', 'admin', '18000000000'),
(16, 'test', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, NULL, NULL, NULL, 1, '2019-11-11 10:37:43.851039', '2019-11-11 11:17:25.000000', '测试', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `l_sys_user_role`
--

CREATE TABLE `l_sys_user_role` (
  `id` bigint(20) NOT NULL,
  `createTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updateTime` datetime(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `userId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `l_sys_user_role`
--

INSERT INTO `l_sys_user_role` (`id`, `createTime`, `updateTime`, `userId`, `roleId`) VALUES
(1, '2019-09-11 23:05:18.890144', '2019-09-11 23:05:18.890144', 1, 1),
(2, '2019-09-25 10:11:32.665042', '2019-09-25 10:11:32.665042', 2, 1),
(5, '2019-10-12 17:21:20.139560', '2019-10-12 17:21:20.139560', 3, 22),
(30, '2019-11-01 14:20:10.865935', '2019-11-01 14:20:10.865935', 5, 22),
(31, '2019-11-01 14:20:10.872003', '2019-11-01 14:20:10.872003', 5, 1),
(32, '2019-11-01 14:20:10.877348', '2019-11-01 14:20:10.877348', 5, 24),
(37, '2019-11-02 17:11:07.717747', '2019-11-02 17:11:07.717747', 4, 1),
(38, '2019-11-02 17:11:07.722790', '2019-11-02 17:11:07.722790', 4, 22),
(39, '2019-11-02 17:11:07.727410', '2019-11-02 17:11:07.727410', 4, 23),
(40, '2019-11-02 17:11:07.735471', '2019-11-02 17:11:07.735471', 4, 24),
(44, '2019-11-04 17:50:35.158438', '2019-11-04 17:50:35.158438', 6, 22),
(45, '2019-11-04 17:50:35.163856', '2019-11-04 17:50:35.163856', 6, 23),
(51, '2019-11-05 22:35:14.306468', '2019-11-05 22:35:14.306468', 7, 22),
(55, '2019-11-06 00:41:10.225544', '2019-11-06 00:41:10.225544', 9, 23),
(56, '2019-11-06 00:41:10.230733', '2019-11-06 00:41:10.230733', 9, 22),
(57, '2019-11-06 00:41:10.235927', '2019-11-06 00:41:10.235927', 9, 25),
(58, '2019-11-06 00:41:10.240702', '2019-11-06 00:41:10.240702', 9, 1),
(59, '2019-11-06 00:47:44.162575', '2019-11-06 00:47:44.162575', 10, 22),
(60, '2019-11-06 00:47:44.167694', '2019-11-06 00:47:44.167694', 10, 23),
(64, '2019-11-07 14:12:53.451430', '2019-11-07 14:12:53.451430', 12, 1),
(71, '2019-11-10 08:58:15.413834', '2019-11-10 08:58:15.413834', 14, 27),
(76, '2019-11-11 09:35:55.469018', '2019-11-11 09:35:55.469018', 13, 1),
(77, '2019-11-11 09:35:55.474682', '2019-11-11 09:35:55.474682', 13, 27),
(78, '2019-11-11 10:22:34.919093', '2019-11-11 10:22:34.919093', 15, 27),
(79, '2019-11-11 10:22:34.926909', '2019-11-11 10:22:34.926909', 15, 28),
(84, '2019-11-11 11:35:14.718204', '2019-11-11 11:35:14.718204', 16, 1),
(85, '2019-11-11 11:35:14.723552', '2019-11-11 11:35:14.723552', 16, 27),
(86, '2019-11-11 11:35:14.773011', '2019-11-11 11:35:14.773011', 16, 28);

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20181113071924, 'CreateRulesTable', '2019-11-09 12:32:32', '2019-11-09 12:32:32', 0);

--
-- 转储表的索引
--

--
-- 表的索引 `l_rules`
--
ALTER TABLE `l_rules`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `l_system_user`
--
ALTER TABLE `l_system_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 表的索引 `l_sys_log`
--
ALTER TABLE `l_sys_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_7217d5c9de1b05ce4ad42ecbee` (`createTime`),
  ADD KEY `IDX_ff05f06b91d250e91bb4232163` (`userId`),
  ADD KEY `IDX_7348bae9165c893fc91281b826` (`action`),
  ADD KEY `IDX_b90847f09ea57036ce3ff8608a` (`ip`),
  ADD KEY `IDX_5a45ffff94248c8d1b4fa6a482` (`ipAddr`);

--
-- 表的索引 `l_sys_menu`
--
ALTER TABLE `l_sys_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1616b35781fbecc494f496498f` (`createTime`);

--
-- 表的索引 `l_sys_role`
--
ALTER TABLE `l_sys_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_223de54d6badbe43a5490450c3` (`name`),
  ADD UNIQUE KEY `IDX_f2d07943355da93c3a8a1c411a` (`label`),
  ADD KEY `IDX_77917ed69a116ebf458c681829` (`createTime`);

--
-- 表的索引 `l_sys_role_menu`
--
ALTER TABLE `l_sys_role_menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_84d8a9d8befebc08fb3be08f1a` (`createTime`);

--
-- 表的索引 `l_sys_user`
--
ALTER TABLE `l_sys_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `IDX_9e7164b2f1ea1348bc0eb0a7da` (`username`),
  ADD KEY `IDX_167ca903c7c3418b8a4376e1a4` (`createTime`),
  ADD KEY `IDX_7bef5cdb09432b1dfc46a063ce` (`phone`);

--
-- 表的索引 `l_sys_user_role`
--
ALTER TABLE `l_sys_user_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_56d79fdd5342d2e35d7d9fec02` (`createTime`);

--
-- 表的索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`version`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `l_rules`
--
ALTER TABLE `l_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- 使用表AUTO_INCREMENT `l_system_user`
--
ALTER TABLE `l_system_user`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '后台管理员表ID', AUTO_INCREMENT=10002;

--
-- 使用表AUTO_INCREMENT `l_sys_log`
--
ALTER TABLE `l_sys_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- 使用表AUTO_INCREMENT `l_sys_menu`
--
ALTER TABLE `l_sys_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- 使用表AUTO_INCREMENT `l_sys_role`
--
ALTER TABLE `l_sys_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- 使用表AUTO_INCREMENT `l_sys_role_menu`
--
ALTER TABLE `l_sys_role_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=953;

--
-- 使用表AUTO_INCREMENT `l_sys_user`
--
ALTER TABLE `l_sys_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- 使用表AUTO_INCREMENT `l_sys_user_role`
--
ALTER TABLE `l_sys_user_role`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
