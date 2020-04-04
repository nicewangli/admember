-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- 主机: 172.31.33.209
-- 生成日期: 2020 年 03 月 30 日 10:45
-- 服务器版本: 1.0.308
-- PHP 版本: 5.3.10-1ubuntu3.26

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `admember`
--

-- --------------------------------------------------------

--
-- 表的结构 `account`
--

CREATE TABLE IF NOT EXISTS `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `chi_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `industry` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_street_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `contract_date` date DEFAULT NULL,
  `rating` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_office` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_alternate` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acct_mgr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `division` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_size` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_set_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `opt` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `nature_of_business` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nature_of_business2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(1) DEFAULT 0,
  `buying_history` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `team_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `visible_for` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1001 ;

--
-- 转存表中的数据 `account`
--

INSERT INTO `account` (`id`, `name`, `chi_name`, `parent_id`, `account_type`, `industry`, `source`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `billing_address_type`, `contract_date`, `rating`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `acct_mgr`, `division`, `category`, `co_size`, `notes`, `import_set_label`, `opt`, `swap`, `nature_of_business`, `nature_of_business2`, `freezed`, `buying_history`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `team_id`, `visible_for`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 'test11', '測試', NULL, NULL, 'IT', '', '', '', '', '', '', '', '', '', NULL, '', '', NULL, '', NULL, '', NULL, '', '', '', '', '', '', '', '', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(2, 'test2', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(3, 'test3', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(4, 'test4', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(5, 'test5', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(6, 'test6', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(7, 'test7', '測試', NULL, NULL, 'IT', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(8, 'test8', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(9, 'test9', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(10, 'test10', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', 'abc', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, '2020-03-08 21:30:15', NULL),
(11, 'test11', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(12, 'test12', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(13, 'test13', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(14, 'test14', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(15, 'test15', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(16, 'test16', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(17, 'test17', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(18, 'test18', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(19, 'test19', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(20, 'test20', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(21, 'test21', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(22, 'test22', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(23, 'test23', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(24, 'test24', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(25, 'test25', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(26, 'test26', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(27, 'test27', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(28, 'test28', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(29, 'test29', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(30, 'test30', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(31, 'test31', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(32, 'test32', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(33, 'test33', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(34, 'test34', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(35, 'test35', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(36, 'test36', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(37, 'test37', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(38, 'test38', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(39, 'test39', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(40, 'test40', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(41, 'test41', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(42, 'test42', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(43, 'test43', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(44, 'test44', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(45, 'test45', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(46, 'test46', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(47, 'test47', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(48, 'test48', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(49, 'test49', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(50, 'test50', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(51, 'test51', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(52, 'test52', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(53, 'test53', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(54, 'test54', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(55, 'test55', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(56, 'test56', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(57, 'test57', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(58, 'test58', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(59, 'test59', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(60, 'test60', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(61, 'test61', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(62, 'test62', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(63, 'test63', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(64, 'test64', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(65, 'test65', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(66, 'test66', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(67, 'test67', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(68, 'test68', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(69, 'test69', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(70, 'test70', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(71, 'test71', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(72, 'test72', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(73, 'test73', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(74, 'test74', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(75, 'test75', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(76, 'test76', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(77, 'test77', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(78, 'test78', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(79, 'test79', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(80, 'test80', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(81, 'test81', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(82, 'test82', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(83, 'test83', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(84, 'test84', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(85, 'test85', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(86, 'test86', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(87, 'test87', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(88, 'test88', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(89, 'test89', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(90, 'test90', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(91, 'test91', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(92, 'test92', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(93, 'test93', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(94, 'test94', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(95, 'test95', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(96, 'test96', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(97, 'test97', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(98, 'test98', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(99, 'test99', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(100, 'test100', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(101, 'test101', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(102, 'test102', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(103, 'test103', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(104, 'test104', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(105, 'test105', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(106, 'test106', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(107, 'test107', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(108, 'test108', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(109, 'test109', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(110, 'test110', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(111, 'test111', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(112, 'test112', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(113, 'test113', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(114, 'test114', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(115, 'test115', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(116, 'test116', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(117, 'test117', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(118, 'test118', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(119, 'test119', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(120, 'test120', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(121, 'test121', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(122, 'test122', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(123, 'test123', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(124, 'test124', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(125, 'test125', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(126, 'test126', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(127, 'test127', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(128, 'test128', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(129, 'test129', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(130, 'test130', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(131, 'test131', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(132, 'test132', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(133, 'test133', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(134, 'test134', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(135, 'test135', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(136, 'test136', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(137, 'test137', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(138, 'test138', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(139, 'test139', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(140, 'test140', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(141, 'test141', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(142, 'test142', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(143, 'test143', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(144, 'test144', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(145, 'test145', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(146, 'test146', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(147, 'test147', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL);
INSERT INTO `account` (`id`, `name`, `chi_name`, `parent_id`, `account_type`, `industry`, `source`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `billing_address_type`, `contract_date`, `rating`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `acct_mgr`, `division`, `category`, `co_size`, `notes`, `import_set_label`, `opt`, `swap`, `nature_of_business`, `nature_of_business2`, `freezed`, `buying_history`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `team_id`, `visible_for`, `create_time`, `update_time`, `delete_time`) VALUES
(148, 'test148', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(149, 'test149', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(150, 'test150', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(151, 'test151', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(152, 'test152', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(153, 'test153', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(154, 'test154', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(155, 'test155', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(156, 'test156', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(157, 'test157', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(158, 'test158', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(159, 'test159', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(160, 'test160', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(161, 'test161', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(162, 'test162', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(163, 'test163', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(164, 'test164', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(165, 'test165', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(166, 'test166', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(167, 'test167', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(168, 'test168', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(169, 'test169', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(170, 'test170', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(171, 'test171', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(172, 'test172', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(173, 'test173', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(174, 'test174', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(175, 'test175', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(176, 'test176', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(177, 'test177', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(178, 'test178', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(179, 'test179', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(180, 'test180', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(181, 'test181', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(182, 'test182', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(183, 'test183', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(184, 'test184', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(185, 'test185', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(186, 'test186', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(187, 'test187', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(188, 'test188', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(189, 'test189', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(190, 'test190', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(191, 'test191', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(192, 'test192', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(193, 'test193', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(194, 'test194', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(195, 'test195', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(196, 'test196', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(197, 'test197', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(198, 'test198', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(199, 'test199', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(200, 'test200', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(201, 'test201', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(202, 'test202', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(203, 'test203', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(204, 'test204', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(205, 'test205', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(206, 'test206', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(207, 'test207', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(208, 'test208', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(209, 'test209', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(210, 'test210', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(211, 'test211', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(212, 'test212', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(213, 'test213', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(214, 'test214', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(215, 'test215', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(216, 'test216', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(217, 'test217', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(218, 'test218', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(219, 'test219', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(220, 'test220', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(221, 'test221', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(222, 'test222', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(223, 'test223', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(224, 'test224', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(225, 'test225', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(226, 'test226', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(227, 'test227', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(228, 'test228', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(229, 'test229', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(230, 'test230', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(231, 'test231', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(232, 'test232', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(233, 'test233', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(234, 'test234', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(235, 'test235', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(236, 'test236', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(237, 'test237', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(238, 'test238', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(239, 'test239', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(240, 'test240', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(241, 'test241', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(242, 'test242', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(243, 'test243', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(244, 'test244', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(245, 'test245', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(246, 'test246', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(247, 'test247', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(248, 'test248', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(249, 'test249', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(250, 'test250', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(251, 'test251', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(252, 'test252', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(253, 'test253', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(254, 'test254', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(255, 'test255', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(256, 'test256', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(257, 'test257', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(258, 'test258', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(259, 'test259', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(260, 'test260', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(261, 'test261', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(262, 'test262', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(263, 'test263', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(264, 'test264', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(265, 'test265', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(266, 'test266', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(267, 'test267', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(268, 'test268', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(269, 'test269', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(270, 'test270', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(271, 'test271', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(272, 'test272', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(273, 'test273', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(274, 'test274', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(275, 'test275', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(276, 'test276', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(277, 'test277', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(278, 'test278', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(279, 'test279', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(280, 'test280', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(281, 'test281', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(282, 'test282', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(283, 'test283', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(284, 'test284', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(285, 'test285', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(286, 'test286', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(287, 'test287', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(288, 'test288', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(289, 'test289', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(290, 'test290', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(291, 'test291', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(292, 'test292', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(293, 'test293', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL);
INSERT INTO `account` (`id`, `name`, `chi_name`, `parent_id`, `account_type`, `industry`, `source`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `billing_address_type`, `contract_date`, `rating`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `acct_mgr`, `division`, `category`, `co_size`, `notes`, `import_set_label`, `opt`, `swap`, `nature_of_business`, `nature_of_business2`, `freezed`, `buying_history`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `team_id`, `visible_for`, `create_time`, `update_time`, `delete_time`) VALUES
(294, 'test294', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(295, 'test295', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(296, 'test296', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(297, 'test297', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(298, 'test298', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(299, 'test299', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(300, 'test300', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(301, 'test301', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(302, 'test302', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(303, 'test303', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(304, 'test304', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(305, 'test305', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(306, 'test306', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(307, 'test307', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(308, 'test308', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(309, 'test309', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(310, 'test310', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(311, 'test311', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(312, 'test312', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(313, 'test313', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(314, 'test314', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(315, 'test315', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(316, 'test316', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(317, 'test317', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(318, 'test318', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(319, 'test319', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(320, 'test320', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(321, 'test321', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(322, 'test322', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(323, 'test323', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(324, 'test324', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(325, 'test325', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(326, 'test326', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(327, 'test327', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(328, 'test328', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(329, 'test329', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(330, 'test330', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(331, 'test331', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(332, 'test332', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(333, 'test333', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(334, 'test334', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(335, 'test335', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(336, 'test336', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(337, 'test337', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(338, 'test338', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(339, 'test339', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(340, 'test340', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(341, 'test341', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(342, 'test342', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(343, 'test343', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(344, 'test344', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(345, 'test345', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(346, 'test346', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(347, 'test347', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(348, 'test348', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(349, 'test349', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(350, 'test350', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(351, 'test351', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(352, 'test352', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(353, 'test353', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(354, 'test354', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(355, 'test355', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(356, 'test356', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(357, 'test357', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(358, 'test358', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(359, 'test359', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(360, 'test360', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(361, 'test361', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(362, 'test362', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(363, 'test363', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(364, 'test364', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(365, 'test365', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(366, 'test366', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(367, 'test367', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(368, 'test368', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(369, 'test369', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(370, 'test370', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(371, 'test371', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(372, 'test372', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(373, 'test373', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(374, 'test374', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(375, 'test375', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(376, 'test376', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(377, 'test377', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(378, 'test378', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(379, 'test379', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(380, 'test380', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(381, 'test381', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(382, 'test382', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(383, 'test383', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(384, 'test384', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(385, 'test385', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(386, 'test386', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(387, 'test387', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(388, 'test388', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(389, 'test389', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(390, 'test390', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(391, 'test391', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(392, 'test392', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(393, 'test393', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(394, 'test394', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(395, 'test395', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(396, 'test396', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(397, 'test397', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(398, 'test398', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(399, 'test399', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(400, 'test400', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(401, 'test401', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(402, 'test402', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(403, 'test403', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(404, 'test404', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(405, 'test405', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(406, 'test406', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(407, 'test407', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(408, 'test408', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(409, 'test409', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(410, 'test410', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(411, 'test411', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(412, 'test412', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(413, 'test413', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(414, 'test414', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(415, 'test415', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(416, 'test416', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(417, 'test417', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(418, 'test418', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(419, 'test419', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(420, 'test420', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(421, 'test421', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(422, 'test422', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(423, 'test423', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(424, 'test424', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(425, 'test425', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(426, 'test426', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(427, 'test427', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(428, 'test428', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(429, 'test429', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(430, 'test430', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(431, 'test431', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(432, 'test432', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(433, 'test433', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(434, 'test434', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(435, 'test435', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(436, 'test436', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(437, 'test437', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(438, 'test438', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(439, 'test439', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL);
INSERT INTO `account` (`id`, `name`, `chi_name`, `parent_id`, `account_type`, `industry`, `source`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `billing_address_type`, `contract_date`, `rating`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `acct_mgr`, `division`, `category`, `co_size`, `notes`, `import_set_label`, `opt`, `swap`, `nature_of_business`, `nature_of_business2`, `freezed`, `buying_history`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `team_id`, `visible_for`, `create_time`, `update_time`, `delete_time`) VALUES
(440, 'test440', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(441, 'test441', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(442, 'test442', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(443, 'test443', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(444, 'test444', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(445, 'test445', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(446, 'test446', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(447, 'test447', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(448, 'test448', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(449, 'test449', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(450, 'test450', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(451, 'test451', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(452, 'test452', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(453, 'test453', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(454, 'test454', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(455, 'test455', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(456, 'test456', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(457, 'test457', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(458, 'test458', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(459, 'test459', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(460, 'test460', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(461, 'test461', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(462, 'test462', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(463, 'test463', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(464, 'test464', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(465, 'test465', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(466, 'test466', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(467, 'test467', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(468, 'test468', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(469, 'test469', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(470, 'test470', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(471, 'test471', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(472, 'test472', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(473, 'test473', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(474, 'test474', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(475, 'test475', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(476, 'test476', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(477, 'test477', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(478, 'test478', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(479, 'test479', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(480, 'test480', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(481, 'test481', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(482, 'test482', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(483, 'test483', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(484, 'test484', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(485, 'test485', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(486, 'test486', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(487, 'test487', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(488, 'test488', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(489, 'test489', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(490, 'test490', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(491, 'test491', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(492, 'test492', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(493, 'test493', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(494, 'test494', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(495, 'test495', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(496, 'test496', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(497, 'test497', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(498, 'test498', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(499, 'test499', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(500, 'test500', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(501, 'test501', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(502, 'test502', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(503, 'test503', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(504, 'test504', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(505, 'test505', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(506, 'test506', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(507, 'test507', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(508, 'test508', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(509, 'test509', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(510, 'test510', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(511, 'test511', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(512, 'test512', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(513, 'test513', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(514, 'test514', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(515, 'test515', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(516, 'test516', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(517, 'test517', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(518, 'test518', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(519, 'test519', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(520, 'test520', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(521, 'test521', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(522, 'test522', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(523, 'test523', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(524, 'test524', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(525, 'test525', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(526, 'test526', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(527, 'test527', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(528, 'test528', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(529, 'test529', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(530, 'test530', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(531, 'test531', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(532, 'test532', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(533, 'test533', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(534, 'test534', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(535, 'test535', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(536, 'test536', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(537, 'test537', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(538, 'test538', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(539, 'test539', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(540, 'test540', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(541, 'test541', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(542, 'test542', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(543, 'test543', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(544, 'test544', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(545, 'test545', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(546, 'test546', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(547, 'test547', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(548, 'test548', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(549, 'test549', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(550, 'test550', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(551, 'test551', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(552, 'test552', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(553, 'test553', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(554, 'test554', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(555, 'test555', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(556, 'test556', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(557, 'test557', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(558, 'test558', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(559, 'test559', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(560, 'test560', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(561, 'test561', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(562, 'test562', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(563, 'test563', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(564, 'test564', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(565, 'test565', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(566, 'test566', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(567, 'test567', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(568, 'test568', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(569, 'test569', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(570, 'test570', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(571, 'test571', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(572, 'test572', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(573, 'test573', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(574, 'test574', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(575, 'test575', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(576, 'test576', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(577, 'test577', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(578, 'test578', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(579, 'test579', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(580, 'test580', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(581, 'test581', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(582, 'test582', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(583, 'test583', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(584, 'test584', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(585, 'test585', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL);
INSERT INTO `account` (`id`, `name`, `chi_name`, `parent_id`, `account_type`, `industry`, `source`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `billing_address_type`, `contract_date`, `rating`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `acct_mgr`, `division`, `category`, `co_size`, `notes`, `import_set_label`, `opt`, `swap`, `nature_of_business`, `nature_of_business2`, `freezed`, `buying_history`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `team_id`, `visible_for`, `create_time`, `update_time`, `delete_time`) VALUES
(586, 'test586', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(587, 'test587', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(588, 'test588', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(589, 'test589', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(590, 'test590', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(591, 'test591', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(592, 'test592', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(593, 'test593', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(594, 'test594', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(595, 'test595', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(596, 'test596', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(597, 'test597', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(598, 'test598', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(599, 'test599', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(600, 'test600', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(601, 'test601', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(602, 'test602', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(603, 'test603', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(604, 'test604', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(605, 'test605', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(606, 'test606', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(607, 'test607', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(608, 'test608', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(609, 'test609', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(610, 'test610', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(611, 'test611', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(612, 'test612', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(613, 'test613', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(614, 'test614', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(615, 'test615', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(616, 'test616', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(617, 'test617', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(618, 'test618', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(619, 'test619', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(620, 'test620', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(621, 'test621', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(622, 'test622', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(623, 'test623', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(624, 'test624', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(625, 'test625', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(626, 'test626', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(627, 'test627', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(628, 'test628', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(629, 'test629', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(630, 'test630', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(631, 'test631', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(632, 'test632', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(633, 'test633', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(634, 'test634', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(635, 'test635', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(636, 'test636', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(637, 'test637', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(638, 'test638', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(639, 'test639', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(640, 'test640', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(641, 'test641', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(642, 'test642', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(643, 'test643', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(644, 'test644', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(645, 'test645', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(646, 'test646', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(647, 'test647', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(648, 'test648', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(649, 'test649', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(650, 'test650', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(651, 'test651', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(652, 'test652', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(653, 'test653', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(654, 'test654', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(655, 'test655', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(656, 'test656', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(657, 'test657', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(658, 'test658', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(659, 'test659', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(660, 'test660', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(661, 'test661', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(662, 'test662', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(663, 'test663', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(664, 'test664', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(665, 'test665', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(666, 'test666', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(667, 'test667', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(668, 'test668', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(669, 'test669', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(670, 'test670', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(671, 'test671', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(672, 'test672', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(673, 'test673', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(674, 'test674', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(675, 'test675', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(676, 'test676', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(677, 'test677', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(678, 'test678', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(679, 'test679', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(680, 'test680', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(681, 'test681', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(682, 'test682', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(683, 'test683', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(684, 'test684', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(685, 'test685', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(686, 'test686', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(687, 'test687', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(688, 'test688', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(689, 'test689', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(690, 'test690', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(691, 'test691', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(692, 'test692', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(693, 'test693', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(694, 'test694', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(695, 'test695', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(696, 'test696', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(697, 'test697', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(698, 'test698', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(699, 'test699', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(700, 'test700', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(701, 'test701', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(702, 'test702', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(703, 'test703', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(704, 'test704', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(705, 'test705', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(706, 'test706', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(707, 'test707', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(708, 'test708', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(709, 'test709', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(710, 'test710', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(711, 'test711', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(712, 'test712', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(713, 'test713', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(714, 'test714', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(715, 'test715', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(716, 'test716', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(717, 'test717', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(718, 'test718', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(719, 'test719', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(720, 'test720', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(721, 'test721', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(722, 'test722', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(723, 'test723', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(724, 'test724', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(725, 'test725', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(726, 'test726', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(727, 'test727', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(728, 'test728', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(729, 'test729', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(730, 'test730', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(731, 'test731', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL);
INSERT INTO `account` (`id`, `name`, `chi_name`, `parent_id`, `account_type`, `industry`, `source`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `billing_address_type`, `contract_date`, `rating`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `acct_mgr`, `division`, `category`, `co_size`, `notes`, `import_set_label`, `opt`, `swap`, `nature_of_business`, `nature_of_business2`, `freezed`, `buying_history`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `team_id`, `visible_for`, `create_time`, `update_time`, `delete_time`) VALUES
(732, 'test732', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(733, 'test733', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(734, 'test734', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(735, 'test735', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(736, 'test736', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(737, 'test737', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(738, 'test738', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(739, 'test739', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(740, 'test740', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(741, 'test741', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(742, 'test742', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(743, 'test743', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(744, 'test744', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(745, 'test745', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(746, 'test746', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(747, 'test747', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(748, 'test748', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(749, 'test749', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(750, 'test750', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(751, 'test751', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(752, 'test752', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(753, 'test753', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(754, 'test754', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(755, 'test755', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(756, 'test756', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(757, 'test757', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(758, 'test758', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(759, 'test759', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(760, 'test760', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(761, 'test761', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(762, 'test762', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(763, 'test763', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(764, 'test764', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(765, 'test765', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(766, 'test766', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(767, 'test767', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(768, 'test768', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(769, 'test769', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(770, 'test770', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(771, 'test771', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(772, 'test772', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(773, 'test773', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(774, 'test774', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(775, 'test775', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(776, 'test776', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(777, 'test777', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(778, 'test778', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(779, 'test779', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(780, 'test780', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(781, 'test781', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(782, 'test782', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(783, 'test783', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(784, 'test784', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(785, 'test785', '測試', NULL, NULL, 'IT', NULL, '', '', '', '', '', '', '', '', NULL, NULL, '', NULL, NULL, NULL, '', NULL, '', NULL, NULL, NULL, '', '', '', NULL, NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(786, 'test786', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(787, 'test787', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(788, 'test788', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(789, 'test789', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(790, 'test790', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(791, 'test791', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(792, 'test792', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(793, 'test793', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(794, 'test794', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(795, 'test795', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(796, 'test796', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(797, 'test797', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(798, 'test798', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(799, 'test799', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(800, 'test800', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(801, 'test801', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(802, 'test802', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(803, 'test803', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(804, 'test804', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(805, 'test805', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(806, 'test806', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(807, 'test807', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(808, 'test808', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(809, 'test809', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(810, 'test810', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(811, 'test811', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(812, 'test812', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(813, 'test813', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(814, 'test814', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(815, 'test815', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(816, 'test816', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(817, 'test817', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(818, 'test818', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(819, 'test819', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(820, 'test820', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(821, 'test821', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(822, 'test822', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(823, 'test823', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(824, 'test824', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(825, 'test825', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(826, 'test826', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(827, 'test827', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(828, 'test828', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(829, 'test829', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(830, 'test830', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(831, 'test831', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(832, 'test832', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(833, 'test833', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(834, 'test834', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(835, 'test835', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(836, 'test836', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(837, 'test837', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(838, 'test838', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(839, 'test839', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(840, 'test840', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(841, 'test841', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(842, 'test842', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(843, 'test843', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(844, 'test844', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(845, 'test845', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(846, 'test846', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(847, 'test847', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(848, 'test848', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(849, 'test849', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(850, 'test850', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(851, 'test851', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(852, 'test852', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(853, 'test853', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(854, 'test854', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(855, 'test855', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(856, 'test856', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(857, 'test857', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(858, 'test858', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(859, 'test859', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(860, 'test860', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(861, 'test861', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(862, 'test862', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(863, 'test863', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(864, 'test864', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(865, 'test865', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(866, 'test866', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(867, 'test867', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(868, 'test868', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(869, 'test869', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(870, 'test870', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(871, 'test871', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(872, 'test872', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(873, 'test873', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(874, 'test874', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(875, 'test875', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(876, 'test876', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(877, 'test877', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(878, 'test878', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL);
INSERT INTO `account` (`id`, `name`, `chi_name`, `parent_id`, `account_type`, `industry`, `source`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_postalcode`, `billing_address_country`, `billing_address_type`, `contract_date`, `rating`, `phone_office`, `phone_alternate`, `email1`, `email2`, `website`, `acct_mgr`, `division`, `category`, `co_size`, `notes`, `import_set_label`, `opt`, `swap`, `nature_of_business`, `nature_of_business2`, `freezed`, `buying_history`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `team_id`, `visible_for`, `create_time`, `update_time`, `delete_time`) VALUES
(879, 'test879', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(880, 'test880', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(881, 'test881', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(882, 'test882', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(883, 'test883', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(884, 'test884', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(885, 'test885', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(886, 'test886', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(887, 'test887', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(888, 'test888', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(889, 'test889', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(890, 'test890', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(891, 'test891', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(892, 'test892', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(893, 'test893', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(894, 'test894', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(895, 'test895', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(896, 'test896', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(897, 'test897', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(898, 'test898', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(899, 'test899', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(900, 'test900', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(901, 'test901', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(902, 'test902', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(903, 'test903', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(904, 'test904', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(905, 'test905', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(906, 'test906', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(907, 'test907', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(908, 'test908', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(909, 'test909', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(910, 'test910', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(911, 'test911', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(912, 'test912', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(913, 'test913', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(914, 'test914', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(915, 'test915', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(916, 'test916', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(917, 'test917', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(918, 'test918', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(919, 'test919', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(920, 'test920', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(921, 'test921', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(922, 'test922', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(923, 'test923', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(924, 'test924', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(925, 'test925', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(926, 'test926', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(927, 'test927', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(928, 'test928', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(929, 'test929', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(930, 'test930', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(931, 'test931', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(932, 'test932', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(933, 'test933', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(934, 'test934', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(935, 'test935', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(936, 'test936', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(937, 'test937', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(938, 'test938', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(939, 'test939', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(940, 'test940', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(941, 'test941', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(942, 'test942', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(943, 'test943', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(944, 'test944', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(945, 'test945', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(946, 'test946', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(947, 'test947', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(948, 'test948', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(949, 'test949', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(950, 'test950', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(951, 'test951', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(952, 'test952', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(953, 'test953', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(954, 'test954', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(955, 'test955', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(956, 'test956', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(957, 'test957', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(958, 'test958', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(959, 'test959', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(960, 'test960', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(961, 'test961', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(962, 'test962', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(963, 'test963', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(964, 'test964', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(965, 'test965', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(966, 'test966', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(967, 'test967', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(968, 'test968', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(969, 'test969', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(970, 'test970', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(971, 'test971', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(972, 'test972', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(973, 'test973', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(974, 'test974', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(975, 'test975', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(976, 'test976', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(977, 'test977', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(978, 'test978', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(979, 'test979', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(980, 'test980', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(981, 'test981', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(982, 'test982', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(983, 'test983', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(984, 'test984', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(985, 'test985', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(986, 'test986', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(987, 'test987', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(988, 'test988', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(989, 'test989', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(990, 'test990', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(991, 'test991', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(992, 'test992', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(993, 'test993', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(994, 'test994', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(995, 'test995', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(996, 'test996', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(997, 'test997', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(998, 'test998', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(999, 'test999', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL),
(1000, 'test1000', '測試', NULL, NULL, 'IT', '23', 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '519999', '中国', '', NULL, '21321gfg', '13235423543', NULL, 'guoguo@qq.com', NULL, '12122.com', NULL, '213213', 'gdfggdfg', '3213', 'adsfahgfj', '', 'dfg', '', '321321', NULL, 0, NULL, '', '', '', '', '1', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `activity`
--

CREATE TABLE IF NOT EXISTS `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `timeless` tinyint(1) NOT NULL DEFAULT 0,
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  `act_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `result` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `reminder_time` int(11) DEFAULT -1,
  `alarm` tinyint(1) NOT NULL DEFAULT 0,
  `priority` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `document_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opportunity_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `participants` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `accepted` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent_activity_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alarm_leadtime` int(4) DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `team_id` varchar(36) CHARACTER SET utf8 DEFAULT NULL,
  `visible_for` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- 转存表中的数据 `activity`
--

INSERT INTO `activity` (`id`, `title`, `location`, `duration_hours`, `duration_minutes`, `date_start`, `date_end`, `timeless`, `internal`, `act_type`, `parent_type`, `status`, `lead_id`, `description`, `result`, `deleted`, `reminder_time`, `alarm`, `priority`, `document_id`, `opportunity_id`, `participants`, `accepted`, `parent_activity_id`, `alarm_leadtime`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `team_id`, `visible_for`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 'test', NULL, NULL, NULL, '2020-02-04 12:27:24', '2020-02-04 13:27:24', 0, 0, '1', NULL, NULL, 4, 'test', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '', NULL, '', NULL, NULL, NULL),
(2, 'test', NULL, NULL, NULL, '2020-02-04 12:27:24', '2020-02-04 13:27:24', 0, 0, '1', NULL, NULL, 4, 'test', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '', NULL, '', NULL, NULL, NULL),
(3, 'abc', NULL, NULL, NULL, '2020-02-04 12:40:59', '2020-02-04 13:40:59', 0, 0, '2', NULL, NULL, NULL, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '0', '0', '0', NULL, NULL, NULL),
(4, 'abc', NULL, NULL, NULL, '2020-02-04 12:40:59', '2020-02-04 13:40:59', 0, 0, '2', NULL, NULL, NULL, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '2', '', '0', '0', '0', NULL, NULL, NULL),
(5, '1', NULL, NULL, NULL, '2020-02-06 18:20:46', '2020-02-06 19:20:46', 0, 0, '2', NULL, NULL, NULL, '2', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '0', '0', '0', NULL, NULL, NULL),
(6, '1', NULL, NULL, NULL, '2020-02-06 18:20:46', '2020-02-06 19:20:46', 0, 0, '3', NULL, NULL, NULL, '2', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '2', '', '0', '0', '0', NULL, NULL, NULL),
(7, '12', NULL, NULL, NULL, '2020-02-13 18:21:23', '2020-02-13 19:21:23', 0, 0, '3', NULL, NULL, NULL, '2', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '0', '0', '0', NULL, NULL, NULL),
(8, '12', NULL, NULL, NULL, '2020-02-13 18:21:23', '2020-02-13 19:21:23', 0, 0, NULL, NULL, NULL, NULL, '2', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '2', '', '0', '0', '0', NULL, NULL, NULL),
(9, '1', NULL, NULL, NULL, '2020-02-08 18:22:00', '2020-02-08 19:22:00', 0, 0, NULL, NULL, NULL, NULL, '2', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '0', '0', '0', NULL, NULL, NULL),
(10, '1', NULL, NULL, NULL, '2020-02-08 18:22:00', '2020-02-08 19:22:00', 0, 0, NULL, NULL, NULL, NULL, '2', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '2', '', '0', '0', '0', NULL, NULL, NULL),
(11, NULL, NULL, NULL, NULL, '2020-02-19 18:28:52', '2020-02-19 19:28:52', 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '0', '0', '0', '2020-02-06 18:29:01', '2020-02-06 18:29:01', NULL),
(12, NULL, NULL, NULL, NULL, '2020-02-19 18:28:52', '2020-02-19 19:28:52', 0, 0, NULL, NULL, NULL, NULL, '1', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '2', '', '0', '0', '0', '2020-02-06 18:29:01', '2020-02-06 18:29:01', NULL),
(13, 'hello', NULL, NULL, NULL, '2020-02-21 22:07:00', '2020-02-21 23:07:00', 0, 0, NULL, NULL, NULL, NULL, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '2', '', '0', '0', '0', '2020-02-06 22:07:07', '2020-02-06 22:07:07', NULL),
(14, 'Test', NULL, NULL, NULL, '2020-02-22 23:07:49', '2020-02-22 23:20:49', 0, 0, NULL, NULL, NULL, NULL, 'test', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '0', '0', '0', '2020-02-06 22:08:43', '2020-02-06 22:08:43', NULL),
(15, 'abcd', NULL, NULL, NULL, '2020-02-28 22:23:04', '2020-02-28 23:33:04', 0, 0, NULL, NULL, NULL, NULL, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '1', '', '0', '0', '0', '2020-02-06 22:13:27', '2020-02-06 23:14:31', NULL),
(16, '', NULL, NULL, NULL, '2020-03-11 04:13:00', '0000-00-00 00:00:00', 0, 0, NULL, 'meeting', NULL, NULL, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '0', '0', '0', '2020-03-03 16:29:14', '2020-03-03 16:29:14', NULL),
(17, '11111', NULL, NULL, NULL, '2020-03-03 17:10:19', '2020-03-03 21:03:00', 0, 0, NULL, 'meeting', NULL, NULL, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '0', '0', '0', '2020-03-03 17:15:17', '2020-03-03 17:16:07', NULL),
(18, '', NULL, NULL, NULL, '2020-03-04 10:27:58', '2020-03-04 11:27:58', 0, 0, NULL, 'meeting', NULL, NULL, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '0', '0', '0', '2020-03-04 10:28:01', '2020-03-04 10:28:01', NULL),
(19, 'test', NULL, NULL, NULL, '2020-03-04 16:28:53', '2020-03-04 17:28:53', 0, 0, NULL, 'meeting', NULL, NULL, 'abc', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '', '0', '', '2020-03-05 16:48:48', '2020-03-05 16:48:48', NULL),
(20, 'Demo meeting', 'Wancai', NULL, NULL, '2020-03-11 17:49:58', '2020-03-11 18:49:58', 0, 0, NULL, 'meeting', NULL, NULL, 'Have a wechat demo meeting', NULL, 0, -1, 0, 'Medium', NULL, NULL, NULL, '', NULL, 30, '', '3', '', '', '1', '', '2020-03-05 17:51:56', '2020-03-05 17:51:56', NULL),
(21, '123', '', NULL, NULL, '2020-03-23 18:21:20', '2020-03-23 19:21:20', 0, 0, NULL, 'meeting', NULL, NULL, '', NULL, 0, -1, 0, '', NULL, NULL, NULL, '', NULL, 0, '', '0', '', '', NULL, '1', '2020-03-23 18:21:27', '2020-03-23 18:21:27', NULL),
(25, '李四你好', '', NULL, NULL, '2020-03-24 09:45:57', '2020-03-24 10:45:57', 0, 0, NULL, 'meeting', NULL, NULL, '', NULL, 0, -1, 0, '', NULL, NULL, NULL, '', NULL, 0, '', '0', '', '', NULL, '1', '2020-03-24 09:46:01', '2020-03-24 09:46:01', NULL),
(26, '11111', '', NULL, NULL, '2020-03-27 11:51:28', '2020-03-27 12:51:28', 0, 0, NULL, 'meeting', NULL, 0, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '', NULL, '1', '2020-03-27 11:51:34', '2020-03-27 11:51:34', NULL),
(27, '22222', '', NULL, NULL, '2020-03-27 12:04:23', '2020-03-27 13:04:23', 0, 0, NULL, 'meeting', NULL, 4, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '', NULL, '1', '2020-03-27 12:04:26', '2020-03-27 12:04:26', NULL),
(28, '1111111', '2222', NULL, NULL, '2020-03-27 12:16:41', '2020-03-27 13:16:41', 0, 0, NULL, 'meeting', NULL, 4, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '', NULL, '1', '2020-03-27 12:16:44', '2020-03-27 16:01:01', NULL),
(29, '2222', '11', NULL, NULL, '2020-03-27 12:34:43', '2020-03-27 13:34:43', 0, 0, NULL, 'meeting', NULL, 4, '22', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '', NULL, '1', '2020-03-27 12:34:54', '2020-03-27 12:34:54', NULL),
(30, '11111111', '2111', NULL, NULL, '2020-03-27 14:35:20', '2020-03-27 15:35:20', 0, 0, NULL, 'meeting', NULL, 4, '', NULL, 0, -1, 0, NULL, NULL, NULL, NULL, '', NULL, NULL, '', '0', '', '', NULL, '1', '2020-03-27 14:35:25', '2020-03-27 14:35:25', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `ars`
--

CREATE TABLE IF NOT EXISTS `ars` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(5) DEFAULT 0,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `delete_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `ars`
--

INSERT INTO `ars` (`id`, `category`, `keyword`, `filename`, `filepath`, `content`, `ordering`, `created_time`, `updated_time`, `delete_time`) VALUES
('001aeea2-46ff-11e9-bc84-00163ee24a96', 'edm', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL),
('239a6a94-81cc-11e9-908d-00163ee24a96', 'ar', '有咩優惠', NULL, NULL, 'hello, 我地依家做緊好多優惠, 可以上https://www.adaptivecrm.com.hk/ 睇睇', 0, NULL, NULL, NULL),
('25028986-8765-11e9-a1f9-00163ee24a96', 'wa', 'Order Status Reminder', NULL, NULL, 'Hello @@name@@，我地已收到你的訂單#1314，我地會盡快安排送貨。', 3, NULL, NULL, NULL),
('3ed5b2d6-81cd-11e9-908d-00163ee24a96', 'ar', '想查詢訂單', NULL, NULL, '你既訂單情況: A200190622 已付運', 1, NULL, NULL, NULL),
('675af2fe-fa3d-11e5-8008-4ed60cd5ad0c', 'edm', 'Invitation to Recall', NULL, NULL, '<p>Dear @@Contact_first_name@@,</p><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">Have a nice day.</div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto"><br /></div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">I am sending our event information for your perusal. We are on behalf of recall inviting you to join our upcoming event regarding to Data Protection Solutions.&nbsp; The Theme will be&nbsp; Hybrid Data Protection Strategy.&nbsp; You will find the information delivered by the Speaker very useful whatever Data Backup Plan you are or will be going to deploy.<br /><br /></div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">Please see the detailed information below:<br /><br />Please reply this RSVP email for registration.I will follow up with you later .<br /><br />Main Theme&nbsp; &nbsp; &nbsp; : Hybrid Data Protection Strategy<br />Date&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 8th April 2016<br />Time&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 09:00 &ndash; 14:00<br />Venue&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : The Peninsular, Hong Kong<br /></div><p><span style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">Speaker&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Janson Hoambrecke</span></p><p>&nbsp;</p><p><img src="https://drive.google.com/uc?export=view&amp;id=0B_tO4PQPmWhjRnJWV2xOM2gtbkVMQWs4M2x4OEJIV0pCMzRj" border="0" /></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;<span style="font-size: 10px">&nbsp;</span><span style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><em style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">About the speaker :</em></p><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto"><em><br /></em></div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto"><em>Janson Hoambrecker&nbsp; is a global product and marketing strategy executive leading the way for companies to adopt to constant technology evolution. Cloud expert with a deep understanding of both global market conditions and IT technology driving these industries.&nbsp; Janson serves as vice president and global market leader for Data Protection Services (DPS) of Recall. As the global market leader for Recall, Janson is responsible for the global strategies and product direction of DPS. He has a broad understand of the data protection market and cloud marketplace.</em><br /><br /><br /></div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">&nbsp;</div><font face="Calibri" size="2"><span style="font-size: 11pt"><div><strong>Luke Tam</strong></div> <div>&nbsp;</div> <div>Business Development Manager</div> <div>Recall Hong Kong Ltd</div> <div>t&nbsp;&nbsp;&nbsp; <a href="http://202.181.244.223/adaptive/templates/view_template/tel:%2B852%202511%202829" target="_blank">+852 2511 2829</a></div> <div>d&nbsp;&nbsp; <a href="http://202.181.244.223/adaptive/templates/view_template/tel:%2B852%203905%203221" target="_blank">+852 3905 3221</a></div> <div>m&nbsp; <a href="http://202.181.244.223/adaptive/templates/view_template/tel:%2B852%206385%207562" target="_blank">+852 6385 7562</a></div> <div>f&nbsp;&nbsp;&nbsp; <a href="http://202.181.244.223/adaptive/templates/view_template/tel:%2B852%202511%204333" target="_blank">+852 2511 4333</a></div> <div>Recall Hong Kong Limited</div> <div>20 Winslow Street, Hung Hom, Kowloon, HK</div> <div><font size="4"><span style="font-size: 14pt"><strong>Transformational Information Management</strong></span></font></div> <div><a href="mailto:luke.tam@recall.com" target="_blank"><font color="blue"><u>luke.tam@recall.com</u></font></a></div> <div>&nbsp;</div> </span></font><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto"><a href="http://www.recall.hk/" target="_blank"><font color="blue"><u>www.recall.hk</u></font></a><span style="font-size: 11pt; font-family: Calibri">&nbsp;</span>&nbsp;</div>', 0, NULL, NULL, NULL),
('784db9ba-8221-11e9-9380-00163ee24a96', 'ar', '你好', NULL, NULL, '你好，有咩幫到你', 3, NULL, NULL, NULL),
('8380e302-b44e-11e9-a3eb-00163e8d0e51', 'ar', '我既預約', NULL, NULL, '{{name}}你好，你既最新預約係8月8曰2:30PM，如果需要更改時間，請隨時whatsapp我地', 5, NULL, NULL, NULL),
('85370c92-9df3-11e4-96d6-de9d8217a725', 'edm', 'quickstart', NULL, NULL, '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">\r\n<html>\r\n<head></head>\r\n<body><table border="1" bordercolor="#fffff0" cellpadding="6" cellspacing="0" width="700"><tbody><tr>\r\n<td> \r\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 684px;" width="690"><tbody>\r\n<tr>\r\n<td style="width: 680px;"><img src="http://images.rimanggis.com/resource/campaign/5451cdea0cf2b63924b813a9/images/gzLrj_banner.jpg" style="width: 680px; height: 40px;"></td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;">&nbsp;</td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;"> \r\n          <table border="0" cellspacing="5" width="100%"><tbody><tr>\r\n<td>\r\n<b><font color="#953735" size="4">Adaptive Quick Start Customers &amp; Sales Management System<br> On Demand package for SME&rsquo;s goes far beyond any other software offering. It&rsquo;s Easy to use and Fast to deploy.<br> Adaptive &#37559;&#21806;&#33287;&#39015;&#23458;&#31649;&#29702;&#31995;&#32113;(CRM) - &#24555;&#36895;&#21855;&#21205;&#29256;<br> &#23560;&#28858;&#20013;&#23567;&#20225;&#26989;&#32780;&#35373;&#30340;&#25353;&#29992;&#25143;&#38656;&#27714;&#36575;&#20214;&#65292;&#26159;&#20854;&#20182;&#31995;&#32113;&#28961;&#21487;&#27604;&#25836;&#30340;&#12290;&#23427;&#26131;&#26044;&#20351;&#29992;&#21450;&#24555;&#36895;&#23433;&#35037;&#12290;</font></b><br><br><font color="#953735"><b><font size="4">Easy to use:</font></b> </font>No software, hardware and expensive infrastructure are required, reduces IT administration such as upgrades, maintenance, backups and recovery. We take care of all these tasks for you and let you focus on running the business. Leveraging an easy-to-use and highly tailored solution offered at a predictable per location, per month price.<br><font color="#953735"><b><font size="4">&#23481;&#26131;&#20351;&#29992;:</font></b> </font>&#28961;&#38656;&#36575;&#20214;&#65292;&#30828;&#20214;&#21644;&#26114;&#36020;&#30340;&#22522;&#30990;&#35373;&#26045;&#65292;&#28187;&#23569;&#22914;&#21319;&#32026;&#65292;&#32173;&#35703;&#65292;&#20633;&#20221;&#21644;&#20462;&#24489;&#31561;&#24118;&#20358;&#30340; IT&#34892;&#25919;&#31649;&#29702;&#12290;&#25105;&#20497;&#23559;&#28858;&#24744;&#34389;&#29702;&#25152;&#26377;&#36889;&#20123;&#24037;&#20316;&#65292;&#35731;&#24744;&#26377;&#26356;&#22810;&#26178;&#38291;&#31649;&#29702;&#24744;&#30340;&#26989;&#21209;&#12290;&#35731;&#24744;&#26126;&#30637;&#25353;&#22320;&#21312;&#65292;&#21644;&#27599;&#26376;&#30340;&#36027;&#29992;&#65292;&#20351;&#24744;&#22312;&#21487;&#38928;&#28204;&#30340;&#24773;&#27841;&#19979;&#36984;&#25799;&#23481;&#26131;&#20351;&#29992;&#19988;&#23560;&#38272;&#37327;&#36523;&#23450;&#20570;&#30340;&#35299;&#27770;&#26041;&#26696;&#12290;<br><br><br><font color="#953735"><b><font size="4">Fast to deploy:</font></b> </font>Rapid time to value, within 24 hours your organization should have completed the on-boarding process. There are no infrastructure or software requirements; therefore implementation can be completed faster. Access is available anywhere at any time and CRM best practices are already embedded in the software rather than forcing you to create new workflows or software modifications.<br><font color="#953735"><b><font size="4">&#24555;&#36895;&#38928;&#20633;&#22949;&#30070;:</font></b> </font>&#36020;&#21496;&#33021;&#22312;&#24319;&#22235;&#23567;&#26178;&#20839;&#21487;&#20197;&#38283;&#22987;&#36939;&#20316;&#36889;&#31995;&#32113;&#65292;&#36889;&#27171;&#20415;&#21487;&#20197;&#24555;&#36895;&#22320;&#21109;&#36896;&#20729;&#20540;&#12290;&#30001;&#26044;&#28961;&#38656;&#38928;&#20633;&#20219;&#20309;&#22522;&#30990;&#35373;&#26045;&#25110;&#32773;&#36575;&#20214;&#65292;&#22240;&#27492;&#24456;&#24555;&#20415;&#21487;&#25033;&#29992;&#27010;&#31995;&#32113;&#12290;&#36889;&#31995;&#32113;&#26159;&#20840;&#22825;&#20399;&#30340;;&#22312;&#20219;&#20309;&#26178;&#38291;&#65292;&#20219;&#20309;&#22320;&#40670;&#37117;&#21487;&#36914;&#20837;&#12290;&#25105;&#20497;&#24050;&#25226;&#23458;&#25142;&#38364;&#31995;&#31649;&#29702;&#30340;&#26368;&#20339;&#23526;&#21209;&#23432;&#21063;&#34701;&#20837;&#31995;&#32113;&#20013;&#65292;&#23458;&#25142;&#28961;&#38920;&#21478;&#34892;&#24314;&#31435;&#26032;&#30340;&#24037;&#20316;&#27969;&#31243;&#25110;&#32773;&#20462;&#25913;&#36575;&#20214;&#12290;</td> \r\n            </tr></tbody></table>\r\n</td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;"> <p align="center"><img height="525" src="http://images.rimanggis.com/resource/campaign/5451cdea0cf2b63924b813a9/images/r4Yns_price.jpg" width="634"></p> </td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;"> \r\n          <table border="1" bordercolor="#000000" cellpadding="5" cellspacing="0" class="db" style="border-collapse: collapse" width="100%"><tbody>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Account<br> &#23458;&#25143;</b></font></td> \r\n             <td width="529">This module opens the Account screen, which is the window to the database containing all companies that the company deals with such as vendors, suppliers. As a result, user can track and manage all complete Account and Contact interactions and information including contact detail, notes, history, activity, sales opportunities, associated documents and communications, etc.<br> &#22312;&#36889;&#27169;&#22602;&#38283;&#21843;&#23458;&#25143;&#20171;&#38754;&#65292;&#36889;&#35023;&#21253;&#25324;&#25152;&#26377;&#32879;&#32097;&#20844;&#21496;&#30340;&#36039;&#26009;&#65292;&#22914;&#23458;&#25143;&#65295;&#20379;&#25033;&#21830;&#31561;&#12290;&#25925;&#27492;&#65292;&#29992;&#25143;&#21487;&#20197;&#23436;&#25972;&#22320;&#20445;&#30041;&#23458;&#25142;&#21644;&#32879;&#32363;&#20154;&#30340;&#36039;&#26009;&#22914;&#21253;&#25324;&#32879;&#32097;&#36039;&#26009;&#65292;&#31558;&#35352;&#65292;&#27511;&#21490;&#65292;&#27963;&#21205;&#65292;&#37559;&#21806;&#27231;&#26371;&#65292;&#30456;&#38364;&#25991;&#20214;&#21644;&#36890;&#35338;&#31561;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Diary<br> &#26085;&#35468;</b></font></td> \r\n             <td width="529">This module opens the Diary screen, which is the windows to the database of all your activities in daily, weekly, monthly. Hence, this is an interface user can manage to-do items, events request as well as use activity alarms to stay on top of deliverables.<br> &#22312;&#36889;&#27169;&#22602;&#38283;&#21843;&#26085;&#35468;&#20171;&#38754;&#65292;&#31649;&#29702;&#25152;&#26377;&#25353;&#26085;&#65292;&#26376;&#25110;&#24180;&#30340;&#27963;&#21205;&#12290;&#22240;&#27492;&#65292;&#36889;&#26159;&#19968;&#20491;&#29992;&#25142;&#21487;&#20197;&#31649;&#29702;&#24453;&#36774;&#20107;&#38917;&#65292;&#27963;&#21205;&#35201;&#27714;&#20197;&#21450;&#21033;&#29992;&#27963;&#21205;&#35686;&#22577;&#65292;&#20197;&#31649;&#29702;&#20844;&#21496;&#26989;&#21209;&#36914;&#24230;&#30340;&#25509;&#21475;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Case Management<br> &#20107;&#38917;&#36319;&#36914;</b></font></td> \r\n             <td width="529">This module let users to centralize complaints/ inquiries/ incident under one place so the company will never miss a complaint unattended. It lets user create, manage and resolve customer support cases more easily by automatically tracking all customer interactions. E-mails received from customers will automatically generate cases which can be routed by topic, region, or specialist.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#25226;&#19968;&#20123;&#38656;&#35201;&#36319;&#36914;&#30340;&#20107;&#38917;&#22914;&#25237;&#35380;/&#26597;&#35426;/&#20107;&#20214;&#38598;&#20013;&#22312;&#19968;&#20491;&#22320;&#26041;&#12290;&#20844;&#21496;&#19981;&#26371;&#37679;&#22833;&#36942;&#20219;&#20309;&#19968;&#20491;&#35201;&#36319;&#36914;&#30340;&#20107;&#38917;&#12290; &#30001;&#26044;&#29992;&#25142;&#21487;&#20197;&#23481;&#26131;&#21109;&#24314;&#65292;&#31649;&#29702;&#21644;&#35299;&#27770;&#23458;&#25142;&#25903;&#25588;&#30340;&#20107;&#38917;&#65292;&#36889;&#26377;&#21161;&#33258;&#21205;&#36319;&#36394;&#25152;&#26377;&#23458;&#25142;&#30340;&#20114;&#21205;&#12290;&#23458;&#25142;&#25910;&#21040;&#30340;&#38651;&#23376;&#37109;&#20214;&#21487;&#20197;&#36319;&#25818;&#35441;&#38988;&#65292;&#22320;&#21312;&#25110;&#23560;&#38917;&#33258;&#21205;&#29983;&#25104;&#30456;&#38364;&#20107;&#38917;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Contact<br> &#32879;&#32097;</b></font></td> \r\n             <td width="529">This module opens the Contact screen, which is the window to the database containing all contacts of companies in Account Management. User can also populate unlimited pre-defined fields including Name, Company, Phone, Address, Web site, E-mail, Status, and Source or add upon user request. Create Account records and view a roll-up of all notes, history, activities and opportunities associated with contracts at that account.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#38283;&#21843;&#21450;&#31649;&#29702;&#25152;&#26377;&#23458;&#25143;&#30340;&#32879;&#32097;&#36039;&#26009;&#12290;&#29992;&#25142;&#21487;&#20197;&#22635;&#19978;&#38928;&#20808;&#23450;&#32681;&#30340;&#36039;&#26009;&#65292;&#22914;&#22995;&#21517;&#65292;&#20844;&#21496;&#65292;&#38651;&#35441;&#65292;&#22320;&#22336;&#65292;&#32178;&#31449;&#65292;&#38651;&#23376;&#37109;&#20214;&#65292;&#29376;&#24907;&#65292;&#36039;&#26009;&#20358;&#28304;&#25110;&#26681;&#25818;&#29992;&#25142;&#35201;&#27714;&#28155;&#21152;&#20854;&#23427;&#27396;&#30446;&#12290; &#21109;&#24314;&#24115;&#25142;&#35352;&#37636;&#21644;&#26597;&#30475;&#20043;&#21069;&#30340;&#25152;&#26377;&#35352;&#37636;&#65292;&#27511;&#21490;&#65292;&#27963;&#21205;&#21644;&#27231;&#26371;&#21450;&#33287;&#35442;&#24115;&#25142;&#30340;&#21512;&#32004;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Document<br> &#25991;&#20214;&#31649;&#29702;</b></font></td> \r\n             <td width="529">This module opens the Document screen, which is the windows to the database of all documents uploaded to the system such as white papers, quotes, product info, and other resources from the pre-defined template or library. From this module, users can share and exchange commonly used documents and without sending email back and forth.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#20197;&#30475;&#21040;&#20445;&#23384;&#22312;&#31995;&#32113;&#20839;&#30340;&#25991;&#20214;&#22914;&#30333;&#30382;&#26360;&#65292;&#22577;&#20729;&#65292;&#29986;&#21697;&#36039;&#26009;&#31561;&#31561;&#12290;&#25925;&#27492;&#65292;&#29992;&#25143;&#21487;&#20114;&#25563;&#25991;&#20214;&#32780;&#19981;&#29992;&#36879;&#36942;&#20351;&#29992;&#38651;&#37109;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Opportunity<br> &#27231;&#26371;</b></font></td> \r\n             <td width="529">This module enable user to manage opportunities by adding new and viewing those opportunities created in the past.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#20197;&#26032;&#22686;&#25110;&#26597;&#30475;&#36942;&#24448;&#30340;&#27231;&#26371;&#31561;&#31649;&#29702;&#24037;&#20316;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Report<br> &#22577;&#21578;</b></font></td> \r\n             <td width="529">User can access multi real-time reports including account list, contact list, activity report, sales &amp; forecast report, history report and much more. After reports are generated, users can either save it to the system for later retrieval or export the result to either CSV or xml format.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#20197;&#22240;&#25033;&#38656;&#27714;&#35373;&#23450;&#19981;&#21516;&#30340;&#21363;&#26178;&#22577;&#21578;&#12290;&#22312;&#22577;&#21578;&#29986;&#29983;&#24460;&#65292;&#29992;&#25143;&#38500;&#20102;&#21487;&#20197;&#25226;&#36039;&#26009;&#20445;&#23384;&#19979;&#20358;&#22806;&#65292;&#36996;&#21487;&#20197;&#25226;&#23427;&#20497;&#23566;&#20986;&#21040;&#22914;CSV&#25110;xml &#26684;&#24335;&#30340;&#27284;&#26696;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Out Bound Email<br> &#22806;&#30332;&#38651;&#37109;</b></font></td> \r\n             <td width="529">This module enable users to send email within the system on the fly. There are also build in templates for user to chose.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#20197;&#36805;&#36895;&#22312;&#31995;&#32113;&#20839;&#30332;&#25918;&#38651;&#37109;&#12290;&#31995;&#32113;&#20839;&#32622;&#30340;&#38651;&#37109;&#27169;&#26495;&#26377;&#21161;&#29992;&#25143;&#24555;&#36895;&#22320;&#34389;&#29702;&#38651;&#37109;&#12290;</td> \r\n            </tr>\r\n</tbody></table>\r\n</td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;"><img src="http://images.rimanggis.com/resource/campaign/5451cdea0cf2b63924b813a9/images/OBYol_button.jpg" style="width: 680px; height: 40px;"></td> \r\n        </tr>\r\n<tr>\r\n<td background="http://www.bsurprise.com/edm/crm/images/footer.gif" bgcolor="#ffffff" height="80" style="width: 680px;"> \r\n          <table border="0" cellpadding="8" cellspacing="0" width="100%"><tbody>\r\n<tr>\r\n<td align="center">Room 508, 5/F., Stag Building, 148 Queen&rsquo;s Road Central, Central Hong Kong</td> \r\n            </tr>\r\n<tr>\r\n<td align="center">\r\n<a href="http://t.rimanggis.com/activities_web/sample/click?msgid=aacb645a-bbd3-4a73-b7bc-937f9f3f2b12&amp;linkid=5451cdf80cf2b63924b813ad" style="text-decoration: none" target="_blank"><font color="#000000">http://www.adaptgp.com</font></a>&nbsp;&nbsp;&nbsp; &nbsp; Tel: (852) <span style="border-bottom:1px dashed #ccc;z-index:1" t="6" onclick="return false;" data="2111-2742">2111-2742</span>&nbsp;&nbsp;&nbsp; &nbsp; Fax: (852) <span style="border-bottom:1px dashed #ccc;z-index:1" t="6" onclick="return false;" data="2111-2748">2111-2748</span>\r\n</td> \r\n            </tr>\r\n</tbody></table>\r\n</td> \r\n        </tr>\r\n</tbody></table>\r\n</td> \r\n    </tr></tbody></table>\r\n    <div>If you prefer not to receive commercial emails from us in the future, please &nbsp;<a href="{{{unsubscribe}}}" target="_blank" style="color:#000000;">unsubscribe / update profile</a></div>\r\n    </body>\r\n</html>\r\n', 0, NULL, NULL, NULL),
('8947e2d0-bcec-11e9-90be-00163e8d0e51', 'ar', '#1', NULL, NULL, '多謝你支持，我地會安排同事同你聯絡，了解多Ｄ你需要', 10, NULL, NULL, NULL),
('8ee458b8-81cd-11e9-9dd2-00163ee24a96', 'ar', '查詢積分', NULL, NULL, '你好{{name}}，會員號碼{{member_no}}，你會員積分已經有{{reward_points}}。想得到我地最hot既禮物: 瑞士12日旅遊套票? 快D儲夠10000分啦！', 2, NULL, NULL, NULL),
('98a5b1e0-b593-11e9-a7c0-00163e8d0e51', 'ar', '預約', NULL, NULL, '{{name}}你好，多謝繼續支持Teris，我地最快既可預約時間係19年8月4日4:30PM，請問係咪想預約？', 7, NULL, NULL, NULL),
('9d829986-81c6-11e9-908d-00163ee24a96', 'wa', 'New Activity Notice', NULL, NULL, 'Hi @@name@@, as talked, we will have a meeting on 16 Aug 2019 (Fri) at 15:00 - 16:00. Kindly let me know if you have anything that I can prepare in advance. See you!', 1, NULL, NULL, NULL),
('a4104860-b593-11e9-bffd-00163e8d0e51', 'ar', '優惠', NULL, NULL, '優惠資訊及優惠券請到https://www.adaptivecrm.com.hk/ 獲取', 8, NULL, NULL, NULL),
('a69a6e8a-bcf5-11e9-b627-00163e8d0e51', 'wa', 'Booking confirmation', NULL, NULL, 'Hello @@name@@, 我地已幫你預約左護膚療\n日期：2019年8月18日(星期日)\n時間：下午3點至4點\n地點：香港\n\n如需要更改時間，請輸入"我想更改時間"，我地會安排同事聯絡返你', 6, NULL, NULL, NULL),
('b399e0be-bced-11e9-a00a-00163e8d0e51', 'ar', '#3', NULL, NULL, '唔好意思，希望日後你會對我地服務有興趣，希望你唔介意我地日後會通知你新產品詳情', 12, NULL, NULL, NULL),
('bd125c02-bced-11e9-aad7-00163e8d0e51', 'ar', '#4', NULL, NULL, '唔好意思，希望日後你會對我地服務有興趣', 13, NULL, NULL, NULL),
('bd808292-b543-11e9-a7c0-00163e8d0e51', 'ar', '我想預約', NULL, NULL, '{{name}}你好，多謝繼續支持Angel Face，我地最快既可預約時間係19年8月4日4:30PM，請問係咪想預約？', 6, NULL, NULL, NULL),
('bfcec838-b593-11e9-bffd-00163e8d0e51', 'ar', '查詢訂單', NULL, NULL, '你既訂單情況: A200190622 已付運', 9, NULL, NULL, NULL),
('d4a2557a-81c4-11e9-908d-00163ee24a96', 'wa', 'New Contact Greeting', NULL, NULL, 'Hi @@name@@, nice meeting you and talked about your business. I think our service can benefit your company very much. Let me further engage with you for follow-up', 0, NULL, NULL, NULL),
('d4beb98e-81c6-11e9-908d-00163ee24a96', 'wa', 'mid-autumn', NULL, NULL, '@@name@@, I wish that your career and life, just like the round moon on Mid-Autumn Day, be bright and perfect. 中秋節快樂，祝萬事如意心想事成！\n', 2, NULL, NULL, NULL),
('d92b49a4-bcec-11e9-a00a-00163e8d0e51', 'ar', '#2', NULL, NULL, '多謝你支持，我地會安排同事同你聯絡，等你了解多d我地可以點幫到你', 11, NULL, NULL, NULL),
('e3191d4e-82cf-11e9-b9b1-00163ee24a96', 'ar', '查詢優惠', NULL, NULL, '優惠資訊及優惠券請到https://www.adaptivecrm.com.hk/ 獲取', 4, NULL, NULL, NULL),
('e9162404-526e-11e8-9ee6-00163ee56c1d', 'edm', 'HGC', NULL, NULL, '<p>\r\n	<br />\r\n</p>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<b><span style="font-size:16pt;color:#F68222;">Solutions for Your Enterprise</span></b><span style="color:#222222;"><u></u><u></u></span> \r\n</p>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<span style="color:#222222;">&nbsp;<u></u><u></u></span> \r\n</p>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<b><span style="color:#0070C0;">&nbsp;</span></b><span style="color:#222222;"><u></u><u></u></span> \r\n</p>\r\n<table class="m_7205919270325817525m_2195761093145549186m_-2491473188298339860m_-7196003433587831727m_194179350578386706m_3760262443478409343m_-7268129654968052930m_-3579183369813126153m_6342729604898483830gmail-m_-2038474339487851035m_-3919724144811005163m_2232833952036124652m_4075156404907631751m_7243960634344216595MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" style="color:#000000;font-family:&quot;font-size:14px;background-color:#FFFFFF;">\r\n	<tbody>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Broadband Network</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Fibre Services<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Business Broadband</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Diversified commercial fibre broadband solutions up to 1000Mbps^<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					Dedicated Access<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Dedicated Internet Access (DIA)</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Manageable bandwidth choices of local and international connectivity<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#1F497D;">Broadband Services</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Dedicated bandwidth to specified regions<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					&nbsp;<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Cloud Solutions</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Infrastructure-as-a-Service<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Infinite Server</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					On-demand virtual servers with variable computing power<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					Network-as-a-Service<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Infinite Wi-fi</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Scalable and secure end-to-end cloud-based Wi-Fi<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					Backup-as-a-Service<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Infinite Backup</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Comprehensive data protection with reliable and secure backup<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">&nbsp;</span><span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Data Facility</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Data Facility<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Data Centre</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Tier 3+ centre with ultra-low lantency dark fibre connectivity<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					&nbsp;<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Data Connectivity</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Local Data<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">&nbsp;</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">MetroNet</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					High bandwidth connectivity for any-to-any solutions<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Dark Fibre</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					High capacity metro networks at very low latency<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					International Data<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">IPLC</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					End-to-end dedicated telecommunications transmission for exclusive use<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">IEPL</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Point-to-point international high-bandwidth data connectivity<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">MPLS</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Point-to-multi point international data connectivity<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">&nbsp;</span><span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Voice Communication</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Business Voice<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Infinite Voice</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Hosted voice solution with a full set of cloud-based unified communications features<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					&nbsp;<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Business Line</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Provide a wide range of professional grade telephony services<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="font-size:12pt;"><u></u>&nbsp;<u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="font-size:12pt;"><u></u>&nbsp;<u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<span style="color:#222222;">&nbsp;<u></u><u></u></span> \r\n</p>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;text-align:justify;background:white;">\r\n	<b><u><span style="color:#222222;">About H</span><span style="color:#1F497D;">GC</span><span style="color:#222222;">&nbsp;Enterprise Solutions</span></u></b><span style="color:#222222;"><u></u><u></u></span> \r\n</p>\r\n<table class="m_7205919270325817525m_2195761093145549186m_-2491473188298339860m_-7196003433587831727m_194179350578386706m_3760262443478409343m_-7268129654968052930m_-3579183369813126153m_6342729604898483830gmail-m_-2038474339487851035m_-3919724144811005163m_2232833952036124652m_4075156404907631751m_7243960634344216595MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" width="920" style="color:#000000;font-family:&quot;font-size:14px;width:690pt;background:white;">\r\n	<tbody>\r\n		<tr>\r\n			<td width="620" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal" style="text-align:justify;vertical-align:baseline;">\r\n					<span style="font-size:10.5pt;color:#333333;">HGC owns an extensive fibre-optic network in Hong Kong and provides world-class telecoms services based on innovative application of the latest technologies and a strong customer-centric service ethic. Coupled with its four cross-border routes integrated with three of mainland China''s tier-one telecommunications operators and a world-class international network, HGC provides a comprehensive range of fixed-line telecommunications services locally and overseas. Our lines of business can be divided into four major categories:<u></u><u></u></span> \r\n				</p>\r\n				<table class="m_7205919270325817525m_2195761093145549186m_-2491473188298339860m_-7196003433587831727m_194179350578386706m_3760262443478409343m_-7268129654968052930m_-3579183369813126153m_6342729604898483830gmail-m_-2038474339487851035m_-3919724144811005163m_2232833952036124652m_4075156404907631751m_7243960634344216595MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:920px;">\r\n					<tbody>\r\n						<tr>\r\n							<td width="310" valign="top" style="font-family:&quot;">\r\n								<p class="MsoNormal" style="margin-left:0in;vertical-align:baseline;">\r\n									<u></u><span style="font-size:10pt;font-family:Symbol;">·<span style="font-size:7pt;line-height:normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u></u><span style="font-size:12pt;">International and Carrier Business<u></u><u></u></span> \r\n								</p>\r\n								<p class="MsoNormal" style="margin-left:0in;vertical-align:baseline;">\r\n									<u></u><span style="font-size:10pt;font-family:Symbol;">·<span style="font-size:7pt;line-height:normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u></u><span style="font-size:12pt;">Data Centre Business<u></u><u></u></span> \r\n								</p>\r\n							</td>\r\n							<td width="310" valign="top" style="font-family:&quot;">\r\n								<p class="MsoNormal" style="margin-left:0in;vertical-align:baseline;">\r\n									<u></u><span style="font-size:10pt;font-family:Symbol;">·<span style="font-size:7pt;line-height:normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u></u><span style="font-size:12pt;">Corporate Business<u></u><u></u></span> \r\n								</p>\r\n								<p class="MsoNormal" style="margin-left:0in;vertical-align:baseline;">\r\n									<u></u><span style="font-size:10pt;font-family:Symbol;">·<span style="font-size:7pt;line-height:normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u></u><span style="font-size:12pt;">Residential Broadband Service<u></u><u></u></span> \r\n								</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<br />\r\n</p>\r\n<div style="color:#222222;font-family:arial, sans-serif;font-size:12.8px;background-color:#FFFFFF;">\r\n	<br />\r\n</div>\r\n<span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">Any enquiries, please do not hesitate to contact Mr Luke Tam :T:&nbsp;</span><span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">2128-3320</span><span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">&nbsp;&nbsp; M:&nbsp;</span><span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">9600-7537</span><span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">&nbsp;&nbsp;</span><br />\r\n<br />\r\n<span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">Email :</span><a href="mailto:luke.tam@hgc.com.hk" target="_blank">luke.tam@hgc.com.hk</a> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 0, NULL, NULL, NULL),
('efc1ef3e-bcf5-11e9-983b-00163e8d0e51', 'ar', '我想更改時間', NULL, NULL, '我地同事會係2個鐘內聯絡返你，謝謝！', 14, NULL, NULL, NULL),
('f8f6a456-b524-11e9-a7c0-00163e8d0e51', 'wa', 'Payment Reminder', NULL, NULL, '@@name@@ 你好，你新一期付款到期日將會係2019年8月30日，煩請準時付款，謝謝！如有任何問題，隨時WhatsApp返我地, 或者聯絡22112211', 4, NULL, NULL, NULL),
('fac1a3c0-bceb-11e9-aad7-00163e8d0e51', 'wa', 'Questionnaire', NULL, NULL, 'Hello @@name@@，多謝你今日出席我地既科技券 x WhatsApp CRM講座，希望我地既服務可以為你公司增加競爭力。係度想收集下你既意見，如果覺得我地既服務：\n\n好有用(輸入#1)\n有用(輸入#2)\n冇咩用(輸入#3)\n完全冇用(輸入#4)\n\n謝謝!', 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `attachment`
--

CREATE TABLE IF NOT EXISTS `attachment` (
  `id` int(11) NOT NULL,
  `admin_user_id` int(11) NOT NULL COMMENT '后台用户ID',
  `user_id` int(11) NOT NULL COMMENT '前台用户ID',
  `original_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `save_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '保存文件名',
  `save_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '系统完整路径',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '系统完整路径',
  `extension` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '后缀',
  `mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '类型',
  `size` bigint(20) NOT NULL DEFAULT 0 COMMENT '大小',
  `md5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'MD5',
  `sha1` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '创建时间',
  `update_time` int(10) NOT NULL DEFAULT 0 COMMENT '更新时间',
  `delete_time` int(10) NOT NULL DEFAULT 0 COMMENT '删除时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='附件表';

--
-- 转存表中的数据 `attachment`
--

INSERT INTO `attachment` (`id`, `admin_user_id`, `user_id`, `original_name`, `save_name`, `save_path`, `url`, `extension`, `mime`, `size`, `md5`, `sha1`, `create_time`, `update_time`, `delete_time`) VALUES
(1, 0, 0, '201776-12062Q4295216.jpg', '9f783ed2f35d4276cad315e6dd79c931.jpg', 'F:/xampp/htdocs/adsuite/public/uploads/attachment/20191105/9f783ed2f35d4276cad315e6dd79c931.jpg', '/uploads/attachment/20191105/9f783ed2f35d4276cad315e6dd79c931.jpg', 'jpg', 'image/jpeg', 96341, '2f4c546ba7c9b0dc44eee9bb92954478', '4a94ea02145e1dbf17c5014a768eb9cf6a5ed07e', 1572925359, 1572925359, 0),
(1, 0, 0, '201776-12062Q4295216.jpg', '9f783ed2f35d4276cad315e6dd79c931.jpg', 'F:/xampp/htdocs/adsuite/public/uploads/attachment/20191105/9f783ed2f35d4276cad315e6dd79c931.jpg', '/uploads/attachment/20191105/9f783ed2f35d4276cad315e6dd79c931.jpg', 'jpg', 'image/jpeg', 96341, '2f4c546ba7c9b0dc44eee9bb92954478', '4a94ea02145e1dbf17c5014a768eb9cf6a5ed07e', 1572925359, 1572925359, 0);

-- --------------------------------------------------------

--
-- 表的结构 `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vdate` date DEFAULT NULL COMMENT '日期',
  `start_time` time DEFAULT NULL COMMENT '开始时间',
  `end_time` time DEFAULT NULL COMMENT '结束时间',
  `item` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `created_user_id` int(11) DEFAULT NULL,
  `updated_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `attendance`
--

INSERT INTO `attendance` (`id`, `user_id`, `vdate`, `start_time`, `end_time`, `item`, `remarks`, `created_user_id`, `updated_user_id`) VALUES
(1, '1', '2020-03-12', '12:00:00', '12:30:00', 'AL', 'aa', NULL, NULL),
(3, '1', '2020-03-12', '12:00:00', '12:50:00', 'NP', 'bb', NULL, NULL),
(4, '1', '2020-03-17', '12:00:00', '12:00:00', 'X', '', NULL, NULL),
(5, '1', '2020-03-22', '12:00:00', '12:00:00', 'OF', '', NULL, NULL),
(6, '2', '2020-03-06', '12:00:00', '12:00:00', 'SL', '', NULL, NULL),
(7, '1', '2020-03-08', '12:00:00', '12:00:00', 'OT', '', NULL, NULL),
(8, '1', '2020-03-26', '12:00:00', '12:00:00', 'TR', '', NULL, NULL),
(9, '1', '2020-03-02', '12:00:00', '12:00:00', 'PL', '', NULL, NULL),
(10, '1', '2020-03-05', '12:00:00', '12:00:00', 'AL', '', NULL, NULL),
(11, '1', '2020-03-10', '12:00:00', '12:00:00', 'PL', '', NULL, NULL),
(12, '1', '2020-03-14', '12:00:00', '12:00:00', 'SL', '333', NULL, NULL),
(13, '5', '2020-03-02', '12:00:00', '12:00:00', 'TR', '', NULL, NULL),
(14, '5', '2020-03-04', '12:00:00', '12:00:00', 'PL', '', NULL, NULL),
(15, '5', '2020-03-08', '12:00:00', '12:00:00', 'E', '', NULL, NULL),
(16, '5', '2020-03-14', '12:00:00', '12:00:00', 'B', '', NULL, NULL),
(17, '5', '2020-03-19', '12:00:00', '12:00:00', 'B', '', NULL, NULL),
(20, '6', '2020-03-11', '12:00:00', '12:00:00', 'X', '', NULL, NULL),
(21, '1', '2020-03-07', '12:00:00', '12:00:00', 'B', '', NULL, NULL),
(22, '2', '2020-03-04', '12:00:00', '12:00:00', 'SL', '', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `booking_date` date NOT NULL,
  `store_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `consultant` int(11) DEFAULT NULL,
  `member_id` int(11) NOT NULL,
  `is_member` tinyint(1) DEFAULT 1,
  `remarks` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `delete_time` int(10) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `booking`
--

INSERT INTO `booking` (`id`, `code`, `booking_date`, `store_id`, `room_id`, `consultant`, `member_id`, `is_member`, `remarks`, `create_time`, `update_time`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `delete_time`) VALUES
(1, NULL, '0000-00-00', 0, 0, 0, 0, 1, NULL, '2020-03-28 10:37:13', '2020-03-28 10:37:13', '', '', '', 0),
(2, NULL, '0000-00-00', 0, 0, 0, 0, 1, NULL, '2020-03-28 10:37:18', '2020-03-28 10:37:18', '', '', '', 0),
(3, NULL, '0000-00-00', 0, 0, 0, 0, 1, NULL, '2020-03-28 10:37:27', '2020-03-28 10:37:27', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `booking_equipment`
--

CREATE TABLE IF NOT EXISTS `booking_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(10) NOT NULL COMMENT '服务id',
  `product_id` varchar(10) NOT NULL COMMENT '產品id',
  `quantity` decimal(10,0) NOT NULL COMMENT '數量',
  `ordering` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `booking_equipment`
--

INSERT INTO `booking_equipment` (`id`, `service_id`, `product_id`, `quantity`, `ordering`) VALUES
(6, '29', '12', 1, '2'),
(5, '29', '11', 1, '1'),
(7, '28', '11', 1, '1'),
(12, '3', '12', 1, '1'),
(13, '27', '12', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `booking_item`
--

CREATE TABLE IF NOT EXISTS `booking_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `booking_id` int(11) NOT NULL COMMENT '預約ID',
  `service_id` varchar(10) NOT NULL COMMENT '服务id',
  `start_time` time NOT NULL COMMENT '開始時間',
  `end_time` time NOT NULL COMMENT '結束時間',
  `user_id` varchar(10) NOT NULL COMMENT '美容師id',
  `quantity` decimal(10,0) NOT NULL COMMENT '數量',
  `ordering` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `booking_item`
--

INSERT INTO `booking_item` (`id`, `booking_id`, `service_id`, `start_time`, `end_time`, `user_id`, `quantity`, `ordering`) VALUES
(6, 0, '29', '00:00:00', '00:00:00', '12', 1, '2'),
(5, 0, '29', '00:00:00', '00:00:00', '11', 1, '1'),
(7, 0, '28', '00:00:00', '00:00:00', '11', 1, '1'),
(12, 0, '3', '00:00:00', '00:00:00', '12', 1, '1'),
(13, 0, '27', '00:00:00', '00:00:00', '12', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `calls`
--

CREATE TABLE IF NOT EXISTS `calls` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `campaign_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_start` date DEFAULT NULL,
  `date_end` date DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `next_followup` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `account_id` char(36) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `campaigns`
--

CREATE TABLE IF NOT EXISTS `campaigns` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT 0,
  `name` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `refer_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'http://',
  `tracker_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `objective` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `campaign_assigns`
--

CREATE TABLE IF NOT EXISTS `campaign_assigns` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `campaign_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `saved_query_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `record_from` int(11) DEFAULT NULL,
  `record_to` int(11) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `cases`
--

CREATE TABLE IF NOT EXISTS `cases` (
  `id` int(11) NOT NULL,
  `case_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `regarding` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `product_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `product` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `registered_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `finished_by` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `finished_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `detail` text COLLATE utf8_unicode_ci NOT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CD1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `cfields`
--

CREATE TABLE IF NOT EXISTS `cfields` (
  `id` int(3) NOT NULL DEFAULT 0,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `field_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `component` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `combination`
--

CREATE TABLE IF NOT EXISTS `combination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `part` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,1) DEFAULT 0.0,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `brand` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '型號',
  `created_time` int(10) DEFAULT NULL,
  `updated_time` int(10) DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- 转存表中的数据 `combination`
--

INSERT INTO `combination` (`id`, `name`, `code`, `part`, `category_id`, `price`, `status`, `unit`, `summary`, `description`, `brand`, `type`, `created_time`, `updated_time`, `delete_time`) VALUES
(1, '蛋白肽Mask 5片盒裝', 'B0001', '', '11', 2088.0, '發售中', '520', '', '', '523', '', NULL, NULL, 0),
(15, 'Yonka Emulsion Pure + NANO Spray', 'B0003', '', '12', 860.0, '發售中', '519', '', '', '517', '', NULL, NULL, 0),
(16, 'DiBi White Science Set', 'B0002', '', '', 2480.0, '發售中', '516', '', '', '515', '', NULL, NULL, 0),
(17, 'Yonka La Vie En Rose Pouch Body Set', 'B0004', '', '12', 0.0, '發售中', '520', '', '', '517', '', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `combination_item`
--

CREATE TABLE IF NOT EXISTS `combination_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `combination_id` varchar(10) NOT NULL COMMENT '組合id',
  `product_id` varchar(10) NOT NULL COMMENT '產品id',
  `quantity` decimal(10,0) NOT NULL COMMENT '數量',
  `ordering` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `combination_item`
--

INSERT INTO `combination_item` (`id`, `combination_id`, `product_id`, `quantity`, `ordering`) VALUES
(23, '1', '13', 1, '2'),
(8, '15', '11', 1, '1'),
(9, '17', '21', 1, '1'),
(10, '17', '26', 1, '2'),
(22, '1', '12', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `commissions`
--

CREATE TABLE IF NOT EXISTS `commissions` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expenses_1` double NOT NULL DEFAULT 0,
  `expenses_2` double NOT NULL DEFAULT 0,
  `expenses_3` double NOT NULL DEFAULT 0,
  `expenses_4` double NOT NULL DEFAULT 0,
  `expenses_5` double NOT NULL DEFAULT 0,
  `expenses_6` double NOT NULL DEFAULT 0,
  `expenses_7` double NOT NULL DEFAULT 0,
  `expenses_8` double NOT NULL DEFAULT 0,
  `expenses_9` double NOT NULL DEFAULT 0,
  `expenses_10` double NOT NULL DEFAULT 0,
  `net_amount` double NOT NULL DEFAULT 0,
  `commission_rate` double DEFAULT 0,
  `commission_price` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `components`
--

CREATE TABLE IF NOT EXISTS `components` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `category` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `member_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_manager` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone_home` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_work` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_other` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_set_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `former_employee` tinyint(1) NOT NULL DEFAULT 0,
  `alt_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `contacts`
--

INSERT INTO `contacts` (`id`, `delete_time`, `created_time`, `updated_time`, `updated_user_id`, `assigned_user_id`, `owner_user_id`, `visible_for`, `team_id`, `created_user_id`, `account_id`, `salutation`, `first_name`, `middle_name`, `last_name`, `member_no`, `lead_source`, `title`, `department`, `account_manager`, `birthdate`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `notes`, `role`, `newsletter`, `category`, `stage`, `website`, `opt`, `import_set_label`, `swap`, `former_employee`, `alt_phone`, `alt_fax`, `alt_email`) VALUES
(1, 0, NULL, NULL, '', '0', '0', '0', '0', '', '1', '0', 'Luke', NULL, '', 'No:1', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(2, 0, NULL, NULL, '', '0', '0', '0', '0', '', '2', '0', 'Leo', NULL, '', 'No:2', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(3, 0, NULL, NULL, '', '0', '0', '0', '0', '', '3', '0', 'Rooky', NULL, '', 'No:3', NULL, 'ABC', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(4, 0, NULL, NULL, '', '0', '0', '0', '0', '', '0', '0', 'Ben', NULL, '312312', 'No:4', NULL, '321', NULL, NULL, '0000-00-00', NULL, '13234353127', '312123', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(5, 0, NULL, NULL, '', '0', '0', '0', '0', '', '5', '0', 'test', NULL, '312312', 'No:5', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(6, 0, NULL, NULL, '', '0', '0', '0', '0', '', '6', '0', 'test', NULL, '312312', 'No:6', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(7, 0, NULL, NULL, '', '0', '0', '0', '0', '', '7', '0', 'test', NULL, '312312', 'No:7', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(8, 0, NULL, NULL, '', '0', '0', '0', '0', '', '8', '0', 'test', NULL, '312312', 'No:8', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(9, 0, NULL, NULL, '', '0', '0', '0', '0', '', '9', '0', 'test', NULL, '312312', 'No:9', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(10, 0, NULL, NULL, '', '0', '0', '0', '0', '', '10', '0', 'test', NULL, '312312', 'No:10', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(11, 0, NULL, NULL, '', '0', '0', '0', '0', '', '11', '0', 'test', NULL, '312312', 'No:11', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(12, 0, NULL, NULL, '', '0', '0', '0', '0', '', '12', '0', 'test', NULL, '312312', 'No:12', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(13, 0, NULL, NULL, '', '0', '0', '0', '0', '', '13', '0', 'test', NULL, '312312', 'No:13', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(14, 0, NULL, NULL, '', '0', '0', '0', '0', '', '14', '0', 'test', NULL, '312312', 'No:14', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(15, 0, NULL, NULL, '', '0', '0', '0', '0', '', '15', '0', 'test', NULL, '312312', 'No:15', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(16, 0, NULL, NULL, '', '0', '0', '0', '0', '', '16', '0', 'test', NULL, '312312', 'No:16', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(17, 0, NULL, NULL, '', '0', '0', '0', '0', '', '17', '0', 'test', NULL, '312312', 'No:17', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(18, 0, NULL, NULL, '', '0', '0', '0', '0', '', '18', '0', 'test', NULL, '312312', 'No:18', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(19, 0, NULL, NULL, '', '0', '0', '0', '0', '', '19', '0', 'test', NULL, '312312', 'No:19', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(20, 0, NULL, NULL, '', '0', '0', '0', '0', '', '20', '0', 'test', NULL, '312312', 'No:20', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(21, 0, NULL, NULL, '', '0', '0', '0', '0', '', '21', '0', 'test', NULL, '312312', 'No:21', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(22, 0, NULL, NULL, '', '0', '0', '0', '0', '', '22', '0', 'test', NULL, '312312', 'No:22', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(23, 0, NULL, NULL, '', '0', '0', '0', '0', '', '23', '0', 'test', NULL, '312312', 'No:23', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(24, 0, NULL, NULL, '', '0', '0', '0', '0', '', '24', '0', 'test', NULL, '312312', 'No:24', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(25, 0, NULL, NULL, '', '0', '0', '0', '0', '', '25', '0', 'test', NULL, '312312', 'No:25', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(26, 0, NULL, NULL, '', '0', '0', '0', '0', '', '26', '0', 'test', NULL, '312312', 'No:26', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `currencie`
--

CREATE TABLE IF NOT EXISTS `currencie` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `symbol` varchar(30) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `iso4217` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `conversion_rate` double DEFAULT 1,
  `common_symbol` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `currencie`
--

INSERT INTO `currencie` (`id`, `name`, `symbol`, `iso4217`, `conversion_rate`, `common_symbol`, `delete_time`) VALUES
(213, '21312', '', '', 0, '', 0),
(312, '221', '', '', 0, '', 0),
(1323, '232', '', '', 0, '', 0),
(3123, '312312', '', '213', 123123, '', 0),
(12112, '222', '', '213', 0, '3213213', 0),
(12312, '21321', '', '331', 312312, '3213213', 0),
(213, '21312', '', '', 0, '', 0),
(312, '221', '', '', 0, '', 0),
(1323, '232', '', '', 0, '', 0),
(3123, '312312', '', '213', 123123, '', 0),
(12112, '222', '', '213', 0, '3213213', 0),
(12312, '21321', '', '331', 312312, '3213213', 0);

-- --------------------------------------------------------

--
-- 表的结构 `district`
--

CREATE TABLE IF NOT EXISTS `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `disabled` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `district` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=76 ;

--
-- 转存表中的数据 `district`
--

INSERT INTO `district` (`id`, `name`, `area`, `ordering`, `disabled`) VALUES
(1, '上水', '新界', '', '0'),
(2, '九龍灣', '九龍', '', '0'),
(3, '何文田', '九龍', '', '0'),
(4, '元朗', '新界', '', '0'),
(5, '則魚涌', '香港', '2', '0'),
(6, '北角', '香港', '', '0'),
(7, '坪洲', '新界', '', '0'),
(8, '大圍', '新界', '', '0'),
(9, '大埔', '新界', '', '0'),
(10, '大澳', '新界', '', '0'),
(11, '大角咀', '九龍', '', '0'),
(12, '天水圍', '新界', '', '0'),
(13, '將軍澳', '新界', '', '0'),
(14, '小西灣', '香港', '', '0'),
(15, '屯門', '新界', '', '0'),
(16, '慈雲山', '九龍', '', '0'),
(17, '新蒲崗', '九龍', '', '0'),
(18, '東涌', '新界', '', '0'),
(19, '柴灣', '香港', '', '0'),
(20, '樂富', '九龍', '', '0'),
(21, '橫頭磡', '九龍', '', '0'),
(22, '沙田', '新界', '', '0'),
(23, '油塘', '九龍', '', '0'),
(24, '深水步', '九龍', '', '0'),
(25, '牛池灣', '九龍', '', '0'),
(26, '牛頭角', '九龍', '', '0'),
(27, '筲箕灣', '香港', '', '0'),
(28, '粉嶺', '新界', '', '0'),
(29, '紅磡', '九龍', '', '0'),
(30, '荃灣', '新界', '', '0'),
(31, '葵涌', '新界', '', '0'),
(32, '藍田', '九龍', '', '0'),
(33, '西貢', '新界', '', '0'),
(34, '觀塘', '九龍', '', '0'),
(35, '赤柱', '香港', '', '0'),
(36, '鑽石山', '九龍', '', '0'),
(37, '長沙灣', '九龍', '', '0'),
(38, '青衣', '新界', '', '0'),
(39, '香港仔', '香港', '', '0'),
(40, '馬鞍山', '新界', '', '0'),
(41, '鴨利洲', '香港', '', '0'),
(42, '黃大仙', '九龍', '', '0'),
(43, '黃竹坑', '香港', '', '0'),
(48, 'test', '香港', '5', ''),
(51, 'test11', '香港', '6', ''),
(52, 'test111', '香港', '7', ''),
(63, 'oooooo', '香港', '333', ''),
(64, '1111111', '九龍', '111111', ''),
(65, '2222', '新界', '22222', ''),
(69, 'test22', '新界', '133', '0'),
(70, 'test333', '新界', '333', '0'),
(71, 'test444', '香港', '44', '0'),
(72, '111', '香港', '2222', '0'),
(73, '11111', '香港', '111111', '0'),
(75, '656454', '香港', '333333', '0');

-- --------------------------------------------------------

--
-- 表的结构 `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `regarding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `opportunity_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '原文件名',
  `save_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '保存文件名',
  `save_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '系统完整路径',
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '系统完整路径',
  `file_ext` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '后缀',
  `file_mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型',
  `file_size` bigint(20) NOT NULL DEFAULT 0 COMMENT '大小',
  `revision` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  `update_time` datetime DEFAULT NULL,
  `lead_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `JPG_display` tinyint(1) NOT NULL DEFAULT 0,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `internal` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `document`
--

INSERT INTO `document` (`id`, `regarding`, `detail`, `created_user_id`, `updated_user_id`, `opportunity_id`, `file_name`, `save_name`, `save_path`, `url`, `file_ext`, `file_mime_type`, `file_size`, `revision`, `create_time`, `delete_time`, `update_time`, `lead_id`, `contact_id`, `JPG_display`, `owner_user_id`, `assigned_user_id`, `team_id`, `visible_for`, `internal`) VALUES
(2, '2222', '111', '', '', NULL, 'wawa.sql', '6cf319db7400bd8466610a0609857bd6.sql', 'D:/xampp/htdocs/adsuite/static/upload/document/20200119/6cf319db7400bd8466610a0609857bd6.sql', '/upload/document/20200119/6cf319db7400bd8466610a0609857bd6.sql', 'sql', 'text/x-Algol68', 18459, NULL, '0000-00-00 00:00:00', 0, NULL, '4', '111', 0, '', '', '', '', 0),
(7, '111', '1', '', '', NULL, 'wawa.sql', '0c256156e749ca44b693e0fd7abbe64c.sql', 'D:/xampp/htdocs/adsuite/static/upload/document/20200122/0c256156e749ca44b693e0fd7abbe64c.sql', '/upload/document/20200122/0c256156e749ca44b693e0fd7abbe64c.sql', 'sql', 'text/x-Algol68', 18459, NULL, '0000-00-00 00:00:00', 0, NULL, '1', '1', 0, '', '', '', '', 0),
(8, '111', '1', '', '', NULL, '5bdc19b3a574b.jpg', '6865dc94758cd3c80c2f0ccdfc7aa661.jpg', 'D:/xampp/htdocs/adsuite/static/upload/document/20200122/6865dc94758cd3c80c2f0ccdfc7aa661.jpg', '/upload/document/20200122/6865dc94758cd3c80c2f0ccdfc7aa661.jpg', 'jpg', 'image/jpeg', 1045303, NULL, '0000-00-00 00:00:00', 0, NULL, '1', '1', 0, '', '', '', '', 0),
(10, 'test', 'test', '', '', NULL, 'favicon.png', '41c42f917676ee02a3716e8b8c41816b.png', 'D:/xampp/htdocs/adsuite/static/upload/document/20200310/41c42f917676ee02a3716e8b8c41816b.png', '/upload/document/20200310/41c42f917676ee02a3716e8b8c41816b.png', 'png', 'image/png', 2413, NULL, NULL, 0, '2020-03-10 16:19:34', '10', '4', 0, '0', '0', '0', '0', 0),
(13, '3333', '33333', '', '', NULL, 'tp_schedule.sql', 'cc387cb03dfb54a49eef5e7a52331ef9.sql', 'D:/xampp/htdocs/admember/static/upload/document/20200326/cc387cb03dfb54a49eef5e7a52331ef9.sql', '/upload/document/20200326/cc387cb03dfb54a49eef5e7a52331ef9.sql', 'sql', 'text/x-Algol68', 3132, NULL, NULL, 0, NULL, '', '4', 0, '0', '0', '0', '0', 0),
(15, '1111', '11', '', '', NULL, '', '', '', '', NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', 0, '', '0', '', '0', 0),
(16, 'hhhh', '2222', '', '', NULL, '', '', '', '', NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', 0, '', '0', '', '0', 0),
(18, '111111', '', '', '', NULL, '', '', '', '', NULL, NULL, 0, NULL, NULL, 0, NULL, '', '', 0, '', '0', '', '0', 0),
(19, '1112', '1111', '', '', NULL, '', '', '', '', NULL, NULL, 0, NULL, NULL, 0, '2020-03-27 16:01:15', '4', '', 0, '', '0', '', '0', 0);

-- --------------------------------------------------------

--
-- 表的结构 `emails`
--

CREATE TABLE IF NOT EXISTS `emails` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description_html` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `account_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotation_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_date` datetime DEFAULT NULL,
  `froms` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tos` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ccs` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `bccs` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `reply_tos` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_reply_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visible_for` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `archived` tinyint(1) DEFAULT 0,
  `feedback_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '店鋪id',
  `name` int(11) NOT NULL COMMENT '名称',
  `disabled` tinyint(1) DEFAULT 0 COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `equipment`
--

INSERT INTO `equipment` (`id`, `store_id`, `name`, `disabled`) VALUES
(1, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `expense`
--

CREATE TABLE IF NOT EXISTS `expense` (
  `detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `regarding` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `expense` double NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `CD1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名字',
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类型',
  `comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `quantity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数量',
  `amount` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `expense`
--

INSERT INTO `expense` (`detail`, `regarding`, `subject`, `account_id`, `contact_id`, `expense`, `created_at`, `updated_at`, `notes`, `owner_user_id`, `assigned_user_id`, `team_id`, `visible_for`, `CD1`, `deleted`, `name`, `type`, `comment`, `quantity`, `amount`) VALUES
(NULL, NULL, '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', NULL, 0, '11', '1111', '111', '11', '11'),
(NULL, NULL, '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', NULL, 0, '2', '1111', '2', '2', '2'),
(NULL, NULL, '', '', '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', '', '', '', NULL, 0, '11', '111', '11', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `favorites`
--

CREATE TABLE IF NOT EXISTS `favorites` (
  `id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) NOT NULL DEFAULT 0,
  `user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `field_labels`
--

CREATE TABLE IF NOT EXISTS `field_labels` (
  `id` int(11) NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `column` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `group_datas`
--

CREATE TABLE IF NOT EXISTS `group_datas` (
  `id` int(4) NOT NULL,
  `module_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `histories`
--

CREATE TABLE IF NOT EXISTS `histories` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `history_type` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `history_info` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_type` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ref_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visible_for` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'All',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `updated_at` datetime DEFAULT NULL,
  `cus_com` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_com` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `follow_up` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `satisfacty` int(2) DEFAULT NULL,
  `active_cycle` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `market_info` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opp_level` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `imports`
--

CREATE TABLE IF NOT EXISTS `imports` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `map` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `failed` mediumtext CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `invoice`
--

CREATE TABLE IF NOT EXISTS `invoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `invoice_date` datetime NOT NULL,
  `store_id` int(11) NOT NULL COMMENT '店铺',
  `member_id` int(11) NOT NULL COMMENT '会员',
  `new_customer` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '是否新客，1-是， 0-否',
  `member_store` float NOT NULL COMMENT '會員儲值',
  `member_reward` float NOT NULL COMMENT '會員獎賞',
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` decimal(10,1) DEFAULT 0.0 COMMENT '服務套票、產品、產品組合總價',
  `discount` float DEFAULT 0,
  `total_amount` decimal(10,1) NOT NULL COMMENT '總金額',
  `final_total` decimal(10,1) NOT NULL COMMENT '剩餘待支付金額',
  `settled_date` datetime DEFAULT NULL,
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `invoice`
--

INSERT INTO `invoice` (`id`, `invoice_no`, `invoice_date`, `store_id`, `member_id`, `new_customer`, `member_store`, `member_reward`, `notes`, `total`, `discount`, `total_amount`, `final_total`, `settled_date`, `created_user_id`, `updated_user_id`, `created_time`, `updated_time`, `delete_time`) VALUES
(5, '2222', '2020-02-21 00:00:00', 1, 1, '1', 0, 0, '試做\r\n首次光顧\r\n', 7638.0, 0, 7638.0, -388.0, NULL, '', '1', NULL, '1584954840', 0);

-- --------------------------------------------------------

--
-- 表的结构 `invoice_groups`
--

CREATE TABLE IF NOT EXISTS `invoice_groups` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(4) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `invoice_item`
--

CREATE TABLE IF NOT EXISTS `invoice_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(11) NOT NULL COMMENT '發票id',
  `service_id` varchar(11) DEFAULT NULL,
  `service_type` varchar(10) NOT NULL COMMENT '1-服務套票id, 2-產品id， 3-產品組合id',
  `quantity` int(11) NOT NULL COMMENT '數量',
  `price` decimal(10,1) NOT NULL COMMENT '單價',
  `discount` float NOT NULL COMMENT '折扣',
  `total` decimal(10,1) NOT NULL COMMENT '金額',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- 转存表中的数据 `invoice_item`
--

INSERT INTO `invoice_item` (`id`, `invoice_id`, `service_id`, `service_type`, `quantity`, `price`, `discount`, `total`) VALUES
(39, '5', '21', '2', 2, 1580.0, 0, 3160.0),
(38, '5', '12', '2', 1, 150.0, 0, 150.0),
(29, '5', '16', '3', 1, 2480.0, 0, 2480.0),
(42, '5', '15', '3', 1, 860.0, 0, 860.0),
(40, '5', '2', '1', 1, 988.0, 0, 988.0);

-- --------------------------------------------------------

--
-- 表的结构 `invoice_items`
--

CREATE TABLE IF NOT EXISTS `invoice_items` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `product_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT 0,
  `list_price` float DEFAULT 0,
  `discount` float DEFAULT 0,
  `markup` float DEFAULT 0,
  `final_price` float DEFAULT 0,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rate` float DEFAULT 0,
  `qty` int(11) DEFAULT 0,
  `tax_rate` float DEFAULT 0,
  `invoice_group_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(4) NOT NULL DEFAULT 0,
  `CD1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `conversion_rate` float NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `invoice_payment`
--

CREATE TABLE IF NOT EXISTS `invoice_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(10) NOT NULL,
  `method` varchar(10) NOT NULL COMMENT '付款方式',
  `amount` decimal(10,1) NOT NULL COMMENT '現付金額',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `invoice_payment`
--

INSERT INTO `invoice_payment` (`id`, `invoice_id`, `method`, `amount`) VALUES
(19, '5', '526', 3000.0),
(18, '5', '526', 4000.0),
(17, '5', '526', 1026.0);

-- --------------------------------------------------------

--
-- 表的结构 `invoice_seller`
--

CREATE TABLE IF NOT EXISTS `invoice_seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(11) NOT NULL COMMENT '發票id',
  `seller_id` varchar(11) NOT NULL COMMENT '銷售員id',
  `seller_type` varchar(10) NOT NULL DEFAULT '2' COMMENT '銷售員類型，1-顧問，2-美容師',
  `commission_rate` float NOT NULL DEFAULT 0 COMMENT '佣金比例',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `invoice_seller`
--

INSERT INTO `invoice_seller` (`id`, `invoice_id`, `seller_id`, `seller_type`, `commission_rate`) VALUES
(11, '5', '1', '2', 0);

-- --------------------------------------------------------

--
-- 表的结构 `kpis`
--

CREATE TABLE IF NOT EXISTS `kpis` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `calcuation_string` text COLLATE utf8_unicode_ci NOT NULL,
  `unit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `kpi_user_items`
--

CREATE TABLE IF NOT EXISTS `kpi_user_items` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `kpi_id` int(4) NOT NULL DEFAULT 0,
  `user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `range` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `employees` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `highlightif` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `threshold` float NOT NULL DEFAULT 0,
  `compare` tinyint(1) NOT NULL DEFAULT 0,
  `compare_range` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `deleted` tinyint(1) NOT NULL DEFAULT 0,
  `show_in_portal` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `member_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_manager` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone_home` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_work` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_other` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_set_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `former_employee` tinyint(1) NOT NULL DEFAULT 0,
  `alt_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `leads`
--

INSERT INTO `leads` (`id`, `delete_time`, `created_time`, `updated_time`, `updated_user_id`, `assigned_user_id`, `owner_user_id`, `visible_for`, `team_id`, `created_user_id`, `account_id`, `salutation`, `first_name`, `middle_name`, `last_name`, `member_no`, `lead_source`, `title`, `department`, `account_manager`, `birthdate`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `notes`, `role`, `newsletter`, `category`, `stage`, `website`, `opt`, `import_set_label`, `swap`, `former_employee`, `alt_phone`, `alt_fax`, `alt_email`) VALUES
(1, 0, NULL, NULL, '', '0', '0', '0', '0', '', '1', '0', 'Luke', NULL, '', 'No:1', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(2, 0, NULL, NULL, '', '0', '0', '0', '0', '', '2', '0', 'Leo', NULL, '', 'No:2', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(3, 0, NULL, NULL, '', '0', '0', '0', '0', '', '3', '0', 'Rooky', NULL, '', 'No:3', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(4, 0, NULL, NULL, '', '0', '0', '0', '0', '', '0', '0', 'Ben', NULL, '312312', 'No:4', NULL, '', NULL, NULL, '0000-00-00', NULL, '13234353127', '312123', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(5, 0, NULL, NULL, '', '0', '0', '0', '0', '', '5', '0', 'test', NULL, '312312', 'No:5', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(6, 0, NULL, NULL, '', '0', '0', '0', '0', '', '6', '0', 'test', NULL, '312312', 'No:6', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(7, 0, NULL, NULL, '', '0', '0', '0', '0', '', '7', '0', 'test', NULL, '312312', 'No:7', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(8, 0, NULL, NULL, '', '0', '0', '0', '0', '', '8', '0', 'test', NULL, '312312', 'No:8', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(9, 0, NULL, NULL, '', '0', '0', '0', '0', '', '9', '0', 'test', NULL, '312312', 'No:9', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(10, 0, NULL, NULL, '', '0', '0', '0', '0', '', '10', '0', 'test', NULL, '312312', 'No:10', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(11, 0, NULL, NULL, '', '0', '0', '0', '0', '', '11', '0', 'test', NULL, '312312', 'No:11', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(12, 0, NULL, NULL, '', '0', '0', '0', '0', '', '12', '0', 'test', NULL, '312312', 'No:12', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(13, 0, NULL, NULL, '', '0', '0', '0', '0', '', '13', '0', 'test', NULL, '312312', 'No:13', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(14, 0, NULL, NULL, '', '0', '0', '0', '0', '', '14', '0', 'test', NULL, '312312', 'No:14', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(15, 0, NULL, NULL, '', '0', '0', '0', '0', '', '15', '0', 'test', NULL, '312312', 'No:15', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(16, 0, NULL, NULL, '', '0', '0', '0', '0', '', '16', '0', 'test', NULL, '312312', 'No:16', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(17, 0, NULL, NULL, '', '0', '0', '0', '0', '', '17', '0', 'test', NULL, '312312', 'No:17', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(18, 0, NULL, NULL, '', '0', '0', '0', '0', '', '18', '0', 'test', NULL, '312312', 'No:18', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(19, 0, NULL, NULL, '', '0', '0', '0', '0', '', '19', '0', 'test', NULL, '312312', 'No:19', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(20, 0, NULL, NULL, '', '0', '0', '0', '0', '', '20', '0', 'test', NULL, '312312', 'No:20', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(21, 0, NULL, NULL, '', '0', '0', '0', '0', '', '21', '0', 'test', NULL, '312312', 'No:21', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(22, 0, NULL, NULL, '', '0', '0', '0', '0', '', '22', '0', 'test', NULL, '312312', 'No:22', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(23, 0, NULL, NULL, '', '0', '0', '0', '0', '', '23', '0', 'test', NULL, '312312', 'No:23', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(24, 0, NULL, NULL, '', '0', '0', '0', '0', '', '24', '0', 'test', NULL, '312312', 'No:24', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(25, 0, NULL, NULL, '', '0', '0', '0', '0', '', '25', '0', 'test', NULL, '312312', 'No:25', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(26, 0, NULL, NULL, '', '0', '0', '0', '0', '', '26', '0', 'test', NULL, '312312', 'No:26', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `listbox_item`
--

CREATE TABLE IF NOT EXISTS `listbox_item` (
  `id` int(11) NOT NULL,
  `type_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `item_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(4) NOT NULL DEFAULT 0,
  `updated_time` datetime DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `listbox_item`
--

INSERT INTO `listbox_item` (`id`, `type_id`, `item_value`, `name`, `parent`, `ordering`, `updated_time`, `delete_time`) VALUES
(3123, '0', '', '123', '', 0, NULL, 0),
(12312, '0', '3123', '123', '3123', 3123, NULL, NULL),
(1, '0', '1', '1222', '1', 1, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `list_column`
--

CREATE TABLE IF NOT EXISTS `list_column` (
  `id` int(11) NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `column` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(4) NOT NULL DEFAULT 0,
  `delete_time` int(10) DEFAULT 0,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `component` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `tables` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `list_column`
--

INSERT INTO `list_column` (`id`, `module`, `column`, `ordering`, `delete_time`, `name`, `component`, `alias`, `tables`) VALUES
(3123, '12', '3123', 231, 0, '0', '22222', '2222', '2222'),
(1, '1', '1', 1, 0, '', '1', '1', '1');

-- --------------------------------------------------------

--
-- 表的结构 `list_trackers`
--

CREATE TABLE IF NOT EXISTS `list_trackers` (
  `id` int(11) NOT NULL,
  `updated_time` datetime DEFAULT NULL,
  `user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `module` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `query_list` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_by` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `log` text NOT NULL COMMENT '日志',
  `ip` varchar(16) NOT NULL DEFAULT '' COMMENT 'IP',
  `t` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=348 ;

--
-- 转存表中的数据 `log`
--

INSERT INTO `log` (`id`, `username`, `log`, `ip`, `t`) VALUES
(75, 'admin', 'Login success', '127.0.0.1', 1580454085),
(76, 'admin', 'Login success', '127.0.0.1', 1580457047),
(77, 'admin', 'Login success', '127.0.0.1', 1580460916),
(78, 'admin', 'Login success', '127.0.0.1', 1580465517),
(79, 'admin', 'Login success', '127.0.0.1', 1580479972),
(80, 'admin', 'Login success', '127.0.0.1', 1580483886),
(81, 'admin', 'Login success', '127.0.0.1', 1580525269),
(82, 'admin', 'Login success', '127.0.0.1', 1580525329),
(83, 'admin', 'Login success', '127.0.0.1', 1580528267),
(84, 'admin', 'Login success', '127.0.0.1', 1580530033),
(85, 'admin', 'Login success', '127.0.0.1', 1580612366),
(86, 'admin', 'Login success', '127.0.0.1', 1580615061),
(87, 'admin', 'Login success', '127.0.0.1', 1580616501),
(88, 'admin', 'Login success', '127.0.0.1', 1580616761),
(89, 'admin', 'Login success', '127.0.0.1', 1580617727),
(90, 'admin', 'Login success', '127.0.0.1', 1580618948),
(91, 'admin', 'Login success', '127.0.0.1', 1580619233),
(92, 'admin', 'Login success', '127.0.0.1', 1580619721),
(93, 'admin', 'Login success', '127.0.0.1', 1580619915),
(94, 'admin', 'Login success', '127.0.0.1', 1580627449),
(95, 'admin', 'Login success', '127.0.0.1', 1580630694),
(96, 'admin', 'Login success', '127.0.0.1', 1580632287),
(97, 'admin', 'Login success', '127.0.0.1', 1580639503),
(98, 'admin', 'Login success', '127.0.0.1', 1580653860),
(99, 'admin', 'Login success', '127.0.0.1', 1580716361),
(100, 'admin', 'Login success', '127.0.0.1', 1580720113),
(101, 'admin', 'Login success', '127.0.0.1', 1580723106),
(102, 'admin', 'Login success', '127.0.0.1', 1580737594),
(103, 'admin', 'Login success', '127.0.0.1', 1580739483),
(104, 'admin', 'Login success', '127.0.0.1', 1580741184),
(105, 'admin', 'Login success', '127.0.0.1', 1580746448),
(106, 'admin', 'Login success', '127.0.0.1', 1580746624),
(107, 'admin', 'Login success', '127.0.0.1', 1580783354),
(108, 'admin', 'Login success', '127.0.0.1', 1580788795),
(109, 'admin', 'Login success', '::1', 1580872593),
(110, 'admin', 'Login success', '::1', 1580872680),
(111, 'admin', 'username or password incorrect。', '::1', 1580882690),
(112, 'admin', 'Login success', '::1', 1580882701),
(113, 'admin', 'Login success', '::1', 1580892980),
(114, 'admin', 'Login success', '::1', 1580952390),
(115, 'admin', 'Login success', '::1', 1580958393),
(116, 'admin', 'Login success', '::1', 1580969599),
(117, 'admin', 'Login success', '::1', 1581038253),
(118, 'admin', 'Login success', '::1', 1581085895),
(119, 'admin', 'Login success', '::1', 1581087844),
(120, 'admin', 'Login success', '::1', 1581303006),
(121, 'admin', 'Login success', '::1', 1581315598),
(122, 'admin', 'username or password incorrect。', '::1', 1581346582),
(123, 'admin', 'Login success', '::1', 1581346589),
(124, 'admin', 'Login success', '127.0.0.1', 1581387526),
(125, 'admin', 'Login success', '127.0.0.1', 1581387648),
(126, 'admin', 'Login success', '127.0.0.1', 1581387731),
(127, 'admin', 'Login success', '127.0.0.1', 1581390285),
(128, 'admin', 'Login success', '127.0.0.1', 1581405732),
(129, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581411283),
(130, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581411289),
(131, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581411563),
(132, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581411628),
(133, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581411736),
(134, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581412458),
(135, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581412472),
(136, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581412574),
(137, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581412608),
(138, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581412862),
(139, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581413439),
(140, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581413484),
(141, 'admin', 'Login success', '127.0.0.1', 1581425958),
(142, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581427038),
(143, 'admin', 'Login success', '127.0.0.1', 1581471933),
(144, 'admin', 'Login success', '127.0.0.1', 1581473458),
(145, 'admin', 'Login success', '127.0.0.1', 1581476121),
(146, 'admin', 'Login success', '127.0.0.1', 1581489569),
(147, 'admin', 'Login success', '127.0.0.1', 1581492238),
(148, 'admin', 'Login success', '127.0.0.1', 1581495156),
(149, 'admin', 'Login success', '127.0.0.1', 1581506814),
(150, 'admin', 'Login success', '127.0.0.1', 1581513544),
(151, 'admin', 'Login success', '127.0.0.1', 1581557432),
(152, 'admin', '编辑菜单，ID:415', '127.0.0.1', 1581562359),
(153, 'admin', 'Login success', '127.0.0.1', 1581575778),
(154, 'admin', 'Login success', '127.0.0.1', 1581582160),
(155, 'admin', 'Login success', '127.0.0.1', 1581588762),
(156, 'admin', 'Login success', '127.0.0.1', 1581594592),
(157, 'admin', 'Login success', '127.0.0.1', 1581598920),
(158, 'admin', 'Login success', '127.0.0.1', 1581645693),
(159, 'admin', 'Login success', '127.0.0.1', 1581652950),
(160, 'admin', 'Login success', '127.0.0.1', 1581665128),
(161, 'admin', 'Login success', '127.0.0.1', 1581681857),
(162, 'admin', 'Login success', '127.0.0.1', 1581686650),
(163, 'admin', 'Login success', '127.0.0.1', 1581732498),
(164, 'admin', 'Login success', '127.0.0.1', 1581735828),
(165, 'admin', 'Login success', '127.0.0.1', 1581747107),
(166, 'admin', 'Login success', '127.0.0.1', 1581749440),
(167, 'admin', 'Login success', '127.0.0.1', 1581751509),
(168, 'admin', 'Login success', '127.0.0.1', 1581756090),
(169, 'admin', 'Login success', '127.0.0.1', 1581760093),
(170, 'admin', 'Login success', '127.0.0.1', 1581771742),
(171, 'admin', 'Login success', '127.0.0.1', 1581820328),
(172, 'admin', 'Login success', '127.0.0.1', 1581821592),
(173, 'admin', 'Login success', '127.0.0.1', 1581822062),
(174, 'admin', 'Login success', '127.0.0.1', 1581822565),
(175, 'admin', 'Login success', '127.0.0.1', 1581824092),
(176, 'admin', 'Login success', '127.0.0.1', 1581827084),
(177, 'admin', 'Login success', '127.0.0.1', 1581836351),
(178, 'admin', 'Login success', '127.0.0.1', 1581841981),
(179, 'admin', 'Login success', '127.0.0.1', 1581841982),
(180, 'admin', 'Login success', '127.0.0.1', 1581843624),
(181, 'admin', 'Login success', '127.0.0.1', 1581860216),
(182, 'admin', 'Login success', '127.0.0.1', 1581861948),
(183, 'admin', 'Login success', '127.0.0.1', 1581865585),
(184, 'admin', 'Login success', '127.0.0.1', 1581906379),
(185, 'admin', 'Login success', '127.0.0.1', 1581910454),
(186, 'admin', 'Login success', '127.0.0.1', 1581924142),
(187, 'admin', 'Login success', '127.0.0.1', 1581925605),
(188, 'admin', 'Login success', '127.0.0.1', 1581932616),
(189, 'admin', 'Login success', '127.0.0.1', 1581991247),
(190, 'admin', 'Login success', '127.0.0.1', 1582000820),
(191, 'admin', 'Login success', '127.0.0.1', 1582007674),
(192, 'admin', 'Login success', '127.0.0.1', 1582014590),
(193, 'admin', 'Login success', '127.0.0.1', 1582017543),
(194, 'admin', 'Login success', '127.0.0.1', 1582028901),
(195, 'admin', 'Login success', '127.0.0.1', 1582077758),
(196, 'admin', '新增菜单，ID:1', '127.0.0.1', 1582077837),
(197, 'admin', 'Login success', '127.0.0.1', 1582080312),
(198, 'admin', 'Login success', '127.0.0.1', 1582082913),
(199, 'admin', 'Login success', '127.0.0.1', 1582085378),
(200, 'admin', 'Login success', '127.0.0.1', 1582086914),
(201, 'admin', 'Login success', '127.0.0.1', 1582088396),
(202, 'admin', 'Login success', '127.0.0.1', 1582090708),
(203, 'admin', 'Login success', '127.0.0.1', 1582105182),
(204, 'admin', 'Login success', '127.0.0.1', 1582117412),
(205, 'admin', 'Login success', '127.0.0.1', 1582165019),
(206, 'admin', 'Login success', '127.0.0.1', 1582166482),
(207, 'admin', 'Login success', '127.0.0.1', 1582173257),
(208, 'admin', 'Login success', '127.0.0.1', 1582176500),
(209, 'admin', 'Login success', '127.0.0.1', 1582180185),
(210, 'admin', 'Login success', '127.0.0.1', 1582187380),
(211, 'admin', 'Login success', '127.0.0.1', 1582194629),
(212, 'admin', 'Login success', '127.0.0.1', 1582199678),
(213, 'admin', 'Login success', '127.0.0.1', 1582207054),
(214, 'admin', 'Login success', '127.0.0.1', 1582213030),
(215, 'admin', 'Login success', '127.0.0.1', 1582251237),
(216, 'admin', 'Login success', '127.0.0.1', 1582270203),
(217, 'admin', 'Login success', '127.0.0.1', 1582276808),
(218, 'admin', 'Login success', '127.0.0.1', 1582283911),
(219, 'admin', 'Login success', '127.0.0.1', 1582286541),
(220, 'admin', 'Login success', '127.0.0.1', 1582294713),
(221, 'admin', 'Login success', '127.0.0.1', 1582298336),
(222, 'admin', 'Login success', '127.0.0.1', 1582337959),
(223, 'admin', 'Login success', '127.0.0.1', 1582342069),
(224, 'admin', 'Login success', '127.0.0.1', 1582353962),
(225, 'admin', 'Login success', '127.0.0.1', 1582360277),
(226, 'admin', 'Login success', '127.0.0.1', 1582368366),
(227, 'admin', 'Login success', '127.0.0.1', 1582377068),
(228, 'admin', 'Login success', '127.0.0.1', 1582380018),
(229, 'admin', 'Login success', '127.0.0.1', 1582381338),
(230, 'admin', 'Login success', '127.0.0.1', 1582425747),
(231, 'admin', 'Login success', '127.0.0.1', 1582428577),
(232, 'admin', 'Login success', '127.0.0.1', 1582431400),
(233, 'admin', 'Login success', '127.0.0.1', 1582434465),
(234, 'admin', 'Login success', '127.0.0.1', 1582437357),
(235, 'admin', 'Login success', '127.0.0.1', 1582441325),
(236, 'admin', 'Login success', '127.0.0.1', 1582446308),
(237, 'admin', 'Login success', '127.0.0.1', 1582451078),
(238, 'admin', 'Login success', '127.0.0.1', 1582452726),
(239, 'admin', 'Login success', '127.0.0.1', 1582458878),
(240, 'admin', 'Login success', '::1', 1582514296),
(241, 'admin', 'Login success', '::1', 1582515360),
(242, 'admin', 'Login success', '::1', 1582515975),
(243, 'admin', 'Login success', '::1', 1582516284),
(244, 'admin', 'Login success', '::1', 1582525988),
(245, 'admin', 'Login success', '::1', 1582526382),
(246, 'admin', 'Login success', '::1', 1582527326),
(247, 'admin', 'Login success', '::1', 1582529833),
(248, 'admin', 'Login success', '127.0.0.1', 1582538258),
(249, 'admin', 'Login success', '127.0.0.1', 1582552453),
(250, 'admin', 'Login success', '127.0.0.1', 1582599410),
(251, 'admin', 'Login success', '127.0.0.1', 1582612829),
(252, 'admin', 'Login success', '127.0.0.1', 1582899307),
(253, 'admin', 'Login success', '127.0.0.1', 1583726978),
(254, 'admin', 'Login success', '127.0.0.1', 1584332563),
(255, 'admin', 'Login success', '127.0.0.1', 1584341048),
(256, 'admin', 'Login success', '127.0.0.1', 1584347762),
(257, 'admin', 'Login success', '127.0.0.1', 1584348506),
(258, 'admin', 'Login success', '127.0.0.1', 1584425232),
(259, 'admin', 'Login success', '127.0.0.1', 1584436007),
(260, 'admin', 'Login success', '127.0.0.1', 1584440048),
(261, 'admin', 'Login success', '127.0.0.1', 1584500541),
(262, 'admin', 'Login success', '127.0.0.1', 1584506457),
(263, 'admin', 'Login success', '127.0.0.1', 1584513743),
(264, 'admin', 'Login success', '127.0.0.1', 1584520706),
(265, 'admin', 'Login success', '127.0.0.1', 1584522238),
(266, 'admin', 'Login success', '127.0.0.1', 1584525197),
(267, 'admin', 'Login success', '127.0.0.1', 1584530564),
(268, 'admin', 'Login success', '127.0.0.1', 1584537385),
(269, 'admin', 'Login success', '183.45.79.42', 1584546736),
(270, 'admin', 'Login success', '183.45.79.42', 1584546871),
(271, 'admin', 'username or password incorrect。', '14.0.226.209', 1584547084),
(272, 'admin', 'Login success', '14.0.226.209', 1584547100),
(273, 'admin', 'Login success', '221.124.89.17', 1584547888),
(274, 'admin', 'Login success', '34.92.204.93', 1584583586),
(275, 'admin', 'Login success', '14.0.226.209', 1584584652),
(276, 'lt', 'Login success', '34.92.204.93', 1584585577),
(277, 'lt', 'update sytem config。', '34.92.204.93', 1584585856),
(278, 'admin', 'Login success', '14.0.226.209', 1584586640),
(279, 'test', 'username or password incorrect。', '221.4.210.169', 1584587145),
(280, 'test', 'username or password incorrect。', '221.4.210.169', 1584587152),
(281, 'lt', 'Login success', '221.4.210.169', 1584587159),
(282, 'admin', 'Login success', '203.145.95.228', 1584589109),
(283, 'test1', 'username or password incorrect。', '34.92.204.93', 1584590077),
(284, 'test', 'username or password incorrect。', '34.92.204.93', 1584590083),
(285, 'test1', 'Login success', '34.92.204.93', 1584590154),
(286, 'test2', 'Login success', '34.92.204.93', 1584590344),
(287, 'admin', 'Login success', '14.0.226.209', 1584590449),
(288, 'test1', 'Login success', '203.145.95.228', 1584590539),
(289, 'admin', 'Login success', '118.140.146.98', 1584599159),
(290, 'admin', 'Login success', '118.140.146.98', 1584599210),
(291, 'lt', 'Login success', '183.45.79.42', 1584603286),
(292, 'admin', 'Login success', '203.145.95.15', 1584605799),
(293, 'admin', 'Login success', '14.0.226.209', 1584613330),
(294, 'admin', 'Login success', '34.92.204.93', 1584686328),
(295, 'lt', 'Login success', '221.4.210.165', 1584687484),
(296, 'admin', 'Login success', '221.125.114.39', 1584688915),
(297, 'admin', 'Login success', '221.4.210.165', 1584690177),
(298, 'admin', 'update sytem config。', '221.4.210.165', 1584690208),
(299, 'admin', 'update sytem config。', '221.4.210.165', 1584690213),
(300, 'lt', 'Login success', '221.4.210.165', 1584691411),
(301, 'test1', 'Login success', '112.120.121.183', 1584691916),
(302, 'lt', 'Login success', '34.92.204.93', 1584693700),
(303, 'admin', 'Login success', '34.92.204.93', 1584757968),
(304, 'admin', 'Login success', '34.92.204.93', 1584883641),
(305, 'admin', 'Login success', '34.92.204.93', 1584886650),
(306, 'admin', 'Login success', '221.124.89.17', 1584929480),
(307, 'admin', 'Login success', '221.124.89.17', 1584930112),
(308, 'admin', 'Login success', '221.124.89.17', 1584936869),
(309, 'admin', 'Login success', '221.124.89.17', 1584944483),
(310, 'lt', 'username or password incorrect。', '221.4.210.167', 1584951273),
(311, 'lt', 'username or password incorrect。', '221.4.210.167', 1584951283),
(312, 'lt', 'username or password incorrect。', '221.4.210.167', 1584951304),
(313, 'lt', 'username or password incorrect。', '221.4.210.167', 1584951305),
(314, 'admin', 'Login success', '221.4.210.167', 1584951387),
(315, 'admin', 'Login success', '::1', 1584953050),
(316, 'admin', 'Login success', '::1', 1585012657),
(317, 'admin', 'Login success', '::1', 1585017026),
(318, 'admin', 'Login success', '::1', 1585029896),
(319, 'admin', 'Login success', '::1', 1585031547),
(320, 'admin', 'Login success', '::1', 1585035359),
(321, 'admin', 'Login success', '::1', 1585038662),
(322, 'admin', 'Login success', '::1', 1585042266),
(323, 'admin', 'Login success', '::1', 1585098980),
(324, 'admin', 'Login success', '::1', 1585104329),
(325, 'admin', 'Login success', '::1', 1585116679),
(326, 'admin', 'Login success', '::1', 1585125745),
(327, 'admin', 'Login success', '::1', 1585185086),
(328, 'admin', 'Login success', '::1', 1585188342),
(329, 'admin', 'Login success', '::1', 1585193128),
(330, 'admin', 'Login success', '::1', 1585203027),
(331, 'admin', 'Login success', '::1', 1585271350),
(332, 'admin', 'Login success', '::1', 1585289457),
(333, 'admin', 'Login success', '34.92.204.93', 1585292577),
(334, 'test3', 'username or password incorrect。', '34.92.204.93', 1585293660),
(335, 'test3', 'username or password incorrect。', '34.92.204.93', 1585293668),
(336, 'test3', 'Login success', '34.92.204.93', 1585293691),
(337, 'admin', 'Login success', '221.4.210.169', 1585296041),
(338, 'admin', 'Login success', '34.92.204.93', 1585296650),
(339, 'lt', 'Login success', '221.4.210.169', 1585297024),
(340, 'admin', 'Login success', '34.92.204.93', 1585300019),
(341, 'admin', 'Login success', '221.4.210.163', 1585301645),
(342, 'admin', 'Login success', '221.124.89.17', 1585362986),
(343, 'admin', 'Login success', '221.124.89.17', 1585366805),
(344, 'admin', 'Login success', '221.125.114.39', 1585455917),
(345, 'admin', 'Login success', '221.125.114.62', 1585460089),
(346, 'admin', 'Login success', '221.125.114.62', 1585465594),
(347, 'admin', 'Login success', '221.4.210.170', 1585535408);

-- --------------------------------------------------------

--
-- 表的结构 `lookup_field`
--

CREATE TABLE IF NOT EXISTS `lookup_field` (
  `id` int(11) NOT NULL,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `column` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(4) NOT NULL DEFAULT 0,
  `mapping_type_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  `component` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `lookup_field`
--

INSERT INTO `lookup_field` (`id`, `module`, `column`, `ordering`, `mapping_type_id`, `delete_time`, `component`) VALUES
(2312, '3123', '12312', 3123, '312', 0, NULL),
(3123, '1312', '312312', 31, '3123', NULL, '123');

-- --------------------------------------------------------

--
-- 表的结构 `mapping`
--

CREATE TABLE IF NOT EXISTS `mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `val` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(4) NOT NULL DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `module_id` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_id` (`type_id`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=92 ;

--
-- 转存表中的数据 `mapping`
--

INSERT INTO `mapping` (`id`, `type_id`, `val`, `name`, `parent`, `ordering`, `updated_at`, `module_id`) VALUES
(1, 'package_unit', '格', 'ge', '', 0, '2020-02-18 15:46:29', '1'),
(2, 'package_unit', '次', 'ci', '', 0, '2020-02-18 15:46:45', '1'),
(3, 'package_unit', '項', 'xiang', '', 0, '2020-02-18 15:46:50', '1'),
(4, 'brand', 'DIBI', 'DIBI', '', 0, '2020-02-18 15:46:58', '1'),
(5, 'products_unit', '件', 'jian', '', 0, '2020-02-18 15:47:22', '1'),
(6, 'brand', 'Yonka', 'Yonka', '', 1, '2020-02-18 15:47:03', '1'),
(7, 'brand', 'Louise', 'Louise', '', 0, '2020-02-18 15:47:11', '1'),
(8, 'products_unit', '支', 'zhi', '', 0, '2020-02-18 15:47:26', '1'),
(9, 'products_unit', '盒', 'he', '', 0, '2020-02-18 15:47:38', '1'),
(10, 'brand', 'Mask', 'Mask', '', 0, '2020-02-18 15:47:15', '1'),
(11, 'notes', '試做', '試做', '', 1, '2020-02-20 22:40:45', '3'),
(12, 'notes', '首次光顧', '首次光顧', '', 2, '2020-02-20 22:41:10', '3'),
(13, 'payment_method', '現金', '現金', '', 1, '2020-02-20 22:48:08', '4'),
(14, 'payment_method', 'ATM', 'ATM', '', 2, '2020-02-20 22:48:34', '4'),
(15, 'payment_method', 'EPS', 'EPS', '', 3, '2020-02-20 22:49:30', '4'),
(17, 'member_no', '有效', '有效', '', 3, '2020-02-20 22:49:30', '2'),
(18, 'member_no', '無效', '無效', '', 3, '2020-02-20 22:49:30', '2'),
(19, 'opt', '試用', '試用', '', 3, '2020-02-20 22:49:30', '2'),
(20, 'opt', '正式', '正式', '', 3, '2020-02-20 22:49:30', '2'),
(21, 'categors', '高級會員', '高級會員', '', 3, '2020-02-20 22:49:30', '2'),
(22, 'categors', '普通會員', '普通會員', '', 3, '2020-02-20 22:49:30', '2'),
(31, 'shop', '銅鑼灣', '銅鑼灣', '', 3, '2020-02-20 22:49:30', '2'),
(32, 'register_date', 'Cherry', 'Cherry', '', 3, '2020-02-20 22:49:30', '2'),
(33, 'register_date', 'Mandy', 'Mandy', '', 3, '2020-02-20 22:49:30', '2'),
(34, 'register_date', 'Lotus', 'Lotus', '', 3, '2020-02-20 22:49:30', '2'),
(35, 'register_date', 'Ruby', 'Ruby', '', 3, '2020-02-20 22:49:30', '2'),
(36, 'register_date', 'Zoey', 'Zoey', '', 3, '2020-02-20 22:49:30', '2'),
(37, 'register_date', 'Lam', 'Lam', '', 3, '2020-02-20 22:49:30', '2'),
(38, 'register_date', 'H1(桃紅)', 'H1(桃紅)', '', 3, '2020-02-20 22:49:30', '2'),
(39, 'register_date', 'H2(米黃)', 'H2(米黃)', '', 3, '2020-02-20 22:49:30', '2'),
(40, 'register_date', 'H3(粉橙)', 'H3(粉橙)', '', 3, '2020-02-20 22:49:30', '2'),
(41, 'source', 'Director-Lam', 'Director-Lam', '', 3, '2020-02-20 22:49:30', '2'),
(42, 'source', 'Director-Man', 'Director-Man', '', 3, '2020-02-20 22:49:30', '2'),
(43, 'source', '客人MGM', '客人MGM', '', 3, '2020-02-20 22:49:30', '2'),
(44, 'source', '同事MGM', '同事MGM', '', 3, '2020-02-20 22:49:30', '2'),
(45, 'source', 'Walk in', 'Walk in', '', 3, '2020-02-20 22:49:30', '2'),
(46, 'source', 'Marketing-Facebook/IG', 'Marketing-Facebook/IG', '', 3, '2020-02-20 22:49:30', '2'),
(47, 'source', 'Marketing-Blogger/KOL', 'Marketing-Blogger/KOL', '', 3, '2020-02-20 22:49:30', '2'),
(48, 'source', 'Marketing-Sponsor', 'Marketing-Sponsor', '', 3, '2020-02-20 22:49:30', '2'),
(49, 'source', 'Marketing-Walk in', 'Marketing-Walk in', '', 3, '2020-02-20 22:49:30', '2'),
(50, 'source', 'Marketing-Event', 'Marketing-Event', '', 3, '2020-02-20 22:49:30', '2'),
(51, 'source', 'Marketing-Referral', 'Marketing-Referral', '', 3, '2020-02-20 22:49:30', '2'),
(52, 'source', 'Marketing-Mindbeauty', 'Marketing-Mindbeauty', '', 3, '2020-02-20 22:49:30', '2'),
(53, 'source', '其他-舊客戶', '其他-舊客戶', '', 3, '2020-02-20 22:49:30', '2'),
(54, 'source', '其他公司', '其他公司', '', 3, '2020-02-20 22:49:30', '2'),
(55, 'payment_method', 'OCBC Payment (Visa/Master)', 'OCBC Payment (Visa/Master)', '', 1, '2020-02-20 22:48:08', '4'),
(56, 'payment_method', 'Global Payment (Visa/Master)', 'Global Payment (Visa/Master)', '', 2, '2020-02-20 22:48:34', '4'),
(57, 'payment_method', '匯豐分期 12', '匯豐分期 12', '', 3, '2020-02-20 22:49:30', '4'),
(58, 'payment_method', '匯豐分期 24', '匯豐分期 24', '', 1, '2020-02-20 22:48:08', '4'),
(59, 'payment_method', 'AE', 'AE', '', 2, '2020-02-20 22:48:34', '4'),
(60, 'payment_method', 'AE分期 12', 'AE分期 12', '', 3, '2020-02-20 22:49:30', '4'),
(61, 'payment_method', 'SCB Payment (Visa/Master)', 'SCB Payment (Visa/Master)', '', 1, '2020-02-20 22:48:08', '4'),
(62, 'payment_method', 'SCB分期 12', 'SCB分期 12', '', 2, '2020-02-20 22:48:34', '4'),
(63, 'payment_method', 'SCB分期 6', 'SCB分期 6', '', 3, '2020-02-20 22:49:30', '4'),
(64, 'payment_method', 'SCB分期 18', 'SCB分期 18', '', 1, '2020-02-20 22:48:08', '4'),
(65, 'payment_method', 'SCB分期 24', 'SCB分期 24', '', 2, '2020-02-20 22:48:34', '4'),
(66, 'payment_method', 'Payme', 'Payme', '', 3, '2020-02-20 22:49:30', '4'),
(67, 'payment_method', 'Paypal', 'Paypal', '', 1, '2020-02-20 22:48:08', '4'),
(68, 'payment_method', 'MGM獎賞', 'MGM獎賞', '', 2, '2020-02-20 22:48:34', '4'),
(69, 'payment_method', 'EPS獎賞', 'EPS獎賞', '', 3, '2020-02-20 22:49:30', '4'),
(70, 'payment_method', '現金回贈', '現金回贈', '', 1, '2020-02-20 22:48:08', '4'),
(71, 'payment_method', 'ValuePlan回贈', 'ValuePlan回贈', '', 2, '2020-02-20 22:48:34', '4'),
(72, 'payment_method', 'Coupon(現金劵)', 'Coupon(現金劵)', '', 3, '2020-02-20 22:49:30', '4'),
(73, 'payment_method', 'Coupon(生日優惠)', 'Coupon(生日優惠)', '', 2, '2020-02-20 22:48:34', '4'),
(74, 'payment_method', '獎賞', '獎賞', '', 3, '2020-02-20 22:49:30', '4'),
(75, 'payment_method', '儲值', '儲值', '', 1, '2020-02-20 22:48:08', '4'),
(76, 'payment_method', 'MindBeauty已收費', 'MindBeauty已收費', '', 2, '2020-02-20 22:48:34', '4'),
(77, 'payment_method', '舊系統已收費', '舊系統已收費', '', 3, '2020-02-20 22:49:30', '4'),
(78, 'expenditure', '電費', '電費', '', 2, '2020-02-20 22:48:34', '4'),
(79, 'expenditure', '水費', '水費', '', 3, '2020-02-20 22:49:30', '4'),
(80, 'expenditure', '電話費/寬頻上網費', '電話費/寬頻上網費', '', 1, '2020-02-20 22:48:08', '4'),
(81, 'expenditure', '清潔費', '清潔費', '', 2, '2020-02-20 22:48:34', '4'),
(82, 'expenditure', '文具', '文具', '', 3, '2020-02-20 22:49:30', '4'),
(83, 'expenditure', '日用品', '日用品', '', 1, '2020-02-20 22:48:08', '4'),
(84, 'expenditure', '食品', '食品', '', 2, '2020-02-20 22:48:34', '4'),
(85, 'expenditure', '雜費', '雜費', '', 3, '2020-02-20 22:49:30', '4'),
(86, 'expenditure', '出糧', '出糧', '', 1, '2020-02-20 22:48:08', '4'),
(87, 'expenditure', '交通', '交通', '', 2, '2020-02-20 22:48:34', '4'),
(88, 'expenditure', 'Bank-in', 'Bank-in', '', 3, '2020-02-20 22:49:30', '4'),
(89, 'expenditure', '電腦用品', '電腦用品', '', 2, '2020-02-20 22:48:34', '4'),
(90, 'expenditure', '娛樂費用', '娛樂費用', '', 3, '2020-02-20 22:49:30', '4'),
(91, 'expenditure', '公司貨品', '公司貨品', '', 1, '2020-02-20 22:48:08', '4');

-- --------------------------------------------------------

--
-- 表的结构 `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `member_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_manager` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone_home` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_work` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_other` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_set_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `former_employee` tinyint(1) NOT NULL DEFAULT 0,
  `alt_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `barcodes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '条码',
  `date_of_birth` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出生日期',
  `identity_card` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证',
  `region1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地区1',
  `region2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地區2',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `reservation_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '预约备注',
  `date_of_accession` datetime DEFAULT NULL COMMENT '加入日期',
  `shop` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '店铺',
  `source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源',
  `source_notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源备注',
  `education_level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '教育程度',
  `occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职业',
  `income` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收入',
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '签名',
  `categors` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `delete_time`, `created_time`, `updated_time`, `updated_user_id`, `assigned_user_id`, `owner_user_id`, `visible_for`, `team_id`, `created_user_id`, `account_id`, `salutation`, `first_name`, `middle_name`, `last_name`, `member_no`, `lead_source`, `title`, `department`, `account_manager`, `birthdate`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `notes`, `role`, `newsletter`, `category`, `stage`, `website`, `opt`, `import_set_label`, `swap`, `former_employee`, `alt_phone`, `alt_fax`, `alt_email`, `barcodes`, `date_of_birth`, `identity_card`, `region1`, `region2`, `remark`, `reservation_remarks`, `date_of_accession`, `shop`, `source`, `source_notes`, `education_level`, `occupation`, `income`, `signature`, `categors`) VALUES
(1, 0, NULL, NULL, '', '0', '0', '0', '0', '', '1', '0', 'Luke', NULL, '', 'No:1', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 0, NULL, NULL, '', '0', '0', '0', '0', '', '2', '0', 'Leo', NULL, '', 'No:2', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 0, NULL, NULL, '', '0', '0', '0', '0', '', '3', '0', 'Rooky', NULL, '', 'No:3', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 0, NULL, NULL, '', '0', '0', '0', '0', '', '0', '0', 'Ben', NULL, '312312', '0', NULL, '', NULL, NULL, '0000-00-00', NULL, '13234353127', '312123', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, '11111', '11111', '', '1111', NULL, '1111', '111', '0000-00-00 00:00:00', '0', '0', '', '1111', '1111', '1111', '', '0'),
(5, 0, NULL, NULL, '', '0', '0', '0', '0', '', '5', '0', 'test', NULL, '312312', 'No:5', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 0, NULL, NULL, '', '0', '0', '0', '0', '', '6', '0', 'test', NULL, '312312', 'No:6', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 0, NULL, NULL, '', '0', '0', '0', '0', '', '7', '0', 'test', NULL, '312312', 'No:7', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 0, NULL, NULL, '', '0', '0', '0', '0', '', '8', '0', 'test', NULL, '312312', 'No:8', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 0, NULL, NULL, '', '0', '0', '0', '0', '', '9', '0', 'test', NULL, '312312', 'No:9', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 0, NULL, NULL, '', '0', '0', '0', '0', '', '10', '0', 'test', NULL, '312312', 'No:10', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 0, NULL, NULL, '', '0', '0', '0', '0', '', '11', '0', 'test', NULL, '312312', 'No:11', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 0, NULL, NULL, '', '0', '0', '0', '0', '', '12', '0', 'test', NULL, '312312', 'No:12', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 0, NULL, NULL, '', '0', '0', '0', '0', '', '13', '0', 'test', NULL, '312312', 'No:13', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 0, NULL, NULL, '', '0', '0', '0', '0', '', '14', '0', 'test', NULL, '312312', 'No:14', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 0, NULL, NULL, '', '0', '0', '0', '0', '', '15', '0', 'test', NULL, '312312', 'No:15', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 0, NULL, NULL, '', '0', '0', '0', '0', '', '16', '0', 'test', NULL, '312312', 'No:16', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 0, NULL, NULL, '', '0', '0', '0', '0', '', '17', '0', 'test', NULL, '312312', 'No:17', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 0, NULL, NULL, '', '0', '0', '0', '0', '', '18', '0', 'test', NULL, '312312', 'No:18', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 0, NULL, NULL, '', '0', '0', '0', '0', '', '19', '0', 'test', NULL, '312312', 'No:19', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 0, NULL, NULL, '', '0', '0', '0', '0', '', '20', '0', 'test', NULL, '312312', 'No:20', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 0, NULL, NULL, '', '0', '0', '0', '0', '', '21', '0', 'test', NULL, '312312', 'No:21', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 0, NULL, NULL, '', '0', '0', '0', '0', '', '22', '0', 'test', NULL, '312312', 'No:22', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 0, NULL, NULL, '', '0', '0', '0', '0', '', '23', '0', 'test', NULL, '312312', 'No:23', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 0, NULL, NULL, '', '0', '0', '0', '0', '', '24', '0', 'test', NULL, '312312', 'No:24', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 0, NULL, NULL, '', '0', '0', '0', '0', '', '25', '0', 'test', NULL, '312312', 'No:25', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 0, NULL, NULL, '', '0', '0', '0', '0', '', '26', '0', 'test', NULL, '312312', 'No:26', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 0, NULL, NULL, '', NULL, '', '', '0', '', '', '0', '', NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '', NULL, '', 0, NULL, NULL, NULL, '', '', '', NULL, NULL, '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `module`
--

INSERT INTO `module` (`id`, `name`, `ordering`) VALUES
(1, '套票/產品', 1),
(2, '會員', 2),
(3, '備注', 3),
(4, '公用', 4);

-- --------------------------------------------------------

--
-- 表的结构 `opportunities`
--

CREATE TABLE IF NOT EXISTS `opportunities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NULL',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''',
  `campaign_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NULL',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''',
  `lead_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''',
  `currency_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NULL',
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''',
  `competitor1_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NULL',
  `competitor2_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NULL',
  `competitor3_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NULL',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '''''',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `product` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` double NOT NULL DEFAULT 1,
  `unit_price` double NOT NULL DEFAULT 0,
  `product_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `est_date_closed` date DEFAULT NULL,
  `next_step` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sales_stage` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `probability` double DEFAULT NULL,
  `company` double NOT NULL DEFAULT 100,
  `process` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_01` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_02` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_03` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_04` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_05` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_opp_name` (`product`),
  KEY `deleted` (`delete_time`),
  KEY `assigned_user_id` (`assigned_user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- 转存表中的数据 `opportunities`
--

INSERT INTO `opportunities` (`id`, `title`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `campaign_id`, `contact_id`, `lead_id`, `currency_id`, `owner_user_id`, `competitor1_id`, `competitor2_id`, `competitor3_id`, `team_id`, `created_time`, `updated_time`, `delete_time`, `product`, `unit`, `unit_price`, `product_type`, `lead_source`, `amount`, `date_closed`, `est_date_closed`, `next_step`, `sales_stage`, `status`, `probability`, `company`, `process`, `description`, `visible_for`, `user_01`, `user_02`, `user_03`, `user_04`, `user_05`, `created_at`) VALUES
(1, 'Test', '', '0', '', '1', '4124124', '4', '', '0', '1', '1', '1', '0', NULL, NULL, 1574408201, NULL, 1, 0, NULL, NULL, 1, '0000-00-00', '0000-00-00', NULL, '1', '1', 1, 1, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Test', '''''', 'NULL', '''''', '1', '4', '''''', 'NULL', '''''', '1', '1', '1', '''''', NULL, NULL, 0, NULL, 1, 0, NULL, NULL, 1, '0000-00-00', '0000-00-00', NULL, '1', '1', 1, 1, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, ''),
(19, '', '''''', '0', '''''', '', '''''', '4', 'NULL', '''''', '', '', '', '''''', NULL, NULL, 0, NULL, 1, 0, NULL, NULL, 0, '0000-00-00', '0000-00-00', NULL, '', '', 0, 0, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `package_staging`
--

CREATE TABLE IF NOT EXISTS `package_staging` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `staging_time` datetime NOT NULL,
  `store_id` int(11) NOT NULL COMMENT '店铺',
  `member_id` int(11) NOT NULL COMMENT '会员',
  `new_customer` varchar(10) COLLATE utf8_unicode_ci DEFAULT '0' COMMENT '是否新客，1-是， 0-否',
  `member_store` float NOT NULL COMMENT '會員儲值',
  `member_reward` float NOT NULL COMMENT '會員獎賞',
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` decimal(10,1) DEFAULT 0.0 COMMENT '總金額',
  `discount` decimal(10,1) DEFAULT 0.0,
  `total_amount` decimal(10,1) NOT NULL COMMENT '總金額',
  `final_total` decimal(10,1) NOT NULL COMMENT '剩餘待支付金額',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `package_staging_item`
--

CREATE TABLE IF NOT EXISTS `package_staging_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_staging_id` varchar(11) NOT NULL COMMENT '套票分期id',
  `service_package_id` varchar(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL COMMENT '數量',
  `price` decimal(10,1) NOT NULL COMMENT '單價',
  `discount` float NOT NULL COMMENT '折扣',
  `total` decimal(10,1) NOT NULL COMMENT '金額',
  `current_payment` decimal(10,1) NOT NULL COMMENT '此期付款',
  `package_value` decimal(10,1) NOT NULL DEFAULT 0.0 COMMENT '套票值',
  `package_value_used` decimal(10,1) NOT NULL DEFAULT 0.0 COMMENT '套票已用值',
  `package_unit` varchar(10) DEFAULT NULL COMMENT '套票值單位',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `package_staging_payment`
--

CREATE TABLE IF NOT EXISTS `package_staging_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_staging_id` varchar(10) NOT NULL,
  `method` varchar(10) NOT NULL COMMENT '付款方式',
  `amount` decimal(10,1) NOT NULL COMMENT '現付金額',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `package_staging_seller`
--

CREATE TABLE IF NOT EXISTS `package_staging_seller` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_staging_id` varchar(11) NOT NULL COMMENT '套票分期id',
  `seller_id` varchar(11) NOT NULL COMMENT '銷售員id',
  `seller_type` varchar(10) NOT NULL DEFAULT '2' COMMENT '銷售員類型，1-顧問，2-美容師',
  `commission_rate` float NOT NULL DEFAULT 0 COMMENT '佣金比例',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- 表的结构 `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '父级ID',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '链接',
  `ctrl` varchar(100) DEFAULT NULL,
  `act` varchar(100) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `icon` varchar(255) NOT NULL DEFAULT '' COMMENT '标图',
  `tips` varchar(255) NOT NULL DEFAULT '' COMMENT '提示语',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0隐藏，1显示',
  `o` int(11) NOT NULL DEFAULT 0 COMMENT '排序，越小越靠前',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`o`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=512 ;

--
-- 转存表中的数据 `permissions`
--

INSERT INTO `permissions` (`id`, `pid`, `url`, `ctrl`, `act`, `title`, `icon`, `tips`, `status`, `o`) VALUES
(1, 0, 'index/index', 'index', 'index', '首頁', 'nav-icon fa fa-tachometer-alt', 'Dashboard', 1, 1),
(2, 0, '#', NULL, NULL, '系統', 'nav-icon fa fa-cog', '', 1, 99),
(3, 2, 'permissions/index', 'permissions', 'index', '權限管理', 'nav-icon fa fa-list', 'Permission Management', 1, 3),
(6, 2, 'logs/index', 'logs', 'index', '登記記錄', 'nav-icon fa fa-user', 'User Management', 1, 12),
(7, 2, '#', 'teams', 'index', '資料備份', 'nav-icon fa fa-users', 'Team Management', 1, 14),
(10, 2, 'setting/index', 'setting', 'index', '系統設置', 'nav-icon fa fa-list', 'Setting', 1, 14),
(11, 74, 'bookings/index', 'bookings', 'index', '預約', 'nav-icon fas fa-angle-right', '', 1, 1),
(12, 11, 'bookings/add', 'bookings', 'add', 'New', '', '', 0, 2),
(13, 11, 'bookings/edit', 'bookings', 'edit', 'Edit', '', '', 0, 2),
(14, 11, 'bookings/del', 'bookings', 'del', 'Delete', '', '', 0, 2),
(15, 11, 'bookings/detail', 'bookings', 'detail', 'Detail', '', '', 0, 2),
(16, 11, 'bookings/print', 'bookings', 'print', 'Print', '', '', 0, 2),
(17, 11, 'bookings/export', 'bookings', 'export', 'Export', '', '', 0, 2),
(18, 0, 'contacts/index', 'contacts', 'index', 'Contact', 'nav-icon fas fa-user-circle', '', 0, 3),
(19, 18, 'contacts/add', 'contacts', 'add', 'New', '', '', 0, 2),
(20, 18, 'contacts/edit', 'contacts', 'edit', 'Edit', '', '', 0, 2),
(21, 18, 'contacts/del', 'contacts', 'del', 'Delete', '', '', 0, 2),
(22, 18, 'contacts/detail', 'contacts', 'detail', 'Detail', '', '', 0, 2),
(25, 32, 'documents/index', 'documents', 'index', '文檔', 'nav-icon fas fa-angle-right', '', 1, 5),
(26, 25, 'documents/add', 'documents', 'add', 'New', '', '', 0, 2),
(27, 25, 'documents/edit', 'documents', 'edit', 'Edit', '', '', 0, 2),
(28, 25, 'documents/del', 'documents', 'del', 'Delete', '', '', 0, 2),
(29, 25, 'documents/detail', 'documents', 'detail', 'Detail', '', '', 0, 2),
(30, 25, 'documents/to_download', 'documents', 'to_download', 'Print', '', '', 0, 2),
(31, 25, 'documents/export', 'documents', 'export', 'Export', '', '', 0, 2),
(32, 0, 'order/index', 'order', 'index', '銷售', 'nav-icon fas fa-credit-card', '', 1, 6),
(33, 32, 'attendances/add', 'attendances', 'add', 'New', '', '', 0, 2),
(34, 32, 'attendances/edit', 'attendances', 'edit', 'Edit', '', '', 0, 2),
(35, 32, 'attendances/del', 'attendances', 'del', 'Delete', '', '', 0, 2),
(36, 32, 'attendances/detail', 'attendances', 'detail', 'Detail', '', '', 0, 2),
(37, 429, 'attendances/index', 'attendances', 'index', '考勤管理', 'nav-icon fas fa-angle-right', '', 1, 11),
(38, 32, 'attendances/export', 'attendances', 'export', 'Export', '', '', 0, 2),
(39, 32, 'leads/index', 'leads', 'index', '潛在信息', 'nav-icon fas fa-angle-right', '', 1, 2),
(40, 39, 'leads/add', 'leads', 'add', 'New', '', '', 0, 2),
(41, 39, 'leads/edit', 'leads', 'edit', 'Edit', '', '', 0, 2),
(42, 39, 'leads/del', 'leads', 'del', 'Delete', '', '', 0, 2),
(43, 39, 'leads/detail', 'leads', 'detail', 'Detail', '', '', 0, 2),
(44, 39, 'leads/print', 'leads', 'print', 'Print', '', '', 0, 2),
(45, 39, 'leads/export', 'leads', 'export', 'Export', '', '', 0, 2),
(46, 32, 'activities/index', 'activities', 'index', '日程', 'nav-icon fas fa-angle-right', '', 1, 2),
(47, 46, 'sales_orders/add', 'SalesOrders', 'add', 'New', '', '', 0, 2),
(48, 46, 'sales_orders/edit', 'SalesOrders', 'edit', 'Edit', '', '', 0, 2),
(49, 46, 'sales_orders/del', 'SalesOrders', 'del', 'Delete', '', '', 0, 2),
(50, 46, 'sales_orders/detail', 'SalesOrders', 'detail', 'Detail', '', '', 0, 2),
(51, 46, 'sales_orders/print', 'SalesOrders', 'print', 'Print', '', '', 0, 2),
(52, 46, 'sales_orders/export', 'SalesOrders', 'export', 'Export', '', '', 0, 2),
(53, 32, 'opportunities/index', 'opportunities', 'index', '商機', 'nav-icon fas fa-angle-right', '', 1, 2),
(54, 53, 'opportunities/add', 'opportunities', 'add', 'New', '', '', 0, 2),
(55, 53, 'opportunities/edit', 'opportunities', 'edit', 'Edit', '', '', 0, 2),
(56, 53, 'opportunities/del', 'opportunities', 'del', 'Delete', '', '', 0, 2),
(57, 53, 'opportunities/detail', 'opportunities', 'detail', 'Detail', '', '', 0, 2),
(58, 53, 'opportunities/print', 'opportunities', 'print', 'Print', '', '', 0, 2),
(59, 53, 'opportunities/export', 'opportunities', 'export', 'Export', '', '', 0, 2),
(60, 32, 'telesales/index', 'telesales', 'index', '電話銷售', 'nav-icon fas fa-angle-right', '', 0, 2),
(61, 60, 'purchase_orders/add', 'purchaseOrders', 'add', 'New', '', '', 0, 2),
(62, 60, 'purchase_orders/edit', 'purchaseOrders', 'edit', 'Edit', '', '', 0, 2),
(63, 60, 'purchase_orders/del', 'purchaseOrders', 'del', 'Delete', '', '', 0, 2),
(64, 60, 'purchase_orders/detail', 'purchaseOrders', 'detail', 'Detail', '', '', 0, 2),
(65, 60, 'purchase_orders/print', 'purchaseOrders', 'print', 'Print', '', '', 0, 2),
(66, 60, 'purchase_orders/export', 'purchaseOrders', 'export', 'Export', '', '', 0, 2),
(67, 0, 'marketing/index', 'marketing', 'index', 'Marketing', 'nav-icon fas fa-list', '', 1, 9),
(68, 67, 'marketing/add', 'marketing', 'add', 'New', '', '', 0, 2),
(69, 67, 'marketing/edit', 'marketing', 'edit', 'Edit', '', '', 0, 2),
(70, 67, 'marketing/del', 'marketing', 'del', 'Delete', '', '', 0, 2),
(71, 67, 'marketing/detail', 'marketing', 'detail', 'Detail', '', '', 0, 2),
(72, 67, 'marketing/print', 'marketing', 'print', 'Print', '', '', 0, 2),
(73, 67, 'marketing/export', 'marketing', 'export', 'Export', '', '', 0, 2),
(74, 0, 'sss/index', 'sss', 'index', '零售', 'nav-icon fas fa-chart-pie', '', 1, 7),
(75, 74, 'report/add', 'report', 'add', 'New', '', '', 0, 2),
(76, 74, 'report/edit', 'report', 'edit', 'Edit', '', '', 0, 2),
(77, 74, 'report/del', 'report', 'del', 'Delete', '', '', 0, 2),
(78, 74, 'report/detail', 'report', 'detail', 'Detail', '', '', 0, 2),
(79, 74, 'report/print', 'report', 'print', 'Print', '', '', 0, 2),
(80, 74, 'report/export', 'report', 'export', 'Export', '', '', 0, 2),
(82, 81, 'sales/add', 'sales', 'add', 'New', '', '', 0, 2),
(83, 81, 'sales/edit', 'sales', 'edit', 'Edit', '', '', 0, 2),
(84, 81, 'sales/del', 'sales', 'del', 'Delete', '', '', 0, 2),
(85, 81, 'sales/detail', 'sales', 'detail', 'Detail', '', '', 0, 2),
(86, 81, 'sales/print', 'sales', 'print', 'Print', '', '', 0, 2),
(87, 81, 'sales/export', 'sales', 'export', 'Export', '', '', 0, 2),
(88, 74, 'invoices/index', 'invoices', 'index', '發票', 'nav-icon fas fa-angle-right', '', 1, 2),
(89, 88, 'account/add', 'account', 'add', 'New', '', '', 0, 2),
(90, 88, 'account/edit', 'account', 'edit', 'Edit', '', '', 0, 2),
(91, 88, 'account/del', 'account', 'del', 'Delete', '', '', 0, 2),
(92, 88, 'account/detail', 'account', 'detail', 'Detail', '', '', 0, 2),
(93, 88, 'account/print', 'account', 'print', 'Print', '', '', 0, 2),
(94, 88, 'account/export', 'account', 'export', 'Export', '', '', 0, 2),
(95, 74, 'PackageStagings/index', 'PackageStagings', 'index', '套票分期', 'nav-icon fas fa-angle-right', '', 1, 2),
(96, 95, 'contact/add', 'contact', 'add', 'New', '', '', 0, 2),
(97, 95, 'contact/edit', 'contact', 'edit', 'Edit', '', '', 0, 2),
(98, 95, 'contact/del', 'contact', 'del', 'Delete', '', '', 0, 2),
(99, 95, 'contact/detail', 'contact', 'detail', 'Detail', '', '', 0, 2),
(100, 95, 'contact/print', 'contact', 'print', 'Print', '', '', 0, 2),
(101, 95, 'contact/export', 'contact', 'export', 'Export', '', '', 0, 2),
(102, 74, 'usePackages/index', 'usePackages', 'index', '使用套票', 'nav-icon fas fa-angle-right', '', 1, 2),
(103, 102, 'diary/add', 'diary', 'add', 'New', '', '', 0, 2),
(104, 102, 'diary/edit', 'diary', 'edit', 'Edit', '', '', 0, 2),
(105, 102, 'diary/del', 'diary', 'del', 'Delete', '', '', 0, 2),
(106, 102, 'diary/detail', 'diary', 'detail', 'Detail', '', '', 0, 2),
(107, 102, 'diary/print', 'diary', 'print', 'Print', '', '', 0, 2),
(108, 102, 'diary/export', 'diary', 'export', 'Export', '', '', 0, 2),
(110, 109, 'history/add', 'history', 'add', 'New', '', '', 0, 2),
(111, 109, 'history/edit', 'history', 'edit', 'Edit', '', '', 0, 2),
(112, 109, 'history/del', 'history', 'del', 'Delete', '', '', 0, 2),
(113, 109, 'history/detail', 'history', 'detail', 'Detail', '', '', 0, 2),
(114, 109, 'history/print', 'history', 'print', 'Print', '', '', 0, 2),
(115, 109, 'history/export', 'history', 'export', 'Export', '', '', 0, 2),
(116, 74, 'invoices/index', 'invoices', 'index', '套票查詢', 'nav-icon fas fa-angle-right', '', 1, 2),
(117, 116, 'order/add', 'order', 'add', 'New', '', '', 0, 2),
(118, 116, 'order/edit', 'order', 'edit', 'Edit', '', '', 0, 2),
(119, 116, 'order/del', 'order', 'del', 'Delete', '', '', 0, 2),
(120, 116, 'order/detail', 'order', 'detail', 'Detail', '', '', 0, 2),
(121, 116, 'order/print', 'order', 'print', 'Print', '', '', 0, 2),
(122, 116, 'order/export', 'order', 'export', 'Export', '', '', 0, 2),
(123, 74, 'results/index', 'results', 'index', '分析', 'nav-icon fas fa-angle-right', '', 0, 2),
(124, 123, 'results/add', 'results', 'add', 'New', '', '', 0, 2),
(125, 123, 'results/edit', 'results', 'edit', 'Edit', '', '', 0, 2),
(126, 123, 'results/del', 'results', 'del', 'Delete', '', '', 0, 2),
(127, 123, 'results/detail', 'results', 'detail', 'Detail', '', '', 0, 2),
(128, 123, 'results/print', 'results', 'print', 'Print', '', '', 0, 2),
(129, 123, 'results/export', 'results', 'export', 'Export', '', '', 0, 2),
(130, 0, 'opportunities/index', 'opportunities', 'index', '庫存', 'nav-icon fas fa-file-invoice-dollar', '', 1, 7),
(131, 130, 'opportunities/add', 'opportunities', 'add', 'New', '', '', 0, 2),
(132, 130, 'opportunities/edit', 'opportunities', 'edit', 'Edit', '', '', 0, 2),
(133, 130, 'opportunities/del', 'opportunities', 'del', 'Delete', '', '', 0, 2),
(134, 130, 'opportunities/detail', 'opportunities', 'detail', 'Detail', '', '', 0, 2),
(135, 130, 'opportunities/print', 'opportunities', 'print', 'Print', '', '', 0, 2),
(136, 130, 'opportunities', 'opportunities', 'export', 'Export', '', '', 0, 2),
(137, 0, 'telesales/index', 'telesales', 'index', 'WhatsApp管理', 'nav-icon fas fa-phone-square', '', 1, 10),
(138, 137, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(139, 137, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(140, 137, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(141, 137, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(142, 137, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(143, 137, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(144, 0, '', '', '', '會員', 'nav-icon fas fa-table', '', 1, 6),
(151, 144, 'members/add', 'members', 'add', '會員登記', 'nav-icon fas fa-angle-right', '', 1, 0),
(152, 158, 'promotions/add', 'promotions', 'add', 'New', '', '', 0, 2),
(153, 158, 'promotions/edit', 'promotions', 'edit', 'Edit', '', '', 0, 2),
(154, 158, 'promotions/del', 'promotions', 'del', 'Delete', '', '', 0, 2),
(155, 158, 'promotions/detail', 'promotions', 'detail', 'Detail', '', '', 0, 2),
(156, 158, 'promotions/print', 'promotions', 'print', 'Print', '', '', 0, 2),
(157, 158, 'promotions/export', 'promotions', 'export', 'Export', '', '', 0, 2),
(158, 137, 'promotions/index', 'promotions', 'index', 'Promotion', 'nav-icon fas fa-angle-right', '', 1, 2),
(159, 351, 'templates/add', 'templates', 'add', 'New', '', '', 0, 2),
(160, 351, 'templates/edit', 'templates', 'edit', 'Edit', '', '', 0, 2),
(161, 351, 'templates/del', 'templates', 'del', 'Delete', '', '', 0, 2),
(162, 351, 'templates/detail', 'templates', 'detail', 'Detail', '', '', 0, 2),
(163, 351, 'templates/print', 'templates', 'print', 'Print', '', '', 0, 2),
(164, 351, 'templates/export', 'templates', 'export', 'Export', '', '', 0, 2),
(165, 137, 'ars/index', 'ars', 'index', '自動回復', 'nav-icon fas fa-angle-right', '', 1, 3),
(166, 165, 'ars/add', 'ars', 'add', 'New', '', '', 0, 2),
(167, 165, 'ars/edit', 'ars', 'edit', 'Edit', '', '', 0, 2),
(168, 165, 'ars/del', 'ars', 'del', 'Delete', '', '', 0, 2),
(169, 165, 'ars/detail', 'ars', 'detail', 'Detail', '', '', 0, 2),
(170, 165, 'ars/print', 'ars', 'print', 'Print', '', '', 0, 2),
(171, 165, 'ars/export', 'ars', 'export', 'Export', '', '', 0, 2),
(173, 358, 'walogs/edit', 'WaLogs', 'edit', 'New', '', '', 0, 2),
(174, 0, 'options/index', 'Options', 'index', '報表', 'nav-icon fas fa-asterisk', '', 1, 8),
(175, 174, 'report/sales', 'report', 'sales', '銷售', 'nav-icon fas fa-angle-right', '', 1, 1),
(176, 175, 'report/add', 'report', 'add', 'New', '', '', 0, 2),
(177, 175, 'report/edit', 'report', 'edit', 'Edit', '', '', 0, 2),
(178, 175, 'report/del', 'report', 'del', 'Delete', '', '', 0, 2),
(179, 175, 'report/detail', 'report', 'detail', 'Detail', '', '', 0, 2),
(180, 175, 'report/print', 'report', 'print', 'Print', '', '', 0, 2),
(181, 175, 'report/export', 'report', 'export', 'Export', '', '', 0, 2),
(182, 174, 'report/basic', 'report', 'basic', '基本', 'nav-icon fas fa-angle-right', '', 1, 2),
(183, 182, 'product_categories/add', 'ProductCategories', 'add', 'New', '', '', 0, 2),
(184, 182, 'product_categories/edit', 'ProductCategories', 'edit', 'Edit', '', '', 0, 2),
(185, 182, 'product_categories/del', 'ProductCategories', 'del', 'Delete', '', '', 0, 2),
(186, 182, 'product_categories/detail', 'ProductCategories', 'detail', 'Detail', '', '', 0, 2),
(187, 182, 'product_categories/print', 'ProductCategories', 'print', 'Print', '', '', 0, 2),
(188, 182, 'product_categories/export', 'ProductCategories', 'export', 'Export', '', '', 0, 2),
(189, 174, 'report/retail', 'report', 'retail', '零售', 'nav-icon fas fa-angle-right', '', 1, 3),
(190, 189, 'Custom fields/add', 'waars', 'add', 'New', '', '', 0, 2),
(191, 189, 'Custom fields/edit', 'waars', 'edit', 'Edit', '', '', 0, 2),
(192, 189, 'Custom fields/del', 'waars', 'del', 'Delete', '', '', 0, 2),
(193, 189, 'Custom fields/detail', 'waars', 'detail', 'Detail', '', '', 0, 2),
(194, 189, 'Custom fields/print', 'waars', 'print', 'Print', '', '', 0, 2),
(195, 189, 'Custom fields/export', 'waars', 'export', 'Export', '', '', 0, 2),
(197, 196, 'listbox_items/add', 'ListboxItems', 'add', 'New', '', '', 0, 2),
(198, 196, 'listbox_items/edit', 'ListboxItems', 'edit', 'Edit', '', '', 0, 2),
(199, 196, 'listbox_items/del', 'ListboxItems', 'del', 'Delete', '', '', 0, 2),
(200, 196, 'listbox_items/detail', 'ListboxItems', 'detail', 'Detail', '', '', 0, 2),
(201, 196, 'listbox_items/print', 'ListboxItems', 'print', 'Print', '', '', 0, 2),
(202, 196, 'listbox_items/export', 'ListboxItems', 'export', 'Export', '', '', 0, 2),
(203, 174, 'report/inventory', 'report', 'inventory', '庫存', 'nav-icon fas fa-angle-right', '', 1, 4),
(204, 203, 'lookup_fields/add', 'LookupFields', 'add', 'New', '', '', 0, 2),
(205, 203, 'lookup_fields/edit', 'LookupFields', 'edit', 'Edit', '', '', 0, 2),
(206, 203, 'lookup_fields/del', 'LookupFields', 'del', 'Delete', '', '', 0, 2),
(207, 203, 'lookup_fields/detail', 'LookupFields', 'detail', 'Detail', '', '', 0, 2),
(208, 203, 'lookup_fields/print', 'LookupFields', 'print', 'Print', '', '', 0, 2),
(209, 203, 'lookup_fields/export', 'LookupFields', 'export', 'Export', '', '', 0, 2),
(210, 174, 'report/salary', 'report', 'salary', '薪金', 'nav-icon fas fa-angle-right', '', 1, 5),
(211, 210, 'list_columns/add', 'ListColumns', 'add', 'New', '', '', 0, 2),
(212, 210, 'list_columns/edit', 'ListColumns', 'edit', 'Edit', '', '', 0, 2),
(213, 210, 'list_columns/del', 'ListColumns', 'del', 'Delete', '', '', 0, 2),
(214, 210, 'list_columns/detail', 'ListColumns', 'detail', 'Detail', '', '', 0, 2),
(215, 210, 'list_columns/print', 'ListColumns', 'print', 'Print', '', '', 0, 2),
(216, 210, 'list_columns/export', 'ListColumns', 'export', 'Export', '', '', 0, 2),
(217, 174, 'report/analyze', 'report', 'analyze', '分析', 'nav-icon fas fa-angle-right', '', 1, 6),
(218, 217, 'Translation/add', 'waars', 'add', 'New', '', '', 0, 2),
(219, 217, 'Translation/edit', 'waars', 'edit', 'Edit', '', '', 0, 2),
(220, 217, 'Translation/del', 'waars', 'del', 'Delete', '', '', 0, 2),
(221, 217, 'Translation/detail', 'waars', 'detail', 'Detail', '', '', 0, 2),
(222, 217, 'Translation/print', 'waars', 'print', 'Print', '', '', 0, 2),
(223, 217, 'Translation/export', 'waars', 'export', 'Export', '', '', 0, 2),
(224, 174, 'report/accounting', 'report', 'accounting', '會計', 'nav-icon fas fa-angle-right', '', 1, 7),
(225, 224, 'Validations/add', 'waars', 'add', 'New', '', '', 0, 2),
(226, 224, 'Validations/edit', 'waars', 'edit', 'Edit', '', '', 0, 2),
(227, 224, 'Validations/del', 'waars', 'del', 'Delete', '', '', 0, 2),
(228, 224, 'Validations/detail', 'waars', 'detail', 'Detail', '', '', 0, 2),
(229, 224, 'Validations/print', 'waars', 'print', 'Print', '', '', 0, 2),
(230, 224, 'Validations/export', 'waars', 'export', 'Export', '', '', 0, 2),
(231, 174, 'report/booking', 'report', 'booking', '預約', 'nav-icon fas fa-angle-right', '', 1, 3),
(232, 231, 'currencies/add', 'currencies', 'add', 'New', '', '', 0, 2),
(233, 231, 'currencies/edit', 'currencies', 'edit', 'Edit', '', '', 0, 2),
(234, 231, 'currencies/del', 'currencies', 'del', 'Delete', '', '', 0, 2),
(235, 231, 'currencies/detail', 'currencies', 'detail', 'Detail', '', '', 0, 2),
(236, 231, 'currencies/print', 'currencies', 'print', 'Print', '', '', 0, 2),
(237, 231, 'currencies/export', 'currencies', 'export', 'Export', '', '', 0, 2),
(238, 393, 'mappings/index', 'mappings', 'index', '單據備註', 'nav-icon fas fa-angle-right', '', 0, 11),
(239, 238, 'mappings/add', 'mappings', 'add', 'New', '', '', 0, 2),
(240, 238, 'mappings/edit', 'mappings', 'edit', 'Edit', '', '', 0, 2),
(241, 238, 'mappings/del', 'mappings', 'del', 'Delete', '', '', 0, 2),
(242, 238, 'mappings/detail', 'mappings', 'detail', 'Detail', '', '', 0, 2),
(243, 238, 'mappings/print', 'mappings', 'print', 'Print', '', '', 0, 2),
(244, 238, 'mappings/export', 'mappings', 'export', 'Export', '', '', 0, 2),
(245, 0, 'activities/index', 'Activities', 'index', 'Daily', 'nav-icon fas fa-calendar-alt', '', 0, 5),
(246, 245, 'activities/add', 'Activities', 'add', 'New', '', '', 0, 2),
(247, 245, 'activities/edit', 'Activities', 'edit', 'Edit', '', '', 0, 2),
(248, 245, 'activities/del', 'Activities', 'del', 'Delete', '', '', 0, 2),
(249, 245, 'activities/detail', 'Activities', 'detail', 'Detail', '', '', 0, 2),
(250, 245, 'activities/print', 'Activities', 'print', 'Print', '', '', 0, 2),
(251, 245, 'activities/export', 'Activities', 'export', 'Export', '', '', 0, 2),
(252, 245, 'activities/panel', 'Activities', 'panel', 'Print', '', '', 0, 2),
(275, 274, 'ars/add', 'ars', 'add', 'New', '', '', 0, 2),
(276, 274, 'ars/edit', 'ars', 'edit', 'Edit', '', '', 0, 2),
(277, 274, 'ars/del', 'ars', 'del', 'Delete', '', '', 0, 2),
(278, 274, 'ars/detail', 'ars', 'detail', 'Detail', '', '', 0, 2),
(279, 274, 'ars/print', 'ars', 'print', 'Print', '', '', 0, 2),
(280, 274, 'ars/export', 'ars', 'export', 'Export', '', '', 0, 2),
(281, 130, 'stockins/index', 'stockins', 'index', '入庫', 'nav-icon fas fa-angle-right', '', 1, 7),
(282, 281, 'stockins/add', 'stockins', 'add', 'New', '', '', 0, 2),
(283, 281, 'stockins/edit', 'stockins', 'edit', 'Edit', '', '', 0, 2),
(284, 281, 'stockins/del', 'stockins', 'del', 'Delete', '', '', 0, 2),
(285, 281, 'stockins/detail', 'stockins', 'detail', 'Detail', '', '', 0, 2),
(286, 281, 'stockins/print', 'stockins', 'print', 'Print', '', '', 0, 2),
(287, 281, 'stockins/export', 'stockins', 'export', 'Export', '', '', 0, 2),
(288, 130, 'stockouts/index', 'stockouts', 'index', '出庫', 'nav-icon fas fa-angle-right', '', 1, 7),
(289, 288, 'stockouts/add', 'stockouts', 'add', 'New', '', '', 0, 2),
(290, 288, 'stockouts/edit', 'stockouts', 'edit', 'Edit', '', '', 0, 2),
(291, 288, 'stockouts/del', 'stockouts', 'del', 'Delete', '', '', 0, 2),
(292, 288, 'stockouts/detail', 'stockouts', 'detail', 'Detail', '', '', 0, 2),
(293, 288, 'stockouts/print', 'stockouts', 'print', 'Print', '', '', 0, 2),
(294, 288, 'stockouts/export', 'stockouts', 'export', 'Export', '', '', 0, 2),
(295, 130, '#', 'opportunities', 'index', '轉倉', 'nav-icon fas fa-angle-right', '', 1, 7),
(296, 295, 'opportunities/add', 'opportunities', 'add', 'New', '', '', 0, 2),
(297, 295, 'opportunities/edit', 'opportunities', 'edit', 'Edit', '', '', 0, 2),
(298, 295, 'opportunities/del', 'opportunities', 'del', 'Delete', '', '', 0, 2),
(299, 295, 'opportunities/detail', 'opportunities', 'detail', 'Detail', '', '', 0, 2),
(300, 295, 'opportunities/print', 'opportunities', 'print', 'Print', '', '', 0, 2),
(301, 295, 'opportunities', 'opportunities', 'export', 'Export', '', '', 0, 2),
(302, 130, '#', 'opportunities', 'index', '點倉', 'nav-icon fas fa-angle-right', '', 1, 7),
(303, 302, 'opportunities/add', 'opportunities', 'add', 'New', '', '', 0, 2),
(304, 302, 'opportunities/edit', 'opportunities', 'edit', 'Edit', '', '', 0, 2),
(305, 302, 'opportunities/del', 'opportunities', 'del', 'Delete', '', '', 0, 2),
(306, 302, 'opportunities/detail', 'opportunities', 'detail', 'Detail', '', '', 0, 2),
(307, 302, 'opportunities/print', 'opportunities', 'print', 'Print', '', '', 0, 2),
(308, 302, 'opportunities', 'opportunities', 'export', 'Export', '', '', 0, 2),
(309, 67, '#', 'marketing', 'index', '郵件', 'nav-icon fas fa-angle-right', '', 1, 9),
(310, 309, 'marketing/add', 'marketing', 'add', 'New', '', '', 0, 2),
(311, 309, 'marketing/edit', 'marketing', 'edit', 'Edit', '', '', 0, 2),
(312, 309, 'marketing/del', 'marketing', 'del', 'Delete', '', '', 0, 2),
(313, 309, 'marketing/detail', 'marketing', 'detail', 'Detail', '', '', 0, 2),
(314, 309, 'marketing/print', 'marketing', 'print', 'Print', '', '', 0, 2),
(315, 309, 'marketing/export', 'marketing', 'export', 'Export', '', '', 0, 2),
(316, 67, '#', 'marketing', 'index', 'SMS', 'nav-icon fas fa-angle-right', '', 1, 9),
(317, 316, 'marketing/add', 'marketing', 'add', 'New', '', '', 0, 2),
(318, 316, 'marketing/edit', 'marketing', 'edit', 'Edit', '', '', 0, 2),
(319, 316, 'marketing/del', 'marketing', 'del', 'Delete', '', '', 0, 2),
(320, 316, 'marketing/detail', 'marketing', 'detail', 'Detail', '', '', 0, 2),
(321, 316, 'marketing/print', 'marketing', 'print', 'Print', '', '', 0, 2),
(322, 316, 'marketing/export', 'marketing', 'export', 'Export', '', '', 0, 2),
(323, 67, '#', 'marketing', 'index', 'FB Messenger', 'nav-icon fas fa-angle-right', '', 1, 9),
(324, 323, 'marketing/add', 'marketing', 'add', 'New', '', '', 0, 2),
(325, 323, 'marketing/edit', 'marketing', 'edit', 'Edit', '', '', 0, 2),
(326, 323, 'marketing/del', 'marketing', 'del', 'Delete', '', '', 0, 2),
(327, 323, 'marketing/detail', 'marketing', 'detail', 'Detail', '', '', 0, 2),
(328, 323, 'marketing/print', 'marketing', 'print', 'Print', '', '', 0, 2),
(329, 323, 'marketing/export', 'marketing', 'export', 'Export', '', '', 0, 2),
(330, 67, 'marketing/index', 'marketing', 'index', 'xs', 'nav-icon fas fa-angle-right', '', 0, 9),
(331, 330, 'marketing/add', 'marketing', 'add', 'New', '', '', 0, 2),
(332, 330, 'marketing/edit', 'marketing', 'edit', 'Edit', '', '', 0, 2),
(333, 330, 'marketing/del', 'marketing', 'del', 'Delete', '', '', 0, 2),
(334, 330, 'marketing/detail', 'marketing', 'detail', 'Detail', '', '', 0, 2),
(335, 330, 'marketing/print', 'marketing', 'print', 'Print', '', '', 0, 2),
(336, 330, 'marketing/export', 'marketing', 'export', 'Export', '', '', 0, 2),
(338, 337, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(339, 337, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(340, 337, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(341, 337, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(342, 337, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(343, 337, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(344, 144, 'members/index_list', 'members', 'index_list', '積分管理', 'nav-icon fas fa-angle-right', '', 1, 10),
(345, 344, 'ss/add', 'ss', 'add', 'New', '', '', 0, 2),
(346, 344, 'ss/edit', 'ss', 'edit', 'Edit', '', '', 0, 2),
(347, 344, 'ss/del', 'ss', 'del', 'Delete', '', '', 0, 2),
(348, 344, 'ss/detail', 'ss', 'detail', 'Detail', '', '', 0, 2),
(349, 344, 'ss/print', 'arsss', 'print', 'Print', '', '', 0, 2),
(350, 344, 'ss/export', 'ss', 'export', 'Export', '', '', 0, 2),
(351, 137, 'templates/index', 'templates', 'index', '消息模板', 'nav-icon fas fa-angle-right', '', 1, 10),
(352, 351, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(353, 351, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(354, 351, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(355, 351, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(356, 351, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(357, 351, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(358, 137, 'wa_logs/index', 'WaLogs', 'index', 'Log', 'nav-icon fas fa-angle-right', '', 1, 10),
(359, 358, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(360, 358, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(361, 358, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(362, 358, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(363, 358, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(364, 358, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(366, 365, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(367, 365, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(368, 365, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(369, 365, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(370, 365, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(371, 365, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(373, 372, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(374, 372, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(375, 372, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(376, 372, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(377, 372, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(378, 372, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(380, 379, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(381, 379, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(382, 379, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(383, 379, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(384, 379, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(385, 379, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(387, 386, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(388, 386, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(389, 386, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(390, 386, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(391, 386, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(392, 386, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(393, 0, 'telesales/index', 'telesales', 'index', '基礎資料', 'nav-icon fas fa-phone-square', '', 1, 10),
(395, 394, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(396, 394, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(397, 394, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(398, 394, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(399, 394, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(400, 394, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(401, 393, 'suppliers/index', 'suppliers', 'index', '供應商', 'nav-icon fas fa-angle-right', '', 1, 10),
(402, 401, 'suppliers/add', 'suppliers', 'add', 'New', '', '', 0, 2),
(403, 401, 'suppliers/edit', 'suppliers', 'edit', 'Edit', '', '', 0, 2),
(404, 401, 'suppliers/del', 'suppliers', 'del', 'Delete', '', '', 0, 2),
(405, 401, 'suppliers/detail', 'suppliers', 'detail', 'Detail', '', '', 0, 2),
(406, 401, 'suppliers/print', 'suppliers', 'print', 'Print', '', '', 0, 2),
(407, 401, 'suppliers/export', 'suppliers', 'export', 'Export', '', '', 0, 2),
(408, 393, 'services/index', 'services', 'index', '套票/產品', 'nav-icon fas fa-angle-right', '', 1, 10),
(409, 408, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(410, 408, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(411, 408, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(412, 408, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(413, 408, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(414, 408, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(415, 393, 'mappings/panel', 'mappings', 'panel', '數據字典', 'nav-icon fas fa-angle-right', '', 1, 10),
(416, 415, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(417, 415, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(418, 415, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(419, 415, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(420, 415, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(421, 415, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(429, 0, 'telesales/index', 'telesales', 'index', '人力資源管理', 'nav-icon fas fa-phone-square', '', 1, 10),
(430, 429, 'users/index', 'users', 'index', '員工管理', 'nav-icon fas fa-angle-right', '', 1, 10),
(431, 430, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(432, 430, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(433, 430, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(434, 430, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(435, 430, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(436, 430, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(437, 429, 'teams/index', 'teams', 'index', '部門管理', 'nav-icon fas fa-angle-right', '', 1, 10),
(438, 437, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(439, 437, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(440, 437, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(441, 437, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(442, 437, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(443, 437, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(445, 444, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(446, 444, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(447, 444, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(448, 444, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(449, 444, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(450, 444, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(452, 451, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(453, 451, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(454, 451, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(455, 451, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(456, 451, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(457, 451, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(458, 429, 'expenses/index', 'expenses', 'index', '支出管理', 'nav-icon fas fa-angle-right', '', 1, 10),
(459, 458, 'expenses/add', 'expenses', 'add', 'New', '', '', 0, 2),
(460, 458, 'expenses/edit', 'expenses', 'edit', 'Edit', '', '', 0, 2),
(461, 458, 'expenses/del', 'expenses', 'del', 'Delete', '', '', 0, 2),
(462, 458, 'expenses/detail', 'expenses', 'detail', 'Detail', '', '', 0, 2),
(463, 458, 'expenses/print', 'expenses', 'print', 'Print', '', '', 0, 2),
(464, 458, 'expenses/export', 'expenses', 'export', 'Export', '', '', 0, 2),
(465, 429, '#', 'telesales', 'index', '工資佣金', 'nav-icon fas fa-angle-right', '', 1, 12),
(466, 465, 'telesales/add', 'telesales', 'add', 'New', '', '', 0, 2),
(467, 465, 'telesales/edit', 'telesales', 'edit', 'Edit', '', '', 0, 2),
(468, 465, 'telesales/del', 'telesales', 'del', 'Delete', '', '', 0, 2),
(469, 465, 'telesales/detail', 'telesales', 'detail', 'Detail', '', '', 0, 2),
(470, 465, 'telesales/print', 'telesales', 'print', 'Print', '', '', 0, 2),
(471, 465, 'telesales/export', 'telesales', 'export', 'Export', '', '', 0, 2),
(472, 393, 'stores/index', 'stores', 'index', '店鋪管理', 'nav-icon fas fa-angle-right', '', 1, 9),
(473, 472, 'stores/add', 'stores', 'add', 'New', '', '', 0, 2),
(474, 472, 'stores/edit', 'stores', 'edit', 'Edit', '', '', 0, 2),
(475, 472, 'stores/del', 'stores', 'del', 'Delete', '', '', 0, 2),
(476, 472, 'stores/detail', 'stores', 'detail', 'Detail', '', '', 0, 2),
(477, 472, 'stores/print', 'stores', 'print', 'Print', '', '', 0, 2),
(478, 472, 'stores/export', 'stores', 'export', 'Export', '', '', 0, 2),
(482, 393, 'warehouses/index', 'warehouses', 'index', '倉庫資料P', 'nav-icon fas fa-angle-right', '', 0, 9),
(483, 482, 'warehouses/add', 'warehouses', 'add', 'New', '', '', 0, 2),
(484, 482, 'warehouses/edit', 'warehouses', 'edit', 'Edit', '', '', 0, 2),
(485, 482, 'warehouses/del', 'warehouses', 'del', 'Delete', '', '', 0, 2),
(486, 393, 'rooms/index', 'rooms', 'index', '房間資料P', 'nav-icon fas fa-angle-right', '', 0, 9),
(487, 486, 'rooms/add', 'rooms', 'add', 'New', '', '', 0, 2),
(488, 486, 'rooms/edit', 'rooms', 'edit', 'Edit', '', '', 0, 2),
(489, 486, 'rooms/del', 'rooms', 'del', 'Delete', '', '', 0, 2),
(490, 393, 'equipments/index', 'equipments', 'index', '儀器資料P', 'nav-icon fas fa-angle-right', '', 0, 9),
(491, 486, 'equipments/add', 'equipments', 'add', 'New', '', '', 0, 2),
(492, 486, 'equipments/edit', 'equipments', 'edit', 'Edit', '', '', 0, 2),
(493, 486, 'equipments/del', 'equipments', 'del', 'Delete', '', '', 0, 2),
(494, 393, 'supplier_contacts/index', 'SupplierContacts', 'index', '聯絡人P', 'nav-icon fas fa-angle-right', '', 0, 9),
(495, 494, 'supplier_contacts/add', 'SupplierContacts', 'add', 'New', '', '', 0, 2),
(496, 494, 'supplier_contacts/edit', 'SupplierContacts', 'edit', 'Edit', '', '', 0, 2),
(497, 494, 'supplier_contacts/del', 'SupplierContacts', 'del', 'Delete', '', '', 0, 2),
(498, 494, 'supplier_contacts/print', 'SupplierContacts', 'print', 'Print', '', '', 0, 2),
(499, 494, 'supplier_contacts/export', 'SupplierContacts', 'export', 'Export', '', '', 0, 2),
(500, 144, 'members/index', 'members', 'index', '會員管理', 'nav-icon fas fa-angle-right', '', 1, 1),
(501, 144, 'members/add', 'members', 'add', 'New', '', '', 0, 2),
(502, 144, 'members/edit', 'members', 'edit', 'Edit', '', '', 0, 2),
(503, 144, 'members/del', 'members', 'del', 'Delete', '', '', 0, 2),
(504, 144, 'members/detail', 'members', 'detail', 'Print', '', '', 0, 2),
(505, 144, 'members/export', 'members', 'export', 'Export', '', '', 0, 2),
(506, 393, 'districts/index', 'districts', 'index', '地區', 'nav-icon fas fa-angle-right', '', 1, 10),
(507, 506, 'districts/add', 'districts', 'add', 'New', '', '', 0, 2),
(508, 506, 'districts/edit', 'districts', 'edit', 'Edit', '', '', 0, 2),
(509, 506, 'districts/del', 'districts', 'del', 'Delete', '', '', 0, 2),
(510, 506, 'districts/detail', 'districts', 'detail', 'Print', '', '', 0, 2),
(511, 506, 'districts/export', 'districts', 'export', 'Export', '', '', 0, 2);

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `part` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,1) DEFAULT 0.0,
  `sgs_price` double DEFAULT NULL,
  `trg_price` double DEFAULT NULL,
  `cost_price` double NOT NULL,
  `effective_date` datetime DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `closing_date` datetime DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `weight` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dimension` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `delete_time` int(10) DEFAULT 0,
  `currency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conversion_rate` float DEFAULT 1,
  `price_from` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_to` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '型號',
  `warehouse` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '是否計算倉存，1-是，0-否',
  `safety_amount` decimal(10,0) NOT NULL DEFAULT 0 COMMENT '安全量',
  `spot_amount` decimal(10,0) NOT NULL DEFAULT 0 COMMENT '现货量',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `code`, `description`, `part`, `category_id`, `price`, `sgs_price`, `trg_price`, `cost_price`, `effective_date`, `created_time`, `updated_time`, `closing_date`, `status`, `weight`, `dimension`, `unit`, `delete_time`, `currency`, `conversion_rate`, `price_from`, `price_to`, `keyword`, `summary`, `brand`, `type`, `warehouse`, `safety_amount`, `spot_amount`) VALUES
(11, '特效骨膠原護理', '11', 'test', '11', '7', 130.0, 120, 150, 60, '2020-02-13 00:00:00', NULL, NULL, '2020-02-13 00:00:00', '發售中', '200', '', '516', 0, NULL, 1, NULL, NULL, NULL, 'test', '518', '', '', 0, 0),
(12, '漢方乳腺疏通療程 30mins', 'B001', '', 'B001', '8', 150.0, 130, 180, 80, '2020-02-13 00:00:00', NULL, NULL, '2020-02-13 00:00:00', '發售中', '0', '', '519', 0, NULL, 1, NULL, NULL, NULL, '', '517', '', '', 0, 0),
(21, '科研亮白爽膚噴霧  200ML', 'PDU-0146', '', '', '', 1580.0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '發售中', '200ML', NULL, '519', 0, NULL, 1, NULL, NULL, NULL, '', '515', 'DD013684', '1', 0, 0),
(26, '科研亮白潔膚泡沫  200ML', 'PDU-0145', '', '8022297038865', '', 480.0, NULL, NULL, 0, NULL, NULL, NULL, NULL, '發售中', '200ML', NULL, '519', 0, NULL, 1, NULL, NULL, NULL, '', '515', 'DD013683', '1', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `product_category`
--

CREATE TABLE IF NOT EXISTS `product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `product_category`
--

INSERT INTO `product_category` (`id`, `pid`, `name`, `delete_time`, `status`) VALUES
(6, 0, 'Facial Treatment', 0, '1'),
(7, 6, '面部護理', 0, '1'),
(8, 0, 'Bust / Endocrine', 0, '1'),
(9, 8, 'Bust', 0, '1'),
(10, 8, 'Endocrine', 0, '1'),
(11, 8, 'Lanluis', 0, '1'),
(12, 0, 'Retail Product', 0, '1'),
(13, 6, '古法面部護理', 0, '1'),
(14, 6, '更新面部護理', 0, '1'),
(15, 6, 'Skin Management', 0, '1'),
(16, 6, '附加項目', 0, '1'),
(17, 0, 'Brand Care', 0, '1'),
(18, 17, 'DiBi', 0, '1'),
(19, 17, 'Yonka', 0, '1'),
(20, 17, 'ILCSI', 0, '1'),
(21, 17, 'Sal', 0, '1'),
(22, 17, 'ABIDIS', 0, '1'),
(23, 17, 'Lanluis', 0, '1'),
(24, 17, 'Other', 0, '1'),
(25, 0, 'Body', 0, '1'),
(26, 25, 'Massage', 0, '1'),
(27, 25, 'Silm', 0, '1'),
(28, 25, 'Pregnant', 0, '1'),
(29, 25, '保健排毒護理', 0, '1'),
(30, 0, 'Spa', 0, '1'),
(31, 30, 'Yonka', 0, '1'),
(32, 30, 'Hygge', 0, '1'),
(33, 30, 'Harnn', 0, '1'),
(34, 30, 'Dlvana', 0, '1'),
(35, 0, 'Eye/Hand/Back', 0, '1'),
(36, 35, '古法明眸護理 ', 0, '1'),
(37, 35, 'Hand', 0, '1'),
(38, 35, 'Back', 0, '1'),
(39, 0, 'PerfectLight755', 0, '1'),
(40, 0, 'Try/Free', 0, '1'),
(41, 0, 'Promotion', 0, '1'),
(42, 0, 'Other', 0, '1'),
(43, 0, 'Salon Product', 0, '1'),
(44, 0, 'Retail Product', 0, '1'),
(45, 0, '常用產品', 0, '1');

-- --------------------------------------------------------

--
-- 表的结构 `promotions`
--

CREATE TABLE IF NOT EXISTS `promotions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `created_user_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT 0,
  `msg_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_ids` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filepath` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_ext` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `query_group_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wa_num` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failed` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_time` datetime DEFAULT NULL,
  `finished` tinyint(1) DEFAULT 0,
  `sending` tinyint(1) DEFAULT 0,
  `total_num` int(11) DEFAULT 0,
  `sent_num` int(11) DEFAULT 0,
  `read_num` int(11) DEFAULT 0,
  `clicked_num` int(11) DEFAULT 0,
  `complained_num` int(11) DEFAULT 0,
  `delete_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `deleted` (`deleted`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `promotions`
--

INSERT INTO `promotions` (`id`, `created_time`, `updated_time`, `created_user_id`, `deleted`, `msg_type`, `template_id`, `contact_ids`, `content`, `filepath`, `filename`, `file_ext`, `query_group_id`, `group_name`, `subject`, `wa_num`, `sender`, `receiver`, `failed`, `delivery_time`, `finished`, `sending`, `total_num`, `sent_num`, `read_num`, `clicked_num`, `complained_num`, `delete_time`) VALUES
(2, '2019-08-12 00:00:00', '2019-08-12 20:53:01', '1', 0, 'text1', '', NULL, 'Thank you joining us tonight. we hope you enjoy!', NULL, NULL, NULL, '2a732ec6-bce3-11e9-90be-00163e8d0e51', NULL, 'Whatsapp', '85265426591', '85265426591', NULL, NULL, '2019-08-12 20:53:00', 0, 1, 21, 0, 0, 0, 0, NULL),
(3, '2019-08-12 00:00:00', '2019-08-12 17:49:01', 'e036b5ac-8f5a-11dc-ba33-001372588291', 0, 'text', '', NULL, 'Hello @@name@@，提提你，我地既WhatsApp CRM講座今晚會舉行喇！記得食埋飯先黎呀，講座預計會係九點半完結，餓住個肚聽就唔好啦！陣間見！\r\n\r\n時間：七時三十分開始（七時開始登記）\r\n地點：旺角彌敦道585號富時中心2401室', NULL, NULL, NULL, '2a732ec6-bce3-11e9-90be-00163e8d0e51', NULL, 'Whatsapp', '85265426591', '85265426591', NULL, NULL, '2019-08-12 17:49:00', 0, 1, 21, 0, 0, 0, 0, NULL),
(4, '2019-08-03 00:00:00', '2019-08-03 13:22:33', 'e036b5ac-8f5a-11dc-ba33-001372588291', 0, 'text', '@@name@@你好，多謝支持妍髮Teris，我地最近推出左新產品，歡迎', NULL, '@@name@@ 你好，多謝支持妍髮Teris，我地最近推出左新產品，歡迎聯絡我地，網址：www.terishair.com', NULL, NULL, NULL, '7284c178-af84-11e9-9ce3-00163e8d0e51', NULL, 'Heris', '85265426591', '85265426591', '8615916309377,85292732853,85296007537', '', '2019-08-03 13:19:00', 1, 1, 3, 3, 0, 0, 0, NULL),
(5, '2019-08-12 00:00:00', '2019-08-12 19:59:01', '1', 0, 'text', 'Hello @@name@@，多謝你今日出席我地既科技券 x Whats', NULL, 'thank you joining us tonight. we hope you enjoy yourself.', NULL, NULL, NULL, '2a732ec6-bce3-11e9-90be-00163e8d0e51', NULL, 'Questionnaire', '85265426591', '85265426591', NULL, NULL, '2019-08-12 19:59:00', 0, 1, 21, 0, 0, 0, 0, NULL),
(6, '2019-08-12 00:00:00', '2019-08-12 17:53:44', '1', 0, 'document', 'hi @@name@@你好，我地公司CRM系統結合左whatsapp推送', '--- \n- 87847226-af70-11e9-b6f2-00163e8d0e51\n', 'hi @@name@@你好，我地公司CRM系統結合左whatsapp推送功能幫助公司同客戶溝通，有興趣了解多啲，可以Whatsapp返我。以上圖片簡單講解左個運作~我地仲可以幫你申請埋科技券架~\r\n', 'public/report/23d35a08-82c0-11e9-9566-00163ee24a96.pdf', 'Q20190530-002.pdf', '.pdf', NULL, NULL, 'CRM', '85265389022', '85265389022', '85292732853', '', '2019-08-12 17:50:00', 1, 1, 1, 1, 0, 0, 0, NULL),
(7, '2019-08-12 00:00:00', '2019-08-12 13:14:39', '1', 0, 'document', 'Repayment Reminder from HY Credit\r\nH', '--- \n- 87847226-af70-11e9-b6f2-00163e8d0e51\n', 'Repayment Reminder from HY Credit\r\nHello @@name@@ (account number #32182341), this is reminder for the repayment amount $7809.8 ($3609.2 as the interest) as of 28 May 19. Please login to http://www.hyc.com.hk/zh/', 'public/report/23d35a08-82c0-11e9-9566-00163ee24a96.pdf', 'Q20190530-002.pdf', '.pdf', NULL, NULL, 'Repayment Reminder', '85265389022', '85265389022', '85292732853', '', '2019-08-12 13:10:00', 1, 1, 1, 1, 0, 0, 0, NULL),
(8, '2019-08-03 00:00:00', '2019-08-03 14:39:03', 'e036b5ac-8f5a-11dc-ba33-001372588291', 0, 'text', '@@name@@ 你好，多謝支持妍髮Teris，我地最近推出左新產品，歡', NULL, '@@name@@ 你好，多謝支持妍髮Teris，我地最近推出左新產品，歡迎聯絡我地，網址：www.terishair.com', NULL, NULL, NULL, '907b3a8e-b5ad-11e9-bffd-00163e8d0e51', NULL, 'Heris', '85265426591', '85265426591', '85267453934,85296007537,85292732853,85291492466', '', '2019-08-03 14:35:00', 1, 1, 4, 4, 0, 0, 0, NULL),
(9, '2019-08-12 00:00:00', '2019-08-12 14:50:58', 'e036b5ac-8f5a-11dc-ba33-001372588291', 0, 'document', '@@name@@ 你好，多謝支持妍髮Teris，我地最近推出左新產品，歡', '--- \n- 87847226-af70-11e9-b6f2-00163e8d0e51\n', '@@name@@ 你好，多謝支持妍髮Teris，我地最近推出左新產品，歡迎聯絡我地，網址：www.terishair.com', 'public/report/23d35a08-82c0-11e9-9566-00163ee24a96.pdf', 'Q20190530-002.pdf', '.pdf', NULL, NULL, 'Heris', '85265426591', '85265426591', '85292732853', '', '2019-08-12 14:48:00', 1, 1, 1, 1, 0, 0, 0, NULL),
(10, '2019-08-12 00:00:00', '2019-08-12 20:51:01', '1', 0, 'text', 'Hello @@name@@，多謝你今日出席我地既科技券 x Whats', NULL, 'Hello @@name@@，多謝你今日出席我地既科技券 x WhatsApp CRM講座，希望我地既服務可以為你公司增加競爭力。係度想收集下你既意見，如果覺得我地既服務：\r\n\r\n好有用(輸入#1)\r\n有用(輸入#2)\r\n冇咩用(輸入#3)\r\n完全冇用(輸入#4)\r\n\r\n謝謝!', NULL, NULL, NULL, '2a732ec6-bce3-11e9-90be-00163e8d0e51', NULL, 'Questionnaire', '85265426591', '85265426591', NULL, NULL, '2019-08-12 20:51:00', 0, 1, 21, 0, 0, 0, 0, NULL),
(11, '2019-07-26 00:00:00', '2019-07-26 17:15:01', '1', 0, 'text', 'hi @@name@@你好，我地公司CRM系統結合左whatsapp推送', NULL, 'Hello @@name@@，提提你我地既WhatsApp CRM講座今晚會舉行喇！記得食埋飯先黎呀，講座預計會係九點半完結，餓住個肚聽就唔好啦！陣間見！\r\n\r\n時間：七時三十分開始（七時開始登記）\r\n地點：旺角彌敦道 585号時富中心2401室', NULL, NULL, NULL, '0db5edb8-af6f-11e9-b6f2-00163e8d0e51', NULL, 'CRM', '85265426591', '65426591', NULL, NULL, '2019-07-26 17:08:00', 0, 1, 28, 0, 0, 0, 0, NULL),
(12, '2019-10-09 00:00:00', '2019-10-09 13:13:40', '1', 0, 'document', 'Hi @@name@@, as talked, we will have', '--- \n- 0e51b2a2-af6f-11e9-b6f2-00163e8d0e51\n', 'Hi @@name@@, as talked, we will have a meeting on 16 Aug 2019 (Fri) at 15:00 - 16:00. Kindly let me know if you have anything that I can prepare in advance. See you!', 'public/report/cb60f0ae-ea4a-11e9-a9f0-00163ece48e0.pdf', 'Q20191009-002.pdf', '.pdf', NULL, NULL, 'New Activity Notice', '85265950905', '85265426591', '85292561628', '', '2019-10-09 13:11:00', 1, 1, 1, 1, 0, 0, 0, NULL),
(13, '2019-08-12 00:00:00', '2019-08-12 13:52:52', 'e036b5ac-8f5a-11dc-ba33-001372588291', 0, 'document', '', '--- \n- 87847226-af70-11e9-b6f2-00163e8d0e51\n', '', 'public/report/23d35a08-82c0-11e9-9566-00163ee24a96.pdf', 'Q20190530-002.pdf', '.pdf', NULL, NULL, 'Q20190530-002', '85265426591', '85265426591', '85292732853', '', '2019-08-12 13:50:00', 1, 1, 1, 1, 0, 0, 0, NULL),
(14, '2019-08-12 00:00:00', '2019-08-12 21:46:05', '1', 0, 'document', '', '--- \n- b0429784-bce4-11e9-a00a-00163e8d0e51\n', '', 'public/report/91f28a0a-bcf3-11e9-90be-00163e8d0e51.pdf', 'Q20190812-001.pdf', '.pdf', NULL, NULL, 'Q20190812-001', '85265426591', '85265426591', '85268000742', '85268000742', '2019-08-12 21:44:00', 1, 1, 1, 1, 0, 0, 0, NULL),
(15, '2019-08-03 00:00:00', '2019-08-03 14:20:13', 'e036b5ac-8f5a-11dc-ba33-001372588291', 0, 'text', '@@name@@你好，多謝支持妍髮Teris，我地最近推出左新產品，歡迎', NULL, '@@name@@你好，多謝支持妍髮Teris，我地最近推出左新產品，歡迎聯絡我地，網址：www.terishair.com', NULL, NULL, NULL, '7284c178-af84-11e9-9ce3-00163e8d0e51', NULL, 'Heris', '85265426591', '85265426591', '8615916309377,85292732853,85296007537', '', '2019-08-03 14:17:00', 1, 1, 3, 3, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `purchase_order`
--

CREATE TABLE IF NOT EXISTS `purchase_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchase_order_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` int(11) NOT NULL,
  `purchaseorder_id` int(11) NOT NULL,
  `from_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_primary_address` text COLLATE utf8_unicode_ci NOT NULL,
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supplier_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supplier_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supplier_address` text COLLATE utf8_unicode_ci NOT NULL,
  `delivery_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `delivery_address` text COLLATE utf8_unicode_ci NOT NULL,
  `attn_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `quotation_no` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `revision_no` int(11) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8_unicode_ci NOT NULL,
  `total` float NOT NULL DEFAULT 0,
  `tax_rate` float NOT NULL DEFAULT 0,
  `total_discount` float NOT NULL DEFAULT 0,
  `final_total` float NOT NULL DEFAULT 0,
  `payment_term` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stage` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `terms_conditions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port_of_delivery` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place_of_destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_date` date NOT NULL DEFAULT '0000-00-00',
  `shipped_by` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forwarder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_marks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `documents` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `packing` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  `deduction` float NOT NULL DEFAULT 0,
  `default_currency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `purchase_order`
--

INSERT INTO `purchase_order` (`id`, `purchase_order_no`, `name`, `purchaseorder_id`, `from_user`, `from_phone`, `from_fax`, `from_mobile`, `from_email`, `from_primary_address`, `account_id`, `contact_id`, `supplier_phone`, `supplier_fax`, `supplier_address`, `delivery_phone`, `delivery_address`, `attn_to`, `billing_address`, `created_at`, `updated_time`, `quotation_no`, `owner_user_id`, `assigned_user_id`, `team_id`, `visible_for`, `created_user_id`, `updated_user_id`, `revision_no`, `notes`, `total`, `tax_rate`, `total_discount`, `final_total`, `payment_term`, `stage`, `terms_conditions`, `cc`, `port_of_delivery`, `place_of_destination`, `shipment_method`, `delivery_date`, `shipped_by`, `forwarder`, `shipping_marks`, `documents`, `packing`, `CD1`, `CD2`, `CD3`, `CD4`, `CD5`, `delete_time`, `deduction`, `default_currency`, `terms`) VALUES
(1, '2', 0, 0, '1', '31231', '1', '11111', '1123@qq.com', '', '111', '23123', '1', '1111', '', '11', '', '1', '', '2020-01-01 06:06:12', NULL, NULL, '0', '0', '0', '0', '', '', 12321, '', 0, 0, 0, 0, '111', '', '', '111', '111', NULL, NULL, '0000-00-00', '1111', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2312', ''),
(5, '3', 0, 0, '11', '1', '11', '1', '333@qq.com', '111', '111', '1', '111', '1', '1111', '1', '1111', '1', '', '2020-01-09 05:13:21', NULL, NULL, '0', '0', '0', '0', '', '', 1, '', 0, 0, 0, 0, '1', '', '', '1', '1', NULL, NULL, '0000-00-00', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '11', ''),
(6, '1', 0, 0, '23322', '1', '333', '1', '1123@qq.com', '111', '11121', '1', '11122', '1', '1111', '1', '22121', '1', '', '2020-01-13 15:13:08', NULL, NULL, '0', '0', '0', '0', '', '', 1, '', 1111, 1, 1, 1, '1', '', '', '1', '1', NULL, NULL, '0000-00-00', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, '1', '1'),
(7, '111', 0, 0, '1', '1', '1', '', '1123@qq.com', '1', '1', '1', '1', '1', '1', '1', '1', '1', '', '2020-01-07 05:14:00', NULL, NULL, '0', '0', '0', '0', '', '', 1, '', 0, 0, 0, 0, '1', '', '', '1', '1', NULL, NULL, '0000-00-00', '1', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', ''),
(8, '11', 0, 0, '11', '1', '1', '1', '1123@qq.com', '1', '1', '1', '11', '1', '111', '1', '1', '1', '', '2020-01-05 06:00:00', NULL, NULL, '0', '0', '0', '0', '', '', 1, '', 0, 0, 0, 0, '111', '', '', '1', '1', NULL, NULL, '0000-00-00', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', ''),
(9, '1', 0, 0, '1', '1', '11', '1', '4141@qq.com', '1', '11', '1', '1', '1', '1', '1', '1', '1', '', '2020-01-01 05:07:10', NULL, NULL, '0', '0', '0', '0', '', '', 1, '', 0, 0, 0, 0, '1', '', '', '1', '1111', NULL, NULL, '0000-00-00', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', ''),
(10, '1', 0, 0, '1', '1', '1', '2', '1123@qq.com', '', '333', '1', '1', '1', '', '1', '', '1', '', '2020-01-04 07:17:10', NULL, NULL, '0', '0', '0', '0', '', '', 0, '', 0, 0, 0, 0, '1', '', '', '1', '1', NULL, NULL, '0000-00-00', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '1', '');

-- --------------------------------------------------------

--
-- 表的结构 `purchase_order_item`
--

CREATE TABLE IF NOT EXISTS `purchase_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `purchaseorder_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `qty` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `purchase_order_item`
--

INSERT INTO `purchase_order_item` (`id`, `purchaseorder_id`, `name`, `description`, `amount`, `qty`) VALUES
(3, 6, 'ghh', 'BBB', 0, ''),
(2, 6, 'bbb', 'hjhf', 0, ''),
(1, 6, 'vbb', 'vvv', 0, ''),
(4, 7, '2222', '22222', 222, ''),
(5, 8, 'wasd', 'asdasd', 0, ''),
(8, 1, 'CCA', 'AA', 0, ''),
(7, 1, 'SS', 'BB', 0, ''),
(6, 1, 'HHH', 'BBB', 0, ''),
(13, 9, 'wasd', 'asdasd', 0, ''),
(11, 5, '111', '1', 1, ''),
(12, 5, '111123', '3333', 44444, ''),
(15, 10, 'bbb', 'aaaa', 0, ''),
(14, 10, 'wasd', '111', 0, ''),
(16, 10, 'ghh', 'ccc', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `quotation`
--

CREATE TABLE IF NOT EXISTS `quotation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `quotation_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `opportunity_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `revision_no` int(11) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` float NOT NULL DEFAULT 0,
  `tax_rate` float NOT NULL DEFAULT 0,
  `total_discount` float NOT NULL DEFAULT 0,
  `final_total` float NOT NULL DEFAULT 0,
  `payment_term` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expiry_date` date NOT NULL DEFAULT '0000-00-00',
  `stage` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `terms_conditions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  `signed_date` datetime DEFAULT NULL,
  `cc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_po` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deduction` float NOT NULL DEFAULT 0,
  `default_currency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Waiting',
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quo_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotation_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `contact_id` (`contact_id`),
  KEY `deleted` (`delete_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `quotation`
--

INSERT INTO `quotation` (`id`, `name`, `quotation_no`, `from_user`, `from_phone`, `from_fax`, `from_mobile`, `from_email`, `account_id`, `contact_id`, `billing_phone`, `billing_fax`, `billing_address`, `created_time`, `updated_time`, `opportunity_id`, `owner_user_id`, `assigned_user_id`, `team_id`, `visible_for`, `created_at`, `updated_user_id`, `revision_no`, `notes`, `total`, `tax_rate`, `total_discount`, `final_total`, `payment_term`, `expiry_date`, `stage`, `terms_conditions`, `CD1`, `CD2`, `CD3`, `CD4`, `CD5`, `delete_time`, `signed_date`, `cc`, `reference_po`, `deduction`, `default_currency`, `approval_status`, `remark`, `quo_type`, `terms`, `quotation_id`) VALUES
(1, '', '1', '1', '1', '', '1', '4141@qq.com', '', '1', '1', '1', '', NULL, NULL, NULL, '0', '0', '0', '0', '1', '', 1, NULL, 9400, 0, 0, 9400, '1', '0000-00-00', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, '11', '', 0, '1', '1', '', '1', '', ''),
(2, '', '1', '1', '1', '222', '1', '2222@qq.com', '1', '11111', '1', '1', '', NULL, NULL, NULL, '0', '0', '0', '0', '11', '', 1, NULL, 0, 0, 0, 0, '11', '0000-00-00', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, '1', '1', 0, '1', '1', '', '1', '', ''),
(3, '', '1', '1', '1', '11111', '1', '4141@qq.com', '1', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', '0', '0', '1', '', 111, NULL, 0, 0, 0, 0, '1', '0000-00-00', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, '1', '1', 0, '1', '1', '', '1', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `quotation_item`
--

CREATE TABLE IF NOT EXISTS `quotation_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quotation_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `qty` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=236 ;

--
-- 转存表中的数据 `quotation_item`
--

INSERT INTO `quotation_item` (`id`, `quotation_id`, `name`, `description`, `amount`, `qty`) VALUES
(194, 58, '4', '4', 444, ''),
(193, 58, '33', '33', 333, ''),
(192, 58, '2', '2', 22, ''),
(191, 58, '11', '11', 11, ''),
(207, 64, '', '', 0, ''),
(230, 1, '555', '444', 4000, NULL),
(211, 1, '1111', '111', 400, NULL),
(217, 7, 'a', '', 0, ''),
(218, 7, 'b', '', 0, ''),
(219, 7, 'c', '', 0, ''),
(228, 2, 'H', 'AA', 0, ''),
(221, 2, 'b', 'CC', 0, ''),
(222, 2, 'c', 'BB', 0, ''),
(224, 4, 'wasd', 'bbb', 0, ''),
(225, 4, 'ssss', 'aaaa', 0, ''),
(226, 4, 'gggg', 'dddd', 0, ''),
(220, 2, '11', 'DD', 0, ''),
(210, 1, '111', '111', 5000, NULL),
(231, 5, 'wasd', 'asdasd', 0, ''),
(232, 5, '2', 'aaaa', 0, ''),
(235, 6, 'bbb', '111', 0, ''),
(233, 6, 'wasd', '1122', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(4) NOT NULL DEFAULT 0,
  `from_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '01',
  `value5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '001',
  `value6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0001',
  `value7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '000001',
  `shop` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '店铺',
  `status` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态',
  `classify` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分类',
  `category` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类别',
  `sex` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `date_of_birth` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出生日期',
  `area` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地区',
  `join_date` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '加入日期',
  `promote` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '推广',
  `source` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '来源',
  `arrival_time` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '到店时间',
  `report` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '报表类型',
  `stores` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '预约店铺',
  `date` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日期',
  `week` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '星期',
  `beautician` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '美容师',
  `consultant` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '顾问',
  `member` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '会员',
  `data_tom` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日期（基本表）',
  `shops` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '店鋪',
  `status_tom` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '狀態',
  `source_tom` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '來源',
  `payment_method` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '付款方式',
  `new_yorker` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新客',
  `report_language` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '報表語言',
  `cost_calculation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '成本計算',
  `insufficient_stock` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '倉存不足',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_id` (`type_id`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `report`
--

INSERT INTO `report` (`id`, `module`, `type_id`, `name`, `value1`, `value2`, `value3`, `parent`, `ordering`, `from_name`, `site`, `phone`, `fax`, `e_mail`, `url`, `value4`, `value5`, `value6`, `value7`, `shop`, `status`, `classify`, `category`, `sex`, `date_of_birth`, `area`, `join_date`, `promote`, `source`, `arrival_time`, `report`, `stores`, `date`, `week`, `beautician`, `consultant`, `member`, `data_tom`, `shops`, `status_tom`, `source_tom`, `payment_method`, `new_yorker`, `report_language`, `cost_calculation`, `insufficient_stock`) VALUES
(1, 'code', 'base', 'user', 'SF', '001', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'code', 'base', 'user_security', 'L', '01', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '店鋪id',
  `name` varchar(50) NOT NULL COMMENT '名称',
  `disabled` tinyint(1) DEFAULT 0 COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `room`
--

INSERT INTO `room` (`id`, `store_id`, `name`, `disabled`) VALUES
(2, 10, '2222', 0),
(3, 10, '3333', 0),
(4, 10, '1111', 0),
(6, 10, '1111', 0),
(7, 10, '1111', 0),
(8, 10, '1111', 0),
(9, 10, '1111', 0),
(11, 10, '2222', 0),
(12, 10, 'abc', 0),
(13, 10, '2222', 0);

-- --------------------------------------------------------

--
-- 表的结构 `sales_order`
--

CREATE TABLE IF NOT EXISTS `sales_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salesorder_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salesorder_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_user` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_address` text COLLATE utf8_unicode_ci NOT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `opportunity_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotation_no` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `revision_no` int(11) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` float NOT NULL DEFAULT 0,
  `tax_rate` float NOT NULL DEFAULT 0,
  `total_discount` float NOT NULL DEFAULT 0,
  `final_total` float NOT NULL DEFAULT 0,
  `payment_term` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stage` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `terms_conditions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD4` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD5` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  `billed_date` datetime DEFAULT NULL,
  `cc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_po` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `port_of_loading` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `place_of_destination` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipment_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_bank_ac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_tax_ac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_postalcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_agent` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_bank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_bank_ac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_tax_ac` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `deduction` float NOT NULL DEFAULT 0,
  `default_currency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD6` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD7` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD8` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD9` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CD10` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attn_to` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shipping_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shipping_address` text COLLATE utf8_unicode_ci NOT NULL,
  `shipping_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shipping_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `terms` int(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `sales_order`
--

INSERT INTO `sales_order` (`id`, `name`, `salesorder_id`, `salesorder_no`, `from_user`, `from_phone`, `from_fax`, `from_mobile`, `from_email`, `account_id`, `contact_id`, `billing_phone`, `billing_fax`, `billing_address`, `created_time`, `updated_time`, `opportunity_id`, `quotation_no`, `owner_user_id`, `assigned_user_id`, `team_id`, `visible_for`, `created_at`, `updated_user_id`, `revision_no`, `notes`, `total`, `tax_rate`, `total_discount`, `final_total`, `payment_term`, `stage`, `terms_conditions`, `CD1`, `CD2`, `CD3`, `CD4`, `CD5`, `delete_time`, `billed_date`, `cc`, `reference_po`, `port_of_loading`, `place_of_destination`, `shipment_method`, `from_bank`, `from_bank_ac`, `from_tax_ac`, `from_postalcode`, `billing_agent`, `billing_bank`, `billing_bank_ac`, `billing_tax_ac`, `from_company`, `from_address`, `deduction`, `default_currency`, `CD6`, `CD7`, `CD8`, `CD9`, `CD10`, `attn_to`, `shipping_phone`, `shipping_address`, `shipping_fax`, `shipping_company`, `terms`) VALUES
(1, '', '', '111', 'gfdgafd', 'asf', 'gfdg', 'fsaf', '1123@qq.com', 'casd', 'sdsa', 'ascas', 'sad', '111', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '2020-1-1', '', 0, NULL, 0, 0, 0, 0, 'sdsadc', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'sad', 'dasd', 'dfagfgfd', 'fsaf', 'das', 'gdafg', 'sdas', '11', 'dasdas', NULL, '1111', '1111', '11', 'gd', '11', 0, '12312312', NULL, NULL, NULL, NULL, NULL, 'vcasvcas', 'asd', '111', '', '', NULL),
(4, '', '', '111', '2', '22', '2', '2', '4141@qq.com', '2', '2', '2', '2', '111', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '2', '', 2, NULL, 0, 0, 0, 0, '2', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2', '2', '22', '2', '2', '2', '2', '2', '2', NULL, '2', '2', '2', '2', '1111', 0, '2', NULL, NULL, NULL, NULL, NULL, '2', '2', '111', '', '', NULL),
(5, '', '', '1111', '1', '1', '1', '1', '1123@qq.com', '1', '1', '1111', '1', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '1', '', 1, NULL, 0, 0, 0, 0, '1', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1', '111', '111', '1', '1', '1', '111', '1', '1', NULL, '1', '1', '1', '1', '', 0, '1', NULL, NULL, NULL, NULL, NULL, '1', '1', '', '', '', NULL),
(6, '', '', '1', '1', '1', '1', '1', '1123@qq.com', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '1', '', 1, NULL, 0, 0, 0, 0, '1', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1', '1', '1', '1', '1', '1', '1', '11', '1', NULL, '1', '1', '1', '1', '1q', 0, '1', NULL, NULL, NULL, NULL, NULL, '1', '1', '1', '', '', NULL),
(7, '', '', '11', '1', '1', '1', '1', '333@qq.com', '1', '1', '1', '1', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '111', '', 1, NULL, 0, 0, 0, 0, '1', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '1', '1', '1', '1', '11', '1', '1', '1', '1', NULL, '1', '1', '11', '1', '', 0, '1', NULL, NULL, NULL, NULL, NULL, '1', '1', '', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `sales_order_item`
--

CREATE TABLE IF NOT EXISTS `sales_order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salesorder_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `qty` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=235 ;

--
-- 转存表中的数据 `sales_order_item`
--

INSERT INTO `sales_order_item` (`id`, `salesorder_id`, `name`, `description`, `amount`, `qty`) VALUES
(194, 58, '4', '4', 444, ''),
(193, 58, '33', '33', 333, ''),
(192, 58, '2', '2', 22, ''),
(191, 58, '11', '11', 11, ''),
(207, 64, '', '', 0, ''),
(211, 1, '1111', '111', 1111, ''),
(234, 7, 'CCC', 'BBB', 0, ''),
(227, 6, 'aaa', 'bbb', 0, ''),
(232, 7, 'bb', 'ddd', 0, ''),
(220, 1, 'a', 'v', 0, ''),
(223, 5, 'c', 'BBB', 0, ''),
(222, 5, 'b', 'ccc', 0, ''),
(226, 4, 'ccc', 'sss', 0, ''),
(228, 6, 'vvv', 'ccc', 0, ''),
(225, 4, 'bbb', 'hjhf', 0, ''),
(224, 4, 'aaaa', 'hhh', 0, ''),
(210, 1, '111', '111', 11, ''),
(230, 4, 'd', 'h', 0, ''),
(221, 5, '1111', 'bbb', 0, ''),
(231, 7, '11', 'CC', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '狀態',
  `category_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '類別',
  `summary` text COLLATE utf8_unicode_ci NOT NULL COMMENT '摘要',
  `price` decimal(10,1) NOT NULL COMMENT '價值',
  `beautician_pay` decimal(10,1) NOT NULL COMMENT '美容師工錢',
  `package_deduction` double NOT NULL COMMENT '套票扣除值',
  `service_time` double NOT NULL COMMENT '服務時間',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT '備注',
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `service`
--

INSERT INTO `service` (`id`, `code`, `name`, `status`, `category_id`, `summary`, `price`, `beautician_pay`, `package_deduction`, `service_time`, `description`, `delete_time`, `create_time`, `update_time`, `updated_user_id`, `assigned_user_id`, `owner_user_id`, `visible_for`, `team_id`, `created_user_id`) VALUES
(3, 'B035', '五行排毒肚30mins', '可用', '10', '', 988.0, 60.0, 1, 30, '', 0, NULL, '2020-02-21 19:55:47', '', '0', '0', '0', '0', ''),
(27, 'B001', '漢方乳腺疏通療程 30mins', '可用', '9', '', 988.0, 60.0, 1, 30, '', 0, '2020-02-14 11:12:14', '2020-02-21 20:04:16', '1', NULL, '', '', '0', ''),
(28, 'F020', '基本清潔護理', '可用', '7', '', 388.0, 30.0, 1, 45, '', 0, '2020-02-14 11:13:51', '2020-02-16 14:45:40', '', NULL, '', '', '0', '');

-- --------------------------------------------------------

--
-- 表的结构 `service_item`
--

CREATE TABLE IF NOT EXISTS `service_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` varchar(10) NOT NULL COMMENT '服务id',
  `product_id` varchar(10) NOT NULL COMMENT '產品id',
  `quantity` decimal(10,0) NOT NULL COMMENT '數量',
  `ordering` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `service_item`
--

INSERT INTO `service_item` (`id`, `service_id`, `product_id`, `quantity`, `ordering`) VALUES
(6, '29', '12', 1, '2'),
(5, '29', '11', 1, '1'),
(7, '28', '11', 1, '1'),
(12, '3', '12', 1, '1'),
(13, '27', '12', 1, '1');

-- --------------------------------------------------------

--
-- 表的结构 `service_package`
--

CREATE TABLE IF NOT EXISTS `service_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '編號',
  `part` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '條碼',
  `category_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `summary` text COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,1) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `optional_service` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT '自選服務',
  `expiration_date` int(10) NOT NULL DEFAULT 0 COMMENT '有效期',
  `package_value` decimal(10,1) NOT NULL,
  `package_value_used` decimal(10,1) NOT NULL DEFAULT 0.0 COMMENT '套票已用值',
  `package_unit` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `service_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '2',
  `deducted_percent` double NOT NULL,
  `used_up` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已用完',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='服務套票' AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `service_package`
--

INSERT INTO `service_package` (`id`, `status`, `code`, `part`, `category_id`, `name`, `summary`, `price`, `description`, `optional_service`, `expiration_date`, `package_value`, `package_value_used`, `package_unit`, `service_type`, `deducted_percent`, `used_up`) VALUES
(1, '發售中', 'F020', '', '7', '基礎清潔護理 ', '', 388.0, '', '1', 0, 3.0, 2.0, '506', '2', 0, 1),
(2, '發售中', 'B001', '', '9', '漢方乳腺疏通療程 30mins', '', 988.0, '', '0', 0, 3.0, 0.0, '506', '2', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `service_package_item`
--

CREATE TABLE IF NOT EXISTS `service_package_item` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `service_package_id` varchar(10) NOT NULL,
  `service_id` varchar(10) NOT NULL,
  `deduct_val` double NOT NULL,
  `ordering` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- 转存表中的数据 `service_package_item`
--

INSERT INTO `service_package_item` (`id`, `service_package_id`, `service_id`, `deduct_val`, `ordering`) VALUES
(28, '1', '28', 1, 3),
(27, '1', '27', 1, 2),
(26, '1', '3', 1, 1),
(31, '2', '28', 1, 3),
(30, '2', '27', 1, 2),
(29, '2', '3', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `type_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `value1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(4) NOT NULL DEFAULT 0,
  `from_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `site` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `e_mail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '01',
  `value5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '001',
  `value6` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0001',
  `value7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '000001',
  `employee_data` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '員工資料',
  `level_and_authority` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '級別權限',
  `membership` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '會員資料',
  `supplier_information` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '供應商資料',
  `service_packages` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服務套票',
  `product` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '產品',
  `product_mix` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '產品組合',
  `serve` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服務',
  `store` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '店鋪',
  `reservation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '预约',
  `invoice` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发票',
  `package_staging` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '套票分期',
  `use_package` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '使用套票',
  `package_refund` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '套票退款',
  `ikura` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '入倉',
  `dekura` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出倉',
  `turnover` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '轉倉',
  `expenditure` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出',
  `limit_days` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '限制日数',
  `content1` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发票内容',
  `content2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分期内容',
  `content3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '套票内容',
  `system_idle_time` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系統閒置時間',
  `print_language` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列印語言',
  `report_language` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '報表語言',
  `cost_calculation` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '成本計算',
  `insufficient_stock` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '倉存不足',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_id` (`type_id`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `setting`
--

INSERT INTO `setting` (`id`, `module`, `type_id`, `name`, `value1`, `value2`, `value3`, `parent`, `ordering`, `from_name`, `site`, `phone`, `fax`, `e_mail`, `url`, `value4`, `value5`, `value6`, `value7`, `employee_data`, `level_and_authority`, `membership`, `supplier_information`, `service_packages`, `product`, `product_mix`, `serve`, `store`, `reservation`, `invoice`, `package_staging`, `use_package`, `package_refund`, `ikura`, `dekura`, `turnover`, `expenditure`, `limit_days`, `content1`, `content2`, `content3`, `system_idle_time`, `print_language`, `report_language`, `cost_calculation`, `insufficient_stock`) VALUES
(1, 'code', 'base', 'user', 'SF', '001', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'code', 'base', 'user_security', 'L', '01', NULL, NULL, 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `stockin`
--

CREATE TABLE IF NOT EXISTS `stockin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `quotation_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `supplier` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `abstract` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `store` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_mobile` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `from_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `billing_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `opportunity_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `revision_no` int(11) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` float NOT NULL DEFAULT 0,
  `tax_rate` float NOT NULL DEFAULT 0,
  `total_discount` float NOT NULL DEFAULT 0,
  `final_total` float NOT NULL DEFAULT 0,
  `liaisons` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `expiry_date` date NOT NULL DEFAULT '0000-00-00',
  `stage` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `terms_conditions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  `date` datetime DEFAULT NULL,
  `opt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reference_po` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deduction` float NOT NULL DEFAULT 0,
  `default_currency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approval_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Waiting',
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `quo_type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `terms` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotation_id` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `contact_id` (`contact_id`),
  KEY `deleted` (`delete_time`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- 转存表中的数据 `stockin`
--

INSERT INTO `stockin` (`id`, `name`, `supplier_id`, `quotation_no`, `supplier`, `abstract`, `store`, `from_mobile`, `from_email`, `account_id`, `contact_id`, `billing_phone`, `billing_fax`, `billing_address`, `created_time`, `updated_time`, `opportunity_id`, `owner_user_id`, `assigned_user_id`, `team_id`, `visible_for`, `created_at`, `updated_user_id`, `revision_no`, `notes`, `total`, `tax_rate`, `total_discount`, `final_total`, `liaisons`, `expiry_date`, `stage`, `terms_conditions`, `delete_time`, `date`, `opt`, `reference_po`, `deduction`, `default_currency`, `approval_status`, `remark`, `quo_type`, `terms`, `quotation_id`) VALUES
(1, 'sadasd', 4, '122', '1', '1', '', '1', '4141@qq.com', '', '1', '1', '1', '', NULL, NULL, NULL, '0', '0', '0', '0', '1', '', 1, NULL, 9400, 0, 0, 9400, '1', '0000-00-00', '', '', 0, '2019-12-11 00:00:00', '0', '', 0, '1', '1', '', '1', '', ''),
(4, '1', 4, '11', '1', '111', '11', '', '', '', '', '1', '', '', NULL, NULL, NULL, '', '', '', '', '', '', 0, NULL, 0, 0, 0, 0, '1', '0000-00-00', '', NULL, 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, NULL, ''),
(6, '111', 4, '22222', '111', '1111', '1111', '', '', '', '', '111', '', '', NULL, NULL, NULL, '', '', '', '', '', '', 0, NULL, 0, 0, 0, 0, '111', '0000-00-00', '', NULL, 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, NULL, ''),
(7, '4', 4, '4444', '44', '4', '44', '', '', '', '', '44', '', '', NULL, NULL, NULL, '', '', '', '', '', '', 0, NULL, 0, 0, 0, 0, '42144', '0000-00-00', '', NULL, 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, NULL, ''),
(9, '33', 4, '11121', '122', '', '232', '', '', '', '', '', '', '', NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 77, 0, 0, 77, '23', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', ''),
(10, '123213', 0, '1111xixix', '213213', '312312', '1111', '', '', '', '', '123123', '', '', NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 231231, 0, 0, 231231, '123', '0000-00-00', '', '', 0, '2011-11-02 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', ''),
(25, 'asdas', 4, 'wajdaslkdj ', 'dasdasd', 'fdsfsdf', 'fdasfdsafsdf', '', '', '', '', 'asddas', '', '', NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 0, 0, 0, 0, 'dasdasd', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', ''),
(38, '', 4, 'aabbcc', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 280, 0, 0, 280, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL),
(40, '', 4, '53124', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 275, 0, 0, 275, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL),
(42, '', 4, 'test2222', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 33, 0, 0, 33, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL),
(43, '', 4, 'test444', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 0, 0, 0, 0, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL),
(44, '', 4, 'test123', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 0, 0, 0, 0, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL),
(45, '', 4, 'test111232', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 0, 0, 0, 0, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL),
(46, '', 4, 'test555', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 0, 0, 0, 0, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL),
(47, '', 4, '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 0, 0, 0, 0, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL),
(48, '', 4, 'test555666', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '', '', 0, NULL, 0, 0, 0, 0, '', '0000-00-00', '', '', 0, '0000-00-00 00:00:00', '0', NULL, 0, NULL, 'Waiting', NULL, NULL, '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `stockin_item`
--

CREATE TABLE IF NOT EXISTS `stockin_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stockin_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `quantity` decimal(10,0) DEFAULT NULL,
  `product_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '产品ID',
  `product_price` decimal(10,1) NOT NULL,
  `ordering` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=350 ;

--
-- 转存表中的数据 `stockin_item`
--

INSERT INTO `stockin_item` (`id`, `stockin_id`, `name`, `description`, `amount`, `quantity`, `product_id`, `product_price`, `ordering`) VALUES
(194, 58, '4', '4', 444, 0, '', 0.0, ''),
(193, 58, '33', '33', 333, 0, '', 0.0, ''),
(192, 58, '2', '2', 22, 0, '', 0.0, ''),
(191, 58, '11', '11', 11, 0, '', 0.0, ''),
(207, 64, '', '', 0, 0, '', 0.0, ''),
(230, 1, '555', '444', 4000, NULL, '', 0.0, ''),
(211, 1, '1111', '111', 400, NULL, '', 0.0, ''),
(217, 7, 'a', '', 0, 0, '', 0.0, ''),
(218, 7, 'b', '', 0, 0, '', 0.0, ''),
(219, 7, 'c', '', 0, 0, '', 0.0, ''),
(228, 2, 'H', 'AA', 0, 0, '', 0.0, ''),
(221, 2, 'b', 'CC', 0, 0, '', 0.0, ''),
(222, 2, 'c', 'BB', 0, 0, '', 0.0, ''),
(224, 4, 'wasd', 'bbb', 0, 0, '', 0.0, ''),
(225, 4, 'ssss', 'aaaa', 0, 0, '', 0.0, ''),
(226, 4, 'gggg', 'dddd', 0, 0, '', 0.0, ''),
(220, 2, '11', 'DD', 0, 0, '', 0.0, ''),
(210, 1, '111', '111', 5000, NULL, '', 0.0, ''),
(235, 6, 'bbb', '111', 0, 0, '', 0.0, ''),
(233, 6, 'wasd', '1122', 0, 0, '', 0.0, ''),
(236, 9, '11', '1223', 44, NULL, '', 0.0, ''),
(237, 9, '', '', 33, NULL, '', 0.0, ''),
(238, 10, '12', '3213', 231231, NULL, '', 0.0, ''),
(239, 18, '', '', 0, NULL, '', 0.0, ''),
(240, 19, '', '', 0, NULL, '', 0.0, ''),
(241, 24, NULL, NULL, NULL, NULL, '11', 0.0, '1'),
(242, 25, NULL, NULL, NULL, NULL, '11', 0.0, '1'),
(243, 25, NULL, NULL, NULL, NULL, '12', 0.0, '2'),
(259, 37, NULL, NULL, NULL, 1, '11', 0.0, '1'),
(258, 36, NULL, NULL, NULL, 1, '11', 0.0, '1'),
(246, 27, NULL, NULL, NULL, NULL, '11', 0.0, '1'),
(247, 27, NULL, NULL, NULL, NULL, '12', 0.0, '2'),
(248, 28, NULL, NULL, NULL, NULL, '11', 0.0, '1'),
(249, 32, NULL, NULL, NULL, 1, '11', 0.0, '1'),
(250, 33, NULL, NULL, NULL, 1, '11', 0.0, '1'),
(251, 33, NULL, NULL, NULL, 1, '12', 0.0, '2'),
(252, 34, NULL, NULL, NULL, 1, '11', 0.0, '1'),
(253, 34, NULL, NULL, NULL, 1, '21', 0.0, '2'),
(254, 35, NULL, NULL, NULL, 1, '11', 0.0, '1'),
(255, 35, NULL, NULL, NULL, 1, '12', 0.0, '2'),
(256, 35, NULL, NULL, NULL, 1, '21', 0.0, '3'),
(257, 35, NULL, NULL, NULL, 1, '26', 0.0, '4'),
(260, 37, NULL, NULL, NULL, 1, '12', 0.0, '2'),
(261, 37, NULL, NULL, NULL, 1, '21', 0.0, '3'),
(262, 37, NULL, NULL, NULL, 1, '26', 0.0, '4'),
(265, 39, NULL, NULL, NULL, 122, '11', 0.0, '1'),
(266, 39, NULL, NULL, NULL, 122, '12', 0.0, '2'),
(345, 40, NULL, NULL, 150, 1, '12', 150.0, '2'),
(344, 40, NULL, NULL, 260, 2, '11', 130.0, '1'),
(269, 41, NULL, NULL, NULL, 11, '11', 0.0, '1'),
(270, 41, NULL, NULL, NULL, 12, '12', 0.0, '2'),
(347, 42, NULL, NULL, 150, 1, '12', 150.0, '2'),
(346, 42, NULL, NULL, 260, 2, '11', 130.0, '1'),
(349, 43, NULL, NULL, 150, 1, '12', 150.0, '2'),
(348, 43, NULL, NULL, 260, 2, '11', 130.0, '1'),
(335, 44, NULL, NULL, 4740, 3, '21', 1580.0, '2'),
(334, 44, NULL, NULL, 300, 2, '12', 150.0, '1'),
(343, 38, NULL, NULL, 600, 4, '12', 150.0, '2'),
(342, 38, NULL, NULL, 390, 3, '11', 130.0, '1'),
(287, 45, NULL, NULL, 0, 3, '11', 0.0, '1'),
(288, 45, NULL, NULL, 0, 2, '12', 0.0, '2'),
(289, 46, NULL, NULL, 0, 1, '11', 0.0, '1'),
(290, 46, NULL, NULL, 0, 1, '12', 0.0, '2'),
(311, 47, NULL, NULL, 130, 1, '11', 0.0, '1'),
(341, 48, NULL, NULL, 600, 4, '12', 150.0, '2'),
(340, 48, NULL, NULL, 520, 4, '11', 130.0, '1');

-- --------------------------------------------------------

--
-- 表的结构 `stockout`
--

CREATE TABLE IF NOT EXISTS `stockout` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salesorder_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `salesorder_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `store` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `contact_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `opportunity_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quotation_no` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_at` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `revision_no` int(11) NOT NULL DEFAULT 0,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` float NOT NULL DEFAULT 0,
  `tax_rate` float NOT NULL DEFAULT 0,
  `total_discount` float NOT NULL DEFAULT 0,
  `final_total` float NOT NULL DEFAULT 0,
  `payment_term` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `stage` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `terms_conditions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  `deduction` float NOT NULL DEFAULT 0,
  `default_currency` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shipping_address` text COLLATE utf8_unicode_ci NOT NULL,
  `abstract` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `shipping_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `terms` int(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `stockout`
--

INSERT INTO `stockout` (`id`, `name`, `salesorder_id`, `salesorder_no`, `store`, `account_id`, `contact_id`, `created_time`, `updated_time`, `opportunity_id`, `quotation_no`, `owner_user_id`, `assigned_user_id`, `team_id`, `visible_for`, `created_at`, `updated_user_id`, `revision_no`, `notes`, `total`, `tax_rate`, `total_discount`, `final_total`, `payment_term`, `stage`, `terms_conditions`, `delete_time`, `deduction`, `default_currency`, `shipping_phone`, `shipping_address`, `abstract`, `shipping_company`, `terms`) VALUES
(1, '', '', '111', 'gfdg', 'casd', 'sdsa', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '2020-1-1', '', 0, NULL, 0, 0, 0, 0, 'sdsadc', '', NULL, 0, 0, '12312312', 'asd', '111', '', '', NULL),
(4, '', '', '111', '2', '2', '2', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '2', '', 2, NULL, 0, 0, 0, 0, '2', '', NULL, 0, 0, '2', '2', '111', '', '', NULL),
(5, '', '', '1111', '1', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '1', '', 1, NULL, 0, 0, 0, 0, '1', '', NULL, 0, 0, '1', '1', '', '', '', NULL),
(6, '', '', '1', '1', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '1', '', 1, NULL, 0, 0, 0, 0, '1', '', NULL, 0, 0, '1', '1', '1', '', '', NULL),
(7, '', '', '11', '1', '1', '1', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '111', '', 1, NULL, 0, 0, 0, 0, '1', '', NULL, 0, 0, '1', '1', '', '', '', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci DEFAULT '',
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `chi_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_type` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_street_cn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `contract_date` date DEFAULT NULL,
  `phone_office` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_alternate` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `acct_mgr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  `import_set_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `swap` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `nature_of_business2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `freezed` tinyint(1) DEFAULT 0,
  `buying_history` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1001 ;

--
-- 转存表中的数据 `store`
--

INSERT INTO `store` (`id`, `create_time`, `update_time`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `visible_for`, `name`, `chi_name`, `parent_id`, `team_id`, `account_type`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_type`, `contract_date`, `phone_office`, `phone_alternate`, `email1`, `email2`, `acct_mgr`, `notes`, `delete_time`, `import_set_label`, `swap`, `nature_of_business2`, `freezed`, `buying_history`) VALUES
(1, '2019-11-22 09:18:29', '2020-01-07 15:11:14', '1', '1', '1', '1', 'All', 'test11', '測試', NULL, '1', NULL, '', '', '', '', '', '', '', NULL, '', NULL, '', NULL, NULL, '', 1574393646, '', '', NULL, 0, NULL),
(2, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test2', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(3, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test3', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(4, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test4', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(5, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test5', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(6, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test6', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(7, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test7', '測試', NULL, '1', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1574393646, '', '', NULL, 0, NULL),
(8, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test8', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(9, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test9', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(10, '2019-11-22 09:18:29', '2020-01-07 15:11:43', '1', '1', '1', '1', 'All', 'test10', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(11, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test11', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(12, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test12', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(13, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test13', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(14, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test14', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(15, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test15', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(16, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test16', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(17, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test17', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(18, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test18', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(19, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test19', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(20, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test20', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(21, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test21', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(22, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test22', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(23, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test23', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(24, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test24', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(25, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test25', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(26, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test26', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(27, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test27', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(28, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test28', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(29, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test29', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(30, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test30', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(31, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test31', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(32, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test32', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(33, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test33', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(34, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test34', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(35, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test35', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(36, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test36', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(37, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test37', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(38, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test38', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(39, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test39', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(40, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test40', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(41, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test41', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(42, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test42', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(43, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test43', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(44, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test44', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(45, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test45', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(46, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test46', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(47, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test47', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(48, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test48', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(49, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test49', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(50, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test50', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(51, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test51', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(52, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test52', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(53, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test53', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(54, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test54', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(55, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test55', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(56, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test56', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(57, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test57', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(58, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test58', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(59, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test59', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(60, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test60', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(61, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test61', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(62, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test62', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(63, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test63', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(64, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test64', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(65, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test65', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(66, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test66', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(67, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test67', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(68, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test68', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(69, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test69', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(70, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test70', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(71, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test71', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(72, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test72', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(73, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test73', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(74, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test74', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(75, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test75', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(76, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test76', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(77, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test77', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(78, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test78', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(79, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test79', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(80, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test80', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(81, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test81', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(82, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test82', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(83, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test83', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(84, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test84', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(85, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test85', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(86, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test86', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(87, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test87', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(88, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test88', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(89, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test89', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(90, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test90', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(91, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test91', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(92, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test92', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(93, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test93', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(94, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test94', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(95, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test95', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(96, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test96', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(97, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test97', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(98, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test98', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(99, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test99', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(100, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test100', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(101, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test101', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(102, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test102', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(103, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test103', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(104, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test104', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(105, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test105', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(106, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test106', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(107, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test107', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(108, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test108', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(109, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test109', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(110, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test110', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(111, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test111', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(112, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test112', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(113, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test113', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(114, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test114', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(115, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test115', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(116, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test116', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(117, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test117', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(118, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test118', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(119, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test119', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(120, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test120', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(121, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test121', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(122, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test122', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(123, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test123', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(124, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test124', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(125, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test125', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(126, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test126', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(127, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test127', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(128, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test128', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(129, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test129', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(130, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test130', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(131, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test131', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(132, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test132', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(133, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test133', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(134, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test134', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(135, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test135', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(136, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test136', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(137, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test137', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(138, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test138', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(139, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test139', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(140, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test140', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(141, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test141', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(142, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test142', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(143, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test143', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(144, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test144', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(145, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test145', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(146, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test146', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(147, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test147', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(148, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test148', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(149, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test149', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(150, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test150', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(151, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test151', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(152, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test152', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(153, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test153', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(154, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test154', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(155, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test155', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(156, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test156', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(157, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test157', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(158, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test158', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(159, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test159', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(160, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test160', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(161, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test161', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(162, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test162', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(163, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test163', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(164, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test164', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(165, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test165', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(166, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test166', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(167, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test167', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(168, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test168', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(169, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test169', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(170, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test170', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(171, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test171', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(172, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test172', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(173, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test173', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(174, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test174', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(175, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test175', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(176, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test176', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(177, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test177', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL);
INSERT INTO `store` (`id`, `create_time`, `update_time`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `visible_for`, `name`, `chi_name`, `parent_id`, `team_id`, `account_type`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_type`, `contract_date`, `phone_office`, `phone_alternate`, `email1`, `email2`, `acct_mgr`, `notes`, `delete_time`, `import_set_label`, `swap`, `nature_of_business2`, `freezed`, `buying_history`) VALUES
(178, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test178', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(179, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test179', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(180, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test180', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(181, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test181', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(182, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test182', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(183, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test183', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(184, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test184', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(185, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test185', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(186, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test186', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(187, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test187', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(188, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test188', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(189, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test189', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(190, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test190', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(191, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test191', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(192, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test192', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(193, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test193', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(194, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test194', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(195, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test195', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(196, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test196', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(197, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test197', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(198, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test198', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(199, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test199', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(200, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test200', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(201, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test201', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(202, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test202', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(203, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test203', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(204, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test204', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(205, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test205', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(206, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test206', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(207, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test207', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(208, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test208', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(209, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test209', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(210, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test210', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(211, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test211', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(212, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test212', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(213, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test213', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(214, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test214', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(215, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test215', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(216, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test216', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(217, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test217', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(218, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test218', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(219, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test219', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(220, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test220', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(221, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test221', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(222, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test222', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(223, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test223', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(224, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test224', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(225, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test225', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(226, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test226', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(227, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test227', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(228, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test228', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(229, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test229', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(230, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test230', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(231, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test231', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(232, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test232', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(233, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test233', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(234, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test234', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(235, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test235', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(236, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test236', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(237, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test237', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(238, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test238', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(239, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test239', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(240, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test240', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(241, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test241', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(242, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test242', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(243, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test243', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(244, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test244', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(245, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test245', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(246, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test246', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(247, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test247', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(248, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test248', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(249, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test249', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(250, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test250', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(251, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test251', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(252, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test252', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(253, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test253', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(254, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test254', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(255, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test255', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(256, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test256', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(257, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test257', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(258, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test258', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(259, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test259', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(260, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test260', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(261, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test261', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(262, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test262', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(263, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test263', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(264, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test264', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(265, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test265', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(266, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test266', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(267, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test267', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(268, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test268', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(269, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test269', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(270, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test270', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(271, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test271', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(272, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test272', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(273, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test273', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(274, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test274', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(275, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test275', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(276, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test276', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(277, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test277', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(278, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test278', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(279, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test279', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(280, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test280', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(281, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test281', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(282, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test282', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(283, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test283', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(284, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test284', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(285, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test285', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(286, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test286', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(287, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test287', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(288, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test288', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(289, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test289', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(290, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test290', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(291, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test291', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(292, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test292', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(293, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test293', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(294, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test294', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(295, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test295', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(296, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test296', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(297, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test297', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(298, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test298', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(299, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test299', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(300, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test300', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(301, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test301', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(302, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test302', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(303, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test303', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(304, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test304', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(305, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test305', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(306, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test306', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(307, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test307', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(308, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test308', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(309, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test309', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(310, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test310', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(311, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test311', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(312, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test312', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(313, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test313', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(314, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test314', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(315, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test315', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(316, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test316', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(317, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test317', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(318, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test318', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(319, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test319', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(320, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test320', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(321, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test321', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(322, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test322', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(323, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test323', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(324, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test324', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(325, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test325', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(326, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test326', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(327, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test327', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(328, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test328', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(329, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test329', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(330, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test330', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(331, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test331', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(332, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test332', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(333, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test333', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(334, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test334', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(335, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test335', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(336, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test336', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(337, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test337', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(338, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test338', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(339, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test339', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(340, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test340', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(341, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test341', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(342, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test342', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(343, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test343', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(344, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test344', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(345, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test345', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(346, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test346', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(347, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test347', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(348, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test348', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(349, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test349', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(350, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test350', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(351, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test351', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(352, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test352', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(353, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test353', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL);
INSERT INTO `store` (`id`, `create_time`, `update_time`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `visible_for`, `name`, `chi_name`, `parent_id`, `team_id`, `account_type`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_type`, `contract_date`, `phone_office`, `phone_alternate`, `email1`, `email2`, `acct_mgr`, `notes`, `delete_time`, `import_set_label`, `swap`, `nature_of_business2`, `freezed`, `buying_history`) VALUES
(354, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test354', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(355, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test355', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(356, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test356', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(357, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test357', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(358, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test358', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(359, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test359', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(360, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test360', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(361, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test361', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(362, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test362', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(363, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test363', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(364, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test364', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(365, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test365', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(366, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test366', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(367, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test367', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(368, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test368', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(369, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test369', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(370, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test370', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(371, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test371', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(372, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test372', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(373, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test373', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(374, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test374', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(375, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test375', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(376, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test376', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(377, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test377', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(378, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test378', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(379, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test379', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(380, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test380', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(381, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test381', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(382, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test382', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(383, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test383', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(384, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test384', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(385, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test385', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(386, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test386', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(387, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test387', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(388, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test388', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(389, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test389', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(390, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test390', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(391, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test391', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(392, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test392', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(393, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test393', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(394, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test394', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(395, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test395', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(396, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test396', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(397, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test397', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(398, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test398', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(399, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test399', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(400, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test400', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(401, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test401', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(402, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test402', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(403, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test403', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(404, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test404', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(405, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test405', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(406, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test406', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(407, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test407', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(408, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test408', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(409, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test409', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(410, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test410', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(411, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test411', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(412, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test412', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(413, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test413', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(414, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test414', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(415, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test415', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(416, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test416', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(417, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test417', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(418, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test418', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(419, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test419', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(420, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test420', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(421, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test421', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(422, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test422', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(423, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test423', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(424, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test424', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(425, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test425', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(426, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test426', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(427, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test427', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(428, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test428', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(429, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test429', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(430, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test430', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(431, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test431', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(432, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test432', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(433, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test433', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(434, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test434', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(435, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test435', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(436, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test436', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(437, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test437', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(438, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test438', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(439, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test439', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(440, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test440', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(441, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test441', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(442, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test442', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(443, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test443', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(444, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test444', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(445, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test445', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(446, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test446', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(447, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test447', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(448, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test448', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(449, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test449', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(450, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test450', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(451, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test451', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(452, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test452', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(453, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test453', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(454, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test454', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(455, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test455', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(456, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test456', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(457, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test457', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(458, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test458', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(459, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test459', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(460, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test460', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(461, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test461', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(462, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test462', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(463, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test463', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(464, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test464', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(465, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test465', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(466, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test466', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(467, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test467', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(468, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test468', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(469, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test469', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(470, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test470', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(471, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test471', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(472, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test472', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(473, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test473', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(474, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test474', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(475, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test475', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(476, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test476', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(477, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test477', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(478, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test478', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(479, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test479', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(480, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test480', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(481, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test481', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(482, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test482', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(483, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test483', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(484, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test484', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(485, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test485', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(486, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test486', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(487, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test487', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(488, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test488', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(489, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test489', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(490, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test490', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(491, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test491', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(492, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test492', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(493, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test493', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(494, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test494', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(495, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test495', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(496, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test496', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(497, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test497', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(498, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test498', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(499, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test499', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(500, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test500', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(501, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test501', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(502, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test502', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(503, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test503', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(504, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test504', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(505, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test505', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(506, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test506', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(507, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test507', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(508, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test508', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(509, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test509', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(510, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test510', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(511, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test511', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(512, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test512', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(513, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test513', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(514, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test514', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(515, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test515', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(516, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test516', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(517, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test517', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(518, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test518', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(519, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test519', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(520, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test520', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(521, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test521', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(522, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test522', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(523, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test523', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(524, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test524', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(525, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test525', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(526, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test526', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(527, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test527', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(528, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test528', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(529, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test529', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL);
INSERT INTO `store` (`id`, `create_time`, `update_time`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `visible_for`, `name`, `chi_name`, `parent_id`, `team_id`, `account_type`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_type`, `contract_date`, `phone_office`, `phone_alternate`, `email1`, `email2`, `acct_mgr`, `notes`, `delete_time`, `import_set_label`, `swap`, `nature_of_business2`, `freezed`, `buying_history`) VALUES
(530, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test530', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(531, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test531', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(532, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test532', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(533, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test533', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(534, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test534', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(535, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test535', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(536, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test536', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(537, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test537', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(538, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test538', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(539, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test539', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(540, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test540', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(541, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test541', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(542, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test542', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(543, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test543', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(544, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test544', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(545, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test545', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(546, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test546', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(547, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test547', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(548, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test548', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(549, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test549', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(550, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test550', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(551, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test551', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(552, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test552', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(553, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test553', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(554, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test554', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(555, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test555', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(556, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test556', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(557, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test557', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(558, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test558', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(559, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test559', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(560, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test560', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(561, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test561', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(562, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test562', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(563, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test563', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(564, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test564', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(565, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test565', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(566, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test566', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(567, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test567', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(568, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test568', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(569, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test569', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(570, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test570', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(571, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test571', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(572, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test572', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(573, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test573', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(574, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test574', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(575, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test575', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(576, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test576', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(577, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test577', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(578, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test578', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(579, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test579', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(580, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test580', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(581, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test581', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(582, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test582', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(583, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test583', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(584, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test584', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(585, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test585', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(586, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test586', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(587, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test587', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(588, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test588', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(589, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test589', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(590, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test590', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(591, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test591', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(592, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test592', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(593, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test593', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(594, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test594', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(595, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test595', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(596, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test596', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(597, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test597', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(598, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test598', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(599, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test599', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(600, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test600', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(601, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test601', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(602, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test602', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(603, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test603', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(604, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test604', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(605, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test605', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(606, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test606', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(607, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test607', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(608, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test608', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(609, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test609', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(610, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test610', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(611, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test611', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(612, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test612', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(613, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test613', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(614, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test614', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(615, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test615', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(616, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test616', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(617, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test617', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(618, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test618', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(619, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test619', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(620, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test620', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(621, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test621', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(622, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test622', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(623, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test623', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(624, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test624', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(625, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test625', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(626, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test626', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(627, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test627', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(628, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test628', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(629, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test629', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(630, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test630', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(631, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test631', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(632, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test632', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(633, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test633', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(634, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test634', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(635, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test635', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(636, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test636', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(637, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test637', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(638, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test638', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(639, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test639', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(640, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test640', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(641, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test641', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(642, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test642', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(643, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test643', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(644, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test644', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(645, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test645', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(646, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test646', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(647, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test647', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(648, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test648', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(649, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test649', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(650, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test650', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(651, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test651', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(652, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test652', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(653, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test653', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(654, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test654', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(655, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test655', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(656, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test656', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(657, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test657', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(658, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test658', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(659, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test659', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(660, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test660', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(661, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test661', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(662, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test662', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(663, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test663', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(664, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test664', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(665, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test665', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(666, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test666', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(667, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test667', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(668, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test668', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(669, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test669', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(670, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test670', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(671, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test671', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(672, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test672', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(673, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test673', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(674, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test674', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(675, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test675', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(676, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test676', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(677, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test677', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(678, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test678', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(679, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test679', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(680, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test680', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(681, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test681', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(682, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test682', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(683, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test683', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(684, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test684', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(685, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test685', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(686, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test686', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(687, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test687', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(688, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test688', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(689, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test689', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(690, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test690', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(691, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test691', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(692, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test692', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(693, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test693', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(694, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test694', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(695, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test695', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(696, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test696', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(697, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test697', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(698, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test698', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(699, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test699', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(700, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test700', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(701, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test701', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(702, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test702', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(703, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test703', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(704, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test704', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(705, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test705', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL);
INSERT INTO `store` (`id`, `create_time`, `update_time`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `visible_for`, `name`, `chi_name`, `parent_id`, `team_id`, `account_type`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_type`, `contract_date`, `phone_office`, `phone_alternate`, `email1`, `email2`, `acct_mgr`, `notes`, `delete_time`, `import_set_label`, `swap`, `nature_of_business2`, `freezed`, `buying_history`) VALUES
(706, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test706', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(707, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test707', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(708, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test708', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(709, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test709', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(710, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test710', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(711, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test711', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(712, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test712', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(713, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test713', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(714, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test714', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(715, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test715', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(716, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test716', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(717, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test717', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(718, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test718', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(719, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test719', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(720, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test720', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(721, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test721', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(722, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test722', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(723, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test723', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(724, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test724', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(725, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test725', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(726, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test726', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(727, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test727', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(728, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test728', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(729, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test729', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(730, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test730', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(731, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test731', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(732, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test732', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(733, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test733', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(734, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test734', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(735, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test735', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(736, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test736', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(737, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test737', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(738, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test738', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(739, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test739', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(740, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test740', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(741, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test741', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(742, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test742', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(743, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test743', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(744, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test744', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(745, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test745', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(746, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test746', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(747, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test747', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(748, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test748', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(749, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test749', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(750, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test750', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(751, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test751', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(752, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test752', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(753, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test753', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(754, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test754', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(755, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test755', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(756, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test756', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(757, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test757', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(758, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test758', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(759, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test759', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(760, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test760', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(761, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test761', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(762, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test762', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(763, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test763', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(764, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test764', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(765, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test765', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(766, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test766', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(767, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test767', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(768, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test768', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(769, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test769', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(770, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test770', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(771, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test771', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(772, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test772', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(773, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test773', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(774, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test774', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(775, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test775', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(776, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test776', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(777, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test777', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(778, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test778', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(779, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test779', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(780, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test780', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(781, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test781', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(782, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test782', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(783, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test783', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(784, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test784', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(785, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test785', '測試', NULL, '1', NULL, '', '', '', '', '', '', '', NULL, '', NULL, NULL, NULL, NULL, NULL, 1574393646, '', '', NULL, 0, NULL),
(786, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test786', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(787, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test787', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(788, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test788', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(789, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test789', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(790, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test790', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(791, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test791', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(792, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test792', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(793, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test793', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(794, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test794', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(795, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test795', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(796, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test796', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(797, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test797', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(798, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test798', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(799, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test799', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(800, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test800', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(801, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test801', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(802, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test802', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(803, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test803', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(804, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test804', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(805, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test805', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(806, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test806', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(807, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test807', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(808, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test808', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(809, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test809', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(810, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test810', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(811, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test811', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(812, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test812', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(813, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test813', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(814, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test814', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(815, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test815', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(816, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test816', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(817, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test817', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(818, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test818', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(819, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test819', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(820, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test820', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(821, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test821', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(822, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test822', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(823, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test823', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(824, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test824', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(825, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test825', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(826, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test826', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(827, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test827', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(828, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test828', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(829, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test829', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(830, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test830', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(831, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test831', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(832, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test832', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(833, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test833', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(834, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test834', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(835, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test835', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(836, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test836', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(837, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test837', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(838, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test838', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(839, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test839', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(840, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test840', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(841, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test841', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(842, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test842', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(843, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test843', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(844, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test844', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(845, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test845', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(846, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test846', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(847, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test847', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(848, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test848', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(849, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test849', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(850, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test850', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(851, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test851', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(852, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test852', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(853, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test853', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(854, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test854', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(855, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test855', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(856, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test856', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(857, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test857', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(858, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test858', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(859, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test859', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(860, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test860', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(861, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test861', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(862, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test862', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(863, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test863', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(864, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test864', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(865, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test865', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(866, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test866', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(867, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test867', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(868, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test868', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(869, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test869', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(870, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test870', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(871, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test871', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(872, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test872', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(873, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test873', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(874, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test874', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(875, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test875', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(876, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test876', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(877, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test877', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(878, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test878', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(879, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test879', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(880, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test880', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(881, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test881', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL);
INSERT INTO `store` (`id`, `create_time`, `update_time`, `updated_user_id`, `assigned_user_id`, `created_user_id`, `owner_user_id`, `visible_for`, `name`, `chi_name`, `parent_id`, `team_id`, `account_type`, `phone_fax`, `billing_address_street`, `billing_address_street_cn`, `billing_address_city`, `billing_address_state`, `billing_address_country`, `billing_address_type`, `contract_date`, `phone_office`, `phone_alternate`, `email1`, `email2`, `acct_mgr`, `notes`, `delete_time`, `import_set_label`, `swap`, `nature_of_business2`, `freezed`, `buying_history`) VALUES
(882, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test882', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(883, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test883', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(884, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test884', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(885, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test885', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(886, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test886', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(887, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test887', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(888, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test888', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(889, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test889', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(890, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test890', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(891, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test891', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(892, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test892', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(893, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test893', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(894, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test894', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(895, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test895', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(896, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test896', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(897, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test897', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(898, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test898', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(899, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test899', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(900, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test900', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(901, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test901', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(902, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test902', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(903, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test903', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(904, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test904', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(905, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test905', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(906, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test906', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(907, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test907', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(908, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test908', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(909, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test909', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(910, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test910', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(911, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test911', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(912, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test912', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(913, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test913', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(914, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test914', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(915, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test915', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(916, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test916', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(917, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test917', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(918, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test918', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(919, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test919', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(920, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test920', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(921, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test921', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(922, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test922', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(923, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test923', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(924, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test924', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(925, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test925', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(926, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test926', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(927, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test927', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(928, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test928', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(929, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test929', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(930, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test930', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(931, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test931', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(932, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test932', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(933, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test933', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(934, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test934', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(935, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test935', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(936, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test936', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(937, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test937', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(938, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test938', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(939, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test939', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(940, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test940', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(941, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test941', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(942, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test942', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(943, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test943', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(944, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test944', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(945, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test945', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(946, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test946', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(947, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test947', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(948, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test948', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(949, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test949', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(950, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test950', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(951, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test951', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(952, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test952', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(953, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test953', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(954, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test954', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(955, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test955', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(956, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test956', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(957, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test957', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(958, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test958', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(959, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test959', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(960, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test960', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(961, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test961', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(962, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test962', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(963, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test963', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(964, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test964', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(965, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test965', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(966, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test966', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(967, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test967', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(968, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test968', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(969, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test969', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(970, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test970', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(971, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test971', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(972, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test972', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(973, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test973', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(974, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test974', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(975, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test975', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(976, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test976', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(977, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test977', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(978, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test978', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(979, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test979', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(980, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test980', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(981, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test981', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(982, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test982', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(983, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test983', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(984, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test984', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(985, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test985', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(986, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test986', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(987, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test987', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(988, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test988', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(989, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test989', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(990, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test990', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(991, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test991', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(992, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test992', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(993, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test993', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(994, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test994', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(995, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test995', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(996, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test996', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(997, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test997', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(998, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test998', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(999, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test999', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL),
(1000, '2019-11-22 09:18:29', '2019-12-13 23:22:55', '1', '1', '1', '1', 'All', 'test1000', '測試', NULL, '1', NULL, 'hgjhgjhf', '', '213213213213', '珠海', '香洲区', '中国', '', NULL, '13235423543', NULL, 'guoguo@qq.com', NULL, NULL, 'adsfahgfj', 0, '', '', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `suppliers`
--

CREATE TABLE IF NOT EXISTS `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `member_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_manager` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone_home` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_work` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_other` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_set_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `former_employee` tinyint(1) NOT NULL DEFAULT 0,
  `alt_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `suppliers`
--

INSERT INTO `suppliers` (`id`, `delete_time`, `created_time`, `updated_time`, `updated_user_id`, `assigned_user_id`, `owner_user_id`, `visible_for`, `team_id`, `created_user_id`, `account_id`, `salutation`, `first_name`, `middle_name`, `last_name`, `member_no`, `lead_source`, `title`, `department`, `account_manager`, `birthdate`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `notes`, `role`, `newsletter`, `category`, `stage`, `website`, `opt`, `import_set_label`, `swap`, `former_employee`, `alt_phone`, `alt_fax`, `alt_email`) VALUES
(1, 0, NULL, NULL, '', '0', '0', '0', '0', '', '1', '0', 'Luke', NULL, '', 'No:1', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(2, 0, NULL, NULL, '', '0', '0', '0', '0', '', '2', '0', 'Leo', NULL, '', 'No:2', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(3, 0, NULL, NULL, '', '0', '0', '0', '0', '', '3', '0', 'Rooky', NULL, '', 'No:3', NULL, '', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(4, 0, NULL, NULL, '', '0', '0', '0', '0', '', '0', '0', 'Ben', NULL, '312312', 'No:4', NULL, '', NULL, NULL, '0000-00-00', NULL, '13234353127', '312123', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(5, 0, NULL, NULL, '', '0', '0', '0', '0', '', '5', '0', 'test', NULL, '312312', 'No:5', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(6, 0, NULL, NULL, '', '0', '0', '0', '0', '', '6', '0', 'test', NULL, '312312', 'No:6', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(7, 0, NULL, NULL, '', '0', '0', '0', '0', '', '7', '0', 'test', NULL, '312312', 'No:7', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(8, 0, NULL, NULL, '', '0', '0', '0', '0', '', '8', '0', 'test', NULL, '312312', 'No:8', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(9, 0, NULL, NULL, '', '0', '0', '0', '0', '', '9', '0', 'test', NULL, '312312', 'No:9', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(10, 0, NULL, NULL, '', '0', '0', '0', '0', '', '10', '0', 'test', NULL, '312312', 'No:10', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(11, 0, NULL, NULL, '', '0', '0', '0', '0', '', '11', '0', 'test', NULL, '312312', 'No:11', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(12, 0, NULL, NULL, '', '0', '0', '0', '0', '', '12', '0', 'test', NULL, '312312', 'No:12', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(13, 0, NULL, NULL, '', '0', '0', '0', '0', '', '13', '0', 'test', NULL, '312312', 'No:13', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(14, 0, NULL, NULL, '', '0', '0', '0', '0', '', '14', '0', 'test', NULL, '312312', 'No:14', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(15, 0, NULL, NULL, '', '0', '0', '0', '0', '', '15', '0', 'test', NULL, '312312', 'No:15', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(16, 0, NULL, NULL, '', '0', '0', '0', '0', '', '16', '0', 'test', NULL, '312312', 'No:16', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(17, 0, NULL, NULL, '', '0', '0', '0', '0', '', '17', '0', 'test', NULL, '312312', 'No:17', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(18, 0, NULL, NULL, '', '0', '0', '0', '0', '', '18', '0', 'test', NULL, '312312', 'No:18', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(19, 0, NULL, NULL, '', '0', '0', '0', '0', '', '19', '0', 'test', NULL, '312312', 'No:19', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(20, 0, NULL, NULL, '', '0', '0', '0', '0', '', '20', '0', 'test', NULL, '312312', 'No:20', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(21, 0, NULL, NULL, '', '0', '0', '0', '0', '', '21', '0', 'test', NULL, '312312', 'No:21', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(22, 0, NULL, NULL, '', '0', '0', '0', '0', '', '22', '0', 'test', NULL, '312312', 'No:22', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(23, 0, NULL, NULL, '', '0', '0', '0', '0', '', '23', '0', 'test', NULL, '312312', 'No:23', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(24, 0, NULL, NULL, '', '0', '0', '0', '0', '', '24', '0', 'test', NULL, '312312', 'No:24', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(25, 0, NULL, NULL, '', '0', '0', '0', '0', '', '25', '0', 'test', NULL, '312312', 'No:25', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(26, 0, NULL, NULL, '', '0', '0', '0', '0', '', '26', '0', 'test', NULL, '312312', 'No:26', NULL, '', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `supplier_contact`
--

CREATE TABLE IF NOT EXISTS `supplier_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `delete_time` int(10) NOT NULL DEFAULT 0,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `assigned_user_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `visible_for` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `team_id` varchar(36) COLLATE utf8_unicode_ci DEFAULT '0',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `account_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `salutation` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `middle_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `member_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lead_source` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `account_manager` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `phone_home` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_mobile` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_work` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_other` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_street` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_postalcode` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_address_country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `newsletter` char(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `category` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stage` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `opt` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_set_label` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `swap` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `former_employee` tinyint(1) NOT NULL DEFAULT 0,
  `alt_phone` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_fax` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `alt_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

--
-- 转存表中的数据 `supplier_contact`
--

INSERT INTO `supplier_contact` (`id`, `delete_time`, `created_time`, `updated_time`, `updated_user_id`, `assigned_user_id`, `owner_user_id`, `visible_for`, `team_id`, `created_user_id`, `account_id`, `salutation`, `first_name`, `middle_name`, `last_name`, `member_no`, `lead_source`, `title`, `department`, `account_manager`, `birthdate`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `primary_address_street`, `primary_address_city`, `primary_address_state`, `primary_address_postalcode`, `primary_address_country`, `alt_address_street`, `alt_address_city`, `alt_address_state`, `alt_address_postalcode`, `alt_address_country`, `notes`, `role`, `newsletter`, `category`, `stage`, `website`, `opt`, `import_set_label`, `swap`, `former_employee`, `alt_phone`, `alt_fax`, `alt_email`) VALUES
(1, 0, NULL, NULL, '', '0', '0', '0', '0', '', '1', '0', 'Luke', NULL, '', 'No:1', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(2, 0, NULL, NULL, '', '0', '0', '0', '0', '', '2', '0', 'Leo', NULL, '', 'No:2', NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, '', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(3, 0, NULL, NULL, '', '0', '0', '0', '0', '', '3', '0', 'Rooky', NULL, '', 'No:3', NULL, 'ABC', NULL, NULL, NULL, NULL, '', '', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(4, 0, NULL, NULL, '', '0', '0', '0', '0', '', '0', '0', 'Ben', NULL, '312312', 'No:4', NULL, '321', NULL, NULL, '0000-00-00', NULL, '13234353127', '312123', NULL, NULL, 'guoguo@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(5, 0, NULL, NULL, '', '0', '0', '0', '0', '', '5', '0', 'test', NULL, '312312', 'No:5', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(6, 0, NULL, NULL, '', '0', '0', '0', '0', '', '6', '0', 'test', NULL, '312312', 'No:6', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(7, 0, NULL, NULL, '', '0', '0', '0', '0', '', '7', '0', 'test', NULL, '312312', 'No:7', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(8, 0, NULL, NULL, '', '0', '0', '0', '0', '', '8', '0', 'test', NULL, '312312', 'No:8', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(9, 0, NULL, NULL, '', '0', '0', '0', '0', '', '9', '0', 'test', NULL, '312312', 'No:9', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(10, 0, NULL, NULL, '', '0', '0', '0', '0', '', '10', '0', 'test', NULL, '312312', 'No:10', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(11, 0, NULL, NULL, '', '0', '0', '0', '0', '', '11', '0', 'test', NULL, '312312', 'No:11', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(12, 0, NULL, NULL, '', '0', '0', '0', '0', '', '12', '0', 'test', NULL, '312312', 'No:12', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(13, 0, NULL, NULL, '', '0', '0', '0', '0', '', '13', '0', 'test', NULL, '312312', 'No:13', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(14, 0, NULL, NULL, '', '0', '0', '0', '0', '', '14', '0', 'test', NULL, '312312', 'No:14', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(15, 0, NULL, NULL, '', '0', '0', '0', '0', '', '15', '0', 'test', NULL, '312312', 'No:15', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(16, 0, NULL, NULL, '', '0', '0', '0', '0', '', '16', '0', 'test', NULL, '312312', 'No:16', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(17, 0, NULL, NULL, '', '0', '0', '0', '0', '', '17', '0', 'test', NULL, '312312', 'No:17', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(18, 0, NULL, NULL, '', '0', '0', '0', '0', '', '18', '0', 'test', NULL, '312312', 'No:18', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(19, 0, NULL, NULL, '', '0', '0', '0', '0', '', '19', '0', 'test', NULL, '312312', 'No:19', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(20, 0, NULL, NULL, '', '0', '0', '0', '0', '', '20', '0', 'test', NULL, '312312', 'No:20', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(21, 0, NULL, NULL, '', '0', '0', '0', '0', '', '21', '0', 'test', NULL, '312312', 'No:21', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(22, 0, NULL, NULL, '', '0', '0', '0', '0', '', '22', '0', 'test', NULL, '312312', 'No:22', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(23, 0, NULL, NULL, '', '0', '0', '0', '0', '', '23', '0', 'test', NULL, '312312', 'No:23', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(24, 0, NULL, NULL, '', '0', '0', '0', '0', '', '24', '0', 'test', NULL, '312312', 'No:24', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(25, 0, NULL, NULL, '', '0', '0', '0', '0', '', '25', '0', 'test', NULL, '312312', 'No:25', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL),
(26, 0, NULL, NULL, '', '0', '0', '0', '0', '', '26', '0', 'test', NULL, '312312', 'No:26', NULL, '李四你好', NULL, NULL, NULL, NULL, '13344421211', '312123', NULL, NULL, 'haha@qq.com', NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL, NULL, '0', NULL, '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `teams`
--

CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '组名',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '组状态，0禁用，1启用',
  `auth` text NOT NULL COMMENT '组权限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `teams`
--

INSERT INTO `teams` (`id`, `title`, `status`, `auth`) VALUES
(1, 'System User', 1, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294,295,296,297,298,299,300,301,302,303,304,305,306,307,308,309,310,311,312,313,314,315,316,317,318,319,320,321,322,323,324,325,326,327,328,329,330,331,332,333,334,335,336,337,338,339,340,341,342,343,344,345,346,347,348,349,350,351,352,353,354,355,356,357,358,359,360,361,362,363,364,365,366,367,368,369,370,371,372,373,374,375,376,377,378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393,394,395,396,397,398,399,400,401,402,403,404,405,406,407,408,409,410,411,412,413,414,415,416,417,418,419,420,421,422,423,424,425,426,427,428,429,430,431,432,433,434,435,436,437,438,439,440,441,442,443,444,445,446,447,448,449,450,451,452,453,454,455,456,457,458,459,460,461,462,463,464,465,466,467,468,469,470,471,472,473,474,475,476,477,478,479,480,481,482,483,484,485,486,487,488,489,490,491,492,493,494,495,496,497,498,499,500,501,502,503,504,505,506,507,508,509,510,511,512,513,514,515,516,517,518,519,520,521,522,523,524,525,526,527,528,529,530,531,532,533,534,535,536,537,538,539,540,541,542,543,544,545,546,547,548,549,550,551,552,553,554,555,556,557,558,559,560,561,562,563,564,565,566,567,568,569,570,571,572,573,574,575,576,577,578,579,580,581,582,583,584,585,586,587,588,589,590,591,592,593,594,595,596,597,598,599,600,601,602,603,604,605,606,607,608,609,610,611,612,613,614,615,616,617,618,619,620,621,622,623,624,625,626,627,628,629,630,631,632,633,634,635,636,637,638,639,640,641,642,643,644,645,646,647,648,649,650,651,652,653,654,655,656,657,658,659,660,661,662,663,664,665,666,667,668,669,670,671,672,673,674,675,676,677,678,679,680,681,682,683,684,685,686,687,688,689,690,691,692,693,694,695,696,697,698,699,700,701,702,703,704,705,706,707,708,709,710,711,712,713,714,715,716,717,718,719,720,721,722,723,724,725,726,727,728,729,730,731,732,733,734,735,736,737,738,739,740,741,742,743,744,745,746,747,748,749,750,751,752,753,754,755,756,757,758,759,760,761,762,763,764,765,766,767,768,769,770,771,772,773,774,775,776,777,778,779,780,781,782,783,784,785,786,787,788,789,790,791,792,793,794,795,796,797,798,799,800,801,802,803,804,805,806,807,808,809,810,811,812,813,814,815,816,817,818,819,820,821,822,823,824,825,826,827,828,829,830,831,832,833,834,835,836,837,838,839,840,841,842,843,844,845,846,847,848,849,850,851,852,853,854,855,856,857,858,859,860,861,862,863,864,865,866,867,868,869,870,871,872,873,874,875,876,877,878,879,880,881,882,883,884,885,886,887,888,889,890,891,892,893,894,895,896,897,898,899,900,901,902,903,904,905,906,907,908,909,910,911,912,913,914,915,916,917,918,919,920,921,922,923,924,925,926,927,928,929,930,931,932,933,934,935,936,937,938,939,940,941,942,943,944,945,946,947,948,949,950,951,952,953,954,955,956,957,958,959,960,961,962,963,964,965,966,967,968,969,970,971,972,973,974,975,976,977,978,979,980,981,982,983,984,985,986,987,988,989,990,991,992,993,994,995,996,997,998,999,1000');

-- --------------------------------------------------------

--
-- 表的结构 `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1: edm 2: sms, 3:whatsapp',
  `name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(36) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filepath` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(5) DEFAULT 0,
  `created_time` datetime DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `delete_time` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `templates`
--

INSERT INTO `templates` (`id`, `category`, `name`, `filename`, `filepath`, `content`, `ordering`, `created_time`, `updated_time`, `delete_time`) VALUES
('001aeea2-46ff-11e9-bc84-00163ee24a96', 'edm', '', NULL, NULL, '多謝你支持，我地會安排同事同你聯絡，了解多Ｄ你需要', 0, NULL, NULL, NULL),
('239a6a94-81cc-11e9-908d-00163ee24a96', 'ar', '有咩優惠', NULL, NULL, 'hello, 我地依家做緊好多優惠, 可以上https://www.adaptivecrm.com.hk/ 睇睇', 0, NULL, NULL, NULL),
('25028986-8765-11e9-a1f9-00163ee24a96', 'wa', 'Order Status Reminder', NULL, NULL, 'Hello @@name@@，我地已收到你的訂單#1314，我地會盡快安排送貨。', 3, NULL, NULL, NULL),
('3ed5b2d6-81cd-11e9-908d-00163ee24a96', 'ar', '想查詢訂單', NULL, NULL, '你既訂單情況: A200190622 已付運', 1, NULL, NULL, NULL),
('675af2fe-fa3d-11e5-8008-4ed60cd5ad0c', 'edm', 'Invitation to Recall', NULL, NULL, '<p>Dear @@Contact_first_name@@,</p><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">Have a nice day.</div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto"><br /></div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">I am sending our event information for your perusal. We are on behalf of recall inviting you to join our upcoming event regarding to Data Protection Solutions.&nbsp; The Theme will be&nbsp; Hybrid Data Protection Strategy.&nbsp; You will find the information delivered by the Speaker very useful whatever Data Backup Plan you are or will be going to deploy.<br /><br /></div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">Please see the detailed information below:<br /><br />Please reply this RSVP email for registration.I will follow up with you later .<br /><br />Main Theme&nbsp; &nbsp; &nbsp; : Hybrid Data Protection Strategy<br />Date&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 8th April 2016<br />Time&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : 09:00 &ndash; 14:00<br />Venue&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : The Peninsular, Hong Kong<br /></div><p><span style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">Speaker&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: Janson Hoambrecke</span></p><p>&nbsp;</p><p><img src="https://drive.google.com/uc?export=view&amp;id=0B_tO4PQPmWhjRnJWV2xOM2gtbkVMQWs4M2x4OEJIV0pCMzRj" border="0" /></p><p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;<span style="font-size: 10px">&nbsp;</span><span style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span><em style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">About the speaker :</em></p><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto"><em><br /></em></div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto"><em>Janson Hoambrecker&nbsp; is a global product and marketing strategy executive leading the way for companies to adopt to constant technology evolution. Cloud expert with a deep understanding of both global market conditions and IT technology driving these industries.&nbsp; Janson serves as vice president and global market leader for Data Protection Services (DPS) of Recall. As the global market leader for Recall, Janson is responsible for the global strategies and product direction of DPS. He has a broad understand of the data protection market and cloud marketplace.</em><br /><br /><br /></div><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto">&nbsp;</div><font face="Calibri" size="2"><span style="font-size: 11pt"><div><strong>Luke Tam</strong></div> <div>&nbsp;</div> <div>Business Development Manager</div> <div>Recall Hong Kong Ltd</div> <div>t&nbsp;&nbsp;&nbsp; <a href="http://202.181.244.223/adaptive/templates/view_template/tel:%2B852%202511%202829" target="_blank">+852 2511 2829</a></div> <div>d&nbsp;&nbsp; <a href="http://202.181.244.223/adaptive/templates/view_template/tel:%2B852%203905%203221" target="_blank">+852 3905 3221</a></div> <div>m&nbsp; <a href="http://202.181.244.223/adaptive/templates/view_template/tel:%2B852%206385%207562" target="_blank">+852 6385 7562</a></div> <div>f&nbsp;&nbsp;&nbsp; <a href="http://202.181.244.223/adaptive/templates/view_template/tel:%2B852%202511%204333" target="_blank">+852 2511 4333</a></div> <div>Recall Hong Kong Limited</div> <div>20 Winslow Street, Hung Hom, Kowloon, HK</div> <div><font size="4"><span style="font-size: 14pt"><strong>Transformational Information Management</strong></span></font></div> <div><a href="mailto:luke.tam@recall.com" target="_blank"><font color="blue"><u>luke.tam@recall.com</u></font></a></div> <div>&nbsp;</div> </span></font><div class="gmail_quote" style="font-family: &#39;lucida Grande&#39;, Verdana, &#39;Microsoft YaHei&#39;; font-size: 14px; line-height: 23px; widows: auto"><a href="http://www.recall.hk/" target="_blank"><font color="blue"><u>www.recall.hk</u></font></a><span style="font-size: 11pt; font-family: Calibri">&nbsp;</span>&nbsp;</div>', 0, NULL, NULL, NULL),
('784db9ba-8221-11e9-9380-00163ee24a96', 'ar', '你好', NULL, NULL, '你好，有咩幫到你', 3, NULL, NULL, NULL),
('8380e302-b44e-11e9-a3eb-00163e8d0e51', 'ar', '我既預約', NULL, NULL, '{{name}}你好，你既最新預約係8月8曰2:30PM，如果需要更改時間，請隨時whatsapp我地', 5, NULL, NULL, NULL),
('85370c92-9df3-11e4-96d6-de9d8217a725', 'edm', 'quickstart', NULL, NULL, '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">\r\n<html>\r\n<head></head>\r\n<body><table border="1" bordercolor="#fffff0" cellpadding="6" cellspacing="0" width="700"><tbody><tr>\r\n<td> \r\n      <table align="center" border="0" cellpadding="0" cellspacing="0" style="width: 684px;" width="690"><tbody>\r\n<tr>\r\n<td style="width: 680px;"><img src="http://images.rimanggis.com/resource/campaign/5451cdea0cf2b63924b813a9/images/gzLrj_banner.jpg" style="width: 680px; height: 40px;"></td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;">&nbsp;</td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;"> \r\n          <table border="0" cellspacing="5" width="100%"><tbody><tr>\r\n<td>\r\n<b><font color="#953735" size="4">Adaptive Quick Start Customers &amp; Sales Management System<br> On Demand package for SME&rsquo;s goes far beyond any other software offering. It&rsquo;s Easy to use and Fast to deploy.<br> Adaptive &#37559;&#21806;&#33287;&#39015;&#23458;&#31649;&#29702;&#31995;&#32113;(CRM) - &#24555;&#36895;&#21855;&#21205;&#29256;<br> &#23560;&#28858;&#20013;&#23567;&#20225;&#26989;&#32780;&#35373;&#30340;&#25353;&#29992;&#25143;&#38656;&#27714;&#36575;&#20214;&#65292;&#26159;&#20854;&#20182;&#31995;&#32113;&#28961;&#21487;&#27604;&#25836;&#30340;&#12290;&#23427;&#26131;&#26044;&#20351;&#29992;&#21450;&#24555;&#36895;&#23433;&#35037;&#12290;</font></b><br><br><font color="#953735"><b><font size="4">Easy to use:</font></b> </font>No software, hardware and expensive infrastructure are required, reduces IT administration such as upgrades, maintenance, backups and recovery. We take care of all these tasks for you and let you focus on running the business. Leveraging an easy-to-use and highly tailored solution offered at a predictable per location, per month price.<br><font color="#953735"><b><font size="4">&#23481;&#26131;&#20351;&#29992;:</font></b> </font>&#28961;&#38656;&#36575;&#20214;&#65292;&#30828;&#20214;&#21644;&#26114;&#36020;&#30340;&#22522;&#30990;&#35373;&#26045;&#65292;&#28187;&#23569;&#22914;&#21319;&#32026;&#65292;&#32173;&#35703;&#65292;&#20633;&#20221;&#21644;&#20462;&#24489;&#31561;&#24118;&#20358;&#30340; IT&#34892;&#25919;&#31649;&#29702;&#12290;&#25105;&#20497;&#23559;&#28858;&#24744;&#34389;&#29702;&#25152;&#26377;&#36889;&#20123;&#24037;&#20316;&#65292;&#35731;&#24744;&#26377;&#26356;&#22810;&#26178;&#38291;&#31649;&#29702;&#24744;&#30340;&#26989;&#21209;&#12290;&#35731;&#24744;&#26126;&#30637;&#25353;&#22320;&#21312;&#65292;&#21644;&#27599;&#26376;&#30340;&#36027;&#29992;&#65292;&#20351;&#24744;&#22312;&#21487;&#38928;&#28204;&#30340;&#24773;&#27841;&#19979;&#36984;&#25799;&#23481;&#26131;&#20351;&#29992;&#19988;&#23560;&#38272;&#37327;&#36523;&#23450;&#20570;&#30340;&#35299;&#27770;&#26041;&#26696;&#12290;<br><br><br><font color="#953735"><b><font size="4">Fast to deploy:</font></b> </font>Rapid time to value, within 24 hours your organization should have completed the on-boarding process. There are no infrastructure or software requirements; therefore implementation can be completed faster. Access is available anywhere at any time and CRM best practices are already embedded in the software rather than forcing you to create new workflows or software modifications.<br><font color="#953735"><b><font size="4">&#24555;&#36895;&#38928;&#20633;&#22949;&#30070;:</font></b> </font>&#36020;&#21496;&#33021;&#22312;&#24319;&#22235;&#23567;&#26178;&#20839;&#21487;&#20197;&#38283;&#22987;&#36939;&#20316;&#36889;&#31995;&#32113;&#65292;&#36889;&#27171;&#20415;&#21487;&#20197;&#24555;&#36895;&#22320;&#21109;&#36896;&#20729;&#20540;&#12290;&#30001;&#26044;&#28961;&#38656;&#38928;&#20633;&#20219;&#20309;&#22522;&#30990;&#35373;&#26045;&#25110;&#32773;&#36575;&#20214;&#65292;&#22240;&#27492;&#24456;&#24555;&#20415;&#21487;&#25033;&#29992;&#27010;&#31995;&#32113;&#12290;&#36889;&#31995;&#32113;&#26159;&#20840;&#22825;&#20399;&#30340;;&#22312;&#20219;&#20309;&#26178;&#38291;&#65292;&#20219;&#20309;&#22320;&#40670;&#37117;&#21487;&#36914;&#20837;&#12290;&#25105;&#20497;&#24050;&#25226;&#23458;&#25142;&#38364;&#31995;&#31649;&#29702;&#30340;&#26368;&#20339;&#23526;&#21209;&#23432;&#21063;&#34701;&#20837;&#31995;&#32113;&#20013;&#65292;&#23458;&#25142;&#28961;&#38920;&#21478;&#34892;&#24314;&#31435;&#26032;&#30340;&#24037;&#20316;&#27969;&#31243;&#25110;&#32773;&#20462;&#25913;&#36575;&#20214;&#12290;</td> \r\n            </tr></tbody></table>\r\n</td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;"> <p align="center"><img height="525" src="http://images.rimanggis.com/resource/campaign/5451cdea0cf2b63924b813a9/images/r4Yns_price.jpg" width="634"></p> </td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;"> \r\n          <table border="1" bordercolor="#000000" cellpadding="5" cellspacing="0" class="db" style="border-collapse: collapse" width="100%"><tbody>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Account<br> &#23458;&#25143;</b></font></td> \r\n             <td width="529">This module opens the Account screen, which is the window to the database containing all companies that the company deals with such as vendors, suppliers. As a result, user can track and manage all complete Account and Contact interactions and information including contact detail, notes, history, activity, sales opportunities, associated documents and communications, etc.<br> &#22312;&#36889;&#27169;&#22602;&#38283;&#21843;&#23458;&#25143;&#20171;&#38754;&#65292;&#36889;&#35023;&#21253;&#25324;&#25152;&#26377;&#32879;&#32097;&#20844;&#21496;&#30340;&#36039;&#26009;&#65292;&#22914;&#23458;&#25143;&#65295;&#20379;&#25033;&#21830;&#31561;&#12290;&#25925;&#27492;&#65292;&#29992;&#25143;&#21487;&#20197;&#23436;&#25972;&#22320;&#20445;&#30041;&#23458;&#25142;&#21644;&#32879;&#32363;&#20154;&#30340;&#36039;&#26009;&#22914;&#21253;&#25324;&#32879;&#32097;&#36039;&#26009;&#65292;&#31558;&#35352;&#65292;&#27511;&#21490;&#65292;&#27963;&#21205;&#65292;&#37559;&#21806;&#27231;&#26371;&#65292;&#30456;&#38364;&#25991;&#20214;&#21644;&#36890;&#35338;&#31561;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Diary<br> &#26085;&#35468;</b></font></td> \r\n             <td width="529">This module opens the Diary screen, which is the windows to the database of all your activities in daily, weekly, monthly. Hence, this is an interface user can manage to-do items, events request as well as use activity alarms to stay on top of deliverables.<br> &#22312;&#36889;&#27169;&#22602;&#38283;&#21843;&#26085;&#35468;&#20171;&#38754;&#65292;&#31649;&#29702;&#25152;&#26377;&#25353;&#26085;&#65292;&#26376;&#25110;&#24180;&#30340;&#27963;&#21205;&#12290;&#22240;&#27492;&#65292;&#36889;&#26159;&#19968;&#20491;&#29992;&#25142;&#21487;&#20197;&#31649;&#29702;&#24453;&#36774;&#20107;&#38917;&#65292;&#27963;&#21205;&#35201;&#27714;&#20197;&#21450;&#21033;&#29992;&#27963;&#21205;&#35686;&#22577;&#65292;&#20197;&#31649;&#29702;&#20844;&#21496;&#26989;&#21209;&#36914;&#24230;&#30340;&#25509;&#21475;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Case Management<br> &#20107;&#38917;&#36319;&#36914;</b></font></td> \r\n             <td width="529">This module let users to centralize complaints/ inquiries/ incident under one place so the company will never miss a complaint unattended. It lets user create, manage and resolve customer support cases more easily by automatically tracking all customer interactions. E-mails received from customers will automatically generate cases which can be routed by topic, region, or specialist.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#25226;&#19968;&#20123;&#38656;&#35201;&#36319;&#36914;&#30340;&#20107;&#38917;&#22914;&#25237;&#35380;/&#26597;&#35426;/&#20107;&#20214;&#38598;&#20013;&#22312;&#19968;&#20491;&#22320;&#26041;&#12290;&#20844;&#21496;&#19981;&#26371;&#37679;&#22833;&#36942;&#20219;&#20309;&#19968;&#20491;&#35201;&#36319;&#36914;&#30340;&#20107;&#38917;&#12290; &#30001;&#26044;&#29992;&#25142;&#21487;&#20197;&#23481;&#26131;&#21109;&#24314;&#65292;&#31649;&#29702;&#21644;&#35299;&#27770;&#23458;&#25142;&#25903;&#25588;&#30340;&#20107;&#38917;&#65292;&#36889;&#26377;&#21161;&#33258;&#21205;&#36319;&#36394;&#25152;&#26377;&#23458;&#25142;&#30340;&#20114;&#21205;&#12290;&#23458;&#25142;&#25910;&#21040;&#30340;&#38651;&#23376;&#37109;&#20214;&#21487;&#20197;&#36319;&#25818;&#35441;&#38988;&#65292;&#22320;&#21312;&#25110;&#23560;&#38917;&#33258;&#21205;&#29983;&#25104;&#30456;&#38364;&#20107;&#38917;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Contact<br> &#32879;&#32097;</b></font></td> \r\n             <td width="529">This module opens the Contact screen, which is the window to the database containing all contacts of companies in Account Management. User can also populate unlimited pre-defined fields including Name, Company, Phone, Address, Web site, E-mail, Status, and Source or add upon user request. Create Account records and view a roll-up of all notes, history, activities and opportunities associated with contracts at that account.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#38283;&#21843;&#21450;&#31649;&#29702;&#25152;&#26377;&#23458;&#25143;&#30340;&#32879;&#32097;&#36039;&#26009;&#12290;&#29992;&#25142;&#21487;&#20197;&#22635;&#19978;&#38928;&#20808;&#23450;&#32681;&#30340;&#36039;&#26009;&#65292;&#22914;&#22995;&#21517;&#65292;&#20844;&#21496;&#65292;&#38651;&#35441;&#65292;&#22320;&#22336;&#65292;&#32178;&#31449;&#65292;&#38651;&#23376;&#37109;&#20214;&#65292;&#29376;&#24907;&#65292;&#36039;&#26009;&#20358;&#28304;&#25110;&#26681;&#25818;&#29992;&#25142;&#35201;&#27714;&#28155;&#21152;&#20854;&#23427;&#27396;&#30446;&#12290; &#21109;&#24314;&#24115;&#25142;&#35352;&#37636;&#21644;&#26597;&#30475;&#20043;&#21069;&#30340;&#25152;&#26377;&#35352;&#37636;&#65292;&#27511;&#21490;&#65292;&#27963;&#21205;&#21644;&#27231;&#26371;&#21450;&#33287;&#35442;&#24115;&#25142;&#30340;&#21512;&#32004;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Document<br> &#25991;&#20214;&#31649;&#29702;</b></font></td> \r\n             <td width="529">This module opens the Document screen, which is the windows to the database of all documents uploaded to the system such as white papers, quotes, product info, and other resources from the pre-defined template or library. From this module, users can share and exchange commonly used documents and without sending email back and forth.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#20197;&#30475;&#21040;&#20445;&#23384;&#22312;&#31995;&#32113;&#20839;&#30340;&#25991;&#20214;&#22914;&#30333;&#30382;&#26360;&#65292;&#22577;&#20729;&#65292;&#29986;&#21697;&#36039;&#26009;&#31561;&#31561;&#12290;&#25925;&#27492;&#65292;&#29992;&#25143;&#21487;&#20114;&#25563;&#25991;&#20214;&#32780;&#19981;&#29992;&#36879;&#36942;&#20351;&#29992;&#38651;&#37109;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Opportunity<br> &#27231;&#26371;</b></font></td> \r\n             <td width="529">This module enable user to manage opportunities by adding new and viewing those opportunities created in the past.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#20197;&#26032;&#22686;&#25110;&#26597;&#30475;&#36942;&#24448;&#30340;&#27231;&#26371;&#31561;&#31649;&#29702;&#24037;&#20316;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Report<br> &#22577;&#21578;</b></font></td> \r\n             <td width="529">User can access multi real-time reports including account list, contact list, activity report, sales &amp; forecast report, history report and much more. After reports are generated, users can either save it to the system for later retrieval or export the result to either CSV or xml format.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#20197;&#22240;&#25033;&#38656;&#27714;&#35373;&#23450;&#19981;&#21516;&#30340;&#21363;&#26178;&#22577;&#21578;&#12290;&#22312;&#22577;&#21578;&#29986;&#29983;&#24460;&#65292;&#29992;&#25143;&#38500;&#20102;&#21487;&#20197;&#25226;&#36039;&#26009;&#20445;&#23384;&#19979;&#20358;&#22806;&#65292;&#36996;&#21487;&#20197;&#25226;&#23427;&#20497;&#23566;&#20986;&#21040;&#22914;CSV&#25110;xml &#26684;&#24335;&#30340;&#27284;&#26696;&#12290;</td> \r\n            </tr>\r\n<tr>\r\n<td valign="top"><font color="#953735"><b>Out Bound Email<br> &#22806;&#30332;&#38651;&#37109;</b></font></td> \r\n             <td width="529">This module enable users to send email within the system on the fly. There are also build in templates for user to chose.<br> &#22312;&#36889;&#27169;&#22602;&#65292;&#29992;&#25142;&#21487;&#20197;&#36805;&#36895;&#22312;&#31995;&#32113;&#20839;&#30332;&#25918;&#38651;&#37109;&#12290;&#31995;&#32113;&#20839;&#32622;&#30340;&#38651;&#37109;&#27169;&#26495;&#26377;&#21161;&#29992;&#25143;&#24555;&#36895;&#22320;&#34389;&#29702;&#38651;&#37109;&#12290;</td> \r\n            </tr>\r\n</tbody></table>\r\n</td> \r\n        </tr>\r\n<tr>\r\n<td bgcolor="#ffffff" style="width: 680px;"><img src="http://images.rimanggis.com/resource/campaign/5451cdea0cf2b63924b813a9/images/OBYol_button.jpg" style="width: 680px; height: 40px;"></td> \r\n        </tr>\r\n<tr>\r\n<td background="http://www.bsurprise.com/edm/crm/images/footer.gif" bgcolor="#ffffff" height="80" style="width: 680px;"> \r\n          <table border="0" cellpadding="8" cellspacing="0" width="100%"><tbody>\r\n<tr>\r\n<td align="center">Room 508, 5/F., Stag Building, 148 Queen&rsquo;s Road Central, Central Hong Kong</td> \r\n            </tr>\r\n<tr>\r\n<td align="center">\r\n<a href="http://t.rimanggis.com/activities_web/sample/click?msgid=aacb645a-bbd3-4a73-b7bc-937f9f3f2b12&amp;linkid=5451cdf80cf2b63924b813ad" style="text-decoration: none" target="_blank"><font color="#000000">http://www.adaptgp.com</font></a>&nbsp;&nbsp;&nbsp; &nbsp; Tel: (852) <span style="border-bottom:1px dashed #ccc;z-index:1" t="6" onclick="return false;" data="2111-2742">2111-2742</span>&nbsp;&nbsp;&nbsp; &nbsp; Fax: (852) <span style="border-bottom:1px dashed #ccc;z-index:1" t="6" onclick="return false;" data="2111-2748">2111-2748</span>\r\n</td> \r\n            </tr>\r\n</tbody></table>\r\n</td> \r\n        </tr>\r\n</tbody></table>\r\n</td> \r\n    </tr></tbody></table>\r\n    <div>If you prefer not to receive commercial emails from us in the future, please &nbsp;<a href="{{{unsubscribe}}}" target="_blank" style="color:#000000;">unsubscribe / update profile</a></div>\r\n    </body>\r\n</html>\r\n', 0, NULL, NULL, NULL),
('8947e2d0-bcec-11e9-90be-00163e8d0e51', 'ar', '#1', NULL, NULL, '多謝你支持，我地會安排同事同你聯絡，了解多Ｄ你需要', 10, NULL, NULL, NULL),
('8ee458b8-81cd-11e9-9dd2-00163ee24a96', 'ar', '查詢積分', NULL, NULL, '你好{{name}}，會員號碼{{member_no}}，你會員積分已經有{{reward_points}}。想得到我地最hot既禮物: 瑞士12日旅遊套票? 快D儲夠10000分啦！', 2, NULL, NULL, NULL),
('98a5b1e0-b593-11e9-a7c0-00163e8d0e51', 'ar', '預約', NULL, NULL, '{{name}}你好，多謝繼續支持Teris，我地最快既可預約時間係19年8月4日4:30PM，請問係咪想預約？', 7, NULL, NULL, NULL),
('9d829986-81c6-11e9-908d-00163ee24a96', 'wa', 'New Activity Notice', NULL, NULL, 'Hi @@name@@, as talked, we will have a meeting on 16 Aug 2019 (Fri) at 15:00 - 16:00. Kindly let me know if you have anything that I can prepare in advance. See you!', 1, NULL, NULL, NULL),
('a4104860-b593-11e9-bffd-00163e8d0e51', 'ar', '優惠', NULL, NULL, '優惠資訊及優惠券請到https://www.adaptivecrm.com.hk/ 獲取', 8, NULL, NULL, NULL),
('a69a6e8a-bcf5-11e9-b627-00163e8d0e51', 'wa', 'Booking confirmation', NULL, NULL, 'Hello @@name@@, 我地已幫你預約左護膚療\n日期：2019年8月18日(星期日)\n時間：下午3點至4點\n地點：香港\n\n如需要更改時間，請輸入"我想更改時間"，我地會安排同事聯絡返你', 6, NULL, NULL, NULL),
('b399e0be-bced-11e9-a00a-00163e8d0e51', 'ar', '#3', NULL, NULL, '唔好意思，希望日後你會對我地服務有興趣，希望你唔介意我地日後會通知你新產品詳情', 12, NULL, NULL, NULL),
('bd125c02-bced-11e9-aad7-00163e8d0e51', 'ar', '#4', NULL, NULL, '唔好意思，希望日後你會對我地服務有興趣', 13, NULL, NULL, NULL),
('bd808292-b543-11e9-a7c0-00163e8d0e51', 'ar', '我想預約', NULL, NULL, '{{name}}你好，多謝繼續支持Angel Face，我地最快既可預約時間係19年8月4日4:30PM，請問係咪想預約？', 6, NULL, NULL, NULL),
('bfcec838-b593-11e9-bffd-00163e8d0e51', 'ar', '查詢訂單', NULL, NULL, '你既訂單情況: A200190622 已付運', 9, NULL, NULL, NULL),
('d4a2557a-81c4-11e9-908d-00163ee24a96', 'wa', 'New Contact Greeting', NULL, NULL, 'Hi @@name@@, nice meeting you and talked about your business. I think our service can benefit your company very much. Let me further engage with you for follow-up', 0, NULL, NULL, NULL),
('d4beb98e-81c6-11e9-908d-00163ee24a96', 'wa', 'mid-autumn', NULL, NULL, '@@name@@, I wish that your career and life, just like the round moon on Mid-Autumn Day, be bright and perfect. 中秋節快樂，祝萬事如意心想事成！\n', 2, NULL, NULL, NULL),
('d92b49a4-bcec-11e9-a00a-00163e8d0e51', 'ar', '#2', NULL, NULL, '多謝你支持，我地會安排同事同你聯絡，等你了解多d我地可以點幫到你', 11, NULL, NULL, NULL),
('e3191d4e-82cf-11e9-b9b1-00163ee24a96', 'ar', '查詢優惠', NULL, NULL, '優惠資訊及優惠券請到https://www.adaptivecrm.com.hk/ 獲取', 4, NULL, NULL, NULL),
('e9162404-526e-11e8-9ee6-00163ee56c1d', 'edm', 'HGC', NULL, NULL, '<p>\r\n	<br />\r\n</p>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<b><span style="font-size:16pt;color:#F68222;">Solutions for Your Enterprise</span></b><span style="color:#222222;"><u></u><u></u></span> \r\n</p>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<span style="color:#222222;">&nbsp;<u></u><u></u></span> \r\n</p>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<b><span style="color:#0070C0;">&nbsp;</span></b><span style="color:#222222;"><u></u><u></u></span> \r\n</p>\r\n<table class="m_7205919270325817525m_2195761093145549186m_-2491473188298339860m_-7196003433587831727m_194179350578386706m_3760262443478409343m_-7268129654968052930m_-3579183369813126153m_6342729604898483830gmail-m_-2038474339487851035m_-3919724144811005163m_2232833952036124652m_4075156404907631751m_7243960634344216595MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" style="color:#000000;font-family:&quot;font-size:14px;background-color:#FFFFFF;">\r\n	<tbody>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Broadband Network</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Fibre Services<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Business Broadband</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Diversified commercial fibre broadband solutions up to 1000Mbps^<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					Dedicated Access<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Dedicated Internet Access (DIA)</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Manageable bandwidth choices of local and international connectivity<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#1F497D;">Broadband Services</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Dedicated bandwidth to specified regions<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					&nbsp;<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Cloud Solutions</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Infrastructure-as-a-Service<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Infinite Server</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					On-demand virtual servers with variable computing power<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					Network-as-a-Service<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Infinite Wi-fi</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Scalable and secure end-to-end cloud-based Wi-Fi<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					Backup-as-a-Service<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Infinite Backup</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Comprehensive data protection with reliable and secure backup<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">&nbsp;</span><span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Data Facility</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Data Facility<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Data Centre</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Tier 3+ centre with ultra-low lantency dark fibre connectivity<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					&nbsp;<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Data Connectivity</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Local Data<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">&nbsp;</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">MetroNet</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					High bandwidth connectivity for any-to-any solutions<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Dark Fibre</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					High capacity metro networks at very low latency<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					International Data<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">IPLC</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					End-to-end dedicated telecommunications transmission for exclusive use<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">IEPL</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Point-to-point international high-bandwidth data connectivity<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">MPLS</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Point-to-multi point international data connectivity<u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">&nbsp;</span><span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<b><span style="font-size:14pt;color:#0070C0;">Voice Communication</span></b><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Business Voice<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Infinite Voice</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Hosted voice solution with a full set of cloud-based unified communications features<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					&nbsp;<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="color:#0070C0;">Business Line</span><u></u><u></u> \r\n				</p>\r\n				<p class="MsoNormal">\r\n					Provide a wide range of professional grade telephony services<span style="font-size:12pt;"><u></u><u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td width="191" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="font-size:12pt;"><u></u>&nbsp;<u></u></span> \r\n				</p>\r\n			</td>\r\n			<td width="541" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal">\r\n					<span style="font-size:12pt;"><u></u>&nbsp;<u></u></span> \r\n				</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<span style="color:#222222;">&nbsp;<u></u><u></u></span> \r\n</p>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;text-align:justify;background:white;">\r\n	<b><u><span style="color:#222222;">About H</span><span style="color:#1F497D;">GC</span><span style="color:#222222;">&nbsp;Enterprise Solutions</span></u></b><span style="color:#222222;"><u></u><u></u></span> \r\n</p>\r\n<table class="m_7205919270325817525m_2195761093145549186m_-2491473188298339860m_-7196003433587831727m_194179350578386706m_3760262443478409343m_-7268129654968052930m_-3579183369813126153m_6342729604898483830gmail-m_-2038474339487851035m_-3919724144811005163m_2232833952036124652m_4075156404907631751m_7243960634344216595MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" width="920" style="color:#000000;font-family:&quot;font-size:14px;width:690pt;background:white;">\r\n	<tbody>\r\n		<tr>\r\n			<td width="620" valign="top" style="font-family:&quot;">\r\n				<p class="MsoNormal" style="text-align:justify;vertical-align:baseline;">\r\n					<span style="font-size:10.5pt;color:#333333;">HGC owns an extensive fibre-optic network in Hong Kong and provides world-class telecoms services based on innovative application of the latest technologies and a strong customer-centric service ethic. Coupled with its four cross-border routes integrated with three of mainland China''s tier-one telecommunications operators and a world-class international network, HGC provides a comprehensive range of fixed-line telecommunications services locally and overseas. Our lines of business can be divided into four major categories:<u></u><u></u></span> \r\n				</p>\r\n				<table class="m_7205919270325817525m_2195761093145549186m_-2491473188298339860m_-7196003433587831727m_194179350578386706m_3760262443478409343m_-7268129654968052930m_-3579183369813126153m_6342729604898483830gmail-m_-2038474339487851035m_-3919724144811005163m_2232833952036124652m_4075156404907631751m_7243960634344216595MsoNormalTable ke-zeroborder" border="0" cellspacing="0" cellpadding="0" width="100%" style="width:920px;">\r\n					<tbody>\r\n						<tr>\r\n							<td width="310" valign="top" style="font-family:&quot;">\r\n								<p class="MsoNormal" style="margin-left:0in;vertical-align:baseline;">\r\n									<u></u><span style="font-size:10pt;font-family:Symbol;">·<span style="font-size:7pt;line-height:normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u></u><span style="font-size:12pt;">International and Carrier Business<u></u><u></u></span> \r\n								</p>\r\n								<p class="MsoNormal" style="margin-left:0in;vertical-align:baseline;">\r\n									<u></u><span style="font-size:10pt;font-family:Symbol;">·<span style="font-size:7pt;line-height:normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u></u><span style="font-size:12pt;">Data Centre Business<u></u><u></u></span> \r\n								</p>\r\n							</td>\r\n							<td width="310" valign="top" style="font-family:&quot;">\r\n								<p class="MsoNormal" style="margin-left:0in;vertical-align:baseline;">\r\n									<u></u><span style="font-size:10pt;font-family:Symbol;">·<span style="font-size:7pt;line-height:normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u></u><span style="font-size:12pt;">Corporate Business<u></u><u></u></span> \r\n								</p>\r\n								<p class="MsoNormal" style="margin-left:0in;vertical-align:baseline;">\r\n									<u></u><span style="font-size:10pt;font-family:Symbol;">·<span style="font-size:7pt;line-height:normal;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></span><u></u><span style="font-size:12pt;">Residential Broadband Service<u></u><u></u></span> \r\n								</p>\r\n							</td>\r\n						</tr>\r\n					</tbody>\r\n				</table>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p class="MsoNormal" style="font-family:&quot;font-size:14px;background:white;">\r\n	<br />\r\n</p>\r\n<div style="color:#222222;font-family:arial, sans-serif;font-size:12.8px;background-color:#FFFFFF;">\r\n	<br />\r\n</div>\r\n<span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">Any enquiries, please do not hesitate to contact Mr Luke Tam :T:&nbsp;</span><span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">2128-3320</span><span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">&nbsp;&nbsp; M:&nbsp;</span><span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">9600-7537</span><span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">&nbsp;&nbsp;</span><br />\r\n<br />\r\n<span style="font-family:&quot;font-size:14px;background-color:#FFFFFF;">Email :</span><a href="mailto:luke.tam@hgc.com.hk" target="_blank">luke.tam@hgc.com.hk</a> \r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	<br />\r\n</p>', 0, NULL, NULL, NULL),
('efc1ef3e-bcf5-11e9-983b-00163e8d0e51', 'ar', '我想更改時間', NULL, NULL, '我地同事會係2個鐘內聯絡返你，謝謝！', 14, NULL, NULL, NULL),
('f8f6a456-b524-11e9-a7c0-00163e8d0e51', 'wa', 'Payment Reminder', NULL, NULL, '@@name@@ 你好，你新一期付款到期日將會係2019年8月30日，煩請準時付款，謝謝！如有任何問題，隨時WhatsApp返我地, 或者聯絡22112211', 4, NULL, NULL, NULL),
('fac1a3c0-bceb-11e9-aad7-00163e8d0e51', 'wa', 'Questionnaire', NULL, NULL, 'Hello @@name@@，多謝你今日出席我地既科技券 x WhatsApp CRM講座，希望我地既服務可以為你公司增加競爭力。係度想收集下你既意見，如果覺得我地既服務：\n\n好有用(輸入#1)\n有用(輸入#2)\n冇咩用(輸入#3)\n完全冇用(輸入#4)\n\n謝謝!', 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `ugid` int(11) unsigned NOT NULL DEFAULT 0 COMMENT '用户组ID',
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '用户头像',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '姓别：0保密，1男，2女',
  `birthday` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '生日',
  `tel` varchar(20) NOT NULL DEFAULT '' COMMENT '电话号码',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'QQ',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '电子邮箱',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '用户状态，0禁用，1启用',
  `identifier` varchar(32) NOT NULL DEFAULT '' COMMENT '登录标识',
  `token` varchar(32) NOT NULL DEFAULT '' COMMENT '登录Token',
  `salt` varchar(10) NOT NULL DEFAULT '' COMMENT '密码盐',
  `skin` varchar(20) NOT NULL DEFAULT 'no-skin' COMMENT '皮肤',
  `create_time` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '创建时间',
  `member_no` varchar(255) DEFAULT NULL COMMENT '編號',
  `grade` varchar(255) DEFAULT NULL COMMENT '級別',
  `last_name` varchar(255) DEFAULT NULL COMMENT '中文',
  `first_name` varchar(255) DEFAULT NULL COMMENT '英文',
  `for_short` varchar(255) DEFAULT NULL COMMENT '簡稱',
  `date_of_birth` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `identity_card` varchar(255) DEFAULT NULL COMMENT '身份證號碼',
  `marital_status` varchar(255) DEFAULT NULL COMMENT '婚姻狀況',
  `phone_mobile` varchar(255) DEFAULT NULL COMMENT '手提電話',
  `phone_work` varchar(255) DEFAULT NULL COMMENT '住宅電話',
  `region` varchar(255) DEFAULT NULL COMMENT '傳真號碼',
  `expiry_date` varchar(255) DEFAULT NULL COMMENT '地址',
  `remark` varchar(255) DEFAULT NULL COMMENT '備註',
  `date_of_accession` varchar(255) DEFAULT NULL COMMENT '加入日期',
  `category` varchar(255) DEFAULT NULL COMMENT '職位',
  `shop` varchar(255) DEFAULT NULL COMMENT '狀態',
  `source` varchar(255) DEFAULT NULL COMMENT '顯示語言',
  `user_name` varchar(255) DEFAULT NULL COMMENT '使用者名稱',
  `new_password` varchar(255) DEFAULT NULL COMMENT '新密碼',
  `store` varchar(255) DEFAULT NULL COMMENT '店鋪',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`uid`, `ugid`, `username`, `password`, `avatar`, `sex`, `birthday`, `tel`, `qq`, `email`, `status`, `identifier`, `token`, `salt`, `skin`, `create_time`, `member_no`, `grade`, `last_name`, `first_name`, `for_short`, `date_of_birth`, `identity_card`, `marital_status`, `phone_mobile`, `phone_work`, `region`, `expiry_date`, `remark`, `date_of_accession`, `category`, `shop`, `source`, `user_name`, `new_password`, `store`) VALUES
(1, 1, 'admin', 'e62e76cff8e27165bbf2eb429506da72', '', 0, 19910201, '15881295252', '331349451', 'admin@huikon.cn', 1, 'b3c23fa8034e263b91028a02cf3f18e6', '111064cb8aa794403f163957c6467a73', 'eW2e3V8fex', 'no-skin', 1574767002, NULL, NULL, '', 'Admin', NULL, NULL, '440524', NULL, '13631268076', NULL, '0756-88888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1'),
(2, 1, 'lt', 'e62e76cff8e27165bbf2eb429506da72', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '5c6e4f382262a8d4a7c5ada2ce185e4d', '45d2a864782b54ef76c14542fe2e6e83', 'CHt888vk3w', 'no-skin', 0, NULL, NULL, NULL, 'Lt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 1, 'test1', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, 'a061f3be211287767bc81584eb1f6990', '3a017b42baacb6ac09688f26e59c3c28', 'rvSRC7V38U', 'no-skin', 0, NULL, NULL, NULL, 'A1-Mandy(Sup)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 1, 'test2', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '1fcf8b406aeb094dd7405a1cfa64e38e', '13dd77332607d24d39b100f6f8e79f61', 'Ufm4h8UCre', 'no-skin', 0, NULL, NULL, NULL, 'A2-lcy(BC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 'test3', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '67c6adb012fcb1929820c8e537008400', 'd98bd85e99888cd76748952f2bb9b72e', 'Pqsq88d8Qj', 'no-skin', 0, NULL, NULL, NULL, 'A3-Carmen(BM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 1, 'test110', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'A4-歡(BM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 1, 'test10', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'A5-Cat(BM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 1, 'test100', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'B1-Luna(BC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 1, 'test1100', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'B2-Moon(BM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 1, 'test1010', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'B3-Sammi(BM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 1, 'test100000', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'B4-Lily(BM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 1, 'test1200', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'B5-大莉', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 1, 'test1011', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'C1-Teresa(Bc)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 1, 'test10000', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'C2-Noel(BC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 1, 'test222', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'C4-亞愛(BM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 1, 'test2223', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'C5-Nak(BM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 1, 'test2224', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'D1-Debbie(BC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 1, 'test2225', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'D2-KiKi(BC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 1, 'test226', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'D3-Chloe(Trainer)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 1, 'test2227', 'c28421dbcb3f9fee409bba434fdbb26c', '/static/admin/images/avatars/avatar2.png', 0, 0, '11111', '', '', 1, '', '', '', 'no-skin', 0, NULL, NULL, NULL, 'D5-Ruby(Sup)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `use_package`
--

CREATE TABLE IF NOT EXISTS `use_package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `use_time` date NOT NULL,
  `store_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `member_id` int(11) NOT NULL COMMENT '会员',
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '備注',
  `internal_notes` text COLLATE utf8_unicode_ci NOT NULL COMMENT '内部備注',
  `signature` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '簽名',
  `created_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `updated_user_id` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `created_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_time` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `use_package`
--

INSERT INTO `use_package` (`id`, `invoice_id`, `use_time`, `store_id`, `member_id`, `notes`, `internal_notes`, `signature`, `created_user_id`, `updated_user_id`, `created_time`, `updated_time`, `delete_time`) VALUES
(4, '5', '2020-02-23', '1', 1, '', '', '', '1', '1', '1582463546', '1582464310', 0);

-- --------------------------------------------------------

--
-- 表的结构 `use_package_item`
--

CREATE TABLE IF NOT EXISTS `use_package_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `use_package_id` varchar(10) NOT NULL,
  `service_package_id` varchar(10) NOT NULL,
  `service_package_item_id` varchar(11) NOT NULL,
  `beautician1` varchar(10) NOT NULL COMMENT '美容師1',
  `beautician2` varchar(10) NOT NULL COMMENT '美容師2',
  `quantity` int(11) NOT NULL COMMENT '數量',
  `deduction` decimal(10,1) NOT NULL COMMENT '扣除值',
  `total_deduction` decimal(10,1) NOT NULL COMMENT '縂扣除值',
  `delete_time` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `use_package_item`
--

INSERT INTO `use_package_item` (`id`, `use_package_id`, `service_package_id`, `service_package_item_id`, `beautician1`, `beautician2`, `quantity`, `deduction`, `total_deduction`, `delete_time`) VALUES
(12, '4', '1', '27', '1', '1', 1, 1.0, 1.0, NULL),
(11, '4', '1', '26', '1', '1', 1, 1.0, 1.0, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `warehouse`
--

CREATE TABLE IF NOT EXISTS `warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL COMMENT '店鋪id',
  `code` varchar(20) NOT NULL COMMENT '编号',
  `name` int(11) NOT NULL COMMENT '名称',
  `df` tinyint(1) DEFAULT 0 COMMENT '默认使用',
  `disabled` tinyint(1) DEFAULT 0 COMMENT '是否禁用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `warehouse`
--

INSERT INTO `warehouse` (`id`, `store_id`, `code`, `name`, `df`, `disabled`) VALUES
(1, 1, '1', 1, 1, 1),
(2, 2, '2', 2, 2, 2);

-- --------------------------------------------------------

--
-- 表的结构 `wa_log`
--

CREATE TABLE IF NOT EXISTS `wa_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `contact_id` varchar(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_jid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remote_jid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_me` tinyint(1) DEFAULT 1,
  `created_time` datetime DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ack` int(3) DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `msg_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_path` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_upload` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `remarks` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_time` int(10) DEFAULT NULL,
  `updated_time` datetime DEFAULT NULL,
  `comment` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `whatsapp_id` (`uid`),
  KEY `remote_jid` (`remote_jid`),
  KEY `sender_jid` (`sender_jid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
