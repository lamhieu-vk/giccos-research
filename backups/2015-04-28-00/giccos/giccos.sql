-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2015 at 06:49 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_cache`
--

INSERT INTO `photos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `path`) VALUES
(5, 1, 'user', 1, 1430233303, 1430240609, 'c52e3357', '83ba2c70', 'a042f0c2', 'bc3c5f9a.png', 'C360_2015-04-28-19-55-26-791.png', '0fc454ff.png', 'image/png', 10576856, '64a1d9d8');

-- --------------------------------------------------------

--
-- Table structure for table `photos_cache_usertag`
--

CREATE TABLE IF NOT EXISTS `photos_cache_usertag` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `photos_faces`
--

CREATE TABLE IF NOT EXISTS `photos_faces` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `photos` varchar(40) NOT NULL,
  `photos.local` varchar(20) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
('WnpoS0hgxSbGSs3qaUkSPgNA2MStS50R67tJI9p3Fx7', 1430239768, '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', 'c8069411');

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
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=latin1;

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
(313, 'drive', 7, 1430233307, '05b567a6', '', '59a4659d3004f7ca6b52eae364a3eba0', 'TjzyqA43lp7ABK+G+ek6hp4kUwMmPSNX0NaNVjzyUQ+E3RjjsIjITAtyMm+K0KuCQTP8+VtItb0e1GPL/BSHzQ==', 'application/octet-stream', '64a1d9d8', 'C360_2015-04-28-19-55-26-791.png', 1430233436, 956490),
(314, 'faces', 8, 1430234882, 'b079b75f', '', '59a4659d3004f7ca6b52eae364a3eba0', 'P8pyPNPplAEvRdA9C45OoiXgpZqVl1vQOsrExwyZEe4+xkHyYeJylB/AonvQ5bT9UjQYX3VABXdl2+4aA0Y2qQ==', 'image/png', '01276e4c', 'C360_2015-04-28-19-55-26-791.png', 1430234882, 956490),
(315, 'faces', 5, 1430235066, 'e0935808', '', '59a4659d3004f7ca6b52eae364a3eba0', '/TcxYcGeD8rqDZiQUkJ70Qb0EdsMO39C8MG5Wpv0RS8/OWwwD0rn3hx9S/7nALVD/LIH9i/R8p3F3rQs6RrXQg==', 'image/png', '442be678', 'C360_2015-04-28-19-55-26-791.png', 1430235066, 956490),
(316, 'faces', 10, 1430235294, 'f47d6e80', '', '59a4659d3004f7ca6b52eae364a3eba0', 'dhH3a6qqxloTcqDI1zl9ruCO5p/Od959ekF8JyAK1kE5YXQ5m6clZ4SEeJi7aZzI48qAI94VDqnoivOr4W1uUg==', 'image/png', 'e81e3aff', 'C360_2015-04-28-19-55-26-791.png', 1430235294, 956490),
(317, 'faces', 7, 1430235568, '9658dd2e', '', '59a4659d3004f7ca6b52eae364a3eba0', 'am0LP4/SIXhZZxMi4prV7z+nF9Y+4Mxbl+9uy6O/aGhVc2tEKrlk9AkQNS0gkQhRCdzypJKA6WWneUvsXTzi0A==', 'image/png', '02acfc2c', 'C360_2015-04-28-19-55-26-791.png', 1430235568, 956490),
(319, 'faces', 9, 1430235802, 'e8220501', '', 'b29d292f5349619e6944ec7c35af2c33', 'qC77YsW93mjopXdjB1Ay7DmpOQ276NwJiAeJ7OMoC6ahwloEDHtrkjqhcFttU4vpAYKZmgCV/CVYrkphplxRNg==', 'image/png', '7917c43c', 'bc3c5f9a.png', 1430235802, 993092),
(320, 'faces', 3, 1430235952, '9b965eb5', '', 'b29d292f5349619e6944ec7c35af2c33', '8PWbFebx/pG9U4Nlmw+iLqOEn2GOgTnG7fxGWb+OmilxGbbXwUou7MkdC/oHJrUYExKbtgNfKpy2ofSzKNpYcQ==', 'image/png', 'f5dd4ff3', 'bc3c5f9a.png', 1430235952, 993092),
(321, 'faces', 1, 1430236085, '71bb9980', '', 'b29d292f5349619e6944ec7c35af2c33', 'IprStT69eJDkHDdx3LJps+/eQGj4cU1Yyf8BW872FtkiAiD6hFmMBo2m2yPvDbJ6b8f9ClHcy2TfkOqqU0R8cg==', 'image/png', '38e0a4e5', 'bc3c5f9a.png', 1430236085, 993092),
(322, 'faces', 1, 1430236874, '604cc877', '', 'b29d292f5349619e6944ec7c35af2c33', 'symZg1XSVprJ11eLXSOC9VdWJfHe6MIQ8easpc+bFWYHVKurOfp0k8RE7lq7dDxyQBSvKb+6vYkZMv2giHqutA==', 'image/png', '74098445', 'bc3c5f9a.png', 1430236874, 993092);

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
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=latin1;

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
(98, 1430214325, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.90');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `photos_cache_usertag`
--
ALTER TABLE `photos_cache_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=324;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=99;
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
