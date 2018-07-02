-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2015 at 05:29 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

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
-- Table structure for table `faces_id`
--

CREATE TABLE IF NOT EXISTS `faces_id` (
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
  `age` char(6) NOT NULL,
  `smile` char(6) NOT NULL,
  `glasses` char(6) NOT NULL,
  `sunglasses` char(6) NOT NULL,
  `eye_closed` char(6) NOT NULL,
  `mouth_open_wide` char(6) NOT NULL,
  `beauty` char(6) NOT NULL,
  `sex` char(6) NOT NULL,
  `mood` text
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
-- Table structure for table `languages_list`
--

CREATE TABLE IF NOT EXISTS `languages_list` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `code` char(4) NOT NULL,
  `country.name` varchar(40) NOT NULL,
  `country.code` char(2) NOT NULL,
  `supported` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages_list`
--

INSERT INTO `languages_list` (`id`, `name`, `code`, `country.name`, `country.code`, `supported`) VALUES
(1, 'Tiáº¿ng Viá»‡t', 'vi', 'Vietnam', 'vn', 1),
(2, 'English', 'en', 'United States', 'us', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=846 DEFAULT CHARSET=latin1;

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
(333, 'en', 'typing', 'typing...', 'false'),
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
(520, 'en', 'PhotosEditorPopup_footer_text', 'Photos Editor &copy; Giccos', 'false'),
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
(567, 'en', 'ask_country_description', 'you need to enter because it will help you to easily find more old friends', 'false'),
(568, 'en', 'dont_have_messages', 'don''t have messages', 'false'),
(569, 'en', 'create_new_messages', 'create new messages', 'false'),
(570, 'en', 'messagesPopup_footer_text', 'Messages &copy; Giccos', 'false'),
(571, 'en', 'send_to', 'send to...', 'false'),
(572, 'en', 'it_is_tagged', 'it''s tagged', 'false'),
(573, 'en', 'type_name_messages', 'type messages name (default: auto)', 'false'),
(574, 'en', 'messages_not_exist_maybe_has_deleted', 'messages not exist, maybe has deleted', 'false'),
(575, 'en', 'may_say_hello', 'may say hello with they', 'false'),
(576, 'en', 'not_found_old_messages', 'not found old messages', 'false'),
(577, 'en', 'loading_old_messages', 'loading old messages, please wait...', 'false'),
(578, 'en', 'seen_at', 'seen at', 'false'),
(582, 'en', 'private_change', 'private change', 'false'),
(583, 'en', 'view', 'view', 'false'),
(584, 'en', 'rename', 'rename', 'false'),
(585, 'en', 'language_settings', 'language settings', 'false'),
(587, 'en', 'choose_language', 'choose language', 'false'),
(588, 'en', 'language_name', 'language name', 'false'),
(589, 'en', 'error_when_update', 'error when update', 'false'),
(590, 'en', 'updates_successful', 'updates successful', 'false'),
(591, 'en', 'please_wait_reload_message', 'please wait reload data message', 'false'),
(592, 'en', 'you_may_find', 'you may find', 'false'),
(593, 'en', 'conversation_not_have_messages', 'conversation not have a messages', 'false'),
(594, 'en', 'type_new_name', 'type new name', 'false'),
(595, 'en', 'new_name', 'new name', 'false'),
(596, 'en', 'translated_from', 'translated from', 'false'),
(597, 'en', 'translated_to', 'translated to', 'false'),
(598, 'en', 'comment_limited', 'comment is limited', 'false'),
(599, 'en', 'not_found_family_members', 'not found family members', 'false'),
(600, 'en', 'status_from_family', 'status from family members', 'false'),
(601, 'en', 'feed_family.title', 'family :: feed :: giccos', 'false'),
(602, 'en', 'repeats_today', 'repeats today', 'false'),
(603, 'en', 'status_from_friends', 'status from friends', 'false'),
(604, 'en', 'not_found_friends', 'not found friends', 'false'),
(605, 'en', 'status_from_same_country', 'status from same country', 'false'),
(606, 'en', 'not_found_info_country', 'not found info country', 'false'),
(607, 'en', 'feed_country.quickdescription', 'general status from users same country', 'false'),
(608, 'en', 'not_found_info_live', 'not found info live', 'false'),
(609, 'en', 'feed_live.quickdescription', 'general status from users same live', 'false'),
(610, 'en', 'status_from_same_country', 'status from same live', 'false'),
(611, 'en', 'feed_live.title', 'live :: feed :: giccos', 'false'),
(612, 'en', 'feed_country.title', 'country :: feed :: giccos', 'false'),
(613, 'en', 'feed_friends.quickdescription', 'general status from all friends', 'false'),
(614, 'en', 'feed_tags.quickdescription', 'general status has tags selected', 'false'),
(615, 'en', 'feed_friends.title', 'friends :: feed :: giccos', 'false'),
(616, 'en', 'not_found_info_nearby', 'not found info your position', 'false'),
(617, 'en', 'feed_nearby.quickdescription', 'general status from users check-in this position', 'false'),
(618, 'en', 'country_at', 'country at', 'false'),
(619, 'en', 'content_empty_please_type', 'content is empty, please type the information', 'false'),
(620, 'en', 'avatar_of', 'avatar of', 'false'),
(621, 'en', 'cover_of', 'cover of', 'false'),
(622, 'en', 'location', 'location', 'false'),
(623, 'en', 'change_private', 'change private', 'false'),
(624, 'en', 'custom_time_invalid', 'custom time invalid', 'false'),
(625, 'en', 'private', 'private', 'false'),
(626, 'en', 'change_view_private', 'change view private', 'false'),
(627, 'en', 'change_comment_private', 'change comment private', 'false'),
(628, 'en', 'change_share_private', 'change share private', 'false'),
(629, 'en', 'feed_family.quickdescription', 'general status from family members', 'false'),
(630, 'en', 'feed_time.quickdescription', 'general status by time custom', 'false'),
(631, 'en', 'feed_general.quickdescription', 'general all status', 'false'),
(632, 'en', 'explorer.rows_sync', 'sync', 'false'),
(633, 'en', 'explorer.rows_cache', 'cache', 'false'),
(634, 'en', 'edit_information', 'edit information', 'false'),
(635, 'en', 'sorry_you_no_right_do_this', 'sorry, you have no right to do this', 'false'),
(636, 'en', 'not_allowed', 'not allowed', 'false'),
(637, 'en', 'loading', 'loading', 'false'),
(638, 'en', 'write_something_about_intro', 'write something about your introduction', 'false'),
(639, 'en', 'write_favorite_quote', 'write favorite quote', 'false'),
(640, 'en', 'middlename', 'middlename', 'false'),
(641, 'en', 'fullname', 'fullname', 'false'),
(642, 'en', 'day', 'day', 'false'),
(643, 'en', 'month', 'month', 'false'),
(644, 'en', 'year', 'year', 'false'),
(645, 'en', 'important', 'important', 'false'),
(646, 'en', 'add_a_phone_contact', 'add a phone contact', 'false'),
(647, 'en', 'add_a_email_contact', 'add a email contact', 'false'),
(648, 'en', 'type_phonenumber', 'type phonenumber', 'false'),
(649, 'en', 'press _delete_button_agian_remove', 'press the delete button again to remove', 'false'),
(650, 'en', 'type_middlename', 'type middle name', 'false'),
(651, 'en', 'type_day', 'type day', 'false'),
(652, 'en', 'type_month', 'type month', 'false'),
(653, 'en', 'type_year', 'type year', 'false'),
(654, 'en', 'type_language', 'type language', 'false'),
(655, 'en', 'type_nickname', 'type nickname', 'false'),
(656, 'en', 'add_a_tab', 'add a tab', 'false'),
(657, 'en', 'type_schoolname', 'type school name', 'false'),
(658, 'en', 'type_description', 'type description', 'false'),
(659, 'en', 'start_time', 'start time', 'false'),
(660, 'en', 'end_time', 'end time', 'false'),
(661, 'en', 'not_type_if_now', 'not type if to now', 'false'),
(662, 'en', 'type_starttime', 'type start time', 'false'),
(663, 'en', 'type_endtime', 'type end time', 'false'),
(665, 'en', 'type_school_specialized', 'specialized of school', 'false'),
(666, 'en', 'type_company_work', 'work within company', 'false'),
(667, 'en', 'type_company_name', 'type company name', 'false'),
(668, 'en', 'type_company_awards', 'work awards', 'false'),
(669, 'en', 'type_company_address', 'type company address', 'false'),
(670, 'en', 'write_something_about_live', 'write something about where to live', 'false'),
(671, 'en', 'write_something_about_country', 'write something about where to country', 'false'),
(672, 'en', 'action', 'action', 'false'),
(673, 'en', 'save', 'save', 'false'),
(674, 'en', 'type_password_confirm', 'type password to confirm', 'false'),
(675, 'en', 'verification', 'verification', 'false'),
(676, 'en', 'code_is_invalid', 'code is invalid', 'false'),
(677, 'en', 'activated_time', 'activated time', 'false'),
(678, 'en', 'activated_code', 'activated code', 'false'),
(679, 'en', 'type_password_verify', 'type password to verify', 'false'),
(680, 'en', 'verify_password', 'verify password', 'false'),
(681, 'en', 'account_has_successfully_activated', 'account has been successfully activated', 'false'),
(682, 'en', 'confirmed_please_type_new_password', 'confirmed, please type new password', 'false'),
(683, 'en', 'time_created', 'time created', 'false'),
(684, 'en', 'type_new_password', 'type new password', 'false'),
(685, 'en', 'time_confirmation_code_created', 'time confirmation code is created', 'false'),
(686, 'en', 'confirmation_code_get_password', 'confirmation code to get password', 'false'),
(687, 'en', 'password_successfully_changed', 'password has successfully changed', 'false'),
(688, 'en', 'notify', 'notify', 'false'),
(689, 'en', 'news', 'news', 'false'),
(690, 'en', 'not_found_info_places', 'not found information about place', 'false'),
(691, 'en', 'question_display_content_embed', 'Giccos supported display content from this url, you want display content quickly by Giccos or read more content in this site ?', 'false'),
(692, 'en', 'open_this_site', 'open this site', 'false'),
(693, 'en', 'display_content', 'display content', 'false'),
(694, 'en', 'content_from_site_loading', 'data content from site is loading, please wait...', 'false'),
(695, 'en', 'pushed_content_from_site', 'content from site successfully added', 'false'),
(696, 'en', 'content_notfound_may_error', 'content is not found, maybe has error', 'false'),
(697, 'en', 'click_open_site', 'click here to open site', 'false'),
(698, 'en', 'show_more_content', 'show more content', 'false'),
(699, 'en', 'click_disable_collapse_contents', 'click text to disable collapse contents', 'false'),
(700, 'en', 'tips', 'tips', 'false'),
(701, 'en', 'define', 'define', 'false'),
(702, 'en', 'last_updated', 'last updated', 'false'),
(703, 'en', 'source', 'source', 'false'),
(704, 'en', 'please_wait_load_data', 'please wait system loading data', 'false'),
(705, 'en', 'description_about_country', 'description about country', 'false'),
(706, 'en', 'description_about_live', 'description about live', 'false'),
(707, 'en', 'last_edit_at', 'last edit at', 'false'),
(708, 'en', 'guide_down_line_press', 'hold the shift key and press enter to new line', 'false'),
(709, 'en', 'comment_content_is_empty', 'comment content is empty', 'false'),
(710, 'en', 'pages_feed_general.title', 'general :: feed :: giccos', 'false'),
(711, 'en', 'scan_this_code', 'scan this code', 'false'),
(712, 'en', 'create_by_giccos', 'created by giccos', 'false'),
(713, 'en', 'view_qrcode', 'view QR code', 'false'),
(714, 'en', 'checkin_at', 'check-in at', 'false'),
(715, 'en', 'private_null_text', 'null', 'false'),
(716, 'en', 'private_null_tip', 'unknown', 'false'),
(717, 'en', 'people', 'people', 'false'),
(718, 'en', 'quality', 'quality', 'false'),
(719, 'en', 'quality_custom', 'quality custom', 'false'),
(720, 'en', 'auto_repeat', 'auto repeat', 'false'),
(721, 'en', 'non_repeat', 'non repeat', 'false'),
(722, 'en', 'off', 'off', 'false'),
(723, 'en', 'on', 'on', 'false'),
(724, 'en', 'resize', 'resize', 'false'),
(725, 'en', 'see_more_about_photos', 'see more about photos', 'false'),
(726, 'en', 'null:music_singer', 'undefined presenter', 'false'),
(727, 'en', 'total_views', 'total views', 'false'),
(728, 'en', 'pointtag_not_allowed', 'point tag is not allowed, can''t implement action', 'false'),
(729, 'en', 'pointtag_add_successful', 'added new point tag successful', 'false'),
(730, 'en', 'you_may_want_read', 'you may want read', 'false'),
(731, 'en', 'thumbnail_from', 'thumbnail from', 'false'),
(732, 'en', 'copy_link', 'copy link', 'false'),
(733, 'en', 'redirect_link', 'redirect link', 'false'),
(734, 'en', 'this_week', 'this week', 'false'),
(735, 'en', 'ratio', 'ratio', 'false'),
(736, 'en', 'your_rate', 'your rate', 'false'),
(737, 'en', 'rate', 'rate', 'false'),
(738, 'en', 'rating', 'rating', 'false'),
(739, 'en', 'stats', 'stats', 'false'),
(740, 'en', 'host', 'host', 'false'),
(741, 'en', 'hash', 'hash', 'false'),
(742, 'en', 'title', 'title', 'false'),
(743, 'en', 'page_null_certificate', 'page is not have certificate', 'false'),
(744, 'en', 'encryption', 'encryption', 'false'),
(745, 'en', 'usage', 'usage', 'false'),
(746, 'en', 'issuer', 'issuer', 'false'),
(747, 'en', 'extended', 'extended', 'false'),
(748, 'en', 'key', 'key', 'false'),
(749, 'en', 'common_name', 'common name', 'false'),
(750, 'en', 'organization', 'organization', 'false'),
(751, 'en', 'certificate', 'certificate', 'false'),
(752, 'en', 'malware_scan', 'malware scan', 'false'),
(753, 'en', 'page_null_scanlogs', 'page is not have scan logs', 'false'),
(754, 'en', 'total_scanner', 'total scanner', 'false'),
(755, 'en', 'detection_rate', 'detection rate', 'false'),
(756, 'en', 'results', 'results', 'false'),
(757, 'en', 'danger', 'danger', 'false'),
(758, 'en', 'suspicious', 'suspicious', 'false'),
(759, 'en', 'safe', 'safe', 'false'),
(760, 'en', 'unrated', 'unrated', 'false'),
(761, 'en', 'not_safe', 'not safe', 'false'),
(762, 'en', 'system_scanner', 'system scanner', 'false'),
(763, 'en', 'stats_lastweek_data', 'last week data stats', 'false'),
(764, 'en', 'stats_thisweek_data', 'this week data stats', 'false'),
(765, 'en', 'mailer_verify_account_subject', 'verify account at Giccos by email', 'false'),
(766, 'en', 'mailer_verify_account_altbody	', 'we sent email verify account created at Giccos by this email', 'false'),
(767, 'en', 'request_begin_please_wait', 'request being made, please wait for a moment', 'false'),
(768, 'en', 'ongoing_requirements_please_wait', 'ongoing requirements, please wait', 'false'),
(769, 'en', 'site_visits_statistics', 'site visits statistics', 'false'),
(770, 'en', 'site_mention_statistics', 'site mention statistics', 'false'),
(771, 'en', 'mention', 'mention', 'false'),
(772, 'en', 'favorited', 'favorited', 'false'),
(773, 'en', 'commented', 'commented', 'false'),
(774, 'en', 'this_status', 'this status', 'false'),
(775, 'en', 'in_status', 'in status', 'false'),
(776, 'en', 'shared', 'shared', 'false'),
(778, 'en', 'mon', 'mon', 'true'),
(779, 'en', 'tue', 'tue', 'true'),
(780, 'en', 'wed', 'wed', 'true'),
(781, 'en', 'thu', 'thu', 'true'),
(782, 'en', 'fri', 'fri', 'true'),
(783, 'en', 'sat', 'sat', 'true'),
(784, 'en', 'sun', 'sun', 'true'),
(785, 'en', 'mon', 'monday', 'false'),
(786, 'en', 'tue', 'tuesday', 'false'),
(787, 'en', 'wed', 'wednesday', 'false'),
(788, 'en', 'thu', 'thursday', 'false'),
(789, 'en', 'fri', 'friday', 'false'),
(790, 'en', 'sat', 'saturday', 'false'),
(791, 'en', 'sun', 'sunday', 'false'),
(792, 'en', 'account_validation_requirements', 'account validation requirements', 'false'),
(794, 'en', 'tornado', 'tornado', 'false'),
(795, 'en', 'tropical_storm', 'tropical storm', 'false'),
(796, 'en', 'hurricane', 'hurricane', 'false'),
(797, 'en', 'severe_thunderstorms', 'severe thunderstorms', 'false'),
(798, 'en', 'thunderstorms', 'thunderstorms', 'false'),
(799, 'en', 'mixed_rain_and_snow', 'mixed rain and snow', 'false'),
(800, 'en', 'mixed_rain_and_sleet', 'mixed rain and sleet', 'false'),
(801, 'en', 'mixed_snow_and_sleet', 'mixed snow and sleet', 'false'),
(802, 'en', 'freezing_drizzle', 'freezing drizzle', 'false'),
(803, 'en', 'drizzle', 'drizzle', 'false'),
(804, 'en', 'freezing_rain', 'freezing rain', 'false'),
(805, 'en', 'showers', 'showers', 'false'),
(806, 'en', 'showers', 'showers', 'false'),
(807, 'en', 'snow_flurries', 'snow flurries', 'false'),
(808, 'en', 'light_snow_showers', 'light snow showers', 'false'),
(809, 'en', 'blowing_snow', 'blowing snow', 'false'),
(810, 'en', 'snow', 'snow', 'false'),
(811, 'en', 'hail', 'hail', 'false'),
(812, 'en', 'sleet', 'sleet', 'false'),
(813, 'en', 'dust', 'dust', 'false'),
(814, 'en', 'foggy', 'foggy', 'false'),
(815, 'en', 'haze', 'haze', 'false'),
(816, 'en', 'smoky', 'smoky', 'false'),
(817, 'en', 'blustery', 'blustery', 'false'),
(818, 'en', 'windy', 'windy', 'false'),
(819, 'en', 'cold', 'cold', 'false'),
(820, 'en', 'cloudy', 'cloudy', 'false'),
(821, 'en', 'mostly_cloudy_night', 'mostly cloudy (night)', 'false'),
(822, 'en', 'mostly_cloudy_day', 'mostly cloudy (day)', 'false'),
(823, 'en', 'partly_cloudy_night', 'partly cloudy (night)', 'false'),
(824, 'en', 'partly_cloudy_day', 'partly cloudy (day)', 'false'),
(825, 'en', 'clear_night', 'clear (night)', 'false'),
(826, 'en', 'sunny', 'sunny', 'false'),
(827, 'en', 'fair_night', 'fair (night)', 'false'),
(828, 'en', 'fair_day', 'fair (day)', 'false'),
(829, 'en', 'mixed_rain_and_hail', 'mixed rain and hail', 'false'),
(830, 'en', 'hot', 'hot', 'false'),
(831, 'en', 'isolated_thunderstorms', 'isolated thunderstorms', 'false'),
(832, 'en', 'scattered_thunderstorms', 'scattered thunderstorms', 'false'),
(833, 'en', 'scattered_thunderstorms', 'scattered thunderstorms', 'false'),
(834, 'en', 'scattered_showers', 'scattered showers', 'false'),
(835, 'en', 'heavy_snow', 'heavy snow', 'false'),
(836, 'en', 'scattered_snow_showers', 'scattered snow showers', 'false'),
(837, 'en', 'heavy_snow', 'heavy snow', 'false'),
(838, 'en', 'partly_cloudy', 'partly cloudy', 'false'),
(839, 'en', 'thundershowers', 'thundershowers', 'false'),
(840, 'en', 'snow_showers', 'snow showers', 'false'),
(841, 'en', 'isolated_thundershowers', 'isolated thundershowers', 'false'),
(842, 'en', 'astronomy', 'astronomy', 'false'),
(843, 'en', 'sunrise', 'sunrise', 'false'),
(844, 'en', 'sunset', 'sunset', 'false'),
(845, 'en', 'updated_at', 'updated at', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `library_cited`
--

CREATE TABLE IF NOT EXISTS `library_cited` (
  `id` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `cite` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `library_voice`
--

CREATE TABLE IF NOT EXISTS `library_voice` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `language` char(4) NOT NULL,
  `word` varchar(40) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_voice`
--

INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '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t+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '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hQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(8, 1438953652, 1438953652, '6f002cd6', 'en', 'life', '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Wm3H1ByeQriKtWupXlry/+NCxP8szBKAN1kwAPuwYllo5OrW+2QnFEkMXF2CGuqCUSU5Ygk9QnC23C4uLSZ59mq09XnpkXka2qup+ePrLv+zVDd119t4vatWoUa6WmuoTEJZCiis19Xc5lsqWw/LRWrV7lqVZsUZ0dRtKmE0KONf3OL0StxGofS+knvfcW9dE1z/vWz111hkt61vw6mO9XEE8VKF7sblnLzNMysUVlkqY1lD16UJtxtY66qsuhBAnH+dBz/3xdUoSSWW2623a7bbf//77oAxvkC4NiBrPYv/40LE/zmUFnhVmGABpKuLMMlMdcte71Gk8Bbm3zmX+YvjjvlpyVlPvHh+TfRIx/mcZdTZk0vr6pDZL8nyscVgTVOlUzzE7f95o52F5Da1iZrWZtC05F7e0o63XHGISIeOFg42VyJ1eSdJLhytrpye72X/ecam9vyas+tNpYdiLEEDDMTa12badKmbLWDlSdVnPmZmbzNJn/nOlHAjhqiXnyTWVilCgSVXIdO0mm3O+L0FSghACAEMulYVBFohFJKzSyJFGpSl/KXDN//////8qv/jQsTcL0PGzl+IYAPfKqsCwtTNK0IQAwAIRQ6BsHzcCwtRQsLNKiorcqq+zf/wzcMzaioq0ipq1qvKquwsLKzNf//////DN7M2oqKtKrWpIrckiptFA2BsaULHXwULUwsc2SKirSSq+zf/sLC1MLB3//+JcOlQWTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxOMic5IIBclAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(9, 1438956858, 1438956858, 'babe5dd2', 'en', 'kiss', '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'),
(10, 1440152726, 1440152726, '3278a210', 'en', 'you', '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');

-- --------------------------------------------------------

--
-- Table structure for table `library_words`
--

CREATE TABLE IF NOT EXISTS `library_words` (
  `id` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `word` varchar(100) NOT NULL,
  `type` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `example` text,
  `related` text,
  `attribution` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL,
  `host` varchar(40) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_words`
--

INSERT INTO `library_words` (`id`, `language`, `time`, `updated`, `word`, `type`, `content`, `example`, `related`, `attribution`, `source`, `host`) VALUES
(48, 'en', 1438956485, 1438956485, 'fuck', 'verb-transitive', 'To have sexual intercourse with', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(49, 'en', 1438956485, 1438956485, 'fuck', 'verb-intransitive', 'To engage in sexual intercourse', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(50, 'en', 1438956485, 1438956485, 'fuck', 'noun', 'An act of sexual intercourse', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(51, 'en', 1438956485, 1438956485, 'fuck', 'interjection', 'Used to express extreme displeasure', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(52, 'en', 1438956485, 1438956485, 'fuck', 'phrasal-verb', 'fuck off  Used in the imperative as a signal of angry dismissal', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(53, 'en', 1438956485, 1438956485, 'fuck', 'verb', 'To have sexual intercourse, to copulate', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(54, 'en', 1438956854, 1438956854, 'life', 'noun', 'The property or quality that distinguishes living organisms from dead organisms and inanimate matter, manifested in functions such as metabolism, growth, reproduction, and response to stimuli or adaptation to the environment originating from within the organism', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(55, 'en', 1438956856, 1438956856, 'love', 'noun', 'A deep, tender, ineffable feeling of affection and solicitude toward a person, such as that arising from kinship, recognition of attractive qualities, or a sense of underlying oneness', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(56, 'en', 1438956856, 1438956856, 'love', 'verb-transitive', 'To have a deep, tender, ineffable feeling of affection and solicitude toward (a person):  We love our parents. I love my friends. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(57, 'en', 1438956858, 1438956858, 'kiss', 'verb-transitive', 'To touch or caress with the lips as an expression of affection, greeting, respect, or amorousness', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(58, 'en', 1438956858, 1438956858, 'kiss', 'verb-intransitive', 'To engage in mutual touching or caressing with the lips', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(59, 'en', 1438956858, 1438956858, 'kiss', 'noun', 'A caress or touch with the lips', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(60, 'en', 1438956858, 1438956858, 'kiss', 'phrasal-verb', 'kiss off  Slang   To dismiss or reject', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(61, 'en', 1438956858, 1438956858, 'kiss', 'idiom', 'kiss ass  Vulgar Slang   To act submissively or obsequiously in order to gain favor', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(62, 'en', 1438956858, 1438956858, 'kiss', 'verb', 'To touch with the lips or press the lips against, usually to express love or affection or passion, or as part of a greeting, or as part of sexual activity', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(71, 'en', 1440151617, 1440151617, 'what', 'pronoun', 'Which thing or which particular one of many:  What are you having for dinner? What did she say? ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(72, 'en', 1440151617, 1440151617, 'what', 'adjective', 'Which one or ones of several or many:  What college are you attending? You should know what musical that song is from. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(73, 'en', 1440151617, 1440151617, 'what', 'adverb', 'How much; in what respect; how:  What does it matter? ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(74, 'en', 1440151617, 1440151617, 'what', 'interjection', 'Used to express surprise, incredulity, or other strong and sudden excitement', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(75, 'en', 1440151617, 1440151617, 'what', 'idiom', 'what for  Informal   A scolding or strong reprimand:  The teacher gave the tardy student what for. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(98, 'en', 1440152727, 1440152727, 'you', 'pronoun', 'Nonstandard   Used reflexively as the indirect object of a verb:  You might want to get you another pair of shoes.  See Note at me', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(99, 'en', 1440152727, 1440152727, 'you', 'determiner', 'The individual or group spoken or written to', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik');

-- --------------------------------------------------------

--
-- Table structure for table `logs_actions`
--

CREATE TABLE IF NOT EXISTS `logs_actions` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(40) NOT NULL,
  `things.type` varchar(20) DEFAULT NULL,
  `things.id` char(11) DEFAULT NULL,
  `obj.type` varchar(20) DEFAULT NULL,
  `obj.id` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `guy.type`, `guy.id`, `type`, `things.type`, `things.id`, `obj.type`, `obj.id`) VALUES
(1, 1441182140, 'user', 1, 'follow', 'status', '1', '', ''),
(2, 1441182140, 'user', 1, 'add', '', '', 'status', '1'),
(3, 1441182581, 'user', 1, 'follow', 'status', '2', '', ''),
(4, 1441182602, 'user', 1, 'add', '', '', 'status', '2'),
(5, 1441183070, 'user', 1, 'follow', 'status', '3', '', ''),
(6, 1441183078, 'user', 1, 'add', '', '', 'status', '3'),
(7, 1441183315, 'user', 1, 'follow', 'status', '4', '', ''),
(8, 1441184003, 'user', 1, 'add', '', '', 'status', '4'),
(9, 1441349533, 'user', 1, 'favorite', 'status', '4', '', ''),
(10, 1441349862, 'user', 1, 'unfavorite', 'status', '4', '', '');

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
  `updated` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `device` char(10) DEFAULT NULL,
  `platform` varchar(40) NOT NULL,
  `browser.name` varchar(40) NOT NULL,
  `browser.kernel` varchar(40) NOT NULL,
  `browser.version` varchar(20) NOT NULL,
  `agent` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `updated`, `token`, `ip`, `device`, `platform`, `browser.name`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1439521903, 1439521939, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
(2, 1439522032, 1441026126, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
(3, 1440291474, 1440500605, 'b46b61b4', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174'),
(4, 1441097394, 1441439480, 'ee5504b2', '113.170.42.243', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(5, 1441460383, 1441460383, '7c514c94', '192.168.0.102', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(6, 1441460850, 1441460850, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `mailer_id`
--

CREATE TABLE IF NOT EXISTS `mailer_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `type` varchar(20) NOT NULL,
  `host` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `secure` char(10) NOT NULL,
  `port` int(11) NOT NULL,
  `from.email` varchar(255) NOT NULL,
  `from.name` varchar(100) NOT NULL,
  `reply.email` varchar(255) NOT NULL,
  `reply.name` varchar(100) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_id`
--

INSERT INTO `mailer_id` (`id`, `time`, `token`, `type`, `host`, `username`, `password`, `secure`, `port`, `from.email`, `from.name`, `reply.email`, `reply.name`, `updated`) VALUES
(2, 1441114225, '3b1af93c', 'mailer', 'smtp.gmail.com', 'cBujSTWchgmVNpHKLWc+HKKu4QeeKiCXZ6IvbcEHYjQ=', 'VL34VvVJiLnANU7oTzV0lrcCZMhe1W9NZqznriEt/mw=', 'tls', 587, 'mailer@giccos.com', 'Giccos Mailer', 'support@giccos.com', 'support@giccos.com', 1441114225);

-- --------------------------------------------------------

--
-- Table structure for table `mailer_logs`
--

CREATE TABLE IF NOT EXISTS `mailer_logs` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `mailer.id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_logs`
--

INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(7, 1441125666, 2, 'ffcbc75f', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(8, 1441126202, 2, '0d92d0df', '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'),
(9, 1441175133, 2, 'deaec939', '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'),
(10, 1441179134, 2, '8fe21218', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(11, 1441181995, 2, 'f9c89e40', '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'),
(12, 1441441369, 2, 'ec37d8e1', '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');

-- --------------------------------------------------------

--
-- Table structure for table `maps_places`
--

CREATE TABLE IF NOT EXISTS `maps_places` (
  `id` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, 'bf0558e2', 'f4ae988d3b006556d391ac8914f69722', 'CÃ´ng Ty Sá»± Kiá»‡n TINH Táº¾ VIá»†T Táº¡i ÄÃ€ Náº´NG', '9 Tráº§n PhÃº, Háº£i ChÃ¢u, ÄÃ  Náºµng, Vietnam', '16.079825,108.223008', 16.079824, 108.223007, 'establishment', ''),
(3, '07bab7c3', 'e2feb1acfc60992a794081ccb37c14c4', 'CÃ”NG TY LUáº¬T TNHH MTV TINH Táº¾', '467 Äiá»‡n BiÃªn Phá»§, 25, BÃ¬nh Tháº¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.801433,106.713944', 10.801433, 106.713943, 'lawyer', ''),
(4, 'd953e5c3', '6c36375316f79fa2525ab7197bacdda9', 'Cá»­a hÃ ng Tinh Táº¿ (Nice Store)', '174 ThÃ¡i PhiÃªn, 8, 11, Há»“ ChÃ­ Minh, Vietnam', '10.75969,106.646222', 10.759690, 106.646225, 'store', ''),
(5, '3423e121', '43fb17754d41abc0f19dc0e1de9a0699', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', '10.769319,106.669258', 10.769319, 106.669258, 'cafe', ''),
(6, 'bb9d5d51', 'd8527d4b6ce60550e012c7abd020b43f', 'CÃ´ng Ty Sáº£n Xuáº¥t, Cung Cáº¥p QuÃ  Táº·ng Tinh Táº¿ Viá»‡t', '9 Tráº§n PhÃº, Tháº¡ch Thang, ÄÃ  Náºµng, Vietnam', '16.07982,108.222976', 16.079821, 108.222977, 'home_goods_store', ''),
(7, 'a57c2fff', '70814f3817b64941fb3ab59d0c3564b9', 'Máº¯t kÃ­nh Tinh Táº¿ - Eyewear.vn', '31/4P Ä‘Æ°á»ng ÄÃ´ng LÃ¢n BÃ  Äiá»ƒm, áº¥p ÄÃ´ng LÃ¢n, BÃ  Äiá»ƒm, Há»“ ChÃ­ Minh, Vietnam', '10.845834,106.6099', 10.845834, 106.609901, 'jewelry_store', ''),
(8, '40c44d59', 'd1c8df2f1db1c1593822d290e9685600', 'TNHH Giáº£i PhÃ¡p Tinh Táº¿', '80 LÃ½ ThÃ¡i Tá»•, phÆ°á»ng 2, 3, Há»“ ChÃ­ Minh, Vietnam', '10.766025,106.680094', 10.766025, 106.680092, 'home_goods_store', ''),
(9, '3eed4d76', '04df982b8a4025e76a9dae2fb26a3436', 'Thá»i trang tinh táº¿', '257 Nguyá»…n Thá»‹ Tháº­p, TÃ¢n PhÃº, Quáº­n 7, Há»“ ChÃ­ Minh, Vietnam', '10.738214,106.716969', 10.738214, 106.716972, 'jewelry_store', ''),
(10, 'ba7e4918', '4d79a9325925fcc0356441074fc0c77c', 'Tline Furniture _ Tinh táº¿ vÃ  hiá»‡n Ä‘áº¡i', '302 Nguyá»…n TrÃ£i, Tá»« LiÃªm, HÃ  Ná»™i, Vietnam', '20.986873,105.7963', 20.986874, 105.796303, 'home_goods_store', ''),
(11, 'c57e7690', '8f5050fcaa511adc907e3d1b1cecd6c7', 'Tinh Te Technology Co., Ltd', '150A, ÄÆ°á»ng Há»“ BÃ¡ Kiá»‡n, PhÆ°á»ng 15, Quáº­n 10, Há»“ ChÃ­ Minh, Vietnam', '10.783,106.666881', 10.783000, 106.666878, 'establishment', ''),
(12, 'bcf121cd', '786ec0d31258b968b3045f3e42f58de0', 'áº¨m Thá»±c Tinh Táº¿', '37 ÄÃ´ng Du, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.775998,106.70448', 10.775998, 106.704483, 'establishment', ''),
(13, '16156852', '5a69737fc8d29f83fbdf521daad9ca04', 'CÃ´ng Ty Tnhh Ã‚m Nháº¡c Tinh Táº¿', '11 Pháº¡m ÄÃ¬nh ToÃ¡i, 6, 3, Há»“ ChÃ­ Minh, Vietnam', '10.775788,106.685975', 10.775788, 106.685974, 'establishment', ''),
(14, '2203dec7', '1c2f62425a18b005ce54adaa8a9b2da1', 'Cá»­a HÃ ng Äiá»‡n Thoáº¡i Tinh Táº¿', '590 NgÃ´ Gia Tá»±, Tiá»n An, Báº¯c Ninh, Báº¯c Ninh, Vietnam', '21.180833,106.062465', 21.180834, 106.062462, 'establishment', ''),
(15, '4cb38257', 'bdae0ed648d66467b2a4b9657877bdea', 'CÃ´ng Ty Tnhh Mtv Tinh Táº¿', '111 Nguyá»…n VÄƒn LuÃ´ng, 10, 6, Há»“ ChÃ­ Minh, Vietnam', '10.738239,106.63349', 10.738239, 106.633492, 'establishment', ''),
(16, '6ceb45a1', 'a7970201601de9d0bb98575b86ce0d27', 'CÃ´ng Ty Cp CÃ´ng Nghá»‡ Tinh Táº¿', '141 DÆ°Æ¡ng VÄƒn DÆ°Æ¡ng, TÃ¢n QuÃ½, TÃ¢n PhÃº, Há»“ ChÃ­ Minh, Vietnam', '10.794014,106.616666', 10.794014, 106.616669, 'establishment', ''),
(17, '957e45be', '4e264c9c0b3a23cdb230a8d09c201c10', 'Cafe Tinh Táº¿', '253 LÃª Duáº©n, Trung ÄÃ´, tp. Vinh, Nghá»‡ An, Vietnam', '18.661949,105.69229', 18.661949, 105.692291, 'establishment', ''),
(18, '3ff1b1a5', 'b1fc79ac49d6242f0928eea0be732784', 'CÃ´ng Ty Tnhh áº¨m Thá»±c Tinh Táº¿ - Fine Cuisine - Kohthai', '39 LÃª Duáº©n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.781616,106.699834', 10.781616, 106.699837, 'establishment', ''),
(19, 'd500fd34', '2b8cb4f92069e6100690ba6e59786df7', 'CÃ´ng Ty Tnhh Thiáº¿t Káº¿ XÃ¢y Dá»±ng Tinh Táº¿', '34 Nguyá»…n Thá»‹ Minh Khai, Äa Kao, 1, Há»“ ChÃ­ Minh, Vietnam', '10.784197,106.69938', 10.784197, 106.699379, 'establishment', ''),
(20, '10ea5db9', 'b32227151623b03e95185edc8dd972b2', 'Cá»­a HÃ ng Phá»¥ Kiá»‡n Tinh Táº¿', '239 ÄÃ  Náºµng, Cáº§u Tre, NgÃ´ Quyá»n, Háº£i PhÃ²ng, Vietnam', '20.861328,106.702292', 20.861328, 106.702293, 'establishment', ''),
(21, '4dafe018', 'b039783a948b503a0b941683155d3ee8', 'CÃ´ng Ty TNHH Viá»‡t Tinh Táº¿', '22, Thá» XÆ°Æ¡ng, PhÆ°á»ng HÃ ng Trá»‘ng, Quáº­n HoÃ n Kiáº¿m, HÃ  Ná»™i 10000, Vietnam', '21.028967,105.848384', 21.028967, 105.848381, 'establishment', ''),
(22, '5c296c00', '49ea6e57345cc96e352f0ec6e23782ed', 'Essen', 'Essen, Germany', '51.4556432,7.0115552', 51.455643, 7.011555, 'locality', 'maps/raw/places/staticmap/location=51.4556432,7.0115552&zoom=15&size=480x480&maptype=roadmap&markers=%7C&format=gif'),
(23, 'b46cc8c4', 'f7338370160da407e20d257714206383', 'Asturias', 'Asturias, Spain', '43.3619457,-5.8492926', 43.361946, -5.849293, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.3619457,-5.8492926&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.3619457,-5.8492926&format=gif'),
(24, 'c1d763b8', '7a44748cfa2c6e3c4591b3ea9295f6ce', 'O', 'O, Omi, Higashichikuma District, Nagano Prefecture 399-7701, Japan', '36.4576497,138.0479558', 36.457649, 138.047958, 'sublocality_level_1', 'maps/raw/places/staticmap/location=36.4576497,138.0479558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.4576497,138.0479558&format=gif'),
(25, '94e25bbf', '03b5ddea5799fb69165257f8ffeedd73', 'O', 'O, 7100 Vejle, Denmark', '55.7068696,9.542056', 55.706871, 9.542056, 'route', 'maps/raw/places/staticmap/location=55.7068696,9.542056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.7068696,9.542056&format=gif'),
(26, 'd9734d10', '142d9bbc03a0d7617678822c00850e4b', 'O', 'O, 6000 Kolding, Denmark', '55.4902593,9.4777789', 55.490257, 9.477779, 'route', 'maps/raw/places/staticmap/location=55.4902593,9.4777789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.4902593,9.4777789&format=gif'),
(27, 'f25511b2', '76cd8e8f14a9d23a07af542486342bc7', 'O', 'O, Randers, Denmark', '56.4615817,10.0318034', 56.461582, 10.031803, 'route', 'maps/raw/places/staticmap/location=56.4615817,10.0318034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4615817,10.0318034&format=gif'),
(28, '177bd21b', 'b82aaf6502b3d48ab27c7b1c630bbbf9', 'ObchodnÃ­', 'ObchodnÃ­, 397 01 PÃ­sek, Czech Republic', '49.2970667,14.1601865', 49.297066, 14.160186, 'route', 'maps/raw/places/staticmap/location=49.2970667,14.1601865&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2970667,14.1601865&format=gif'),
(29, '15e334c2', '05875d8237af5f044496c61a9c346549', 'ObchodnÃ­', 'ObchodnÃ­, 392 01 SobÄ›slav, Czech Republic', '49.2637957,14.7127854', 49.263798, 14.712785, 'route', 'maps/raw/places/staticmap/location=49.2637957,14.7127854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2637957,14.7127854&format=gif'),
(30, '59a30437', '4309f63afa3cf99436ef7bcb4cf09487', 'O', 'O, 8800 Viborg, Denmark', '56.4528328,9.4064431', 56.452831, 9.406443, 'route', 'maps/raw/places/staticmap/location=56.4528328,9.4064431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4528328,9.4064431&format=gif'),
(31, '042355f6', 'e5319c6ce736277fed2a6fceae466882', 'ObchodnÃ­', 'ObchodnÃ­, ÄŒestlice, Czech Republic', '50.001966,14.5767052', 50.001965, 14.576705, 'route', 'maps/raw/places/staticmap/location=50.001966,14.5767052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.001966,14.5767052&format=gif'),
(32, '948d8a8d', 'cdb43b33c76294503afb144d80456765', 'Calle O', 'Calle O, Caborca, Son., Mexico', '30.7106788,-112.1624862', 30.710678, -112.162483, 'route', 'maps/raw/places/staticmap/location=30.7106788,-112.1624862&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7106788,-112.1624862&format=gif'),
(33, '33beb514', '2511b49b74b33419701828f7937e859b', 'Cantabria', 'Cantabria, Spain', '43.1828396,-3.9878427', 43.182838, -3.987843, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.1828396,-3.9878427&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.1828396,-3.9878427&format=gif'),
(34, 'dd76115f', '8bbad9db8b9dd73589399bce088e35db', 'South', 'South, West Virginia, USA', '38.0328192,-82.5347693', 38.032818, -82.534767, 'route', 'maps/raw/places/staticmap/location=38.0328192,-82.5347693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.0328192,-82.5347693&format=gif'),
(35, '660163c4', '610e3b6801e5cae7a9a9e4ddb3e140ca', 's', 's, 87030 Marzi CS, Italy', '39.1768368,16.2952483', 39.176838, 16.295248, 'route', 'maps/raw/places/staticmap/location=39.1768368,16.2952483&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.1768368,16.2952483&format=gif'),
(36, '24a8c07f', 'b0268cf0b1eb0bec1b73a07589b50aae', 'Shrirangapatna Railway Station', 'Shrirangapatna Railway Station, Srirangapatna, Karnataka 571438, India', '12.4248105,76.6782188', 12.424810, 76.678223, 'train_station', 'maps/raw/places/staticmap/location=12.4248105,76.6782188&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.4248105,76.6782188&format=gif'),
(37, '34ecd174', '6808054c9a2691fa86e1fd1f61d55dd3', 'South', 'South, Odessa, TX 79763, USA', '31.7592035,-102.5379907', 31.759205, -102.537994, 'route', 'maps/raw/places/staticmap/location=31.7592035,-102.5379907&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.7592035,-102.5379907&format=gif'),
(38, '5e803712', '56510b721e03619dfc91d4d024fc95c9', 'Calle S', 'Calle S, Caborca, Son., Mexico', '30.7169152,-112.1684613', 30.716915, -112.168465, 'route', 'maps/raw/places/staticmap/location=30.7169152,-112.1684613&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7169152,-112.1684613&format=gif'),
(39, 'd9ac3fcd', 'a473772d6c1d9b49975fde922e4755cf', 'South', 'Cimarron National Grassland, South, Richfield, KS 67953, USA', '37.2288742,-101.8457745', 37.228874, -101.845772, 'route', 'maps/raw/places/staticmap/location=37.2288742,-101.8457745&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.2288742,-101.8457745&format=gif'),
(40, '07f3058a', 'ad5bbb09ce50dc8e4c9b5addb0cc16b5', 'South', 'South, Big Lake, TX 76932, USA', '31.1402623,-101.6078662', 31.140263, -101.607864, 'route', 'maps/raw/places/staticmap/location=31.1402623,-101.6078662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.1402623,-101.6078662&format=gif'),
(41, '7d55f190', '226cad256751a3de488aeec709793042', 'S', 'Rua Tenente Gomes Ribeiro, 212 - Vila Clementino - Vila Clementino, SÃ£o Paulo - SP, 04038-040, Brazil', '-23.599136,-46.637672', -23.599136, -46.637672, 'point_of_interest', 'maps/raw/places/staticmap/location=-23.599136,-46.637672&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-23.599136,-46.637672&format=gif'),
(42, '79015431', '35701d3ecee9d7c8cc638e83dba4a50f', 'Les Rencontres de la Photographie', '34 Rue du Docteur Fanton, 13200 Arles, France', '43.678377,4.625765', 43.678375, 4.625765, 'establishment', 'maps/raw/places/staticmap/location=43.678377,4.625765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.678377,4.625765&format=gif'),
(43, 'dc1b7fad', 'aa8126d24579abfd26d21ea4afaeeb84', 'Council of State', '1 Place du Palais Royal, 75001 Paris, France', '48.863189,2.337116', 48.863190, 2.337116, 'establishment', 'maps/raw/places/staticmap/location=48.863189,2.337116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.863189,2.337116&format=gif'),
(44, '3876da7c', 'd9ba2866fcfb8ed2b1ec40d486664c5a', 'The National D-Day Memorial', '3 Overlord Circle, Bedford, VA 24523, United States', '37.330489,-79.535929', 37.330490, -79.535927, 'park', 'maps/raw/places/staticmap/location=37.330489,-79.535929&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.330489,-79.535929&format=gif'),
(45, 'a93e0e83', '8a64b6c22b6581efade66010fd9e2ba7', 'Teatro Nacional D. Maria II', 'PraÃ§a Dom Pedro IV, 1100-201 Lisboa, Portugal', '38.7148,-9.139787', 38.714802, -9.139787, 'establishment', 'maps/raw/places/staticmap/location=38.7148,-9.139787&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7148,-9.139787&format=gif'),
(46, 'ff8fc0c6', '023a67e9fc4efd964631ce298701cbf7', 'The D Las Vegas', '301 Fremont Street, Las Vegas, NV 89101, United States', '36.169278,-115.14291', 36.169277, -115.142906, 'bar', 'maps/raw/places/staticmap/location=36.169278,-115.14291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.169278,-115.14291&format=gif'),
(47, 'c7a84f5a', '3a41a0f07d1e0ef7c6b47ca839f170d5', 'Franklin D. Roosevelt Presidential Library and Museum', '4079 Albany Post Road, Hyde Park, NY 12538, United States', '41.768696,-73.934059', 41.768696, -73.934059, 'museum', 'maps/raw/places/staticmap/location=41.768696,-73.934059&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.768696,-73.934059&format=gif'),
(48, '9f6efe54', 'a5846bd18ada5e9bfb282094e716a11d', 'Dwight D. Eisenhower Presidential Library &amp; Museum', '200 South East 4th Street, Abilene, KS 67410, United States', '38.911627,-97.21217', 38.911629, -97.212173, 'library', 'maps/raw/places/staticmap/location=38.911627,-97.21217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.911627,-97.21217&format=gif'),
(49, '26eb76b7', 'bf0e807c2d40f3e70d1389f4f5fda45a', 'Utrecht', 'Utrecht, Netherlands', '52.119508,5.1943653', 52.119507, 5.194365, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.119508,5.1943653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.119508,5.1943653&format=gif'),
(50, '9070c93c', '0691ba740f1f21afd300ec3a977c4336', 'Bac Lieu', 'Bac Lieu, Vietnam', '9.2515555,105.5136472', 9.251556, 105.513649, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.2515555,105.5136472&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2515555,105.5136472&format=gif'),
(51, 'c24ec0d3', '96084bf2f12f54b1c4b0fc4f72497a5b', 'Ca Mau', 'Ca Mau, Vietnam', '8.9624099,105.1258955', 8.962410, 105.125893, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=8.9624099,105.1258955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.9624099,105.1258955&format=gif'),
(52, '4daeb052', 'ba8c592b3f3c35fdcc36ce2db1485d8a', 'Cali', 'Cali, Cali, Valle del Cauca, Colombia', '3.4516467,-76.5319854', 3.451647, -76.531982, 'locality', 'maps/raw/places/staticmap/location=3.4516467,-76.5319854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.4516467,-76.5319854&format=gif'),
(53, '1e0a30db', '68aa6ed5392de78753242a062294bb8e', 'Ganh Hao', '3 Tráº§n PhÃº, Ward 5, tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '10.359632,107.060172', 10.359632, 107.060173, 'restaurant', 'maps/raw/places/staticmap/location=10.359632,107.060172&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.359632,107.060172&format=gif'),
(54, '4310ae66', '20ae5cbfe34fbcd653209a9ceb22e96e', 'Ubtt GÃ nh HÃ o', 'Khu Vá»±c 3 GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(55, 'd49b1ffe', 'f49cdd6dde1c216df72487e36f6b94e4', 'Chá»£ GÃ nh HÃ o', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.02584,105.419617', 9.025840, 105.419617, 'establishment', 'maps/raw/places/staticmap/location=9.02584,105.419617&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.02584,105.419617&format=gif'),
(56, 'd51be2bd', '7bdc8ce93be8b66b0e784b46daa5f6ff', 'NHÃ€ HÃ€NG GÃ€NH HÃ€O SÃ€I GÃ’N', '4 Há»“ Huáº¥n Nghiá»‡p, Báº¿n NghÃ©, Q1, Há»“ ChÃ­ Minh, Vietnam', '10.774563,106.705675', 10.774563, 106.705673, 'restaurant', 'maps/raw/places/staticmap/location=10.774563,106.705675&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.774563,106.705675&format=gif'),
(57, '9ee3633c', '2b16d41e3d7d18346adf8adc93aaf15e', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o B', 'Phan Ngá»c Hiá»ƒn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.031467,105.420068', 9.031467, 105.420067, 'establishment', 'maps/raw/places/staticmap/location=9.031467,105.420068&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.031467,105.420068&format=gif'),
(58, 'e40f1d3c', '00c3dedeceb63dd59fa575f4137c56c1', 'Tráº¡m XÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iii T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(59, 'a3bb8026', 'dfed1d01b21be1e22d97ff649282e522', 'TrÆ°á»ng Thpt GÃ nh HÃ o', 'Ngá»c Äiá»n, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.026709,105.422004', 9.026709, 105.422005, 'establishment', 'maps/raw/places/staticmap/location=9.026709,105.422004&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.026709,105.422004&format=gif'),
(60, '47592f33', '26b9087c36710f10fdc6da7121c3d057', 'CÃ´ng An Thá»‹ Tráº¥n GÃ nh HÃ o', 'GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.027398,105.418743', 9.027398, 105.418739, 'establishment', 'maps/raw/places/staticmap/location=9.027398,105.418743&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.027398,105.418743&format=gif'),
(61, '38dc511b', 'b9821052e4a5f98ed891b6f87ccd64a7', 'BÆ°u Äiá»‡n GÃ nh HÃ o', 'Khu Vá»±c 1 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(62, '88218a99', 'f300900c2c6c1ffa63d0cc922e046101', 'B Q L X D Cáº£ng CÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iv T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(63, 'b52d423b', '6906213962b8814624151ab906f19650', 'cÃ´ng ty TNHH TÃ¢n GÃ nh HÃ o', 'áº¤p 4, GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', '9.038364,105.419912', 9.038364, 105.419914, 'store', 'maps/raw/places/staticmap/location=9.038364,105.419912&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.038364,105.419912&format=gif'),
(64, 'ecec0dc4', 'da4a4653692e560fd495d7ee142eeaed', 'TrÆ°á»ng Máº§m Non GÃ nh HÃ o', '1 ThÃ¡ng 3, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.034476,105.423308', 9.034476, 105.423309, 'establishment', 'maps/raw/places/staticmap/location=9.034476,105.423308&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034476,105.423308&format=gif'),
(65, '10fdda36', '1d0a4289f2ef8fab94932afcf43d5b4f', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o A', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.028918,105.430523', 9.028918, 105.430527, 'establishment', 'maps/raw/places/staticmap/location=9.028918,105.430523&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.028918,105.430523&format=gif'),
(66, '97142f86', 'c591e62d8f8b6ca733321f8299177546', 'TrÆ°á»ng Thcs GÃ nh HÃ o', 'GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.035806,105.435297', 9.035806, 105.435295, 'establishment', 'maps/raw/places/staticmap/location=9.035806,105.435297&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.035806,105.435297&format=gif'),
(67, '8f57c6a9', 'cb55bff0e4459dffaff78ae0ba35f708', 'Tráº¡m Äiá»‡n Lá»±c GÃ nh HÃ o', 'Khu Vá»±c 3 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(68, '1ffa437d', 'ab1b84a28d58d8f47cfc20fec28b8991', 'FV Hospital', '6 Nguyá»…n LÆ°Æ¡ng Báº±ng, TÃ¢n PhÃº, 7, Há»“ ChÃ­ Minh, Vietnam', '10.732592,106.718488', 10.732592, 106.718491, 'hospital', 'maps/raw/places/staticmap/location=10.732592,106.718488&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.732592,106.718488&format=gif'),
(69, '64da46af', 'dcdc76e39c2473e0e59c82271e8af65c', 'FV SA - Griferia de Alta Tecnologia', 'Bernardo de Irigoyen 1053, B1604AFC Florida, Buenos Aires, Argentina', '-34.538938,-58.503842', -34.538937, -58.503841, 'establishment', 'maps/raw/places/staticmap/location=-34.538938,-58.503842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.538938,-58.503842&format=gif'),
(70, 'd943725e', '48d01d1da21ee946f05ddfece9379600', 'FV Foods', '1125 Dundas Street East, Mississauga, ON L4Y 2C3, Canada', '43.60393,-79.590797', 43.603931, -79.590797, 'bakery', 'maps/raw/places/staticmap/location=43.60393,-79.590797&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.60393,-79.590797&format=gif'),
(71, 'd827ef97', '844d9f90478733e9bef47eb5555f943a', 'FV Ravensburg', 'BrÃ¼hlstraÃŸe 17, 88212 Ravensburg, Germany', '47.788131,9.603389', 47.788132, 9.603389, 'establishment', 'maps/raw/places/staticmap/location=47.788131,9.603389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.788131,9.603389&format=gif'),
(72, 'a4daf9ce', '731d10cc18c238dd0c4b669703db1c05', 'Franz Viegener FV', 'Pichincha, Ecuador', '-0.351287,-78.463647', -0.351287, -78.463646, 'establishment', 'maps/raw/places/staticmap/location=-0.351287,-78.463647&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.351287,-78.463647&format=gif'),
(73, '589cdf6d', 'a8f0077e53b04b7bf5d1a61453fef1e7', 'FV Immo', '10 Avenue Jehan de Beauce, 28000 Chartres, France', '48.447703,1.482693', 48.447704, 1.482693, 'real_estate_agency', 'maps/raw/places/staticmap/location=48.447703,1.482693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.447703,1.482693&format=gif'),
(74, 'c54f75c3', '2f94aac0a71488ac92a9008b5266fb5b', 'FV S.A.', 'Urquiza 2265, X5001FTK CÃ³rdoba, CÃ³rdoba Province, Argentina', '-31.38914,-64.185359', -31.389139, -64.185356, 'establishment', 'maps/raw/places/staticmap/location=-31.38914,-64.185359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-31.38914,-64.185359&format=gif'),
(75, '20b1e770', '5fae3053d5ab8dde1359c5e9a463268f', 'Fv Foods', '549 St Clair Av W, Toronto, ON M6C 1A3, Canada', '43.682486,-79.420649', 43.682487, -79.420647, 'bakery', 'maps/raw/places/staticmap/location=43.682486,-79.420649&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.682486,-79.420649&format=gif'),
(76, 'cfaf3b75', '6d560d594fd1d3fafca3e646e89c75e3', 'PhÃ²ng KhÃ¡m Äa Khoa FV SÃ i GÃ²n', '45 VÃµ Thá»‹ SÃ¡u, P. Äa Kao, Q. 1, Tp. Há»“ ChÃ­ Minh, Vietnam', '10.790773,106.694874', 10.790773, 106.694878, 'hospital', 'maps/raw/places/staticmap/location=10.790773,106.694874&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.790773,106.694874&format=gif'),
(77, 'bbf9afaa', '33ebb73f19a4f163b9b304672eb6352d', 'fv', 'MaipÃº 235, 5500 Mendoza, Mendoza, Argentina', '-32.876583,-68.833015', -32.876583, -68.833015, 'establishment', 'maps/raw/places/staticmap/location=-32.876583,-68.833015&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-32.876583,-68.833015&format=gif'),
(78, '088843f1', 'e83a93efba9db07203045da7d58c2813', 'Merle &amp; Brown PC', '90 Broad Street # 2201, New York, NY 10004, United States', '40.703759,-74.01182', 40.703758, -74.011818, 'lawyer', 'maps/raw/places/staticmap/location=40.703759,-74.01182&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703759,-74.01182&format=gif'),
(79, '39d4f1ab', '10c4c354e21409c0b18d5b9a9e09edd4', 'FV Plast, a.s.', 'KozovazskÃ¡ 1049/3, 250 88 ÄŒelÃ¡kovice, Czech Republic', '50.157455,14.754981', 50.157455, 14.754981, 'store', 'maps/raw/places/staticmap/location=50.157455,14.754981&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.157455,14.754981&format=gif'),
(80, 'a3f61884', 'f56ed76d0b2513dee460181e3055e38b', '1. FC SaarbrÃ¼cken', 'Berliner Promenade 12, 66111 SaarbrÃ¼cken, Germany', '49.23555,6.99275', 49.235550, 6.992750, 'establishment', 'maps/raw/places/staticmap/location=49.23555,6.99275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.23555,6.99275&format=gif'),
(81, '032dd6f9', 'ac13b6fa8531845ea4b16722466d86a8', 'F &amp; V', 'Kondapur, Hyderabad, Andhra Pradesh 500084, India', '17.458218,78.364684', 17.458218, 78.364685, 'electronics_store', 'maps/raw/places/staticmap/location=17.458218,78.364684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.458218,78.364684&format=gif'),
(82, '00b38711', '1e91ed330b68bb87f05a867481dae7a8', 'Jugend- und Sozialzentrum Aue e.V.', 'Postplatz 3, 08280 Aue, Germany', '50.58743,12.70025', 50.587429, 12.700250, 'establishment', 'maps/raw/places/staticmap/location=50.58743,12.70025&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.58743,12.70025&format=gif'),
(83, '66e4188c', '4176fb90653bc4bba8b1fcd9e285c3bf', 'fv', 'Lindenallee 70B, 20259 Hamburg, Germany', '53.56902,9.95911', 53.569019, 9.959110, 'establishment', 'maps/raw/places/staticmap/location=53.56902,9.95911&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.56902,9.95911&format=gif'),
(84, '43252b99', 'fc0de9382c280cbfb01c469f5e223a40', 'BMR Lalonde F V Inc', '25 338 Rte, Les Coteaux, QC J7X 1A2, Canada', '45.260426,-74.202035', 45.260426, -74.202034, 'hardware_store', 'maps/raw/places/staticmap/location=45.260426,-74.202035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.260426,-74.202035&format=gif'),
(85, '7d01d2f4', 'd3fd79d532532b99732886fa279c37a4', 'Carpet Hut by F V Woolard', '5719 Arrowhead Drive, Virginia Beach, VA 23462, United States', '36.839782,-76.184006', 36.839783, -76.184006, 'home_goods_store', 'maps/raw/places/staticmap/location=36.839782,-76.184006&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.839782,-76.184006&format=gif'),
(86, '03adba18', '3d08adbc16d6fbe21ecefb0603912912', 'Cervantes', 'Calle de Lepanto, 6, 03500 Benidorm, Alicante, Spain', '38.538985,-0.120945', 38.538986, -0.120945, 'real_estate_agency', 'maps/raw/places/staticmap/location=38.538985,-0.120945&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.538985,-0.120945&format=gif'),
(87, '2979414f', 'b2131baa60ed252080ae6f5c739d465c', 'GriferÃ­a FV', 'Mariano Acha 1407, C1430DUC CABA, Argentina', '-34.579484,-58.472095', -34.579483, -58.472095, 'hardware_store', 'maps/raw/places/staticmap/location=-34.579484,-58.472095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.579484,-58.472095&format=gif'),
(88, '90cd22b9', 'c0e6ab18868fbafc9cf3992f84e22dff', 'HCM Australia', '1/56 Clarence Street, Sydney NSW 2000, Australia', '-33.866188,151.205077', -33.866188, 151.205078, 'establishment', 'maps/raw/places/staticmap/location=-33.866188,151.205077&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-33.866188,151.205077&format=gif'),
(89, '93f88678', '072418cf8fdce87e623d3078ba790317', 'HCM Contractors Inc', '235038 Wrangler Road, Rocky View County, AB T1X 0K3, Canada', '50.997212,-113.893312', 50.997211, -113.893311, 'general_contractor', 'maps/raw/places/staticmap/location=50.997212,-113.893312&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.997212,-113.893312&format=gif'),
(90, '564fece5', 'aeba089aa10fb4428a1d35a418b9cea4', 'HCM Kinzel GmbH', 'Felix-Wankel-StraÃŸe 9/1, 74374 Zaberfeld, Germany', '49.06255,8.93288', 49.062550, 8.932880, 'store', 'maps/raw/places/staticmap/location=49.06255,8.93288&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.06255,8.93288&format=gif'),
(91, '06417aaa', 'cee6e78d65cb0365af379c883e5d53f8', 'HCM Computer GmbH', 'Nadorster StraÃŸe 162, 26123 Oldenburg, Germany', '53.15786,8.22147', 53.157860, 8.221470, 'establishment', 'maps/raw/places/staticmap/location=53.15786,8.22147&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.15786,8.22147&format=gif'),
(92, 'db22fd5a', 'a246a0f6fbb0ef759513efd4df9a50d2', 'Äáº¡i Há»c Giao ThÃ´ng Váº­n Táº£i TP HCM - CÆ¡ sá»Ÿ 3', '70 TÃ´ KÃ½, TÃ¢n ChÃ¡nh Hiá»‡p, 12, Há»“ ChÃ­ Minh, Vietnam', '10.865644,106.618221', 10.865644, 106.618217, 'establishment', 'maps/raw/places/staticmap/location=10.865644,106.618221&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.865644,106.618221&format=gif'),
(93, '6dd39e6e', '71c7a2e0084f9403a60b566c916be924', 'Hospital Central de Maracay', 'Avenidas Sucre, Maracay 2102, Venezuela', '10.274207,-67.589852', 10.274207, -67.589851, 'hospital', 'maps/raw/places/staticmap/location=10.274207,-67.589852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.274207,-67.589852&format=gif'),
(94, '77461faa', '77ecc9ee85bfa369f6e3c4704edfc908', 'Health Care Management', '460 Briarwood Drive #410, Jackson, MS 39206, United States', '32.380911,-90.149715', 32.380913, -90.149712, 'establishment', 'maps/raw/places/staticmap/location=32.380911,-90.149715&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.380911,-90.149715&format=gif'),
(95, '69dc2021', 'a5f57c73dcb0ffa0e1dec05775133f3c', 'HCM', '22 West Road, Baltimore, MD 21204, United States', '39.411983,-76.613993', 39.411983, -76.613991, 'establishment', 'maps/raw/places/staticmap/location=39.411983,-76.613993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.411983,-76.613993&format=gif'),
(96, 'd35bce0b', '8c90996b64cb2eeda5c095c183275088', 'ï¼ˆæ ªï¼‰ï¼¨ï¼£ï¼­', 'Japan, ã€’106-0044 Tokyo, Minato, Higashiazabu, 1 Chomeâˆ’28âˆ’13, æ—¥é€šå•†äº‹éº»å¸ƒãƒ“ãƒ« 5F', '35.655298,139.743446', 35.655296, 139.743439, 'establishment', 'maps/raw/places/staticmap/location=35.655298,139.743446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.655298,139.743446&format=gif'),
(97, '471a84de', 'cdc7406447d37ab6236d310a17f5e93a', 'Banking University HCM City', '56 HoÃ ng Diá»‡u 2, Linh Chiá»ƒu, Quáº­n Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.857561,106.763582', 10.857561, 106.763580, 'university', 'maps/raw/places/staticmap/location=10.857561,106.763582&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.857561,106.763582&format=gif'),
(98, '2a46d60e', 'c543e27ddafe594cd9a413b4d458e296', 'Ho Chi Minh Museum', '01 Nguyá»…n Táº¥t ThÃ nh, phÆ°á»ng 12, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', '10.768271,106.706804', 10.768271, 106.706802, 'museum', 'maps/raw/places/staticmap/location=10.768271,106.706804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.768271,106.706804&format=gif'),
(99, '8ebacccd', 'ba4ac53aabf30173bcb58d243a0e485a', 'University of Economics Ho Chi Minh City', '59C Nguyá»…n ÄÃ¬nh Chiá»ƒu, 6th Ward, Quáº­n 3, Ho Chi Minh City, Vietnam', '10.783215,106.694749', 10.783215, 106.694748, 'university', 'maps/raw/places/staticmap/location=10.783215,106.694749&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.783215,106.694749&format=gif'),
(100, '68e06b5c', '8492b257e3b11ea93141f66528069fd8', 'HCM', '545 Marriott Drive # 600, Nashville, TN 37214, United States', '36.149666,-86.689324', 36.149666, -86.689323, 'establishment', 'maps/raw/places/staticmap/location=36.149666,-86.689324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.149666,-86.689324&format=gif'),
(101, '68f87585', '0ce1620118d9a619e65cb703e8b15af5', 'HCM', '668 North 44th Street # 300, Phoenix, AZ 85008, United States', '33.455207,-111.989078', 33.455208, -111.989075, 'establishment', 'maps/raw/places/staticmap/location=33.455207,-111.989078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.455207,-111.989078&format=gif'),
(102, '3a85225b', 'acee4b7b7216a3f0b5c5fd0d494df732', 'Maputo Central Hospital', 'Avenida Eduardo Mondlane, Maputo, Mozambique', '-25.97018,32.58817', -25.970181, 32.588169, 'hospital', 'maps/raw/places/staticmap/location=-25.97018,32.58817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-25.97018,32.58817&format=gif'),
(103, '31ef9df1', '9852b7cbcd73f8eb492cf70df463a4c2', 'University of Technical Education Ho Chi Minh City', '01 VÃµ VÄƒn NgÃ¢n, Linh Chiá»ƒu, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.84994,106.771688', 10.849940, 106.771690, 'establishment', 'maps/raw/places/staticmap/location=10.84994,106.771688&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.84994,106.771688&format=gif'),
(104, '88ea07a7', '8d99922616c2c8ec4253bf794de9ee63', 'Ho Chi Minh City University of Culture', '51 Quá»‘c HÆ°Æ¡ng, Tháº£o Äiá»n, Quáº­n 2, Há»“ ChÃ­ Minh, Vietnam', '10.80559,106.73116', 10.805590, 106.731163, 'university', 'maps/raw/places/staticmap/location=10.80559,106.73116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.80559,106.73116&format=gif'),
(105, 'e29d6430', '7bd4a85bb8cacfac34cd9cd8949c0854', 'HCMC University of Pedagogy', '280 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 4, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh 700000, Vietnam', '10.762176,106.682418', 10.762176, 106.682419, 'university', 'maps/raw/places/staticmap/location=10.762176,106.682418&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.762176,106.682418&format=gif'),
(106, '3f282442', '10f69a1b96272a39ab39f67792a3e833', 'Nong Lam University', 'KP6 QL1A, ÄÃ´ng HÃ²a, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', '10.872103,106.792817', 10.872103, 106.792816, 'university', 'maps/raw/places/staticmap/location=10.872103,106.792817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.872103,106.792817&format=gif'),
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif'),
(108, '9d269217', 'c26b903cf110700dc5966bf51a620b78', 'Dingcheng', 'Dingcheng, Changde, Hunan, China', '29.018593,111.680783', 29.018593, 111.680786, 'sublocality_level_1', 'maps/raw/places/staticmap/location=29.018593,111.680783&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.018593,111.680783&format=gif'),
(109, 'a73090be', '4614700fa7a80c08d3f9d8847ba323c5', 'Trung TÃ¢m Ytáº¿ XÃ£ Äá»‹nh ThÃ nh', 'áº¤p NÃºi Äáº¥t Äá»‹nh ThÃ nh Huyá»‡n Dáº§u Tiáº¿ng, Binh Duong, Vietnam', '11.305045,106.464146', 11.305045, 106.464149, 'establishment', 'maps/raw/places/staticmap/location=11.305045,106.464146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.305045,106.464146&format=gif'),
(110, '3a3aff40', 'fab519a4acd5baaf1cef7c67a6f22f16', 'CÃ´ng an xÃ£ Äá»‹nh ThÃ nh', 'TL 943, Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.30676,105.303103', 10.306760, 105.303101, 'establishment', 'maps/raw/places/staticmap/location=10.30676,105.303103&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30676,105.303103&format=gif'),
(111, '21820bcc', '2a32d2644936c95633dd112cf16de2ce', 'Tráº¡m y táº¿ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.329509,105.295603', 10.329509, 105.295601, 'hospital', 'maps/raw/places/staticmap/location=10.329509,105.295603&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.329509,105.295603&format=gif'),
(112, 'ee1ea59d', 'd85c3055fcbdb6c0225f06937c2125da', 'Tráº¡i Giam Äá»‹nh ThÃ nh', 'Ä‘á»‹nh thÃ nh Huyá»‡n Thoáº¡i SÆ¡n, An Giang, Vietnam', '10.305778,105.301411', 10.305778, 105.301414, 'establishment', 'maps/raw/places/staticmap/location=10.305778,105.301411&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.305778,105.301411&format=gif'),
(113, 'fe08c446', '2c428a04a7f180eb18e3a76d447e9679', 'TrÆ°á»ng Thcs Äá»‹nh ThÃ nh', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.118412,105.30021', 9.118412, 105.300209, 'establishment', 'maps/raw/places/staticmap/location=9.118412,105.30021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.118412,105.30021&format=gif'),
(114, '5aa63eca', '37c6b0174eee1442a08506362ef2ea12', 'TrÆ°á»ng Thpt Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', '9.120604,105.28423', 9.120604, 105.284233, 'establishment', 'maps/raw/places/staticmap/location=9.120604,105.28423&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.120604,105.28423&format=gif'),
(115, '6ff3c2c2', 'a78f9ececb2244a0e2779e064949815d', 'Tráº¡i Sáº£n Xuáº¥t LÃºa Giá»‘ng Äá»‹nh ThÃ nh', 'áº¤p HÃ²a TÃ¢n, XÃ£ Äá»‹nh ThÃ nh, Huyá»‡n Thoáº¡i SÆ¡n, Tá»‰nh An Giang, Vietnam', '10.309609,105.299329', 10.309609, 105.299332, 'establishment', 'maps/raw/places/staticmap/location=10.309609,105.299329&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.309609,105.299329&format=gif'),
(116, '0eb5a64f', '77f51f6ca367a0bc2540aef2f9b3f716', 'Internet BÄ‘vh XÃ£ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', '9.132306,105.295558', 9.132306, 105.295555, 'establishment', 'maps/raw/places/staticmap/location=9.132306,105.295558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.132306,105.295558&format=gif'),
(117, '4b1f3ad9', 'f237aadfef7354cebce4d71438c227d1', 'TrÆ°á»ng Tiá»ƒu Há»c Äá»‹nh ThÃ nh B', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh A, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', '9.127961,105.264978', 9.127961, 105.264977, 'establishment', 'maps/raw/places/staticmap/location=9.127961,105.264978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.127961,105.264978&format=gif'),
(118, 'e1484f08', 'f2ddf08a6fc1ceaf5be3202e8fff27b4', 'Tac Ct', 'Tac Ct, Manassas, VA 20109, USA', '38.7787292,-77.5515056', 38.778728, -77.551506, 'route', 'maps/raw/places/staticmap/location=38.7787292,-77.5515056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7787292,-77.5515056&format=gif'),
(119, '4a8f5c90', 'be9af47bbb0808e8a6606f3c90ad4590', 'Táº¯c VÃ¢n', 'Táº¯c VÃ¢n, tp. CÃ  Mau, Ca Mau, Vietnam', '9.1662734,105.2641108', 9.166273, 105.264114, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.1662734,105.2641108&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.1662734,105.2641108&format=gif'),
(120, '41dd1c29', '93a77be2b0405e1586766f1199602f93', 'New Mec-ComÃ©rcio e IndÃºstria de Equipamentos', 'Avenida Tenente Coronel Muniz de AragÃ£o, 1710 - GardÃªnia Azul, Rio de Janeiro - RJ, 22765-000, Brazil', '-22.956939,-43.350614', -22.956940, -43.350613, 'establishment', 'maps/raw/places/staticmap/location=-22.956939,-43.350614&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.956939,-43.350614&format=gif'),
(121, 'becbcdaa', 'a0cc46b0066321f0b6279b1df5b84199', 'New Mec S.r.l.', 'Via Piave, 61, Cimadolmo TV, Italy', '45.796243,12.336353', 45.796242, 12.336353, 'establishment', 'maps/raw/places/staticmap/location=45.796243,12.336353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.796243,12.336353&format=gif'),
(122, 'a7a07125', '419e4b997ef89235a155a95f0a2de35e', 'New Mec Enterprise', '7 Townshend Road, Singapore 207605', '1.307756,103.858331', 1.307756, 103.858330, 'establishment', 'maps/raw/places/staticmap/location=1.307756,103.858331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.307756,103.858331&format=gif'),
(123, 'ad7d82a0', '3064b1d8f5e5cb70c9b9ae85d008e431', 'Newmec S.r.l.', '38 Via Enzo Ferrari, Isola Vicentina, Vi 36033, Italy', '45.6313,11.45546', 45.631302, 11.455460, 'establishment', 'maps/raw/places/staticmap/location=45.6313,11.45546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.6313,11.45546&format=gif'),
(124, '06896fb9', 'ce599b20619e1439f8a4189b39f44fe8', 'NC MEC USA Inc', '3150 Verona Avenue, Buford, GA 30518, United States', '34.132222,-83.969516', 34.132221, -83.969513, 'establishment', 'maps/raw/places/staticmap/location=34.132222,-83.969516&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.132222,-83.969516&format=gif'),
(125, '060a1262', '9ac84194d6eb084474b8c09a0c8854c6', 'MEC Head Office', '1077 Great Northern Way, Vancouver, BC V5T 1E1, Canada', '49.266089,-123.082763', 49.266090, -123.082764, 'establishment', 'maps/raw/places/staticmap/location=49.266089,-123.082763&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.266089,-123.082763&format=gif'),
(126, 'bdeeaa1f', '96311aaf41de3df90c4ea03c0dedfe31', 'MEC Newcastle - Electrician', 'Swalwell, Newcastle upon Tyne, Newcastle, United Kingdom', '54.95511,-1.690093', 54.955109, -1.690093, 'electrician', 'maps/raw/places/staticmap/location=54.95511,-1.690093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C54.95511,-1.690093&format=gif'),
(127, '97c6200f', 'f858a4ce9ebbbd8b008a367ab06f7996', 'Peugeot - Tri.Mec. Di Trincone A. E Trincone S. &amp; C.', '3 Arco Felice Vecchio, Pozzuoli, NA 80078, Italy', '40.84521,14.06737', 40.845211, 14.067370, 'car_dealer', 'maps/raw/places/staticmap/location=40.84521,14.06737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.84521,14.06737&format=gif'),
(128, '3b296431', '8219d0a0e79f27edd4efd2a0aa24b012', 'Nord Mec S.r.l.', 'Via Noalese, 75, 31100 Treviso TV, Italy', '45.65416,12.199863', 45.654160, 12.199863, 'car_dealer', 'maps/raw/places/staticmap/location=45.65416,12.199863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.65416,12.199863&format=gif'),
(129, 'f4c23dca', 'c70d46df4925484f7205389f6a45d2d1', 'Auto.Mec. Di Scaligina F. E Gasparre F. Snc', 'Via Ferrara, 74016 Massafra TA, Italy', '40.581587,17.111316', 40.581589, 17.111317, 'car_dealer', 'maps/raw/places/staticmap/location=40.581587,17.111316&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.581587,17.111316&format=gif'),
(130, 'c00ccf8c', '832aa7b1838cad902a5db5daed6442de', 'G.m.s. General Mec System Llc, Albany, New York', 'Via Ligornetto 15, 6854 S. Pietro, Switzerland', '45.856636,8.941396', 45.856636, 8.941396, 'establishment', 'maps/raw/places/staticmap/location=45.856636,8.941396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.856636,8.941396&format=gif'),
(131, '2f3a958d', 'ca18742d43f684daac28dd976383db24', 'MEC', '825 7th Avenue, New York, NY 10019, United States', '40.763023,-73.981064', 40.763023, -73.981064, 'establishment', 'maps/raw/places/staticmap/location=40.763023,-73.981064&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.763023,-73.981064&format=gif'),
(132, '1be8a4a6', 'ccd737062fbf998df3b00310f1c9df64', 'Mediaedge:Cia Portugal', 'Rua Dom JoÃ£o V 24, 1250-091 Lisboa, Portugal', '38.720575,-9.159455', 38.720573, -9.159455, 'establishment', 'maps/raw/places/staticmap/location=38.720575,-9.159455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.720575,-9.159455&format=gif'),
(133, '60a63d37', 'dfcac7185e811624497303eefeb85e32', 'MEC: Active Engagement', 'Avinguda Diagonal, 605, 08028 Barcelona, Barcelona, Spain', '41.388883,2.129107', 41.388882, 2.129107, 'establishment', 'maps/raw/places/staticmap/location=41.388883,2.129107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.388883,2.129107&format=gif'),
(134, '4160224d', 'de94f91f6ff98f5ce88eb151e037fefa', 'MEC Mining', '22/215 Adelaide Street, Brisbane QLD 4000, Australia', '-27.467441,153.026993', -27.467442, 153.026993, 'establishment', 'maps/raw/places/staticmap/location=-27.467441,153.026993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-27.467441,153.026993&format=gif'),
(135, '27098944', '3a67bd7f23d00105d90b3544a3561ae7', 'MEC Malaysia', 'Jalan Damanlela, Pusat Bandar Damansara, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', '3.146837,101.662164', 3.146837, 101.662163, 'establishment', 'maps/raw/places/staticmap/location=3.146837,101.662164&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.146837,101.662164&format=gif'),
(136, 'fd2104ab', '2997fff148d8dae397e58e4fa87f97e7', 'MEC', 'Rue PrÃ©vinaire 64, 1070 Ville de Bruxelles, Belgium', '50.833886,4.321935', 50.833885, 4.321935, 'doctor', 'maps/raw/places/staticmap/location=50.833886,4.321935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.833886,4.321935&format=gif'),
(137, 'ee9a4753', '330a51316a08ede1398c67509f1e69c8', 'MEC, Inc.', '221 McRand Court #100, Hagerstown, MD 21740, United States', '39.646741,-77.748709', 39.646740, -77.748711, 'electrician', 'maps/raw/places/staticmap/location=39.646741,-77.748709&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.646741,-77.748709&format=gif'),
(138, '03a11f07', 'dc3f168a9c634fbd94a17f542abfdfda', 'Mountain Equipment Co-op (MEC)', '6121 200 Street, Langley, BC V2Y, Canada', '49.113805,-122.671661', 49.113804, -122.671661, 'bicycle_store', 'maps/raw/places/staticmap/location=49.113805,-122.671661&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.113805,-122.671661&format=gif'),
(139, 'e7069cd2', 'b125c5245828bbd4017294ff9ccb86c8', 'New Mexico', 'New Mexico, USA', '34.5199402,-105.8700901', 34.519939, -105.870087, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=34.5199402,-105.8700901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.5199402,-105.8700901&format=gif'),
(140, 'b31481a3', '310f3c9ce4ee1897fa3c23a9a2129da7', 'Vinpearl Land Nha Trang', 'VÄ©nh NguyÃªn, Nha Trang, Khanh Hoa Province, Vietnam', '12.21728,109.241895', 12.217280, 109.241898, 'lodging', 'maps/raw/places/staticmap/location=12.21728,109.241895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.21728,109.241895&format=gif'),
(141, '064dddf3', 'eeea1ea64e3ca92d1cc10d1c83abca3e', 'HÃ²n Ngá»c Viá»‡t - Vinpearl Land', '7 Tráº§n PhÃº, tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.216119,109.241223', 12.216119, 109.241226, 'restaurant', 'maps/raw/places/staticmap/location=12.216119,109.241223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.216119,109.241223&format=gif'),
(142, 'dc8dfb9a', '24beb9eab78c5f4c10beb14e050292f7', 'Vinpearl Luxury Nha Trang', 'Nha Trang, Khanh Hoa Province, Vietnam', '12.211558,109.243605', 12.211558, 109.243607, 'lodging', 'maps/raw/places/staticmap/location=12.211558,109.243605&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.211558,109.243605&format=gif'),
(143, '854fe8d3', '19b1e64871e4a68022a91e10366c61cf', 'Vinpearl Luxury Da Nang', 'TrÆ°á»ng Sa, HÃ²a Háº£i, NgÅ© HÃ nh SÆ¡n, ÄÃ  Náºµng, Vietnam', '16.007778,108.266107', 16.007778, 108.266106, 'lodging', 'maps/raw/places/staticmap/location=16.007778,108.266107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C16.007778,108.266107&format=gif'),
(144, 'bdd9f461', 'e170adb7cf3e92d4a22a7dd560dcfe98', 'CÃ´ng Ty Cp Du Lá»‹ch Tm Vinpearl', '72 LÃª ThÃ¡nh TÃ´n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', '10.77771,106.702008', 10.777710, 106.702011, 'establishment', 'maps/raw/places/staticmap/location=10.77771,106.702008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.77771,106.702008&format=gif'),
(145, 'a562856d', '9c45d7ac66e8a87662636225bca309e4', 'Vinpearl Nail &amp; Spa', '20079 Stone Oak Parkway #1102, San Antonio, TX 78258, United States', '29.642657,-98.488919', 29.642656, -98.488922, 'beauty_salon', 'maps/raw/places/staticmap/location=29.642657,-98.488919&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.642657,-98.488919&format=gif'),
(146, 'da228937', 'd359cfd135685783714095b6496b3fc2', 'Vinpearl Golf Club', 'tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', '12.213053,109.257877', 12.213053, 109.257874, 'establishment', 'maps/raw/places/staticmap/location=12.213053,109.257877&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.213053,109.257877&format=gif'),
(147, '84f8f3fb', 'bd1544b7a8a0541ae948ab8412c77d10', 'Vinpearl', 'RaumerstraÃŸe 14A, 10437 Berlin, Germany', '52.542082,13.419868', 52.542084, 13.419868, 'restaurant', 'maps/raw/places/staticmap/location=52.542082,13.419868&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.542082,13.419868&format=gif'),
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif'),
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(153, 'a4157a1a', '98115adfd29e8efc177e99777555a7ea', 'Vinpearl Golf Club Sales Office', 'Khu ÄÃ´ Thá»‹ Sinh ThÃ¡i Vincom Village, PhÆ°á»ng Viá»‡t HÆ°ng, Quáº­n Long BiÃªn, HÃ  Ná»™i, Vietnam', '21.047808,105.91543', 21.047808, 105.915428, 'establishment', 'maps/raw/places/staticmap/location=21.047808,105.91543&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.047808,105.91543&format=gif'),
(154, 'd90903d0', '7070023b09b213d8d4ec3330238ef1fb', 'Vinpearl Water Park', '72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh XuÃ¢n, HÃ  Ná»™i, Vietnam', '21.002691,105.814658', 21.002691, 105.814659, 'amusement_park', 'maps/raw/places/staticmap/location=21.002691,105.814658&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.002691,105.814658&format=gif'),
(155, 'e4c2d839', '6526dc617b1b0ab30491ab5f6fed9e11', 'Vinpearl Resort Phu Quoc', 'BÃ£i DÃ i, Huyá»‡n, Cá»­a Cáº¡n-GÃ nh Dáº§u, GÃ nh Dáº§u, Phu Quoc District, tá»‰nh KiÃªn Giang, Vietnam', '10.33588,103.856896', 10.335880, 103.856895, 'lodging', 'maps/raw/places/staticmap/location=10.33588,103.856896&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.33588,103.856896&format=gif'),
(156, 'cc098f01', 'f43532e968e4c72c4f303cc9959e4ea7', 'Vinpearl Resort &amp; Spa Travel &amp; Trading J.S.C.', '182 Nguyen Van Thu Street, Dakao Ward, District 1, Ho Chi Minh City, Vietnam', '10.777799,106.702146', 10.777799, 106.702148, 'lodging', 'maps/raw/places/staticmap/location=10.777799,106.702146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.777799,106.702146&format=gif'),
(157, 'b321ca06', '09e4d2c66ca4e0ed6d694e0d2a18a02f', 'Lotteria Vinpearl', 'Vinpearl Land, ChÃ¢n cÃ¡p treo, BÃ£i Trá»¥, HÃ²n Tre, Nha Trang, tp. Nha Trang, 570000, Vietnam', '12.217217,109.243519', 12.217217, 109.243523, 'restaurant', 'maps/raw/places/staticmap/location=12.217217,109.243519&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.217217,109.243519&format=gif'),
(158, '2e97d1a2', '9c9c3cb90cb11ddcca9f51ba29e6d247', 'HÃ²n Mun', 'HÃ²n Mun, VÄ©nh NguyÃªn, tp. Nha Trang, Vietnam', '12.1661449,109.3024824', 12.166145, 109.302483, 'natural_feature', 'maps/raw/places/staticmap/location=12.1661449,109.3024824&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1661449,109.3024824&format=gif'),
(159, '7a483e0f', 'eb0cf3c98d5fc7e6102f317195a92413', 'CÃ´n Äáº£o SeaTravel', '6, Nguyá»…n Äá»©c Thuáº­n, Con Dao, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678821,106.602123', 8.678821, 106.602119, 'lodging', 'maps/raw/places/staticmap/location=8.678821,106.602123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678821,106.602123&format=gif'),
(160, 'd880c539', '8f9eab57241fce91dcea4de85fa2c7b3', 'CÃ´n Äáº£o Sea Travel Resort', 'BÃ£i An Háº£i, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, Vietnam', '8.678789,106.602637', 8.678789, 106.602638, 'lodging', 'maps/raw/places/staticmap/location=8.678789,106.602637&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678789,106.602637&format=gif'),
(161, 'a51937f9', '814b541cdde178adf150e7fbec0e10ff', 'Kos Island International Airport', 'Kos 853 02, Greece', '36.794215,27.088395', 36.794216, 27.088394, 'airport', 'maps/raw/places/staticmap/location=36.794215,27.088395&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.794215,27.088395&format=gif'),
(162, 'a0397e35', '4eec37d6859de37b9df0d03c545592ed', 'LGKF', 'Kefalonia 281 00, Greece', '38.119503,20.504924', 38.119503, 20.504925, 'airport', 'maps/raw/places/staticmap/location=38.119503,20.504924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.119503,20.504924&format=gif'),
(163, 'baa37396', 'c783aeadf0086cf8c250814ae1d04aa2', 'Marshall Islands International Airport', 'Marshall Islands', '7.065189,171.272737', 7.065189, 171.272736, 'airport', 'maps/raw/places/staticmap/location=7.065189,171.272737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.065189,171.272737&format=gif'),
(164, '437972be', '5ad066d45b573abe923277575ec612aa', 'Qingdao International Airport', '99 Min Hang Lu, Chengyang Qu, Qingdao Shi, Shandong Sheng, China', '36.266674,120.383123', 36.266674, 120.383125, 'airport', 'maps/raw/places/staticmap/location=36.266674,120.383123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.266674,120.383123&format=gif'),
(165, '5ee755c2', '1e106feec2b611bc71b36eb463138ff4', 'Green Island Airport', '951, Taiwan, Taitung County, LÃ¼dao Township, 231', '22.672362,121.466863', 22.672361, 121.466866, 'airport', 'maps/raw/places/staticmap/location=22.672362,121.466863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.672362,121.466863&format=gif'),
(166, '81d40911', '52bb181c5d32a602408b5465e12d9d57', 'Qinhuangdao Shanhaiguan Airport', 'Shanhaiguan, Qinhuangdao, Hebei, China', '39.968056,119.731111', 39.968056, 119.731110, 'airport', 'maps/raw/places/staticmap/location=39.968056,119.731111&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968056,119.731111&format=gif'),
(167, '824ed644', '9b7ef8a786e016826483f941b04cc82d', 'SÃ i GÃ²n CÃ´n Äáº£o Resort', 'Huyá»‡n á»§y CÃ´n Äáº£o, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.682649,106.609396', 8.682649, 106.609398, 'travel_agency', 'maps/raw/places/staticmap/location=8.682649,106.609396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.682649,106.609396&format=gif'),
(168, '88a218d9', 'ca5cc3071df902a950449ca9ec245cb8', 'Khu Biá»‡t thá»± KhÃ¡ch sáº¡n SÃ i GÃ²n - CÃ´n Äáº£o', '18-24 TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683005,106.609698', 8.683005, 106.609695, 'lodging', 'maps/raw/places/staticmap/location=8.683005,106.609698&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683005,106.609698&format=gif'),
(169, '03a82f6d', 'd0156f651e0e423b41119b1ea1d8a14b', 'Tam Dao National Park', 'Tam Äáº£o, VÄ©nh PhÃºc, Vietnam', '21.484176,105.61102', 21.484177, 105.611023, 'park', 'maps/raw/places/staticmap/location=21.484176,105.61102&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.484176,105.61102&format=gif'),
(170, '1f662085', 'b3a4065c79fa42df57bc8ce305dd5701', 'CÃ´n Äáº£o Resort', '8, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.677575,106.601062', 8.677575, 106.601059, 'establishment', 'maps/raw/places/staticmap/location=8.677575,106.601062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.677575,106.601062&format=gif'),
(171, '83b9a61f', '7f88f5fc648d77f491f6efd4524419c6', 'Äáº£o cÃ² Chi LÄƒng Nam', 'tt. Thanh Miá»‡n, Thanh Miá»‡n, Háº£i DÆ°Æ¡ng, Vietnam', '20.71361,106.227922', 20.713610, 106.227921, 'establishment', 'maps/raw/places/staticmap/location=20.71361,106.227922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.71361,106.227922&format=gif'),
(172, '21e5c734', '7ed8e1e3af74bed9dd09e713b7ab5edb', 'Con Dao Airport Terminal', 'Cá» á»ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.731235,106.628713', 8.731235, 106.628716, 'establishment', 'maps/raw/places/staticmap/location=8.731235,106.628713&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.731235,106.628713&format=gif'),
(173, '51e182e6', 'fb7f701c4d138befd3e3c29efe84643d', 'Ks SÃ i GÃ²n - CÃ´n Äáº£o', '18-24, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.683978,106.611468', 8.683978, 106.611465, 'lodging', 'maps/raw/places/staticmap/location=8.683978,106.611468&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683978,106.611468&format=gif'),
(174, '1347ef68', '9257b7d00bbe84c1c91f5f3ccbec6bf8', 'Northeast Greenland National Park', 'Greenland', '76,-30', 76.000000, -30.000000, 'park', 'maps/raw/places/staticmap/location=76,-30&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C76,-30&format=gif'),
(175, 'e64c20bb', '1da0b772fe5bb309a800513ca9fd1a97', 'Äáº·t phÃ²ng khÃ¡ch sáº¡n CÃ´n Äáº£o giÃ¡ ráº»', '33 Pháº¡m HÃ¹ng, BÃ¬nh HÆ°ng, BÃ¬nh ChÃ¡nh, Há»“ ChÃ­ Minh, Vietnam', '10.725845,106.678662', 10.725845, 106.678665, 'lodging', 'maps/raw/places/staticmap/location=10.725845,106.678662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.725845,106.678662&format=gif'),
(176, 'c56bb139', '3f82a70300915cf48ec1de562ba1d941', 'CÃ´n Äáº£o Resort', 'Nguyá»…n Äá»©c Thuáº­n, huyá»‡n CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', '8.678022,106.601345', 8.678022, 106.601341, 'restaurant', 'maps/raw/places/staticmap/location=8.678022,106.601345&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678022,106.601345&format=gif'),
(177, '5099af51', '839812f2c30591e5247ba4e70ddc6b5e', 'BÆ°u Äiá»‡n Tam Äáº£o', '21 Tam Äáº£o, 15, 10, Há»“ ChÃ­ Minh, Vietnam', '10.779523,106.663294', 10.779523, 106.663292, 'establishment', 'maps/raw/places/staticmap/location=10.779523,106.663294&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.779523,106.663294&format=gif'),
(178, '2f9404b3', 'a916089fe959acd6e347c2ecae5968ee', 'Bá»ƒ bÆ¡i bÃ¡n Ä‘áº£o Linh ÄÃ m', 'Khu Ä‘Ã´ thá»‹ Linh ÄÃ m, HoÃ ng Liá»‡t, HoÃ ng Mai, HÃ  Ná»™i, Vietnam', '20.964152,105.829259', 20.964151, 105.829262, 'establishment', 'maps/raw/places/staticmap/location=20.964152,105.829259&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.964152,105.829259&format=gif'),
(179, 'df0ffbd9', '62b847ee086d4697349cab15d7e8e5cb', 'Soc Trang', 'Soc Trang, Vietnam', '9.6003688,105.9599539', 9.600369, 105.959953, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.6003688,105.9599539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.6003688,105.9599539&format=gif'),
(180, 'ce70ceef', '207f9b40a04d45e4aa54cbe84fb741f8', 'Afghanistan', 'Afghanistan', '33.93911,67.709953', 33.939110, 67.709953, 'country', 'maps/raw/places/staticmap/location=33.93911,67.709953&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.93911,67.709953&format=gif'),
(181, '3cdfd90e', '6495ce0173e2e57e0b3c8840b37f4c16', 'Albania', 'Albania', '41.153332,20.168331', 41.153332, 20.168331, 'country', 'maps/raw/places/staticmap/location=41.153332,20.168331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.153332,20.168331&format=gif'),
(182, '6369f80f', '3a26dbe4288a5c82ea133dd1e9153bcd', 'Algeria', 'Algeria', '28.033886,1.659626', 28.033886, 1.659626, 'country', 'maps/raw/places/staticmap/location=28.033886,1.659626&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.033886,1.659626&format=gif'),
(183, '45ecbd4f', 'dc7572887606b91d005b9f701a6e5598', 'Andorra', 'Andorra', '42.506285,1.521801', 42.506287, 1.521801, 'country', 'maps/raw/places/staticmap/location=42.506285,1.521801&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.506285,1.521801&format=gif'),
(184, 'c80af15e', '2f48608a55528259962f85322b963a12', 'Andorra la Vella', 'Andorra la Vella, Andorra', '42.5063174,1.5218355', 42.506317, 1.521835, 'locality', 'maps/raw/places/staticmap/location=42.5063174,1.5218355&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.5063174,1.5218355&format=gif'),
(185, 'da4de59f', 'd3568a741b6d6464f26b3991f41719e6', 'Angola', 'Angola', '-11.202692,17.873887', -11.202692, 17.873886, 'country', 'maps/raw/places/staticmap/location=-11.202692,17.873887&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.202692,17.873887&format=gif'),
(186, '59cdaec9', 'f9d4a021ceee8784368ed4e37fc43cca', 'Antigua and Barbuda', 'Antigua and Barbuda', '17.060816,-61.796428', 17.060816, -61.796429, 'country', 'maps/raw/places/staticmap/location=17.060816,-61.796428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.060816,-61.796428&format=gif'),
(187, 'cc31d7fd', 'b380a7a71735a2049b0d5c274277bf9d', 'Armenia', 'Armenia', '40.069099,45.038189', 40.069099, 45.038189, 'country', 'maps/raw/places/staticmap/location=40.069099,45.038189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.069099,45.038189&format=gif'),
(188, '77ff8ef3', '87ad6668219e5446f9f60963ca99eab9', 'Austria', 'Austria', '47.516231,14.550072', 47.516232, 14.550072, 'country', 'maps/raw/places/staticmap/location=47.516231,14.550072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.516231,14.550072&format=gif'),
(189, '007f063e', '06fa6988f7d4584154b7f50c744a937d', 'Azerbaijan', 'Azerbaijan', '40.143105,47.576927', 40.143105, 47.576927, 'country', 'maps/raw/places/staticmap/location=40.143105,47.576927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.143105,47.576927&format=gif'),
(190, '5b931420', 'b9691c2482315e17cb87d889d3715461', 'The Bahamas', 'The Bahamas', '25.03428,-77.39628', 25.034281, -77.396278, 'country', 'maps/raw/places/staticmap/location=25.03428,-77.39628&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.03428,-77.39628&format=gif'),
(191, '96fdf906', '8a9ae1acd6384b37d0e9cc18ba1794e4', 'Bahrain', 'Bahrain', '26.0667,50.5577', 26.066700, 50.557701, 'country', 'maps/raw/places/staticmap/location=26.0667,50.5577&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.0667,50.5577&format=gif'),
(192, 'ce824fec', '381d003f2752270b0c73aa1e71567f98', 'Bangladesh', 'Bangladesh', '23.684994,90.356331', 23.684994, 90.356331, 'country', 'maps/raw/places/staticmap/location=23.684994,90.356331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.684994,90.356331&format=gif'),
(193, 'b3ae9ebf', 'dc82deff2164769c92e1b68695386907', 'Barbados', 'Barbados', '13.193887,-59.543198', 13.193887, -59.543198, 'country', 'maps/raw/places/staticmap/location=13.193887,-59.543198&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.193887,-59.543198&format=gif'),
(194, '8a4dcc60', '0c356ed8c7e52fd89d39299915d2bcbf', 'Belarus', 'Belarus', '53.709807,27.953389', 53.709808, 27.953388, 'country', 'maps/raw/places/staticmap/location=53.709807,27.953389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.709807,27.953389&format=gif'),
(195, 'dc66ae53', '90cfd4711077080df97a8f2539bb1edd', 'Belize', 'Belize', '17.189877,-88.49765', 17.189877, -88.497650, 'country', 'maps/raw/places/staticmap/location=17.189877,-88.49765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.189877,-88.49765&format=gif'),
(196, '4208ea59', '1e0a71f7ec9514eee9e9e81b96454073', 'Benin', 'Benin', '9.30769,2.315834', 9.307690, 2.315834, 'country', 'maps/raw/places/staticmap/location=9.30769,2.315834&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.30769,2.315834&format=gif'),
(197, 'ea54617f', 'd632cba6e6ae9582728181c53e29ed7e', 'Bhutan', 'Bhutan', '27.514162,90.433601', 27.514162, 90.433601, 'country', 'maps/raw/places/staticmap/location=27.514162,90.433601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.514162,90.433601&format=gif'),
(198, '5a0ffaeb', '39a2585970551fe1d9fd242e74dfef45', 'Bolivia', 'Bolivia', '-16.290154,-63.588653', -16.290154, -63.588654, 'country', 'maps/raw/places/staticmap/location=-16.290154,-63.588653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-16.290154,-63.588653&format=gif'),
(199, 'ca3023ac', '777eb518681ba3dc52c653890bb59cc4', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', '43.915886,17.679076', 43.915886, 17.679075, 'country', 'maps/raw/places/staticmap/location=43.915886,17.679076&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.915886,17.679076&format=gif'),
(200, '3388715d', '0e051763f057916ab4617a40a3424236', 'Botswana', 'Botswana', '-22.328474,24.684866', -22.328474, 24.684866, 'country', 'maps/raw/places/staticmap/location=-22.328474,24.684866&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.328474,24.684866&format=gif'),
(201, '1016dd64', '7642bfce0f160c283b6a15696940c3ad', 'Brunei', 'Brunei', '4.535277,114.727669', 4.535277, 114.727669, 'country', 'maps/raw/places/staticmap/location=4.535277,114.727669&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.535277,114.727669&format=gif'),
(202, 'bff26485', 'fb3d899bc07a76011ed34f7f2521ef04', 'Bulgaria', 'Bulgaria', '42.733883,25.48583', 42.733883, 25.485830, 'country', 'maps/raw/places/staticmap/location=42.733883,25.48583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.733883,25.48583&format=gif'),
(203, 'b367b1fb', 'b3f1045abf4d1bcfd5ad42493eae2930', 'Burkina Faso', 'Burkina Faso', '12.238333,-1.561593', 12.238333, -1.561593, 'country', 'maps/raw/places/staticmap/location=12.238333,-1.561593&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.238333,-1.561593&format=gif'),
(204, 'ac756781', '6fda714e1d7a081eea5e2f961406c3d6', 'Republic of the Union of Myanmar', 'Republic of the Union of Myanmar', '21.913965,95.956223', 21.913965, 95.956223, 'country', 'maps/raw/places/staticmap/location=21.913965,95.956223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.913965,95.956223&format=gif'),
(205, 'b5ea4798', '3fa89dcb76ff437adfa56d3cc37e7a6d', 'Burundi', 'Burundi', '-3.373056,29.918886', -3.373056, 29.918886, 'country', 'maps/raw/places/staticmap/location=-3.373056,29.918886&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-3.373056,29.918886&format=gif'),
(206, '8852a653', '4266125e0c4f0981056e95e95b66e783', 'Cambodia', 'Cambodia', '12.565679,104.990963', 12.565679, 104.990967, 'country', 'maps/raw/places/staticmap/location=12.565679,104.990963&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.565679,104.990963&format=gif'),
(207, '2d8916d7', 'fc5fb23d075506030774313b3b22a378', 'Cameroon', 'Cameroon', '7.369722,12.354722', 7.369722, 12.354722, 'country', 'maps/raw/places/staticmap/location=7.369722,12.354722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.369722,12.354722&format=gif'),
(208, 'b840ae9a', '03d45d30ecdaca70cae7f1a8d55b344d', 'Cape Verde', 'Cape Verde', '15.120142,-23.6051721', 15.120142, -23.605171, 'country', 'maps/raw/places/staticmap/location=15.120142,-23.6051721&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.120142,-23.6051721&format=gif'),
(209, '35cae5dd', '8bdab0de5a2cda226cf75c7dd32b8e2a', 'Central African Republic', 'Central African Republic', '6.611111,20.939444', 6.611111, 20.939444, 'country', 'maps/raw/places/staticmap/location=6.611111,20.939444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.611111,20.939444&format=gif'),
(210, '5afe39c6', '2eded59d571c09561baf918d63b00e4d', 'Chad', 'Chad', '15.454166,18.732207', 15.454166, 18.732206, 'country', 'maps/raw/places/staticmap/location=15.454166,18.732207&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.454166,18.732207&format=gif'),
(211, 'f64de8f0', 'eff3a8e24105a0e5dd66eecb37e9d7c7', 'Chile', 'Chile', '-35.675147,-71.542969', -35.675148, -71.542969, 'country', 'maps/raw/places/staticmap/location=-35.675147,-71.542969&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-35.675147,-71.542969&format=gif'),
(212, 'be89688a', '355672960553a7e2c3eac0fb834acda9', 'Comoros', 'Comoros', '-11.6455,43.3333', -11.645500, 43.333302, 'country', 'maps/raw/places/staticmap/location=-11.6455,43.3333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.6455,43.3333&format=gif'),
(213, '5f3e483e', 'a5dbc77555dc19f99ce318eb5be7a9f7', 'Congo', 'Congo', '-0.228021,15.827659', -0.228021, 15.827659, 'country', 'maps/raw/places/staticmap/location=-0.228021,15.827659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.228021,15.827659&format=gif'),
(214, 'c33c4a03', '64d1495c81efd61b6ccbd5744c04bc36', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', '-4.038333,21.758664', -4.038333, 21.758663, 'country', 'maps/raw/places/staticmap/location=-4.038333,21.758664&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-4.038333,21.758664&format=gif'),
(215, 'c4e506bf', '672acf57eccae55c4583f27ac42087cd', 'Costa Rica', 'Costa Rica', '9.748917,-83.753428', 9.748917, -83.753426, 'country', 'maps/raw/places/staticmap/location=9.748917,-83.753428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.748917,-83.753428&format=gif'),
(216, 'b797689d', '5e53b983d8ab018abae45ea6db56a32a', 'Croatia', 'Croatia', '45.1,15.2', 45.099998, 15.200000, 'country', 'maps/raw/places/staticmap/location=45.1,15.2&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.1,15.2&format=gif'),
(217, '3178e2b6', 'ced0931b2d0f1d62e204035e0e4bf1c1', 'Cuba', 'Cuba', '21.521757,-77.781167', 21.521757, -77.781166, 'country', 'maps/raw/places/staticmap/location=21.521757,-77.781167&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.521757,-77.781167&format=gif'),
(218, 'aaea7422', '9a3f1793ce3b704f32419eca2c1bbf3b', 'Cyprus', 'Cyprus', '35.126413,33.429859', 35.126411, 33.429859, 'country', 'maps/raw/places/staticmap/location=35.126413,33.429859&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.126413,33.429859&format=gif'),
(219, '071e1c2c', '933a1672593c4e64b93152d7ca987501', 'Djibouti', 'Djibouti', '11.825138,42.590275', 11.825138, 42.590275, 'country', 'maps/raw/places/staticmap/location=11.825138,42.590275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.825138,42.590275&format=gif'),
(220, '4b0309fb', '45ce69b9f020bbfd4b67361251a0c4b2', 'Djibouti', 'Djibouti, Djibouti', '11.588333,43.145', 11.588333, 43.145000, 'locality', 'maps/raw/places/staticmap/location=11.588333,43.145&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.588333,43.145&format=gif'),
(221, 'a6dd5f65', 'bf64605730d4c9a8e137ee0ce8b325ce', 'Dominica', 'Dominica', '15.414999,-61.370976', 15.414999, -61.370975, 'country', 'maps/raw/places/staticmap/location=15.414999,-61.370976&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.414999,-61.370976&format=gif'),
(222, '48c05f15', 'dbc8a1efb6d17966ce6828bf5e3bd548', 'Dominican Republic', 'Dominican Republic', '18.735693,-70.162651', 18.735693, -70.162651, 'country', 'maps/raw/places/staticmap/location=18.735693,-70.162651&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.735693,-70.162651&format=gif'),
(223, '8c3afd7a', 'f3a7a93fbf07f1c1daaa4a733c7c2c49', 'East Timor', 'East Timor', '-8.874217,125.727539', -8.874217, 125.727539, 'country', 'maps/raw/places/staticmap/location=-8.874217,125.727539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-8.874217,125.727539&format=gif'),
(224, '5190092d', '322f31ec0c335bfb785ba7e0e6969f8e', 'Egypt', 'Egypt', '26.820553,30.802498', 26.820553, 30.802498, 'country', 'maps/raw/places/staticmap/location=26.820553,30.802498&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.820553,30.802498&format=gif'),
(225, '94668225', '68b62b4f27731da3e25eb0ec81572865', 'El Salvador', 'El Salvador', '13.794185,-88.89653', 13.794185, -88.896530, 'country', 'maps/raw/places/staticmap/location=13.794185,-88.89653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.794185,-88.89653&format=gif'),
(226, 'f0607404', '49c61be4009021bd4e4285a7e81f1dc7', 'England', 'England, UK', '52.3555177,-1.1743197', 52.355518, -1.174320, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.3555177,-1.1743197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.3555177,-1.1743197&format=gif'),
(227, 'b0123cee', 'ba1677acc012d8f6b7182b3ab766f9e7', 'Equatorial Guinea', 'Equatorial Guinea', '1.650801,10.267895', 1.650801, 10.267895, 'country', 'maps/raw/places/staticmap/location=1.650801,10.267895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.650801,10.267895&format=gif'),
(228, '07c48714', '8324b71942911433a37bfb3e372dc271', 'Eritrea', 'Eritrea', '15.179384,39.782334', 15.179384, 39.782333, 'country', 'maps/raw/places/staticmap/location=15.179384,39.782334&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.179384,39.782334&format=gif'),
(229, '135fa511', '76d3f0d1811ac033d1cf5c939a329503', 'Estonia', 'Estonia', '58.595272,25.013607', 58.595272, 25.013607, 'country', 'maps/raw/places/staticmap/location=58.595272,25.013607&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C58.595272,25.013607&format=gif'),
(230, 'c84a84e9', '8140ae14adb3de9ef5a861dab2764e8b', 'Ethiopia', 'Ethiopia', '9.145,40.489673', 9.145000, 40.489674, 'country', 'maps/raw/places/staticmap/location=9.145,40.489673&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.145,40.489673&format=gif'),
(231, '3d1e17ae', '04f24037a97661dc777bd572dafa0023', 'Fiji', 'Fiji', '-17.713371,178.065032', -17.713371, 178.065033, 'country', 'maps/raw/places/staticmap/location=-17.713371,178.065032&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-17.713371,178.065032&format=gif'),
(232, 'e51e9f82', '87de03467ea6b58a3b022559e8b40ddd', 'Finland', 'Finland', '61.92411,25.748151', 61.924110, 25.748152, 'country', 'maps/raw/places/staticmap/location=61.92411,25.748151&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C61.92411,25.748151&format=gif'),
(233, 'cbc997a0', '044b173ce8d9539bc8dbbc394307897f', 'Gabon', 'Gabon', '-0.803689,11.609444', -0.803689, 11.609444, 'country', 'maps/raw/places/staticmap/location=-0.803689,11.609444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.803689,11.609444&format=gif'),
(234, '6f657851', 'c950494edc402f0c10fea62af80aa3b5', 'The Gambia', 'The Gambia', '13.443182,-15.310139', 13.443182, -15.310139, 'country', 'maps/raw/places/staticmap/location=13.443182,-15.310139&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.443182,-15.310139&format=gif'),
(235, '2f60eddb', '59dcf465e0e5900551061cf59d796544', 'Georgia', 'Georgia', '42.315407,43.356892', 42.315407, 43.356892, 'country', 'maps/raw/places/staticmap/location=42.315407,43.356892&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.315407,43.356892&format=gif'),
(236, '9e422f6d', '20dc11057c3341b1036a74c15d47627c', 'Ghana', 'Ghana', '7.946527,-1.023194', 7.946527, -1.023194, 'country', 'maps/raw/places/staticmap/location=7.946527,-1.023194&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.946527,-1.023194&format=gif'),
(237, 'ff25b87c', '820086a60a1146ddfbcf953dec6bc27b', 'United Kingdom', 'United Kingdom', '55.378051,-3.435973', 55.378052, -3.435973, 'country', 'maps/raw/places/staticmap/location=55.378051,-3.435973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.378051,-3.435973&format=gif'),
(238, 'f5f12a94', 'a9dc361d24bb2f690858a6d3d1f734fe', 'Grenada', 'Grenada', '12.1165,-61.679', 12.116500, -61.679001, 'country', 'maps/raw/places/staticmap/location=12.1165,-61.679&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1165,-61.679&format=gif'),
(239, '2cf61a8b', 'dbabbfc561271d0b23484d19bff8198e', 'Guatemala', 'Guatemala', '15.783471,-90.230759', 15.783471, -90.230759, 'country', 'maps/raw/places/staticmap/location=15.783471,-90.230759&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.783471,-90.230759&format=gif'),
(240, '0776e2cd', '13a73077ed2fb2cfbe517d918b0c57c4', 'Guatemala City', 'Guatemala City, Guatemala', '14.613333,-90.535278', 14.613333, -90.535278, 'locality', 'maps/raw/places/staticmap/location=14.613333,-90.535278&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.613333,-90.535278&format=gif'),
(241, '736fe142', 'd93b1f0bc8b39393f0bf44d894575984', 'Guatemala', 'Guatemala, Guatemala', '14.7514999,-90.5257823', 14.751500, -90.525780, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=14.7514999,-90.5257823&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.7514999,-90.5257823&format=gif'),
(242, '8089ca32', '78267cb10c974cabcda3ef1328e40734', 'Guinea-Bissau', 'Guinea-Bissau', '11.803749,-15.180413', 11.803749, -15.180413, 'country', 'maps/raw/places/staticmap/location=11.803749,-15.180413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.803749,-15.180413&format=gif'),
(243, '0703ccb8', '907ca847f4b769b70f9ad1c46fcddab1', 'Guyana', 'Guyana', '4.860416,-58.93018', 4.860416, -58.930180, 'country', 'maps/raw/places/staticmap/location=4.860416,-58.93018&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.860416,-58.93018&format=gif'),
(244, 'ffa384e0', 'eb9eeee1875df91c55259bf1296886bf', 'Haiti', 'Haiti', '18.971187,-72.285215', 18.971188, -72.285217, 'country', 'maps/raw/places/staticmap/location=18.971187,-72.285215&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.971187,-72.285215&format=gif'),
(245, '90ba3344', '953e207b6386385fd5539e52ba0ac8ff', 'Honduras', 'Honduras', '15.199999,-86.241905', 15.199999, -86.241905, 'country', 'maps/raw/places/staticmap/location=15.199999,-86.241905&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.199999,-86.241905&format=gif'),
(246, 'ea12496e', 'ed3f7e6c11706c707c579866fcbc7830', 'Hungary', 'Hungary', '47.162494,19.503304', 47.162495, 19.503304, 'country', 'maps/raw/places/staticmap/location=47.162494,19.503304&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.162494,19.503304&format=gif'),
(247, '62be2d6c', '5e5a9b945db9e1877b5ff06952261fe5', 'Iceland', 'Iceland', '64.963051,-19.020835', 64.963051, -19.020836, 'country', 'maps/raw/places/staticmap/location=64.963051,-19.020835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C64.963051,-19.020835&format=gif'),
(248, '8509cf6b', '2e87dc75195f57b0a0b4bc1c27a47a6e', 'Indonesia', 'Indonesia', '-0.789275,113.921327', -0.789275, 113.921326, 'country', 'maps/raw/places/staticmap/location=-0.789275,113.921327&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.789275,113.921327&format=gif'),
(249, 'd40be3c8', '9436bd2bf63d552ddec14015a9711503', 'Iraq', 'Iraq', '33.223191,43.679291', 33.223190, 43.679291, 'country', 'maps/raw/places/staticmap/location=33.223191,43.679291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.223191,43.679291&format=gif'),
(250, '2d7944c1', '97e7534b3d35c7e69d6947014d3b6651', 'Ireland', 'Ireland', '53.41291,-8.24389', 53.412910, -8.243890, 'country', 'maps/raw/places/staticmap/location=53.41291,-8.24389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.41291,-8.24389&format=gif'),
(251, '78bb61d9', 'b4a201c0426b5593dbf404834a9ec665', 'Israel', 'Israel', '31.046051,34.851612', 31.046051, 34.851612, 'country', 'maps/raw/places/staticmap/location=31.046051,34.851612&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.046051,34.851612&format=gif'),
(252, '6bf96a97', 'dfdedb3da96bf7449960c3b0e6656929', 'Jamaica', 'Jamaica', '18.109581,-77.297508', 18.109581, -77.297508, 'country', 'maps/raw/places/staticmap/location=18.109581,-77.297508&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.109581,-77.297508&format=gif'),
(253, '2522ca5c', '7b83e1e1ad4c197fcf9a440237f6f146', 'Jordan', 'Jordan', '30.585164,36.238414', 30.585163, 36.238415, 'country', 'maps/raw/places/staticmap/location=30.585164,36.238414&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.585164,36.238414&format=gif'),
(254, 'ba4e2f0f', '99a4d62e9c9b5a4b9eb4936d23f7b143', 'Kazakhstan', 'Kazakhstan', '48.019573,66.923684', 48.019573, 66.923683, 'country', 'maps/raw/places/staticmap/location=48.019573,66.923684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.019573,66.923684&format=gif'),
(255, '674e1079', 'a96aacb5f5a53d8ba10ef1c8ab445f3c', 'Kenya', 'Kenya', '-0.023559,37.906193', -0.023559, 37.906193, 'country', 'maps/raw/places/staticmap/location=-0.023559,37.906193&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.023559,37.906193&format=gif'),
(256, 'f15dd034', '2a41674ced1331be6e7fe32a7470d676', 'Kiribati', 'Kiribati', '1.8709185,-157.3626011', 1.870918, -157.362595, 'country', 'maps/raw/places/staticmap/location=1.8709185,-157.3626011&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.8709185,-157.3626011&format=gif'),
(257, 'c648b887', '4f1db3f53742a5545a075b4bf7412dab', 'North Korea', 'North Korea', '40.339852,127.510093', 40.339851, 127.510094, 'country', 'maps/raw/places/staticmap/location=40.339852,127.510093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.339852,127.510093&format=gif'),
(258, '3d36c033', '21a00676690d8fe930bcea25899847d2', 'South Korea', 'South Korea', '35.907757,127.766922', 35.907757, 127.766922, 'country', 'maps/raw/places/staticmap/location=35.907757,127.766922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.907757,127.766922&format=gif'),
(259, '906f3258', '684a8fdbca7b5c06686aff71a3abd575', 'Kuwait', 'Kuwait', '29.31166,47.481766', 29.311661, 47.481766, 'country', 'maps/raw/places/staticmap/location=29.31166,47.481766&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.31166,47.481766&format=gif'),
(260, '5eb9cb60', 'f5386375d083f17bf89ec4ea9290a565', 'Kuwait City', 'Kuwait City, Kuwait', '29.375859,47.9774052', 29.375858, 47.977406, 'locality', 'maps/raw/places/staticmap/location=29.375859,47.9774052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.375859,47.9774052&format=gif'),
(261, 'e2eaac98', 'fa5f6dd3e9d46b883bf7e7967d11b2a4', 'Al Asimah', 'Al Asimah, Kuwait', '29.3342457,47.9812152', 29.334246, 47.981216, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=29.3342457,47.9812152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.3342457,47.9812152&format=gif'),
(262, '6cf74f7b', 'de4ceec312c6496049d1af26cb775426', 'Kyrgyzstan', 'Kyrgyzstan', '41.20438,74.766098', 41.204380, 74.766098, 'country', 'maps/raw/places/staticmap/location=41.20438,74.766098&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.20438,74.766098&format=gif'),
(263, '05278411', 'c6d0ee58bbf76e7ff6e13f9f57ae1240', 'Laos', 'Laos', '19.85627,102.495496', 19.856270, 102.495499, 'country', 'maps/raw/places/staticmap/location=19.85627,102.495496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.85627,102.495496&format=gif'),
(264, 'e74dee99', '169f3a30a83bb00f40836954419112da', 'Latvia', 'Latvia', '56.879635,24.603189', 56.879635, 24.603189, 'country', 'maps/raw/places/staticmap/location=56.879635,24.603189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.879635,24.603189&format=gif'),
(265, '9b15da14', '371f4410b68b8163060d91c2c6634631', 'Lebanon', 'Lebanon', '33.854721,35.862285', 33.854721, 35.862286, 'country', 'maps/raw/places/staticmap/location=33.854721,35.862285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.854721,35.862285&format=gif'),
(266, '4716f0c4', '982c200a0d21927d43585a330343b201', 'Lesotho', 'Lesotho', '-29.609988,28.233608', -29.609987, 28.233608, 'country', 'maps/raw/places/staticmap/location=-29.609988,28.233608&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-29.609988,28.233608&format=gif'),
(267, 'f11b7b14', '275d9b11b81705e6229cfc74df1b3758', 'Liberia', 'Liberia', '6.428055,-9.429499', 6.428055, -9.429499, 'country', 'maps/raw/places/staticmap/location=6.428055,-9.429499&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.428055,-9.429499&format=gif'),
(268, '58674b0e', 'ea64e190a9531c5bc33e8fc5490c7027', 'Libya', 'Libya', '26.3351,17.228331', 26.335100, 17.228331, 'country', 'maps/raw/places/staticmap/location=26.3351,17.228331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.3351,17.228331&format=gif'),
(269, '183d4408', 'f6abf617bad6f5fda2b2810bd84e37d0', 'Liechtenstein', 'Liechtenstein', '47.166,9.555373', 47.166000, 9.555373, 'country', 'maps/raw/places/staticmap/location=47.166,9.555373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.166,9.555373&format=gif'),
(270, '8cadac0d', 'a20de85cea357d4fa9063c3fd5f08032', 'Lithuania', 'Lithuania', '55.169438,23.881275', 55.169437, 23.881275, 'country', 'maps/raw/places/staticmap/location=55.169438,23.881275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.169438,23.881275&format=gif'),
(271, '451fe768', '49fb2ecf37f4b88bd16adf03802cbde7', 'Luxembourg', 'Luxembourg', '49.815273,6.129583', 49.815273, 6.129583, 'country', 'maps/raw/places/staticmap/location=49.815273,6.129583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.815273,6.129583&format=gif'),
(272, '3abfc6bf', '0177849912865ee7cdb53be7f42a434a', 'Macedonia (FYROM)', 'Macedonia (FYROM)', '41.608635,21.745275', 41.608635, 21.745275, 'country', 'maps/raw/places/staticmap/location=41.608635,21.745275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.608635,21.745275&format=gif'),
(273, '95f5c679', 'f1484e4f3f1eb2032a1d07562c82c53c', 'Madagascar', 'Madagascar', '-18.766947,46.869107', -18.766947, 46.869106, 'country', 'maps/raw/places/staticmap/location=-18.766947,46.869107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-18.766947,46.869107&format=gif'),
(274, '8cf07ecd', '97d4c1cf55d6119630926886af5357c8', 'Malawi', 'Malawi', '-13.254308,34.301525', -13.254308, 34.301525, 'country', 'maps/raw/places/staticmap/location=-13.254308,34.301525&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-13.254308,34.301525&format=gif'),
(275, '1b6ec2a7', '71e0c68a01651fe37f22ce9a9dd00bfd', 'Maldives', 'Maldives', '1.977247,73.5361034', 1.977247, 73.536102, 'country', 'maps/raw/places/staticmap/location=1.977247,73.5361034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.977247,73.5361034&format=gif'),
(276, 'c7ef99dc', '35d31c506384eb77a2e3cb2e0b7d5194', 'Mali', 'Mali', '17.570692,-3.996166', 17.570692, -3.996166, 'country', 'maps/raw/places/staticmap/location=17.570692,-3.996166&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.570692,-3.996166&format=gif'),
(277, 'd2b4cfa9', '240fb2659a32c903bebcb2229c8f1af1', 'Malta', 'Malta', '35.937496,14.375416', 35.937496, 14.375416, 'country', 'maps/raw/places/staticmap/location=35.937496,14.375416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.937496,14.375416&format=gif'),
(278, '9baec459', '5dc965bac0ed5f6e3303aa07082f3f91', 'Mauritania', 'Mauritania', '21.00789,-10.940835', 21.007891, -10.940835, 'country', 'maps/raw/places/staticmap/location=21.00789,-10.940835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.00789,-10.940835&format=gif'),
(279, '3926c017', 'a6736ecdfea49ba77d89d87a92567a42', 'Mauritius', 'Mauritius', '-20.348404,57.552152', -20.348404, 57.552151, 'country', 'maps/raw/places/staticmap/location=-20.348404,57.552152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-20.348404,57.552152&format=gif'),
(280, 'b8ca8ac4', 'fc0030c802ece0cac7bff4d31b0a71d1', 'Micronesia', 'Micronesia', '6.8874813,158.2150717', 6.887481, 158.215073, 'country', 'maps/raw/places/staticmap/location=6.8874813,158.2150717&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.8874813,158.2150717&format=gif'),
(281, '30999596', '5325d75157b9e217f1f9cbc9866ec067', 'Moldova', 'Moldova', '47.411631,28.369885', 47.411633, 28.369884, 'country', 'maps/raw/places/staticmap/location=47.411631,28.369885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.411631,28.369885&format=gif'),
(282, 'c26490cd', '74a70bff99564bdf2d64825208af19be', 'Monaco', 'Monaco', '43.7384176,7.4246158', 43.738419, 7.424616, 'country', 'maps/raw/places/staticmap/location=43.7384176,7.4246158&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.7384176,7.4246158&format=gif'),
(283, '34d960c4', 'cd6bbb5f55ed531ca34df1aa92032bb7', 'Mongolia', 'Mongolia', '46.862496,103.846656', 46.862495, 103.846657, 'country', 'maps/raw/places/staticmap/location=46.862496,103.846656&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C46.862496,103.846656&format=gif'),
(284, '8ffb98cd', 'caf1f3b4146040e3beee06acb61adeb8', 'Morocco', 'Morocco', '31.791702,-7.09262', 31.791702, -7.092620, 'country', 'maps/raw/places/staticmap/location=31.791702,-7.09262&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.791702,-7.09262&format=gif'),
(285, '7e900a71', '1d3f1297a35bb0d0db037e3e8abb35fd', 'Namibia', 'Namibia', '-22.95764,18.49041', -22.957640, 18.490410, 'country', 'maps/raw/places/staticmap/location=-22.95764,18.49041&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.95764,18.49041&format=gif'),
(286, '800e8cda', 'eb7676d8fcca98a1f350cb1f99655fa8', 'Nauru', 'Nauru', '-0.522778,166.931503', -0.522778, 166.931503, 'country', 'maps/raw/places/staticmap/location=-0.522778,166.931503&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.522778,166.931503&format=gif'),
(287, 'a1b3a1ac', '92ba5bcd36f905c753b09f49120816b8', 'Nepal', 'Nepal', '28.394857,84.124008', 28.394857, 84.124008, 'country', 'maps/raw/places/staticmap/location=28.394857,84.124008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.394857,84.124008&format=gif'),
(288, '775538b8', '45dd0a932c4cef5b75bbb14d3a8193df', 'Silicon Institute of Technology', 'Silicon Hills, Patia,, Near Infocity, Bhubaneswar, Odisha 751024, India', '20.351478,85.805739', 20.351479, 85.805740, 'point_of_interest', 'maps/raw/places/staticmap/location=20.351478,85.805739&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.351478,85.805739&format=gif'),
(289, '7d91101b', 'c3305c757123440fbd605ed11bc25e4a', 'Silicon Systems', '73 Sydney St, Petone, Petone 5012, New Zealand', '-41.221806,174.877263', -41.221806, 174.877258, 'store', 'maps/raw/places/staticmap/location=-41.221806,174.877263&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-41.221806,174.877263&format=gif'),
(290, '23bffd9f', 'b7232fe5d760cb7579484fa0f973107a', 'The Silicon Group', '95 Whins Road, Alloa, Clackmannanshire FK10 3RF, United Kingdom', '56.119976,-3.781696', 56.119976, -3.781696, 'electronics_store', 'maps/raw/places/staticmap/location=56.119976,-3.781696&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.119976,-3.781696&format=gif'),
(291, '9dc43f7c', 'a9fbf3a39784ec649dc43485a6a912eb', 'SILICON Refractory Anchors Systems BV', 'Monsterseweg 2, 2291 PB Wateringen, Netherlands', '52.012729,4.285951', 52.012730, 4.285951, 'point_of_interest', 'maps/raw/places/staticmap/location=52.012729,4.285951&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.012729,4.285951&format=gif'),
(292, '7b47c188', '6559ba968045f8785a1e9c8ddfe6f281', 'Silicon Image Inc', '1140 East Arques Avenue, Sunnyvale, CA 94085, United States', '37.378644,-121.998338', 37.378643, -121.998337, 'establishment', 'maps/raw/places/staticmap/location=37.378644,-121.998338&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.378644,-121.998338&format=gif'),
(293, 'b9de58f3', '6534f022ba75da12fba1820a88da9489', 'Silicon Laboratories', '400 West Cesar Chavez, Austin, TX 78701, United States', '30.264902,-97.74848', 30.264902, -97.748482, 'establishment', 'maps/raw/places/staticmap/location=30.264902,-97.74848&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.264902,-97.74848&format=gif'),
(294, 'cd06447a', '719684ba4eebb156a1a5538d26d349f9', 'Silicon Valley Community Foundation', '2440 West El Camino Real #300, Mountain View, CA 94040, United States', '37.399306,-122.107726', 37.399307, -122.107727, 'establishment', 'maps/raw/places/staticmap/location=37.399306,-122.107726&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.399306,-122.107726&format=gif'),
(295, '954c4bd4', 'fe32014adf75aec2c8906f9387d05b7f', 'Silicon Valley Bank', '3000 Sand Hill Road #150, Menlo Park, CA 94025, United States', '37.423233,-122.22078', 37.423233, -122.220779, 'bank', 'maps/raw/places/staticmap/location=37.423233,-122.22078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.423233,-122.22078&format=gif'),
(296, 'ef3d5fce', 'a36662a5d07a180b809b7bac68ed6af7', 'Humane Society Silicon Valley', '901 Ames Avenue, Milpitas, CA 95035, United States', '37.421038,-121.88692', 37.421040, -121.886917, 'park', 'maps/raw/places/staticmap/location=37.421038,-121.88692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.421038,-121.88692&format=gif'),
(297, '3a09e0af', 'f1299ad069e1fcd2aff77150c4456862', 'Open-Silicon Inc', '203 Turnpike Street #407, North Andover, MA 01845, United States', '42.673663,-71.127348', 42.673664, -71.127350, 'establishment', 'maps/raw/places/staticmap/location=42.673663,-71.127348&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.673663,-71.127348&format=gif'),
(298, '58fef619', '1874ed9008248e05d65e4d2f350de620', 'Silicon Valley Bank', '504 Lavaca Street #1100, Austin, TX 78731, United States', '30.26823,-97.746024', 30.268230, -97.746025, 'bank', 'maps/raw/places/staticmap/location=30.26823,-97.746024&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.26823,-97.746024&format=gif'),
(299, '5f75e9bb', '64ffcb4aa06bae53dcf3ddbf9e3b4c9f', 'Dubai Silicon Oasis', 'Emirates-Al Ain road intersection, Exit 44 - P.O. Box 6009 - Dubai - United Arab Emirates', '25.124596,55.380921', 25.124596, 55.380920, 'point_of_interest', 'maps/raw/places/staticmap/location=25.124596,55.380921&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.124596,55.380921&format=gif'),
(300, 'b6b33710', '7033cda123e7729dd6c34875f2121671', 'Carnegie Mellon University - Silicon Valley Campus', 'NASA Research Park, Bldg 23, Moffett Field, CA 94035, United States', '37.41043,-122.059753', 37.410431, -122.059753, 'university', 'maps/raw/places/staticmap/location=37.41043,-122.059753&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.41043,-122.059753&format=gif'),
(301, 'bac87e4d', 'b9fd2abe6e0dab436cd111036d93816f', 'Silicon Valley Bank', '3005 Tasman Drive, Santa Clara, CA 95054, United States', '37.404229,-121.983223', 37.404228, -121.983223, 'bank', 'maps/raw/places/staticmap/location=37.404229,-121.983223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.404229,-121.983223&format=gif'),
(302, 'dbad6384', '3e4dd7b0e9783bcf97263601d2e20b09', 'Silicon Valley Community Foundation', '1300 South El Camino Real #100, San Mateo, CA 94402, United States', '37.554596,-122.317123', 37.554596, -122.317123, 'point_of_interest', 'maps/raw/places/staticmap/location=37.554596,-122.317123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.554596,-122.317123&format=gif'),
(303, 'f4f58ae1', '515edbc3413a3a231a4947380d55bdd4', 'Four Seasons Hotel Silicon Valley at East Palo Alto', '2050 University Avenue, East Palo Alto, CA 94303, United States', '37.460371,-122.142267', 37.460369, -122.142265, 'lodging', 'maps/raw/places/staticmap/location=37.460371,-122.142267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.460371,-122.142267&format=gif'),
(304, '2448d261', 'da74b638ff1f3613de12f0fcc887ba5b', 'Silicon Mechanics', '22029 23rd Drive Southeast, Bothell, WA 98021, United States', '47.799012,-122.200677', 47.799011, -122.200676, 'electronics_store', 'maps/raw/places/staticmap/location=47.799012,-122.200677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.799012,-122.200677&format=gif'),
(305, 'e2ddb6d9', 'c56f61d350d9488ce3797b9f4193f416', 'Silicon Valley Bank', '380 Interlocken Boulevard # 600, Broomfield, CO 80021, United States', '39.923649,-105.114121', 39.923649, -105.114120, 'bank', 'maps/raw/places/staticmap/location=39.923649,-105.114121&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.923649,-105.114121&format=gif'),
(306, '31385006', '0bafd06f04e79e255206a5af6c56ad24', 'Silicon Valley Capital Club', '50 West San Fernando Street, San Jose, CA 95113, United States', '37.3338,-121.889177', 37.333801, -121.889175, 'night_club', 'maps/raw/places/staticmap/location=37.3338,-121.889177&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.3338,-121.889177&format=gif'),
(307, 'a5aaf23e', 'e26dce5abc8cdb9e0f9a0442201a194b', 'Silicon Valley Bank', '11th floor, 505 5th Avenue, New York, NY 10017, United States', '40.7536,-73.980455', 40.753601, -73.980453, 'bank', 'maps/raw/places/staticmap/location=40.7536,-73.980455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.7536,-73.980455&format=gif'),
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif'),
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(315, 'acb1b726', '63f259be8b7ce65fd91e1a63bc42aa33', 'SILICON', 'SILICON, Old Delhi Gurgaon Rd, Palam Vihar Extension, Gurgaon, Haryana 122015, India', '28.494636,77.060247', 28.494637, 77.060249, 'point_of_interest', 'maps/raw/places/staticmap/location=28.494636,77.060247&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.494636,77.060247&format=gif'),
(316, '25434af8', 'c1d2a795875dcf0950b2d51b1a19dc11', 'SILICON', 'SILICON, Sandhu Apartment, Kalasiguda, Secunderabad, Telangana 500003, India', '17.440788,78.4893322', 17.440788, 78.489334, 'point_of_interest', 'maps/raw/places/staticmap/location=17.440788,78.4893322&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.440788,78.4893322&format=gif'),
(317, 'af3a06e0', '655ff479e1efec9f7b42cd2c5aa1acc1', 'Silicon', '33 & 34, Silicon, Rajarhat Rd, Teghoria, Chinar Park, Kolkata, West Bengal 700059, India', '22.623233,88.4402703', 22.623234, 88.440269, 'point_of_interest', 'maps/raw/places/staticmap/location=22.623233,88.4402703&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.623233,88.4402703&format=gif'),
(318, 'b5a0ee3a', '3cb4066a8aef1b6979a1fbdb5a9840c6', 'Silicon', 'Silicon, 42, Chirag Ali Lane, Abids, Hyderabad, Telangana 500001, India', '17.3920699,78.4750132', 17.392071, 78.475014, 'point_of_interest', 'maps/raw/places/staticmap/location=17.3920699,78.4750132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.3920699,78.4750132&format=gif'),
(319, '9a7ab9bb', '623a00e4e72ebd080480049b059a4733', 'Silicon', '150, Silicon, Santoshpur Ave, Adipally Santoshpur, Adipally, Santoshpur, Kolkata, West Bengal 700075, India', '22.492764,88.3881241', 22.492764, 88.388123, 'point_of_interest', 'maps/raw/places/staticmap/location=22.492764,88.3881241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.492764,88.3881241&format=gif'),
(320, 'ff493730', '3c0edf8e0d748326a21e9a124329ec5e', 'Silicon', 'Silicon, Gandhi Nagar Airport Area, Deolali Gaon, Nashik, Maharashtra 422101, India', '19.966942,73.811264', 19.966942, 73.811264, 'point_of_interest', 'maps/raw/places/staticmap/location=19.966942,73.811264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.966942,73.811264&format=gif'),
(321, '6f964250', 'c623aa7c5f3e5931a8640b9d41bdb610', 'Silicon', 'Silicon, Mangalwar Peth, Kasba Peth, Pune, Maharashtra 411011, India', '18.522504,73.866417', 18.522505, 73.866417, 'home_goods_store', 'maps/raw/places/staticmap/location=18.522504,73.866417&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.522504,73.866417&format=gif'),
(322, '533f60a2', '48d2d79219e5e9fd72d5088e14b09a1d', 'Silicon', 'Silicon, Devi Colony, Bank colony, Bidar, Karnataka 585401, India', '17.9211958,77.5088561', 17.921196, 77.508858, 'point_of_interest', 'maps/raw/places/staticmap/location=17.9211958,77.5088561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.9211958,77.5088561&format=gif'),
(323, '3e108168', '47bfa6c0e474f7a581871dc34e553d81', 'WaleÃ½', 'DeodÃ¡polis, State of Mato Grosso do Sul, 79790-000, Brazil', '-22.216807,-54.128386', -22.216806, -54.128387, 'point_of_interest', 'maps/raw/places/staticmap/location=-22.216807,-54.128386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.216807,-54.128386&format=gif'),
(324, '25d307f2', '87b1fde624e640324fbcbaae284ecc02', 'Waley', 'Al Hadrah Qebli, Qesm Bab Sharqi, Alexandria Governorate, Egypt', '31.201784,29.932156', 31.201784, 29.932156, 'clothing_store', 'maps/raw/places/staticmap/location=31.201784,29.932156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.201784,29.932156&format=gif'),
(325, '039fa487', '419dec8f0860a51f51ffd0b091515d4b', 'Waley Insurance', '202 North Brushy Street, Leander, TX 78641, United States', '30.579629,-97.854328', 30.579630, -97.854324, 'insurance_agency', 'maps/raw/places/staticmap/location=30.579629,-97.854328&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.579629,-97.854328&format=gif'),
(326, 'fe80efb5', '466bfbc25f4483fe5f3699fbb8435585', 'Waley Elahed', 'Hadaeq Al Qubbah, Hadaeq Al Qubbah, Cairo Governorate, Egypt', '30.088228,31.284521', 30.088228, 31.284521, 'pharmacy', 'maps/raw/places/staticmap/location=30.088228,31.284521&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.088228,31.284521&format=gif'),
(327, '8fdeb1c7', '0d47893fab181d0670ea863faf4478eb', 'Jagram Ganga Sahay Oshadhiyo Waley', 'Shop No:362, Tripolia Bazar, Modikhana, Jaipur, Rajasthan 302002, India', '26.924261,75.819931', 26.924261, 75.819931, 'store', 'maps/raw/places/staticmap/location=26.924261,75.819931&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.924261,75.819931&format=gif'),
(328, '346256e5', '1cea7d5ca5725d33a31b8b77a2de3235', 'Waley J Moreira', 'Rua EspÃ­rito Santo, 466 - Centro, Belo Horizonte - MG, 30160-030, Brazil', '-19.918744,-43.937238', -19.918743, -43.937237, 'lawyer', 'maps/raw/places/staticmap/location=-19.918744,-43.937238&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-19.918744,-43.937238&format=gif'),
(329, '78ab011c', '206be94f575659473214b65a1603c3a6', 'Dharam Chand Banarsi Dass Jain Sialkote Button Waley', '469, Bartan Market, Sadar Bazaar, Sadar Bazaar, New Delhi, Delhi 110006, India', '28.654092,77.208899', 28.654093, 77.208900, 'point_of_interest', 'maps/raw/places/staticmap/location=28.654092,77.208899&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.654092,77.208899&format=gif'),
(330, 'e4a1f61d', '819638df2ab98f7d6bc059a759790977', 'Safa Waley Raja Khan', 'Kotwali Road, Moti Nagar, Sagar, Madhya Pradesh 470002, India', '23.837239,78.739952', 23.837238, 78.739952, 'shopping_mall', 'maps/raw/places/staticmap/location=23.837239,78.739952&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.837239,78.739952&format=gif'),
(331, 'ca58cb5b', '341b367f1255c427c3d58fdf110266e7', 'Jhandey Waley Shukla, Om Nagar', 'Pawanpuri, Alambagh, Lucknow, Uttar Pradesh 226005, India', '26.813998,80.909307', 26.813997, 80.909309, 'point_of_interest', 'maps/raw/places/staticmap/location=26.813998,80.909307&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.813998,80.909307&format=gif'),
(332, 'a18e5283', '7687aac4cc820971371c164463491810', 'shanno bhai parathey waley seelampur', 'New Seelampur Phase II, Shahdara, New Delhi, Delhi 110031, India', '28.674864,77.266341', 28.674864, 77.266342, 'restaurant', 'maps/raw/places/staticmap/location=28.674864,77.266341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.674864,77.266341&format=gif'),
(333, '2be4c520', '7d10b47bb4c36e2d5c61a8d415bad7e9', 'Waley Elneem', 'Al Gamaleyah, Qesm Gamaleyah, Cairo Governorate, Egypt', '30.047109,31.262291', 30.047110, 31.262291, 'establishment', 'maps/raw/places/staticmap/location=30.047109,31.262291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.047109,31.262291&format=gif'),
(334, 'c56f56cd', '78c47207ba4828f6f2e10b19025edd59', 'Bhagatji Silicate waley', 'Freeganj Road, Belanganj, Civil Lines, Agra, Uttar Pradesh 282004, India', '27.195385,78.018057', 27.195385, 78.018059, 'point_of_interest', 'maps/raw/places/staticmap/location=27.195385,78.018057&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.195385,78.018057&format=gif'),
(335, '2d9045f6', 'cae7d795ae1b30996db7ef6b0b676ed4', 'Waley Elneem', 'An Nahdah, Qesm as Salam, Cairo Governorate, Egypt', '30.173999,31.445373', 30.174000, 31.445374, 'establishment', 'maps/raw/places/staticmap/location=30.173999,31.445373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.173999,31.445373&format=gif'),
(336, '8b0c012c', '062dec8a863c6e5d47c6691967cb77ce', 'Waley Elneem', 'Shagret Mariem, Qesm Al Matareyah, Cairo Governorate, Egypt', '30.124706,31.303858', 30.124706, 31.303858, 'restaurant', 'maps/raw/places/staticmap/location=30.124706,31.303858&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.124706,31.303858&format=gif'),
(337, '286556ad', '7de09734ffed0610c146678c02ce8826', 'Chadha Ram Waley', 'Street No-6, Cheema Chowk, Janak Puri, Ludhiana, Punjab 141003, India', '30.9015,75.86893', 30.901501, 75.868927, 'store', 'maps/raw/places/staticmap/location=30.9015,75.86893&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.9015,75.86893&format=gif'),
(338, '22ae42f5', 'b78d00ac3afd5bb749f141e51d17b877', 'Mr. Waley Tailoring Shop', 'Oluwole, Ikeja, Nigeria', '6.629462,3.342317', 6.629462, 3.342317, 'store', 'maps/raw/places/staticmap/location=6.629462,3.342317&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.629462,3.342317&format=gif'),
(339, '16132fb2', 'be775fbe40aab2bffdd29b2a0dab7369', 'Ram Gopal Jagdish Prasad Bartan Waley', 'Sujanpura Road, Alambagh, Lucknow, Uttar Pradesh 226005, India', '26.817091,80.909616', 26.817091, 80.909615, 'establishment', 'maps/raw/places/staticmap/location=26.817091,80.909616&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.817091,80.909616&format=gif'),
(340, '75f6cc55', '6f5a070cc5ebbced3695acf818a79a8b', 'Kishore Kumar Bhas Wali Waley', 'Maruti Estate Road, Maruti Estate, Near Simpkins School, Shahganj, Agra, Uttar Pradesh 282010, India', '27.1827,77.967306', 27.182699, 77.967308, 'store', 'maps/raw/places/staticmap/location=27.1827,77.967306&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.1827,77.967306&format=gif'),
(341, '87682d9a', 'f1070af3cb81876c91b9ce07d9462b9e', 'Mohammad Anees Baksey Waley', 'Takrohi Road, Indra Nagar, Amrai Gaon, Naubasta Kala, Uttar Pradesh 226016, India', '26.912245,81.027333', 26.912245, 81.027336, 'furniture_store', 'maps/raw/places/staticmap/location=26.912245,81.027333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.912245,81.027333&format=gif'),
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif'),
(343, '638adaf8', '93561240a1e8ba2c7740bff2833f016a', 'Raza Telecom', '5219 North Harlem Avenue, Chicago, IL 60656, United States', '41.976124,-87.806798', 41.976124, -87.806801, 'establishment', 'maps/raw/places/staticmap/location=41.976124,-87.806798&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.976124,-87.806798&format=gif'),
(344, '801ac887', 'c1c566a7a2204da63b8b3c4aa9865845', 'National Council of La Raza', '1126 16th Street Northwest #600, Washington, DC 20036, United States', '38.904482,-77.036901', 38.904484, -77.036903, 'point_of_interest', 'maps/raw/places/staticmap/location=38.904482,-77.036901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.904482,-77.036901&format=gif'),
(345, '97e0a7ab', 'd80a50307a6d760b34fb9dc9554250be', 'Raza Communication', '991 Albion Road, Etobicoke, ON M9V 1A6, Canada', '43.736381,-79.563781', 43.736382, -79.563782, 'establishment', 'maps/raw/places/staticmap/location=43.736381,-79.563781&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.736381,-79.563781&format=gif'),
(346, '80268c2b', 'adf2fc1c53c68a7ec75c2d7484624173', 'National Council of La Raza', '318 West 39th Street #5, New York, NY 10018, United States', '40.755737,-73.992526', 40.755737, -73.992523, 'establishment', 'maps/raw/places/staticmap/location=40.755737,-73.992526&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.755737,-73.992526&format=gif'),
(347, '4de0bd61', '2456b77f751caef40e226a035af5e6c2', 'National Council of La Raza', '1107 9th Street #230, Sacramento, CA 95814, United States', '38.579175,-121.495257', 38.579174, -121.495255, 'establishment', 'maps/raw/places/staticmap/location=38.579175,-121.495257&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.579175,-121.495257&format=gif'),
(348, 'e4524a87', '181eb783e5fbe18269a14209b0386ea6', 'National Council of La Raza', '161 North Clark Street # 4700, Chicago, IL 60601, United States', '41.884738,-87.630737', 41.884739, -87.630737, 'point_of_interest', 'maps/raw/places/staticmap/location=41.884738,-87.630737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.884738,-87.630737&format=gif'),
(349, '62e9a31d', '4d8433032ecffa5884441ecb2a092cde', 'La Raza Centro Legal Inc', '474 Valencia Street # 295, San Francisco, CA 94103, United States', '37.765415,-122.42227', 37.765415, -122.422272, 'point_of_interest', 'maps/raw/places/staticmap/location=37.765415,-122.42227&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765415,-122.42227&format=gif'),
(350, '453a79b3', '497afea7417020ec9572ff335db7449c', 'El Centro De La Raza', '2524 16th Avenue South, Seattle, WA 98144, United States', '47.580339,-122.311325', 47.580338, -122.311325, 'establishment', 'maps/raw/places/staticmap/location=47.580339,-122.311325&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.580339,-122.311325&format=gif'),
(351, 'bd44ed0b', '4d5e62c68b7cdff08bfb4ef3ac074d30', 'Servicios De La Raza', '3131 West 14th Avenue, Denver, CO 80204, United States', '39.738883,-105.027156', 39.738884, -105.027153, 'food', 'maps/raw/places/staticmap/location=39.738883,-105.027156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.738883,-105.027156&format=gif'),
(352, 'd5eca139', '896541606dddc9e2ffce117dd6cf796d', 'Raza Development Fund', '1 East Washington Street # 250, Phoenix, AZ 85004, United States', '33.447949,-112.072924', 33.447948, -112.072922, 'establishment', 'maps/raw/places/staticmap/location=33.447949,-112.072924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.447949,-112.072924&format=gif'),
(353, '6b0ba7a9', '3684d00c1f505a080da5f175ee6c92f1', 'Casa De La Raza', '601 East Montecito Street, Santa Barbara, CA 93103, United States', '34.421634,-119.686095', 34.421635, -119.686096, 'health', 'maps/raw/places/staticmap/location=34.421634,-119.686095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.421634,-119.686095&format=gif'),
(354, '27e6040d', '71c0edc5bc6acf3d087db4796c863550', 'Dr. Azra Raza, MD', '161 Fort Washington Avenue #918, New York, NY 10032, United States', '40.840569,-73.943165', 40.840569, -73.943169, 'doctor', 'maps/raw/places/staticmap/location=40.840569,-73.943165&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.840569,-73.943165&format=gif'),
(355, 'a9baeff3', '94598119cbed39e4aebe0d70e4491863', 'Instituto Familiar de la Raza Inc.', '2919 Mission Street, San Francisco, CA 94110, United States', '37.750256,-122.418072', 37.750256, -122.418076, 'health', 'maps/raw/places/staticmap/location=37.750256,-122.418072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.750256,-122.418072&format=gif'),
(356, 'f4a6f944', '9aefce06a939e3b66440cfeab86de25b', 'Mehran Raza D.D.S', '3753 Mission Avenue #116, Oceanside, CA 92058, United States', '33.224337,-117.331861', 33.224339, -117.331863, 'doctor', 'maps/raw/places/staticmap/location=33.224337,-117.331861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.224337,-117.331861&format=gif'),
(357, '6a01be9f', 'aa17d7f805b7f5b9d7fbe40012aef1cb', 'La Raza Community Resource Center', '474 Valencia Street # 100, San Francisco, CA 94103, United States', '37.765453,-122.422379', 37.765453, -122.422379, 'establishment', 'maps/raw/places/staticmap/location=37.765453,-122.422379&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765453,-122.422379&format=gif'),
(358, 'd716b804', 'd559fe1e29c6619ed508042facabc8e0', 'Dr. Catherine A. Chin, MD', '1030 International Boulevard, Oakland, CA 94606, United States', '37.791962,-122.248915', 37.791962, -122.248917, 'doctor', 'maps/raw/places/staticmap/location=37.791962,-122.248915&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791962,-122.248915&format=gif'),
(359, '90688716', '5911310040a6d66b544b6b36d0f8a935', 'La Clinica De La Raza: Rustamzadeh David DDS', '1601 Fruitvale Avenue, Oakland, CA 94601, United States', '37.77995,-122.224934', 37.779949, -122.224937, 'dentist', 'maps/raw/places/staticmap/location=37.77995,-122.224934&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.77995,-122.224934&format=gif'),
(360, '9a7f4a15', 'bed4d17e5bd8efe67ea560a0086d2d30', 'Plaza De La Raza Child Development', '8337 Telegraph Road # 300, Pico Rivera, CA 90660, United States', '33.964641,-118.113298', 33.964642, -118.113297, 'health', 'maps/raw/places/staticmap/location=33.964641,-118.113298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.964641,-118.113298&format=gif'),
(361, '25647a4c', '1fd788745df6923dbb7e10a06b278fee', 'Instituto Laboral De La Raza', '2947 16th Street, San Francisco, CA 94103, United States', '37.764955,-122.418554', 37.764954, -122.418556, 'establishment', 'maps/raw/places/staticmap/location=37.764955,-122.418554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.764955,-122.418554&format=gif'),
(362, 'd6709acd', 'a5fc9fc5c004e50d96a8e2d4f4d59f30', 'Hawaii', 'Hawaii, USA', '19.8967662,-155.5827818', 19.896767, -155.582779, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=19.8967662,-155.5827818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.8967662,-155.5827818&format=gif'),
(363, '16537242', 'c15c0c807b34202fbcb6f18f9523cc74', 'F.A. Nunnelly Company', '2922 North PanAm Expressway, San Antonio, TX 78208, United States', '29.438888,-98.443424', 29.438889, -98.443420, 'general_contractor', 'maps/raw/places/staticmap/location=29.438888,-98.443424&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.438888,-98.443424&format=gif'),
(364, 'a748cf36', 'c9f9adf1057d97353b55d3548918ed94', 'F.A. Motorcars', '12843 Nacogdoches Road, San Antonio, TX 78217, United States', '29.558152,-98.397833', 29.558151, -98.397835, 'car_dealer', 'maps/raw/places/staticmap/location=29.558152,-98.397833&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.558152,-98.397833&format=gif'),
(365, '4e228d6f', '325a1192fe5d8c25c6e93bbc066838ae', 'F A Mc Comas Inc', '3636 Highpoint Street, San Antonio, TX 78217, United States', '29.54167,-98.426956', 29.541670, -98.426956, 'painter', 'maps/raw/places/staticmap/location=29.54167,-98.426956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.54167,-98.426956&format=gif'),
(366, 'a61dc6f1', '5e0519b60a13d8935719e2a78b40d39c', 'Sanfa Construction Supply', 'Corozal, Belize', '18.388825,-88.400676', 18.388824, -88.400673, 'hardware_store', 'maps/raw/places/staticmap/location=18.388825,-88.400676&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.388825,-88.400676&format=gif'),
(367, '8ba463e5', 'be6bf8c2758ad53c78df716040a30b86', 'Restaurante Ni Fu Ni Fa', 'Barrio Los Andes, San Pedro Sula, Honduras', '15.511737,-88.035003', 15.511737, -88.035004, 'restaurant', 'maps/raw/places/staticmap/location=15.511737,-88.035003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.511737,-88.035003&format=gif'),
(368, 'c6a95d40', 'f1fad5edf7a497b79336568841cecfb9', 'Freedom Acres Resorts', '1924 Glen Helen Road, San Bernardino, CA 92407, United States', '34.220696,-117.420123', 34.220695, -117.420120, 'lodging', 'maps/raw/places/staticmap/location=34.220696,-117.420123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.220696,-117.420123&format=gif'),
(369, '4500b64b', 'b38e23fb99dc6fc2c4e1362703cb4ae0', 'F A Poli Trucking &amp; Materials', '120 South Maple Avenue, South San Francisco, CA 94080, United States', '37.649376,-122.415285', 37.649376, -122.415283, 'moving_company', 'maps/raw/places/staticmap/location=37.649376,-122.415285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.649376,-122.415285&format=gif'),
(370, '6e57fe53', '8f96a25312e979240b75bca8a4723d14', 'Fa Instruments Inc', '2381 Zanker Road # 100, San Jose, CA 95131, United States', '37.384427,-121.920416', 37.384426, -121.920418, 'establishment', 'maps/raw/places/staticmap/location=37.384427,-121.920416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.384427,-121.920416&format=gif'),
(371, 'bc0e2cfb', 'dcb2fc7d82981e8a814c5948ea825ae2', 'Fiesta Americana Grand los Cabos All Inclusive Golf &amp; Spa', 'Carretera Transpeninsular Km 10.3, Cabo del Sol, 23410 Cabo San Lucas, B.C.S., Mexico', '22.921248,-109.828946', 22.921247, -109.828949, 'lodging', 'maps/raw/places/staticmap/location=22.921248,-109.828946&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.921248,-109.828946&format=gif'),
(372, '629f6cdc', '0f8ac00cdca7923c039df2cf7d4f88b0', 'HUNGFAKWOON.COM', '219 Monterey Boulevard, San Francisco, CA 94131, United States', '37.731387,-122.440242', 37.731388, -122.440239, 'school', 'maps/raw/places/staticmap/location=37.731387,-122.440242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.731387,-122.440242&format=gif'),
(373, '581f261f', '78eb2689dc426a15f6bef7d0f3dd2f88', 'Wha Fa Produce Co', '2165 Irving Street, San Francisco, CA 94122, United States', '37.763282,-122.48112', 37.763283, -122.481117, 'bakery', 'maps/raw/places/staticmap/location=37.763282,-122.48112&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.763282,-122.48112&format=gif'),
(374, '5138da00', '2274ba8993716d68989b86262136cde6', 'Mt. San Antonio College', '1100 North Grand Avenue, Walnut, CA 91789, United States', '34.048567,-117.842095', 34.048569, -117.842094, 'point_of_interest', 'maps/raw/places/staticmap/location=34.048567,-117.842095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.048567,-117.842095&format=gif'),
(375, '8a9dac29', '758b52286555c31ad0a01edabf75b778', 'Sanfa', 'Durango 606, Valle del Sur, 34120 Durango, Dgo., Mexico', '24.012247,-104.684373', 24.012247, -104.684372, 'store', 'maps/raw/places/staticmap/location=24.012247,-104.684373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.012247,-104.684373&format=gif'),
(376, '9bcb48d4', '455b42d9e53e218a7621fe9976ac3dd5', 'Advanced Mechatronics Solutions', '9051 Siempre Viva Road # J, San Diego, CA 92154, United States', '32.552585,-116.948635', 32.552586, -116.948631, 'car_repair', 'maps/raw/places/staticmap/location=32.552585,-116.948635&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.552585,-116.948635&format=gif'),
(377, 'b0e78828', 'd54b006e72584942b72c04df3b8b40b2', 'San Diego State University', '5500 Campanile Drive, San Diego, CA 92182, United States', '32.77477,-117.071665', 32.774769, -117.071663, 'university', 'maps/raw/places/staticmap/location=32.77477,-117.071665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.77477,-117.071665&format=gif'),
(378, '6a184ecd', '064f395334bc05daa24bed869c1a019d', 'Food Addicts In Recovery', 'San Francisco, CA 94111, United States', '37.795936,-122.400003', 37.795937, -122.400002, 'health', 'maps/raw/places/staticmap/location=37.795936,-122.400003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795936,-122.400003&format=gif'),
(379, '521da513', '3761e987071a23938db0825e5cff9071', 'Food Addicts In Recovery Anonymous', 'San Jose, CA 95101, United States', '37.329012,-121.916021', 37.329014, -121.916023, 'health', 'maps/raw/places/staticmap/location=37.329012,-121.916021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.329012,-121.916021&format=gif'),
(380, '929e538a', '67cb18cd6fc7cc9a14e53531197f753e', 'San JosÃ© State University', '1 Washington Sq, San Jose, CA 95192, United States', '37.335187,-121.881072', 37.335186, -121.881073, 'university', 'maps/raw/places/staticmap/location=37.335187,-121.881072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.335187,-121.881072&format=gif'),
(381, '4a306f75', '0ef7f39dce7943b5e4b266f7b0a81f8e', 'Queen', 'San Pedro 202, Del Valle, 66220 San Pedro Garza GarcÃ­a, N.L., Mexico', '25.660182,-100.370062', 25.660183, -100.370064, 'bar', 'maps/raw/places/staticmap/location=25.660182,-100.370062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.660182,-100.370062&format=gif'),
(382, '989267b1', '283c94c616097bb666ef5c0bda29ac90', 'Wildlife Center of Silicon Valley', '3027 Penitencia Creek Road, San Jose, CA 95132, United States', '37.388971,-121.848359', 37.388969, -121.848358, 'point_of_interest', 'maps/raw/places/staticmap/location=37.388971,-121.848359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.388971,-121.848359&format=gif'),
(383, '7638d310', '08834925c28433f75306b801c8ac96ec', 'San Francisco Travel Association', '6929 Valleyview Drive, Downers Grove, IL 60516, United States', '41.760118,-88.001727', 41.760117, -88.001724, 'travel_agency', 'maps/raw/places/staticmap/location=41.760118,-88.001727&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.760118,-88.001727&format=gif'),
(384, '04fa5f49', '68c5734da43384f2680cd210f0b454c7', 'San Francisco CVB', '1730 M Street Northwest #607, Washington, DC 20036, United States', '38.905345,-77.039918', 38.905346, -77.039917, 'point_of_interest', 'maps/raw/places/staticmap/location=38.905345,-77.039918&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905345,-77.039918&format=gif'),
(385, '92631629', 'a3302b7ebb653c44eb92b624605d7e7d', 'Only In San Francisco', 'Beach Street, San Francisco, CA 94133, United States', '37.808747,-122.410346', 37.808746, -122.410347, 'store', 'maps/raw/places/staticmap/location=37.808747,-122.410346&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.808747,-122.410346&format=gif'),
(386, 'bd55970d', '5b36e477b9bbd142d79e3ef3a124b52b', 'San Francisco Underground', '182 Howard Street #240, San Francisco, CA 94105, United States', '37.791162,-122.393309', 37.791161, -122.393311, 'travel_agency', 'maps/raw/places/staticmap/location=37.791162,-122.393309&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791162,-122.393309&format=gif'),
(387, '33332fdb', 'beca830be3b32b91cad6c6ed546befad', 'San Francisco Visitor Information Center', '900 Market Street, San Francisco, CA 94102, United States', '37.784111,-122.408311', 37.784111, -122.408310, 'establishment', 'maps/raw/places/staticmap/location=37.784111,-122.408311&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.784111,-122.408311&format=gif'),
(388, '6e8f9f29', '0982245a49552fcdd63145ebd1347d8f', 'San Francisco Travel Association', '1 Front Street Suite 2900, San Francisco, CA 94111, United States', '37.791883,-122.398841', 37.791882, -122.398842, 'establishment', 'maps/raw/places/staticmap/location=37.791883,-122.398841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791883,-122.398841&format=gif'),
(389, 'd2cfad16', '823a5f523973e4a703a8fe3dd6869a3f', 'W San Francisco', '181 3rd Street, San Francisco, CA 94103, United States', '37.785318,-122.400442', 37.785316, -122.400444, 'lodging', 'maps/raw/places/staticmap/location=37.785318,-122.400442&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.785318,-122.400442&format=gif'),
(390, 'ae28943f', '0a859f9266da99a76bf47a4017e86afa', 'San Francisco Giants', '24 Willie Mays Plaza, San Francisco, CA 94107, United States', '37.778175,-122.390725', 37.778175, -122.390724, 'establishment', 'maps/raw/places/staticmap/location=37.778175,-122.390725&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.778175,-122.390725&format=gif'),
(391, '3256a901', '201d0ecd68e7fcd231e1fec78b0cb183', 'SF Giants Baseball Club : Dugout Store', '4 Embarcadero Center, San Francisco, CA 94111, United States', '37.795284,-122.396229', 37.795284, -122.396233, 'clothing_store', 'maps/raw/places/staticmap/location=37.795284,-122.396229&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795284,-122.396229&format=gif'),
(392, '4b75e51e', '26048b14e9b4171b70c4fe08a112500b', 'Giants Dugout Stores', '3251 20th Avenue #173, San Francisco, CA 94132, United States', '37.728041,-122.477539', 37.728043, -122.477539, 'store', 'maps/raw/places/staticmap/location=37.728041,-122.477539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.728041,-122.477539&format=gif'),
(393, '425dab30', 'd0ef8c1d36ccc5634fe4d445bfa78ff6', 'San Francisco Giants Offices', '7402 East Osborn Road, Scottsdale, AZ 85251, United States', '33.487761,-111.922923', 33.487762, -111.922920, 'establishment', 'maps/raw/places/staticmap/location=33.487761,-111.922923&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.487761,-111.922923&format=gif'),
(394, 'dfd06215', 'dc772823a701ba0c7142c168f6ebe097', 'Giants Dugout Stores', '127 Serramonte Center, Daly City, CA 94015, United States', '37.671131,-122.470638', 37.671131, -122.470634, 'clothing_store', 'maps/raw/places/staticmap/location=37.671131,-122.470638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.671131,-122.470638&format=gif'),
(395, 'd010f0a3', '5aaa273f91d02a91ba5a656e09f2ba03', 'San Francisco International Airport', 'San Francisco, CA 94128, United States', '37.621313,-122.378955', 37.621311, -122.378952, 'airport', 'maps/raw/places/staticmap/location=37.621313,-122.378955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.621313,-122.378955&format=gif'),
(396, '911f2e79', 'd1d02d06d248740875e86cf5f8b7290b', 'San Francisco State University', '1600 Holloway Avenue, San Francisco, CA 94132, United States', '37.721897,-122.478209', 37.721897, -122.478210, 'university', 'maps/raw/places/staticmap/location=37.721897,-122.478209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.721897,-122.478209&format=gif'),
(397, '00e577a9', 'a81bdd96f886b3b6cbc8ea365d078bda', 'SanFrancisco Magazine', '243 Vallejo Street, San Francisco, CA 94111, United States', '37.799275,-122.401928', 37.799274, -122.401932, 'establishment', 'maps/raw/places/staticmap/location=37.799275,-122.401928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.799275,-122.401928&format=gif'),
(398, 'edb0542d', '0aa5a161230562827e88dc204ca1ac15', 'San Francisco Chronicle', '901 Mission Street, San Francisco, CA 94103, United States', '37.782362,-122.406464', 37.782364, -122.406464, 'point_of_interest', 'maps/raw/places/staticmap/location=37.782362,-122.406464&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.782362,-122.406464&format=gif'),
(399, '796bb11e', '2c5cbf90402f045c0d128e647dfa2bcd', 'San Francisco Chronicle', '1350 16th Street, Oakland, CA 94607, United States', '37.812262,-122.290135', 37.812263, -122.290138, 'point_of_interest', 'maps/raw/places/staticmap/location=37.812262,-122.290135&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.812262,-122.290135&format=gif'),
(400, '714aa78d', 'd9460c43b6deebb96536be22e3f57518', 'University of San Francisco', '2130 Fulton Street, San Francisco, CA 94117, United States', '37.775749,-122.450386', 37.775749, -122.450386, 'university', 'maps/raw/places/staticmap/location=37.775749,-122.450386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.775749,-122.450386&format=gif'),
(401, '85d8405a', '85658f876e0a97d87b45f436ae3785e4', 'University of San Francisco', '480 South Batavia Street, Orange, CA 92868, United States', '33.781224,-117.862712', 33.781223, -117.862709, 'university', 'maps/raw/places/staticmap/location=33.781224,-117.862712&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.781224,-117.862712&format=gif'),
(402, '01dce0c6', '67d5bb018c8ad308482ddb876e727ecc', 'Rio de Janeiro', 'Rio de Janeiro - State of Rio de Janeiro, Brazil', '-22.9068467,-43.1728965', -22.906847, -43.172897, 'locality', 'maps/raw/places/staticmap/location=-22.9068467,-43.1728965&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.9068467,-43.1728965&format=gif'),
(403, '4bef5a53', '2601a81f60c575d3a89932167e22b3e9', 'Saale', 'Saale, Germany', '51.2824759,11.6919722', 51.282475, 11.691972, 'natural_feature', 'maps/raw/places/staticmap/location=51.2824759,11.6919722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.2824759,11.6919722&format=gif'),
(404, 'fe3e3daa', '6518c9b3aa2381159698181e55d839e8', 'Rio All-Suites Hotel and Casino', '3700 West Flamingo Road, Las Vegas, NV 89103, United States', '36.117515,-115.188159', 36.117516, -115.188156, 'lodging', 'maps/raw/places/staticmap/location=36.117515,-115.188159&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.117515,-115.188159&format=gif'),
(405, '8d12d832', '814f7ea860eaabd599fbd543d79be726', 'RIO Products', '5050 South Yellowstone Highway, Idaho Falls, ID 83402, United States', '43.452238,-112.069554', 43.452236, -112.069557, 'store', 'maps/raw/places/staticmap/location=43.452238,-112.069554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.452238,-112.069554&format=gif'),
(406, 'f8fcb8a5', '9488c126159fb613962a322309c5fe23', 'University of Rio Grande', '218 North College Avenue, Rio Grande, OH 45674, United States', '38.881704,-82.380209', 38.881702, -82.380211, 'university', 'maps/raw/places/staticmap/location=38.881704,-82.380209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.881704,-82.380209&format=gif'),
(407, '631b3e42', '2fe396990f17a056cc534359af849ecc', 'Rio Tinto Distribution Center', '6076 Broken Rock Cir, South Jordan, UT 84095, United States', '40.523397,-112.09474', 40.523396, -112.094742, 'point_of_interest', 'maps/raw/places/staticmap/location=40.523397,-112.09474&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.523397,-112.09474&format=gif'),
(408, '6f5a4655', '585def4e2b884589e6c42f5adcc7a477', 'Rio Salado College', '2323 West 14th Street, Tempe, AZ 85281, United States', '33.412645,-111.974169', 33.412643, -111.974167, 'point_of_interest', 'maps/raw/places/staticmap/location=33.412645,-111.974169&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.412645,-111.974169&format=gif'),
(409, '0b5a5ce6', '4de7a84603d6a23a516113d92a1a9bb3', 'Rio Grande Mexican Restaurant', '9535 Park Meadows Drive, Lone Tree, CO 80124, United States', '39.554765,-104.879265', 39.554764, -104.879265, 'restaurant', 'maps/raw/places/staticmap/location=39.554765,-104.879265&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.554765,-104.879265&format=gif'),
(410, '0a9091b3', '95ab6c3c08f55286fccb766736e60450', 'Rio Hondo College', '3600 Workman Mill Road, Whittier, CA 90601, United States', '34.019466,-118.033803', 34.019466, -118.033806, 'point_of_interest', 'maps/raw/places/staticmap/location=34.019466,-118.033803&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.019466,-118.033803&format=gif'),
(411, 'c47f7fd0', '198b45dc60b797469fe37e0642f18bf8', 'Rio Elementary', '355 Lowville Road, Rio, WI 53960, United States', '43.44594,-89.245885', 43.445938, -89.245888, 'school', 'maps/raw/places/staticmap/location=43.44594,-89.245885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.44594,-89.245885&format=gif'),
(412, 'fa97edfc', '02502253280d224d13364b2e5fded88d', 'Rio Grande Mexican Restaurant', '143 West Mountain Avenue, Fort Collins, CO 80524, United States', '40.586733,-105.078217', 40.586735, -105.078217, 'bar', 'maps/raw/places/staticmap/location=40.586733,-105.078217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.586733,-105.078217&format=gif'),
(413, 'cddf40aa', '6b2ff88c448dd886ee84ce3dca25ccd7', 'RIO Rooftop &amp; Restaurant', '601 Rio Grande Street, Austin, TX 78701, United States', '30.270101,-97.749298', 30.270102, -97.749298, 'night_club', 'maps/raw/places/staticmap/location=30.270101,-97.749298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.270101,-97.749298&format=gif'),
(414, '19966158', '4621a36fa72e2af931d5dd27cd6e90b9', 'El Rio', '3158 Mission Street, San Francisco, CA 94110, United States', '37.746793,-122.41942', 37.746792, -122.419418, 'night_club', 'maps/raw/places/staticmap/location=37.746793,-122.41942&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.746793,-122.41942&format=gif'),
(415, 'ca12f796', 'a2180dd8f2229456b679011a12440c04', 'Rio Bank', '720 East Jackson Avenue, McAllen, TX 78501, United States', '26.191405,-98.213394', 26.191404, -98.213394, 'bank', 'maps/raw/places/staticmap/location=26.191405,-98.213394&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.191405,-98.213394&format=gif'),
(416, '723db959', 'fdad6e3a767d9799a8b81329d2f3bd41', 'Rio Ammunition, Inc.', 'Marshall, TX, United States', '32.557982,-94.283372', 32.557983, -94.283371, 'establishment', 'maps/raw/places/staticmap/location=32.557982,-94.283372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.557982,-94.283372&format=gif'),
(417, 'ebbc4479', '0eb5c6431d37e4b18212e6106f96cb1f', 'Rio Grande', '7500 Bluewater Road Northwest, Albuquerque, NM 87121, United States', '35.083213,-106.720708', 35.083214, -106.720711, 'jewelry_store', 'maps/raw/places/staticmap/location=35.083213,-106.720708&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.083213,-106.720708&format=gif'),
(418, '843f7d8f', '84f0e71b8e4c23f45e750fd2347f7ca0', 'Rio Entertainment Center', '9811 Washingtonian Boulevard, Gaithersburg, MD 20878, United States', '39.115842,-77.197477', 39.115841, -77.197479, 'point_of_interest', 'maps/raw/places/staticmap/location=39.115842,-77.197477&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.115842,-77.197477&format=gif'),
(419, '65012cbd', '5418ec0dd5bbb2861e49a049e58200ff', 'Rio Grande Mexican Restaurant', '1101 Walnut Street, Boulder, CO 80302, United States', '40.016943,-105.280819', 40.016945, -105.280823, 'bar', 'maps/raw/places/staticmap/location=40.016943,-105.280819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.016943,-105.280819&format=gif'),
(420, 'd437ed2d', '8d1a578b3949491aafd1ae875baf0512', 'Rio Grande Mexican Restaurant', '1525 Blake Street, Denver, CO 80202, United States', '39.750163,-104.999966', 39.750164, -104.999969, 'bar', 'maps/raw/places/staticmap/location=39.750163,-104.999966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.750163,-104.999966&format=gif'),
(421, 'd80b4eeb', 'f7ae391738f55f79a3e7109db1fe6d30', 'Rio Theatre', '1205 Soquel Avenue, Santa Cruz, CA 95062, United States', '36.980167,-122.010413', 36.980167, -122.010414, 'point_of_interest', 'maps/raw/places/staticmap/location=36.980167,-122.010413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.980167,-122.010413&format=gif'),
(422, '41a3aef7', '3208345dc3c468602b18daaffaf62dae', 'El Rio Community Health Center', '839 West Congress Street, Tucson, AZ 85745, United States', '32.221213,-110.985927', 32.221214, -110.985924, 'hospital', 'maps/raw/places/staticmap/location=32.221213,-110.985927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.221213,-110.985927&format=gif'),
(423, 'fb5e3b5d', '42cd3b87a307226f72782d044208f631', 'Rio Del Valle Junior High School', '3100 Rose Avenue, Oxnard, CA 93036, United States', '34.232467,-119.154253', 34.232468, -119.154251, 'school', 'maps/raw/places/staticmap/location=34.232467,-119.154253&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.232467,-119.154253&format=gif'),
(424, 'cd0c1932', '8b02d77ec9972534efb5012d87f58c73', 'The Harry S. Truman Scholarship Foundation', '712 Jackson Place Northwest, Washington, DC 20006, United States', '38.899499,-77.03872', 38.899498, -77.038719, 'point_of_interest', 'maps/raw/places/staticmap/location=38.899499,-77.03872&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.899499,-77.03872&format=gif'),
(425, '61dbd89e', '490ce401c9666fe97a9d2d99cf509229', 'Harry S. Truman Library', '500 West US Highway 24, Independence, MO 64050, United States', '39.103448,-94.421264', 39.103447, -94.421265, 'library', 'maps/raw/places/staticmap/location=39.103448,-94.421264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.103448,-94.421264&format=gif'),
(426, '95131222', 'a45a3acc8c7e5649ee5a72c0cbe26915', 'Dabney S. Lancaster Community College Rockbridge Regional Center', '35 Vista Links Drive, Buena Vista, VA 24416, United States', '37.739563,-79.37555', 37.739563, -79.375549, 'point_of_interest', 'maps/raw/places/staticmap/location=37.739563,-79.37555&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.739563,-79.37555&format=gif'),
(427, '443b99f2', '063d292d5c9e5cc84ca35383f0240a67', 'William S Hart Museum', '24151 Newhall Avenue, Newhall, CA 91321, United States', '34.375689,-118.525691', 34.375690, -118.525688, 'museum', 'maps/raw/places/staticmap/location=34.375689,-118.525691&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.375689,-118.525691&format=gif'),
(428, '071f6ebb', '6e32b9913318cabbf6b91e495f9aaff9', 'S &amp; S Truck Parts Inc', '600 West Irving Park Road, Schaumburg, IL 60193, United States', '41.99065,-88.094771', 41.990650, -88.094772, 'store', 'maps/raw/places/staticmap/location=41.99065,-88.094771&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.99065,-88.094771&format=gif'),
(429, 'a8cbed09', '726a550a9f4242c3f8173d3f790f931f', 'S &amp; S Truck &amp; Tractor Canada Inc', '6460 Kestrel Road, Mississauga, ON L5T 1Z7, Canada', '43.652257,-79.672534', 43.652256, -79.672531, 'store', 'maps/raw/places/staticmap/location=43.652257,-79.672534&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.652257,-79.672534&format=gif'),
(430, '3e1b6e2c', '40f03db0f08a3dab60c61a535b4a5e4b', 'Dabney S. Lancaster Community College', '1000 Dabney Drive, Clifton Forge, VA 24422, United States', '37.810266,-79.852354', 37.810265, -79.852356, 'point_of_interest', 'maps/raw/places/staticmap/location=37.810266,-79.852354&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.810266,-79.852354&format=gif'),
(431, '811480d0', 'e853210bcd49e0589e535c32b4a64d03', 'Skype', '3210 Porter Drive, Palo Alto, CA 94304, United States', '37.407373,-122.147342', 37.407372, -122.147339, 'establishment', 'maps/raw/places/staticmap/location=37.407373,-122.147342&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.407373,-122.147342&format=gif'),
(432, '35d0e8be', 'bc1b7b7f16472192aa2bb8ea399bfe5e', 'William S. Hein &amp; Co., Inc.', '2350 North Forest Road, Getzville, NY 14068, United States', '43.007321,-78.775571', 43.007320, -78.775574, 'establishment', 'maps/raw/places/staticmap/location=43.007321,-78.775571&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.007321,-78.775571&format=gif'),
(433, '80cadc11', '26c20018ba6bed9c490f36d3b4c2a2d4', 'S &amp; T Bank', 'South 8th Avenue, Clarion, PA 16214, United States', '41.212014,-79.380677', 41.212013, -79.380676, 'atm', 'maps/raw/places/staticmap/location=41.212014,-79.380677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.212014,-79.380677&format=gif'),
(434, '2ffa5a59', '75927d6d726b6abd69dd072e0929147d', 'S &amp; T Bank', 'Coral Reef Road, DuBois, PA 15801, United States', '41.149694,-78.703995', 41.149693, -78.703995, 'atm', 'maps/raw/places/staticmap/location=41.149694,-78.703995&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.149694,-78.703995&format=gif'),
(435, '1b39f0d6', '187350535a96d91d5822474250a0caf6', 'Smithsonian S. Dillon Ripley Center', '1100 Jefferson Drive Southwest, Washington, DC 20560, United States', '38.888562,-77.026883', 38.888561, -77.026886, 'art_gallery', 'maps/raw/places/staticmap/location=38.888562,-77.026883&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.888562,-77.026883&format=gif'),
(436, 'c8abe36f', 'eb5aa678fffa900e4a313b1c5e3c22a3', 'Yale Music Library', '120 High Street, New Haven, CT 06511, United States', '41.311249,-72.929042', 41.311249, -72.929039, 'library', 'maps/raw/places/staticmap/location=41.311249,-72.929042&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.311249,-72.929042&format=gif'),
(437, 'd472fb01', 'f44c1f1ca8a3ea4d131b16379444d62b', 'S Karger Publishers Inc', '26 West Avon Road, Unionville, CT 06085, United States', '41.756962,-72.881836', 41.756962, -72.881836, 'establishment', 'maps/raw/places/staticmap/location=41.756962,-72.881836&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.756962,-72.881836&format=gif'),
(438, '5e3f39a6', '4910298b9b24dc55af45f1b440bfede8', 'Harry S Truman School of Public Affairs', 'Middlebush Hall, Columbia, MO 65201, United States', '38.946201,-92.326928', 38.946201, -92.326927, 'university', 'maps/raw/places/staticmap/location=38.946201,-92.326928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.946201,-92.326928&format=gif'),
(439, '6c2713a9', '4f9bf2269d95f58f5ad030b32fff07ea', 'S &amp; T Bank', 'Route 30 East, Greensburg, 15601, United States', '40.300575,-79.508197', 40.300575, -79.508194, 'atm', 'maps/raw/places/staticmap/location=40.300575,-79.508197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.300575,-79.508197&format=gif'),
(440, '5ebc5973', 'db6131218632dc12c7f7e2a6806eb05c', 'S &amp; T Bank', '2388 Pennsylvania 286, Pittsburgh, PA 15239, United States', '40.463082,-79.704561', 40.463081, -79.704559, 'atm', 'maps/raw/places/staticmap/location=40.463082,-79.704561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.463082,-79.704561&format=gif'),
(441, 'a11b5857', '0490901ed7c36fadb036a93466820fd9', 'The S/L/A/M Collaborative Inc', '80 Glastonbury Boulevard, Glastonbury, CT 06033, United States', '41.721391,-72.618282', 41.721390, -72.618279, 'home_goods_store', 'maps/raw/places/staticmap/location=41.721391,-72.618282&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.721391,-72.618282&format=gif'),
(442, 'dc70f1e9', 'de779fa4ba3641c7316e0f4706f6f16d', 'C &amp; S Technical Resources', '499 Col Eileen Collins Boulevard, Syracuse, NY 13212, United States', '43.114453,-76.131861', 43.114452, -76.131859, 'general_contractor', 'maps/raw/places/staticmap/location=43.114453,-76.131861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.114453,-76.131861&format=gif'),
(443, 'cb81f531', 'ac734a590fbf8e622bc22403411be6e9', 'S &amp; S Truck Parts Inc', '1401 Valley View Lane, Irving, TX 75061, United States', '32.830783,-97.028267', 32.830784, -97.028267, 'store', 'maps/raw/places/staticmap/location=32.830783,-97.028267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.830783,-97.028267&format=gif'),
(444, '8e9436ec', '57c6f58f56a7d2ce5c11bcc80ec08bef', 'T-Mobile', '304 merced mall, Merced, CA 95348, United States', '37.320641,-120.482665', 37.320641, -120.482666, 'electronics_store', 'maps/raw/places/staticmap/location=37.320641,-120.482665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.320641,-120.482665&format=gif'),
(445, '94e44c8b', '2f1ef85ef7b883e18fa4ffff3e971623', 'T-Mobile', '2800 Independence Dr, Livermore, CA 94551, United States', '37.702952,-121.812573', 37.702953, -121.812576, 'store', 'maps/raw/places/staticmap/location=37.702952,-121.812573&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.702952,-121.812573&format=gif'),
(446, '4174cb86', '2ccaa743dd9b1cfc08f39ab2995a0f0a', 'T-Mobile', '1709 Automation Pkwy, San Jose, CA 95131, United States', '37.390678,-121.884723', 37.390678, -121.884720, 'store', 'maps/raw/places/staticmap/location=37.390678,-121.884723&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.390678,-121.884723&format=gif'),
(447, '676a8b7c', '279c7c744f7723bc3db215eb22016746', 'T-Mobile', '232 S Garfield Ave, Monterey Park, CA 91754, United States', '34.060276,-118.122601', 34.060276, -118.122604, 'store', 'maps/raw/places/staticmap/location=34.060276,-118.122601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.060276,-118.122601&format=gif'),
(448, 'e7cc414e', 'd7783054b54662ae46cbecda015b0ccb', 'T-Mobile', '3100 East Imperial Highway #1202, Lynwood, CA 90262, United States', '33.929169,-118.215504', 33.929169, -118.215508, 'store', 'maps/raw/places/staticmap/location=33.929169,-118.215504&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.929169,-118.215504&format=gif'),
(449, '82eae489', 'eb76f7325c7c9459e754fb07c69495bd', 'T-Mobile Los Angeles', '105 W Century Blvd #101, Los Angeles, CA 90003, United States', '33.945752,-118.274353', 33.945751, -118.274353, 'store', 'maps/raw/places/staticmap/location=33.945752,-118.274353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.945752,-118.274353&format=gif'),
(450, '368d120c', '32758e573fd615118d8f898704804d8a', 'T-Mobile Simply Prepaid', '15126 Paramount Blvd, Paramount, CA 90723, United States', '33.895331,-118.159604', 33.895332, -118.159607, 'store', 'maps/raw/places/staticmap/location=33.895331,-118.159604&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.895331,-118.159604&format=gif'),
(451, '4a9fce37', '63a283e6d731aa86c206f636ed68810d', 'Casino Cellular', '2026 W Olympic Blvd, Los Angeles, CA 90006, United States', '34.051463,-118.27974', 34.051464, -118.279739, 'store', 'maps/raw/places/staticmap/location=34.051463,-118.27974&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.051463,-118.27974&format=gif'),
(452, '5c9ddbba', '8b7c70b8e8f9c6c28cf623a0783c1cf6', 'Law Offices of Patent Attorney William Mansfield', 'Winchester, MA, United States', '42.101483,-72.589811', 42.101482, -72.589813, 'lawyer', 'maps/raw/places/staticmap/location=42.101483,-72.589811&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.101483,-72.589811&format=gif'),
(453, '698464dd', 'e7082e759a5a09a97064466764387993', 'Twitter', '249 W 17th St, New York, NY 10011, United States', '40.741474,-73.99985', 40.741474, -73.999847, 'establishment', 'maps/raw/places/staticmap/location=40.741474,-73.99985&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.741474,-73.99985&format=gif'),
(454, '46ae68af', '9dc62e02b7462c78431abcab59afb5d2', 'Westborough MBTA Parking', 'Smith Pkwy, Westborough, MA 01581, United States', '42.269972,-71.647496', 42.269974, -71.647499, 'parking', 'maps/raw/places/staticmap/location=42.269972,-71.647496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.269972,-71.647496&format=gif'),
(455, '33964f31', '8ec23e1de6d452abeb466bb33da0820b', 'MBTA Commuter Rail Littleton Station', '261 Foster St, Littleton, MA 01460, United States', '42.519236,-71.502546', 42.519238, -71.502548, 'establishment', 'maps/raw/places/staticmap/location=42.519236,-71.502546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.519236,-71.502546&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(456, 'ef2146b3', '04052bd617aebe425d629cd296f18416', 'West Natick Train Station', '249 W Central St, Natick, MA 01760, United States', '42.283098,-71.391789', 42.283096, -71.391792, 'train_station', 'maps/raw/places/staticmap/location=42.283098,-71.391789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.283098,-71.391789&format=gif'),
(457, '9ab6ffea', '934230f0ba11c7863e9d591084a15f3f', 'MBTA Attleboro Station', '75 S Main St, Attleboro, MA 02703, United States', '41.941956,-71.284967', 41.941956, -71.284966, 'establishment', 'maps/raw/places/staticmap/location=41.941956,-71.284967&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.941956,-71.284967&format=gif'),
(458, '09e5e151', '7321bbb348ec702562825eb03dfc181d', 'MBTA Commuter Rail Parking Lot', '231 Centre Ave, Abington, MA 02351, United States', '42.106644,-70.934804', 42.106644, -70.934807, 'parking', 'maps/raw/places/staticmap/location=42.106644,-70.934804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.106644,-70.934804&format=gif'),
(459, '18ab4663', '43b0845fd16485f018f9446ee27d5ff6', 'T-Mobile', '1624 Donald Lee Hollowell Parkway Northwest, Atlanta, GA 30318, United States', '33.771923,-84.441318', 33.771923, -84.441315, 'store', 'maps/raw/places/staticmap/location=33.771923,-84.441318&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.771923,-84.441318&format=gif'),
(460, '3384f5c0', '401f2e99260af365c3e2cddb75e002c4', 'T-Mobile', '137 Hester St, New York, NY 10013, United States', '40.717146,-73.994692', 40.717148, -73.994690, 'store', 'maps/raw/places/staticmap/location=40.717146,-73.994692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.717146,-73.994692&format=gif'),
(461, '84eefd4b', '624c13f196c433a508038a9d06639ee2', 'T-Mobile Authorized Dealer', '6149 Old National Highway, Atlanta, GA 30349, United States', '33.586766,-84.472181', 33.586765, -84.472183, 'store', 'maps/raw/places/staticmap/location=33.586766,-84.472181&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.586766,-84.472181&format=gif'),
(462, '66e1b471', '555ac7b65bdb0e53785e4e3a3282da79', 'T-Mobile', '3951 W Ashley Cir, Charleston, SC 29414, United States', '32.821599,-80.08132', 32.821598, -80.081322, 'store', 'maps/raw/places/staticmap/location=32.821599,-80.08132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.821599,-80.08132&format=gif'),
(463, '175aa42a', '15d55a610d9c54ac644722cc9ab7e9dd', 'T-Mobile', '1900 Cunningham Dr, Hampton, VA 23666, United States', '37.040756,-76.378973', 37.040756, -76.378975, 'store', 'maps/raw/places/staticmap/location=37.040756,-76.378973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.040756,-76.378973&format=gif');

-- --------------------------------------------------------

--
-- Table structure for table `messages_data`
--

CREATE TABLE IF NOT EXISTS `messages_data` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `author.type` char(10) NOT NULL,
  `author.id` int(11) NOT NULL,
  `content` text NOT NULL,
  `emoticons` varchar(20) DEFAULT NULL
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
-- Table structure for table `messages_hide`
--

CREATE TABLE IF NOT EXISTS `messages_hide` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `messages.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_id`
--

CREATE TABLE IF NOT EXISTS `messages_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` char(40) NOT NULL,
  `private` int(1) NOT NULL,
  `type` char(10) NOT NULL,
  `name` text,
  `language` char(4) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL,
  `updated` int(11) NOT NULL
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
  `translate` char(4) NOT NULL,
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
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages_views`
--

CREATE TABLE IF NOT EXISTS `messages_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
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
  `duration` float(10,6) NOT NULL,
  `path` text NOT NULL
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
  `file.320kbps` varchar(50) NOT NULL,
  `file.128kbps` varchar(50) NOT NULL,
  `secret.original` varchar(40) NOT NULL,
  `secret.320kbps` varchar(40) NOT NULL,
  `secret.128kbps` varchar(40) NOT NULL,
  `path.original` text NOT NULL,
  `path.320kbps` char(10) NOT NULL,
  `path.128kbps` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec_name` char(10) NOT NULL,
  `codec_long_name` varchar(100) DEFAULT NULL,
  `bitrate` int(11) NOT NULL,
  `duration` float(10,6) NOT NULL,
  `mime_type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.320kbps`, `file.128kbps`, `secret.original`, `secret.320kbps`, `secret.128kbps`, `path.original`, `path.320kbps`, `path.128kbps`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 1, 'user', 1, 0, 1441182602, '60f9d8d7', '6246b08f5f02829a6c81c31d96883073', 'Ä‘iá»u anh lo láº¯ng', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 'khÃ¡nh phÆ°Æ¡ng', '', '', 4, 4, 4, 'f9c9c0d67cfa9bacae1b319f45802bcf', '2309e46c1deb259edd0ad9a865dac0fe', '5024c79d1a4f3df36ea6b1c078cc52f3', 'e141ae0b0db60c4e3e3eba59f74a6f69', 'e6321c040a4eceb05c0d6241487da67c', '7f3d0ab076b9fbbead304640c8be22af', '314b49e3', '3521a9ad', 'e224e7ed', 0, 9803861, 'mp3', 'MP3 (MPEG audio layer 3)', 320042, 245.063995, '0');

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
-- Table structure for table `pages_block`
--

CREATE TABLE IF NOT EXISTS `pages_block` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `page.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages_follow`
--

CREATE TABLE IF NOT EXISTS `pages_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `page.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

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
(23, 'notifyPopup_info_places', 'en', '10000'),
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
(49, 'media_cache_time_close', 'en', '1800'),
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
(98, 'regex_hashtag', 'en', '/((^|\\s)#([a-zA-Z0-9\\_]+)($|\\s))/'),
(99, 'regex_usertag', 'en', '/((^|\\s)@([a-zA-Z0-9\\_]+)($|\\s))/'),
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
(112, 'user_timezone.default', 'en', '+07:00'),
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
(138, 'accounts_action_time_delay', 'en', '5'),
(139, 'accounts_action_time_allow', 'en', '3'),
(140, 'http_cache_expire', 'en', '86400'),
(141, 'http_cache_expire_quick', 'en', '3600'),
(142, 'http_cache_expire_static', 'en', '129600'),
(143, 'default_user_avatar_large', 'en', 'storage/photos/static/user-avatar-large.jpg'),
(144, 'default_user_avatar_medium', 'en', 'storage/photos/static/user-avatar-medium.jpg'),
(145, 'default_user_avatar_small', 'en', 'storage/photos/static/user-avatar-small.jpg'),
(146, 'default_user_cover_large', 'en', 'storage/photos/static/user-cover-large.jpg'),
(147, 'default_user_cover_medium', 'en', 'storage/photos/static/user-cover-medium.jpg'),
(148, 'default_user_cover_small', 'en', 'storage/photos/static/user-cover-small.jpg'),
(151, 'suggest_news_reload', 'en', '3600'),
(152, 'suggest_guys_reload', 'en', '3600'),
(153, 'suggest_guys_reopen', 'en', '1800'),
(154, 'suggest_news_reopen', 'en', '1800'),
(155, 'select_time_year_min', 'en', '1900'),
(156, 'select_time_year_max', 'en', '2015'),
(157, 'select_time_month_min', 'en', '1'),
(158, 'select_time_month_max', 'en', '12'),
(159, 'select_time_day_min', 'en', '1'),
(160, 'select_time_day_max', 'en', '30'),
(161, 'select_time_hour_min', 'en', '0'),
(162, 'select_time_hour_max', 'en', '23'),
(163, 'select_time_minute_min', 'en', '0'),
(164, 'select_time_minute_max', 'en', '59'),
(165, 'select_time_second_min', 'en', '0'),
(166, 'select_time_second_max', 'en', '59'),
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
(188, 'storage_folder_max', 'en', '1'),
(189, 'storage_folder_name', 'en', 'drive'),
(190, 'cacheClean_user_limit_min', 'en', '100'),
(191, 'cacheClean_user_limit_max', 'en', '1000'),
(192, 'videos_thumbnail_image_mime', 'en', 'image/png'),
(193, 'rekognition_key', 'en', 'aJyI214g7jnoRP2I'),
(194, 'rekognition_secret', 'en', 'eAcco8pF6fpDgdJg'),
(195, 'rekognition_namespace', 'en', 'giccos'),
(196, 'rekognition_userid', 'en', 'faces'),
(197, 'rekognition_url', 'en', 'http://rekognition.com/func/api/'),
(198, 'rekognition_rate_allow', 'en', '0.25'),
(199, 'rekognition_tagupload', 'en', 'untagged'),
(200, 'rekognition_tagdefault', 'en', '_x_all'),
(201, 'image_faces_thumbnail', 'en', '150'),
(202, 'hash_feed_comment_content', 'en', 'g::key::feed->comment->content'),
(203, 'boxSuggest_length_randKeyEvent', 'en', '32'),
(204, 'ajax_length_randKeyEvent', 'en', '10'),
(205, 'notifyPopup_length_randKeyEvent', 'en', '32'),
(206, 'ajax_request_limit_checktime', 'en', '15'),
(207, 'photos_compression_size_percent', 'en', '75'),
(208, 'photos_compression_quality_percent', 'en', '85'),
(209, 'regex_name', 'en', '/^([\\S]{2,30})$/'),
(210, 'regex_password', 'en', '/^(\\S{8,}$)/'),
(211, 'regex_email', 'en', '/(([\\w-\\.]+@([\\w-]+\\.)+[\\w-]{2,6}))$/'),
(212, 'regex_username', 'en', '/^([a-zA-Z]{1})([a-zA-Z0-9\\.\\_]{5,30})$/'),
(213, 'regex_date_day', 'en', '/^([0-9]{1,2})$/'),
(214, 'regex_date_month', 'en', '/^([0-9]{1,2})$/'),
(215, 'regex_date_year', 'en', '/^([0-9]{4})$/'),
(216, 'regex_gender', 'en', '/^(male|female)$/'),
(217, 'regex_phone', 'en', '/^([0-9]{9,15})$/'),
(218, 'storage_cache_folder_path', 'en', 'storage/cache'),
(219, 'hash_cache_image_path', 'en', 'g::key::cache->image->path'),
(220, 'hash_storage_path', 'en', 'g::key::storage->path'),
(221, 'user_messages.translate_default', 'en', '1'),
(222, 'user_language.code_list', 'en', 'a:2:{i:0;s:2:"en";i:1;s:2:"vi";}'),
(223, 'hash_messages_content', 'en', 'g::key::messages->content'),
(224, 'messages_update_timeout', 'en', '3000'),
(225, 'messagesPopup_length_randKeyEvent', 'en', '10'),
(226, 'regex_messages', 'en', '/([\\S]+)/'),
(227, 'messages_typing_timeout', 'en', '3000'),
(228, 'messages_views_timeout', 'en', '3000'),
(229, 'regex_sites_url', 'en', '/^((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(230, 'sites_info_time_update', 'en', '86400'),
(231, 'feeds_nearby_scanning_distance', 'en', '10'),
(232, 'user_mode.safe_default', 'en', '0'),
(233, 'users_getpassword_timeout', 'en', '3600'),
(234, 'regex_sites_giccos_direct', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/(sites\\/direct)\\/([\\S]+)?)/'),
(235, 'hash_cache_readfile', 'en', 'g::key::cache->readfile'),
(236, 'regex_sites_giccos_host', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/([\\S]+)?)/'),
(237, 'messages_postion_timeout', 'en', '300'),
(238, 'hash_storage_static', 'en', 'g::key::storage->static'),
(239, 'users_online_timeout', 'en', '300'),
(240, 'regex_sites_url_fstring', 'en', '/((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?((([a-zA-Z0-9]+)\\.([a-zA-Z\\.]+))\\/?(([\\S\\s][^\\.]+)(\\.([a-zA-Z0-9]+))?)?)/'),
(241, 'hash_user_info', 'en', 'g::key::user->infomation'),
(242, 'regex_sites_giccos_domain', 'en', '/^(((http|https|ftp|ftps)(:\\/\\/))?((www|[a-zA-Z0-9\\-]+)\\.)?(localhost\\/giccos)\\/?)/'),
(243, 'regex_language_code', 'en', '/([a-zA-Z]{4})/'),
(244, 'regex_word', 'en', '/([a-zA-Z]+)/'),
(245, 'key_api_wordnik_1', 'en', 'a2a73e7b926c924fad7001ca3111acd55af2ffabf50eb4ae5'),
(246, 'hash_library_words_subinfo', 'en', 'g::key::library->words->subinfo'),
(247, 'hash_library_voice_content', 'en', 'g::key::library->voice->content'),
(248, 'feeds_action_timeout', 'en', '86400'),
(249, 'hash_photos_qr', 'en', 'g::key::photos->qr'),
(250, 'hash_videos_pointtag_check', 'en', 'g::key::videos->pointtag->check'),
(251, 'sites_views_timeout', 'en', '86400'),
(252, 'hash_mailer_logs', 'en', 'g::key::mailer->logs'),
(253, 'hash_mailer_id', 'en', 'g::key::mailer->id'),
(254, 'weather_cache_timeout', 'en', '10800');

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
  `photos.path` varchar(40) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 1, 'user', 1, 0, 1441183071, '8e68d095', '8bae5fbe328323689b3cbf4862b7959a', '16a2f66f', 'CL36_2nUkAATviz.jpg', '', '', 0, 1, 4, 4, 4, 'd70331a9af54d79bb2bec2e50a1eda79', '0', '0', '6e68bd54961af9bfc7e836fc22c83dd4', '50d36e33ce1f6d1cfefd3a54203c061d', '0', '0', 'd91e809c1152dbeecc0ff9e60278eee2', '87d7ce29', '0', '0', 'e8266bb1', 450, 600, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(2, 1, 'user', 1, 0, 1441183072, 'cef7d498', '7c018bf97aaa0d167bdc0b4eee61b849', '32f75cab', '1440690613319_3257.jpg', '', '', 0, 1, 4, 4, 4, 'b38cd0f48889f7803ef86dc98cd794f1', '0', '0', 'bf8e8e43e05b54a19994aabcf8eaa552', '1c82fa8c3761ba1bcc88cb10af514bdb', '0', '0', '3e3f258d756bf1b8dfeea76b61490d8b', 'fce21e37', '0', '0', 'ae225fe9', 900, 720, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(3, 1, 'user', 1, 0, 1441183076, '3d96485a', '6cf02720d7fd880e3b05471602994f77', '985ae914', '1909298_1474502006103047_649702505_o.jpg', '', '', 0, 1, 4, 4, 4, '659eaaeef227919f798a05d7bd4680b2', 'b3824d1a629d0880b8e9bc3436e53554', '551a6e94bde1b31a8385f0f8a7337b9a', '203809947b2d2fee728b52000e387620', 'f322d982f6b00c3e546469fb893d312b', 'b19cce68ddc0c0bc34772db494234278', 'f55c976be787b8d4a9afc91e4e1ba63e', '0bc94804ea378316e3dbeccaf0b53716', 'e03adb6b', '7df1e26f', '999f329e', '997478ae', 1536, 2048, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0'),
(4, 1, 'user', 1, 0, 1441183078, 'd10bf299', 'a5766c9fb32ab99fd715a648c0e8d373', '3b16fd4d', '1500x500.jpg', '', '', 0, 1, 4, 4, 4, '8f8209219c1da97dd13eca7ec2f14bea', 'd474dd118aa4794157e1ea4f291f8b6b', '5c2318736297703f362d63baaa892d4e', '165d7da5001c0d5a230b5a411daf6e9c', 'b69946e35fff6c33d17636829b6c7fe9', '49d9392e6cc8b444d5799abc5d2b3347', '3ba915353c9ec1141db4ade4639d2d09', '781d56f8dcb33f904a07c2b0b2b68d5a', '25af09f8', 'f47e0c81', '47e3399f', '67f5a822', 500, 1500, '0', '0', 0, 0, 0, 0, '0', 0, '0', 0, '0', '0', 0, 'image/jpeg', '0', '0', '0', 0, '0', '0', 0, '0', '0');

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
  `id` varchar(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('-P,ji9SHOc73o7lSd8wn9VJRRY5wreH83u,lQBSVO69', 1441466917, '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', 'e560e42e70107bcfc16988fad77778d2');

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
-- Table structure for table `sites_certificate`
--

CREATE TABLE IF NOT EXISTS `sites_certificate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` varchar(20) NOT NULL,
  `issuer.c` varchar(20) DEFAULT NULL,
  `issuer.o` varchar(50) DEFAULT NULL,
  `issuer.ou` varchar(50) DEFAULT NULL,
  `issuer.s` varchar(40) DEFAULT NULL,
  `issuer.l` varchar(40) DEFAULT NULL,
  `issuer.cn` varchar(100) DEFAULT NULL,
  `signature.type.name` varchar(30) DEFAULT NULL,
  `signature.type.id` char(10) DEFAULT NULL,
  `purposes` text,
  `valid.time.from` int(11) NOT NULL,
  `valid.time.to` int(11) NOT NULL,
  `identifier.subject.key` varchar(255) DEFAULT NULL,
  `identifier.authority.key` varchar(255) DEFAULT NULL,
  `policies` text,
  `usefor.key` varchar(100) DEFAULT NULL,
  `usefor.extended` varchar(255) DEFAULT NULL,
  `subject.name` text,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_comment`
--

CREATE TABLE IF NOT EXISTS `sites_comment` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_favorite`
--

CREATE TABLE IF NOT EXISTS `sites_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `action` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_id`
--

CREATE TABLE IF NOT EXISTS `sites_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `host` varchar(100) NOT NULL,
  `ip` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `secure` char(5) NOT NULL,
  `updated` int(11) NOT NULL
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
  `hash` varchar(40) NOT NULL,
  `scheme` char(10) DEFAULT NULL,
  `sub` varchar(20) DEFAULT NULL,
  `host` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dot` varchar(25) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `mime` char(10) DEFAULT NULL,
  `fingerprints` char(10) NOT NULL,
  `language` char(4) DEFAULT NULL,
  `country` char(4) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `scan` varchar(40) NOT NULL,
  `certificate` varchar(40) DEFAULT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `hash`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `language`, `country`, `type`, `title`, `thumbnail`, `description`, `url`, `scan`, `certificate`, `updated`) VALUES
(1, 1441184169, 'dd3c4c8b', '4f1aef1fef151627b42a39827ef573b5', '98c50f5a0eb09a4544509300d9e7b5b5', 'http', '', 'vnreview.vn', 'vnreview', 'vn', '', '', 'f3ea46d0', 'vi', 'VN', 'article', 'VnReview - ÄÃ¡nh giÃ¡, tin tá»©c, tÆ° váº¥n sáº£n pháº©m cÃ´ng nghá»‡', 'photos/raw/other/2CNBZDSZx3rjgGR4ZJr7g46cbP9oyR26lajSCX+WGEUI3UfShu7//qzeWw2wR7PFw49bgMEcDL50QITB16s4oA==', 'ÄÃ¡nh giÃ¡ sáº£n pháº©m cÃ´ng nghá»‡, tin tá»©c cÃ´ng nghá»‡, tÆ° váº¥n sáº£n pháº©m, Ä‘iá»‡n thoáº¡i di Ä‘á»™ng, smartphone, TV, laptop, Ä‘á»“ gia dá»¥ng, mÃ¡y tÃ­nh báº£ng, mÃ¡y áº£nh sá»‘', 'http://vnreview.vn/', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 1441184169),
(2, 1441184691, 'cb8fc719', 'b574cc4e97fb1e05c8636f9b1807f6a1', '570ebc90ae43186029283bb1f9e729a3', 'http', '', 'vnexpress.net', 'vnexpress', 'net', '', '', 'a8d66807', '', '', '', 'Tin nhanh VnExpress - Äá»c bÃ¡o, tin tá»©c online 24h', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'http://vnexpress.net', 'bee1dc32244d643d0c040bf91ffa84f4', '', 1441184691),
(3, 1441184704, 'a49ca74a', '8778467be4836da0ad1a95347c6553c6', '266adb88be6da12efea60d13249b39f4', 'http', '', 'stackoverflow.com', 'stackoverflow', 'com', 'questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '', '10c10843', '', '', 'website', 'How to extract title and meta description using PHP Simple HTML DOM Parser? - Stack Overflow', 'photos/raw/other/5jmr+GGHFVEXl7DtOdFOPe1P2I7KU++hn5RzuLYA/jBRtcu2efm/kx/dmj0PpT4HsaZUij8NG06WbT1rcB5MzQP9DOuZzykEKEpXcuuYe+jYrX6gJ+ACFpcWBfe1VU2nJ3Cyem/fqZhk1rFiBh8rvm8vNeT4LX/1rra08WjFBXE=', 'How can I extract a page&amp;#39;s title and meta description using the PHP Simple HTML DOM Parser?  I just need the title of the page and the keywords in plain text. ', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '736444bc3612697c735ac92d365bd219', '', 1441184704);

-- --------------------------------------------------------

--
-- Table structure for table `sites_rate`
--

CREATE TABLE IF NOT EXISTS `sites_rate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` int(1) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sites_scan`
--

CREATE TABLE IF NOT EXISTS `sites_scan` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `hash` char(10) NOT NULL,
  `total` int(4) NOT NULL,
  `data` text NOT NULL,
  `status` char(10) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_scan`
--

INSERT INTO `sites_scan` (`id`, `time`, `token`, `display`, `hash`, `total`, `data`, `status`, `updated`) VALUES
(1, 1441184173, '9d0c92fe', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnreview.vn&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnreview.vn&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:56:&quot;http://malc0de.com/database/index.php?search=vnreview.vn&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnreview.vn&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnreview.vn/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184173),
(2, 1441184694, 'e45f994f', 'bee1dc32244d643d0c040bf91ffa84f4', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184694),
(3, 1441184707, 'f0c9d955', '736444bc3612697c735ac92d365bd219', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;http://www.malwaredomainlist.com/mdl.php?search=stackoverflow.com&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:63:&quot;https://zeustracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:62:&quot;http://malc0de.com/database/index.php?search=stackoverflow.com&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:157:&quot;http://yandex.com/infected?l10n=en&amp;url=http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184707);

-- --------------------------------------------------------

--
-- Table structure for table `sites_views`
--

CREATE TABLE IF NOT EXISTS `sites_views` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_views`
--

INSERT INTO `sites_views` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`, `updated`) VALUES
(1, 1441154300, 3, 'user', '1', 1441184500),
(2, 1441154300, 3, 'user', '1', 1441184200),
(3, 1441154300, 3, 'user', '1', 1441184300),
(4, 1441154300, 3, 'user', '1', 1441184400),
(5, 1441154300, 3, 'user', '1', 1441184100);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL,
  `public` int(11) NOT NULL DEFAULT '0',
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

INSERT INTO `status` (`id`, `public`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, 1, '4c32d620', 'd9992d2be4a14f6f783e75ba00acd488', 1441182140, 1441182140, 0, 1, 'user', 1, 3, 3, 3, 'status', '9uqB0rH5kd4IBJ5ptLir8TubCQWhlnh9OUjXuYy16/c=', 0, 0, 0, 0, 0, 0),
(2, 1, '33d8a653', '50958d06f698b081a7e1ff9588f5e672', 1441182581, 1441182581, 0, 1, 'user', 1, 3, 3, 3, 'music', 'BytrpEuLSZLrBO/n6LkS3yrGLTaYfpxKeRvbQdB7oM0=', 0, 0, 0, 0, 0, 0),
(3, 1, '28d3a2da', 'e6feab677c85bc700a82cb9f1fefdc7b', 1441183070, 1441183070, 0, 1, 'user', 1, 3, 3, 3, 'photos', 'TSapcav1HSAKSOSKAK19ONFgP+WLtzdyfkCo+7L2DFNgBOTtxkwdScnLg+0aPA+TD9h5Dfp10c1W7KOUy6VpoxOFmK6fQXy2AFZzFkj4fXlkfgCEWy4FYt8FkGufnrXpbpzSYgiC45DJPo61Bo1wJwyBKA/63QscSdLoDC4n7h6KirpD/bFPq3HoDgpfZMelQBqc76S+C2tpPKqE0vuEYC5dXu5Q0PXmu6aeXaJz/hThPd3jcVuWmfnhTNSlh9R8F5/TE6oXP8KVhjpLZt1yDASlm60BhllXMg1nzAcfigE=', 0, 0, 0, 0, 0, 0),
(4, 1, '66443ac1', '2c36326e2cd9bad1547c07b74c3d16a6', 1441183314, 1441183314, 0, 1, 'user', 1, 3, 3, 3, 'videos', 'O1ywWonLhfGda5JhUz33gADLK3t94mVYAaw1lLpf/Eo=', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_actions`
--

CREATE TABLE IF NOT EXISTS `status_actions` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL
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
  `guy.id` int(11) NOT NULL,
  `author` char(10) DEFAULT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(1, 1441182140, 1, 'user', 1),
(2, 1441182581, 2, 'user', 1),
(3, 1441183070, 3, 'user', 1),
(4, 1441183314, 4, 'user', 1);

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
  `time` int(11) NOT NULL,
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
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 3, 1),
(2, 3, 2),
(3, 3, 3),
(4, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(1, 4, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(2, 'drive', 1, 1441182582, 'df7f7a54', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3pRoOIIdWWRoJfFdu3wS6KrehyNdMHfWe6gDTnRTHJSVZRECaPlnh/VTdI8ldlGI0NLClOFzOc/Cfbe53WgVog==', 'audio/mp3', '314b49e3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182582, 9803861),
(3, 'drive', 1, 1441182582, '89ea6650', '', 'e6321c040a4eceb05c0d6241487da67c', 'qMJC2HgxprakgJ35nS2WR4qz7/bQ91FbZMtclQ4vg1XXwmSwf4sCmKdHsZ69ZsfI+HsfdBCsQXRq7ch4WmRlpA==', 'video/x-mpeg', '3521a9ad', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182593, 9804514),
(4, 'drive', 1, 1441182593, 'de5214db', '', '7f3d0ab076b9fbbead304640c8be22af', 'uQi5Rek/ln+I0fLv5VVNeKr9PomUbg6EbpaPcci5JMlf/ShVod0yXy9FLD6sIehode5ipY0l3lt3enie94vdyQ==', 'video/x-mpeg', 'e224e7ed', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182602, 3921826);

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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `status`, `size`) VALUES
(5, 'faces', 1, 1441183035, '7f7b5037', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'XlNUSVVar7t2igeKJJ+vwUooML3Rj5+vTUsDe1976AWw3k+eeuZk/XnJf3fdzQDL/JY7SN9fkoXRk8d9MhMzUA==', NULL, 'image/jpeg', 'f45a9102', 'CL36_2nUkAATviz.jpg', 1441183035, 54420),
(6, 'faces', 1, 1441183044, '9f1d2ed5', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'nF+Rta09RwrTlGEq8cnpxsJmdo2mjb7zGc39szRiQT3W9H/bdzF042lYGgZFZMG2wL6Y0Hi9QftlanNjYGVihw==', NULL, 'image/jpeg', '4388c5fd', 'CL36_2nUkAATviz.jpg', 1441183044, 54420),
(7, 'faces', 1, 1441183051, '8323de3b', '', '50d36e33ce1f6d1cfefd3a54203c061d', '5QCwOmL1tJugZqJYQxS84W3AgOtitxbX1p9aHnJUBTvRUvUPGpoJOLlu+2H6/Bjnep/Rb4G9b6yO6bbSlLOBLA==', NULL, 'image/jpeg', '8d153617', 'CL36_2nUkAATviz.jpg', 1441183051, 54420),
(8, 'faces', 1, 1441183053, 'f3970573', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OTXZmajArbOlu3IsLlZPaW4efbJInUOh9EBDo/xjgpeLksNGCO6oSwgK3BcqEKRCCjUap57aZThOG3KJows2ww==', NULL, 'image/jpeg', 'a06c6ad1', '1440690613319_3257.jpg', 1441183053, 246017),
(9, 'faces', 1, 1441183054, '9f413d25', '', 'b69946e35fff6c33d17636829b6c7fe9', 'LZwwOTyUjq2k1q/tPNPnNi8GzICif6nkYy94/y0fkxCcQ6BPIP9hB4Xvi9aS7BDQmewNqlie2xvNMSHSJ5tK5A==', NULL, 'image/jpeg', '4e27d80f', '1500x500.jpg', 1441183054, 101411),
(10, 'faces', 1, 1441183054, '02242222', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'KvqL3i/zn3HbaXl0Je596sVTxSxNTt4Gzq1sRhjCiGW1TKnjsF+shVg9MEdxpjwGGrjHTWfOoyKJaKo4ZdznRg==', NULL, 'image/jpeg', '6296c255', 'CL36_2nUkAATviz.jpg', 1441183054, 54420),
(11, 'faces', 1, 1441183057, 'bdc7b196', '', 'b69946e35fff6c33d17636829b6c7fe9', '1a1KJ/hOfgbBO8If+amueqWYV2vm6H6mQfut6mOpoMU8Q7IN/ki7BqXrCZOtT4KvShi4KQivLd6DkRH7JEaWmA==', NULL, 'image/jpeg', 'c311434d', '1500x500.jpg', 1441183057, 101411),
(12, 'faces', 1, 1441183060, 'd490aa0f', '', 'b69946e35fff6c33d17636829b6c7fe9', 'ejtAXuPKnqy4+Ai53TGDNPhbEeQMeHxNsHyYTh5PJDjVVLh718oaWkTPUN0Q5hSmQgo8x2KYqRE5WSwsAk1QlA==', NULL, 'image/jpeg', '1b399bbb', '1500x500.jpg', 1441183060, 101411),
(13, 'faces', 1, 1441183064, '9d9d07f5', '', 'b69946e35fff6c33d17636829b6c7fe9', 'nfx78XGS0YQ5wimeO+ie8YV5KNR8Bvjy8tfDGXVZeL3xTjl1WWgcaz+6ZtoKnFxVbNlrWjUWsSz9mop0g5CCZw==', NULL, 'image/jpeg', 'c935d3ce', '1500x500.jpg', 1441183064, 101411),
(14, 'faces', 1, 1441183067, 'd137981d', '', 'b69946e35fff6c33d17636829b6c7fe9', 'RXtUvzvs99wKIqxqbPqvPHfAVcO6ADD+osks7pll5vjjXuo9t2UhWPBzCfSmGmVD7dskSSX9WodKQ5aWPQv/Kg==', NULL, 'image/jpeg', '9c4869b9', '1500x500.jpg', 1441183067, 101411),
(15, 'drive', 1, 1441183070, '540470ff', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'Bafk4A14j7L3NBYeF11bNc+mu5bvlqG5psjyZmcMaQbDjoDjk4Ze9BZ/GqsBhUQP2SePU+0bXnVTITRkJlvU6g==', NULL, 'image/jpeg', '87d7ce29', 'CL36_2nUkAATviz.jpg', 1441183070, 54420),
(16, 'drive', 1, 1441183070, '0ac0b586', '', 'd91e809c1152dbeecc0ff9e60278eee2', 'Thr2nQTWPs/LA8p67E6dbU7Xe0831a9SVpRx6LiZBmve+dXYksrZVCOPvopzIv67GfgwkUOFNIQuHPSs79o8jg==', NULL, 'image/jpeg', 'e8266bb1', 'CL36_2nUkAATviz.jpg', 1441183070, 54420),
(17, 'faces', 1, 1441183070, '9a002158', '', 'b69946e35fff6c33d17636829b6c7fe9', '7FE3GCkv3Txh9RF9kapR6FtBms2M8TN6wcu9moCO/9ZRWwG5SQRxMFak0MYb2hkGGcpiutiDYpcI4ZxJQ2c/LQ==', NULL, 'image/jpeg', 'd6e56475', '1500x500.jpg', 1441183070, 101411),
(18, 'drive', 1, 1441183071, 'ece62837', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OI3mYgpHSiSDnqK9U2YrmPGEiF6Fv+oyXSRpS0HTFP+rXsBBCQoaYqWpZ5Lb1lykvBVoD2jc7otsOn6CytArGA==', NULL, 'image/jpeg', 'fce21e37', '1440690613319_3257.jpg', 1441183071, 246017),
(19, 'drive', 1, 1441183071, '3678ec28', '', '3e3f258d756bf1b8dfeea76b61490d8b', 'Mx4g2jnkawEUHn9/7caXxORaJZWM5G8gjB7ThuCsOxT+85NT6tdunhA7DBC0DrPZGfeGYYLJ5CmsO0JWSajJRA==', NULL, 'image/jpeg', 'ae225fe9', '1440690613319_3257.jpg', 1441183071, 246017),
(20, 'drive', 1, 1441183072, '947b369a', '', 'f322d982f6b00c3e546469fb893d312b', 'Bmtl+s+sSJwRUnW+zxgKwFAV7oWL4XyE04nv+r3anhO5I9YYMPpd2pXEAgLIUdGUJTuMgl4ub3x/eJG2TIBWVA==', NULL, 'image/jpeg', 'e03adb6b', '1909298_1474502006103047_649702505_o.jpg', 1441183072, 295131),
(21, 'drive', 1, 1441183073, 'd023675f', '', 'b19cce68ddc0c0bc34772db494234278', 'VQ/shrr+LwbeXcwk7EdrIRygZMvYf25xT1nWHNRx6+JXbnlmAM5LwL/Jh0DMjbjHuU2qlfWhfubgmzZTeE14bQ==', NULL, 'image/jpeg', '7df1e26f', '1909298_1474502006103047_649702505_o.jpg', 1441183073, 295131),
(22, 'faces', 1, 1441183073, 'a41e4855', '', 'b69946e35fff6c33d17636829b6c7fe9', '5BDMvQDEgjI5/dDAc2GwC3E2HxYvg1w3YoPWewAS8uDyrLom6eM2TpPjisUMpwQo4JfnpGaum3iSkVHQkB6L2g==', NULL, 'image/jpeg', '322e17bf', '1500x500.jpg', 1441183073, 101411),
(23, 'drive', 1, 1441183075, '733b3f9e', '', 'f55c976be787b8d4a9afc91e4e1ba63e', '8dabl3NlsZrUPo/jIUJO6Xw3AgjoMVaOsu0F08SciYZnHY3Wkmohp0tpVi5hNIU/ESu2XDGEdZsSN2kKHyaJTQ==', NULL, 'image/jpeg', '999f329e', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 75328),
(24, 'drive', 1, 1441183075, 'a5251c58', '', '0bc94804ea378316e3dbeccaf0b53716', '+vsFEBOG7zTSRNZaAfTUPOlFVtCI/qFizJe5RK6wfPtPPVplf5+usSQjd8bO7CtOW6BqPeK6EX6zJyY/IWMj3g==', NULL, 'image/jpeg', '997478ae', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 28178),
(25, 'drive', 1, 1441183076, '87b1642b', '', 'b69946e35fff6c33d17636829b6c7fe9', '9JkRYCPlGtmTiacjRoawpAksWPKj7fk9SRwLdGcXXTDrpkXIrrBd5pPdCUYM/VRHl3T+xauFlpzW1PMLinW/Tg==', NULL, 'image/jpeg', '25af09f8', '1500x500.jpg', 1441183076, 101411),
(26, 'drive', 1, 1441183076, '1c3f7826', '', '49d9392e6cc8b444d5799abc5d2b3347', '+EYRQR+Cl7lrJTPNcE0LOt+Q1JXZzEm/Z57BTmrtQHHMAALan6g4gH05KQ+tDOZPbu0VtltY8QHvGiACHy5emw==', NULL, 'image/jpeg', 'f47e0c81', '1500x500.jpg', 1441183076, 101411),
(27, 'drive', 1, 1441183077, '8c957bb3', '', '3ba915353c9ec1141db4ade4639d2d09', 'NKdZ/BkR037hdyZatZ7yxBywhbFnl0iKGbQIpVhujTt1Pwl7uvxtsHnAe58IwBABBCj677CM8MLBS4q60nlU+A==', NULL, 'image/jpeg', '47e3399f', '1500x500.jpg', 1441183077, 35991),
(28, 'drive', 1, 1441183077, 'd6d97b41', '', '781d56f8dcb33f904a07c2b0b2b68d5a', 'Vj5fKuQNGGSmDl+8gq8dZI6c94PUCUHoFNlVNRrmLg6sg2sdZnffJormfjH0ZRJCbqfSNw8IiBAkfNj8oKX4Xg==', NULL, 'image/jpeg', '67f5a822', '1500x500.jpg', 1441183077, 11651);

-- --------------------------------------------------------

--
-- Table structure for table `storage_readfile`
--

CREATE TABLE IF NOT EXISTS `storage_readfile` (
  `id` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `hash` varchar(40) NOT NULL,
  `path` text NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(2, 'drive', 1, 1441183315, '12655393', '', '54bf075239ef091cd33eded54a766da6', '2Wgk1gYcMn0bKZzgQG6ZAqbBdJSz0qlvhm6+JHXf2kZFZJUZHCpKkxgi0nPVaGsKQ9AJEA7zSa9DT6xF0ipv7A==', 'audio/x-mpeg-4', '1f4bf6ca', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183773, 48873769),
(3, 'drive', 1, 1441183773, '4ed123f0', '', '3e2b285b4479d3525790bc8592fcb2d5', 'lTxnTNPFVt2zql4jC9rhXW6EOX9ee8IS7zhqKhJvl0Iya+VCJiyUrUoncvZp3K4GcCt2tj7YgSlW8tjpRPKZ1g==', 'audio/x-mpeg-4', '9ca0bfec', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183960, 24005656),
(4, 'drive', 1, 1441183960, '0f82c8ef', '', '91f9ec3a914a6213564c2a0db2564387', 'p9iEYH0oEzQgC2apb8OcmBfx/lpRALKq9jrH+TKrcyBZ5+LhDGhGzVffl6CxSRmKXj6261VSKYsBC3FvDMaCCg==', 'audio/x-mpeg-4', '94560fb9', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441184002, 10340185);

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
  `quote` varchar(100) DEFAULT NULL,
  `avatar.large` text,
  `avatar.medium` text,
  `avatar.small` text,
  `cover.large` text,
  `cover.medium` text,
  `cover.small` text,
  `theme` int(1) DEFAULT NULL,
  `link` text,
  `mode.safe` int(1) DEFAULT '0',
  `messages.translate` int(1) DEFAULT '0',
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
  `feed.order` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `country.description` text,
  `live` varchar(50) NOT NULL,
  `live.description` text,
  `units.temperature` char(1) NOT NULL,
  `units.speed` char(10) NOT NULL,
  `units.pressure` char(5) NOT NULL,
  `units.distance` char(5) NOT NULL,
  `videos.replay` int(1) NOT NULL,
  `music.replay` int(1) NOT NULL,
  `activated` int(1) NOT NULL DEFAULT '0',
  `activated.code` char(10) DEFAULT NULL,
  `activated.time` int(11) DEFAULT NULL,
  `verified` int(1) NOT NULL,
  `dead` int(1) NOT NULL,
  `online` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `feed.order`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'lam hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 0, 0, 1441466917),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'giccos.inc@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1441441512);

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
  `school` varchar(100) DEFAULT NULL,
  `special` varchar(100) DEFAULT NULL,
  `description` text,
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
-- Table structure for table `users_family`
--

CREATE TABLE IF NOT EXISTS `users_family` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1441182000, 1, 'user', 1),
(2, 1441441375, 2, 'user', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_getpassword`
--

CREATE TABLE IF NOT EXISTS `users_getpassword` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `user.label` char(10) NOT NULL,
  `user.value` varchar(100) NOT NULL,
  `status` int(1) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.label`, `user.value`, `status`, `client`) VALUES
(1, 1441182000, 'id', '1', 1, 'ee5504b2'),
(2, 1441190217, 'id', '1', 1, 'ee5504b2'),
(3, 1441348176, 'id', '1', 1, 'ee5504b2'),
(4, 1441367637, 'id', '1', 1, 'ee5504b2'),
(5, 1441439510, 'id', '1', 1, 'ee5504b2'),
(6, 1441441375, 'id', '2', 1, 'ee5504b2'),
(7, 1441453387, 'id', '1', 1, 'ee5504b2');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
  `id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES
(1, 0, 1441181951, 1441181995, 'ee5504b2'),
(2, 1, 1441182000, 1441188582, 'ee5504b2'),
(3, 0, 1441190189, 1441190215, 'ee5504b2'),
(4, 1, 1441190217, 1441190300, 'ee5504b2'),
(5, 1, 1441206087, 1441210601, 'ee5504b2'),
(6, 0, 1441348160, 1441348173, 'ee5504b2'),
(7, 1, 1441348176, 1441351343, 'ee5504b2'),
(8, 1, 1441360505, 1441364441, 'ee5504b2'),
(9, 1, 1441365272, 1441367637, 'ee5504b2'),
(10, 0, 1441367630, 1441367637, 'ee5504b2'),
(11, 1, 1441370160, 1441370536, 'ee5504b2'),
(12, 1, 1441385718, 1441386020, 'ee5504b2'),
(13, 0, 1441434119, 1441434145, 'ee5504b2'),
(14, 0, 1441439482, 1441439507, 'ee5504b2'),
(15, 1, 1441439510, 1441441557, 'ee5504b2'),
(16, 0, 1441440379, 1441446690, 'ee5504b2'),
(17, 2, 1441441375, 1441441512, 'ee5504b2'),
(18, 0, 1441453375, 1441453382, 'ee5504b2'),
(19, 1, 1441453387, 1441453392, 'ee5504b2'),
(20, 1, 1441458509, 1441460379, 'ee5504b2'),
(21, 1, 1441460386, 1441460840, '7c514c94'),
(22, 1, 1441460854, 1441466917, '1a4cb25f');

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
  `thumbnail` varchar(40) DEFAULT NULL,
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
-- Table structure for table `videos_favorite`
--

CREATE TABLE IF NOT EXISTS `videos_favorite` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
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
  `file.vga` varchar(50) NOT NULL,
  `file.qvga` varchar(50) NOT NULL,
  `secret.thumbnail` varchar(40) NOT NULL,
  `secret.audio` varchar(40) NOT NULL,
  `secret.hd` varchar(40) NOT NULL,
  `secret.vga` varchar(40) NOT NULL,
  `secret.qvga` varchar(40) NOT NULL,
  `path.thumbnail` char(10) NOT NULL,
  `path.audio` char(10) NOT NULL,
  `path.hd` char(10) NOT NULL,
  `path.vga` char(10) NOT NULL,
  `path.qvga` char(10) NOT NULL,
  `file.datetime` int(11) NOT NULL,
  `file.size` int(11) NOT NULL,
  `codec_name` char(10) NOT NULL,
  `codec_long_name` varchar(100) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.vga`, `file.qvga`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.vga`, `secret.qvga`, `path.thumbnail`, `path.audio`, `path.hd`, `path.vga`, `path.qvga`, `file.datetime`, `file.size`, `codec_name`, `codec_long_name`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 0, 1441184002, '4f526865', '5f59d1c5f6b97391b1072f5bced89210', 'Ä‘iá»u anh lo láº¯ng', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', '', '', 4, 4, 4, '9453472a838aa76d4afcae64086aebef', '0', '68ee2fce6c94d53b3f2d9f264d6d8d18', 'ef429e84ba74a7c5771b1f2acb8dddf1', 'feadfb52ee08ab062e7c0dbdec789ca4', '0', '0', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '1f4bf6ca', '9ca0bfec', '94560fb9', 0, 57882648, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

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
(1, 'user', 1, '65926ca1', '1338470cf917afeaa1e8d80353b33689', 1441183315, 'khÃ¡nh phÆ°Æ¡ng', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos_pointtag`
--

CREATE TABLE IF NOT EXISTS `videos_pointtag` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` float(8,2) NOT NULL,
  `length` float(8,2) NOT NULL,
  `sticker` varchar(40) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_pointtag`
--

INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES
(1, 1441386003, 1, 'user', 1, 17.43, 5.00, '', 'comment in videos');

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
-- Indexes for table `faces_id`
--
ALTER TABLE `faces_id`
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
-- Indexes for table `languages_list`
--
ALTER TABLE `languages_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages_values`
--
ALTER TABLE `languages_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_cited`
--
ALTER TABLE `library_cited`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_voice`
--
ALTER TABLE `library_voice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library_words`
--
ALTER TABLE `library_words`
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
-- Indexes for table `mailer_id`
--
ALTER TABLE `mailer_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mailer_logs`
--
ALTER TABLE `mailer_logs`
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
-- Indexes for table `messages_hide`
--
ALTER TABLE `messages_hide`
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
-- Indexes for table `pages_block`
--
ALTER TABLE `pages_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages_follow`
--
ALTER TABLE `pages_follow`
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
-- Indexes for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_comment`
--
ALTER TABLE `sites_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_favorite`
--
ALTER TABLE `sites_favorite`
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
-- Indexes for table `sites_rate`
--
ALTER TABLE `sites_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sites_scan`
--
ALTER TABLE `sites_scan`
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
-- Indexes for table `status_actions`
--
ALTER TABLE `status_actions`
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
-- Indexes for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
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
-- Indexes for table `users_family`
--
ALTER TABLE `users_family`
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
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
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
-- Indexes for table `videos_favorite`
--
ALTER TABLE `videos_favorite`
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
-- Indexes for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cited`
--
ALTER TABLE `cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faces_id`
--
ALTER TABLE `faces_id`
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
-- AUTO_INCREMENT for table `languages_list`
--
ALTER TABLE `languages_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `languages_values`
--
ALTER TABLE `languages_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=846;
--
-- AUTO_INCREMENT for table `library_cited`
--
ALTER TABLE `library_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_voice`
--
ALTER TABLE `library_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=100;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mailer_id`
--
ALTER TABLE `mailer_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mailer_logs`
--
ALTER TABLE `mailer_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=464;
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
-- AUTO_INCREMENT for table `messages_hide`
--
ALTER TABLE `messages_hide`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_block`
--
ALTER TABLE `pages_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages_follow`
--
ALTER TABLE `pages_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parameter`
--
ALTER TABLE `parameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=255;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
-- AUTO_INCREMENT for table `sites_certificate`
--
ALTER TABLE `sites_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_comment`
--
ALTER TABLE `sites_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_favorite`
--
ALTER TABLE `sites_favorite`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sites_rate`
--
ALTER TABLE `sites_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_scan`
--
ALTER TABLE `sites_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `status_actions`
--
ALTER TABLE `status_actions`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `storage_audio`
--
ALTER TABLE `storage_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `storage_image`
--
ALTER TABLE `storage_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `storage_readfile`
--
ALTER TABLE `storage_readfile`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
-- AUTO_INCREMENT for table `users_family`
--
ALTER TABLE `users_family`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_follow`
--
ALTER TABLE `users_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users_getpassword`
--
ALTER TABLE `users_getpassword`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
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
-- AUTO_INCREMENT for table `videos_favorite`
--
ALTER TABLE `videos_favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos_info`
--
ALTER TABLE `videos_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_playlist`
--
ALTER TABLE `videos_playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos_pointtag`
--
ALTER TABLE `videos_pointtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
