/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : 127.0.0.1:3306
Source Database       : acl2

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-11-18 20:40:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('1', 'Super Admin', 'dathalongbay@gmail.com', '$2y$10$aUW5DzgbfQZnodPydoNxDuHYRdutUhAi3OQhUkSUL5a1ekcKRKuOi', null, '2017-12-14 12:13:38', '2017-12-31 13:22:08', '/photos/a1.png');

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `except` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES ('1', 'Homepage slider', 'dsfsdf', '<p>homepage slider description</p>', '2017-11-28 06:04:17', '2017-12-09 13:29:45', '1');
INSERT INTO `banners` VALUES ('2', 'CCCCC data', 'ghgfh', '<p><strong>aaaafdsfdsfdsf</strong></p>\r\n<p>sdfsdfsdf</p>\r\n<p>dsfsdfsdfsd</p>\r\n<p>dfsdfsdf</p>\r\n<p>dsfsdfsdf</p>\r\n<p>dsfsdfsd</p>', '2017-11-28 06:27:40', '2017-12-31 13:45:47', '2');
INSERT INTO `banners` VALUES ('5', 'CCC', '', '', '2017-11-28 09:19:26', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('6', 'fdsfsdf', '', '', '2017-11-28 09:20:02', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('7', 'dsfsdfdsf', '', '', '2017-11-28 09:20:14', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('8', 'dsfsdfsdf', '', '', '2017-11-28 09:20:29', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('9', 'sdfsdfsdf', '', '', '2017-11-28 09:20:45', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('10', 'sdfsdfsdf', '', '', '2017-11-28 09:20:58', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('11', 'sdasd dsfdsf', '', '', '2017-11-28 09:21:11', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('12', 'sdf sdfsdf', '', '', '2017-11-28 09:21:23', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('13', 'dsfsd sdfsd', '', '', '2017-11-28 09:21:36', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('14', 'dsfdsf', '', '', '2017-12-04 12:17:43', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('15', 'sdss', '<p>ssss</p>', '<p>ssss</p>', '2017-12-08 10:00:24', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('16', 'sdss', '<p>ssss</p>', '<p>ssss</p>', '2017-12-08 10:01:09', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('17', 'sdss', '<p>ssss</p>', '<p>ssss</p>', '2017-12-08 10:01:41', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('18', 'aaaa', '<p>aa</p>', '<p>aa</p>', '2017-12-08 10:03:08', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('19', 'aaaa', '<p>aa</p>', '<p>aa</p>', '2017-12-08 10:03:19', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('20', 'aaaa', '<p>aa</p>', '<p>aa</p>', '2017-12-08 10:04:55', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('21', 'aaaa', '<p>aa</p>', '<p>aa</p>', '2017-12-08 10:36:15', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('22', 'rể', '', '', '2017-12-08 10:47:08', '2018-01-04 12:37:41', '0');
INSERT INTO `banners` VALUES ('23', 'ewrwer', '', '', '2017-12-08 10:47:22', '2018-01-04 12:37:41', '0');

-- ----------------------------
-- Table structure for banner_images
-- ----------------------------
DROP TABLE IF EXISTS `banner_images`;
CREATE TABLE `banner_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of banner_images
-- ----------------------------
INSERT INTO `banner_images` VALUES ('1', '21', 'b18.jpg', 'upload/banner/21/b18.jpg', '2017-12-08 10:36:15', '2017-12-08 10:36:15');
INSERT INTO `banner_images` VALUES ('4', '1', 'ba1.jpg', 'upload/product/1/ba1.jpg', '2017-12-09 13:29:45', '2017-12-09 13:29:45');
INSERT INTO `banner_images` VALUES ('5', '1', 'ba2.jpg', 'upload/product/1/ba2.jpg', '2017-12-09 13:30:11', '2017-12-09 13:30:11');
INSERT INTO `banner_images` VALUES ('6', '1', 'ba3.jpg', 'upload/product/1/ba3.jpg', '2017-12-09 13:30:34', '2017-12-09 13:30:34');
INSERT INTO `banner_images` VALUES ('7', '2', 'men1.jpg', 'upload/product/2\\men1.jpg', '2017-12-31 13:45:15', '2017-12-31 13:45:15');
INSERT INTO `banner_images` VALUES ('8', '2', 'men2.jpg', 'upload/product/2\\men2.jpg', '2017-12-31 13:45:15', '2017-12-31 13:45:15');
INSERT INTO `banner_images` VALUES ('9', '2', 'men1.jpg', 'upload/product/2\\men1.jpg', '2017-12-31 13:45:36', '2017-12-31 13:45:36');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', 'fgsdfgdg 1111', '0', '0', '<p>dsfsdf</p>', '2017-12-04 12:18:57', '2017-12-04 12:30:56');

-- ----------------------------
-- Table structure for medias
-- ----------------------------
DROP TABLE IF EXISTS `medias`;
CREATE TABLE `medias` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of medias
-- ----------------------------

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` int(11) NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES ('3', 'Top menu', '1', '<p>dsfdsfdsf 111</p>', '2017-12-03 09:22:04', '2017-12-19 10:41:05');
INSERT INTO `menus` VALUES ('4', 'Footer menu', '2', '', '2018-01-01 04:45:54', '2018-01-01 04:45:54');

-- ----------------------------
-- Table structure for menu_items
-- ----------------------------
DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` int(11) DEFAULT '0',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `params` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu_items
-- ----------------------------
INSERT INTO `menu_items` VALUES ('1', 'Homepage', '0', '1', '<p>Homepage</p>', 'category', '3', '', '2017-12-04 06:03:35', '2017-12-17 09:57:22', null);
INSERT INTO `menu_items` VALUES ('2', 'Men wear', '0', '1', '<p>Men wear</p>', 'category', '3', 'http://acl.dev/category/4', '2017-12-04 06:04:07', '2017-12-19 13:40:21', '{\"cat_id\":\"4\",\"product_id\":0,\"custom_url\":\"\"}');
INSERT INTO `menu_items` VALUES ('3', 'Homepage 1', '1', '2', '<p>Homepage 1</p>', 'category', '3', '', '2017-12-17 06:04:03', '2017-12-17 09:59:26', null);
INSERT INTO `menu_items` VALUES ('4', 'Smart phone', '3', '3', '<p>Smart phone</p>', 'category', '3', '', '2017-12-17 10:00:08', '2017-12-17 11:14:29', '');
INSERT INTO `menu_items` VALUES ('5', 'Xiaomi', '4', '4', '<p>Xiaomi</p>', 'category', '3', '', '2017-12-17 10:01:34', '2017-12-17 10:01:34', '');
INSERT INTO `menu_items` VALUES ('6', 'Samsung', '4', '4', '', 'category', '3', '', '2017-12-17 10:01:47', '2017-12-17 10:01:47', '');
INSERT INTO `menu_items` VALUES ('7', 'Iphone', '4', '4', '', 'category', '3', '', '2017-12-17 10:02:00', '2017-12-17 10:02:00', '');
INSERT INTO `menu_items` VALUES ('8', 'Apple watch', '7', '5', '', 'category', '3', '', '2017-12-17 10:02:51', '2017-12-17 10:02:51', '');
INSERT INTO `menu_items` VALUES ('9', 'Category demo', '0', '1', '<p>Category demo</p>', 'product', '3', 'http://acl.dev/product/13', '2017-12-19 09:59:04', '2017-12-19 10:29:44', '{\"cat_id\":0,\"product_id\":\"13\",\"custom_url\":\"\"}');
INSERT INTO `menu_items` VALUES ('10', 'FAQ', '0', '1', '<p>FAQ</p>', 'page', '3', 'http://acl.dev/page/2', '2017-12-19 10:18:30', '2018-01-06 05:09:45', '{\"cat_id\":\"3\",\"product_id\":\"1\",\"page_id\":\"2\",\"custom_url\":\"https:\\/\\/techtalk.vn\\/toi-muon-lap-trinh-ung-dung-android-toi-nen-hoc-ngon-ngu-lap-trinh-nao.html\"}');
INSERT INTO `menu_items` VALUES ('11', 'Homepage 2', '1', '2', '<p>aaa</p>', 'category', '3', 'http://acl.dev/category/1', '2017-12-19 13:48:51', '2017-12-19 13:48:51', '{\"cat_id\":\"1\",\"product_id\":0,\"custom_url\":\"\"}');
INSERT INTO `menu_items` VALUES ('12', 'Home', '0', '1', '', 'custom', '4', '#', '2018-01-05 03:20:25', '2018-01-05 03:20:25', '{\"cat_id\":0,\"product_id\":0,\"custom_url\":\"#\"}');
INSERT INTO `menu_items` VALUES ('13', 'Men wear', '0', '1', '', 'category', '4', 'http://acl.dev/category/1', '2018-01-05 03:20:43', '2018-01-05 03:20:43', '{\"cat_id\":\"1\",\"product_id\":0,\"custom_url\":\"\"}');
INSERT INTO `menu_items` VALUES ('14', 'Woman wear', '0', '1', '', 'category', '4', 'http://acl.dev/category/4', '2018-01-05 03:21:05', '2018-01-05 03:21:05', '{\"cat_id\":\"4\",\"product_id\":0,\"custom_url\":\"\"}');
INSERT INTO `menu_items` VALUES ('15', 'Electronic', '0', '1', '', 'category', '4', 'http://acl.dev/category/5', '2018-01-05 03:21:36', '2018-01-05 03:21:36', '{\"cat_id\":\"5\",\"product_id\":0,\"custom_url\":\"\"}');
INSERT INTO `menu_items` VALUES ('16', 'Shortcode', '0', '1', '', 'page', '4', 'http://acl.dev/page/2', '2018-01-05 03:21:52', '2018-01-05 03:21:52', '{\"cat_id\":0,\"product_id\":0,\"custom_url\":\"\"}');
INSERT INTO `menu_items` VALUES ('17', 'Contact', '0', '1', '', 'page', '4', 'http://acl.dev/page/2', '2018-01-05 03:22:09', '2018-01-05 03:22:09', '{\"cat_id\":0,\"product_id\":0,\"custom_url\":\"\"}');
INSERT INTO `menu_items` VALUES ('18', 'Contact', '0', '1', '', 'page', '3', 'http://acl.dev/page/3', '2018-01-06 05:10:03', '2018-01-06 05:10:03', '{\"cat_id\":0,\"product_id\":0,\"custom_url\":\"\"}');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_02_20_233057_create_permission_tables', '1');
INSERT INTO `migrations` VALUES ('4', '2017_02_22_171712_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('5', '2017_11_28_044215_create_banners_table', '2');
INSERT INTO `migrations` VALUES ('6', '2017_12_03_085324_create_menus_table', '3');
INSERT INTO `migrations` VALUES ('7', '2017_12_03_125221_create_menu_items_table', '4');
INSERT INTO `migrations` VALUES ('8', '2017_12_03_125648_create_comments_table', '5');
INSERT INTO `migrations` VALUES ('9', '2017_12_03_125824_create_products_table', '5');
INSERT INTO `migrations` VALUES ('10', '2017_12_04_124949_create_pages_table', '6');
INSERT INTO `migrations` VALUES ('11', '2017_12_04_125029_create_medias_table', '6');
INSERT INTO `migrations` VALUES ('12', '2017_12_05_072309_create_product_photos_table', '7');
INSERT INTO `migrations` VALUES ('13', '2017_12_06_044343_create_product_categories_table', '8');
INSERT INTO `migrations` VALUES ('14', '2017_12_14_105058_create_admins_table', '9');
INSERT INTO `migrations` VALUES ('15', '2017_12_15_024700_create_orders_table', '10');
INSERT INTO `migrations` VALUES ('16', '2017_12_15_024757_create_orders_detail_table', '10');
INSERT INTO `migrations` VALUES ('18', '2018_01_01_072623_create_newsletters_table', '11');

-- ----------------------------
-- Table structure for newsletters
-- ----------------------------
DROP TABLE IF EXISTS `newsletters`;
CREATE TABLE `newsletters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of newsletters
-- ----------------------------
INSERT INTO `newsletters` VALUES ('1', 'dat@gmail.com', '2018-01-01 07:56:18', '2018-01-04 12:38:17');
INSERT INTO `newsletters` VALUES ('2', 'dathalongbay@gmail.com', '2018-01-01 08:02:19', '2018-01-01 08:02:19');
INSERT INTO `newsletters` VALUES ('3', 'annie123@gmail.com', '2018-01-04 09:38:55', '2018-01-04 09:38:55');
INSERT INTO `newsletters` VALUES ('4', 'dathalong11bay@gmail.com', '2018-01-04 12:38:39', '2018-01-04 12:38:39');
INSERT INTO `newsletters` VALUES ('5', 'datvinh@gmail.com', '2018-01-04 12:38:48', '2018-01-04 12:38:48');
INSERT INTO `newsletters` VALUES ('6', 'hoanha@gmail.com', '2018-01-04 12:38:57', '2018-01-04 12:38:57');
INSERT INTO `newsletters` VALUES ('7', 'lido123@gmail.com', '2018-01-04 12:39:08', '2018-01-04 12:39:08');
INSERT INTO `newsletters` VALUES ('8', 'chipu@gmail.com', '2018-01-04 12:39:38', '2018-01-04 12:39:38');
INSERT INTO `newsletters` VALUES ('9', 'datfdsfdf@gmail.com', '2018-01-04 12:39:46', '2018-01-04 12:39:46');
INSERT INTO `newsletters` VALUES ('10', '12345dsfdj@gmil.com', '2018-01-04 12:40:10', '2018-01-04 12:40:10');
INSERT INTO `newsletters` VALUES ('11', 'fsdfsdf@gmail.com', '2018-01-06 04:20:31', '2018-01-06 04:20:31');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('1', '1', '1', 'aa', '345435435', 'aaa', '347.00', '2017-12-15 07:53:18', '2017-12-15 07:53:18');
INSERT INTO `orders` VALUES ('2', '1', '1', '23423423', '4234324', '4234234', '146.00', '2017-12-15 08:00:13', '2017-12-15 08:00:13');
INSERT INTO `orders` VALUES ('3', '1', '1', '23423423', '4234324', '4234234', '146.00', '2017-12-15 08:00:44', '2017-12-15 08:00:44');

-- ----------------------------
-- Table structure for orders_details
-- ----------------------------
DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE `orders_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `quanlity` int(10) unsigned DEFAULT '0',
  `product_id` int(11) NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders_details
-- ----------------------------
INSERT INTO `orders_details` VALUES ('1', '3', '1', '1', 'Next Blue Blazer', '123.00', '2017-12-15 08:00:44', '2017-12-15 08:00:44');
INSERT INTO `orders_details` VALUES ('2', '3', '1', '5', 'Dresses', '23.00', '2017-12-15 08:00:44', '2017-12-15 08:00:44');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('2', 'FAQ', '<h3 class=\"ui header\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.4.1\">How much does shipping cost?</h3>\r\n<div class=\"show answer\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.4.2\">\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.4.2.0\">\r\n<p data-reactid=\".1h1kyffb494.3.0.0.1.1.0.4.2.0.0\">Shipping costs vary depending on the shipping destination and the number of items that you purchase. Here&rsquo;s how we break down our shipping prices:Most items are $3.99 for one item + $1.99 per additional itemHoodies are $5.99 for one item + $1.99 per additional itemSweatshirts and Mugs are $4.99 for one item + $1.99 per additional itemInternational shipping costs an additional $2</p>\r\n<p data-reactid=\".1h1kyffb494.3.0.0.1.1.0.4.2.0.2\">All prices are in USD.</p>\r\n<div class=\"RetailQuestion\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.5\">\r\n<h3 class=\"ui header\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.5.1\">How long will it take to ship my order?</h3>\r\n<div class=\"show answer\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.5.2\">\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.5.2.0\">Orders from our store are typically delivered within 5 to 10 business days. For international orders, transit will take an additional 1 to 2 weeks. Expedited shipping is offered on select products to domestic addresses.</div>\r\n</div>\r\n</div>\r\n<div class=\"RetailQuestion\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.6\">\r\n<div class=\"ui circular basic icon right floated button\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.6.0\">&nbsp;</div>\r\n<h3 class=\"ui header\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.6.1\">What are the sizing specs of my order?</h3>\r\n<div class=\"show answer\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.6.2\">\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.6.2.0\"><span data-reactid=\".1h1kyffb494.3.0.0.1.1.0.6.2.0.0\">You can access our sizing guide, which includes all of the sizing information for different brands and products here:&nbsp;</span><a href=\"https://teechip.com/sizes\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.6.2.0.1\">https://pro.teechip.com/sizes</a></div>\r\n</div>\r\n</div>\r\n<div class=\"RetailQuestion\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7\">\r\n<div class=\"ui circular basic icon right floated button\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.0\">&nbsp;</div>\r\n<h3 class=\"ui header\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.1\">I&rsquo;m having issues placing an order.</h3>\r\n<div class=\"show answer\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.2\">\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.2.0\"><span data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.2.0.0\">We&rsquo;re sorry to hear that you&rsquo;re unable to place an order. Please contact Customer Service&nbsp;</span><a href=\"https://teechip.com/contact\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.2.0.1\">https://pro.teechip.com/contact</a><span data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.2.0.2\">&nbsp;and we will work on resolving the issue as quickly as possible.</span></div>\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.2.0\">&nbsp;</div>\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.7.2.0\">\r\n<div class=\"RetailQuestion\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.b\">\r\n<h3 class=\"ui header\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.b.1\">What is the status of my order?</h3>\r\n<div class=\"show answer\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.b.2\">\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.b.2.0\"><span data-reactid=\".1h1kyffb494.3.0.0.1.1.0.b.2.0.0\">You can keep track of your order at any time by visiting&nbsp;</span><a href=\"https://teechip.com/orders/track\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.b.2.0.1\">https://pro.teechip.com/orders/track</a></div>\r\n</div>\r\n</div>\r\n<div class=\"RetailQuestion\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c\">\r\n<div class=\"ui circular basic icon right floated button\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.0\">&nbsp;</div>\r\n<h3 class=\"ui header\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.1\">I need help with a late order.</h3>\r\n<div class=\"show answer\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2\">\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0\">\r\n<p data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.0\">Orders from our store are typically delivered within 5 to 10 business days. For international orders, transit will take an additional 1 to 2 weeks.</p>\r\n<p data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.1\"><span data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.1.0\">If your order has not arrived after 10 business days (domestic) and 20 business days (international), please contact customer service at&nbsp;</span><a href=\"https://teechip.com/contact\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.1.1\">https://pro.teechip.com/contact</a><span data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.1.2\">.</span></p>\r\n<p data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.2\"><span data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.2.0\">You can keep track of your order at any time by visiting&nbsp;</span><a href=\"https://teechip.com/orders/track\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.2.1\">https://pro.teechip.com/orders/track</a><span data-reactid=\".1h1kyffb494.3.0.0.1.1.0.c.2.0.2.2\">.</span></p>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"RetailQuestion\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.d\">\r\n<div class=\"ui circular basic icon right floated button\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.d.0\">&nbsp;</div>\r\n<h3 class=\"ui header\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.d.1\">My tracking number isn&rsquo;t working.</h3>\r\n<div class=\"show answer\" data-reactid=\".1h1kyffb494.3.0.0.1.1.0.d.2\">\r\n<div data-reactid=\".1h1kyffb494.3.0.0.1.1.0.d.2.0\">Tracking numbers can take 1-2 days to appear in the shipping carrier\'s system. Occasionally, the shipping carrier can lose an order. If the tracking number is still not working within a few days, please contact the shipping carrier.</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '2018-01-04 12:55:50', '2018-01-06 05:14:48');
INSERT INTO `pages` VALUES ('3', 'Contact us', '<div class=\"twelve wide column\" data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0\">\r\n<h1 class=\"ui page header\" data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.0\">Contact Us</h1>\r\n<p data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.1\">Have a question we haven\'t answered?</p>\r\n<p data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.2\"><span data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.2.0\">Our customer service team works Monday through Friday from 9:00 AM to 5:30 PM Eastern Time. Live chat is available during business hours by clicking this icon:&nbsp;</span><span id=\"chat-widget\" class=\"assistly-widget\" data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.2.1\">&nbsp;</span></p>\r\n<p data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.3\"><span data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.3.0\">To reach us by email, you can&nbsp;</span><a href=\"https://teechip.com/contact/email\" data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.3.1\">contact us through our Email Us page</a><span data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.0.3.2\">.</span></p>\r\n</div>\r\n<div class=\"four wide column\" data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.1\">\r\n<div class=\"ui basic segment\" data-reactid=\".1wl4f2gd7mq.3.0.0.1.1.1.0\">&nbsp;</div>\r\n</div>', '2018-01-06 05:07:23', '2018-01-06 05:07:23');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'Add post', '2017-11-26 04:05:30', '2017-11-26 04:05:30');
INSERT INTO `permissions` VALUES ('2', 'Administer roles & permissions', '2017-11-26 04:10:56', '2017-11-26 04:10:56');
INSERT INTO `permissions` VALUES ('3', 'Create Post', '2017-11-26 04:29:46', '2017-11-26 04:29:46');

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'AAA', 'AAA', '2017-11-26 04:14:38', '2017-11-26 04:14:38');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `price` float DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality` int(11) DEFAULT '0',
  `cat_id` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('1', 'Next Blue Blazer', '<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/photos/e1.jpg\" alt=\"\" width=\"350\" height=\"293\" /></p>', '2017-12-04 09:38:13', '2017-12-16 11:22:58', '123', '/photos/a1.png', '0', '1');
INSERT INTO `products` VALUES ('2', 'Maroon Puma Tshirt', '<p>Maroon Puma Tshirt</p>', '2017-12-05 04:43:48', '2017-12-09 07:14:13', '234', '/photos/a3.png', '0', '1');
INSERT INTO `products` VALUES ('3', 'Multicoloured TShirts', '<p>Multicoloured TShirts</p>', '2017-12-05 04:44:17', '2017-12-09 07:16:16', '12', '/photos/a4.png', '0', '1');
INSERT INTO `products` VALUES ('4', 'Air Tshirt Black', '<p>111</p>', '2017-12-05 07:27:05', '2017-12-09 07:16:52', '156', '/photos/a5.png', '0', '1');
INSERT INTO `products` VALUES ('5', 'Dresses', '<p>111</p>', '2017-12-05 07:29:21', '2017-12-09 07:17:41', '23', '/photos/a7.png', '0', '1');
INSERT INTO `products` VALUES ('6', 'T shirts', '<p>sdfsdfsdf</p>', '2017-12-05 07:30:38', '2017-12-09 07:18:36', '45', '/photos/a6.png', '0', '1');
INSERT INTO `products` VALUES ('7', 'Asics Gel Zaraca 4 Blue Sport Shoes', '<h5>PRODUCT BRIEF DESCRIPTION</h5>\r\n<p>Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"/photos/a8.png\" alt=\"\" width=\"255\" height=\"291\" /></p>', '2017-12-07 08:55:47', '2017-12-09 07:19:22', '23', '/photos/a8.png', '0', '1');
INSERT INTO `products` VALUES ('8', 'Air Tshirt Black', '<p>Air Tshirt Black</p>', '2017-12-09 06:59:17', '2017-12-09 07:20:02', '23', '/photos/a2.png', '0', '1');
INSERT INTO `products` VALUES ('9', 'Air Tshirt Black Domyos', '<h4><a href=\"/single.html\">Air Tshirt Black Domyos</a></h4>', '2017-12-09 07:48:29', '2017-12-09 07:48:29', '12', '/photos/d1.jpg', '0', '1');
INSERT INTO `products` VALUES ('10', 'Wedges', '<h4 style=\"text-align: left;\"><a href=\"/single.html\">Wedges</a></h4>', '2017-12-09 07:50:22', '2017-12-09 07:50:22', '12', '/photos/g3.png', '0', '1');
INSERT INTO `products` VALUES ('11', 'Lightweight Packable Outwear Puffer Coat Short Jacket', '<h3 class=\"rs deal-name\"><a class=\"deal-name-val\" href=\"https://muachung.vn/thoi-trang-nam/quan-dai-nam-ke-soc-day-dan-am-ap-191885.html\">Quần d&agrave;i nam kẻ sọc d&agrave;y dặn, ấm &aacute;p</a></h3>', '2017-12-09 07:51:33', '2017-12-09 07:52:26', '11', '/photos/a4.png', '0', '1');
INSERT INTO `products` VALUES ('12', 'Mens Turkey in Oven Thanksgiving Pregnancy Announc', '<h3 class=\"rs deal-name\"><a class=\"deal-name-val\" href=\"https://muachung.vn/thoi-trang-nam/ao-ni-in-chu-khoe-khoan-nang-dong-cho-nam-191887.html\">&Aacute;o nỉ in chữ khỏe khoắn, năng động cho Nam</a></h3>', '2017-12-09 07:53:07', '2017-12-09 07:53:07', '45', '/photos/w1 - Copy.png', '0', '1');
INSERT INTO `products` VALUES ('13', 'Mens Turkey in Oven Thanksgiving Pregnancy Announc', '<h3 class=\"rs deal-name\"><a class=\"deal-name-val\" href=\"https://muachung.vn/thoi-trang-nam/bo-ni-mac-nha-khoe-khoan-am-ap-cho-nam-hang-vn-191893.html\">Bộ nỉ mặc nh&agrave; khỏe khoắn, ấm &aacute;p cho nam - h&agrave;ng VN</a></h3>', '2017-12-09 07:57:25', '2017-12-09 07:57:25', '11', '/photos/w2 - Copy.png', '0', '1');
INSERT INTO `products` VALUES ('14', 'CHRISTMAS GIFT', '<h3 class=\"rs deal-name\"><a class=\"deal-name-val\" href=\"https://muachung.vn/thoi-trang-nam/combo-6-doi-tat-co-ngan-cho-nam-190061.html\">Combo 6 đ&ocirc;i tất cổ ngắn cho nam</a></h3>', '2017-12-09 08:00:09', '2017-12-09 08:00:09', '23', '/photos/d4.jpg', '0', '1');
INSERT INTO `products` VALUES ('15', 'Next Blue Blazer', '<pre>Next Blue Blazer</pre>', '2017-12-09 12:51:19', '2017-12-09 12:51:19', '23', '/photos/a3.png', '0', '1');
INSERT INTO `products` VALUES ('16', 'CHIHUAHUA love', '<p>Oppo F3 Plus</p>', '2017-12-09 12:52:20', '2017-12-09 12:52:20', '56', '/photos/d1.jpg', '0', '1');
INSERT INTO `products` VALUES ('17', 'Cute Cat With Glasses - Kagoneko\'s', '<p>Oppo F3 Lite</p>', '2017-12-09 12:53:07', '2017-12-09 12:53:07', '778', '/photos/p1 - Copy.jpg', '0', '1');

-- ----------------------------
-- Table structure for product_categories
-- ----------------------------
DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE `product_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_categories
-- ----------------------------
INSERT INTO `product_categories` VALUES ('1', 'Men wear', '/photos/a1.png', '0', '1', '<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem&nbsp;accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quaeab illo inventore veritatis et quasi architecto beatae vitae dicta sunt&nbsp;explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur autodit aut fugit</p>', '2017-12-06 06:39:50', '2017-12-16 13:05:00');
INSERT INTO `product_categories` VALUES ('2', 'Ethinic wear', null, '3', '2', '<p>fdgdfg</p>', '2017-12-06 06:40:25', '2017-12-06 06:40:25');
INSERT INTO `product_categories` VALUES ('3', 'Best collection', null, '0', '1', '11', '2017-12-26 14:30:19', '2017-12-27 14:30:23');
INSERT INTO `product_categories` VALUES ('4', 'Mobile', null, '0', '1', '<p>111</p>', '2017-12-06 07:36:40', '2017-12-08 04:47:32');
INSERT INTO `product_categories` VALUES ('5', 'Laptop', null, '0', '1', '<p>ggg</p>', '2017-12-06 07:37:23', '2017-12-06 07:37:23');
INSERT INTO `product_categories` VALUES ('6', 'Car', '/photos/a1.png', '0', '1', '<p>aaa</p>', '2017-12-07 15:06:28', '2017-12-07 15:06:28');
INSERT INTO `product_categories` VALUES ('7', 'Jwl', '/photos/a1.png', '0', '1', '<p>Level 1</p>', '2017-12-08 04:52:36', '2017-12-08 04:52:36');
INSERT INTO `product_categories` VALUES ('8', 'Best offers', '/photos/a1.png', '0', '1', '<p>ddd</p>', '2017-12-08 04:53:12', '2017-12-08 05:18:49');
INSERT INTO `product_categories` VALUES ('9', 'Summer Discount Sales', '/photos/a1.png', '8', '2', '', '2017-12-08 04:53:36', '2017-12-08 04:53:36');

-- ----------------------------
-- Table structure for product_photos
-- ----------------------------
DROP TABLE IF EXISTS `product_photos`;
CREATE TABLE `product_photos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(11) NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product_photos
-- ----------------------------
INSERT INTO `product_photos` VALUES ('2', '1 - Copy.png', '6', 'upload/6/1 - Copy.png', '2017-12-05 07:30:38', '2017-12-05 07:30:38');
INSERT INTO `product_photos` VALUES ('7', 'a6.png', '7', 'upload/product/7/a6.png', '2017-12-07 09:45:21', '2017-12-07 09:45:21');
INSERT INTO `product_photos` VALUES ('10', 'a1.png', '7', 'upload/product/7/a1.png', '2017-12-07 09:57:26', '2017-12-07 09:57:26');
INSERT INTO `product_photos` VALUES ('11', 'a2.png', '7', 'upload/product/7/a2.png', '2017-12-07 09:57:26', '2017-12-07 09:57:26');
INSERT INTO `product_photos` VALUES ('12', 'a3.png', '7', 'upload/product/7/a3.png', '2017-12-07 09:57:26', '2017-12-07 09:57:26');
INSERT INTO `product_photos` VALUES ('13', 'a7.png', '7', 'upload/product/7/a7.png', '2017-12-07 09:57:26', '2017-12-07 09:57:26');
INSERT INTO `product_photos` VALUES ('14', 'a8.png', '7', 'upload/product/7/a8.png', '2017-12-07 09:57:27', '2017-12-07 09:57:27');
INSERT INTO `product_photos` VALUES ('15', 'a6.png', '7', 'upload/product/7/a6.png', '2017-12-07 09:58:01', '2017-12-07 09:58:01');
INSERT INTO `product_photos` VALUES ('16', 'a1.png', '8', 'upload/product/8/a1.png', '2017-12-09 07:00:56', '2017-12-09 07:00:56');
INSERT INTO `product_photos` VALUES ('18', 'a3.png', '3', 'upload/product/3/a3.png', '2017-12-09 07:06:13', '2017-12-09 07:06:13');
INSERT INTO `product_photos` VALUES ('19', 'w4.png', '11', 'upload/product/11/w4.png', '2017-12-09 07:51:33', '2017-12-09 07:51:33');
INSERT INTO `product_photos` VALUES ('20', 'd1.jpg', '1', 'upload/product/1/d1.jpg', '2017-12-16 11:33:49', '2017-12-16 11:33:49');
INSERT INTO `product_photos` VALUES ('21', 'd2.jpg', '1', 'upload/product/1/d2.jpg', '2017-12-16 11:33:49', '2017-12-16 11:33:49');
INSERT INTO `product_photos` VALUES ('22', 'd3.jpg', '1', 'upload/product/1/d3.jpg', '2017-12-16 11:33:49', '2017-12-16 11:33:49');
INSERT INTO `product_photos` VALUES ('23', 'd4.jpg', '1', 'upload/product/1/d4.jpg', '2017-12-16 11:33:49', '2017-12-16 11:33:49');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'Admin', '2017-11-26 04:05:51', '2017-11-26 04:05:51');
INSERT INTO `roles` VALUES ('2', 'Member', '2017-11-26 04:23:54', '2017-11-26 04:23:54');
INSERT INTO `roles` VALUES ('3', 'aaa', '2017-11-26 06:56:41', '2017-11-26 06:56:41');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES ('1', '1');
INSERT INTO `role_has_permissions` VALUES ('1', '2');
INSERT INTO `role_has_permissions` VALUES ('2', '1');
INSERT INTO `role_has_permissions` VALUES ('2', '3');
INSERT INTO `role_has_permissions` VALUES ('3', '2');

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `default` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES ('5', 'logo', '/photos/logo3.jpg', '');
INSERT INTO `settings` VALUES ('6', 'favicon', '/photos/logo3.jpg', '');
INSERT INTO `settings` VALUES ('7', 'site_title', '', '');
INSERT INTO `settings` VALUES ('8', 'header_msg_1', 'Free and Fast Delivery', '');
INSERT INTO `settings` VALUES ('9', 'header_msg_2', 'Free shipping On all orders', '');
INSERT INTO `settings` VALUES ('10', 'header_msg_3', '', '');
INSERT INTO `settings` VALUES ('11', 'facebook', '#', '');
INSERT INTO `settings` VALUES ('12', 'twiter', '#', '');
INSERT INTO `settings` VALUES ('13', 'instagram', '#', '');
INSERT INTO `settings` VALUES ('14', 'youtube', '#', '');
INSERT INTO `settings` VALUES ('15', 'header_menu', '', '');
INSERT INTO `settings` VALUES ('16', 'slider_homepage', '', '');
INSERT INTO `settings` VALUES ('17', 'process_title', 'BUY YOUR PRODUCT IN A SIMPLE WAY', '');
INSERT INTO `settings` VALUES ('18', 'process_step_1', 'LOGIN TO YOUR ACCOUNT', '');
INSERT INTO `settings` VALUES ('19', 'process_step_1_desc', '<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur.</p>', '');
INSERT INTO `settings` VALUES ('20', 'process_step_2', 'SELECT YOUR ITEM', '');
INSERT INTO `settings` VALUES ('21', 'process_step_2_desc', '<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur.</p>', '');
INSERT INTO `settings` VALUES ('22', 'process_step_3', 'MAKE PAYMENT', '');
INSERT INTO `settings` VALUES ('23', 'process_step_3_desc', '<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur.</p>', '');
INSERT INTO `settings` VALUES ('24', 'footer_menu', '', '');
INSERT INTO `settings` VALUES ('25', 'contact_address', 'Address : 1234k Avenue, 4th block, Newyork City.', '');
INSERT INTO `settings` VALUES ('26', 'contact_mail', 'Email : info@example.com', '');
INSERT INTO `settings` VALUES ('27', 'contact_phone', 'Phone : +1234 567 567', '');
INSERT INTO `settings` VALUES ('28', 'flicker', '', '');
INSERT INTO `settings` VALUES ('29', 'footer_desc', '<p>Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</p>', '');
INSERT INTO `settings` VALUES ('30', 'copyright', '<p class=\"copy-right\">&copy; 2016 Smart Shop. All rights reserved | Design by&nbsp;<a href=\"http://w3layouts.com/\">W3layouts</a></p>', '');
INSERT INTO `settings` VALUES ('31', 'top_menu', '3', null);
INSERT INTO `settings` VALUES ('32', 'footer_menu', '', null);
INSERT INTO `settings` VALUES ('33', 'a', '', null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'dat', 'dathalongbay111@gmail.com', '$2y$10$kXyreKx0upL9P42JBsCd9OvrIdQdT.eL7kKTN2/fx6KcLR8iA/yJq', '1xybEVCpF0FOKc2R7R0GgeNsbLT9LNa0OMeq1Sq1Zg3GUvWVLopkiS8y9043', '2017-11-26 04:01:01', '2017-11-26 04:06:24');
INSERT INTO `users` VALUES ('2', 'Chi', 'chi@gmail.com', '$2y$10$5q7Sv8bs0pdgZJO.eNQPd.foSWjvGgpR7WyyohLmpToRkxvSxYL1y', 'KJaYpLQtBEHLdeSqiQOSjI6alSVkFqphNBxnOuj91CzPLkUthz1NB8QMD4wI', '2017-11-26 04:23:27', '2017-11-26 04:24:39');
INSERT INTO `users` VALUES ('3', 'abc', 'abc@gmail.com', '$2y$10$ATfBLe0.9l6sxabEwS/ra.4ZY1m30gyPxoeATcARZs5LHXYKNguwe', 'S9UkRRayL6kStbPTPNXabeovD4fJ0HrmUStQRLykpyPc619NYZx4dYVc7SvG', '2017-11-27 08:12:01', '2017-11-27 08:12:01');
INSERT INTO `users` VALUES ('5', 'ngocanh', 'ngocanh@gmail.com', '$2y$10$toxJEGlaDPQjLZzBzAlbdeSoplKGFgqoDvvRrWlQ.MYi9qrqhDpRS', 'EQ4JK61NJSHv6NM3nUQWwK3LaYg7wSi9IZt4OX1mRSjLRQco9Ekotqa0TRic', '2017-12-14 12:24:55', '2017-12-14 12:24:55');
INSERT INTO `users` VALUES ('6', 'Abc', 'abc11@gmail.com', '$2y$10$gI81BXrvlvQEtuH4gtZS6OShuX/kGgldjWbYB6SuIT1fi8hjqhF9e', '9Q7ZwkjzOpZwC3InWdZocZdr9Nvm2v78K2gZ6Fu1PKP3HIJuqHil24XBpsvT', '2017-12-14 13:46:26', '2017-12-14 13:46:26');
INSERT INTO `users` VALUES ('7', 'aaa', 'ffdsfsdf@gmail.com', '$2y$10$4mqhkfwXOj6hJmQqUnf5FOmvdBoJJc9DrBDeRK.krONUbHZmSIbEO', '8hgIMbqu3uaQL4t0NiZePWscL7jis5C2rzdFBCBIbSdFqxfYmnlnULy8A9au', '2017-12-14 14:01:11', '2017-12-14 14:01:11');

-- ----------------------------
-- Table structure for user_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `user_has_permissions`;
CREATE TABLE `user_has_permissions` (
  `user_id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`permission_id`),
  KEY `user_has_permissions_permission_id_foreign` (`permission_id`),
  CONSTRAINT `user_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_has_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for user_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `user_has_roles`;
CREATE TABLE `user_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `user_has_roles_user_id_foreign` (`user_id`),
  CONSTRAINT `user_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_has_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_has_roles
-- ----------------------------
INSERT INTO `user_has_roles` VALUES ('1', '1');
INSERT INTO `user_has_roles` VALUES ('2', '2');
