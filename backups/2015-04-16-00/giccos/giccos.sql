-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2015 at 04:01 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=498 DEFAULT CHARSET=latin1;

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
(496, 'en', 'inFeeds_null_notify_text', 'there are currently no status on feed.', 'false'),
(497, 'en', 'inFeeds_null_title_text', 'empty contents', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
('ena2j5DvvA,BilEISPNxzSJLEAMzj,0qniALbEI5rwf', 1429192904, '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', '74be4c66');

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
(3, 'c6050b19f1d6d90118b52ff588391123', 1429192360, NULL, 0, 1, 'user', 1, 3, 3, 3, 'videos', 'DGgjQ+jXW7pnPUVwQaksCrMBnaEzECJzMw82SN5AFnM=', 0, 0, 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

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
(72, 1429187227, 1, 1, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', '41.0.2272.118');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(1, 1429192874, 2, 'user', '1', 1429797703, 186);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(1, 1429192847, 2, 'user', '1', '0', '0');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=498;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
