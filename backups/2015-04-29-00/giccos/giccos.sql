-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2015 at 06:46 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `giccos`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertising_actions`
--

CREATE TABLE IF NOT EXISTS `advertising_actions` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `advertising.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(10) NOT NULL,
  `action` char(10) NOT NULL,
  `location.hostname` varchar(40) DEFAULT NULL,
  `location.port` varchar(40) DEFAULT NULL,
  `location.protocol` char(10) DEFAULT NULL,
  `location.pathname` varchar(255) DEFAULT NULL,
  `location.href` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advertising_id`
--

CREATE TABLE IF NOT EXISTS `advertising_id` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `status` int(1) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `expires` int(11) NOT NULL,
  `version` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `analysis_faces`
--

CREATE TABLE IF NOT EXISTS `analysis_faces` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(10) NOT NULL,
  `user.id` int(11) NOT NULL,
  `uploader.type` char(10) NOT NULL,
  `uploader.id` int(11) NOT NULL,
  `tag` varchar(40) NOT NULL,
  `thumbnail` char(10) NOT NULL,
  `img_index` varchar(20) NOT NULL,
  `confidence` char(6) NOT NULL,
  `eye.left.x` char(6) NOT NULL,
  `eye.left.y` char(6) NOT NULL,
  `eye.right.x` char(6) NOT NULL,
  `eye.right.y` char(6) NOT NULL,
  `nose.x` char(6) NOT NULL,
  `nose.y` char(6) NOT NULL,
  `mouth.tl.x` char(6) NOT NULL,
  `mouth.tl.y` char(6) NOT NULL,
  `mouth.bl.x` char(6) NOT NULL,
  `mouth.bl.y` char(6) NOT NULL,
  `mouth.tr.x` char(6) NOT NULL,
  `mouth.tr.y` char(6) NOT NULL,
  `mouth.br.x` char(6) NOT NULL,
  `mouth.br.y` char(6) NOT NULL,
  `pose.roll` char(6) NOT NULL,
  `pose.yaw` char(6) NOT NULL,
  `pose.pitch` char(6) NOT NULL,
  `race.text` varchar(20) NOT NULL,
  `race.value` char(6) NOT NULL,
  `quality.brn` char(6) NOT NULL,
  `quality.shn` char(6) NOT NULL,
  `emotion.oe.text` varchar(20) NOT NULL,
  `emotion.oe.value` char(6) NOT NULL,
  `emotion.to.text` varchar(20) NOT NULL,
  `emotion.to.value` char(6) NOT NULL,
  `emotion.te.text` varchar(20) NOT NULL,
  `emotion.te.value` char(6) NOT NULL,
  `age` char(6) NOT NULL,
  `smile` char(6) NOT NULL,
  `glasses` char(6) NOT NULL,
  `sunglasses` char(6) NOT NULL,
  `eye_closed` char(6) NOT NULL,
  `mouth_open_wide` char(6) NOT NULL,
  `beauty` char(6) NOT NULL,
  `sex` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis_faces`
--

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `user.id`, `uploader.type`, `uploader.id`, `tag`, `thumbnail`, `img_index`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(1, 1430295675, 1430295675, '1e07fde3', 'e994222e', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '63019bf5', '254198c1', '1', '226.1', '143.7', '363.1', '121.6', '286.6', '229.4', '272.4', '285.7', '272.4', '285.7', '373.3', '270', '373.3', '270', '-8.83', '-31.03', '-11.29', 'asian', '0.98', '0.39', '1', 'surprised', '0.21', '', '0', '', '0', '17.89', '0.76', '0.01', '0', '0', '0.01', '0.6439', '0.08'),
(2, 1430320573, 1430320574, 'b8b58b85', '88ed4b29', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '0be64c4c', '859fe480', '0.98', '368.2', '111.2', '530.1', '130.1', '460.5', '230', '363.2', '307.5', '363.2', '307.5', '474.3', '322.8', '474.3', '322.8', '5.08', '29.94', '-0.04', 'asian', '0.97', '0.38', '1.5', 'happy', '0.1', '', '0', '', '0', '17.82', '0.84', '0.01', '0', '0', '0.01', '0.4904', '0'),
(3, 1430324403, 1430324403, 'af104258', '8ca21b83', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '20799b14', 'fd34506e', '1', '312.3', '125.7', '362.9', '118.7', '351.3', '151.5', '320.6', '180.4', '320.6', '180.4', '369.1', '172.1', '369.1', '172.1', '-9.89', '28.54', '-2.27', 'asian', '1', '0.56', '0.2', 'surprised', '0.01', '', '0', '', '0', '24.48', '0.98', '0', '0', '0.02', '0.34', '0.9186', '0'),
(4, 1430324407, 1430324407, '192d584c', '644ecda1', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '62e57af2', '9d705c90', '1', '119.3', '228.9', '201.5', '254.4', '182.7', '304.3', '89.4', '342', '89.4', '342', '176.8', '360.4', '176.8', '360.4', '14.42', '68.66', '4.21', 'asian', '0.97', '0.55', '1.4', 'sad', '0.03', '', '0', '', '0', '29.67', '0.8', '0', '0', '0', '0.04', '0.7590', '0'),
(5, 1430324411, 1430324411, 'eb8264d1', '05ddbd99', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '2f590ffe', '19c75424', '0.69', '499.7', '171.3', '551.5', '187.6', '507.9', '218.8', '487.5', '231', '487.5', '231', '531.3', '247.7', '531.3', '247.7', '16.16', '-10.46', '-10.25', 'asian', '1', '0.52', '0.3', 'disgust', '0.04', '', '0', '', '0', '11.92', '0.67', '0', '0', '0', '0', '0.8077', '0.01'),
(6, 1430324415, 1430324416, 'f0f4fff9', '6fc97c06', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', 'feca18fb', '114f8240', '0.97', '620.1', '214.2', '678.2', '231.5', '632.9', '249.8', '601.7', '271.9', '601.7', '271.9', '658.1', '289.2', '658.1', '289.2', '18.96', '-10.97', '-1.3', 'white', '0.71', '0.54', '1.2', 'calm', '0.05', '', '0', '', '0', '21.82', '0.99', '1', '0.83', '1', '0', '0.5815', '0'),
(7, 1430325067, 1430325067, 'ded1b73d', '0e665b73', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '7f4b8e1a', 'a16b3493', '1', '275.2', '114.4', '309.6', '118.3', '292', '134.8', '275.5', '148.4', '275.5', '148.4', '304.1', '150.8', '304.1', '150.8', '6.85', '3.8', '-1.79', 'asian', '0.97', '0.42', '0.1', 'sad', '0.01', '', '0', '', '0', '25.48', '0.98', '0', '0', '0', '0.02', '0.8865', '0'),
(8, 1430325072, 1430325072, 'c03b552b', 'dd7e7679', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '35abf509', '3dad8778', '1', '349.8', '235.4', '385.2', '235.7', '363.7', '254.3', '351', '267.6', '351', '267.6', '384.3', '269.1', '384.3', '269.1', '0.67', '-12.6', '-0.25', 'asian', '0.78', '0.43', '0.1', 'surprised', '0.01', '', '0', '', '0', '12.4', '1', '0', '0', '0', '0.01', '0.3346', '0'),
(9, 1430325076, 1430325076, 'ff5f35c2', 'b7fa2bdc', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', 'a8461a5f', 'ee0ac29c', '1', '148.7', '89.9', '184.2', '94.5', '169.3', '109.7', '148', '125', '148', '125', '180.6', '127.8', '180.6', '127.8', '7.26', '21.67', '7.34', 'asian', '0.67', '0.41', '0', 'calm', '0', '', '0', '', '0', '23.31', '1', '0', '0', '0.03', '0.5', '0.6042', '0'),
(10, 1430325080, 1430325081, '90d57592', '0a5b486c', 1, 'user', 1, '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '6e31371c', '', '1', '357.4', '129', '391.6', '129.9', '374.5', '147.7', '357.3', '162', '357.3', '162', '386.2', '163', '386.2', '163', '1.04', '7', '-4.81', 'asian', '0.93', '0.26', '0.1', 'surprised', '0.1', '', '0', '', '0', '20.69', '0.41', '0', '0', '0.93', '0.08', '0.6194', '0');

-- --------------------------------------------------------

--
-- Table structure for table `answers_category`
--

CREATE TABLE IF NOT EXISTS `answers_category` (
  `id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_post`
--

CREATE TABLE IF NOT EXISTS `answers_post` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `question` int(1) NOT NULL,
  `is.author` int(1) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_rate`
--

CREATE TABLE IF NOT EXISTS `answers_rate` (
`id` int(11) NOT NULL,
  `topic.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `value` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answers_topic`
--

CREATE TABLE IF NOT EXISTS `answers_topic` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers_topic`
--

INSERT INTO `answers_topic` (`id`, `time`, `language`, `category`, `title`) VALUES
(28, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/b1fb8e18.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -vf scale=640x360,pad=640:480:0:60:black D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/b1fb8e18.png 2>&1'),
(29, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/f9c8b212.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 640x360 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/f9c8b212.png 2>&1'),
(30, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/65166e79.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/65166e79.png 2>&1'),
(31, 1, '1', 1, 'ffmpeg -itsoffset -15  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/9bb0e980.wmv -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/9bb0e980.png 2>&1'),
(32, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/ebd94d9a.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/ebd94d9a.png 2>&1'),
(33, 1, '1', 1, 'ffmpeg -itsoffset -206  -i D:/XAMPP/htdocs/giccos/storage/cache/videos/f87a9347.mp4 -vcodec mjpeg -vframes 1 -an -f rawvideo -s 720x480 D:/XAMPP/htdocs/giccos/storage/cache/videos/thumbnail/f87a9347.png 2>&1');

-- --------------------------------------------------------

--
-- Table structure for table `cited`
--

CREATE TABLE IF NOT EXISTS `cited` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author` varchar(40) NOT NULL,
  `quote` varchar(255) NOT NULL,
  `photos.id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `time`, `user.id`, `guy.id`) VALUES
(7, 1, 1, 5),
(8, 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `friends_request`
--

CREATE TABLE IF NOT EXISTS `friends_request` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`id` int(11) NOT NULL,
  `language` varchar(40) NOT NULL,
  `code` varchar(2) NOT NULL,
  `note` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `note`) VALUES
(1, 'english', 'en', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `languages_codes`
--

CREATE TABLE IF NOT EXISTS `languages_codes` (
`id` int(11) NOT NULL,
  `country` varchar(2) NOT NULL,
  `code` char(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_codes`
--

INSERT INTO `languages_codes` (`id`, `country`, `code`) VALUES
(1, 'vn', 'vi'),
(2, 'us', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `languages_values`
--

CREATE TABLE IF NOT EXISTS `languages_values` (
`id` int(11) NOT NULL,
  `language` varchar(4) NOT NULL,
  `code` text NOT NULL,
  `text` text NOT NULL,
  `short` char(10) DEFAULT 'false'
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_values`
--

INSERT INTO `languages_values` (`id`, `language`, `code`, `text`, `short`) VALUES
(1, 'en', 'pages_feed.title', 'general :: feed :: giccos', 'false'),
(2, 'en', 'a_few_seconds', 'a few seconds', 'false'),
(3, 'en', 'minutes_ago', 'minutes ago', 'false'),
(4, 'en', 'hours_ago', 'hours ago', 'false'),
(5, 'en', 'days_ago', 'days ago', 'false'),
(6, 'en', 'months_ago', 'months ago', 'false'),
(7, 'en', 'years_ago', 'years ago', 'false'),
(8, 'en', 'weeks_ago', 'weeks ago', 'false'),
(9, 'en', 'private_1_text', 'only me', 'false'),
(10, 'en', 'private_1_tip', 'share only me', 'false'),
(11, 'en', 'private_2_text', 'friends', 'false'),
(12, 'en', 'private_2_tip', 'share with friends', 'false'),
(13, 'en', 'private_3_text', 'all friends', 'false'),
(14, 'en', 'private_3_tip', 'share with all friends', 'false'),
(15, 'en', 'private_4_text', 'public', 'false'),
(16, 'en', 'private_4_tip', 'share public', 'false'),
(17, 'en', 'favorite', 'favorite', 'false'),
(18, 'en', 'unfavorite', 'unfavorite', 'false'),
(19, 'en', 'invite', 'invite', 'false'),
(20, 'en', 'share', 'share', 'false'),
(21, 'en', 'write_a_comment', 'type a comment...', 'false'),
(22, 'en', 'comment', 'comment', 'false'),
(23, 'en', 'comments', 'comments', 'false'),
(24, 'en', 'comment(s)', 'comment(s)', 'false'),
(25, 'en', 'show_more_comments', 'show more comments', 'false'),
(26, 'en', 'status_null_comment', 'status not a comment', 'false'),
(27, 'en', 'groups', 'groups', 'false'),
(28, 'en', 'hashtags', 'hashtags', 'false'),
(29, 'en', 'messages', 'messages', 'false'),
(30, 'en', 'actions_of_friends', 'actions of friends', 'false'),
(31, 'en', 'status_unlimited_comment', 'status unlimited comment', 'false'),
(32, 'en', 'pages_accounts_login.title', 'login :: accounts :: giccos', 'false'),
(33, 'en', 'giccos_accounts', 'giccos accounts', 'false'),
(34, 'en', 'pages_accounts_login.desc', 'one account for all services', 'false'),
(35, 'en', 'login_to_account', 'login to account', 'false'),
(36, 'en', 'about', 'about', 'false'),
(37, 'en', 'privacy', 'privacy', 'false'),
(38, 'en', 'ads', 'ads', 'false'),
(39, 'en', 'developer', 'developer', 'false'),
(40, 'en', 'developers', 'developers', 'false'),
(41, 'en', 'help', 'help', 'false'),
(42, 'en', 'username', 'username', 'false'),
(43, 'en', 'password', 'password', 'false'),
(44, 'en', 'remember_me_next_time', 'remember me next time', 'false'),
(45, 'en', 'login', 'login', 'false'),
(46, 'en', 'register', 'register', 'false'),
(47, 'en', 'forget_password', 'fotget password', 'false'),
(48, 'en', 'username_regex_tip', 'characters: a-z, A-Z, 0-9, ''.'' or ''_''', 'false'),
(49, 'en', 'password_regex_tip', 'characters: a-z, A-Z, 0-9, ''.'' or ''_''', 'false'),
(50, 'en', 'type_username_or_email', 'type username or email', 'false'),
(51, 'en', 'type_password', 'type password', 'false'),
(52, 'en', 'pages_accounts_register.title', 'register :: accounts :: giccos', 'false'),
(53, 'en', 'pages_accounts_register.desc', 'create a new account for all services', 'false'),
(54, 'en', 'type_your_info', 'type your info', 'false'),
(55, 'en', 'checkbox_agree_terms', 'agree to the terms of use', 'false'),
(56, 'en', 'type_username', 'type username', 'false'),
(57, 'en', 'type_email', 'type email', 'false'),
(58, 'en', 'email', 'email', 'false'),
(59, 'en', 're_password', 'repeat password', 'false'),
(61, 'en', 'firstname', 'firstname', 'false'),
(62, 'en', 'lastname', 'lastname', 'false'),
(63, 'en', 'type_firstname', 'type first name', 'false'),
(64, 'en', 'type_lastname', 'type last name', 'false'),
(65, 'en', 'select_days_of_birth', 'select days of birth', 'false'),
(66, 'en', 'select_months_of_birth', 'select months of birth', 'false'),
(67, 'en', 'select_years_of_years', 'select years of years', 'false'),
(68, 'en', 'days', 'days', 'false'),
(69, 'en', 'months', 'months', 'false'),
(70, 'en', 'years', 'years', 'false'),
(71, 'en', 'phone', 'phone', 'false'),
(72, 'en', 'type_phone', 'type phone', 'false'),
(73, 'en', 'gender', 'gender', 'false'),
(74, 'en', 'select_gender', 'select gender', 'false'),
(75, 'en', 'male', 'male', 'false'),
(76, 'en', 'female', 'female', 'false'),
(77, 'en', 'transmission_error', 'transmission error', 'false'),
(78, 'en', 'please_try_agian', 'please try agian', 'false'),
(79, 'en', 'username_is_invalid', 'username is invalid', 'false'),
(80, 'en', 'password_is_invalid', 'password is invalid', 'false'),
(81, 'en', 'username_is_not_found', 'username is not found', 'false'),
(82, 'en', 'password_is_incorrect', 'password is incorrect', 'false'),
(83, 'en', 'remember_return_is_invalid', 'remember return is invalid', 'false'),
(84, 'en', 'please_refresh_page', 'please refresh page', 'false'),
(85, 'en', 'username_is_already_exists', 'username is already exists', 'false'),
(86, 'en', 'email_is_already_exists', 'email is already exists', 'false'),
(87, 'en', 'name_is_invalid', 'name is invalid', 'false'),
(88, 'en', 'gender_is_invalid', 'gender is invalid', 'false'),
(89, 'en', 'birthday_is_invalid', 'birthday is invalid', 'false'),
(90, 'en', 'agree_return_is_invalid', 'agree return is invalid', 'false'),
(91, 'en', 'agree_is_not_check', 'agree terms of use not selected', 'false'),
(92, 'en', 'email_is_invalid', 'email is invalid', 'false'),
(93, 'en', 'phone_is_invalid', 'phone is invalid', 'false'),
(94, 'en', 'repeat_password_is_not_coincide', 'repeat password is not coincide', 'false'),
(96, 'en', 'input_search_placeholder', 'type name of friends, groups or places ...', 'false'),
(97, 'en', 'ads', 'ads', 'false'),
(98, 'en', 'donors', 'donors', 'false'),
(100, 'en', 'suggest', 'suggest', 'false'),
(102, 'en', 'feed', 'feed', 'false'),
(103, 'en', 'bells', 'bells', 'false'),
(104, 'en', 'sending...', 'sending...', 'false'),
(105, 'en', 'from', 'from', 'false'),
(106, 'en', 'system', 'system', 'false'),
(107, 'en', 'error', 'error', 'false'),
(108, 'en', 'comment_is_not_found', 'comment content is not found', 'false'),
(109, 'en', 'status_id_is_invalid', 'status id is invalid', 'false'),
(110, 'en', 'error_in_the_implementation_process', 'error in the implementation process', 'false'),
(111, 'en', 'action_is_not_allowed', 'action is not allowed', 'false'),
(112, 'en', 'action_have_been_implemented', 'action have been implemented', 'false'),
(113, 'en', 'status_is_not_found', 'status is not found', 'false'),
(114, 'en', 'user_is_not_found', 'user is not found', 'false'),
(115, 'en', 'action_is_invalid', 'action is invalid', 'false'),
(116, 'en', 'not_identified', 'not identified', 'false'),
(117, 'en', 'action_is_being_carried_out', 'action is being carried out', 'false'),
(118, 'en', 'click_to_close', 'click to close', 'false'),
(119, 'en', 'january', 'january', 'false'),
(120, 'en', 'february', 'february', 'false'),
(121, 'en', 'march', 'march', 'false'),
(122, 'en', 'april', 'april', 'false'),
(123, 'en', 'may', 'may', 'false'),
(124, 'en', 'june', 'june', 'false'),
(125, 'en', 'july', 'july', 'false'),
(126, 'en', 'december', 'december', 'false'),
(127, 'en', 'august', 'august', 'false'),
(128, 'en', 'september', 'september', 'false'),
(129, 'en', 'october', 'october', 'false'),
(130, 'en', 'november', 'november', 'false'),
(131, 'en', 'monday', 'monday', 'false'),
(132, 'en', 'tuesday', 'tuesday', 'false'),
(133, 'en', 'wednesday', 'wednesday', 'false'),
(134, 'en', 'thursday', 'thursday', 'false'),
(135, 'en', 'friday', 'friday', 'false'),
(136, 'en', 'saturday', 'saturday', 'false'),
(137, 'en', 'sunday', 'sunday', 'false'),
(138, 'en', 'comment_id_is_invalid', 'comment id is invalid', 'false'),
(139, 'en', 'what_are_you_thinking', 'what are you thinking ?', 'false'),
(140, 'en', 'status', 'status', 'false'),
(141, 'en', 'photos', 'photos', 'false'),
(142, 'en', 'music', 'music', 'false'),
(143, 'en', 'videos', 'videos', 'false'),
(144, 'en', 'quote', 'quote', 'false'),
(145, 'en', 'add_friends', 'add friends', 'false'),
(146, 'en', 'add_places', 'add places', 'false'),
(147, 'en', 'add_thoughts', 'add thoughts', 'false'),
(148, 'en', 'with', 'with', 'false'),
(149, 'en', 'in', 'in', 'false'),
(150, 'en', 'places', 'places', 'false'),
(151, 'en', 'description', 'description', 'false'),
(152, 'en', 'information_about_places', 'information about places', 'false'),
(153, 'en', 'town', 'town', 'false'),
(154, 'en', 'at', 'at', 'false'),
(155, 'en', 'where_are_you', 'where are you ?', 'false'),
(156, 'en', 'please_try_later', 'please try later', 'false'),
(157, 'en', 'you_are_join', 'you are join', 'false'),
(159, 'en', 'you_are_used', 'you are used', 'false'),
(160, 'en', 'top_hashtag', 'top hashtag', 'false'),
(161, 'en', 'edited_at', 'edited at', 'false'),
(162, 'en', 'posted_at', 'posted at', 'false'),
(165, 'en', 'who_with_you', 'who with you ?', 'false'),
(166, 'en', 'what_you_feel', 'what you feel ?', 'false'),
(167, 'en', '[feel]happy', 'happy', 'false'),
(168, 'en', '[feel]so_happy', 'so happy', 'false'),
(169, 'en', '[feel]great', 'great', 'false'),
(170, 'en', '[feel]fine', 'fine', 'false'),
(171, 'en', '[feel]inquisitive', 'inquisitive', 'false'),
(172, 'en', '[feel]disturb', 'disturb', 'false'),
(173, 'en', '[feel]despair', 'despair', 'false'),
(174, 'en', '[feel]angry', 'angry', 'false'),
(175, 'en', '[feel]proud', 'proud', 'false'),
(176, 'en', '[feel]empty', 'empty', 'false'),
(177, 'en', '[feel]disgusting', 'disgusting', 'false'),
(178, 'en', '[feel]beneath', 'beneath', 'false'),
(179, 'en', '[feel]scarcely', 'scarcely', 'false'),
(180, 'en', '[feel]shame', 'shame', 'false'),
(181, 'en', '[feel]dirty', 'dirty', 'false'),
(182, 'en', '[feel]fail', 'fail', 'false'),
(183, 'en', '[feel]serenity', 'serenity', 'false'),
(184, 'en', '[feel]sad', 'sad', 'false'),
(185, 'en', '[feel]so_sad', 'so sad', 'false'),
(186, 'en', '[feel]regretful', 'regretful', 'false'),
(187, 'en', '[feel]interesting', 'interesting', 'false'),
(188, 'en', '[feel]not_assured', 'not assured', 'false'),
(189, 'en', 'what_do_you_doing', 'what do you doing ?', 'false'),
(190, 'en', 'upload_photos', 'upload photos', 'false'),
(191, 'en', 'edit_photos', 'edit photos', 'false'),
(192, 'en', 'apply', 'apply', 'false'),
(193, 'en', 'cancel', 'cancel', 'false'),
(194, 'en', 'photos_editor', 'photos editor', 'false'),
(195, 'en', 'filters', 'filters', 'false'),
(196, 'en', 'brightness', 'brightness', 'false'),
(197, 'en', 'contrast', 'contrast', 'false'),
(198, 'en', 'rotate', 'rotate', 'false'),
(199, 'en', 'custom_brightness', 'custom brightness', 'false'),
(200, 'en', 'custom_contrast', 'custom contrast', 'false'),
(201, 'en', 'rotate_left', 'rotate left', 'false'),
(202, 'en', 'rotate_right', 'rotate right', 'false'),
(203, 'en', 'post', 'post', 'false'),
(204, 'en', 'scrapbook', 'scrapbook', 'false'),
(206, 'en', 'name', 'name', 'false'),
(207, 'en', 'default', 'default', 'false'),
(208, 'en', 'life', 'life', 'false'),
(209, 'en', 'upload_videos', 'upload videos', 'false'),
(221, 'en', 'edit_videos', 'edit videos', 'false'),
(222, 'en', 'choose_videos', 'choose videos', 'false'),
(224, 'en', 'upload_music', 'upload music', 'false'),
(225, 'en', 'choose_music', 'choose music', 'false'),
(226, 'en', 'size_limit_per_file', 'size limit per file', 'false'),
(227, 'en', 'author', 'author', 'false'),
(228, 'en', 'quote', 'quote', 'false'),
(229, 'en', 'used_as_background_image', 'used as background image', 'false'),
(230, 'en', 'cited', 'cited', 'false'),
(231, 'en', 'choose_photos', 'choose photos', 'false'),
(232, 'en', 'music_name', 'music name', 'false'),
(233, 'en', 'videos_name', 'videos name', 'false'),
(234, 'en', 'tags', 'tags', 'false'),
(235, 'en', 'separated_by_whitespace', 'separated by whitespace', 'false'),
(236, 'en', 'editor_missing_content', 'editor missing content', 'false'),
(237, 'en', 'media_file_missing_info', 'media file missing info', 'false'),
(238, 'en', 'media', 'media', 'false'),
(240, 'en', 'scrapbook_name', 'scrapbook name', 'false'),
(241, 'en', 'playlist', 'playlist', 'false'),
(242, 'en', 'album', 'album', 'false'),
(243, 'en', 'feel', 'feel', 'false'),
(244, 'en', 'minutes', 'minutes', 'false'),
(245, 'en', 'hours', 'hours', 'false'),
(247, 'en', 'weeks', 'weeks', 'false'),
(250, 'en', 'not_updated', 'not updated', 'false'),
(251, 'en', 'presented_by', 'presented by', 'false'),
(252, 'en', 'null:description_music', 'listen and feel this song', 'false'),
(253, 'en', 'singer', 'singer', 'false'),
(254, 'en', 'null:music_name', 'untitled song', 'false'),
(255, 'en', 'null:videos_name', 'untitled videos', 'false'),
(256, 'en', 'null:description_videos', 'view and comment your thoughts', 'false'),
(258, 'en', 'block', 'block', 'false'),
(259, 'en', 'report', 'report', 'false'),
(260, 'en', 'edit', 'edit', 'false'),
(261, 'en', 'delete', 'delete', 'false'),
(262, 'en', 'remove', 'remove', 'false'),
(263, 'en', 'follow', 'follow', 'false'),
(264, 'en', 'unfollow', 'unfollow', 'false'),
(265, 'en', 'popup', 'popup', 'false'),
(266, 'en', 'link', 'link', 'false'),
(267, 'en', 'not_authorized_to_perform', 'not authorized to perform', 'false'),
(268, 'en', 'status_has_been_removed', 'status has been removed', 'false'),
(269, 'en', 'notification', 'notification', 'false'),
(271, 'en', 'add', 'add', 'false'),
(272, 'en', 'remove', 'remove', 'false'),
(273, 'en', 'accept', 'accept', 'false'),
(274, 'en', 'refuse', 'refuse', 'false'),
(275, 'en', 'send_request', 'send request', 'false'),
(276, 'en', 'refuse_request', 'refuse request', 'false'),
(277, 'en', 'accept_request', 'accept request', 'false'),
(278, 'en', 'remove_request', 'remove request', 'false'),
(279, 'en', 'hide', 'hide', 'false'),
(280, 'en', 'you_can_tell_us', 'you can tell us ?', 'false'),
(281, 'en', 'ask_live_description', 'you need to enter because it will help you to easily find more people around', 'false'),
(282, 'en', 'where_do_you_live', 'where do you live ?', 'false'),
(283, 'en', 'update', 'update', 'false'),
(284, 'en', 'where_do_you_from', 'where do you from?', 'false'),
(285, 'en', 'information_has_been_updated', 'information has been updated', 'false'),
(286, 'en', 'status_has_been_posted', 'status has been posted', 'false'),
(287, 'en', 'type_content_status', 'type content status...', 'false'),
(288, 'en', 'edit_success_status', 'edit success status', 'false'),
(289, 'en', 'confirm', 'confirm', 'false'),
(290, 'en', 'question_remove_status', 'you want to remove status ?', 'false'),
(291, 'en', 'count', 'count', 'false'),
(292, 'en', 'mentioned', 'mentioned', 'false'),
(294, 'en', 'question_block_status', 'you want to block status ?', 'false'),
(296, 'en', 'pages_hashtag.title', 'hashtag :: feed :: giccos', 'false'),
(297, 'en', 'keyword', 'keyword', 'false'),
(298, 'en', 'tag', 'tag', 'false'),
(299, 'en', 'pages_hashtag.quickdescription', 'general status related to', 'false'),
(300, 'en', 'news_feed', 'news feed', 'false'),
(301, 'en', 'pages_feed.quickdescription', 'general status from', 'false'),
(302, 'en', 'family', 'family', 'false'),
(303, 'en', 'family', 'family', 'false'),
(304, 'en', 'friends', 'friends', 'false'),
(305, 'en', 'country', 'country', 'false'),
(306, 'en', 'live', 'live', 'false'),
(307, 'en', 'pages', 'pages', 'false'),
(308, 'en', 'general', 'general', 'false'),
(309, 'en', 'statistic', 'statistic', 'false'),
(310, 'en', 'total', 'total', 'false'),
(311, 'en', 'today', 'today', 'false'),
(312, 'en', 'related_people', 'related people', 'false'),
(313, 'en', 'locations', 'locations', 'false'),
(314, 'en', 'repeats', 'repeats', 'false'),
(315, 'en', 'chatbox', 'chatbox', 'false'),
(316, 'en', 'click_close', 'click to close', 'false'),
(317, 'en', 'click_open', 'click to open', 'false'),
(318, 'en', 'messages_sending', 'messages sending...', 'false'),
(319, 'en', 'type_messages', 'type messages...', 'false'),
(320, 'en', 'drawn_up_for_update', 'drawn up for updates', 'false'),
(321, 'en', 'new_status', 'new status', 'false'),
(322, 'en', 'status_are_selected', 'status are selected', 'false'),
(323, 'en', 'pages_status.title', 'status :: feed :: giccos', 'false'),
(324, 'en', 'status_not_found', 'status not found', 'false'),
(325, 'en', 'pages_status.quickdescription.notfound', 'sorry, we could not find the status of your request', 'false'),
(326, 'en', 'pages_status.quickdescription.notfound.more', 'could it have been hidden away for privacy', 'false'),
(327, 'en', 'console.warning_text', 'the use of the console could help other people to steal your account. Please do not make the code or any action here', 'false'),
(328, 'en', 'console.warning_text_from', 'warning from Giccos', 'false'),
(329, 'en', 'console.warning_text_contact', 'if you detect security flaws or problems that the system, please contact us', 'false'),
(330, 'en', 'please_use_hashtag_on_status', 'please use hashtag on status', 'false'),
(331, 'en', 'others', 'other(s)', 'false'),
(332, 'en', 'conversation_with', 'conversation with', 'false'),
(333, 'en', 'typing', 'typing', 'false'),
(334, 'en', 'seen_by', 'seen by', 'false'),
(336, 'en', 'push.time_ago', 'ago', 'false'),
(337, 'en', 'seen', 'seen', 'false'),
(338, 'en', 'by', 'by', 'false'),
(339, 'en', 'and', 'and', 'false'),
(340, 'en', 'press_enter_to_send', 'press enter to send', 'false'),
(341, 'en', 'send', 'send', 'false'),
(342, 'en', 'type_a_messages', 'type a messages...', 'false'),
(343, 'en', 'select_photos', 'select photos', 'false'),
(344, 'en', 'select_music', 'select music', 'false'),
(345, 'en', 'select_videos', 'select videos', 'false'),
(346, 'en', 'explorer', 'explorer', 'false'),
(347, 'en', 'save_at', 'save at', 'false'),
(348, 'en', 'explorer', 'explorer', 'false'),
(349, 'en', 'loading_data', 'loading data', 'false'),
(350, 'en', 'please_wait', 'please wait', 'false'),
(351, 'en', 'undefined', 'undefined', 'false'),
(352, 'en', 'data_storage_empty', 'data storage is empty', 'false'),
(353, 'en', 'file_info', 'file info', 'false'),
(354, 'en', 'some_action_is_not_completed', 'some action is not completed', 'false'),
(355, 'en', 'a_few_seconds', 'new', 'true'),
(356, 'en', 'minutes_ago', 'mins', 'true'),
(357, 'en', 'hours_ago', 'hrs', 'true'),
(358, 'en', 'days_ago', 'd', 'true'),
(359, 'en', 'weeks_ago', 'w', 'true'),
(360, 'en', 'months_ago', 'M', 'true'),
(361, 'en', 'years_ago', 'y', 'true'),
(362, 'en', 'continue', 'continue', 'false'),
(363, 'en', 'question_media_continue', 'do you want continue to play at', 'false'),
(364, 'en', 'question_photosEditor_close', 'you want to apply effects before exiting ?', 'false'),
(365, 'en', 'activity_from_friends', 'activity from friends', 'false'),
(366, 'en', 'weather', 'weather', 'false'),
(369, 'en', 'monday', 'mon', 'true'),
(370, 'en', 'tuesday', 'tue', 'true'),
(371, 'en', 'wednesday', 'wed', 'true'),
(372, 'en', 'thursday', 'thu', 'true'),
(373, 'en', 'friday', 'fri', 'true'),
(374, 'en', 'saturday', 'sat', 'true'),
(375, 'en', 'sunday', 'sun', 'true'),
(376, 'en', 'wind', 'wind', 'false'),
(377, 'en', 'atmosphere', 'atmosphere', 'false'),
(378, 'en', 'direction', 'direction', 'false'),
(379, 'en', 'speed', 'speed', 'false'),
(380, 'en', 'humidity', 'humidity', 'false'),
(381, 'en', 'pressure', 'pressure', 'false'),
(382, 'en', 'temperature', 'temperature', 'false'),
(386, 'en', 'places_may_visit', 'places may visit', 'false'),
(387, 'en', 'group_may_join', 'group may join', 'false'),
(388, 'en', 'people_may_know', 'people may know', 'false'),
(389, 'en', 'pages_may_subscribe', 'pages may subscribe', 'false'),
(390, 'en', 'time', 'time', 'false'),
(391, 'en', 'update_at', 'update at', 'false'),
(392, 'en', 'automatically_pulled_down', 'automatically pulled down', 'false'),
(393, 'en', 'scrolldown_seen_messages', 'new messages, scroll down to seen', 'false'),
(394, 'en', 'weather_data_are_not_available', 'weather data are not available', 'false'),
(395, 'en', 'load_more', 'load more', 'false'),
(396, 'en', 'share_this_status', 'share this status', 'false'),
(397, 'en', 'feelings_about_it', 'your feelings about it', 'false'),
(398, 'en', 'done', 'done', 'false'),
(399, 'en', 'type_name_your_friends', 'type name your friends', 'false'),
(400, 'en', 'invite_your_friends', 'invite your friends', 'false'),
(401, 'en', 'pages_accounts.span', 'giccos accounts', 'false'),
(402, 'en', 'pages_loading.title', '... :: loading :: giccos', 'false'),
(403, 'en', 'write_by', 'write by', 'false'),
(404, 'en', 'pages_wall.title', 'wall :: giccos', 'false'),
(405, 'en', 'verified', 'verified', 'false'),
(406, 'en', 'timeline', 'timeline', 'false'),
(407, 'en', 'info', 'info', 'false'),
(408, 'en', 'more', 'more', 'false'),
(409, 'en', 'wall_desc_timeline', 'Timeline of _____. The status updated by _____.', 'false'),
(410, 'en', 'wall_desc_photos', 'gallery of _____. The photos updated by _____.', 'false'),
(411, 'en', 'wall_desc_friends', 'friends of _____.', 'false'),
(412, 'en', 'wall_desc_about', 'about of _____.', 'false'),
(413, 'en', 'wall_desc_music', 'music of _____. The music updated by _____.', 'false'),
(414, 'en', 'wall_desc_videos', 'videos of _____. The videos updated by _____.', 'false'),
(415, 'en', 'wall_desc_places', 'places visited by _____. The places checkin by _____.', 'false'),
(416, 'en', 'workplaces', 'workplaces', 'false'),
(417, 'en', 'education', 'education', 'false'),
(418, 'en', 'introduction', 'introduction', 'false'),
(419, 'en', 'contact', 'contact', 'false'),
(420, 'en', 'slogan', 'slogan', 'false'),
(421, 'en', 'wall_info_introduction_null', '_____ has not updated the introduction.', 'false'),
(422, 'en', 'wall_info_about_null', '_____ has not updated the infomation.', 'false'),
(423, 'en', 'wall_info_contact_null', '_____ has not updated the contact.', 'false'),
(424, 'en', 'nickname', 'nickname', 'false'),
(425, 'en', 'user', 'user', 'false'),
(426, 'en', 'language', 'language', 'false'),
(427, 'en', 'language_en', 'english', 'false'),
(428, 'en', 'language_vi', 'vietnamese', 'false'),
(429, 'en', 'gender_1', 'male', 'false'),
(430, 'en', 'gender_2', 'female', 'false'),
(431, 'en', 'interest', 'interest', 'false'),
(432, 'en', 'relationship', 'relationship', 'false'),
(433, 'en', 'relationship_0', 'not disclosed', 'false'),
(434, 'en', 'relationship_1', 'single', 'false'),
(435, 'en', 'relationship_2', 'datting', 'false'),
(436, 'en', 'relationship_3', 'got married', 'false'),
(437, 'en', 'relationship_4', 'complex', 'false'),
(438, 'en', 'relationship_5', 'an open relationship', 'false'),
(439, 'en', 'birthday', 'birthday', 'false'),
(440, 'en', 'format', 'format', 'false'),
(441, 'en', 'wall_info_places_null', '_____ has not updated the living and country.', 'false'),
(442, 'en', 'country_like_living', 'location _____''s living.', 'false'),
(443, 'en', 'you_have_not_joined_any_groups', 'you have not joined any groups', 'false'),
(444, 'en', 'wall_info_education_null', '_____ has not updated the level of education.', 'false'),
(445, 'en', 'wall_info_workplaces_null', '_____ has not updated the jobs and workplaces.', 'false'),
(446, 'en', 'unknown_coordinates', 'unknown coordinates', 'false'),
(447, 'en', 'work', 'work', 'false'),
(448, 'en', 'home', 'home', 'false'),
(449, 'en', 'unknown', 'unknown', 'false'),
(450, 'en', 'now', 'now', 'false'),
(451, 'en', 'address', 'address', 'false'),
(452, 'en', 'awards', 'awards', 'false'),
(453, 'en', 'all_friends', 'all friends', 'false'),
(456, 'en', 'mutual_friends', 'mutual friends', 'false'),
(457, 'en', 'school', 'school', 'false'),
(458, 'en', 'request_is_invalid', 'request is invalid', 'false'),
(459, 'en', 'remove_friends', 'remove friends', 'false'),
(460, 'en', 'you', 'you', 'false'),
(461, 'en', 'cancel_request', 'cancel request', 'false'),
(462, 'en', 'send_request_success', 'send request add friends', 'false'),
(463, 'en', 'cancel_request_success', 'canceled request add friends', 'false'),
(464, 'en', 'remove_friends_success', 'removed this user from friends list', 'false'),
(465, 'en', 'add_friends_success', 'added this user from friends list', 'false'),
(466, 'en', 'refuse_friends_success', 'refused request from this user', 'false'),
(467, 'en', 'pull_up_for_updates', 'pull up for updates', 'false'),
(468, 'en', 'dead', 'dead', 'false'),
(469, 'en', 'user_have_not_friends', 'friends do not find this person', 'false'),
(470, 'en', 'timeline_is_null', 'timeline of _____''s empty', 'false'),
(471, 'en', 'yesterday', 'yesterday', 'false'),
(472, 'en', 'last_week', 'last week', 'false'),
(473, 'en', 'about_a_minute_ago', 'about a minute ago', 'false'),
(474, 'en', 'feeling', 'feeling', 'false'),
(475, 'en', 'comment_sent_successfully', 'comment has been sent successfully', 'false'),
(476, 'en', 'status_follow_add_success', 'has subscribed information from status', 'false'),
(477, 'en', 'status_follow_remove_success', 'has unsubscribe information from status', 'false'),
(478, 'en', 'pages_time.title', 'time :: feed :: giccos', 'false'),
(480, 'en', 'time_custom', 'time custom', 'false'),
(481, 'en', 'seconds', 'seconds', 'false'),
(482, 'en', 'to', 'to', 'false'),
(483, 'en', 'request', 'request', 'false'),
(484, 'en', 'go_to_page', 'go to page', 'false'),
(485, 'en', 'do_you_want_redirect_page', 'do you want to redirect the page', 'false'),
(486, 'en', 'agree', 'agree', 'false'),
(487, 'en', 'pages_photos_picture.title', 'picture :: photos :: giccos', 'false'),
(488, 'en', 'related_content', 'related content', 'false'),
(489, 'en', 'information', 'information', 'false'),
(490, 'en', 'not_found', 'not found', 'false'),
(491, 'en', 'oops_description_notfound', 'Web page you are looking for does not exist or has been deleted or blocked by managers', 'false'),
(492, 'en', 'oops_error_notfound', 'error#404', 'false'),
(493, 'en', 'level', 'level', 'false'),
(494, 'en', 'click_to_edit', 'click to edit', 'false'),
(495, 'en', 'addons_updating', 'add-ons updating', 'false'),
(496, 'en', 'inFeeds_null_notify_text', 'there are currently no status on feed', 'false'),
(497, 'en', 'inFeeds_null_title_text', 'empty contents', 'false'),
(498, 'en', 'warning', 'warning', 'false'),
(499, 'en', 'status_display_with_link', 'status show only those with link', 'false'),
(500, 'en', 'private_0_tip', 'those with link', 'false'),
(501, 'en', 'private_0_text', 'link', 'false'),
(502, 'en', 'sponsored', 'sponsored', 'false'),
(503, 'en', 'you_may_need', 'you may need', 'false'),
(504, 'en', 'you_may_want_watch', 'you may want watch', 'false'),
(505, 'en', 'views', 'views', 'false'),
(507, 'en', 'videos_watch_views_description', 'total {_viewstotal_} views. {_viewsmonth_} people have viewed this month, {_viewstoday_} people watching today and {_viewsnow_} viewing now.', 'false'),
(508, 'en', 'statistical_views', 'statistical views', 'false'),
(509, 'en', 'statistical_share', 'statistical share', 'false'),
(510, 'en', 'videos_watch_share_description', 'total {_sharetotal_} shared. {_shareingiccos_} people shared on Giccos and {_shareinother_} people shared on other sites.', 'false'),
(511, 'en', 'login_interact_this_author', 'login to interact with this author', 'false'),
(512, 'en', 'time_upload', 'time upload', 'false'),
(513, 'en', 'description_not_updated', 'description has not updated', 'false'),
(514, 'en', 'duration', 'duration', 'false'),
(515, 'en', 'reply_comment', 'reply comment', 'false'),
(516, 'en', 'reply', 'reply', 'false'),
(517, 'en', 'tag_photos', 'tag photos', 'false'),
(518, 'en', 'photos_tag', 'photos tag', 'false'),
(519, 'en', 'who_is_it', 'who is it ?', 'false'),
(520, 'en', 'PhotosEditorPopup_footer_text', 'PhotosEditor &copy; Giccos', 'false'),
(521, 'en', 'Explorer_footer_text', 'Explorer &copy; Giccos', 'false'),
(522, 'en', 'PhotosTagPopup_footer_text', 'PhotosTag &copy; Giccos', 'false'),
(523, 'en', 'question_photosTag_close', 'do you want close it ?', 'false'),
(524, 'en', 'data_processing', 'data processing', 'false'),
(525, 'en', 'remove_from_list', 'remove from list', 'false'),
(526, 'en', 'remove_photos', 'remove photos', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `logs_actions`
--

CREATE TABLE IF NOT EXISTS `logs_actions` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `things` varchar(20) NOT NULL,
  `things.id` int(11) NOT NULL,
  `obj` varchar(20) NOT NULL,
  `obj.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES
(16, 1423880117, 'user', 1, 'favorite', 'status', 176, '', 0),
(17, 1423880133, 'user', 1, 'add', 'status', 176, 'comment', 42),
(18, 1423880144, 'user', 1, 'unfavorite', 'status', 176, '', 0),
(19, 1423880151, 'user', 1, 'favorite', 'status_comment', 42, '', 0),
(20, 1423881486, 'user', 1, 'add', '', 0, 'status', 177),
(21, 1423882595, 'user', 1, 'add', '', 0, 'status', 178),
(22, 1423883226, 'user', 1, 'share', 'status', 177, 'status', 179),
(23, 1423895622, 'user', 1, 'remove', 'status', 178, '', 0),
(24, 1423895622, 'user', 1, 'remove', 'status', 177, '', 0),
(25, 1424152523, 'user', 1, 'add', '', 0, 'status', 180),
(26, 1424152546, 'user', 1, 'add', '', 0, 'status', 181),
(27, 1425881753, 'user', 1, 'add', '', 0, 'status', 182),
(28, 1425881932, 'user', 1, 'remove', 'status', 182, '', 0),
(29, 1425881940, 'user', 1, 'add', '', 0, 'status', 183),
(30, 1425883240, 'user', 1, 'add', '', 0, 'status', 184),
(31, 1425883278, 'user', 1, 'remove', 'status', 184, '', 0),
(32, 1425883280, 'user', 1, 'remove', 'status', 183, '', 0),
(33, 1426131205, 'user', 1, 'add', '', 0, 'status', 182),
(34, 1426131508, 'user', 1, 'add', '', 0, 'status', 183),
(35, 1426158301, 'user', 1, 'add', '', 0, 'status', 184),
(36, 1426766917, 'user', 1, 'add', '', 0, 'status', 185),
(37, 1426767162, 'user', 1, 'remove', 'status', 185, '', 0),
(38, 1426767175, 'user', 1, 'add', '', 0, 'status', 186),
(39, 1426767526, 'user', 1, 'remove', 'status', 186, '', 0),
(40, 1426767530, 'user', 1, 'remove', 'status', 184, '', 0),
(41, 1426768696, 'user', 1, 'add', '', 0, 'status', 187),
(42, 1426769239, 'user', 1, 'add', '', 0, 'status', 188),
(43, 1426769647, 'user', 1, 'add', '', 0, 'status', 189),
(44, 1426770047, 'user', 1, 'remove', 'status', 189, '', 0),
(45, 1426770050, 'user', 1, 'remove', 'status', 188, '', 0),
(46, 1426770053, 'user', 1, 'remove', 'status', 187, '', 0),
(47, 1426770075, 'user', 1, 'add', '', 0, 'status', 190),
(48, 1426770106, 'user', 1, 'add', '', 0, 'status', 191),
(49, 1426770144, 'user', 1, 'remove', 'status', 191, '', 0),
(50, 1426770157, 'user', 1, 'add', '', 0, 'status', 192),
(51, 1426770196, 'user', 1, 'remove', 'status', 192, '', 0),
(52, 1426770908, 'user', 1, 'add', '', 0, 'status', 193),
(53, 1426836364, 'user', 1, 'add', '', 0, 'status', 194),
(54, 1426837403, 'user', 1, 'add', '', 0, 'status', 195),
(55, 1426837467, 'user', 1, 'remove', 'status', 195, '', 0),
(56, 1426837483, 'user', 1, 'add', '', 0, 'status', 196),
(57, 1426837531, 'user', 1, 'add', '', 0, 'status', 197),
(58, 1426837535, 'user', 1, 'remove', 'status', 197, '', 0),
(59, 1426928323, 'user', 1, 'remove', 'status', 196, '', 0),
(60, 1426928325, 'user', 1, 'remove', 'status', 194, '', 0),
(61, 1426928358, 'user', 1, 'add', '', 0, 'status', 197),
(62, 1427007059, 'user', 1, 'share', 'status', 167, 'status', 198),
(63, 1427183228, 'user', 1, 'add', '', 0, 'status', 199),
(64, 1427526748, 'user', 1, 'add', '', 0, 'status', 200),
(65, 1427527136, 'user', 1, 'add', '', 0, 'status', 201),
(66, 1427527174, 'user', 1, 'remove', 'status', 201, '', 0),
(67, 1427527176, 'user', 1, 'add', '', 0, 'status', 202),
(68, 1427527214, 'user', 1, 'remove', 'status', 202, '', 0),
(69, 1427559940, 'user', 1, 'add', '', 0, 'status', 203),
(70, 1427559940, 'user', 1, 'add', '', 0, 'status', 204),
(71, 1427559962, 'user', 1, 'add', '', 0, 'status', 205),
(72, 1427559972, 'user', 1, 'add', '', 0, 'status', 206),
(73, 1427559980, 'user', 1, 'remove', 'status', 206, '', 0),
(74, 1427559982, 'user', 1, 'remove', 'status', 205, '', 0),
(75, 1427559984, 'user', 1, 'remove', 'status', 204, '', 0),
(76, 1427559986, 'user', 1, 'remove', 'status', 203, '', 0),
(77, 1427559988, 'user', 1, 'remove', 'status', 200, '', 0),
(78, 1427559991, 'user', 1, 'add', '', 0, 'status', 207),
(79, 1427560152, 'user', 1, 'add', '', 0, 'status', 208),
(80, 1427560212, 'user', 1, 'remove', 'status', 208, '', 0),
(81, 1427560233, 'user', 1, 'add', '', 0, 'status', 209),
(82, 1427560297, 'user', 1, 'remove', 'status', 209, '', 0),
(83, 1427560400, 'user', 1, 'remove', 'status', 210, '', 0),
(84, 1427560592, 'user', 1, 'remove', 'status', 211, '', 0),
(85, 1427560602, 'user', 1, 'add', '', 0, 'status', 212),
(86, 1427560609, 'user', 1, 'remove', 'status', 212, '', 0),
(87, 1427560667, 'user', 1, 'add', '', 0, 'status', 213),
(88, 1427638082, 'user', 1, 'add', '', 0, 'status', 214),
(89, 1427638156, 'user', 1, 'add', '', 0, 'status', 215),
(90, 1427638244, 'user', 1, 'remove', 'status', 214, '', 0),
(91, 1427638247, 'user', 1, 'remove', 'status', 215, '', 0),
(92, 1427638250, 'user', 1, 'remove', 'status', 213, '', 0),
(93, 1427639656, 'user', 1, 'add', '', 0, 'status', 216),
(94, 1427639662, 'user', 1, 'add', '', 0, 'status', 217),
(95, 1427639716, 'user', 1, 'remove', 'status', 217, '', 0),
(96, 1427639753, 'user', 1, 'add', '', 0, 'status', 218),
(97, 1427639814, 'user', 1, 'remove', 'status', 218, '', 0),
(98, 1427639831, 'user', 1, 'remove', 'status', 216, '', 0),
(99, 1427639896, 'user', 1, 'remove', 'status', 219, '', 0),
(100, 1427640018, 'user', 1, 'add', '', 0, 'status', 220),
(101, 1427640037, 'user', 1, 'add', '', 0, 'status', 221),
(102, 1427640046, 'user', 1, 'remove', 'status', 221, '', 0),
(103, 1427640313, 'user', 1, 'remove', 'status', 220, '', 0),
(104, 1427640344, 'user', 1, 'add', '', 0, 'status', 222),
(105, 1427640356, 'user', 1, 'remove', 'status', 222, '', 0),
(106, 1427640422, 'user', 1, 'add', '', 0, 'status', 223),
(107, 1427640429, 'user', 1, 'remove', 'status', 223, '', 0),
(108, 1427640464, 'user', 1, 'add', '', 0, 'status', 224),
(109, 1427720534, 'user', 1, 'edit', 'status', 224, '', 0),
(110, 1427720547, 'user', 1, 'edit', 'status', 224, '', 0),
(111, 1427809370, 'user', 1, 'remove', 'status', 199, '', 0),
(112, 1428414267, 'user', 1, 'add', 'status', 224, 'comment', 43),
(113, 1428586404, 'user', 1, 'add', '', 0, 'status', 225),
(114, 1428586404, 'user', 1, 'add', '', 0, 'status', 226),
(115, 1428586482, 'user', 1, 'remove', 'status', 226, '', 0),
(116, 1428586487, 'user', 1, 'remove', 'status', 225, '', 0),
(117, 1428586499, 'user', 1, 'add', '', 0, 'status', 227),
(118, 1428586523, 'user', 1, 'remove', 'status', 227, '', 0),
(119, 1428586533, 'user', 1, 'add', '', 0, 'status', 228),
(120, 1428587809, 'user', 1, 'remove', 'status', 228, '', 0),
(121, 1428587827, 'user', 1, 'add', '', 0, 'status', 229),
(122, 1428588381, 'user', 1, 'remove', 'status', 229, '', 0),
(123, 1428588393, 'user', 1, 'add', '', 0, 'status', 230),
(124, 1428590627, 'user', 1, 'add', '', 0, 'status', 231),
(125, 1428590750, 'user', 1, 'remove', 'status', 231, '', 0),
(126, 1428590759, 'user', 1, 'add', '', 0, 'status', 232),
(127, 1428591008, 'user', 1, 'remove', 'status', 232, '', 0),
(128, 1428591026, 'user', 1, 'add', '', 0, 'status', 233),
(129, 1428654339, 'user', 1, 'add', '', 0, 'status', 234),
(130, 1428654413, 'user', 1, 'remove', 'status', 234, '', 0),
(131, 1428654453, 'user', 1, 'add', '', 0, 'status', 235),
(132, 1428654590, 'user', 1, 'add', '', 0, 'status', 236),
(133, 1428655330, 'user', 1, 'remove', 'status', 236, '', 0),
(134, 1428655447, 'user', 1, 'add', '', 0, 'status', 237),
(135, 1428655653, 'user', 1, 'add', '', 0, 'status', 238),
(136, 1428655700, 'user', 1, 'remove', 'status', 238, '', 0),
(137, 1428655709, 'user', 1, 'remove', 'status', 237, '', 0),
(138, 1428655723, 'user', 1, 'add', '', 0, 'status', 239),
(139, 1428655799, 'user', 1, 'remove', 'status', 239, '', 0),
(140, 1428655948, 'user', 1, 'remove', 'status', 235, '', 0),
(141, 1428655971, 'user', 1, 'add', '', 0, 'status', 240),
(142, 1428656102, 'user', 1, 'add', '', 0, 'status', 241),
(143, 1428656137, 'user', 1, 'add', '', 0, 'status', 242),
(144, 1428656156, 'user', 1, 'add', '', 0, 'status', 243),
(145, 1428742983, 'user', 1, 'remove', 'status', 244, '', 0),
(146, 1428743055, 'user', 1, 'remove', 'status', 245, '', 0),
(147, 1428743194, 'user', 1, 'remove', 'status', 246, '', 0),
(148, 1428743200, 'user', 1, 'add', '', 0, 'status', 247),
(149, 1428765105, 'user', 1, 'add', '', 0, 'status', 248),
(150, 1428766048, 'user', 1, 'add', '', 0, 'status', 249),
(151, 1428766189, 'user', 1, 'add', '', 0, 'status', 250),
(152, 1428766505, 'user', 1, 'add', '', 0, 'status', 251),
(153, 1428766543, 'user', 1, 'add', '', 0, 'status', 252),
(154, 1428766576, 'user', 1, 'add', '', 0, 'status', 253),
(155, 1428766602, 'user', 1, 'add', '', 0, 'status', 254),
(156, 1428766792, 'user', 1, 'add', '', 0, 'status', 255),
(157, 1428766809, 'user', 1, 'add', '', 0, 'status', 256),
(158, 1428766858, 'user', 1, 'add', '', 0, 'status', 257),
(159, 1428766893, 'user', 1, 'add', '', 0, 'status', 258),
(160, 1428767174, 'user', 1, 'add', '', 0, 'status', 259),
(161, 1428769621, 'user', 1, 'add', '', 0, 'status', 260),
(162, 1428821429, 'user', 1, 'add', '', 0, 'status', 261),
(163, 1428932551, 'user', 2, 'add', '', 0, 'status', 1),
(164, 1429187371, 'user', 1, 'add', '', 0, 'status', 2),
(165, 1429187801, 'user', 1, 'remove', 'status', 2, '', 0),
(166, 1429188004, 'user', 1, 'add', '', 0, 'status', 3),
(167, 1429188222, 'user', 1, 'remove', 'status', 3, '', 0),
(168, 1429188230, 'user', 1, 'add', '', 0, 'status', 4),
(169, 1429188299, 'user', 1, 'remove', 'status', 4, '', 0),
(170, 1429188382, 'user', 1, 'add', '', 0, 'status', 5),
(171, 1429188422, 'user', 1, 'remove', 'status', 5, '', 0),
(172, 1429188427, 'user', 1, 'add', '', 0, 'status', 6),
(173, 1429188453, 'user', 1, 'remove', 'status', 6, '', 0),
(174, 1429188459, 'user', 1, 'add', '', 0, 'status', 7),
(175, 1429188476, 'user', 1, 'add', '', 0, 'status', 8),
(176, 1429188554, 'user', 1, 'add', '', 0, 'status', 9),
(177, 1429188595, 'user', 1, 'remove', 'status', 9, '', 0),
(178, 1429188597, 'user', 1, 'remove', 'status', 8, '', 0),
(179, 1429188605, 'user', 1, 'remove', 'status', 7, '', 0),
(180, 1429188615, 'user', 1, 'add', '', 0, 'status', 10),
(181, 1429188846, 'user', 1, 'remove', 'status', 10, '', 0),
(182, 1429188887, 'user', 1, 'remove', 'status', 11, '', 0),
(183, 1429188896, 'user', 1, 'add', '', 0, 'status', 12),
(184, 1429188896, 'user', 1, 'add', '', 0, 'status', 13),
(185, 1429189798, 'user', 1, 'remove', 'status', 13, '', 0),
(186, 1429189803, 'user', 1, 'remove', 'status', 12, '', 0),
(187, 1429189934, 'user', 1, 'add', '', 0, 'status', 14),
(188, 1429189934, 'user', 1, 'add', '', 0, 'status', 15),
(189, 1429189971, 'user', 1, 'add', '', 0, 'status', 16),
(190, 1429190001, 'user', 1, 'add', '', 0, 'status', 17),
(191, 1429190446, 'user', 1, 'add', '', 0, 'status', 1),
(192, 1429192118, 'user', 1, 'add', '', 0, 'status', 2),
(193, 1429192337, 'user', 1, 'remove', 'status', 2, '', 0),
(194, 1429192377, 'user', 1, 'add', '', 0, 'status', 3),
(195, 1429279357, 'user', 1, 'add', '', 0, 'status', 4),
(196, 1429365563, 'user', 1, 'add', '', 0, 'status', 5),
(197, 1429365787, 'user', 1, 'add', '', 0, 'status', 6),
(198, 1429365850, 'user', 1, 'remove', 'status', 6, '', 0),
(199, 1429365875, 'user', 1, 'add', '', 0, 'status', 7),
(200, 1429365908, 'user', 1, 'remove', 'status', 5, '', 0),
(201, 1429379220, 'user', 1, 'add', '', 0, 'status', 8),
(202, 1429713683, 'user', 1, 'add', 'status', 7, 'comment', 1),
(203, 1429713688, 'user', 1, 'favorite', 'status_comment', 1, '', 0),
(204, 1429713689, 'user', 1, 'unfavorite', 'status_comment', 1, '', 0),
(205, 1429796175, 'user', 1, 'add', 'status', 8, 'comment', 2),
(206, 1429796482, 'user', 1, 'add', 'status', 8, 'comment', 3),
(207, 1429974337, 'user', 1, 'add', '', 0, 'status', 9);

-- --------------------------------------------------------

--
-- Table structure for table `logs_ajax`
--

CREATE TABLE IF NOT EXISTS `logs_ajax` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `token` varchar(40) NOT NULL,
  `platform` varchar(20) NOT NULL,
  `platform.version` char(10) NOT NULL,
  `browser` varchar(20) NOT NULL,
  `browser.version` char(10) NOT NULL,
  `browser.kernel` char(10) NOT NULL,
  `header` text NOT NULL,
  `request` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logs_client`
--

CREATE TABLE IF NOT EXISTS `logs_client` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `platform` varchar(40) NOT NULL,
  `browser` varchar(40) NOT NULL,
  `browser.kernel` char(10) NOT NULL,
  `browser.version` varchar(15) NOT NULL,
  `agent` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(3, 1427524390, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '41.0.2272.101', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.101 Safa'),
(4, 1428588669, 'fb6f173f', '::1', 'Unknown', 'Unknown', '', '?', '');

-- --------------------------------------------------------

--
-- Table structure for table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `reference` text NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `icon` text NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `code`, `reference`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `icon`, `thumbnail`) VALUES
(1, '', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, '', 'ChIJfVSScR3SdDERarq1P6Mafi0', 'ChIJfVSScR3SdDERarq1P6Mafi0', 'Khu du lá»‹ch Äáº¡i Nam', 'QL 13, Hiá»‡p An, tp. Thá»§ Dáº§u Má»™t, Binh Duong, Vietnam', '11.036086,106.632199', 11.036086, 106.632202, 'rv_park', 'http://maps.gstatic.com/mapfiles/place_api/icons/camping-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=11.036086,106.632199&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C11.036086,106.632199&format=gif'),
(3, '', 'ChIJ0T2NLikpdTERKxE8d61aX_E', 'ChIJ0T2NLikpdTERKxE8d61aX_E', 'Ho Chi Minh City', 'Ho Chi Minh City, Ho Chi Minh, Vietnam', '10.8230989,106.6296638', 10.823099, 106.629662, 'locality', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.8230989,106.6296638&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.8230989,106.6296638&format=gif'),
(6, '', 'ChIJA2Ui9N0udTERLRHZAuT3cBY', 'ChIJA2Ui9N0udTERLRHZAuT3cBY', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', '10.769319,106.669258', 10.769319, 106.669258, 'cafe', 'http://maps.gstatic.com/mapfiles/place_api/icons/cafe-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.769319,106.669258&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.769319,106.669258&format=gif'),
(7, '', 'ChIJgwBiJxCkNTERmrzuxYyvpfg', 'ChIJgwBiJxCkNTERmrzuxYyvpfg', 'Äáº¡i LÃ½ ChÄƒn Ga Gá»‘i Äá»‡m Autralia', 'Chá»£ ÄÆ°á»ng CÃ¡i, Huyá»‡n VÄƒn LÃ¢m, HÆ°ng YÃªn, Vietnam', '20.974658,106.052262', 20.974657, 106.052261, 'store', 'http://maps.gstatic.com/mapfiles/place_api/icons/generic_business-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=20.974658,106.052262&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C20.974658,106.052262&format=gif'),
(8, '', 'ChIJc7PBOygpdTERBfm195KyEzY', 'ChIJc7PBOygpdTERBfm195KyEzY', 'Vienmaytinh.com', '180 HoÃ ng VÄƒn Thá»¥, 9, PhÃº Nhuáº­n, Há»“ ChÃ­ Minh, Vietnam', '10.799588,106.67532', 10.799588, 106.675323, 'electronics_store', 'http://maps.gstatic.com/mapfiles/place_api/icons/electronics-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=10.799588,106.67532&zoom=15&size=400x400&maptype=roadmap&markers=color:red%7C10.799588,106.67532&format=gif');

-- --------------------------------------------------------

--
-- Table structure for table `messages_data`
--

CREATE TABLE IF NOT EXISTS `messages_data` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `content` text NOT NULL,
  `emoticons` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(2, 1418192623, 1, 'user', 1, 'xmxOo3PY+igrcPacZ6lMu+aHuv5ht5b9lI7cAOl2Mnc=', ''),
(3, 1418192624, 1, 'user', 1, 'mL3TMoXDG6hLZ7vFXNve7KV3qgHEWHzDmGMH3l+7+bs=', ''),
(4, 1418192625, 1, 'user', 1, 'PewIUU5KG4DJ03VJY4VPLaUCOiLEtWkPLrEm47HIFyk=', ''),
(5, 1418192625, 1, 'user', 1, '3F5sFWBzQ7bCzYtsMuDdsBy0XfjhbbsNMjxnDrLIrG8=', ''),
(6, 1418192626, 1, 'user', 1, '+GdchkAhwP9brSxUUUjXMa0HXZTDtBRK1+hnYtg7AB4=', ''),
(7, 1418192627, 1, 'user', 1, 'fEoHvmZ3fIdClooBXYn1Xqo+FeuyS+RhRDL4zU89DHo=', ''),
(8, 1418192628, 1, 'user', 1, 'rUuVUosxABLcMEz/IXcyDSaqthvfFTmmrRiOP/ZSnh4=', ''),
(9, 1418192629, 1, 'user', 1, 'j2PTBXM7IKCEgnETPDc5tglLBBvdRC7tgdtfabqDTgA=', ''),
(10, 1418192629, 1, 'user', 1, '1M0EpyAjSTGirn0PoF4m65R5Jilyprxn0V43iuf9TjU=', ''),
(11, 1418192693, 1, 'user', 1, 'KFA05A8BKJ0258fqTOnyQckzbjwsPv696zpnwu9FXGU=', ''),
(12, 1418192693, 1, 'user', 1, 'BZs49HewgvmvGO9JVvwCNVld6d3NDwBiYzLPpPI5jUQ=', ''),
(13, 1418192695, 1, 'user', 1, '6MSGxBg0BSW9Fv1XTFNGXMy0ag2uIXI5dqBBIo37qEI=', ''),
(14, 1418192696, 1, 'user', 1, '0HzRQk5N4jthwQS/Dzx9a5nXAqFhjalcclHiQt+qQkI=', ''),
(15, 1418192697, 1, 'user', 2, 'Ax1ggQOBjF/FKon5bDePU/K6QMS/e6tWYfn/lmFC3zI=', ''),
(16, 1418192698, 1, 'user', 1, '/uku1amqqFEs4cWLTJR92aTjAo8KbDMnEzHO+WUhnCM=', ''),
(17, 1418192699, 1, 'user', 1, 'r4Jzos9+qOvRyBvFBfxddL7rgAyVO2TrIUDlBbrIRXY=', ''),
(18, 1418192700, 1, 'user', 1, 'EkMtrfVQms2QvBxnImcVQhtnIdlpOlBWqIIfU4Jpz+U=', ''),
(19, 1418192700, 1, 'user', 2, 'NZJaAAUJ9gS2xAZJNPG5BfxH8+/a83dnHl1fOP56KDY=', ''),
(20, 1418192701, 1, 'user', 1, '643c0onF1xyzv/0672tGY/u2JqA4cgoxAPV1cUSQEu0=', ''),
(21, 1418192703, 1, 'user', 3, 'cI3gpLhSGlHyT2Ntw/xtVnfPRMaRqjKoGw76c6vMMIc=', ''),
(22, 1418192704, 1, 'user', 1, 'nGRIDZKLS5Wb/9Ue/rT7+9cABOPeZyEE+acgrtezHzM=', ''),
(23, 1418192704, 1, 'user', 2, 'uQyGSOqvaUmyLeZP+u68J+YICw1YQNCtys3SQwd+FxU=', ''),
(24, 1418192704, 1, 'user', 1, 'ne9tAATBKFq8d/veHOeVn56zgUw7zGs1gloLDOgYR8A=', ''),
(25, 1418192705, 1, 'user', 2, '0A6FSrtFiwtm3Czx/FD5EpZvVx2pD1AnBSExCGJwe0c=', ''),
(26, 1418192705, 1, 'user', 1, 'l1i61HQuh49ScBmgLAk0POmgbIsA3a7tEhAo1SAfpxI=', ''),
(27, 1418192705, 1, 'user', 1, 'abAntmFbTacYBbIxqHGLX8oKM55dgIUhxmvX7e50Bqg=', ''),
(28, 1418192706, 1, 'user', 3, 'mF0NoG56+RznRoM1ucHkdOzSph4XF00GVxH3+B5I9zI=', ''),
(29, 1418192706, 1, 'user', 1, '3Mfq+SErA7lxRL4uLSqM17/Xju2ux52yLf/yaHHc5d4=', ''),
(30, 1418192707, 1, 'user', 2, 'ikIxxh3Y116WDx93qKOj8M5Tb4eKS95piDU4+5zyxaY=', ''),
(31, 1418192707, 1, 'user', 1, 'Cf48e4yrc3Kj/ct1i7AwlzkvrwLmzjEhSAUYAEBGxTI=', ''),
(32, 1418192707, 1, 'user', 1, 'Ph6BfrfyozKqP/tBv2RblA1MRwFsvwtcfyeEV9BqEm4=', ''),
(33, 1418192708, 1, 'user', 3, 'XduhcotxaJIwWh41rZ04apGGhxZRA2t8BlpL2z/iRos=', ''),
(34, 1418192708, 1, 'user', 1, 'cvXZWnkSNV9HuK6rB5wNWT6Aqef2B3sgMCS+mIAjAfk=', ''),
(35, 1418192708, 1, 'user', 1, 'N/rKj7XoseiA5ibJkhp8uJXYHiQpgmBRjxl7qkbUDEU=', ''),
(36, 1418192709, 1, 'user', 1, 'CyvlZ6YTS78kEz+FGeR+jZ0ivnhIsDovOV2ik5gABPA=', ''),
(37, 1418192709, 1, 'user', 3, 'M+LECUyTYwx5YnhnM3ABVp/3M/bQv0jB3TofZ4mwlzY=', ''),
(38, 1418192709, 1, 'user', 1, 'JN/MVR7e1vmQQcch9JWM71qLGm/bgYMc34c7IkV+uTs=', ''),
(39, 1418197110, 1, 'user', 2, 'BFQrtIqculykD+UlmixH2uU6c7FgI4GJ/ie11XVNE+8=', ''),
(40, 1418197128, 1, 'user', 2, 'tf8ifcPucQpfca/+b60U71gwa1KHebaBLrvu7tVXeVM=', ''),
(41, 1418197131, 1, 'user', 2, '1NGwpBr8Th2XwbWp2zx+iMk7ciidC0uYhS73/4LHr0g=', ''),
(42, 1418197141, 1, 'user', 2, 'VGC1VCRMC4OC+8rERwpBLa7J+qTsQJvQK/gX2Wam2+w=', ''),
(43, 1418197417, 1, 'user', 1, 'j9AakhTAUzFWZTFtTBhfNeKSRZ5sJfctoXgRX0Ld7iwhciM7F4wv7mYnaZrdEBLg3ur7gxdK7NMcUtUlBPumhQ==', ''),
(44, 1418197456, 1, 'user', 1, '4IZoQQnyekMsn7r53XB8hZdyUlsUTS/psHggX8sWkwO9SaLXQyh7kQCDMWhmggM7CudrysKgMTOydivprsTqZg==', ''),
(45, 1418197547, 1, 'user', 2, 'RjKtAC4dSgBLGHqKyN5GDs+rTSfleTah5FWJ7xedV4LYhROiBxL5xaLPiB7T8nyZMord/E4/34hrVIs3cImkdQ==', ''),
(46, 1418200090, 1, 'user', 1, 'MOc0Jme7/0hrlZcYvo/B7SgjhvVxLYIeq8G7LIH8i1M=', ''),
(47, 1418200244, 1, 'user', 1, 'hDmpuW357nz6/WcJcM5xLrRlgZJ1wwrkaPJUUOnEju0=', ''),
(48, 1418200505, 1, 'user', 2, 'M/Ae3y39vWoFxFfX/p9jR+MMsGZl9SWWVwMlQxcXz/0=', ''),
(49, 1418200567, 1, 'user', 2, 'YdkJoMu+BJ8/w2p61vKqY0792yN6jzpnHS7tGXnq8So=', ''),
(50, 1418200577, 1, 'user', 1, 'v6Dg7z/YG0fdtNfubjU9hbHyfwnKoEFltiBMNWQlW5s=', ''),
(51, 1418200631, 1, 'user', 2, 'jcOrwjkQ2vPKto0/MJTGpJSPATKzdLoC7hc+TtJOC7A=', ''),
(52, 1418200669, 1, 'user', 1, '5qFDWWir+yrY71YrIYnEVihCDiM2HzwZGWC3bbvrOPc=', ''),
(53, 1418200777, 1, 'user', 2, 'o7ggwrv2IUdk9abqJHXdwFCHpowvWtXBeDYEQG5HD+E=', ''),
(54, 1418200797, 1, 'user', 2, '4rm2erf1JqfVehv+y/5RvK5UxaAg1/GzpGM8kTOjoV8=', ''),
(55, 1418200805, 1, 'user', 2, 'G7VpHe+xlH9ZAsIu9fFICDiEQXsp70nuym+MxpVRYEQ=', ''),
(56, 1418200827, 1, 'user', 1, 'ciOXXE6IckxiMT50XAoAw6RoHFSuIZC7gVS6gT5ceIk=', ''),
(57, 1418200851, 1, 'user', 1, 'Z7u/AYeOMkwNGWcMGfUn0HYSYM9AO/jYOWV9cVkY44s=', ''),
(58, 1418200914, 1, 'user', 1, 'Fi9NPWnu10uZok5DacXKRSGxdTpnowKwp0d80qmNs6k=', ''),
(59, 1418200937, 1, 'user', 1, 'YbhtAloTk2/Her8LkDifk1LwWLYChq5KyPygEgz8vr0=', ''),
(60, 1418200953, 1, 'user', 2, 'qobUWYW5kIQrxDG026VoOGswNErVYwnIg4+fPaIgWtY=', ''),
(61, 1418201018, 1, 'user', 2, 'OyYunL2rO7FKJa5H6316B6nzDNzKGHcjapDUu5LtG4Q=', ''),
(62, 1418201020, 1, 'user', 2, '0G0ChhntMrAiBVubZs1TDBBUpMVK98NtzVbYnslccMM=', ''),
(63, 1418201034, 1, 'user', 2, '2dWNI1mZDFw1RTnOiZgvVgHUxhzg7QL1DJcSNieHw9A=', ''),
(64, 1418201146, 1, 'user', 1, '2dJ99UC2nQE5faQSRGG/HXgW86LO0N1wDJkp67/VjCc=', ''),
(65, 1418201389, 1, 'user', 1, 'YiMgUCvWLZhXpO+MSvYkA2IKnAkTL2tCn2zo0rG9GZo=', ''),
(66, 1418201469, 1, 'user', 2, 'LWcQm7+GtLujATv0HNeV6c06PcCJLpjXS19WEtv8ruc=', ''),
(67, 1418201626, 1, 'user', 1, 'DVAVj5G+9U7s2bCo3vLsH0sCWsDaU2SjXsR6FF6K3R8=', ''),
(68, 1418201899, 1, 'user', 2, 'JWDx5Pw7vf35kqPEGAeKBJUwvpCiJpy2/s+Lj8dKAQ8=', ''),
(69, 1418202222, 1, 'user', 1, 'juf6eZ8q0nX11/U+8VwKxCBgUT81jFbNPRDkD8l2BWE=', ''),
(70, 1418216968, 1, 'user', 3, 'Gjcj4ftxLPlJNnIjSpc/vqQU5Iekuy4HSmqf7C8JdjU=', ''),
(71, 1418338075, 1, 'user', 1, '728fJ7FeMTgLtR0aYd0ANJaVFCA2ylH749SKL/nWZ8w=', ''),
(72, 1418338294, 1, 'user', 2, 'nWv9f7Cj22VYP3/5T3YjS5z6BSRGZf3KT6JGrly6ORs=', ''),
(73, 1418382075, 1, 'user', 1, 'NU+ThQpual0KmhqsrC2XGLGXNPyoWp3r0Ky3yHUX8vc=', ''),
(74, 1418382895, 1, 'user', 1, 'ZrjrFSegYGVTIufzChtRUi3P4S8RpFgNj7Rm427u/Mw=', ''),
(75, 1418382959, 1, 'user', 1, 'NKd/UHlU2yEqkcKK4RXyvh++fZAXib6DkxN8eNl/iNs=', ''),
(76, 1418382995, 1, 'user', 2, '4uwMI6KUBG5+2mqkaKsl70Kkcs39Z+0nRogjohYDC+Y=', ''),
(77, 1418383008, 1, 'user', 2, 'XgD6xFt5KSdcFxD3FJQ5cE0ZSvWPbXjsTxrYBDOiAgQ=', ''),
(78, 1418383013, 1, 'user', 1, 'q9Tgka9Z89LWhrruODhGDQYgWg/Pe98epvqVCPh0lZM=', ''),
(79, 1418383088, 1, 'user', 1, 'KwO94USGZrgccOstvmfe7MZW9BrYUXXMi8bnbtFfPRA=', ''),
(80, 1418383425, 1, 'user', 2, 'Kv4G87hECuMbmrKDimDF+Jc18A/6niYPAE7weA5YvdA=', ''),
(82, 1418383454, 1, 'user', 1, '8FHccz0bG6JLxh94tWAjlA3F4ByfyX0t+ObaTGK1jMc=', ''),
(83, 1418383643, 1, 'user', 2, 'HA3HaTuthex47vLj38kPx07rpG566a/Xbs59VCHcgtg=', ''),
(84, 1418383651, 1, 'user', 2, 'upis6yK3cyGTgqvJ+3Au3cbDBgT6Yh83rtOT/xOncgA=', ''),
(85, 1418383661, 1, 'user', 1, 'EQiFdRC2vad4Qh5ud7haqwly8DwOw/NWM5VDup206vM=', ''),
(86, 1418531590, 1, 'user', 1, 'JD96K7+cvPYV0S/1Q+GN+UTLYALc9cGumYX2AtOOu34=', ''),
(87, 1422195462, 1, 'user', 1, 'IRhVPnmEdgCCxZHkhhe3HsqK9iRIJvBxbkGI6Ztir/o=', ''),
(88, 1422195472, 1, 'user', 1, 'mlow3jFTRFjraQd6LprbToEqaK8q+dVr7BwqnbjnG6c=', ''),
(89, 1422195473, 1, 'user', 1, 'dgqF23A7UqRVaPmdf4gBFkxrmhQbuXRwisCvLXrYpLk=', ''),
(90, 1422195474, 1, 'user', 1, '4pVJ/yxIDic2bDv68o4GqsKOhj4RK64Kn3PeTxmmhM8=', ''),
(91, 1422195668, 1, 'user', 1, 'ekULvYg6Owg8ZfQ6sd8tjxB86lP8fqZYeJE73oyh/D8=', ''),
(92, 1422196030, 1, 'user', 1, '2vCFS3qh+resoXS0Q3SNzLt8jrlM3vyNLXIvFhdGUaw=', ''),
(93, 1422196033, 1, 'user', 1, 'xSVp7SpcfiTD9Fo1Fa51ROaMUJjjSw8GG4sya+cSik8=', ''),
(94, 1422595683, 1, 'user', 1, 'QAOEGXTDJVrUHxKAd/NbC8ZtqxnavXWsTdZaiJjRbis=', ''),
(95, 1422595686, 1, 'user', 1, '5KNYVJYvE866TPMGsYIeYxo3ELMNpll0p+PHNVyo59c=', ''),
(96, 1427004848, 1, 'user', 1, 'GMBNTn76TkQ7LgH6amMvDloaIuBxfeVDp7TQQnci+Mo=', ''),
(97, 1427004883, 1, 'user', 1, 'q8sXKoRKaOsUDS8hypJnKdNDe3zwhWn4euXcG68upf8=', ''),
(98, 1427004893, 1, 'user', 1, 'cwjlsmg9mdo3ZJsnRE10b9l31XJBevjMa7R9Gw0NwWU=', '');

-- --------------------------------------------------------

--
-- Table structure for table `messages_hashtag`
--

CREATE TABLE IF NOT EXISTS `messages_hashtag` (
`id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `content` text
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_hashtag`
--

INSERT INTO `messages_hashtag` (`id`, `hashtag`, `author.type`, `author.id`, `time`, `content`) VALUES
(7, 'tag', 'user', 1, 1418363022, 'v'),
(10, 'code', 'user', 1, 1418964326, 's'),
(11, 'code', 'user', 1, 1418964352, 'x'),
(12, 'code', 'user', 1, 1418964546, 's'),
(13, 'code', 'user', 1, 1418964653, 's'),
(14, 'code', 'user', 1, 1418964666, 'g'),
(15, 'hashtag', 'user', 1, 1423665527, '.'),
(16, 'hashtag', 'user', 1, 1423665540, '..'),
(17, 'hashtag', 'user', 1, 1423665625, '...'),
(18, 'hashtag', 'user', 1, 1423665670, '....'),
(19, 'hashtag', 'user', 1, 1423665763, '.....'),
(20, 'hashtag', 'user', 1, 1423665832, '......');

-- --------------------------------------------------------

--
-- Table structure for table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `private` int(1) NOT NULL,
  `type` int(1) NOT NULL,
  `name` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `private`, `type`, `name`) VALUES
(1, 1416920954, 'ebe59e14', 1, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `messages_members`
--

CREATE TABLE IF NOT EXISTS `messages_members` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `regency` char(10) NOT NULL,
  `translate` int(1) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(1, 1416920954, 1, '1', 0, 'user', 1),
(2, 1416920954, 1, '1', 1, 'user', 2),
(3, 1416920954, 1, '1', 0, 'user', 3);

-- --------------------------------------------------------

--
-- Table structure for table `messages_typing`
--

CREATE TABLE IF NOT EXISTS `messages_typing` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_views`
--

CREATE TABLE IF NOT EXISTS `messages_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `author.type`, `author.id`) VALUES
(1, 1427297824, 1, 'user', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mood`
--

CREATE TABLE IF NOT EXISTS `mood` (
`id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `emoticon` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mood`
--

INSERT INTO `mood` (`id`, `type`, `code`, `emoticon`) VALUES
(2, 'feel', '[feel]happy', ''),
(3, 'feel', '[feel]so_happy', ''),
(4, 'feel', '[feel]great', ''),
(5, 'feel', '[feel]fine', ''),
(6, 'feel', '[feel]inquisitive', ''),
(7, 'feel', '[feel]disturb', ''),
(8, 'feel', '[feel]despair', ''),
(9, 'feel', '[feel]angry', ''),
(10, 'feel', '[feel]proud', ''),
(11, 'feel', '[feel]empty', ''),
(12, 'feel', '[feel]disgusting', ''),
(13, 'feel', '[feel]beneath', ''),
(14, 'feel', '[feel]scarcely', ''),
(15, 'feel', '[feel]shame', ''),
(16, 'feel', '[feel]dirty', ''),
(17, 'feel', '[feel]fail', ''),
(18, 'feel', '[feel]serenity', ''),
(19, 'feel', '[feel]sad', ''),
(20, 'feel', '[feel]so_sad', ''),
(21, 'feel', '[feel]regretful', ''),
(22, 'feel', '[feel]interesting', ''),
(23, 'feel', '[feel]not_assured', '');

-- --------------------------------------------------------

--
-- Table structure for table `music_album`
--

CREATE TABLE IF NOT EXISTS `music_album` (
`id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_block`
--

CREATE TABLE IF NOT EXISTS `music_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_cache`
--

CREATE TABLE IF NOT EXISTS `music_cache` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_info`
--

CREATE TABLE IF NOT EXISTS `music_info` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `album` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `singer` varchar(40) NOT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.original` varchar(255) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec` char(10) NOT NULL,
  `bitrate` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `secret.original`, `path.original`, `file.datetime`, `file.size`, `codec`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 1, 'user', 1, 0, 1429190446, 'f8934a6e', 'cf34645d98a7630e2bcca98b3e29c8f2', 'ss', 'Láº·ng tháº§m.mp3', '', '', '', 4, 4, 4, '23ac7f8ce645aec0e94a5e0700d9efc1.mp3', 'd31ffd62f049fdd180017baf0e0634d7', '0536ef93', 0, 3201024, 'mp3', 128011, 200.045685, 'audio/mp3');

-- --------------------------------------------------------

--
-- Table structure for table `music_replay`
--

CREATE TABLE IF NOT EXISTS `music_replay` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(1, 1429280140, 1, 'user', '1', 1429885041, 114);

-- --------------------------------------------------------

--
-- Table structure for table `music_reviewlater`
--

CREATE TABLE IF NOT EXISTS `music_reviewlater` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `music_views`
--

CREATE TABLE IF NOT EXISTS `music_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `quality` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1429190453, 1, 'user', '1', '0'),
(2, 1429280125, 1, 'user', '1', '0'),
(3, 1429333217, 1, 'user', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `code`, `language`, `value`) VALUES
(1, 'notification_error_timeout', 'en', '3000'),
(2, 'contentType_urlencoded.utf8', 'en', 'application/x-www-form-urlencoded; charset: utf-8'),
(3, 'status_comment_effect_show', 'en', '100'),
(4, 'status_comment_effect_duration', 'en', '500'),
(5, 'status_comment_effect_nextTime', 'en', '250'),
(6, 'status_comment_scrollbar_limit', 'en', '8'),
(7, 'contentType_html.utf8', 'en', 'text/html; charset: utf-8'),
(8, 'contentType_js.utf8', 'en', 'text/javascript; charset: utf-8'),
(9, 'contentType_css.utf8', 'en', 'text/css; charset: utf-8'),
(10, 'contentType_json.utf8', 'en', 'application/json; charset: utf-8'),
(11, 'call_function_timeout', 'en', '100'),
(12, 'setupTimestamp_timeout', 'en', '60000'),
(13, 'popupNotification_timeout', 'en', '5000'),
(14, 'popupNotification_limit', 'en', '5'),
(15, 'sleep_when_error', 'en', '1000'),
(16, 'sites_id_time_limit', 'en', '3600'),
(17, 'sites_info_time_limit', 'en', '3600'),
(18, 'sites_id_rate_v1', 'en', '1'),
(19, 'sites_id_rate_v2', 'en', '2000'),
(20, 'sites_id_rate_v3', 'en', '3000'),
(21, 'sites_id_rate_v4', 'en', '4000'),
(22, 'sites_id_rate_v5', 'en', '5000'),
(23, 'notification_info_places', 'en', '5000'),
(25, 'updateLoop_timeout', 'en', '60000'),
(27, 'user_private.tag_agree', 'en', '1'),
(28, 'user_private.tag_refuse', 'en', '0'),
(29, 'user_private.search_agree', 'en', '1'),
(30, 'user_private.search_refuse', 'en', '0'),
(31, 'AutoComplete_type', 'en', 'autocomplete'),
(32, 'photos_allow_format', 'en', 'a:4:{i:0;s:3:"jpg";i:1;s:3:"gif";i:2;s:3:"png";i:3;s:4:"jpeg";}'),
(33, 'photos_allow_size', 'en', '3145728'),
(34, 'photos_folder_min', 'en', '1'),
(35, 'photos_folder_max', 'en', '9'),
(36, 'photos_folder_path', 'en', 'storage/photos/drive'),
(37, 'photos_size_large_w', 'en', '1440'),
(38, 'photos_size_medium_w', 'en', '720'),
(39, 'photos_size_small_w', 'en', '360'),
(40, 'photos_cache_forder', 'en', 'storage/cache/photos'),
(41, 'photos_cache_time', 'en', '1800'),
(42, 'photos_name_pack_large', 'en', '_l'),
(43, 'photos_name_pack_medium', 'en', '_m'),
(44, 'photos_name_pack_small', 'en', '_s'),
(45, 'PhotosEditorPopup_footer_text', 'en', 'Â© Giccos'),
(46, 'path_image_static_default', 'en', 'storage/image/static/default'),
(47, 'pathVirtual_cache_photos', 'en', 'photos/cache'),
(48, 'media_cache_time_push', 'en', '180'),
(49, 'media_cache_time_close', 'en', '3600'),
(51, 'media_cache_time_push_ms', 'en', '180000'),
(52, 'user_private.search_default', 'en', '1'),
(53, 'user_private.tag_default', 'en', '3'),
(54, 'user_guide.default', 'en', '0'),
(55, 'user_theme.default', 'en', '1'),
(58, 'contentType_xml.utf8', 'en', 'application/xml; charset=utf-8'),
(60, 'path_video_static_default', 'en', 'storage/video/static/default'),
(61, 'videos_cache_time', 'en', '1800'),
(62, 'videos_cache_forder', 'en', 'storage/cache/videos'),
(63, 'videos_folder_path', 'en', 'storage/videos/drive'),
(64, 'videos_folder_min', 'en', '1'),
(65, 'videos_folder_max', 'en', '9'),
(66, 'pathVirtual_cache_videos', 'en', 'videos/cache'),
(78, 'music_folder_min', 'en', '1'),
(79, 'music_folder_max', 'en', '9'),
(80, 'pathVirtual_cache_music', 'en', 'music/cache'),
(81, 'music_folder_path', 'en', 'storage/music/drive'),
(82, 'music_cache_forder', 'en', 'storage/cache/music'),
(83, 'music_cache_time', 'en', '1800'),
(84, 'path_audio_static_default', 'en', 'storage/audio/static/default'),
(86, 'videos_allow_format', 'en', 'a:6:{i:0;s:3:"mp4";i:1;s:3:"avi";i:2;s:3:"3gp";i:3;s:3:"flv";i:4;s:3:"mov";i:5;s:3:"mov";}'),
(87, 'videos_allow_size', 'en', '52428800'),
(88, 'music_allow_format', 'en', 'a:1:{i:0;s:3:"mp3";}'),
(89, 'music_allow_size', 'en', '10485760'),
(92, 'maps_statismap_zoom', 'en', '15'),
(93, 'maps_statismap_size', 'en', '480x480'),
(94, 'maps_statismap_type', 'en', 'roadmap'),
(95, 'maps_statismap_markers', 'en', 'color:red'),
(96, 'photos_size_original_w', 'en', '0'),
(97, 'exif_read_data_allow', 'en', 'a:2:{i:0;s:3:"jpg";i:1;s:4:"jpeg";}'),
(98, 'regex_hashtag', 'en', '/(^|\\s)#([a-zA-Z0-9\\_]+)/'),
(99, 'regex_usertag', 'en', '/(^|\\s)@([a-zA-Z0-9\\_]+)/'),
(100, 'cited_inputAuthor_length', 'en', '40'),
(101, 'cited_inputQuote_length', 'en', '255'),
(102, 'cited_photosID_default', 'en', '0'),
(103, 'cited_photosSize_length', 'en', '500'),
(104, 'status_effect_show', 'en', '100'),
(105, 'status_effect_duration', 'en', '500'),
(106, 'status_effect_nextTime', 'en', '250'),
(107, 'feed_update_call', 'en', '10000'),
(108, 'feed_update_timeout', 'en', '10000'),
(109, 'hash_status_content', 'en', 'g::key::status->content'),
(110, 'hash_user_password', 'en', 'g::key::user->password'),
(112, 'user_timezone.default', 'en', 'Asia/Saigon'),
(113, 'user_language.default', 'en', 'en'),
(114, 'user_private.status_default', 'en', '3'),
(115, 'hash_photos_static', 'en', 'g::key::photos->static'),
(116, 'hash_photos_other', 'en', 'g::key::photos->other'),
(117, 'user_private.info_default', 'en', '4'),
(118, 'notification_text_timeout', 'en', '4000'),
(119, 'key_api_google_1', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(120, 'key_api_google_2', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(121, 'key_api_google_3', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(122, 'key_api_google_4', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(123, 'key_api_google_5', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(124, 'key_api_google_6', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(125, 'key_api_google_7', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(126, 'key_api_google_8', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(127, 'key_api_google_9', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(128, 'key_api_google_10', 'en', 'AIzaSyDpyg9L-pXKZeDYZjwz-R7nMHiYAkEuhRo'),
(129, 'hash_sites_direct', 'en', 'g::key::sites->direct'),
(130, 'regex_domain', 'en', 'localhost\\/giccos'),
(131, 'status_effect_id', 'en', '2'),
(132, 'status_effect_type', 'en', 'fade'),
(133, 'http_secure', 'en', 'false'),
(134, 'status_timeout_newcheck', 'en', '60000'),
(135, 'contentType_swf.utf8', 'en', 'application/x-shockwave-flash; charset: utf-8'),
(136, 'videos_thumbnail_path', 'en', 'storage/videos/thumbnail'),
(137, 'mediaPlayer_rememberTime', 'en', '5000'),
(138, 'security_accounts_loginTimesIncorrect', 'en', '5'),
(139, 'security_accounts_loginTimeAllow', 'en', '3'),
(140, 'http_cache_expire', 'en', '86400'),
(141, 'http_cache_expire_quick', 'en', '3600'),
(142, 'http_cache_expire_static', 'en', '129600'),
(143, 'default_user_avatar_large', 'en', 'storage/photos/static/no-avatar.jpg'),
(144, 'default_user_avatar_medium', 'en', 'storage/photos/static/no-avatar.jpg'),
(145, 'default_user_avatar_small', 'en', 'storage/photos/static/no-avatar.jpg'),
(146, 'default_user_cover_large', 'en', 'storage/photos/static/no-cover.jpg'),
(147, 'default_user_cover_medium', 'en', 'storage/photos/static/no-cover.jpg'),
(148, 'default_user_cover_small', 'en', 'storage/photos/static/no-cover.jpg'),
(149, 'suggest_weather_reopen', 'en', '1800'),
(150, 'suggest_weather_reload', 'en', '3600'),
(151, 'suggest_news_reload', 'en', '3600'),
(152, 'suggest_guys_reload', 'en', '3600'),
(153, 'suggest_guys_reopen', 'en', '1800'),
(154, 'suggest_news_reopen', 'en', '1800'),
(155, 'select_time_years_min_limit', 'en', '1975'),
(156, 'select_time_years_max_limit', 'en', '2015'),
(157, 'select_time_months_min_limit', 'en', '1'),
(158, 'select_time_months_max_limit', 'en', '12'),
(159, 'select_time_days_min_limit', 'en', '1'),
(160, 'select_time_days_max_limit', 'en', '30'),
(161, 'select_time_hours_min_limit', 'en', '0'),
(162, 'select_time_hours_max_limit', 'en', '23'),
(163, 'select_time_minutes_min_limit', 'en', '0'),
(164, 'select_time_minutes_max_limit', 'en', '59'),
(165, 'select_time_seconds_min_limit', 'en', '0'),
(166, 'select_time_seconds_max_limit', 'en', '59'),
(167, 'key_api_virustotal_1', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(168, 'key_api_virustotal_2', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(169, 'key_api_virustotal_3', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(170, 'key_api_virustotal_4', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(171, 'key_api_virustotal_5', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(172, 'key_api_virustotal_6', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(173, 'key_api_virustotal_7', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(174, 'key_api_virustotal_8', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(175, 'key_api_virustotal_9', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(176, 'key_api_virustotal_10', 'en', '961b6785586427934a7c60322ac0c72f30df2c49df82ba7a3c74986dfb751c8a'),
(177, 'media_view_time_limit', 'en', '86400'),
(178, 'user_private.photos_default', 'en', '4'),
(179, 'user_private.music_default', 'en', '4'),
(180, 'user_private.videos_default', 'en', '4'),
(181, 'explorer_length_randKeyEvent', 'en', '32'),
(182, 'private.public', 'en', '4'),
(183, 'media_settings.replay_default', 'en', '1'),
(184, 'media_settings.replay_allow', 'en', '1'),
(185, 'cookie.host.path', 'en', '/giccos'),
(186, 'storage_folder_path', 'en', 'storage'),
(187, 'storage_folder_min', 'en', '1'),
(188, 'storage_folder_max', 'en', '10'),
(189, 'storage_folder_name', 'en', 'drive'),
(190, 'cacheClean_by_users_limit_rand_min', 'en', '10'),
(191, 'cacheClean_by_users_limit_rand_max', 'en', '100'),
(192, 'videos_thumbnail_image_mime', 'en', 'image/png'),
(193, 'rekognition_key', 'en', 'aJyI214g7jnoRP2I'),
(194, 'rekognition_secret', 'en', 'eAcco8pF6fpDgdJg'),
(195, 'rekognition_namespace', 'en', 'giccos'),
(196, 'rekognition_userid', 'en', 'database'),
(197, 'rekognition_url', 'en', 'http://rekognition.com/func/api/'),
(198, 'rekognition_rate_allow', 'en', '0.25'),
(199, 'rekognition_tagupload', 'en', 'untagged'),
(200, 'rekognition_tagdefault', 'en', '_x_all'),
(201, 'image_faces_thumbnail', 'en', '150');

-- --------------------------------------------------------

--
-- Table structure for table `photos_block`
--

CREATE TABLE IF NOT EXISTS `photos_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_cache`
--

CREATE TABLE IF NOT EXISTS `photos_cache` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `path` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_cache`
--

INSERT INTO `photos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`) VALUES
(10, 1, 'user', 1, 1430325059, 1430329397, 'c52e3357', 'f1026ed3', '32d0a9ee', 'd6c8eac0.jpg', '10997097_431451950355779_1526286295_n.jpg', '0', 'image/jpeg', 73810, '2d56d5c8');

-- --------------------------------------------------------

--
-- Table structure for table `photos_faces`
--

CREATE TABLE IF NOT EXISTS `photos_faces` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `photos` varchar(40) NOT NULL,
  `photos.local` varchar(20) NOT NULL,
  `faces` char(10) NOT NULL,
  `faces.image` char(10) NOT NULL,
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_faces`
--

INSERT INTO `photos_faces` (`id`, `token`, `display`, `user.id`, `author.type`, `author.id`, `photos`, `photos.local`, `faces`, `faces.image`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES
(1, '21633547', 'ab3cd8cbc17c5049700cc202a02a8df4', 1, 'user', 1, '33be3254', 'cache', 'e994222e', '63019bf5', NULL, NULL, '21.33', '136.53', '324.27', '324.27', '2.9604', '1.9304'),
(3, '2a50d84e', '13d3dec10d7bcb6926c366abd661c8c3', 1, 'user', 1, '1671070a', 'cache', '88ed4b29', '0be64c4c', NULL, NULL, '-38.4', '232.8', '425.6', '425.6', '1.6917', '1.6917'),
(4, 'c8341c60', '1d6fcfae65277f11996809357403c938', 1, 'user', 1, '5fe812f4', 'cache', '8ca21b83', '20799b14', NULL, NULL, '65.07', '263.47', '149.33', '149.33', '6.4287', '4.8215'),
(5, 'c1c2b702', '3400caf109fbc0fe172e9ff7813f5576', 1, 'user', 1, '5fe812f4', 'cache', '644ecda1', '62e57af2', NULL, NULL, '130.13', '20.27', '282.67', '282.67', '3.3961', '2.5471'),
(6, 'd100169e', '109ad8835e9f7d1634c7532a93d64d3e', 1, 'user', 1, '5fe812f4', 'cache', '05ddbd99', '2f590ffe', NULL, NULL, '150.4', '452.27', '126.93', '126.93', '7.5632', '5.6724'),
(7, '1cbe4aef', '3960cbe8c88e89227b7b302d4f921b01', 1, 'user', 1, '5fe812f4', 'cache', '6fc97c06', 'feca18fb', NULL, NULL, '158.93', '556.8', '173.87', '173.87', '5.5213', '4.1410'),
(8, '648d38d5', '970eeb67e73dd967e888a66c81479a35', 1, 'user', 1, '32d0a9ee', 'cache', '0e665b73', '7f4b8e1a', NULL, NULL, '81.6', '248', '86.4', '86.4', '8.3333', '6.2384'),
(9, '7d856559', 'eeb446218dcfb6e8326fafb484fbea7e', 1, 'user', 1, '32d0a9ee', 'cache', 'dd7e7679', '35abf509', NULL, NULL, '203.2', '325.6', '83.2', '83.2', '8.6538', '6.4783'),
(10, '5debc1c2', '6a99b95cc1a87bca959c99a07dd2f934', 1, 'user', 1, '32d0a9ee', 'cache', 'b7fa2bdc', 'a8461a5f', NULL, NULL, '54.4', '120.8', '90.4', '90.4', '7.9646', '5.9623'),
(11, '248d0674', 'ff5b17e6b46c57b317dd67b77cb01c0d', 1, 'user', 1, '32d0a9ee', 'cache', '0a5b486c', '6e31371c', NULL, NULL, '96', '331.2', '86.4', '86.4', '8.3333', '6.2384');

-- --------------------------------------------------------

--
-- Table structure for table `photos_info`
--

CREATE TABLE IF NOT EXISTS `photos_info` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `scrapbook` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `attachments` int(1) NOT NULL,
  `public` int(1) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.original` varchar(50) NOT NULL,
  `file.large` varchar(50) NOT NULL,
  `file.medium` varchar(50) NOT NULL,
  `file.small` varchar(50) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `secret.large` varchar(40) NOT NULL,
  `secret.medium` varchar(40) NOT NULL,
  `secret.small` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `path.large` text NOT NULL,
  `path.medium` text NOT NULL,
  `path.small` text NOT NULL,
  `size.height` int(11) NOT NULL,
  `size.width` int(11) NOT NULL,
  `aperture.f` char(10) DEFAULT NULL,
  `aperture.max_value` char(10) DEFAULT NULL,
  `b.o.m` int(1) DEFAULT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `file.type` int(1) NOT NULL,
  `file.source` varchar(50) DEFAULT NULL,
  `flash` int(11) DEFAULT NULL,
  `focal.length` varchar(20) DEFAULT NULL,
  `iso` int(5) DEFAULT NULL,
  `make` varchar(30) DEFAULT NULL,
  `model` varchar(40) DEFAULT NULL,
  `metering.mode` int(1) DEFAULT NULL,
  `mime_type` varchar(30) NOT NULL,
  `software` varchar(50) DEFAULT NULL,
  `ccd.width` char(10) DEFAULT NULL,
  `exposure.time` char(10) DEFAULT NULL,
  `exposure.mode` int(1) DEFAULT NULL,
  `exposure.bias_value` char(10) DEFAULT NULL,
  `f_number` char(10) DEFAULT NULL,
  `sensing.method` int(1) DEFAULT NULL,
  `shutter.speed` char(10) DEFAULT NULL,
  `digital_zoom.ratio` varchar(15) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 1, 'user', 1, 0, 1429379219, 'b01d0653', 'fee5909672179ff7db422c1092fceac6', '47bf294f.jpg', '4815bc31 (1).jpg', '', '', 0, 0, 4, 4, 4, '236c5e12e465fe2af50b81838bf4c99c.jpg', '0', 'a715a28c7a527fec1e2698f9b8e8c72f.jpg', 'd6a04472c937bce6ee751bd29fbcff94.jpg', '40671ca8a56801b76f59df00dd01f6b3', '0', '309f667392100ca3b12b380267e09289', 'c5d462b4a06f45a9c0a87653411a3200', 'cd89ca0e', '0', '1dcafc18', '26a564d3', 2348, 1409, 'f/2.4', '0', 0, 1429379217, 2292541, 2, '0', 0, '392/100', 1600, 'lge', 'LG-F180L', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/12', 0, '0/1', '24/10', 0, '3584963/10', '0');

-- --------------------------------------------------------

--
-- Table structure for table `photos_scrapbook`
--

CREATE TABLE IF NOT EXISTS `photos_scrapbook` (
`id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_tips`
--

CREATE TABLE IF NOT EXISTS `photos_tips` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `text` varchar(255) NOT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_views`
--

CREATE TABLE IF NOT EXISTS `photos_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(10) NOT NULL,
  `size` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0'),
(2, 1430063287, 1, 'user', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` char(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('ypISk5w9Vr8ImrO1Pq5ImjzrfSzyB6Gvu,xvLScizyb', 1430325957, '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', '552d2756');

-- --------------------------------------------------------

--
-- Table structure for table `sites_author`
--

CREATE TABLE IF NOT EXISTS `sites_author` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `verified` int(1) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_id`
--

CREATE TABLE IF NOT EXISTS `sites_id` (
`id` int(11) NOT NULL,
  `host` varchar(100) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `time` int(11) NOT NULL,
  `rate` int(1) NOT NULL,
  `count` int(11) NOT NULL,
  `secure` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_info`
--

CREATE TABLE IF NOT EXISTS `sites_info` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `secure` int(11) NOT NULL,
  `author` int(11) NOT NULL,
  `host` varchar(100) NOT NULL,
  `path` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_secure`
--

CREATE TABLE IF NOT EXISTS `sites_secure` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `verified` int(1) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_views`
--

CREATE TABLE IF NOT EXISTS `sites_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `date` int(11) DEFAULT NULL,
  `edit` int(11) DEFAULT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `private.view` int(1) NOT NULL DEFAULT '4',
  `private.comment` int(1) NOT NULL DEFAULT '4',
  `private.share` int(1) NOT NULL DEFAULT '4',
  `type` char(10) NOT NULL,
  `content` text,
  `usertag` int(1) NOT NULL,
  `hashtag` int(1) NOT NULL,
  `places` int(1) NOT NULL,
  `mood` int(1) NOT NULL,
  `link` int(1) NOT NULL,
  `share` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(8, 'a9ce73de', '8a5a88d95b81c7d8ceb8e07e419b2701', 1429379218, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', '201UDIuRsuPFDiN+ji0Habp8RKJdeVS+idi2hpcj0G8=', 0, 0, 0, 0, 0, 0),
(9, 'ee75fc76', '48ec7e719e8c9ebc402fbd20f53d3df0', 1429974337, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Y+43ZfXpOri7s4LYoqVgyACAYcRS2SsQNXarkC69YiM=', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_block`
--

CREATE TABLE IF NOT EXISTS `status_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_cited`
--

CREATE TABLE IF NOT EXISTS `status_cited` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `cited.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_comment`
--

CREATE TABLE IF NOT EXISTS `status_comment` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) DEFAULT NULL,
  `comment.id` int(11) DEFAULT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `time`, `status.id`, `comment.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, 1429713683, 7, 0, 'user', 1, NULL, 'FT31nobrZDH1472m/oStm02yEbAitfHJv//eHCyUbps=', NULL),
(2, 1429796175, 8, 0, 'user', 1, NULL, 'PYqKoVX4jtitJzpCJ7XG2cnN/ekGljg5HS5cP+dmQVQ=', NULL),
(3, 1429796482, 0, 2, 'user', 1, NULL, 'N+XMxidfhzNtzJS6ByaZcunkES1Ux0DaRsbugddCXiY=', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_comment_favorite`
--

CREATE TABLE IF NOT EXISTS `status_comment_favorite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `comment.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_edit`
--

CREATE TABLE IF NOT EXISTS `status_edit` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_favorite`
--

CREATE TABLE IF NOT EXISTS `status_favorite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_follow`
--

CREATE TABLE IF NOT EXISTS `status_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(8, 1429379218, 8, 'user', 1),
(9, 1429974337, 9, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_invite`
--

CREATE TABLE IF NOT EXISTS `status_invite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_link`
--

CREATE TABLE IF NOT EXISTS `status_link` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_music`
--

CREATE TABLE IF NOT EXISTS `status_music` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `music.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_music`
--

INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_share`
--

CREATE TABLE IF NOT EXISTS `status_share` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_usertag`
--

CREATE TABLE IF NOT EXISTS `status_usertag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `status_videos`
--

CREATE TABLE IF NOT EXISTS `status_videos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(2, 3, 2),
(5, 7, 5);

-- --------------------------------------------------------

--
-- Table structure for table `storage_audio`
--

CREATE TABLE IF NOT EXISTS `storage_audio` (
`id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 3, 1429190444, '09c0d755', '', 'd31ffd62f049fdd180017baf0e0634d7', 'm+2K6NMnsQfCIzu5B4+EqOdl4HqEkEu5qy9JNzeR6CNuyqGwwv/lZKo0lMzP2+WhcNfjyjcd84BEvXEStQakUQ==', 'audio/mp3', '07ebc063', 'Láº·ng tháº§m.mp3', 1429190444, 3201024),
(2, 'drive', 6, 1429190446, '5e447272', '', 'd31ffd62f049fdd180017baf0e0634d7', 'jKQDby8NnxSsw2fH4vqPmBo+EZesl4blPsEwU1qX9FB/k38KSHayplYDXQia7hYTwNO6BaIWXN8+pqH1TkziLQ==', 'audio/mp3', '0536ef93', 'Láº·ng tháº§m.mp3', 1429190446, 3201024);

-- --------------------------------------------------------

--
-- Table structure for table `storage_image`
--

CREATE TABLE IF NOT EXISTS `storage_image` (
`id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=338 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, '17ecd421', '', '6d019b64e1c1245ea463de79345e52b3', 'gtVogaCEIvsnhCZxN0AFIKb1Sito/eSHqz6FAv2SnGLgs5G5rHAXhV1ahhwak5eatf9lS7Nm8aHDYZYujBoepQ==', 'image/png', '005637ce', 'eb8cccf0.png', 1429192107, 11900),
(2, 'drive', 5, 1429192118, 'dfd8dcf0', '', '0', 'R/4P0nc+HvgI7R6sHVpke/pR0gZsthC3SSO08snJJUlxXcYa4r1Ba1hdoCA1Q7cx9GqwgDrRVO4r/CQ6nmZKxQ==', 'image/png', '374bd3ab', 'a36eb7ae191dd1692e80e2cb2783bece.png', 0, 0),
(3, 'drive', 6, 1429192346, '4745168f', '', '6d019b64e1c1245ea463de79345e52b3', 'nwpFLm8P6XLAmfT7HtKvBiAkYmLmC6CDeFg869MYEsKiZiJdk9ZaxmFL3rDU42VB35qUiCvwjXoN11j0eDO/0g==', 'image/png', '76658e7c', 'ed6531b4.png', 1429192356, 11900),
(4, 'drive', 9, 1429192361, '317e296a', '', '6d019b64e1c1245ea463de79345e52b3', 'eEuFnaBM5gvAiYNVlGUdeltMUxtvlb0CysRxRw5m2xmvjrG6pUUDjpZQikvoiZL+6ge7196d2wRGvqYS5c+Y0Q==', 'image/png', '8e2418ef', 'bbb55a2d4b12267706ddfc90a4d67aaa.png', 1429192377, 11900),
(5, 'drive', 5, 1429364676, '72804900', '', '6d019b64e1c1245ea463de79345e52b3', '3TJuNpeAvkVDBx/ZCnSRS9USt0YAePXpFgdTqnBnFJXeYe+mKKSaJ3Mq213VRYesQhmuHsMgLXlhxE9QlFwpHw==', 'image/png', '1c3fb179', '49b151a0.png', 1429364689, 11900),
(6, 'drive', 2, 1429364738, 'b74ebe8f', '', '6d019b64e1c1245ea463de79345e52b3', 'AGZRnqcC7wriclPxAi7siaw9Ptp/4qHvit/mw8vkNXSz2Hk77fsEqYgkGg8V5mMjThiZM9B4DuT12hKBXm7tjw==', 'image/png', '07af1318', '1be94b77.png', 1429364748, 11900),
(7, 'drive', 7, 1429364862, '77ac8bd2', '', '6d019b64e1c1245ea463de79345e52b3', 'jndr08AWmMofokg5TbY54wg4jdvBT9FRXKSaW58R1PfxqMLr85Pii86VNRzf5EUgT02Pg0d0EpV9d2JQpf8HlQ==', 'image/png', '90b17a0a', 'b8655859.png', 1429364873, 11900),
(8, 'drive', 8, 1429365059, '2e43ee74', '', 'd41d8cd98f00b204e9800998ecf8427e', 'WC3Djm9z3PrANfKNAHVPxrtbbEif4Wqf+QpA94YR2eu44I1PA6mctuwxSrGS7r9Tf/xL7GygGQmL3+4nLDJNUQ==', 'image/png', '68609900', '8ad3a70d.png', 1429365059, 0),
(9, 'drive', 8, 1429365315, '056ee945', '', 'd1883688fa28b0f520795c517faae576', '7XT86nE8qBF7TnTtm3tF1frsNhN1jP6LbYlkV74qi7ZPQK8HwzZxAp15u0X8DyAIquCXmOxdt3pFvSdDAjUpLg==', 'image/png', '12f1aad0', '83fddd34.png', 1429365318, 14890),
(10, 'drive', 9, 1429365454, 'c504240f', '', 'b3c620b4e54f26994512dcf93d6498e2', 'x/yO1/PKvL6aViGsoFTO8OGLCTDNWkc4kAAdHPcjf4CceGCwgwWxFuwJ9jNAURRu6qHjSgWh5MEPZxcKxiY8kw==', 'image/png', '43479fbb', '6644746a.png', 1429365458, 36956),
(11, 'drive', 5, 1429365555, 'a798b03a', '', 'b3c620b4e54f26994512dcf93d6498e2', 'nD885KwTGnvcgMMJ2Cm1yBMEqzaXAZGiYxnEVtk8Bo0ouZEJ3Pg5nVK4gOZb7Y0kGqVk5Gf53oRvH1j+epIvOA==', 'image/png', 'f4ccce7c', '760459ef915fdbe3f68970d0d62d3883.png', 1429365563, 36956),
(12, 'drive', 6, 1429365771, '5f3ea35f', '', 'b3c620b4e54f26994512dcf93d6498e2', 'Xkq1LNA+L9Wp30ftm4x31osSe98g+f3GfnOZ2Fol/8KvZUarcQLciVr+oQAo64loCEXYTENj/V6/q/4eKsef0w==', 'image/png', 'f8f08ae3', '84d0573f.png', 1429365776, 36956),
(13, 'drive', 7, 1429365780, '099f4fb5', '', 'b3c620b4e54f26994512dcf93d6498e2', 'WrrQEVoqfoRgkacnCf/G3/EZRmp8BWqyb7Vufa0mPi687hjJwEu9qZ0CqbQ1xE3XG4KjpaVdbHrjK86ZNsWl0w==', 'image/png', '9d7344f7', '57a97cb03ea0994c7f4230357f296aa5.png', 1429365787, 36956),
(14, 'drive', 10, 1429365854, '1c11a9a3', '', '2e52f78b7d88ddc4e9782e8c10eb65c1', '7N+bvzQOGQwzCsIHWoIxEdJq6k9NmTFG8S+ZH+8DTWf6WL82wUZQSHsbGG6fvXW+F5ifpJ9tYoeX9jDznCiwyA==', 'image/png', '08f4ae1a', 'e2869f53.png', 1429365857, 36164),
(15, 'drive', 10, 1429365871, '45bd766d', '', '2e52f78b7d88ddc4e9782e8c10eb65c1', 'LbxHThsMmxE/ufGr6oo5qhtcScPQledSmj+PU8gAr9LaoT9sIzUQGDmO8zzJjRDwi6T5zJNWGxcXdk2vdThZbw==', 'image/png', '588af2b4', '2f4861b1be3231110a218f8350fd3242.png', 1429365875, 36164),
(16, 'drive', 6, 1429379215, '4bdcb2a3', '', '88ad80e8a4aaea8c7a7e0b453e84801c', 'u+1C3sRLLj2nqcpOcrZhg4XW5NyTYdWmZBrI3i9mVoGMeL5QGDUbEABeHNxnHqJm9JuMR8yVjM/oGbeNJyyJIw==', 'image/jpeg', 'c62e8b0e', '4815bc31 (1).jpg', 1429379215, 3886727),
(17, 'drive', 6, 1429379218, '73087217', '', '40671ca8a56801b76f59df00dd01f6b3', 'SuCgm9m/9bIK6ysSsn+9+9q4RxsDJ2oSBckqJN6T6D4Ttrfs6tO3zGIy4Sfy4YwMEeSnWzO/emEnFhEsPK3teg==', 'image/jpeg', 'cd89ca0e', '4815bc31 (1).jpg', 1429379218, 2292541),
(18, 'drive', 5, 1429379219, '78b4449c', '', '309f667392100ca3b12b380267e09289', 'xXHr0zsn8Wly2Dk96td9I8JntvLWlID9aQr+pjy77gSPM2JV/MjxdIUz4npWp3FYTBwtqx7iN9f6zCIlmazLDg==', 'image/jpeg', '1dcafc18', '4815bc31 (1).jpg', 1429379219, 2292541),
(19, 'drive', 9, 1429379219, '068f424d', '', 'c5d462b4a06f45a9c0a87653411a3200', 'uPGWH+9PLjXzlLgJYqmDmYvzJPgcnIVPcdW/aKEjylX2JrOSLHxjKy3DXSrelLTNakj9G/aDIPtCeJGwzUvHzA==', 'image/jpeg', '26a564d3', '4815bc31 (1).jpg', 1429379219, 2292541),
(28, 'faces', 561, 1429945732, 'c0ef6fab', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'Gf6AV/KuZdQVqjKQEoY6PGGEk1Dd///z9387uWPq7MbcZqfRZ1m/FNnByaOh9EUtLxAYh9mKGeJyWaBWVzF6YQxw1e8z8fH6LvyGo2uZTBQgvA90Pri72iHRbWdFOSNZzm586Mc8ANaXF/p1amX1TCrXoKUEz2ITbP5AIPSRReY=', 'image/jpeg', '100df54f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429945732, 79563),
(29, 'faces', 561, 1429946080, 'fe813fc3', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'LEBX7TF9IGtrpp6DmogpnMmCXKqlytzV7PZHeD7VLd3Juv4E3Isqp4gH6UNV4Vhzniudl3IFzaxTU3fCwl/FJWG5SBnaUudx30QNMJWIhuUlkYeRet9fWWN/+JOrVHNsD+9uLbgS7mRoRD9vEOFsrC/kUhiwWoH3iBQn5MPgnKI=', 'image/jpeg', '1436e8b0', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946080, 79563),
(30, 'faces', 561, 1429946179, 'e18b79ab', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'JiFmsyZ2YWuJULU3+EV5jGUyvkaRZ5JrXT9JVTa+/6VqZ5G9+1YH+o+VSTWHM1V5y1tGuSaOGmYmJW0N4QGegkIY7QL3YCtrPJm5uxTOWyYhBRVu1a6OkyvU6ACZwa0mbcVM3QJdg/jupbwL3oRYogk1cE7W/Nzw4Y+Ley/GrEQ=', 'image/jpeg', 'feeb5d89', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946179, 79563),
(31, 'faces', 561, 1429946211, '7b36bcab', '', 'c4e033f58424ee2ba6a1df5c54694a78', '16CseZmeWF6UGlA8SvaoUJpkiTyLhRnsQEOMr58QqNxRTmu24G5NItlnW9wKNjom2W8I22CBD7jDqnESgzVCCPlIH4Qwy5eyFVuiFDSF7ybSsQbAGqSdtK/3gv3mC3P2M8DKo9wOVtF1txfYqtxoaCg5Naj0615UWsoB0LVUVnQ=', 'image/jpeg', 'aeaabb3f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946211, 79563),
(32, 'faces', 561, 1429946289, 'edcc9de1', '', 'c4e033f58424ee2ba6a1df5c54694a78', '6VbpBreJZ/8d4tzTE1arYdPDeiypaHUWspxTUtnRuc8ju4PHp6YT7uJwaO9HL/4VIE0UvXlrlbm6EY6bG2J6iMY9SYC4Hhtl2x9eXjvElYslcKQDbbSPrixRYvqZ1GlW6l4G54M6kvJHlrrTHebBw1wk1ZZsZJx9vWXiRLJm9Kc=', 'image/jpeg', 'cb31b63c', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946289, 79563),
(33, 'faces', 561, 1429946304, 'bbdcaa66', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'I/ZNaw0A7FLz5fgRrCY+zs/oP6TDcUfJ9cEhVuMQxXfmWZ7ML8RtJptBDsu+AVXiboN1rcD25qC88QqTwvuJ+dR8Vj9lbSv5iC4Cgy6vxG/k+FogvLdaRM1CbacnT6FUhQkVozVwrpBN7/pg0Dk72QFVOdorhAThNxVexFUw6Dg=', 'image/jpeg', '5db614b8', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946304, 79563),
(34, 'faces', 561, 1429946404, '4d241371', '', 'c4e033f58424ee2ba6a1df5c54694a78', '9LYtzPebcocWOflxGFuIzd+QRaVS4DiIpUGFofkxpEpIF7zAxb1hq4DBSY/G9ytk61N78pU68kMCYOr1iyNA9Rkb1GGeiMRdohGYsgbn2pkzj9GLKdQMWA0uFLH1ail7cOIa+Vd9qX2QA8Gfd6nxDuMkg7JoxXQyLos8rivfEB4=', 'image/jpeg', '4c439d11', '10985280_458046784350741_8656683154662365614_n.jpg', 1429946404, 79563),
(36, 'faces', 10, 1429947076, '8106173f', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'BOX+nrO5h6TMwf5+WIBcsI2JARx8iEllm8pZ6DQAQmv5roylZpccMUj4an8YbEfGdVBJ1r8aXWuZ18fK3bzEUA==', 'image/jpeg', '7796ba2b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947076, 69608),
(37, 'faces', 4, 1429947110, '3eb5cd2b', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'qJcn3mDw0V1MZ4NB+rNuNcI3o260LjxTYioJflrSNGbvBxMbW/o/GQngHgWwod875Y7/6ojRjZObAfygu2WqaA==', 'image/jpeg', '35c8f9e1', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947110, 69608),
(38, 'faces', 6, 1429947160, 'c59dd9b2', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'ZPv97LtclVoSAaOv+xdhFCTKWie7gvzDs7gCCxUpo2bI11L+KNhRe8yvqkm6u1rVDq6S/9PmXAmBh/tPyF9lUg==', 'image/jpeg', 'ab3b0e88', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947160, 69608),
(39, 'faces', 2, 1429947186, '9a1f1350', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'af8iFBrj0R1Gw+n/0Ip7aRSOIgvtp93sAmhtKLM5QYZpc3AocfOrJl3d453yDqvaQXQ25tB92bKuC9fXO+o07g==', 'image/jpeg', 'bdaf741c', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947186, 69608),
(40, 'faces', 2, 1429947216, 'dc4b9033', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'Vab9jB+9gZ5pjLQSScRsZyPFc4AsYQRIL2k5GDpMumKbFdMCTvMstDUEJsSOHG7r+YOpgIhQxkfa6D0OCgx83g==', 'image/jpeg', '9a5ce330', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947216, 69608),
(41, 'faces', 10, 1429947242, '86cbd5fa', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'WxI32JFIkjqeDOu5FWOsCjtstT0s2Y4GcP2jAlEKN9bvVPnQKBvwJzNO9hfxezM2fR+mcsCc0FByYT5mgBAZAtr7EObqAnHZ3LHyGEJfhTTGO0f3PTePaPQ7ys43KSZB', 'image/jpeg', '0ea6cc70', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947242, 69608),
(42, 'faces', 6, 1429947322, '820404e4', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'zOeOcE3zsYJnELwLqES7pWCLI+Vlqg/Ikue+nb0Uc2mUuIrMzA8i57dyeRdgUwfdq2YmUdzjaFyYQMxQdbWYUQ==', 'image/jpeg', 'f0568973', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947322, 69608),
(43, 'faces', 7, 1429947410, '0fc02ae7', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '2pvbFrfGfv24ADgjRaOJJJGTWrJd8elco3TVhebLUXTbc9tn4l6JLfOs1E3uVjdYI6xHQfRiLAYRqoFHHlM6Nw==', 'image/jpeg', 'bd8c695b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947410, 69608),
(44, 'faces', 10, 1429947446, '90bad22c', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '7MugdbtZ7EHFlmy9SmtjncmtgLjUkbx7Od2x/UriL7TGGxyVlUyLRgyRnVAKPhUg4W/rEHiERLTPrU3RR0wCCG3MWqtAThE1jBoaq+j+FCvD4jHrp477+6PGXbAjnDrY', 'image/jpeg', 'f718da54', '1234489_638157786330815_1794467412252996416_n.jpg', 1429947446, 69608),
(45, 'faces', 8, 1429948013, 'ab265d98', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'ndGK1zwpLiz3ctuBxoqiyCgIFt4TY7aL2xdRmEwDClXZILgMBtBFMb7dvevRS5K5Oc67mrrxD9gpfFmloszF5w==', 'image/jpeg', '80be6259', '1234489_638157786330815_1794467412252996416_n.jpg', 1429948013, 69608),
(47, 'faces', 4, 1429951501, '092ff2f3', '', '17b5102fb1191b7686180671731f91b2', 'geqU92/on0IQQLjA19wIt160oK+MtQV/SV/kfXxg1KmPCrVoDC8s5pOPUrJStSBxw4XkaPyXz4wshn/5MGMEvw==', 'image/jpeg', '4dad00aa', '11182252_1416413628676582_8957238758697593813_n.jpg', 1429951501, 15949),
(49, 'faces', 3, 1429952210, '42848c96', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'cwrXOSs6esmDQUSqxL1l7b1b/FRrh1k36QvGyeitJJltB6qEPVTke0dysikDNivPMMtAlOmCogNxf8ig5/+vvA==', 'image/jpeg', '7416ba14', '115.jpg', 1429952210, 37566),
(51, 'faces', 6, 1429954360, '37832c94', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'zYjtYWvCV85buMdNT9NrUqLcpXE8byJLuWT6EQlne81iEN8C3bmUaAGwvo0xzAHXpwVjzFOZHtwUlb0/gqBnYg==', 'image/jpeg', 'fe684453', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954360, 79563),
(52, 'faces', 3, 1429954429, '7a6c9891', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'ZpW0SDd8ZVItV1wsmANF8UADBI1WDr2aiVEwUcd0Qg2GgNIt0NiBkLPxQjHcBBrUeXMihYz/hvTgelhZKNpXNQ==', 'image/jpeg', '19153703', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954429, 79563),
(53, 'faces', 4, 1429954523, '8ca4d5ce', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'nrGnk6h4PcbMxK1azSjrT13RqAOKKivQvKCr/JKb+k/+ed/l7AvJ2278sNCBkNA1ZTLc5jXchjYiONTa3MJm0A==', 'image/jpeg', '5bb062f1', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954523, 79563),
(54, 'faces', 6, 1429954552, '0d76ecf8', '', 'c4e033f58424ee2ba6a1df5c54694a78', '+8a4fc/QmyKYZCm+ZES6/qqvPn8J3w/Zae7T3ZtIuIwFAq5ygeOAFUgzc21lIBhFpMqHv4MGt6aDoi1xivtnlw==', 'image/jpeg', '9e04dd0e', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954552, 79563),
(55, 'faces', 10, 1429954579, 'cca5da5f', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'djugqwzCZJqmSHhSU2WEXzJqD+9kPF3nKUyR86et5kU/sheDQQm/o29Egn5lbFd9Uws7RWNGv1QGloUr60ZIOg==', 'image/jpeg', 'b3597846', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954579, 79563),
(56, 'faces', 9, 1429954594, '38d6fd5c', '', 'c4e033f58424ee2ba6a1df5c54694a78', '3BoKkWJajcg/C6hA8IYcNreLUR8AP5GqbB7miMmZFyzaEscBDiT2pXUmyEb0blPBiuYnlYjZgNaYTy6igzeUKg==', 'image/jpeg', 'ec5a8084', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954594, 79563),
(57, 'faces', 10, 1429954618, '330d22a0', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'yow/wQkXSctFucwfOZjhUg/oGrqT+eZl+hwW3XRGL+gzXh2gEcp2fog1FygsJ3mFK/6LBmiKnDWc20Nuwcu57Q==', 'image/jpeg', '6d1f416f', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954618, 79563),
(58, 'faces', 4, 1429954669, '4651225c', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'JaPZoVJ7x5rCeU8BjVZeTRSWLmrjdZj0YYxsgWUa5LH34/U8vURbrQ+EWOhhhXcwZzW4imfm1720l/Vur/gTtQ==', 'image/jpeg', 'a24ba065', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954669, 79563),
(59, 'faces', 4, 1429954701, '11a055c9', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'g2JK7N5mVfLZ2GGeNfwq6ZDM9p++n5/jCg/Ig8/7dE2jlcr/YSE3TnVVoaD4robQLu1LXLgpns3cNPRCUXjyAQ==', 'image/jpeg', '09fb1e05', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954701, 79563),
(60, 'faces', 7, 1429954734, '54010674', '', 'c4e033f58424ee2ba6a1df5c54694a78', '2iaeGjRrVTsvmMVDQ1Q5CxKUYHqCQLQ9eJc391zuz2EuRt3x5jK2cyXoyJlQZFoPitAM4q+KzxDjjaZYBLmvqA==', 'image/jpeg', '1a807daa', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954734, 79563),
(61, 'faces', 5, 1429954785, '282cace7', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'uvYME7Xh4pZxxylMdcTUZwwxsvRpE3cN1ZvoiAN9WURfa22Z1cgMKrkEHCv7n/igrPinsuRK2Tukvv/YyqvVyA==', 'image/jpeg', '950af92c', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954785, 79563),
(62, 'faces', 4, 1429954895, '50a9688c', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'V45KnYIbygBKZNYDboyrByX/XyuBaNd4C1JBaCm/1NoddMrXLsCqFFhFQns/RsJ7wMi94wR1tXWnJrN0ZcuB3Q==', 'image/jpeg', 'cec34abe', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954895, 79563),
(63, 'faces', 4, 1429954952, '2327d1b6', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'WtJaYCLL7ECzeaqe2r3VaP776t9R9NcGQP5okyrX99TkjP1ldB4p7uDWmOStR9qu6nrh0tTyfl4XLt5xmGeNzQ==', 'image/jpeg', '504253d0', '10985280_458046784350741_8656683154662365614_n.jpg', 1429954952, 79563),
(64, 'faces', 2, 1429955213, 'f3d9147d', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'nEeBVF8ADaMF27u4GgQOgohCLUhH8be12xUSDv4p8zu64NTQ1UocSKJy1jRiCE4bUC4S7NTrrj2umADUhZoIxQ==', 'image/jpeg', 'd0600451', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955213, 79563),
(65, 'faces', 4, 1429955307, 'fad9f241', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'v6Z5O8hV6DmKaaK6wS+g4Rvf3YAXHEQy2VjZJoNeZZEcYrp/Hg8j9Z++XTCPkZZxlgAJvu1bNbwaNxdc6RJlTQ==', 'image/jpeg', 'e789bf9e', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955307, 79563),
(66, 'faces', 3, 1429955348, 'ce3ac646', '', 'c4e033f58424ee2ba6a1df5c54694a78', '7RfiGwbviNlIFxlxkLT7Mnw3af0W4mjJgChCH90rqQP6ByjEwAl7+2/Umbi6bMGEwk5vBhQSEmFofMPox2jPQQ==', 'image/jpeg', '534394cc', '10985280_458046784350741_8656683154662365614_n.jpg', 1429955348, 79563),
(70, 'faces', 6, 1429961372, '44055703', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'fVWvzgxWpEfl/L3m71F7oD/cmjQAF8BWlO9HSCSQv/D9edGj7HZUXd0EFamIgv56juIBAZqT5MTjjasz8j69yg==', 'image/jpeg', '198be059', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961372, 79563),
(71, 'faces', 9, 1429961493, 'f5976e28', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'HpN8Y5aWm6Oo/xF3KVD+EGZBUc6FKh1++EouRgujalUbmd1kfbIxOMvlUog+tjO3eTlcKZda1swOJyxHxtkUmw==', 'image/jpeg', '09a76061', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961493, 79563),
(72, 'faces', 3, 1429961538, '9a70b143', '', 'c4e033f58424ee2ba6a1df5c54694a78', '/CfgLsXEhOTOxYTEdtYuwfBs3mU9DWZfuXH5SuEqhXykwahIjQs3uSMnsgi4/EsvFHG4x7j9d7zOJhmwfLZdWg==', 'image/jpeg', 'f570e9eb', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961538, 79563),
(73, 'faces', 3, 1429961577, '0c3def61', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'lElQR9w0AnOyAOG1FSYuPBCh3BdJmypHphSbSqb2CKyL9DlRYk50o6MrjrwO/3W6ybybPHHSlXJEcshl5YQEIQ==', 'image/jpeg', '3def7ee8', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961577, 79563),
(74, 'faces', 2, 1429961646, 'c16bce21', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'QeJ9By+cZ+terRKJQrD2lYghivKOiLoNXD4Zlm6mYVaXNw0zzcnVjj/+biPBKfl6OVkfWwHpIymVLidez7MFUg==', 'image/jpeg', '109334b9', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961646, 79563),
(75, 'faces', 1, 1429961709, 'f81d8b9d', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'qzMYG/xyKj+lflv7UsIeir/seh2IaK/oxSAEUepzPgjd7es4cm1U2LYt1VxHJ0AjJ4VaUWnDgxk1ChBSzej7qQ==', 'image/jpeg', 'a950eb6a', '10985280_458046784350741_8656683154662365614_n.jpg', 1429961709, 79563),
(76, 'faces', 2, 1429962362, 'c11ffeef', '', 'c4e033f58424ee2ba6a1df5c54694a78', '+4ZdBugi7Ip/aStDG80ZLAGX9dRHB9/UG5Qqm6Ms21Xjoly+vfHEzW3hIeaT5kq7GoF85tQXQs7J5GnCheLMeg==', 'image/jpeg', '6e968878', '10985280_458046784350741_8656683154662365614_n.jpg', 1429962362, 79563),
(78, 'faces', 8, 1429962406, '5eb8787e', '', '6102a0745b62d39feac33080816ec5a0', '/Ft2otiZNRvhNABlUkC63iUWdctr4xLIDhXRYbF91UeYlmuqND1vjRfuaPltYECdlZMgQoM+cqwsYF1zbpZxrQ==', 'image/jpeg', '218262a5', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962406, 84548),
(79, 'faces', 4, 1429962411, '9c18ed68', '', '6102a0745b62d39feac33080816ec5a0', 'gU0PRvBE0z95AveaB4bxQAg9SCZFX3Qa/FJKV4IKz0r6pGzF1tmOvfawu+47EwiYDhB684T4DgC0bcWE9IyrPg==', 'image/jpeg', 'efd47e94', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962411, 84548),
(80, 'faces', 3, 1429962414, '8a2918e0', '', '6102a0745b62d39feac33080816ec5a0', '8M2TkNLDwFDJta/tIBMHJchZ3EOeFcG1G0cQxOi6+zz6+EvqXlLlIHUq36zW3uXI7OUfQc4LQxUMhaDIeKA69A==', 'image/jpeg', '51230408', '11046663_353677424833018_1299055706151198721_n.jpg', 1429962414, 84548),
(84, 'faces', 8, 1429970706, 'b4217fcd', '', 'cce20705f5896f290aca3bdf211ea685', '7ZByIks8DU9LsWWddIVDjoYwAggU5YIhD7nfwsYoOn0eOYPop+JJEhvOOnnRPmsHKV+XB4VpCPyRtps4dekZ+A==', 'image/jpeg', '88f83612', '10984130_640550226091571_7053296818168215029_n.jpg', 1429970706, 14318),
(85, 'faces', 7, 1429970708, 'c75d1367', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'cFKumwRFl3QNi5WxL5OA4TD739V6zYAPXaRTeoy+8h21LYyAKYyo7EBP+FTsaBazJv+WFo1GJPjMUK6XVTtJzw==', 'image/jpeg', '465e5d2b', '10847938_598251166988144_4544651445744408482_n.jpg', 1429970708, 48777),
(86, 'faces', 7, 1429970710, '365af501', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', '7ebj4NjFzDlcc79C9pAiP8UFChTAIcV2SIafzxqXUjGIvPLlaEpNskExa9EIm1UQLNDFr9IZ6bL+mhdJaXgELg==', 'image/jpeg', '4b8bcddf', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970710, 69608),
(87, 'faces', 3, 1429970807, '0e059540', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'GveWVoJ9mbl5ZiTBCV0geXHoEv4YxYtE2GNFM0BCWmxwkGTxPHXmqlDIULgmn2bGUqEFRdLzFoEaTbJSk8tZQA==', 'image/jpeg', 'c309c2c0', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970807, 69608),
(88, 'faces', 7, 1429970862, '425b4f3c', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'iNclcvgJkMbDqsTezaSiK2J/ByTz9RfewZaf9cgz1b9gKnJJtAJxP/2XlMqnDpjaua4M5Btf1k7uoUK0uQMLNQ==', 'image/jpeg', '42d3c94b', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970862, 69608),
(89, 'faces', 6, 1429970909, '585f15af', '', 'fdcffdf31b0f6ed5d1c86158f33935bf', 'iyPJNuZsHEvQ/BULUPEBjwy3zWvvK1zPQZ/pC4+3RVKnvylZETTRNpC+ChUom58nmzfJICen7vwURFjUbidw1Q==', 'image/jpeg', '7fef7bf2', '1234489_638157786330815_1794467412252996416_n.jpg', 1429970909, 69608),
(91, 'faces', 8, 1429971106, 'ed1d842e', '', '2cabf5729cb487206cbcdd8844c6ee77', 'a8qWEaL9mesgReEXbo18xND3owwdsggzbs56tORwDfGrk3iOpf2aVu2lkiei5Q6Hzw8XRUwTWWn1uWEQ5Ub1JA==', 'image/jpeg', '53fe462d', '11058415_1564846553801245_3565501618256816433_n.jpg', 1429971106, 41553),
(92, 'faces', 10, 1429971252, '331aabdf', '', '2cabf5729cb487206cbcdd8844c6ee77', '0qA4tM6+oGT19uawZM8uxQOUTXnnaGkO5p2DMUtstKOlyDvozrZWqKDa1Zjfgzr3DNbKgwh12YF/qWOpCHsBDQ==', 'image/jpeg', 'f3166dc5', '11058415_1564846553801245_3565501618256816433_n.jpg', 1429971252, 41553),
(94, 'faces', 9, 1429971374, 'e53864d0', '', 'bbe6a039d707951c802a937a76f0d078', '54i+KUAuvdy/kj5RIBF6dlcq0Sd0EGdTI9CQE7vT1rkIwvodU4Y2UEyFMkoLYh9YUWBKJoSD5V/89lg2C024Bw==', 'image/jpeg', '037f2820', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971374, 49420),
(95, 'faces', 5, 1429971436, '31dcc22a', '', 'bbe6a039d707951c802a937a76f0d078', 'vXkkxqQteTJE4FQZ48ugixuL7/8VyOpV8/uc44KMCpTFAFjCl4/tzm3PhQ2D63T0kn8T9072zYnz9KG/JCKAqQ==', 'image/jpeg', '4331a8a5', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971436, 49420),
(96, 'faces', 8, 1429971520, '8dd348ea', '', 'bbe6a039d707951c802a937a76f0d078', 'sLCkbKKLu9iNLCts4e0fhAhMH0FJFxSIsiPlj/nXcO430QAAFLT0wUH8DrHjsTuBKV0ulupz+K6xMw/7a8OUtg==', 'image/jpeg', '38a8c64d', '11015098_642463922566868_5402341216199440277_n.jpg', 1429971520, 49420),
(99, 'faces', 10, 1429971704, 'edc9ae55', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'vMg9BHtCGU3z67FCVq8fVtDNeZbWZmsOpgJNwOyMFvL74+ATbzexUzI7ehyS5aVHyM1jbW8kSSOgu4AZjCKzfw==', 'image/jpeg', '7dfc7bf6', '115.jpg', 1429971704, 37566),
(173, 'faces', 4, 1430044854, '891d1e26', '', 'f6445aee92e64112a4eae2c1054da60f', 'x+MNqrf6EjHgyyAimqWGQ4LerHlJrD70KW0goz9Y70qifWZUbaZG1lIRmlS5fqOVG1u10AUNtXOmLaGj6yWhRg==', 'image/jpeg', 'c4f83796', '11061781_353337004858260_4178643732005538742_o.jpg', 1430044854, 294764),
(188, 'faces', 3, 1430048816, 'd008bc75', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'ZCc669mKpDOiRJANJQ2Fg/coIXNAPZMk+iYlmFE/YAGcvFlGu/nkXjXM3ktg2ATK0/5i/BmSLHgNRord+MzzFA==', 'image/jpeg', '92fd5b20', '10985280_458046784350741_8656683154662365614_n.jpg', 1430048816, 79563),
(190, 'faces', 4, 1430049555, 'eca0e312', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'dXCYQRVm78wsXwouPTH6Enn+YkJqIbGFD4eX0uMjC+InnxX3Ma7tKuRr1t8VOogFlK2ZsBBua5zISAxuTFCwTA==', 'image/jpeg', 'cdbc4e68', '10847938_598251166988144_4544651445744408482_n.jpg', 1430049555, 48777),
(230, 'faces', 1, 1430061307, '437d2ed3', '', '4f7fd659c3630112913d29e2769cae74', 'HDCIDqtV6z9siAv5ZbiYzGyYO7PCng8u4UkS1xe56L6fyu8GNz1OHk4HD7QWMVVvye98ZsGn5jnu93nTLHVGnA==', 'image/jpeg', '4d5ee95c', 'nhung-buc-anh-tap-the-lop-vui-nhon.jpg', 1430061307, 99113),
(236, 'faces', 1, 1430120225, '6191b392', '', '934b6ffba5b4547e1d8008f0abd34393', '2HBsiXFJzxqq56yCXMndbdOKWof7Ee05cI86WGZwk6mzI9XWFB8RAR1fm/HPMuM0OQEBblWaFauUwaIAPmDJDA==', 'image/jpeg', 'ec6c831b', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120225, 146301),
(237, 'faces', 8, 1430120233, '4e93f269', '', '934b6ffba5b4547e1d8008f0abd34393', 'gbLhYhkSzSlFfva7U9ll5+5OV4wg6yhr5TDseLprrwRdYHy+dYCIZW9rNlkm5ijr54oDAdnFsM7pYeeBfZ/3mw==', 'image/jpeg', '7fbf5d9e', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120233, 146301),
(238, 'faces', 5, 1430120239, '0784cb86', '', '934b6ffba5b4547e1d8008f0abd34393', 'hs8ieJRZ53cFpgPbGr7fzXF8cLHJkOU6lkv2n1t6y5zcv/q/QjjWoyd6KSv6oMndWFOrwyN6Yun/ndEbY1aOPQ==', 'image/jpeg', 'c0576c64', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120239, 146301),
(239, 'faces', 3, 1430120246, '741be0ec', '', '934b6ffba5b4547e1d8008f0abd34393', 'SgZGind/LIO3l7JJycfM4qMfMrwSHUgAYnxO3Oi10Hoqh2PyKMDc00cw+UPyYYWY98MQ5fclw9HOef8CSmcqCQ==', 'image/jpeg', '3783604d', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120246, 146301),
(240, 'faces', 8, 1430120253, '5d4dabb1', '', '934b6ffba5b4547e1d8008f0abd34393', '4J4ub7j52r6Kp0HpP8oU74HQOn/bHcirV5FX8bkRkst3ZGexjSE5VqBFDBvNTDpSYNovWC6oK5UBGyRg08E2lA==', 'image/jpeg', '2f52801f', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120253, 146301),
(241, 'faces', 5, 1430120254, '3c91c0c7', '', '934b6ffba5b4547e1d8008f0abd34393', 'tox+jzY5X/DjddzNggiHL3/bDy2TxHWUAS+IeiV04IiFS0pMIqYGfM5CqXPyFWHm/smr6NcQEdanBbwrLSB+uw==', 'image/jpeg', 'e92e5c74', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120254, 146301),
(242, 'faces', 3, 1430120259, '25de4f49', '', '934b6ffba5b4547e1d8008f0abd34393', 'b8oLe0Noz+evNlO2oWQw6saxD4lP3RBdcFIpHGVQKTwUFyHHoXVmxa6sgkunqaqHYfXJE8B121vdwsD88mVJ2A==', 'image/jpeg', 'cbfd7498', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120259, 146301),
(243, 'faces', 4, 1430120264, '3b87f1cb', '', '934b6ffba5b4547e1d8008f0abd34393', 'tX7ca6zW1UrpUhFA2Zs31ca2GZcdc5pnAFhXeicKPLBfhaJQBtwu2QKZxll2B/epjRADea2M3JtQlCIMbIr6Uw==', 'image/jpeg', '40bddf5c', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120264, 146301),
(244, 'faces', 8, 1430120268, '57b75e93', '', '934b6ffba5b4547e1d8008f0abd34393', 'BPEE2bOVgG1U9UX5t/1skbPPIMlrUrZt2Jai1SqD6HhPkepTYnQFDK7beYNFXcKo+Tan6fsTnH39azuaaptRew==', 'image/jpeg', 'bfd17721', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120268, 146301),
(245, 'faces', 7, 1430120272, 'a22e636b', '', '934b6ffba5b4547e1d8008f0abd34393', '+2XW+SKdZHxhMZTYTMw/edG53/tGO6kOZoexmBZVHXTv5oyMQAOzmJfugqv0oo+R/hpy2rgSormx4O9CXe6ukA==', 'image/jpeg', 'd249d091', '3027252_Tinhte.vn_Game_One-1.jpg', 1430120272, 146301),
(246, 'faces', 3, 1430121295, 'ada39246', '', '934b6ffba5b4547e1d8008f0abd34393', 'TqS1IZKl+ABDuAl5PK4PKYL+yHDedUK4euN8Wchjpe4cId6/ha9+6LvGdI3SDv0xM6wanNF2xsao24aKGqoeqQ==', 'image/jpeg', 'd22c8317', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121295, 146301),
(247, 'faces', 8, 1430121300, 'e31ac20d', '', '934b6ffba5b4547e1d8008f0abd34393', 'JA6lzemcXo65+fL1m2ehPMY8saIL91igt7+8T9ZjU530G2SY2Q1aa1vkxaITbnnKuLHvwUXFexrdippRxNQozg==', 'image/jpeg', '80ee5ac1', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121300, 146301),
(248, 'faces', 9, 1430121305, '4742ff81', '', '934b6ffba5b4547e1d8008f0abd34393', 'Rurmba5Kk/4s4dU057+Srs5ZY9UVrfpS3SqjIRe8kMJoeyQwcmySQmr5TIKnx2ccUailS7P6NU1Lcc8j5Ie3VQ==', 'image/jpeg', '4d1f99b0', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121305, 146301),
(249, 'faces', 4, 1430121309, '09beacfa', '', '934b6ffba5b4547e1d8008f0abd34393', 'PcvQd+La79F2uRkKK6dU9/ELCEAeYcfv3OtZe+skO+QGG34fr42vmp7oE8LMXl8FL5kMGVsqPO6Z1RJghmNTqw==', 'image/jpeg', '6af73d10', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121309, 146301),
(250, 'faces', 5, 1430121314, '417c1079', '', '934b6ffba5b4547e1d8008f0abd34393', 'ps7SZQ5NvdGuS77XBcuwj17nVEb/ySd2cVjVx/ee5kEz+L0qzHxH2YZKqFBG691pLW4ALH2lbf+/pZPSwAl//A==', 'image/jpeg', '649ebe38', '3027252_Tinhte.vn_Game_One-1.jpg', 1430121314, 146301),
(264, 'faces', 4, 1430125899, 'eb1b10ca', '', '8934d73eec4b5aca7bd2a5cb08b52b19', 'aePd95HgsZdygBzI05zCtf74rHx7jCEIbYecFZDMGlHWFGnAnC/0sE/P7TNTN3aEYqS6IHDvSamDmnOEyES28g==', 'image/jpeg', 'e52f758a', '11037216_745881038858595_9190097026788226341_n.jpg', 1430125899, 72332),
(269, 'faces', 5, 1430125990, '906a2b9c', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'O1h0xOfEc0wk9FJ+gGV8sr4nH+vUkGohzRFgJiwNDHpbL9GP1fLzDXWEpOLT/0WbruCAkrvHx0BlWFyS8GRwhg==', 'image/jpeg', '89d8542b', '115.jpg', 1430125990, 37566),
(271, 'faces', 5, 1430126112, '0bfafc9b', '', '0eeebfcfbdc7dc658f6d7c64f71be946', 'Hoq8nIDtYi6UveEnw7XA7PTIUK/MOThGKwRF055FDl7MUhTRWXBKX6kd0Out5ly24rp8gfEG0o5hJ9NgBc4EFw==', 'image/jpeg', '3c9e0271', '115.jpg', 1430126112, 37566),
(274, 'faces', 8, 1430126382, '9176dc21', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'rVzqPOCah9qFkLL9JDnhDe9dHrqnovwgifNgfHFy4LBdkz9mZbf2/Tf3h2qfZ23xJZ3lu7KjUSarFkW9nFmv3Q==', 'image/jpeg', 'e362566f', '10847938_598251166988144_4544651445744408482_n.jpg', 1430126382, 48777),
(308, 'faces', 2, 1430201816, '99b71f76', '', '30aa18e9939695e74a5c10f430036c6c', '6OzWipmcTmh52SKMGyCrxEqzAJGY+adKtCP7qk+6O2nr02+hmjsTii7paUaz+VgqSsJ6bQ5PAjg4U5PUXLyvpw==', 'image/jpeg', '3a5a714d', '11046687_383521038502730_6349441757754271948_n.jpg', 1430201816, 22205),
(312, 'drive', 6, 1430233303, 'd3a8d29a', '', '59a4659d3004f7ca6b52eae364a3eba0', 'Tpkz5uE7fVRu+/sN2njEkXqQuf2JazX0oDkETZpsYi2D0IfheqEanfR+4YFdk+jZgSMc7WOZXWc44spVH8mP2A==', 'application/octet-stream', '9891d522', 'C360_2015-04-28-19-55-26-791.png', 1430233303, 10576856),
(314, 'faces', 8, 1430234882, 'b079b75f', '', '59a4659d3004f7ca6b52eae364a3eba0', 'P8pyPNPplAEvRdA9C45OoiXgpZqVl1vQOsrExwyZEe4+xkHyYeJylB/AonvQ5bT9UjQYX3VABXdl2+4aA0Y2qQ==', 'image/png', '01276e4c', 'C360_2015-04-28-19-55-26-791.png', 1430234882, 956490),
(315, 'faces', 5, 1430235066, 'e0935808', '', '59a4659d3004f7ca6b52eae364a3eba0', '/TcxYcGeD8rqDZiQUkJ70Qb0EdsMO39C8MG5Wpv0RS8/OWwwD0rn3hx9S/7nALVD/LIH9i/R8p3F3rQs6RrXQg==', 'image/png', '442be678', 'C360_2015-04-28-19-55-26-791.png', 1430235066, 956490),
(316, 'faces', 10, 1430235294, 'f47d6e80', '', '59a4659d3004f7ca6b52eae364a3eba0', 'dhH3a6qqxloTcqDI1zl9ruCO5p/Od959ekF8JyAK1kE5YXQ5m6clZ4SEeJi7aZzI48qAI94VDqnoivOr4W1uUg==', 'image/png', 'e81e3aff', 'C360_2015-04-28-19-55-26-791.png', 1430235294, 956490),
(317, 'faces', 7, 1430235568, '9658dd2e', '', '59a4659d3004f7ca6b52eae364a3eba0', 'am0LP4/SIXhZZxMi4prV7z+nF9Y+4Mxbl+9uy6O/aGhVc2tEKrlk9AkQNS0gkQhRCdzypJKA6WWneUvsXTzi0A==', 'image/png', '02acfc2c', 'C360_2015-04-28-19-55-26-791.png', 1430235568, 956490),
(319, 'faces', 9, 1430235802, 'e8220501', '', 'b29d292f5349619e6944ec7c35af2c33', 'qC77YsW93mjopXdjB1Ay7DmpOQ276NwJiAeJ7OMoC6ahwloEDHtrkjqhcFttU4vpAYKZmgCV/CVYrkphplxRNg==', 'image/png', '7917c43c', 'bc3c5f9a.png', 1430235802, 993092),
(320, 'faces', 3, 1430235952, '9b965eb5', '', 'b29d292f5349619e6944ec7c35af2c33', '8PWbFebx/pG9U4Nlmw+iLqOEn2GOgTnG7fxGWb+OmilxGbbXwUou7MkdC/oHJrUYExKbtgNfKpy2ofSzKNpYcQ==', 'image/png', 'f5dd4ff3', 'bc3c5f9a.png', 1430235952, 993092),
(321, 'faces', 1, 1430236085, '71bb9980', '', 'b29d292f5349619e6944ec7c35af2c33', 'IprStT69eJDkHDdx3LJps+/eQGj4cU1Yyf8BW872FtkiAiD6hFmMBo2m2yPvDbJ6b8f9ClHcy2TfkOqqU0R8cg==', 'image/png', '38e0a4e5', 'bc3c5f9a.png', 1430236085, 993092),
(322, 'faces', 1, 1430236874, '604cc877', '', 'b29d292f5349619e6944ec7c35af2c33', 'symZg1XSVprJ11eLXSOC9VdWJfHe6MIQ8easpc+bFWYHVKurOfp0k8RE7lq7dDxyQBSvKb+6vYkZMv2giHqutA==', 'image/png', '74098445', 'bc3c5f9a.png', 1430236874, 993092),
(324, 'faces', 3, 1430295672, '0f4ee763', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'jPjCNksqoVbH2bueyPw0V8Vtz7t0AZ0Aap2Q9dXtAVpHfHAH1QDTYP3/pk5yuCamwnzHIxK0ne5YtY1XyaLojw==', 'image/jpeg', '63019bf5', '10985280_458046784350741_8656683154662365614_n.jpg', 1430295672, 79563),
(327, 'faces', 9, 1430320571, '8c252ddd', '', 'b3b553b30941abcd81ac7896f2e2e8f6', 'HqfzutMg08EuEE7RO6cMNWoxPo71A0NXiWXZikRWBZqqMbCiVGZ8p+Z4fdp73/gHryfCOfXlFrIctIloysKWBw==', 'image/jpeg', '0be64c4c', '11173356_628503133951364_5877760069393779979_n.jpg', 1430320571, 92465),
(329, 'faces', 9, 1430324400, '1ee205c8', '', '163093cc6c2cb87b92006a6dafdb66aa', 'xJT+WlKJesJ9eWmA5s5GdZ//5T+NOUeLr15oGo9P2pImzcnRrE5bm+xatdlDTA5XD2eg4UPJcDnDNQR7RrD44Q==', 'image/jpeg', '20799b14', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324400, 85622),
(330, 'faces', 9, 1430324404, '920d9089', '', '163093cc6c2cb87b92006a6dafdb66aa', '02N8GCm9MD0TXkpd5Bu1DrqUTPXBiviJ1ylCw3T1ZfkqjGlb4iNowYP0RD/x0EcF/4SgQTVpwUlIHoQrB+70iA==', 'image/jpeg', '62e57af2', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324404, 85622),
(331, 'faces', 3, 1430324408, '0cdca99e', '', '163093cc6c2cb87b92006a6dafdb66aa', 'gw4bGMElFfOz6S7cQCRSveVdu4cY6xfngyvBjWR8WbhgksTIeZlljGMfcmtYcgKsimRIKq4ZT87VZvBtM+w1cw==', 'image/jpeg', '2f590ffe', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324408, 85622),
(332, 'faces', 3, 1430324413, 'a9dbccdf', '', '163093cc6c2cb87b92006a6dafdb66aa', 'GJ5Gi20MO1Hq79IDlACdvSYzY4GWEsJfeRqWLubKX3yV56F9EzbPqTAVAB61mLr28MW+GcEKjFmXF99PqBYs3g==', 'image/jpeg', 'feca18fb', '11141176_747089155404450_9041291105451923514_n.jpg', 1430324413, 85622),
(333, 'drive', 9, 1430325059, 'a3059011', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'bKY5Rc5gcr+2JjQaky4sqhYF4TDINTk8CMPQrNw8/SyGHfT8kLS8r1bJgWxPLP0WQnoTGXyDZ5/aOwIGGbhTIA==', 'image/jpeg', '2d56d5c8', '10997097_431451950355779_1526286295_n.jpg', 1430325059, 73810),
(334, 'faces', 8, 1430325065, '60ed513d', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'Ga0NoQ1XtGGVU0Wkzs4ecG/ACdCzp4j5cGwdZ+nLHSkyubtaUvZK4vGcteVIObwui2TlxV/R1Mv5ENFpQF++rA==', 'image/jpeg', '7f4b8e1a', '10997097_431451950355779_1526286295_n.jpg', 1430325065, 73810),
(335, 'faces', 4, 1430325069, '8f293f65', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'ohwFND+HzBij9/tP8rWbffDlLK16mHZUS/gFTwY4f4G+9/sUj70e05bgklFhe0hcXA3z8S1XBHnpv2gPj6Cv6w==', 'image/jpeg', '35abf509', '10997097_431451950355779_1526286295_n.jpg', 1430325069, 73810),
(336, 'faces', 6, 1430325074, 'dac28e85', '', '6c576d37c2a5d0121bb74cb5b09d3428', '+5rph3W6SlNBsoeLGZ7ASU5QNDz33loJ3E5e6jScX7tvoUyK8tTq8TadMtbosxadGs/RI4ay7OZF2THZnNyTVQ==', 'image/jpeg', 'a8461a5f', '10997097_431451950355779_1526286295_n.jpg', 1430325074, 73810),
(337, 'faces', 5, 1430325078, '80e7139e', '', '6c576d37c2a5d0121bb74cb5b09d3428', '0T8nXQ5jc0mt51eBE2lb+SkTFLEu2lO3Sqwkij8HDrzg4S1cr6rhjp1R9WBkOl/CAsXkN7idQl00d064w4oimA==', 'image/jpeg', '6e31371c', '10997097_431451950355779_1526286295_n.jpg', 1430325078, 73810);

-- --------------------------------------------------------

--
-- Table structure for table `storage_static`
--

CREATE TABLE IF NOT EXISTS `storage_static` (
`id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_static`
--

INSERT INTO `storage_static` (`id`, `folder`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'swf', 1429190446, '0b2829d9', '62f691cf0d3bb2b8cc8300d1107ff931', '', 'AG5aUd7jzk17rxOvAsf8b5uE/3gduecPYB/7tbhvnW8=', 'application/x-shockwave-flash', 'eb0e03d5', 'gplayer.swf', 1, 50221),
(2, 'xap', 1429190446, 'ae46f3cb', 'a83ab83a3d43222e4ba77cf96e0074aa', '', '6ETAZpJ8OYMcqKL7e4G1mZ8usEhVvhWg2X+uBR8ZHmM=', 'application/octet-stream', '3e629def', 'gplayer.xap', 1, 50221);

-- --------------------------------------------------------

--
-- Table structure for table `storage_video`
--

CREATE TABLE IF NOT EXISTS `storage_video` (
`id` int(11) NOT NULL,
  `folder` varchar(20) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` text NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, 'a2feca4b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'fYkUFHJl6X/A3GtysbOtGYynlyy8Fzw2yy6ZmrfvhJyr8rCZrUTbl/VdA/o93BoBFKICNyShi+lg3abAFfPssQ==', 'video/mp4', '42e0c9d5', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192096, 47959396),
(2, 'drive', 4, 1429192117, '2f26626b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'pQom57rWOXNSbzILKf2V8PpP4VnGRObVFTIaLv7ag4xk5eYIR60YdncVnA39a6UlUMte5ZnSdBWpal4OVO+zOg==', 'video/mp4', '9195bb7a', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192117, 47959396),
(3, 'drive', 5, 1429192346, '34bf7db4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'XpgoduXBmW1O6iMTQnuspP5isQ/7NPSrbe1ZL3pfYsnavFZc3bCXa7cOW0fpdfjZYpOtIFCnkU0UZl4Y/9f9VQ==', 'video/mp4', 'ddebafeb', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192346, 47959396),
(4, 'drive', 7, 1429192361, '42be53d4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'ecoSXvjCbxOWocg3yV5BEudrkp1LwlQRiSntYw1oBnNJ8aGQNCIbnT9b1v8M3j8wM42fZk24o/l10l/LTG+xng==', 'video/mp4', '001c4826', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192361, 47959396),
(10, 'drive', 5, 1429365454, '78502b41', '', '578f92e722a29145902e935ba20030b1', '/1G1B8/Rj/ClEDC3/b+bc0nmecBSzDCfPAK9iUhd8LfbAGyqOJHcH0AtQlqHI1N/gpymy+Bo00wHJ0SKCcLbQg==', 'video/mp4', '43e7e9dc', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', 1429365454, 11800047),
(11, 'drive', 7, 1429365555, '1434ce24', '', '578f92e722a29145902e935ba20030b1', 'hTXH3JskRIqlscIHku7uuzfqPPYnPEpAYc+VzGZe/cs/Bfd7jofjZKix57GUYFGng1Sht2vM3aOtP20zBaJYFQ==', 'video/mp4', 'd7ee3f3c', 'L&amp;aacute; Di&amp;ecirc;u B&amp;ocirc;ng (Remix) Ch&amp;acirc;u Kháº£i Phong - YouTube.MP4', 1429365555, 11800047),
(12, 'drive', 3, 1429365771, 'fc8a15cc', '', '578f92e722a29145902e935ba20030b1', 'Xc20uMTe8D7gmyptDT/rmKGU0yh15YrhRgCGgnLf/cCgU8nR728BVnx5sUh67sYmuWuJ9h1gNKNl+QVjvT8Nzg==', 'video/mp4', '70c9873f', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', 1429365771, 11800047),
(13, 'drive', 2, 1429365780, 'ac05fe39', '', '578f92e722a29145902e935ba20030b1', 'eJmi5a5s8Itjz1bKPlXBDmhKt2ZitDE0NPGxtdL2b09ePvZTDZW1drCDr2dVGq1do2QHlaitDqg5i/SI74/uTQ==', 'video/mp4', '0307a192', 'L&amp;aacute; Di&amp;ecirc;u B&amp;ocirc;ng (Remix) Ch&amp;acirc;u Kháº£i Phong - YouTube.MP4', 1429365780, 11800047),
(14, 'drive', 6, 1429365854, '8fe3ca8d', '', '768f0b5e43d356d8abb8b3f8569f2c8e', 'TXMEqcQSmIJag8JciTkDyMH5FhGwVs/QHwCsALobf8poK42jUW0b15DAkVETeBl6hO9m2PZC4/NEUBIyD92wDQ==', 'video/mp4', 'e328decd', 'Home - CloudFlare - The web performance &amp; security company.MP4', 1429365854, 10069607),
(15, 'drive', 6, 1429365871, '2257726f', '', '768f0b5e43d356d8abb8b3f8569f2c8e', 'E5815JnihXHLutWPBmSCkS+Db5u3zC6UOBND75Mceoa95tFJ0mM2JpEEMSu6+UfVTXrP9eybGyuL/gyfY9zQtw==', 'video/mp4', 'c98f61f6', 'Home - CloudFlare - The web performance &amp;amp; security company.MP4', 1429365871, 10069607);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `password.hash` text NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `middlename` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` int(1) DEFAULT NULL,
  `interest` int(1) DEFAULT NULL,
  `birthday` int(11) DEFAULT NULL,
  `birthday.format` char(10) DEFAULT NULL,
  `relationship` int(1) DEFAULT NULL,
  `mate` int(11) DEFAULT NULL,
  `family` varchar(100) DEFAULT NULL,
  `language` char(2) DEFAULT NULL,
  `timezone` varchar(20) DEFAULT NULL,
  `introduction` varchar(400) DEFAULT NULL,
  `slogan` varchar(100) DEFAULT NULL,
  `avatar.large` text,
  `avatar.medium` text,
  `avatar.small` text,
  `cover.large` text,
  `cover.medium` text,
  `cover.small` text,
  `theme` int(1) DEFAULT NULL,
  `link` text,
  `register` int(11) NOT NULL,
  `private.tag` int(1) NOT NULL,
  `private.search` int(1) NOT NULL,
  `private.info.friends` int(1) NOT NULL,
  `private.info.birthday` int(1) NOT NULL,
  `private.info.country` int(1) NOT NULL,
  `private.info.live` int(1) NOT NULL,
  `private.info.email` int(1) NOT NULL,
  `private.info.phone` int(1) NOT NULL,
  `private.status.view` int(1) NOT NULL,
  `private.status.comment` int(1) NOT NULL,
  `private.status.share` int(1) NOT NULL,
  `private.photos.view` int(1) NOT NULL,
  `private.photos.comment` int(1) NOT NULL,
  `private.photos.share` int(1) NOT NULL,
  `private.music.view` int(1) NOT NULL,
  `private.music.comment` int(1) NOT NULL,
  `private.music.share` int(1) NOT NULL,
  `private.videos.view` int(1) NOT NULL,
  `private.videos.comment` int(1) NOT NULL,
  `private.videos.share` int(1) NOT NULL,
  `country` varchar(50) NOT NULL,
  `live` varchar(50) NOT NULL,
  `units.temperature` char(1) NOT NULL,
  `units.speed` char(10) NOT NULL,
  `units.pressure` char(5) NOT NULL,
  `units.distance` char(5) NOT NULL,
  `videos.replay` int(1) NOT NULL,
  `music.replay` int(1) NOT NULL,
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `register`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `verified`, `dead`) VALUES
(1, '51e97042', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', 'lamhieu', 'lamhieu@giccos.co', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sH4sSk2ab2euudk+Tt26k03x/Ye75GTwpoZJKe8Fg4Y=', '0946083033', 'Lam Hieu', 'LÃ¢m', NULL, 'Hiáº¿u', 'lh', 1, 2, 923871661, 'm/d/Y', 1, NULL, NULL, 'en', 'Asia/Saigon', 'I created it. Giccos social network.', 'I see tomorrow.', '0', '0', '0', '0', '0', '0', 1, 'wall/lamhieu', 1410787532, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '3', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 0),
(2, '3d15fafb', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'QHqCu+ywO6slZ22otoJGVpV9TO1CJiJWWcxMbiO/kTQ=', '0946083033', 'Truong Tuan', 'Truong', NULL, 'Tuan', NULL, 1, NULL, 923853661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Saigon', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/truongtuan', 1414757503, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(3, '984c3d3f', '561ff2d840decaasdddbf136ec9682d22c7', 'thainguyen', 'thainguyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'oRNqTlcTL0ngnzvIH+vZ9U1+xeZT4QVghrwCcHL0e1I=', '0946083033', 'Thai Nguyen', 'Thai', NULL, 'Nguyen', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/thainguyen', 1414850443, 3, 1, 4, 4, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(4, 'e84211a9', '561ff2d8ecdbfdsds2c0ebcf8136ec9682d22c7', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'wH0xYlKOrs1MzGEqHkohSJD82YMUw6rewLBIxhsAsUQ=', '0946083033', 'Tran Duong', 'Tran', NULL, 'Duong', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/tranduong', 1414905982, 3, 1, 4, 4, 0, 4, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(5, '6a9e1ef6', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'minhson', 'minhson@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'Adn6fwgLZuTUheXXW0+fSk22rieUVvtoBOPJYAQDGrg=', '0946083033', 'Minh Son', 'Minh', NULL, 'Son', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/minhson', 1414988945, 3, 1, 4, 4, 3, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_block`
--

CREATE TABLE IF NOT EXISTS `users_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_contact`
--

CREATE TABLE IF NOT EXISTS `users_contact` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `at` char(10) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_contact`
--

INSERT INTO `users_contact` (`id`, `user.id`, `private`, `time`, `type`, `at`, `value`) VALUES
(2, 1, 1, 1410787532, 'email', 'home', 'lamhieu.vk@gmail.com'),
(3, 1, 2, 1410787532, 'phone', 'home', '0946083033'),
(4, 1, 2, 1410787532, 'email', 'work', 'lamhieu@giccos.co');

-- --------------------------------------------------------

--
-- Table structure for table `users_education`
--

CREATE TABLE IF NOT EXISTS `users_education` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time.format` char(10) DEFAULT NULL,
  `time.start` int(11) DEFAULT NULL,
  `time.stop` int(11) DEFAULT NULL,
  `school` varchar(50) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_education`
--

INSERT INTO `users_education` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `school`, `level`, `description`, `address`) VALUES
(1, 1, 2, 'm/d/Y', 1410787532, 0, 'THPT Ganh Hao', 'High school', NULL, '1'),
(2, 1, 2, 'm/d/Y', 1410787532, 0, 'TH Ganh Hao', 'Primary school', NULL, '1');

-- --------------------------------------------------------

--
-- Table structure for table `users_faces`
--

CREATE TABLE IF NOT EXISTS `users_faces` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `faces.id` int(11) NOT NULL,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_follow`
--

CREATE TABLE IF NOT EXISTS `users_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1414828075, 1, 'user', 1),
(3, 1414828075, 2, 'user', 2),
(5, 1414850443, 3, 'user', 3),
(6, 1414905982, 4, 'user', 4),
(7, 1414988945, 5, 'user', 5),
(8, 1414988945, 2, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_guide`
--

CREATE TABLE IF NOT EXISTS `users_guide` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_guide`
--

INSERT INTO `users_guide` (`id`, `user.id`, `code`) VALUES
(1, 1, 'explorer:select_a_file');

-- --------------------------------------------------------

--
-- Table structure for table `users_login`
--

CREATE TABLE IF NOT EXISTS `users_login` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `client` char(10) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `platform` varchar(40) NOT NULL,
  `browser.name` varchar(20) NOT NULL,
  `browser.version` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES
(1, 1424923573, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(2, 1425711630, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(3, 1425878188, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(4, 1425902195, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(5, 1425967943, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(6, 1426156274, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '40.0.2214.115'),
(7, 1426492718, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(8, 1426503780, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(9, 1426667251, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(10, 1426766353, 1, 1, 'fee443d9', '::1', 'windows', 'google chrome', '41.0.2272.89'),
(11, 1426836092, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(12, 1426836157, 1, 1, '50ee0459', '::1', 'Unknown', 'Apple Safari', '10.0.9.2372'),
(13, 1426836292, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(14, 1426837652, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(15, 1426837701, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(16, 1426927703, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(17, 1426949773, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(18, 1426954818, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.89'),
(19, 1426999482, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(20, 1426999489, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(21, 1426999493, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(22, 1427004681, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(23, 1427005357, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(24, 1427006996, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(25, 1427007038, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(26, 1427028782, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(27, 1427116355, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(28, 1427179531, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(29, 1427271401, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(30, 1427284523, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(31, 1427284803, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(32, 1427286585, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(33, 1427297803, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(34, 1427331920, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(35, 1427439227, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(36, 1427459726, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(37, 1427461977, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(38, 1427522813, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(39, 1427526495, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(40, 1427633980, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(41, 1427716675, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(42, 1427809220, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(43, 1427809231, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(44, 1427891806, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(45, 1427897996, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(46, 1427982013, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.101'),
(47, 1428238359, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(48, 1428328136, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(49, 1428411466, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(50, 1428469542, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(51, 1428473540, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(52, 1428474271, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(53, 1428479332, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(54, 1428553737, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(55, 1428653838, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(56, 1428667441, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(57, 1428742687, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(58, 1428765064, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(59, 1428773298, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(60, 1428773308, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(61, 1428773428, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(62, 1428773526, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(63, 1428773810, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(64, 1428814180, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(65, 1428931871, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(66, 1428932109, 1, 0, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(67, 1428932179, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(68, 1428932535, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(69, 1428937471, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(70, 1428941287, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(71, 1429106717, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(72, 1429187227, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(73, 1429248511, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(74, 1429252130, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(75, 1429273616, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(76, 1429274432, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(77, 1429331094, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(78, 1429335701, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(79, 1429335974, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118'),
(80, 1429361980, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(81, 1429377266, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(82, 1429428422, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(83, 1429537314, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(84, 1429600856, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(85, 1429691695, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(86, 1429712488, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(87, 1429795800, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(88, 1429851961, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(89, 1429862688, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(90, 1429939445, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(91, 1430031222, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(92, 1430059740, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(93, 1430117184, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(94, 1430120857, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(95, 1430121547, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(96, 1430145116, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(97, 1430200936, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(98, 1430214325, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(99, 1430295208, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(100, 1430324370, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

-- --------------------------------------------------------

--
-- Table structure for table `users_remembers`
--

CREATE TABLE IF NOT EXISTS `users_remembers` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_remembers`
--

INSERT INTO `users_remembers` (`id`, `user.id`, `client`, `token`, `time`) VALUES
(20, 1, '2b0bad37', 'ea7f2d79', 1453814608),
(22, 1, '6c6f7705', 'bda0b029', 1454909318);

-- --------------------------------------------------------

--
-- Table structure for table `users_workplaces`
--

CREATE TABLE IF NOT EXISTS `users_workplaces` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time.format` char(10) DEFAULT NULL,
  `time.start` int(11) DEFAULT NULL,
  `time.stop` int(11) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `work` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `awards` varchar(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_workplaces`
--

INSERT INTO `users_workplaces` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `company`, `work`, `description`, `address`, `awards`) VALUES
(1, 1, 2, 'm/d/Y', 1410787532, 0, 'Giccos Inc', 'CEO', '', '3', 'Author of Giccos Inc');

-- --------------------------------------------------------

--
-- Table structure for table `videos_block`
--

CREATE TABLE IF NOT EXISTS `videos_block` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `this.type` char(10) NOT NULL,
  `this.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_cache`
--

CREATE TABLE IF NOT EXISTS `videos_cache` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `close` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` char(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nameraw` varchar(225) DEFAULT NULL,
  `thumbnail` varchar(20) NOT NULL,
  `thumbnail.path` char(10) DEFAULT NULL,
  `copy` varchar(20) NOT NULL,
  `mime` char(15) NOT NULL,
  `size` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_comment`
--

CREATE TABLE IF NOT EXISTS `videos_comment` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) DEFAULT NULL,
  `comment.id` int(11) DEFAULT NULL,
  `author.type` char(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `videos_info`
--

CREATE TABLE IF NOT EXISTS `videos_info` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `playlist` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` varchar(255) NOT NULL,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.thumbnail` varchar(50) NOT NULL,
  `file.audio` varchar(50) NOT NULL,
  `file.hd` varchar(50) NOT NULL,
  `file.sd` varchar(50) NOT NULL,
  `secret.thumbnail` varchar(40) NOT NULL,
  `secret.audio` varchar(40) NOT NULL,
  `secret.hd` varchar(40) NOT NULL,
  `secret.sd` varchar(40) NOT NULL,
  `path.thumbnail` char(10) NOT NULL,
  `path.audio` char(10) NOT NULL,
  `path.hd` char(10) NOT NULL,
  `path.sd` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec` char(10) NOT NULL,
  `dimension.height` int(11) NOT NULL,
  `dimension.width` int(11) NOT NULL,
  `display.ratio` char(10) NOT NULL,
  `bitrate` int(11) NOT NULL,
  `framerate` varchar(20) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL,
  `audio.codec_name` char(20) DEFAULT NULL,
  `audio.codec_long_name` varchar(40) DEFAULT NULL,
  `audio.profile` char(10) DEFAULT NULL,
  `audio.codec_type` char(20) DEFAULT NULL,
  `audio.codec_time_base` char(20) DEFAULT NULL,
  `audio.codec_tag_string` char(10) DEFAULT NULL,
  `audio.channels` char(10) DEFAULT NULL,
  `audio.channel_layout` char(10) DEFAULT NULL,
  `audio.duration` int(11) DEFAULT NULL,
  `audio.bit_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 1, 1429192118, 'a563e8db', '183539e54667dddc02d46f94bc0d43c5', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'a36eb7ae191dd1692e80e2cb2783bece.png', '0', '0', '1f7a30ef62efff22dc0582d6ea60ee6e.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '374bd3ab', '0', '0', '9195bb7a', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(2, 1, 'user', 1, 1, 1429192361, 'fb7450dc', '63154d5661f774fb7d2d11701d466aa2', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'bbb55a2d4b12267706ddfc90a4d67aaa.png', '0', '0', '5450cb8b869148499855abfb22689b0f.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '8e2418ef', '0', '0', '001c4826', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(3, 1, 'user', 1, 2, 1429365555, '0b82d4fd', 'd4bfc50adf9047e828a28dbfd5c006d6', 'L&aacute; di&ecirc;u b&ocirc;ng - Remix', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', '', '', 4, 4, 4, '760459ef915fdbe3f68970d0d62d3883.png', '0', '0', 'd91db1f6a7f388ffd90b471b229061ec.mp4', '', '0', '0', '578f92e722a29145902e935ba20030b1', 'f4ccce7c', '0', '0', 'd7ee3f3c', 0, 11800047, 'h264', 360, 640, '16:9', 511029, '30000/1001', 184.725998, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 185, 125596),
(4, 1, 'user', 1, 0, 1429365780, 'd99b82a5', '42e44882afb0ead4c7b5ba3cadbda89a', 's', 'L&aacute; Di&ecirc;u B&ocirc;ng (Remix) Ch&acirc;u Kháº£i Phong - YouTube.MP4', '', '', 4, 4, 4, '57a97cb03ea0994c7f4230357f296aa5.png', '0', '0', 'db3acb91b7c9557d9639e7b66044d267.mp4', '', '0', '0', '578f92e722a29145902e935ba20030b1', '9d7344f7', '0', '0', '0307a192', 0, 11800047, 'h264', 360, 640, '16:9', 511029, '30000/1001', 184.725998, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 185, 125596),
(5, 1, 'user', 1, 0, 1429365871, '2e034807', 'bd5a0c78cae8a275e057e63a8ec966bc', 'x', 'Home - CloudFlare - The web performance &amp; security company.MP4', '', '', 4, 4, 4, '2f4861b1be3231110a218f8350fd3242.png', '0', '0', '4ab04dd0288ce290db7293ffdb924acc.mp4', '', '0', '0', '768f0b5e43d356d8abb8b3f8569f2c8e', '588af2b4', '0', '0', 'c98f61f6', 0, 10069607, 'h264', 360, 640, '16:9', 855138, '30000/1001', 94.203331, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 94, 107039);

-- --------------------------------------------------------

--
-- Table structure for table `videos_playlist`
--

CREATE TABLE IF NOT EXISTS `videos_playlist` (
`id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `places.type` int(1) NOT NULL,
  `places.value` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `tags` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 1, '6839d58e', '', 1429192117, 'Khac Viet', 0, '', '', NULL),
(2, 'user', 1, 'c1caa202', '82161083648835307bc2c21ab8e07009', 1429365555, 'remix', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos_replay`
--

CREATE TABLE IF NOT EXISTS `videos_replay` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1429253663, 2, 'user', '1', 1429948840, 165),
(3, 1429365808, 4, 'user', '1', 1429970613, 1),
(4, 1429365845, 3, 'user', '1', 1429970645, 0),
(12, 1429542964, 5, 'user', '1', 1430318710, 52);

-- --------------------------------------------------------

--
-- Table structure for table `videos_views`
--

CREATE TABLE IF NOT EXISTS `videos_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `quality` char(10) NOT NULL,
  `captions` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(1, 1429192847, 2, 'user', '1', '0', '0'),
(2, 1429248743, 2, 'user', '1', '0', '0'),
(3, 1429252108, 2, 'guy', 'c52e3357', '0', '0'),
(4, 1429331616, 2, 'user', '1', '0', '0'),
(5, 1429365791, 4, 'user', '1', '0', '0'),
(6, 1429365830, 3, 'user', '1', '0', '0'),
(7, 1429365883, 5, 'user', '1', '0', '0'),
(8, 1429428565, 5, 'user', '1', '0', '0'),
(9, 1429518365, 5, 'guy', 'c52e3357', '0', '0'),
(10, 1429537319, 5, 'user', '1', '0', '0'),
(11, 1429600805, 5, 'guy', 'c52e3357', '0', '0'),
(12, 1429600863, 5, 'user', '1', '0', '0'),
(13, 1429691716, 5, 'user', '1', '0', '0'),
(14, 1429852288, 5, 'user', '1', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wiki_pages`
--

CREATE TABLE IF NOT EXISTS `wiki_pages` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertising_actions`
--
ALTER TABLE `advertising_actions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertising_id`
--
ALTER TABLE `advertising_id`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `analysis_faces`
--
ALTER TABLE `analysis_faces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_post`
--
ALTER TABLE `answers_post`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_rate`
--
ALTER TABLE `answers_rate`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answers_topic`
--
ALTER TABLE `answers_topic`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cited`
--
ALTER TABLE `cited`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friends_request`
--
ALTER TABLE `friends_request`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_codes`
--
ALTER TABLE `languages_codes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_values`
--
ALTER TABLE `languages_values`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_actions`
--
ALTER TABLE `logs_actions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs_client`
--
ALTER TABLE `logs_client`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `maps_places`
--
ALTER TABLE `maps_places`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_data`
--
ALTER TABLE `messages_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_id`
--
ALTER TABLE `messages_id`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_members`
--
ALTER TABLE `messages_members`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_typing`
--
ALTER TABLE `messages_typing`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages_views`
--
ALTER TABLE `messages_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mood`
--
ALTER TABLE `mood`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_album`
--
ALTER TABLE `music_album`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_block`
--
ALTER TABLE `music_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_cache`
--
ALTER TABLE `music_cache`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_info`
--
ALTER TABLE `music_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_replay`
--
ALTER TABLE `music_replay`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `music_views`
--
ALTER TABLE `music_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parameter`
--
ALTER TABLE `parameter`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_block`
--
ALTER TABLE `photos_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_cache`
--
ALTER TABLE `photos_cache`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_faces`
--
ALTER TABLE `photos_faces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_info`
--
ALTER TABLE `photos_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_tips`
--
ALTER TABLE `photos_tips`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos_views`
--
ALTER TABLE `photos_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_author`
--
ALTER TABLE `sites_author`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_id`
--
ALTER TABLE `sites_id`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_info`
--
ALTER TABLE `sites_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_secure`
--
ALTER TABLE `sites_secure`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_views`
--
ALTER TABLE `sites_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_block`
--
ALTER TABLE `status_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_cited`
--
ALTER TABLE `status_cited`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_comment`
--
ALTER TABLE `status_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_edit`
--
ALTER TABLE `status_edit`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_favorite`
--
ALTER TABLE `status_favorite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_follow`
--
ALTER TABLE `status_follow`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_invite`
--
ALTER TABLE `status_invite`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_link`
--
ALTER TABLE `status_link`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_mood`
--
ALTER TABLE `status_mood`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_music`
--
ALTER TABLE `status_music`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_photos`
--
ALTER TABLE `status_photos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_places`
--
ALTER TABLE `status_places`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_share`
--
ALTER TABLE `status_share`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_usertag`
--
ALTER TABLE `status_usertag`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_videos`
--
ALTER TABLE `status_videos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_audio`
--
ALTER TABLE `storage_audio`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_image`
--
ALTER TABLE `storage_image`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_static`
--
ALTER TABLE `storage_static`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storage_video`
--
ALTER TABLE `storage_video`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_block`
--
ALTER TABLE `users_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_contact`
--
ALTER TABLE `users_contact`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_education`
--
ALTER TABLE `users_education`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_faces`
--
ALTER TABLE `users_faces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_follow`
--
ALTER TABLE `users_follow`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_guide`
--
ALTER TABLE `users_guide`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_login`
--
ALTER TABLE `users_login`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_remembers`
--
ALTER TABLE `users_remembers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_block`
--
ALTER TABLE `videos_block`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_cache`
--
ALTER TABLE `videos_cache`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_comment`
--
ALTER TABLE `videos_comment`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_info`
--
ALTER TABLE `videos_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_replay`
--
ALTER TABLE `videos_replay`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos_views`
--
ALTER TABLE `videos_views`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertising_actions`
--
ALTER TABLE `advertising_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `advertising_id`
--
ALTER TABLE `advertising_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `analysis_faces`
--
ALTER TABLE `analysis_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `answers_post`
--
ALTER TABLE `answers_post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `answers_rate`
--
ALTER TABLE `answers_rate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `answers_topic`
--
ALTER TABLE `answers_topic`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `cited`
--
ALTER TABLE `cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `friends_request`
--
ALTER TABLE `friends_request`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `languages_codes`
--
ALTER TABLE `languages_codes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=527;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=208;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `mood`
--
ALTER TABLE `mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `music_album`
--
ALTER TABLE `music_album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_block`
--
ALTER TABLE `music_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_cache`
--
ALTER TABLE `music_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_info`
--
ALTER TABLE `music_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `music_replay`
--
ALTER TABLE `music_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=202;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_tips`
--
ALTER TABLE `photos_tips`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_views`
--
ALTER TABLE `photos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sites_author`
--
ALTER TABLE `sites_author`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_id`
--
ALTER TABLE `sites_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_info`
--
ALTER TABLE `sites_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_secure`
--
ALTER TABLE `sites_secure`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `status_block`
--
ALTER TABLE `status_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_cited`
--
ALTER TABLE `status_cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_comment`
--
ALTER TABLE `status_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_edit`
--
ALTER TABLE `status_edit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_favorite`
--
ALTER TABLE `status_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_invite`
--
ALTER TABLE `status_invite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_link`
--
ALTER TABLE `status_link`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_mood`
--
ALTER TABLE `status_mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_music`
--
ALTER TABLE `status_music`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_photos`
--
ALTER TABLE `status_photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_places`
--
ALTER TABLE `status_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_share`
--
ALTER TABLE `status_share`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_usertag`
--
ALTER TABLE `status_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_videos`
--
ALTER TABLE `status_videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=338;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `users_block`
--
ALTER TABLE `users_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_contact`
--
ALTER TABLE `users_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users_education`
--
ALTER TABLE `users_education`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_faces`
--
ALTER TABLE `users_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users_guide`
--
ALTER TABLE `users_guide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `users_remembers`
--
ALTER TABLE `users_remembers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_block`
--
ALTER TABLE `videos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_cache`
--
ALTER TABLE `videos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_comment`
--
ALTER TABLE `videos_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
