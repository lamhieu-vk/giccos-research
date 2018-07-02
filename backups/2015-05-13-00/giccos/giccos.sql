-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2015 at 06:57 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=568 DEFAULT CHARSET=latin1;

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
(50, 'en', 'username_or_email', 'username or email', 'false'),
(51, 'en', 'type_password', 'type password', 'false'),
(52, 'en', 'pages_accounts_register.title', 'register :: accounts :: giccos', 'false'),
(53, 'en', 'pages_accounts_register.desc', 'create a new account for all services', 'false'),
(54, 'en', 'type_your_info', 'type your info', 'false'),
(55, 'en', 'checkbox_agree_terms', 'agree to the terms', 'false'),
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
(429, 'en', 'male', 'male', 'false'),
(430, 'en', 'female', 'female', 'false'),
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
(485, 'en', 'do_you_want_redirect_page', 'do you want to redirect the page ?', 'false'),
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
(530, 'en', 'write_a_reply', 'type a reply...', 'false'),
(531, 'en', 'please_recheck', 'please recheck', 'false'),
(532, 'en', 'go_to_home', 'go to home', 'false'),
(533, 'en', 'redirect', 'redirect', 'false'),
(534, 'en', 'giccos', 'giccos', 'false'),
(535, 'en', 'secure_by_giccos', 'secure by giccos', 'false'),
(536, 'en', 'remember', 'remember', 'false'),
(537, 'en', 'active', 'active', 'false'),
(538, 'en', 'forgot_password', 'forgot password', 'false'),
(539, 'en', 'active_accounts', 'active accounts', 'false'),
(540, 'en', 'get_password_missed', 'get password missed', 'false'),
(541, 'en', 'create_new_accounts', 'create new accounts', 'false'),
(542, 'en', 'login_to_accounts', 'login to accounts', 'false'),
(543, 'en', 'type_username_or_email', 'type username or email', 'false'),
(544, 'en', 'type_email_address', 'type email address', 'false'),
(545, 'en', 'confirm_password', 'confirm password', 'false'),
(546, 'en', 'retype_password', 're-type password', 'false'),
(547, 'en', 'check_terms', 'check terms', 'false'),
(548, 'en', 'that_is_my_account', 'that is my account', 'false'),
(549, 'en', 'confirm_your_account', 'confirm your account', 'false'),
(550, 'en', 'get_password', 'get password', 'false'),
(551, 'en', 'pages_accounts_getpassword.title', 'get password :: accounts :: giccos', 'false'),
(552, 'en', 'pages_accounts_getpassword.desc', 'get new password, find accounts', 'false'),
(553, 'en', 'pages_accounts_active.title', 'active :: accounts :: giccos', 'false'),
(554, 'en', 'pages_accounts_active.desc', 'active accounts, use all services', 'false'),
(555, 'en', 'type_code', 'type code', 'false'),
(556, 'en', 'code', 'code', 'false'),
(557, 'en', 'confirmation_code_not_exist', 'confirmation code does not exist', 'false'),
(558, 'en', 'type', 'type', 'false'),
(559, 'en', 'get_code', 'get code', 'false'),
(560, 'en', 'recheck_password', 'recheck password', 'false'),
(561, 'en', 'recheck', 'recheck', 'false'),
(562, 'en', 'terms_rules', 'terms and rules', 'false'),
(564, 'en', 'repassword_wrong', 'retype password wrong', 'false'),
(565, 'en', 'less_secure_password', 'less secure password', 'false'),
(566, 'en', 'file_upload_failed', 'file upload failed', 'false'),
(567, 'en', 'ask_country_description', 'you need to enter because it will help you to easily find more old friends', 'false');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1431351753, 'c52e3357', '::1', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa'),
(2, 1431448990, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '42.0.2311.135', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safa');

-- --------------------------------------------------------

--
-- Table structure for table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
`id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `code`, `reference`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `icon`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'ChIJ0wPk--NnoTERe6JmxzwUajk', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'http://maps.gstatic.com/mapfiles/place_api/icons/geocode-71.png', 'http://localhost/giccos/maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `parameter`
--

INSERT INTO `parameter` (`id`, `code`, `language`, `value`) VALUES
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
(14, 'notifyPopup_count_limit', 'en', '5'),
(15, 'sleep_when_error', 'en', '1000'),
(16, 'sites_id_time_limit', 'en', '3600'),
(17, 'sites_info_time_limit', 'en', '3600'),
(18, 'sites_id_rate_v1', 'en', '1'),
(19, 'sites_id_rate_v2', 'en', '2000'),
(20, 'sites_id_rate_v3', 'en', '3000'),
(21, 'sites_id_rate_v4', 'en', '4000'),
(22, 'sites_id_rate_v5', 'en', '5000'),
(23, 'notifyPopup_info_places', 'en', '5000'),
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
(109, 'hash_feed_status_content', 'en', 'g::key::feed->status->content'),
(110, 'hash_user_password', 'en', 'g::key::user->password'),
(112, 'user_timezone.default', 'en', 'Asia/Saigon'),
(113, 'user_language.default', 'en', 'en'),
(114, 'user_private.status_default', 'en', '3'),
(115, 'hash_photos_static', 'en', 'g::key::photos->static'),
(116, 'hash_photos_other', 'en', 'g::key::photos->other'),
(117, 'user_private.info_default', 'en', '4'),
(118, 'notifyPopup_timeout', 'en', '5000'),
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
(143, 'default_user_avatar_large', 'en', 'storage/photos/static/user-avatar-large.jpg'),
(144, 'default_user_avatar_medium', 'en', 'storage/photos/static/user-avatar-medium.jpg'),
(145, 'default_user_avatar_small', 'en', 'storage/photos/static/user-avatar-small.jpg'),
(146, 'default_user_cover_large', 'en', 'storage/photos/static/user-cover-large.jpg'),
(147, 'default_user_cover_medium', 'en', 'storage/photos/static/user-cover-medium.jpg'),
(148, 'default_user_cover_small', 'en', 'storage/photos/static/user-cover-small.jpg'),
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
(202, 'hash_feed_comment_content', 'en', 'g::key::feed->comment->content'),
(203, 'boxSuggest_length_randKeyEvent', 'en', '32'),
(204, 'ajax_length_randKeyEvent', 'en', '10'),
(205, 'notifyPopup_length_randKeyEvent', 'en', '32'),
(206, 'ajax_request_limit_time', 'en', '300'),
(207, 'photos_compression_size_percent', 'en', '75'),
(208, 'photos_compression_quality_percent', 'en', '85'),
(209, 'regex_name', 'en', '/^([a-zA-Z_Ã€ÃÃ‚ÃƒÃˆÃ‰ÃŠÃŒÃÃ’Ã“Ã”Ã•Ã™ÃšÄ‚ÄÄ¨Å¨Æ Ã Ã¡Ã¢Ã£Ã¨Ã©ÃªÃ¬Ã­Ã²Ã³Ã´ÃµÃ¹ÃºÄƒÄ‘Ä©Å©Æ¡Æ¯Ä‚áº áº¢áº¤áº¦áº¨áºªáº¬áº®áº°áº²áº´áº¶áº¸áººáº¼á»€á»€á»‚Æ°Äƒáº¡áº£áº¥áº§áº©áº«áº­áº¯áº±áº³áºµáº·áº¹áº»áº½á»á»á»ƒá»„á»†á»ˆá»Šá»Œá»Žá»á»’á»”á»–á»˜á»šá»œá»žá» á»¢á»¤á»¦á»¨á»ªá»…á»‡á»‰á»‹á»á»á»‘á»“á»•á»—á»™á»›á»á»Ÿá»¡á»£á»¥á»§á»©á»«á»¬á»®á»°á»²á»´Ãá»¶á»¸á»­á»¯á»±á»³á»µá»·á»¹]{2,30})$/'),
(210, 'regex_password', 'en', '/^(\\S{8,}$)/'),
(211, 'regex_email', 'en', '/(([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,6}))$/'),
(212, 'regex_username', 'en', '/^([a-zA-Z]{1})([a-zA-Z0-9\\.\\_]{5,30})$/'),
(213, 'regex_date_days', 'en', '/^([a-zA-Z0-9]{2})$/'),
(214, 'regex_date_months', 'en', '/^([a-zA-Z0-9]{2})$/'),
(215, 'regex_date_years', 'en', '/^([a-zA-Z0-9]{4})$/'),
(216, 'regex_gender', 'en', '/^(male|female)$/'),
(217, 'regex_phone', 'en', '/^([0-9]{9,15})$/'),
(218, 'storage_cache_folder_path', 'en', 'storage/cache'),
(219, 'hash_cache_image_path', 'en', 'g::key::cache->image->path'),
(220, 'hash_storage_path', 'en', 'g::key::storage->path');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
('OgboPvYE9KmV,,HXcyJ3PKvxXNdAe7vlOrE6qTew4Ja', 1431536199, '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', 'acf7c2fb');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `storage_cache_image`
--

CREATE TABLE IF NOT EXISTS `storage_cache_image` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_cache_image`
--

INSERT INTO `storage_cache_image` (`id`, `time`, `expires`, `hash`, `path`) VALUES
(1, 1, 1, '1', '1'),
(2, 1431532904, 1431662504, 'f0151de8154acd6514af9132d0a727fc', 'B66dzgAHoMo44TqIxjlQHZ73bRNn2KOGWbDbfOuW4SEXIzND1MJ3TrHqwO267H2m3c0f2M7Q7RerPYR1+8B2Hw==');

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
  `icc` text,
  `mime` varchar(40) NOT NULL,
  `display` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `secret` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(40) NOT NULL,
  `password.hash` text NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `firstname` varchar(30) DEFAULT NULL,
  `middlename` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `formatname` char(10) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `gender` char(10) DEFAULT NULL,
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
  `activated` int(1) DEFAULT '0',
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `slogan`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `live`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `verified`, `dead`) VALUES
(5, 1431448099, 'adbddb2c', '9f1d2b46faf600704c3e3f0b8741d675', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'NlnzyvYoTkKBUlzFkgp78qSYBLySCj6X7jjqG4ylOzE=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(6, 1431448205, '8cf57000', 'ae4e4b63a02bf76a1d9dfabc7c946e3e', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', '/J13BttHqQzEdxvJcE0U1NQ0Zh3meXHdLnZOIvEmEYw=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(7, 1431448265, '4f3e603d', '6942ac59b6fede37dc777b8317fdf751', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', '/FVIkdvojCZDelpOywW9c0llcqh78Whc6ztUZqJQbTA=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(8, 1431448456, '7da0feb4', '84b5d5a26dae314b0400435258269f1b', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'WWXOT3BVq2ieHf6m8bRuD+RLg2Lp41ZDPk8wZcEjIic=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(9, 1431448487, '72fd14b0', '3bc41f10078073cb2b5118af5b104957', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'w2QTdlNvG3BTMBOWvUjdnS3XcCTmKqSfPUFSTrEFrS4=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'http://localhost/giccos/wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(10, 1431448511, 'df489942', 'afa31570ee8152a8bf652bef8584d28f', 'asdasd', 'asdasd@sdsd.sd', 'd8f87265539ce076cf174533bcb300d1d5fbb701', 'dzpzbo8myv302WCk/91kUZiEi5XspnTAdrU5V7Eupk0=', '', 'asdasd asdasds', 'asdasd', '', 'asdasds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asdasd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(11, 1431449021, '8e833e0b', '368bd0a0bf63b9b2eb24e5e38a20bf5c', 'sdsdsd', 'dsad@sds.df', '0cfc685fbf85060b38e78034a0a0a81e60713707', 'nqfR2pevPIIeCwuPGKauyyY180fTlxBuZ0aEq0Wf2yY=', '', 'sdsdsd sdsdsds', 'sdsdsd', '', 'sdsdsds', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/sdsdsd', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(12, 1431449110, '1e55d9d6', '4c45bf7e2436a619476aafa7cb3ac613', 'asda1asdsad', 'sdsds@dsd.sd', '12c0df67744df35ba10c6c0a93eb73eefb597b91', 'K4oIt8TrpsFUHLCzvGktULWOrXCK+NLyC4BRixL5/SQ=', '', 'asdsddsad asdasdsads', 'asdsddsad', '', 'asdasdsads', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/asda1asdsad', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(13, 1431449563, '4a350a1d', 'd8b1ff7db1e9aea676308722fdea9725', 'sdfasdf', 'sdfasdf@sd.sd', '38419dae304a89840014bda5570aa0f5cab782b0', 'UFENQjhsaTniS9Cbq9/Cj/mH5NdHiJbB6Y9k8GE5a/0=', '', 'sdfasdf sdfasdfsdfasdf', 'sdfasdf', '', 'sdfasdfsdfasdf', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/sdfasdf', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(14, 1431449623, 'd3eba551', '853456af6de014778a55c8079829b52c', 'sdfasdf', 'sdfasdf@sd.sd', '38419dae304a89840014bda5570aa0f5cab782b0', 'RmMjd59/scrynSoM0fSOwdwQMtISITO2iwwtrAHVQJc=', '', 'sdfasdf sdfasdfsdfasdf', 'sdfasdf', '', 'sdfasdfsdfasdf', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/sdfasdf', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0),
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 3, 1, 4, 4, 4, 3, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '1', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1431447796, 2, 'user', 2),
(2, 1431447958, 3, 'user', 3),
(3, 1431448069, 4, 'user', 4),
(4, 1431448099, 5, 'user', 5),
(5, 1431448205, 6, 'user', 6),
(6, 1431448265, 7, 'user', 7),
(7, 1431448456, 8, 'user', 8),
(8, 1431448487, 9, 'user', 9),
(9, 1431448511, 10, 'user', 10),
(10, 1431449021, 11, 'user', 11),
(11, 1431449110, 12, 'user', 12),
(12, 1431449563, 13, 'user', 13),
(13, 1431449623, 14, 'user', 14),
(14, 1431482041, 15, 'user', 15);

-- --------------------------------------------------------

--
-- Table structure for table `users_getpassword`
--

CREATE TABLE IF NOT EXISTS `users_getpassword` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_getpassword`
--

INSERT INTO `users_getpassword` (`id`, `time`, `user.id`, `code`) VALUES
(1, 1, 1, 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `users_guide`
--

CREATE TABLE IF NOT EXISTS `users_guide` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`, `ip`, `platform`, `browser.name`, `browser.version`) VALUES
(1, 1431448459, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(2, 1431448489, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(3, 1431448532, 5, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(4, 1431449023, 11, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(5, 1431449116, 12, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(6, 1431449566, 13, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(7, 1431449644, 13, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(8, 1431482044, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(9, 1431494182, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135'),
(10, 1431535061, 15, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
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
-- Indexes for table `users_getpassword`
--
ALTER TABLE `users_getpassword`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cited`
--
ALTER TABLE `cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `friends`
--
ALTER TABLE `friends`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=568;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=221;
--
-- AUTO_INCREMENT for table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `photos_faces`
--
ALTER TABLE `photos_faces`
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_cache_image`
--
ALTER TABLE `storage_cache_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users_block`
--
ALTER TABLE `users_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_contact`
--
ALTER TABLE `users_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_education`
--
ALTER TABLE `users_education`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_faces`
--
ALTER TABLE `users_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `users_getpassword`
--
ALTER TABLE `users_getpassword`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_guide`
--
ALTER TABLE `users_guide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_login`
--
ALTER TABLE `users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users_remembers`
--
ALTER TABLE `users_remembers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_workplaces`
--
ALTER TABLE `users_workplaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
