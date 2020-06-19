-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2020 at 08:02 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boxoffice`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(25, 'Can add site', 7, 'add_site'),
(26, 'Can change site', 7, 'change_site'),
(27, 'Can delete site', 7, 'delete_site'),
(28, 'Can view site', 7, 'view_site'),
(29, 'Can add customer', 8, 'add_customer'),
(30, 'Can change customer', 8, 'change_customer'),
(31, 'Can delete customer', 8, 'delete_customer'),
(32, 'Can view customer', 8, 'view_customer'),
(33, 'Can add contact_request', 9, 'add_contact_request'),
(34, 'Can change contact_request', 9, 'change_contact_request'),
(35, 'Can delete contact_request', 9, 'delete_contact_request'),
(36, 'Can view contact_request', 9, 'view_contact_request'),
(37, 'Can add contact_ us', 10, 'add_contact_us'),
(38, 'Can change contact_ us', 10, 'change_contact_us'),
(39, 'Can delete contact_ us', 10, 'delete_contact_us'),
(40, 'Can view contact_ us', 10, 'view_contact_us'),
(41, 'Can add movie', 11, 'add_movie'),
(42, 'Can change movie', 11, 'change_movie'),
(43, 'Can delete movie', 11, 'delete_movie'),
(44, 'Can view movie', 11, 'view_movie'),
(45, 'Can add theatre', 12, 'add_theatre'),
(46, 'Can change theatre', 12, 'change_theatre'),
(47, 'Can delete theatre', 12, 'delete_theatre'),
(48, 'Can view theatre', 12, 'view_theatre'),
(49, 'Can add theatre', 13, 'add_theatre'),
(50, 'Can change theatre', 13, 'change_theatre'),
(51, 'Can delete theatre', 13, 'delete_theatre'),
(52, 'Can view theatre', 13, 'view_theatre'),
(53, 'Can add show', 14, 'add_show'),
(54, 'Can change show', 14, 'change_show'),
(55, 'Can delete show', 14, 'delete_show'),
(56, 'Can view show', 14, 'view_show'),
(57, 'Can add seat', 15, 'add_seat'),
(58, 'Can change seat', 15, 'change_seat'),
(59, 'Can delete seat', 15, 'delete_seat'),
(60, 'Can view seat', 15, 'view_seat'),
(61, 'Can add booking', 16, 'add_booking'),
(62, 'Can change booking', 16, 'change_booking'),
(63, 'Can delete booking', 16, 'delete_booking'),
(64, 'Can view booking', 16, 'view_booking');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$5ieyepozbb43$8W/fJai8hLJ8OEOb7XK0jyHWAdGWHcTvzbBrlzX1OFE=', '2020-06-19 05:20:30.606347', 1, 'kartik', 'Kartik', 'Aneja', 'anejakartik68@gmail.com', 1, 1, '2020-02-18 06:32:10.000000'),
(12, 'pbkdf2_sha256$150000$TWhqB9fgAO5O$1bN9iX2Q0xiqvkKtqWnHZcEGA14oaNQnvYB1pZ8H1qk=', NULL, 0, 'anejakartik', '', '', 'anejakartik54@gmail.com', 0, 1, '2020-04-18 00:04:51.236781'),
(13, 'kartik123', NULL, 0, 'ritesh', '', '', 'ritesh@gmail.com', 0, 1, '2020-06-15 15:44:45.000000'),
(14, 'pbkdf2_sha256$150000$7bwfiaLIkkU0$Wze1bxB/kscpVI6SrWwfkZW6qGz0pdRFAuUkKtKDm/I=', '2020-06-18 02:59:48.525107', 0, 'rahul', '', '', 'rahul@gmail.com', 0, 1, '2020-06-18 01:42:32.245480');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_contact_us`
--

CREATE TABLE `dashboard_contact_us` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(75) NOT NULL,
  `contact_email` varchar(75) NOT NULL,
  `contact_subject` varchar(75) NOT NULL,
  `contact_detail` longtext NOT NULL,
  `contact_resolved` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dashboard_contact_us`
--

INSERT INTO `dashboard_contact_us` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_detail`, `contact_resolved`, `created_at`, `updated_at`) VALUES
(20, 'kartik', 'anejakartik68@gmail.com', 'hello', 'hello123', 0, '2020-06-14 23:20:15.398072', '2020-06-14 23:20:15.398072'),
(21, 'hello', 'anejakartik54@gmail.com', 'gerheth', 'thrthjy', 0, '2020-06-15 01:40:00.310684', '2020-06-15 01:40:00.310684');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-18 06:39:26.969940', '1', 'kartik', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\"]}}]', 4, 1),
(2, '2020-03-03 09:29:35.611508', '1', 'customer', 1, '[{\"added\": {}}]', 3, 1),
(3, '2020-03-03 09:30:15.406746', '1', 'customer', 3, '', 3, 1),
(4, '2020-03-03 12:04:20.701371', '2', 'aneja', 1, '[{\"added\": {}}]', 4, 1),
(5, '2020-03-03 12:04:28.871084', '2', 'aneja', 2, '[]', 4, 1),
(6, '2020-03-07 17:23:06.177633', '3', 'nitesh', 3, '', 4, 1),
(7, '2020-03-07 17:27:55.349313', '4', 'nitesh', 3, '', 4, 1),
(8, '2020-03-08 20:36:55.187087', '5', 'nitesh', 3, '', 4, 1),
(9, '2020-03-08 20:44:51.041627', '6', 'nitesh', 3, '', 4, 1),
(10, '2020-03-11 21:37:09.081332', '7', 'nitesh', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 8, 1),
(11, '2020-03-11 21:37:27.879007', '7', 'nitesh', 2, '[{\"changed\": {\"fields\": [\"last_name\", \"email\"]}}]', 8, 1),
(12, '2020-04-13 00:20:09.628772', '2', 'aneja', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1),
(13, '2020-04-13 02:19:09.308709', '7', 'nitesh', 3, '', 8, 1),
(14, '2020-04-13 02:19:09.368223', '2', 'aneja', 3, '', 8, 1),
(15, '2020-04-13 02:20:22.871626', '8', 'rahul', 1, '[{\"added\": {}}]', 4, 1),
(16, '2020-04-13 02:20:28.553333', '8', 'rahul', 2, '[]', 4, 1),
(17, '2020-04-13 02:20:40.137592', '8', 'rahul', 2, '[]', 8, 1),
(18, '2020-04-13 02:20:56.677000', '8', 'rahul', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 8, 1),
(19, '2020-04-13 02:21:37.672814', '9', 'nitesh', 1, '[{\"added\": {}}]', 8, 1),
(20, '2020-04-17 06:03:48.555181', '9', 'nitesh', 3, '', 8, 1),
(21, '2020-04-17 06:04:25.042646', '8', 'rahul', 3, '', 4, 1),
(22, '2020-04-17 06:05:58.985787', '10', 'rahul', 1, '[{\"added\": {}}]', 4, 1),
(23, '2020-04-17 06:06:21.133414', '10', 'rahul', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1),
(24, '2020-04-17 06:06:46.831589', '11', 'honey', 1, '[{\"added\": {}}]', 4, 1),
(25, '2020-04-17 06:07:04.176151', '11', 'honey', 2, '[{\"changed\": {\"fields\": [\"email\"]}}]', 4, 1),
(26, '2020-04-17 22:15:30.658167', '11', 'honey', 3, '', 4, 1),
(27, '2020-04-18 00:03:14.994131', '10', 'rahul', 3, '', 4, 1),
(28, '2020-05-04 01:57:50.772949', 'e796fb68-9080-4b82-9284-0f367cad6ce0', 'e796fb68-9080-4b82-9284-0f367cad6ce0 kartik anejakartik68@gmail.com help help False 2020-05-04 01:57:50.770950+00:00 2020-05-04 01:57:50.770950+00:00', 1, '[{\"added\": {}}]', 9, 1),
(29, '2020-05-04 01:58:22.024573', 'e796fb68-9080-4b82-9284-0f367cad6ce0', 'e796fb68-9080-4b82-9284-0f367cad6ce0 kartik anejakartik68@gmail.com help help True 2020-05-04 01:57:50.770950+00:00 2020-05-04 01:58:21.981686+00:00', 2, '[{\"changed\": {\"fields\": [\"contact_resolved\"]}}]', 9, 1),
(30, '2020-05-04 01:59:10.408231', 'e796fb68-9080-4b82-9284-0f367cad6ce0', 'e796fb68-9080-4b82-9284-0f367cad6ce0 kartik anejakartik68@gmail.com help help True 2020-05-04 01:57:50.770950+00:00 2020-05-04 01:58:21.981686+00:00', 3, '', 9, 1),
(31, '2020-05-04 02:02:50.944983', 'f4fd2a3d-584c-486d-983c-9e1c702a26d2', 'f4fd2a3d-584c-486d-983c-9e1c702a26d2 hfym fhmfh n nnfgng False 2020-05-04 02:02:50.913865+00:00 2020-05-04 02:02:50.913865+00:00', 1, '[{\"added\": {}}]', 9, 1),
(32, '2020-05-04 02:08:59.607901', 'f4fd2a3d-584c-486d-983c-9e1c702a26d2', 'f4fd2a3d-584c-486d-983c-9e1c702a26d2 hfym fhmfh n nnfgng False 2020-05-04 02:02:50.913865+00:00 2020-05-04 02:02:50.913865+00:00', 3, '', 9, 1),
(33, '2020-05-04 02:19:55.345239', '26643618-9b60-4b68-b0b9-c64de2367246', '26643618-9b60-4b68-b0b9-c64de2367246 fdht dghdg bdgbdtg bgdnfgn False 2020-05-04 02:19:55.314232+00:00 2020-05-04 02:19:55.314232+00:00', 1, '[{\"added\": {}}]', 9, 1),
(34, '2020-05-04 02:20:14.612078', '26643618-9b60-4b68-b0b9-c64de2367246', '26643618-9b60-4b68-b0b9-c64de2367246 fdht dghdg bdgbdtg bgdnfgn False 2020-05-04 02:19:55.314232+00:00 2020-05-04 02:19:55.314232+00:00', 3, '', 9, 1),
(35, '2020-05-06 00:35:25.251215', '1', '1 kartik kartik@gmail.com kartik123 vebvrgv False 2020-05-06 00:35:25.237333+00:00 2020-05-06 00:35:25.237333+00:00', 1, '[{\"added\": {}}]', 10, 1),
(36, '2020-05-06 00:35:35.814118', '1', '1 kartik kartik@gmail.com kartik123 vebvrgv False 2020-05-06 00:35:25.237333+00:00 2020-05-06 00:35:25.237333+00:00', 3, '', 10, 1),
(37, '2020-05-06 01:28:27.725630', '1', '1 gnfhm gjmg hnghm nfhm mghm False 2020-05-06 01:28:27.702627+00:00 2020-05-06 01:28:27.703627+00:00', 1, '[{\"added\": {}}]', 10, 1),
(38, '2020-05-06 01:28:43.366398', '1', '1 gnfhm gjmg hnghm nfhm mghm False 2020-05-06 01:28:27.702627+00:00 2020-05-06 01:28:27.703627+00:00', 3, '', 10, 1),
(39, '2020-06-08 00:13:43.358237', '2', '2 kartik anejakartik68@gmail.com hdwbf hdbvesbfv True 2020-06-08 00:13:08.486729+00:00 2020-06-08 00:13:43.318830+00:00', 2, '[{\"changed\": {\"fields\": [\"contact_resolved\"]}}]', 10, 1),
(40, '2020-06-08 00:14:04.891875', '2', '2 kartik anejakartik68@gmail.com hdwbf hdbvesbfv True 2020-06-08 00:13:08.486729+00:00 2020-06-08 00:13:43.318830+00:00', 3, '', 10, 1),
(41, '2020-06-08 13:09:54.906910', '3', '3 rajiv anejarealtysince1989@gmail.com Pagal hu Pls send me to hospital as quick as possible False 2020-06-08 13:06:56.117776+00:00 2020-06-08 13:06:56.117776+00:00', 3, '', 10, 1),
(42, '2020-06-08 13:14:06.649981', '4', '4 kartik anejakartik68@gmail.com egcwbc cdwcwcdc False 2020-06-08 13:10:50.637352+00:00 2020-06-08 13:10:50.637352+00:00', 3, '', 10, 1),
(43, '2020-06-12 00:10:35.930341', '9', '9 kartik anejakartik68@gmail.com tell helol1234567 False 2020-06-12 00:06:26.643082+00:00 2020-06-12 00:06:26.643082+00:00', 3, '', 10, 1),
(44, '2020-06-12 00:10:36.008360', '8', '8 kartik anejakartik68@gmail.com hell thryjr False 2020-06-11 21:49:25.203492+00:00 2020-06-11 21:49:25.203492+00:00', 3, '', 10, 1),
(45, '2020-06-12 00:10:36.074385', '7', '7 tryert anejakartik68@gmail.com fffef gregf3rw False 2020-06-08 21:40:10.042862+00:00 2020-06-08 21:40:10.042862+00:00', 3, '', 10, 1),
(46, '2020-06-12 00:10:36.140391', '6', '6 tryert anejakartik68@gmail.com fffef gregf3rw False 2020-06-08 21:39:13.980134+00:00 2020-06-08 21:39:13.980134+00:00', 3, '', 10, 1),
(47, '2020-06-12 00:10:36.174402', '5', '5 yfhyv anejakartik68@gmail.com f45g 4gf4r False 2020-06-08 21:35:22.977001+00:00 2020-06-08 21:35:22.977001+00:00', 3, '', 10, 1),
(48, '2020-06-12 00:30:15.944933', '17', '17 ewget fbgd bdgnb bfxhcxg False 2020-06-12 00:23:19.436071+00:00 2020-06-12 00:23:19.436071+00:00', 3, '', 10, 1),
(49, '2020-06-12 00:30:16.028079', '16', '16 ewget fbgd bdgnb bfxhcxg False 2020-06-12 00:22:26.530379+00:00 2020-06-12 00:22:26.530379+00:00', 3, '', 10, 1),
(50, '2020-06-12 00:30:16.082968', '15', '15 ewget fbgd bdgnb bfxhcxg False 2020-06-12 00:22:14.826037+00:00 2020-06-12 00:22:14.826037+00:00', 3, '', 10, 1),
(51, '2020-06-12 00:30:16.116977', '14', '14 ewget fbgd bdgnb bfxhcxg False 2020-06-12 00:21:59.943060+00:00 2020-06-12 00:21:59.943060+00:00', 3, '', 10, 1),
(52, '2020-06-12 00:30:16.172614', '13', '13 ewget fbgd bdgnb bfxhcxg False 2020-06-12 00:21:49.442946+00:00 2020-06-12 00:21:49.442946+00:00', 3, '', 10, 1),
(53, '2020-06-12 00:30:16.250777', '12', '12 ewget fbgd bdgnb bfxhcxg False 2020-06-12 00:18:09.006511+00:00 2020-06-12 00:18:09.006511+00:00', 3, '', 10, 1),
(54, '2020-06-12 00:30:16.316126', '11', '11 ewget fbgd bdgnb bfxhcxg False 2020-06-12 00:17:52.143151+00:00 2020-06-12 00:17:52.143151+00:00', 3, '', 10, 1),
(55, '2020-06-12 00:30:16.350134', '10', '10 ewget fbgd bdgnb bfxhcxg False 2020-06-12 00:17:39.551605+00:00 2020-06-12 00:17:39.552607+00:00', 3, '', 10, 1),
(56, '2020-06-14 23:19:21.731779', '19', '19 kartik anejakartik68@gmail.com hello hello123 False 2020-06-14 23:17:09.388816+00:00 2020-06-14 23:17:09.388816+00:00', 3, '', 10, 1),
(57, '2020-06-14 23:19:21.817813', '18', '18 kartik anejakartik68@gmail.com hello hello123 False 2020-06-14 23:17:05.212412+00:00 2020-06-14 23:17:05.212412+00:00', 3, '', 10, 1),
(58, '2020-06-15 15:45:30.596745', '13', 'ritesh', 1, '[{\"added\": {}}]', 8, 1),
(59, '2020-06-15 18:31:47.705258', '1', 'Baaghi3', 1, '[{\"added\": {}}]', 11, 1),
(60, '2020-06-15 18:33:24.898719', '1', 'Baaghi3', 3, '', 11, 1),
(61, '2020-06-15 18:38:25.137599', '2', 'Baaghi 3', 1, '[{\"added\": {}}]', 11, 1),
(62, '2020-06-15 18:41:26.147983', '2', 'Baaghi 3', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 11, 1),
(63, '2020-06-15 19:52:39.321565', '2', 'Baaghi 3', 2, '[{\"changed\": {\"fields\": [\"genre\"]}}]', 11, 1),
(64, '2020-06-15 19:54:26.521191', '2', 'Baaghi 3', 2, '[]', 11, 1),
(65, '2020-06-15 19:54:44.311953', '2', 'Baaghi 3', 2, '[{\"changed\": {\"fields\": [\"genre\"]}}]', 11, 1),
(66, '2020-06-15 19:55:47.345739', '2', 'Baaghi 3', 2, '[{\"changed\": {\"fields\": [\"genre\"]}}]', 11, 1),
(67, '2020-06-15 19:56:00.581881', '2', 'Baaghi 3', 2, '[{\"changed\": {\"fields\": [\"genre\"]}}]', 11, 1),
(68, '2020-06-15 20:00:49.443961', '2', 'Baaghi 3', 2, '[]', 11, 1),
(69, '2020-06-15 20:31:56.922396', '3', 'Shubh Mangal Zyada Saavdhan', 1, '[{\"added\": {}}]', 11, 1),
(70, '2020-06-15 20:41:32.756953', '4', 'Gulabo Sitabo', 1, '[{\"added\": {}}]', 11, 1),
(71, '2020-06-15 20:50:44.330362', '5', 'Dolittle', 1, '[{\"added\": {}}]', 11, 1),
(72, '2020-06-16 01:38:21.025378', '6', 'Bloodshot', 1, '[{\"added\": {}}]', 11, 1),
(73, '2020-06-16 13:17:08.683060', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Plac-DELHI', 1, '[{\"added\": {}}]', 13, 1),
(74, '2020-06-16 13:19:03.170258', '2', 'PVR: Logix-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA', 1, '[{\"added\": {}}]', 13, 1),
(75, '2020-06-16 13:20:01.616974', '2', 'PVR: Logix-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA', 2, '[]', 13, 1),
(76, '2020-06-16 13:20:22.614320', '2', 'PVR: Logix-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA', 2, '[]', 13, 1),
(77, '2020-06-16 13:20:27.874149', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Plac-DELHI', 2, '[{\"changed\": {\"fields\": [\"admin_id\"]}}]', 13, 1),
(78, '2020-06-16 19:47:40.545749', '1', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Plac-DELHI-2020-06-18-18:00:00', 1, '[{\"added\": {}}]', 14, 1),
(79, '2020-06-16 22:54:55.271148', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Place-DELHI', 2, '[{\"changed\": {\"fields\": [\"address\"]}}]', 13, 1),
(80, '2020-06-17 00:26:07.003754', '1', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place-DELHI-2020-06-18-18:00:00', 2, '[{\"changed\": {\"fields\": [\"screen\"]}}]', 14, 1),
(81, '2020-06-17 00:26:13.247065', '1', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place-DELHI-2020-06-18-18:00:00', 2, '[{\"changed\": {\"fields\": [\"screen\"]}}]', 14, 1),
(82, '2020-06-17 01:31:39.564332', '1', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place-DELHI-2020-06-18-18:00:00', 3, '', 14, 1),
(83, '2020-06-17 01:39:41.906890', '2', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place-DELHI-2020-06-17-18:00:00', 1, '[{\"added\": {}}]', 14, 1),
(84, '2020-06-17 01:45:10.006538', '2', 'PVR: Logix-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA', 3, '', 13, 1),
(85, '2020-06-17 01:45:10.078544', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Place-DELHI', 3, '', 13, 1),
(86, '2020-06-17 02:33:16.299611', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI', 1, '[{\"added\": {}}]', 13, 1),
(87, '2020-06-17 02:33:50.470192', '1', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-17-18:00:00', 1, '[{\"added\": {}}]', 14, 1),
(88, '2020-06-17 10:56:00.537936', '2', 'WAVE-L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301-NOIDA', 1, '[{\"added\": {}}]', 13, 1),
(89, '2020-06-17 10:56:06.934501', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI', 2, '[{\"changed\": {\"fields\": [\"no_of_screen\"]}}]', 13, 1),
(90, '2020-06-17 10:57:29.136109', '3', 'PVR-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA', 1, '[{\"added\": {}}]', 13, 1),
(91, '2020-06-17 10:58:53.106441', '2', 'WAVE Mall-L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301-NOIDA', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 13, 1),
(92, '2020-06-17 10:59:05.200820', '3', 'PVR LOGIX-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA', 2, '[{\"changed\": {\"fields\": [\"name\"]}}]', 13, 1),
(93, '2020-06-17 11:00:20.232533', '2', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-17-22:00:00', 1, '[{\"added\": {}}]', 14, 1),
(94, '2020-06-17 11:01:02.465039', '3', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-17-17:00:00', 1, '[{\"added\": {}}]', 14, 1),
(95, '2020-06-17 11:01:45.450658', '4', 'Baaghi 3-WAVE Mall-L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301-NOIDA-2020-06-17-18:00:00', 1, '[{\"added\": {}}]', 14, 1),
(96, '2020-06-17 12:26:02.016143', '3', 'PVR LOGIX-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 13, 1),
(97, '2020-06-17 12:26:14.043170', '2', 'WAVE Mall-L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301-NOIDA', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 13, 1),
(98, '2020-06-17 12:26:24.316928', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 13, 1),
(99, '2020-06-17 12:35:01.180142', '2', 'WAVE Mall-L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301-NOIDA', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 13, 1),
(100, '2020-06-17 12:39:08.443588', '3', 'PVR LOGIX-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA', 2, '[{\"changed\": {\"fields\": [\"theatre_link\"]}}]', 13, 1),
(101, '2020-06-17 12:39:34.502660', '2', 'WAVE Mall-L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301-NOIDA', 2, '[{\"changed\": {\"fields\": [\"theatre_link\"]}}]', 13, 1),
(102, '2020-06-17 12:40:04.183887', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI', 2, '[{\"changed\": {\"fields\": [\"theatre_link\"]}}]', 13, 1),
(103, '2020-06-17 13:35:13.196799', '1', 'Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 13, 1),
(104, '2020-06-17 13:36:53.665313', '5', 'Baaghi 3-PVR LOGIX-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA-2020-06-17-20:00:00', 1, '[{\"added\": {}}]', 14, 1),
(105, '2020-06-17 22:41:39.128679', '6', 'Bloodshot', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 11, 1),
(106, '2020-06-17 22:45:35.850212', '5', 'Dolittle', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 11, 1),
(107, '2020-06-17 22:50:16.008367', '3', 'Shubh Mangal Zyada Saavdhan', 2, '[{\"changed\": {\"fields\": [\"image\"]}}]', 11, 1),
(108, '2020-06-18 02:56:38.722145', '1', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-18-18:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(109, '2020-06-18 02:56:44.503095', '2', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-18-22:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(110, '2020-06-18 02:56:49.182503', '3', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-18-17:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(111, '2020-06-18 02:56:55.405840', '5', 'Baaghi 3-PVR LOGIX-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA-2020-06-18-20:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(112, '2020-06-18 02:56:59.689791', '4', 'Baaghi 3-WAVE Mall-L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301-NOIDA-2020-06-18-18:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(113, '2020-06-19 05:21:40.645700', '5', 'Baaghi 3-PVR LOGIX-Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301-NOIDA-2020-06-19-20:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(114, '2020-06-19 05:21:44.680716', '4', 'Baaghi 3-WAVE Mall-L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301-NOIDA-2020-06-19-18:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(115, '2020-06-19 05:22:04.514162', '3', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-19-17:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(116, '2020-06-19 05:22:10.140578', '1', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-19-18:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1),
(117, '2020-06-19 05:22:18.850887', '2', 'Baaghi 3-Inox Cinema-Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019-DELHI-2020-06-19-22:00:00', 2, '[{\"changed\": {\"fields\": [\"date\"]}}]', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(9, 'dashboard', 'contact_request'),
(10, 'dashboard', 'contact_us'),
(11, 'movie', 'movie'),
(12, 'movie', 'theatre'),
(6, 'sessions', 'session'),
(7, 'sites', 'site'),
(14, 'theatre', 'show'),
(13, 'theatre', 'theatre'),
(16, 'ticket', 'booking'),
(15, 'ticket', 'seat'),
(8, 'user', 'customer');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-18 06:18:30.254970'),
(2, 'auth', '0001_initial', '2020-02-18 06:18:32.331746'),
(3, 'admin', '0001_initial', '2020-02-18 06:18:46.840730'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-18 06:18:51.850604'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-18 06:18:52.036645'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-18 06:18:53.019793'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-18 06:18:53.153167'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-18 06:18:53.495089'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-18 06:18:53.616228'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-18 06:18:55.509366'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-18 06:18:55.649212'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-18 06:18:55.894740'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-18 06:18:56.151223'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-18 06:18:56.307470'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-18 06:18:56.490172'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-18 06:18:56.575328'),
(17, 'sessions', '0001_initial', '2020-02-18 06:18:57.233929'),
(18, 'sites', '0001_initial', '2020-02-18 06:18:57.995256'),
(19, 'sites', '0002_alter_domain_unique', '2020-02-18 06:18:58.420449'),
(20, 'user', '0001_initial', '2020-03-07 16:40:34.965381'),
(21, 'user', '0002_auto_20200304_1125', '2020-03-07 16:40:36.404744'),
(22, 'user', '0003_auto_20200304_1430', '2020-03-07 16:40:36.963884'),
(27, 'dashboard', '0001_initial', '2020-05-06 01:27:12.358827'),
(28, 'movie', '0001_initial', '2020-06-15 18:11:16.157422'),
(29, 'movie', '0002_auto_20200616_0045', '2020-06-15 19:15:47.978209'),
(30, 'movie', '0003_auto_20200616_0118', '2020-06-15 19:48:43.283321'),
(31, 'movie', '0004_auto_20200616_0130', '2020-06-15 20:00:32.832873'),
(32, 'movie', '0005_auto_20200616_0157', '2020-06-15 20:28:05.630222'),
(33, 'movie', '0006_auto_20200616_0220', '2020-06-15 20:50:26.158012'),
(34, 'movie', '0007_theatre', '2020-06-16 12:45:07.505099'),
(35, 'movie', '0008_delete_theatre', '2020-06-16 13:10:07.076000'),
(37, 'theatre', '0002_auto_20200616_1845', '2020-06-16 13:16:13.807219'),
(38, 'theatre', '0003_auto_20200616_1917', '2020-06-16 13:47:17.881501'),
(39, 'theatre', '0004_auto_20200617_0040', '2020-06-16 19:11:07.960696'),
(41, 'theatre', '0001_initial', '2020-06-17 02:29:07.632691'),
(42, 'theatre', '0002_theatre_image', '2020-06-17 12:25:34.311672'),
(43, 'theatre', '0003_theatre_theatre_link', '2020-06-17 12:38:22.191705'),
(44, 'ticket', '0001_initial', '2020-06-18 03:27:06.645802'),
(45, 'ticket', '0002_auto_20200618_0931', '2020-06-18 04:01:11.168985'),
(46, 'ticket', '0003_seat_booked_by', '2020-06-18 04:34:56.827305'),
(47, 'ticket', '0004_auto_20200618_1101', '2020-06-18 05:31:53.188853');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('4i3txhiayjp250c6ztnrsa7c9wwk6jgd', 'OGJhOWQzYzNkMzI4ZTg1NDdlZjcyM2JmNzQ0M2ZlZjkyOTQ0MWRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ODBiMDA4ZWIzYThmYmNhNmViMWM5N2EzN2YwNzcxZjRlNDM1M2UyIn0=', '2020-03-03 06:39:05.509546'),
('8pka8duuks4k84td9wnmu5sj2h50u6u5', 'OGJhOWQzYzNkMzI4ZTg1NDdlZjcyM2JmNzQ0M2ZlZjkyOTQ0MWRlMDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI5ODBiMDA4ZWIzYThmYmNhNmViMWM5N2EzN2YwNzcxZjRlNDM1M2UyIn0=', '2020-03-17 09:17:11.562050'),
('9kbgaa8c507l7y49mhd5hh1oiatb2kmr', 'MzAxNDk3NDM0Y2M2MWUyNjVhNjMyOWYxYjFmYmY5Y2ZjMjFjYzE5ZDp7fQ==', '2020-07-02 01:47:00.609312'),
('fpz9zbmqosro1en8y8gi9eyrgnhaopun', 'NWM4Zjg4NDM5NjAzMDgxZTU1NTM5NjU3NzRiNTczMjY0MzE2NDI1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzQ1M2QzODFmYWIzOTc1NGJjNTM2YzYwZWFiZDg3YjAxNjEwNTY3In0=', '2020-07-03 05:20:30.833405'),
('n72gf4u10my83ld9xqh2u8locwnp3yx5', 'NWM4Zjg4NDM5NjAzMDgxZTU1NTM5NjU3NzRiNTczMjY0MzE2NDI1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzQ1M2QzODFmYWIzOTc1NGJjNTM2YzYwZWFiZDg3YjAxNjEwNTY3In0=', '2020-06-26 00:10:16.343437'),
('udawgf7h4hpijthw3bt020kl1ey05t9f', 'NWM4Zjg4NDM5NjAzMDgxZTU1NTM5NjU3NzRiNTczMjY0MzE2NDI1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzQ1M2QzODFmYWIzOTc1NGJjNTM2YzYwZWFiZDg3YjAxNjEwNTY3In0=', '2020-03-25 21:36:28.304170'),
('xyuurotwj5fbm18bqu2xftpml5d0qu9n', 'NWM4Zjg4NDM5NjAzMDgxZTU1NTM5NjU3NzRiNTczMjY0MzE2NDI1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzQ1M2QzODFmYWIzOTc1NGJjNTM2YzYwZWFiZDg3YjAxNjEwNTY3In0=', '2020-05-08 15:43:08.296137'),
('yi2hs8wpnof1ukkz789ga9gsm022skq8', 'NWM4Zjg4NDM5NjAzMDgxZTU1NTM5NjU3NzRiNTczMjY0MzE2NDI1OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjMzQ1M2QzODFmYWIzOTc1NGJjNTM2YzYwZWFiZDg3YjAxNjEwNTY3In0=', '2020-04-17 23:49:53.285642');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE `django_site` (
  `id` int(11) NOT NULL,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `movie_movie`
--

CREATE TABLE `movie_movie` (
  `movie_id` int(11) NOT NULL,
  `name` varchar(35) DEFAULT NULL,
  `cast` varchar(100) DEFAULT NULL,
  `director` varchar(20) DEFAULT NULL,
  `language` varchar(10) NOT NULL,
  `run_length` int(11) DEFAULT NULL,
  `certificate` varchar(2) NOT NULL,
  `popularity_index` int(11) DEFAULT NULL,
  `trailer` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `genre` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie_movie`
--

INSERT INTO `movie_movie` (`movie_id`, `name`, `cast`, `director`, `language`, `run_length`, `certificate`, `popularity_index`, `trailer`, `image`, `genre`) VALUES
(2, 'Baaghi 3', 'Tiger Shroff', 'Ahmed Khan', 'HINDI', 170, 'U', 8, 'https://www.youtube.com/watch?v=jQzDujMzfoU', 'media/images.jpg', 'ACTION'),
(3, 'Shubh Mangal Zyada Saavdhan', 'Ayushman Khurrana', 'Hitesh Kewalya', 'HINDI', 120, 'UA', 6, 'https://www.youtube.com/watch?v=r6r8UYU7Zcs', 'media/SMZS.jpg', 'COMEDY'),
(4, 'Gulabo Sitabo', 'Amitabh Bachchan', 'Shoojit Sircar', 'HINDI', 124, 'U', 7, 'https://www.youtube.com/watch?v=o0qeQ_yHqtA', 'media/gulabo.jpg', 'DRAMA'),
(5, 'Dolittle', 'Robert Downey Junior', 'Stephen Gaghan', 'ENGLISH', 105, 'UA', 6, 'https://www.youtube.com/watch?v=FEf412bSPLs', 'media/dolittle_y7cMgYe.jpg', 'COMEDY'),
(6, 'Bloodshot', 'Vin Disel', 'David S. F. Wilson', 'ENGLISH', 109, 'A', 5, 'https://www.youtube.com/watch?v=vOUVVDWdXbo', 'media/blood_shot_2AZjFGO.jpg', 'ACTION');

-- --------------------------------------------------------

--
-- Table structure for table `theatre_show`
--

CREATE TABLE `theatre_show` (
  `show_id` int(11) NOT NULL,
  `screen` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `movie_id` int(11) NOT NULL,
  `theatre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theatre_show`
--

INSERT INTO `theatre_show` (`show_id`, `screen`, `date`, `time`, `movie_id`, `theatre_id`) VALUES
(1, 1, '2020-06-19', '18:00:00.000000', 2, 1),
(2, 2, '2020-06-19', '22:00:00.000000', 2, 1),
(3, 3, '2020-06-19', '17:00:00.000000', 2, 1),
(4, 1, '2020-06-19', '18:00:00.000000', 2, 2),
(5, 1, '2020-06-19', '20:00:00.000000', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `theatre_theatre`
--

CREATE TABLE `theatre_theatre` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `city` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `no_of_screen` int(11) NOT NULL,
  `admin_id_id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `theatre_link` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theatre_theatre`
--

INSERT INTO `theatre_theatre` (`id`, `name`, `city`, `address`, `no_of_screen`, `admin_id_id`, `image`, `theatre_link`) VALUES
(1, 'Inox Cinema', 'DELHI', 'Tower A, 45, District Centre, Nehru Place, New Delhi, Delhi 110019', 4, 1, 'media/inox_e48SCme.png', 'https://www.inoxmovies.com/'),
(2, 'WAVE Mall', 'NOIDA', 'L1 Nr Radisson Blu Hotel, Pocket J, Sector 18, Noida, Uttar Pradesh 201301', 5, 1, 'media/wave_89WQQYI.png', 'https://www.wavecinemas.com/'),
(3, 'PVR LOGIX', 'NOIDA', 'Logix City Centre BW-58, near Wave City Center, Sector 32, Noida, Uttar Pradesh 201301', 6, 1, 'media/pvr.jpg', 'https://www.pvrcinemas.com/');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_booking`
--

CREATE TABLE `ticket_booking` (
  `id` int(11) NOT NULL,
  `timestamp` datetime(6) DEFAULT NULL,
  `payment_type` varchar(11) NOT NULL,
  `paid_amount` decimal(8,2) DEFAULT NULL,
  `paid_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_booking`
--

INSERT INTO `ticket_booking` (`id`, `timestamp`, `payment_type`, `paid_amount`, `paid_by_id`) VALUES
(1, '2020-06-18 12:34:11.000000', 'Credit Card', '750.00', 1),
(2, '2020-06-18 15:54:47.000000', 'Credit Card', '750.00', 1),
(3, '2020-06-18 16:48:30.000000', 'Credit Card', '750.00', 1),
(4, '2020-06-19 11:02:24.000000', 'Credit Card', '750.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_seat`
--

CREATE TABLE `ticket_seat` (
  `id` int(11) NOT NULL,
  `seat_no` varchar(5) DEFAULT NULL,
  `show_id` int(11) NOT NULL,
  `booked_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_seat`
--

INSERT INTO `ticket_seat` (`id`, `seat_no`, `show_id`, `booked_by_id`) VALUES
(9, '1_2', 1, 1),
(10, '1_3', 1, 1),
(11, '1_4', 1, 1),
(12, '8_1', 1, 1),
(13, '8_2', 1, 1),
(14, '8_3', 1, 1),
(15, '1_4', 2, 1),
(16, '1_5', 2, 1),
(17, '1_6', 2, 1),
(18, '1_6', 1, 1),
(19, '1_8', 1, 1),
(20, '4_6', 1, 1);

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
-- Indexes for table `dashboard_contact_us`
--
ALTER TABLE `dashboard_contact_us`
  ADD PRIMARY KEY (`contact_id`);

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
-- Indexes for table `django_site`
--
ALTER TABLE `django_site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`);

--
-- Indexes for table `movie_movie`
--
ALTER TABLE `movie_movie`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `theatre_show`
--
ALTER TABLE `theatre_show`
  ADD PRIMARY KEY (`show_id`),
  ADD KEY `theatre_show_movie_id_44a38faf_fk_movie_movie_movie_id` (`movie_id`),
  ADD KEY `theatre_show_theatre_id_aa5ac30d_fk_theatre_theatre_id` (`theatre_id`);

--
-- Indexes for table `theatre_theatre`
--
ALTER TABLE `theatre_theatre`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theatre_theatre_admin_id_id_037c0554_fk_auth_user_id` (`admin_id_id`);

--
-- Indexes for table `ticket_booking`
--
ALTER TABLE `ticket_booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_booking_paid_by_id_ba1cd492_fk_auth_user_id` (`paid_by_id`);

--
-- Indexes for table `ticket_seat`
--
ALTER TABLE `ticket_seat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ticket_seat_seat_no_show_id_5ad5e550_uniq` (`seat_no`,`show_id`),
  ADD KEY `ticket_seat_show_id_6761f1b7_fk_theatre_show_show_id` (`show_id`),
  ADD KEY `ticket_seat_booked_by_id_cffc48e3_fk_auth_user_id` (`booked_by_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT for table `dashboard_contact_us`
--
ALTER TABLE `dashboard_contact_us`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `django_site`
--
ALTER TABLE `django_site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `movie_movie`
--
ALTER TABLE `movie_movie`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `theatre_show`
--
ALTER TABLE `theatre_show`
  MODIFY `show_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `theatre_theatre`
--
ALTER TABLE `theatre_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ticket_booking`
--
ALTER TABLE `ticket_booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_seat`
--
ALTER TABLE `ticket_seat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- Constraints for table `theatre_show`
--
ALTER TABLE `theatre_show`
  ADD CONSTRAINT `theatre_show_movie_id_44a38faf_fk_movie_movie_movie_id` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`movie_id`),
  ADD CONSTRAINT `theatre_show_theatre_id_aa5ac30d_fk_theatre_theatre_id` FOREIGN KEY (`theatre_id`) REFERENCES `theatre_theatre` (`id`);

--
-- Constraints for table `theatre_theatre`
--
ALTER TABLE `theatre_theatre`
  ADD CONSTRAINT `theatre_theatre_admin_id_id_037c0554_fk_auth_user_id` FOREIGN KEY (`admin_id_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `ticket_booking`
--
ALTER TABLE `ticket_booking`
  ADD CONSTRAINT `ticket_booking_paid_by_id_ba1cd492_fk_auth_user_id` FOREIGN KEY (`paid_by_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `ticket_seat`
--
ALTER TABLE `ticket_seat`
  ADD CONSTRAINT `ticket_seat_booked_by_id_cffc48e3_fk_auth_user_id` FOREIGN KEY (`booked_by_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `ticket_seat_show_id_6761f1b7_fk_theatre_show_show_id` FOREIGN KEY (`show_id`) REFERENCES `theatre_show` (`show_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
