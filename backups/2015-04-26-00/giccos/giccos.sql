-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2015 at 03:48 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `analysis_faces`
--

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `user.id`, `uploader.type`, `uploader.id`, `tag`, `thumbnail`, `img_index`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(52, 1430049898, 1430049898, '8c1c4919', '797d837a', 1, 'user', 1, '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '52c1875b', '9bb80ba1', '1', '226.1', '143.7', '363.1', '121.6', '286.6', '229.4', '272.4', '285.7', '272.4', '285.7', '373.3', '270', '373.3', '270', '-8.83', '-31.03', '-11.29', 'asian', '0.98', '0.39', '1', 'surprised', '0.21', '', '0', '', '0', '17.89', '0.76', '0.01', '0', '0', '0.01', '0.6439', '0.08'),
(53, 1430052501, 1430052501, '1b19ed83', 'd8317d02', 1, 'user', 1, '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '97b315f2', '892c549a', '1', '246.1', '199.9', '351.2', '182.3', '286.5', '257.4', '279.2', '306', '279.2', '306', '356.5', '298.4', '356.5', '298.4', '-9.13', '-33.95', '-6.35', 'asian', '1', '0.41', '1.2', 'surprised', '0', '', '0', '', '0', '21.23', '0.98', '0', '0', '0', '0.04', '0.6319', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=525 DEFAULT CHARSET=latin1;

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
(524, 'en', 'data_processing', 'data processing', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=latin1;

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
(200, 'rekognition_tagdefault', 'en', '_x_all');

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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_cache`
--

INSERT INTO `photos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`) VALUES
(43, 1, 'user', 1, 1430049548, 1430056981, 'c52e3357', '214f7571', 'b3764aaf', 'bb58ece2.jpg', '10847938_598251166988144_4544651445744408482_n.jpg', '0', 'image/jpeg', 48777, 'e0ce96e0'),
(44, 1, 'user', 1, 1430049677, 1430059682, 'c52e3357', '214f7571', '33be3254', 'a00ea6fd.jpg', '10985280_458046784350741_8656683154662365614_n.jpg', '0', 'image/jpeg', 79563, 'c94f8852'),
(45, 1, 'user', 1, 1430049677, 1430059682, 'c52e3357', '214f7571', '33be3254', '0a194ffb.jpg', '10985280_458046784350741_8656683154662365614_n.jpg', 'a00ea6fd.jpg', 'image/jpeg', 79563, '87dd3719');

-- --------------------------------------------------------

--
-- Table structure for table `photos_cache_usertag`
--

CREATE TABLE IF NOT EXISTS `photos_cache_usertag` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `photos` char(10) NOT NULL,
  `faces` char(10) NOT NULL,
  `faces.image` char(10) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_cache_usertag`
--

INSERT INTO `photos_cache_usertag` (`id`, `user.id`, `photos`, `faces`, `faces.image`, `token`, `display`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES
(47, 1, '33be3254', '797d837a', '52c1875b', '431af725', 'ed654305f6c31ab2dafa8c5a8a63134e', NULL, NULL, '21.33', '136.53', '324.27', '324.27', '2.9604', '1.9304'),
(48, 1, 'b3764aaf', 'd8317d02', '97b315f2', 'd9f3e2dc', '5fa3ffb5f4e6c4ea96c702b8c3f9564d', NULL, NULL, '75.73', '148.27', '301.87', '301.87', '3.1801', '1.7888');

-- --------------------------------------------------------

--
-- Table structure for table `photos_faces`
--

CREATE TABLE IF NOT EXISTS `photos_faces` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `faces.id` char(10) NOT NULL,
  `photos.type` char(10) NOT NULL,
  `photos.id` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `photos_tags`
--

CREATE TABLE IF NOT EXISTS `photos_tags` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `ratio` int(11) NOT NULL,
  `position.y` int(11) NOT NULL,
  `position.x` int(11) NOT NULL,
  `size.width` int(11) NOT NULL,
  `size.height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_tips`
--

CREATE TABLE IF NOT EXISTS `photos_tips` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `text` varchar(200) DEFAULT NULL,
  `size.width` int(11) NOT NULL,
  `size.height` int(11) NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0');

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
('ilOC-op4DNvqOnY-Nxjds17Tjm2kL7qKtdaKD5Y4n5a', 1430056099, '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', 'd1638497');

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
) ENGINE=InnoDB AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

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
(189, 'drive', 7, 1430049548, '828577fa', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'hNxWE7qhQ9N2fjW5R8Y4VEHBSlGQFnj5BirS+9ri9A2uNpETuBSV4paB1M72afXoO38aj6uiqGURrCTsgxI1xw==', 'image/jpeg', 'e0ce96e0', '10847938_598251166988144_4544651445744408482_n.jpg', 1430049548, 48777),
(190, 'faces', 4, 1430049555, 'eca0e312', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'dXCYQRVm78wsXwouPTH6Enn+YkJqIbGFD4eX0uMjC+InnxX3Ma7tKuRr1t8VOogFlK2ZsBBua5zISAxuTFCwTA==', 'image/jpeg', 'cdbc4e68', '10847938_598251166988144_4544651445744408482_n.jpg', 1430049555, 48777),
(192, 'drive', 10, 1430049677, '0d599983', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'wadME1j8EO26CNdcuTW7gSjinJZD7eyUHQtJYwHEsIZkBPj3Un85RorjA4davg8ZrsrDYLRBOVAYqOpQwD6piw==', 'image/jpeg', 'c94f8852', '10985280_458046784350741_8656683154662365614_n.jpg', 1430049677, 79563),
(196, 'faces', 2, 1430049895, 'f5d9913a', '', 'c4e033f58424ee2ba6a1df5c54694a78', 'Tym6WtCsUtkOnyrplQi5bRbmCRN8bY15KzZsrBD1sQtFNSdJCSFKl1F5EgvbHgBcQ/GE0LzR6VwgjS1k9Oy/tA==', 'image/jpeg', '52c1875b', '10985280_458046784350741_8656683154662365614_n.jpg', 1430049895, 79563),
(197, 'drive', 5, 1430050110, '8574e1f9', '', 'aa7e577a1da8e19bebecdfb3f86c662e', 'd8LNJi/AV6HGwOP8nbbIy3kHYbxzni47Xt130hhl7g+v9MbI0yWNe/SHBKqiiW5b9hQKjbhRCF5UyFWEdp62pQ==', 'image/jpeg', '87dd3719', '0a194ffb.jpg', 1430050114, 83147),
(198, 'faces', 6, 1430052497, '3cc764c9', '', 'c3f3a4bae12a05e4ec15ac26c428da15', 'g2qQMBm8LJPpAisaaDS2Qe39tJ0nX47cNpKZFu9TLgx15KZFi+qsuuRZ4qbEpIac83pYzueNlZuGySBgMQXqJg==', 'image/jpeg', '97b315f2', '10847938_598251166988144_4544651445744408482_n.jpg', 1430052497, 48777);

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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=latin1;

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
(91, 1430031222, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
-- Indexes for table `photos_cache_usertag`
--
ALTER TABLE `photos_cache_usertag`
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
-- Indexes for table `photos_tags`
--
ALTER TABLE `photos_tags`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=525;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `photos_cache_usertag`
--
ALTER TABLE `photos_cache_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `photos_tags`
--
ALTER TABLE `photos_tags`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=199;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=92;
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
