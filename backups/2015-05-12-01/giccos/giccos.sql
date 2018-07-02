-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2015 at 06:55 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=566 DEFAULT CHARSET=latin1;

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
(565, 'en', 'less_secure_password', 'less secure password', 'false');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=latin1;

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
(109, 'hash_status_content', 'en', 'g::key::status->content'),
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
(202, 'hash_comment_content', 'en', 'g::key::comment->content'),
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
(217, 'regex_phone', 'en', '/^([0-9]{9,15})$/');

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
('eylG5IuIDDn513Co2YsN9LNCrWnIAUV,-ySA104IzD0', 1431449544, '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', '7742bedd');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('FHkVzpfshNvctZconwmsFbjDvu9O9qCueH8sOdp3NH9', 1431449056, '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', 'f7416ff1');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('oex8b5fT3589TV,sB1jY0U5HpjA1J0dh4Z1PrJY7hTd', 1431448987, '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', 'f6f05972');
INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('vimUYXGSHv2lF1W6lfoI0lefGzcIQ5ApYWpDmWiOuWb', 1431449647, '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', 'be570a48');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

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
(14, 1431449623, 'd3eba551', '853456af6de014778a55c8079829b52c', 'sdfasdf', 'sdfasdf@sd.sd', '38419dae304a89840014bda5570aa0f5cab782b0', 'RmMjd59/scrynSoM0fSOwdwQMtISITO2iwwtrAHVQJc=', '', 'sdfasdf sdfasdfsdfasdf', 'sdfasdf', '', 'sdfasdfsdfasdf', 'f-m-l', '', 'male', NULL, 944935261, 'm/d/Y', NULL, NULL, NULL, 'en', '', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/sdfasdf', 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

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
(13, 1431449623, 14, 'user', 14);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

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
(7, 1431449644, 13, 1, '99108b06', '113.170.45.132', 'Windows 7 (x64)', 'Google Chrome', '42.0.2311.135');

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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=566;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=218;
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
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
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
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
