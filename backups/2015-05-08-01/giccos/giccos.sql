-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2015 at 06:57 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=531 DEFAULT CHARSET=latin1;

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
(529, 'en', 'show_more_reply', 'show more reply', 'false'),
(530, 'en', 'write_a_reply', 'type a reply...', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

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
(203, 'boxSuggest_length_randKeyEvent', 'en', '32'),
(204, 'ajax_length_randKeyEvent', 'en', '10');

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
('ei1hummYz4q7ybFRHz8YMF9Uowy5fj-cCl9pas84zj3', 1431104050, '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', '5bde4c7f');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('F3CFunP5NbXmTcrlBZiZspUPPqEtbMon6WmEGh2Px,6', 1431104174, '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', '11237980');

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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

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
(37, '4d39afdf', '69eab485d4330bfc3974ce03a878fbc7', 1430977915, 'comment', 30, 1, 'user', 1, 0, 'QPZL3GHprvuZ+esJrxF/a5dzPa1WBYigsxfjiKphv5c=', ''),
(41, '85377995', 'd9f4518c731c32df6f96c1892635e4d0', 1431101478, 'comment', 30, 1, 'user', 1, 0, 'X/AV5UP9GIdeaMWBuBFJnc1d9sWoIfGuLe/zUrRT6yg=', ''),
(42, '9d044b58', '19a2bc2910a90f3cbd18aeda61349652', 1431101480, 'comment', 30, 1, 'user', 1, 0, '7/dJ2GNFHMQqKCqGmPnPegbapmP8vIkIb8c1igmQllM=', ''),
(43, 'e40b4a48', 'd417b71e190551c4d6a3c56c26540727', 1431101501, 'comment', 29, 1, 'user', 1, 0, 'E91GYQnYv1cr92KyE7RfS9oZ9a+pcauJxfhhD5aT4GI=', ''),
(44, '37537358', 'c370beaac400b16f48c08bd4f04e7b00', 1431101608, 'comment', 30, 1, 'user', 1, 0, 'h4Lt/5LkxM+Aqyy/Dg4IhZykCKiHft10QkJqvOGH9nw=', ''),
(45, 'a0a781c9', '0b72d5986c2013a6c946aaec5a21bf19', 1431101617, 'comment', 29, 1, 'user', 1, 0, 'quiVKMYGsWlpUVomjwKgRppThUTIVDYDdcI8eOdvZaI=', ''),
(46, '17e41716', '152e29975b229482977994f2b4d158b8', 1431101622, 'comment', 29, 1, 'user', 1, 0, 'tYrZyVkbS2FVwIGwhs/1jZ1V0MDH27CfhFWrKObh3ZM=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=latin1;

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
(117, 1431070009, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(118, 1431090706, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(119, 1431102532, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(120, 1431104055, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=531;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=205;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `status_edit`
--
ALTER TABLE `status_edit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_favorite`
--
ALTER TABLE `status_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=121;
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
