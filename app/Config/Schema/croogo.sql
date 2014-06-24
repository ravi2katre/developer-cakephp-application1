-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 24, 2014 at 12:08 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `croogo`
--
CREATE DATABASE IF NOT EXISTS `croogo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `croogo`;

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=194 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, '', NULL, 'controllers', 1, 386),
(2, 1, '', NULL, 'Acl', 2, 25),
(3, 2, '', NULL, 'AclActions', 3, 16),
(4, 3, '', NULL, 'admin_index', 4, 5),
(5, 3, '', NULL, 'admin_add', 6, 7),
(6, 3, '', NULL, 'admin_edit', 8, 9),
(7, 3, '', NULL, 'admin_delete', 10, 11),
(8, 3, '', NULL, 'admin_move', 12, 13),
(9, 3, '', NULL, 'admin_generate', 14, 15),
(10, 2, '', NULL, 'AclPermissions', 17, 24),
(11, 10, '', NULL, 'admin_index', 18, 19),
(12, 10, '', NULL, 'admin_toggle', 20, 21),
(13, 10, '', NULL, 'admin_upgrade', 22, 23),
(14, 1, '', NULL, 'Blocks', 26, 55),
(15, 14, '', NULL, 'Blocks', 27, 44),
(16, 15, '', NULL, 'admin_toggle', 28, 29),
(17, 15, '', NULL, 'admin_index', 30, 31),
(18, 15, '', NULL, 'admin_add', 32, 33),
(19, 15, '', NULL, 'admin_edit', 34, 35),
(20, 15, '', NULL, 'admin_delete', 36, 37),
(21, 15, '', NULL, 'admin_moveup', 38, 39),
(22, 15, '', NULL, 'admin_movedown', 40, 41),
(23, 15, '', NULL, 'admin_process', 42, 43),
(24, 14, '', NULL, 'Regions', 45, 54),
(25, 24, '', NULL, 'admin_index', 46, 47),
(26, 24, '', NULL, 'admin_add', 48, 49),
(27, 24, '', NULL, 'admin_edit', 50, 51),
(28, 24, '', NULL, 'admin_delete', 52, 53),
(29, 1, '', NULL, 'Comments', 56, 73),
(30, 29, '', NULL, 'Comments', 57, 72),
(31, 30, '', NULL, 'admin_index', 58, 59),
(32, 30, '', NULL, 'admin_edit', 60, 61),
(33, 30, '', NULL, 'admin_delete', 62, 63),
(34, 30, '', NULL, 'admin_process', 64, 65),
(35, 30, '', NULL, 'index', 66, 67),
(36, 30, '', NULL, 'add', 68, 69),
(37, 30, '', NULL, 'delete', 70, 71),
(38, 1, '', NULL, 'Contacts', 74, 97),
(39, 38, '', NULL, 'Contacts', 75, 86),
(40, 39, '', NULL, 'admin_index', 76, 77),
(41, 39, '', NULL, 'admin_add', 78, 79),
(42, 39, '', NULL, 'admin_edit', 80, 81),
(43, 39, '', NULL, 'admin_delete', 82, 83),
(44, 39, '', NULL, 'view', 84, 85),
(45, 38, '', NULL, 'Messages', 87, 96),
(46, 45, '', NULL, 'admin_index', 88, 89),
(47, 45, '', NULL, 'admin_edit', 90, 91),
(48, 45, '', NULL, 'admin_delete', 92, 93),
(49, 45, '', NULL, 'admin_process', 94, 95),
(50, 1, '', NULL, 'Croogo', 98, 99),
(51, 1, '', NULL, 'Extensions', 100, 139),
(52, 51, '', NULL, 'ExtensionsLocales', 101, 112),
(53, 52, '', NULL, 'admin_index', 102, 103),
(54, 52, '', NULL, 'admin_activate', 104, 105),
(55, 52, '', NULL, 'admin_add', 106, 107),
(56, 52, '', NULL, 'admin_edit', 108, 109),
(57, 52, '', NULL, 'admin_delete', 110, 111),
(58, 51, '', NULL, 'ExtensionsPlugins', 113, 124),
(59, 58, '', NULL, 'admin_index', 114, 115),
(60, 58, '', NULL, 'admin_add', 116, 117),
(61, 58, '', NULL, 'admin_delete', 118, 119),
(62, 58, '', NULL, 'admin_toggle', 120, 121),
(63, 58, '', NULL, 'admin_migrate', 122, 123),
(64, 51, '', NULL, 'ExtensionsThemes', 125, 138),
(65, 64, '', NULL, 'admin_index', 126, 127),
(66, 64, '', NULL, 'admin_activate', 128, 129),
(67, 64, '', NULL, 'admin_add', 130, 131),
(68, 64, '', NULL, 'admin_editor', 132, 133),
(69, 64, '', NULL, 'admin_save', 134, 135),
(70, 64, '', NULL, 'admin_delete', 136, 137),
(71, 1, '', NULL, 'FileManager', 140, 175),
(72, 71, '', NULL, 'Attachments', 141, 152),
(73, 72, '', NULL, 'admin_index', 142, 143),
(74, 72, '', NULL, 'admin_add', 144, 145),
(75, 72, '', NULL, 'admin_edit', 146, 147),
(76, 72, '', NULL, 'admin_delete', 148, 149),
(77, 72, '', NULL, 'admin_browse', 150, 151),
(78, 71, '', NULL, 'FileManager', 153, 174),
(79, 78, '', NULL, 'admin_index', 154, 155),
(80, 78, '', NULL, 'admin_browse', 156, 157),
(81, 78, '', NULL, 'admin_editfile', 158, 159),
(82, 78, '', NULL, 'admin_upload', 160, 161),
(83, 78, '', NULL, 'admin_delete_file', 162, 163),
(84, 78, '', NULL, 'admin_delete_directory', 164, 165),
(85, 78, '', NULL, 'admin_rename', 166, 167),
(86, 78, '', NULL, 'admin_create_directory', 168, 169),
(87, 78, '', NULL, 'admin_create_file', 170, 171),
(88, 78, '', NULL, 'admin_chmod', 172, 173),
(89, 1, '', NULL, 'Install', 176, 189),
(90, 89, '', NULL, 'Install', 177, 188),
(91, 90, '', NULL, 'index', 178, 179),
(92, 90, '', NULL, 'database', 180, 181),
(93, 90, '', NULL, 'data', 182, 183),
(94, 90, '', NULL, 'adminuser', 184, 185),
(95, 90, '', NULL, 'finish', 186, 187),
(96, 1, '', NULL, 'Menus', 190, 219),
(97, 96, '', NULL, 'Links', 191, 208),
(98, 97, '', NULL, 'admin_toggle', 192, 193),
(99, 97, '', NULL, 'admin_index', 194, 195),
(100, 97, '', NULL, 'admin_add', 196, 197),
(101, 97, '', NULL, 'admin_edit', 198, 199),
(102, 97, '', NULL, 'admin_delete', 200, 201),
(103, 97, '', NULL, 'admin_moveup', 202, 203),
(104, 97, '', NULL, 'admin_movedown', 204, 205),
(105, 97, '', NULL, 'admin_process', 206, 207),
(106, 96, '', NULL, 'Menus', 209, 218),
(107, 106, '', NULL, 'admin_index', 210, 211),
(108, 106, '', NULL, 'admin_add', 212, 213),
(109, 106, '', NULL, 'admin_edit', 214, 215),
(110, 106, '', NULL, 'admin_delete', 216, 217),
(111, 1, '', NULL, 'Meta', 220, 221),
(112, 1, '', NULL, 'Migrations', 222, 223),
(113, 1, '', NULL, 'Nodes', 224, 257),
(114, 113, '', NULL, 'Nodes', 225, 256),
(115, 114, '', NULL, 'admin_toggle', 226, 227),
(116, 114, '', NULL, 'admin_index', 228, 229),
(117, 114, '', NULL, 'admin_create', 230, 231),
(118, 114, '', NULL, 'admin_add', 232, 233),
(119, 114, '', NULL, 'admin_edit', 234, 235),
(120, 114, '', NULL, 'admin_update_paths', 236, 237),
(121, 114, '', NULL, 'admin_delete', 238, 239),
(122, 114, '', NULL, 'admin_delete_meta', 240, 241),
(123, 114, '', NULL, 'admin_add_meta', 242, 243),
(124, 114, '', NULL, 'admin_process', 244, 245),
(125, 114, '', NULL, 'index', 246, 247),
(126, 114, '', NULL, 'term', 248, 249),
(127, 114, '', NULL, 'promoted', 250, 251),
(128, 114, '', NULL, 'search', 252, 253),
(129, 114, '', NULL, 'view', 254, 255),
(130, 1, '', NULL, 'Search', 258, 259),
(131, 1, '', NULL, 'Settings', 260, 297),
(132, 131, '', NULL, 'Languages', 261, 276),
(133, 132, '', NULL, 'admin_index', 262, 263),
(134, 132, '', NULL, 'admin_add', 264, 265),
(135, 132, '', NULL, 'admin_edit', 266, 267),
(136, 132, '', NULL, 'admin_delete', 268, 269),
(137, 132, '', NULL, 'admin_moveup', 270, 271),
(138, 132, '', NULL, 'admin_movedown', 272, 273),
(139, 132, '', NULL, 'admin_select', 274, 275),
(140, 131, '', NULL, 'Settings', 277, 296),
(141, 140, '', NULL, 'admin_dashboard', 278, 279),
(142, 140, '', NULL, 'admin_index', 280, 281),
(143, 140, '', NULL, 'admin_view', 282, 283),
(144, 140, '', NULL, 'admin_add', 284, 285),
(145, 140, '', NULL, 'admin_edit', 286, 287),
(146, 140, '', NULL, 'admin_delete', 288, 289),
(147, 140, '', NULL, 'admin_prefix', 290, 291),
(148, 140, '', NULL, 'admin_moveup', 292, 293),
(149, 140, '', NULL, 'admin_movedown', 294, 295),
(150, 1, '', NULL, 'Taxonomy', 298, 337),
(151, 150, '', NULL, 'Terms', 299, 312),
(152, 151, '', NULL, 'admin_index', 300, 301),
(153, 151, '', NULL, 'admin_add', 302, 303),
(154, 151, '', NULL, 'admin_edit', 304, 305),
(155, 151, '', NULL, 'admin_delete', 306, 307),
(156, 151, '', NULL, 'admin_moveup', 308, 309),
(157, 151, '', NULL, 'admin_movedown', 310, 311),
(158, 150, '', NULL, 'Types', 313, 322),
(159, 158, '', NULL, 'admin_index', 314, 315),
(160, 158, '', NULL, 'admin_add', 316, 317),
(161, 158, '', NULL, 'admin_edit', 318, 319),
(162, 158, '', NULL, 'admin_delete', 320, 321),
(163, 150, '', NULL, 'Vocabularies', 323, 336),
(164, 163, '', NULL, 'admin_index', 324, 325),
(165, 163, '', NULL, 'admin_add', 326, 327),
(166, 163, '', NULL, 'admin_edit', 328, 329),
(167, 163, '', NULL, 'admin_delete', 330, 331),
(168, 163, '', NULL, 'admin_moveup', 332, 333),
(169, 163, '', NULL, 'admin_movedown', 334, 335),
(170, 1, '', NULL, 'Ckeditor', 338, 339),
(171, 1, '', NULL, 'Users', 340, 385),
(172, 171, '', NULL, 'Roles', 341, 350),
(173, 172, '', NULL, 'admin_index', 342, 343),
(174, 172, '', NULL, 'admin_add', 344, 345),
(175, 172, '', NULL, 'admin_edit', 346, 347),
(176, 172, '', NULL, 'admin_delete', 348, 349),
(177, 171, '', NULL, 'Users', 351, 384),
(178, 177, '', NULL, 'admin_index', 352, 353),
(179, 177, '', NULL, 'admin_add', 354, 355),
(180, 177, '', NULL, 'admin_edit', 356, 357),
(181, 177, '', NULL, 'admin_reset_password', 358, 359),
(182, 177, '', NULL, 'admin_delete', 360, 361),
(183, 177, '', NULL, 'admin_login', 362, 363),
(184, 177, '', NULL, 'admin_logout', 364, 365),
(185, 177, '', NULL, 'index', 366, 367),
(186, 177, '', NULL, 'add', 368, 369),
(187, 177, '', NULL, 'activate', 370, 371),
(188, 177, '', NULL, 'edit', 372, 373),
(189, 177, '', NULL, 'forgot', 374, 375),
(190, 177, '', NULL, 'reset', 376, 377),
(191, 177, '', NULL, 'login', 378, 379),
(192, 177, '', NULL, 'logout', 380, 381),
(193, 177, '', NULL, 'view', 382, 383);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, 2, 'Role', 1, 'Role-admin', 3, 6),
(2, 3, 'Role', 2, 'Role-registered', 2, 7),
(3, NULL, 'Role', 3, 'Role-public', 1, 8),
(4, 1, 'User', 1, 'admin', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=20 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(1, 3, 35, '1', '1', '1', '1'),
(2, 3, 36, '1', '1', '1', '1'),
(3, 2, 37, '1', '1', '1', '1'),
(4, 3, 44, '1', '1', '1', '1'),
(5, 3, 125, '1', '1', '1', '1'),
(6, 3, 126, '1', '1', '1', '1'),
(7, 3, 127, '1', '1', '1', '1'),
(8, 3, 128, '1', '1', '1', '1'),
(9, 3, 129, '1', '1', '1', '1'),
(10, 2, 185, '1', '1', '1', '1'),
(11, 3, 186, '1', '1', '1', '1'),
(12, 3, 187, '1', '1', '1', '1'),
(13, 2, 188, '1', '1', '1', '1'),
(14, 3, 189, '1', '1', '1', '1'),
(15, 3, 190, '1', '1', '1', '1'),
(16, 3, 191, '1', '1', '1', '1'),
(17, 2, 192, '1', '1', '1', '1'),
(18, 2, 193, '1', '1', '1', '1'),
(19, 3, 183, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `region_id` int(20) DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `show_title` tinyint(1) NOT NULL DEFAULT '1',
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `element` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `visibility_paths` text COLLATE utf8_unicode_ci,
  `visibility_php` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `block_alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=10 ;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `region_id`, `title`, `alias`, `body`, `show_title`, `class`, `status`, `weight`, `element`, `visibility_roles`, `visibility_paths`, `visibility_php`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 4, 'About', 'about', 'This is the content of your block. Can be modified in admin panel.', 1, '', 1, 2, '', '', '', '', '', NULL, NULL, '2009-12-20 03:07:39', NULL, '2009-07-26 17:13:14', NULL),
(5, 4, 'Meta', 'meta', '[menu:meta]', 1, '', 1, 6, '', '', '', '', '', NULL, NULL, '2009-12-22 05:17:39', NULL, '2009-09-12 06:36:22', NULL),
(6, 4, 'Blogroll', 'blogroll', '[menu:blogroll]', 1, '', 1, 4, '', '', '', '', '', NULL, NULL, '2009-12-20 03:07:33', NULL, '2009-09-12 23:33:27', NULL),
(7, 4, 'Categories', 'categories', '[vocabulary:categories type="blog"]', 1, '', 1, 3, '', '', '', '', '', NULL, NULL, '2009-12-20 03:07:36', NULL, '2009-10-03 16:52:50', NULL),
(8, 4, 'Search', 'search', '', 0, '', 1, 1, 'Nodes.search', '', '', '', '', NULL, NULL, '2009-12-20 03:07:39', NULL, '2009-12-20 03:07:27', NULL),
(9, 4, 'Recent Posts', 'recent_posts', '[node:recent_posts conditions="Node.type:blog" order="Node.id DESC" limit="5"]', 1, '', 1, 5, '', '', '', '', '', NULL, NULL, '2010-04-08 21:09:31', NULL, '2009-12-22 05:17:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `comment_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'comment',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_fk` (`model`,`foreign_key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `parent_id`, `model`, `foreign_key`, `user_id`, `name`, `email`, `website`, `ip`, `title`, `body`, `rating`, `status`, `notify`, `type`, `comment_type`, `lft`, `rght`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, NULL, 'Node', 1, 0, 'Mr Croogo', 'email@example.com', 'http://www.croogo.org', '127.0.0.1', '', 'Hi, this is the first comment.', NULL, 1, 0, 'blog', 'comment', 1, 2, '2009-12-25 12:00:00', NULL, '2009-12-25 12:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `address2` text COLLATE utf8_unicode_ci,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message_status` tinyint(1) NOT NULL DEFAULT '1',
  `message_archive` tinyint(1) NOT NULL DEFAULT '1',
  `message_count` int(11) NOT NULL DEFAULT '0',
  `message_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `message_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `message_notify` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `title`, `alias`, `body`, `name`, `position`, `address`, `address2`, `state`, `country`, `postcode`, `phone`, `fax`, `email`, `message_status`, `message_archive`, `message_count`, `message_spam_protection`, `message_captcha`, `message_notify`, `status`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', 'you@your-site.com', 1, 0, 0, 0, 0, 1, 1, '2009-10-07 22:07:49', NULL, '2009-09-16 01:45:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `native` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `title`, `native`, `alias`, `status`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'English', 'English', 'eng', 1, 1, '2009-11-02 21:37:38', NULL, '2009-11-02 20:52:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `menu_id` int(20) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `link` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rel` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `links`
--

INSERT INTO `links` (`id`, `parent_id`, `menu_id`, `title`, `class`, `description`, `link`, `target`, `rel`, `status`, `lft`, `rght`, `visibility_roles`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(5, NULL, 4, 'About', 'about', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:about', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-10-06 23:14:21', NULL, '2009-08-19 12:23:33', NULL),
(6, NULL, 4, 'Contact', 'contact', '', 'plugin:contacts/controller:contacts/action:view/contact', '', '', 1, 5, 6, '', '', NULL, NULL, '2009-10-06 23:14:45', NULL, '2009-08-19 12:34:56', NULL),
(7, NULL, 3, 'Home', 'home', '', 'plugin:nodes/controller:nodes/action:promoted', '', '', 1, 5, 6, '', '', NULL, NULL, '2009-10-06 21:17:06', NULL, '2009-09-06 21:32:54', NULL),
(8, NULL, 3, 'About', 'about', '', 'plugin:nodes/controller:nodes/action:view/type:page/slug:about', '', '', 1, 7, 10, '', '', NULL, NULL, '2009-09-12 03:45:53', NULL, '2009-09-06 21:34:57', NULL),
(9, 8, 3, 'Child link', 'child-link', '', '#', '', '', 0, 8, 9, '', '', NULL, NULL, '2009-10-06 23:13:06', NULL, '2009-09-12 03:52:23', NULL),
(10, NULL, 5, 'Site Admin', 'site-admin', '', '/admin', '', '', 1, 1, 2, '', '', NULL, NULL, '2009-09-12 06:34:09', NULL, '2009-09-12 06:34:09', NULL),
(11, NULL, 5, 'Log out', 'log-out', '', '/plugin:users/controller:users/action:logout', '', '', 1, 7, 8, '["1","2"]', '', NULL, NULL, '2009-09-12 06:35:22', NULL, '2009-09-12 06:34:41', NULL),
(12, NULL, 6, 'Croogo', 'croogo', '', 'http://www.croogo.org', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-09-12 23:31:59', NULL, '2009-09-12 23:31:59', NULL),
(14, NULL, 6, 'CakePHP', 'cakephp', '', 'http://www.cakephp.org', '', '', 1, 1, 2, '', '', NULL, NULL, '2009-10-07 03:25:25', NULL, '2009-09-12 23:38:43', NULL),
(15, NULL, 3, 'Contact', 'contact', '', '/plugin:contacts/controller:contacts/action:view/contact', '', '', 1, 11, 12, '', '', NULL, NULL, '2009-09-16 07:54:13', NULL, '2009-09-16 07:53:33', NULL),
(16, NULL, 5, 'Entries (RSS)', 'entries-rss', '', '/promoted.rss', '', '', 1, 3, 4, '', '', NULL, NULL, '2009-10-27 17:46:22', NULL, '2009-10-27 17:46:22', NULL),
(17, NULL, 5, 'Comments (RSS)', 'comments-rss', '', '/comments.rss', '', '', 1, 5, 6, '', '', NULL, NULL, '2009-10-27 17:46:54', NULL, '2009-10-27 17:46:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `link_count` int(11) NOT NULL,
  `params` text COLLATE utf8_unicode_ci,
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu_alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `alias`, `class`, `description`, `status`, `weight`, `link_count`, `params`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(3, 'Main Menu', 'main', '', '', 1, NULL, 4, '', NULL, NULL, '2009-08-19 12:21:06', NULL, '2009-07-22 01:49:53', NULL),
(4, 'Footer', 'footer', '', '', 1, NULL, 2, '', NULL, NULL, '2009-08-19 12:22:42', NULL, '2009-08-19 12:22:42', NULL),
(5, 'Meta', 'meta', '', '', 1, NULL, 4, '', NULL, NULL, '2009-09-12 06:33:29', NULL, '2009-09-12 06:33:29', NULL),
(6, 'Blogroll', 'blogroll', '', '', 1, NULL, 2, '', NULL, NULL, '2009-09-12 23:30:24', NULL, '2009-09-12 23:30:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `message_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `weight` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `meta`
--

INSERT INTO `meta` (`id`, `model`, `foreign_key`, `key`, `value`, `weight`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(1, 'Node', 1, 'meta_keywords', 'key1, key2', NULL, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `model_taxonomies`
--

CREATE TABLE IF NOT EXISTS `model_taxonomies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Node',
  `foreign_key` int(20) NOT NULL DEFAULT '0',
  `taxonomy_id` int(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `model_taxonomies`
--

INSERT INTO `model_taxonomies` (`id`, `model`, `foreign_key`, `taxonomy_id`) VALUES
(1, 'Node', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nodes`
--

CREATE TABLE IF NOT EXISTS `nodes` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `user_id` int(20) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `status` int(1) DEFAULT NULL,
  `mime_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_count` int(11) DEFAULT '0',
  `promote` tinyint(1) NOT NULL DEFAULT '0',
  `path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `terms` text COLLATE utf8_unicode_ci,
  `sticky` tinyint(1) NOT NULL DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `visibility_roles` text COLLATE utf8_unicode_ci,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'node',
  `publish_start` datetime DEFAULT NULL,
  `publish_end` datetime DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `nodes`
--

INSERT INTO `nodes` (`id`, `parent_id`, `user_id`, `title`, `slug`, `body`, `excerpt`, `status`, `mime_type`, `comment_status`, `comment_count`, `promote`, `path`, `terms`, `sticky`, `lft`, `rght`, `visibility_roles`, `type`, `publish_start`, `publish_end`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, NULL, 1, 'Hello World', 'hello-world', '<p>Welcome to Croogo. This is your first post. You can edit or delete it from the admin panel.</p>', '', 1, '', 2, 1, 1, '/blog/hello-world', '{"1":"uncategorized"}', 0, 1, 2, '', 'blog', NULL, NULL, '2009-12-25 11:00:00', NULL, '2009-12-25 11:00:00', NULL),
(2, NULL, 1, 'About', 'about', '<p>This is an example of a Croogo page, you could edit this to put information about yourself or your site.</p>', '', 1, '', 0, 0, 0, '/about', '', 0, 1, 2, '', 'page', NULL, NULL, '2009-12-25 22:00:00', NULL, '2009-12-25 22:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `block_count` int(11) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `region_alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=18 ;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `title`, `alias`, `description`, `block_count`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(3, 'none', 'none', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(4, 'right', 'right', '', 6, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(6, 'left', 'left', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(7, 'header', 'header', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(8, 'footer', 'footer', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(9, 'region1', 'region1', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(10, 'region2', 'region2', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(11, 'region3', 'region3', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(12, 'region4', 'region4', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(13, 'region5', 'region5', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(14, 'region6', 'region6', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(15, 'region7', 'region7', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(16, 'region8', 'region8', '', 0, '2014-06-24 11:41:20', NULL, '2014-06-24 11:41:20', NULL),
(17, 'region9', 'region9', '', 0, '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `alias`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(1, 'Admin', 'admin', '2009-04-05 00:10:34', NULL, '2009-04-05 00:10:34', NULL),
(2, 'Registered', 'registered', '2009-04-05 00:10:50', NULL, '2009-04-06 05:20:38', NULL),
(3, 'Public', 'public', '2009-04-05 00:12:38', NULL, '2009-04-07 01:41:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE IF NOT EXISTS `roles_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `granted_by` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pk_role_users` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `schema_migrations`
--

CREATE TABLE IF NOT EXISTS `schema_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `schema_migrations`
--

INSERT INTO `schema_migrations` (`id`, `class`, `type`, `created`) VALUES
(1, 'InitMigrations', 'Migrations', '2014-06-24 11:37:20'),
(2, 'ConvertVersionToClassNames', 'Migrations', '2014-06-24 11:37:21'),
(3, 'IncreaseClassNameLength', 'Migrations', '2014-06-24 11:37:23'),
(4, 'FirstMigrationSettings', 'Settings', '2014-06-24 11:37:24'),
(5, 'SettingsTrackableFields', 'Settings', '2014-06-24 11:37:44'),
(6, 'AddedAssetTimestampSetting', 'Settings', '2014-06-24 11:37:44'),
(7, 'ExposeSiteThemeAndLocaleAndHomeUrl', 'Settings', '2014-06-24 11:37:44'),
(8, 'FirstMigrationAcl', 'Acl', '2014-06-24 11:37:46'),
(9, 'FirstMigrationBlocks', 'Blocks', '2014-06-24 11:37:48'),
(10, 'BlocksTrackableFields', 'Blocks', '2014-06-24 11:38:06'),
(11, 'BlocksPublishingFields', 'Blocks', '2014-06-24 11:38:18'),
(12, 'FirstMigrationComments', 'Comments', '2014-06-24 11:38:18'),
(13, 'CommentsTrackableFields', 'Comments', '2014-06-24 11:38:21'),
(14, 'AddCommentsForeignKeys', 'Comments', '2014-06-24 11:38:23'),
(15, 'FirstMigrationContacts', 'Contacts', '2014-06-24 11:38:24'),
(16, 'ContactsTrackableFields', 'Contacts', '2014-06-24 11:38:29'),
(17, 'FirstMigrationMenus', 'Menus', '2014-06-24 11:38:35'),
(18, 'MenusTrackableFields', 'Menus', '2014-06-24 11:38:42'),
(19, 'MenusPublishingFields', 'Menus', '2014-06-24 11:38:50'),
(20, 'FirstMigrationMeta', 'Meta', '2014-06-24 11:38:51'),
(21, 'MetaTrackableFields', 'Meta', '2014-06-24 11:38:58'),
(22, 'FirstMigrationNodes', 'Nodes', '2014-06-24 11:39:00'),
(23, 'NodesTrackableFields', 'Nodes', '2014-06-24 11:40:00'),
(24, 'NodesPublishingFields', 'Nodes', '2014-06-24 11:40:33'),
(25, 'FirstMigrationTaxonomy', 'Taxonomy', '2014-06-24 11:40:36'),
(26, 'TaxonomyTrackableFields', 'Taxonomy', '2014-06-24 11:40:54'),
(27, 'RenameNodesTaxonomy', 'Taxonomy', '2014-06-24 11:40:54'),
(28, 'AddModelTaxonomyForeignKey', 'Taxonomy', '2014-06-24 11:40:56'),
(29, 'FirstMigrationUsers', 'Users', '2014-06-24 11:40:58'),
(30, 'UsersTrackableFields', 'Users', '2014-06-24 11:41:08'),
(31, 'UsersEnlargeTimezone', 'Users', '2014-06-24 11:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `input_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `editable` tinyint(1) NOT NULL DEFAULT '1',
  `weight` int(11) DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime DEFAULT NULL,
  `created_by` int(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `updated_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `title`, `description`, `input_type`, `editable`, `weight`, `params`, `created`, `created_by`, `updated`, `updated_by`) VALUES
(6, 'Site.title', 'Croogo', '', '', '', 1, 1, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(7, 'Site.tagline', 'A CakePHP powered Content Management System.', '', '', 'textarea', 1, 2, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(8, 'Site.email', 'you@your-site.com', '', '', '', 1, 3, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(9, 'Site.status', '1', '', '', 'checkbox', 1, 6, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(12, 'Meta.robots', 'index, follow', '', '', '', 1, 6, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(13, 'Meta.keywords', 'croogo, Croogo', '', '', 'textarea', 1, 7, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(14, 'Meta.description', 'Croogo - A CakePHP powered Content Management System', '', '', 'textarea', 1, 8, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(15, 'Meta.generator', 'Croogo - Content Management System', '', '', '', 0, 9, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(16, 'Service.akismet_key', 'your-key', '', '', '', 1, 11, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(17, 'Service.recaptcha_public_key', 'your-public-key', '', '', '', 1, 12, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(18, 'Service.recaptcha_private_key', 'your-private-key', '', '', '', 1, 13, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(19, 'Service.akismet_url', 'http://your-blog.com', '', '', '', 1, 10, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(20, 'Site.theme', '', '', '', '', 0, 14, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(21, 'Site.feed_url', '', '', '', '', 0, 15, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(22, 'Reading.nodes_per_page', '5', '', '', '', 1, 16, '', '2014-06-24 11:41:21', NULL, '2014-06-24 11:41:21', NULL),
(23, 'Writing.wysiwyg', '1', 'Enable WYSIWYG editor', '', 'checkbox', 1, 17, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(24, 'Comment.level', '1', '', 'levels deep (threaded comments)', '', 1, 18, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(25, 'Comment.feed_limit', '10', '', 'number of comments to show in feed', '', 1, 19, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(26, 'Site.locale', 'eng', '', '', 'text', 1, 20, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(27, 'Reading.date_time_format', 'D, M d Y H:i:s', '', '', '', 1, 21, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(28, 'Comment.date_time_format', 'M d, Y', '', '', '', 1, 22, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(29, 'Site.timezone', '0', '', 'zero (0) for GMT', '', 1, 4, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(32, 'Hook.bootstraps', 'Settings,Comments,Contacts,Nodes,Meta,Menus,Users,Blocks,Taxonomy,FileManager,Wysiwyg,Ckeditor', '', '', '', 0, 23, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(33, 'Comment.email_notification', '1', 'Enable email notification', '', 'checkbox', 1, 24, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(34, 'Access Control.multiRole', '0', 'Enable Multiple Roles', '', 'checkbox', 1, 25, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(35, 'Access Control.rowLevel', '0', 'Row Level Access Control', '', 'checkbox', 1, 26, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(36, 'Access Control.autoLoginDuration', '+1 week', '"Remember Me" Duration', 'Eg: +1 day, +1 week. Leave empty to disable.', 'text', 1, 27, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(37, 'Access Control.models', '', 'Models with Row Level Acl', 'Select models to activate Row Level Access Control on', 'multiple', 1, 26, 'multiple=checkbox\noptions={"Nodes.Node": "Node", "Blocks.Block": "Block", "Menus.Menu": "Menu", "Menus.Link": "Link"}', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(38, 'Site.ipWhitelist', '127.0.0.1', 'Whitelisted IP Addresses', 'Separate multiple IP addresses with comma', 'text', 1, 27, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(39, 'Site.asset_timestamp', 'force', 'Asset timestamp', 'Appends a timestamp which is last modified time of the particular file at the end of asset files URLs (CSS, JavaScript, Image). Useful to prevent visitors to visit the site with an outdated version of these files in their browser cache.', 'radio', 1, 28, 'options={"0": "Disabled", "1": "Enabled in debug mode only", "force": "Always enabled"}', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(40, 'Site.admin_theme', '', 'Administration Theme', '', 'text', 1, 29, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(41, 'Site.home_url', '', 'Home Url', 'Default action for home page in link string format.', 'text', 1, 30, '', '2014-06-24 11:41:22', NULL, '2014-06-24 11:41:22', NULL),
(42, 'Croogo.installed', '1', '', '', '', 0, 31, '', '2014-06-24 11:44:02', NULL, '2014-06-24 11:44:02', NULL),
(43, 'Croogo.version', '2.0.0', '', '', '', 0, 32, '', '2014-06-24 11:46:35', 1, '2014-06-24 11:46:35', 1);

-- --------------------------------------------------------

--
-- Table structure for table `taxonomies`
--

CREATE TABLE IF NOT EXISTS `taxonomies` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `parent_id` int(20) DEFAULT NULL,
  `term_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `taxonomies`
--

INSERT INTO `taxonomies` (`id`, `parent_id`, `term_id`, `vocabulary_id`, `lft`, `rght`) VALUES
(1, NULL, 1, 1, 1, 2),
(2, NULL, 2, 1, 3, 4),
(3, NULL, 3, 2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE IF NOT EXISTS `terms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `title`, `slug`, `description`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Uncategorized', 'uncategorized', '', '2009-07-22 03:38:43', NULL, '2009-07-22 03:34:56', NULL),
(2, 'Announcements', 'announcements', '', '2010-05-16 23:57:06', NULL, '2009-07-22 03:45:37', NULL),
(3, 'mytag', 'mytag', '', '2009-08-26 14:42:43', NULL, '2009-08-26 14:42:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE IF NOT EXISTS `types` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `format_show_author` tinyint(1) NOT NULL DEFAULT '1',
  `format_show_date` tinyint(1) NOT NULL DEFAULT '1',
  `comment_status` int(1) NOT NULL DEFAULT '1',
  `comment_approve` tinyint(1) NOT NULL DEFAULT '1',
  `comment_spam_protection` tinyint(1) NOT NULL DEFAULT '0',
  `comment_captcha` tinyint(1) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8_unicode_ci,
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type_alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `title`, `alias`, `description`, `format_show_author`, `format_show_date`, `comment_status`, `comment_approve`, `comment_spam_protection`, `comment_captcha`, `params`, `plugin`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Page', 'page', 'A page is a simple method for creating and displaying information that rarely changes, such as an "About us" section of a website. By default, a page entry does not allow visitor comments.', 0, 0, 0, 1, 0, 0, '', NULL, '2009-09-09 00:23:24', NULL, '2009-09-02 18:06:27', NULL),
(2, 'Blog', 'blog', 'A blog entry is a single post to an online journal, or blog.', 1, 1, 2, 1, 0, 0, '', NULL, '2009-09-15 12:15:43', NULL, '2009-09-02 18:20:44', NULL),
(4, 'Node', 'node', 'Default content type.', 1, 1, 2, 1, 0, 0, '', NULL, '2009-10-06 21:53:15', NULL, '2009-09-05 23:51:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types_vocabularies`
--

CREATE TABLE IF NOT EXISTS `types_vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type_id` int(10) NOT NULL,
  `vocabulary_id` int(10) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=32 ;

--
-- Dumping data for table `types_vocabularies`
--

INSERT INTO `types_vocabularies` (`id`, `type_id`, `vocabulary_id`, `weight`) VALUES
(24, 4, 1, NULL),
(25, 4, 2, NULL),
(30, 2, 1, NULL),
(31, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_key` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci,
  `timezone` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `username`, `password`, `name`, `email`, `website`, `activation_key`, `image`, `bio`, `timezone`, `status`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 1, 'admin', '749cb21c0938e982bccfcb64d93d858952fcacfd', 'admin', '', NULL, '0a0d421578a0ede27d62876a61de0b87', NULL, NULL, '0', 1, '2014-06-24 11:44:00', NULL, '2014-06-24 11:44:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vocabularies`
--

CREATE TABLE IF NOT EXISTS `vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `multiple` tinyint(1) NOT NULL DEFAULT '0',
  `tags` tinyint(1) NOT NULL DEFAULT '0',
  `plugin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `updated` datetime NOT NULL,
  `updated_by` int(20) DEFAULT NULL,
  `created` datetime NOT NULL,
  `created_by` int(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vocabulary_alias` (`alias`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vocabularies`
--

INSERT INTO `vocabularies` (`id`, `title`, `alias`, `description`, `required`, `multiple`, `tags`, `plugin`, `weight`, `updated`, `updated_by`, `created`, `created_by`) VALUES
(1, 'Categories', 'categories', '', 0, 1, 0, NULL, 1, '2010-05-17 20:03:11', NULL, '2009-07-22 02:16:21', NULL),
(2, 'Tags', 'tags', '', 0, 1, 0, NULL, 2, '2010-05-17 20:03:11', NULL, '2009-07-22 02:16:34', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
