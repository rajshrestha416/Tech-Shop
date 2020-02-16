-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 12:24 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add users', 7, 'add_users'),
(26, 'Can change users', 7, 'change_users'),
(27, 'Can delete users', 7, 'delete_users'),
(28, 'Can view users', 7, 'view_users'),
(29, 'Can add products', 8, 'add_products'),
(30, 'Can change products', 8, 'change_products'),
(31, 'Can delete products', 8, 'delete_products'),
(32, 'Can view products', 8, 'view_products'),
(33, 'Can add secondhand', 9, 'add_secondhand'),
(34, 'Can change secondhand', 9, 'change_secondhand'),
(35, 'Can delete secondhand', 9, 'delete_secondhand'),
(36, 'Can view secondhand', 9, 'view_secondhand'),
(37, 'Can add transaction', 10, 'add_transaction'),
(38, 'Can change transaction', 10, 'change_transaction'),
(39, 'Can delete transaction', 10, 'delete_transaction'),
(40, 'Can view transaction', 10, 'view_transaction'),
(41, 'Can add second transaction', 11, 'add_secondtransaction'),
(42, 'Can change second transaction', 11, 'change_secondtransaction'),
(43, 'Can delete second transaction', 11, 'delete_secondtransaction'),
(44, 'Can view second transaction', 11, 'view_secondtransaction'),
(45, 'Can add transaction', 12, 'add_transaction'),
(46, 'Can change transaction', 12, 'change_transaction'),
(47, 'Can delete transaction', 12, 'delete_transaction'),
(48, 'Can view transaction', 12, 'view_transaction'),
(49, 'Can add thirdtry', 13, 'add_thirdtry'),
(50, 'Can change thirdtry', 13, 'change_thirdtry'),
(51, 'Can delete thirdtry', 13, 'delete_thirdtry'),
(52, 'Can view thirdtry', 13, 'view_thirdtry');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$SUqAcc0WFgF9$9yT1rE3/KNnTVy66nWlTQYJLdFfsEWiKZcEUhMeyINo=', '2020-02-15 23:34:39.748425', 1, 'rajstha', '', '', 'rajshrestha416@gmail.com', 1, 1, '2020-02-01 23:28:39.000000'),
(2, 'pbkdf2_sha256$180000$uj0sN5pVmPgr$6DqnCz+TYphGgHCwt/qov1pv0Ix0SCQt/E2GDSiZNDI=', NULL, 0, 'rajstha417', 'Raj', 'Shrestha', 'raazshrestha417@gmail.com', 0, 1, '2020-02-03 11:09:23.846132'),
(3, 'pbkdf2_sha256$180000$WkZDbAAwgvjh$3f5oFnXq7F3SD9f/JJdrKX23QPMKBBZC2jDbs4oYE1A=', '2020-02-15 20:26:24.427674', 0, 'softwarica', 'Raj', 'Shrestha', 'raazshrestha100@gmail.com', 0, 1, '2020-02-03 11:38:47.904271'),
(4, 'pbkdf2_sha256$180000$odbeak0O8tZu$CJffmVLtiR9tPFupJJVxO1SYHAIzsWnw963sTtHiOeQ=', '2020-02-04 01:20:48.769285', 0, '183061', 'Raj', 'Shrestha', 'rajshrestha411273@gmail.com', 0, 1, '2020-02-04 01:20:48.009747'),
(6, 'pbkdf2_sha256$180000$TYB2d65MaeaS$YFYB4c8W7JmrIUXsjnWqvwqVuaNHDN2SOZ6OZp5YTVM=', '2020-02-15 08:26:45.916488', 0, 'rajstha123', 'Raj', 'Shrestha', 'rajstha123@gmail.com', 0, 1, '2020-02-15 08:26:45.321463'),
(7, 'pbkdf2_sha256$180000$FXFl18DSswjw$C20bEaK9AzFE+HKUyscn+2BhUBrhknsEzJua3pzoSo8=', '2020-02-15 14:04:15.853115', 0, 'ragas', 'Sagar', 'Shrestha', 'ragas15@gmail.com', 0, 1, '2020-02-15 14:04:15.297859'),
(9, 'pbkdf2_sha256$180000$vCWp3o5SF1sT$L296TJhpjg9mdfWFmG7vxU0sA1f8eMI6L/uqWTTD6ac=', '2020-02-15 14:17:40.436753', 0, '1234567', 'Raj', 'Shrestha', 'rajstha1234567@gmail.com', 0, 1, '2020-02-15 14:17:39.892517'),
(12, 'pbkdf2_sha256$180000$jHCFoaROPlQh$3iMzZq4XYhqJ05jaQQkv0tWGibETkjVEOlOCQuaoZM0=', '2020-02-15 14:33:34.139346', 0, 'pandeyrajiv', 'Rajiv', 'pandey', 'pandey@gmail.com', 0, 1, '2020-02-15 14:33:33.668101'),
(13, 'pbkdf2_sha256$180000$E2bc9euUPHrA$LmbgBuv46vI5OPH2OArSo03d0fVP5J5PRHT+ft+/h6Y=', '2020-02-15 22:39:55.627595', 0, 'sagarpan', 'Sagar', 'pandey', 'sagar@gmail.com', 0, 1, '2020-02-15 22:39:55.049157'),
(14, 'pbkdf2_sha256$180000$sgT9vPTTF3Dn$+/McocL5y1g0mYT/aTLj+XaR4dtsWRe9lWvyKEwD93U=', '2020-02-15 23:16:50.107329', 0, 'dayamahat', 'Daya', 'Mahota', 'dayamahat@gmail.com', 0, 1, '2020-02-15 23:16:49.478993'),
(15, 'pbkdf2_sha256$180000$bNTJdygrCSGf$Q6WUFYCxxpG2Ek9bNJELaMBRfTWpFdQ21+I3sHMrURw=', '2020-02-15 23:37:39.025982', 0, 'ravistha', 'Ravi', 'Shrestha', 'ravistah@gmail.com', 0, 1, '2020-02-15 23:37:38.368736');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-02 05:26:09.435720', '1', 'Products object (1)', 1, '[{\"added\": {}}]', 8, 1),
(2, '2020-02-02 05:31:32.977965', '2', 'Products object (2)', 1, '[{\"added\": {}}]', 8, 1),
(3, '2020-02-02 05:34:38.357078', '3', 'Products object (3)', 1, '[{\"added\": {}}]', 8, 1),
(4, '2020-02-03 07:09:42.395645', '1', 'rajstha', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(5, '2020-02-03 07:10:54.788409', '4', 'Products object (4)', 1, '[{\"added\": {}}]', 8, 1),
(6, '2020-02-03 07:11:44.639819', '4', 'Products object (4)', 3, '', 8, 1),
(7, '2020-02-06 03:53:22.429490', '1', 'Secondhand object (1)', 1, '[{\"added\": {}}]', 9, 1),
(8, '2020-02-06 05:58:06.179880', '2', 'Secondhand object (2)', 1, '[{\"added\": {}}]', 9, 1),
(9, '2020-02-08 03:30:50.248836', '1', 'Transaction object (1)', 1, '[{\"added\": {}}]', 12, 1),
(10, '2020-02-08 03:48:33.797094', '6', 'Transaction object (6)', 3, '', 12, 1),
(11, '2020-02-08 03:49:07.780359', '18', 'Transaction object (18)', 3, '', 12, 1),
(12, '2020-02-08 03:49:11.189173', '17', 'Transaction object (17)', 3, '', 12, 1),
(13, '2020-02-08 03:49:14.339299', '16', 'Transaction object (16)', 3, '', 12, 1),
(14, '2020-02-08 03:49:18.079138', '15', 'Transaction object (15)', 3, '', 12, 1),
(15, '2020-02-08 03:54:40.191178', '7', 'Transaction object (7)', 3, '', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'Products', 'products'),
(9, 'Products', 'secondhand'),
(10, 'Products', 'transaction'),
(6, 'sessions', 'session'),
(11, 'Transaction', 'secondtransaction'),
(13, 'Transaction', 'thirdtry'),
(12, 'Transaction', 'transaction'),
(7, 'Users', 'users');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Users', '0001_initial', '2020-02-01 11:22:31.039085'),
(2, 'contenttypes', '0001_initial', '2020-02-01 11:22:31.568572'),
(3, 'auth', '0001_initial', '2020-02-01 11:22:33.287190'),
(4, 'admin', '0001_initial', '2020-02-01 11:22:42.471075'),
(5, 'admin', '0002_logentry_remove_auto_add', '2020-02-01 11:22:45.746282'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-01 11:22:45.794390'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-02-01 11:22:46.845955'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-02-01 11:22:47.850532'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-02-01 11:22:48.001269'),
(10, 'auth', '0004_alter_user_username_opts', '2020-02-01 11:22:48.103507'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-02-01 11:22:49.484221'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-02-01 11:22:49.601095'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-02-01 11:22:49.685486'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-02-01 11:22:49.897521'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-02-01 11:22:50.174181'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-02-01 11:22:50.384905'),
(17, 'auth', '0011_update_proxy_permissions', '2020-02-01 11:22:50.428930'),
(18, 'sessions', '0001_initial', '2020-02-01 11:22:50.762297'),
(19, 'Products', '0001_initial', '2020-02-01 16:28:24.840821'),
(20, 'Users', '0002_delete_users', '2020-02-03 01:47:05.980717'),
(21, 'Products', '0002_secondhand_userid', '2020-02-04 00:10:23.315159'),
(22, 'Products', '0003_auto_20200204_0608', '2020-02-04 00:23:45.205661'),
(23, 'Products', '0004_auto_20200205_0317', '2020-02-04 21:33:06.773713'),
(24, 'Products', '0005_auto_20200205_0321', '2020-02-04 21:36:52.057554'),
(25, 'Products', '0006_auto_20200205_0340', '2020-02-04 21:55:33.399374'),
(26, 'Products', '0007_auto_20200206_1221', '2020-02-06 06:36:30.743235'),
(27, 'Products', '0008_transaction', '2020-02-07 04:34:10.980043'),
(28, 'Transaction', '0001_initial', '2020-02-08 02:46:09.351629'),
(29, 'Transaction', '0002_auto_20200208_0914', '2020-02-08 03:29:48.317181'),
(30, 'Transaction', '0003_thirdtry', '2020-02-08 07:46:09.690240'),
(31, 'Transaction', '0004_auto_20200208_1337', '2020-02-08 07:52:58.024941'),
(32, 'Transaction', '0005_auto_20200208_1534', '2020-02-08 09:50:05.921401');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0vuhgaezsbn6pmckxegz3sbwi1y4ekzv', 'NzQ1NTJiNGY4YjFmM2FhMDMzY2U4NjFjNjkxN2JhNzU1ZTA3MGE4Mzp7fQ==', '2020-02-29 09:16:30.840523'),
('3r0ah58tlj5jis8ms4fkx44oe3zhw3uv', 'N2Q4Yzc4NTQwYzZmMDI5NTgwOGQ0NDg3NjE5ZGRjMDcxYjA2OWFjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODE3ZDczYWUwYWQ2OTk0YjE3NGEzYmFiZGQ4YWYwMDZhZGYyMzEwIn0=', '2020-02-24 03:16:25.614803'),
('k5q46sq2lrsiz9dzv1qe09dzgtc1rmra', 'N2Q4Yzc4NTQwYzZmMDI5NTgwOGQ0NDg3NjE5ZGRjMDcxYjA2OWFjOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ODE3ZDczYWUwYWQ2OTk0YjE3NGEzYmFiZGQ4YWYwMDZhZGYyMzEwIn0=', '2020-02-15 23:28:49.450536'),
('wtuz6k9gsrsfr7947aenlks50quupuk4', 'MzRhMzFlYzg3MDgxMTc2YTZmYzBmMDgxZjhhMTcyMjdjYjc2YzVjZTp7Il9hdXRoX3VzZXJfaWQiOiIxNSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiOTc0MjRmMWQzN2JlMDJlN2M5ZWY1MzRiYWMzN2ZhM2E2ODgwY2UwNiJ9', '2020-02-29 23:37:39.146684');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Description` longtext NOT NULL,
  `Image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `ProductName`, `Price`, `Description`, `Image`) VALUES
(1, 'Dell Precision 7530', '1079.99', 'Dell Precision 7530 VR Ready 1920 X 1080 15.6\" LCD Mobile Workstation with Intel Core i7-8850H Hexa-core 2.6 GHz, 16GB RAM, 512GB SSD', 'pic/dell-precision-5720.jpg'),
(2, 'Sony SmartWatch2', '359.99', '1.6-inch, 220-by-176-pixel, transflective, touch-screen LCD offers 262k colors', 'pic/sony-smartwatch-2.jpg'),
(13, 'Dell 3593', '677.55', 'Dell 3593 i5 10th Gen/4GB/1TB/15.6 FHD/2GB Nvidia MX230 Laptop', 'pic/dell_studio_laptop_wallpaper-1280x960.jpg'),
(14, 'Dell-Inspiration', '499.55', 'Dell Inspiron 11 3158 11.6-inch Touchscreen Laptop (Celeron/4GB/500GB/Integrated Graphics)', 'pic/dell-inspiration.jpg'),
(15, 'HP Spectre', '1159.55', 'HP Spectre 13 X360/ i7 /8th Gen / 8GB / 256GB/ 13.3 Notebook - Laptop\"', 'pic/hpspectre.jpg'),
(16, 'HP Pavilion', '1099.99', 'HP Pavilion 15 Power, i5-8300H, 8GB, GTX 1050ti', 'pic/HP-Pavilion.jpeg'),
(17, 'Apple MacBook Pro', '1599.99', 'Apple MacBook Pro 15.4 SpaceGray /2.2GHZ/16GB/RP555X/256GB By Future World', 'pic/macbook_pro.jpg'),
(18, 'Apple MacBook Air', '999.99', 'Macbook Air 13.3 /1.6GHz/8GB 128GB', 'pic/AppleMackBookAir.jpg'),
(19, 'iPhone 11 pro', '679.00', 'Display:5.8 inches,Super Retina XDR OLED capacitive touchscreen, RAM / ROM: 4 GB RAM / 64 GB, 256 GB, 512 GB ROM, Front Camera:12 MP, f/2.2, 23mm (wide)SL 3D camera', 'pic/Iphon11pro.jpg'),
(20, 'iPhone XS 256GB Silver', '599.99', '5.8‑inch (diagonal) all‑screen OLED Multi‑Touch display, Dual 12MP wide-angle and telephoto cameras, 4K video recording at 24 fps, 30 fps, or 60 fps', 'pic/iphonex.jpg'),
(21, 'Xbox 360', '299.99', 'Microsoft Xbox 360 20GB Console White', 'pic/xbox.jpg'),
(22, 'HeadPhone', '199.99', 'Wholesale Fashion TechShop best budget noise cancelling blue tooth top rated wireless headphones', 'pic/back1.jpg'),
(23, 'Samsung Galaxy Note 10 plus', '899.99', 'Samsung Galaxy Note 10 plus[12 GB RAM/512 GB ROM]\r\n12MP (Dual Aperture) + 12MP + 16MP + TOF 10MP Front Camera\r\n4300 mAh Battery', 'pic/samsungNote10.jpg'),
(24, 'Samsung Galaxy S10 Plus', '799.99', 'Samsung Galaxy S10 Plus 128GB ROM +8GB RAM, Main Camera:12 MP, f/1.5-2.4, 26mm (wide), 1/2.55\", 1.4µm, Dual Pixel PDAF, OIS +12 MP, f/2.4, 52mm (telephoto), 1/3.6\", 1.0µm, AF, OIS, 2x optical zoom +16 MP, f/2.2, 12mm (ultrawide), 1.0µm', 'pic/samsungS10.jpg'),
(27, 'Predator Helios 300', '1999.55', 'Predator Hellios 300 Gaming Laptop', 'pic/predator.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `secondhand`
--

CREATE TABLE `secondhand` (
  `id` int(11) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `Price` decimal(7,2) NOT NULL,
  `Description` longtext NOT NULL,
  `Used_Details` varchar(50) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `UserId_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `secondhand`
--

INSERT INTO `secondhand` (`id`, `ProductName`, `Price`, `Description`, `Used_Details`, `Image`, `UserId_id`) VALUES
(6, 'HP Laptop', '999.55', 'Old HP Laptop, Screen Size: 15.6,	i5, 4gb RAM', '8 month used', 'pic/old-hp-laptop.jpg', 1),
(8, 'HeadSet', '59.00', 'Headset with Mic', '5 month used', 'pic/Oldheadset.jpg', 1),
(9, 'Halogen Heater', '49.99', 'Yasuda YS12CS 1200W Halogen Heater- Grey', '1 month used', 'pic/Halogen_Heater.jpg', 3),
(10, 'LED TV', '101.11', 'IDEA Double Glass 17\" HD LED TV', 'one and half month used', 'pic/LedTv.jpg', 3),
(11, 'Xiaomi Redmi Note 4', '155.55', '5.5 inches, 83.4 cm2 (~72.7% screen-to-body ratio), 32GB 3GB RAM, 64GB 3GB RAM, 64GB 4GB RAM', '6 month used', 'pic/XiaomiRedmi.jpg', 3),
(12, 'Samsung A50', '120.00', 'Samsung A50 , Android 9.0, and Ram 4GB', '1 month used', 'pic/samsungA50.jpg', 13),
(13, 'Samsung M30', '259.99', '4 GB Ram, 64 GB ROM, Android 9.0', '1 month used', 'pic/samsungM30.jpg', 14);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_transaction`
--

CREATE TABLE `transaction_transaction` (
  `id` int(11) NOT NULL,
  `CheckOut` tinyint(1) NOT NULL,
  `ProductId_id` int(11) DEFAULT NULL,
  `UserId_id` int(11) NOT NULL,
  `Date` datetime(6) NOT NULL,
  `SProductId_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction_transaction`
--

INSERT INTO `transaction_transaction` (`id`, `CheckOut`, `ProductId_id`, `UserId_id`, `Date`, `SProductId_id`) VALUES
(37, 1, 1, 1, '2020-02-08 12:01:09.692928', NULL),
(41, 1, 15, 1, '2020-02-10 09:01:41.706744', NULL),
(43, 1, 15, 1, '2020-02-10 09:04:02.283763', NULL),
(52, 1, 2, 3, '2020-02-16 01:05:45.210594', NULL),
(56, 1, 15, 14, '2020-02-16 05:06:38.180424', NULL),
(58, 1, NULL, 14, '2020-02-16 05:07:16.741967', 10),
(59, 1, 27, 15, '2020-02-16 05:25:57.466076', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secondhand`
--
ALTER TABLE `secondhand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Secondhand_UserId_id_38222b74_fk_auth_user_id` (`UserId_id`);

--
-- Indexes for table `transaction_transaction`
--
ALTER TABLE `transaction_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Transaction_transaction_UserId_id_b2dc3e7c_fk_auth_user_id` (`UserId_id`),
  ADD KEY `Transaction_transaction_SProductId_id_b8dc1aed_fk_Secondhand_id` (`SProductId_id`),
  ADD KEY `Transaction_transaction_ProductId_id_9d14aabf_fk_Products_id` (`ProductId_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `secondhand`
--
ALTER TABLE `secondhand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction_transaction`
--
ALTER TABLE `transaction_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `secondhand`
--
ALTER TABLE `secondhand`
  ADD CONSTRAINT `Secondhand_UserId_id_38222b74_fk_auth_user_id` FOREIGN KEY (`UserId_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `transaction_transaction`
--
ALTER TABLE `transaction_transaction`
  ADD CONSTRAINT `Transaction_transaction_ProductId_id_9d14aabf_fk_Products_id` FOREIGN KEY (`ProductId_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `Transaction_transaction_SProductId_id_b8dc1aed_fk_Secondhand_id` FOREIGN KEY (`SProductId_id`) REFERENCES `secondhand` (`id`),
  ADD CONSTRAINT `Transaction_transaction_UserId_id_b2dc3e7c_fk_auth_user_id` FOREIGN KEY (`UserId_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
