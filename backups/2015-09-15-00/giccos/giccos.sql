-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2015 at 05:02 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=869 DEFAULT CHARSET=latin1;

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
(21, 'en', 'write_a_comment', 'write a comment', 'false'),
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
(319, 'en', 'type_messages', 'type messages', 'false'),
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
(342, 'en', 'type_a_messages', 'type a messages', 'false'),
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
(410, 'en', 'wall_desc_photos', 'Gallery of _____. The photos updated by _____.', 'false'),
(411, 'en', 'wall_desc_friends', 'friends of _____.', 'false'),
(412, 'en', 'wall_desc_about', 'about of _____.', 'false'),
(413, 'en', 'wall_desc_music', 'Music of _____. The music updated by _____.', 'false'),
(414, 'en', 'wall_desc_videos', 'Videos of _____. The videos updated by _____.', 'false'),
(415, 'en', 'wall_desc_places', 'Places visited by _____. The places checkin by _____.', 'false'),
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
(845, 'en', 'updated_at', 'updated at', 'false'),
(846, 'en', 'sunrise_at', 'sunrise at', 'false'),
(847, 'en', 'sunset_at', 'sunset at', 'false'),
(848, 'en', 'following', 'following', 'false'),
(849, 'en', 'updated', 'updated', 'false'),
(850, 'en', 'tomorrow', 'tomorrow', 'false'),
(851, 'eb', 'days_left', 'days left', 'false'),
(852, 'eb', 'weeks_left', 'weeks left', 'false'),
(853, 'en', 'months_left', 'months left', 'false'),
(854, 'en', 'years_left', 'years left', 'false'),
(855, 'en', 'minutes_left', 'minutes left', 'false'),
(856, 'en', 'hours_left', 'hours left', 'false'),
(857, 'en', 'latitude', 'latitude', 'false'),
(858, 'en', 'longitude', 'longitude', 'false'),
(859, 'en', 'upload_at', 'upload at', 'false'),
(860, 'en', 'times_recorded', 'times recorded', 'false'),
(861, 'en', 'loops', 'loops', 'false'),
(862, 'en', 'player_resized_maximize', 'player was resized, maximize', 'false'),
(863, 'en', 'player_resized_minimize', 'player was resized, minimize', 'false'),
(864, 'en', 'player_resized_error', 'player is don''t resize, maybe by error', 'false'),
(865, 'en', 'player_muted', 'player was turn of audio', 'false'),
(866, 'en', 'player_loop_on', 'player was turn on repeats', 'false'),
(867, 'en', 'player_loop_off', 'player was turn off repeats', 'false'),
(868, 'en', 'player_loop_error', 'player is don''t repeats, maybe by error', 'false');

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
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '/+NAxAAAAAAAAAAAAEluZm8AAAAPAAAAEAAADd8AEBAQEBAQICAgICAgMDAwMDAwQEBAQEBAUFBQUFBQUGBgYGBgYHBwcHBwcICAgICAgJCQkJCQkJCgoKCgoKCwsLCwsLDAwMDAwMDQ0NDQ0NDQ4ODg4ODg8PDw8PDw////////AAAAOkxBTUUzLjk3IAE3AAAAAAAAAAAUICQF8yIAACAAAA3f7p4nWgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAP/jQMQAJIOyJDVMQAAIBVMYOQnZ+/mksAAKFDb7BILCcCAURNvwGB5CAoCynsgGgeKDQPE34RD3vRE3FEl7IDgUGg0DwyX0IR70Te4Fz34RKkUT+EStERPhBc+4RPR3/3tBc+4Sv3f9ERH9OXsgG4vaJu8C59x73Aufxy7w73//f+72QLn2lSWfAue//uif/o96bufAdi44aD48/zkuHyg2JBGJDIY1Y7Hq9XrFzrHjSpPl4cc1tY+89DobHGS2DM6HwR4MMxFFImgyCh5D9CD/40LEMTdbut5fmJICowDQi5cT1SUHAVjEi5FzAiRBDPSyoISEyMqMsJwqvs3iAAhccgXweoWRPaCDettqhmh2EVGmMwTCZOIO7WTTq1+uSgaoJIvlwcsNXjJgFIOAPkC6swZO1c0QLn77XUFv4xQ1YXSAD8OYJQHe5oUxmxlAbc6C0DjLVUmg1v9fioizA+YPoLLIeKEEACICFx0CVCwj2JzFfDlw1QQEZOifsh0FrTeayrzJNh5w/QoHwHdfs1iUK0qOIqyIAY7SvEnQy6VxVP/jQsQXKyPyvBfYkAEltKcl6kv2puC1xFYFUpxlgi4Bfnh0E2RRRdIqVzRA2IgdMTAZQ0Ni2M6PReIoLWPk6Vy6LjN0ETLWb2mDKZTXVXbSXatJVfUk1V6qdTd0HV/rQ3W6aals6JuZqda0jxfOqYzdNA67td0LUXazoIVppopvobqTXUrRNVvsy3QSrWpJS3RXdamdfso0SUgz3sg2rscaPooB6PtwkPHsKKVpvEa8RhcqHp5dKKIIUlcYfgxgnPia5zNrBSKsgyIbzo8sw96T/+NCxC4wStawBMjTiRW04YEmC1afMmwdB+p++0urT22VulEoomgWxWlCFM0TGdU7gOjEeSiHbva88MlFiUgAO+E7FP4fTLhPNLd5DrEUIzNNuC9SmnLV1jCBZxIIHlC504HyagshBsZFJsAAeBINgsOBloxutOfN0/T19lNTI1NhFHDcBySGjLkU18Z9DOoGQNqpoW5YsGdpeVeise4/tNUFxEqXflFnJrhIC4EmopEIR15ULQmV0qz9P8+x+FujBqAZwK4nb5GsRRUiusUhbaf/40LEMCvkDtAeek0LsZMrt2ftAgOhWCZIGfrp6zGRXhIMzhl8llUcH6iKiyIL+UFd17n+b/G/Lf22N63+e/nsgvDGPRM06i8JFI8J61DxCajTW1Km9a/nKuVVFarW1X8W/a37/7SVJA2G4NOfhqaB8uCLVh7aXJzlujzjgFaWhTyfjYkRq/vy5xJuehUGAAo0LcQB/LiwgR/Pot4LGIzuBAJgLBiSD5ligK1DIv0EmiMUEGgPc5oT2hNhYiYAoC7kh0aVYU4Ecou11YaMNYZTGv/jQsREMsvuoBbKR3SLLKZG3JDxTNsadqh0Boopiz1HK4gTCkKmYHT2/5CRqrl5TqeJfz/jdtt9RXpwyP///lu1/6uKWxutZXcmXYkeLkqQ0ekeOktB4eXMNldGAKm2gVRjAJSvJZBbbViRhbqpMbdUobOt853886qpGyZUNj2vDbpA/Yrqu3vkdfBGYsKESUSbV/SqCoBuSO6qkWTdqkII5dDYBCWhCyqSHKS0RF+rlGUXBX63hiqQAyxdaglGkc2z5xp7UEhhCVniC14Sl0si/+NCxDwmqm6gFssHCYCBSTSsPhUVnS4ya+0HpFMerSBP1CXQiVcS5tC2rGf+ZtO6nCpVUaLSLZvXYMdUvOqJLhUKsYVVDXfb/+shgKecEMHZi/E//LisRD05p7jfJqh5zLtizAfEEebNlvuVLcjcle07As4woDO6wKfQw1UNpRZV4RlMSQ97gg4xBe5mU+zWVkQLY4fHLF7iRBgcGSEYj1N0opWQj3HqMGDBsjojsjOuklGdndxh69mTkXG8fc2MR5HMw8xCvUzrudmldTKZxhb/40LEZSJUBsQfTCgDa8jIyz0OZVTPupnTrZGO+it6WRkQ67Eh0xDuhA9DyUIxRVz51QAgwG5G6r27LWRkeWJBYcatkag56IjSMaZBQkStdSjOsADS3BHEYeZ0Qp9lwJuhDcyq5StuL20kUUaSwXdsU8d4z4lizVb4E0We08W1vitK71SsaFj09IzzUbwd4rPnW5YVM2nn3C1BhWtd7CtG3veK0+NT3tX1iTbhQoclJZpm7eczZixPApG1NfVX17wcbiwou4byFLrFbWru2YufCv/jQsSfNTv+nF+YeADbz7V+LUpjUSmKTf5i2hwa0jxcUxL6xrT6iMbkywrX3uFfVq6jUrmV5TdJt01aSm6SFDJjMdQABEyKMuyRyOSXX/f3f8MA6DQMivOBPulx6j6Q1Oijp6nKrllcwa03vcFrhQFYhiEHXGjR5IURsaXOLpKsSstrWNZ7+PNBeQNnQ4VdNec5vqvj4kV1Ii2ys7zWYmNZ///8PzKyJt5hbMNLR4sJSI0t6/8fWNa9c+6+ZbUaDKfLMsHSzQMI6hzxkeRklaNS/+NCxI49HBqSX494AMpqIz4+IVMPr7fQ6N0y9BW52hoU5bFY3q5DtHOtsSkcU66W2YviiXzrNNN4OPVq1tD+M0pNq1c2vrDa/etrFuMzqNmX0nHiPZE4tPnBCFyp1WpVOWN+i4JqsCRVZK3M4EusQf77snUAfqnLv9/wsRNkImZWixFbYyxE/E4S2vCrOtkCcmzIMoRxAvyOhOnT/JrMnI3INuQdz6ZP68wiGSen6K6Eq5GI78ituGLqVC4ab/NPv/b9yP/Ir8J3K2ITOR406ZT/40LEXR6UFr2fyRgAOKXNHJPa/mXnE/N5/NQ7/vW4VZ83/ziNZS/zzxyVATUvaS7bbcJ2Okc42zkscluOLNueyXh+KDpBJVVZlhxbMKxGJCR/X/FLYEcZswIaDajym507cZHKy0+3MHdYTgOtxJNqVtKN/8LTOGhR5wlbTuaB/noSXWF5pvU1Jb780Lfa1k+UKvuDekeklKdNhBZVOGiEjorizBlqAoD7oM2qICccksVjklttu12m02BqO5+kNjLR0iEuIxoVNPHj5gO4XNLjpv/jQsSmIAvWsj9IGAGo/AkXA1UVw6ZXwMxLTMdVS262jLsrYIG1HIOiOXzY9rny0ZOqF6h9CxavWlX0n4dGWWex1qr1EA79owKKQqtoKANol0J1GVZlqWIGXIDs9iXGMxGh+rKxXXE8/aJZkunDk9gZW8zXKtfMH2vv810uOnGniNa0ZrTdLi49rSAyxcum1q1xnmq5+tTs1ah6bQ4/b8ySSYlqJtBaP5xQhqjhcnjJEPZMzMzOLse+ZrrtaggABZQLt+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

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
(9, 1441712484, 'user', 1, 'favorite', 'status', '4', '', ''),
(10, 1441349862, 'user', 1, 'unfavorite', 'status', '4', '', ''),
(11, 1441880448, 'user', 1, 'follow', 'status', '5', '', ''),
(12, 1441477168, 'user', 1, 'add', '', '', 'status', '5'),
(13, 1441540055, 'user', 2, 'favorite', 'status', '4', '', ''),
(18, 1441540054, 'user', 2, 'unfavorite', 'status', '4', '', ''),
(19, 1441711567, 'user', 2, 'follow', 'status', '6', '', ''),
(20, 1441711567, 'user', 2, 'add', '', '', 'status', '6'),
(21, 1441712383, 'user', 1, 'favorite', 'status', '6', '', ''),
(22, 1441712385, 'user', 1, 'unfavorite', 'status', '6', '', ''),
(23, 1441874857, 'user', 1, 'favorite', 'status', '5', '', ''),
(24, 1441712672, 'user', 1, 'favorite', 'status', '3', '', ''),
(26, 1441712926, 'user', 1, 'favorite', 'status', '2', '', ''),
(27, 1441796193, 'user', 2, 'add', '', '', 'status', '7'),
(28, 1441796193, 'user', 2, 'follow', 'status', '7', '', ''),
(29, 1441894929, 'user', 1, 'favorite', 'status', '7', '', ''),
(30, 1441894989, 'user', 1, 'unfavorite', 'status', '7', '', ''),
(31, 1441874863, 'user', 1, 'unfavorite', 'status', '5', '', ''),
(32, 1441880450, 'user', 1, 'unfollow', 'status', '5', '', ''),
(33, 1441896405, 'user', 1, 'add', '', '', 'status', '8'),
(34, 1441896405, 'user', 1, 'follow', 'status', '8', '', ''),
(35, 1441896604, 'user', 1, 'add', '', '', 'status', '9'),
(36, 1441896604, 'user', 1, 'follow', 'status', '9', '', ''),
(37, 1441978261, 'user', 1, 'add', '', '', 'status', '10'),
(38, 1441978261, 'user', 1, 'follow', 'status', '10', '', ''),
(39, 1442061262, 'user', 2, 'add', '', '', 'status', '11'),
(40, 1442061262, 'user', 2, 'follow', 'status', '11', '', ''),
(41, 1442062521, 'user', 1, 'add', '', '', 'status', '12'),
(42, 1442062521, 'user', 1, 'follow', 'status', '12', '', ''),
(43, 1442062607, 'user', 1, 'add', '', '', 'status', '13'),
(44, 1442062607, 'user', 1, 'follow', 'status', '13', '', ''),
(45, 1442064182, 'user', 1, 'add', '', '', 'status', '14'),
(46, 1442064182, 'user', 1, 'follow', 'status', '14', '', ''),
(47, 1442065236, 'user', 1, 'add', '', '', 'status', '15'),
(48, 1442065236, 'user', 1, 'follow', 'status', '15', '', ''),
(49, 1442065353, 'user', 1, 'add', '', '', 'status', '16'),
(50, 1442065353, 'user', 1, 'follow', 'status', '16', '', ''),
(51, 1442130463, 'user', 1, 'add', '', '', 'status', '17'),
(52, 1442130463, 'user', 1, 'follow', 'status', '17', '', ''),
(53, 1442130536, 'user', 1, 'add', '', '', 'status', '18'),
(54, 1442130536, 'user', 1, 'follow', 'status', '18', '', ''),
(55, 1442315066, 'user', 1, 'add', '', '', 'status', '19'),
(56, 1442315066, 'user', 1, 'follow', 'status', '19', '', '');

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
(6, 1441460850, 1442297684, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mailer_logs`
--

INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(7, 1441125666, 2, 'ffcbc75f', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(8, 1441126202, 2, '0d92d0df', 'ZWtnpX6arQnTeyD6qJlRZa8LlU4dRpTIqyP3U3KDUC/sl+h1Gv7coyUxD60/9sih87z28c6xvXlpuQJcfvkqWQz5oMe5U7UGOHSVO1rJK4CEzE8e83Gen6ZcczFXbzv30+ArFrBOzCRmtkxuljIoaamd4rq9QY2oUmLk0EGLRFfEyeqAw5YHwXcujL0scbWue/IXuFDmY4ISDlaUKgH34fCNZemMfkR8nCRtQL6jHMhvgeYZ8fZ36+LKLsXuoPDXxzG3q93x38xeIVfx6wefOiO/rlIa3VSopJC30a22mmH7GACcbCO3O1FFklwpGEqtOo9UR/2U7O0kcjDOFIZLjBurp0gyy6yAIgdVpD8mswVwDR9zoXLZwJcI60fQed/9TsBLDYzVTCI78/Kl4iFfQ4ep/9Yd60LTE8YUOZ9a/SuTbDo4GZ+ARd8GVverlisM0g/8BROS4TU4KEyM9D1V3SSysPJVTzDomVbm2PQVjnK6gH6EWgZmHwUwnR+tO7ITN6ZcOf4n262FekcsZSuWpNMZEA50a5LwU7OpNmS0tRJVtKKpxzd1EBCkLN59Ht6zZ26ysHlmos/KnVDU9AzjL9LdGkjPHzWzk2BclNCgE58CsFG4rYWjvKqp9n1JV2SiH+PZSqEi11r5BFCFasn/P7a/i0O0s3hxDFaIRxeDW20rw8sPN/2ST0y5lPWRYbsDTislwkIVxkrZqiEcjvCZ9FBPhRlyd4TdYmUppIIyuXACWKmcBnY3ES0IPReYAK8Rt7a+dw/nVyvRyCIefWTEv60kBWeQqmwc2+N+tcYAvQbZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8xaMATI9fBH1bkRCJmhmVMn2DbveTszqnWSz/lV8533X/YrGN8cpIFWSECjWNKQV3L3/SvEeSEV/xgL0jAOja66SnCaLKTJiI+y62VRZE6Pn3FfWUI4LK7sWGhWwYU5eZEIamDaS6wEuEijs+6l8cvEuzSES9LZh4h2/vdrGyZW9TzeCEp4zIB9Cg8ljc89qCIxTDumUSDqPlb0iM9p1/Q/cZAMXC099bUl7KChavPrdrDZadPUSTNyLdYaq1rsaFjWe3udnYWgUX/903amdY4buukFG7MSzcbILxqJKDayb4AM0y88dOnCXycB+oTS40r/rrjv8sSERLjkjHlNIYEOLZA4RWpUhDdvgoMRpAgfmXeBJGC+s/oSq4ZmvMa9GQrxNK+OFoZ30iXKqeYXkvT66XB/u9FATPjdcNK+oQ1f3eJh50Mw7Z0EBjKz/KrYn/gyyoIj2m/lwoMAhwaJo3gOvCpA2HwVe/Uj6Eywnj46uW61aqARkrAf1PJfV7bGqeniE/8chADwVFIaucuMXsUa10/oGXJKMXdQ7TwKx7CUmLiik9Hb/PjpmDPxAG729MXFiAiT2LeS5MtmLadw7323a5FD4j4igOlRF8JxHficJPw5eK9vvKCeHY2+snKNAN4LVes5gAnbykUijA6Vp+KY025GLul+p1R1eY5vpvXTd2fMl16UYDT8A/05ZOYZtN/WqYbbF8mngoJ3ZoLlEwRfZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio80Y6RNMCAMg7TGVwP5XLSyXk+umRRmJX15QR/pp65/r19flS3eIzVw8fQjT0yw4fo60+wEkZZrjVXPLuNUZeI2TVgkb2u8EkuoLOTmSav+62Jni7BzmRRf4nRfT4jEhrJDUS1lGG7buSG+0bstC9dXj1sFpakF/JraxmFjPBN+rm2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPNg8NO3o+NkikYuS05r5/KYrxMQHVFdtv6lv8FnBaj15chrga3GbaZe0jr+6Z/+IE56G/Q8U3qMo9S8bSnRygHu257BliP9KiBF8909ZogJly9D9nHNfDk3zCDTy1l7kuDDV+4cAUr9rM7tsLnb/eNVFf8iL18lRdwWkObl+JHPwiNmhp1THg53e8wCN6Qts6tsRpIE6toj3VBXNF5jon0GIwSlafuOF9v0fPXrEKku8Wv2Il/iW/38OpVrWjioho3ZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio80PSJB61S9G1TqrTTArkkB19uDVTAmPwQ4ujBWD67+xBFhq+JAVnWAysFkz0Z+C3r9QiDnbunyWf8KZ+oWHFFW+MenA4ld3IgbiubjE7TK9vOHQXILw6WToRD4ax+W4incC5L4HtqpRb2IN3gcg+hwIjzn7TaDsha8jN3oYO+8ywa0l9+PD90iihCe3bZpaK6lswQUE5VvbJUaRiuC9LodxaQ7IbAco3iOjSL80QoAFZ59Jx6NelMNXT3SekBCca9NSK/gFWqREQCxrswrNlLoC5lxx32EJJ0gBe/+uZBuBL2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPPVaadjIvmJF9Ud0l9vv+GJ4NwJ6eiDhUsRZx7x9hBkfLnVWG+2G/YWGhVvJOO29UHpNZxctBDp+Q8x8INnK09uQ4uZYuzm0TLbhKCfW05D7pIMcjpG2oIUv4C60RR0J8+WwlyH87hObAba0ehMQd9fFFzCQNT/OOLI1Y43i0pj2NkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzPMqij7Qf64dbZFMW8p3tLUZBCeuSenXRUVzu5qMn6z4E3+5u292dPtv+p8w0vRvp1BdGoGlz1YGZYU2UF1Opu9kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz2Zr5IobUHyhLiI+Mecm70tJNeRWmJg8tVwhZLRBN5iXZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8+oRpXuIaIvoOoVLCYIvRPjj7pMwxple/E74gNPysKNW2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPPHt0USP7F9jh/N5QwBbYw9tTuUHd0uNaIh6aZi0MJiZuCQnqO7lg2js7fMIW+/ze0NuEyD89iMwjwnnkc0g/gp1zd2thZx5JasKi2tHs3/4H5PyFbTmxUrnUdaOgcKTlXiJ5oEVrR6g2DyvxX38MlSL2olkW7IbcWQXU/eKUTjgp5GZM+dzi4yqnAJelUaRf5zyDvp+WA7iT5SrfNQUy2j2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPM5Jh6aYHGHpQZRozzteIvadYmvEjGWxkUWkQbqsCBp7eqYDdDsoaxeY5QxVSwWe9GoxdBAA71vFnsJlYxKgxaz1ndWuECWMHdLjj2j3cJeVrWOUsoTOgqQgTNcNS+a5irZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8yOunY/iAKyQFxp3DsPMi6iZOELqp7c1IGTfX+o9mgJmgZm73FxM4fFUthlbXddHtLF3lBvD0DthL0TMDBDEoXHZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio88mWmjgQSXTkheVCs+Y2WMHl1YUO1hVyFcLOZfGRe5WN5nEe/6D5mO70DFBjz9ck3A/DDX4E3a0mH2Ump6R1GOSTbDo4GZ+ARd8GVverlisM0g/8BROS4TU4KEyM9D1V3eCmiF/SWrWs21lfK3mG+RPUUO5RwedLW8IbcR2IE9KHD28+pY0IWqskCMLSiQXqbqFXjIFSe/EsPg7HiDAOunkMcFbUSZl1MxA091If6fx54gmo0uzsMKwAaTgDHV8Ik/2KxjfHKSBVkhAo1jSkFdy9/0rxHkhFf8YC9IwDo2uuQ4uZYuzm0TLbhKCfW05D7pIMcjpG2oIUv4C60RR0J89F3ShCSbQiTVqFbw3QEBn6c++++JAO58O4OizHt3qjOKwH1UUtVNmIIi1Vb9Ivq3qkyj4RuiyW82aXCMAKdmsdkAYQax3ArtVh9xWSqIVbd/9eHmHtk7U1qhK/H3WITbo2FxftDoY8ErUCHYuSuwvQnuMMJdYikA/3R+WmNO+cT4+WDGEu34Wb416xJbwnxnYesCwGHsxCIymcAmoiaYI+OdUIJXP/8mv1CzkQnZbrMy4OLcGTjv0aVbRWzAf98bwRPSPa+pcRHjNAiq/UCAyX1gzbsOtGIT1oZcknCHkyqmSJinLlaR4rYiPlferC9ZQMm68BuVDBZl9LfpSZ9CCtuOA4aVdzsCdPYTq0rehq1AdjTxZUcmMIE9+G5h+q4lWNhaoUDfhlQtEPyUFMUOrPuKioGacXbJXVxt5AMNyIJVCcvJ+81r4y/g+8Ojw4vyFjh1+qgewRPc4BhYqiU1NyU4ykuenPHAinxHa3Rf44+scQeNOhZWuva8FVwV4LGgjUnsgFQbZfZSTqzxhqsyJzggY1hds0VO/5/TYTJzxbir0EwqJEaGMpCWNgE50jOze8eA6Yi6OCAUQf/cJDb5NxUE+FGXJ3hN1iZSmkgjK5cAJYqZwGdjcRLQg9F5gArxE9WOT1RV8xEIr3Uu84/0W2/Ch72y7hEYXCzxDRcCByLNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz8k3Gm9gDagogHBrL9ROvXpSD20TpR6bglSLdvmVWGeJRK2QW2mr6m9oMr2y3pOYqtFcBA03ixgrw1Q2+taWahNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz7jOGeIqKyZFFnawRXPK/F6nzw4lbQNzY3iuR/lBH8CnZMmQwebSrp5GqbaGzvKE3esGfjgd9QiUOyV9RFgKmmo2FqhQN+GVC0Q/JQUxQ6s+4qKgZpxdsldXG3kAw3Igl1HuNfrO3sALV3Zh2q1VTgM6J488N6p7JfdzfUTXbyuzZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio839AleeHDTr9W2cV8M9QtLBMMoirkIbiNsD3XXw5kFdl418FcI4nVe19JpSEh0qkFWkqYUcoC45Vnw08XOBVSPGdZDZs4pfXJh2/HImvxVLLYJrX60gwuUf74Nn3kFMp6o+WDGEu34Wb416xJbwnxnYesCwGHsxCIymcAmoiaYI+z9oeBCFjXX5gh4kvo/ZqfnUE9MfREhXiOF0xE45DIEBfM4sCDYGqRMa8+4d3jwOcJSmwoOfubZJZnazGjhEztdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz9wQOk0xwGVROJ4uwbt9Qv52kZuq9Sry5Qni+tn7JapveInf9X2hv0MDx1Ttx45qdagmgfkaV9I8Nv34RWA86BKZ4g2/EzDA4U90k6GhHEzkN549oqoLAoaYQY+ZsCkgc2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPP3BA6TTHAZVE4ni7Bu31C/naRm6r1KvLlCeL62fslqm4tkDhFalSEN2+CgxGkCB+Zd4EkYL6z+hKrhma8xr0ZC2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPMr+sIrDfqBcIqhh/a75snfYaIRI15T51ekeYBRrHjrSq1DHuX52opFXUcQnUdVwkjp4vSqaacWGmOw0mE7uw6egWK8eFH4vFMKLtWWBQloVo+TKnt4d87bMwOyHvC8uiPZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio85vT4T5BFgCatPUz0ukqikyn7+qDeY3zAb5VYuNVhch8ApfbE9YA+GsDwNvAQK8T/A4HyOHhEqjkjXhIrGBxhSumt0Z0DmqkU38EppHQgArU7MxHJoCOcRNBG2rrDALZG9kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz9oRI4h1acEJukYRE1epk8DL4HEF1HfYIUoCwP4kVwHFQT4UZcneE3WJlKaSCMrlwAlipnAZ2NxEtCD0XmACvEdEc0w5QBzNjCZz7w4N03ZDGkSUioRpTpFe0g8wVWiGyx3L1szxb1E4OHxpwKiFQLw/CteFfPWr78HBQbLMIbF1QT4UZcneE3WJlKaSCMrlwAlipnAZ2NxEtCD0XmACvEdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzTU+Ta0PfCqvQQIl8oPkgGxMT3/SzP9RoCAwbdIF1RsQEqKCSVSo4rNzf5oHWBGu97r+PvhYRU7VhnWlyWgrSemBMOrhvSRCcqEfieQo6dCFKYeH+7sexUvzTIhpwlGYY6eSs+hvPfo8VGShsecAnK/dxbx/fX+uTfrknHWTHYfWzDKkz1O0uEYdGZSXZuyUv6sfTdc49oblr2Lu4CDSkcnJIq5mq5hxnCpMK4RAkcHO2BQmB+pbLddRLrXVotF9wnqsKsYNb8MGTG8bVeQnAj9EY5n+SGaGIhpqSyltUnUaeHdYEYuhk3i3MaOVGh6vSUG7+vnorinOG6zm5TvFokNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz9So9SmNgnT0MomIKtqW2FDpxi/FviofHq3pJayUYPRLZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8yr1/1JygqwnkAy6BoMbOViP4sDZZWsMUCLd7P8BvW6fPBmIdkyclr0Y0oIjiOuPd3QaWeoBvfM/tuFc4SgHoJNQT4UZcneE3WJlKaSCMrlwAlipnAZ2NxEtCD0XmACvEdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzL8A0aVcfOV+VAD70FuhtJS+/wst6gF5ef1rvzT8mgvqNhaoUDfhlQtEPyUFMUOrPuKioGacXbJXVxt5AMNyIJdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzhF/xuAVANkkSiXGZGvCbrrRixSS01HJp2xpakOFMRszMPizxPJ48I4WYYtowgozPR9x0+q/62e56Tmhpgq2xmzezQ1oDgB53XM1gvde1qqOgJYe6ZSwP6MrMSnOFWL9lpwTVP6va8doWDDlEAFyJf4p0ZbG2NywjCuC4cNIvzsdi83MHUcRR/Xm/Vcqwd6MdaJU3x3/unpoxeo/Gt2LVxNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz7uDwFV+8+M02W1nmzEdcS1f0llrqi/Uu2XvRbvsTAeo5Wa/wifHfJDiEee5hz8w39E/+EkAL4aJDOcusdEr+JGoparxUrLbtglHh2gm8URS5bsj5TxEllE0/txrQuxA6CHULxPR30jy1uqKCgx93gujyresFKq/4KhOt5LVf0HcF5b2bTxwvV20cAhObbtiQLePNzpbnaZN8bk2NHRv3DlDfSpBBGHRgWLbOQFi2XJFmNp+gRJLas6eJUi61whJz2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPMDu2IDPUjwCKeWPyyoExXS37VN7ZIujTVYnDVoq48al9kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz3GQDFwtPfW1JeygoWrz63aw2WnT1Ekzci3WGqta7GhY1nt7nZ2FoFF//dN2pnWOG7rpBRuzEs3GyC8aiSg2smzat5033cjpupo+6V7/Tu3oDJb3FPhpFXKOw6BcKPQvAy75DiQfOnmBW0qkn6jPePmEmU0B64kXM8Ww/fFjyahzZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8y6frRZqcEvJv8hcNUgHnSRhSdXJbLTZbEPM24xv68jZu1Mj4kNLtQcCinJyIzFIaTGElFfTK3g7/ETQcA2K/jTGfVc9wpbs0D8616/skk45ONEM6OYxsgTlD/CvYaAygqXYPw2ogwL0rPNNZIGSUjiS3yThwU/TGJlSZSZLi6Qf2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPM58I0tF8/kdrtHUMDnWtBla6ak4uZXVyF77KDHCD9WPRuHudxd27uvA/LPgHJUcD9UBaxqLCSVVTPSGAdEmJZ4WhVY/TMMyJtaRRe2d7nZBaTGrGAikzatCUV6MzfB0fchtdDA/yxlO9Hk9dgz1nPr67nHFq1O2w3DnKG82ZOMzNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz9oRI4h1acEJukYRE1epk8DL4HEF1HfYIUoCwP4kVwHFQT4UZcneE3WJlKaSCMrlwAlipnAZ2NxEtCD0XmACvEdkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz1WmnYyL5iRfVHdJfb7/hieDcCenog4VLEWce8fYQZHzZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio83MPTESVzx4qBjpUlEOKerOuoIpwJ+IR2SXwDBOg74kWBJKDKZCws14GMfmwQw1QAoKmpWAtI/Rs2gkBkwSv6D3ZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8yfsApkI8JH64DXpFHzdMvR6J7alA8d0texidIFO4g4XQEYST17t3B0njtnXoRf14diH71vHkWwLbqgOWpdWNPQM9xSsnhzQDMlf7GoJw7aktMKk8YExg+Fq2QEf0dq8bBX30Kr3+Bp7K5g2fC3QiAyp8pWy1qat8pf6ymCF21Dhxr+eKKiWQA9E6bOGd859+g2LTZdgHS9PH60qYoJilJPZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio89kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzY2W00gFBH8Q3rcG7pEOIDQkUcSfZAf6z3bbp8F8k0OIz2tS8tlc+jcyj1/+0YAtEJMSh20IXk3I2P09ip+5PZ0hYiki+NNorgr8bRyAX6SDmRV8PZxqEnBV1Dl2QB4R7WkA83e0wuXwqQdxPw3yusfdw13mqkw4u0P1xLrZBB81ovDyy1N2zCuKTMornFa96AC6GWJjEr8nXZKr8+eef89kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzDYxXdyOdYFnSElQlVvd1n2y4M3q1QSSYFS/Ox+qixZmC1XrOYAJ28pFIowOlafimNNuRi7pfqdUdXmOb6b103dkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz1jaP5HadNjG9b4ZcxuXSb5EgOa5EOYnTMp/XY8iUepNxhg/7D6NL9bGO4c34Vv5/S5yhbIOGTO5uWZFeGqT6/Rmo6EWxx/FywURJcNVgmKo8fiXUUwSrMFSQbW2P9TvQ2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPNZ7S6XT1vbCf5wvfRRhVhlqP+acJH0Zmd53+8ufmTrnhI1hd3ErXquhmnf26PwH9ZX2d8soLs1PdIqOHqzt3EwC7MfnoKoGrCoW4iQ5Qfw7H+PcNpFWImdYyjWYQESwSeUr2RG6KGTXrdg4QMVf4ZcbU2QSpyqne7iat2G+kKurVBPhRlyd4TdYmUppIIyuXACWKmcBnY3ES0IPReYAK8R2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPMvkhNn1NusPl+CRm43IVZFBbidHnjqKtLzr9CTgBeyYXsGycvfXIo2jW69XU0wB9jeF4gYMEQjp0Ujc27rR+nzHVkCHP/5qiNF9mnMsY/klNxt3vAHKeH/N3qwkfm45Kx1P+JNV89P5EV3weBvdE5SV3C/9k9BMd//osUqn10219kOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz5a+KP9gxHKTD6gc0eeF0rIrGbmgu3cg7+R+jDeMOVKnZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8/TYgl8ngo5fM5t6LgUCt6hnee2C2P5l9Sn4KCl9Dghxj5YMYS7fhZvjXrElvCfGdh6wLAYezEIjKZwCaiJpgj7ZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8z7JR6+w/kWB1DjKC9WhnzgaQfTr4Bb0JunKutSFJz8FvbqjQa3bnNY7geZIyjcpKD7kDrBWwNFJTxtWWWq8ytHZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio893Xy0pZBIvXktNHk7wqoO1JcFDXXwtopwW0Rop921J600sjjtVGrVmmGLw3u0NOYtdGJhpwRyBqMfkJEiGPV8MbFOCcBa1bnpNSA45MTt/DYYeZbYtmAxQXaPg1tCUPKSfEmSziJSqawFMaPzPwjsrdDHW5XlVMg7PDwSTca3bO35VY8poE+cO1cT30LO/M5/TkROSxlP0nJI3IfrzJ6lvZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio80/z+kciBv3EjyVINvWiVUqZAmB7ZqeqOAp5Dzbzg/4wu3/g+nLIPfGuczyff8d7Tue+GqUNWuAbT5UzXQVWyc5PF0rLCGWMYeqhunor440GPyDiZenp8WlcA2bCnqFZF7gL+YLAr7WnevhmotfONJOl4B+0TtvL1ygpkm0CdYRcV7qpTlzlSuoJ/jvEpsfGxMF4e9LjFAnlxuhvT2taHWZjinBdxhHzyw8E9srwmnD9S3KC2FUq2Hk5MikAhr4a/tkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjz5iF3RUyg7xF9Ckapb3XqAPdwxW8bc+QDP1oPoayK8oPZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio84oPmw085NR4HRkB+QIu5Rkh+u8910AkT3GrDBNIvUOs1XfzjWA6a5PwXrwavJUF65TtTAhLAu49R3cavfYZZH2yZN8TbSK3TjFb3n1qFxVCB3ltTSXURIMLDTzD2oLBuSvPlsGbWB0J0Hj9+Vyqv1dwVBfKyEWTquvlves+2/FO2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPNX87ZkADqw8lea9InD7NJgaMlJaKGEwar4cnZYoBnEb68qMFInZb4L7/cxx2wspNJ9TRSdLPqDB2TeEIVwnIB8y5t6CC3wdiwiha1jJdJ36vhAwlls61nEcytN7LJxohid4JFEcWefwjURNR236uP598ks87C+hJb7daJ44qoWL4+WDGEu34Wb416xJbwnxnYesCwGHsxCIymcAmoiaYI+2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPPCnUYPf8iUsXkVcgiD270zGkbivLYLSxM6xu5XfWs8Pxf1GDYyJLvVAb8xrvqGrrHrqZC5nIqpR4Ib/d6Ww/Vc39w/1nyx3KU968ZdhLeYvcffjtTKEK0uIUZnOprj5NQHmR5CGktfx2bfCdkoP0aBCI1mnIPUI9XzTbThP8a05tkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzDYxXdyOdYFnSElQlVvd1n2y4M3q1QSSYFS/Ox+qixZmC1XrOYAJ28pFIowOlafimNNuRi7pfqdUdXmOb6b103dkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzOfCVQGglJ00KbW6prNyI+05fg2QW8RjXU66wD6zWmafZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio827HggZu9w7NxbnuHk2qJZGidx0SU16gfyYkLVfcdfQs2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPPSG9NVnVx0iHASFXjK9JG//qF8E74pOSEnNqVzRf89ssMI3rhrufKoTzJbrAEFWsZ2kEBUSPCqG+U4Noy8rOuqq4PjyVguj+g/K0JxzFip7c2xhRJ+rE2WhK+5UoLyP9igfdG01RumYEBVoStUyGV5G9uILPoaTVBhLnfBFaL7BUftMjP28yhCNtYB58j5kgN/Ypc9p1dCvzt2PfS6VlS3L7ITd4wsKNtFWzlZlvkoB8JDYumb32C72/vdSMmEmU/ZDiEz5YL8C/2VCvT3LeTCj1d9AP72aLBZZ954Njio8yIXu5bsqsqziJ68Paic712pt1cgjkaMaSPNjkHisoyD2Q4hM+WC/Av9lQr09y3kwo9XfQD+9miwWWfeeDY4qPO+AwmXlmMBJSX4PHC07H0AX4pZTYgMU2u0vqkOdZUbZNkOITPlgvwL/ZUK9Pct5MKPV30A/vZosFln3ng2OKjzpXbJAfX++PdeJ1uvUHZIiveNYaCf8ONvMNhrYVBfv9LRHNMOUAczYwmc+8ODdN2QxpElIqEaU6RXtIPMFVohsiVRp1kzim50aS9ikCa9MS3uskWLA9RB/2krulPxntKh58gEaK0J8UfmPSAqqNMbQnRqBGsRYczzU6q5isC2vjlxFUphnTTAZ3fiVf1WaOsO2+V48yN2CJlGeL36X5rhOKVLBxcL8IwdDuUVL1KNw6cBlocDpNsD4udcBVB452fro8b03iq+leC8eKpid+lEPdjGU+h5lz/I4oDz9T42rlWM69aAbGJgW6+2GiaP7RPVlmbuad1VtIAXgQaOinkagO4fBzrKEd7grGZbh3IQD7tTbtUDeIvKnNctaeroA6Ylk2w6OBmfgEXfBlb3q5YrDNIP/AUTkuE1OChMjPQ9Vd26XV8EQ0SwMyRM+bCu7SQn83eG2yctpBzWq2YigBTM4Q++AI1x3iAF8YIFSLH2NYcglxYEOv9x5Tkp/OqIlNSshMoZkhiYhVmDALILsR3BUeZ4jqF+RfyV0yr2QClfioUZuW+njwhsL1rErJrTZCIobd2eOQX9+2IOz7bt2zpGdoxcm+rbd1Hw4/wKi1gjGuVxK3TtQs1p89jQsdB/eHczP4BsZpcOXvEd4IO06kYwh46frSUB5rqjq+42GN80tJqfbmesvjIsypiffqSSB1FSaQf9FERQC6x0Qlqm5ZXKhvtiJmm6bw8cy3A3zKjbjCJzh/OLl9jLD9y7kx6S6PVF'),
(9, 1441175133, 2, 'deaec939', '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'),
(10, 1441179134, 2, '8fe21218', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(11, 1441181995, 2, 'f9c89e40', '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'),
(12, 1441441369, 2, 'ec37d8e1', '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'),
(13, 1441890518, 2, '3006c7bc', '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');
INSERT INTO `mailer_logs` (`id`, `time`, `mailer.id`, `token`, `content`) VALUES
(14, 1441892033, 2, '94152cb1', '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');

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
  `country` varchar(128) DEFAULT NULL,
  `language` char(4) DEFAULT NULL,
  `location` varchar(30) NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `type` varchar(100) NOT NULL,
  `thumbnail` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=511 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maps_places`
--

INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(1, '395602f4', '49db5fa1d07d8a9bbce41cc32597920b', 'GÃ nh HÃ o', 'GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', NULL, NULL, '9.0349627,105.4282431', 9.034963, 105.428246, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.0349627,105.4282431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.0349627,105.4282431&format=gif'),
(2, 'bf0558e2', 'f4ae988d3b006556d391ac8914f69722', 'CÃ´ng Ty Sá»± Kiá»‡n TINH Táº¾ VIá»†T Táº¡i ÄÃ€ Náº´NG', '9 Tráº§n PhÃº, Háº£i ChÃ¢u, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.079825,108.223008', 16.079824, 108.223007, 'establishment', ''),
(3, '07bab7c3', 'e2feb1acfc60992a794081ccb37c14c4', 'CÃ”NG TY LUáº¬T TNHH MTV TINH Táº¾', '467 Äiá»‡n BiÃªn Phá»§, 25, BÃ¬nh Tháº¡nh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.801433,106.713944', 10.801433, 106.713943, 'lawyer', ''),
(4, 'd953e5c3', '6c36375316f79fa2525ab7197bacdda9', 'Cá»­a hÃ ng Tinh Táº¿ (Nice Store)', '174 ThÃ¡i PhiÃªn, 8, 11, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.75969,106.646222', 10.759690, 106.646225, 'store', ''),
(5, '3423e121', '43fb17754d41abc0f19dc0e1de9a0699', 'Tinh Táº¿ Cafe', '436 3 ThÃ¡ng 2, 12, 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.769319,106.669258', 10.769319, 106.669258, 'cafe', ''),
(6, 'bb9d5d51', 'd8527d4b6ce60550e012c7abd020b43f', 'CÃ´ng Ty Sáº£n Xuáº¥t, Cung Cáº¥p QuÃ  Táº·ng Tinh Táº¿ Viá»‡t', '9 Tráº§n PhÃº, Tháº¡ch Thang, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.07982,108.222976', 16.079821, 108.222977, 'home_goods_store', ''),
(7, 'a57c2fff', '70814f3817b64941fb3ab59d0c3564b9', 'Máº¯t kÃ­nh Tinh Táº¿ - Eyewear.vn', '31/4P Ä‘Æ°á»ng ÄÃ´ng LÃ¢n BÃ  Äiá»ƒm, áº¥p ÄÃ´ng LÃ¢n, BÃ  Äiá»ƒm, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.845834,106.6099', 10.845834, 106.609901, 'jewelry_store', ''),
(8, '40c44d59', 'd1c8df2f1db1c1593822d290e9685600', 'TNHH Giáº£i PhÃ¡p Tinh Táº¿', '80 LÃ½ ThÃ¡i Tá»•, phÆ°á»ng 2, 3, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.766025,106.680094', 10.766025, 106.680092, 'home_goods_store', ''),
(9, '3eed4d76', '04df982b8a4025e76a9dae2fb26a3436', 'Thá»i trang tinh táº¿', '257 Nguyá»…n Thá»‹ Tháº­p, TÃ¢n PhÃº, Quáº­n 7, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.738214,106.716969', 10.738214, 106.716972, 'jewelry_store', ''),
(10, 'ba7e4918', '4d79a9325925fcc0356441074fc0c77c', 'Tline Furniture _ Tinh táº¿ vÃ  hiá»‡n Ä‘áº¡i', '302 Nguyá»…n TrÃ£i, Tá»« LiÃªm, HÃ  Ná»™i, Vietnam', NULL, NULL, '20.986873,105.7963', 20.986874, 105.796303, 'home_goods_store', ''),
(11, 'c57e7690', '8f5050fcaa511adc907e3d1b1cecd6c7', 'Tinh Te Technology Co., Ltd', '150A, ÄÆ°á»ng Há»“ BÃ¡ Kiá»‡n, PhÆ°á»ng 15, Quáº­n 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.783,106.666881', 10.783000, 106.666878, 'establishment', ''),
(12, 'bcf121cd', '786ec0d31258b968b3045f3e42f58de0', 'áº¨m Thá»±c Tinh Táº¿', '37 ÄÃ´ng Du, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.775998,106.70448', 10.775998, 106.704483, 'establishment', ''),
(13, '16156852', '5a69737fc8d29f83fbdf521daad9ca04', 'CÃ´ng Ty Tnhh Ã‚m Nháº¡c Tinh Táº¿', '11 Pháº¡m ÄÃ¬nh ToÃ¡i, 6, 3, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.775788,106.685975', 10.775788, 106.685974, 'establishment', ''),
(14, '2203dec7', '1c2f62425a18b005ce54adaa8a9b2da1', 'Cá»­a HÃ ng Äiá»‡n Thoáº¡i Tinh Táº¿', '590 NgÃ´ Gia Tá»±, Tiá»n An, Báº¯c Ninh, Báº¯c Ninh, Vietnam', NULL, NULL, '21.180833,106.062465', 21.180834, 106.062462, 'establishment', ''),
(15, '4cb38257', 'bdae0ed648d66467b2a4b9657877bdea', 'CÃ´ng Ty Tnhh Mtv Tinh Táº¿', '111 Nguyá»…n VÄƒn LuÃ´ng, 10, 6, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.738239,106.63349', 10.738239, 106.633492, 'establishment', ''),
(16, '6ceb45a1', 'a7970201601de9d0bb98575b86ce0d27', 'CÃ´ng Ty Cp CÃ´ng Nghá»‡ Tinh Táº¿', '141 DÆ°Æ¡ng VÄƒn DÆ°Æ¡ng, TÃ¢n QuÃ½, TÃ¢n PhÃº, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.794014,106.616666', 10.794014, 106.616669, 'establishment', ''),
(17, '957e45be', '4e264c9c0b3a23cdb230a8d09c201c10', 'Cafe Tinh Táº¿', '253 LÃª Duáº©n, Trung ÄÃ´, tp. Vinh, Nghá»‡ An, Vietnam', NULL, NULL, '18.661949,105.69229', 18.661949, 105.692291, 'establishment', ''),
(18, '3ff1b1a5', 'b1fc79ac49d6242f0928eea0be732784', 'CÃ´ng Ty Tnhh áº¨m Thá»±c Tinh Táº¿ - Fine Cuisine - Kohthai', '39 LÃª Duáº©n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.781616,106.699834', 10.781616, 106.699837, 'establishment', ''),
(19, 'd500fd34', '2b8cb4f92069e6100690ba6e59786df7', 'CÃ´ng Ty Tnhh Thiáº¿t Káº¿ XÃ¢y Dá»±ng Tinh Táº¿', '34 Nguyá»…n Thá»‹ Minh Khai, Äa Kao, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.784197,106.69938', 10.784197, 106.699379, 'establishment', ''),
(20, '10ea5db9', 'b32227151623b03e95185edc8dd972b2', 'Cá»­a HÃ ng Phá»¥ Kiá»‡n Tinh Táº¿', '239 ÄÃ  Náºµng, Cáº§u Tre, NgÃ´ Quyá»n, Háº£i PhÃ²ng, Vietnam', NULL, NULL, '20.861328,106.702292', 20.861328, 106.702293, 'establishment', ''),
(21, '4dafe018', 'b039783a948b503a0b941683155d3ee8', 'CÃ´ng Ty TNHH Viá»‡t Tinh Táº¿', '22, Thá» XÆ°Æ¡ng, PhÆ°á»ng HÃ ng Trá»‘ng, Quáº­n HoÃ n Kiáº¿m, HÃ  Ná»™i 10000, Vietnam', NULL, NULL, '21.028967,105.848384', 21.028967, 105.848381, 'establishment', ''),
(22, '5c296c00', '49ea6e57345cc96e352f0ec6e23782ed', 'Essen', 'Essen, Germany', NULL, NULL, '51.4556432,7.0115552', 51.455643, 7.011555, 'locality', 'maps/raw/places/staticmap/location=51.4556432,7.0115552&zoom=15&size=480x480&maptype=roadmap&markers=%7C&format=gif'),
(23, 'b46cc8c4', 'f7338370160da407e20d257714206383', 'Asturias', 'Asturias, Spain', NULL, NULL, '43.3619457,-5.8492926', 43.361946, -5.849293, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.3619457,-5.8492926&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.3619457,-5.8492926&format=gif'),
(24, 'c1d763b8', '7a44748cfa2c6e3c4591b3ea9295f6ce', 'O', 'O, Omi, Higashichikuma District, Nagano Prefecture 399-7701, Japan', NULL, NULL, '36.4576497,138.0479558', 36.457649, 138.047958, 'sublocality_level_1', 'maps/raw/places/staticmap/location=36.4576497,138.0479558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.4576497,138.0479558&format=gif'),
(25, '94e25bbf', '03b5ddea5799fb69165257f8ffeedd73', 'O', 'O, 7100 Vejle, Denmark', NULL, NULL, '55.7068696,9.542056', 55.706871, 9.542056, 'route', 'maps/raw/places/staticmap/location=55.7068696,9.542056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.7068696,9.542056&format=gif'),
(26, 'd9734d10', '142d9bbc03a0d7617678822c00850e4b', 'O', 'O, 6000 Kolding, Denmark', NULL, NULL, '55.4902593,9.4777789', 55.490257, 9.477779, 'route', 'maps/raw/places/staticmap/location=55.4902593,9.4777789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.4902593,9.4777789&format=gif'),
(27, 'f25511b2', '76cd8e8f14a9d23a07af542486342bc7', 'O', 'O, Randers, Denmark', NULL, NULL, '56.4615817,10.0318034', 56.461582, 10.031803, 'route', 'maps/raw/places/staticmap/location=56.4615817,10.0318034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4615817,10.0318034&format=gif'),
(28, '177bd21b', 'b82aaf6502b3d48ab27c7b1c630bbbf9', 'ObchodnÃ­', 'ObchodnÃ­, 397 01 PÃ­sek, Czech Republic', NULL, NULL, '49.2970667,14.1601865', 49.297066, 14.160186, 'route', 'maps/raw/places/staticmap/location=49.2970667,14.1601865&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2970667,14.1601865&format=gif'),
(29, '15e334c2', '05875d8237af5f044496c61a9c346549', 'ObchodnÃ­', 'ObchodnÃ­, 392 01 SobÄ›slav, Czech Republic', NULL, NULL, '49.2637957,14.7127854', 49.263798, 14.712785, 'route', 'maps/raw/places/staticmap/location=49.2637957,14.7127854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.2637957,14.7127854&format=gif'),
(30, '59a30437', '4309f63afa3cf99436ef7bcb4cf09487', 'O', 'O, 8800 Viborg, Denmark', NULL, NULL, '56.4528328,9.4064431', 56.452831, 9.406443, 'route', 'maps/raw/places/staticmap/location=56.4528328,9.4064431&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.4528328,9.4064431&format=gif'),
(31, '042355f6', 'e5319c6ce736277fed2a6fceae466882', 'ObchodnÃ­', 'ObchodnÃ­, ÄŒestlice, Czech Republic', NULL, NULL, '50.001966,14.5767052', 50.001965, 14.576705, 'route', 'maps/raw/places/staticmap/location=50.001966,14.5767052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.001966,14.5767052&format=gif'),
(32, '948d8a8d', 'cdb43b33c76294503afb144d80456765', 'Calle O', 'Calle O, Caborca, Son., Mexico', NULL, NULL, '30.7106788,-112.1624862', 30.710678, -112.162483, 'route', 'maps/raw/places/staticmap/location=30.7106788,-112.1624862&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7106788,-112.1624862&format=gif'),
(33, '33beb514', '2511b49b74b33419701828f7937e859b', 'Cantabria', 'Cantabria, Spain', NULL, NULL, '43.1828396,-3.9878427', 43.182838, -3.987843, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=43.1828396,-3.9878427&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.1828396,-3.9878427&format=gif'),
(34, 'dd76115f', '8bbad9db8b9dd73589399bce088e35db', 'South', 'South, West Virginia, USA', NULL, NULL, '38.0328192,-82.5347693', 38.032818, -82.534767, 'route', 'maps/raw/places/staticmap/location=38.0328192,-82.5347693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.0328192,-82.5347693&format=gif'),
(35, '660163c4', '610e3b6801e5cae7a9a9e4ddb3e140ca', 's', 's, 87030 Marzi CS, Italy', NULL, NULL, '39.1768368,16.2952483', 39.176838, 16.295248, 'route', 'maps/raw/places/staticmap/location=39.1768368,16.2952483&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.1768368,16.2952483&format=gif'),
(36, '24a8c07f', 'b0268cf0b1eb0bec1b73a07589b50aae', 'Shrirangapatna Railway Station', 'Shrirangapatna Railway Station, Srirangapatna, Karnataka 571438, India', NULL, NULL, '12.4248105,76.6782188', 12.424810, 76.678223, 'train_station', 'maps/raw/places/staticmap/location=12.4248105,76.6782188&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.4248105,76.6782188&format=gif'),
(37, '34ecd174', '6808054c9a2691fa86e1fd1f61d55dd3', 'South', 'South, Odessa, TX 79763, USA', NULL, NULL, '31.7592035,-102.5379907', 31.759205, -102.537994, 'route', 'maps/raw/places/staticmap/location=31.7592035,-102.5379907&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.7592035,-102.5379907&format=gif'),
(38, '5e803712', '56510b721e03619dfc91d4d024fc95c9', 'Calle S', 'Calle S, Caborca, Son., Mexico', NULL, NULL, '30.7169152,-112.1684613', 30.716915, -112.168465, 'route', 'maps/raw/places/staticmap/location=30.7169152,-112.1684613&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.7169152,-112.1684613&format=gif'),
(39, 'd9ac3fcd', 'a473772d6c1d9b49975fde922e4755cf', 'South', 'Cimarron National Grassland, South, Richfield, KS 67953, USA', NULL, NULL, '37.2288742,-101.8457745', 37.228874, -101.845772, 'route', 'maps/raw/places/staticmap/location=37.2288742,-101.8457745&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.2288742,-101.8457745&format=gif'),
(40, '07f3058a', 'ad5bbb09ce50dc8e4c9b5addb0cc16b5', 'South', 'South, Big Lake, TX 76932, USA', NULL, NULL, '31.1402623,-101.6078662', 31.140263, -101.607864, 'route', 'maps/raw/places/staticmap/location=31.1402623,-101.6078662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.1402623,-101.6078662&format=gif'),
(41, '7d55f190', '226cad256751a3de488aeec709793042', 'S', 'Rua Tenente Gomes Ribeiro, 212 - Vila Clementino - Vila Clementino, SÃ£o Paulo - SP, 04038-040, Brazil', NULL, NULL, '-23.599136,-46.637672', -23.599136, -46.637672, 'point_of_interest', 'maps/raw/places/staticmap/location=-23.599136,-46.637672&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-23.599136,-46.637672&format=gif'),
(42, '79015431', '35701d3ecee9d7c8cc638e83dba4a50f', 'Les Rencontres de la Photographie', '34 Rue du Docteur Fanton, 13200 Arles, France', NULL, NULL, '43.678377,4.625765', 43.678375, 4.625765, 'establishment', 'maps/raw/places/staticmap/location=43.678377,4.625765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.678377,4.625765&format=gif'),
(43, 'dc1b7fad', 'aa8126d24579abfd26d21ea4afaeeb84', 'Council of State', '1 Place du Palais Royal, 75001 Paris, France', NULL, NULL, '48.863189,2.337116', 48.863190, 2.337116, 'establishment', 'maps/raw/places/staticmap/location=48.863189,2.337116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.863189,2.337116&format=gif'),
(44, '3876da7c', 'd9ba2866fcfb8ed2b1ec40d486664c5a', 'The National D-Day Memorial', '3 Overlord Circle, Bedford, VA 24523, United States', NULL, NULL, '37.330489,-79.535929', 37.330490, -79.535927, 'park', 'maps/raw/places/staticmap/location=37.330489,-79.535929&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.330489,-79.535929&format=gif'),
(45, 'a93e0e83', '8a64b6c22b6581efade66010fd9e2ba7', 'Teatro Nacional D. Maria II', 'PraÃ§a Dom Pedro IV, 1100-201 Lisboa, Portugal', NULL, NULL, '38.7148,-9.139787', 38.714802, -9.139787, 'establishment', 'maps/raw/places/staticmap/location=38.7148,-9.139787&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7148,-9.139787&format=gif'),
(46, 'ff8fc0c6', '023a67e9fc4efd964631ce298701cbf7', 'The D Las Vegas', '301 Fremont Street, Las Vegas, NV 89101, United States', NULL, NULL, '36.169278,-115.14291', 36.169277, -115.142906, 'bar', 'maps/raw/places/staticmap/location=36.169278,-115.14291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.169278,-115.14291&format=gif'),
(47, 'c7a84f5a', '3a41a0f07d1e0ef7c6b47ca839f170d5', 'Franklin D. Roosevelt Presidential Library and Museum', '4079 Albany Post Road, Hyde Park, NY 12538, United States', NULL, NULL, '41.768696,-73.934059', 41.768696, -73.934059, 'museum', 'maps/raw/places/staticmap/location=41.768696,-73.934059&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.768696,-73.934059&format=gif'),
(48, '9f6efe54', 'a5846bd18ada5e9bfb282094e716a11d', 'Dwight D. Eisenhower Presidential Library &amp; Museum', '200 South East 4th Street, Abilene, KS 67410, United States', NULL, NULL, '38.911627,-97.21217', 38.911629, -97.212173, 'library', 'maps/raw/places/staticmap/location=38.911627,-97.21217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.911627,-97.21217&format=gif'),
(49, '26eb76b7', 'bf0e807c2d40f3e70d1389f4f5fda45a', 'Utrecht', 'Utrecht, Netherlands', NULL, NULL, '52.119508,5.1943653', 52.119507, 5.194365, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.119508,5.1943653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.119508,5.1943653&format=gif'),
(50, '9070c93c', '0691ba740f1f21afd300ec3a977c4336', 'Bac Lieu', 'Bac Lieu, Vietnam', NULL, NULL, '9.2515555,105.5136472', 9.251556, 105.513649, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.2515555,105.5136472&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2515555,105.5136472&format=gif'),
(51, 'c24ec0d3', '96084bf2f12f54b1c4b0fc4f72497a5b', 'Ca Mau', 'Ca Mau, Vietnam', NULL, NULL, '8.9624099,105.1258955', 8.962410, 105.125893, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=8.9624099,105.1258955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.9624099,105.1258955&format=gif'),
(52, '4daeb052', 'ba8c592b3f3c35fdcc36ce2db1485d8a', 'Cali', 'Cali, Cali, Valle del Cauca, Colombia', NULL, NULL, '3.4516467,-76.5319854', 3.451647, -76.531982, 'locality', 'maps/raw/places/staticmap/location=3.4516467,-76.5319854&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.4516467,-76.5319854&format=gif'),
(53, '1e0a30db', '68aa6ed5392de78753242a062294bb8e', 'Ganh Hao', '3 Tráº§n PhÃº, Ward 5, tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '10.359632,107.060172', 10.359632, 107.060173, 'restaurant', 'maps/raw/places/staticmap/location=10.359632,107.060172&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.359632,107.060172&format=gif'),
(54, '4310ae66', '20ae5cbfe34fbcd653209a9ceb22e96e', 'Ubtt GÃ nh HÃ o', 'Khu Vá»±c 3 GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(55, 'd49b1ffe', 'f49cdd6dde1c216df72487e36f6b94e4', 'Chá»£ GÃ nh HÃ o', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.02584,105.419617', 9.025840, 105.419617, 'establishment', 'maps/raw/places/staticmap/location=9.02584,105.419617&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.02584,105.419617&format=gif'),
(56, 'd51be2bd', '7bdc8ce93be8b66b0e784b46daa5f6ff', 'NHÃ€ HÃ€NG GÃ€NH HÃ€O SÃ€I GÃ’N', '4 Há»“ Huáº¥n Nghiá»‡p, Báº¿n NghÃ©, Q1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.774563,106.705675', 10.774563, 106.705673, 'restaurant', 'maps/raw/places/staticmap/location=10.774563,106.705675&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.774563,106.705675&format=gif'),
(57, '9ee3633c', '2b16d41e3d7d18346adf8adc93aaf15e', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o B', 'Phan Ngá»c Hiá»ƒn, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.031467,105.420068', 9.031467, 105.420067, 'establishment', 'maps/raw/places/staticmap/location=9.031467,105.420068&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.031467,105.420068&format=gif'),
(58, 'e40f1d3c', '00c3dedeceb63dd59fa575f4137c56c1', 'Tráº¡m XÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iii T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(59, 'a3bb8026', 'dfed1d01b21be1e22d97ff649282e522', 'TrÆ°á»ng Thpt GÃ nh HÃ o', 'Ngá»c Äiá»n, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.026709,105.422004', 9.026709, 105.422005, 'establishment', 'maps/raw/places/staticmap/location=9.026709,105.422004&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.026709,105.422004&format=gif'),
(60, '47592f33', '26b9087c36710f10fdc6da7121c3d057', 'CÃ´ng An Thá»‹ Tráº¥n GÃ nh HÃ o', 'GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.027398,105.418743', 9.027398, 105.418739, 'establishment', 'maps/raw/places/staticmap/location=9.027398,105.418743&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.027398,105.418743&format=gif'),
(61, '38dc511b', 'b9821052e4a5f98ed891b6f87ccd64a7', 'BÆ°u Äiá»‡n GÃ nh HÃ o', 'Khu Vá»±c 1 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(62, '88218a99', 'f300900c2c6c1ffa63d0cc922e046101', 'B Q L X D Cáº£ng CÃ¡ GÃ nh HÃ o', 'Khu Vá»±c Iv T T GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(63, 'b52d423b', '6906213962b8814624151ab906f19650', 'cÃ´ng ty TNHH TÃ¢n GÃ nh HÃ o', 'áº¤p 4, GÃ nh HÃ o, Dong Hai, Bac Lieu, Vietnam', NULL, NULL, '9.038364,105.419912', 9.038364, 105.419914, 'store', 'maps/raw/places/staticmap/location=9.038364,105.419912&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.038364,105.419912&format=gif'),
(64, 'ecec0dc4', 'da4a4653692e560fd495d7ee142eeaed', 'TrÆ°á»ng Máº§m Non GÃ nh HÃ o', '1 ThÃ¡ng 3, GÃ nh HÃ o, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.034476,105.423308', 9.034476, 105.423309, 'establishment', 'maps/raw/places/staticmap/location=9.034476,105.423308&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034476,105.423308&format=gif'),
(65, '10fdda36', '1d0a4289f2ef8fab94932afcf43d5b4f', 'TrÆ°á»ng Tiá»ƒu Há»c GÃ nh HÃ o A', 'ÄÆ°á»ng KhÃ´ng TÃªn, GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.028918,105.430523', 9.028918, 105.430527, 'establishment', 'maps/raw/places/staticmap/location=9.028918,105.430523&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.028918,105.430523&format=gif'),
(66, '97142f86', 'c591e62d8f8b6ca733321f8299177546', 'TrÆ°á»ng Thcs GÃ nh HÃ o', 'GÃ nh HÃ o, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.035806,105.435297', 9.035806, 105.435295, 'establishment', 'maps/raw/places/staticmap/location=9.035806,105.435297&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.035806,105.435297&format=gif'),
(67, '8f57c6a9', 'cb55bff0e4459dffaff78ae0ba35f708', 'Tráº¡m Äiá»‡n Lá»±c GÃ nh HÃ o', 'Khu Vá»±c 3 Tt GÃ nh HÃ o Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.034963,105.428243', 9.034963, 105.428246, 'establishment', 'maps/raw/places/staticmap/location=9.034963,105.428243&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.034963,105.428243&format=gif'),
(68, '1ffa437d', 'ab1b84a28d58d8f47cfc20fec28b8991', 'FV Hospital', '6 Nguyá»…n LÆ°Æ¡ng Báº±ng, TÃ¢n PhÃº, 7, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.732592,106.718488', 10.732592, 106.718491, 'hospital', 'maps/raw/places/staticmap/location=10.732592,106.718488&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.732592,106.718488&format=gif'),
(69, '64da46af', 'dcdc76e39c2473e0e59c82271e8af65c', 'FV SA - Griferia de Alta Tecnologia', 'Bernardo de Irigoyen 1053, B1604AFC Florida, Buenos Aires, Argentina', NULL, NULL, '-34.538938,-58.503842', -34.538937, -58.503841, 'establishment', 'maps/raw/places/staticmap/location=-34.538938,-58.503842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.538938,-58.503842&format=gif'),
(70, 'd943725e', '48d01d1da21ee946f05ddfece9379600', 'FV Foods', '1125 Dundas Street East, Mississauga, ON L4Y 2C3, Canada', NULL, NULL, '43.60393,-79.590797', 43.603931, -79.590797, 'bakery', 'maps/raw/places/staticmap/location=43.60393,-79.590797&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.60393,-79.590797&format=gif'),
(71, 'd827ef97', '844d9f90478733e9bef47eb5555f943a', 'FV Ravensburg', 'BrÃ¼hlstraÃŸe 17, 88212 Ravensburg, Germany', NULL, NULL, '47.788131,9.603389', 47.788132, 9.603389, 'establishment', 'maps/raw/places/staticmap/location=47.788131,9.603389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.788131,9.603389&format=gif'),
(72, 'a4daf9ce', '731d10cc18c238dd0c4b669703db1c05', 'Franz Viegener FV', 'Pichincha, Ecuador', NULL, NULL, '-0.351287,-78.463647', -0.351287, -78.463646, 'establishment', 'maps/raw/places/staticmap/location=-0.351287,-78.463647&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.351287,-78.463647&format=gif'),
(73, '589cdf6d', 'a8f0077e53b04b7bf5d1a61453fef1e7', 'FV Immo', '10 Avenue Jehan de Beauce, 28000 Chartres, France', NULL, NULL, '48.447703,1.482693', 48.447704, 1.482693, 'real_estate_agency', 'maps/raw/places/staticmap/location=48.447703,1.482693&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.447703,1.482693&format=gif'),
(74, 'c54f75c3', '2f94aac0a71488ac92a9008b5266fb5b', 'FV S.A.', 'Urquiza 2265, X5001FTK CÃ³rdoba, CÃ³rdoba Province, Argentina', NULL, NULL, '-31.38914,-64.185359', -31.389139, -64.185356, 'establishment', 'maps/raw/places/staticmap/location=-31.38914,-64.185359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-31.38914,-64.185359&format=gif'),
(75, '20b1e770', '5fae3053d5ab8dde1359c5e9a463268f', 'Fv Foods', '549 St Clair Av W, Toronto, ON M6C 1A3, Canada', NULL, NULL, '43.682486,-79.420649', 43.682487, -79.420647, 'bakery', 'maps/raw/places/staticmap/location=43.682486,-79.420649&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.682486,-79.420649&format=gif'),
(76, 'cfaf3b75', '6d560d594fd1d3fafca3e646e89c75e3', 'PhÃ²ng KhÃ¡m Äa Khoa FV SÃ i GÃ²n', '45 VÃµ Thá»‹ SÃ¡u, P. Äa Kao, Q. 1, Tp. Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.790773,106.694874', 10.790773, 106.694878, 'hospital', 'maps/raw/places/staticmap/location=10.790773,106.694874&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.790773,106.694874&format=gif'),
(77, 'bbf9afaa', '33ebb73f19a4f163b9b304672eb6352d', 'fv', 'MaipÃº 235, 5500 Mendoza, Mendoza, Argentina', NULL, NULL, '-32.876583,-68.833015', -32.876583, -68.833015, 'establishment', 'maps/raw/places/staticmap/location=-32.876583,-68.833015&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-32.876583,-68.833015&format=gif'),
(78, '088843f1', 'e83a93efba9db07203045da7d58c2813', 'Merle &amp; Brown PC', '90 Broad Street # 2201, New York, NY 10004, United States', NULL, NULL, '40.703759,-74.01182', 40.703758, -74.011818, 'lawyer', 'maps/raw/places/staticmap/location=40.703759,-74.01182&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703759,-74.01182&format=gif'),
(79, '39d4f1ab', '10c4c354e21409c0b18d5b9a9e09edd4', 'FV Plast, a.s.', 'KozovazskÃ¡ 1049/3, 250 88 ÄŒelÃ¡kovice, Czech Republic', NULL, NULL, '50.157455,14.754981', 50.157455, 14.754981, 'store', 'maps/raw/places/staticmap/location=50.157455,14.754981&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.157455,14.754981&format=gif'),
(80, 'a3f61884', 'f56ed76d0b2513dee460181e3055e38b', '1. FC SaarbrÃ¼cken', 'Berliner Promenade 12, 66111 SaarbrÃ¼cken, Germany', NULL, NULL, '49.23555,6.99275', 49.235550, 6.992750, 'establishment', 'maps/raw/places/staticmap/location=49.23555,6.99275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.23555,6.99275&format=gif'),
(81, '032dd6f9', 'ac13b6fa8531845ea4b16722466d86a8', 'F &amp; V', 'Kondapur, Hyderabad, Andhra Pradesh 500084, India', NULL, NULL, '17.458218,78.364684', 17.458218, 78.364685, 'electronics_store', 'maps/raw/places/staticmap/location=17.458218,78.364684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.458218,78.364684&format=gif'),
(82, '00b38711', '1e91ed330b68bb87f05a867481dae7a8', 'Jugend- und Sozialzentrum Aue e.V.', 'Postplatz 3, 08280 Aue, Germany', NULL, NULL, '50.58743,12.70025', 50.587429, 12.700250, 'establishment', 'maps/raw/places/staticmap/location=50.58743,12.70025&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.58743,12.70025&format=gif'),
(83, '66e4188c', '4176fb90653bc4bba8b1fcd9e285c3bf', 'fv', 'Lindenallee 70B, 20259 Hamburg, Germany', NULL, NULL, '53.56902,9.95911', 53.569019, 9.959110, 'establishment', 'maps/raw/places/staticmap/location=53.56902,9.95911&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.56902,9.95911&format=gif'),
(84, '43252b99', 'fc0de9382c280cbfb01c469f5e223a40', 'BMR Lalonde F V Inc', '25 338 Rte, Les Coteaux, QC J7X 1A2, Canada', NULL, NULL, '45.260426,-74.202035', 45.260426, -74.202034, 'hardware_store', 'maps/raw/places/staticmap/location=45.260426,-74.202035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.260426,-74.202035&format=gif'),
(85, '7d01d2f4', 'd3fd79d532532b99732886fa279c37a4', 'Carpet Hut by F V Woolard', '5719 Arrowhead Drive, Virginia Beach, VA 23462, United States', NULL, NULL, '36.839782,-76.184006', 36.839783, -76.184006, 'home_goods_store', 'maps/raw/places/staticmap/location=36.839782,-76.184006&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.839782,-76.184006&format=gif'),
(86, '03adba18', '3d08adbc16d6fbe21ecefb0603912912', 'Cervantes', 'Calle de Lepanto, 6, 03500 Benidorm, Alicante, Spain', NULL, NULL, '38.538985,-0.120945', 38.538986, -0.120945, 'real_estate_agency', 'maps/raw/places/staticmap/location=38.538985,-0.120945&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.538985,-0.120945&format=gif'),
(87, '2979414f', 'b2131baa60ed252080ae6f5c739d465c', 'GriferÃ­a FV', 'Mariano Acha 1407, C1430DUC CABA, Argentina', NULL, NULL, '-34.579484,-58.472095', -34.579483, -58.472095, 'hardware_store', 'maps/raw/places/staticmap/location=-34.579484,-58.472095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-34.579484,-58.472095&format=gif'),
(88, '90cd22b9', 'c0e6ab18868fbafc9cf3992f84e22dff', 'HCM Australia', '1/56 Clarence Street, Sydney NSW 2000, Australia', NULL, NULL, '-33.866188,151.205077', -33.866188, 151.205078, 'establishment', 'maps/raw/places/staticmap/location=-33.866188,151.205077&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-33.866188,151.205077&format=gif'),
(89, '93f88678', '072418cf8fdce87e623d3078ba790317', 'HCM Contractors Inc', '235038 Wrangler Road, Rocky View County, AB T1X 0K3, Canada', NULL, NULL, '50.997212,-113.893312', 50.997211, -113.893311, 'general_contractor', 'maps/raw/places/staticmap/location=50.997212,-113.893312&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.997212,-113.893312&format=gif'),
(90, '564fece5', 'aeba089aa10fb4428a1d35a418b9cea4', 'HCM Kinzel GmbH', 'Felix-Wankel-StraÃŸe 9/1, 74374 Zaberfeld, Germany', NULL, NULL, '49.06255,8.93288', 49.062550, 8.932880, 'store', 'maps/raw/places/staticmap/location=49.06255,8.93288&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.06255,8.93288&format=gif'),
(91, '06417aaa', 'cee6e78d65cb0365af379c883e5d53f8', 'HCM Computer GmbH', 'Nadorster StraÃŸe 162, 26123 Oldenburg, Germany', NULL, NULL, '53.15786,8.22147', 53.157860, 8.221470, 'establishment', 'maps/raw/places/staticmap/location=53.15786,8.22147&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.15786,8.22147&format=gif'),
(92, 'db22fd5a', 'a246a0f6fbb0ef759513efd4df9a50d2', 'Äáº¡i Há»c Giao ThÃ´ng Váº­n Táº£i TP HCM - CÆ¡ sá»Ÿ 3', '70 TÃ´ KÃ½, TÃ¢n ChÃ¡nh Hiá»‡p, 12, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.865644,106.618221', 10.865644, 106.618217, 'establishment', 'maps/raw/places/staticmap/location=10.865644,106.618221&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.865644,106.618221&format=gif'),
(93, '6dd39e6e', '71c7a2e0084f9403a60b566c916be924', 'Hospital Central de Maracay', 'Avenidas Sucre, Maracay 2102, Venezuela', NULL, NULL, '10.274207,-67.589852', 10.274207, -67.589851, 'hospital', 'maps/raw/places/staticmap/location=10.274207,-67.589852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.274207,-67.589852&format=gif'),
(94, '77461faa', '77ecc9ee85bfa369f6e3c4704edfc908', 'Health Care Management', '460 Briarwood Drive #410, Jackson, MS 39206, United States', NULL, NULL, '32.380911,-90.149715', 32.380913, -90.149712, 'establishment', 'maps/raw/places/staticmap/location=32.380911,-90.149715&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.380911,-90.149715&format=gif'),
(95, '69dc2021', 'a5f57c73dcb0ffa0e1dec05775133f3c', 'HCM', '22 West Road, Baltimore, MD 21204, United States', NULL, NULL, '39.411983,-76.613993', 39.411983, -76.613991, 'establishment', 'maps/raw/places/staticmap/location=39.411983,-76.613993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.411983,-76.613993&format=gif'),
(96, 'd35bce0b', '8c90996b64cb2eeda5c095c183275088', 'ï¼ˆæ ªï¼‰ï¼¨ï¼£ï¼­', 'Japan, ã€’106-0044 Tokyo, Minato, Higashiazabu, 1 Chomeâˆ’28âˆ’13, æ—¥é€šå•†äº‹éº»å¸ƒãƒ“ãƒ« 5F', NULL, NULL, '35.655298,139.743446', 35.655296, 139.743439, 'establishment', 'maps/raw/places/staticmap/location=35.655298,139.743446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.655298,139.743446&format=gif'),
(97, '471a84de', 'cdc7406447d37ab6236d310a17f5e93a', 'Banking University HCM City', '56 HoÃ ng Diá»‡u 2, Linh Chiá»ƒu, Quáº­n Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.857561,106.763582', 10.857561, 106.763580, 'university', 'maps/raw/places/staticmap/location=10.857561,106.763582&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.857561,106.763582&format=gif'),
(98, '2a46d60e', 'c543e27ddafe594cd9a413b4d458e296', 'Ho Chi Minh Museum', '01 Nguyá»…n Táº¥t ThÃ nh, phÆ°á»ng 12, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.768271,106.706804', 10.768271, 106.706802, 'museum', 'maps/raw/places/staticmap/location=10.768271,106.706804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.768271,106.706804&format=gif'),
(99, '8ebacccd', 'ba4ac53aabf30173bcb58d243a0e485a', 'University of Economics Ho Chi Minh City', '59C Nguyá»…n ÄÃ¬nh Chiá»ƒu, 6th Ward, Quáº­n 3, Ho Chi Minh City, Vietnam', NULL, NULL, '10.783215,106.694749', 10.783215, 106.694748, 'university', 'maps/raw/places/staticmap/location=10.783215,106.694749&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.783215,106.694749&format=gif'),
(100, '68e06b5c', '8492b257e3b11ea93141f66528069fd8', 'HCM', '545 Marriott Drive # 600, Nashville, TN 37214, United States', NULL, NULL, '36.149666,-86.689324', 36.149666, -86.689323, 'establishment', 'maps/raw/places/staticmap/location=36.149666,-86.689324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.149666,-86.689324&format=gif'),
(101, '68f87585', '0ce1620118d9a619e65cb703e8b15af5', 'HCM', '668 North 44th Street # 300, Phoenix, AZ 85008, United States', NULL, NULL, '33.455207,-111.989078', 33.455208, -111.989075, 'establishment', 'maps/raw/places/staticmap/location=33.455207,-111.989078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.455207,-111.989078&format=gif'),
(102, '3a85225b', 'acee4b7b7216a3f0b5c5fd0d494df732', 'Maputo Central Hospital', 'Avenida Eduardo Mondlane, Maputo, Mozambique', NULL, NULL, '-25.97018,32.58817', -25.970181, 32.588169, 'hospital', 'maps/raw/places/staticmap/location=-25.97018,32.58817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-25.97018,32.58817&format=gif'),
(103, '31ef9df1', '9852b7cbcd73f8eb492cf70df463a4c2', 'University of Technical Education Ho Chi Minh City', '01 VÃµ VÄƒn NgÃ¢n, Linh Chiá»ƒu, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.84994,106.771688', 10.849940, 106.771690, 'establishment', 'maps/raw/places/staticmap/location=10.84994,106.771688&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.84994,106.771688&format=gif'),
(104, '88ea07a7', '8d99922616c2c8ec4253bf794de9ee63', 'Ho Chi Minh City University of Culture', '51 Quá»‘c HÆ°Æ¡ng, Tháº£o Äiá»n, Quáº­n 2, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.80559,106.73116', 10.805590, 106.731163, 'university', 'maps/raw/places/staticmap/location=10.80559,106.73116&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.80559,106.73116&format=gif'),
(105, 'e29d6430', '7bd4a85bb8cacfac34cd9cd8949c0854', 'HCMC University of Pedagogy', '280 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 4, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh 700000, Vietnam', NULL, NULL, '10.762176,106.682418', 10.762176, 106.682419, 'university', 'maps/raw/places/staticmap/location=10.762176,106.682418&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.762176,106.682418&format=gif'),
(106, '3f282442', '10f69a1b96272a39ab39f67792a3e833', 'Nong Lam University', 'KP6 QL1A, ÄÃ´ng HÃ²a, Thá»§ Äá»©c, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.872103,106.792817', 10.872103, 106.792816, 'university', 'maps/raw/places/staticmap/location=10.872103,106.792817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.872103,106.792817&format=gif'),
(107, 'e29aa18a', '27819131e1b960a37deeafea11e70e46', 'HCM Strategists LLC', '1156 15th Street Northwest #850, Washington, DC 20005, United States', NULL, NULL, '38.905368,-77.034933', 38.905369, -77.034935, 'establishment', 'maps/raw/places/staticmap/location=38.905368,-77.034933&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905368,-77.034933&format=gif'),
(108, '9d269217', 'c26b903cf110700dc5966bf51a620b78', 'Dingcheng', 'Dingcheng, Changde, Hunan, China', NULL, NULL, '29.018593,111.680783', 29.018593, 111.680786, 'sublocality_level_1', 'maps/raw/places/staticmap/location=29.018593,111.680783&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.018593,111.680783&format=gif'),
(109, 'a73090be', '4614700fa7a80c08d3f9d8847ba323c5', 'Trung TÃ¢m Ytáº¿ XÃ£ Äá»‹nh ThÃ nh', 'áº¤p NÃºi Äáº¥t Äá»‹nh ThÃ nh Huyá»‡n Dáº§u Tiáº¿ng, Binh Duong, Vietnam', NULL, NULL, '11.305045,106.464146', 11.305045, 106.464149, 'establishment', 'maps/raw/places/staticmap/location=11.305045,106.464146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.305045,106.464146&format=gif'),
(110, '3a3aff40', 'fab519a4acd5baaf1cef7c67a6f22f16', 'CÃ´ng an xÃ£ Äá»‹nh ThÃ nh', 'TL 943, Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.30676,105.303103', 10.306760, 105.303101, 'establishment', 'maps/raw/places/staticmap/location=10.30676,105.303103&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30676,105.303103&format=gif'),
(111, '21820bcc', '2a32d2644936c95633dd112cf16de2ce', 'Tráº¡m y táº¿ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.329509,105.295603', 10.329509, 105.295601, 'hospital', 'maps/raw/places/staticmap/location=10.329509,105.295603&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.329509,105.295603&format=gif'),
(112, 'ee1ea59d', 'd85c3055fcbdb6c0225f06937c2125da', 'Tráº¡i Giam Äá»‹nh ThÃ nh', 'Ä‘á»‹nh thÃ nh Huyá»‡n Thoáº¡i SÆ¡n, An Giang, Vietnam', NULL, NULL, '10.305778,105.301411', 10.305778, 105.301414, 'establishment', 'maps/raw/places/staticmap/location=10.305778,105.301411&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.305778,105.301411&format=gif'),
(113, 'fe08c446', '2c428a04a7f180eb18e3a76d447e9679', 'TrÆ°á»ng Thcs Äá»‹nh ThÃ nh', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.118412,105.30021', 9.118412, 105.300209, 'establishment', 'maps/raw/places/staticmap/location=9.118412,105.30021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.118412,105.30021&format=gif'),
(114, '5aa63eca', '37c6b0174eee1442a08506362ef2ea12', 'TrÆ°á»ng Thpt Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.120604,105.28423', 9.120604, 105.284233, 'establishment', 'maps/raw/places/staticmap/location=9.120604,105.28423&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.120604,105.28423&format=gif'),
(115, '6ff3c2c2', 'a78f9ececb2244a0e2779e064949815d', 'Tráº¡i Sáº£n Xuáº¥t LÃºa Giá»‘ng Äá»‹nh ThÃ nh', 'áº¤p HÃ²a TÃ¢n, XÃ£ Äá»‹nh ThÃ nh, Huyá»‡n Thoáº¡i SÆ¡n, Tá»‰nh An Giang, Vietnam', NULL, NULL, '10.309609,105.299329', 10.309609, 105.299332, 'establishment', 'maps/raw/places/staticmap/location=10.309609,105.299329&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.309609,105.299329&format=gif'),
(116, '0eb5a64f', '77f51f6ca367a0bc2540aef2f9b3f716', 'Internet BÄ‘vh XÃ£ Äá»‹nh ThÃ nh', 'Äá»‹nh ThÃ nh Huyá»‡n ÄÃ´ng Háº£i, Bac Lieu, Vietnam', NULL, NULL, '9.132306,105.295558', 9.132306, 105.295555, 'establishment', 'maps/raw/places/staticmap/location=9.132306,105.295558&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.132306,105.295558&format=gif'),
(117, '4b1f3ad9', 'f237aadfef7354cebce4d71438c227d1', 'TrÆ°á»ng Tiá»ƒu Há»c Äá»‹nh ThÃ nh B', 'ÄÆ°á»ng KhÃ´ng TÃªn, Äá»‹nh ThÃ nh A, ÄÃ´ng Háº£i, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.127961,105.264978', 9.127961, 105.264977, 'establishment', 'maps/raw/places/staticmap/location=9.127961,105.264978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.127961,105.264978&format=gif'),
(118, 'e1484f08', 'f2ddf08a6fc1ceaf5be3202e8fff27b4', 'Tac Ct', 'Tac Ct, Manassas, VA 20109, USA', NULL, NULL, '38.7787292,-77.5515056', 38.778728, -77.551506, 'route', 'maps/raw/places/staticmap/location=38.7787292,-77.5515056&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.7787292,-77.5515056&format=gif'),
(119, '4a8f5c90', 'be9af47bbb0808e8a6606f3c90ad4590', 'Táº¯c VÃ¢n', 'Táº¯c VÃ¢n, tp. CÃ  Mau, Ca Mau, Vietnam', NULL, NULL, '9.1662734,105.2641108', 9.166273, 105.264114, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.1662734,105.2641108&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.1662734,105.2641108&format=gif'),
(120, '41dd1c29', '93a77be2b0405e1586766f1199602f93', 'New Mec-ComÃ©rcio e IndÃºstria de Equipamentos', 'Avenida Tenente Coronel Muniz de AragÃ£o, 1710 - GardÃªnia Azul, Rio de Janeiro - RJ, 22765-000, Brazil', NULL, NULL, '-22.956939,-43.350614', -22.956940, -43.350613, 'establishment', 'maps/raw/places/staticmap/location=-22.956939,-43.350614&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.956939,-43.350614&format=gif'),
(121, 'becbcdaa', 'a0cc46b0066321f0b6279b1df5b84199', 'New Mec S.r.l.', 'Via Piave, 61, Cimadolmo TV, Italy', NULL, NULL, '45.796243,12.336353', 45.796242, 12.336353, 'establishment', 'maps/raw/places/staticmap/location=45.796243,12.336353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.796243,12.336353&format=gif'),
(122, 'a7a07125', '419e4b997ef89235a155a95f0a2de35e', 'New Mec Enterprise', '7 Townshend Road, Singapore 207605', NULL, NULL, '1.307756,103.858331', 1.307756, 103.858330, 'establishment', 'maps/raw/places/staticmap/location=1.307756,103.858331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.307756,103.858331&format=gif'),
(123, 'ad7d82a0', '3064b1d8f5e5cb70c9b9ae85d008e431', 'Newmec S.r.l.', '38 Via Enzo Ferrari, Isola Vicentina, Vi 36033, Italy', NULL, NULL, '45.6313,11.45546', 45.631302, 11.455460, 'establishment', 'maps/raw/places/staticmap/location=45.6313,11.45546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.6313,11.45546&format=gif'),
(124, '06896fb9', 'ce599b20619e1439f8a4189b39f44fe8', 'NC MEC USA Inc', '3150 Verona Avenue, Buford, GA 30518, United States', NULL, NULL, '34.132222,-83.969516', 34.132221, -83.969513, 'establishment', 'maps/raw/places/staticmap/location=34.132222,-83.969516&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.132222,-83.969516&format=gif'),
(125, '060a1262', '9ac84194d6eb084474b8c09a0c8854c6', 'MEC Head Office', '1077 Great Northern Way, Vancouver, BC V5T 1E1, Canada', NULL, NULL, '49.266089,-123.082763', 49.266090, -123.082764, 'establishment', 'maps/raw/places/staticmap/location=49.266089,-123.082763&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.266089,-123.082763&format=gif'),
(126, 'bdeeaa1f', '96311aaf41de3df90c4ea03c0dedfe31', 'MEC Newcastle - Electrician', 'Swalwell, Newcastle upon Tyne, Newcastle, United Kingdom', NULL, NULL, '54.95511,-1.690093', 54.955109, -1.690093, 'electrician', 'maps/raw/places/staticmap/location=54.95511,-1.690093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C54.95511,-1.690093&format=gif'),
(127, '97c6200f', 'f858a4ce9ebbbd8b008a367ab06f7996', 'Peugeot - Tri.Mec. Di Trincone A. E Trincone S. &amp; C.', '3 Arco Felice Vecchio, Pozzuoli, NA 80078, Italy', NULL, NULL, '40.84521,14.06737', 40.845211, 14.067370, 'car_dealer', 'maps/raw/places/staticmap/location=40.84521,14.06737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.84521,14.06737&format=gif'),
(128, '3b296431', '8219d0a0e79f27edd4efd2a0aa24b012', 'Nord Mec S.r.l.', 'Via Noalese, 75, 31100 Treviso TV, Italy', NULL, NULL, '45.65416,12.199863', 45.654160, 12.199863, 'car_dealer', 'maps/raw/places/staticmap/location=45.65416,12.199863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.65416,12.199863&format=gif'),
(129, 'f4c23dca', 'c70d46df4925484f7205389f6a45d2d1', 'Auto.Mec. Di Scaligina F. E Gasparre F. Snc', 'Via Ferrara, 74016 Massafra TA, Italy', NULL, NULL, '40.581587,17.111316', 40.581589, 17.111317, 'car_dealer', 'maps/raw/places/staticmap/location=40.581587,17.111316&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.581587,17.111316&format=gif'),
(130, 'c00ccf8c', '832aa7b1838cad902a5db5daed6442de', 'G.m.s. General Mec System Llc, Albany, New York', 'Via Ligornetto 15, 6854 S. Pietro, Switzerland', NULL, NULL, '45.856636,8.941396', 45.856636, 8.941396, 'establishment', 'maps/raw/places/staticmap/location=45.856636,8.941396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.856636,8.941396&format=gif'),
(131, '2f3a958d', 'ca18742d43f684daac28dd976383db24', 'MEC', '825 7th Avenue, New York, NY 10019, United States', NULL, NULL, '40.763023,-73.981064', 40.763023, -73.981064, 'establishment', 'maps/raw/places/staticmap/location=40.763023,-73.981064&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.763023,-73.981064&format=gif'),
(132, '1be8a4a6', 'ccd737062fbf998df3b00310f1c9df64', 'Mediaedge:Cia Portugal', 'Rua Dom JoÃ£o V 24, 1250-091 Lisboa, Portugal', NULL, NULL, '38.720575,-9.159455', 38.720573, -9.159455, 'establishment', 'maps/raw/places/staticmap/location=38.720575,-9.159455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.720575,-9.159455&format=gif'),
(133, '60a63d37', 'dfcac7185e811624497303eefeb85e32', 'MEC: Active Engagement', 'Avinguda Diagonal, 605, 08028 Barcelona, Barcelona, Spain', NULL, NULL, '41.388883,2.129107', 41.388882, 2.129107, 'establishment', 'maps/raw/places/staticmap/location=41.388883,2.129107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.388883,2.129107&format=gif'),
(134, '4160224d', 'de94f91f6ff98f5ce88eb151e037fefa', 'MEC Mining', '22/215 Adelaide Street, Brisbane QLD 4000, Australia', NULL, NULL, '-27.467441,153.026993', -27.467442, 153.026993, 'establishment', 'maps/raw/places/staticmap/location=-27.467441,153.026993&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-27.467441,153.026993&format=gif'),
(135, '27098944', '3a67bd7f23d00105d90b3544a3561ae7', 'MEC Malaysia', 'Jalan Damanlela, Pusat Bandar Damansara, 50490 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur, Malaysia', NULL, NULL, '3.146837,101.662164', 3.146837, 101.662163, 'establishment', 'maps/raw/places/staticmap/location=3.146837,101.662164&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C3.146837,101.662164&format=gif'),
(136, 'fd2104ab', '2997fff148d8dae397e58e4fa87f97e7', 'MEC', 'Rue PrÃ©vinaire 64, 1070 Ville de Bruxelles, Belgium', NULL, NULL, '50.833886,4.321935', 50.833885, 4.321935, 'doctor', 'maps/raw/places/staticmap/location=50.833886,4.321935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C50.833886,4.321935&format=gif'),
(137, 'ee9a4753', '330a51316a08ede1398c67509f1e69c8', 'MEC, Inc.', '221 McRand Court #100, Hagerstown, MD 21740, United States', NULL, NULL, '39.646741,-77.748709', 39.646740, -77.748711, 'electrician', 'maps/raw/places/staticmap/location=39.646741,-77.748709&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.646741,-77.748709&format=gif'),
(138, '03a11f07', 'dc3f168a9c634fbd94a17f542abfdfda', 'Mountain Equipment Co-op (MEC)', '6121 200 Street, Langley, BC V2Y, Canada', NULL, NULL, '49.113805,-122.671661', 49.113804, -122.671661, 'bicycle_store', 'maps/raw/places/staticmap/location=49.113805,-122.671661&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.113805,-122.671661&format=gif'),
(139, 'e7069cd2', 'b125c5245828bbd4017294ff9ccb86c8', 'New Mexico', 'New Mexico, USA', NULL, NULL, '34.5199402,-105.8700901', 34.519939, -105.870087, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=34.5199402,-105.8700901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.5199402,-105.8700901&format=gif'),
(140, 'b31481a3', '310f3c9ce4ee1897fa3c23a9a2129da7', 'Vinpearl Land Nha Trang', 'VÄ©nh NguyÃªn, Nha Trang, Khanh Hoa Province, Vietnam', NULL, NULL, '12.21728,109.241895', 12.217280, 109.241898, 'lodging', 'maps/raw/places/staticmap/location=12.21728,109.241895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.21728,109.241895&format=gif'),
(141, '064dddf3', 'eeea1ea64e3ca92d1cc10d1c83abca3e', 'HÃ²n Ngá»c Viá»‡t - Vinpearl Land', '7 Tráº§n PhÃº, tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', NULL, NULL, '12.216119,109.241223', 12.216119, 109.241226, 'restaurant', 'maps/raw/places/staticmap/location=12.216119,109.241223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.216119,109.241223&format=gif'),
(142, 'dc8dfb9a', '24beb9eab78c5f4c10beb14e050292f7', 'Vinpearl Luxury Nha Trang', 'Nha Trang, Khanh Hoa Province, Vietnam', NULL, NULL, '12.211558,109.243605', 12.211558, 109.243607, 'lodging', 'maps/raw/places/staticmap/location=12.211558,109.243605&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.211558,109.243605&format=gif'),
(143, '854fe8d3', '19b1e64871e4a68022a91e10366c61cf', 'Vinpearl Luxury Da Nang', 'TrÆ°á»ng Sa, HÃ²a Háº£i, NgÅ© HÃ nh SÆ¡n, ÄÃ  Náºµng, Vietnam', NULL, NULL, '16.007778,108.266107', 16.007778, 108.266106, 'lodging', 'maps/raw/places/staticmap/location=16.007778,108.266107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C16.007778,108.266107&format=gif'),
(144, 'bdd9f461', 'e170adb7cf3e92d4a22a7dd560dcfe98', 'CÃ´ng Ty Cp Du Lá»‹ch Tm Vinpearl', '72 LÃª ThÃ¡nh TÃ´n, Báº¿n NghÃ©, 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.77771,106.702008', 10.777710, 106.702011, 'establishment', 'maps/raw/places/staticmap/location=10.77771,106.702008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.77771,106.702008&format=gif'),
(145, 'a562856d', '9c45d7ac66e8a87662636225bca309e4', 'Vinpearl Nail &amp; Spa', '20079 Stone Oak Parkway #1102, San Antonio, TX 78258, United States', NULL, NULL, '29.642657,-98.488919', 29.642656, -98.488922, 'beauty_salon', 'maps/raw/places/staticmap/location=29.642657,-98.488919&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.642657,-98.488919&format=gif'),
(146, 'da228937', 'd359cfd135685783714095b6496b3fc2', 'Vinpearl Golf Club', 'tp. Nha Trang, KhÃ¡nh HÃ²a, Vietnam', NULL, NULL, '12.213053,109.257877', 12.213053, 109.257874, 'establishment', 'maps/raw/places/staticmap/location=12.213053,109.257877&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.213053,109.257877&format=gif'),
(147, '84f8f3fb', 'bd1544b7a8a0541ae948ab8412c77d10', 'Vinpearl', 'RaumerstraÃŸe 14A, 10437 Berlin, Germany', NULL, NULL, '52.542082,13.419868', 52.542084, 13.419868, 'restaurant', 'maps/raw/places/staticmap/location=52.542082,13.419868&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.542082,13.419868&format=gif'),
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', NULL, NULL, '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', NULL, NULL, '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', NULL, NULL, '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif'),
(153, 'a4157a1a', '98115adfd29e8efc177e99777555a7ea', 'Vinpearl Golf Club Sales Office', 'Khu ÄÃ´ Thá»‹ Sinh ThÃ¡i Vincom Village, PhÆ°á»ng Viá»‡t HÆ°ng, Quáº­n Long BiÃªn, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.047808,105.91543', 21.047808, 105.915428, 'establishment', 'maps/raw/places/staticmap/location=21.047808,105.91543&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.047808,105.91543&format=gif'),
(154, 'd90903d0', '7070023b09b213d8d4ec3330238ef1fb', 'Vinpearl Water Park', '72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh XuÃ¢n, HÃ  Ná»™i, Vietnam', NULL, NULL, '21.002691,105.814658', 21.002691, 105.814659, 'amusement_park', 'maps/raw/places/staticmap/location=21.002691,105.814658&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.002691,105.814658&format=gif'),
(155, 'e4c2d839', '6526dc617b1b0ab30491ab5f6fed9e11', 'Vinpearl Resort Phu Quoc', 'BÃ£i DÃ i, Huyá»‡n, Cá»­a Cáº¡n-GÃ nh Dáº§u, GÃ nh Dáº§u, Phu Quoc District, tá»‰nh KiÃªn Giang, Vietnam', NULL, NULL, '10.33588,103.856896', 10.335880, 103.856895, 'lodging', 'maps/raw/places/staticmap/location=10.33588,103.856896&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.33588,103.856896&format=gif'),
(156, 'cc098f01', 'f43532e968e4c72c4f303cc9959e4ea7', 'Vinpearl Resort &amp; Spa Travel &amp; Trading J.S.C.', '182 Nguyen Van Thu Street, Dakao Ward, District 1, Ho Chi Minh City, Vietnam', NULL, NULL, '10.777799,106.702146', 10.777799, 106.702148, 'lodging', 'maps/raw/places/staticmap/location=10.777799,106.702146&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.777799,106.702146&format=gif'),
(157, 'b321ca06', '09e4d2c66ca4e0ed6d694e0d2a18a02f', 'Lotteria Vinpearl', 'Vinpearl Land, ChÃ¢n cÃ¡p treo, BÃ£i Trá»¥, HÃ²n Tre, Nha Trang, tp. Nha Trang, 570000, Vietnam', NULL, NULL, '12.217217,109.243519', 12.217217, 109.243523, 'restaurant', 'maps/raw/places/staticmap/location=12.217217,109.243519&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.217217,109.243519&format=gif'),
(158, '2e97d1a2', '9c9c3cb90cb11ddcca9f51ba29e6d247', 'HÃ²n Mun', 'HÃ²n Mun, VÄ©nh NguyÃªn, tp. Nha Trang, Vietnam', NULL, NULL, '12.1661449,109.3024824', 12.166145, 109.302483, 'natural_feature', 'maps/raw/places/staticmap/location=12.1661449,109.3024824&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1661449,109.3024824&format=gif'),
(159, '7a483e0f', 'eb0cf3c98d5fc7e6102f317195a92413', 'CÃ´n Äáº£o SeaTravel', '6, Nguyá»…n Äá»©c Thuáº­n, Con Dao, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.678821,106.602123', 8.678821, 106.602119, 'lodging', 'maps/raw/places/staticmap/location=8.678821,106.602123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678821,106.602123&format=gif'),
(160, 'd880c539', '8f9eab57241fce91dcea4de85fa2c7b3', 'CÃ´n Äáº£o Sea Travel Resort', 'BÃ£i An Háº£i, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, Vietnam', NULL, NULL, '8.678789,106.602637', 8.678789, 106.602638, 'lodging', 'maps/raw/places/staticmap/location=8.678789,106.602637&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678789,106.602637&format=gif'),
(161, 'a51937f9', '814b541cdde178adf150e7fbec0e10ff', 'Kos Island International Airport', 'Kos 853 02, Greece', NULL, NULL, '36.794215,27.088395', 36.794216, 27.088394, 'airport', 'maps/raw/places/staticmap/location=36.794215,27.088395&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.794215,27.088395&format=gif'),
(162, 'a0397e35', '4eec37d6859de37b9df0d03c545592ed', 'LGKF', 'Kefalonia 281 00, Greece', NULL, NULL, '38.119503,20.504924', 38.119503, 20.504925, 'airport', 'maps/raw/places/staticmap/location=38.119503,20.504924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.119503,20.504924&format=gif'),
(163, 'baa37396', 'c783aeadf0086cf8c250814ae1d04aa2', 'Marshall Islands International Airport', 'Marshall Islands', NULL, NULL, '7.065189,171.272737', 7.065189, 171.272736, 'airport', 'maps/raw/places/staticmap/location=7.065189,171.272737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.065189,171.272737&format=gif'),
(164, '437972be', '5ad066d45b573abe923277575ec612aa', 'Qingdao International Airport', '99 Min Hang Lu, Chengyang Qu, Qingdao Shi, Shandong Sheng, China', NULL, NULL, '36.266674,120.383123', 36.266674, 120.383125, 'airport', 'maps/raw/places/staticmap/location=36.266674,120.383123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.266674,120.383123&format=gif'),
(165, '5ee755c2', '1e106feec2b611bc71b36eb463138ff4', 'Green Island Airport', '951, Taiwan, Taitung County, LÃ¼dao Township, 231', NULL, NULL, '22.672362,121.466863', 22.672361, 121.466866, 'airport', 'maps/raw/places/staticmap/location=22.672362,121.466863&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.672362,121.466863&format=gif'),
(166, '81d40911', '52bb181c5d32a602408b5465e12d9d57', 'Qinhuangdao Shanhaiguan Airport', 'Shanhaiguan, Qinhuangdao, Hebei, China', NULL, NULL, '39.968056,119.731111', 39.968056, 119.731110, 'airport', 'maps/raw/places/staticmap/location=39.968056,119.731111&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968056,119.731111&format=gif'),
(167, '824ed644', '9b7ef8a786e016826483f941b04cc82d', 'SÃ i GÃ²n CÃ´n Äáº£o Resort', 'Huyá»‡n á»§y CÃ´n Äáº£o, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.682649,106.609396', 8.682649, 106.609398, 'travel_agency', 'maps/raw/places/staticmap/location=8.682649,106.609396&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.682649,106.609396&format=gif'),
(168, '88a218d9', 'ca5cc3071df902a950449ca9ec245cb8', 'Khu Biá»‡t thá»± KhÃ¡ch sáº¡n SÃ i GÃ²n - CÃ´n Äáº£o', '18-24 TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.683005,106.609698', 8.683005, 106.609695, 'lodging', 'maps/raw/places/staticmap/location=8.683005,106.609698&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683005,106.609698&format=gif'),
(169, '03a82f6d', 'd0156f651e0e423b41119b1ea1d8a14b', 'Tam Dao National Park', 'Tam Äáº£o, VÄ©nh PhÃºc, Vietnam', NULL, NULL, '21.484176,105.61102', 21.484177, 105.611023, 'park', 'maps/raw/places/staticmap/location=21.484176,105.61102&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.484176,105.61102&format=gif'),
(170, '1f662085', 'b3a4065c79fa42df57bc8ce305dd5701', 'CÃ´n Äáº£o Resort', '8, Nguyá»…n Äá»©c Thuáº­n, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.677575,106.601062', 8.677575, 106.601059, 'establishment', 'maps/raw/places/staticmap/location=8.677575,106.601062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.677575,106.601062&format=gif'),
(171, '83b9a61f', '7f88f5fc648d77f491f6efd4524419c6', 'Äáº£o cÃ² Chi LÄƒng Nam', 'tt. Thanh Miá»‡n, Thanh Miá»‡n, Háº£i DÆ°Æ¡ng, Vietnam', NULL, NULL, '20.71361,106.227922', 20.713610, 106.227921, 'establishment', 'maps/raw/places/staticmap/location=20.71361,106.227922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.71361,106.227922&format=gif'),
(172, '21e5c734', '7ed8e1e3af74bed9dd09e713b7ab5edb', 'Con Dao Airport Terminal', 'Cá» á»ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.731235,106.628713', 8.731235, 106.628716, 'establishment', 'maps/raw/places/staticmap/location=8.731235,106.628713&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.731235,106.628713&format=gif'),
(173, '51e182e6', 'fb7f701c4d138befd3e3c29efe84643d', 'Ks SÃ i GÃ²n - CÃ´n Äáº£o', '18-24, TÃ´n Äá»©c Tháº¯ng, CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.683978,106.611468', 8.683978, 106.611465, 'lodging', 'maps/raw/places/staticmap/location=8.683978,106.611468&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.683978,106.611468&format=gif'),
(174, '1347ef68', '9257b7d00bbe84c1c91f5f3ccbec6bf8', 'Northeast Greenland National Park', 'Greenland', NULL, NULL, '76,-30', 76.000000, -30.000000, 'park', 'maps/raw/places/staticmap/location=76,-30&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C76,-30&format=gif'),
(175, 'e64c20bb', '1da0b772fe5bb309a800513ca9fd1a97', 'Äáº·t phÃ²ng khÃ¡ch sáº¡n CÃ´n Äáº£o giÃ¡ ráº»', '33 Pháº¡m HÃ¹ng, BÃ¬nh HÆ°ng, BÃ¬nh ChÃ¡nh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.725845,106.678662', 10.725845, 106.678665, 'lodging', 'maps/raw/places/staticmap/location=10.725845,106.678662&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.725845,106.678662&format=gif'),
(176, 'c56bb139', '3f82a70300915cf48ec1de562ba1d941', 'CÃ´n Äáº£o Resort', 'Nguyá»…n Äá»©c Thuáº­n, huyá»‡n CÃ´n Äáº£o, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', NULL, NULL, '8.678022,106.601345', 8.678022, 106.601341, 'restaurant', 'maps/raw/places/staticmap/location=8.678022,106.601345&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C8.678022,106.601345&format=gif'),
(177, '5099af51', '839812f2c30591e5247ba4e70ddc6b5e', 'BÆ°u Äiá»‡n Tam Äáº£o', '21 Tam Äáº£o, 15, 10, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.779523,106.663294', 10.779523, 106.663292, 'establishment', 'maps/raw/places/staticmap/location=10.779523,106.663294&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.779523,106.663294&format=gif'),
(178, '2f9404b3', 'a916089fe959acd6e347c2ecae5968ee', 'Bá»ƒ bÆ¡i bÃ¡n Ä‘áº£o Linh ÄÃ m', 'Khu Ä‘Ã´ thá»‹ Linh ÄÃ m, HoÃ ng Liá»‡t, HoÃ ng Mai, HÃ  Ná»™i, Vietnam', NULL, NULL, '20.964152,105.829259', 20.964151, 105.829262, 'establishment', 'maps/raw/places/staticmap/location=20.964152,105.829259&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.964152,105.829259&format=gif'),
(179, 'df0ffbd9', '62b847ee086d4697349cab15d7e8e5cb', 'Soc Trang', 'Soc Trang, Vietnam', NULL, NULL, '9.6003688,105.9599539', 9.600369, 105.959953, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=9.6003688,105.9599539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.6003688,105.9599539&format=gif'),
(180, 'ce70ceef', '207f9b40a04d45e4aa54cbe84fb741f8', 'Afghanistan', 'Afghanistan', NULL, NULL, '33.93911,67.709953', 33.939110, 67.709953, 'country', 'maps/raw/places/staticmap/location=33.93911,67.709953&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.93911,67.709953&format=gif'),
(181, '3cdfd90e', '6495ce0173e2e57e0b3c8840b37f4c16', 'Albania', 'Albania', NULL, NULL, '41.153332,20.168331', 41.153332, 20.168331, 'country', 'maps/raw/places/staticmap/location=41.153332,20.168331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.153332,20.168331&format=gif'),
(182, '6369f80f', '3a26dbe4288a5c82ea133dd1e9153bcd', 'Algeria', 'Algeria', NULL, NULL, '28.033886,1.659626', 28.033886, 1.659626, 'country', 'maps/raw/places/staticmap/location=28.033886,1.659626&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.033886,1.659626&format=gif'),
(183, '45ecbd4f', 'dc7572887606b91d005b9f701a6e5598', 'Andorra', 'Andorra', NULL, NULL, '42.506285,1.521801', 42.506287, 1.521801, 'country', 'maps/raw/places/staticmap/location=42.506285,1.521801&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.506285,1.521801&format=gif'),
(184, 'c80af15e', '2f48608a55528259962f85322b963a12', 'Andorra la Vella', 'Andorra la Vella, Andorra', NULL, NULL, '42.5063174,1.5218355', 42.506317, 1.521835, 'locality', 'maps/raw/places/staticmap/location=42.5063174,1.5218355&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.5063174,1.5218355&format=gif'),
(185, 'da4de59f', 'd3568a741b6d6464f26b3991f41719e6', 'Angola', 'Angola', NULL, NULL, '-11.202692,17.873887', -11.202692, 17.873886, 'country', 'maps/raw/places/staticmap/location=-11.202692,17.873887&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.202692,17.873887&format=gif'),
(186, '59cdaec9', 'f9d4a021ceee8784368ed4e37fc43cca', 'Antigua and Barbuda', 'Antigua and Barbuda', NULL, NULL, '17.060816,-61.796428', 17.060816, -61.796429, 'country', 'maps/raw/places/staticmap/location=17.060816,-61.796428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.060816,-61.796428&format=gif'),
(187, 'cc31d7fd', 'b380a7a71735a2049b0d5c274277bf9d', 'Armenia', 'Armenia', NULL, NULL, '40.069099,45.038189', 40.069099, 45.038189, 'country', 'maps/raw/places/staticmap/location=40.069099,45.038189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.069099,45.038189&format=gif'),
(188, '77ff8ef3', '87ad6668219e5446f9f60963ca99eab9', 'Austria', 'Austria', NULL, NULL, '47.516231,14.550072', 47.516232, 14.550072, 'country', 'maps/raw/places/staticmap/location=47.516231,14.550072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.516231,14.550072&format=gif'),
(189, '007f063e', '06fa6988f7d4584154b7f50c744a937d', 'Azerbaijan', 'Azerbaijan', NULL, NULL, '40.143105,47.576927', 40.143105, 47.576927, 'country', 'maps/raw/places/staticmap/location=40.143105,47.576927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.143105,47.576927&format=gif'),
(190, '5b931420', 'b9691c2482315e17cb87d889d3715461', 'The Bahamas', 'The Bahamas', NULL, NULL, '25.03428,-77.39628', 25.034281, -77.396278, 'country', 'maps/raw/places/staticmap/location=25.03428,-77.39628&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.03428,-77.39628&format=gif'),
(191, '96fdf906', '8a9ae1acd6384b37d0e9cc18ba1794e4', 'Bahrain', 'Bahrain', NULL, NULL, '26.0667,50.5577', 26.066700, 50.557701, 'country', 'maps/raw/places/staticmap/location=26.0667,50.5577&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.0667,50.5577&format=gif'),
(192, 'ce824fec', '381d003f2752270b0c73aa1e71567f98', 'Bangladesh', 'Bangladesh', NULL, NULL, '23.684994,90.356331', 23.684994, 90.356331, 'country', 'maps/raw/places/staticmap/location=23.684994,90.356331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.684994,90.356331&format=gif'),
(193, 'b3ae9ebf', 'dc82deff2164769c92e1b68695386907', 'Barbados', 'Barbados', NULL, NULL, '13.193887,-59.543198', 13.193887, -59.543198, 'country', 'maps/raw/places/staticmap/location=13.193887,-59.543198&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.193887,-59.543198&format=gif'),
(194, '8a4dcc60', '0c356ed8c7e52fd89d39299915d2bcbf', 'Belarus', 'Belarus', NULL, NULL, '53.709807,27.953389', 53.709808, 27.953388, 'country', 'maps/raw/places/staticmap/location=53.709807,27.953389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.709807,27.953389&format=gif'),
(195, 'dc66ae53', '90cfd4711077080df97a8f2539bb1edd', 'Belize', 'Belize', NULL, NULL, '17.189877,-88.49765', 17.189877, -88.497650, 'country', 'maps/raw/places/staticmap/location=17.189877,-88.49765&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.189877,-88.49765&format=gif'),
(196, '4208ea59', '1e0a71f7ec9514eee9e9e81b96454073', 'Benin', 'Benin', NULL, NULL, '9.30769,2.315834', 9.307690, 2.315834, 'country', 'maps/raw/places/staticmap/location=9.30769,2.315834&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.30769,2.315834&format=gif'),
(197, 'ea54617f', 'd632cba6e6ae9582728181c53e29ed7e', 'Bhutan', 'Bhutan', NULL, NULL, '27.514162,90.433601', 27.514162, 90.433601, 'country', 'maps/raw/places/staticmap/location=27.514162,90.433601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.514162,90.433601&format=gif'),
(198, '5a0ffaeb', '39a2585970551fe1d9fd242e74dfef45', 'Bolivia', 'Bolivia', NULL, NULL, '-16.290154,-63.588653', -16.290154, -63.588654, 'country', 'maps/raw/places/staticmap/location=-16.290154,-63.588653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-16.290154,-63.588653&format=gif'),
(199, 'ca3023ac', '777eb518681ba3dc52c653890bb59cc4', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', NULL, NULL, '43.915886,17.679076', 43.915886, 17.679075, 'country', 'maps/raw/places/staticmap/location=43.915886,17.679076&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.915886,17.679076&format=gif'),
(200, '3388715d', '0e051763f057916ab4617a40a3424236', 'Botswana', 'Botswana', NULL, NULL, '-22.328474,24.684866', -22.328474, 24.684866, 'country', 'maps/raw/places/staticmap/location=-22.328474,24.684866&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.328474,24.684866&format=gif'),
(201, '1016dd64', '7642bfce0f160c283b6a15696940c3ad', 'Brunei', 'Brunei', NULL, NULL, '4.535277,114.727669', 4.535277, 114.727669, 'country', 'maps/raw/places/staticmap/location=4.535277,114.727669&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.535277,114.727669&format=gif'),
(202, 'bff26485', 'fb3d899bc07a76011ed34f7f2521ef04', 'Bulgaria', 'Bulgaria', NULL, NULL, '42.733883,25.48583', 42.733883, 25.485830, 'country', 'maps/raw/places/staticmap/location=42.733883,25.48583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.733883,25.48583&format=gif'),
(203, 'b367b1fb', 'b3f1045abf4d1bcfd5ad42493eae2930', 'Burkina Faso', 'Burkina Faso', NULL, NULL, '12.238333,-1.561593', 12.238333, -1.561593, 'country', 'maps/raw/places/staticmap/location=12.238333,-1.561593&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.238333,-1.561593&format=gif'),
(204, 'ac756781', '6fda714e1d7a081eea5e2f961406c3d6', 'Republic of the Union of Myanmar', 'Republic of the Union of Myanmar', NULL, NULL, '21.913965,95.956223', 21.913965, 95.956223, 'country', 'maps/raw/places/staticmap/location=21.913965,95.956223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.913965,95.956223&format=gif'),
(205, 'b5ea4798', '3fa89dcb76ff437adfa56d3cc37e7a6d', 'Burundi', 'Burundi', NULL, NULL, '-3.373056,29.918886', -3.373056, 29.918886, 'country', 'maps/raw/places/staticmap/location=-3.373056,29.918886&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-3.373056,29.918886&format=gif'),
(206, '8852a653', '4266125e0c4f0981056e95e95b66e783', 'Cambodia', 'Cambodia', NULL, NULL, '12.565679,104.990963', 12.565679, 104.990967, 'country', 'maps/raw/places/staticmap/location=12.565679,104.990963&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.565679,104.990963&format=gif'),
(207, '2d8916d7', 'fc5fb23d075506030774313b3b22a378', 'Cameroon', 'Cameroon', NULL, NULL, '7.369722,12.354722', 7.369722, 12.354722, 'country', 'maps/raw/places/staticmap/location=7.369722,12.354722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.369722,12.354722&format=gif'),
(208, 'b840ae9a', '03d45d30ecdaca70cae7f1a8d55b344d', 'Cape Verde', 'Cape Verde', NULL, NULL, '15.120142,-23.6051721', 15.120142, -23.605171, 'country', 'maps/raw/places/staticmap/location=15.120142,-23.6051721&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.120142,-23.6051721&format=gif'),
(209, '35cae5dd', '8bdab0de5a2cda226cf75c7dd32b8e2a', 'Central African Republic', 'Central African Republic', NULL, NULL, '6.611111,20.939444', 6.611111, 20.939444, 'country', 'maps/raw/places/staticmap/location=6.611111,20.939444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.611111,20.939444&format=gif'),
(210, '5afe39c6', '2eded59d571c09561baf918d63b00e4d', 'Chad', 'Chad', NULL, NULL, '15.454166,18.732207', 15.454166, 18.732206, 'country', 'maps/raw/places/staticmap/location=15.454166,18.732207&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.454166,18.732207&format=gif'),
(211, 'f64de8f0', 'eff3a8e24105a0e5dd66eecb37e9d7c7', 'Chile', 'Chile', NULL, NULL, '-35.675147,-71.542969', -35.675148, -71.542969, 'country', 'maps/raw/places/staticmap/location=-35.675147,-71.542969&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-35.675147,-71.542969&format=gif'),
(212, 'be89688a', '355672960553a7e2c3eac0fb834acda9', 'Comoros', 'Comoros', NULL, NULL, '-11.6455,43.3333', -11.645500, 43.333302, 'country', 'maps/raw/places/staticmap/location=-11.6455,43.3333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-11.6455,43.3333&format=gif'),
(213, '5f3e483e', 'a5dbc77555dc19f99ce318eb5be7a9f7', 'Congo', 'Congo', NULL, NULL, '-0.228021,15.827659', -0.228021, 15.827659, 'country', 'maps/raw/places/staticmap/location=-0.228021,15.827659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.228021,15.827659&format=gif'),
(214, 'c33c4a03', '64d1495c81efd61b6ccbd5744c04bc36', 'Democratic Republic of the Congo', 'Democratic Republic of the Congo', NULL, NULL, '-4.038333,21.758664', -4.038333, 21.758663, 'country', 'maps/raw/places/staticmap/location=-4.038333,21.758664&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-4.038333,21.758664&format=gif'),
(215, 'c4e506bf', '672acf57eccae55c4583f27ac42087cd', 'Costa Rica', 'Costa Rica', NULL, NULL, '9.748917,-83.753428', 9.748917, -83.753426, 'country', 'maps/raw/places/staticmap/location=9.748917,-83.753428&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.748917,-83.753428&format=gif'),
(216, 'b797689d', '5e53b983d8ab018abae45ea6db56a32a', 'Croatia', 'Croatia', NULL, NULL, '45.1,15.2', 45.099998, 15.200000, 'country', 'maps/raw/places/staticmap/location=45.1,15.2&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.1,15.2&format=gif'),
(217, '3178e2b6', 'ced0931b2d0f1d62e204035e0e4bf1c1', 'Cuba', 'Cuba', NULL, NULL, '21.521757,-77.781167', 21.521757, -77.781166, 'country', 'maps/raw/places/staticmap/location=21.521757,-77.781167&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.521757,-77.781167&format=gif'),
(218, 'aaea7422', '9a3f1793ce3b704f32419eca2c1bbf3b', 'Cyprus', 'Cyprus', NULL, NULL, '35.126413,33.429859', 35.126411, 33.429859, 'country', 'maps/raw/places/staticmap/location=35.126413,33.429859&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.126413,33.429859&format=gif'),
(219, '071e1c2c', '933a1672593c4e64b93152d7ca987501', 'Djibouti', 'Djibouti', NULL, NULL, '11.825138,42.590275', 11.825138, 42.590275, 'country', 'maps/raw/places/staticmap/location=11.825138,42.590275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.825138,42.590275&format=gif'),
(220, '4b0309fb', '45ce69b9f020bbfd4b67361251a0c4b2', 'Djibouti', 'Djibouti, Djibouti', NULL, NULL, '11.588333,43.145', 11.588333, 43.145000, 'locality', 'maps/raw/places/staticmap/location=11.588333,43.145&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.588333,43.145&format=gif'),
(221, 'a6dd5f65', 'bf64605730d4c9a8e137ee0ce8b325ce', 'Dominica', 'Dominica', NULL, NULL, '15.414999,-61.370976', 15.414999, -61.370975, 'country', 'maps/raw/places/staticmap/location=15.414999,-61.370976&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.414999,-61.370976&format=gif'),
(222, '48c05f15', 'dbc8a1efb6d17966ce6828bf5e3bd548', 'Dominican Republic', 'Dominican Republic', NULL, NULL, '18.735693,-70.162651', 18.735693, -70.162651, 'country', 'maps/raw/places/staticmap/location=18.735693,-70.162651&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.735693,-70.162651&format=gif'),
(223, '8c3afd7a', 'f3a7a93fbf07f1c1daaa4a733c7c2c49', 'East Timor', 'East Timor', NULL, NULL, '-8.874217,125.727539', -8.874217, 125.727539, 'country', 'maps/raw/places/staticmap/location=-8.874217,125.727539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-8.874217,125.727539&format=gif'),
(224, '5190092d', '322f31ec0c335bfb785ba7e0e6969f8e', 'Egypt', 'Egypt', NULL, NULL, '26.820553,30.802498', 26.820553, 30.802498, 'country', 'maps/raw/places/staticmap/location=26.820553,30.802498&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.820553,30.802498&format=gif'),
(225, '94668225', '68b62b4f27731da3e25eb0ec81572865', 'El Salvador', 'El Salvador', NULL, NULL, '13.794185,-88.89653', 13.794185, -88.896530, 'country', 'maps/raw/places/staticmap/location=13.794185,-88.89653&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.794185,-88.89653&format=gif'),
(226, 'f0607404', '49c61be4009021bd4e4285a7e81f1dc7', 'England', 'England, UK', NULL, NULL, '52.3555177,-1.1743197', 52.355518, -1.174320, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=52.3555177,-1.1743197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.3555177,-1.1743197&format=gif'),
(227, 'b0123cee', 'ba1677acc012d8f6b7182b3ab766f9e7', 'Equatorial Guinea', 'Equatorial Guinea', NULL, NULL, '1.650801,10.267895', 1.650801, 10.267895, 'country', 'maps/raw/places/staticmap/location=1.650801,10.267895&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.650801,10.267895&format=gif'),
(228, '07c48714', '8324b71942911433a37bfb3e372dc271', 'Eritrea', 'Eritrea', NULL, NULL, '15.179384,39.782334', 15.179384, 39.782333, 'country', 'maps/raw/places/staticmap/location=15.179384,39.782334&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.179384,39.782334&format=gif'),
(229, '135fa511', '76d3f0d1811ac033d1cf5c939a329503', 'Estonia', 'Estonia', NULL, NULL, '58.595272,25.013607', 58.595272, 25.013607, 'country', 'maps/raw/places/staticmap/location=58.595272,25.013607&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C58.595272,25.013607&format=gif'),
(230, 'c84a84e9', '8140ae14adb3de9ef5a861dab2764e8b', 'Ethiopia', 'Ethiopia', NULL, NULL, '9.145,40.489673', 9.145000, 40.489674, 'country', 'maps/raw/places/staticmap/location=9.145,40.489673&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.145,40.489673&format=gif'),
(231, '3d1e17ae', '04f24037a97661dc777bd572dafa0023', 'Fiji', 'Fiji', NULL, NULL, '-17.713371,178.065032', -17.713371, 178.065033, 'country', 'maps/raw/places/staticmap/location=-17.713371,178.065032&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-17.713371,178.065032&format=gif'),
(232, 'e51e9f82', '87de03467ea6b58a3b022559e8b40ddd', 'Finland', 'Finland', NULL, NULL, '61.92411,25.748151', 61.924110, 25.748152, 'country', 'maps/raw/places/staticmap/location=61.92411,25.748151&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C61.92411,25.748151&format=gif'),
(233, 'cbc997a0', '044b173ce8d9539bc8dbbc394307897f', 'Gabon', 'Gabon', NULL, NULL, '-0.803689,11.609444', -0.803689, 11.609444, 'country', 'maps/raw/places/staticmap/location=-0.803689,11.609444&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.803689,11.609444&format=gif'),
(234, '6f657851', 'c950494edc402f0c10fea62af80aa3b5', 'The Gambia', 'The Gambia', NULL, NULL, '13.443182,-15.310139', 13.443182, -15.310139, 'country', 'maps/raw/places/staticmap/location=13.443182,-15.310139&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C13.443182,-15.310139&format=gif'),
(235, '2f60eddb', '59dcf465e0e5900551061cf59d796544', 'Georgia', 'Georgia', NULL, NULL, '42.315407,43.356892', 42.315407, 43.356892, 'country', 'maps/raw/places/staticmap/location=42.315407,43.356892&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.315407,43.356892&format=gif'),
(236, '9e422f6d', '20dc11057c3341b1036a74c15d47627c', 'Ghana', 'Ghana', NULL, NULL, '7.946527,-1.023194', 7.946527, -1.023194, 'country', 'maps/raw/places/staticmap/location=7.946527,-1.023194&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C7.946527,-1.023194&format=gif'),
(237, 'ff25b87c', '820086a60a1146ddfbcf953dec6bc27b', 'United Kingdom', 'United Kingdom', NULL, NULL, '55.378051,-3.435973', 55.378052, -3.435973, 'country', 'maps/raw/places/staticmap/location=55.378051,-3.435973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.378051,-3.435973&format=gif'),
(238, 'f5f12a94', 'a9dc361d24bb2f690858a6d3d1f734fe', 'Grenada', 'Grenada', NULL, NULL, '12.1165,-61.679', 12.116500, -61.679001, 'country', 'maps/raw/places/staticmap/location=12.1165,-61.679&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.1165,-61.679&format=gif'),
(239, '2cf61a8b', 'dbabbfc561271d0b23484d19bff8198e', 'Guatemala', 'Guatemala', NULL, NULL, '15.783471,-90.230759', 15.783471, -90.230759, 'country', 'maps/raw/places/staticmap/location=15.783471,-90.230759&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.783471,-90.230759&format=gif'),
(240, '0776e2cd', '13a73077ed2fb2cfbe517d918b0c57c4', 'Guatemala City', 'Guatemala City, Guatemala', NULL, NULL, '14.613333,-90.535278', 14.613333, -90.535278, 'locality', 'maps/raw/places/staticmap/location=14.613333,-90.535278&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.613333,-90.535278&format=gif'),
(241, '736fe142', 'd93b1f0bc8b39393f0bf44d894575984', 'Guatemala', 'Guatemala, Guatemala', NULL, NULL, '14.7514999,-90.5257823', 14.751500, -90.525780, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=14.7514999,-90.5257823&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.7514999,-90.5257823&format=gif'),
(242, '8089ca32', '78267cb10c974cabcda3ef1328e40734', 'Guinea-Bissau', 'Guinea-Bissau', NULL, NULL, '11.803749,-15.180413', 11.803749, -15.180413, 'country', 'maps/raw/places/staticmap/location=11.803749,-15.180413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C11.803749,-15.180413&format=gif'),
(243, '0703ccb8', '907ca847f4b769b70f9ad1c46fcddab1', 'Guyana', 'Guyana', NULL, NULL, '4.860416,-58.93018', 4.860416, -58.930180, 'country', 'maps/raw/places/staticmap/location=4.860416,-58.93018&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C4.860416,-58.93018&format=gif'),
(244, 'ffa384e0', 'eb9eeee1875df91c55259bf1296886bf', 'Haiti', 'Haiti', NULL, NULL, '18.971187,-72.285215', 18.971188, -72.285217, 'country', 'maps/raw/places/staticmap/location=18.971187,-72.285215&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.971187,-72.285215&format=gif'),
(245, '90ba3344', '953e207b6386385fd5539e52ba0ac8ff', 'Honduras', 'Honduras', NULL, NULL, '15.199999,-86.241905', 15.199999, -86.241905, 'country', 'maps/raw/places/staticmap/location=15.199999,-86.241905&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.199999,-86.241905&format=gif'),
(246, 'ea12496e', 'ed3f7e6c11706c707c579866fcbc7830', 'Hungary', 'Hungary', NULL, NULL, '47.162494,19.503304', 47.162495, 19.503304, 'country', 'maps/raw/places/staticmap/location=47.162494,19.503304&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.162494,19.503304&format=gif'),
(247, '62be2d6c', '5e5a9b945db9e1877b5ff06952261fe5', 'Iceland', 'Iceland', NULL, NULL, '64.963051,-19.020835', 64.963051, -19.020836, 'country', 'maps/raw/places/staticmap/location=64.963051,-19.020835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C64.963051,-19.020835&format=gif'),
(248, '8509cf6b', '2e87dc75195f57b0a0b4bc1c27a47a6e', 'Indonesia', 'Indonesia', NULL, NULL, '-0.789275,113.921327', -0.789275, 113.921326, 'country', 'maps/raw/places/staticmap/location=-0.789275,113.921327&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.789275,113.921327&format=gif'),
(249, 'd40be3c8', '9436bd2bf63d552ddec14015a9711503', 'Iraq', 'Iraq', NULL, NULL, '33.223191,43.679291', 33.223190, 43.679291, 'country', 'maps/raw/places/staticmap/location=33.223191,43.679291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.223191,43.679291&format=gif'),
(250, '2d7944c1', '97e7534b3d35c7e69d6947014d3b6651', 'Ireland', 'Ireland', NULL, NULL, '53.41291,-8.24389', 53.412910, -8.243890, 'country', 'maps/raw/places/staticmap/location=53.41291,-8.24389&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.41291,-8.24389&format=gif'),
(251, '78bb61d9', 'b4a201c0426b5593dbf404834a9ec665', 'Israel', 'Israel', NULL, NULL, '31.046051,34.851612', 31.046051, 34.851612, 'country', 'maps/raw/places/staticmap/location=31.046051,34.851612&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.046051,34.851612&format=gif'),
(252, '6bf96a97', 'dfdedb3da96bf7449960c3b0e6656929', 'Jamaica', 'Jamaica', NULL, NULL, '18.109581,-77.297508', 18.109581, -77.297508, 'country', 'maps/raw/places/staticmap/location=18.109581,-77.297508&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.109581,-77.297508&format=gif'),
(253, '2522ca5c', '7b83e1e1ad4c197fcf9a440237f6f146', 'Jordan', 'Jordan', NULL, NULL, '30.585164,36.238414', 30.585163, 36.238415, 'country', 'maps/raw/places/staticmap/location=30.585164,36.238414&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.585164,36.238414&format=gif'),
(254, 'ba4e2f0f', '99a4d62e9c9b5a4b9eb4936d23f7b143', 'Kazakhstan', 'Kazakhstan', NULL, NULL, '48.019573,66.923684', 48.019573, 66.923683, 'country', 'maps/raw/places/staticmap/location=48.019573,66.923684&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C48.019573,66.923684&format=gif'),
(255, '674e1079', 'a96aacb5f5a53d8ba10ef1c8ab445f3c', 'Kenya', 'Kenya', NULL, NULL, '-0.023559,37.906193', -0.023559, 37.906193, 'country', 'maps/raw/places/staticmap/location=-0.023559,37.906193&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.023559,37.906193&format=gif'),
(256, 'f15dd034', '2a41674ced1331be6e7fe32a7470d676', 'Kiribati', 'Kiribati', NULL, NULL, '1.8709185,-157.3626011', 1.870918, -157.362595, 'country', 'maps/raw/places/staticmap/location=1.8709185,-157.3626011&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.8709185,-157.3626011&format=gif'),
(257, 'c648b887', '4f1db3f53742a5545a075b4bf7412dab', 'North Korea', 'North Korea', NULL, NULL, '40.339852,127.510093', 40.339851, 127.510094, 'country', 'maps/raw/places/staticmap/location=40.339852,127.510093&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.339852,127.510093&format=gif'),
(258, '3d36c033', '21a00676690d8fe930bcea25899847d2', 'South Korea', 'South Korea', NULL, NULL, '35.907757,127.766922', 35.907757, 127.766922, 'country', 'maps/raw/places/staticmap/location=35.907757,127.766922&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.907757,127.766922&format=gif'),
(259, '906f3258', '684a8fdbca7b5c06686aff71a3abd575', 'Kuwait', 'Kuwait', NULL, NULL, '29.31166,47.481766', 29.311661, 47.481766, 'country', 'maps/raw/places/staticmap/location=29.31166,47.481766&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.31166,47.481766&format=gif'),
(260, '5eb9cb60', 'f5386375d083f17bf89ec4ea9290a565', 'Kuwait City', 'Kuwait City, Kuwait', NULL, NULL, '29.375859,47.9774052', 29.375858, 47.977406, 'locality', 'maps/raw/places/staticmap/location=29.375859,47.9774052&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.375859,47.9774052&format=gif'),
(261, 'e2eaac98', 'fa5f6dd3e9d46b883bf7e7967d11b2a4', 'Al Asimah', 'Al Asimah, Kuwait', NULL, NULL, '29.3342457,47.9812152', 29.334246, 47.981216, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=29.3342457,47.9812152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.3342457,47.9812152&format=gif'),
(262, '6cf74f7b', 'de4ceec312c6496049d1af26cb775426', 'Kyrgyzstan', 'Kyrgyzstan', NULL, NULL, '41.20438,74.766098', 41.204380, 74.766098, 'country', 'maps/raw/places/staticmap/location=41.20438,74.766098&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.20438,74.766098&format=gif'),
(263, '05278411', 'c6d0ee58bbf76e7ff6e13f9f57ae1240', 'Laos', 'Laos', NULL, NULL, '19.85627,102.495496', 19.856270, 102.495499, 'country', 'maps/raw/places/staticmap/location=19.85627,102.495496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.85627,102.495496&format=gif'),
(264, 'e74dee99', '169f3a30a83bb00f40836954419112da', 'Latvia', 'Latvia', NULL, NULL, '56.879635,24.603189', 56.879635, 24.603189, 'country', 'maps/raw/places/staticmap/location=56.879635,24.603189&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.879635,24.603189&format=gif'),
(265, '9b15da14', '371f4410b68b8163060d91c2c6634631', 'Lebanon', 'Lebanon', NULL, NULL, '33.854721,35.862285', 33.854721, 35.862286, 'country', 'maps/raw/places/staticmap/location=33.854721,35.862285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.854721,35.862285&format=gif'),
(266, '4716f0c4', '982c200a0d21927d43585a330343b201', 'Lesotho', 'Lesotho', NULL, NULL, '-29.609988,28.233608', -29.609987, 28.233608, 'country', 'maps/raw/places/staticmap/location=-29.609988,28.233608&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-29.609988,28.233608&format=gif'),
(267, 'f11b7b14', '275d9b11b81705e6229cfc74df1b3758', 'Liberia', 'Liberia', NULL, NULL, '6.428055,-9.429499', 6.428055, -9.429499, 'country', 'maps/raw/places/staticmap/location=6.428055,-9.429499&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.428055,-9.429499&format=gif'),
(268, '58674b0e', 'ea64e190a9531c5bc33e8fc5490c7027', 'Libya', 'Libya', NULL, NULL, '26.3351,17.228331', 26.335100, 17.228331, 'country', 'maps/raw/places/staticmap/location=26.3351,17.228331&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.3351,17.228331&format=gif'),
(269, '183d4408', 'f6abf617bad6f5fda2b2810bd84e37d0', 'Liechtenstein', 'Liechtenstein', NULL, NULL, '47.166,9.555373', 47.166000, 9.555373, 'country', 'maps/raw/places/staticmap/location=47.166,9.555373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.166,9.555373&format=gif'),
(270, '8cadac0d', 'a20de85cea357d4fa9063c3fd5f08032', 'Lithuania', 'Lithuania', NULL, NULL, '55.169438,23.881275', 55.169437, 23.881275, 'country', 'maps/raw/places/staticmap/location=55.169438,23.881275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C55.169438,23.881275&format=gif'),
(271, '451fe768', '49fb2ecf37f4b88bd16adf03802cbde7', 'Luxembourg', 'Luxembourg', NULL, NULL, '49.815273,6.129583', 49.815273, 6.129583, 'country', 'maps/raw/places/staticmap/location=49.815273,6.129583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C49.815273,6.129583&format=gif'),
(272, '3abfc6bf', '0177849912865ee7cdb53be7f42a434a', 'Macedonia (FYROM)', 'Macedonia (FYROM)', NULL, NULL, '41.608635,21.745275', 41.608635, 21.745275, 'country', 'maps/raw/places/staticmap/location=41.608635,21.745275&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.608635,21.745275&format=gif'),
(273, '95f5c679', 'f1484e4f3f1eb2032a1d07562c82c53c', 'Madagascar', 'Madagascar', NULL, NULL, '-18.766947,46.869107', -18.766947, 46.869106, 'country', 'maps/raw/places/staticmap/location=-18.766947,46.869107&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-18.766947,46.869107&format=gif'),
(274, '8cf07ecd', '97d4c1cf55d6119630926886af5357c8', 'Malawi', 'Malawi', NULL, NULL, '-13.254308,34.301525', -13.254308, 34.301525, 'country', 'maps/raw/places/staticmap/location=-13.254308,34.301525&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-13.254308,34.301525&format=gif'),
(275, '1b6ec2a7', '71e0c68a01651fe37f22ce9a9dd00bfd', 'Maldives', 'Maldives', NULL, NULL, '1.977247,73.5361034', 1.977247, 73.536102, 'country', 'maps/raw/places/staticmap/location=1.977247,73.5361034&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.977247,73.5361034&format=gif'),
(276, 'c7ef99dc', '35d31c506384eb77a2e3cb2e0b7d5194', 'Mali', 'Mali', NULL, NULL, '17.570692,-3.996166', 17.570692, -3.996166, 'country', 'maps/raw/places/staticmap/location=17.570692,-3.996166&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.570692,-3.996166&format=gif'),
(277, 'd2b4cfa9', '240fb2659a32c903bebcb2229c8f1af1', 'Malta', 'Malta', NULL, NULL, '35.937496,14.375416', 35.937496, 14.375416, 'country', 'maps/raw/places/staticmap/location=35.937496,14.375416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.937496,14.375416&format=gif'),
(278, '9baec459', '5dc965bac0ed5f6e3303aa07082f3f91', 'Mauritania', 'Mauritania', NULL, NULL, '21.00789,-10.940835', 21.007891, -10.940835, 'country', 'maps/raw/places/staticmap/location=21.00789,-10.940835&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.00789,-10.940835&format=gif'),
(279, '3926c017', 'a6736ecdfea49ba77d89d87a92567a42', 'Mauritius', 'Mauritius', NULL, NULL, '-20.348404,57.552152', -20.348404, 57.552151, 'country', 'maps/raw/places/staticmap/location=-20.348404,57.552152&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-20.348404,57.552152&format=gif'),
(280, 'b8ca8ac4', 'fc0030c802ece0cac7bff4d31b0a71d1', 'Micronesia', 'Micronesia', NULL, NULL, '6.8874813,158.2150717', 6.887481, 158.215073, 'country', 'maps/raw/places/staticmap/location=6.8874813,158.2150717&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.8874813,158.2150717&format=gif'),
(281, '30999596', '5325d75157b9e217f1f9cbc9866ec067', 'Moldova', 'Moldova', NULL, NULL, '47.411631,28.369885', 47.411633, 28.369884, 'country', 'maps/raw/places/staticmap/location=47.411631,28.369885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.411631,28.369885&format=gif'),
(282, 'c26490cd', '74a70bff99564bdf2d64825208af19be', 'Monaco', 'Monaco', NULL, NULL, '43.7384176,7.4246158', 43.738419, 7.424616, 'country', 'maps/raw/places/staticmap/location=43.7384176,7.4246158&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.7384176,7.4246158&format=gif'),
(283, '34d960c4', 'cd6bbb5f55ed531ca34df1aa92032bb7', 'Mongolia', 'Mongolia', NULL, NULL, '46.862496,103.846656', 46.862495, 103.846657, 'country', 'maps/raw/places/staticmap/location=46.862496,103.846656&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C46.862496,103.846656&format=gif'),
(284, '8ffb98cd', 'caf1f3b4146040e3beee06acb61adeb8', 'Morocco', 'Morocco', NULL, NULL, '31.791702,-7.09262', 31.791702, -7.092620, 'country', 'maps/raw/places/staticmap/location=31.791702,-7.09262&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.791702,-7.09262&format=gif'),
(285, '7e900a71', '1d3f1297a35bb0d0db037e3e8abb35fd', 'Namibia', 'Namibia', NULL, NULL, '-22.95764,18.49041', -22.957640, 18.490410, 'country', 'maps/raw/places/staticmap/location=-22.95764,18.49041&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.95764,18.49041&format=gif'),
(286, '800e8cda', 'eb7676d8fcca98a1f350cb1f99655fa8', 'Nauru', 'Nauru', NULL, NULL, '-0.522778,166.931503', -0.522778, 166.931503, 'country', 'maps/raw/places/staticmap/location=-0.522778,166.931503&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.522778,166.931503&format=gif'),
(287, 'a1b3a1ac', '92ba5bcd36f905c753b09f49120816b8', 'Nepal', 'Nepal', NULL, NULL, '28.394857,84.124008', 28.394857, 84.124008, 'country', 'maps/raw/places/staticmap/location=28.394857,84.124008&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.394857,84.124008&format=gif'),
(288, '775538b8', '45dd0a932c4cef5b75bbb14d3a8193df', 'Silicon Institute of Technology', 'Silicon Hills, Patia,, Near Infocity, Bhubaneswar, Odisha 751024, India', NULL, NULL, '20.351478,85.805739', 20.351479, 85.805740, 'point_of_interest', 'maps/raw/places/staticmap/location=20.351478,85.805739&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.351478,85.805739&format=gif'),
(289, '7d91101b', 'c3305c757123440fbd605ed11bc25e4a', 'Silicon Systems', '73 Sydney St, Petone, Petone 5012, New Zealand', NULL, NULL, '-41.221806,174.877263', -41.221806, 174.877258, 'store', 'maps/raw/places/staticmap/location=-41.221806,174.877263&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-41.221806,174.877263&format=gif'),
(290, '23bffd9f', 'b7232fe5d760cb7579484fa0f973107a', 'The Silicon Group', '95 Whins Road, Alloa, Clackmannanshire FK10 3RF, United Kingdom', NULL, NULL, '56.119976,-3.781696', 56.119976, -3.781696, 'electronics_store', 'maps/raw/places/staticmap/location=56.119976,-3.781696&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C56.119976,-3.781696&format=gif'),
(291, '9dc43f7c', 'a9fbf3a39784ec649dc43485a6a912eb', 'SILICON Refractory Anchors Systems BV', 'Monsterseweg 2, 2291 PB Wateringen, Netherlands', NULL, NULL, '52.012729,4.285951', 52.012730, 4.285951, 'point_of_interest', 'maps/raw/places/staticmap/location=52.012729,4.285951&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C52.012729,4.285951&format=gif'),
(292, '7b47c188', '6559ba968045f8785a1e9c8ddfe6f281', 'Silicon Image Inc', '1140 East Arques Avenue, Sunnyvale, CA 94085, United States', NULL, NULL, '37.378644,-121.998338', 37.378643, -121.998337, 'establishment', 'maps/raw/places/staticmap/location=37.378644,-121.998338&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.378644,-121.998338&format=gif'),
(293, 'b9de58f3', '6534f022ba75da12fba1820a88da9489', 'Silicon Laboratories', '400 West Cesar Chavez, Austin, TX 78701, United States', NULL, NULL, '30.264902,-97.74848', 30.264902, -97.748482, 'establishment', 'maps/raw/places/staticmap/location=30.264902,-97.74848&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.264902,-97.74848&format=gif'),
(294, 'cd06447a', '719684ba4eebb156a1a5538d26d349f9', 'Silicon Valley Community Foundation', '2440 West El Camino Real #300, Mountain View, CA 94040, United States', NULL, NULL, '37.399306,-122.107726', 37.399307, -122.107727, 'establishment', 'maps/raw/places/staticmap/location=37.399306,-122.107726&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.399306,-122.107726&format=gif'),
(295, '954c4bd4', 'fe32014adf75aec2c8906f9387d05b7f', 'Silicon Valley Bank', '3000 Sand Hill Road #150, Menlo Park, CA 94025, United States', NULL, NULL, '37.423233,-122.22078', 37.423233, -122.220779, 'bank', 'maps/raw/places/staticmap/location=37.423233,-122.22078&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.423233,-122.22078&format=gif'),
(296, 'ef3d5fce', 'a36662a5d07a180b809b7bac68ed6af7', 'Humane Society Silicon Valley', '901 Ames Avenue, Milpitas, CA 95035, United States', NULL, NULL, '37.421038,-121.88692', 37.421040, -121.886917, 'park', 'maps/raw/places/staticmap/location=37.421038,-121.88692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.421038,-121.88692&format=gif'),
(297, '3a09e0af', 'f1299ad069e1fcd2aff77150c4456862', 'Open-Silicon Inc', '203 Turnpike Street #407, North Andover, MA 01845, United States', NULL, NULL, '42.673663,-71.127348', 42.673664, -71.127350, 'establishment', 'maps/raw/places/staticmap/location=42.673663,-71.127348&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.673663,-71.127348&format=gif'),
(298, '58fef619', '1874ed9008248e05d65e4d2f350de620', 'Silicon Valley Bank', '504 Lavaca Street #1100, Austin, TX 78731, United States', NULL, NULL, '30.26823,-97.746024', 30.268230, -97.746025, 'bank', 'maps/raw/places/staticmap/location=30.26823,-97.746024&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.26823,-97.746024&format=gif'),
(299, '5f75e9bb', '64ffcb4aa06bae53dcf3ddbf9e3b4c9f', 'Dubai Silicon Oasis', 'Emirates-Al Ain road intersection, Exit 44 - P.O. Box 6009 - Dubai - United Arab Emirates', NULL, NULL, '25.124596,55.380921', 25.124596, 55.380920, 'point_of_interest', 'maps/raw/places/staticmap/location=25.124596,55.380921&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.124596,55.380921&format=gif'),
(300, 'b6b33710', '7033cda123e7729dd6c34875f2121671', 'Carnegie Mellon University - Silicon Valley Campus', 'NASA Research Park, Bldg 23, Moffett Field, CA 94035, United States', NULL, NULL, '37.41043,-122.059753', 37.410431, -122.059753, 'university', 'maps/raw/places/staticmap/location=37.41043,-122.059753&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.41043,-122.059753&format=gif'),
(301, 'bac87e4d', 'b9fd2abe6e0dab436cd111036d93816f', 'Silicon Valley Bank', '3005 Tasman Drive, Santa Clara, CA 95054, United States', NULL, NULL, '37.404229,-121.983223', 37.404228, -121.983223, 'bank', 'maps/raw/places/staticmap/location=37.404229,-121.983223&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.404229,-121.983223&format=gif'),
(302, 'dbad6384', '3e4dd7b0e9783bcf97263601d2e20b09', 'Silicon Valley Community Foundation', '1300 South El Camino Real #100, San Mateo, CA 94402, United States', NULL, NULL, '37.554596,-122.317123', 37.554596, -122.317123, 'point_of_interest', 'maps/raw/places/staticmap/location=37.554596,-122.317123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.554596,-122.317123&format=gif'),
(303, 'f4f58ae1', '515edbc3413a3a231a4947380d55bdd4', 'Four Seasons Hotel Silicon Valley at East Palo Alto', '2050 University Avenue, East Palo Alto, CA 94303, United States', NULL, NULL, '37.460371,-122.142267', 37.460369, -122.142265, 'lodging', 'maps/raw/places/staticmap/location=37.460371,-122.142267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.460371,-122.142267&format=gif'),
(304, '2448d261', 'da74b638ff1f3613de12f0fcc887ba5b', 'Silicon Mechanics', '22029 23rd Drive Southeast, Bothell, WA 98021, United States', NULL, NULL, '47.799012,-122.200677', 47.799011, -122.200676, 'electronics_store', 'maps/raw/places/staticmap/location=47.799012,-122.200677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.799012,-122.200677&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(305, 'e2ddb6d9', 'c56f61d350d9488ce3797b9f4193f416', 'Silicon Valley Bank', '380 Interlocken Boulevard # 600, Broomfield, CO 80021, United States', NULL, NULL, '39.923649,-105.114121', 39.923649, -105.114120, 'bank', 'maps/raw/places/staticmap/location=39.923649,-105.114121&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.923649,-105.114121&format=gif'),
(306, '31385006', '0bafd06f04e79e255206a5af6c56ad24', 'Silicon Valley Capital Club', '50 West San Fernando Street, San Jose, CA 95113, United States', NULL, NULL, '37.3338,-121.889177', 37.333801, -121.889175, 'night_club', 'maps/raw/places/staticmap/location=37.3338,-121.889177&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.3338,-121.889177&format=gif'),
(307, 'a5aaf23e', 'e26dce5abc8cdb9e0f9a0442201a194b', 'Silicon Valley Bank', '11th floor, 505 5th Avenue, New York, NY 10017, United States', NULL, NULL, '40.7536,-73.980455', 40.753601, -73.980453, 'bank', 'maps/raw/places/staticmap/location=40.7536,-73.980455&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.7536,-73.980455&format=gif'),
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', NULL, NULL, '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif'),
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', NULL, NULL, '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', NULL, NULL, '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', NULL, NULL, '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', NULL, NULL, '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', NULL, NULL, '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', NULL, NULL, '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif'),
(315, 'acb1b726', '63f259be8b7ce65fd91e1a63bc42aa33', 'SILICON', 'SILICON, Old Delhi Gurgaon Rd, Palam Vihar Extension, Gurgaon, Haryana 122015, India', NULL, NULL, '28.494636,77.060247', 28.494637, 77.060249, 'point_of_interest', 'maps/raw/places/staticmap/location=28.494636,77.060247&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.494636,77.060247&format=gif'),
(316, '25434af8', 'c1d2a795875dcf0950b2d51b1a19dc11', 'SILICON', 'SILICON, Sandhu Apartment, Kalasiguda, Secunderabad, Telangana 500003, India', NULL, NULL, '17.440788,78.4893322', 17.440788, 78.489334, 'point_of_interest', 'maps/raw/places/staticmap/location=17.440788,78.4893322&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.440788,78.4893322&format=gif'),
(317, 'af3a06e0', '655ff479e1efec9f7b42cd2c5aa1acc1', 'Silicon', '33 & 34, Silicon, Rajarhat Rd, Teghoria, Chinar Park, Kolkata, West Bengal 700059, India', NULL, NULL, '22.623233,88.4402703', 22.623234, 88.440269, 'point_of_interest', 'maps/raw/places/staticmap/location=22.623233,88.4402703&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.623233,88.4402703&format=gif'),
(318, 'b5a0ee3a', '3cb4066a8aef1b6979a1fbdb5a9840c6', 'Silicon', 'Silicon, 42, Chirag Ali Lane, Abids, Hyderabad, Telangana 500001, India', NULL, NULL, '17.3920699,78.4750132', 17.392071, 78.475014, 'point_of_interest', 'maps/raw/places/staticmap/location=17.3920699,78.4750132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.3920699,78.4750132&format=gif'),
(319, '9a7ab9bb', '623a00e4e72ebd080480049b059a4733', 'Silicon', '150, Silicon, Santoshpur Ave, Adipally Santoshpur, Adipally, Santoshpur, Kolkata, West Bengal 700075, India', NULL, NULL, '22.492764,88.3881241', 22.492764, 88.388123, 'point_of_interest', 'maps/raw/places/staticmap/location=22.492764,88.3881241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.492764,88.3881241&format=gif'),
(320, 'ff493730', '3c0edf8e0d748326a21e9a124329ec5e', 'Silicon', 'Silicon, Gandhi Nagar Airport Area, Deolali Gaon, Nashik, Maharashtra 422101, India', NULL, NULL, '19.966942,73.811264', 19.966942, 73.811264, 'point_of_interest', 'maps/raw/places/staticmap/location=19.966942,73.811264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.966942,73.811264&format=gif'),
(321, '6f964250', 'c623aa7c5f3e5931a8640b9d41bdb610', 'Silicon', 'Silicon, Mangalwar Peth, Kasba Peth, Pune, Maharashtra 411011, India', NULL, NULL, '18.522504,73.866417', 18.522505, 73.866417, 'home_goods_store', 'maps/raw/places/staticmap/location=18.522504,73.866417&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.522504,73.866417&format=gif'),
(322, '533f60a2', '48d2d79219e5e9fd72d5088e14b09a1d', 'Silicon', 'Silicon, Devi Colony, Bank colony, Bidar, Karnataka 585401, India', NULL, NULL, '17.9211958,77.5088561', 17.921196, 77.508858, 'point_of_interest', 'maps/raw/places/staticmap/location=17.9211958,77.5088561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C17.9211958,77.5088561&format=gif'),
(323, '3e108168', '47bfa6c0e474f7a581871dc34e553d81', 'WaleÃ½', 'DeodÃ¡polis, State of Mato Grosso do Sul, 79790-000, Brazil', NULL, NULL, '-22.216807,-54.128386', -22.216806, -54.128387, 'point_of_interest', 'maps/raw/places/staticmap/location=-22.216807,-54.128386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.216807,-54.128386&format=gif'),
(324, '25d307f2', '87b1fde624e640324fbcbaae284ecc02', 'Waley', 'Al Hadrah Qebli, Qesm Bab Sharqi, Alexandria Governorate, Egypt', NULL, NULL, '31.201784,29.932156', 31.201784, 29.932156, 'clothing_store', 'maps/raw/places/staticmap/location=31.201784,29.932156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.201784,29.932156&format=gif'),
(325, '039fa487', '419dec8f0860a51f51ffd0b091515d4b', 'Waley Insurance', '202 North Brushy Street, Leander, TX 78641, United States', NULL, NULL, '30.579629,-97.854328', 30.579630, -97.854324, 'insurance_agency', 'maps/raw/places/staticmap/location=30.579629,-97.854328&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.579629,-97.854328&format=gif'),
(326, 'fe80efb5', '466bfbc25f4483fe5f3699fbb8435585', 'Waley Elahed', 'Hadaeq Al Qubbah, Hadaeq Al Qubbah, Cairo Governorate, Egypt', NULL, NULL, '30.088228,31.284521', 30.088228, 31.284521, 'pharmacy', 'maps/raw/places/staticmap/location=30.088228,31.284521&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.088228,31.284521&format=gif'),
(327, '8fdeb1c7', '0d47893fab181d0670ea863faf4478eb', 'Jagram Ganga Sahay Oshadhiyo Waley', 'Shop No:362, Tripolia Bazar, Modikhana, Jaipur, Rajasthan 302002, India', NULL, NULL, '26.924261,75.819931', 26.924261, 75.819931, 'store', 'maps/raw/places/staticmap/location=26.924261,75.819931&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.924261,75.819931&format=gif'),
(328, '346256e5', '1cea7d5ca5725d33a31b8b77a2de3235', 'Waley J Moreira', 'Rua EspÃ­rito Santo, 466 - Centro, Belo Horizonte - MG, 30160-030, Brazil', NULL, NULL, '-19.918744,-43.937238', -19.918743, -43.937237, 'lawyer', 'maps/raw/places/staticmap/location=-19.918744,-43.937238&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-19.918744,-43.937238&format=gif'),
(329, '78ab011c', '206be94f575659473214b65a1603c3a6', 'Dharam Chand Banarsi Dass Jain Sialkote Button Waley', '469, Bartan Market, Sadar Bazaar, Sadar Bazaar, New Delhi, Delhi 110006, India', NULL, NULL, '28.654092,77.208899', 28.654093, 77.208900, 'point_of_interest', 'maps/raw/places/staticmap/location=28.654092,77.208899&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.654092,77.208899&format=gif'),
(330, 'e4a1f61d', '819638df2ab98f7d6bc059a759790977', 'Safa Waley Raja Khan', 'Kotwali Road, Moti Nagar, Sagar, Madhya Pradesh 470002, India', NULL, NULL, '23.837239,78.739952', 23.837238, 78.739952, 'shopping_mall', 'maps/raw/places/staticmap/location=23.837239,78.739952&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C23.837239,78.739952&format=gif'),
(331, 'ca58cb5b', '341b367f1255c427c3d58fdf110266e7', 'Jhandey Waley Shukla, Om Nagar', 'Pawanpuri, Alambagh, Lucknow, Uttar Pradesh 226005, India', NULL, NULL, '26.813998,80.909307', 26.813997, 80.909309, 'point_of_interest', 'maps/raw/places/staticmap/location=26.813998,80.909307&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.813998,80.909307&format=gif'),
(332, 'a18e5283', '7687aac4cc820971371c164463491810', 'shanno bhai parathey waley seelampur', 'New Seelampur Phase II, Shahdara, New Delhi, Delhi 110031, India', NULL, NULL, '28.674864,77.266341', 28.674864, 77.266342, 'restaurant', 'maps/raw/places/staticmap/location=28.674864,77.266341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C28.674864,77.266341&format=gif'),
(333, '2be4c520', '7d10b47bb4c36e2d5c61a8d415bad7e9', 'Waley Elneem', 'Al Gamaleyah, Qesm Gamaleyah, Cairo Governorate, Egypt', NULL, NULL, '30.047109,31.262291', 30.047110, 31.262291, 'establishment', 'maps/raw/places/staticmap/location=30.047109,31.262291&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.047109,31.262291&format=gif'),
(334, 'c56f56cd', '78c47207ba4828f6f2e10b19025edd59', 'Bhagatji Silicate waley', 'Freeganj Road, Belanganj, Civil Lines, Agra, Uttar Pradesh 282004, India', NULL, NULL, '27.195385,78.018057', 27.195385, 78.018059, 'point_of_interest', 'maps/raw/places/staticmap/location=27.195385,78.018057&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.195385,78.018057&format=gif'),
(335, '2d9045f6', 'cae7d795ae1b30996db7ef6b0b676ed4', 'Waley Elneem', 'An Nahdah, Qesm as Salam, Cairo Governorate, Egypt', NULL, NULL, '30.173999,31.445373', 30.174000, 31.445374, 'establishment', 'maps/raw/places/staticmap/location=30.173999,31.445373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.173999,31.445373&format=gif'),
(336, '8b0c012c', '062dec8a863c6e5d47c6691967cb77ce', 'Waley Elneem', 'Shagret Mariem, Qesm Al Matareyah, Cairo Governorate, Egypt', NULL, NULL, '30.124706,31.303858', 30.124706, 31.303858, 'restaurant', 'maps/raw/places/staticmap/location=30.124706,31.303858&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.124706,31.303858&format=gif'),
(337, '286556ad', '7de09734ffed0610c146678c02ce8826', 'Chadha Ram Waley', 'Street No-6, Cheema Chowk, Janak Puri, Ludhiana, Punjab 141003, India', NULL, NULL, '30.9015,75.86893', 30.901501, 75.868927, 'store', 'maps/raw/places/staticmap/location=30.9015,75.86893&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.9015,75.86893&format=gif'),
(338, '22ae42f5', 'b78d00ac3afd5bb749f141e51d17b877', 'Mr. Waley Tailoring Shop', 'Oluwole, Ikeja, Nigeria', NULL, NULL, '6.629462,3.342317', 6.629462, 3.342317, 'store', 'maps/raw/places/staticmap/location=6.629462,3.342317&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C6.629462,3.342317&format=gif'),
(339, '16132fb2', 'be775fbe40aab2bffdd29b2a0dab7369', 'Ram Gopal Jagdish Prasad Bartan Waley', 'Sujanpura Road, Alambagh, Lucknow, Uttar Pradesh 226005, India', NULL, NULL, '26.817091,80.909616', 26.817091, 80.909615, 'establishment', 'maps/raw/places/staticmap/location=26.817091,80.909616&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.817091,80.909616&format=gif'),
(340, '75f6cc55', '6f5a070cc5ebbced3695acf818a79a8b', 'Kishore Kumar Bhas Wali Waley', 'Maruti Estate Road, Maruti Estate, Near Simpkins School, Shahganj, Agra, Uttar Pradesh 282010, India', NULL, NULL, '27.1827,77.967306', 27.182699, 77.967308, 'store', 'maps/raw/places/staticmap/location=27.1827,77.967306&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C27.1827,77.967306&format=gif'),
(341, '87682d9a', 'f1070af3cb81876c91b9ce07d9462b9e', 'Mohammad Anees Baksey Waley', 'Takrohi Road, Indra Nagar, Amrai Gaon, Naubasta Kala, Uttar Pradesh 226016, India', NULL, NULL, '26.912245,81.027333', 26.912245, 81.027336, 'furniture_store', 'maps/raw/places/staticmap/location=26.912245,81.027333&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.912245,81.027333&format=gif'),
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', NULL, NULL, '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif'),
(343, '638adaf8', '93561240a1e8ba2c7740bff2833f016a', 'Raza Telecom', '5219 North Harlem Avenue, Chicago, IL 60656, United States', NULL, NULL, '41.976124,-87.806798', 41.976124, -87.806801, 'establishment', 'maps/raw/places/staticmap/location=41.976124,-87.806798&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.976124,-87.806798&format=gif'),
(344, '801ac887', 'c1c566a7a2204da63b8b3c4aa9865845', 'National Council of La Raza', '1126 16th Street Northwest #600, Washington, DC 20036, United States', NULL, NULL, '38.904482,-77.036901', 38.904484, -77.036903, 'point_of_interest', 'maps/raw/places/staticmap/location=38.904482,-77.036901&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.904482,-77.036901&format=gif'),
(345, '97e0a7ab', 'd80a50307a6d760b34fb9dc9554250be', 'Raza Communication', '991 Albion Road, Etobicoke, ON M9V 1A6, Canada', NULL, NULL, '43.736381,-79.563781', 43.736382, -79.563782, 'establishment', 'maps/raw/places/staticmap/location=43.736381,-79.563781&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.736381,-79.563781&format=gif'),
(346, '80268c2b', 'adf2fc1c53c68a7ec75c2d7484624173', 'National Council of La Raza', '318 West 39th Street #5, New York, NY 10018, United States', NULL, NULL, '40.755737,-73.992526', 40.755737, -73.992523, 'establishment', 'maps/raw/places/staticmap/location=40.755737,-73.992526&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.755737,-73.992526&format=gif'),
(347, '4de0bd61', '2456b77f751caef40e226a035af5e6c2', 'National Council of La Raza', '1107 9th Street #230, Sacramento, CA 95814, United States', NULL, NULL, '38.579175,-121.495257', 38.579174, -121.495255, 'establishment', 'maps/raw/places/staticmap/location=38.579175,-121.495257&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.579175,-121.495257&format=gif'),
(348, 'e4524a87', '181eb783e5fbe18269a14209b0386ea6', 'National Council of La Raza', '161 North Clark Street # 4700, Chicago, IL 60601, United States', NULL, NULL, '41.884738,-87.630737', 41.884739, -87.630737, 'point_of_interest', 'maps/raw/places/staticmap/location=41.884738,-87.630737&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.884738,-87.630737&format=gif'),
(349, '62e9a31d', '4d8433032ecffa5884441ecb2a092cde', 'La Raza Centro Legal Inc', '474 Valencia Street # 295, San Francisco, CA 94103, United States', NULL, NULL, '37.765415,-122.42227', 37.765415, -122.422272, 'point_of_interest', 'maps/raw/places/staticmap/location=37.765415,-122.42227&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765415,-122.42227&format=gif'),
(350, '453a79b3', '497afea7417020ec9572ff335db7449c', 'El Centro De La Raza', '2524 16th Avenue South, Seattle, WA 98144, United States', NULL, NULL, '47.580339,-122.311325', 47.580338, -122.311325, 'establishment', 'maps/raw/places/staticmap/location=47.580339,-122.311325&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.580339,-122.311325&format=gif'),
(351, 'bd44ed0b', '4d5e62c68b7cdff08bfb4ef3ac074d30', 'Servicios De La Raza', '3131 West 14th Avenue, Denver, CO 80204, United States', NULL, NULL, '39.738883,-105.027156', 39.738884, -105.027153, 'food', 'maps/raw/places/staticmap/location=39.738883,-105.027156&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.738883,-105.027156&format=gif'),
(352, 'd5eca139', '896541606dddc9e2ffce117dd6cf796d', 'Raza Development Fund', '1 East Washington Street # 250, Phoenix, AZ 85004, United States', NULL, NULL, '33.447949,-112.072924', 33.447948, -112.072922, 'establishment', 'maps/raw/places/staticmap/location=33.447949,-112.072924&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.447949,-112.072924&format=gif'),
(353, '6b0ba7a9', '3684d00c1f505a080da5f175ee6c92f1', 'Casa De La Raza', '601 East Montecito Street, Santa Barbara, CA 93103, United States', NULL, NULL, '34.421634,-119.686095', 34.421635, -119.686096, 'health', 'maps/raw/places/staticmap/location=34.421634,-119.686095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.421634,-119.686095&format=gif'),
(354, '27e6040d', '71c0edc5bc6acf3d087db4796c863550', 'Dr. Azra Raza, MD', '161 Fort Washington Avenue #918, New York, NY 10032, United States', NULL, NULL, '40.840569,-73.943165', 40.840569, -73.943169, 'doctor', 'maps/raw/places/staticmap/location=40.840569,-73.943165&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.840569,-73.943165&format=gif'),
(355, 'a9baeff3', '94598119cbed39e4aebe0d70e4491863', 'Instituto Familiar de la Raza Inc.', '2919 Mission Street, San Francisco, CA 94110, United States', NULL, NULL, '37.750256,-122.418072', 37.750256, -122.418076, 'health', 'maps/raw/places/staticmap/location=37.750256,-122.418072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.750256,-122.418072&format=gif'),
(356, 'f4a6f944', '9aefce06a939e3b66440cfeab86de25b', 'Mehran Raza D.D.S', '3753 Mission Avenue #116, Oceanside, CA 92058, United States', NULL, NULL, '33.224337,-117.331861', 33.224339, -117.331863, 'doctor', 'maps/raw/places/staticmap/location=33.224337,-117.331861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.224337,-117.331861&format=gif'),
(357, '6a01be9f', 'aa17d7f805b7f5b9d7fbe40012aef1cb', 'La Raza Community Resource Center', '474 Valencia Street # 100, San Francisco, CA 94103, United States', NULL, NULL, '37.765453,-122.422379', 37.765453, -122.422379, 'establishment', 'maps/raw/places/staticmap/location=37.765453,-122.422379&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.765453,-122.422379&format=gif'),
(358, 'd716b804', 'd559fe1e29c6619ed508042facabc8e0', 'Dr. Catherine A. Chin, MD', '1030 International Boulevard, Oakland, CA 94606, United States', NULL, NULL, '37.791962,-122.248915', 37.791962, -122.248917, 'doctor', 'maps/raw/places/staticmap/location=37.791962,-122.248915&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791962,-122.248915&format=gif'),
(359, '90688716', '5911310040a6d66b544b6b36d0f8a935', 'La Clinica De La Raza: Rustamzadeh David DDS', '1601 Fruitvale Avenue, Oakland, CA 94601, United States', NULL, NULL, '37.77995,-122.224934', 37.779949, -122.224937, 'dentist', 'maps/raw/places/staticmap/location=37.77995,-122.224934&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.77995,-122.224934&format=gif'),
(360, '9a7f4a15', 'bed4d17e5bd8efe67ea560a0086d2d30', 'Plaza De La Raza Child Development', '8337 Telegraph Road # 300, Pico Rivera, CA 90660, United States', NULL, NULL, '33.964641,-118.113298', 33.964642, -118.113297, 'health', 'maps/raw/places/staticmap/location=33.964641,-118.113298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.964641,-118.113298&format=gif'),
(361, '25647a4c', '1fd788745df6923dbb7e10a06b278fee', 'Instituto Laboral De La Raza', '2947 16th Street, San Francisco, CA 94103, United States', NULL, NULL, '37.764955,-122.418554', 37.764954, -122.418556, 'establishment', 'maps/raw/places/staticmap/location=37.764955,-122.418554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.764955,-122.418554&format=gif'),
(362, 'd6709acd', 'a5fc9fc5c004e50d96a8e2d4f4d59f30', 'Hawaii', 'Hawaii, USA', NULL, NULL, '19.8967662,-155.5827818', 19.896767, -155.582779, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=19.8967662,-155.5827818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.8967662,-155.5827818&format=gif'),
(363, '16537242', 'c15c0c807b34202fbcb6f18f9523cc74', 'F.A. Nunnelly Company', '2922 North PanAm Expressway, San Antonio, TX 78208, United States', NULL, NULL, '29.438888,-98.443424', 29.438889, -98.443420, 'general_contractor', 'maps/raw/places/staticmap/location=29.438888,-98.443424&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.438888,-98.443424&format=gif'),
(364, 'a748cf36', 'c9f9adf1057d97353b55d3548918ed94', 'F.A. Motorcars', '12843 Nacogdoches Road, San Antonio, TX 78217, United States', NULL, NULL, '29.558152,-98.397833', 29.558151, -98.397835, 'car_dealer', 'maps/raw/places/staticmap/location=29.558152,-98.397833&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.558152,-98.397833&format=gif'),
(365, '4e228d6f', '325a1192fe5d8c25c6e93bbc066838ae', 'F A Mc Comas Inc', '3636 Highpoint Street, San Antonio, TX 78217, United States', NULL, NULL, '29.54167,-98.426956', 29.541670, -98.426956, 'painter', 'maps/raw/places/staticmap/location=29.54167,-98.426956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C29.54167,-98.426956&format=gif'),
(366, 'a61dc6f1', '5e0519b60a13d8935719e2a78b40d39c', 'Sanfa Construction Supply', 'Corozal, Belize', NULL, NULL, '18.388825,-88.400676', 18.388824, -88.400673, 'hardware_store', 'maps/raw/places/staticmap/location=18.388825,-88.400676&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.388825,-88.400676&format=gif'),
(367, '8ba463e5', 'be6bf8c2758ad53c78df716040a30b86', 'Restaurante Ni Fu Ni Fa', 'Barrio Los Andes, San Pedro Sula, Honduras', NULL, NULL, '15.511737,-88.035003', 15.511737, -88.035004, 'restaurant', 'maps/raw/places/staticmap/location=15.511737,-88.035003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C15.511737,-88.035003&format=gif'),
(368, 'c6a95d40', 'f1fad5edf7a497b79336568841cecfb9', 'Freedom Acres Resorts', '1924 Glen Helen Road, San Bernardino, CA 92407, United States', NULL, NULL, '34.220696,-117.420123', 34.220695, -117.420120, 'lodging', 'maps/raw/places/staticmap/location=34.220696,-117.420123&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.220696,-117.420123&format=gif'),
(369, '4500b64b', 'b38e23fb99dc6fc2c4e1362703cb4ae0', 'F A Poli Trucking &amp; Materials', '120 South Maple Avenue, South San Francisco, CA 94080, United States', NULL, NULL, '37.649376,-122.415285', 37.649376, -122.415283, 'moving_company', 'maps/raw/places/staticmap/location=37.649376,-122.415285&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.649376,-122.415285&format=gif'),
(370, '6e57fe53', '8f96a25312e979240b75bca8a4723d14', 'Fa Instruments Inc', '2381 Zanker Road # 100, San Jose, CA 95131, United States', NULL, NULL, '37.384427,-121.920416', 37.384426, -121.920418, 'establishment', 'maps/raw/places/staticmap/location=37.384427,-121.920416&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.384427,-121.920416&format=gif'),
(371, 'bc0e2cfb', 'dcb2fc7d82981e8a814c5948ea825ae2', 'Fiesta Americana Grand los Cabos All Inclusive Golf &amp; Spa', 'Carretera Transpeninsular Km 10.3, Cabo del Sol, 23410 Cabo San Lucas, B.C.S., Mexico', NULL, NULL, '22.921248,-109.828946', 22.921247, -109.828949, 'lodging', 'maps/raw/places/staticmap/location=22.921248,-109.828946&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C22.921248,-109.828946&format=gif'),
(372, '629f6cdc', '0f8ac00cdca7923c039df2cf7d4f88b0', 'HUNGFAKWOON.COM', '219 Monterey Boulevard, San Francisco, CA 94131, United States', NULL, NULL, '37.731387,-122.440242', 37.731388, -122.440239, 'school', 'maps/raw/places/staticmap/location=37.731387,-122.440242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.731387,-122.440242&format=gif'),
(373, '581f261f', '78eb2689dc426a15f6bef7d0f3dd2f88', 'Wha Fa Produce Co', '2165 Irving Street, San Francisco, CA 94122, United States', NULL, NULL, '37.763282,-122.48112', 37.763283, -122.481117, 'bakery', 'maps/raw/places/staticmap/location=37.763282,-122.48112&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.763282,-122.48112&format=gif'),
(374, '5138da00', '2274ba8993716d68989b86262136cde6', 'Mt. San Antonio College', '1100 North Grand Avenue, Walnut, CA 91789, United States', NULL, NULL, '34.048567,-117.842095', 34.048569, -117.842094, 'point_of_interest', 'maps/raw/places/staticmap/location=34.048567,-117.842095&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.048567,-117.842095&format=gif'),
(375, '8a9dac29', '758b52286555c31ad0a01edabf75b778', 'Sanfa', 'Durango 606, Valle del Sur, 34120 Durango, Dgo., Mexico', NULL, NULL, '24.012247,-104.684373', 24.012247, -104.684372, 'store', 'maps/raw/places/staticmap/location=24.012247,-104.684373&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.012247,-104.684373&format=gif'),
(376, '9bcb48d4', '455b42d9e53e218a7621fe9976ac3dd5', 'Advanced Mechatronics Solutions', '9051 Siempre Viva Road # J, San Diego, CA 92154, United States', NULL, NULL, '32.552585,-116.948635', 32.552586, -116.948631, 'car_repair', 'maps/raw/places/staticmap/location=32.552585,-116.948635&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.552585,-116.948635&format=gif'),
(377, 'b0e78828', 'd54b006e72584942b72c04df3b8b40b2', 'San Diego State University', '5500 Campanile Drive, San Diego, CA 92182, United States', NULL, NULL, '32.77477,-117.071665', 32.774769, -117.071663, 'university', 'maps/raw/places/staticmap/location=32.77477,-117.071665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.77477,-117.071665&format=gif'),
(378, '6a184ecd', '064f395334bc05daa24bed869c1a019d', 'Food Addicts In Recovery', 'San Francisco, CA 94111, United States', NULL, NULL, '37.795936,-122.400003', 37.795937, -122.400002, 'health', 'maps/raw/places/staticmap/location=37.795936,-122.400003&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795936,-122.400003&format=gif'),
(379, '521da513', '3761e987071a23938db0825e5cff9071', 'Food Addicts In Recovery Anonymous', 'San Jose, CA 95101, United States', NULL, NULL, '37.329012,-121.916021', 37.329014, -121.916023, 'health', 'maps/raw/places/staticmap/location=37.329012,-121.916021&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.329012,-121.916021&format=gif'),
(380, '929e538a', '67cb18cd6fc7cc9a14e53531197f753e', 'San JosÃ© State University', '1 Washington Sq, San Jose, CA 95192, United States', NULL, NULL, '37.335187,-121.881072', 37.335186, -121.881073, 'university', 'maps/raw/places/staticmap/location=37.335187,-121.881072&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.335187,-121.881072&format=gif'),
(381, '4a306f75', '0ef7f39dce7943b5e4b266f7b0a81f8e', 'Queen', 'San Pedro 202, Del Valle, 66220 San Pedro Garza GarcÃ­a, N.L., Mexico', NULL, NULL, '25.660182,-100.370062', 25.660183, -100.370064, 'bar', 'maps/raw/places/staticmap/location=25.660182,-100.370062&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C25.660182,-100.370062&format=gif'),
(382, '989267b1', '283c94c616097bb666ef5c0bda29ac90', 'Wildlife Center of Silicon Valley', '3027 Penitencia Creek Road, San Jose, CA 95132, United States', NULL, NULL, '37.388971,-121.848359', 37.388969, -121.848358, 'point_of_interest', 'maps/raw/places/staticmap/location=37.388971,-121.848359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.388971,-121.848359&format=gif'),
(383, '7638d310', '08834925c28433f75306b801c8ac96ec', 'San Francisco Travel Association', '6929 Valleyview Drive, Downers Grove, IL 60516, United States', NULL, NULL, '41.760118,-88.001727', 41.760117, -88.001724, 'travel_agency', 'maps/raw/places/staticmap/location=41.760118,-88.001727&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.760118,-88.001727&format=gif'),
(384, '04fa5f49', '68c5734da43384f2680cd210f0b454c7', 'San Francisco CVB', '1730 M Street Northwest #607, Washington, DC 20036, United States', NULL, NULL, '38.905345,-77.039918', 38.905346, -77.039917, 'point_of_interest', 'maps/raw/places/staticmap/location=38.905345,-77.039918&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.905345,-77.039918&format=gif'),
(385, '92631629', 'a3302b7ebb653c44eb92b624605d7e7d', 'Only In San Francisco', 'Beach Street, San Francisco, CA 94133, United States', NULL, NULL, '37.808747,-122.410346', 37.808746, -122.410347, 'store', 'maps/raw/places/staticmap/location=37.808747,-122.410346&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.808747,-122.410346&format=gif'),
(386, 'bd55970d', '5b36e477b9bbd142d79e3ef3a124b52b', 'San Francisco Underground', '182 Howard Street #240, San Francisco, CA 94105, United States', NULL, NULL, '37.791162,-122.393309', 37.791161, -122.393311, 'travel_agency', 'maps/raw/places/staticmap/location=37.791162,-122.393309&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791162,-122.393309&format=gif'),
(387, '33332fdb', 'beca830be3b32b91cad6c6ed546befad', 'San Francisco Visitor Information Center', '900 Market Street, San Francisco, CA 94102, United States', NULL, NULL, '37.784111,-122.408311', 37.784111, -122.408310, 'establishment', 'maps/raw/places/staticmap/location=37.784111,-122.408311&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.784111,-122.408311&format=gif'),
(388, '6e8f9f29', '0982245a49552fcdd63145ebd1347d8f', 'San Francisco Travel Association', '1 Front Street Suite 2900, San Francisco, CA 94111, United States', NULL, NULL, '37.791883,-122.398841', 37.791882, -122.398842, 'establishment', 'maps/raw/places/staticmap/location=37.791883,-122.398841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791883,-122.398841&format=gif'),
(389, 'd2cfad16', '823a5f523973e4a703a8fe3dd6869a3f', 'W San Francisco', '181 3rd Street, San Francisco, CA 94103, United States', NULL, NULL, '37.785318,-122.400442', 37.785316, -122.400444, 'lodging', 'maps/raw/places/staticmap/location=37.785318,-122.400442&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.785318,-122.400442&format=gif'),
(390, 'ae28943f', '0a859f9266da99a76bf47a4017e86afa', 'San Francisco Giants', '24 Willie Mays Plaza, San Francisco, CA 94107, United States', NULL, NULL, '37.778175,-122.390725', 37.778175, -122.390724, 'establishment', 'maps/raw/places/staticmap/location=37.778175,-122.390725&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.778175,-122.390725&format=gif'),
(391, '3256a901', '201d0ecd68e7fcd231e1fec78b0cb183', 'SF Giants Baseball Club : Dugout Store', '4 Embarcadero Center, San Francisco, CA 94111, United States', NULL, NULL, '37.795284,-122.396229', 37.795284, -122.396233, 'clothing_store', 'maps/raw/places/staticmap/location=37.795284,-122.396229&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.795284,-122.396229&format=gif'),
(392, '4b75e51e', '26048b14e9b4171b70c4fe08a112500b', 'Giants Dugout Stores', '3251 20th Avenue #173, San Francisco, CA 94132, United States', NULL, NULL, '37.728041,-122.477539', 37.728043, -122.477539, 'store', 'maps/raw/places/staticmap/location=37.728041,-122.477539&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.728041,-122.477539&format=gif'),
(393, '425dab30', 'd0ef8c1d36ccc5634fe4d445bfa78ff6', 'San Francisco Giants Offices', '7402 East Osborn Road, Scottsdale, AZ 85251, United States', NULL, NULL, '33.487761,-111.922923', 33.487762, -111.922920, 'establishment', 'maps/raw/places/staticmap/location=33.487761,-111.922923&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.487761,-111.922923&format=gif'),
(394, 'dfd06215', 'dc772823a701ba0c7142c168f6ebe097', 'Giants Dugout Stores', '127 Serramonte Center, Daly City, CA 94015, United States', NULL, NULL, '37.671131,-122.470638', 37.671131, -122.470634, 'clothing_store', 'maps/raw/places/staticmap/location=37.671131,-122.470638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.671131,-122.470638&format=gif'),
(395, 'd010f0a3', '5aaa273f91d02a91ba5a656e09f2ba03', 'San Francisco International Airport', 'San Francisco, CA 94128, United States', NULL, NULL, '37.621313,-122.378955', 37.621311, -122.378952, 'airport', 'maps/raw/places/staticmap/location=37.621313,-122.378955&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.621313,-122.378955&format=gif'),
(396, '911f2e79', 'd1d02d06d248740875e86cf5f8b7290b', 'San Francisco State University', '1600 Holloway Avenue, San Francisco, CA 94132, United States', NULL, NULL, '37.721897,-122.478209', 37.721897, -122.478210, 'university', 'maps/raw/places/staticmap/location=37.721897,-122.478209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.721897,-122.478209&format=gif'),
(397, '00e577a9', 'a81bdd96f886b3b6cbc8ea365d078bda', 'SanFrancisco Magazine', '243 Vallejo Street, San Francisco, CA 94111, United States', NULL, NULL, '37.799275,-122.401928', 37.799274, -122.401932, 'establishment', 'maps/raw/places/staticmap/location=37.799275,-122.401928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.799275,-122.401928&format=gif'),
(398, 'edb0542d', '0aa5a161230562827e88dc204ca1ac15', 'San Francisco Chronicle', '901 Mission Street, San Francisco, CA 94103, United States', NULL, NULL, '37.782362,-122.406464', 37.782364, -122.406464, 'point_of_interest', 'maps/raw/places/staticmap/location=37.782362,-122.406464&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.782362,-122.406464&format=gif'),
(399, '796bb11e', '2c5cbf90402f045c0d128e647dfa2bcd', 'San Francisco Chronicle', '1350 16th Street, Oakland, CA 94607, United States', NULL, NULL, '37.812262,-122.290135', 37.812263, -122.290138, 'point_of_interest', 'maps/raw/places/staticmap/location=37.812262,-122.290135&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.812262,-122.290135&format=gif'),
(400, '714aa78d', 'd9460c43b6deebb96536be22e3f57518', 'University of San Francisco', '2130 Fulton Street, San Francisco, CA 94117, United States', NULL, NULL, '37.775749,-122.450386', 37.775749, -122.450386, 'university', 'maps/raw/places/staticmap/location=37.775749,-122.450386&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.775749,-122.450386&format=gif'),
(401, '85d8405a', '85658f876e0a97d87b45f436ae3785e4', 'University of San Francisco', '480 South Batavia Street, Orange, CA 92868, United States', NULL, NULL, '33.781224,-117.862712', 33.781223, -117.862709, 'university', 'maps/raw/places/staticmap/location=33.781224,-117.862712&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.781224,-117.862712&format=gif'),
(402, '01dce0c6', '67d5bb018c8ad308482ddb876e727ecc', 'Rio de Janeiro', 'Rio de Janeiro - State of Rio de Janeiro, Brazil', NULL, NULL, '-22.9068467,-43.1728965', -22.906847, -43.172897, 'locality', 'maps/raw/places/staticmap/location=-22.9068467,-43.1728965&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-22.9068467,-43.1728965&format=gif'),
(403, '4bef5a53', '2601a81f60c575d3a89932167e22b3e9', 'Saale', 'Saale, Germany', NULL, NULL, '51.2824759,11.6919722', 51.282475, 11.691972, 'natural_feature', 'maps/raw/places/staticmap/location=51.2824759,11.6919722&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.2824759,11.6919722&format=gif'),
(404, 'fe3e3daa', '6518c9b3aa2381159698181e55d839e8', 'Rio All-Suites Hotel and Casino', '3700 West Flamingo Road, Las Vegas, NV 89103, United States', NULL, NULL, '36.117515,-115.188159', 36.117516, -115.188156, 'lodging', 'maps/raw/places/staticmap/location=36.117515,-115.188159&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.117515,-115.188159&format=gif'),
(405, '8d12d832', '814f7ea860eaabd599fbd543d79be726', 'RIO Products', '5050 South Yellowstone Highway, Idaho Falls, ID 83402, United States', NULL, NULL, '43.452238,-112.069554', 43.452236, -112.069557, 'store', 'maps/raw/places/staticmap/location=43.452238,-112.069554&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.452238,-112.069554&format=gif'),
(406, 'f8fcb8a5', '9488c126159fb613962a322309c5fe23', 'University of Rio Grande', '218 North College Avenue, Rio Grande, OH 45674, United States', NULL, NULL, '38.881704,-82.380209', 38.881702, -82.380211, 'university', 'maps/raw/places/staticmap/location=38.881704,-82.380209&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.881704,-82.380209&format=gif'),
(407, '631b3e42', '2fe396990f17a056cc534359af849ecc', 'Rio Tinto Distribution Center', '6076 Broken Rock Cir, South Jordan, UT 84095, United States', NULL, NULL, '40.523397,-112.09474', 40.523396, -112.094742, 'point_of_interest', 'maps/raw/places/staticmap/location=40.523397,-112.09474&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.523397,-112.09474&format=gif'),
(408, '6f5a4655', '585def4e2b884589e6c42f5adcc7a477', 'Rio Salado College', '2323 West 14th Street, Tempe, AZ 85281, United States', NULL, NULL, '33.412645,-111.974169', 33.412643, -111.974167, 'point_of_interest', 'maps/raw/places/staticmap/location=33.412645,-111.974169&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.412645,-111.974169&format=gif'),
(409, '0b5a5ce6', '4de7a84603d6a23a516113d92a1a9bb3', 'Rio Grande Mexican Restaurant', '9535 Park Meadows Drive, Lone Tree, CO 80124, United States', NULL, NULL, '39.554765,-104.879265', 39.554764, -104.879265, 'restaurant', 'maps/raw/places/staticmap/location=39.554765,-104.879265&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.554765,-104.879265&format=gif'),
(410, '0a9091b3', '95ab6c3c08f55286fccb766736e60450', 'Rio Hondo College', '3600 Workman Mill Road, Whittier, CA 90601, United States', NULL, NULL, '34.019466,-118.033803', 34.019466, -118.033806, 'point_of_interest', 'maps/raw/places/staticmap/location=34.019466,-118.033803&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.019466,-118.033803&format=gif'),
(411, 'c47f7fd0', '198b45dc60b797469fe37e0642f18bf8', 'Rio Elementary', '355 Lowville Road, Rio, WI 53960, United States', NULL, NULL, '43.44594,-89.245885', 43.445938, -89.245888, 'school', 'maps/raw/places/staticmap/location=43.44594,-89.245885&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.44594,-89.245885&format=gif'),
(412, 'fa97edfc', '02502253280d224d13364b2e5fded88d', 'Rio Grande Mexican Restaurant', '143 West Mountain Avenue, Fort Collins, CO 80524, United States', NULL, NULL, '40.586733,-105.078217', 40.586735, -105.078217, 'bar', 'maps/raw/places/staticmap/location=40.586733,-105.078217&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.586733,-105.078217&format=gif'),
(413, 'cddf40aa', '6b2ff88c448dd886ee84ce3dca25ccd7', 'RIO Rooftop &amp; Restaurant', '601 Rio Grande Street, Austin, TX 78701, United States', NULL, NULL, '30.270101,-97.749298', 30.270102, -97.749298, 'night_club', 'maps/raw/places/staticmap/location=30.270101,-97.749298&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C30.270101,-97.749298&format=gif'),
(414, '19966158', '4621a36fa72e2af931d5dd27cd6e90b9', 'El Rio', '3158 Mission Street, San Francisco, CA 94110, United States', NULL, NULL, '37.746793,-122.41942', 37.746792, -122.419418, 'night_club', 'maps/raw/places/staticmap/location=37.746793,-122.41942&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.746793,-122.41942&format=gif'),
(415, 'ca12f796', 'a2180dd8f2229456b679011a12440c04', 'Rio Bank', '720 East Jackson Avenue, McAllen, TX 78501, United States', NULL, NULL, '26.191405,-98.213394', 26.191404, -98.213394, 'bank', 'maps/raw/places/staticmap/location=26.191405,-98.213394&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.191405,-98.213394&format=gif'),
(416, '723db959', 'fdad6e3a767d9799a8b81329d2f3bd41', 'Rio Ammunition, Inc.', 'Marshall, TX, United States', NULL, NULL, '32.557982,-94.283372', 32.557983, -94.283371, 'establishment', 'maps/raw/places/staticmap/location=32.557982,-94.283372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.557982,-94.283372&format=gif'),
(417, 'ebbc4479', '0eb5c6431d37e4b18212e6106f96cb1f', 'Rio Grande', '7500 Bluewater Road Northwest, Albuquerque, NM 87121, United States', NULL, NULL, '35.083213,-106.720708', 35.083214, -106.720711, 'jewelry_store', 'maps/raw/places/staticmap/location=35.083213,-106.720708&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C35.083213,-106.720708&format=gif'),
(418, '843f7d8f', '84f0e71b8e4c23f45e750fd2347f7ca0', 'Rio Entertainment Center', '9811 Washingtonian Boulevard, Gaithersburg, MD 20878, United States', NULL, NULL, '39.115842,-77.197477', 39.115841, -77.197479, 'point_of_interest', 'maps/raw/places/staticmap/location=39.115842,-77.197477&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.115842,-77.197477&format=gif'),
(419, '65012cbd', '5418ec0dd5bbb2861e49a049e58200ff', 'Rio Grande Mexican Restaurant', '1101 Walnut Street, Boulder, CO 80302, United States', NULL, NULL, '40.016943,-105.280819', 40.016945, -105.280823, 'bar', 'maps/raw/places/staticmap/location=40.016943,-105.280819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.016943,-105.280819&format=gif'),
(420, 'd437ed2d', '8d1a578b3949491aafd1ae875baf0512', 'Rio Grande Mexican Restaurant', '1525 Blake Street, Denver, CO 80202, United States', NULL, NULL, '39.750163,-104.999966', 39.750164, -104.999969, 'bar', 'maps/raw/places/staticmap/location=39.750163,-104.999966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.750163,-104.999966&format=gif'),
(421, 'd80b4eeb', 'f7ae391738f55f79a3e7109db1fe6d30', 'Rio Theatre', '1205 Soquel Avenue, Santa Cruz, CA 95062, United States', NULL, NULL, '36.980167,-122.010413', 36.980167, -122.010414, 'point_of_interest', 'maps/raw/places/staticmap/location=36.980167,-122.010413&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.980167,-122.010413&format=gif'),
(422, '41a3aef7', '3208345dc3c468602b18daaffaf62dae', 'El Rio Community Health Center', '839 West Congress Street, Tucson, AZ 85745, United States', NULL, NULL, '32.221213,-110.985927', 32.221214, -110.985924, 'hospital', 'maps/raw/places/staticmap/location=32.221213,-110.985927&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.221213,-110.985927&format=gif'),
(423, 'fb5e3b5d', '42cd3b87a307226f72782d044208f631', 'Rio Del Valle Junior High School', '3100 Rose Avenue, Oxnard, CA 93036, United States', NULL, NULL, '34.232467,-119.154253', 34.232468, -119.154251, 'school', 'maps/raw/places/staticmap/location=34.232467,-119.154253&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.232467,-119.154253&format=gif'),
(424, 'cd0c1932', '8b02d77ec9972534efb5012d87f58c73', 'The Harry S. Truman Scholarship Foundation', '712 Jackson Place Northwest, Washington, DC 20006, United States', NULL, NULL, '38.899499,-77.03872', 38.899498, -77.038719, 'point_of_interest', 'maps/raw/places/staticmap/location=38.899499,-77.03872&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.899499,-77.03872&format=gif'),
(425, '61dbd89e', '490ce401c9666fe97a9d2d99cf509229', 'Harry S. Truman Library', '500 West US Highway 24, Independence, MO 64050, United States', NULL, NULL, '39.103448,-94.421264', 39.103447, -94.421265, 'library', 'maps/raw/places/staticmap/location=39.103448,-94.421264&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.103448,-94.421264&format=gif'),
(426, '95131222', 'a45a3acc8c7e5649ee5a72c0cbe26915', 'Dabney S. Lancaster Community College Rockbridge Regional Center', '35 Vista Links Drive, Buena Vista, VA 24416, United States', NULL, NULL, '37.739563,-79.37555', 37.739563, -79.375549, 'point_of_interest', 'maps/raw/places/staticmap/location=37.739563,-79.37555&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.739563,-79.37555&format=gif'),
(427, '443b99f2', '063d292d5c9e5cc84ca35383f0240a67', 'William S Hart Museum', '24151 Newhall Avenue, Newhall, CA 91321, United States', NULL, NULL, '34.375689,-118.525691', 34.375690, -118.525688, 'museum', 'maps/raw/places/staticmap/location=34.375689,-118.525691&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.375689,-118.525691&format=gif'),
(428, '071f6ebb', '6e32b9913318cabbf6b91e495f9aaff9', 'S &amp; S Truck Parts Inc', '600 West Irving Park Road, Schaumburg, IL 60193, United States', NULL, NULL, '41.99065,-88.094771', 41.990650, -88.094772, 'store', 'maps/raw/places/staticmap/location=41.99065,-88.094771&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.99065,-88.094771&format=gif'),
(429, 'a8cbed09', '726a550a9f4242c3f8173d3f790f931f', 'S &amp; S Truck &amp; Tractor Canada Inc', '6460 Kestrel Road, Mississauga, ON L5T 1Z7, Canada', NULL, NULL, '43.652257,-79.672534', 43.652256, -79.672531, 'store', 'maps/raw/places/staticmap/location=43.652257,-79.672534&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.652257,-79.672534&format=gif'),
(430, '3e1b6e2c', '40f03db0f08a3dab60c61a535b4a5e4b', 'Dabney S. Lancaster Community College', '1000 Dabney Drive, Clifton Forge, VA 24422, United States', NULL, NULL, '37.810266,-79.852354', 37.810265, -79.852356, 'point_of_interest', 'maps/raw/places/staticmap/location=37.810266,-79.852354&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.810266,-79.852354&format=gif'),
(431, '811480d0', 'e853210bcd49e0589e535c32b4a64d03', 'Skype', '3210 Porter Drive, Palo Alto, CA 94304, United States', NULL, NULL, '37.407373,-122.147342', 37.407372, -122.147339, 'establishment', 'maps/raw/places/staticmap/location=37.407373,-122.147342&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.407373,-122.147342&format=gif'),
(432, '35d0e8be', 'bc1b7b7f16472192aa2bb8ea399bfe5e', 'William S. Hein &amp; Co., Inc.', '2350 North Forest Road, Getzville, NY 14068, United States', NULL, NULL, '43.007321,-78.775571', 43.007320, -78.775574, 'establishment', 'maps/raw/places/staticmap/location=43.007321,-78.775571&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.007321,-78.775571&format=gif'),
(433, '80cadc11', '26c20018ba6bed9c490f36d3b4c2a2d4', 'S &amp; T Bank', 'South 8th Avenue, Clarion, PA 16214, United States', NULL, NULL, '41.212014,-79.380677', 41.212013, -79.380676, 'atm', 'maps/raw/places/staticmap/location=41.212014,-79.380677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.212014,-79.380677&format=gif'),
(434, '2ffa5a59', '75927d6d726b6abd69dd072e0929147d', 'S &amp; T Bank', 'Coral Reef Road, DuBois, PA 15801, United States', NULL, NULL, '41.149694,-78.703995', 41.149693, -78.703995, 'atm', 'maps/raw/places/staticmap/location=41.149694,-78.703995&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.149694,-78.703995&format=gif'),
(435, '1b39f0d6', '187350535a96d91d5822474250a0caf6', 'Smithsonian S. Dillon Ripley Center', '1100 Jefferson Drive Southwest, Washington, DC 20560, United States', NULL, NULL, '38.888562,-77.026883', 38.888561, -77.026886, 'art_gallery', 'maps/raw/places/staticmap/location=38.888562,-77.026883&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.888562,-77.026883&format=gif'),
(436, 'c8abe36f', 'eb5aa678fffa900e4a313b1c5e3c22a3', 'Yale Music Library', '120 High Street, New Haven, CT 06511, United States', NULL, NULL, '41.311249,-72.929042', 41.311249, -72.929039, 'library', 'maps/raw/places/staticmap/location=41.311249,-72.929042&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.311249,-72.929042&format=gif'),
(437, 'd472fb01', 'f44c1f1ca8a3ea4d131b16379444d62b', 'S Karger Publishers Inc', '26 West Avon Road, Unionville, CT 06085, United States', NULL, NULL, '41.756962,-72.881836', 41.756962, -72.881836, 'establishment', 'maps/raw/places/staticmap/location=41.756962,-72.881836&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.756962,-72.881836&format=gif'),
(438, '5e3f39a6', '4910298b9b24dc55af45f1b440bfede8', 'Harry S Truman School of Public Affairs', 'Middlebush Hall, Columbia, MO 65201, United States', NULL, NULL, '38.946201,-92.326928', 38.946201, -92.326927, 'university', 'maps/raw/places/staticmap/location=38.946201,-92.326928&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.946201,-92.326928&format=gif'),
(439, '6c2713a9', '4f9bf2269d95f58f5ad030b32fff07ea', 'S &amp; T Bank', 'Route 30 East, Greensburg, 15601, United States', NULL, NULL, '40.300575,-79.508197', 40.300575, -79.508194, 'atm', 'maps/raw/places/staticmap/location=40.300575,-79.508197&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.300575,-79.508197&format=gif'),
(440, '5ebc5973', 'db6131218632dc12c7f7e2a6806eb05c', 'S &amp; T Bank', '2388 Pennsylvania 286, Pittsburgh, PA 15239, United States', NULL, NULL, '40.463082,-79.704561', 40.463081, -79.704559, 'atm', 'maps/raw/places/staticmap/location=40.463082,-79.704561&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.463082,-79.704561&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `country`, `language`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(441, 'a11b5857', '0490901ed7c36fadb036a93466820fd9', 'The S/L/A/M Collaborative Inc', '80 Glastonbury Boulevard, Glastonbury, CT 06033, United States', NULL, NULL, '41.721391,-72.618282', 41.721390, -72.618279, 'home_goods_store', 'maps/raw/places/staticmap/location=41.721391,-72.618282&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.721391,-72.618282&format=gif'),
(442, 'dc70f1e9', 'de779fa4ba3641c7316e0f4706f6f16d', 'C &amp; S Technical Resources', '499 Col Eileen Collins Boulevard, Syracuse, NY 13212, United States', NULL, NULL, '43.114453,-76.131861', 43.114452, -76.131859, 'general_contractor', 'maps/raw/places/staticmap/location=43.114453,-76.131861&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.114453,-76.131861&format=gif'),
(443, 'cb81f531', 'ac734a590fbf8e622bc22403411be6e9', 'S &amp; S Truck Parts Inc', '1401 Valley View Lane, Irving, TX 75061, United States', NULL, NULL, '32.830783,-97.028267', 32.830784, -97.028267, 'store', 'maps/raw/places/staticmap/location=32.830783,-97.028267&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.830783,-97.028267&format=gif'),
(444, '8e9436ec', '57c6f58f56a7d2ce5c11bcc80ec08bef', 'T-Mobile', '304 merced mall, Merced, CA 95348, United States', NULL, NULL, '37.320641,-120.482665', 37.320641, -120.482666, 'electronics_store', 'maps/raw/places/staticmap/location=37.320641,-120.482665&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.320641,-120.482665&format=gif'),
(445, '94e44c8b', '2f1ef85ef7b883e18fa4ffff3e971623', 'T-Mobile', '2800 Independence Dr, Livermore, CA 94551, United States', NULL, NULL, '37.702952,-121.812573', 37.702953, -121.812576, 'store', 'maps/raw/places/staticmap/location=37.702952,-121.812573&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.702952,-121.812573&format=gif'),
(446, '4174cb86', '2ccaa743dd9b1cfc08f39ab2995a0f0a', 'T-Mobile', '1709 Automation Pkwy, San Jose, CA 95131, United States', NULL, NULL, '37.390678,-121.884723', 37.390678, -121.884720, 'store', 'maps/raw/places/staticmap/location=37.390678,-121.884723&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.390678,-121.884723&format=gif'),
(447, '676a8b7c', '279c7c744f7723bc3db215eb22016746', 'T-Mobile', '232 S Garfield Ave, Monterey Park, CA 91754, United States', NULL, NULL, '34.060276,-118.122601', 34.060276, -118.122604, 'store', 'maps/raw/places/staticmap/location=34.060276,-118.122601&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.060276,-118.122601&format=gif'),
(448, 'e7cc414e', 'd7783054b54662ae46cbecda015b0ccb', 'T-Mobile', '3100 East Imperial Highway #1202, Lynwood, CA 90262, United States', NULL, NULL, '33.929169,-118.215504', 33.929169, -118.215508, 'store', 'maps/raw/places/staticmap/location=33.929169,-118.215504&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.929169,-118.215504&format=gif'),
(449, '82eae489', 'eb76f7325c7c9459e754fb07c69495bd', 'T-Mobile Los Angeles', '105 W Century Blvd #101, Los Angeles, CA 90003, United States', NULL, NULL, '33.945752,-118.274353', 33.945751, -118.274353, 'store', 'maps/raw/places/staticmap/location=33.945752,-118.274353&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.945752,-118.274353&format=gif'),
(450, '368d120c', '32758e573fd615118d8f898704804d8a', 'T-Mobile Simply Prepaid', '15126 Paramount Blvd, Paramount, CA 90723, United States', NULL, NULL, '33.895331,-118.159604', 33.895332, -118.159607, 'store', 'maps/raw/places/staticmap/location=33.895331,-118.159604&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.895331,-118.159604&format=gif'),
(451, '4a9fce37', '63a283e6d731aa86c206f636ed68810d', 'Casino Cellular', '2026 W Olympic Blvd, Los Angeles, CA 90006, United States', NULL, NULL, '34.051463,-118.27974', 34.051464, -118.279739, 'store', 'maps/raw/places/staticmap/location=34.051463,-118.27974&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C34.051463,-118.27974&format=gif'),
(452, '5c9ddbba', '8b7c70b8e8f9c6c28cf623a0783c1cf6', 'Law Offices of Patent Attorney William Mansfield', 'Winchester, MA, United States', NULL, NULL, '42.101483,-72.589811', 42.101482, -72.589813, 'lawyer', 'maps/raw/places/staticmap/location=42.101483,-72.589811&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.101483,-72.589811&format=gif'),
(453, '698464dd', 'e7082e759a5a09a97064466764387993', 'Twitter', '249 W 17th St, New York, NY 10011, United States', NULL, NULL, '40.741474,-73.99985', 40.741474, -73.999847, 'establishment', 'maps/raw/places/staticmap/location=40.741474,-73.99985&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.741474,-73.99985&format=gif'),
(454, '46ae68af', '9dc62e02b7462c78431abcab59afb5d2', 'Westborough MBTA Parking', 'Smith Pkwy, Westborough, MA 01581, United States', NULL, NULL, '42.269972,-71.647496', 42.269974, -71.647499, 'parking', 'maps/raw/places/staticmap/location=42.269972,-71.647496&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.269972,-71.647496&format=gif'),
(455, '33964f31', '8ec23e1de6d452abeb466bb33da0820b', 'MBTA Commuter Rail Littleton Station', '261 Foster St, Littleton, MA 01460, United States', NULL, NULL, '42.519236,-71.502546', 42.519238, -71.502548, 'establishment', 'maps/raw/places/staticmap/location=42.519236,-71.502546&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.519236,-71.502546&format=gif'),
(456, 'ef2146b3', '04052bd617aebe425d629cd296f18416', 'West Natick Train Station', '249 W Central St, Natick, MA 01760, United States', NULL, NULL, '42.283098,-71.391789', 42.283096, -71.391792, 'train_station', 'maps/raw/places/staticmap/location=42.283098,-71.391789&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.283098,-71.391789&format=gif'),
(457, '9ab6ffea', '934230f0ba11c7863e9d591084a15f3f', 'MBTA Attleboro Station', '75 S Main St, Attleboro, MA 02703, United States', NULL, NULL, '41.941956,-71.284967', 41.941956, -71.284966, 'establishment', 'maps/raw/places/staticmap/location=41.941956,-71.284967&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.941956,-71.284967&format=gif'),
(458, '09e5e151', '7321bbb348ec702562825eb03dfc181d', 'MBTA Commuter Rail Parking Lot', '231 Centre Ave, Abington, MA 02351, United States', NULL, NULL, '42.106644,-70.934804', 42.106644, -70.934807, 'parking', 'maps/raw/places/staticmap/location=42.106644,-70.934804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.106644,-70.934804&format=gif'),
(459, '18ab4663', '43b0845fd16485f018f9446ee27d5ff6', 'T-Mobile', '1624 Donald Lee Hollowell Parkway Northwest, Atlanta, GA 30318, United States', NULL, NULL, '33.771923,-84.441318', 33.771923, -84.441315, 'store', 'maps/raw/places/staticmap/location=33.771923,-84.441318&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.771923,-84.441318&format=gif'),
(460, '3384f5c0', '401f2e99260af365c3e2cddb75e002c4', 'T-Mobile', '137 Hester St, New York, NY 10013, United States', NULL, NULL, '40.717146,-73.994692', 40.717148, -73.994690, 'store', 'maps/raw/places/staticmap/location=40.717146,-73.994692&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.717146,-73.994692&format=gif'),
(461, '84eefd4b', '624c13f196c433a508038a9d06639ee2', 'T-Mobile Authorized Dealer', '6149 Old National Highway, Atlanta, GA 30349, United States', NULL, NULL, '33.586766,-84.472181', 33.586765, -84.472183, 'store', 'maps/raw/places/staticmap/location=33.586766,-84.472181&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C33.586766,-84.472181&format=gif'),
(462, '66e1b471', '555ac7b65bdb0e53785e4e3a3282da79', 'T-Mobile', '3951 W Ashley Cir, Charleston, SC 29414, United States', NULL, NULL, '32.821599,-80.08132', 32.821598, -80.081322, 'store', 'maps/raw/places/staticmap/location=32.821599,-80.08132&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C32.821599,-80.08132&format=gif'),
(463, '175aa42a', '15d55a610d9c54ac644722cc9ab7e9dd', 'T-Mobile', '1900 Cunningham Dr, Hampton, VA 23666, United States', NULL, NULL, '37.040756,-76.378973', 37.040756, -76.378975, 'store', 'maps/raw/places/staticmap/location=37.040756,-76.378973&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.040756,-76.378973&format=gif'),
(464, 'd9928f08', 'a084f880f2f90e0c39b17957449bc8c1', 'Calle Hernan Cortes', 'Calle Hernan Cortes, 30833 Sangonera la Verde, Murcia, Spain', NULL, NULL, '37.93208,-1.2036638', 37.932079, -1.203664, 'route', 'maps/raw/places/staticmap/location=37.93208,-1.2036638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.93208,-1.2036638&format=gif'),
(465, 'f6c3dcd1', '9fdb03e95b1a6bb3b987f4bed9e5e629', 'C', 'C, Quito EC170146, Ecuador', NULL, NULL, '-0.3042075,-78.5531236', -0.304208, -78.553123, 'route', 'maps/raw/places/staticmap/location=-0.3042075,-78.5531236&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-0.3042075,-78.5531236&format=gif'),
(466, '85aa7b49', '88fe53bbfe3ded7320a0f4f1c1035820', 'Calle C', 'Calle C, Ensenada, B.C., Mexico', NULL, NULL, '31.8571031,-116.5711914', 31.857103, -116.571190, 'route', 'maps/raw/places/staticmap/location=31.8571031,-116.5711914&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C31.8571031,-116.5711914&format=gif'),
(467, '9860e7b1', '0a78509b01eee29fc9d5106a9d06b6c4', 'Calle C', 'Calle C, San Andres, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.4902,-99.1847677', 19.490200, -99.184769, 'route', 'maps/raw/places/staticmap/location=19.4902,-99.1847677&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.4902,-99.1847677&format=gif'),
(468, '1fdddc06', '0f405b3d3e8580a737fa069d15b7f1e4', 'Calle C', 'Calle C, HerÃ³ica Puebla de Zaragoza, Pue., Mexico', NULL, NULL, '19.0053004,-98.2008319', 19.005301, -98.200829, 'route', 'maps/raw/places/staticmap/location=19.0053004,-98.2008319&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.0053004,-98.2008319&format=gif'),
(469, '432f223f', '167dca7a3dd00cdbd6194c4ffed25bb6', 'Calle C', 'Calle C, Las Caballerizas, Veracruz, Ver., Mexico', NULL, NULL, '19.1740927,-96.1678445', 19.174093, -96.167847, 'route', 'maps/raw/places/staticmap/location=19.1740927,-96.1678445&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.1740927,-96.1678445&format=gif'),
(470, 'aab2b62a', '4e3d9550cd8c33fce6f04325352720cc', 'Calle C', 'Calle C, 55040 Ecatepec de Morelos, MÃ©x., Mexico', NULL, NULL, '19.5906898,-99.0376842', 19.590691, -99.037682, 'route', 'maps/raw/places/staticmap/location=19.5906898,-99.0376842&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.5906898,-99.0376842&format=gif'),
(471, '9ee8c785', '6ba3af6ec41d24f2172318d0be7c4e97', 'Calle C', 'Calle C, Potrero del Llano, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.4743497,-99.1601774', 19.474350, -99.160179, 'route', 'maps/raw/places/staticmap/location=19.4743497,-99.1601774&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.4743497,-99.1601774&format=gif'),
(472, 'c27d6318', '63f4d10ae9ff844dbb4e5901d042c7e5', 'Calle C', 'Calle C, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.419685,-99.0987226', 19.419685, -99.098724, 'route', 'maps/raw/places/staticmap/location=19.419685,-99.0987226&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.419685,-99.0987226&format=gif'),
(473, '984d5ac2', '9df87fbd4f7eb7be4f0c85d59735996f', 'Calle C', 'Calle C, Culhuacan, Ciudad de MÃ©xico, D.F., Mexico', NULL, NULL, '19.3423118,-99.1080633', 19.342312, -99.108063, 'route', 'maps/raw/places/staticmap/location=19.3423118,-99.1080633&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C19.3423118,-99.1080633&format=gif'),
(474, 'd18d6d31', 'ab2d75002fdcdabba6e15bdec4f9ebf4', 'Massachusetts', 'Massachusetts, USA', NULL, NULL, '42.4072107,-71.3824374', 42.407211, -71.382439, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=42.4072107,-71.3824374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.4072107,-71.3824374&format=gif'),
(475, '9cf3a761', '39731f8a78f158e25ee17526801a8c47', 'Saigon University', '273 An DÆ°Æ¡ng VÆ°Æ¡ng, phÆ°á»ng 3, Quáº­n 5, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.759669,106.682372', 10.759669, 106.682373, 'university', 'maps/raw/places/staticmap/location=10.759669,106.682372&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.759669,106.682372&format=gif'),
(476, '1b43f810', '7d82d889385a5f36ca2a59ac64d60774', 'Ho Chi Minh City', 'Ho Chi Minh City, Ho Chi Minh, Vietnam', NULL, NULL, '10.8230989,106.6296638', 10.823099, 106.629662, 'locality', 'maps/raw/places/staticmap/location=10.8230989,106.6296638&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.8230989,106.6296638&format=gif'),
(477, 'ee7bf4ff', 'd4868be4d83e6b6556dac360a16f2779', 'Quan Natural Heritage Area', 'Quan NHA, Duy TiÃªn, HÃ  Nam Province, Vietnam', NULL, NULL, '20.6343043,105.983208', 20.634304, 105.983208, 'neighborhood', 'maps/raw/places/staticmap/location=20.6343043,105.983208&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.6343043,105.983208&format=gif'),
(478, '40d6265d', '19c7d0da027b118eb63ffe60b7b816ad', 'QuÃ¡n Natural Heritage Area', 'QuÃ¡n NHA, TiÃªn Háº£i, tp. Phá»§ LÃ½, HÃ  Nam Province, Vietnam', NULL, NULL, '20.547845,105.9560341', 20.547846, 105.956032, 'neighborhood', 'maps/raw/places/staticmap/location=20.547845,105.9560341&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.547845,105.9560341&format=gif'),
(479, 'b3f0ac1d', 'de0b5b04ef169df8961b3320b4dd1cf3', 'ÄÆ°á»ng Quan Nha bÃ£i', 'ÄÆ°á»ng Quan Nha bÃ£i, Quan Nha BÃ£i, tt. HÃ²a Máº¡c, Duy TiÃªn, HÃ  Nam, Vietnam', NULL, NULL, '20.6373657,105.9869852', 20.637365, 105.986984, 'route', 'maps/raw/places/staticmap/location=20.6373657,105.9869852&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C20.6373657,105.9869852&format=gif'),
(480, 'bdceefb6', '758f9952cc74597fc315c4e1c18a2dea', 'Parkson Cantavil', 'Song HÃ nh, An PhÃº, Há»“ ChÃ­ Minh, Há»“ ChÃ­ Minh, Vietnam', NULL, NULL, '10.801533,106.747268', 10.801533, 106.747269, 'shopping_mall', 'maps/raw/places/staticmap/location=10.801533,106.747268&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.801533,106.747268&format=gif'),
(481, '3dcc659e', '4eb7c36919cecbf8142ab3d94a2fb20e', 'GiÃ¡ Rai District', 'GiÃ¡ Rai District, Bac Lieu, Vietnam', NULL, NULL, '9.260136,105.3753129', 9.260136, 105.375313, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=9.260136,105.3753129&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.260136,105.3753129&format=gif'),
(482, 'fba8acf3', 'de2ab6f854b017927a47441eddb83258', 'Há»™ PhÃ²ng', 'Há»™ PhÃ²ng, GiÃ¡ Rai District, Bac Lieu, Vietnam', NULL, NULL, '9.2234179,105.4243804', 9.223418, 105.424377, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.2234179,105.4243804&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2234179,105.4243804&format=gif'),
(483, '37976eb8', '19b702d43a04fd913f262e797aa48d20', 'tt. GiÃ¡ Rai', 'tt. GiÃ¡ Rai, GiÃ¡ Rai, Báº¡c LiÃªu, Vietnam', NULL, NULL, '9.2388149,105.4586323', 9.238815, 105.458633, 'sublocality_level_1', 'maps/raw/places/staticmap/location=9.2388149,105.4586323&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C9.2388149,105.4586323&format=gif'),
(484, '59d8f30b', '1a9fbcab52540f436c72aabdf4830fe0', 'New York Times', '111 E Lower Wacker Dr, Chicago, IL 60601, United States', '111 E Lower Wacker Dr', '', '41.887565,-87.623569', 41.887566, -87.623566, 'point_of_interest', 'maps/raw/places/staticmap/location=41.887565,-87.623569&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.887565,-87.623569&format=gif'),
(485, '37992d3e', 'a5579620fa302382735a172ee534d9e6', 'New York Times Corporation Library', '620 8th Ave, New York, NY 10018, United States', '620 8th Ave', '', '40.756032,-73.990028', 40.756031, -73.990028, 'library', 'maps/raw/places/staticmap/location=40.756032,-73.990028&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.756032,-73.990028&format=gif'),
(486, 'ff04c206', 'a9041fa85abc50d3b99cc3062baad2cb', 'New York Times', '1627 I St NW, Washington, DC 20006, United States', '1627 I St NW', '', '38.901662,-77.038035', 38.901661, -77.038033, 'point_of_interest', 'maps/raw/places/staticmap/location=38.901662,-77.038035&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C38.901662,-77.038035&format=gif'),
(487, 'e713c02d', 'a37dacfe746655833b827b1af70c51ea', 'New York Post', '1 City Hall, New York, NY 10007, United States', '1 City Hall', '', '40.703589,-74.012773', 40.703590, -74.012772, 'point_of_interest', 'maps/raw/places/staticmap/location=40.703589,-74.012773&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.703589,-74.012773&format=gif'),
(488, '583ab475', '1002ac7e4085a6e99dc5929ae7fcac81', 'New York Post', '1211 6th Ave, New York, NY 10036, United States', '1211 6th Ave', '', '40.758558,-73.982337', 40.758556, -73.982338, 'library', 'maps/raw/places/staticmap/location=40.758558,-73.982337&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.758558,-73.982337&format=gif'),
(489, 'e2a4c715', '5600a7ac55ba0206357533bec28c7f58', 'New York Post', '900 E 132nd St, Bronx, NY 10454, United States', '900 E 132nd St', '', '40.798094,-73.912825', 40.798096, -73.912827, 'post_office', 'maps/raw/places/staticmap/location=40.798094,-73.912825&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.798094,-73.912825&format=gif'),
(490, '356026ca', '9ec62f4a5b5ae7621e5e6834b598ecdc', 'CNN', '10 Columbus Cir, New York, NY 10019, United States', '10 Columbus Cir', '', '40.768456,-73.982809', 40.768456, -73.982811, 'point_of_interest', 'maps/raw/places/staticmap/location=40.768456,-73.982809&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.768456,-73.982809&format=gif'),
(491, 'd384c2f4', '9409ebf6d2313774ec577817132ab505', 'Loomis Express', '95 Micro Ct, Markham, ON L3R 5N1, Canada', '95 Micro Ct', '', '43.83571,-79.315094', 43.835709, -79.315094, 'establishment', 'maps/raw/places/staticmap/location=43.83571,-79.315094&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C43.83571,-79.315094&format=gif'),
(492, '94dccdf8', 'd68a1b86384182ffe2d9232e6c4bea46', 'Inland Iron &amp; Metal', 'Ravenshoe Rd, Sutton West, ON L0E 1R0, Canada', 'Ravenshoe Rd', '', '44.223131,-79.329935', 44.223129, -79.329933, 'establishment', 'maps/raw/places/staticmap/location=44.223131,-79.329935&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C44.223131,-79.329935&format=gif'),
(493, '07f0fd46', '9d2d34bafa39c95965190741206b9fc8', 'The New America Foundation', '199 Lafayette St Suite 3b, New York, NY 10012, United States', '199 Lafayette St Suite 3b', '', '40.721148,-73.99777', 40.721149, -73.997772, 'establishment', 'maps/raw/places/staticmap/location=40.721148,-73.99777&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.721148,-73.99777&format=gif'),
(494, '477e7f96', 'a02ed9907a072197c28421f942df6cfe', 'New Relic', '188 Spear St, San Francisco, CA 94105, United States', '188 Spear St', '', '37.791354,-122.393048', 37.791355, -122.393051, 'establishment', 'maps/raw/places/staticmap/location=37.791354,-122.393048&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C37.791354,-122.393048&format=gif'),
(495, 'e3b27729', 'aa6f5d7176ae71f257b515ed1da98165', 'New Relic', '111 SW 5th Ave #2800, Portland, OR 97204, United States', '111 SW 5th Ave #2800', '', '45.52263,-122.67575', 45.522629, -122.675751, 'establishment', 'maps/raw/places/staticmap/location=45.52263,-122.67575&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C45.52263,-122.67575&format=gif'),
(496, '94585772', 'd6289bf1cb17ffeeac7d90dc632649be', 'New Relic', '19, 2101 4th Ave, Seattle, WA 98121, United States', '19', '', '47.614084,-122.342398', 47.614082, -122.342400, 'establishment', 'maps/raw/places/staticmap/location=47.614084,-122.342398&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C47.614084,-122.342398&format=gif'),
(497, 'dfc77bb1', 'b088c17fa5a9ce05be7030b765d429e6', 'New Center', '1100 N Main St #100, Ann Arbor, MI 48104, United States', '1100 N Main St #100', '', '42.293139,-83.746819', 42.293140, -83.746819, 'establishment', 'maps/raw/places/staticmap/location=42.293139,-83.746819&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.293139,-83.746819&format=gif'),
(498, '806255b7', 'c8e380136a55387549a43a76aac6d69b', 'New Balance New York', '150 5th Ave, New York, NY 10010, United States', '150 5th Ave', '', '40.739623,-73.991359', 40.739624, -73.991356, 'shoe_store', 'maps/raw/places/staticmap/location=40.739623,-73.991359&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C40.739623,-73.991359&format=gif'),
(499, 'ee08cc9f', '1b350a5c5fb13c0342e2b5dd982a4a82', 'New England Journal-Medicine: Campion Edward W MD', '10 Shattuck St, Boston, MA 02115, United States', '10 Shattuck St', '', '42.335134,-71.103841', 42.335133, -71.103844, 'doctor', 'maps/raw/places/staticmap/location=42.335134,-71.103841&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.335134,-71.103841&format=gif'),
(500, '5648e777', 'db2269f03e3a6b6778d100e0389fb30b', 'New Balance', '7000 Arundel Mills Cir, Hanover, MD 21076, United States', '7000 Arundel Mills Cir', '', '39.159148,-76.7242', 39.159149, -76.724197, 'shoe_store', 'maps/raw/places/staticmap/location=39.159148,-76.7242&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.159148,-76.7242&format=gif'),
(501, 'd21789b1', 'd1ea9177b3993dcd9432ee2bec80fb95', 'New Balance', '350 Tarrytown Rd #2, White Plains, NY 10607, United States', '350 Tarrytown Rd #2', '', '41.04272,-73.795241', 41.042721, -73.795242, 'shoe_store', 'maps/raw/places/staticmap/location=41.04272,-73.795241&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.04272,-73.795241&format=gif'),
(502, '4a76527e', '97d9b3d02b4dc76842a1ffa1a07c5526', 'New Balance', '1990 Marlton Pike E, Cherry Hill, NJ 08003, United States', '1990 Marlton Pike E', '', '39.899217,-74.953446', 39.899216, -74.953445, 'shoe_store', 'maps/raw/places/staticmap/location=39.899217,-74.953446&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.899217,-74.953446&format=gif'),
(503, 'eec661f9', '80dd671f138e27b51e02ad91405a774b', 'New Balance', '4313 Dearborn Cir, Mt Laurel, NJ 08054, United States', '4313 Dearborn Cir', '', '39.968813,-74.902462', 39.968815, -74.902458, 'shoe_store', 'maps/raw/places/staticmap/location=39.968813,-74.902462&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C39.968813,-74.902462&format=gif'),
(504, 'c0bcdaf3', '39244f2aaa26033b2958a5e2984c5ab3', 'California', 'California, USA', 'California', '', '36.778261,-119.4179324', 36.778259, -119.417931, 'administrative_area_level_1', 'maps/raw/places/staticmap/location=36.778261,-119.4179324&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C36.778261,-119.4179324&format=gif'),
(505, 'd6218595', 'bc1c5d6dee17adc7ad7dc40b380a859e', 'London', 'London, UK', 'London', '', '51.5073509,-0.1277583', 51.507351, -0.127758, 'locality', 'maps/raw/places/staticmap/location=51.5073509,-0.1277583&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C51.5073509,-0.1277583&format=gif'),
(506, 'ac2524c7', '2857862f984be0d126efd1c15626edad', 'tp. VÅ©ng TÃ u', 'tp. VÅ©ng TÃ u, BÃ  Rá»‹a - VÅ©ng TÃ u, Vietnam', 'tp. VÅ©ng TÃ u', '', '10.4113797,107.136224', 10.411380, 107.136223, 'locality', 'maps/raw/places/staticmap/location=10.4113797,107.136224&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.4113797,107.136224&format=gif'),
(507, 'b50003c3', 'e0e841652acac41d227cc95db7a7865e', 'Grafton MBTA Commuter Rail Parking', 'north 01536, 1 Pine St, North Grafton, MA 01536, United States', 'north 01536', '', '42.246938,-71.685978', 42.246937, -71.685982, 'establishment', 'maps/raw/places/staticmap/location=42.246938,-71.685978&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.246938,-71.685978&format=gif'),
(508, '1f9f7c24', '9b9217458c335a0f9d99efd7cd462a44', 'MBTA Commuter Rail Parking', '417 Waverly St, Framingham, MA 01702, United States', '417 Waverly St', '', '42.275826,-71.420567', 42.275826, -71.420570, 'parking', 'maps/raw/places/staticmap/location=42.275826,-71.420567&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.275826,-71.420567&format=gif'),
(509, '5d2acce8', '92598696cf539bf0ecbb5097d13a2427', 'MBTA Commuter Rail Parking Wellesley Square', '1 Grove St, Wellesley, MA 02482, United States', '1 Grove St', '', '42.29777,-71.294659', 42.297771, -71.294662, 'parking', 'maps/raw/places/staticmap/location=42.29777,-71.294659&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C42.29777,-71.294659&format=gif'),
(510, '8a1af1a4', '663823516aaab0a8c3cc60156539305e', 'Bridgewater MBTA Commuter Station', '2727, 85 Burrill Ave, Bridgewater, MA 02324, United States', '2727', '', '41.986346,-70.966624', 41.986347, -70.966621, 'establishment', 'maps/raw/places/staticmap/location=41.986346,-70.966624&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.986346,-70.966624&format=gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(1, 1442312250, 1, '10e89e0e', '2dbd3a4010aed3be80d6b1a9ddd3f360', 'user', 1, '1stEb47ETrwKMJt7hJtuJl+9g5g6y+VV7k+Td+MaNQE=', ''),
(2, 1442313883, 1, 'b34618da', '8c503e29c334c871afa7834565176d5e', 'user', 1, 'i7kjkVakyAlSNwydanorYpEwNHxEj6gx2ZGR/7od43M=', ''),
(3, 1442313894, 1, '3581c6c5', 'a3875139fcc22862c9c2f9e11ae283b5', 'user', 1, '1PMoHK5S0R8Zzc514HuPhZLyxqFMabMVLolmwZbtzcI=', ''),
(4, 1442314256, 1, 'e9c3d08f', 'c4356f5fd3456304437484d0728d4fa1', 'user', 1, '0AZfel7+su44YIwPDjAF4vDNsGhFiHWevtbdLaBVbhE=', ''),
(5, 1442314275, 1, 'ff9deba1', 'e4c400fc520f95dc2c555c80a0fad3d7', 'user', 1, 'lTX4+vcDC+zER7HH3BWjyEApU0tKfd4SyHvr7ko43N4=', ''),
(6, 1442314316, 1, 'a486b4d0', 'cd04cddbb589b84e1b7a0b96452c9600', 'user', 1, 'OVtBxEBsgiOdcW7UaFRDiNhxqK0ir8fq53ePA5QJe3d1ltuh4zqij85XiXNusvlC+3c1Hivjd1vtbdBlSCfo8w==', ''),
(7, 1442314349, 1, '9ca20b60', '8f545eb8f89b741912bbe395930522b1', 'user', 1, 'zm1f7cAtq/7YoQGHh2bS5ZjJNjXATMjOCZJe07zM1Z4=', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`, `deleted`, `action`, `updated`) VALUES
(1, 1442311808, '06ac9e04', '076783eaa3c48a033b4594ddf17a8150', 1, 'groups', '', 'vi', 0, 1442314349, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(1, 1442311808, 1, 'author', '0', 'user', 1),
(2, 1442311808, 1, 'members', '0', 'user', 2),
(3, 1442311808, 1, 'members', '0', 'user', 4),
(4, 1442311808, 1, 'members', '0', 'user', 3);

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES
(1, 1442314353, 1, 'user', 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;

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
(98, 'regex_hashtag', 'en', '/(#([a-zA-Z0-9\\_]+))/'),
(99, 'regex_usertag', 'en', '/(@([a-zA-Z0-9\\_\\.]+))/'),
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
(248, 'feeds_action_timeout', 'en', '43200'),
(249, 'hash_photos_qr', 'en', 'g::key::photos->qr'),
(250, 'hash_videos_pointtag_check', 'en', 'g::key::videos->pointtag->check'),
(251, 'sites_views_timeout', 'en', '86400'),
(252, 'hash_mailer_logs', 'en', 'g::key::mailer->logs'),
(253, 'hash_mailer_id', 'en', 'g::key::mailer->id'),
(254, 'weather_cache_timeout', 'en', '10800'),
(255, 'client_location_timeout', 'en', '1800'),
(256, 'user_suggest_live_distance', 'en', '50'),
(257, 'user_suggest_country_distance', 'en', '25'),
(258, 'user_suggest_checkin_distance', 'en', '10'),
(259, 'user_suggest_nearby_timeout', 'en', '604800'),
(260, 'videos_views_timeout', 'en', '86400');

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
-- Table structure for table `process_id`
--

CREATE TABLE IF NOT EXISTS `process_id` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `client` char(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `status` varchar(20) NOT NULL,
  `total` float(16,4) DEFAULT NULL,
  `done` float(16,4) DEFAULT NULL,
  `percent` float(3,2) DEFAULT NULL,
  `logs` text,
  `updated` int(11) NOT NULL
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
('NGOOG58NWmyw9DXgdsCvj2xDHi8HCHRa7NtaAXspwO6', 1442329311, '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', 'b4cab770e59abd4731fb6e9ce8578d5e');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_certificate`
--

INSERT INTO `sites_certificate` (`id`, `time`, `token`, `display`, `hash`, `issuer.c`, `issuer.o`, `issuer.ou`, `issuer.s`, `issuer.l`, `issuer.cn`, `signature.type.name`, `signature.type.id`, `purposes`, `valid.time.from`, `valid.time.to`, `identifier.subject.key`, `identifier.authority.key`, `policies`, `usefor.key`, `usefor.extended`, `subject.name`, `updated`) VALUES
(1, 1441477109, '4999265f', '9e682345f64c2ceb7f2bcb9debe98f83', '60fc2aa4', 'GB', 'COMODO CA Limited', '', '', 'Salford', 'COMODO RSA Domain Validation Secure Server CA', 'RSA-SHA256', '', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:1;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1338678000, 1496444399, 'F8:D6:29:80:5F:40:E6:4B:8A:1E:E3:36:36:04:A1:34:AB:3A:91:F7', 'keyid:90:AF:6A:3A:94:5A:0B:D8:90:EA:12:56:73:DF:43:B4:3A:28:DA:E7\n', 'Policy: 1.3.6.1.4.1.6449.1.2.2.7\n  CPS: https://secure.comodo.com/CPS\nPolicy: 2.23.140.1.2.1\n', 'Digital Signature, Key Encipherment', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:2:{i:0;s:15:&quot;DNS:*.tinhte.vn&quot;;i:1;s:14:&quot; DNS:tinhte.vn&quot;;}', 1441477109),
(2, 1441477146, '2ce60b2c', 'c9968591e83ec79036ac420f3f00fd04', 'a18bd28a', 'US', 'Google Inc', '', '', '', 'Google Internet Authority G2', 'RSA-SHA256', '', 'a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslclient&quot;;}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:&quot;sslserver&quot;;}i:3;a:3:{i:0;b:0;i:1;b:0;i:2;s:11:&quot;nssslserver&quot;;}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:&quot;smimesign&quot;;}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:&quot;smimeencrypt&quot;;}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:&quot;crlsign&quot;;}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:&quot;any&quot;;}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:&quot;ocsphelper&quot;;}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:&quot;timestampsign&quot;;}}', 1440608123, 1448319600, '26:1D:BE:F0:1B:E7:1E:0A:C4:7F:DC:53:CE:0C:4A:44:6B:DC:A8:74', 'keyid:4A:DD:06:16:1B:BC:F6:68:B5:76:F5:81:B6:BB:62:1A:BA:5A:81:2F\n', 'Policy: 1.3.6.1.4.1.11129.2.5.1\n', 'Digital Signature', 'TLS Web Server Authentication, TLS Web Client Authentication', 'a:50:{i:0;s:16:&quot;DNS:*.google.com&quot;;i:1;s:18:&quot; DNS:*.android.com&quot;;i:2;s:27:&quot; DNS:*.appengine.google.com&quot;;i:3;s:23:&quot; DNS:*.cloud.google.com&quot;;i:4;s:27:&quot; DNS:*.google-analytics.com&quot;;i:5;s:16:&quot; DNS:*.google.ca&quot;;i:6;s:16:&quot; DNS:*.google.cl&quot;;i:7;s:19:&quot; DNS:*.google.co.in&quot;;i:8;s:19:&quot; DNS:*.google.co.jp&quot;;i:9;s:19:&quot; DNS:*.google.co.uk&quot;;i:10;s:20:&quot; DNS:*.google.com.ar&quot;;i:11;s:20:&quot; DNS:*.google.com.au&quot;;i:12;s:20:&quot; DNS:*.google.com.br&quot;;i:13;s:20:&quot; DNS:*.google.com.co&quot;;i:14;s:20:&quot; DNS:*.google.com.mx&quot;;i:15;s:20:&quot; DNS:*.google.com.tr&quot;;i:16;s:20:&quot; DNS:*.google.com.vn&quot;;i:17;s:16:&quot; DNS:*.google.de&quot;;i:18;s:16:&quot; DNS:*.google.es&quot;;i:19;s:16:&quot; DNS:*.google.fr&quot;;i:20;s:16:&quot; DNS:*.google.hu&quot;;i:21;s:16:&quot; DNS:*.google.it&quot;;i:22;s:16:&quot; DNS:*.google.nl&quot;;i:23;s:16:&quot; DNS:*.google.pl&quot;;i:24;s:16:&quot; DNS:*.google.pt&quot;;i:25;s:23:&quot; DNS:*.googleadapis.com&quot;;i:26;s:20:&quot; DNS:*.googleapis.cn&quot;;i:27;s:25:&quot; DNS:*.googlecommerce.com&quot;;i:28;s:22:&quot; DNS:*.googlevideo.com&quot;;i:29;s:17:&quot; DNS:*.gstatic.cn&quot;;i:30;s:18:&quot; DNS:*.gstatic.com&quot;;i:31;s:15:&quot; DNS:*.gvt1.com&quot;;i:32;s:15:&quot; DNS:*.gvt2.com&quot;;i:33;s:25:&quot; DNS:*.metric.gstatic.com&quot;;i:34;s:17:&quot; DNS:*.urchin.com&quot;;i:35;s:21:&quot; DNS:*.url.google.com&quot;;i:36;s:27:&quot; DNS:*.youtube-nocookie.com&quot;;i:37;s:18:&quot; DNS:*.youtube.com&quot;;i:38;s:27:&quot; DNS:*.youtubeeducation.com&quot;;i:39;s:16:&quot; DNS:*.ytimg.com&quot;;i:40;s:16:&quot; DNS:android.com&quot;;i:41;s:9:&quot; DNS:g.co&quot;;i:42;s:11:&quot; DNS:goo.gl&quot;;i:43;s:25:&quot; DNS:google-analytics.com&quot;;i:44;s:15:&quot; DNS:google.com&quot;;i:45;s:23:&quot; DNS:googlecommerce.com&quot;;i:46;s:15:&quot; DNS:urchin.com&quot;;i:47;s:13:&quot; DNS:youtu.be&quot;;i:48;s:16:&quot; DNS:youtube.com&quot;;i:49;s:25:&quot; DNS:youtubeeducation.com&quot;;}', 1441477146);

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
  `tags` text,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `scan` varchar(40) NOT NULL,
  `certificate` varchar(40) DEFAULT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `hash`, `scheme`, `sub`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `language`, `country`, `type`, `tags`, `title`, `thumbnail`, `description`, `url`, `scan`, `certificate`, `updated`) VALUES
(1, 1441184169, 'dd3c4c8b', '4f1aef1fef151627b42a39827ef573b5', '98c50f5a0eb09a4544509300d9e7b5b5', 'http', '', 'vnreview.vn', 'vnreview', 'vn', '', '', 'f3ea46d0', 'vi', 'VN', 'article', 'newspapers read information', 'VnReview - ÄÃ¡nh giÃ¡, tin tá»©c, tÆ° váº¥n sáº£n pháº©m cÃ´ng nghá»‡', 'photos/raw/other/2CNBZDSZx3rjgGR4ZJr7g46cbP9oyR26lajSCX+WGEUI3UfShu7//qzeWw2wR7PFw49bgMEcDL50QITB16s4oA==', 'ÄÃ¡nh giÃ¡ sáº£n pháº©m cÃ´ng nghá»‡, tin tá»©c cÃ´ng nghá»‡, tÆ° váº¥n sáº£n pháº©m, Ä‘iá»‡n thoáº¡i di Ä‘á»™ng, smartphone, TV, laptop, Ä‘á»“ gia dá»¥ng, mÃ¡y tÃ­nh báº£ng, mÃ¡y áº£nh sá»‘', 'http://vnreview.vn/', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 1441184169),
(2, 1441184691, 'cb8fc719', 'b574cc4e97fb1e05c8636f9b1807f6a1', '570ebc90ae43186029283bb1f9e729a3', 'http', '', 'vnexpress.net', 'vnexpress', 'net', '', '', 'a8d66807', '', '', '', NULL, 'Tin nhanh VnExpress - Äá»c bÃ¡o, tin tá»©c online 24h', 'photos/raw/other/PeDTifbL3BXUGeZ4o3FeR7IBwet/1fUUTrm6xhNG29BY/So778zUEb8u2qfB4yD3HCWyVqoLCDUHLC3mP5V5xM6nLz5psYAZTVZJCP+VKJygAPcUawSnxcPYg3F/weHA', 'ThÃ´ng tin nhanh &amp;amp; má»›i nháº¥t Ä‘Æ°á»£c cáº­p nháº­t hÃ ng giá». Tin tá»©c Viá»‡t Nam &amp;amp; tháº¿ giá»›i vá» xÃ£ há»™i, kinh doanh, phÃ¡p luáº­t, khoa há»c, cÃ´ng nghá»‡, sá»©c khoáº», Ä‘á»i sá»‘ng, vÄƒn hÃ³a, rao váº·t, tÃ¢m sá»±...', 'http://vnexpress.net', 'bee1dc32244d643d0c040bf91ffa84f4', '', 1441184691),
(3, 1441184704, 'a49ca74a', '8778467be4836da0ad1a95347c6553c6', '266adb88be6da12efea60d13249b39f4', 'http', '', 'stackoverflow.com', 'stackoverflow', 'com', 'questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '', '10c10843', '', '', 'website', NULL, 'How to extract title and meta description using PHP Simple HTML DOM Parser? - Stack Overflow', 'photos/raw/other/5jmr+GGHFVEXl7DtOdFOPe1P2I7KU++hn5RzuLYA/jBRtcu2efm/kx/dmj0PpT4HsaZUij8NG06WbT1rcB5MzQP9DOuZzykEKEpXcuuYe+jYrX6gJ+ACFpcWBfe1VU2nJ3Cyem/fqZhk1rFiBh8rvm8vNeT4LX/1rra08WjFBXE=', 'How can I extract a page&amp;#39;s title and meta description using the PHP Simple HTML DOM Parser?  I just need the title of the page and the keywords in plain text. ', 'http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser', '736444bc3612697c735ac92d365bd219', '', 1441184704),
(4, 1441477108, '9d24e854', 'e0efa6913cc843827a2a489bcee00cc1', 'e89c605794cb3c7646e2bf1d275b6e00', 'https', '', 'tinhte.vn', 'tinhte', 'vn', '', '', '6399826d', 'vi', '', 'article', NULL, 'Cá»™ng Ä‘á»“ng Khoa há»c &amp;amp; CÃ´ng nghá»‡ | Tinhte.vn', '', '', 'https://tinhte.vn/', '27ce15f2e348d0bd76fab1920cb94568', '', 1441477108),
(5, 1441477145, '7ab250f1', '683833be714a2aef912d5a17ceebee84', 'baa034786446164961799e4189df7f65', 'https', 'www', 'youtube.com', 'youtube', 'com', 'watch?v=aw9aBIT3HGk', '', '6635cff9', 'vi', '', 'video', NULL, 'Lasse Lindh - Run To You FMV (Angel Eyes OST) With Lyrics - YouTube', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuHgBt0WZeaTWap6WM4eyneW7NdfuJU8tBlDkBWIzloGg==', '', 'https://www.youtube.com/watch?v=aw9aBIT3HGk', '', '', 1441477145);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sites_scan`
--

INSERT INTO `sites_scan` (`id`, `time`, `token`, `display`, `hash`, `total`, `data`, `status`, `updated`) VALUES
(1, 1441184173, '9d0c92fe', '3cb38c7c11c5d9ee4c7f140496d39f4f', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnreview.vn&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnreview.vn&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:56:&quot;http://malc0de.com/database/index.php?search=vnreview.vn&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnreview.vn&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnreview.vn/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184173),
(2, 1441184694, 'e45f994f', 'bee1dc32244d643d0c040bf91ffa84f4', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;http://www.malwaredomainlist.com/mdl.php?search=vnexpress.net&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:59:&quot;https://zeustracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:58:&quot;http://malc0de.com/database/index.php?search=vnexpress.net&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:61:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=vnexpress.net&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:60:&quot;http://yandex.com/infected?l10n=en&amp;url=http://vnexpress.net/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184694),
(3, 1441184707, 'f0c9d955', '736444bc3612697c735ac92d365bd219', '', 63, 'a:63:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;http://www.malwaredomainlist.com/mdl.php?search=stackoverflow.com&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:63:&quot;https://zeustracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:62:&quot;http://malc0de.com/database/index.php?search=stackoverflow.com&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:65:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=stackoverflow.com&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:157:&quot;http://yandex.com/infected?l10n=en&amp;url=http://stackoverflow.com/questions/11385774/how-to-extract-title-and-meta-description-using-php-simple-html-dom-parser&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZeroCERT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441184707),
(4, 1441477113, 'e247c0f9', '27ce15f2e348d0bd76fab1920cb94568', '', 62, 'a:62:{s:8:&quot;CLEAN MX&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;VX Vault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;ZDB Zeus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Tencent&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:13:&quot;MalwarePatrol&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;ZCloudsec&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;PhishLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:7:&quot;Zerofox&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;K7AntiVirus&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Quttera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Spam404&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;AegisLab WebGuard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:17:&quot;MalwareDomainList&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;http://www.malwaredomainlist.com/mdl.php?search=tinhte.vn&quot;;}s:11:&quot;ZeusTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:55:&quot;https://zeustracker.abuse.ch/monitor.php?host=tinhte.vn&quot;;}s:5:&quot;zvelo&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Google Safebrowsing&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Kaspersky&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;BitDefender&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Dr.Web&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ADMINUSLabs&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;C-SIRT&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;CyberCrime&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Websense ThreatSeeker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;CRDF&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;Webutation&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Trustwave&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:18:&quot;Web Security Guard&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;G-Data&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:20:&quot;Malwarebytes hpHosts&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Wepawet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;AlienVault&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Emsisoft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:16:&quot;Malc0de Database&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:54:&quot;http://malc0de.com/database/index.php?search=tinhte.vn&quot;;}s:13:&quot;SpyEyeTracker&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;https://spyeyetracker.abuse.ch/monitor.php?host=tinhte.vn&quot;;}s:24:&quot;malwares.com URL checker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Phishtank&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Malwared&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Avira&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;OpenPhish&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:9:&quot;Antiy-AVL&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:12:&quot;SCUMWARE.org&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:10:&quot;FraudSense&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:5:&quot;Opera&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:21:&quot;Comodo Site Inspector&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Malekal&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:4:&quot;ESET&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Sophos&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:19:&quot;Yandex Safebrowsing&quot;;a:3:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;s:6:&quot;detail&quot;;s:57:&quot;http://yandex.com/infected?l10n=en&amp;url=https://tinhte.vn/&quot;;}s:11:&quot;SecureBrain&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:24:&quot;Malware Domain Blocklist&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:7:&quot;Blueliv&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Netcraft&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:13:&quot;PalevoTracker&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;AutoShun&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:10:&quot;ThreatHive&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:11:&quot;ParetoLogic&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:6:&quot;Rising&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;URLQuery&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:11:&quot;StopBadware&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:12:&quot;unrated site&quot;;}s:16:&quot;Sucuri SiteCheck&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:8:&quot;Fortinet&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}s:19:&quot;Baidu-International&quot;;a:2:{s:8:&quot;detected&quot;;b:0;s:6:&quot;result&quot;;s:10:&quot;clean site&quot;;}}', '0', 1441477113);

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
  `public` int(1) NOT NULL DEFAULT '0',
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `public`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(1, 1, '4c32d620', 'd9992d2be4a14f6f783e75ba00acd488', 1441182140, 1441182140, 0, 1, 'user', 1, 4, 3, 3, 'status', '9uqB0rH5kd4IBJ5ptLir8TubCQWhlnh9OUjXuYy16/c=', 0, 0, 0, 0, 0, 0),
(2, 1, '33d8a653', '50958d06f698b081a7e1ff9588f5e672', 1441182581, 1441182581, 0, 1, 'user', 1, 4, 3, 3, 'music', 'BytrpEuLSZLrBO/n6LkS3yrGLTaYfpxKeRvbQdB7oM0=', 0, 0, 0, 0, 0, 0),
(3, 1, '28d3a2da', 'e6feab677c85bc700a82cb9f1fefdc7b', 1441183070, 1441183070, 0, 1, 'user', 1, 4, 3, 3, 'photos', 'TSapcav1HSAKSOSKAK19ONFgP+WLtzdyfkCo+7L2DFNgBOTtxkwdScnLg+0aPA+TD9h5Dfp10c1W7KOUy6VpoxOFmK6fQXy2AFZzFkj4fXlkfgCEWy4FYt8FkGufnrXpbpzSYgiC45DJPo61Bo1wJwyBKA/63QscSdLoDC4n7h6KirpD/bFPq3HoDgpfZMelQBqc76S+C2tpPKqE0vuEYC5dXu5Q0PXmu6aeXaJz/hThPd3jcVuWmfnhTNSlh9R8F5/TE6oXP8KVhjpLZt1yDASlm60BhllXMg1nzAcfigE=', 0, 0, 0, 0, 0, 0),
(4, 1, '66443ac1', '2c36326e2cd9bad1547c07b74c3d16a6', 1441183314, 1441183314, 0, 1, 'user', 1, 4, 3, 3, 'videos', 'O1ywWonLhfGda5JhUz33gADLK3t94mVYAaw1lLpf/Eo=', 0, 0, 0, 0, 0, 0),
(5, 1, 'a2374f95', 'd30c9d53bd0d6ab960b2ec8974c729ce', 1441477168, 1441477168, 0, 1, 'user', 1, 4, 3, 3, 'status', 'cEgJg+tmTbFAp2d6jUWzCdcjuM2aCisNjyEAAOm9GrGOcRAQEi6QY4KWadqhTyLR2ZcT9J/TTreXHdG2ClYmGA==', 0, 0, 0, 0, 1, 0),
(6, 1, '4a21d3af', '42874a9ab645d7a4eeef2edf6056f399', 1441711567, 1441711567, 0, 2, 'user', 2, 4, 3, 3, 'status', 'jJO73oXwUBaXjSG8BsByrm9Quq1Rg0lNQCRu2Y8hUzQ=', 0, 0, 0, 0, 0, 0),
(7, 1, 'ebf521c3', '866a57f8adaeb69ea344d55b690f280a', 1441796192, 1441796192, 1441796192, 2, 'user', 2, 4, 3, 3, 'status', 'C3KZrvEL4UuEV998cpdU/HeRHIWcdMCEEuq0h93xcKM=', 0, 0, 0, 1, 0, 0),
(8, 1, 'd0521010', '6c8fde30aef91afe28978af3e40b3e98', 1441896405, 1441896405, 0, 1, 'user', 1, 3, 3, 3, 'status', 'igGV3LXmgVBSmiGR7VS/rfEdMDcmHgmdIYuVXHPse1gfE5hMVnvrZPbyaprHp6lUxsY1gIhAQzi345ZYCVkO0A==', 0, 0, 1, 0, 0, 0),
(9, 1, 'b724dfe4', '4d99614fa6762331557a7a0ec77fab09', 1441896604, 1441896604, 0, 1, 'user', 1, 3, 3, 3, 'status', 'EIH/UZyF7O2lCpJ3EMKUMnHDRyBNqJ6Tj9gNobkKBDw=', 0, 0, 1, 0, 0, 0),
(10, 1, 'dda8bf5f', 'a01d1894e6f10fe3b5d3d6c26ca0c630', 1441978261, 1441978261, 0, 1, 'user', 1, 3, 3, 3, 'status', 'jRSnyGa3bRXF1MGDc+iKANUmD6WMb8MsaxmFEovxYURfAdVzD4tbVREV1z3WLS55I/MmL6SlBbc7/VqBTRh5dw==', 0, 1, 1, 0, 0, 0),
(11, 1, 'c07fa22f', 'a450437f7e9162b8dc1cbb8324d93ef7', 1442061262, 1442061262, 0, 2, 'user', 2, 3, 3, 3, 'status', 'G5Q/6XO63Kpjdk8t5VUirXFYZd0IWjoca2oEiCsQNkHSYsErZ1Qg8C4qsKdbJ0lCvv0uh1EGSecsKjoLqqesJg==', 0, 0, 1, 0, 0, 0),
(12, 1, 'e935b403', '89b01f2155d6a43dc6f1bdc7f5113ee3', 1442062521, 1442062521, 0, 1, 'user', 1, 3, 3, 3, 'status', 'UXf5pXoBEa2oUUM/RNsmXQJk5S0cmtsbZ2sFfPizg/9vL3QE/Y6QXceAJM5ZtA2l6JBv3Z5+gnpHw7e9ApD7QA==', 0, 0, 1, 0, 0, 0),
(13, 1, 'fdd58849', '3d3b73924a9d5a292a30f93296219c16', 1442062606, 1442062606, 0, 1, 'user', 1, 3, 3, 3, 'status', '2i4uboa55/eYsCR+my0fBlm0mqhy/qWuVrsImjWQuJ4=', 0, 0, 1, 0, 0, 0),
(14, 1, '7231d079', 'a81287bb2ed995f50f63a9da38b2cd15', 1442064182, 1442064182, 0, 1, 'user', 1, 3, 3, 3, 'status', 'msQz7o1km7NjhIeCZnp66AkRWnOmbqxu7c/zO8lhnyMpPS9i/GWc7a9qNW7MXyiWjH+XhikocIxKbMx5K73yLw==', 0, 0, 1, 0, 0, 0),
(15, 1, '14fa0165', '82644e1bb0a125ad1273f29d279358f5', 1442065236, 1442065236, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Fr0+NHYCAO+FSvzZLDf1O94bfK76FhgiLT/XZQ3QgI2VuSdcEV8/S5UC6RI/GCWc3vDmFPTl8vjFNFoTKmpEnw==', 0, 0, 1, 0, 0, 0),
(16, 1, 'b6395dd3', '6993af2aaeeda1497dcff7d97f719d46', 1442065353, 1442065353, 0, 1, 'user', 1, 3, 3, 3, 'status', '1QC1iwJ+TWQ8T5ehjfQJnxqjbr7C4WPUxh5p0qN1DuE=', 0, 0, 1, 0, 0, 0),
(17, 1, '28836d5e', 'e03949c6d779f78eb6fd0a7865101639', 1442130463, 1442130463, 0, 1, 'user', 1, 3, 3, 3, 'status', 'RqMsJJdOPuMMqhFTVv+mHrZrihiTB1U4O6ceGG/4cmY=', 0, 0, 0, 0, 0, 0),
(18, 1, '0bebc957', '38f4e6532d3252e39173fb915d53a7f7', 1442130535, 1442130535, 0, 1, 'user', 1, 3, 3, 3, 'status', 'Ll9lG7Cmsj9mll49hRHD71ns7p0VBXQF+CdaKXUN8pA=', 0, 0, 0, 0, 0, 0),
(19, 1, '0093edfe', '8620ddfe7daafbe9e904d607c80022ea', 1442315066, 1442315066, 0, 1, 'user', 1, 3, 3, 3, 'status', 'cHxn1WXYznSvG0atKxeE57mY6IFa6SWu6htCBV101MM=', 0, 0, 1, 0, 0, 0);

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
  `things.type` char(10) NOT NULL,
  `things.id` int(11) NOT NULL,
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
  `logscontent` text,
  `places` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`, `places`) VALUES
(1, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'status', 3, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(2, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441538699, 'comment', 1, 1, 'user', 1, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(3, '2a52fe3e', 'c4f4bf297e38c9e8217e942da2ad9159', 1441712504, 'status', 3, 1, 'user', 1, 0, 'SCA9qdGPndwci8ljJ+FaC1vu1T3EeAu8pXAXSIhA9uU=', '', NULL),
(4, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'status', 7, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(5, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'comment', 4, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL),
(6, '2da0bf77', 'f8e4691f9bead52e2b54a66f4572a768', 1441796192, 'status', 7, 2, 'user', 2, 0, 'VPh0sW4abFgZ6CZoGARiotwyYplSL5JcMZaXNKKH/08=', '', NULL);

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
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_favorite`
--

INSERT INTO `status_favorite` (`id`, `time`, `inside.type`, `inside.id`, `guy.type`, `guy.id`) VALUES
(2, 1441529806, '', 3, 'user', 1),
(3, 1441540055, '', 4, 'user', 2),
(5, 1441712425, '', 5, 'user', 1),
(6, 1441712484, '', 4, 'user', 1),
(8, 1441712926, '', 2, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_follow`
--

CREATE TABLE IF NOT EXISTS `status_follow` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES
(1, 10, 'live'),
(2, 10, 'ganhhao');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_link`
--

INSERT INTO `status_link` (`id`, `time`, `status.id`, `sites.id`) VALUES
(1, 1, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
  `id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_mood`
--

INSERT INTO `status_mood` (`id`, `status.id`, `type`, `value`) VALUES
(1, 7, 1, '[feel]sad');

-- --------------------------------------------------------

--
-- Table structure for table `status_music`
--

CREATE TABLE IF NOT EXISTS `status_music` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `music.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_music`
--

INSERT INTO `status_music` (`id`, `time`, `status.id`, `music.id`) VALUES
(1, 0, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_photos`
--

INSERT INTO `status_photos` (`id`, `time`, `status.id`, `photos.id`) VALUES
(1, 0, 3, 1),
(2, 0, 3, 2),
(3, 0, 3, 3),
(4, 0, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_places`
--

INSERT INTO `status_places` (`id`, `time`, `inside.type`, `inside.id`, `value`) VALUES
(1, 0, 'status', 9, '51'),
(2, 1441978261, 'status', 10, '1'),
(3, 1442061262, 'status', 11, '1'),
(4, 1442062521, 'status', 12, '1'),
(5, 1442062606, 'status', 13, '63'),
(6, 1442064182, 'status', 14, '179'),
(7, 1442065236, 'status', 15, '139'),
(8, 1442065353, 'status', 16, '505'),
(9, 1442315066, 'status', 19, '506');

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
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_videos`
--

INSERT INTO `status_videos` (`id`, `time`, `status.id`, `videos.id`) VALUES
(1, 0, 4, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `feed.order`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'Lam Hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 1, 0, 1442329311),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '64', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1442062664),
(3, 1441890502, '0236434f', '6dcdec6cd495efac92603381bfa2f812', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '1amHNJuPQWpKm1f9pbxT/S8duiP2G6C2P5StZFQG+iQ=', '', 'Tráº§n DÆ°á»¡ng', 'Tráº§n', '', 'DÆ°á»¡ng', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, '1e17e0ee', 0, 0, 0, 1441891790),
(4, 1441892022, '0b78a4bc', 'fbed738d84551196d79ece222cebe8ab', 'trannguyen', 'giccos.inc@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'DfpjMlIj0dArKEB8E8jox7VsBXbb8oQErXUyrFKollU=', '', 'Tran Nguyen', 'Tran', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/trannguyen', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, '4d198899', 0, 0, 0, 1441892183);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_follow`
--

INSERT INTO `users_follow` (`id`, `time`, `user.id`, `guy.type`, `guy.id`) VALUES
(1, 1441182000, 1, 'user', 1),
(2, 1441441375, 2, 'user', 2),
(3, 1441441380, 1, 'user', 2),
(4, 1441441380, 2, 'user', 1),
(5, 1441890524, 3, 'user', 3),
(6, 1441892038, 4, 'user', 4);

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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

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
(7, 1441453387, 'id', '1', 1, 'ee5504b2'),
(8, 1441479693, 'id', '1', 1, '1a4cb25f'),
(9, 1441479820, 'id', '1', 1, '1a4cb25f'),
(10, 1441480106, 'id', '1', 1, '1a4cb25f'),
(11, 1441521669, 'id', '1', 1, '1a4cb25f'),
(12, 1441522142, 'id', '2', 1, '1a4cb25f'),
(13, 1441540022, 'id', '2', 1, '1a4cb25f'),
(14, 1441631017, 'id', '1', 1, '1a4cb25f'),
(15, 1441700354, 'id', '1', 1, '1a4cb25f'),
(16, 1441711519, 'id', '2', 1, '1a4cb25f'),
(17, 1441795788, 'id', '1', 1, '1a4cb25f'),
(18, 1441796147, 'id', '2', 1, '1a4cb25f'),
(19, 1441873705, 'id', '1', 1, '1a4cb25f'),
(20, 1441890524, 'id', '3', 1, '1a4cb25f'),
(21, 1441892038, 'id', '4', 1, '1a4cb25f'),
(22, 1441892595, 'id', '1', 1, '1a4cb25f'),
(23, 1441896872, 'id', '1', 1, '1a4cb25f'),
(24, 1441897059, 'id', '1', 1, '1a4cb25f'),
(25, 1441897659, 'id', '1', 1, '1a4cb25f'),
(26, 1441977018, 'id', '1', 1, '1a4cb25f'),
(27, 1442048512, 'id', '1', 1, '1a4cb25f'),
(28, 1442048708, 'id', '2', 1, '1a4cb25f'),
(29, 1442059870, 'id', '2', 1, '1a4cb25f'),
(30, 1442060135, 'id', '2', 1, '1a4cb25f'),
(31, 1442060729, 'id', '2', 1, '1a4cb25f'),
(32, 1442060809, 'id', '2', 1, '1a4cb25f'),
(33, 1442127385, 'id', '1', 1, '1a4cb25f'),
(34, 1442152982, 'id', '1', 1, '1a4cb25f'),
(35, 1442210048, 'id', '1', 1, '1a4cb25f'),
(36, 1442231955, 'id', '1', 1, '1a4cb25f'),
(37, 1442297697, 'id', '1', 1, '1a4cb25f');

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
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=latin1;

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
(22, 1, 1441460854, 1441466917, '1a4cb25f'),
(23, 1, 1441467459, 1441471728, '1a4cb25f'),
(24, 1, 1441475501, 1441480797, '1a4cb25f'),
(25, 0, 1441479687, 1441480101, '1a4cb25f'),
(26, 0, 1441521144, 1441521669, '1a4cb25f'),
(27, 1, 1441521669, 1441529812, '1a4cb25f'),
(28, 0, 1441522113, 1441522139, '1a4cb25f'),
(29, 2, 1441522142, 1441522400, '1a4cb25f'),
(30, 1, 1441538468, 1441543677, '1a4cb25f'),
(31, 0, 1441540015, 1441540021, '1a4cb25f'),
(32, 2, 1441540022, 1441540055, '1a4cb25f'),
(33, 0, 1441631013, 1441631013, '1a4cb25f'),
(34, 1, 1441631017, 1441632835, '1a4cb25f'),
(35, 0, 1441700332, 1441700352, '1a4cb25f'),
(36, 1, 1441700355, 1441704088, '1a4cb25f'),
(37, 1, 1441707322, 1441712945, '1a4cb25f'),
(38, 0, 1441711508, 1441711514, '1a4cb25f'),
(39, 2, 1441711519, 1441711808, '1a4cb25f'),
(40, 1, 1441714701, 1441714734, '1a4cb25f'),
(41, 0, 1441714960, 1441717532, '1a4cb25f'),
(42, 0, 1441778894, 1441779325, '1a4cb25f'),
(43, 0, 1441780191, 1441780333, '1a4cb25f'),
(44, 0, 1441795783, 1441796146, '1a4cb25f'),
(45, 1, 1441795788, 1441798338, '1a4cb25f'),
(46, 2, 1441796147, 1441797754, '1a4cb25f'),
(47, 1, 1441804581, 1441806674, '1a4cb25f'),
(48, 0, 1441873688, 1441873701, '1a4cb25f'),
(49, 1, 1441873705, 1441887394, '1a4cb25f'),
(50, 0, 1441890470, 1441890645, '1a4cb25f'),
(51, 3, 1441890524, 1441891790, '1a4cb25f'),
(52, 0, 1441891797, 1441892594, '1a4cb25f'),
(53, 4, 1441892039, 1441892183, '1a4cb25f'),
(54, 1, 1441892595, 1441892808, '1a4cb25f'),
(55, 1, 1441893240, 1441893269, '1a4cb25f'),
(56, 1, 1441893738, 1441897800, '1a4cb25f'),
(57, 0, 1441896867, 1441897054, '1a4cb25f'),
(58, 0, 1441897648, 1441897655, '1a4cb25f'),
(59, 0, 1441977008, 1441977014, '1a4cb25f'),
(60, 1, 1441977018, 1441980682, '1a4cb25f'),
(61, 0, 1442048505, 1442048702, '1a4cb25f'),
(62, 1, 1442048512, 1442049786, '1a4cb25f'),
(63, 2, 1442048708, 1442051860, '1a4cb25f'),
(64, 1, 1442051170, 1442051979, '1a4cb25f'),
(65, 1, 1442052643, 1442057041, '1a4cb25f'),
(66, 1, 1442057496, 1442059436, '1a4cb25f'),
(67, 1, 1442059744, 1442064203, '1a4cb25f'),
(68, 0, 1442059855, 1442060130, '1a4cb25f'),
(69, 2, 1442059871, 1442062664, '1a4cb25f'),
(70, 0, 1442060724, 1442060804, '1a4cb25f'),
(71, 1, 1442065207, 1442066180, '1a4cb25f'),
(72, 0, 1442127347, 1442127381, '1a4cb25f'),
(73, 1, 1442127385, 1442128132, '1a4cb25f'),
(74, 1, 1442129215, 1442139484, '1a4cb25f'),
(75, 0, 1442152952, 1442152979, '1a4cb25f'),
(76, 1, 1442152982, 1442156601, '1a4cb25f'),
(77, 1, 1442158832, 1442159334, '1a4cb25f'),
(78, 0, 1442161112, 1442161112, '1a4cb25f'),
(79, 0, 1442210044, 1442210044, '1a4cb25f'),
(80, 1, 1442210049, 1442211312, '1a4cb25f'),
(81, 1, 1442211783, 1442212187, '1a4cb25f'),
(82, 1, 1442226862, 1442232038, '1a4cb25f'),
(83, 0, 1442231941, 1442231954, '1a4cb25f'),
(84, 0, 1442297689, 1442297695, '1a4cb25f'),
(85, 1, 1442297697, 1442317517, '1a4cb25f'),
(86, 1, 1442318669, 1442329311, '1a4cb25f');

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
  `description` text,
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
(1, 1, 'user', 1, 0, 1441184002, '4f526865', '5f59d1c5f6b97391b1072f5bced89210', 'Ä‘iá»u anh lo láº¯ng', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 'love like khanhphuong best music love like khanhphuong best music', 'Molly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses', 4, 4, 4, '9453472a838aa76d4afcae64086aebef', '0', '68ee2fce6c94d53b3f2d9f264d6d8d18', 'ef429e84ba74a7c5771b1f2acb8dddf1', 'feadfb52ee08ab062e7c0dbdec789ca4', '', '0', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '1f4bf6ca', '9ca0bfec', '94560fb9', 0, 57882648, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_pointtag`
--

INSERT INTO `videos_pointtag` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `point`, `length`, `sticker`, `content`) VALUES
(1, 1441386003, 1, 'user', 1, 17.43, 5.00, '', 'comment in videos'),
(2, 1441980392, 1, 'user', 1, 3.58, 5.00, '', 'ná»¯ chÃ­nh Ä‘áº¹p quÃ¡ cÆ¡ :D'),
(3, 1442135885, 1, 'user', 1, 55.10, 5.00, '', 'buá»“n :(');

-- --------------------------------------------------------

--
-- Table structure for table `videos_rate`
--

CREATE TABLE IF NOT EXISTS `videos_rate` (
  `id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `point` int(1) NOT NULL,
  `updated` int(11) NOT NULL
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
  `captions` char(10) NOT NULL,
  `updated` int(11) NOT NULL
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
-- Indexes for table `process_id`
--
ALTER TABLE `process_id`
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
-- Indexes for table `videos_rate`
--
ALTER TABLE `videos_rate`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=869;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `maps_places`
--
ALTER TABLE `maps_places`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=511;
--
-- AUTO_INCREMENT for table `messages_data`
--
ALTER TABLE `messages_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `messages_members`
--
ALTER TABLE `messages_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `messages_typing`
--
ALTER TABLE `messages_typing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=261;
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
-- AUTO_INCREMENT for table `process_id`
--
ALTER TABLE `process_id`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sites_rate`
--
ALTER TABLE `sites_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sites_scan`
--
ALTER TABLE `sites_scan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sites_views`
--
ALTER TABLE `sites_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `status_follow`
--
ALTER TABLE `status_follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_hashtag`
--
ALTER TABLE `status_hashtag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_invite`
--
ALTER TABLE `status_invite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `status_link`
--
ALTER TABLE `status_link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `status_mood`
--
ALTER TABLE `status_mood`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
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
-- AUTO_INCREMENT for table `storage_video`
--
ALTER TABLE `storage_video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=87;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `videos_rate`
--
ALTER TABLE `videos_rate`
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
