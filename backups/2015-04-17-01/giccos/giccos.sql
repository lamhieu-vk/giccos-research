-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2015 at 04:17 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=502 DEFAULT CHARSET=latin1;

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
(164, 'en', 'may_you_find', 'may you find', 'false'),
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
(364, 'en', 'question_photoEditor_close', 'you want to apply effects before exiting ?', 'false'),
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
(501, 'en', 'private_0_text', 'link', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;

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
(195, 1429279357, 'user', 1, 'add', '', 0, 'status', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1429190453, 1, 'user', '1', '0'),
(2, 1429280125, 1, 'user', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=193 DEFAULT CHARSET=latin1;

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
(192, 'videos_thumbnail_image_mime', 'en', 'image/png');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('0QGnGvAqfGpBac-bnOUST9vM9gZuEVvVeSQzhR7RLPd', 1429280245, 'CmDzY/opk3o9jRhn67CRBSJOUpXVI/oS4DxzXZV+lUdfSo8KrMaYliI5r9hInPhi8ENFEPfUJbFGCOJLSssn67InKJEt+PZn3+PamefpmSZiTUpedXq2syN+qOOv/iIkumDkaWdb2WbXMNaA+HHSgkQoevqrccE/K5T0sCDbCMbbj6DU5YaNxG/dp/wHRpiKk/eFlzjjz8LipE2KT1R+fz6DCH5Gnp2wBWrLdVOUxlkQnad5b80yHAYvZpXbw8c/1W7o+4baqAMdFTG049hV62oCJhzpDpJyN1/xZxLF7pdXGSsqVhH7QeiSZJIpEzFkQxvD2G7WmKrspIPFLDfeCUxmrqGirwfF8EBfIW5mpiZqgYkRyrHdjIcXLxy30T7jU1Ht2URTO4bXDE+Nmo4reaiiMfp4bVvCoCszMVHR7C3rCAbR5GJ7jP9SMWrHkftEq1rQD1o46njIEzNTjMPtTMP3UjJzMgvIaIdmupZG/thi/WIASXw5Je9l29SsUA1A1Ks1E2TO3HCZAd6mOsDanP21Af7tEQz9HGpJBcCtMniS6OFAEpalXllddOqB5xPtdAr6K5Y6V6tsuHG8uCN9N414T0zV3jfiIZB2nHZJzDbz9vEixz36le61mBoVBe+zNu3kM8gS9tXgfkzoghu3SvqYmzmLV2csKHczwC4KNZCGAvmU/iya/ZAlsMNpgNV7l8OOQBD45GCagzaV+kfk9FfO1mqKre3/cxBvrWI5+O8ucOXQScx2GanFdRAxWNb1nHJG87Sexl1CZeOg8+GPOrfma18SX2Y0hcBG1T7KeW4+4EGbwM+aDbdz7q1xzmEjCxaORAzcaQapyXJJWgCYH02jXrhcF29lM6IrMdO086nH3By7vQyOKqsGed6P1nGYUB6Dd1I5XhtthCFkB/NuxUVV8B7xdw7kOKLlmFuyWAw8NUD42caD6UlDwMORfX++JO9677nUI3T+GmXkROiOPrB98MHbKWHI/MKlD3hMWlilW8wkRgZs/DjsUw40jYGoxqDxqbINvuWBhNm6mExCB80Ur/VRVG9ZrjTy8KHks4efIq7vNjBCbUGhEGFnYRrB9mdkR5Tm4PcGubwNjkXmudNENawEtQfeV8sFbArW7D86juB9XKBcIjMbZE2N/ynUjMUz+UomL6SrjhJPWxlqg9gHJb4kP98w6Yl544q/LvzoDF/t7aBokkASoKkLOJFDaoWoQm6QKkehDTUDPHN2QLKCVXUAnsg3YSkjhVViYUejqFN7VFIiLDXgm5HFQeuIlqZzteklsmnsNxaGaPz9fZE4m/zKD0QsSrLIWBeJrhOWY96ZDH8vMLI1RD3ofdQJhm7z1n5p9/VV06QK9pB8coRL/SMyXVU4B2K7/ap7OiM4fKOlLVTpBjBF//y8JrDVlHaSC3oztfKo8bSTXSjLgVqu5vrYSFO5+R0iS5tY7AUPj2FCu37ihXSYi9x1n17sgHw8wVkp9XJa33rX5aHixcrFwjV921coGQE4eyOGyQesFkIeA7S5MQEui7kMTXvvN4H6g4M4UMo+7Ong6R6T+j0461ae1qZDXaSpbMKrq4MJCgTT0DPjPOBrPFw36s5W0EueKYCd+Pc9dMgzHsdf3qPPmUak25DaZCGDwmyuX6OPrGjlVe031EPubX0Eao5344+Xy06qQV0DElbsQLM2ciGfdZH7CQbv2xTzwnLSx/m55XX+ai5RDV40W4EqiZYrFqu5okqF/znmreULa6AsxAYbbzLG2x3yn86/ec6NszTmqKVq9dpnEgd4Q7an3yoZa9ATwuZ+zfOdpMJhp6PaPCpdgaI00uFAMN64/BrirOsFRkJZKKY5EdOxlhQB6M7IIARNvWAxVZma+LVae366KD2fC76EMTWX8Mab4TwFPrfQLMW7+iElZ/r/7penuLgjTGxW7XSN6EFanq9mXl6y/igvebRCH1p50yzbROehrOLNoiXqqwPamQJMtvhF3m26IYEY/KKahYGx85AaPvJd+eoTMoN7aYldejvLH80zEmpml+3lP6IlQ3FYv6FLEeBXkujhQBKWpV5ZXXTqgecT7XQK+iuWOlerbLhxvLgjfTdSw4bA9VQmGwPf6Azr3Zq3NVflhfdGRG8pWS7Q4tljR0WJfPKwRspIXrR+qzyY+Nvc1bPvJRuP2MbJuFTnJfLbew3RLlkTF03npBC7F5S7QcX/F/1IB3Zb4ThRQ/Mxkyt0Hp+4GcE3eqIggDFc2vGGg+qPGxwiKrU310qzmG9/G9XzviCACyNotnNCjom3OoyznpvZBSbDqF86jXjnNxvOf7eiL/vsxLitS+63SyjADtqHGliNoe9EXqwEtNlJe/rzPZtFtN/vx9dUGjS/ERYCKa5g/r4bdKD4G4K9N8yF2O25bkNmLKkNmqnehIpRM89yd/flR4PmH2i2BFNpbTfVHtmgDUFb9zu85DOKk8VAwOQlqt+gqOuAr44QUJRbCnNClMgVLwxkmzg98Lih3B8d8hHyR591rgLzShxioBPyJ+4hKPhPs7wljALERb+k+MA/hvydJFNBb3ZDHKCUCstkgvKkG2YFwI8jCvuzdHedWhqLsPZQDfPCX+isKAgkKmOibCUW9elTFEIs7IRCE1Uv53/hXkuCGNXouzc1S+RWwyBbXyjWo8UgQSAvSF5Enm0IvT8Lk0M88mupSH2FZXkV38E3+P3dolHgrRAFSlmDd9DHTlZLBEPiG/O0vvGyI0W8JBt3AjdVz9097fb+/kvPeEKZvoiRfXABK/U+2Zz190R9HkuPP3G4VvYiX7bWtiCTukRvywY/KViOAvz/g8ohO7oc/XiHaphNNEKk3eplfzV6PP+sg3iu0jkhWwQyiwGw2cKSMlZJjtSg3iT5afuMGtBpy08MQx1d2kyGcUeYjEJgVFvB+zYV0mWs+Pg7o4Qa6ROHbIMgv1SFx4/f2hzxy+TNgjUGMGmooZBh5TQA8l15///Saxg5hfSNnEjZHNAJf8+GE3Ai6oYApNjLWbDkF9I8b8h/rDf7YSIoY2WHZrHh33CShoyQwGU+4G25i8KIsLkCOVufCzXqG1JMEzX2a/EdCaHKV9hzGlhhYAPGc/5VX+xQLZ5OXuuct5B21P9FTxKIs1fSlOILN1QSC/4qmaw40qVp7/ScDQb+V8ybAz9DOkwMEf2mKVhaSJZMQLOhUNh0VFgYFkchsZnpIJfSKE7kViIkwyMQYzEZTfwtuvGwNOt+GKRgaEJbLvaRckf56OhqcscNZcVrQNek3lYbxGUIG9fIF6DSsWGwzISVmwXP8TKOHYG2yrwWFwwUEQnjeGv5za1JNHctV2ucpZqZZtaFNlrM1Np3q5zztY8k+RLqjhalf/Qwzw9EkfUj07zcZIuctaElmZi0Q2zBu3J7B8zF4tcFv1lIFgt68JzO3GDyjMRK4GhD/vK9FesW9wf4t2vHxiz9loLUDkVif1RMKHmTpJSJzalgQBUMgZWrPhI21GuBm8gs84qsFwyw9+o2ewd057H1+C8T+xFwsO5E/Zncedm5KaLjjwJyaoWazeiYKxutnsMNXfqmJ2DZPxScjLFFi1RBmTo05CAMQczYcUSZbvXFRXdBtP2LHNVLntNTuymHQp0y7Ukeq9MQvtfiw/Y+NBIaHNdVgcqBeKd6bR2luhU0GxWikdcW3QDJyATFWBMgMmOjQJHKRK+dR1oaZ4uzZ/oCSwvgW5EyC6yhEytXxXW7aH1dPdBAeypXvn6E/YRxaf93CpbJZg2fnep6f2lWT73ZnHBpCHJmA4AzMqITk5D5VH4v9oueioYix31BFd/LuW3s+2lCPZkB4CwO+7Q2emm9N9wtqPVCHAUkS2Pc96HTbjgs+Hvc2AF1APBejfPGcrBRosQVba0CfzbSpHDzQH/g3MZ0h0qXfVvieYMpPTB7BqeoOE0Kxx9YRpLo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I303y/sHsnQ1OrpD3hKWIK4tSdThd1JQefTuUCkOP9s5yQ/S8Et9/aoX/l0WNNLgDnfKPT8FS8ymTxEG+aEm4E9+tjpnwP5daNg2GCa0JFYPQqX/eO478/ycTlGboZ2thCxF+88UbjSxLI3+FgFmHl/FRakNs61MrVx9gzMD2tcU9sjdu32F5bSbhUyPF6LrytxO1KbBrGIFHRKoGPl7nD+0szd4fkGb00irBGEb3r87KuzhQvsmu+yHJuNfIwdlDbCI5D+MrKU24IfXyxC+oRytJiIvh8LnmakMk1Zc9S0fzzWVnBFi720bvOpY0o7mfk/wvb+d+DrZNSe8C4ovCAOJknpBAQk8LQp1lqRMNg3T5e1rdnhf+nMuwEK06esfE/8p3VzF0N7KtAebLmEveBK0KDMtPoY63xA9dMpEZNIUSXDgfXnjhtLj4oN5Fwx2Hu3OEmMTdDdQCnJJ3Q856e+7+DEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVf4g0BN/bytHlJZEmfB3OgniBahLI+zBQ0znQIwssd6rBL5d2ljJdF4zzgK+swMsK+umc/1nFc3luLkE/ip4ICtD5IcraGYjEyfPxqtvRzAMAkP+qlKxwOD++vNNgtVWbmrKxypXH4FywuzrcnaIZ3CsYNq5XJVfEBlFJkGdZgY5ihrmzbo4PzhZWF5sVfsHA54lfBnQegbsxsMxvQuD1OVSwNOIVfyUu9y11KulF2UNHvyChQwfFsd/K71jniUVtQeqH4lip6pIvLqMpV8wOlU/gFnjefqKkABtDn8OHuKEsj2AK7DZttNO7/MYfeX68FK8vJ2yKEmYzw6VUGMlwlLrjHZj9FIwLDhHfBnhTx/x5ggsB/pNI3Jk/5XBtEiz3KPaDPG6tBnYzbZ1FUEMts/LNDLmviUcT1w3FbxUtEvJ4W5ho3djd/3QRNQm26jDdpTM/Z9RsmH1QUTgGsMt8fSzEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVfL4T9cH05H7jLpHxnSBU5e1WYJYK+vXhqSEgFT61FYEm1AraBhWXGfnsb8ZLZ8Twe7grzz1cTr5+zYbLdJmh/p9J8mJN5Y1bLP9okHSBGiUyX3d9SdOcycOVKoMtwBhPGkujhQBKWpV5ZXXTqgecT7XQK+iuWOlerbLhxvLgjfTfNP4iwV9uKKK87jatw80F2ZwG6zX4Z7AVQFDJmGKSWfh+YYubME9lDE8DbhtDdHVJexMJz2L2DKVesVTCJJJ1FVK0hVZRDZgl6qAy5xlNRYdEBPEAJ04XDntGvj2Sr6MZ7S78eyH0P/4eu8v03uR2toB3vf6sy/gucY8wsizczVrmHq3WN9KajQ6Y7f5Vy3ajpNFTJ+goc+GcPpckzA3qnxG2jGY0yPh/BXKE0E2oYrryR+L3lBCDvWQF3qNaGW8+sR6+BB9PQib/iZcc//IOlRiK1Cc1HYEXM3XHnlwZZHW56ydihyqzF5HfwMlRpBXusN2tD/BlWsbSyi6jjjncuNDEWfrqv8DZB2SyytmR1yaT2JEXdZw1GUn7pBg13yKsntSqZ/sSk5nkUjr0p/apG1yQokzeTm+g2TYrf8JKAakGwU+zlkS+6OCm76v/XUYiHu0APXlFa/0+Odg5mfNM92Coz3FjV0eycXHOWstUWiseXHVUu8WKFw3lYeABxwa0kCdAAe3IHKCHNxSWZFvrjII0j3JVQ0Mokr5yT9rKKVh8KVrG37OL/6gIMG766e0ds+nhfMXoGbSzHv39osUQYhDTkHFbDULAt8BVY6by4VXSxEbLHCM+Dg+x1oAr7y13uRi+xjGa5ULXwOfhg6rqWmyoRzPikg7abfguj/jkVOx6AQBjt+lu8LqKSPEPlsXy21XPKW77u0rjol93B4fO84r+a143+PTrGnIBdASK5H23C6KcipTXbg8ecTdf8v4nH02s2LwImlcTAqa4Z8d+DXkaDmb9GkNP1jRYECw4RaAKyLoL93L8fPyKYwSecI6RnP3o80jBK4FqcqAgg8/xiw2EWw6X6k4qZ4rOoAH9UmnBEBzPY4AKkWgjr6Tuoma+Uh/bxXQNmYb6Stc4SWICnCP9ia5UXnImLDAfIx7sT//HNoq82jG7AANJXWrcSkWzeOFfK4L2byYPJHH9vbGOWboFbwrTKIJ17lH+u77vwWoFo4P/BkMnnzroR9Ub/nkmjQUj7JQQwkvfosK2Xcnnz8XQJX9VfCsCUtNlI9wCcsduBcNo4+69aBL3z9Ni/8MwXSD7DFCZC8u/QfAFlXgRQSFO2+FavKIyEWACX1Kn7tiIAIS8PypinFmqqG91c7V4hNiyrzUy96uqj6MjNY5u5F8E5xVZif9oT/mSpNYVdyLe/lVIH24/NFSbFQ/uSh6fdDLg/usMjqh9VPRQX2ayFTPSO9K1/yLJF/A64HyJS/FPF4NYu2jPtFU2l6IZiGHQlvIGiq9WFlP1eRR7Wq9zm7vjFGeq3FlBDbw+8YmDWSkC4UKj/vgZ7zthztHfjcdi0HjJNmq8QlKRMA78czipCO4DArHcf/n4Ul6aC5uAhRRJqGL6ykQgwM/zoeyuMqVwIOCTdWFFJREsow/NYHzCOrPixbsP0e9EYoNqq2WfMCX21zHPck/XV/9PZJVpqtV7iHPv688YERAU1LSEGpiHSTehVziJrHSHaEV9KbxhYoLBPbp+vLMhmh81WADMCvUDmFw/itPctVL7IbHzGmrvojs3nd3Lh4ODswV71+XRpB8XAvHiWFtfm7il3sVoH44WN2T+ym8S8K5msBjKWHwOCDTLhaSjzTRtGb1sUuiGSZYp51BBrE8jtV7oBmbwkdRvNtFJCTOn9j7mL6tbwswQZOicqrkiBcS7BrkOrLwaxGHCAPicmlUxvwbYVMXSmZWGEe4+L5ai1hnVgoHnsPpGMEefmwJ8Djv4sNeSgRlodKole38LBg7htZmr/vACFszh3PwgxR+eSJJwdEF0NW1j9JzXtYbWD+2yLTceDmZyD/fIEyS1FsGx1fJQn+TXUEJNrDjx8lFha0fGuvtGm3dVpTiNiAyc+hBqGi2ljQ1HCeIWB7yuLG8AIVAZfrHZ/ppURzh+eQ2QeBxvrH/Cg8nQ61BumInyNdN2UNWat35Fj8YdgSHmvC4uknjVJ5BdYj7862ZtFJueM3jfYfeelmLGgOJHdAtNgz3BefY4bVEUrQcGhAliKnzk78cyDOpoZHiOIrpWyRLF7oWJYZFI1H5/6qs5NdOmAuyRPVEa5cgRI/ip2xmfxPnCdCJXfOpkbJLGcDbQn7j0/rOr960nYsqKIe21KItqG1IgiX3F7e8oWO1NHhkrAPLnbdZfv0g7AZDxdlkrmh7XqE0ySty2yPjuktwCcRxzYTVJAqSy7/wddtJtIoL5xhse8EM8i1bNJ6rUfs9yu6NUcLZh4kZvuTkQgJ4iC5bTwukEQDAiZAB4Zq9OXkYfNuvntksTVharPA+BvGfLqRhQ5GdSmwyax+3LGF5MBHEGPpVvqdOM5Jm1y07cImt3TpvAqJCq9wA8z754nCuBFuJatnQuj6ZY/m7rh+CF5ytZZn566Z2P9JEYxDF3ZNKnQRiv+IPTJdAxC38/rYXIjMCpunobj5S7bMVZQAcOwGqek10GWHlsKxBZPVv3KdNLK4jebvi5/DWVadUU1yadvxHfTbcBHU/q+RpztCOm2dRSM7sJGRt8IRLuJAZY2UGyWoQ2hgI6MFSlduEklhMKqVK/0pKilaBHXUmh5F40tHuwK3MXlZwkDkb3okMAPkBU7AGNM2+D2g5vSoStrqAI4w0GqpodwJ2oopudkqyQjI6POa+mfsddMJs19iW4EglTrWA+Masr/nOsMIZ325ecrN480Pfl3FZEPi4+u1sTmp6X7Y4zf2Sm0V8msMCqZ1dXZB3/LSQes2Be7XFkXDimlGxszhVB76D0joann/OKxn75rD4sYo9Y+9fSiN8YcZ9R+WAar1FlwcEeOscJVddh7cXS5v17eZZkQDFMXLj8jtNzWHB/zrVxt/00Alq0HaCGrX/c+eOiAmFvFkHWur5i62BQhHlHaGDeummnDVfGEbFwvgCcb2cjZZYIVrHxZOsdUVq5ZCmLYAxXCfdi+atRNWFexvHouoR8WwgUq4YKCP74Q6jKQeWoQ3GtFioFiqyzlXgxqtl0bzVxk8toZlMKrfY2umiSIHxBPngeiJ7ca8EBpAjq48sTeI/nnAXpaB17gSYuK2kJYHHBXfV9U//T2BT0T30MiA1tYbBylKmb5zzQm0HQXZfulM61qd21tSVusKZIW6dV8vmkDw5vVOuGUh+5TOqPjg1Mf6Vm7UKHSX9Igvxmva/B73wfT4QxOmBk9kNXkEm1bZvBg2P4Pz9YH1+VgHbFY1GwIUTTBUqiQ0ZVLb/nx7QfKJUcYRbGMesFZhFWVq5bIMps52OPUsGvp7CzF5Up0SD3q3QJ/aM0ZVZqVf0r51GmVFO8CnSdA5QV8tPA0TU8OtOeztjiS6OFAEpalXllddOqB5xPtdAr6K5Y6V6tsuHG8uCN9N+fEBIlm7m+MUC2h4NNF/oJR4/Whr7NZZQh5jyvCtE20RhuyWS00mradAwuwSiTTP+3He9FEdBXZvf5tkY/lipKC6gdx68xUl3f/xSvREYiUk0tQ7J0SuUZ7+EWX/cqVvVPWN+vkjHw87HqXIFconJt6cbMpJQreIuFfM64DdbKXKnbGZ/E+cJ0Ild86mRsksZwNtCfuPT+s6v3rSdiyoohJsl2Fdwq8/c263CI7xib0/EhZSL4plyF8FNxiyJlvKXnaL38xLhmnn/6Z3T5CNLC9HmAuM9eMtDLgO1G6goAnz3rHoqKT8o64pLjFZRkyGYi9e5sLatq9KPaRxyhFsh5zA31GWnMCedoNcdjy65hwyVMp/Nx9SqfAKis9pwk/yS2wLrfKRZsmnjvL575+P4i8O3ScAOobg4ZTJo0zBdfei8h4iBJ/JZcocXm4nVBEjVEhaofQzXRbV3pw3p6nbgz87+mvyIlq0Yf1yafWwA5OrdcTBpfHJcQAbiiN7OVwMQY+nwFucq8O6ORPanNi4fYDYh2VJnnit84lI3ZICnFRR3GfmUcNmpthyaNcXA56KjXGJljn5TQZidXv6r3puz8iwv+7ljtiO0JinJxni+rrceNE1vwjcVPVVGPYgT9FSW1S4w/OZ5yfW83pYpm66xBwrU9A8Uz/Jq2G1ip54MjbrQ6Gsqtx9e90GBL7AY74InqwAFcl2/xeMe6t2//suCiZ5Gs+4umxWnIgBGlnKMbdCm6qM8vD44lY/ekKFAD/cZUMQni/itPmNg6mTE5wELFFazfQxf4Y+HzfoMjM9jfN6bWtj1FbvwH344hgUi7P1KR2Xhq3J+Jbn8r6JFum9bDHU/DAP8VCokeVPdnkIurBRm/C/be7d273LeTqz0MmkKqVKxJuSSVLuiGhcJv/Bo9igyfpGRw7zjHnOPid5UTLXTPvQk5VUjRGmh6VrsIUAKylvSUcaT1pRaZe81fArEBah0GT0KuP05lZHETyMS9TsYSBrnupCRY434MgYF3JIhlXQdgs1gAQ73uVyyE0dGazybhkYXPVvXK6Rma0ImnfCtTbEkP46UJ2dzbPhkzAq6E6alv4EyPiTW+t+pWHp9TtrFdLpPi5DfqdguBJUgJekxa1AIM/WdcXynlVoK2EayDG5twzPD3ft2Rqdlfgs7EsX4xpAkzGo4ucf0O5uwQ+ggNONc9vkDWcNh8Eyx1it7sSfixA881XLINkQBXjmJ8Ki8TDKZ74cGNMwQInVpy5kdy7+r/TCn6KCuvIz5ncIiD0lQCcPWPJOOfjPX05o0L17y1dgxp+eDJIaTInj2wTtKlCgWPTg3D0QAD27Y55EHvbsSkGZPielgi/yBL8zJvjQCsfh3pj2DxQLW4MyZFzpW/rljCzFtmxmW2bFGiJ+c0B9esIgLHxtPbTa/QagoSqpTN9JVXk9Kwo5rsqdaoeCWZIYW7NOnpNz8e1Or68pyHvS5iWxEz9bQGSDUQrj34SkuXQcbVKRCupu+8XL6/oa0YZvqNxOaPFr6Pa/QVEhqgnZ+2u79a72NofOaNgUrsCq0xEFVnoJ6dXcYexBk3hkiUyF8j4ufHTGPDkG1lZuiWZH/kEmUdGPVMDiWNHNvDqSxl3KnnG6e4cPk5Yfaz3qwzq8kY2guo3Fupvwg8emnMlRwlSJDhnK3TpoP+PBA35WZSSgoX9wZw3FO42xQs29AI77HFdYHhOGU+bRDhmak0+0D5NaVJeAMzj3jn7uu0oY69r21MkRm1CzilecPg6+QE8+GMX9c5C/Vu8/1Qxyg4dIBs8Clmoh6CdvUD7FntoVj9zRTaaQzZCLtAJ8HZRDv9zHm8wcMWFqID1C0CjpkCyQuWhT+JCcUkhfRBvE88oqv7txTsX3S4zcr/j40yNIEGcYTFp4ktSVnLHkNt+d0DcEwWMoqmYUtpNlVocb8rYbdlPlB84xz9n4RVBP1aAWZS336Rg2WI9kDc1rjNj69dHthfSjMPU+LtHuutRGJi79Nk4G9jMNXB3R1jCS53fE3y9s+XlQcDzBa9lu1DVG+CWufJETtLSo87JgdCRgB0y2GtBsJhm6vVUVmpwLHrxQRjrwYfbU6gdcdwVye2H0SQR0N1mkFGH3b9BmjCYBXERgEBYvjkRalOh/wWrsGSrwKQNvbr9pCLCzLwzx+KxbdJsWrqQSvvrbgxVZt/usMN+Y0yloOLbRpX+LgJK2CIbKKr+7cU7F90uM3K/4+NMjSBBnGExaeJLUlZyx5DbfndWlAV5bRmyIFhdjaR+TxenuNidgfZo1wQRNKwz8Nv5JngmQE4GjZNBeWkCmrYYziYyr523NdK0pyz/M26uPZsODHJbpZXcONx1xxsUyDOYgq1Q0sg+v+gwFJCX/XKLfu5he2qMhH/+K/nYbPV8Xm6/n+rqRJBCeRKu9LkbIAUFsiEzw+yeDD2AgBjY9jZ5XUdCwqhRas8a6uCBTrdpPpDnBfhdb7mHu3+bxpbRFiAsCtf6a+CYInp93SUD2GJ9SO5RO6sjUg8LmjU7QYxHzOsOrbIwbHXq1n8sF4Nq8Y2hjDEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVfNQERBgMuT7rvnq277G99voFFLI2NWpmNnbq1Fdh7nMM/+j3FE3M1vvBhMREbc2+nfxK571FjnQShyzTzAaJmB1lEisPdWhs7vr/9VWULBXZ1nsPcH3taaV+TxHdx63HzucT3GF2aENL4d4kmY3yxFV3/6H8TP21jyOWye2+anub/nCawnpj4v6tsOm0Qk+Biv7cehMvr+6dgkYjYNnhjSYxWFAZsSuY74EDWtexwl7g6DJD6ldeVeFXHY31jwvwHKuPNGfw1r5BjsLbr0UIG/QdYULvBT67ssTnpLiYCsn3uvC65ucTtBqwj0j5CoohnA11nkI8fkHWUo2qBrhI82JLo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I30311nvy7WbN+IO8vDeB562bYMtDtdygUEan2inDFs9MXdm8Rp8MLXn37DLSKjI5VT4WqtG81ycgkbYCAfaql2ZC9JIiEgk28aneJp7HZve165r23r4uThg/87fyJvQMjSWDaD+IC8P4u+Y7TkvbhMsHea81Jqq5wLWx1So2LN5CTluchOW7s11vs281G9+vFSi3p6bIjciaAexZWk8ddjyA/XJIb5IpuxHhpjT3AGktA0aAsEmSptTMo9aS6fP5ESnupLa5aN3MAGgKcYArP6THRfxbKnGfk3FNDikJo6HU05xBUqJfzidUG8KQmTvSWdFXasru5GMp63ryOoDDDHfz+D6ha0iqh1tRbL8B8TIJycA5lzBEEMq2gCPfu+Ii8wMs0c10oYeYrkO8vFSu+/9CqoF9HFBP2BoQ5W1FIubC1WVpkalJhru4VcDX6XG04Mq10PNGbhUbcuPTbf+K5pXf4DBHXu5EVV2rKSYCLP22kjR8sg49i7p3akHkrQYollB/gVjv65QZK/aWy277kl/sZXWxmQoZjIkstdGAmf2OsnwmkhhPi6jfaRX4SLfHvpXbky4F+0kOZBd+Lwsjgb13wJ7X/nU8VtXdKewTolJuNWsDMdaau+TS/SwBE3vdt7F5oN3S5qBmJpFvYDz5r80S5KOPvyy43Enwbhwe6HGOFIEqdmmi89IrZRewAjtnC7QWlXgih+8LXnhoXkMuU+LM1ZA3eJhn25DJ80jUD3NQlRHHDiZyOuuzq2mdnJodpIceiXU6Er6oSqPgZWbb+fEDZDOr0akqy/jzcFf0cVETrmES/0jMl1VOAdiu/2qezojOHyjpS1U6QYwRf/8vCaw1ffISNRpaOU7AEGicnOcz3f2QPk/fk6NOIYcb4+sHxZzXCAFsVybFIY7alh40C4h0ClqpPD7DbVHmVt5IxqpwASobEDj+DGV8pCU2IxoZtCRKgRF4BHKLIWt6mqjH5S3V2sbUSpqydC+SqwE/NeXVDwIYur+QNcdzKPM6kRL+r3oK0dPVJU/RIMd7i2MZpcdiRAir/Mne6QuduTrjSlbQ4sEwbSegIOiPgUR1xwZCq9UlOlEj70Hoa7CYuSo93NQ9ynA92eBPOq+6xaaZVG7em5jKw1/uQNXbwPGrynHlRYIfdKu1C+NxC37f89eRR666c4L5pGZ+qYAN61gZodV30FUfDXwDXxO9txIBaS9PJijhKDN7yfgi8wmCYNuPYGc/utY6NBU8W8YqK0GKn62HlvRkWZ0aln9CpyZTa6FZ4IVCo7Ovlu5x/l2Zt/b02NALQjEStx+UCBL1u251z1yfaFOYi/2ILff7rshf8i2knZg1wCGINS0xBG/vCMLTS1otrgwopncMd3Vqw1RzLB9BD/FOKuKVBN5WerQQD1AAvoSHi5IOOzbP5uF2QSigOyBiIsmPhbmVcPDvyaQicFgwIgARCV3WzZZ8n86y1SjFM1ySXKzonQbvBYUoL689fwskup0n08Im34hbFZMZxcTn5il6BWqGE4ciZ5W80b+8PE3zTlI5lCf2tee9a2HlrrQ53TaKfUHLcbfQAWoG6YwKiFBcOOdQi8duFMLbRVrvWtopoBqn8+1W+ShJxiKvlQAXyp2xmfxPnCdCJXfOpkbJLGcDbQn7j0/rOr960nYsqKIBKIUIqZarr2x5YaIAaF7Rtv1uLEfa8cve7jTUNHAncbMTfgcPW7aG5zYinVRozbf27nYx4OjeuGJ5GT8rA8NdnAYE1Qmr/5n0MVaZH/svwnNNAbmiqtp4u7v4waonlXcnWuVRWLTvTuk112wpsxFEj/RbXSGciGpjeJPSQYtRMyEhlwMT6uRPZeRDk+T88ajx5V4Q4u5aIukk56zruieUD5KsZE6hIfOZYKWbvzN/DJ4ZWodO+N4bz8GinaFF4OIVF791hY4UCY5WNxOmEoONNzYPNu5KaoJg4dWddmnQhQoqv7txTsX3S4zcr/j40yNIEGcYTFp4ktSVnLHkNt+d/qkaWw5P6BR/8qQUMbF5oDalqMMhbYumFPWOWOSpxkJFswye5Mi/FUahUA7XgijoSXi5GHu0Sx23als/i/7FyjIABrgE5YQ99xpvTgIR/SM+MSpw8KZl8HtVhw4bKeaG1KE37vv0AkDBkZf7GvHkbLfrelI9w+5VBI2fh94Kr6gpUVxBLQr14LXMRrjcAUuM+deLm7ObvIo3K/qU6GS6mk65c3Ey1TGat9wygurTTcDjBhyzkklDdM/QXs8r4q08Xc4NS6uxUQwB3W4pGj2qIMcfZ06k+ZfKUX8vGWJHYmtWrs4D1q9qynbq7O1RhPBviXQByxqV+0jq1ucsi72jJYqdsZn8T5wnQiV3zqZGySxnA20J+49P6zq/etJ2LKiiLO/LjjMlWTAUimTsoM70trn2mYUR0z20ldTdWhoAXqddAr5g2/2qiiMwfbVbJgueorxdaJR24z7AtYomjYe1J+LJwNWDHLBHQtQjkeQWHBPH/wmLwp5g3n2ctJRkn9R9j/Hx9xFEN2ckmmnaLk0KlaSSkBlgkPB9Q6UvENwEJVpj1U4BQqWU0oJtJlt2CZtL1DT8a6BjzG9tnTwHvq5kjdIGjns4+MkkK3KKA+pf7rOuo2nkhVmdyOB9cyR2QPZPgTeeOQ2wSxDz2qxV4ZYTprI9bR0dGfx1Ftat5+ZhsdSW3F456HtsTLKd0j4rNE7hYLFMAlZv5l3JIai7Rg/QHj9Ax0SuT5CTceC2M018JRJ3PlLXyBinJ+PvHR4An6MX/mnTOAp2iQHvLJTJxvA5/5YRagkgeDdtMXH+Z5/PElAoqXATqlT3qn3WyJkS29uYwzLvFxr7UPv2kg14i9h4aTuA+q6Enm+gebRhr80JRkkUn1qyCBMVQYS1bOtar9X7DBFaMH9lszZcG/3Y82QAWpIP2QOBVwdbT8WreJu0efXTN7w2p2epb2oiodVTk+LvS5gqvlqZ1FmwFRLJu7NzirBNxbIH0H4mfJcVvHWpLPs1HjIrnQV324mLeWxhIJm+sWDY/dHHH1WkAt0tpmUW2Y255hEcPOUrGX4iSG2EROqXE/ycK3cZQIeWe5TIWfrEq/M+jyAza4gDW8uMhpIQXZaB/31Wr2IdG66dmXAyqSkLg34TUTgkN0DY2WaN6VU/F8ZNQjX2HeszlyPRxzSH0/4tg8GAyPsdl9XJ/hoP0Ktg9fsseKLB/Uh3lzdAAaW73KMOM7dM6kTiShhcZLIXPe9PJ0axJuDyJ38mKTZAIg/sZXJdAViSpsbu2j4BvRApiE0rUBpIADGpY2vQSqCl0E9lj3EBSr2fiLqNQe46puNmj51GDiICOr5wPHsbfAkZMAkcL0PBAw1+hwkLrsgJL/NNsopG0TTlmB8hEc6VGkr7lnYUsopdcwOSbZGv1hsuiRVztxbSoCiZsUHBHorBS8BzQCRfag6Z1eiwZ1UTrTCh7NNomMYz1ucdU1f4xJvskxigzHZaMMwyvgKvedFkIm8dxUqKE9xXxuUv+/F1UibESKSzBmnVswsQPsBljqDmQXLBG+tjUV1Mm+kpFHJUThk1o0MJRFie+rlb68G6toVfnC3gPnHa9EgIYqglY0tCPi8QIB52gz3lAyLu9F/40+N1bix8bC4KU5QAefgUcHqvZhd+g/OdH5USdpE1Y0Th7yZamr6XSR/vpjIv0LDDX/6AByx1AGyDGO1TTekOEz3L/+Gb9jdb/Wts2zsp+42U1hq8x2AWwAEizADunCbMGaES/0jMl1VOAdiu/2qezojOHyjpS1U6QYwRf/8vCaw1ZHsEGaOEkRNhv8GTYZhGbQJjaB8KU2LeLAQwfQWj8dobSCcKpfSCoZ0YkYidplFfzJb2XDj1Mg3LwxM6YIdDNcEDu50p6Yw0vQs8PvT3/5Hxwj4GGetlUtJ0GQ3zU53jJk2jXzgSa7Jhn1fMY6GJW0EbDjjk6mo970yKCLJTrG06vsWzVDmPm0hR3p1d1noSTxpJjLfD+Ct70vkXpeREuEnWCOINjpAZuu6n9Xu8A2rPFY1MKyS4ENVB94mC//UeyUMEndxb1AHabO/57zaKyGjak55Aq4wqlC91EYdt5repT1LhgEkzJdwIZ9B7t4JDUyU7Bj6zm32OZ0/TUUd4dRqgBRr698j8h/0teAtzU+sSnY19ZkjWAt1LCIPjIjdcuVgCbDlGCLF6Zi+vhQsERnStFx1BRuMRvZTEpiyWYa/dE37CYJj7raoIVVH0e1uRsCruAVQSWh+gOr3JeaGXpe6p8gj3Pk4U9CSR+gcDICOunPsBfp7YtFknErHxhM+E3NNjjR0fRkQmv8e8Jl80G7kOpnw0C2tcDgziPF+vMFdCXmGziEL6qKRSQ8ndRi3S+zH+yKu+JV7bCxCHeagRuqWAkYDheM4xsXn1ztk4gMNyB6zyaQXhOCmbbESImFruNIwoimyYkDFKfaYvnTFYYeHINmqOoCAZzVAO364njeGmuVouXNlr/OdqwR9eYS6BbKPcvGu3JEIaabVbZ78ns+ES/0jMl1VOAdiu/2qezojOHyjpS1U6QYwRf/8vCaw1b0g6NdCOoqm33ZUAHRuiybl2IQrkPerIte3eZtofCAa7rhQbCpT3BT5h09d+zwrFbvQAIVX2y9k+B9oYz1Idkg4XSBHWFV/NCpDSD7m3Njz1S5rsO43SClf3IPdNiag5aPYISM1bE/j2UR/+S0xaIG0d6uL8HcMNG7ugGsRYeKEPZ8LvoQxNZfwxpvhPAU+t9Asxbv6ISVn+v/ul6e4uCNoOCT6co+2u94WlO2Jv3vjwxCteVbeGtHXU36feJ1IP9zz/23uSkypPw2/V8OTDwZIWHJpVK5dV7z+2EGS2/wNWofhsJCOKI3QLSvbGS7zk0K04fB9DWq1WEGFujSFIftq2mQGvZ89joTc7LxPGyUP5eFb3hfnN24Mt11Mxt16BVQW5SFeQZ31a7SUJr4GXyIIiY3MILLRzKGByzA8NgWfMbipOM4UrsnnOoe4d9fEYR7apAaz9Fns8LcIuyC1LsVfouAzg/jzH59iI98dh7KGeNBEpf1BlVfm7BO8wZyY9Ffme+vUX39n4IbHagalOk+WGG+i3qhEgU2HP7lzXbY4L0ZS4em+VfFBlTuqryVAMaeBGTNdxd4u3vW7lw1MSxs8hq7JI48sLQIWYRTaWtvzuRzINkwd5//pCYhVjn6JJqzBprGykapXrTXW2U5sRED2EYs47UtB65lrAjX+W/uBodI2zQ5QKwyAyO2xIq17YgVYezZb9wjaAb5ScKcrDs9/GSU6mZEobLItVXg2r3hhEb06eGQaWOOlIiKS0ilxyZLo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I3034zNjm4Z6yeqQp0CgmRgQt1fgzM9I0MedRSVse4GWDCbpCE4EAv5Q3sn0sn9LapVEPCQ4ktOZxnbOHlOqUwH2+udVCvtuEhq4843CzLcHq+JkyPH175gO/uCclmQYt20QACF79HWUtghHgXAjSA9mYIa4WL5LhGlzz2nGri3RJUCBRTnSri6uEVie/d2Tp/m3IrK98a3FEcb2SoZHRCaAIDfKuLMh4PRHzMIVPlVyoXRBuT6u0VI2095hCfM2kIEag6mTtnoLAxd5jisUajqL08I6Cn9a81lqGlxKyVn1LR9vY9wYDGfItrcaJ0B5NUs2RNtIW2h+upmVzV4DIki8YScblfetK5qyP/HevVBKYvjRmH4x1pVIA6LjwGyIKvnFE6sxsbSltWnKWXPuVR1sXD7zj7JYAcqyqFPBOzhu+YR91nm2cVZMTtLwB9PVW35F+fvbr4nMGZT3HuSEvfzNSAYK/yUtfHuoZRDR4z1HE9DaVF8rFswYjN2oyFZm9RTmePqRtUqOBdTcSApxkLYZJhxRefcB2D7VNK9HGTUEw501UlAU+bHlfvDsz7XtEaqYK2cADStVuTLVp1QOiTrEy/I/clUO4SsNthDiHtisNpL7SH30LCNnIIJlSbzafXszrEY7rcodJva9S5RVncwgg30vKqwFZcZVBn8RGi/q/aO+UcL/Jjo0gbLni7cN2bLWsLgxUpKO0wROViHxdUIx5C/TGQ45vO5Ud/B1RWBcXHWm/VLImsefRzDLlhieTMBYBgFh9aj7ORoxdZIpeiaDQzY8J1eZjDCcmLlbWojhWb/7LTCOsLGxnsva4JZ8Ktx+z96wpK7KLoqdrqkS80p+cn7L/5lsBC//jAvH+7v5dYAfV15veI6yXrTCG9OEezWRE6Ba+AB+FRRk0Mkd5ep/9eGbg/B6CtOLuGMJ9aTEx/+3tcEfTBd4kbzWB3Y9RR3nedVY3ApsnKDQkxpvaAhn/mvTo4Mb/g3DVkL/WyRkzEEZ+HtpQ7rRcZeONfhYQ084QLQEE8flyydSx+NeTXpOWvv7Uaa5OE4Sokgz96Pfc9Wu3sLRxnjzKNl+UetSIc0dEG1FpAKZvBDlDwnHDCC1o4dw28ZUm2NX+jSescxF4flvmJKpL2lBeLzy10Jmc9xfvtpGh2+PAWayZk+bg8uIP1sTy804UoeHiphO7+ZrAOMSkFxdQi5MUKn8pehIahQmSQhjUmC12wfannC/yDSJc3bSOsjxtwlMizoMHjysR5vexdQEt1kBpYJ80dXIdFhOlQxCeL+K0+Y2DqZMTnAQsUVrN9DF/hj4fN+gyMz2N82OKvz2t4ccXPjk5fEJ+EJtqcYvNtUjD+ZN30GUz1qQWc0Bg+gEI6/CXqDXtRGUb0LoF2CntuU+sG6EzQlM9qFaoa0LIDth4zM6EwLumF9jfqj3hyFZWoNwVCK0VJSdXyTMNdKOWJ4uZoH7qBWF5SBlir0bFwNqOkeG6S2w7gEhz53OmJ7LCCCp2gAG7m5mQfo5VQWTprAA4AcINgVtqvBX0Hb352/TpRfST+he6Z6J0Hg4ilhfNrZBObEQEGOmaX64t4AuaaaBmaAurShFt5aP8XGBqHEDVUE76HOBEL3MJH+0hkM4KmDCljMWI9k7zVis6u1rhjXWMXHGK8bjp7TWXbc7bLrOIhqq2uwEsv+wiGrknKCg2muUjjtjLJkYe9FATVt0yXsWNBL5LdRPzRFSoyaPA7uPTGayBGWVTzw9fJBxfM+5e00BXI+QcxbaeMV8Q4ApiMMNLkh427oqiqob/3o2dBBp6GVqGfezcs1nrgU06EiIqZPN8RMhnsuIfbNm+W147L50QuUWw+D5N/kheRgAzS5raMazbv3sC8e59iNO1+su3l1T4wH54poOFrBCQghhXH64Tok7jwATRahAt/2HsOoBGmiJOZgoQt5gWnrP6x7oy72PELWpjmYOw+90leeU5xCurDsHRbthDenr1+jYUNczK/On1au31dlV7ip2xmfxPnCdCJXfOpkbJLGcDbQn7j0/rOr960nYsqKIWmfkvl8OfXxyozt82WO8u2WZAtXY+QozYHWE0vWzCQAyrJsfR+q6wR9BzfuJ0+sLfdWj7R9j7MFXzrrQEQuSS6mGUaoa1kxkyVdOVWk1WDs8C+Y1rIfV4nrY93AWAs+vjtzflwZ4fplGEVH0auDAXoZe6ZksfApAtF9cX/mqoXRK+rdUbZHzB9UAr5N8EEqbwCLgLF74N4YEIMRFN/wycSMWHG0L3vOR3cgvMLmwRjwoISn628+c1hamDws63tixXeW67C4HGTT5LyMOvIxTkAw+bILeAAtRPHqnik4Chxb3pZeImvWpyH0MFMOyFjS+lec4lvI5Xu/tu4nuebiPjNOw1BYbTxge7o/I5OdZ3i5AMmWKA9P0jam2ZkSoVRCWWQ5CrDnwsg4EoeeK/O7t7hJArH4cOwWg0kdziH79oHiZsVsbrcZvR4UWyoW4kVuED9z7Kkcux+XO51ghGvjWc0UOVudvkJ7ymLBMKn5IuV2LCoQlSrTlanINafesDU8lKk8OdinmMlcbaDVOk/Q2GgL9kuRiRYsxuMXHpf9xAC86FXwTw42GdZPD9PfcsjxYPc9nEWnCxGDxwrkoOmLnyENruxbXlKKLI/q3a5BEM9Z88ggxAh9tBOrTUGj6KUbK6XRlOtOZz53G0ma7FvD1QxbruBctN8/DiwWWg1friwPHpTKabLb7qU6hnLmJd5EPWCFr5wW95ML15MyR8SyyXaCPirysoq8t0WfvhpO1+uG2h/Gxyr4mTJrCs0K7vthuhVDgcg9QSUKdYBnpeuYlDetpziFBeookShK2bXwqtKaVDEJ4v4rT5jYOpkxOcBCxRWs30MX+GPh836DIzPY3zU7XtwAcyc1YaY1uOa2m8SUn/QqTEpKDG2/gEPGXtutZkRxlfW6waaDzqqVqr6MqFkehAutFr7TPv5nWLYk6l2tt0Pn9f3AuEQssvocjbBgaR/Q/pnSkGK5LU7h5Db3wicvkDxMSfac937lVQDKa8s/8fkH5FMiJBIIW8m92WKOhVWxeiDlt2lcktMHnxNEu2ZS7wN1ogaeBm6AkdEXLGexErcSqUI0ReqR5CyGIluArBPLbVnRYUU5DFPNBQ9lQGYZA6t0KpisqwZx03x9oTSaGyQBCcrdEccz6Vgbtot06lmNEoobAcdLLWTSJpQk2U7DG1DRPautwJkOuuZHN5eQqdsZn8T5wnQiV3zqZGySxnA20J+49P6zq/etJ2LKiiKZceQ2TNXJXQGlYHaNQCJNDAZNGrOVXLLcaMF8hGpfs7BYLcf/VJanhvMhNA5EsUkdHFguBsdzewy6fMeI/a3y7eOurtDkGcjn7lLvFj6oin1n7Jh9Wfe7O59nN7E5snGl/gWvJR61NEpdH6x7Gx7NEVjhmMykJV5ndFPkrUcyj3m9J68/dYJ/jfHZLl+4oFWUGa111HzV/6ZnprzPJX8Ljqi3vFxeRuGYrh9pFPVgWh2yMwfkZV/FU+Q5kO8Prcw9SvV/dYF0pos0GP1BXZDD5nPT3JpqhtpwHGwRmv2YZR6+rW1VOrfH/kRGbmPQmBLFVAu2B1hOEwYTXmG0AYQj24L3xkn5hMs6uEpoZQm0B9NCHPkJiawNv/n1ptVlWoBk/jHzBjn5pr1Aoo3OzXTuAp9XLnsGzEsRkwxjCirG9rn/aaKiwdBo+PlKBMp2pzl7G903Ymu8hLU6WSEQn5k3s7zEBsM68KuMkRIMvYnG4pblUtpN4Ih+tq3kZpmtoKlP9K7IYGofPtKz5LZa/e2TKrgXXTdNG+fPcF73re2EhcfkKu3vm7eSMniURVcNGNkTek8iYx5gqmGlAxtOgCcrtc5t6CJCCj/JL9Db212vhvb37aCuNCYG1qcerm9HtBXtdklA7RQVvI+bv4CWKPIs9+OT9COIS4J+8TyjKu0PLlEsClC3GoLoHeT6wq4k3OGGfmT1zRocrDUU0wCAhJHlmqTO9fQ4rFU+KK86c8rhPtQakYSGBg3GpYfKvXbJ9UoIDTvcfm6zEoSZGbtz0xa2w34qUMvGaikrs0GOeq9gk8YoerC8DOeMBh1HAh1Arl/VJmjuOVgvyIorxPNwcDmhes/g4zcVGwiUE08fz7J9iAeXPggBr9qSDq5pvKwbt6hjw49dgUt6OzyunSS1vJB1l5fZZ0y+UTJP68QDIOcXbWrKJgZqpo/8IX0wc6NBMEAbcwD7S/ublTHZZ4jVPRb/w+pdVpYP7bighiP2kR0X5XZ4w+FJAlXWzKm5McUsR8pLo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I303h5sHSEvhmk2pjkxXVXuWb++qd+usgPLmfvulEXkygPJXZ+VV4ZmJ0GGcm41o+lHvFkek4Nan/DPT4lRr81NMkikfCelcZt6SdfOO4rFuOoZ6G/TkuAi8zgtJP7YWPeytrc03Vn/g2z4bFlI8W9ELnnzlJd10XR3/6vgLoHxh38JXM0xer+znCrvqJ+p6qhTsxv87zQgXkR3LZWLdKRhh3XVVjwNNbhPVdZIh4jB1xhSnk4nru4DqNT8vwkEnC6GzKKr+7cU7F90uM3K/4+NMjSBBnGExaeJLUlZyx5DbfnfZvK+93PADH3lluUdhhvZTHL1ZMXuGu1cQ2rfCaLc5nbL4GC0woQDu3rLWmmqh63FGAiskNIWOWw7uxX0trPMF6O/nOg1IF1QzZ1WXnpzQjVhBCOH00y8EL4a798CcU80G3YrbZHg336jmv13F0Z0udyF5adz9ddPANEzXqbzMUFv/ZBdNlGgFgkCbkfnJAF5lxDYSyiTOm3cECr5smWNqHT7H1iOq83KJHxZSAhDmzF0Kn4z8/tQcYIZpbrGOsTGszFf0KJikFUye+LfbLdC8DhmupaFfrJeDkts9yvKon5UEfokFlJEj5fCanFfW7Je6DGXwZ/2AVX1Sxr8iBmyTV/+R1IAE1qWOmAuk80uwGbeFTH7tPlfh7Oo4sB5MN/G4dDl1XGiEzUo3tClLkaHY+Z0qJV+xx5cr7WoOjLw+qjEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVf/bzmVXFFKnt1apH5eFjFtL5FIX2Ar/Ig6d4d//xb71vVVLFtiu7V/HE4x672HkIdl1mYXiowI+bnwg7Q6i9/SjKdQ7nrp4Zmq+/6RHsSXppkvLfm2w9LU/eBKQijIRBL3n0jYSSWn+9nGp7Xiya+jk3TEH3V2rix4SKkvMqpFI2DwJ+ADUFAEeFNtiwex23lcJUKw8sGfd4VUap71ai9d73kcPV7Jn3PzUWtrn64pYo+yjF0ECBGVea0VlBZ+V+iT3+VFk4q+elyIneUTFNpNqSTyAlH/W3QuTq1P1Ou24cGD1+zzR6tADvI0O/dHlK03zbe+yOky1gcecrXHNSosMKpnY9V3UUwq4g3hwSqecPQ8klvvXyYja+bC2zIBYevl0XT675QiA9ORBinGvbnCphh99IRskj2790Vp/uzZd8YbXF3KmrDeqGzrvvNJBWE3TwQUkec94wU6E28JZkfRpBIslsP8Nw2+dCTKwbIJPyUMhp5+E8n62xm+DKoX4PnZbVyhDrHenwVxEnXYZBvtlva+YB0dj2Pky8kVGe9r3wvkzitRuwcl+5+y9dBjG9xDQSRegRyqlSt5OUM0GXEiE6np0BJdmXUsWpEh2DMuF0ofdFR2gUSMUh81Rp8iV5/aNAbl7YjvHKGnesqkveTszt7l39Dyq3NaoxifT2JHuMH19Eox0Dag9ByQOXeO6IDlR863XKD7wF66UQ+d9qco88DsvM8YekIw8xxGOKDU4UtfXJOTm7uvLTjV5AVmxhZKKr+7cU7F90uM3K/4+NMjSBBnGExaeJLUlZyx5Dbfnfv/q2bwXBhUtv6LYCQBAEBrh3GI79s3FsMjusC0hJ0+uPOkBpU+P1AUgU7DxOjG1Xod6DfogDg9XJdH0srpX9PmDqclIQ0l1GVe3U11J2CkG142S/FhtPSNemuZWRkkuhXztZqiq3t/3MQb61iOfjvLnDl0EnMdhmpxXUQMVjW9dLYFNQQcOsOIKDedotyNmhggD7k7OsU4fcbps15ChvWiiGDaDkWzQEtylmydAIBbazJWbOI1Aqc2OiN62yiyjFa+Uo+YOns6QtetcUmHazVa5Kb80HBzpfYMzS7xP8HNqFAmOaW3sRvR1D9ldPdiaozes6GTvvQgxb15oiXAqAA0DVySLOvHNBVxnYWsoVl0drTyxL2cryvzxu4Onv90SklZn1zNUHCmVhrOhLsmEDpGZ1z8INgiioc9sAFIS/u2gdjoLwcUYKdaG7qZ+wV9BCBxJzTBjVpiu6yVyJUWq8RBYL2FNqRW3AuVObbwU+VB01ycOUy3t8duxAm7Q1l8shY33Nq4J7zO0IV1+jV9sPSmQRCRsl35h4NngVmhI/zp5s/RM6rBuXHvKn4Kd3YrhtU8+rsIwSEYVLzo5b/404kGKD+kxLggCXouQy2x3erH8pXimSjANmStJpMpUrxDj4C4RBX1T4k0zzJeW9EM0aWzbnReWpbF5cN5qsBHncbjV2zZQPc9F1K8ExOSyN40d5nnLROK9tI/XDtDFNMo/yqJTK0XwRviQXJ5wd3BJaPNkQ31CQvn35sWa70mghTzgNKluiMthASyR2GREDXPdgu/ygP4xq6IlJ6w9i+MXJA1wc5WO8G7tWC+Ch4zLJDBkMnG2bvFVk37gpQTTaWFEgRQHYSItLIJxRUo9Bzt7Qp4CQKgMwRuSEEahuJ8pH9aHtjqyjyPrUU2Tl7pHEHI5piNmvJCljcwGFzA+OEKni1BJLo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I303/DP3oLaxrTBBKVw8vIUh6PEA5H5nbZn97rmODF6Rs4o5cc+RiKJlhZUwdbUDqjHlUMfD10/CFraS2yFXGeHGibxaZQmXELjCs1e7txWBbe4sJHC4GPMgRJFZ9lMGMHuzPBKxWL/QTzzmoEB5HRS7FjfCC5cdTCmb4ZsC7ECFivdHSTiGqfbnRQZ/0dYAkeG2MXVRZZEMwNIzzfi+T6yLGIAdxTU4nOAyPM+ioq6cA5hoTfuNbI0doWJjC5bXvzFisQlSnwfZclIi1gJatfagAafh6E4rzb136530suaTC4wACl9zDK5gLRrAuJW8WgMK+4d1Uu3o3hoQpwBqE/ST31Rz8RcbgrSHuluHmk2MCroimbflSOgX0LN2frmnrGidY7aDu2+Kl2pNKRyewgJPZT6STVbWJOmbYdPoEsAN7kf6/2Qm6aqM/XLwkpgLdKf+GKVfMaTfU/nD0MpQXuCwRJm68YeVWUkhRXR78uUnPq4Q2p5LruMF/ZYekcmHYcG9MSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV/4zu4BNvqP81pC5XxGYSDfxZiIG1Cqht7A5Xg4/qQVXrRykSepfKKoroTZhkx/6ByGdasliSj3RaVS11wXKPWF/z2z+4mMMUwDRKWckj5eKLCGwCRpOTz+W4qYrKunSXUhNiyrzUy96uqj6MjNY5u5F8E5xVZif9oT/mSpNYVdyHOU0rmCfNqaaiBCqxb2MLVh8eLlXRfPBl0S4ABrzPeRl/yTBNIKRlrC3puhQVNCr61S6Qgky+AMwS2FboSJE0Z18r71G0penrLIZkF1bHNXSeO6rMx/GeLw9htuYWpked29CmImN6e/nIGOC5VdIX4Udkc5N0EH8xEnfrMsZO4/7kUdTQYuwlPn5a+HapF9LVEZXybzqeGyTmzQXL3VwjuiYeVVgi3kOyLVKuMK8cUDLmLR8SbI0r58fAdGI5mD7iuD/PgwR71n+FZ0usbmXX+rT5sSI+Y2ewrpfX8Gg0L/2aoPT7y1DDCMmRNIW9X4VV3/WflHpdBshoQhN9gbu30yOSNTHBiA9byRyMTtPC6eS5InlsG3kv+Ci9Zgbb0keABZUGrJrf5IPdcHbpyU2j10GlUrZmPo46BHHvZkYIf1YXtqjIR//iv52Gz1fF5uv5/q6kSQQnkSrvS5GyAFBbKruL/DNyYgDG+hX15kof6vX2Gkq0+WsX2fMk42HK0KjlQqr7tTXeQezVslkMRwqnhMZIMSQ2GysNrrPYZ3W1XG2iqxj3f4lF3n5zE+xKdqjVxuQwgzM+v5+TPUoRaSCxwqdsZn8T5wnQiV3zqZGySxnA20J+49P6zq/etJ2LKiiIIjspW6NiDMU+vEfSdgGFzOp3gWHXLO8vGlIg/9AY146usMgYQPPT5x8fv/MEjxaW5rR54A425KH6NcBpam1fwQWn1YShZ6djY/Xyn9eNHt3xaZ4f0bpjl3RprznDTkWNUpwAtYAgoT0V4UZJIaJ8BoFcI7axGZHM9VBtB8syim7I2dmRdlM53xnbv15hRhgFoKEmMkZn+MKTwnRN9LhndEKDJavABdnIyr93Kv+CqnlrHqEIrH4j5rNa2uWBSW8O6vGCn3WtD6ufjhHWp4WM5op5/RffqNRtQV6AtUxENRfbXMc9yT9dX/09klWmq1XuIc+/rzxgREBTUtIQamIdJTldmPH8+26gRBnOEOdwFWNKJMojc5Zj+pXTVIJ7/3PYQqSmwp1plMNDi7ItfamMV2kcZfEsj/sStacNYl349JTRU64VEaHWKI0/5nnIy0FcHuNUHZ2tbTmv/Bk5aWKulK5I/vxuB4KACsuVbJrlDpoMSdDs6fe/yOUtS319Ucw0MdBXFwNcVaa32lvi0z7Hip8Ctu1zhlduoyXL1C39P4O6w9z3GI/iGcHVXY/tEDEdcsCjK8/d8izFzNXjCOucqatoL4BmI7D+B2RfR2uI7BvHf5xsvg3wln8VjS/tZ3a4VPYp2Qqq5vTMMD7GA2onlRRfEv5OMjwwiJYovCFrmSCwzuVuhZLBjqnBZBIz1Uy6DjbWoiuc2Q8cKKvybwxZbbIflhtMItyMqPvVL5Y4l77wK2knrEPVJ8TWB9WU/a3D2fC76EMTWX8Mab4TwFPrfQLMW7+iElZ/r/7penuLgjDNj7wr6gXGnTJeXP606GnDk6jDlkga1QbhJwoq1hbLx/fo3LG95azJr7ItuowxA34uiQaiD8WqyeJxArQvMe8goiJ9aaz2u9vTeJ0c/GFaeg2IKzFJO5rEaBq8zxMkwAlQxCeL+K0+Y2DqZMTnAQsUVrN9DF/hj4fN+gyMz2N81CaNng8q90xxIT1XVrJ8cBhCLzwjbXCDEGOtL5XuqFSbKUJrkoqqpKzQfjPsHujuG/xWxCGL1ceCQ7khjmcmN+IHMVsUi5P5yEbjHwuQk7p57Kaxnmw3kMi2lfnvXrr1w++5Eqd/lGufI3PRyKkpzw7GUilsaEXYXUJJXs1C7fdz2fC76EMTWX8Mab4TwFPrfQLMW7+iElZ/r/7penuLgjqiyIkRo9SCs0g8NWdu9Y127tM6+LoPl61MNYbt/ZUNjKG4PUKlQDQFmWOWspPEc8ccxFd5HueuIi7tlzfwiBD9PHNNcIRzeZ4X5EbQSmlulExOIFlb6O71mZ42UG+4CJStPSV/pLDMtyeZYFdQp3yhUbmZ3Y2u6QPTB5MhwuWTmxhVwtr588NG+f3JFlUv3QKpXNhdWwevuJpujJXXm/d3KFOTJ2wJnZ0Le2A9V+Fy5TvVZ1A83Or7CIoSJrL+oo1SnAC1gCChPRXhRkkhonwGgVwjtrEZkcz1UG0HyzKKa28ogMbMQsEFdxdWyjU2QfgtSDpe4e71CM1mt4+k9SnztBfHhwwo4XRd2gzJOOoFm5YmSDdSnFeWnZU6hgSRDj5juuyCrtwQOFByjsuv5viOxVM0D0tV+XNwYw/slMd/6kn+AhTJxtYauQMOQuZoDR+g4oE1Epm3JwesNOHViJJQ5urfZGqQLuwbQRtiKo/n1huGj4XfIs/3Vf7fVev5y7gjLHylGdqfaShpZDviIlj4onDtaLmw9fvykB4zKLBGgInCinumZhFzYfAi/8HFl9juhq6j1D1YiRy4M7Lz6clWyp3o7vry7NGuK4iSsuC/isw/9WrM6A1HHhfu55qIlem+V/9eVRQaZPGLKpUsqz3eePLE61G740fxCNSOWPliRqNSvvaj/1JT/ta9k9/3icC6JiNDSc4C4CVNApeR9QiKjIfY2p0GajMpmLV+M02mbyhvD2SKCguiHKPnBJ0KsV5xDtOKQR8ec5g1e9Q6jbpxi5kry5qHSmQ4LCz7gVYYsR7PK5h6S36KDC0VSQ2bWrsuPb7gyrHfbqmbiosgpKkWH1jcIzT7z05FVUhsTjdJuSWlSZd0oTnG8bX0aaWMTAx+xzhHXRmGzbGnFIkNMa4G7Z/57L9a5uPtMzb35skQd2riN64SuoXm1B/44oaD7LVb4S+V1Pj1gULbvUa3ivQNUpwAtYAgoT0V4UZJIaJ8BoFcI7axGZHM9VBtB8syim6qgbt7Kj0u/W5lHMRrsrCpCwmnVLIE1a9zU4x4EnkkQ1kDJta4fIMTGE+gDVG380GYlyzLIvGSmTWHIDxv87bLY9zu821pNUpFn7I0/oeYq8HsbONG6r/NNMmnSJMCj5KKr+7cU7F90uM3K/4+NMjSBBnGExaeJLUlZyx5Dbfnc+NGyI3jesGsXBd7k8QyFLDOVcBWdc+Rfpt2G+2c890Jz371G7jIr6073SbL4dNqpfXNbh8ZpRNCpXnRFroB07eUyqUXOcYICps9/p9ZMAXFj69SukZwktVtHQmxaO39HVKcALWAIKE9FeFGSSGifAaBXCO2sRmRzPVQbQfLMoprMLQu7p4H91T4ihIxSsSGkFytTi4Mvd+swLnJ87YN5v+g5RtrpbVI27XbkAwGmcWRZ9I/CtL6EKyVf2Sujq0U4sRX66OWANkB4rVg7Wt+mcR93ZnpM5gfMpHb4aVW8o1ZLo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I303DLDTnTFj8lDiDogmF68MA/nziOHTI6MtfmMbc00RfR1qVsEgLEUHjuu+BcNqIgjQcTVm8PMuBXT3vmHyUU3sdg+d6fxUl1uj9kEETAx++xO+NeoR5H3ctMF9WfpgeRk0hEv9IzJdVTgHYrv9qns6Izh8o6UtVOkGMEX//LwmsNXBv6gibC6thaF5jajWp/UHk4UfYUyR6tRJhwNbaj11hwGBLOI99dEJPMxyCf8pjgrqsws5RyIh91ry5rCQlNz20iP4qdK2Pk1hHX6Sm8xbmJtpqGK7eZWxptcMJtRg7gYUMIiqFzf1w2v6M4JXyczQKoqq5BY14RwgDtqQX8ad/NI6R+/L4gj74lZDhhBwYIvfmY9ir6VAv4pvQkn7pSZINdme9SHvUdfvmvMUTZQet+4fRkuQdWXOSePfTq0LqLrFOcB66Sgn7DG+v3EiUkGbeq3r4aFrIM0lPpb0eLRQvMoPwYfhAGqTvh37T/YA6ulvVnYY+bfDf8La/5kCIDkukPWbXb6C4JljzKqUvacAWvT7zoOOYujdcDRwusJQDJot017moEUk2UZczgdXipF6Mk1o9DefyVoxR7AxlpdDSeRu4mDgZc8IwKmmgdnZWrfzYbKxehgDTFLLqmC+p8jbfZV+sjuvKcvpVOs6SsYCcKGSr1zFYINmrUEq4nKfy66sQsCHs0NQYQmOyk69tS2VxuPcjPdlOH02LFjec+eZLFV00v8qZXncLAhDuOKBDpxuYAJwt65gXoi6NejeESb/vxZ3+AOCLiIObOJYKJJ7JKJJo4ttC/+9tGg1/2C8O6GD9HS3Pt5ZCZpkRl7qOb68AmLsvzMKLo6SVIjU8O7Zl/yId3XpTwDr0W9h/LCTnj21VGCQ7RvmoQL9UjJ03Io7rH5JcnGeZO1//VW81dttvWOWetXhQFE0OSvFF78sX+9YAqSmZ95P8CiDJ5HYiw96mjfCeUtio4txpSmZ3Ihxw0yH+WzNZDNSEvbcJ9u6QOXsjS9cM97rMmge8G7ufCHXdFi9wD35I/kEZpXOmEIZkRGd8gTRaZsMV9au6N2qLcduWW462CdOPOVDK7YTitWS9fDOi47auqQYzdXrlugjZsDI6OXhfiaufjnVDjMYq2c5J/5A4/ZmKjpq0qeiIGDCroERJY2H/OStemu0ogLhLGWL7qCVWjuqxoZKnTGkFXtk0O4M6JFWrVvkgN4jFQ3XpoWdlLe4Ch5dKmDTimPTGyCUqEEFpSwSQxGplhcxfCqpRTI/OZMqHeQsnEMZdFaoDPILt8XVwf8Z/j1mJy3fYJ3LniNUrkvKkzLok6vkdsHAcqDayWEMc4jlO+XfCwNDl/EUh60fq6RBAa8/y/OfWsObgCTHsGHgGs9Mrutg6fTGRzxydWUSydVp0+95EHIRyejdDsx+8ns5+xXKynNIl78qiie+g2S5lDQCyUnaxEztTb3Q7li7VpqRSR3MUZyhA+NnkDtVriTpGGDxJEaBBShSoZFi8isOu2wFZ5td9PWD/0dYBypi5LjyH7bKzfQb4lMoQOIMUxjNQLZCC7+pV5Yb6vwGAbezcJSeB4z65To7ZXPtNag+wbVttQcMIIRTWyJS+bgTlqeN5C6XR/xIDjTUhptddFULPSeNgn7BvoSUBhV7VHst4yD79UrGJDcrqZTsIx985TTlWLb36QDJtLsDwLE2RoyV73Btbk1cAl6j1UPoyc+LEGyiKXdTzdqDmlawOrCo8W1NwtFY5zvQoR7LZmCwRcgpPzwnq6ZpAUjid+scl28wPe11eo9nxJkAZ2SFIhn5AU9ifNmnWcpiiVmVLqYhWYgq5crlL1tx8JGOoUygyrppFMalbjHXIHJS1Umg4cOVlhdDmQIyQHfVxZitO82I/wlESrmDjr7x7UfJ74jbaQnMHb+yJHEFM3QaIrf9Rl4CVkV/epWBlz71VvAjF8aK/aQI6AonSeCWxqOMbupUo6/D1abzMM/f+uhUlg2gIm0+c5HVX336Vof93szqjW5u3HF2gueAHpEw8cfBkB88A6i729FXaxC/J68GxZI3GZzHZnxJ5cJDZzkJuf4bnE/t6uzgEn6LMfxlMPDBl/D0INDrXJECEcRVG8gLxSL9ivyHI3dApknaMVlcNfglYXHmi3ruBCkluatg1VllisTZTrQqnQuzAOaVcMFyKKr+7cU7F90uM3K/4+NMjSBBnGExaeJLUlZyx5DbfnfDY/JeRSPLIEk01OkQhTgO+rIxaAU2CbrTaKxSELcCnp2bnl1GP4NuOO603GbJMNjwPqNGq3iVC10xkI4G4PzmPJgmzgnqIZ54LnbOhGuJ41dp1WOYazT8sPRTfphYWuQEQ44qcYoKg1P1BzYw5EjNFEyn873y8iNngiD1nURpFM9ny2xzyXLfStch3tlCgV481WXte5Ap9QfRxGsVo9knuS53xBDXkEkjNitdsi1dE0aKY+UMrjb/2XMRp92qvLBrLsFiJqs2kZrPY+2XgT9ruiaOh+F225vwJarujCamHSeTwYaKpL6XYowd49+hGhUKbl6YPOwhDoskBCKondtKA0aaxi5mF0L9Z4NurZqP81+52Tng0OLJNuMwqwDXr8rYxTS4ehdw4Z2xgM4eqjR854qIrxL5g9NZrOYJ9nwjYvjqsi7tXZ2brkgtJs7tgxQ1aiaKcwMMel38UNEOdcaOiSvETxkbMEzqrItHxqH5z0D2LukY077JO1zvPdnoedHDwrvA3YzG4MWU+ZBsF2ayZqL5qOUV6Uf4iRC9kZ03pFGrQWTgSmasuWHbFwY+RwZb2jkBAa/u6POV91LiAFc5cG5R+Pxu8PRmHwrt/77u612QCfwDBZOh7MnXby4Q1d8TE7PbtxEOJ9/JMzvVZi4UDIbWwZsHztw5AZxOriSAQemsetfWypo2Q2gWbXYMvGVSP0UJNHPqUDN5PLbJUFdmOcZ1IwDrRsaVFJ9Ul/uQyrpxQUrrsTIYNWGo66AaXElSur71C9uvY/5k6yEOZwrMTBklRLf8z+GN3ZCiwA8dGjEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVfOr8hzWl9WpmvW3dKX9VWgISrQtJ5U6Ad/SIpETJXcH/p82dnpGUTNwFTDN6sFZkwDT7RGW4kIc6a3a2tmIwUrXps3g5J51MUnAEOBEf3PbVXcf8OTI8M2Dc3cLTidQDxPZ8LvoQxNZfwxpvhPAU+t9Asxbv6ISVn+v/ul6e4uCObGYRLjVdk4sFZ1mMg3PyWhD1Yzb0jkh7VuKGcp85XbrhbAoody/x2CG288upql7HJZmX7VJjuqJPrVVpZPJzwErSdH56mdSElLj8XJV6A99SvTO5J4g/YOoYteKsg5fvVKcALWAIKE9FeFGSSGifAaBXCO2sRmRzPVQbQfLMopsVyVJmBaG0K+jTXMkKc1roDWb86KEcOZVEKqpQ4QQGptFolGIDv3arePCUaD9reA0A5J1/22iNHDNK/qUjSqLwEse5MF0XuD7/IjVPBg4uRSNFNI2mQf1sZuUB7Fxsrs5lNTQV7HCyfgvD0eFOe7x/BkSOBXz/WyRsCmvF+c0y+8+MDilQlwHAIizXrb0pnIZscvtWhLXYRRn0tnoeLp57ZvFfKQVXA+FVk0NvcJMngtRKVFmWwRkE4w1mIru4jem5pKqj+Al802TCelqJV4T5gxCzr+PYuJpbA/j3seqigxXPqJyOue63CaBPFls7eyPUUb9QY69ByiVvwUbG4Zh5YoYeJin4L1QBjbrA9pdmGwgHzTI1HbhmauNwAgO406Ku/twRdGDdZRZGTyx6hZIQDasiJZPs9qWfIAoXv+CU6X1flvtodlzgDM/xHw5PuRFQywys+xNa7wc3L2jV+vvlHakerQsqpuoh83IASs2CWHGer6LGs/hQgS2I59kH3bKsT9z4ybMgjCxwUZ87EP3dov7rBQr+MhrhhXuWotvkwqHnyqvXQX0Lq92GctDONVNA6LvTisDEPClytL962ek6M+U3M5TX3MZhMPae2o93tgCkbFTx2cLJPuGo+nrs4YoRL/SMyXVU4B2K7/ap7OiM4fKOlLVTpBjBF//y8JrDVdMLJLm3WZLUekau1vuTG7urKIuRTk5cdrf9QqKw0j949VppCLMnBGXXA5E0e7LErm19+3oirQ9vGhM93zhlMf9BiN2JxR8vdyOyHxF5oCqV4LceXy8A4BebuPOLJiV0tHAYT8wH0xciHtRNn0Jods/XeK80yWDqQ2MRuOUZdX6zlpfP0cP/OX023ziEXVVBr91sCCEdtlzG7ZuCPrFIk37eFf+UQrfwSY3v8701WWstWAEPo1gvGYdTuUyMMocvPmyOvt17GIX3uZstI9EoibnILyunJlj7jkXiY6K546Kh4RJQoCY7+3n+iVnIedGgkhLBvznEkUi35jH+i/lmigmF7aoyEf/4r+dhs9Xxebr+f6upEkEJ5Eq70uRsgBQWyJcmSvB7rx99k5Li2N9Ymwkqbe9EtXYBSJY6az6FImjDT4gtoqIsCrn731Obha9Hy0yl7+ixDu5mfuPd98MKeV26R8Pd1NuKsQIUReNvwy1KonouvckGbaIjliuaL3zQDKKr+7cU7F90uM3K/4+NMjSBBnGExaeJLUlZyx5DbfneBGRJISVxCJvro5XZqaaUPIW4Wj0mrQ3etNqPJvvQbZ72TJ1CrzDmoWgQKX5WfJi8OmMdxRed8mLO8sFJ4XVpmKh5G414cGepz1XX7/cGr3ziXuN81grCpFVF8lrFQyg5rzzEDhUk+Dij5MMIK5o73KG2wLhlLsyEGRDYLFWA7HDqA1M9aUI4KhwV0qWuZPInO3/glMneAZJGUw7iAqo5AAPbSmPqGxew4rVP0yFfw/0c/kRlA9UOPaWM7peMkHj7geud/WSaZKcebQVB9AzJtwXU7rySsbsw3AYQxs/7VG+HgPzebMrBNblTcQUME4eiqx+RagoDUxbO0kSOHAwzlZNX4Ws8844gVKZ2nS/9RiFlx4Z/DcY6mk42LGwjdi0OoWH+5+Ec1u0LE8NGQRrZwbjMRWZVr+mxNmMBOYXG0pGs6xLCnnozqx88zz1GIY0kaOg44yIJfbk0dq+rUh1JBQwt9bW7+5zpaOgzX1/LSebAkuM/IYpPJnlZmBXvUBuKVFL3mxvSutWcscFMIFdO7U7b6gP0sDMZome51CnNsLemZCRCLh0z44eEfWV1g3jxINvzQBzjhtVvwdOyTYK5ElR7xsWk4mZoTcSzl1kc8Xcq/HYb/mxrlRW0Wj1s8jnpRk5ro6XpD1qU7BVp9kaRsGN4s6+b08B/1cEqhO1zMr3FYQeHFmSXUyUg2rxYPYd183CZGrQKObEfz9Su8ZEobOdGJ1gULhW8S9N8DtzqLHse5cWZGnAKJ7QOMDM/qtaXEBrI6H3VyonVe83fA+fH6EcfrhzR80SlpyOHYRiXfdNV2a9bqQGd0bomkjUY/WI2fenbjrcwN7Lkw7KX9GSbKfh10HyefzxWU3/rGLP58HDUR/45F763QJ8gej0WThKeAXbYxGDqtO0v9yCiz8wdyUPTn7aRFPJnGGJ9OS1J2Q0QvWGMNovBD2uqyTr1SVijff19B3CaSQ4zVyhqdTNaExCMhHH+271QJUgWzoEDHVvCKoZ44CjSWONHUAv4BOLol3LGPuPMrHNEHSG8VUGU1Aog8tiLP7ryxZ6CHqzpReLnfeMQ44VebGaXax9PsqqvjSRXMoeHur5jrpVZTK8z2GmzRZapgMQ3o6QFKB6lRO5PnRjacBnGYEQp/tOKyDdI8z36SksidcxZ/woIyZ+PlJfWC0koY1awYlU2OP25K/4lcgQzDtv+RlSqtV2j0OV3fzw0xn/ssyo1o/248I9w9ILDnw8Iykaz02mmoVpRrDQJFTpTTb3r5fUhwm9GFmGprh0LNRIzW4tqdLlASmRnXzBbxb1Q4W0yN3MuFGjLFpULP/0tGDzUKGQcxE3b3/84bJMWTbVfTrBpc1q1u7lAgZp9q4w/3uif6tKQPj3l4ZnOLr9H/lcWYVL3twx8HovRj9t4aEeA/dP0kn8mdahTLGfcrL+L52YHPaA9CD6MqubwEKnB5zP5Yw2ArxlXc5vxB7dIqdPG1lycyNKuym4tOWp1BJ5b0znss7Qigwvr4Ir864WCkeI5LE05l1pc+VC7PszGn5949iRAiR+aTeOfJ9LjBJCbmjBMTBeVl6ct1fGF5f4P7UIK+bEwizBq7YpC47V2HE46ZID2jjkTwTnAiI3DOBVHKnP1E6+/ftbBBybPBxrFor5oMeEOpLF0cYP0qdsZn8T5wnQiV3zqZGySxnA20J+49P6zq/etJ2LKiiHB4siB0Bcy/yczC6tOciCGDiuhiDyydLmqBqxBuXlSFUgypSF0/bE/QPaqkwNi5ec5XFi+cDST9FoAMYLIGmvLBikaaSC8bLYhOXQ8KsVHLcUDJVkMJNB8erLYS/XvkEoRL/SMyXVU4B2K7/ap7OiM4fKOlLVTpBjBF//y8JrDVvbCez1KTMEiwFBWbVouzFI5KccApJ4bIEQ5rsnPTm8Nzh07P7YfLdxENBC0JZ/4BUxITLg36FFxPFvBFIQDj/xxKd/q652tpiPICMARonftBksSHPaYvy4raQdPh4EpMzTawjv3BG+Ti17s8VhpsKV9VLJtfZkOeNr+K494/DD8tgj9CeOfI06ULar/w+umKVi9LXKU/RRo7QFbdb57wCcCczhuhoWUFIvwcr5+kSU3ltiq2hIKGB876Hncbzye+C+Mj4+UvK2ULJ2FugKpy64Ilgzj0bGh8Hli6o565X24Lsip5Ly+jgX5HEjAvXRXIW+epRWfaYuQxt3GvidiQTibNLZMM9Zin+JStg27eFZov9+Bd+PN3Z9AyJLJOF64pmvKpzhT4XuSoZ9ig2MOR1jHhYUwpEgyQNCOWa8a0essfENpbIBy/b2Q46I4WpiTY2CVFmNiNw26UmmBVld77gucvBvAHkAZ5FsVFT+pxQYtLicC8F+SNmQeH0Leab+vrNmMX1nXkJ7ebj0Dpp0TjUQOEiTzfRxreUtJ9X1i0DcVeJEj9qGCPXnkEPWZ3rTNT9b0gA4cLssTCarmtH2lXLQRyXxKB4k4GYwE7gNoA+2ThoOl4Z3qs6QEhhlSerANGSv7wFZ307V4au9mf01ekUCPCWrCzNq8Cbuq5LzZDeU6RgTE4UqBAZ6IsNk8RyKpc2E40Ux6JDrRsqdeWtbNf/JoA5uyroO8pR8y1fH0Lcz8LVfhZ5BHiVXJHHotbdMA9KKr+7cU7F90uM3K/4+NMjSBBnGExaeJLUlZyx5DbfncKvV+pn1/PjUDTBw6gLUbivz9eM+kYskS9xyu4r5+W6wNx+cSk+d5lmKt7YZZjr3QG35UBsYaZEUWD8J+Sjdyx/de90V2j2oXDugXC18gR/wOD1JvNNZKcThg93Wzw2q9rlHcagP4IDYFKXd1NIrJJI+mGKiAy3XdbggPncdSGZLP0wu7pGbYuJATiVULzwxhZns5b108A99LYLXnxpE4ljHyf7XZC23nhvIXiZY5WoVtglB9rv30rnbfjEBRKJ25l8UQjy4uj4vi5L1iIb+nWy0fcFEzq48py5ouMwFC/QZLo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I303/jmBiukXsWY76PqinGrZMLgfk0cSV5VZA6M8GWiZsZBKM31Z7brjHesxDpyHkNfzD8j7uYbmn+PFvvW/xvEU+miCNMDRa+jnJDNd2Rgs4qmr/YJ0CG3/cLoRdfw8khum1SnAC1gCChPRXhRkkhonwGgVwjtrEZkcz1UG0HyzKKb8LIvynG/L/iI2coxhUv/PmUPaZr6Od1eUb6ESZyDRbBUS9z0BJXa7CHacjsw+qKU6Yk1RDgFt7lJPpvOa8MwgI8IdJzksOYSSlm2lI+dIXUqFxctSAvbbLOKweW6fWlA81WCIly8CCk3uNnPY0jx/odB2wx9YoEWRbuqjgvJJmWQJb8r6dMcwkVxSvexBtocStdVAqI2qzG0xF1GtHewk421xigq04CFaUBk9YhCpjDtC+hqEFeldYZEBwh3zMXAJspzmZpfHmGFU/a11QSgzIJN12Otcf4mBLLA+/hTdDZVycoII5bZbHKUN5s/t7quYnYoNhrtCUHFgTphdLGTkOBtfQl5pC2D0mB4EBt4Z+eXAptlZQjLpmzgjYNJlKNsm2Zb08F7cUPoFwJ/tjvMh71JbbfwE27ZbNfMVXPBX87dvbuyfy+sT51naoaRSV3hUyJ82EmUPIO784QHJsNp7EIEOFuxzsb6yzWiWWxpd7/23MP0bRLuzRNK3SX7+h7RDH9GZ9PXjS/An8nHyvYZS0TkotnVQWeQCWEMeUjCQCUVOVI/cGkIGeyV5OuYh+cDI+B+3TVr3ZQdgZfBA3cJkztRdn6fSeMKEilfmACk8/Jj96H+FMqCD6rSAP1PWgqGNp+v4ia7LhXa74M4FkuLrQA7oHeF6RSHL29eh7JOXaTEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVfSFX3LxGH1EFVu067mBFU1mhOrxPDO9+isUFzEGqBUn2Ay/LQyVsvUa89ZrGd4GYCV3+nGGRznje+XDanaR+cvXnug9slbYcWbX1hf2X0jPD8RFy+DMhLG8P8fY9Q5zvXITYsq81Mverqo+jIzWObuRfBOcVWYn/aE/5kqTWFXcizJRgrqEAnq3Fx4/CWnls0WHosijvwjaqUNy8ttGcB+kEDDF9vENWA6v6rXc0m9K8Aj2MjgY0UXV7XTRbLnSCZp5NZzdxps7lfOoJspW9vs468ke4uraDUumGwXQ80FLoQ/LMjLXypS9pO5rEuD38klKfFCTbS6fFb570Yv2Ux5GN0ydVOsGZz07IBhksc5NeK7ZGYkJqJ99USxXwgfCXUBZFqut5S5yl0EltdjwdOSZOBBpJYjlSM4cNZ5DM/TwRzdW5HBgrTTktW9JJD2yWXIupVuNfU2DeTWR0lPn6ZO20XwGj/dRZWxCdvY2XhVQ1pssamVR/crby9/mm+GSNAwha0IJRgV1y+6IO9RnvCZjI0LMGNaro9aqzREpUjaDKzKpwUomUtEeIuRrg86kqqg874sBkAaI7PcYi+hhj7yTZ+saNHtyF38Bx+692zokYw1mw+DpIdlDmuUKwX+H1vhEv9IzJdVTgHYrv9qns6Izh8o6UtVOkGMEX//LwmsNWOvDzKyzEpCvIe6godZ4dJhR0/0wPrXapSmFoWYwHZ6ygTWE2LVHDYO9eRNTZzXWkHzBYl2pFvc2R5aPWLyR4pzVCn0YTHz1k0ydy8ov0T8U6Jx2xSDXSorWPBQOfgwIZx4L+5DB1zT3DKOFfhfvBDu7UyEdzu8OrGlbe+lD8C5TLTQSBCBRYUadIbE3WUp4j6Iymy9xlXMEUqgq70ctajKuN6l0dOv7AE0nsfPAQ0Imudtrd15pff+MDxlaR2NEtxx1Bm/3oBskzUfgb12QPN8Ed4PGfAlNjOTVc3kqhVfy+jyGh4bBB8o2w7P+I2jxFDiceODAX9zq7qxJF1wh/qeh7v3KehfSTNLsI5EVG0rLtMy9vg1HIZ6ZYl+li9T7xFRNuAL/ryR/gd6jT8hk82OwwnII6plWmInoWVtuCi5t/umCMHsQGe9B/sPYfbmnwl9NPiiPANy3Ma2sP6f35IOfVHRd/bonc1cOwEHrY0LvCx1LqX/hhXo7VU0SV3p4etUm5pZhfM06hu/xRXv+goI2Y8gLs3Y+G2AX1IOa34b7QRwx/TJi5DD7I9F7QTxvyPosjs0PDPdjHZegAneg74R9/vSAQVdnUyM1NAlmLsEl5+Agem9ZDC3+uU+O0Iu43VKcALWAIKE9FeFGSSGifAaBXCO2sRmRzPVQbQfLMopkMRj+n4B4Itxa7oSszQtbTyEhuD10kzzVYCcO2nxSb87Cw/4HC8yFyK1eLFsrWP0YKHEWTnPhjLc0SPxRbAEzcPf0mOjLV4DGzEtbduBW6D9/8kP/9WRKTmVBhS7bOWo+t+L2XAdLJI/mB1yzdNwW/8botyXtpRFL/TSijlmEogAgPGZdja80PqwcVljGudK1YaBNWJXGXHnrFuNn1ArWwzN/D35Mhj2S0874jb2+9ikU+tgP3A2JXZETkDBdzXXEpSHjEwnuRU7u+B3gBJI5R5hvwetBZvwsjC6CnaL0hMi5de1xIKLiYxYcDChJcbki4rrKSwHfDgpA3dzry+cyTeCFb82WMO8xFcacoXDuRUWojQKuHPrIZdqtKUaNewrHK0hGeRohXIJCCLNsbcOs0xFB7lZ0KC9oXpdeK+S9WebNou1y/xaMRaE6cFfMjyHkoQ2IFlKuHx+5u07j/m+S7mpdvnBE7cUIyGu5brtfv9Ms1MvbsGtbSLZIDHYDHJTd0vHUlqVcReokfG5IBU8EBBZpNpnjx3zniAzANhz0dHgb3f0ZRDOYeowgvA0VLel1a3u3FxgPhBFkQJMW2GScOb2FQnWkkDHX63gFzpSuUNly3ZmTeklZ1PLcV6RXPZFKKyxkpW+bgrmo6EUwuvZ4a2BavfIWzr/Ko3dpuyu/yJnDtZTYJ6CRcLV+CvSxSWW468YY9hnBY7XVoi2MJSgF8xJqWmCVmwQzQP3x4/YWRVetss9K0NyTp1XY+SyYIVX0f2ogpfj0VQp7aszBK/Xi4gV4EwhEILly9qyHr6EYXSi1+TLlm3UGkwWuWyBwCAbQT3ee/cIvdPmw3Tnw6mIe7+vhqtUaMcJxIMB+VGi1J5YveGSEWkPAuiJn1N4TjdSAhf3rNm4OQhBmoKCuu+fo+Oy562WJtWCrFeWKPweHqya5248M6ZKKkLl3EeaygTf3tPeoDt7BEyizCWq8FHelW4beR6uQnrgAfGOXLH/XThpRa8eqqfXD4Zc/JKGQHkip4FQAPmEkHONv+Wkw7kbq4zfVrWnoIOlEmDHmr0Yzj7LFcuvsZ5qdo0QQsUyJHPSS+w2tVQzPd99PWUKE5/NPMeWbjov6BMawsP5NlX9MoLXrTkYba+YK3V7Kx5LQZkFxr6NTKVmNR0S3yeezdSSyZTCAjZg5IEiujyAMEId1J7/iAXJGA2s0H6nzql/v5DcJtLGNzwLznaYacfAFIgCw6S6OFAEpalXllddOqB5xPtdAr6K5Y6V6tsuHG8uCN9N3MmCQ9txwTOEW2wbQsQdnwP3SPABoMsw+oOy01gZ55pQsnwWSgKK/WnkzLPFkwDe2tasJaqn8+Yojd/5sn3oQY75nMPDpOp61sCotrsQeg5NTK2mwW1i7JXMCT26QD0dbiSYb2S0+1V7J1ABdfLyTuVRTzOXqqtG+BpIXQREf1gW1oqdiMBSrJbwMmh5582EYyPrOFzCpqhoZDlpqBbbSHGIsQDcF0n4QEbGc6m3DLMz/+xX/5Vy8X2gpSHXfv7xwjdzEiZ0GDycatPuR1quIshxgBjD2wgNTmvhv5wmUGvDVPdqSY9hnDKrOj5x0pxGQl4vLa+lnawv6w4iG528Ksuzt+jRvGiYDKvgiSXfaWRF7r0q9s2Hsoq9Dkif9HvASUYUgENFynd17zqAVtlV3T38Cr2NjWiT6dui7Ci1zkNPZ8LvoQxNZfwxpvhPAU+t9Asxbv6ISVn+v/ul6e4uCMIE8pGrSMoGQ3z/+icf2k4jfJwT/gC/P5sZCmk3HFXfhegpB3LyWN1Rqd+nLusQbVmHeHIME2Pfywt8uatjhGVvprg+5eVKXuOjWX7DJelLMPmw3WvQWO89wV6OctsMuNY8l46G+kJJVSi8YapkVws6QP4mVTyFxrZIvf+QiFf6BvpHWvEBPmtLfZk4jZd+SbUgeRcq561Xk3f4bAcIMjYiJRGGfpjjKG0VqIMnhE1vkIK8LWV6Z/D/mAsTWD/EoiC+nWQzDs1qhzTl+yIAhH9FRWguYfoqyiom1HTk7l47NV8hd8/pLQZz6l0/HoDRyqaNGANjw77+ZIXjqIAuKMp2Gg3NFNTA1ryd/+oSD1BgwHpNRNrIjKOIuf8aXx4jjcIthAmiAPbC9OVopnoTqhSOG2ZpRucxBGpUse1fOOrmOON3jtNh+ykKBPO1O7jabF5tVfTeACX/1PNNPJPEliQAgPGZdja80PqwcVljGudK1YaBNWJXGXHnrFuNn1ArWyc6tSF8tUyj/MR+ELZLSTiYQFdlCuFcRmy5IP6ZahvoCjGUPb5cPxWisyMc6ERUcmW0757oJtaPhMi/DdM449etvB4ujCKle2Wjy7ZLZernqRGo8b3Oqlsz7PKUqwu/RSIxabegVJtVxgK1BJUYKd5OxezrRiltwpcSsiZRUb321ep/fmWBZHtMBXniGfNQNKL8BUmXp/+8pkRWJo18Hu2NmwmV5OKvjsiQy+UGXl5p+ZT25q0ld4geiBMd+JKlPj65P+YM8S2R5boxg5UydibtooPsUk6ZWr0obpx4L/KVq2fUuG4W6ODFQ3H9rmtGZLE8cAIlfmBxA4kPY7CwW381CrNItPTeXsZrNH+r+LcD7e1EG9nBWXAFc1rfJvNl7uvjpliROPMK64Y+K5YmCU1nrMdIveYMGk7aTeJAbPBLQPPrLpNCoPavtJuJDHdXNPD5UaRdWsIlPr1MXwQUpM/ngtBnhBpQtp4SPCJDIK1cj1yPdIgLSrFzOyBo5244wG3zgxwac3TB37zQQr7OBgmAk/iOsgZC/VDPWpkLu5CH4vLLOEkMAzMmjz4s3eEFLPRTWrH0QJJNQneia6+8DPB4LeocdoEyNTMKlw47rJt8lVTdqTKDfHqa3Nz8W+VMHCm2P0fvJB+tbvHwducGCuJYHjIvxRwRKuiaeVcwX6S3iiq/u3FOxfdLjNyv+PjTI0gQZxhMWniS1JWcseQ2353kshZDKmscCCLuC/WgEkNebjpF+dnlSpspy4T2qPC4b+YuocHdw7msauX/B6oy87nuzMqY+r3TSLC2C5xqfuMTaZaFFTqIwOqGr6cNhL8P0bBXIMsitoR3HGWRMEm/XJ4/KX3NpW52N3un1XYF0utvq2VS8n6HnAFa9Kw5enlTg99tcxz3JP11f/T2SVaarVe4hz7+vPGBEQFNS0hBqYh0nkRHi0lvVq8GVPMJfDtBMreF3GbniWi97PB4TT+S7IZ55ib7GXoN2EwX7Sjm7JYChdOeld0iKpTrM5mQ3vL979e1IgHn5X0hc2c4CfFFGJuLOi1ypItGlPYz8K23PlFNv4FY7+uUGSv2lstu+5Jf7GV1sZkKGYyJLLXRgJn9jrJhOwOerYg56KQ/VswWdW/ugde/DkjHWRAWe1zmaVoMdFq5FFOANA6PhrE6Y75GR8hQzF+YEzDQe1I165RX9HJTN9PCEhG8aKb5AVKg41nGXBd7hsZXYXDWmrbq3ROQLsHYR90Fj4FeoCz6mbICkZ73AFEPHqPLCkfaPSBKOqXB2ZP+ZM8Oz5OLH6vYYangXTB9ZRAg7J4WxACvKvuzL0l0nIzm1z3mzWk5yUDdVYSp0TzPBD/yW7+sUM/CBOzJA81MSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV/rGrVzQKp0IS8kRG8W/6dPA9up9ALWM7vHNKKQgShWY5wLyJ4R7dGuVQV7P/+yf5ziOn4P8UkrLS41l+CDPtxU1ggapgqU0S3jm5lb05teCQQ6TwLYjdp2NfPMjBknO27h4D83mzKwTW5U3EFDBOHoqsfkWoKA1MWztJEjhwMM5ccsypoxJXlecmJ8SSzVMPdo1e9+pSebaDoFYb9Lcisbm2RLQNOtPbOEPmJF5GcJT2yskNG+4DoorxDtcpB/V6vax2PMFM6F1WLdW8o3Dfz7ZIUw132M71qausAgtxAF19Lh8bX/5DAdij8Mm5zLP+I9Q5OLYdr6MMZnAA5CrlZGpUwMJp2mNQNislswlz1EJbMNm2Nr/N9bXwJzaKYWzC3awAZE7FQRXlxS3F5hp1ufaU1j6vX5PGTyP8xfsPY9n/0iOJmZ6k0X8TobLeRHSlG/v/nIOu6oY4WCLPZ3fvZQUDAhAU4qBLKmYNz5X0DQTP+eOu09Y7UNFX7POWhEzSxE8DKXypps40NHUG0Dp6cPfiT/t6ZNmPzYVRMQ9fguhjzo5UILVYuC4aOWB7wE+OZCiMp5FhHkJFtvemf7Wx7KMSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV/HgkevOr+VGcO8QcF6D4s5LEEmClARh9KK6Hkaac/eiWp7H0EIA4GGFw3NZHOTiFZGQkJM388mj1aUIwgYA3QV+B2Bsve/sqweRcl+XB7yZayWh3HsiF+LiYLlMChRkrTQ+SZnXP2u2EIXnSIUX1L6CJdbCVTuepIwzAF6iLI9oCboF0EqUBZXK+vpgd5egRsFWgc9g0n593yoZ+bc96gRH9FW7NmOxMtEJw5iEAEnmA2AOcQtSWDINd9SAq/KCpUXX+6uWTRk4D6KtWacUcLtwH80zB4QR5bSo80H1svcP2qTJuH3zYoitacwhfpLSK7xS1alksrsvK8Ngvw0yxJ0k4B+5/8M3UFg00chPC8ZtOaxhkh4tEnKl3pz48hixzuPKbDLZZt0eefUN+JW4OOHA2nhQz2BfGUxsvfXEEiemkPlvJieGgWxPSlgMkHUkkLOHJZuDXY1xakM3f3chCcLfO57lI5a9ltD1Y9DkuAj9ZrWSYyDSyuzvrVeOKdvgjp7aTJRCEecfX7VBjUY6pxoif5HrxPvhA+zYXu7uxK4uz8kV/yItjMT9ZFnZO9uU6A3UO8xuNlF6qBpAD8ajDM4k4QQoWhqQI91uE1sNwPv/wRaukHavCfcWfwLOY4OOEc5GxAQUJk7pvTaLCR/9zuhw910nyPCrLosx+SsOSzfK1Nt/z1w20T78DvF7TK8BlSWCvYNyXDN8F4b7Q5XGUVJP+5UK/GWz9qqw08pSnv6dfk7BYxvdQSKkSCFwDGzFFIFjnzaZsdWF04+gwPRcoP1r8EcLGV+xFGP8CcZAx9QxVaO6TEw0UZtkXkiQjG2lpIp45uO5WiCIFjDtSxNqx5Bh+77hiwvHbUoHXOpuJ57VRP9zBHXPl0oE5Ux9GuhVY4J/vlqRssxVt9WuN/ist0ugz7hI+bKavM0DPYzXnE/UsgnsbymkGfiwx9Gz2M38w6A/drctB+jHa5hro50/d7MNdv869j9eqTQc6sSOsfM7aG4ts7JW6sfjoSySt3JSzTY2b6Mom6XXT38i9TERx/0YbA7iMHEUE0Z9HFDvo/F6717PbmLza798RlHc58Mw+iXr6i03/q2X3Sdpwic/BmD7jw+AFMKcxGGuQYFjxgFYcG70ddJIF9fjjkb2UKbhczxtXnBy+rrncwrbc13+naHaTLQ+33D5q4ujBK04tc9fEuPODjlAmv/Ykj3cB3O6vIS9d1rtMjkM6dgt6JQl1lfA8ojJbt0vQ8gHy8efchPVPAOGyj5M8NaIBWCqWYeXSjaVQBA0sigEpQjSrJya503plOdYnYbzrbvQWp/PLib7jXISMvWipgNgOKqCbgenC1brg12jNkwBUfwdwZ7+ODhnvF8Z35C0s+7Zmw6+VcZ43RfE2AeulJn59OeK3CqaOqmlbE7Lr82ryFIlBJd/omYDJ2RAKH1sdF/6bSzZA+LCsVlxOllCY/aPLj4RJe1Qy2ud1weEMYsPAfl0fzAxwyzlQxCeL+K0+Y2DqZMTnAQsUVrN9DF/hj4fN+gyMz2N816hshQWrgNVa3axFLpIG/ST2RJOH9cMqzaIP4dSzaWMLoOxdSKO4zlFVZmlrCuDCb9VABwLsFtf9KGPRo6AniaZcovqysYDNr94ObYFdhTxB1ckL1qBbWQZhSwQ9pwBlZxaYLRk8+gGVpHazLOgBe14zci3WmjsTSWUgOvoEFO8gyyUXYfUwxVRsbSBQ7Ux+zw+SAeyH1EBnn0crz1GV4RWIANg1pBeHQc76DRc6DTFv9hI+xpKNooE+nVF3oN8WP3ANZ0UXNLtBuLDdBglO6od4AErUuXR5Srjb/LxDFTg2S3vtfuLVAhSS0n/vDqa3UGiqzn4TYvb2x9j/6/ef7oeGWmCarswPlLe1PzUTTXvF9T5axUa8C9Y22gycpEuNjIzW3SZGdPO9d3xukl+g+x0XrFhZtV11MaiuzPeeSTI40kf5JZQPOXbIf70owYRAfhZuTj0DOKV63qTozc53Oz6daqi9EcQx6yubDN1K4kX3uCtSiOqj+fkaqZm6RH1EF1kDzKBNCNrh3nlO6We12zHhEywQhIqppoNUSNTvcWk4sP+2Yl0tYTSNHLBu6CILeUntx/SVIGV1FSEp9EyFFyRt7ESO47AG46OFXn8EOKqPkkpVC59GL0c36zuMVh+UFOlmrecYAkoY8bsKmQtAttZUtYT+uGHEcKEtv3aoR/h5UMQni/itPmNg6mTE5wELFFazfQxf4Y+HzfoMjM9jfNCPX8iwmNhfTaoTBH7H/RSiNZ8Mg5wksyHoiGuj8J5IEu1k/cgUIYI8xGQNX3I2+1rjKIQUqtQ/Q2rS0i/GxjzH/wLeZeXNqYnfpS30gMXoVE+2+XUHkdYghL9MZVF/ygUJ65BmBAfVU5OSF+BWjLWnWzLaCBiFpszV5gUCo1DEtjjeROGbY+pAa37uVAz2XB5CXtmRPktJorWTUWTInsXirAl/t39vdEAKr3L/Iq4BqTCX1LwEdRrmzqQgiVPo+WtRjvg4/SVQRq0QXfIkBIa1vYWh/pZcbqYnJ37P8OTKCVDEJ4v4rT5jYOpkxOcBCxRWs30MX+GPh836DIzPY3zUz1VJtXseRyI+qNBRW10W6HsM6yUCfDcGv/yLoh9+wTFtHY+hmsO0L8c1iSfU1HlBr2G8FXypKEDyDe/UbaF9DGlQYMSPDsJ0lnQ8ZwCJOBMMMXjW4FM0UmRcIPZCys3FM3AHicGwELvXWMaL93q7OIGTyn0vFTdYSWMQyRsCQnNmDYTDDWIejgQmkKHoTQ340326U0Mwp3PFxja7lnHHWYNg13qX9AlVqFsL6By9uVuBhPfwyWECfsKTdwlOnn3zNRBqdsAkwTJUYxJSgf3xpoAATBjDVN33+R+uydKy6WXmlUr6GTqoMVHUdQjWjy3F+jhn19c1KHqtvVmo5kxpsnxedBvYZqqYbJbIhBCPgn1JC4wP2L2cZ/l4iJ0RiHzoqE5Bho9z7+rLdQLDs7r9zKhRZfP5Sr8H9rRlj91TZ9KnbGZ/E+cJ0Ild86mRsksZwNtCfuPT+s6v3rSdiyooiEKDqYs2CFYF+WU1x6EGCIVFOKC3YrWJf/f65VgmGKU0c1Bx5/dTiYmklZRhwrL9vE+lv5lXxNmnmRIXLcJ9kGBB0jS/HU80zlZUnVdnKlVmXQt4nXNRrYKCop60a0eIdyVCEQiGDE5HTWvMh1YcA4C0MictvXgCOW86slvm1tIWWDx8PhSbqqxezuZ+c87+IsicoeXyaDAY9Iq49YWoyLZagDeByCmUWQTM2JuCRqmQ2N7EJ33thHmRZi8OBHgOZowOEYULx3VWcgBhV10DEZQwn5q+HQMVgQUcBl2l9hcVk2UoKJt7UxD+2u88l5zND08XJCTt2bKyT42A5eJqWYYfV/fDg8oiPIlCE3wsLA58xQV1Ywb5qcio+C3GdHFbMVcjZSY61JiApofrNOrsRP1CXJTPtXcHnkZxJylbOJBTCnGxUUGYyi+WTQPqNYtQWqHzjvTq17d7P+5KS4AJHsqdYFbv4ghlW5YD+izdWnL2SUW2SAm+xTcWQQzJ4Eq51AlzbQwLeUVsUO6KyPOZZY4CyRwZNy8nLr2aHIebknjLwdJrxWOaBz0tGdnVHsIZhwqp8niO4Ee0W6hQPu2vK4wAVfnoy/LIXYdBaqw+RW8jye8fCW8g5PKfNVBSiDIyuPZvH5sqc9/YV4JC9nKxhpcyqtp3cVFfmWgJzwuvDGWP0GXM2ZWntL/nSwxKaHfRiDDyea34XqHjCqXaSI5lXfMSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV+2RqYx8Iy52oc7dKqkTnpV737lFi7LdmugTBYIBCZK6DX5eTRk5fd/4/n0tzhWQTVIcP4/nauEZ/vEl15kLikyTGyhDpkuwHn4rOSey4F5VVyL8ZA1qNMwucqVgPhqo60LtEpRZ8wCXmsua+G73YSmXXoAdKOwZWQ/lOqKSM1yEB3jtU310ZVa610cOBJCvzUBPtF0jW47SX7VXI5WIQCteuaonRvvKGy5oLXjKQzBazkbwmiWN71K2iTPMvsUVtzBSHmiBA20xKKkdRUi16BeBm+qCTxfpS9EQj02FhV+lTrMYVpQjq3VCrrO9BEqFvb1eiJlGUdzLftnglG4SHoETNqz2GwVXLivlijPGsm/EXdhSolMf0BTX3EqZQPqoyObOl++zurpEKqlMRtcJCfyI+fru+9nEX/Vd5WGoT+smBVDtiCet1wbc8jyV8HNjwRTGePB4+zj+VanWWnwhDHFKdEbhJ1OFaHuBHiY3nhrOF/ULfJBXd0Pk3In8piYKKqG36pwQNI3rcbZwXugw9zv+o3I6+e6T+1x8Ak+ja3XDKddXlTZcoCq3st7qOgobBti/35VqK1Fd/C2fDsmMhEk/soNSgmQQLULsauzKWfwWgEsB9wtMy7b4V+d723Q8sXY7V0Js4EzJy/sgmVc1hB3yYsdrS8A/BXTrWuoRXFHzIlHqBAMX8gBIPPIqGZtnmWd0pQvIZq728AsLE6ouEjqMSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV+vBwDtYl63lIqs4idADQtkngeeuzdoo8N9TMyn/4CX1Po03QLcynNHT88j53lQrKFsh0YHaTKVl+T9GR4Rte9v+ImjvcQRWpax6wEOvZuXpG/qLevY8r8W7rCmRH+PhQh0llTQ84ER1cZpMlU5mYqdnBk4DXT75wKFrXlwPtCs2fzufabozVcp3fQOS5w4J8tj0ptti5bBXiLgcmHe71ktK3D/JTMUO8zXd/YpI/Xrg0ypC2m2ulVkpHFGXdUZoD/vbT6ZMbASKAvR+5uRo2Z0Pg299k785AAcQdicv13897ts/5KSbGZOarld7femGBY4pw643zYbM3DO2KG52YRO+Ll3p1i2FtAisrtkO+EntddLjQnheMXoljALO0fIjy83AmjoWEknLe+nOjw6q87etViWL7mPt+n8GjFWmWiCMX+ZxQ8Wn1auWe7a+o9hARC9ABWJZb6dGoTN6TLyqy2hBZWJX/+mgWgYNXFysj6OIDosepBRznukWXQ9QkAPR+oEbDCEsfLPmurL4uuu1l4DhjbGVX/F80ynWHPH5OetOzumvValFKsxAdkYWXkawomr4MGJyYvG51l3H2nUtXOv7NvwdRKHrM3Y++CjwAik5lFFDfFAtTkadJOwZBPJ4gW4ATAi4QaHmccUO1pdVT49oTFYLnFYoE/VNMPJ77+c0SaDYI3AWttlO1F5FdBkP6jf5iKehqngFAvunXnxvjf3SazxMycYgiA2nBnPMge2wQ14+uGyrjcOUrCTPbddj+rvL0jJuPmk4gZ1o0fS0zYz92v65359aRO/nG8KznIWaLp2+57n8ccr02tF3/M2jHntfKy+ABtOIUIrMDMQUOSsMSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV+rpP94H+fBTOK7KH3HPG5z4DSKrGonMZnvUeI3ppjTFKU2ER3OmNCZfSs1jksxgqGIOpT/Qgd2xLZWfMzYzQNCpzJvkGhXUbJ8bsOuRc7YVYGxJomRK+ooij0G7RTO5jMhXJhNgRcI+nsq/9fbaWbF3znnqSTId2+FBubcuCWXfkUFDP72gMf7IPfz9F5Q1M40QV3Ff2x+FUkxv+oT2aQLgtkkTprQ3qcQ/RQYn0dpyqFGWu2PMZTQpdimeLpkQsDnwRHiS3xsfB6+jlWCX37EcGSqT/I21TqjupUhsZaiKWQgtQ61jf9ls2rqUX/gu01Gt8QOcwj4zo2LDUawWp0ZlmkP5HLKillyvjwg14kjy7ulJTVQSCG8OITGP277g50Is8F4MNpgIgzYVc0DxOwfGnKVfBH2vT4CmQmqBzgnTtDcfz7TwpEImzm+Zp/NUh0Cl4Z8QBdOi/TcqxvnOru78HHxsFQs2asLM1pgQGSyE6n/6dvFJyN/hCZqkYrcMNbtKzfZ03IUtLnRmibgmZm7QfNyzaPAOmo/1VLNg9KXNMM+pjkOrQ7OC2+AocH8/9Oe+jQ+oO092cMMPYmydnny68KH1CQeXfmPWSBL7iwxmiFQ9lDx9jRobu4AF2Isrz5esnpXUKM9WTopbrSiqQEu5JQhfR/DiuIKDbjHiL8dzblZMSbljSbaOlycKcU7hgmfNJRpOUCovxf4CnTcnen82P8f6s/TjyFm05YxPe9M2RUf0pp7nw2M64JPvzvSm6jmBDB9V+7Oh38JRR4Jc/dqyDRNE7o77ws8O/TUYg4hPs5ragHXZsB8wEiy8X9/EVNPpE5nZPOlvvu/fY4bIt1dKdRuunb2E1USK2G5qnk+aYTLJnuams7Nkg/7yqUtbcpknyzL751WHJclxChim7g3Ej2SIbb+cllgt7wVKnCooHjSyd2TY1J84MSoXLpxnIIGrryepxBhvPozSMGHd4MNObElcOMfi9rGiQi40XRqvujz+hw6dxRAr8G3y+sjYpEqdsZn8T5wnQiV3zqZGySxnA20J+49P6zq/etJ2LKiiFvr3XiCt5ZXbg1wCHjoFLQ2OaUonX/CZuBi1Y152qns7daOz0qApFteMYgIYUscC9atNsaD+3M4a8q48+oT1rvNcFB/1FPPgFmQpwiMAeIwKqcCC1G2RaTqzGe1Vkl6P8Ik2V+yRhFytl7bPbucfs+18/TXxLvn5tYpv8MdsuLCfgy46s1Dw2r5nhje3yv9hwY0PZIEsSrelaBK4ImFTUI2y88h/WEVjrfI64htY0tz91AIETAfBG/t+TpRKrDATSGES7l6YE1qTIBzGp55DV44tED+0Cqbqg6d41DtCN14xbmcxh/dUsiDnpqeH2A7WVZKZfD3KlE4NmYiWQVmMUkA0gzS50cRiRbaatdKD85SwIC0F6KZb0lyZTUpnmdKFlzIkptqhBLn8YxGhHh8aGWOCnncqAp7eJ4gV4Sj5Yz5MSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV9SpSXk9jI3vw/DQ/EXqnIygUw+gOntVaTumvsFIEsFBrAs4bOUb2bYwvuQHQxQ0JeaDden2ZtmxGqU+GBDJmfIFje3WIrvvtLA56P+YzffPz9RZ+7+wa5ycWjGPuHi4rdCX419FguNTubjoq2TT2AeqGz0E0crEhPw1RuaxZM7kWak/7/PnglvnwVQ+p/bJj0LLJuH9rzfKa+yGE/iTmKF2Jv9eGen2480zZI75FpulNM7KhlEi0zYsjZrQdenDuFNbEV+fKldNX2VNWmJff1HuPlPbxv91TqqZqunEk3coqKukx7Hm+xCzpy75c/YsbzRG8C/VgVbEzYJTfTjTAOrj9ja3a0qp32QOu3Qji+8ROADRhbKZKJb7k+qzEp2ukEr6/sm4ScHl8b6ZBHwhBW4o616Rqa8h1KiCrzmsB39htA7iN2L9jsDCbjkzfqHMgmQcq/VcmyykyQakC+cWMsjXC4dmernfC7Qe5UdHBaB1gCmR3krZoDENTU5XPmdVDk/v05JWeb0rdi/aRznH04a7cbQZ679SW5r9vgj9v2JT7zJ08OlO/Rlhv1folSEWQjkMHq40B3Lcxpto/xAVMSOMSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV+A75ABTe5MrVn3htr9lnS5OZrSCWr9qbZzBpA5EjVAb7EPNagRhDI12RXPRNst7UOOJCgo4iGNsWcYSWMs7sM2qRauRMhqrVxaWgvfZ+seO6H68EpzTTh42bOzljpQTaKibCUW9elTFEIs7IRCE1Uv53/hXkuCGNXouzc1S+RWw6+HM0x32cLdZOPDfRNkNwSDhkRU6pdAnJQcBcnq0yuN+7GB/TZxkSX7AHqk0JcwmCxkVAM+O9oiBXde24+2dR2mGe6dT0N4KZCn3+ImvuJJf/MQD5pBKIIuVP+kha556IRL/SMyXVU4B2K7/ap7OiM4fKOlLVTpBjBF//y8JrDVCeUXWURlW3jAF93wLV2PtmZo7tzCCkunSvSlMKCSiventGfP4nmUQyhr8MlraygJbEXOYND4DEZaFBsXdJTDpAnXqZegz0eDDD5P6V1waqvM3DwlXT3Nz+Yh5kHVwE8UKnbGZ/E+cJ0Ild86mRsksZwNtCfuPT+s6v3rSdiyoogzbjqVEs6+RAuunozqR+bMQ/CwLrg9FMmJwF7i6WxQBmUQatg2s0eBpQ8zWAh5NNiKAdXpMFTMv2WBsbPiMYCTob5dHo80iGQe5SWdgzQFutonSUdxkyM7BrXZ4BMnZVpsi5Kbcgp2HnvacinjaPf1/Czx0ShYclmB5Uq15KWPoPaJa75i1aiwAGp8Hmf29u9H3S73Ch6IPbuseQNDnsuK4uok7qi5HAXT9fUSO+udUh2a1Z0+TbWBbmcLBvI4lCNC8MZ+MQN6eWqsccWuNB6JJXE0dbUaJ4AKA7UaJuCN8qyC4LMz9BPbzipWqR4FTYDTwyz6GAYe82JcoT9S32pkSaeVEwoxYefl79z/ODJJcHAZo3+itadgcfAOLocNCNbvBV0ORg331T8Vj/3pS6/jAU/z771kw/pLyPPX2M2m3NnDxJweUA5AcAc2GEO7lSlVkCyXdGvmBy6Wg5bg2CQvnP/utSbGzu3gzmae4k22WhU+EcDZdiHocjTcsqMQvw4Cls3ME/P49ytuf1y7LUONAUnEKN/9HREa2v/9c14oEHZHiDXLhiFTNFyrd0zeJOVWGqraMZDkEWoTs/0nvGflQtKf5UBIhd/+2/pQCumH0a6R0eVCySPCK2eV3WuQ9QFicn1vUwCTF4dLTRWQ/VL18VF2QoH7Xu8nj3JiPzfor1TuiblEOBXfRxXkLVb+WSSYa3tYGmOyUxUgVJWgXvv2bw7JZ4b+7VneFaO54Qhbmx7DX3oKMw8+e1QnfbDBuTXxD4c7ex6D3ucaGqvZTuF8Jgrl00iWcq+fgngF0CvF0/9Y/TVbCymj8lnVmj16YrrscDFIvKNwLlIOWtJjbuaOQHviITzKpJDHJo2emhmxrZDMkxuWaMbvN7f3cnf5vGnqlBamSv4Go56p6M8WIUfZRsneAX2DGNzuzPW4BX/cSWwQgr1FfVdoT8A2874KVxssoNe8EvydEqhiR7s1HcUU8OduRZnDCWwkeRH8yDPhdxQsYLKYHcnmDaVDJy5hVuvTOWjjjokfZ2N07qNHM5Kb1QNf/KHFolsFXNq3tI/T8el6ATwfoiXyZnQkKDXcrYY0mdavrAORR0F81i1TmJPLC3AXAjLPBQsxiMnICHlvhHJm8oOqu5YuDnH2bVW6NwhtGYyHsNPfSOOXHrrEL5ctefLFJxWbHupM7+l7PR4w515hecnDoHu4sISlLMB5volls2c9QvyaaQD3Q0r4VjPANM2311G9Go7xNnkTZj0JGjY85wyqcqtfl5HBBOtOvdVwBq0ydF5ygZ8C4IrbXd2htydr4rtckOyxjHKqjWvAvpu8WSEB3kjAY5UTNOZI4rt4angM6opH8JtV2yq9x6CqE3LX25hpXj+8ZUgtcEmfBHUFGYjN2l6YE/4X0Co1X7GiWlT0mn33hChpzfMa6+8jNmMt4bRN7qGYhHCJTMp3CkyXu/viF6pfRRskYGIUZ5IUeBUe1OY95KGsGEdX3uRJNKe6aXHlcsRLj5M1SwYuK4xGUbJ1POD00Wb1NJ6dkqSVOW8Lv39LEyrUe9gO5J4e3pxj3twu12d4pKMCfby5K5Lo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I303lXiTF55bg9HzMqERI3cQPjC1zoZN0O48F9q6Ox93H3phs/fOunNxGf0IeNpynqM1A+vG6h3WKrJ5KNfZHH+FMXlGBeZ1KiuV72BVkYrmoX3PDuLx7lLz9HkmSZrPx+Uh4aiycuDGvSIJWuvYlxWjbRuq4cJK13AXwtKdcItHYGVJ1/B4+gzK0xfW20IFsq1SrW/grfwgh0wiFKjQPS9VndIET/jded8Cte0p0dudbRFAt7FPRjhm+u20AmGe2Cuv4pMCTu+2bc1NLzkMmzlLdJ5YDK125aupXhFukoF5LI8/98XpVqP6J9Oyf8gOYpH3k8yQDV5Fm5fzd5eTgpScbJUMQni/itPmNg6mTE5wELFFazfQxf4Y+HzfoMjM9jfNRcBv7Nj5vrZpokUC9sAlJ+MRCfI0NJrQ+1OqsGzT/k3rom8LlqP/oD5IFi9kjrbrnoXOIUxpovqusfPWyOGpDi2+Bn1WLUtYy1aIgxjuuiG3glckUo2bEmQgexssT/LyZdRFpZXojWLemkkl3fvHwm08jUat/iwSpyHTaRTxMYl+yUTEsmqRhghvcCdHrNkWkjSOS2T1qBIbRxB0q0xuLOfqLf84bYAuIUhqx1oeAIN9Bp87N1L6HoJLOBmMWcLloWSWEyg/K3jPLvY5Q9ITvlP5YpgIdbs+V3ZBIAWjhYQOvyovkZ8/0/HyP0Tp5tqil7VcVzZML0CTUA9WHT+1WRMUjbGZbsXqC3aTTg7PMOJ/yoICZwb21u6Ck36/Ly0YyHtaABKMSeLW7UNTwIOHUADsFW8CYwclPMJXSgyIPSaBfLtakRdhwzx/iWxVS5QS1f/5dHrsuXu1P2NdJLd3/jpiEJOJC2kHFeSx3sxqzXxCPRuDvyIHj++ooihygPMHTjLyEPXMPRdJyCbf2psRxciSwnQY8Dhin1ZLZioK9gpcRCtjJfCUqMdUXPXDVTvEbwi9F+BAq8PHWaRalwXgAioO3HgA5HffKT3BpSvLm285I5lt+AmGtUZ00XEGV0ay1k83TnwDhBTktj/QI4OOP5jZhUWBy/eQwhkviGOtzRR4OSxqDSyyCa4s6gUW1mkHw7aMjglOpKPQF8R2pMEYtXj5Xz8zVUCz1i5uL+ZIYp8BbZTBJbJyriOonVzEpvFJSo/ZpTIdmqZTslUM+O8m4Lbkb2DjfjbEQmcOi1yfzo8qdsZn8T5wnQiV3zqZGySxnA20J+49P6zq/etJ2LKiiOjQgo/biwLlAmWn+0wKOTpKQWVauM0MNXCqwNg9kPWVNsWu8ZypIgrU/vHA9KjVPIZHNTzN3ron9DsX0/Tu63bmN2OZMhfKc6F0bGElMmfmVIrbUUHICIBA1S+ZXgOay7c3BwQCFU16rpznf6j4KzLfHuLkucH4JHTwaMF4IZHvj1kyorisbjVBTHVZk8scFG+pwD5Ti3Qy830IeQCkOS0D6BMKcO8NrcvWPgC5KJ+jSMqeWe58foVC4gU0uR0HRx6roF04jXDk9nStMrPgjZ6ki+CzM6DsF9Xdmihmn3pS6dDimKCYv4fWj541tGecQb6Urlp/nh2gYKokaw5+R5S2tqHyXaBb17Hz8T8O+I4mfQCs67NI5bsFGkA9kNM4XEOfc5shbji68OozofkoUMnies+cwQGEeCuriYsx9T+UEHWLEkK4DS67jvjWh+szBVE06NFAPKhwSxC3w7oLSP5kVWttq/smQhku+hWcYpL75p3mExnwyJ3ZO7Sgfnev6E9nNk6+AzNq1WLMmVqzYnQDPePWXlYTVvqagHf0K6NAPyBQThsVfLwn3lfumoo4UfaerOVl0rxCm4LAPSVcKiQTP9p/NksNlcz1q+arbx3YuaCcNyq7FCZWW1biDEmKQrMH+lINWadlQ2QYvwpldpxyR3si5KxeApnAuJRyR/+S/UhgAY/EHlZl62XvrsdFQwyYZolIAi+kExebPlZqo//A3z8UZUTJgW1H5C7eR47ajOtgCxRQD+QH5WF4aHMxqGl1gY+PtPxZTSG8kmI4QS+mpcMiW6XXo48/i/8+bC02hyVDPs485Hj50Psvn1iiPZW4nh10fwAv8OU2wgEfRbBZP0GZAuX/M7U7wgxC6YWLXZga78mEJpSmB8lJMdsg/7mwDEuD3NKx2tAenVAUwX7dtYaiWQnO0PkBOXwZKfz7SDGlIpD3hOGrDttpW8455cY/i14BN655ctBkXKfYwKn+r+Wj/CchpmHDnHJfioTbidO4ensDv0f2Zl124DvShNM5bGtqtoZJRkckVMH3K5f2iMfrazJ55p+j3nNvtaiC79Qiqrjy9PnR/c6ZRQGp5+1wP80bSSLMn3N2CsOVCNdGg8jwokP4pE56RxvKcBd9XRBC6ys+Ndjccqb54is7pU1rXxIvK4U+QFp+UZji9AM21QO4dIxz/9AFQIVm4c3oMe1RS80W1D17ULYuUVmtLRf6KFglwuoWpKzrpkSDAQcqzcISYIKRAFSgkUPiWQuQZGlV/oOeKCAvAVcYoiHhdVfB/18Hn1gMMtGeNzGfAgnqViLfY7WcCn2fnVT8FbXK0HdOpW1PJihdm4QVfsgO1dnFMRY4wRLBX8rybkZZR4i1oAAm2PMcF5ip8bQIMfHBpqDPDGbSQimv3XcPhIRnuabLGy+sPV/hr5RQxhI+QEg8CkF09W/uHtdlTFrIMgcNh+atkercVbuE2FkNGSwVU/x6pXLLN57EleMHFpn7Dn7PVF3UL9cOAdKo1cX5GfWhPpYgJLFdO32b21fnYA1ZJhorHjp+iv9w1ytamE29701lUcRDrq4TWi/d8ln/Z3PBmwl4BmdYEiDzmJQtY5+jxtbfHn3CCN36fiuGXrxcgrDEQy3L1AmkRLl9aAMSHe1Ei0MwlQAMlWMrGZBAqXrap043S+rxiQodyqTsY/OAIASTKDl/LrDTHYrMCPghlOZWDIDQgjs2J/RXGytNT+b9mw184mAcRSWDkARKMq6HStxNI2d0qiQ91ZnLgN6IiA+nMQltwHmGA6tdwif5PM6UM/Cfo9MJ4/s3pg+oVwndGlkmotJEPDsQpZIBYmMFuuf2BGhHmr9NH+JTEE09MsgvFkKuoCoXWvaqZ8UPQSPD3aKfiDoyyMT/8P9AJpFGJmRZsuK5oOzEJbRD9uAThFUbtVF2Nc9Ag/+nLqtWUOegM0DKTn+hx9i/DBgkHUfRa4DPJGgfOshYT0HduXEwf5Ly3qj2Sl78Uecq31GkRcORgWhrLBO4y/SGHSFlIKar5mWF9PRCYLiZmBC2CtM84H0/isUoAU3fekTW8eIVH2pr+5CXaSImh4mnHPUittufmmBpjiia+iDMLy+1btlYCa5vSPkq/lyOyRvx3j0h4AWAKgPtU/WLkwO2GWvE7eatNCTOm2mIWghElWeVu0YtSadPLtLfgSAJfUfre7+gYzd5Kg8FATadtz2WHWNvLShep2fzn2QERfdMJW9xWKmzW9nZVqNny6TrYtQFTVvyCv4oDdvQRM//06eeXMB8smU09dtiRl+wtr3pB/K7RfbPHh1pbD2fC76EMTWX8Mab4TwFPrfQLMW7+iElZ/r/7penuLgjtXU2DBhnIRW3jjKTF3oqyeRox2pvLVP/7Z+5Rdzzb+FnsgzrmPQob9ye83A6b6VE8Y+cGLWnmVKLtwyqf89/541GWRAvAFJf52JDddKGIrR212qMC16Ze7GXpBj9I02qMPzARDJgCbnbovgvAAY5fhnwftRs/qhG+poHJmt/dx/KII+CBkMEHhvGQjIYySu10s5EYvkh58Ljh9bz6q6cxydBZAZngDV/7r/8RApZfFjDySNK3NLek2tmQcdBkE++SWcVLLcq74eTztXI7QPBImkzGsCWlU5B6ftJVetX1IS12yszqwvgDIFTgwr7ltawVL9QV4n7+loN+6jETWobX/xndpM/ouRG6kXzMzXK68yY4fFS/uirakyYR4NpBTFoNE1bVwVkYDcVR/mPjiNMtss/h9twGOEBasBjcubrS1v/R5Q0bOskpCHtsPT/7PfgN1mqheul2N5oMIzgy8A+TfhepXnoZzo/ZL4k+U4l+SyGWbhgV5Hb81aU5YHsgmrcJ7leA7olf507qUAnQcTbxB/RdaVkcSte1Gb328PdtLYOrJl/PZ9O4OJUSOLUfB36ydz61pwIIhacQz5aJPvFVM3EzjFql9Mlr9LzKExppILtDp3IeM7QBW02iyvQjHw6qJizOyKwpSQBw9KlkuEHerY7PtWHrYMvKz73PE3sF7AqdsZn8T5wnQiV3zqZGySxnA20J+49P6zq/etJ2LKiiEbtXCew++OTJa2oVEgpvm0A4iLkRzzEH8ylv1akEnAbAq1pQ/tTyeYM2/J8fbfBjm2VfVpqWs9tk0G5NC+a9mSwqtGk2KFigj/lQp8+YH2+4YtHMRrZcND2Bz6VL+2vzDynpXleK3Z0GUaEUHukDS9HfX+9OxPuPDipXC+XtD4JvVUZZtwEAT5W6s0xMOyQAzAwzIoO96hwWYLry6tN/2hmX1EhMz3/MTzSoJnchjH9ShpGOF5T6d44yG/NnXhzSdYYResiuunlat54k8HILzxSGfNcGcOtoZRxAh3KJFtJakeCQHIRJleDkmWlrnpvBBCgm8IARziz//kkiP63qhaqgZebdavhjtbYDyTQOOhvR7//88WDnvsFFXyNoeQUdZvQpkWuFUvP/2YlGFELcwzGSvu+G9WVBCukurhbblDc5AHzcvYIYKa7jdEAYfEFli3jxB0QaLiUUh2QmyKxMKTYLgRM2iqotSiOSXw8biDT8FMIzWv4q5ShwD7PgInpidd3tiwriNRWK5Ez1EM6WFe8GVoJXBbjR+hNPybFcoYu5p+e66FkVcyMnaLEq4tFgF4q3yzcJkOUsibfxRnbivv1XyeDSHLA1bMKk+H2Ee+CkBKJMVUclS5DVspVTRMSGMyOvEnn/+uAuF6EJhLRNHY7TY63Mf3ADsqcPUuHy8wiG823uDSD6D5pIdL77XeHPotXWNo8y84RD8+xo/rpmJfL0SGSF4plg4s+tghUDuVdmVSb8hwnvSonfaFc0im4rsiSYgGWJUD8ntJMhuWzV3kcY8olmq2n4xBH+QfH31lDSSa9Jom1UTwpnS4iJKGgix1g+E9mKw1siziuILQD6W250yGZ7bfVXMJ6k+Bs2JMv04cJ3/UGis73OI/ZvX6JOEu5CkmxZFIprNNnOReLJOdtll3EATMPYNDqE+338FSdJMcVwVfRCMvgHZeQ1RqDeyWIlbCUc+MvOfe72xDYnwclSI50Ot8nEs0lIejv+T+7cJkizyh4FsIAm3yVvL5v0B2wHezSVeuWGTkpCNkAO6GyseuztM8RclMX74XwkfSjDyaBnIFWvT+3+dMFJVRg9F34sNpEDMfL87FQoyZvNtfTRNebRRWwstsb++GFN+aQLhO2bBuEhcOlej/xdTIUd+l0FlP1sGMUi/8SlkiWIwrt39gHuI73wZusbFztEm/Ut5OGjHPhJE2cXBScZVFzIhcxjeTyIrxvALCToc1aHzgzmF0mZhIjabSJE9JcbViR+felDtW8b6AJVGTYt5DBjE9RG+bMy44t3LVoJwt2brbySMYL7EPWi7ZVLBW6zzo2MSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV9UdP0tkc3jzBoFSr/FWY7kA/1FiyC83NRRSq9oGkWRVfUKxs7sGZxTUExT3IytBbhj1ljMLZsALXcO/9I2OotECzx2PRkg3wZmh857UnHs+J4sp+ZEXuFRqjPGNbsVfY0IWwBz9JfEgfZKLCTcn4TgRnMEsU2HlohyV2OKz72wQHaHuX84itxvgEbWzECB38dIxcsbpDFofFZAMV2h7BOrj7LNk9KIRmQKbmpiP+VK9ADimx1tvbsgZz2GqRXAeU/Vsg2EedWV2HkMWakrhNL51XEuH97z5MY5byqagYrmJz51LlzEx8EFUT2KL/Se1QHYvNek+mGbUd8sLJTsJEaGNzA/yutCB8L4tpVRsTqr30QBnp8cUO4bKVt3PXFJaJRtizr6R8CXkafIT53+r+xXY26DYgmPg6h0LtLF17gRJ/gWN4ftNp569/af+7rbFR+DAGYyEodx3xYhjqQxvps29xP1J6EYLB6TRb83rT+pZECthlUifeWPODsSrBgiDs3VKcALWAIKE9FeFGSSGifAaBXCO2sRmRzPVQbQfLMopqn4w/7wAauY7EFZ+YNrKU2voOEh/xUIeBUIgWUHx222clp+CcrHaXYgndSp0fHePqP3FYp/ryj/bqdl9AYXAXgk7WG5E0JPGny5lug2ju2GDYFMBIP/Oy7GbLIhNhdHtmUyzCIHLn97qIAlTcVlqafq+z1sAiVyVyFCEYmqUqM0+3zQO+qDcEXcqnOc05VPFpEAcyAiipBjaEH/27kFzwrk4NnbCj4W6PuRqZQ/6S/YtKjAmOAys9dQ2b+BqjbOyHWRzHba2Z8SM4wRPoBNH+mNWLDNLXDJ0bTps6pk6AGlc2/GwOtIZfAzqvCVxWw0VCwPy+PUCa703lO88rSPfjv78/h8oUc/ep83GYAXukLB4TCCt+UWCmNXeqGN/MkNqoL5vgUgbHqHQliPc9YoUbqee0+ladqmCrH1jWuajxhx1SnAC1gCChPRXhRkkhonwGgVwjtrEZkcz1UG0HyzKKYHnFYNzZnu7FChauU8Xy+Nv2AYw5YyBVUn07ZNvnQ9HlsjN5tgRNPb+983yL6ZRVDmgn2ptRgVY40l27XckG2aQF4jMnF1xqUInCuRlmlu3i3CpRPD9SrQt0HDs9Rp7lqwFV2TpvYWe2l3UxPOaJu8iAo1B10xXXyaeKyYMFr+fzCJD0OxpJVQ5OIMoCZLT2mrMSNJh8XJ/Lx0+2xMP/+j3HS3ERygdQrUCf2ok79YrKhW5cPKKhcBm6Kd96Ovsv025jkPuAzfggNRSECEJ8RyImroiNgZ7AyTkF06UA13VPV0dij9lSZr/STjnytLkzM7YVt666qSACjBAfk9SURqdGrUl5n2FieG24IFfr7WC217MsuYVznos8QYbIB876bY1fw58yDu2Tgn9CvH57FDC8v00RL3OpNddSy3l9zGJ/ONOC1PqI+t8+Rzx5eG0u5HuzycGFKsKIo8lAAORLs5YOVW1eXRbKI/ri5FBaoypHLCN2oF9/19kQL+4BUbwnKokFiNp3Zuo4wYDeKh8Pjk+4xpBCPao4zRRy6WgMKILA/n5FqmDL+IiIWQWaa3rLdD5Vs0LNLECs3vGC7PBLJHh9fYdEWM1ZQ2UbCiywUhPwZ+jHr2uWIGZOAEfuhnTs3loIzRjK0mvrBw/DX/EqP4+q3rMPsWRPnnD2MP1QpFQZw2RlMsiLXLVcD5g6ZZ6E9PN5LtomcwDDY+sPsBA8dYRx2W6pVVBlFulQXjE3bmuV4wFvLT0j7FvDR+YkhdSlUeSZf9SxGw4wCF0UXr6ehfJTClUqzXsBlXz6TPNHl2kHnKl4zvhJ4O77VDGJ2DwJNiUgjmiJsNnmD3y9/ZihoAVgfb1yKw63dv9cHkT0E9VaciL/oNGAaQjCd+SskAOVozwelVG5TA8RSHKNzOKKiyCFdYFGqPuoNEK502wC99olek+4VnivgbgMPEYf+Ws2YumNrJxVtZy/3ocBvEypZUA+cseisXxyDyQDQLy6aikzMFEaKp2Lm+gHWE5Sa37GqLM8QA3IoHHqhFwmm0vf6q/0h6NKm0nOwM6C6IFC75MRtFeX01niJ/QKdBXVkGd1Vt78h43l5uPEunivf5W0VRac8nz0rMTvrfdnFpkonIR7dblo7g+6dlq3y+B+8UrlEeHwCVDqj1/OmtjJAB49a6z+hYsSpdIhp5PeviSunecVtdDhS7hUcZyaUZQ89pBi/AyzgTrfozxi5v+6aaXzT9DEDlSOZU5s7TI2jTjpB4dBZaOlfpdqA+NQ+0M+tN4FOPtsvTzI0Q8//1oXnRfZob4nQeMPaMw/Rce2RfYM/I+GokUnIlqCwTQo/+xARtlwMJIM9qM76d5bzSMkFTs3PkkMAyXX5U3LJvtOofF2VlcGS+J3h2MzKCE9ZK+NSJlIYqdsZn8T5wnQiV3zqZGySxnA20J+49P6zq/etJ2LKiiOqfmFAH4iS42bRq8FCq09kY9Wq+zpMRFXznplngllDSkHzZ8twlQv366S+H+857PEdyVPvtvVd+SYxs7B1EPID6WAG541ONO8TxAzvgLPn27jm29sOvdRRQlfZyrkvEhvbdrNlNzTjU9WJcz8A9Za2SzkeVq2ZkcDW2zGmfrVcAaKTDBjEbdOGdyKiH7rQhYOTezMxWrHLowHB3XMGd7xLDuPRWCp2vP3L46Yu3mv7qBH2ZQ8IJm9V2TqHE7V5ZhHwmm8uJ06igl71+yEIXpSeWPP2pNjfZTcWhggQySV/wL5fRGJoJisci1zCSQt1njHi3Hy+oAxdn9Y5q6/Ujze341doEyJe21gwaQh6D16INsexeKHbrPgUpA5/4EhNn831z0r4wosmvkd+PTh+Bmby58zwpi6eiAIiqJ5iGA0MqlQxCeL+K0+Y2DqZMTnAQsUVrN9DF/hj4fN+gyMz2N82qdtcBwCiilRjDdzYQ0MLbPCxnfQKibjsgP0w27yGe7RBEgtFvaiAiTaWpb9X6U7w7UIWlk1iPJATrdnDegToHq/fq9S3E7dtYOwG3gjSChBjHD4fKRbDxQdd0/l/cRsQaoZwaCrP1O5SNH/kyNHKKj15sZ8tCw2YhSPCGzOfvUTZoxbnn5XBxtDJ2bllm9KuWSNisrj9U3fokIifS1VvQu/UqSsGDn5M7/RCTbvhfRRAbR2qONWjes7z5eHEbDqtqChYMqTGbNOHHcOe8maraoo2MEqXukqkfjcw7ln+s4RJqMuYvh4m54sW/PAStK1DyllnDOGY4oo2u0ELrQiMEOM0uUuyMBcfoZI4kSg2IC7dbEJXK8Jg1tQD7tJAADsd3Hsa9RWrnQBCy2iQvONROYpYlihkRB3jLvVhs1Sqn1Cp2xmfxPnCdCJXfOpkbJLGcDbQn7j0/rOr960nYsqKIrb454T8VhVQODc8RjW3GkawxjSCpIyYY2w/+wIUIDJEUKRXr9/Mc0B8dKT7tC5UEJopjXdhMpW6/4QZQpQeUOwT6oi+51SZjqWbryudSbJsF878B097VWmTSwNgcy+mwKhNttspYB7h+HBMWEARSiVyBbi62zXm0Da5u4ttPq4XNtxOovVc+A3cD+C0y6Z0u4zC/EvBbGOtzrHtTcSpWJfsbruMjIEXRK4Rzxw+FhK0etnp5VhduRE4QZL9nuUzYm3YW5LeGATZ6xwMUq3ptJZ3ujLgtbF8HO/SC08SNj337e8Sems6rW4z2FplEV42lqQ/XA+461QYfD4WxNitn8ebLh6IRInFDsKGIWd4eZPTPqKkiPiyoH2O5Jbp8zZpC5gP0qFeq2VY3guis1RxE+ChAqj/p9DSmfuWIneo0+aUBCtY7XwMMgWuWVjkK2J7lyd1h6H5ETJ1znTNx2hDBB/i0dLW7YAvZ2iG7tCqRSS8WdGtB/qnknu26u8PDHI4pKFbLk41vB8qwnnd+/TizITjDWQMXX/g1e4uld1YnX/vlfFdrymFI0tSF9mOtIcbW/yeLhBxqZKtmkDBG0fCE8jdW3LrJdL1p0Q36kZHejpLmk+UfeZb6hNyOGZMrSdPY4hMZsJ3l4/6l8rjFVsxqXVSArL02kxPyMv3M3n6P69yVkfCohgySHBP3SR7vjmIWKv4OLHzAPjUdJ3lpkNaMgVm5q64YP6mBxRrO43ZjXclJ8PhxPl3K2vLzQEMaOwwD1SnAC1gCChPRXhRkkhonwGgVwjtrEZkcz1UG0HyzKKaKWclnzcb8hIDgXWv/d6UgTv2ZCXG/CTJSTqPiEkVPi0lvrjnW7fndGDNrXWhpEbwJ1AQ2kFpUqCZ5NKDuaQRbKxjEDGMiD0CF8oXycxoJaTOPFqFSasfpbymf9+UNFid4VqHNamQjOC59ybYMLoWP/EL2QmgonOIJO3NtpLa1AeUvoTWXNG5Mj9vGVrNTv0nkJCs4ojh5GKrrDGzQGmW41wiqa3wrZ55aulIL7qPn/pqTX6maCUk9CSaQ63YosZug8SNEINbZ+mNufv2tXxowTevsjYYArptcGUfNxhQdTT2fC76EMTWX8Mab4TwFPrfQLMW7+iElZ/r/7penuLgjKtEeqhus0okB3Ii2U+1nx7xZedAL3nFMFs4qRIAmujW3atkOe6v6KEMS6qMcltxYK+r9X1hptURW3Ufr2qxgEy5pvsTRa55QWFA7pBYPQGpU8afIBGtcyWZIKkKamnhcjeqFiUMePLtGKveQVWlHixKt6Qau8Xshf+CaNlWxaeqZ73AJq4l/pTQO4/Onvpm6Ql8GPQQDdrbU/wIo2nF2JkN6xT6rP+kMOAS9tLKEFzk2HXLqC9ffgu+BUATIih28pXbfKmJh9GbUdKe6J4rvziBSIsVeZezxwxED2wY0n/5zl/uccugb8OLnEOXsRI2CM314FJty2DDuaDoJv1E//UG1id0nT1oRDc7J8mZ0RzQ7TS3Xjdbsiv6A6oNx6/101atOO4yS/oT+T9lnwyMyyO17rX0TVRu1gGGjRuFIRMlIe1EIns9hLO7FuCfIBjzT5w9w0gvuBPwuyqBq97Bh9KtxLNd6V7N6Ri62DN72cnmmR+L1dXEwuHyGEcKgI579KnbGZ/E+cJ0Ild86mRsksZwNtCfuPT+s6v3rSdiyooi7ceOwQKzrofVujw8DIg8QkMszx7fr0B1j3EVLIpxZ7R17Cn8eBIoRtC04bJQLif7SsBhEnNMOpyWIPobeaC1pFDRjQTYWFBSXjFUCVw3nE/nxuVxrtBL95I/Op9UWWORzcsXct90WOv0oWuXn8I2eMbyje6E/VKy+whb/4SX9UyoJ+KOyopJoF1s6gHlGTf9GlyraHsYmpCQAVfsrgxcp6zzPQ8uvoTe4j/l+Zq05zxx5QQu1lwbE8nO6YdV3JgVURhQU0fQbayHDjZXdAwglxfgOuzyGgGOnzLsJmYrC4FG1kih3ByEI9DIWNjNxmT8Q2fSkMF5Kgr7mS/mfmQvzFxEEBMbQg2cB8Uz6tsIlzQeGa9Qw3pbUl7fi+CjuAFeyXmOKVWKLY1Q1GVm3/3LY3xSvItPe10Ryr3mTOq4Xs+JBeRSQSmk53LnUzd9XU6izRAwIowbFI7Yf/RN4oB1JhEv9IzJdVTgHYrv9qns6Izh8o6UtVOkGMEX//LwmsNU2AipecbCaysfx808BA2uDjgZsKkHhRRh6wF4LnPBwbzy3f/j0JxAFc9kgDM9SeTV7v0EH0XgJhIM+v+/PFIOpE/kEbwLSmeNYUYULyxw0jsiMYbK8Rm1X+icpcqxYa7T6a9hHNdCzEe4XUbKcHu6+SaP1pevfFM0AVeXeAW0QQ5UMQni/itPmNg6mTE5wELFFazfQxf4Y+HzfoMjM9jfNLP567mPVo/wN5QcAa09EvNKtaNFFqjtYwy0v3GbRe7E+ldNVzl7mt7dme9x0nNPYziRJQkbTjNkjVxzcfBBN3Ms/a2dDlW3ykhlv9dTkPGDJWSKs5subpF5GM022Xa3PLDLVDNzLUWI8TCDUfWyL3EBcwimv+E9nfWUixlyq5vgQoEtUDpY9kx82jcWknAFkCCw+njMnkHHzdy7K7kjviP78zrbHXUnUhU7XcOLCLVBRcAgkHNYv8jirnPzP9bOEhOkIStoAO771ceOcKfxaicSkZ1M300gQz5V8h0ojDZJKFUX3qwl1o/xeVm+wsXAEgrz9I3wsXkafRCYNAFaz1rfNAS1SnkV0Pbc7RMempqaDRzMzaxfxZgpFtWdvCzzEsEFmDbRadmEJjxN3EvY6QQgqT3beFU+b7sIUegc3czh6kw3ddzjlUT8FTpDOt4VLPg1qLK6sxI9fT2RdBUMzsxzXPulrhKVRKNq4pR64HrU5VS4guZSgn+RzPcFMGiA3V7VB/gC6ps8YfCwXLEuUm29Z+0fPcu35Id5DjsI00QlqfugwmIpNF3PrL9V9WS8BOoefYVBIOWapIEeKYVngMrE9ohrbOI6eDOo3fLMy1lF5NpcAMvzvSmP9RA46aMYOeo/h8pRltD7ui+FiM4sRvRCpTu9OiaPKsRH2x6rakbNzKWyRM2kaiholRwe47Sg62zk4i6iPhWOB3PJblmsi5Wmm7yCFR0RHQPQ/Rb98Om37auIL18/m+8lHjNEbqcpwYXtqjIR//iv52Gz1fF5uv5/q6kSQQnkSrvS5GyAFBbIlWIH1u4AUXQtdUmUnQ6BLGqhXWt3lJJHSSjQ7S+lSR31vZcbEBEHSBpDCNwHlTa0YU9dzGf+q6ziHc4uPo5nQHr1dcIprHTjENvVX0ZBOzj7kLWDnJInXKyGlF92KbzG3LDzKDMRWDTdqnu4EGFOq8fgBMGxTa7Kujo4J1czejbFmKXEDtXfVlw8okIbLdK1ADTqBJo4vQH5H2Z3mWQ30G8ntycu9yLxg4cpvI5SA2B8HfGreW0bkzhqJU1dJeybN7TrFtVKpzAgHCgvyN3Ul0Bph57bcYcM2Vbkvj0TJsSiq/u3FOxfdLjNyv+PjTI0gQZxhMWniS1JWcseQ2353Cscm/4IvuwaBM3evLFt0mtRhdg6xPcJcLKdqayVxgzUZFEheBWmkMYOWOug+NBQM+ECtASGjYrFd1hRnvFEdBe7Kfo+U7c6TYkizLYg0oWF+RPrF7QPswWPEDlF7UGRcIBxNb7IT7yN0C8/xs1H9RsrpABk9IxAYcNpcIkI8swZhe2qMhH/+K/nYbPV8Xm6/n+rqRJBCeRKu9LkbIAUFslEDvU9JvuOZkN8hCyMqblIx41rOpUni9btjdZGZQ9St7e1GV8vIsJ9NEl87i+EM7InOdo3rIOUztdnhGSK8Kfdq8MrZaYvQcwBEv9j2sXJHJzHnm04IpU+taqcaSAEsOnecO/8TmfznQX+9/V06AYZTzFd5BTS5V5IeXt/0rfTJADpxnijvymEpg4KYybI9mS+BmTu7fYGEGL2GFstBg/H4Jq1XNJtCg8nJMYKYBwwZLBAo22KUCfIYYXytT6taxFzaIWJdH85yPGI7mqQoQLWoiDxeXTCXvFTCjUWeVLikpafnQsYUHRQHkrGIHKS8LjttUFTdRg3WtgErwKvmRxc9nwu+hDE1l/DGm+E8BT630CzFu/ohJWf6/+6Xp7i4I2FvTs4tYYIM1jaiWq+RB6BmU3fVhhPV5xG/ryxHtovegAYFJLN+11cKoN8grFyICQu2LEGMwnjA5Oli/NoiundugSSK4tcVeipHg3kHC1wzK8sRqby2lpmmOvuz05gk8heTdSgM0Bi6cf4zqwsHAAkumdyTVauLlL7yu1ep76pm4kqjs5FezdVsuRH7IstlH285ybEGMHTkTEwFIzWItIuVOlP3Q5jcCP2u8NNGw8c30NF3Kccyuoqd5Qzf6HnzNOPu+l8UDvmDDH8gD8LEgwySV262Cr71iGL+1dXyy/GV+TN10sdzbKHUTc/yM6drjseVRmpeTeItF+5wBOUonOZihpUJS1ol34gibaytMzSF4TCz+ZlW1fdA241AvkPcRCbEiDXYShyBxG+ivS22S5xmZuTpdrK1+two9kdo8hGS5KM9LIjtP+Xw0zKJhlAnj+c9jPSPue6lBLeBHBHJ/pGsQAU1DUpKGqkq/mYuYMOYC83e5ADfE8az6JHgtCsquMLgh7Z1+juokByGZhWH8qY0PhYr25Vcp8qN/JAMRrSDynIa/8Q/Nb22pEF48N4IohS5WFZiQqmE1cK7Vo586MX+VCTI43xi00nycN1/JxpL3lnPbeXUTQNvsKLE5qrpOEiXiFrhsyQEg8J1RjkwlY/vLeDzB1RD4NnnlkiuV+qtcb9d3Sj8UrWQVFwCbeSKhj5D5ioKi7m8h6Ol0Rkhv7KPVohEY5n2vTEnC7OlRoLGrs0KaJGYtDX6hKYlNAWLaChssGGdm6CsH1mL7ZE/LULggFkWnRg64BXq29VnfnpiU4MTKgzw9+Zk+zWh5mrhdNc+h8PlZ7hPlX4JEQyOIeYCEYn+vDKa9bKRyM2o56D54QRYyMZl5L3tLqxdud76PqkQLeh6ihtNPbCb0SsdqYpkPjMGeQC5rNqFyUEHvGTecul6DrMnfTHfv0do4Qeu8BJY9hAhrzOA86oiimPfzjp9tcxz3JP11f/T2SVaarVe4hz7+vPGBEQFNS0hBqYh0qOKvtGkZR/3pHHQBfsEMZLZhnTB3wtiKwmhnzqI2gT1Rs5CwpK/kREzY/e5Wo1rTUj0L0x0zjaR7UESCbL/bDeww4JyZDNDOlvbJh0jdaL9s2U8CZwmiBQGQ6YO1HbhX5axNhFzXUxIu5V1fraQz//RgQtJZ7R6hCZ3KdON19ZeW3rmVbO/3nuekniVZRyNITNgRz1BkNCLWa+PS1yJEpFQjKs16eSF0Nb8oO52Nf9HDwzbTEqCSTkF3zDuq02BaIXtDOfIhCmDBBaVWrEu3TILAWS9UY0Wxwt59pV4urN3wdo6akp96nRNNHIU3/lEBzxOKWABJ7u5bFBG/q0a4NMuXmF6rJ0PE0r7NjoqMumayeCFyEFJtm7E6U3pQAdLDYH0/euapjeh3+DpyJRImY3ivzrZLH7vFKAaPK9VKbKnhBSolz7xlQ9xakBcTcwAnz+vBYwznAAOHtA3u4fhj/JnvhD7Dfy6sHUotOwAsANu45/d/aii/v/CRf6OIxxUoqpB3katFmcn72YScCbjQTy3Mdy7al3tLWhQUlL7/tAESiMc20aYb0balZt+2q+v6qRRIZ14Zz6V+Ve6ndLln+P2S2WdL1uWJCoPpPoxYcuQhkjys93GXT6XGkdkS0ArcgfFhXGMmeQaAf13ni/03oXLctJg3SA6cuDzOj2X5Jqd6FKOW/jm0JIqf3HMvGytp1/5eVLg1gYuagnpQIvN8TbrbhEZ77tnuycsdspv3dy1LF/3iXV4fSKtgmiJfVMCD9UpwAtYAgoT0V4UZJIaJ8BoFcI7axGZHM9VBtB8syimjtfKzNvYeUL5eJiRjGCyhBBBYWhbJ6zoTz0rBJBDG2mxCuovSaekFCMhhGoHZsOZ7xVJYy6O6mzR+Xh/ADm4rdlq/t5Npad464xseAwnPOYHgI+aY8poZu7aoJUDDfHld4SsN66dKGJEDiLSUvsIeFjX3VCJeBpCcNXloJtf0BPKq0hfPoZbEA38GfqBcPocfIcOEkxFYC121rfwzFQbQpVMcpLqfhPIxdJYbVGYCRWrTMlx+rh8wiRHqGvXVxBlgoEqVrOaWSnkqDxJvtKjJjbZoJn+IEpuPxzKm+BWThoPYeFprDeZkdc0OsNsTGk5V32uNf0zDBlPTg9v7Ii4u8dlnM2nIYVO64zUsPOFlqa+G9Sso7bzKydozyIOwZktdf6t6MLje+AuBIxyQi+QY2S2MU1B6hMrQ0ELuRAf5GVmDiBq1J0BU31dGza2BAo3pB+3mXNXB5heccHw2EVrnuI6DQx9LDgMUxjmwSG3BLi5jDCrbxXLvP/cNdvTfu8Xib6IRsLBqoXQRNWzpvLppYoVCKucBTQ36leFeZzxr3zeEgbSNIBAt7PyG604vsrFki+AvPtahH8kLcwMQ1PxXWF7aoyEf/4r+dhs9Xxebr+f6upEkEJ5Eq70uRsgBQWyr5yDZlB4AfJXyQQUqLCGOE+VW6Nt/8Tzok/dBxL77OYyje37CGlGkh5cecEnoQFaU/p2IR0RzMQBaCNC8gVffWHYY3AxlDKJcjEA6/dafNHeeNp2e2D6m1EU7uGDuPwNEnF2jcFUHN//WINfEMcvd35eK664QifN7KWZTmJwi5jZgWlZG87utEaVqJddz1ABVW7qlQlkUSsgG0P07Kyu5RVytfTW/0jR1uAWL8BwT0FYy2ubeSPhV7c35kGvgludgHDo8aaECam7v3ArD0NJJRsWAsMU63A1IXZ99WM3QoaEcfmooEmRJ3Qde3GYQ4NwCLDPK/InNsx/RN16O685V2HwW287UXKZhNi/cenh2i35xp1QdnvTez5lWwrgGtbL7m3Wm3JXyEfOHBaBZ7+ET3BF+CDKmBIC+bzhM0CoEt9iHPdvEmSh8JK+IZeyFOQhHNLYfT5mvOsQFFjPKon5SSvetQM0mccrnlF7Xr/JVqyKQTFMWJf0oRO03HYWQnThPne0OhAaAeKdFpvdq4o44dbUTCaDNQzUTDauAW4IUJtvi3cBtlDPxMpv98M2lces/xhxmJhdZC93MAxjVT4GFLDS2ylLF9ZY4e1Irsueym1KTMIKFFSLSeom7iXFXYaUrbHRCauxgDFWFz1r2ZmbPAPmX6u77o+wQoO3NSnPnUY/ca8iSKEUVmgLYE3dRQnyyGS2E1ptsJan1Iz1Mm48Il3WWXgcbHLcLt0/Zu4JCNa15GYRaIQdYK21uAh2bpveMshqd72LX078hfCw2bwLRLXP7ZH2v5ypd30fMboDNg1+xL2nIoaNOvYrXSqDwquKmgQ1scey0UrV7FmOy7B7NmIC1NVW51YqVScL3xUhcPp3h3yMoCA7KwcKgs9tSBOj8yjghYMOADyZ2eIKVPQE/DbFCpAE1W/q663wPChW0IJU8c0n8yImdiVIX0/oKukkfl9OsvwQTPwKYXBHkXJPAI6wwOl/iFkz9zTs0IevmnossRqbJEbtSFiU1bojnqkzlQxCeL+K0+Y2DqZMTnAQsUVrN9DF/hj4fN+gyMz2N83XdGQLyP7XrgfkoRQaprKG12dwYfHrJentxKNU2CV0I+exHtpbUbx14/Tu0EsmIdDuMgl2TXvnn+Wc2qnlbyQ/UAyS4iupNMsdz8A1nJlCnhd7y6YPn8NOsvgHNxLUIH4PBRXj3DN0gVZuaq5O7Ob+w6aq4GJpPMuypCuei0EC1g+eS5DuoM/oMMA2Bf9DQHAEIi8r12mu7ys71MoOrSwYLG5sFITGFHoEef70uc8XVniK6ktf+TZwe4pYKCsltjJ2i68G/GqUzkSa1m3XiaC59WiFnVBq1R0RPQ2I+goG/RU9Zf0dRQ+F6YZUOlm0zjjYf16aY2k8/HAcV9l8IiK6yoNIW9q0nR4+01d3SXjjw/9gI1NlVOFM8SfQuCaYF1fUcAyIURmxAzCfwIPEL68ApGN13pfZIaCkjdje8ox6CNpQm8e7JQOgN9Ukl/H2Yc/Dzw79WvjvvwguZ/YGAHPNfcJ1Rr37jUH7ynDI2z5PLR67YrDmYya5MQBLOB3OUmdtVZZVcbhlIX6KoqqvApS88cbSY0180wTz2USifZ6V+kZR7ES3JP6d01Y3KmB+yLpRoP5Bc9FDAahjXirajHTZ/IQHfk0zwjBQvh1kgMfVq6pTVu8vOYjnYauVNQTZx/7L5M2CNQYwaaihkGHlNADyXXn//9JrGDmF9I2cSNkc0CbhPXeI7tGmIIHgjgEjyZ3j29aQtsmXZttNQFgYiHANlBYM/og+L1YXGJFj0FaEBNw/Uag/PmFQMsnaAYCXdpe6AMrx8GvmGnWYIQ+KOSQqM4M9S9KatBQdj+D0NMGjdjNnWw9CEcJJ7U2hYvDqsHBWumk9opbgGB/0/QVCW2StDbmkr4bu3Efpt0GD5YnXR/xAukfd2GKAyDaC0abRVdp/cM48cWPRvNEUOGy2liErfccl9aOFpf6COT3pKzwM8n8yvOhKGKg8aStsphroIdJ372J0BVV4e0SoLjdH0y5kcAyJVuAaqRaayzRMEOZFt/MxiSaFrE6KLf48Y3xsuB80CRoThebkfYyPplEU+UXrBcxGO76gUSg/GcM2lylzuYO7xct3VSQDB4bbchRu6PhBio0jie+IHUpz0uJhi2sPMSalpglZsEM0D98eP2FkVXrbLPStDck6dV2PksmCFV+SG26sqpl/RvXudrc2rno2kiOPx8aNYAyNSI2rsCcFXoF/7J9iZQ2f/4ZgKkN0nT0YPYrRdPnQFbfKfmq1QPUw0CWkV9dOoAIEJDdt8XNzWYlz1TDswXRECoWmL3TztaOES/0jMl1VOAdiu/2qezojOHyjpS1U6QYwRf/8vCaw1XddwZe8lVZj/em96RQ/Panv3TKcXf/GRZZ7wR4dCkTUsjeYaQp4olzA5cBGm1f7n/9QQ3dc97xJJ50ftZqGR8gQPqNDqZydFmNvYeVvdB05ioWuXJP/ibqWd+xpZK3PvjEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVfE+NDAwQf0Era4wvS7xpg71H1HMoGxrJlXdI+OfIog1mdiBqRM3DZlYAjsnm6vDW0fVxu1tRsL9IwM2sPYwRo1XoI8i9DFQmp+03HcREqpkP5EtJi2/R5fExXG7cAvPtiy+TNgjUGMGmooZBh5TQA8l15///Saxg5hfSNnEjZHNCU4pt5j/K4xRu2OsZ/z6JRBJDfXGkuNHDSRxkkdDhm1CCPPpEWCg2tfeC1KryWf3KUgRqC146spGlqAniN3rLJ0eFODu2A7VtBrzko+KovzitXAXZc3A+1oCekUb6Z3+2xobtZnnz/q5YMJIYKPMGJJT4Udaccko0bN2LPoRa8ZINeFOPgbJ4EvFmXpzg33gEesuhIsj4MRRMhzL2WV3bGzeMLZUZBLyHVcPsyqBEAg1amLzvLfTwbp5fqjm7zqQuvvH8y/91lZbK9EYyLeLMjEmedsF9WGKkmMfupYrwYExc0cSyKk3nMBgPwq7Fqfu9lIo8BE0y4lza89Bm6yzcyAkgub8rCZbS6/8u8XUS+8CfUy1PyuqtqUVBBLMAfRg165beoIFQ0s4oRE2oC/h/dS0afZWD51mJbz3Ei4Wr/a4/PM8v+ABLkp4s01+yFXxutOfBJAf/z8FPykcOJMyy2hhv/ZKO4T+RQ3WsOSJ3BnZ3hUxc931aUEGuvoKA+8EOco+0+bquEfp9uI7yzjYrgvTK1x6qZsGZZ8b4RBE0SgyONDaV5QwvgKSa9eXTikhNeCtjVtlHnwKEgyJf37rEmAJQ0VUVQqFuCSTRKiZG1pLYXX5jqvX0KMy+HC3uuqwlhe2qMhH/+K/nYbPV8Xm6/n+rqRJBCeRKu9LkbIAUFshdqxgQFvMD8NG6gQFgHGIscD8BHd/KDWbumtwJ3E5TVHRIg0tQegBHAienuOU/9XKNj94xgQ9G99Nw/v+vzQedTfDmAcn2ZE6YM0pI5eAx6IthEAof5Kz3sB9fMwfYZwWF7aoyEf/4r+dhs9Xxebr+f6upEkEJ5Eq70uRsgBQWy3pfNW+M1VX6dz/tlI9YftEeWYbPnxnoaG/rQlcppHoar9CXG33faf+bMBT3i5WPrm45gIfAem7cJz0B/QVb6OQWfiDCh48wQWpJL1a1U9un5jZUgssi1JRSimXRt9ke8kujhQBKWpV5ZXXTqgecT7XQK+iuWOlerbLhxvLgjfTfuWHxH8ikyBest86yR9pCW0pIoQ9yMf7izbdV8MKmigDLuxN7Tes/oLfp3RKjJEh21HFUbCsaxDfel9wMBJsU2lM8P4qhX5cmSayEJmTxhZbMeQC3ZaIxYOrp5L2tA1Ksoqv7txTsX3S4zcr/j40yNIEGcYTFp4ktSVnLHkNt+d88pUJbJ8DcL4xoxHvpHlFEEzy52zorPXXtnkXsrP4dcevkGgQffzaLeqeFCF63u/xUZDPNndZyaEuFyHbnhbSRJCNq/ViiJFgDDNvJ1QABBPp3NDUwATXFtjAxL2xcA7zEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVf7eMerbrX5E1yFK1Txi5AssqvdURi8LbODsykP8td3f0MMkMff76rQpFlxBTi9++93nqOltK7Pq87dJTeWeMwPl+U57rMb/GTMbV4op5P8GNjCW83+91+TQbYq/uFbIZ9L3M4T6KwxJFYHXaatefAnOsGcAqy9K3X1Bjonnv9wGH/25MVeK3GE9idBHrDJtK0XfG4atcyeOWVHI+4dxJfVTJfvYWxydDTnAv3Daf+Pax1bNIZG+mas1zvWeJHRpuc64QzmThP8yfdDnJ292jRejF/A4j8SuYCbYaaEG7ahgYNTTH4tzsb5QvH1VEjWZJKUMERwL2/LKXfwLgZsH5BXMLfbvpnn1nQuTq3cXDlsnZd2JhzLGtGNVkjTbsFyP6t3NqBLcOVRnhcHS7wUhBYTM8FL9wNAk9NAzjJnMI+uoKU9XE6xL13vGcdFA+Q0g6nLVzxiAOCNHYWJDZLO5BW1FG1kih3ByEI9DIWNjNxmT8Q2fSkMF5Kgr7mS/mfmQvzjcSOcugSzBn+GD/Yka0DRe/D0N5ACjE3FTQSSML9Jc8tIasQ7uQoytwkRXf+I1JJu8qyi6Kngh//ysYRijaLQdyI9K3m3ex52sozVxoFMH2LdBVXKRHU72Wt3K2t5MNyHIVBQ1RJ28f6bMu2Htdj65f3NF5QgofdmQbIc8//kfxzwBbNeTgGMUghsZtStrileR8x7Go4kZJB00J0uwods4SYiA1VrfVUnHKsSzzAeseNN0z5QP8iEjMaYuoTi2LmTIEWnyGEjb5G4eTt2RK0OX959QRH10bd+uYEiAfkv2d+KKMJr6RoeYzjbdPYDjW+THYaua5btvxJ3KkCslzWIqYOuvJ9e9OKE9iEjlsvlr1qsx11gfcex6Cse4YDd+M2+6L0Nk/YgOKaCN908CozSh0xqwp8a4FkjG9gHcmRY6Km7l8AudVf3dZipeeoq7o3UEVfSQaA0gNHsZugnAXAEqTamyGEzxb4LK3dp19zVKbl6pOplyb8ObQhNKJIw7ZeT9tz2oW4y5LQklZcVmjJ5nomAOhJUFhm/h8TIa/9CX5uvFEfPs9V4W6HDQ+hM3ciNEO9A9aIWhXqehOAQzKi0om2/kScI4c4R3sckZiy8DUHjoc+49F5pM0dIoZM1Thq74DSY3neo5Oa5k4A+RawQS3eTxXX3X11JrQiYNpS5wy16mbhe8Ydn2FbRDnY8o54CRljF+GzOUsX9eRXmw/sMCylkl9hD5Kw0US2CA3vOrAnqeM7rqOve0A4OuQJJSPOeoT340EZWQEUSf5KdPhOSfDOsmYY3eCgXOeml/dNOuzAk5yo3bZBm/RBGUDY7rNUWDKHsJQgA+p+bvEiuzh/He5aNzqaoo+lqsldHarHRoSjmiciI3DeYoxK5xeiqkD8UZYlvHSroDdElbF+DzOgmsn2h1B2I0UHO30ad+47UJb+io32DVkuYEML/emNlnv/fBT2I5ouJHUxeHhcGw8EFvKj/ZnODQfjz1smIAbZ8OpVUdPd9RP26EToomd4ylP6cs5t6f8fqO6YeQI2Mt7xk3WPSyzR1ebeUpgU2fxVGf5o3magwTNRhtlRl8+ULjhHVRbsP2VC8K+CVX8eOO1nyj1WcqZGChTszbjknNnrLgCyPlEf15bUmTYcFACxio9OZkZDSa8Xzlxu9cST2d1peKU8FFWlq8th8cxgEM++K5rbUBs5E72y+VUfv4H4+VDUmaPE0lDHQbQv5yAQqnifcIEly43P+k7XJ+lyxxYQeHImeaDwV27Nn7svgiJSRNTlSei0TVUjfmdwsZzbvWjpvXJz/ZF9G/peSj9nglXJLkUYsxtkMXu+7v+RgQpNaXPYCTjcareSUavHaeipQCa2Byot8x0fWtYOa2rbAE7BeiIIuqLC65A+1dyblrsimuGEyshju1Hlw0tL6lQLOmx05pvgHA3vaI2xNb/7IZHF1w2VDEJ4v4rT5jYOpkxOcBCxRWs30MX+GPh836DIzPY3zYyQmn0nu0iEsf5b3hegZ7R9wM6tfmGjYrXKtBk2hSV8dV27A4GuRgpjpLvXXt2Q6jCqGEU+/F3jCWY0L++xxRtBi3bovHKPCEvFLgCS69kvpxvg3S5r2lz2agCMCt6+IR2pYzgj1l30gAN5xoiR8KL3WoA2lohtiDHb/ym9EfOTSpJZQ2Xp3jiC4lcl/0eIRLqqEdzBUoB18oS89ZYI5fhyXRiCbSAQl6V5SuM/LBvZgQX/6lexU7aPtgOxXKCwdpOv5smsvXoIzb5NSA3SuOkrHJnmAmyqgZljW3nJ1fmjpBNI7zL4JyrKNy38hnKwE7J/fpTwZjbdXvw3gLZy/RWZzr3iBr5pvv/zXt42ydMWKwd+IQlP5lX9y575hdL3SnQ3/j+wLIKyZaG3tJ1YkC8Ppzh2cf4Yyr1fGGSP9XjvPZ8LvoQxNZfwxpvhPAU+t9Asxbv6ISVn+v/ul6e4uCOHe0eNn5ppDQcF8luteR6LO7l2NmUSvMUy+dHx4dpwsgeBvwua3qNx0P6AFyU0wOsDFTE/nLyglgjPNMsSHcisggQrd9iDHh7ae/hehI8txOZPo67yPv5MowlTTfDmSenJzAq5IZ1KV0H46cGmySxR7yo9+enlC3qRhfzHDRqgTBWJ4K40iCPlh3eOwpjd103LlXOKEaayAr8lthkKIUVMAQdAVyDLIf85u4rRtTdQUwTEf9Bu7TKpABW8PANX2Bj9nK+BIOo1xf14R+KVdse+6gMYE2vHHCPiUnxUX3SFYOmW42HV+zeottvY8OMyhJMorOExN0hchpAmWUQchal5spHv+8OZjK9ynXuMkntjdX1C+Vs7jFn4YNc2Y9fRO/ULg+mXe/X66RLOV/nTm2N4PojLBFyJGjXCjUmCa2ZaeTXGhNbqifcQbSYTr301dhYCDK+M14L+X2Z8UKx/OKIbwcMAey9Uz7EMXC8pFTOA8GkV4+niUkM4Qy17EBCqVbRH0W4ghWbGW9uwaoW7q2ltTwbQdvsq78wQCJL3DZE7cL9sMDrreZMlA6W3nkBD2K0U5hF6Hml4BlWASsh2pSh4mU20Ev86pjqiiMJXV+Y1YuE2oKbfGPGCskyphsv13Af+BWO/rlBkr9pbLbvuSX+xldbGZChmMiSy10YCZ/Y6yVeq+sOqWxAQAI4l6sYHwABxLCfRvBvsVJy0znVmQV1Ytozs0Cq9NZWDsm9IONV5m5PzJ5/lZNlxdneq1EkEd3BVKHTWBTytm/5+unzT1t9BMVtNzan4Lsl8wf9N6UpDBD1K+wuhEDnwhThhpMFqPHzYJombferE1ZzsNyXkIy23KhjJYwt4kR/g1IKretxYsJzF8+qwxF4PHN+5pcez92Nobvkdk9SWjAByIQ48oXXirxCKqdwBv9i0Vq7kHEPlEPTizQ74vsTdP0+k3oMOYD59+EERai98wYuuLSf+DNXJhEv9IzJdVTgHYrv9qns6Izh8o6UtVOkGMEX//LwmsNWRwKF8rgV7+06o1sieWD5fydn/3qo2LfKugS+MMGD6/8cgEC95eYOCnzDZM7oN11znEHQxnV5hfpPiUJNKAlx/9COHYuRinPvLM7xiiA0RMNWRhrwTqxpRZE6aDSTfIxh8l/aml3CYwcGGkURIZVuTsJflT4PUPqmVn0+qEuPLginGed8Figc0vLzH2BR0Xj5o8z7k5aWE6bX4zXiJedfe/+ysARR54nbEAALuRgqgfw97RulIvYjeY7xiblwRBFmeXEjnw/vlzdMXBa+PtjhyZbHeCjJnYQ6MZ9jgWDk6/WF7aoyEf/4r+dhs9Xxebr+f6upEkEJ5Eq70uRsgBQWyS6s02mUmQkj3/YYbI7JrUl1jtbPy6UM5FtFMAm8AMDuCeNLhGVPaw7aDDY2v3FxzrbhCAGL3cAM1EULw7XYjOGeJBsLtK/pxTF5JJ68p7zRB6d7ewkncDll9xlsOZKDI/QMdErk+Qk3HgtjNNfCUSdz5S18gYpyfj7x0eAJ+jF9Paaq7XevDamTuKocYJveHCTCcq6DqNr8NmfpBIeiNZ1VjW2b1lC4smuscqQ+xdYOwj2to1zQpcL/YTNlU3kWjoj4i3VaCCzCa3JY6RKrtRA/OfbZBDdRhb7ltIrZHAnQLVv32FWmh5ABWKjevBc+jxe+PsvF8AUzEMcapDIj4uz2fC76EMTWX8Mab4TwFPrfQLMW7+iElZ/r/7penuLgj/yQGqZbym2Ow12b5ahFi0zOzwfuKJ9MoyBzK+ZUliNNvH3uDlH6vd+PItILg/wQeDaFtZwUI2VcByflLIro5DtIjajjSl84BHOEIbYHsFMcijErNCLyLJIjCZDjPKiHmLDRi+lI05ik0XOYA17ooYYdkXKsceWvvjHHaAFOzSWSS6OFAEpalXllddOqB5xPtdAr6K5Y6V6tsuHG8uCN9Nwl+X0j4gJhSIk17aaeem9XrcTGXJ2ROL0omqto/mgWFDzqkMzn9mxpHfBZr3Y3Qiws9nk+lBZ3Z/3pNJuY9MhF19EAp7Pm1hXfOZhDnKVgQxz0SvoS2NwthpvAAOMV4b0IxVNfIxEZ72W/3v4f/1u1I7WIHgKDRIMChw6bwmPiBKKr+7cU7F90uM3K/4+NMjSBBnGExaeJLUlZyx5DbfnfC4wnYrCBpLfpzJ0BafZTtRmZ+TOE/5eTFlLlV2Ie/BDKUcuCjBt8B+eTXk7ZNchvvRhZgzGFS5ExyooD4eKlPEU1uxeL3mZCHEB4186CLn9dlgWrFEqHWe9AmPZrwgIocLhuTeOKwcm6aC+vuLaFoOHStEvhh2zLgMVnT92rsQTEmpaYJWbBDNA/fHj9hZFV62yz0rQ3JOnVdj5LJghVfTp8PwcF5qWYlLO9WLbE4oykecDspCL7sQ4evuVqYfduj2VQFifJDslMmDE0p4PYQuKz6cZFpkaNUQyxXBSrZn0bkW23alZXk7ZvkBgHBG4sBNy+K2ASxk/CeJcQ0vObx95NJmoG6SocPiz2dI+fRe3Xh634PIPPP30RR8EQ+btPPVF3UL9cOAdKo1cX5GfWhPpYgJLFdO32b21fnYA1ZJgfE0jb9d6OUlxf5n58M8xfSi9Yhr0Urso6HELfq9P1iIL7ouyMKy5KfQcpCFogxxKsvOndQuVoikQdsMzjAGBQdZrz2F+5SqRLS4eQPZdqfTA4USNLdSh+wC62wN6ehpLFpqlopX+fyDLbMDHt3KQxD8r21kduAE5jE8RxTdOR6ODLNai63jc52k0TCdH8XtEnVQvK0Sebdu+aLBX1590vqnTkDkJqfQKpRPA388yQ1ISVyLt/ZuSDgnr+47j4N7LGYQI2QWvCAHA4pjFRFeu6DFvUy1FNmzd6XdAjgYcPnypp2hRrNSXJLqYp54k/V1EqZuyYeZVF1e3hd5HK3Jj4fQZ6fQCzQ4axy+VO5vLg9DlB9p2N2ZFCKxalh+jXi5r9dyKfUm+C7VYmB3esl9tNE9K2/LF6P7mkebhINaDPIY7u85HDzwlyGPjiQtUcsJsu1cp+wjfrJ3iIOdIqniA3Ptk5JqPElXC/yHrdTM962n8LMTwbvO0D6BidoA+L4eHASLkgoLnQ9GiqOd2Pu7PHNfOFIUFwHpNTj08Ci/dKKqAY6wMm9j1K7BegMjS2WPf8rBsTWl2Yoq54r8XZF/QHxYk8oGpFCq8RGrYWtUf7VA1+DqgmIYCh5BPpkC7cRtFu126E7K11ijJu0Pg28AIzhQKRBTDtykKSclUm1B92QvJzIjWwG4ANwfw5Z/eh7rd4/+RRniqyNcXryyy8qfTKES/0jMl1VOAdiu/2qezojOHyjpS1U6QYwRf/8vCaw1UZ8VispBKLxpHQryE7IW09AKFEJu/7xyj0WouWvBC9+2wCYTolAqhMNFpigFrhWEoi2YF060Fq7AXS3YMV/WmYM9YwtickJekSrgeYwqMkGhjMBbGg8UtGTyCaCel5Ktyp2xmfxPnCdCJXfOpkbJLGcDbQn7j0/rOr960nYsqKIuA9R2gUyA9fgcQ4IipNuAhG59Rft48Qn4UQSJN6JIs8j5LCUxlUJslnrF8s4OO3x+xqMTpzqmeQGsinlfITcU+hN3qyQIKpqMC1XNg7CUKI+gMichxCMBq/acLJ1rEmrYXtqjIR//iv52Gz1fF5uv5/q6kSQQnkSrvS5GyAFBbInZKVjm+IEzjuwJgJWvyZ+SStg4WF+pvZRpNQO8xZe8vV4My34Dr3ZYLbnUms18p2/+kRJDvasWdxzBu3zyarwNg0z8xqCL7O8QYUDCcjTPLdkqJpRC29f3J/2OzpI/ITuCINwsYCn85rlQ8C6BZVAQ1R5Ob72oy3aXgntCkYBdsPryziCaXiTn5mbCWDPNok2y9c/FMDMPiCugkh8uN7pvEPp8U1WJ0eAO2Ib100I2SnDC7YVrQrXnzIQBzeeEfCZhyy4O1cxiYBmgNgQctgZg9qhyU7QYnPRCLsT4YGVzPOG9tU2/254nQIYn4mzkPWSlpl7ZTFH596laAXxXw3xt43F+byCAm2WjaAqvJyvbAXXN0YXlJEkjiUftQeHF/sS+4RehoEw/MiYxU3Y2b3AKm0zbV07vX/QK8afZbeb43OmZbyILMWrRMbQI9ATHCseA3UXv1cBTiwuLO+1hpxDgiw5gDhYSuR3tIqJKnS5eD+e8k8zme3jqnFJz6Qm2Yes3LUWFlBHOKHOgWfBrk9HVBPUCjdGifpYKmuEdvdDNX+k0MQDa+ovYI1UWBiuqO1PKAtNJ1pwZCuuf1xhgNjdCPyXKwke+Z9hFmu3oPEbaTlZLF1I3wejxAVs956yiZheOfdCi2SKdJSD6v21l1s4H8iAo/WLXAPqRujPfBq8dGpGSUM7djB/uxCWjM4ik5ymerGYpziimB2+QndHvpj/fX92F2iyd408rFarzct0/D+2zG9mO4gB1+tjnsAQFHe/kv6sbdloQFBDZGsx7UNVnCJfjUmVJG0je3aiaMjkwTNa+K3vkWZWjZ1p/i94CasFw6INCsEaxDAH4ubJcDdZb/PXTTOGM37qRYPF77KWNjixVVhmaA1NFoQB5ILNfdCLaMooJymrg4a6Ar0Mi9KBmFxtEQ3RN7E0wrli9cvJJ7PftLGGRUu9OF0YZyYzbEtO6sR/2NhNybnisYn51UHdxbBZ1PAlI3/EWRvPuYH8H6WjgO0Ot7JZX4RRs1MGqbW1Xj2nELJhXjxEfFqTcjlWcJe2hrZzp79vxanccQBpxagWhKEy9wy0S08zlIzvyWv/+atbIKUIxbL2l0kTAKeM3wBEsymkuXGZFowYqthx/f1ody53Y3KP0p0VvswrFYXFfg3Z+7ZYMZ1L+4knw7fcj4AME2O/zxlIjoULxG/ZnZLo4UASlqVeWV106oHnE+10CvorljpXq2y4cby4I303tHQ+0TezH3wWV2Rc/jFONk3WXjaGCCytudpGW6sGsvDOYSWjp5GaES+lV1yUDIuxnjrfzJ+LBqhoGZzLHJSvONcTVqpaZqvPMB/U4xSAAzb0N9i6uuDlW7qEi7eAF8gk1SnAC1gCChPRXhRkkhonwGgVwjtrEZkcz1UG0HyzKKZzOFOr8gQRCFkg5/4vsyThXgIL0F20n5E7z6NJXB44XEs6DxcUvh8XXylN5moN9fCg9J+EPe/6w99kKu5d75KBlfXNyAGHi/Xw73AR5jZUW4U/W9eaMdaQ6fMRqy8VCTDrlTm424ib2bQhj+bjxy14wJzc6SMEhoXdXnv2kQOy4YGog+luq620Y9nMTMMvH1xTJ002bNPLZPGSxJ4wkPS2zsqhzJc3mWZ+AunqyZRGcwuA63uQKGh1YQocrX2jqlsxC68Jy1RaEts2/ZV4j/GPJ8+cZ7axUO1BTjqRwsE/YTgm4cLWBiFs1Hd2+TvlZ8l7FMOYGhnc8lffyYgsplQJLt5qnFFWmKGtQNjZq7IjESLOV+IYafX3bCbaTytQrU7/CwmJlRQ6WSrX8mNTIHRUFHMKT3VOEDwW/AYqaNz4G5UMQni/itPmNg6mTE5wELFFazfQxf4Y+HzfoMjM9jfNvyHH1jAsbgfO7DEuo2Zpo89aRQYcgKH6VpQPZgLb8l6WdhiGMRAT1RkrDMsswyoFFxO1sRdjHar2hAtjh5jOTI0s0u0kLYK3+TGWqIKPOMtP+RsOwgfpi5nVeYofsrCchEv9IzJdVTgHYrv9qns6Izh8o6UtVOkGMEX//LwmsNWViOI7OHGtOAHLt/abnHRgzhUyHGXdZWIDRWXB/9L57Qp45lYs/vzsGoUD9EWLQhiBhzkHHPYkvlJQT6i2Hz1trrUhrEAN+3xfG4eMHOqJUhEykNjTcS+u4NzM9CWZa1zzrHjo94/jyFqcDsCWD7hMVHXvVsGHSnbwa1MSAsprvxWowNz9p416Gpe9Y1DAJJ0VZCKE1tBcYvKBJR4aZnLHymOjDIWMr0lFbJnoBGnQpyPzRAF6HXnnc6+GNP8KcOVCOas/UWSsOQfH6mcG5JfBrcc9GQDsyTaqItcS2OdsH+/yzK6HEzBfxL/iE0znRsk3Vf8yxlVlqQ7IbPH4vR8FkujhQBKWpV5ZXXTqgecT7XQK+iuWOlerbLhxvLgjfTcF0xbPdt36qJgcdkt1siYC0JJeP0zcgQ6yVoHzu1n1n/U0nyK1UjXmyHFKBWtMUrr4afzn80VIrZUpOSdVztMUakc4u1DGfiBGfbYkeuVY8ufq0kr6DM3qRASO6A0dDDsQ/uPCE7Y1bDFRYJyDkBeC6Bs0MZlLBACXlNGKP+4nvCp2xmfxPnCdCJXfOpkbJLGcDbQn7j0/rOr960nYsqKItpb1K28Z3azOXLCefIzxmIelXXRlko3boKbKmMlt0qyv06Rx482+zBWIklFAnaIwekePLpeLiw/+iSxYLwdoWa4e0u3JAIhAqqm9S8BuPFH+fRD4P6GhAyRjAMpZv8kPd535LtnmQYL2g0MLYX7oMnBinbLkcANEuOxXateRx9Sv3o+PaG/evWmJ+aITbkRulp+B2a6aYeJ9QBoRtwjr08xKRw66aiNnVWlgUKg5fjObTWdqvCsOfvjYjow7k6AMPVF3VztAIGn0jhiBzRhqXSdyJSXQDtUaP6ePMT63jbOTLk7lQPMOLnuqJsPPGxAEGF8Zzp8VoJcx6Wl70mNBjlbUZQIYWhbRNfJB2SEihKllaAanm2BPYU5VYb6B7hNSLdB31WAYoIqjDwZcGvTCXEkuNt2mjJGC3H4bx8ZTBjmaQwZe3yA1MOskCoig3LXgk/wfONZ2+OnyoSvrjqUe9oq2bTnfzpfQVQPw02prtNx6KG3oHflX0cL/+yeLZUT4J7qr8f8wE4/Hae/c8zagns9nfLnGxN0g/VScwloRC/qEIRphNqwbtaXHSxNZekcktW/XGAyv8a/O91SzijX/0D9XD+lD0tHqIDl3IFwHV2j6V7t8uyH4F4hA0Ps2JIljpLgaVxIJ+EHmgehb9QtbJkKBNQXhAhOz+yXoUqciUr+IDDFVnRVHzl+UdlUSiaX6K0oyGbB46As9rKqjnWxcmwL3DgNX4Y+FNpT1YLo/2FltgrTdIAF7nhFaQwHWaLb2a88xA4VJPg4o+TDCCuaO9yhtsC4ZS7MhBkQ2CxVgOxwfnVg+9TegWw2Guh/065uCtTO6wWpTaKziuP7638wNiJDz+sj6nroz3gBlb5dP+XNZ2BLX1j5DP4hCkLTGkgS1/R4rLisTndAKk8quk6u+uGAphJmtua2McLio+E5aIZr2lYiVYq/xYiU/5evugsmGXpu3DM7jXwW/ELy6SxhDhg8cFc2XG/OwGNm97G5+vCKnPFNZu+20ZyKygo8iZPTGNye3nocXm2FsWloQFJw+bfvaV75pN1PLxlpCH8Zb91C4CrS263XG/XYIueXyVQu5OHZPwzB6nzQrlJLPXvzoBiiq/u3FOxfdLjNyv+PjTI0gQZxhMWniS1JWcseQ2353ge6qlw2beGa+UiaNlZDzUCGEfEXSpejjFRhgOcdYhCa3WQUGhBNtt1JaTIW3a1YruG0QOS5UaUHOYbjTegpatKRAbs6m8byU0WnmWOw8Jbsn9RLiUQ67NViSzSQU+8NM6W7gWRYX+ICcrXcgK0pY0jmPMEgf9cWDm73yV8BySGjFXhkNHk4XELRhMaY78bZWFWXtK/UxX31e1ZKcua3N0uBfH4KYuB/cMwFtSb5eK03jzEunp3bwXgdM9z7THTtqGoJWqN77j/fCBa39V5PfLTUZvpvqfs9zKG1cFqVjBZow1401i3kiWLgSZ1nLxf1TI4Nde4/+UZDLQjDk++xjLmQdsifJMqUBJqIDVFSJBdYaQrWY65Lp51Vzg5/6CEf2lc7VAGX37qcGLiXzEjsn8zQaz7d8pMIAgsn+9EGe/Dg7wDF47uX3ZvRPy4uGe9dBO44p6oLB8O9XeElV9W26BdyYdwp0x2nEL9nJRa8iFheN7BhOdBfhOOAjipJPIqoHaxiARaudgEGXafr+wDMRZ/erfXsoXcOp4mHjTEREH+zVKcALWAIKE9FeFGSSGifAaBXCO2sRmRzPVQbQfLMopvAMU1c6Kk4oxG/2Xs9OO3oQDRvufVMSeMTBIVxM2L/v478MyQPHCN4g1ZbNHQXeYQCWT/ZDhP3TwQiTVSagh8wy0Q1UnjupSl3AhAtqRDcmbnjZYbTmj5seg0R2A90wmmuxYGj5YZGObVQaBTdDvPrscd7oysnFaUMtIaQfqg6IRtbpKB7ZAYffbo7TaTjYMlnSqn/NekHbKpbgK8m157fR/UeHvonk32ikPJNbmZeKRLCNFLBHCEe9pCcwsQKJv0Xe+oTqROGuXvwvI8QZ8O4zIFdCQmUjmsk+3vtxSjVLM1bbNDZpmZ8xmbOVBbFgpLrz6HhyISKwsBbvAkyfzRV6epxvM1K9RgGkx8zcYYAOwwjkeOBbdidTzsH0VTCeERqx5WxfcXNRLEQguH/pOtPwb9h8v1NMfomadXW8Mus1h71HRkBhG4Fsaa+7rzoTJiv3NHd2abyMmPABrYUojGQrjpyaFqkWn9WTHyHCdP20AR+/ySroF4L2I0044ca3KEGcsS4TZLDw/SJZkPOGAmWv0mXgAMH1A0pprJ9m1gIOOk9ZpHg3REqvf3CeRlOS/5arfKiAoczAF3Da3U9h5cKTAY/zoN2nv1Q0HUFsRXf58DWb5mvc74zW+XyouILe0b1UNecNziBkMZ6mvKIkd2ddAMssKMw5GGW30muU1ZdthXmHuVo4+4ZrfJscHBsaP6+3xoyLWve2Xk6Lzl0s9oaibCUW9elTFEIs7IRCE1Uv53/hXkuCGNXouzc1S+RWw0VpHvS3FZ2thwa2SaEWqmoYVvCLesOxslbXd+cPZFSYYZej0BDJutLfXOuwSJBvvYEm1SFkTTbiOnKZfChhsR76oqXl/yLba4A6mMdeMSI233+sDBg+hxXAGy+8EwrTrLyB/ssWZegcYn/WX/vasb447NZn2/Gz1NYKrHkkPVdF91sjzBYkWBy2zPR2yUc5Y3cCxAQy/ftq+Dnj1ReDrN/tiQx36m2ZjjU9FvbtW42TIzH8LMaWdVUoV3Jp7v18LmVGpgfjCEFgtGcGo9rTYGvWTSWGzlHXBWSSM161pSZSlrV/WSDA0yolNVr1dj6VyCsRyClwX1Goytp1+EBSJTXGxBm1muQwc47zyG8XYp6w1PxW+QJDlI3WhxvPnDbpTwneKt1EnBbaLCSOI/J6ouE4RwCvDcERKM/IZBY6nouSyJWEMyF1xb5E03eSOcZrP2CvC5umMBjW2FYi5vk/yQXOGof4ROFGwGCmPErzk8VKXyNlJlOPz9Ux08ZGys7jVAVCToD7bduD5Gavc4fwUgpWp7+dmO004fOMuOAm3kM1vv/Ucg3hm7HTvBRPhUpiZJgUBt2gwfpu+ZqE5v6fq2dyZk82SmDkitrlTYt2j69WMFPC096Cx/sRIp2sbN69Y2ldYtNhEzyd5+ActR9K6ybcy7axIqPuLdhaORneD8/NmT414Pj4CmdUNUb7bPhJfUzbH1CRSrFAdFlLs345X7yZlMCMHaG9RcP2sMwyPirK2QZe/pn87YbHZswwH/5Pdj/MnBF990Lex43wep6gQIhrXxxFEhtgB0fVs2lzc5ligKgCm7jBbIHxVhx7vRpHcEVmgmz6ytaAnTHBBdr1Bj44pAYEqHqBS661rsn8n9IUqqOFhMUcsxWeQ/WQYo8/Smg8Ej0YsKyQaNumcffwWq7JA+p2AqETpsqZewHS8czgavD+m8a6z+NQ4y7DalQj10F31mXNkjtVEfAiHPet1FU0Ksn+k/ZpTix3xb53F9BPaGpWBe0xn21BQLzwzDxa5eailvCOVQApNZchH3EpkRETIGkG0G3dYV/LJyb6E2P7KYQPFwc7gs1Jew00wSIf3I4YEHffhx9RGceQL7YZ1io/2Pi/zX+b4xu0RZ010pLWdLpbc+6SE4haoTq+RJYDjaL5Sw6a71HOE4vn60DW1rOfMsX/BC7LH74MJemvXyoERvE+fppjfJTWPuU2X42c8/vJVDS+0DcfpNQYz6Mi+id/1kzNwkDq8vxbthbCcIfrBOcA5+gKGuhm6YHDmW56FNkUjH1WlAwmx3gZyX7x89qcz90hDgWfIh3JjkO36XstmEOjcpS/gdivBWQ9SFo4c+dk3agHZeMeZDTLQjTKsDmwYvCtwPkRaCpTOa7PbZqdG9Rj0eXPagJxpQT1o+iIoLKqwCI3XCHRZEDmFjSlkjjDZlC0vJ2YUBSMtI7hujAGizhmMRU76pcTpVEHyBGvgDa8VPNZ8F1Yhc31fNxxMiIZMV0qV52zUX9SnVlnpdgK74j0B0P7uPUpnAAxVLqonhcVjp9c1frBAAlIHMqiVRrqET/H4oEiioQNcb5H6KPwHd9rfB6TITAeVXLANR2PbRdZkfjqENE5+glCEkGA22CURr5udxRUT3BPUHqo8DJ5h+NMjnlwff4sayojRCZDXnL6OErkqPC0wZsqmLAffrbDFStrCE3UvyQ8NIfw4yNtZP3X07NqSJiBIZb0uLZSI0h6DpMwIMarSE4Q8u1hhQfygoBy75hL7Qi6aCOQVrjTVLmnxNlUiUCATKTTvwplPWbYI6M/Q8cqbOloZwolPjveXh0XChc5rhUqMyNzPQJQ8rteKf7ZKco/GIy/iBuBzmt+9FEPUQ9pwo2FSGuTmH1Xn6YOOQXjlNdzNCLBFS6eMZWP0/XPrs1zaG9B9ai2wAw+jxR0PHD9MlN9cGh4spvi3w9PbR1WxrmbEn6sFZCb8rU5NzkjrQXZ9TLMyyHTaQ5iOGTHJkNW+RxuM4q1sPZHj/rvvAxigruwAci33FWbB/UZtFZu5PcyeFn2zHf4ISgRk0YsMrDOwGb7hOH5vF4KRbzNSQqpiicTRTUmZpduT8niIDb7D6k7udq48uxBIBmsQ4w5JFEjbcUdoSHiOGIo2FB/7utGP08ijXd1ITutX+35Y5Rbh0nfF+nuqv5Yi984+esUGbHRLVxE7I/Og9HB/ZzQCj4mvA1UWyvT9Yi8+6TI9jz3GefN2kmbpncucUxJCX1vcy2BrmXCPUOOFYjFCc6zKGws7kfJq4HgI8nF9UaWvXTACnoBB7/6ub3FRijf+ojBbZTC+t3um3McLgZj2+yvNnMep/wiF18FrgeCLGqKbI/R9S6FE6dTTW+UH2MXEVWA2nGK7osgKNWKCC1w/L/fiUFJ/4fCaPFWkERNy0RmrIm/7jZcStYBGnU63Cwa+zacbq6ZONZkrdSmk9hlB+RJrxNfnAzbznmWTxzrJjG1uOuQZGFw5ucn3WF43t2SSMoT/39PUsvJpoMCsh90TFEGx4OPaSupNVBfRfB88FuER9Kn9UPfmoMdXWlTHLPI6hi43L/7LXBkvhDojGEbTpzjei3gBOYcgPgULHH28ES/RTm9YePST/G/V+h1zjDenjREzi5s5eeJRG16i31Pzo/qvTZXoKnXbHH2ByYKwZAiRPs40TDSz0pT2wQnDhqu84DRR3xAl4dcWYC/Zt+N9V+dsmGp+9sajawJ3N1DrAkGJPo4s386uySH4mQvkXS1CvuSHKeEExTq4pMliTZtZvIxlLolcEKxH4FjXEa7B3aGsSBoUKSJSCAuP7K6tFuAUPJBT4xahp1DchSAVw0YnSKx9J4jisfRUurnUC1lxI8cSJ4jF5wtsuSii/7wKbPshUAf5340hnNI/B6YBaygK9gSBvm/DFx/3vznkni6TA53GUa9NT6tdoETrRBbmAANl9+GB4I2x1EsGG19fK0ko7b99Mi5YUzaiVCiQPXVbopI+PuUfL2tl9HC1arVkxRqOHebNuT4INv9QPgBEeTLW7StTIU/7rVPJAaSTWjcXB+mayIyfBXu+knYUELOzA4ogm1YlMxaR5yZvq6MFD/EV/+3UVif2A03JcRXeb7VCKVHpdiSdUE3eBMTWm+FrQ/dW76cOZEcOa7EcsDNXnBQdZYPDVKZLAKNWunXjl/yB6BpmUyK/EsNPLHaxN+Dq1pdnmzzrnSlLaidNxeXbvft78vBzLxMrqFcviNGsih9TytHGvt+8Gz5YknOZMdAM7ixugyo3fPRdgwsKEOdZ6m+y1f4NTzyYQl8Utz3Hky2x9HsNT+lRQXJHAOr2ODMentiMSAtOIr/9fC7JCttgBpYDhzyraw8SV7K3md53U0FHeFei7+ofEp4i+BAS1EpfNsL2ppENIfksVhhOD52CAV0MuCa0YxHVoK/+qpW1ii0jWqiZHSNmNVXvql74YKkK6ulSDWKUTlYKcTRmmRD4W65B7KClNt2Uewol83vqa0yaNmxWddHLmaSfAcuqQRrro3jswx0uWq2nowcFO59rvLXOosBfhKx53Nf9e9sPph2kL/4rDHjw9GhPtrJbhgsmCvwCZeXMoKKG7npbsJCMxJikZt3aoQjzWyZo7fMh3Q1jvehOXch32ndee8OfbLlK5A7A7nGXblS8cykZk5OHpuW/y7LNiJZ+cmRuhM+CDGFT9fY/KU0XvXS1h4ljLvFJR6e1DBUfXkhb63o/MnQho80shVnePpLMbZD2+F+bXA1EdFjNI/fe3RSwA2xq1A47w8jr/P8gbkVZvMIhidRrQW1KxzNVh9atZFKNLowuXmdu/IXmHv+g08IKxXoAnCuCre1x8gNDi0lJMOWPtEhF86ALgkokk4kl2rRgm39rcf/xnptmHx+lGiocRVsdczSzH6jLb6r0pmkzXw8fSDVQzTfm0YQdRctKwCrEuSoYrxsBxYiNVmuTs5mjQCn8mr5FHR5hCyvG834hnQFOXJlOtmTc9Flxv9SD3ClCK+UMeMiSlvRLYZbSfR4gogt3LLNDLm1xpN3dDmd7s+p6V4Ud11WFXD+LarF0DjbTfasYY3QGIAJjP9H0nUOtR4hQYz+wXKUqHK10lZ6PCXw0IYPASGo6SvHgXRHgmDX0ArwWy6FBpIZu6mv9Cl26QQbU0TFQRosVJ1RO7GM3qUpdq0u5DFDpSuE5Xp48YYj0Jm65PC7RuFIrv8lFc2smaNNHn8iK8j2ENNod7d5LR5rQ8A1Wp7TqHv6LdkLxjR7jGMfMJfK10Vd5ZhhP8Pd7H4VTdwFSbbkkvOfiSMcBaSRGpGANVmWYCDQNtaxMITcEoyafF7wSxh9+xhJtuTOBm8pmR7ezmZRDQr1AtLW4yewpaZeoh6o1IgB7LivjHpQ2GnBrZQTRoAv2poi94F6FLan574YsvjZwiA5xibgNbYbtVQUwlPIsKMFMMi+wJLQRphCYaqtXwhMv1hLOB4BDuiE7do9xH7dq4hoOJdEABHFBEexTgPkZG+k7uYgGvcp85KhKBDm1aA8w2+/qpsy+03gmDscbsn1pEOQdqFcMs1MGIOmVk3Np2PPq+lUEeBH1QcFzc435+U3cxP2XM7bDLZHD3Iu67TPY7s3TNXk+thKlFw5hNhyv0xTEogOV8ULAVqq4l1SSunO1LH36F/FhsGGMql1dCfNr/31ls7TJmhUlOF+H8dN1aIjzZnleftKqkxMsHEr7uOCHL71FAww25uyxt87ZY6fwB51ruGiNYxT/nGPxt4Oja3DushNl5n8vQVtVXU8MKL5C4YsGODbqoUlPL9go0BK9UvPF0eOjoSyVomyOnBKuoyKHnNG2+s17v3nuF0Br4IGlhkk869J8wGwA1OQH3CybrueBLPm8VMbgcaLYfP7a9ggN1ldVHm73Z5GpxeTaOltgdqTtARKuxOyx0BHapXnPV59nwtqBc5sUjfv/w5o/bQ5ou2sLazzFib60+Q/cc2bHidbF5KuWzncyn8AfFgxA8KZipSkEJewGwRKkl56eEb5Lj0PKc46n2t09x2L1mzdU0s3PmT4FGEV1LBUuLSFCCJ4RlHtcP8VLD8X886dbNd+Am0kVD4Hts3eNC71rldQ/Izr0R0SvDX7FHu+zGVCWeRNLoRz96o+6zY5weXSnpHmJRUct18QwUGOPojl5vztNao0CrMwdVR5QsO3E9iFUw02wW0UhDe+lqo4cr9l2e/oG1T3/+JG4PANYuLE8hhYPL0d7bb27hPuMZwMcTztDp4NodX7XYDKfaEpkixEmgq7optrMdYZgRnu8HJYsfh8BdOj8ox9sjn0bcuauY0kjwVBPp6COXH/eNeNTsAuJFBPyNaeu6AWlnNRlTBRi2hUYzWhF+9fpFFYCjkzCviP55JhxIlNYjDyffZihB+/VuQEm5GYNFiY6S/5tUAHdlrsGyxP6ixroY6DaHmF2BniP+7TvqR4ZLbL5b0L/AcqJvufDvPAlhuHJIazj3JsT6LA4TZAlefnrhxjnS5XbtpeV6O20OtFvIiEtKI3Af/nD7qSEx1hPO1guP+l8vBipwMx5vTnxLI3DLWLPWDeID2kAoU+knTX/mObWY9tvsvepa4sku088X8XdMkJUbz7CR7pKpemvxPkp9R5ZWFtQKsCEvtY152zdha3QctLRUssTvfZwBqmFOyWDKbBnrA1vxALnfqSUUbb1bn2FCeX8dHARGAao6uzug5/8XcfFyZ5ejY/cp/aeYE018eg8nwCafK6Rw2m7fce/L7ESXZjpAgw+/MElrw5tbpM6OiK1mtNJpp0hpbwSc3WJxqlPcwNyc7piiWhk4tqLe32PWXJIEVt2xSB8QcAVX7whZTqgQ2fIJUNXdIv+41ChZjbTsQUHl1mBT3SCOPC8OR2PSxwruD8Dx2o/QvUuennpXU9P5RnL3MVOKoEXRL9UfqMyemUd1/85RxsbYP9+62IVIlnkieyCSTo9387j5gKM0vX1bKTp8IX6mNZmqjpF3xc7Gn4cU1kVPh7fBmvIJ/Afu/oIMVDQS3flp+T4zDzUwRX7pAVgY1OdWp2NGF8X3IrvJ1FVnQ017jjkLHXiNEowjV6aE+D+//Ao5CQT35Rgoca/BUqyW9hdOgKJeZa3521BcoNFhXlkFesbJf2LLC93kCrSzWPH3G9L38MAx+59lusHU3oMcqEH93r5bKNgOuN126TQ62SVv9+Vpr969N3gps/hLkbbt6JWTSpFh088ZRWvkJgbz996kCmbisIL5+tAD8cpFFUTyHICPj6RKr60Uh2gK2w6CpY1D8OvRy4AGjTiwdDSVjHp+Oc6SPLc3pp6HEM6XG6Zc2tPLR7sIngQiRSb6RcyEzR+Baf78b4XxlmVa9b8YgJR99avovrqYmiJ9gouWYotP6ePCLXYWMtxLdxAMksXlE4ERZCMesM2iIQdg7XrGvXUDGLYkyTvLbG0JEVJDWQ7uWZY4wYZpeuyuKN50/5ldhWmdHDzDU0PST2KnV4k6n3ugb03YEHKkDfcMQNPAV7pMJBRG82lA80RnzPavQBPzT/419GyIufMqbIYwioCh2xzbybCd/3oquwqumIJA1z5wuX1ONaXcaWf9YD/2rLj0oCXlz134F5V/l7ALzqizRHLnBs3cUThz03Ay7UT60lH1+Ix7FOP5iW6Y4dBfZdFgtrrsKMq7sVbCncIKl1o7A4gnwr1TGdFMrsvTflZHyenA38+XM9iI43Rx8ePwcPTjfiQUpmafhyzLTTK57GKxDcbEeUoox85pimotdlZ7aEc4i4USwQEI/HuIsrvgfMv2tZM3Hh6jUvsrItyH+HImWFU2YcfhOMwK8lUzVAF8F1a60bzecpcXdNRRELdxK1jHgJS9qeUTt0hcqV9dc/5j/VzIU4OZud8G80ezu6ZBaHjdf/PAeJl1nApqpX+8g7hJ7U3s9K/M/oynnI3d5vG2/CnE4HO9BBdj7bn1MS2cg2iyaqCR/5pipg41tBBfB9VuoV9yVJdJ9gza3J46Xl6n1HMIcbjScNhRYq52jgvxAhlsNcXy6WoEqGZDcWZd0JLxn9jOI2SUAXzI1AIIpXi8p2+SYQjmvaHs6osvHQiiAP4XGbZERiXfQ9P4vpF6ILB4bRMyDam1LMU216fXaS53C1JPy5XYmRZQ28RG5+zcvFEyjH50Db2tDSWzsL1a2An2r9E6YGCIOK+mDvzgod86uz5pzSaM58ls6+uf2OxcWuLen7aOriCX4BHb8hUusbe9MBkTMt8PCC+tvq5WctUBgdeTPu594we+CTpEEmTSj1jiAS/j52bqNRnSJ3dQiQ6MogWD4dcfARiU6VeJbV5/hbfrxlCcjIu2CEeht0AEY9fdUfzqlpGleSKy3X2aDoTI6/9+1o/+DecSYZ2freC4Rc1hnKMs2Yrl3XqLQXLEzT9Q+O+N0kItgyo3HZmnGrP7vLlRfqJBgZfPypz8D2GW1zwlMT+irpZAsozMbB9uny/OIYZekM9l5lp1g+XfSNoCoG2lDVsFTqq0x2tHiRYTN9YlLKJJRHxHkyDtaUx9wEbUUqXXHhaG5O/mJvbDq/s3HNrCK9UFWIVwpvlyVlP+5z0iMfuTBdgjRAwHpIHmI/kMbLDjmKg071nirbmPtPqj4IF7jc1Z3f6+QaMEckU8a62DpJsP1714Fz4Vyjr6E7CPE//Ra0X3Qf/Yaa2U2WMWfeNG7oK0M1GcAM+1gjSSUOHxRS9vPTJ5zrt+Lnrak9ieoDIAZ1SPKpkElZvgwF+lDkhz7UpIquyt1dnWCA0NkTR1E6A8HFxTE54VeHpaHRxBKST1m2czkLDd1NjQjdzqjCmU885FXH8zJ9yKFF3CedqZLwovacz7B/76LHPqrx6X0C7cvgifJHNDbQkmB4fBUM9SCUVrVNPn4u7oQGGK/yaLIWwH1oFkBO3Pb1WNfQepRHt9GJ7viK34j4y5tGiNQ43MWJoSq/wwlwWKQv0A4UAxDOM0MYieB9uI/CgoAu+82E2OrA2p5SGCZWLztHH4NFA/FObtYlIU7Ol1pZ3r2wZELEMEY07PZkoN482xznL0XAusP2ulMWnsIdnKWj5+jo8nOX8i0/7ERuDxmVYApQ1Mwk8ovbjUT1l2qFLRZu7a/k8LKIfT//Y3KbNC4MnSuO3G7EqgFuVyzLcVTAjEasoFy8z2vP0JjJF/Vqjwar9T9exkPvT+cGMMN4oi3Am76FRPp+RuaQSXKM3aS+rpTLFP5OfpPLD+ZK28gDTHZFOJcwjbfaVTyro36d3GcN80BiLgR0Oax31YlqPKHI+OWTwMMGpoVwQLt1JL4NjSULNwLX1AV7H5BSam1Gz9CUEXKaslJnfklrAOcY5MeACiBRBnyyQKB1lKDBjfzXQ0ARSwWYZgYEE8dwL/hxzKLtyWsZbHNiusAvBQb1TewKT2xn6FA62mJhMS3dwBYm7NhQJTmEr+GRHCasfGdqVxDfacATWN5JUPD45I5PxPQorbGrMrAUOThCSohdb7rDtGrNi+chJravSr46YXGWVs01NhY8KFR2fUAkteLEfiIUw0KK/WCz7jmtgYyEtPvjgjbwSWs9PGt5kCtzeSg78jPuoILjSXjF9U189Z9HhcXxP/RV6845OwZDcP65U2G44k4tBSG3xUvPApOwiHdwqdO5qSXY5x9ILibpY6RV9qGKDDiM2G1sAzTBltW/F8OhkICKmGoE+CfFnPHzwfX69d4YNq1+VG7KI+FSPshGoHOwe75sQ5AiOPT8eInmFCuQDEQ9O+tWIyoulfeDKS/ME3vlbUu3OiiyF3dVhO9DVFR0YE/wOr7Obw0ue8zuHCd4dHFUELwte5gHl0Od1GdyiJ/yyYWl8xYmtnsKivqoizzRQQI4DlMeYYIYhPUVGIYg7fSJnn8+GSjVskK3OX1ZgZkgcqgeJ9ZZgzRdMcbRx71rJWoT0CA2gt4OMno8lpiIZFM95Y+C1pNKx4TD4B0sdwfXxzEWU48WtMrI9TI7tE7C6InV8EjJ5MWPjc3GXa8UGn+QJnmwcj0P633G/qQXgTu8bAvUddmflWIcB2+rBgNf9Emk9kGQ9zIGEfOMQ9Wcx8T1k+QI3yPGh/wtcJQbCdIRPhQB/Yck+2phmEq54EqoT4SmbZZBSBhVVL+AqBmBIffx38dEGe1r6r7fKtiCIrq/voiKQRUi8hu5Tyn4yt78+RNe0aLaozuqmHh9lNLmB+NjBYgLM/9cGYtTcsJjJeX3XzMknje4iD0SngwI5YIFjMI/vq8wCMYAKDnGbE8rVnWv7Ocnl+uBY7iogaLoP2WLCc3WMqN8p1m86p3T+QbbjwRfheCqyULaZ1v1oUSHREcG3FkkCLlAyegd7naGDa8Vp11X4s8z2qiXWSPfuZibPj65DFs6RZQAnTHgsRR+506jKOZgkuqSxdDI8dyDXDlMSPDFKM1zb5H88Wp8rp9d/XsIJokl51fphrOKd6DIe5A2/OHBzNQcqayHVtxHUng+Y7FmoSa4SXblIZlnGJATQDsB+D0WF/Vl/bTJQCTFICLnSW569nDLzOAmWrII8WgtcWXDyatAAE0ZzZKmnxJOFT5jkzC7OdQvnG2iKS1z9DnZ9uRWkibAU9T0k4a4uiUadqzxldLkfdZW2W513PVlPB3l2cnret3cJMWmW3kKu09jC2I2F6QAfHy7/sJahlJujnsWb2E9zU47ozFhRLGd2cAmW6lEVqQNeBB2vzIc3Fvtkc2hIFqaddfQwm0uu/YeS2OXg6XtBrdhlt2y850INPegTc/dhFrnnwMdTTRO8IQtbSyOBjM+mFBp98un/YYOH6u7hQNE21jvIJ4GQhpTkKMIq4j24Hq/KpmGHTwuGRMT7/cqDkmkz7ShYTJarsasXn4Bxt/pVMX/HQKixsikDEqm0ILvicDBg+f83KFWbLJqpGYkZSis+5J3O7o5XSudisxYLDixvMgD7fMtk6SvCJT+5dJWakwal9FpFngxMG45/QVqGcI32kImGhzs53GmT7+S6lUIayBIGwv3SYd5rET3sFFKVu3+pxZ83zAxPh9wD5w2Ik085exGxSHnUYqjqohYqWi6Z1aXqdQ+kGS0zIZbbbQ0GRdiN9lVfJXlOhqVMNnA/IigTYyNntSQz0H9qYBKz5OAeovvCD6Aak6fznwb3VaDtSCLIPiPXFWw4YLDNTDPJEB9nkoHFK1KTdo7RcwNV9BNsKDY6Q+yScwNZqf0qCQBKevrazYXVTp5+pu9jV6FybFZCTo0trSbBED1BA+BKE74Vxi3B9nDC16cCE7BmcOwbO9gSzySNXK5A75buCvba+nThlfOJugp8OUZq7pXvE3hc78Tfl7oQ5/zgE4eU5EJwwAiKqG+NKIiLDTiWrZ+KwtbBYUWE1PzXrRjNZMOLeepv6tqqocb1WzaWW8XI8eQBd8onoAzVoJyDSOFEeBjTJevxznK7IOEIeI1KVyDI3wU591tAUcEHsU+fCKL5RdLLLsNKBQId0r+Mm8AnKgm3pNQiDyLF78ZtF+Awfco8zk7eSc+zOZGPXZgUV5ZQDMAQvM5tlFJjD/XjDcd4iyJMxhlzImLr3Jnztb7FyEKvPbmrTbGGhbsTeg6FgMg2bqogFUqUMrFjqjTjUrMlDwgdn3vjnYSgy632h4SSwzL7LCJ+HfBLxm3twC3rILN9mKn6+l/eMZH8jQBh2MtPZZXxnanqIUyLERDyXXZglgZI9wn/tTOSQ2qAdINOEIKYVargLbrCQPHhhMj1iNWaUsO8IZjb1D/O6a282h118nqGRtY2rFAxHfpib/pJTIyjjxkxrmdJJGdrVIV1Ct5xOC50mv8KylZ0V3pKFsrD4ijyxwp7HDrVGEIJM1XkbHTrVQjJ9tiiA2SggPsU0GQiubh89PqwpOtU5s7iCO4C0DwMASVTpm4aP+h+ZaUkPBBIJxfD6H9LluZlM/EgZv/2ayu0nDj7gn7g/pcDqQRcGAV+gl0AUgTCo1PMdgs4vIX3UpcgzYs42Rtf48yJ+KRtNgxPOHT/vNSsoHKDSrpPeLxV/ttfrNNkRW8FT+KnUZw+kBdqwoWFELyFJZjsc7chFE+r/4vQpTUxD1hvAjEDaMFF7AwRR+9t0U6kHaTJTGuYVmfcTmxLghmnJpINxE4y/h3JMtmnjU+AzdwOd2lq2geNGxe00ZSUsKLdE/KhM2DM4iSe8db3ORCrIpmzFsz4i7bq8XovDgimSBXdUt5FnscDZcu44bOjAnqangHXigoRh/MuqMUR4i/WAuNNKXfeFUWnhziLOR61RfKdvsKoY/YVSyX++BtVx0UmAROtJ4KlshM3iKk5S/mfipV93I/KVDFR4a5bTviJUj730GqCxOUKhRUuNM4Vhs8u2B9GL+AYmX+sCKbXPyMi2mySohf/McuEkDRb6Of4IRNP7a3/R5OKv90tSpPOqjR4ZEyIHJkF9TB3rNOsTfskOJonKwwk7Kze0DREcTy3tMtiRALbC6qzxGW+LgJN0xCxB0tyWDZy1bd3ST+UgsgrepjVdymrujQID2TLlSPC3sOLcZGdRBZ/TykiMh3F/ff/rVTaKbfgBZR6RapaMf/OenpMpCAgmNpvwF2cfA1ax/dAiAKlm/oE3z5wBHc1QMxPnFp2WX9ljFPd2BPMYSUQ+ujUoJ0CMmMtypfEJT4QYm8ReXhR35kONoB6uWOs0c4CcdiR7NZmfSbKe91PC8xBp7SxpnPHA4l02zc7UnodgWcaWoR7ant4pD6jM5Tu4nWtFebClYu2y6CrzeOF2XFQqcAITTBEjTjSXi8wakPJmlLSRcY8De077NgTc5fThlt635eUX3RF/QSIQQwEhXyg4DTTwN3Iqeev3C5Mx05uTAKMBYvMa4okjbWqBTAjJ/Gwp6vxndPtuDV2IjTvdx26aiWauIguTv7aO+yUMeK++r6R5XJPWQ4t0vuCu7905lGd3pFQyhpeEw2R6KElCDcSZGjZEhi+5/Ga2jmynNKN1yQFwt3vcRcSpXNVYb62dm8NPxo6HZ7JQ0f5r/ELn6QOilP5bR9zd5geGpCvSi1yEmYRuhhDdyL9akUsTy0YnzP/Eivw/pH83bvU9ghfRToF0NCQXMJ4mr9h6C22DaVJp/kOyqZTypmDv2E8z70bJRIkYj46lsWdpsguA95DXPNkbQl7nfr0YkhxFETTzmCBIVQY+SBIEIpZeP80FwNaH1ZE0+9TIP6SnlPiNSpT6cXm5Rm5p+A3hUhtXGZoRhv9DYvopF76eycuOrja1mvfQi2C94Te1Wom1J/8LT/qJDm2cQmBhGFRZdGElspOwOH+scxhuh9YJ1o6pVJ0QTAro0BkNpWjoJhu3XYjJDGKfncKpQV57TkAjIdDlbPkRNgmS6fos0iDxHYJKErDcpl4qX6kahjj2KYUBWfGHODjaNAoYNEL/rF1Eq6cTKwMgystFuCeYyr36lr83up75JTtn3+IK9W3+jKfqZ6LEdBHnOW7lA3UyzhNEvB9OtwbFpQBWU6FU9tmoh6VZcw44eiZ+9DGpI2n8Z88+sIZ2d9+10lVQZvQw1kphLaMYQQIGzFnjdgSVIRNfZlyy5zcA1UMx8/zHZ1TTlldYDrTMa2l7dLK5yUcehF/WV4H4gUIkUsJD5RaTqtB3fcc3WuluFBLZyolikxQ2ONmz5vI86QP+mCLvuLX2Jw5ZGBxi2SOdzdh89hs+iaQFDWO+RdS8Tf9n5erjXfWXTr2yLnmeyoNnQ2Q7bB0Qk6vjXRwJ6QFD7WrbcUr3+7JUncJjlO5MlQW6JlFmi8HV7+v0Jdl6iK38QrhU4SFJbncx4I5AmJ7DGGWL3rY+DY03r21eHdjaZQuWWu4UDaxsyNCRE2XffHwP8XXB1iLQdGsTzq1EbKPTEHb5XUkd7ySsj7yHQ41I/rnDeUxcdFAaLxyZiSykLOSrpxvyY8e/WmYoN8ujN7PD+80vW+YprIABWqZ5qSs1wQbcS9+pauNCX91mX8PP42aJmWBitmEnLVgvvkVvxnMK9YSZr6xUM7PYs1LXdSym/X4mNUTBoanrl/FDp878uLy7nNPPEHCF29781QqZyQfrYy+1GriSY9who2YJiXPiZ4N8Rgrldi05/qeABgpkYDDQLdz/rTgrFQbDGketpjVDmGVIdXCG9AwNHMNDMpoX/W1ybPRQz+5I610EE3Yi1Ssxfdsrx32LWD2+al69MDgin9dSow8EqQB/VJkd1kVVqClKPKzvRLdZWC6fh5RNr1SGi6gWbotDKPGbT4/eh5qrbVN9SLsgtbfAIm/jju/vl9qIYS4+gotvjJwyFKnAEk+bds4DhoqY50i/Ur7wz2iJLmETecZWzR1OSPWsf5fgBLi5G2o8Yh23b4y2B698Os3PE4UfASs/9aDFh4VwdAFUPjtlngRIZSrn74DUKHGonDsawJQCrr7IHl6Sr/2zmnuNZOy5Pe5m3w9svZOrr+d2Z65BtRsogeZKprlh9VQgjrqCOmDDKDYct9/zBktbdPjektlB9/j1j7h7sO87U+CsaOCPCD5OWr9QOnMylhfFYbms9BvYE6FQbcWobv4ef7hqkuBzOTURQvzYIQP1Y+1fYEpf7YINQpnIl57HkZKf9PdoqXPz8Il/UNHKENF1P2+i4L7cdbBSQkuc+Ae4lDxdFKuslmrWJnnmI7sgNDkCCw/7iy2qP1Y06RAOlGw5ZIRmjcppEF2XJcceAx2XwgxBjcybZ+tyxeHqshLIzKJeH3hx2OoXs2CGjX5orv1Db+8yfhbC4bJrsUYPhS2TllbnOb2duyrWCnjrCg06Y1LMLd+Fi/ofNnnec85ToJu2su2HHAjXF6drwXmegxhtYoMFqmlrW5cprruaArrfqB31ragFvbvIw/ce8peuzEXSKYhT05E8rrP0MBVgr8fqOHO6minoIzEym9jUIbPr1lY+LbfQBZFFoaBix2+Mj5De5v5m3b4Qyxegv3tjF4bxSaE0A0BeXN5rYPGYajdYT/Uezw1TKlquI+lS6IW2pKi3u1f7H0DqvUanHImsaiR8hLMNeiVq7pX2fZDOyd28yy4lVF8Q6pHJNrMY9rJmbXqHyF2rrVIJfD72L1SoLNv0Ym8I25XAJERq/B1lYEJZjL4Yg9BNEpj0vz3cPE7bjOLltdkF43XsAR1r+JbHQYVa+cQh3t1v1dO6ONelBIG+gQy9n1nJcgvfbYMAVK6ussLZTKdDIM0Ette6SqQ8mFYDiGSxsuKBrvtUk9Dh9dIzkr0/7wsUr8NEklIrA8wGP1/IS2cBqk6UqrGGdMO04XqGItz9bEhCPqoiY6lluKind7yf+Ke74yDkZ8S6zD2Cduyi1DLisCeVl/3UrBVx9beuaC68/nujDcK5J3W1251fA+y1rPu+BFUm66O49t0kXi2UqNfVcw4b2Ot9jeBFlbyiVUDMsQAbVOt62UP8GCPOs/eW2vf3Y6T2HRVhdZEopIcIF32VNfft6yvUrdnB0VXDl5Ukg6VjrrPQzlPoBh+4oKXAP371fRAdAHBeCkPXr1qLvN+08F9B3btFrPir8JgG3+paxXPkaB6Sw10tQ2Wwd0dyrqiMqYlouIrj4f6oBC/FXuNjWWhsrNE9YMRwzzK8xKYhDZUPyw6qYlq2WS8KWfJ9rIrkxtKJVnsX+EwstpPSdVmdWGPs1wDaF1kfkwheQc4pQwFJsy2L6C95A/sBn7ejdw1WJfyRXvaOXq9WN1GQ368cWv9P8BmzGxZuh6SoG0hdBLTQEvjyyhA5VuKJR28jDgchlCjbDon93jiykVZoPSXXoujQF4mjRExR0kqNl6oMlKCNYNqNqkpqWnlOfI6aOtD6qGhFVDVLt+Rce6Jg+PGiL+HINVRDLkfP8bVnWaHbbicNWDqXrjXlYID1oEkQVzFbVzXiPR+JXgEqKYv95fIxLN1s80ZWt+cogETjw0ZNuPlHep1K5zYl2xdC8W7s4GxZWr9hmDhf6vkyrF98b9SXabo4zFSptYK1XB/7LWF66gUEsmoM41tIY1jF5aYOg2LHBempIQWDnMVxxMRZ97wFvf2k2DT9dNii8mzPcd4ZDKIISX67+DLRHpwOlGJisuQ06PEom7Ew+OHPYvDNOXZHdII7RQCPDaSESMf0s7pNDYSoIHbN8emv8Vhhbr5cWYFb7I+2bBb8A1irfMxJfuWml5LxTVdpPNN+JWoXqwX8ffjQdUdMXAms/tyYBFfFqBUwt3CS1qGiuRWz0WvEyfNultMuaJqtCDkT+gEiSi47V7AHy+P5aFUSuNUvItMc05jAKmpRYW0TIXYnhDoqiyQqIGZvHgYU1fXm6ynWGo47F/KjQHKyZv9VUw6wPKvc68YL3IH6UPildYPLS3t5wDO7Hd90aEMn2FQaGGeXTSGzfrnbu0zCrnhPajxj/zZ3nMFcnGom6bf/DQGRySUpIdd9Pn2g6BMasqcZENzQTbRwRSnL+DZMR1/e6j7vsf5EuYGGSyWwW/hevhGODvkwksmLax8Fhzp3ck99o+n3Xn904sbv8iKF1zfowWWzqpxfZ+r9oSsy/soyuiJzVmTaeGs9Yd7anUurBZKwnnu95YTcPpdGEl5yyLRFtcL2SOISsOAOs7uAYAP8BLPKJig88jLQtmCfkMc1lGaVrVWL96toC1N/1iVZHiPqTR+rW/vJuQq5/j18FjgeHnFmfme2NiYCjLAaAXPTN5HZfblXyBf+Uj9gRofk/iHD94OOEne5qu/e21uvKenMjiq/SSJUbONKtUf3wq2EWyLBQCzIr3aThsKGgle591MUblRgMu9LRa2IaLaWi381oq4c7UwufkQMKEix9fJzS6rEGmBW9pDdBiPpZzPAKqgD1oPvbq1eDt9Lu9EpAKouSyx1n8C8eNyylUg5VwGXP5QzHo8gZeyq9h3Nwn7rh6v6lOvWIqRMMN1mzW9fq8PS4PnR7ADbMiJGgyvuiDLybYuZPiOdmsA2FTCXq9jQclnUtyeYndx0TMusM0+2jDynYwrkYrKaHQtO3BIOsuaNIc80YA00O7H1wgKRYI9MRhkWC6Zb9p2KqIXgALrTjNFH88T9azSylUhaozOibLuCcF8eTGYki5BTQ67AY3Axkz0C5uEDNjOGlKTkLXlGlKyNlIag7Yy6+OvdWjzNSrC92UG6VS3ONWHalT5X9PeAqHHUzz3043pu+HK4D3pssjCyfbQvH0BU6BvxUMJ/l9BkcY0PICAd5riJDi0yIvHAxbhMfHd4aDTuUIz6YQNzDct9HknE3NiqNgk076iElkdI3XGnREklJqdg/aIqhdn3ryMt0VQkwdByd4zAHywsO7t2km5rp7x3HfFy42EKjTiBqRdQO0uQsQ+csSc7YrzUjQ8QIYwOZZYcOjVwvSwOIZxLWlUEwHWvN0RyO8v+M3id9igPGZg19KfcheYoUBf+qVfi9utzEe1/RBV00iBs9HFBrhg9FiSdhpipA0nB8eBxgLuwEggKyPDGGXz945VqLrbPvk2EN0fO/Ty3/1PpYupajs4J5PfHsHQH1dQ9fwzA2W5Ol3WGIKoA5eOCf7k3Z1/A/0fKzGbtqfpvmfpxq8dj5bvfAIoExz6oiQBzIMPoXChlTQ04E0vSofJoypjBbyENhdi7mDow6NS7Gl54rtWBU8fw6IRgTnzGkl9Phv5oiaIiOO5X3HWVuASo8DkQgap+ACqr/WJiBjUACaL2FQn3edbyHny1uhXvupkt7JcUuQox9oBBu9OM+Q5+vrYNQyUqgCIfMb/bAvYVGaGErhVUekgj7jUFIDcmINcEEzYyHWODZekFRCx/0Sviu11jiN07qtccQBBVnxQh41aFII7q5Uv64N2zGucTwhD4At8oZ3uj6HfyIrMOYLi/CUtO4fVEqCuWRE9T2kz6/KMvpOr0Zx41CO6S1KkrF41WNdOPG4A3ABuaVREFIp5UAnmizyvVJ97OFbv0JOhyV9omL5dyLLkj32TfBsXcfaHnqI/38FUknnTjOL8PWVMZ1gz6WVhyGp9/lFml68DJylI54UxBqH67jwtpG94vOIFTm84ynMy9i4OFRTyo6jV6AciqPUm92c2pGsH966HxkdhL/01fSeoQIOWXM+1GyPJ6T214U22cH8DxHlYYI8pfYKvXcddBi7QtE+DRXpBa4k3ohC0otKA9NDIJ9b7/hoKOAFIShVKs/eDnZCzT6jAFhmL5rt1UhydjP3CJ/d0NSBn3rYg6H1Q4y7Ui76mJvMUi4RkC21LlwNqE7d8z/oIFzlyVXzmdxlqCI9uNSBEHZQ6MflK9Wudw4QErD4E2CZJEHnNitSYuQ2iPanNLabZO96UlS47GP0rqWLpa6c7ILl8uYZ47irtE1iprKEBLC8zlGxiFrTjxchTKFQ1jasXqHK5ob0eBFgvWl98sKd4Eq+zbLpviDhq5KUPA1jdHoOHvkS2UNisSnHOTS8KhXDWdgbf8EIOio5yYr/8ViAvHu3b4zixiFjRHpvRktfqM+kL4hUwtJON8Psy+Pdr74qAAQ8EA4rIyQ0Rx2uCD9FCw2lRIMQ6I0sV+G9WmVnBXdNRafWc+EcETFRQskPoDr6Fg0s8iK1ULM4ylIohZVaK4QewyARwzK7b/W9PZdN03NKEYREQNf73pZwqKnz+/9r1wFgpwF8Csm0AdDwObzDyBjJnCB/2q4kvpBosIRxz2BpVP3NoWWcI7aqhoNnXUYsTSgZrdQlj7WLHKFHT9xyXdLPKuumVIHgq0FYhKMQgGaprMhREWgtybcWjtLe9vvWPr9GtM1iWwT6aGzoHvgU/RD3oTykh2uSc7fFd7VKKC/y8Wmc2SEV8VSwYejWYS+kDbqh4tBQ1+Nr/CmFWeyUsLd1KErX1+hfuQVBwpo4O6rmV/6WkHxpCJ/H1x8ZoIU8NveQj+bQ/Dq4Gkg03hGPUae+JmOqlrPBYNB1x9n/77bQ0ufkJf0+j8o8tx1xP7vMrmeAzIPUZzeL0r09Z4Y551yBSNtCZnP0tEmmwT4wGR/dL2PdFsm4ygaGBaA/VEv8+X/bNY+x9fh9UffuW8buwPrunzYhq+eVgjIEXBN7xBqKpbJHvT4p6eBRq2fZ2v1L4Mbz/ptCTXiWN26A/A+WLwHfp+276QeehYCgJbVJ/dLLHOU4BzV6LdXSAsorItE7kJky4jJ6PIo5KFvCghSzf+aEWOG894b3quv8XIlZtr5TGhitgvXBxQK1OmfpmYIoe5bHzuajXl6bkFrGRj++yMirYr0yAOJrr5amzQqh8i+Zqn3Jz6nk3DrtDax/WZ+MoViyHcWv6EPUp8fLjLaYypD/jNs+ZTiJRmCwzLXl+7U5et+PqsKyqsXCVFwbqCZid/7D8XOzH7WDmEw0skDssn5rVU6auk/tI0A8nIb0UXlvjRnOTq2wV0mSlo0PsZ32sl/5eSeZfjYeXzVy4Kn5bRwFYDOjaR+0YTWhgoXBKkiXjcQQiw0ODj03AX+KkgEn+ddzK/xHikyhlYz/TVg3QF4iBmKzxR7+KQPtsjtmt/BTQPsWMsdB1d0lD1e2/AyysSrF0Jyr/vw6wcs72mNzoQplZUw1fT+noWOlkQbmuKVY6AGfY/5MrqUdGm8wsJ0nIlQ+7fBHME98gQ8+3pwwib/h8RVE+kYwW9v7eZ7kJMlI2uqPI9zs6msKGBDD22RoyDeOEuiLTg+2PoVvzGOfcpPwWyDgOmktiumbqDXjth0CeS9Gdx+sWx/f9CRZJ0ksnliV04Py3lWGKjPrlZhe056YFQDyiQnr3F5nwFseUOzNra47bcFdIB+Ay1PrN3nMVg4TRPr9uSQLaypCsxMOXS8sbfRX1iSg+adWiGoN5hhqJMhZh147B+3/1DKcf4FiZeU1iIupZ91c20XurLJKCawlQ2UeDWH1QrigoFweRRmpcACftYz9fWXcXrujRyze0slsI4SNRFgjpapa2pGBW7/b1AGN3lVXlY3qmfIhB0PCzpB0dyanaQa7KSTNORiOkE7fIga693lB5wU+hZiPNqDq0+ESDquDIu3ASe1gHyDOyIoGJR6lmjcbyKDD8WIy+9Jak54n6z88Enk7M/36I3FA+LgnEF1YUwHjR+k/AMOQ08ikKVmH+qqDXD0rF8mK0JKFu4Fqrv/sCTK/fmAdK7ktNuPA37Yo5+COS4W1gCcyQnZ0nyOtVeuZgTRECMysQinncA+VOrFlbqRQn1YKkgFCVKCmeZjzmYcTeczELhfh7rRryGerIX/yJ/+HXNKJCdeR2zZvvs6t5gpvd34dwCWM6wzuodwCIqstjXtsZNZno+YuXyooTAmeUY31hdpE2EjOhXhzmrETU9bk8uuh9EtjFmHliZY36TdIQkN8YaAQS5ZdAYSEu0h+PlrqPC9/3Izy98g/HC2AMgDtITn4VCLhJwGjSSbU+/nJ0MvYE6eFddWbC+ZmmD+lqQiIN5cy/HeQ3HhNj5IkzQ1s35dEJc49lwMyUfRc++JxC+44ujWM1VTYXJB0uXdUbT0FbX07qAT4QpB8aQifx9cfGaCFPDb3kI/m0Pw6uBpINN4Rj1GnviZjqpazwWDQdcfZ/++20NLn5CX9Po/KPLcdcT+7zK5ngMwiSeJ/VAWR2Fd+K3HAjDrnYiHNUnQ3foZJ9wksB4EhUwV0U2ewTNh4bYfOjBopmYc0055IfNlXSay1iqJH0VfMnBJuk8LbordqPB+T4gwyVAAWBEnkcOKR1xnLRDhdMNVdyxb1dZNXLR0olmpIyj9Rbuw9fZMHTyfEhW1gpmn2Ui2BnwaXo6n5NcoZeppt5TGtKhj8/UTiObxH4T5p5pQQCJ4FGQE2r6uN5JZ+LIjPQwtnAUMgZdZBvBYPybTrhatHqRAJy2Q0yprAE5J1ZBh67CrUZqEDKbamjnf3rT4eO48cTPDBDfi4KYkIO1JMTG9fqpI4NEXDkaFwnuwKP7ff66Pn4WRUS36it+9mVDgMEjh0yKR6aq3zxqd5prudl2/CL5J95xqwltposKVMvYX98FGv0zAZyxuNjVIAxbkJoGtPs1I7ufso0XBZf6Mgy5+W9v5Nv3z9KmExxV451eBUQY4XzagfHeoevcccHSgrZnY+EmvN3VgDPdp3hCmvSSCs87R0jADSKTKfrroqNBcLxZUpcWeqMRAhOMyeAatAJki/IHCCkKcZrOo8U9ZC9+T0u2+M6t7bOOM/X+kv6fnyyD7frTSaSinGB/WU//2hNfEJWm3XhCKpnxOgdcNorBbFl9twhaDD6ij9kcGMkqSMWrdS6d7+conMaAdGChfoPLzlzo6erUpnni6Sd3tthG0tqVIX2sON/0dOKmJS9WMNE/gFOCOT0aglZ0jSLaFoqZJw/nLaMR9W3DJwVr/KI8mBdv7eFVdSFIu3JD2mXYpHML4LW+qRMxDnjbVwbWapuY5lq1ufVIMRfeUoK31kvxxsO68TFpS5d8gXj4fNCtbFBV5FDkRpBTIYJ7gQhnWgm52z9l6nZCFQbdqYDjfpW0x/Wesh/ayk4prdLRNKAfPzDIRecP7gUHZncvgN5OmdxhESDj7rdCQIONllTlhjwcYgHtYo6q94ut8ghU0AuB9H2tZ3jsu2GB0XSx/oEvCSRgqK38SHMe3hYI7wsdVkXAnOQasr8V/VxcNmjy1BwmX5PA3K/NDOYfGZ4Vkx6S1FkbEFh63Cop74ly2YdlTFtJZz4wS3OZnris3oTLb+GPlWfuMUlQNCgv2IdiZQteOCDk7bu8Gv3hPGu/EOEjR90n3Hx1qOYxwphLHpfWbH/6AMOKT0/IjFpgo85g3WBjCiWsRDWnOa3NISHU9f5Mq4xs4CsCEE/vxi0JOj6EiIa3SJlquyEE08l4iYPazOKC3nCwW+SeYkOcksc++EQtzTV7WNZ+DyqfCddenT4aUeMmrqD0VFWfxgnbhafnXVN76pxUs2BKcpJUdZwUl2yOjKXl8iUF9hRu2Jrx1KEvaumWs9jd58Qa6c+4pcUc1Fs0+W4FapwC2dvwm6jq7Ini+R7Zs1wogVX7s1NW2uGg3xm+ujRZzrfETeE4VAw5wTX46ZFe0xVPXlS8Kwh+ykiJ4XLgt0EA5XCN1c5+3TGqGrXTixdF0xrr04eTehD1Y7JxoSa7pf/7ZHsgR/vKUD9jgn9anbjxo94BRh0cH8kxWwnWIxDStN9u5bRJLKlz8xZw2Y1v4XyBLggpmv5Brx4BS1ihfrPjkzbeH3w0xMhxniHhF127JqpnF403B2JNj1WEvh5PAGoJSguXbhbl/DD8OOfTz1fcP0jluvXL3W8Gs6tZ+eD6CMLoCmLpwIfSVFMZre2WOR2NKwfRvU6Pklh9zPVSh4h/tuwmbNYbhVFy42zNO0R4bq2waF+FuLQrgG7nCqrZPSm/AejmSCF9YpKeSjPnPIpj5IUoClAiry1uKdV6HBzcE/Wh+qEwSYL+j7TWmvKGhC7eYt3o5TVVjsaaWoCAEQTp4J8+hLOk3lroZQMuTcoxAue9tuFoF12kBK7Xn6cCK/rGxIXAxjAihJud93OsYYzI9imvUU8UYexTr5SFtDPxmUuhptZv6HdtsNzAUI4M3K/ojp2Q5sT8kaJFBub5xCLk9BaKb6zomuifwd7IkKcA2pTuETSp5H0vHhuTk9L2mVm9fQOT+IXlSJp4SxcbImdB87ocf6UzGgG3fSHPnu0gzmEDLlRFzWbUolEGeigYXsuYul3er++tJwowmzRDhJMLKZd+azfX4nMudVd8efYZy01S1gpgSykHsGmzEkHOqBKihx+1dgnKCmaiMcCxLjIOXqUwNe+fXwfEN063Q/IK/F4MGUavKEU44O8fpBPLw9mzh/xWywcCgSvG7T8Q+gDyWMq4LsUu8QWkZsP9DzXMZ5HOSoEB/YyBVAfp86YWEGk1oiZ3mws7z+QlDJYrlUcsXGj+TpOX8aEtMqxNTSUwA5UJpGVdcV8Se7GQpF02So3p1iwtxRlxCS5VonEIqUGK5yx8dyU4G3P/Lh646nE1BhmpUIl+JbTNhdPPoiw5zEgK9m0BMyZUCOx9iqWUC4hGMZRY24wO5NVxPcAc4CzvwLSkqySymnQyNRnlXS0PGH6I6Mmn0vQvxV3+Mo4ZBGD3wfX5dqTBaS+zwpYdaNL4R3wVBIChUQdfb8DuIe7j3vfNVVg4wi7s82X69VqRZ1EU1T/rC4wLxeTcXhLybxDbVRPliHXOvNK6hSOgN5odV5alYw376W4gYC5Hj0agduHignIfodZeiN17t+ufRauAdgo357CNPW5otdC9VR4LuUsH+VytiEtpubWiKaLPrOz7thyiZhXCBGY5L/2oSld8BrZpHCNARCh/Z23Npgw6XejiKu/OBDh7xCZi1cGD0R/GK05/ASzvrXcblp6xZBfKOh/E53k+9K3WmDYth7r23hO0XUbFxU4949TCvAn3OLbCBRu+zv/W+sZf/a2s4DZDINBs+tizGXOV/Mi58VyQmnPk7qSq5i3jNO7C8UmWXhxch3YBcsQ1AvQlhVUs1lC5BSjaVQeZa9HRUfsJ7D2fygD6ysUJVxnh1v1v937WLgeLWg8sTdsYzXc5AbSFvGl5Y0Blb+w+xNxmGySaZd3H8hbzZRSXAtJoeC5gWplt0hMrUw/n6X6h5KOfhS51JiIeyY4yYeVVaw9Z37euqSSlMXEht0VUKmrO1eLRwX0XLgjZuSd8FB83VoJ7zy5YCZHOIaDlKH9kDVpA5pY3pK5mVwne6y0M1Z+BxkouCIEWxtj/hZ330U2Gl3kCEpLy2aeV8h8DTzLMELr1AdbAK2zz6RGCosF/K22Lsx6J5ULYEzP/ChUIjywKa99MQf1Wq+KEya9HkYQfY2lhSLJPRnzvkEtyaF4eGkcu72X+YkbE4tSgCZnt/AixOOBK9+b2yJ1TI5QQ3JZO7xj++n3kYxSw1VGlgoeaZycY206mjWZZ/3Cbq3gnRi2CENR2DnSHgCRiiBdkgJHQiprEOyFTmPJ4P2iJs7GbdZgP79ydaM1xA330rzzvb5Q8rsTT22HsFs7wYUmVeCKGH48AqQJI8BG8a+6Hkr128CKtSI52iGonroPToQdhry1PdbxwHNt7gySTYZ4orG9E7e6ZguF4+YgWEKrf2atWExZlDM5zvE+bNbfHam1k2voZMvjWat9nMD5UkfFkEaGo0HGaWG5E0qsaVopbc8pQAqKLFgJcVc5fqnB7tx1jmhvrUl+tUj6C6M7yAEcx8Fv33h7ZJ+l6NIC8nqaVhj4YQM0tcqdQPytrE2JCNKgpV8JDSHT2tL3l4Ngt2DJSVEI2neiWyv07BbA8tto9TOoWr7gfJRMJJfhhB23HvmRE9/MOsznMjO0eOoGpnoH1oA3wxF9qWSvACnp8tbBKcZuoJefQR2ND+jh8hlSoc1yYODtFy0oAZSMWf5rYPXIbsH+ORpBvDd4898YRKwFl3P9z2rZUALyNX+LJhlMtkZ7/wi9JguXXif7rOhtPtWQq3tN29a5+a1uylgpmopAVh6aBDBjWyH7+ZsdxTrsWfSAGz+UaGIF7AU1OiRV/QjWx0ZKTxKsaiCZ+tyHSXej+phEViuMDVYr7b0qxGSDD8+Axs5wJiIPVIFOJG8y8qyspz+QbfEE9yd50gOMWD/RcQ0ifCDH2skmCnNxhPWgwfAjlVjmlsY125kzWZr4LuF+lwGMOeOBkdcrY4KGksUtOOJA+GY9QsyLDsejH9CGMJ+rMvtiFF9WfH4tJa/jWTpyKqKtFcb0CS2hdqjLx3UjSPzNC7IAq8KTegfk+dY1eNTsp3dVYW++pcZi+w6K8YgdgzIo2vRaM+Wgdut1qpcIcGzelC4vwCu/Fi7KMy3q8Jik909Mc6fjOuCIf4oz8O6vSbyhVL0VbxlEX2vSRzCUHN44Rx5lwbQvFdU3p8uaAdSa+e3/p/w6x6fuEUx29h0Lde45S/nfrJQ7739xb5jdBi5n9filh9aqhcRcgfAjVJySqeQmF27iwPftHDQTUUpuCGbxhHt9OgyQj0fkvO0umBHN9bNLugCdIBcn/gbdtu4Nloqt8pKEAUzxp5zC5XIzcuqx4SgyTtptVzu1FKrefNDVunFl2tWZg0UznfAmVnOIjWkEEW0EQRs2dztBm8EkB4o6wd6LTVdYW9vtKv2EORgGJVl/xhaD1HAALu0bUcX7TPYUIhzz9F4DegTBuxh44Aksp1cXCAa2DD+AWx5aM3ZlTCwx/b61g/r2Fke0UQTecZodIYF5VS76MFg3xKWiLax2bNCF1orpUAk8uS1FxlcE7gJBIlwdGgJFBg95Lh3kqO43kY/tWqR1ZDgC629sHWptuott8uyuFvfp5dJVEUAGspRM/zMkwNE/jA9iXgqo04A47kZvDxemM5Veq5FdiJzRFLAahP+DxiVgaLb3FyRPAdivvi3Vqf6UWg0VldIxim2LCmHwpXMWRM/Nt40LDlppUUbTmics8Tsxx4FWccSlkHShNQAZpIHqrib7IgdVkStBYswEPXkjOTnBOCT0RwUJJfYHe6wo/driFE6RaBaiJBh0NlaJ/1RXyx9XA7Z1tAsbml8pNWlccoDzV+yJAYTvu8ZZCi5wgyOwS1DPj2DJPyzK8LZdWEy4RMXZIHd2K9b1o/XQZQxcOB0r0X9EwLCa7IdkAJG43tiJ8AKRL4ScamgxSvHxaSOPWtW5bx1CMGMiomSo39mu6A7MpgrjCBn+yw7NXNSdpdC6q6qxjjGT6zWP13GLw+G4q3b1sBhBaBM6e1eBBWvj4pbombVJJHsaL9jBcaI9tKIIsqDpp/cH0Ki5YBi5rzN9dmO9HJACpRfXQ+QmY8gxU6N+10DXNWnn+X9MNMBktdKHm944M/X9RixFQuvuLO4Us+NWLbKqB6IezWad8zNCZdTAq84rOgv0kTbS/pwWg0WYYEENkZzXwk27SjXW1NcJrw21tF8AnCjHmz8SRcn4LMti9lI7vYBJ4iA4XMGNcySIoeTmMU0d5Rn7vF4S/K0nUEOyw7fW0mVTaiF+qjFqk8UyZMmVKWaWK1KARsnCoW+I6m0rag29u3VhA149bKswYXCntbeo6l2r1y22Qq2zhNqQ44Puot1yprJR9zsl6YDgfEDUGB8cn4174YEcdEYdB0tsyO92ORdNQkea7NNYlSnngLsM4dSNMbzRkW3kF0gQDoQtRPK7MvwwrSJRteO/8SKizLQ95lh8McOc/7kN2TSZIJIE82COiIrJCqDJUxv6mQZbZAiQXnLSby1kR/yVcEsRfHpydAcNu5UwBS5Car281ZzKWSLIOYTkIATnd700HRy9H73+Ut6BfRuVcTuJDQFDFPqV3OlT3ximX2NhALGRUudmJOOcDe5euKrUC0ig5XNmR/O3phThUNo0QRFpOyWXVDldR2yUcptUrRELH2szdWBhAkfYjj/V6Td5GqPB53PDROaGKk5fB0tZYu3XcemO8YK3h+oZr32jm1rnQLCmwT9dM71DNIkzPrPCQjrad+bc2xhtsLv3cFewmWXfnt0cVuHULutr7/CGOlaAm95WAgxuCC2Zow7o4fT+pV/YocEGKUaE/yU9YBuutpIQUxm8+dK81of//Vw4qzSLzjdah16eV2nnXy0kIUHd+NrotTlUZWqWl7wV+ctXAXCbLQ+12CMzPb/uVAFgVDDaQI+QOkHM4bj03il0nfE91hYUKPP93BdZxFq9/sZFdnAW1A0iNKRx+r1wBcH9Ux3Q6gPt+ZUOfO45/3PsMDW7Qg80/k672alfSEhTrRAamicAEri83vbQSKQ5NzA+PYD+C4wX09MzsZicnAgHI0aUqcEC5AAun3mcurn7mYn6EYYL3VnJuCxYnE+sfJQKTS81JrDaR9CHPM47Nk35ynReRf70zn63EVjNq74G98Y+njfAnLnsuWgAjU4Xd4nBfnQjNqB5Tw5LHds0ZUt9qRMstvNSNJHSSbHSXeNsLWCGf5Bc6lZoN5RpA4mc9M5aDwZKwxv9bxTtV8qrhSIPEqU1b8NijgvXdY8511l4JBnSLP7gkYZaQfpjdeper4yVMj6cInL1DNKt/yBddK8BfxTznSsnDjJuQdUB8hqxdz24EWsMQ2VOVwBUJrY7iejs7xO/cbJBHGVYp6udxoV/+ZVP/1AVu8iz3QC+9h1U4h2Hze+PggUCy0UfuIPGCOYaLh+bF3S+irlZnSxM+fIXdIKYnfcreCfqo4lZi9M1+Z+BmeWiecyvKPL6brz4AUSo9SEWFEX6rhbgqVoviKe90Bs9DO0dQGT5DYWPS/BuGagHXNG+SKVsbyMp7IPDdQ0yo10ZjW28N7mds3uyRlQZz/1Vd3TtJOlnYnsgGdvawkkKnMkTnt8L6eq7O8duUdR1zRG2aNHdkH/YIK7qmIQBOrJhm6XQjg3X1Nj7RgoPAuzFjGWZ+1/Wpxoglpb4G26oGicv9Tqb//dvlnyJUczB0hCpm8icPfITsju8BB4ymShsHdH1KeWxo+DZLDwqtnZlCxnfFt+2Quzc8lffGEGy/iuNpbTIdgbtIf1NKzw48BI3hDYrcX0wWTniIF0/1k0HcuNtqMFuErbvQay669jmYMmwn3UnDlsCysy4OlzM6C3YHHLB7UajaAZtIn8mY+SCnDlDO7RCh4LwHIIpOgSl7PGGV86O31ZrPfbAtcVl9wnCA3LyM/a41SuVrgJm5+iIPAWiqc7yAkXBGMzjg/s7Um/kLXqJA1IADfQhwZKZl5U8YywKr8eLHth46gdliYw9Scu37k0dDqmmqm9mVWl7RIfG4rkfiVSnpgyIbeP7LYIT1eB3RWXER+2uTg9wetf6bfooH8/2wDfCTI99iY1cqGOSDBPcw/gfBKhnXjdt4vicITrKo/3BPOM+deTRfydo5UY3Hy1cIvS6NczW2vI8+f75FS3OZ1rGgLrKWd+aabpHKL9fiyQNJakYbQbCF/fCnCYVtFUJv87Y6tTDgqFi4tT9S3zr4XrB7fqvkGVAfNKcaF5XpbtLwghzKtVKVosyOaTxm3tIU3xw55kstZ2uLWMzVU/gbd2WbKxNjpJ8xQHf7ZJgeNbjDbObKLyLQV9DNHBnrCw0z2xSJokF0iZ4MJ/hWU6ahgCzlSnZzpIpzFGq6a4hf4KHE7HJy8DJ6ixvP1O75PkP7jp1cpVoMVUJirvyXp5XC9alZ5c8TGFFV89Bq3azPMCzBBR0XeOo3W1ZBEVxMQ9P9Gi1q5/FFdwsPmx789j41Qo0KZfpVSxvHudKAtYJM7XOc7eBJdlFxjt/+EJg7gwip4T2YGHa32Tx2IAgl5LCyP82ZiuWx4ySoA6X3DPwYjvMWHEqwCPknEPhZZqBcYuqGsVjbM6TcNOQUtg/PHBX7wXUX1psTiFuzs1ypFdoBlXVnq3L/lIU8Lx0n1VWPYtBycHP+lhBH8YaxbdIpQ1uJCHNu6okfnsji2LCwtiHUo=', '8af106f1');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, '', 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, '', 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0),
(4, '4ac81ee1', 'cdc15f62fbc2a575515cc489a7050480', 1429279357, NULL, 0, 1, 'user', 1, 3, 3, 3, 'status', 'INticzZTHECI2CllQIruL3UOa6ZCtkgJc1JV1GKt1zI=', 0, 0, 0, 0, 0, 0);

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
  `status.id` int(11) NOT NULL,
  `author.id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `edit` int(11) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1),
(4, 1429279357, 4, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(2, 3, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, '17ecd421', '', '6d019b64e1c1245ea463de79345e52b3', 'gtVogaCEIvsnhCZxN0AFIKb1Sito/eSHqz6FAv2SnGLgs5G5rHAXhV1ahhwak5eatf9lS7Nm8aHDYZYujBoepQ==', 'image/png', '005637ce', 'eb8cccf0.png', 1429192107, 11900),
(2, 'drive', 5, 1429192118, 'dfd8dcf0', '', '0', 'R/4P0nc+HvgI7R6sHVpke/pR0gZsthC3SSO08snJJUlxXcYa4r1Ba1hdoCA1Q7cx9GqwgDrRVO4r/CQ6nmZKxQ==', 'image/png', '374bd3ab', 'a36eb7ae191dd1692e80e2cb2783bece.png', 0, 0),
(3, 'drive', 6, 1429192346, '4745168f', '', '6d019b64e1c1245ea463de79345e52b3', 'nwpFLm8P6XLAmfT7HtKvBiAkYmLmC6CDeFg869MYEsKiZiJdk9ZaxmFL3rDU42VB35qUiCvwjXoN11j0eDO/0g==', 'image/png', '76658e7c', 'ed6531b4.png', 1429192356, 11900),
(4, 'drive', 9, 1429192361, '317e296a', '', '6d019b64e1c1245ea463de79345e52b3', 'eEuFnaBM5gvAiYNVlGUdeltMUxtvlb0CysRxRw5m2xmvjrG6pUUDjpZQikvoiZL+6ge7196d2wRGvqYS5c+Y0Q==', 'image/png', '8e2418ef', 'bbb55a2d4b12267706ddfc90a4d67aaa.png', 1429192377, 11900);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(1, 'drive', 8, 1429192096, 'a2feca4b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'fYkUFHJl6X/A3GtysbOtGYynlyy8Fzw2yy6ZmrfvhJyr8rCZrUTbl/VdA/o93BoBFKICNyShi+lg3abAFfPssQ==', 'video/mp4', '42e0c9d5', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192096, 47959396),
(2, 'drive', 4, 1429192117, '2f26626b', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'pQom57rWOXNSbzILKf2V8PpP4VnGRObVFTIaLv7ag4xk5eYIR60YdncVnA39a6UlUMte5ZnSdBWpal4OVO+zOg==', 'video/mp4', '9195bb7a', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192117, 47959396),
(3, 'drive', 5, 1429192346, '34bf7db4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'XpgoduXBmW1O6iMTQnuspP5isQ/7NPSrbe1ZL3pfYsnavFZc3bCXa7cOW0fpdfjZYpOtIFCnkU0UZl4Y/9f9VQ==', 'video/mp4', 'ddebafeb', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192346, 47959396),
(4, 'drive', 7, 1429192361, '42be53d4', '', 'adf7d74f3b3001ac7f3d14514e57f87d', 'ecoSXvjCbxOWocg3yV5BEudrkp1LwlQRiSntYw1oBnNJ8aGQNCIbnT9b1v8M3j8wM42fZk24o/l10l/LTG+xng==', 'video/mp4', '001c4826', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1429192361, 47959396);

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
(1, '51e97042', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'lamhieu', 'lamhieu@giccos.co', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sH4sSk2ab2euudk+Tt26k03x/Ye75GTwpoZJKe8Fg4Y=', '0946083033', 'Lam Hieu', 'LÃ¢m', NULL, 'Hiáº¿u', 'lh', 1, 2, 923871661, 'm/d/Y', 1, NULL, NULL, 'en', 'Asia/Saigon', 'I created it. Giccos social network.', 'I see tomorrow.', '0', '0', '0', '0', '0', '0', 1, 'wall/lamhieu', 1410787532, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '3', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 1, 0),
(2, '3d15fafb', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'QHqCu+ywO6slZ22otoJGVpV9TO1CJiJWWcxMbiO/kTQ=', '0946083033', 'Truong Tuan', 'Truong', NULL, 'Tuan', NULL, 1, NULL, 923853661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Saigon', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/truongtuan', 1414757503, 1, 1, 4, 4, 3, 3, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(3, '984c3d3f', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'thainguyen', 'thainguyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'oRNqTlcTL0ngnzvIH+vZ9U1+xeZT4QVghrwCcHL0e1I=', '0946083033', 'Thai Nguyen', 'Thai', NULL, 'Nguyen', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/thainguyen', 1414850443, 3, 1, 4, 4, 0, 0, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
(4, 'e84211a9', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'wH0xYlKOrs1MzGEqHkohSJD82YMUw6rewLBIxhsAsUQ=', '0946083033', 'Tran Duong', 'Tran', NULL, 'Duong', NULL, 1, NULL, 923871661, NULL, NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '0', '0', '0', '0', '0', '0', 1, 'wall/tranduong', 1414905982, 3, 1, 4, 4, 0, 4, 0, 0, 3, 3, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, '1', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0),
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

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
(76, 1429274432, 2, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 1, 1429192118, 'a563e8db', '183539e54667dddc02d46f94bc0d43c5', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'a36eb7ae191dd1692e80e2cb2783bece.png', '0', '0', '1f7a30ef62efff22dc0582d6ea60ee6e.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '374bd3ab', '0', '0', '9195bb7a', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(2, 1, 'user', 1, 1, 1429192361, 'fb7450dc', '63154d5661f774fb7d2d11701d466aa2', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'bbb55a2d4b12267706ddfc90a4d67aaa.png', '0', '0', '5450cb8b869148499855abfb22689b0f.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '8e2418ef', '0', '0', '001c4826', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 1, '6839d58e', '', 1429192117, 'Khac Viet', 0, '', '', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1429253663, 2, 'user', '1', 1429882876, 254);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(1, 1429192847, 2, 'user', '1', '0', '0'),
(2, 1429248743, 2, 'user', '1', '0', '0'),
(3, 1429252108, 2, 'guy', 'c52e3357', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=196;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=193;
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
-- AUTO_INCREMENT for table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
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
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
