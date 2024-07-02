-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2023 at 09:43 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sports`
--
CREATE DATABASE IF NOT EXISTS `sports` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sports`;

-- --------------------------------------------------------

--
-- Table structure for table `app_athletes_athleteformmodel`
--

CREATE TABLE IF NOT EXISTS `app_athletes_athleteformmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `gender` varchar(500) NOT NULL,
  `federation` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `allow` tinyint(1) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `grade` varchar(500) DEFAULT NULL,
  `medical_illness` varchar(500) DEFAULT NULL,
  `physically_challenged` varchar(500) DEFAULT NULL,
  `federationName` varchar(500) DEFAULT NULL,
  `send` tinyint(1) NOT NULL,
  `tolab` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `app_athletes_athleteformmodel`
--

INSERT INTO `app_athletes_athleteformmodel` (`id`, `name`, `mail`, `phone`, `gender`, `federation`, `address`, `allow`, `age`, `grade`, `medical_illness`, `physically_challenged`, `federationName`, `send`, `tolab`) VALUES
(18, 'madhu', 'madhu@gmail.com', 8589868420, 'Female', 'Running', 'Chennai,\r\nTamilnadu', 1, 22, 'High Section', 'No', 'No', 'Legend Federation', 1, 0),
(19, 'roney', 'roney@gmail.com', 7273756612, 'Male', 'Swimming', 'Chennai,\r\nTamilnadu', 1, 32, 'High Section', 'No', 'No', 'Legend Federation', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_athletes_athletehealthreport`
--

CREATE TABLE IF NOT EXISTS `app_athletes_athletehealthreport` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` int(11) NOT NULL,
  `cp` int(11) NOT NULL,
  `trestbps` int(11) NOT NULL,
  `chol` int(11) NOT NULL,
  `fbs` int(11) NOT NULL,
  `restecg` int(11) NOT NULL,
  `thalach` int(11) NOT NULL,
  `exang` int(11) NOT NULL,
  `oldpeak` double NOT NULL,
  `slope` int(11) NOT NULL,
  `ca` int(11) NOT NULL,
  `thal` int(11) NOT NULL,
  `allow` tinyint(1) NOT NULL,
  `send` tinyint(1) NOT NULL,
  `target` int(11) DEFAULT NULL,
  `final` tinyint(1) NOT NULL,
  `tores` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `app_athletes_athletehealthreport`
--

INSERT INTO `app_athletes_athletehealthreport` (`id`, `name`, `mail`, `age`, `sex`, `cp`, `trestbps`, `chol`, `fbs`, `restecg`, `thalach`, `exang`, `oldpeak`, `slope`, `ca`, `thal`, `allow`, `send`, `target`, `final`, `tores`) VALUES
(15, 'madhu', 'madhu@gmail.com', 22, 0, 0, 125, 212, 0, 1, 168, 0, 0, 2, 2, 3, 0, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_athletes_athletemodel`
--

CREATE TABLE IF NOT EXISTS `app_athletes_athletemodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `password` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `app_athletes_athletemodel`
--

INSERT INTO `app_athletes_athletemodel` (`id`, `name`, `mail`, `phone`, `password`) VALUES
(12, 'madhu', 'madhu@gmail.com', 7946852010, 'Madhu@123'),
(13, 'roney', 'roney@gmail.com', 6898523122, 'Roney@123');

-- --------------------------------------------------------

--
-- Table structure for table `app_federation_federationform`
--

CREATE TABLE IF NOT EXISTS `app_federation_federationform` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `federationName` varchar(500) NOT NULL,
  `federation` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `certificate` varchar(500) NOT NULL,
  `years` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `achievement` varchar(500) NOT NULL,
  `address` varchar(500) NOT NULL,
  `allow` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `app_federation_federationform`
--

INSERT INTO `app_federation_federationform` (`id`, `federationName`, `federation`, `mail`, `phone`, `certificate`, `years`, `size`, `achievement`, `address`, `allow`) VALUES
(14, 'Legend Federation', 'Swimming', 'vinay@gmail.com', 8789854568, 'Grade A', 20, 150, 'Gold in division', 'Chennai,\r\nTamilnadu', 0),
(15, 'Legend Federation', 'Running', 'vijay@gmail.com', 7898546231, 'Grade A', 10, 80, 'Silver in National', 'Chennai,\r\nTamilnadu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `app_federation_federationmodel`
--

CREATE TABLE IF NOT EXISTS `app_federation_federationmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `password` varchar(500) NOT NULL,
  `allow` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `app_federation_federationmodel`
--

INSERT INTO `app_federation_federationmodel` (`id`, `name`, `mail`, `phone`, `password`, `allow`) VALUES
(23, 'vinay', 'vinay@gmail.com', 8789854522, 'Vinay@123', 1),
(24, 'vijay', 'vijay@gmail.com', 7898545212, 'Vijay@123', 1),
(25, 'surya', 'surya@gmail.com', 7898545627, 'Surya@123', 1),
(26, 'madhavan', 'madhavan@gmail.com', 6898565242, 'Madhavan@123', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_lab_manager_labformmodel`
--

CREATE TABLE IF NOT EXISTS `app_lab_manager_labformmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `gender` varchar(500) NOT NULL,
  `lab_type` varchar(500) NOT NULL,
  `allow` tinyint(1) NOT NULL,
  `address` varchar(500) DEFAULT NULL,
  `laser_present` varchar(500) DEFAULT NULL,
  `licence_number` varchar(500) DEFAULT NULL,
  `toxins` varchar(500) DEFAULT NULL,
  `send` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `app_lab_manager_labmodel`
--

CREATE TABLE IF NOT EXISTS `app_lab_manager_labmodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `password` varchar(500) NOT NULL,
  `allow` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `app_lab_manager_labmodel`
--

INSERT INTO `app_lab_manager_labmodel` (`id`, `name`, `mail`, `phone`, `password`, `allow`) VALUES
(8, 'aju', 'aju@gmail.com', 7932156432, 'Aju@12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `app_resource_resourcemodel`
--

CREATE TABLE IF NOT EXISTS `app_resource_resourcemodel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) NOT NULL,
  `mail` varchar(500) NOT NULL,
  `phone` bigint(20) unsigned NOT NULL,
  `password` varchar(500) NOT NULL,
  `allow` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `app_resource_resourcemodel`
--

INSERT INTO `app_resource_resourcemodel` (`id`, `name`, `mail`, `phone`, `password`, `allow`) VALUES
(8, 'joes', 'joes@gmail.com', 6985423561, 'Joes@12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

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
(25, 'Can add federation model', 7, 'add_federationmodel'),
(26, 'Can change federation model', 7, 'change_federationmodel'),
(27, 'Can delete federation model', 7, 'delete_federationmodel'),
(28, 'Can view federation model', 7, 'view_federationmodel'),
(29, 'Can add lab model', 8, 'add_labmodel'),
(30, 'Can change lab model', 8, 'change_labmodel'),
(31, 'Can delete lab model', 8, 'delete_labmodel'),
(32, 'Can view lab model', 8, 'view_labmodel'),
(33, 'Can add resource model', 9, 'add_resourcemodel'),
(34, 'Can change resource model', 9, 'change_resourcemodel'),
(35, 'Can delete resource model', 9, 'delete_resourcemodel'),
(36, 'Can view resource model', 9, 'view_resourcemodel'),
(37, 'Can add athlete model', 10, 'add_athletemodel'),
(38, 'Can change athlete model', 10, 'change_athletemodel'),
(39, 'Can delete athlete model', 10, 'delete_athletemodel'),
(40, 'Can view athlete model', 10, 'view_athletemodel'),
(41, 'Can add federation form model', 11, 'add_federationformmodel'),
(42, 'Can change federation form model', 11, 'change_federationformmodel'),
(43, 'Can delete federation form model', 11, 'delete_federationformmodel'),
(44, 'Can view federation form model', 11, 'view_federationformmodel'),
(45, 'Can add athlete form model', 12, 'add_athleteformmodel'),
(46, 'Can change athlete form model', 12, 'change_athleteformmodel'),
(47, 'Can delete athlete form model', 12, 'delete_athleteformmodel'),
(48, 'Can view athlete form model', 12, 'view_athleteformmodel'),
(49, 'Can add lab form model', 13, 'add_labformmodel'),
(50, 'Can change lab form model', 13, 'change_labformmodel'),
(51, 'Can delete lab form model', 13, 'delete_labformmodel'),
(52, 'Can view lab form model', 13, 'view_labformmodel'),
(53, 'Can add federation form', 14, 'add_federationform'),
(54, 'Can change federation form', 14, 'change_federationform'),
(55, 'Can delete federation form', 14, 'delete_federationform'),
(56, 'Can view federation form', 14, 'view_federationform'),
(57, 'Can add athlete health report', 15, 'add_athletehealthreport'),
(58, 'Can change athlete health report', 15, 'change_athletehealthreport'),
(59, 'Can delete athlete health report', 15, 'delete_athletehealthreport'),
(60, 'Can view athlete health report', 15, 'view_athletehealthreport');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(12, 'app_athletes', 'athleteformmodel'),
(15, 'app_athletes', 'athletehealthreport'),
(10, 'app_athletes', 'athletemodel'),
(14, 'app_federation', 'federationform'),
(11, 'app_federation', 'federationformmodel'),
(7, 'app_federation', 'federationmodel'),
(13, 'app_lab_manager', 'labformmodel'),
(8, 'app_lab_manager', 'labmodel'),
(9, 'app_resource', 'resourcemodel'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-07-13 12:49:03.567024'),
(2, 'auth', '0001_initial', '2022-07-13 12:49:10.790584'),
(3, 'admin', '0001_initial', '2022-07-13 12:49:12.397485'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-07-13 12:49:12.427484'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-13 12:49:12.446482'),
(6, 'app_federation', '0001_initial', '2022-07-13 12:49:12.674468'),
(7, 'contenttypes', '0002_remove_content_type_name', '2022-07-13 12:49:13.722407'),
(8, 'auth', '0002_alter_permission_name_max_length', '2022-07-13 12:49:14.342366'),
(9, 'auth', '0003_alter_user_email_max_length', '2022-07-13 12:49:14.909333'),
(10, 'auth', '0004_alter_user_username_opts', '2022-07-13 12:49:14.947330'),
(11, 'auth', '0005_alter_user_last_login_null', '2022-07-13 12:49:15.402303'),
(12, 'auth', '0006_require_contenttypes_0002', '2022-07-13 12:49:15.438303'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2022-07-13 12:49:15.475299'),
(14, 'auth', '0008_alter_user_username_max_length', '2022-07-13 12:49:16.124259'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2022-07-13 12:49:16.719223'),
(16, 'auth', '0010_alter_group_name_max_length', '2022-07-13 12:49:17.347184'),
(17, 'auth', '0011_update_proxy_permissions', '2022-07-13 12:49:17.375183'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2022-07-13 12:49:17.874153'),
(19, 'sessions', '0001_initial', '2022-07-13 12:49:18.520115'),
(20, 'app_athletes', '0001_initial', '2022-07-13 14:05:03.566868'),
(21, 'app_lab_manager', '0001_initial', '2022-07-13 14:05:03.807853'),
(22, 'app_resource', '0001_initial', '2022-07-13 14:05:04.041839'),
(23, 'app_federation', '0002_federationmodel_federation', '2022-07-14 13:57:37.125962'),
(24, 'app_athletes', '0002_athletemodel_federation', '2022-07-15 04:37:08.664041'),
(25, 'app_federation', '0003_federationformmodel_remove_federationmodel_allow_and_more', '2022-07-15 11:04:10.822980'),
(26, 'app_athletes', '0003_athleteformmodel_remove_athletemodel_allow_and_more', '2022-07-15 12:15:38.802464'),
(27, 'app_athletes', '0004_remove_athleteformmodel_password', '2022-07-15 12:20:58.544273'),
(28, 'app_lab_manager', '0002_labformmodel', '2022-07-16 06:54:34.703848'),
(29, 'app_lab_manager', '0003_labformmodel_send', '2022-07-16 07:07:43.066931'),
(30, 'app_lab_manager', '0004_labformmodel_address', '2022-07-16 07:57:17.213918'),
(31, 'app_lab_manager', '0005_rename_send_labformmodel_allow', '2022-07-16 09:20:40.803858'),
(32, 'app_federation', '0002_federationform_delete_federationformmodel', '2022-07-18 04:01:39.770331'),
(33, 'app_athletes', '0005_athleteformmodel_age_athleteformmodel_grade_and_more', '2022-07-18 05:09:27.768140'),
(34, 'app_lab_manager', '0006_labformmodel_laser_present_and_more', '2022-07-18 06:47:13.734598'),
(35, 'app_lab_manager', '0007_labformmodel_send', '2022-07-18 07:10:40.155116'),
(36, 'app_federation', '0003_rename_federationid_federationform_federationname', '2022-07-18 13:25:59.798386'),
(37, 'app_athletes', '0006_athleteformmodel_federationname', '2022-07-18 13:35:29.426765'),
(38, 'app_athletes', '0007_athleteformmodel_send', '2022-07-19 06:06:08.684674'),
(39, 'app_athletes', '0008_athletehealthreport', '2022-07-19 09:01:53.015032'),
(40, 'app_athletes', '0009_athletehealthreport_allow', '2022-07-19 10:10:43.988954'),
(41, 'app_athletes', '0010_athletehealthreport_send', '2022-07-19 10:38:45.766737'),
(42, 'app_athletes', '0011_athletehealthreport_target', '2022-07-20 11:57:56.975109'),
(43, 'app_athletes', '0012_athletehealthreport_final', '2022-07-20 13:50:10.607975'),
(44, 'app_federation', '0004_federationmodel_allow', '2022-07-21 05:05:01.000749'),
(45, 'app_athletes', '0013_alter_athletehealthreport_oldpeak', '2022-07-21 05:17:38.186385'),
(46, 'app_athletes', '0014_athleteformmodel_tolab', '2022-07-23 05:34:38.734623'),
(47, 'app_athletes', '0015_athletehealthreport_tores', '2022-07-23 08:11:55.085189'),
(48, 'app_federation', '0005_federationmodel_field', '2022-07-25 09:05:32.627222'),
(49, 'app_federation', '0006_remove_federationmodel_field', '2022-07-25 09:10:37.965794'),
(50, 'app_federation', '0007_federationmodel_fed_type', '2022-07-25 09:58:08.982723'),
(51, 'app_federation', '0008_remove_federationmodel_fed_type', '2022-07-25 10:23:51.133648');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('adgvx86h8auhsh9osnbrte2szrcg8lzt', 'eyJsYWIiOiJhanVAZ21haWwuY29tIn0:1oFwJ0:7xXshbpMgNJzZYZqoVFpX4hx6q3bAUPKkIPYuXSG360', '2022-08-08 11:31:22.713107'),
('v0z2twgmi1wfhp9fsj2f6q5ge9h99ay2', 'eyJyZXNvdXJjZSI6ImpvZXNAZ21haWwuY29tIn0:1oFyfs:H8rJW_GUyb_czoGQFwGWJQKuAvk9PqbWjS0QZRohZC0', '2022-08-08 14:03:08.220553');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
