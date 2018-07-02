-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2015 at 03:02 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

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
(194, 1429192377, 'user', 1, 'add', '', 0, 'status', 3);

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
  `token` char(40) NOT NULL,
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

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `secret.original`, `path.original`, `file.datetime`, `file.size`, `codec`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 1, 'user', 1, 0, 1429190446, 'f8934a6e', 'ss', 'Láº·ng tháº§m.mp3', '', '', '', 4, 4, 4, '23ac7f8ce645aec0e94a5e0700d9efc1.mp3', 'd31ffd62f049fdd180017baf0e0634d7', '0536ef93', 0, 3201024, 'mp3', 128011, 200.045685, 'audio/mp3');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1429190453, 1, 'user', '1', '0');

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
  `token` varchar(40) NOT NULL,
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
('xIxIe9vBXvC2f7tDxqRNvIcYEaXDOOhzGw2qCZe,YWd', 1429275698, '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', '6be43cea');

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
  `token` varchar(40) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `token`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, 'b80b45dd561a49e2e853452cfee1f2f9', 1429190446, NULL, 0, 1, 'user', 1, 3, 3, 3, 'music', 'G1RpCMV9750jxmK5gfk/YJshr1UPZOvQ7XklJTQJXOE=', 0, 0, 0, 0, 0, 0),
(3, 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 0, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1429190446, 1, 'user', 1),
(3, 1429192360, 3, 'user', 1);

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
  `token` char(40) NOT NULL,
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

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 1, 1429192118, 'a563e8db', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'a36eb7ae191dd1692e80e2cb2783bece.png', '0', '0', '1f7a30ef62efff22dc0582d6ea60ee6e.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '374bd3ab', '0', '0', '9195bb7a', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807),
(2, 1, 'user', 1, 1, 1429192361, 'fb7450dc', 'Biet noi la tai sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, 'bbb55a2d4b12267706ddfc90a4d67aaa.png', '0', '0', '5450cb8b869148499855abfb22689b0f.mp4', '', '0', '0', 'adf7d74f3b3001ac7f3d14514e57f87d', '8e2418ef', '0', '0', '001c4826', 0, 47959396, 'h264', 360, 640, '0:1', 928743, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807);

-- --------------------------------------------------------

--
-- Table structure for table `videos_playlist`
--

CREATE TABLE IF NOT EXISTS `videos_playlist` (
`id` int(11) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
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

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 1, '6839d58e', 1429192117, 'Khac Viet', 0, '', '', NULL);

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
(2, 1429253663, 2, 'user', '1', 1429880498, 214);

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `music_views`
--
ALTER TABLE `music_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
