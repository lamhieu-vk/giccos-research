-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2015 at 10:22 AM
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
  `tag` varchar(40) NOT NULL,
  `thumbnail` char(10) NOT NULL,
  `faces` varchar(20) NOT NULL,
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

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(9, 1430489614, 1430489614, '4bfcc403', '10736b63', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '42004592', '7b127898', '0.97', '54.6', '56.3', '99.2', '58', '74.1', '90.7', '54.3', '102', '54.3', '102', '86.9', '103.1', '86.9', '103.1', '1.7', '7.48', '-17.59', 'asian', '0.97', '0.47', '0.5', 'surprised', '0.02', '', '0', '', '0', '21.34', '0.08', '0', '0', '0', '0', '0.9526', '1'),
(10, 1430490094, 1430490094, '5f190565', '817d59c8', '561ff2d840decaddbf2asfbcf8136ec9682d22c7', '15abf5b5', '4feb225a', '0.98', '250', '255', '449', '264.8', '334', '408.7', '247.4', '460.9', '247.4', '460.9', '397.4', '470.5', '397.4', '470.5', '2.37', '6.1', '-17.76', 'asian', '0.98', '0.57', '1', 'confused', '0.02', '', '0', '', '0', '18.67', '0.62', '0', '0', '0', '0', '0.8536', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=530 DEFAULT CHARSET=latin1;

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
(526, 'en', 'remove_photos', 'remove photos', 'false'),
(527, 'en', 'comment_disabled', 'comments has disabled', 'false'),
(528, 'en', 'reply(s)', 'reply(s)', 'false'),
(529, 'en', 'show_more_reply', 'show more reply', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=latin1;

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
(207, 1429974337, 'user', 1, 'add', '', 0, 'status', 9),
(208, 1430407892, 'user', 1, 'remove', 'status', 8, '', 0),
(209, 1430408421, 'user', 1, 'remove', 'status', 9, '', 0),
(210, 1430484850, 'user', 1, 'add', '', 0, 'status', 8),
(211, 1430484969, 'user', 1, 'remove', 'status', 8, '', 0),
(212, 1430484971, 'user', 1, 'add', '', 0, 'status', 9),
(213, 1430490905, 'user', 1, 'add', '', 0, 'status', 10),
(214, 1430490999, 'user', 1, 'add', '', 0, 'status', 11),
(215, 1430491179, 'user', 1, 'add', '', 0, 'status', 12),
(216, 1430491819, 'user', 1, 'add', '', 0, 'status', 13),
(217, 1430492013, 'user', 1, 'add', '', 0, 'status', 14),
(218, 1430492052, 'user', 1, 'add', '', 0, 'status', 15),
(219, 1430492131, 'user', 1, 'add', '', 0, 'status', 16),
(220, 1430727326, 'user', 1, 'remove', 'status', 16, '', 0),
(221, 1430727345, 'user', 1, 'remove', 'status', 14, '', 0),
(222, 1430727348, 'user', 1, 'remove', 'status', 13, '', 0),
(223, 1430727351, 'user', 1, 'remove', 'status', 12, '', 0),
(224, 1430727354, 'user', 1, 'remove', 'status', 11, '', 0),
(225, 1430727357, 'user', 1, 'remove', 'status', 10, '', 0),
(226, 1430727360, 'user', 1, 'remove', 'status', 9, '', 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=latin1;

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
(201, 'image_faces_thumbnail', 'en', '150'),
(202, 'hash_comment_content', 'en', 'g::key::comment->content'),
(203, 'boxSuggest_length_randKeyEvent', 'en', '32');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `guy.type` char(10) DEFAULT NULL,
  `guy.id` int(11) DEFAULT NULL,
  `boundingbox.tl.y` char(6) NOT NULL,
  `boundingbox.tl.x` char(6) NOT NULL,
  `boundingbox.size.height` char(6) NOT NULL,
  `boundingbox.size.width` char(6) NOT NULL,
  `boundingbox.ratio.height` char(6) NOT NULL,
  `boundingbox.ratio.width` char(6) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_faces`
--

INSERT INTO `photos_faces` (`id`, `token`, `display`, `user.id`, `author.type`, `author.id`, `photos`, `photos.local`, `faces`, `guy.type`, `guy.id`, `boundingbox.tl.y`, `boundingbox.tl.x`, `boundingbox.size.height`, `boundingbox.size.width`, `boundingbox.ratio.height`, `boundingbox.ratio.width`) VALUES
(11, 'ad10174a', '13554915b77fe833a205485ea61e41ba', 1, 'user', 1, '726b114fe58b6cd35b839371071ae1f4', 'drive', '10736b63', NULL, NULL, '10.77', '10.77', '125.38', '125.38', '1.1963', '1.1963'),
(12, '2a498d1e', '27e3a96afa5697df4f5d5dc5b56af0df', 1, 'user', 1, '343e28ee2ec6ec80943b410d2cce74c1', 'drive', '817d59c8', NULL, NULL, '91.54', '91.54', '503.85', '503.85', '1.3396', '1.3396');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 1, 'user', 1, 0, 1429379219, 'b01d0653', 'fee5909672179ff7db422c1092fceac6', '47bf294f.jpg', '4815bc31 (1).jpg', '', '', 0, 0, 4, 4, 4, '236c5e12e465fe2af50b81838bf4c99c.jpg', '0', 'a715a28c7a527fec1e2698f9b8e8c72f.jpg', 'd6a04472c937bce6ee751bd29fbcff94.jpg', '40671ca8a56801b76f59df00dd01f6b3', '0', '309f667392100ca3b12b380267e09289', 'c5d462b4a06f45a9c0a87653411a3200', 'cd89ca0e', '0', '1dcafc18', '26a564d3', 2348, 1409, 'f/2.4', '0', 0, 1429379217, 2292541, 2, '0', 0, '392/100', 1600, 'lge', 'LG-F180L', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/12', 0, '0/1', '24/10', 0, '3584963/10', '0'),
(2, 1, 'user', 1, 0, 1430492130, 'dc85621d', '343e28ee2ec6ec80943b410d2cce74c1', '9bb57ecf.jpg', '0fc454ff.jpg', '', '', 0, 0, 4, 4, 4, '5dc53266e7f4d9f3b051892f43cf61ae.jpg', '0', '0', '15807dfd4cc421fb9d577726ea2f6cd9.jpg', '3341d870c96c03952ed8e4a0970b38da', '0', '0', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '4dcaf1e3', '0', '0', '40219890', 675, 675, '0', '0', 1, 1430490988, 292389, 2, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '0', 0, '0', '0', 0, '0', '0'),
(3, 1, 'user', 1, 0, 1430492130, 'f3dd1a1a', '726b114fe58b6cd35b839371071ae1f4', '4d191094.png', '0fc45x4ff.png', '', '', 0, 0, 4, 4, 4, '46c2acb0c8b370100183d0f14248c56c.png', '0', '0', '0', '0a90cb74f6e23f994325fbb27749dcb5', '0', '0', '0', '54c0cdb9', '0', '0', '0', 150, 150, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(4, 1, 'user', 1, 0, 1430492131, 'be0f55b2', '4ad28ddfdaf6cc3653f6d0997666df91', '7aa01062.jpg', '0fc454ff.jpg', '', '', 0, 0, 4, 4, 4, '28f321ad7e5327ca55a2749d2a5f8435.jpg', '0', '0', '6303ddd26e1bcd1f4c9f8a41858552a1.jpg', '3341d870c96c03952ed8e4a0970b38da', '0', '0', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '76481406', '0', '0', 'ab477c30', 675, 675, '0', '0', 1, 1430489601, 292389, 2, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '0', 0, '0', '0', 0, '0', '0'),
(5, 1, 'user', 1, 0, 1430492131, 'bce7ee39', '6ea20ad3fad7bede08e70742dd47d25f', 'b70361a1.png', '0fc45x4ff.png', '', '', 0, 0, 4, 4, 4, 'e71da2202ef7c3a5c261bbc2c592a01e.png', '0', '0', '0', '0a90cb74f6e23f994325fbb27749dcb5', '0', '0', '0', '20ba0d09', '0', '0', '0', 150, 150, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/png', '0', '0', '0', 0, '0', '0', 0, '0', '0');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1429973122, 1, 'user', '1', '0'),
(2, 1430063287, 1, 'user', '1', '0'),
(3, 1430493119, 5, 'user', '1', '0'),
(4, 1430493119, 4, 'user', '1', '0'),
(5, 1430493119, 2, 'user', '1', '0'),
(6, 1430493119, 3, 'user', '1', '0'),
(7, 1430620473, 4, 'user', '1', '0'),
(8, 1430620473, 2, 'user', '1', '0'),
(9, 1430620473, 3, 'user', '1', '0'),
(10, 1430620474, 5, 'user', '1', '0'),
(11, 1430726557, 4, 'user', '1', '0'),
(12, 1430726557, 3, 'user', '1', '0'),
(13, 1430726557, 2, 'user', '1', '0'),
(14, 1430726557, 5, 'user', '1', '0');

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
('nwWSwYeaW8lpAzgz4wOSQ164Cmwd2CdNyi7Ppol1lV7', 1431073311, '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', 'df3da1a1');

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0),
(7, 'f1221a7f', '8ae5d043205e82a0ccb1a1e53abb9da5', 1429365870, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', '/5eVsdIw7HFUfLyvxHAy/jWSjJpjCqd/PFliW1xSNok=', 0, 0, 0, 0, 0, 0),
(15, 'a415c5d1', '0e4a78fbac81120f73fd38a1dfba2f26', 1430492052, NULL, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'FUj/pVxJU431/35+sNlcRQRv2H1+8h+PWtET47gpAHs=', 0, 0, 0, 0, 0, 0);

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
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) DEFAULT NULL,
  `inside.id` int(11) DEFAULT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text,
  `logscontent` text
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(7, 'e5ae91d7', 'f5df8303d8ed36f3f6e14a04dd7da0d5', 1430837980, 'status', 15, 1, 'user', 1, 1430837980, 'Y3IyBttgxyCv39WpEOJSplsLxoZBo1DJgqY7ya3Qsmc=', ''),
(8, '2577d974', 'c9c1471b9eaeeb406b75f7b3d65b0d05', 1430838403, 'status', 15, 1, 'user', 1, 0, 'waZJa/bbrEZPkWcjesLpuYTOPUZu4Qv9abTVv0RzPso=', ''),
(9, 'ffaac268', '45d8993cfdca317834de379ba3cc257f', 1430838702, 'comment', 8, 1, 'user', 1, 0, '7W57T2bY+zNoleC9xUb5iN5UoJ9y27GZHk1zR8j2mrk=', ''),
(10, '4fa3c3da', '085d7d1ff3163cd3a58f23f1cfba2a60', 1430838718, 'comment', 8, 1, 'user', 1, 0, 'VdesS7jJe5uV7qzOWMoR9ZSCi7iHQ3Wzaxzr4fGcmd4=', ''),
(11, '7155dee8', '8a1e56a0d551b844c77ba595e7080cad', 1430838733, 'comment', 8, 1, 'user', 1, 0, 'ryGXbyxvSfH+jmTAGx06EUEUiPaywP0EDf7f7Wh+1pE=', ''),
(12, '8dccfb69', 'c4fc9fc72a89a6408b095c40e2f14876', 1430838788, 'status', 15, 1, 'user', 1, 0, 'G4Wk7o53VS+U6cVMYZCPEmt9pHrlzvufdesNS9ZSCD4=', ''),
(13, '96175174', '70ce2f08f107fe9c7fe43ec50963d0cf', 1430839946, 'status', 15, 1, 'user', 1, 0, 'K2jbAiBCSq0m3CWfcIOS0XvWHjPkjGIbZp+A/LfU2cI=', ''),
(14, 'cfae34a1', '8a48b16abf3909f96d0d5e42ed03f75e', 1430840039, 'status', 15, 1, 'user', 1, 0, '1kc9C4I2qg3Fz9dTu/ssQRlZMVMXkNKRJOnNDRzmEKs=', ''),
(15, '3100bfde', 'a8bbb16771f045ae509171928d1c0d91', 1430840081, 'status', 15, 1, 'user', 1, 0, 'FpKfoQL1C/zVOkNPURpN1ahy1LDhbYEpZenAUfiPzno=', ''),
(16, 'fe8f1d3d', '9697835ed367e144b24ecd839a4d48f8', 1430840279, 'status', 15, 1, 'user', 1, 0, '4ybNuBWiynU89dnfK2Z4u/6zrWq+GpXbDk3MC2HSg0A=', ''),
(17, 'fd19c7f1', '0ba83987470fbd6c469b0cd36134a27c', 1430840297, 'status', 15, 1, 'user', 1, 0, 'vDHwNxv+yCWkWlDsTHWDhp1jPTDm8hN1sB54ZN78FxU=', ''),
(18, '5c507ebd', 'd57625f69de0283f6837395868d954b3', 1430840397, 'status', 15, 1, 'user', 1, 0, 'zEost6FkugYdOWGcFHswKMOOeQj2eKCwOUMYas7u2jA=', ''),
(19, '6d7577cb', 'e9576afb11bc2935017048cee29acedd', 1430840431, 'status', 15, 1, 'user', 1, 0, 'EuXi1H8xDVdc0rp5YqPtNE9aMivHGBxSYLx8nmoGteU=', ''),
(20, '41a98a7d', '6bbc56f75bc249fc85660b5b62cc8eac', 1430840486, 'status', 15, 1, 'user', 1, 0, 'Ph2MSuk9dZpUaAtb+vp0/EJ+h/32SzR0D4XkkZvr51g=', ''),
(21, 'dff48d34', '8976ef4398dd25e2069a69531fc87182', 1430840550, 'status', 15, 1, 'user', 1, 0, 'uwwZUM0XZQ/ohboisueVRE9nW+WuVLBtDbDP3pGlGJU=', ''),
(22, '1095b058', '764b02fa05b8ea846152e183960fed78', 1430840571, 'status', 15, 1, 'user', 1, 0, 'HZ6svqeA4MBlSoUYTJSSSpwujbdLB8PkbGaJkw1CzRc=', ''),
(23, '175575b2', '2e239e3562172fcf65c7edfc5eb1b575', 1430840588, 'comment', 22, 1, 'user', 1, 0, 'TE+Hxq4liSBhTqrf8gBo40SHyDlIc8988djA7ys47Bg=', ''),
(24, '6b3b7c45', '3909218fa2c30522dacbacee1d39ef9b', 1430840694, 'comment', 22, 1, 'user', 1, 0, 'Lg83Ny4+ZhjsKN6VrVk5Tm+0EadfKbgJWfUqbcqj3AQ=', ''),
(25, '91922d83', 'a6db4a0de934ffbb8cd12ae58d768d49', 1430840696, 'comment', 22, 1, 'user', 1, 0, 'H0x0z8RH6+I3wGxpRN9QGtBh9FU5lVTtkGBrD3RtQrc=', ''),
(26, '7fadbfe4', '1053d5fcafc3d4e8dff0c63815f2945d', 1430840699, 'comment', 22, 1, 'user', 1, 0, 'eQrpIz8H5qFQ+Ne3AYOoLHslTgYcqFOz1Q/b9tXb3Is=', ''),
(27, '1f0e0f6b', 'fc5b9e707c3614a7c84e2a10d4b441f0', 1430840705, 'status', 15, 1, 'user', 1, 0, 'vxYio1affxw77Fm1+x2GsoU9gOJBk4e/J3KYET05jlQ=', ''),
(28, 'e0f2d0be', 'd16c8c446e39892c02f75c48c23abb36', 1430840708, 'status', 15, 1, 'user', 1, 0, 'NgipW4S4zl06FVVPO+nAnckQlMFqPpDQKlovHswrnS4=', ''),
(29, '0facc758', '931cc8edd1a46d71cf4a66701c43db6f', 1430840715, 'status', 15, 1, 'user', 1, 0, 'fjWu7zdmxtmhBImmEiH5mYgF6pUPJosajf//lWcK6sk=', ''),
(30, 'c5209da6', '0f06f51802b7924121566f4c866929a5', 1430840718, 'status', 15, 1, 'user', 1, 0, 'XLrVS8A7dcStyHsp1w2JuW74wA33QzzHcajL+9u2HEI=', ''),
(31, 'fa75870c', '17ef09fab66ef92c56d2c4d357c2e458', 1430840719, 'comment', 30, 1, 'user', 1, 0, 'YCXWmjHHljScOwVuoHcmznqBJAH3XnezHMngscA6ezo=', ''),
(32, 'b394a988', '3b2fdc8cadb4e8ea6a00c9dc98a5ddf0', 1430920767, 'comment', 30, 1, 'user', 1, 0, 'kNFXCYWh7zpCWSXs26gCYu9KA8HlqWFFtBoG6hpSgT0=', ''),
(33, '9f453776', '1da3f85b132b667e9d458c011ddeee19', 1430920933, 'comment', 30, 1, 'user', 1, 0, 'YBT3AaesnUbMd4CbD7ZUzclkL/CapbNycavMpc+Polc=', ''),
(34, '896b82ab', 'dc2a9681ede95dc1d5cc0cffb37b33be', 1430920940, 'comment', 30, 1, 'user', 1, 0, 'bfjW8WXzp/IyneW2KtFUZenjdp4+1svNhkLO21C6uIw=', ''),
(35, '01365b86', '5eedd056434a1f1f96cab4092393ea9d', 1430977495, 'comment', 30, 1, 'user', 1, 0, 'Dy3+p2RBYYnUP7q+teKXvuMVGInAE6de0259HuDwpPI=', ''),
(36, '60e4ac25', 'a6022a5a26a4c372fe2e944a8fc7aa20', 1430977828, 'comment', 30, 1, 'user', 1, 0, 'xvPz0uOb9tAyD5GJ5yAJMZtSHybqSps6O5pk/9nPfNs=', ''),
(37, '4d39afdf', '69eab485d4330bfc3974ce03a878fbc7', 1430977915, 'comment', 30, 1, 'user', 1, 0, 'QPZL3GHprvuZ+esJrxF/a5dzPa1WBYigsxfjiKphv5c=', '');

-- --------------------------------------------------------

--
-- Table structure for table `status_comment_favorite`
--

CREATE TABLE IF NOT EXISTS `status_comment_favorite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `comment.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment_favorite`
--

INSERT INTO `status_comment_favorite` (`id`, `time`, `comment.id`, `guy.type`, `guy.id`) VALUES
(17, 1430926113, 34, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1),
(7, 1429365870, 7, 'user', 1),
(15, 1430492052, 15, 'user', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=latin1;

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
(334, 'faces', 8, 1430325065, '60ed513d', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'Ga0NoQ1XtGGVU0Wkzs4ecG/ACdCzp4j5cGwdZ+nLHSkyubtaUvZK4vGcteVIObwui2TlxV/R1Mv5ENFpQF++rA==', 'image/jpeg', '7f4b8e1a', '10997097_431451950355779_1526286295_n.jpg', 1430325065, 73810),
(335, 'faces', 4, 1430325069, '8f293f65', '', '6c576d37c2a5d0121bb74cb5b09d3428', 'ohwFND+HzBij9/tP8rWbffDlLK16mHZUS/gFTwY4f4G+9/sUj70e05bgklFhe0hcXA3z8S1XBHnpv2gPj6Cv6w==', 'image/jpeg', '35abf509', '10997097_431451950355779_1526286295_n.jpg', 1430325069, 73810),
(336, 'faces', 6, 1430325074, 'dac28e85', '', '6c576d37c2a5d0121bb74cb5b09d3428', '+5rph3W6SlNBsoeLGZ7ASU5QNDz33loJ3E5e6jScX7tvoUyK8tTq8TadMtbosxadGs/RI4ay7OZF2THZnNyTVQ==', 'image/jpeg', 'a8461a5f', '10997097_431451950355779_1526286295_n.jpg', 1430325074, 73810),
(337, 'faces', 5, 1430325078, '80e7139e', '', '6c576d37c2a5d0121bb74cb5b09d3428', '0T8nXQ5jc0mt51eBE2lb+SkTFLEu2lO3Sqwkij8HDrzg4S1cr6rhjp1R9WBkOl/CAsXkN7idQl00d064w4oimA==', 'image/jpeg', '6e31371c', '10997097_431451950355779_1526286295_n.jpg', 1430325078, 73810),
(339, 'faces', 9, 1430380653, '4b7a7c8b', '', '59a4659d3004f7ca6b52eae364a3eba0', 'HG8ddLhCcwopyEbfM1YYe8tEKzCmRa///98F7jVnCp0dh9ci3+hGSbotBNKVKO1+8yCe6colULqJMLYYWhehSg==', 'image/png', 'c3c2db4e', '0fc454ff.png', 1430380653, 956490),
(347, 'drive', 10, 1430404702, '23bf98b2', '', '59a4659d3004f7ca6b52eae364a3eba0', 'EgVy72RnZUo+zZ/UlSvlV9M+SGcO1KbjVTTsx2aYU2iR88vRTtzksNSfPaFF0+18tQW5mPqe9VCc5HuPnMgdvA==', 'image/png', '27bcee19', '94a796da.png', 1430404702, 956490),
(350, 'faces', 8, 1430404980, '6824a2c3', '', 'c4e0ef97cf8d1c58f67abd0b7cadb7c0', 'RZaDCogBmvRHagfjG/KGKETKI8eFew2w946vVEshU27d3NCsQE/NdanvKAVQd0Qq+40d5txOIvzMQaZ2yPuXFw==', 'image/jpeg', '01ceefa4', '11112459_1578533342400668_3637651088142192147_n.jpg', 1430404980, 50024),
(352, 'drive', 2, 1430405049, 'd5ce5819', '', 'c4e0ef97cf8d1c58f67abd0b7cadb7c0', 'PbOVcO13mdPO+hlDJjNAo0qPGRn9vMxiJ0VDCNGqmEjFNPyba8fpoYCkQknMvYTr/FCeQ7ycGe9/gr6Nw3CSmg==', 'image/jpeg', '7917763d', '11112459_1578533342400668_3637651088142192147_n - Copy.jpg', 1430405049, 50024),
(356, 'faces', 8, 1430484817, 'bdebb9ae', '', '44e8a00763cbdfef4a66f30e6a4fde27', 'D0GDiAWJ5+H47mGHzaTeJeQhPKR1Mk9szGP6SeUFqbbcBo/aQcTSB5VSrjunllUHBJYBp+XkEdwmXq2iTnNsEw==', 'image/png', '648a1c5b', '0fc454ff.png', 1430484817, 582409),
(359, 'faces', 7, 1430484950, '71d5a20a', '', '3341d870c96c03952ed8e4a0970b38da', 'wRJJKcRUV1wV0idx12IEw4PddTlcZ4tRX+dS7G+B44p0P/0Cwu10mPmkWPP7860kVJuBackAiceE92zZF871NQ==', 'image/jpeg', 'c1a8f0e4', '0fc454ff.jpg', 1430484950, 292389),
(362, 'faces', 3, 1430486597, '779ec50b', '', '3341d870c96c03952ed8e4a0970b38da', 'fQOy2SMuHj9jK9rKdNWf5ZvqnfGV2/9/IotwgLl2mYPSlZLEBk8brKg2RQ2cUNbSfgCJoUuT+SjLDB2fL8YfKw==', 'image/jpeg', '0a0b84ba', '0fc454ff.jpg', 1430486597, 292389),
(363, 'faces', 2, 1430486687, '2cec4157', '', '3341d870c96c03952ed8e4a0970b38da', 'HVvxemOQajGd2H0OdQu7U7CJHiy5Uw4C7tBD41DSFYeDbWxiT1N1izAFtjAVOih+XIThpg5CLdbLR/iHYYl+4w==', 'image/jpeg', '2d104764', '0fc454ff.jpg', 1430486687, 292389),
(364, 'faces', 3, 1430486756, 'a26e9077', '', '3341d870c96c03952ed8e4a0970b38da', 'loCAFT1K4YfErJgu+jLJdBZlmn9wQTY1PemZu0u7cupSMnTlPSS1Vd1UGl93duDj4v1PkUq77P0uq8nWF6+yEQ==', 'image/jpeg', '6aee3aa7', '0fc454ff.jpg', 1430486756, 292389),
(365, 'faces', 5, 1430487027, '874376e0', '', '3341d870c96c03952ed8e4a0970b38da', 'aQFpVdMZkCd8ejBgtWJHmPp9JZ17bxNX/0MoPZ7xSv9OrRYXLDUpsIapeeL1OYqKwe+67N/2WuIupk+w56fkcg==', 'image/jpeg', '5f4c369e', '0fc454ff.jpg', 1430487027, 292389),
(392, 'faces', 4, 1430489541, '55d9da9b', '', '0a90cb74f6e23f994325fbb27749dcb5', 'b+SpPWw2sC5srm0Czr9pGNkbuCHuGYkYK5CySVZHema6v/bQG4Nj283AEJS1I2gt60Y8+fC19jeMNM909eYLJw==', 'image/png', 'ff467097', '0fc45x4ff.png', 1430489541, 50514),
(393, 'drive', 7, 1430489601, 'ab2b9748', '', '0a90cb74f6e23f994325fbb27749dcb5', 'SgpLrC5AjTGPtnHbuz5FPAB2stPYNUqYF2TxMBCSUQ4sWShsAsjeFbreS4HfaAh90lwdwqRaog01T+46Jf1AqA==', 'image/png', '405b2c0d', '0fc45x4ff.png', 1430489601, 50514),
(394, 'drive', 6, 1430489601, '4c3e8179', '', '3341d870c96c03952ed8e4a0970b38da', 'qok1jiFfE1KgCbLwvSaOt/o9yn4tg3L86vQM+FsCWgq7nbvVM/gl4da+BEHXijl2KK94u6FRvVESOd40tzPwjQ==', 'image/jpeg', '2097fb2e', '0fc454ff.jpg', 1430489601, 292389),
(395, 'faces', 1, 1430489610, '1de4750f', '', '0a90cb74f6e23f994325fbb27749dcb5', 'TTJsMY6dE9zbKv4kQHt04V/VcWRG6PkbDZM2KcqyX1MQe43c/lWQZZGwq2qKuWlFNVPf/AfDkT8CIVs17cZX/w==', 'image/png', '42004592', '0fc45x4ff.png', 1430489610, 50514),
(396, 'faces', 8, 1430490090, '85461113', '', '3341d870c96c03952ed8e4a0970b38da', '5vLhgg6xVz9VApIW7LvUmBeON737X4V+yDpg+gDoEUkCo68AWCnGgZtHVFQ2c0U4lr9D8hDtyUt5QC3kLchDaw==', 'image/jpeg', '15abf5b5', '0fc454ff.jpg', 1430490090, 292389),
(397, 'drive', 9, 1430490988, '74f3680b', '', '0a90cb74f6e23f994325fbb27749dcb5', 'gr9yJu8X6st6jfVrvNTppRYo/QMLznvUt0bRaCBrLKcM8YnIPtHtbdtHQ5p2KJPkvE0d4Q8GMkAE2DrUgEe0kQ==', 'image/png', '3873372c', '0fc45x4ff.png', 1430490988, 50514),
(398, 'drive', 4, 1430490988, '81197b4b', '', '3341d870c96c03952ed8e4a0970b38da', 'mOQrJOwUZIqCvQnrGXKwSRWbcQAL6CiSux6vjVl9z6pKFspioH/saH8dNqQXBSLl/74CevickGePa5XeYODkMw==', 'image/jpeg', '4c2ca703', '0fc454ff.jpg', 1430490988, 292389),
(399, 'drive', 3, 1430492130, 'bac643d9', '', '3341d870c96c03952ed8e4a0970b38da', '9fH9MdYSqAJuutjMzchzBgn0zf44mD5mVWHv+3CP0wTrZlKsqWRiiSa79SG1CZbBZSj6ifzYJ4AlL/FNGyAmRQ==', 'image/jpeg', '4dcaf1e3', '0fc454ff.jpg', 1430492130, 292389),
(400, 'drive', 5, 1430492130, '9046914d', '', 'c5a0f8411a4cd417af6caf3e7f60b4dd', '/OoAWp+NBI92L0BXh1vqUhp9A+hMkA5zpp7kqUPvznAqcg/Ejb2em+2+aA41N2Hb4iSltDbdviK9Ixur4f8IPw==', 'image/jpeg', '40219890', '0fc454ff.jpg', 1430492130, 292389),
(401, 'drive', 6, 1430492130, '7c1b39c5', '', '0a90cb74f6e23f994325fbb27749dcb5', '8pwl5GqzOdENVIlhC3wBm9QNjNmIgysRu7QXT8YMR8D3D8LoQ5y+ohvFiBEcSNBM5l3YKsuLd8orCrftLtWSaA==', 'image/png', '54c0cdb9', '0fc45x4ff.png', 1430492130, 50514),
(402, 'drive', 7, 1430492131, '8ca90f20', '', '3341d870c96c03952ed8e4a0970b38da', 'LyG0ZLyW3j1Ja8Rgc967fGfMDDeESTFd0QSdh6dW7mDeZtZdnFGkXov1iIx1SL8Nb+wHpAf8vI3z5/N1ryF1iw==', 'image/jpeg', '76481406', '0fc454ff.jpg', 1430492131, 292389),
(403, 'drive', 8, 1430492131, '1c74e9b6', '', 'c5a0f8411a4cd417af6caf3e7f60b4dd', 'IsHAx+rcIDA3ZARTnNdVxggl46E5K5jReicg5DXZigX3rXnHMfpyY0XFORsKUn+va5hrrQFnX5C0FWynSIxylA==', 'image/jpeg', 'ab477c30', '0fc454ff.jpg', 1430492131, 292389),
(404, 'drive', 1, 1430492131, 'd4c224e8', '', '0a90cb74f6e23f994325fbb27749dcb5', 'GYiP3lMl3KpDcIcuZZB+3IqRoWT6NLeAOLoudWWqxcP6vfH4epgSpknQglyy/uF1I+wqnPeB2th+UnwRdMIjrg==', 'image/png', '20ba0d09', '0fc45x4ff.png', 1430492131, 50514);

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
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

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
(100, 1430324370, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(101, 1430380489, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(102, 1430384812, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(103, 1430399759, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(104, 1430471411, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90'),
(105, 1430486555, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(106, 1430490161, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(107, 1430499670, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(108, 1430620446, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(109, 1430643977, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(110, 1430655601, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(111, 1430660956, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(112, 1430802102, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(113, 1430920577, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(114, 1430976526, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(115, 1431007935, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(116, 1431008542, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(117, 1431070009, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

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
(5, 1, 'user', 1, 0, 1429365871, '2e034807', 'bd5a0c78cae8a275e057e63a8ec966bc', 'Home - CloudFlare - The web performance &amp; security company', 'Home - CloudFlare - The web performance &amp; security company.MP4', '', '', 4, 3, 4, '2f4861b1be3231110a218f8350fd3242.png', '0', '0', '4ab04dd0288ce290db7293ffdb924acc.mp4', '', '0', '0', '768f0b5e43d356d8abb8b3f8569f2c8e', '588af2b4', '0', '0', 'c98f61f6', 0, 10069607, 'h264', 360, 640, '16:9', 855138, '30000/1001', 94.203331, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 94, 107039);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1429253663, 2, 'user', '1', 1431409012, 166),
(3, 1429365808, 4, 'user', '1', 1429970613, 1),
(4, 1429365845, 3, 'user', '1', 1429970645, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
(14, 1429852288, 5, 'user', '1', '0', '0'),
(15, 1430384846, 5, 'user', '1', '0', '0'),
(16, 1430384866, 5, 'guy', 'c52e3357', '0', '0'),
(17, 1430471420, 5, 'user', '1', '0', '0'),
(18, 1430804204, 2, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=530;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=227;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=204;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=405;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=118;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
