-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2015 at 07:07 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=872 DEFAULT CHARSET=latin1;

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
(28, 'en', 'hashtag', 'hashtag', 'false'),
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
(868, 'en', 'player_loop_error', 'player is don''t repeats, maybe by error', 'false'),
(869, 'en', 'you_null_groups', 'you don''t join any groups', 'false'),
(870, 'en', 'you_null_hashtag', 'you don''t use any hashtag', 'false'),
(871, 'en', 'times_mentions', 'times mentions', 'false');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library_voice`
--

INSERT INTO `library_voice` (`id`, `time`, `updated`, `token`, `language`, `word`, `content`) VALUES
(5, 1438706177, 1438706177, '7523c0a4', 'en', 'love', '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t+B/MP///6CQeYxjcxqG/+NCxOk1FBbCX4lgAjOWY2hv/////+pal8pXUrf6loYxUN0MHmMZ+JAEOEg8/Eg8xjGfQ0zm6f6G38weYxvEhZMQU1FMy45N6qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqgFtu2//5ka//pCCKaNOAxIEXDlFlHlxebmzRxbP+xZRVxeVJxZZVxv/2nb+aLKKeNzf+7f/uz/7mycb/40LE2BHTGmW/wSgCnCgMo9iyiwIosp2cospnbs7PGb/2djTSi2diyiy2vNypZnb///P/lGlFllXG5////NOzXmzRpxokotnKNAhZZlxubNHFlWzsWUUWwYsmIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/Igv9oH4ATK9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(6, 1438706180, 1438706180, '5d0e7e64', 'en', 'like', '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hQLYWqFoz3VQrNRg6SBe/+NCxP8u9BaJv0xIAK1sWubTLSSqPGWkE11iMJXs+yhFIhK9GvObL11Y5jZVhBsIu8UTKbCyUSFEu6c4zr1jfjBiVQioiTSRI2qTaZTxdRikCiTsq3ZNhzaCa1IFElIH3pUjZ1KBmcmltW1prNSxRFNiUVEEr9TuV7LNhdQe+CtPQeKtL1L+o5GMs/uW4sJg8Cb8JnW5hdVChxoNhQVhwSgFOI4+g/nBLFhftyos+/TcOhI2X/MGGg8G003/WYUFmSSbmpN/8oHxNhMK9yqSrP//40LE/zFMDoA1mEgA8hSsf0S9MmAkgmgWG0wMzb//qB0dmlUgIoOR5BFLVDwYjd//+WHkmGKZMVRKJ3klI2MSUuSUjxSSv///2LHXpPJ7XypG1x8bVR2kQkqHnSda0pS/////JjIOZPUodahw3SWmDiDDhuB1xqygSiONwej6TnJHkUlTv/1K8VLJiCmopmXHJuqqqqoXbD/7/////9DGlK0SDodDrCQeFlDoeMaUrIZBIzlFS0EQ6HWEg8LKIiQeNKKlmK3///8odFYkHjVEgP/jQsT9LZvKfF+PWABg84dAoqgkHQ6HWEg8LKHTP+8xpSloUOirCQeNKJB4WcRDpZhEVNCioN//8I4FN6K4N6mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8bW0WQH8AoA1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(7, 1438706184, 1438706184, 'f3604ea8', 'en', 'fuck', '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BWfYDBAqh/8lzzWWyyyg/+NCxO0mLAKBlkmGFIGDBBn/XK5ESpp7TRf/4mIKaimZccm9VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/xJrRlB+AIc7VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(8, 1438953652, 1438953652, '6f002cd6', 'en', 'life', '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Wm3H1ByeQriKtWupXlry/+NCxP8szBKAN1kwAPuwYllo5OrW+2QnFEkMXF2CGuqCUSU5Ygk9QnC23C4uLSZ59mq09XnpkXka2qup+ePrLv+zVDd119t4vatWoUa6WmuoTEJZCiis19Xc5lsqWw/LRWrV7lqVZsUZ0dRtKmE0KONf3OL0StxGofS+knvfcW9dE1z/vWz111hkt61vw6mO9XEE8VKF7sblnLzNMysUVlkqY1lD16UJtxtY66qsuhBAnH+dBz/3xdUoSSWW2623a7bbf//77oAxvkC4NiBrPYv/40LE/zmUFnhVmGABpKuLMMlMdcte71Gk8Bbm3zmX+YvjjvlpyVlPvHh+TfRIx/mcZdTZk0vr6pDZL8nyscVgTVOlUzzE7f95o52F5Da1iZrWZtC05F7e0o63XHGISIeOFg42VyJ1eSdJLhytrpye72X/ecam9vyas+tNpYdiLEEDDMTa12badKmbLWDlSdVnPmZmbzNJn/nOlHAjhqiXnyTWVilCgSVXIdO0mm3O+L0FSghACAEMulYVBFohFJKzSyJFGpSl/KXDN//////8qv/jQsTcL0PGzl+IYAPfKqsCwtTNK0IQAwAIRQ6BsHzcCwtRQsLNKiorcqq+zf/wzcMzaioq0ipq1qvKquwsLKzNf//////DN7M2oqKtKrWpIrckiptFA2BsaULHXwULUwsc2SKirSSq+zf/sLC1MLB3//+JcOlQWTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxOMic5IIBclAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsT/AAADSAAAAABVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV'),
(9, 1438956858, 1438956858, 'babe5dd2', 'en', 'kiss', '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'),
(10, 1440152726, 1440152726, '3278a210', 'en', 'you', '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'),
(11, 1442577731, 1442577731, '7daac86e', 'en', 'l', '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F3BdtlnT+0eZ6wU2/OI5/+NCxLg/DBZ4X494AN+aBcEo5s5l1cWhqXcGmt/3vemb0p8U+KajQO2se3kWjuFaBPDnxS8ZLH4sqeh8JSIn424S24uLabzE3olRnnBfNCAK1QHnHUXLdt/+QhYhCEIQghCEPFVVVLZtm6qqrM0ZmZl/6qq3/swEv///qqqqsf/1WZmZmZlVVVVVfZmZmZVVVVVVj///X/+MzM3+qqXGZf/VVPVVX/jMzMzKqqqqqsGAgIUzBgygq6VgqCoKnfUDR7xKCqoNXyXQGPQWpKTjSzL/40LEfxyLZoW/wRgA82almvN////3NmjS4vEpONFARNBaJIiKEgZBNFKTjSirVUs8v/5NahkysFDAnGFKywGDQ1ayyGUsMpOUjVlqORkyyX//8js5ahq1lkcjWWWw///NZSPzVgaOR7hxpR6kpdiyrQSInFHxakkSQksgmpKQqKB4Ciq/F+LJiCmopmXHJvVVVVVVVVVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVf/jQsTQIZudwDYwzZRVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxP8AAANIAAAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVU='),
(12, 1442577741, 1442577741, 'b843f891', 'en', 'g', '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3O5tM7a1p9nPnO+zk5v6/+NCxIQynAauX49gA7CYd5zUvVXK8fift9ly6ZZae21tn1jFZpPbnbbnEig+07WzRxDqZuLKJGJQ0HLYutOrWnmbWXTP285ve6TvWL4bTlcXKOTqAQqzJkYZiWJUKDT6AomNQzNAh0gFQE3PBgUuDGjFgMmxg5AWgLUNWD2KlPrEdXH4qEe3tytUT+bVY8WKhJtH4j18qkxrdYrEZb8/YyjU5CS+klapNRvbeHyGMjxneultwnWEQxs0LffWjX78/WdXscSO5qhQq90v3kP032b/40LEfUPsdlgNmngAtu2843L21rQxQI1bnlapK4OZNsKOZm/btMsykUvltl78vfBrtYZHcBUo9C1PaPHhsbmnG9QM7KhLlZKJ6RuclBrD2DDi6gxYEXO4Oma+k7Co9jOUfw7vJmW1pVw+lTjVAPo9YCQa0IZlcqLI44UyrUMOtCqPswoWrPpLRrWnjWxJGiwFY8c9xf/4cfL+3/peXGYNIDAgEAgEAgFAoFAwGAdvJDbwWirwGCxD9Dt/7mKb/zKhl//osxZv/8sxXMUxv//1RP/jQsQxFpN3Pl+HLALsdyub///8REhI5CoJnFBcPB0SD3////40QYyiIgHx4KPAYRGIPYRGBNVMQU1FMy45N1VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVUxBTUUzLjk3VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV/+NCxJoAAANIAcAAAFVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVTEFNRTMuOTdVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVX/40LE/wAAA0gAAAAAVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ=='),
(13, 1442578048, 1442578048, '21a4fba2', 'en', 'live', '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A9nIEemEL0Vhgt9XZXOm/+NCxP1K3EZ9H5jAAZ0F7OxUvZxjlqpu3IrFbGTxnty5zH5br8KPOvRU+7OV7K3zn438P/8b/Rd/zgzVAQCDgPEyWvDv+hJYjBUZ/2fM/uS7/M4mRlZi//qdXHqeLcqlLL/+BSHoRi4Vh0ntIrpf/+X5+uV0aZ87xO+a3H//8kJaPWdYgR062O1dHiMP///u2qxhd5S5NFM45hRrQldeH////1KzPX6k7BDq9UzarZtWzCfM3bWWD//////EY37AWNVoxcTLpjYlWr2KbbczXgv/40LElTTEMmgNmHgB2ldeE+v////////dYeTrhbxAZLI/LYvt6uZWGJFYYkFWzUVzk+vWvetrpmYn8T/////////942wd2m/kk0QQbm2+0hP////8xv////5nqXqXMbMY2UuUpcxsxjOoCAmUpSzAQEVAIUaUBAXUpWmAgJkMapQol1K0xjG+pSl+hgwyFiCu/gU2L6Cmwv4NxBugrAUwFPxN6b4V//FF4u4FKkxBTUUzLjk3qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqv/jQsSGGEqp5D/BEAGqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqkxBTUUzLjk3qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq/+NCxOgAAANIAAAAAKqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqTEFNRTMuOTeqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqr/40LE/wAAA0gAAAAAqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqg==');

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
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

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
(99, 'en', 1440152727, 1440152727, 'you', 'determiner', 'The individual or group spoken or written to', '', '', 'Wiktionary, Creative Commons Attribution/Share-Alike License', 'wiktionary', 'wordnik'),
(100, 'en', 1442577732, 1442577732, 'l', 'noun', 'The 12th letter of the modern English alphabet', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(101, 'en', 1442577732, 1442577732, 'l', 'abbreviation', 'length', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(102, 'en', 1442577742, 1442577742, 'g', 'noun', 'The seventh letter of the modern English alphabet', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(103, 'en', 1442577742, 1442577742, 'g', 'abbreviation', 'acceleration of gravity', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(104, 'en', 1442578049, 1442578049, 'live', 'verb-intransitive', 'To be alive; exist', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(105, 'en', 1442578049, 1442578049, 'live', 'verb-transitive', 'To go through; experience:  lived a nightmare. ', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(106, 'en', 1442578049, 1442578049, 'live', 'phrasal-verb', 'live down  To overcome or reduce the shame of (a misdeed, for example) over a period of time', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(107, 'en', 1442578049, 1442578049, 'live', 'idiom', 'live it up  Slang   To engage in festive pleasures or extravagances', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik'),
(108, 'en', 1442578049, 1442578049, 'live', 'adjective', 'Having life; alive:  live animals.  See Synonyms at living', '', '', 'The American HeritageÂ® Dictionary of the English Language, 4th Edition', 'ahd-legacy', 'wordnik');

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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

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
(56, 1442315066, 'user', 1, 'follow', 'status', '19', '', ''),
(57, 1442401093, 'user', 1, 'add', '', '', 'status', '20'),
(58, 1442401093, 'user', 1, 'follow', 'status', '20', '', ''),
(59, 1442504625, 'user', 1, 'favorite', 'status', '20', '', ''),
(60, 1442507414, 'user', 1, 'unfavorite', 'status', '20', '', ''),
(61, 1442516062, 'user', 2, 'add', '', '', 'status', '21'),
(62, 1442516062, 'user', 2, 'follow', 'status', '21', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `updated`, `token`, `ip`, `device`, `platform`, `browser.name`, `browser.kernel`, `browser.version`, `agent`) VALUES
(1, 1439521903, 1439521939, '6808e60a', '113.170.45.132', 'desktop', 'Windows ME (x64)', 'Google Chrome', 'blink', '44.0.2403.155', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36'),
(2, 1439522032, 1441026126, '1064bb3d', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '44.0.2403.157', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.157 Safari/537.36'),
(3, 1440291474, 1440500605, 'b46b61b4', '113.170.45.132', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174'),
(4, 1441097394, 1441439480, 'ee5504b2', '113.170.42.243', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(5, 1441460383, 1441460383, '7c514c94', '192.168.0.102', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.85', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.85 Safari/537.36'),
(6, 1441460850, 1442663596, '1a4cb25f', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Google Chrome', 'blink', '45.0.2454.93', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36'),
(7, 1442481944, 1442481944, '3c3ff190', '113.170.46.167', 'desktop', 'Windows 10 (x64)', 'Opera', 'blink', '31.0.1889.174', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.155 Safari/537.36 Opera/31.0.1889.174');

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
(8, 1441126202, 2, '0d92d0df', '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'),
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
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=latin1;

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
(510, '8a1af1a4', '663823516aaab0a8c3cc60156539305e', 'Bridgewater MBTA Commuter Station', '2727, 85 Burrill Ave, Bridgewater, MA 02324, United States', '2727', '', '41.986346,-70.966624', 41.986347, -70.966621, 'establishment', 'maps/raw/places/staticmap/location=41.986346,-70.966624&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C41.986346,-70.966624&format=gif'),
(511, '1b389769', 'f18a670b70c4200c95d7d2aa910edcb5', 'Long BiÃªn', 'Long BiÃªn, Hanoi, Vietnam', 'Long BiÃªn', '', '21.0548635,105.8884966', 21.054863, 105.888496, 'administrative_area_level_2', 'maps/raw/places/staticmap/location=21.0548635,105.8884966&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.0548635,105.8884966&format=gif');

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
) ENGINE=InnoDB AUTO_INCREMENT=265 DEFAULT CHARSET=latin1;

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
(260, 'videos_views_timeout', 'en', '86400'),
(261, 'boxLinks_hashtag_timeout', 'en', '0'),
(262, 'video_cache_timeout', 'en', '3600'),
(263, 'video_preview_interval', 'en', '3'),
(264, 'video_preview_dimension', 'en', '128x72');

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
('WwbhuhO1tquuBkyaFrRcp3AFDsVvTHCriQm,2HNK5o0', 1442682438, '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', 'ecf4144e41e9de5c2e24511ea6bc1b3f');

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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

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
(19, 1, '0093edfe', '8620ddfe7daafbe9e904d607c80022ea', 1442315066, 1442315066, 0, 1, 'user', 1, 3, 3, 3, 'status', 'cHxn1WXYznSvG0atKxeE57mY6IFa6SWu6htCBV101MM=', 0, 0, 1, 0, 0, 0),
(20, 1, '78d67e47', 'ca6cd3e8d3068ce2c283b1da9c77b3ce', 1442401093, 1442401093, 0, 1, 'user', 1, 3, 3, 3, 'status', 'VS5ecDE7l+C60Umr0rkIeaJa4Uc/LKEhcb0gTGBGZ3vdBWOdlRMvifFrQhPp5rGDHYy4r3m+4e/fsSUhePN9+g==', 0, 0, 1, 0, 0, 0),
(21, 1, 'b1237c67', '18c493c23518d817788d55c9552f2bd0', 1442516062, 1442516062, 0, 2, 'user', 2, 4, 3, 3, 'status', 'S0A9DS9F8CpwKleOe6iJCT442W5tsUCdFE7II6FPbgQK2BlO8Ho5h69zY6Sd7jVV3hEn6cQxpk7YS7SxAEXHSQ==', 0, 1, 0, 0, 0, 0);

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
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `time`, `inside.type`, `inside.id`, `hashtag`) VALUES
(1, 0, 'status', 10, 'live'),
(2, 0, 'status', 10, 'ganhhao'),
(4, 1442516062, 'status', 21, 'live');

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

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
(9, 1442315066, 'status', 19, '506'),
(10, 1442401093, 'status', 20, '511');

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
  `time` int(11) NOT NULL,
  `inside.type` char(10) NOT NULL,
  `inside.id` int(11) NOT NULL,
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
  `updated` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `updated`, `size`, `modified`) VALUES
(2, 'drive', 1, 1441182582, 'df7f7a54', '', 'e141ae0b0db60c4e3e3eba59f74a6f69', '3pRoOIIdWWRoJfFdu3wS6KrehyNdMHfWe6gDTnRTHJSVZRECaPlnh/VTdI8ldlGI0NLClOFzOc/Cfbe53WgVog==', 'audio/mp3', '314b49e3', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182582, 9803861, 0),
(3, 'drive', 1, 1441182582, '89ea6650', '', 'e6321c040a4eceb05c0d6241487da67c', 'qMJC2HgxprakgJ35nS2WR4qz7/bQ91FbZMtclQ4vg1XXwmSwf4sCmKdHsZ69ZsfI+HsfdBCsQXRq7ch4WmRlpA==', 'video/x-mpeg', '3521a9ad', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182593, 9804514, 0),
(4, 'drive', 1, 1441182593, 'de5214db', '', '7f3d0ab076b9fbbead304640c8be22af', 'uQi5Rek/ln+I0fLv5VVNeKr9PomUbg6EbpaPcci5JMlf/ShVod0yXy9FLD6sIehode5ipY0l3lt3enie94vdyQ==', 'video/x-mpeg', 'e224e7ed', 'DieuAnhLoLangUpgrde-V.A-4036624_hq.mp3', 1441182602, 3921826, 0);

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
  `updated` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `updated`, `size`, `modified`) VALUES
(5, 'faces', 1, 1441183035, '7f7b5037', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'XlNUSVVar7t2igeKJJ+vwUooML3Rj5+vTUsDe1976AWw3k+eeuZk/XnJf3fdzQDL/JY7SN9fkoXRk8d9MhMzUA==', NULL, 'image/jpeg', 'f45a9102', 'CL36_2nUkAATviz.jpg', 1441183035, 54420, 0),
(6, 'faces', 1, 1441183044, '9f1d2ed5', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'nF+Rta09RwrTlGEq8cnpxsJmdo2mjb7zGc39szRiQT3W9H/bdzF042lYGgZFZMG2wL6Y0Hi9QftlanNjYGVihw==', NULL, 'image/jpeg', '4388c5fd', 'CL36_2nUkAATviz.jpg', 1441183044, 54420, 0),
(7, 'faces', 1, 1441183051, '8323de3b', '', '50d36e33ce1f6d1cfefd3a54203c061d', '5QCwOmL1tJugZqJYQxS84W3AgOtitxbX1p9aHnJUBTvRUvUPGpoJOLlu+2H6/Bjnep/Rb4G9b6yO6bbSlLOBLA==', NULL, 'image/jpeg', '8d153617', 'CL36_2nUkAATviz.jpg', 1441183051, 54420, 0),
(8, 'faces', 1, 1441183053, 'f3970573', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OTXZmajArbOlu3IsLlZPaW4efbJInUOh9EBDo/xjgpeLksNGCO6oSwgK3BcqEKRCCjUap57aZThOG3KJows2ww==', NULL, 'image/jpeg', 'a06c6ad1', '1440690613319_3257.jpg', 1441183053, 246017, 0),
(9, 'faces', 1, 1441183054, '9f413d25', '', 'b69946e35fff6c33d17636829b6c7fe9', 'LZwwOTyUjq2k1q/tPNPnNi8GzICif6nkYy94/y0fkxCcQ6BPIP9hB4Xvi9aS7BDQmewNqlie2xvNMSHSJ5tK5A==', NULL, 'image/jpeg', '4e27d80f', '1500x500.jpg', 1441183054, 101411, 0),
(10, 'faces', 1, 1441183054, '02242222', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'KvqL3i/zn3HbaXl0Je596sVTxSxNTt4Gzq1sRhjCiGW1TKnjsF+shVg9MEdxpjwGGrjHTWfOoyKJaKo4ZdznRg==', NULL, 'image/jpeg', '6296c255', 'CL36_2nUkAATviz.jpg', 1441183054, 54420, 0),
(11, 'faces', 1, 1441183057, 'bdc7b196', '', 'b69946e35fff6c33d17636829b6c7fe9', '1a1KJ/hOfgbBO8If+amueqWYV2vm6H6mQfut6mOpoMU8Q7IN/ki7BqXrCZOtT4KvShi4KQivLd6DkRH7JEaWmA==', NULL, 'image/jpeg', 'c311434d', '1500x500.jpg', 1441183057, 101411, 0),
(12, 'faces', 1, 1441183060, 'd490aa0f', '', 'b69946e35fff6c33d17636829b6c7fe9', 'ejtAXuPKnqy4+Ai53TGDNPhbEeQMeHxNsHyYTh5PJDjVVLh718oaWkTPUN0Q5hSmQgo8x2KYqRE5WSwsAk1QlA==', NULL, 'image/jpeg', '1b399bbb', '1500x500.jpg', 1441183060, 101411, 0),
(13, 'faces', 1, 1441183064, '9d9d07f5', '', 'b69946e35fff6c33d17636829b6c7fe9', 'nfx78XGS0YQ5wimeO+ie8YV5KNR8Bvjy8tfDGXVZeL3xTjl1WWgcaz+6ZtoKnFxVbNlrWjUWsSz9mop0g5CCZw==', NULL, 'image/jpeg', 'c935d3ce', '1500x500.jpg', 1441183064, 101411, 0),
(14, 'faces', 1, 1441183067, 'd137981d', '', 'b69946e35fff6c33d17636829b6c7fe9', 'RXtUvzvs99wKIqxqbPqvPHfAVcO6ADD+osks7pll5vjjXuo9t2UhWPBzCfSmGmVD7dskSSX9WodKQ5aWPQv/Kg==', NULL, 'image/jpeg', '9c4869b9', '1500x500.jpg', 1441183067, 101411, 0),
(15, 'drive', 1, 1441183070, '540470ff', '', '50d36e33ce1f6d1cfefd3a54203c061d', 'Bafk4A14j7L3NBYeF11bNc+mu5bvlqG5psjyZmcMaQbDjoDjk4Ze9BZ/GqsBhUQP2SePU+0bXnVTITRkJlvU6g==', NULL, 'image/jpeg', '87d7ce29', 'CL36_2nUkAATviz.jpg', 1441183070, 54420, 0),
(16, 'drive', 1, 1441183070, '0ac0b586', '', 'd91e809c1152dbeecc0ff9e60278eee2', 'Thr2nQTWPs/LA8p67E6dbU7Xe0831a9SVpRx6LiZBmve+dXYksrZVCOPvopzIv67GfgwkUOFNIQuHPSs79o8jg==', NULL, 'image/jpeg', 'e8266bb1', 'CL36_2nUkAATviz.jpg', 1441183070, 54420, 0),
(17, 'faces', 1, 1441183070, '9a002158', '', 'b69946e35fff6c33d17636829b6c7fe9', '7FE3GCkv3Txh9RF9kapR6FtBms2M8TN6wcu9moCO/9ZRWwG5SQRxMFak0MYb2hkGGcpiutiDYpcI4ZxJQ2c/LQ==', NULL, 'image/jpeg', 'd6e56475', '1500x500.jpg', 1441183070, 101411, 0),
(18, 'drive', 1, 1441183071, 'ece62837', '', '1c82fa8c3761ba1bcc88cb10af514bdb', 'OI3mYgpHSiSDnqK9U2YrmPGEiF6Fv+oyXSRpS0HTFP+rXsBBCQoaYqWpZ5Lb1lykvBVoD2jc7otsOn6CytArGA==', NULL, 'image/jpeg', 'fce21e37', '1440690613319_3257.jpg', 1441183071, 246017, 0),
(19, 'drive', 1, 1441183071, '3678ec28', '', '3e3f258d756bf1b8dfeea76b61490d8b', 'Mx4g2jnkawEUHn9/7caXxORaJZWM5G8gjB7ThuCsOxT+85NT6tdunhA7DBC0DrPZGfeGYYLJ5CmsO0JWSajJRA==', NULL, 'image/jpeg', 'ae225fe9', '1440690613319_3257.jpg', 1441183071, 246017, 0),
(20, 'drive', 1, 1441183072, '947b369a', '', 'f322d982f6b00c3e546469fb893d312b', 'Bmtl+s+sSJwRUnW+zxgKwFAV7oWL4XyE04nv+r3anhO5I9YYMPpd2pXEAgLIUdGUJTuMgl4ub3x/eJG2TIBWVA==', NULL, 'image/jpeg', 'e03adb6b', '1909298_1474502006103047_649702505_o.jpg', 1441183072, 295131, 0),
(21, 'drive', 1, 1441183073, 'd023675f', '', 'b19cce68ddc0c0bc34772db494234278', 'VQ/shrr+LwbeXcwk7EdrIRygZMvYf25xT1nWHNRx6+JXbnlmAM5LwL/Jh0DMjbjHuU2qlfWhfubgmzZTeE14bQ==', NULL, 'image/jpeg', '7df1e26f', '1909298_1474502006103047_649702505_o.jpg', 1441183073, 295131, 0),
(22, 'faces', 1, 1441183073, 'a41e4855', '', 'b69946e35fff6c33d17636829b6c7fe9', '5BDMvQDEgjI5/dDAc2GwC3E2HxYvg1w3YoPWewAS8uDyrLom6eM2TpPjisUMpwQo4JfnpGaum3iSkVHQkB6L2g==', NULL, 'image/jpeg', '322e17bf', '1500x500.jpg', 1441183073, 101411, 0),
(23, 'drive', 1, 1441183075, '733b3f9e', '', 'f55c976be787b8d4a9afc91e4e1ba63e', '8dabl3NlsZrUPo/jIUJO6Xw3AgjoMVaOsu0F08SciYZnHY3Wkmohp0tpVi5hNIU/ESu2XDGEdZsSN2kKHyaJTQ==', NULL, 'image/jpeg', '999f329e', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 75328, 0),
(24, 'drive', 1, 1441183075, 'a5251c58', '', '0bc94804ea378316e3dbeccaf0b53716', '+vsFEBOG7zTSRNZaAfTUPOlFVtCI/qFizJe5RK6wfPtPPVplf5+usSQjd8bO7CtOW6BqPeK6EX6zJyY/IWMj3g==', NULL, 'image/jpeg', '997478ae', '1909298_1474502006103047_649702505_o.jpg', 1441183075, 28178, 0),
(25, 'drive', 1, 1441183076, '87b1642b', '', 'b69946e35fff6c33d17636829b6c7fe9', '9JkRYCPlGtmTiacjRoawpAksWPKj7fk9SRwLdGcXXTDrpkXIrrBd5pPdCUYM/VRHl3T+xauFlpzW1PMLinW/Tg==', NULL, 'image/jpeg', '25af09f8', '1500x500.jpg', 1441183076, 101411, 0),
(26, 'drive', 1, 1441183076, '1c3f7826', '', '49d9392e6cc8b444d5799abc5d2b3347', '+EYRQR+Cl7lrJTPNcE0LOt+Q1JXZzEm/Z57BTmrtQHHMAALan6g4gH05KQ+tDOZPbu0VtltY8QHvGiACHy5emw==', NULL, 'image/jpeg', 'f47e0c81', '1500x500.jpg', 1441183076, 101411, 0),
(27, 'drive', 1, 1441183077, '8c957bb3', '', '3ba915353c9ec1141db4ade4639d2d09', 'NKdZ/BkR037hdyZatZ7yxBywhbFnl0iKGbQIpVhujTt1Pwl7uvxtsHnAe58IwBABBCj677CM8MLBS4q60nlU+A==', NULL, 'image/jpeg', '47e3399f', '1500x500.jpg', 1441183077, 35991, 0),
(28, 'drive', 1, 1441183077, 'd6d97b41', '', '781d56f8dcb33f904a07c2b0b2b68d5a', 'Vj5fKuQNGGSmDl+8gq8dZI6c94PUCUHoFNlVNRrmLg6sg2sdZnffJormfjH0ZRJCbqfSNw8IiBAkfNj8oKX4Xg==', NULL, 'image/jpeg', '67f5a822', '1500x500.jpg', 1441183077, 11651, 0);

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
  `updated` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `updated`, `size`, `modified`) VALUES
(2, 'drive', 1, 1441183315, '12655393', '', '54bf075239ef091cd33eded54a766da6', '2Wgk1gYcMn0bKZzgQG6ZAqbBdJSz0qlvhm6+JHXf2kZFZJUZHCpKkxgi0nPVaGsKQ9AJEA7zSa9DT6xF0ipv7A==', 'audio/x-mpeg-4', '1f4bf6ca', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183773, 48873769, 0),
(3, 'drive', 1, 1441183773, '4ed123f0', '', '3e2b285b4479d3525790bc8592fcb2d5', 'lTxnTNPFVt2zql4jC9rhXW6EOX9ee8IS7zhqKhJvl0Iya+VCJiyUrUoncvZp3K4GcCt2tj7YgSlW8tjpRPKZ1g==', 'audio/x-mpeg-4', '9ca0bfec', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441183960, 24005656, 0),
(4, 'drive', 1, 1441183960, '0f82c8ef', '', '91f9ec3a914a6213564c2a0db2564387', 'p9iEYH0oEzQgC2apb8OcmBfx/lpRALKq9jrH+TKrcyBZ5+LhDGhGzVffl6CxSRmKXj6261VSKYsBC3FvDMaCCg==', 'audio/x-mpeg-4', '94560fb9', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 1441184002, 10340185, 0);

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
(1, 1441181980, '9b5d543e', '887055cc62c65776f0bc9bd99c82be48', 'lamhieu', 'lamhieu@giccos.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'sgoGje5bU+MTh6XsX4yz+xJGXZOXwU5t8vY/pfJRx8k=', '', 'Lam Hieu', 'lam', '', 'hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '1', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'e9b01662', 0, 1, 0, 1442682438),
(2, 1441441349, 'd0e43dd2', '248bb9a2b5c0622a005256b360e119d2', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cx8YfmKhbUIMgmUBT+Lt/mXZ61ZW5oSSUOZyaOueLWc=', '', 'TrÆ°Æ¡ng Tuáº¥n', 'TrÆ°Æ¡ng', '', 'Tuáº¥n', 'f-m-l', '', 'male', NULL, 915127261, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '64', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'fc2f320b', 0, 0, 0, 1442516855),
(3, 1441890502, '0236434f', '6dcdec6cd495efac92603381bfa2f812', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '1amHNJuPQWpKm1f9pbxT/S8duiP2G6C2P5StZFQG+iQ=', '', 'Tráº§n DÆ°á»¡ng', 'Tráº§n', '', 'DÆ°á»¡ng', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', '+07:00', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 'a:6:{s:7:"general";s:4:"auto";s:4:"time";s:4:"auto";s:7:"country";s:4:"auto";s:4:"live";s:4:"auto";s:6:"family";s:4:"auto";s:7:"friends";s:4:"auto";}', '', '', '', '', 'c', 'km/h', 'mb', 'km', 1, 1, 0, '1e17e0ee', 0, 0, 0, 1442499564),
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

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
(37, 1442297697, 'id', '1', 1, '1a4cb25f'),
(38, 1442388766, 'id', '1', 1, '1a4cb25f'),
(39, 1442422994, 'id', '1', 1, '1a4cb25f'),
(40, 1442473638, 'id', '1', 1, '1a4cb25f'),
(41, 1442481954, 'id', '1', 1, '3c3ff190'),
(42, 1442490626, 'id', '1', 1, '1a4cb25f'),
(43, 1442491052, 'id', '1', 1, '1a4cb25f'),
(44, 1442491123, 'id', '1', 1, '1a4cb25f'),
(45, 1442491172, 'id', '1', 1, '1a4cb25f'),
(46, 1442492294, 'id', '1', 1, '1a4cb25f'),
(47, 1442495690, 'id', '1', 1, '1a4cb25f'),
(48, 1442495712, 'id', '1', 1, '1a4cb25f'),
(49, 1442495939, 'id', '1', 1, '1a4cb25f'),
(50, 1442496094, 'id', '1', 1, '1a4cb25f'),
(51, 1442496699, 'id', '1', 1, '1a4cb25f'),
(52, 1442498860, 'id', '3', 1, '1a4cb25f'),
(53, 1442499581, 'id', '1', 1, '1a4cb25f'),
(54, 1442516042, 'id', '2', 1, '1a4cb25f'),
(55, 1442577312, 'id', '1', 1, '1a4cb25f'),
(56, 1442651603, 'id', '1', 1, '1a4cb25f');

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
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;

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
(86, 1, 1442318669, 1442329311, '1a4cb25f'),
(87, 0, 1442388745, 1442388764, '1a4cb25f'),
(88, 1, 1442388766, 1442397761, '1a4cb25f'),
(89, 1, 1442398808, 1442398865, '1a4cb25f'),
(90, 1, 1442399193, 1442403109, '1a4cb25f'),
(91, 0, 1442422971, 1442422990, '1a4cb25f'),
(92, 1, 1442422994, 1442423346, '1a4cb25f'),
(93, 0, 1442473548, 1442473638, '1a4cb25f'),
(94, 1, 1442473638, 1442473638, '1a4cb25f'),
(95, 1, 1442474551, 1442477835, '1a4cb25f'),
(96, 1, 1442479399, 1442481917, '1a4cb25f'),
(97, 0, 1442481945, 1442481952, '3c3ff190'),
(98, 1, 1442481954, 1442482299, '3c3ff190'),
(99, 1, 1442482310, 1442496102, '1a4cb25f'),
(100, 0, 1442490600, 1442491168, '1a4cb25f'),
(101, 0, 1442492289, 1442492289, '1a4cb25f'),
(102, 0, 1442495686, 1442496696, '1a4cb25f'),
(103, 1, 1442496699, 1442498796, '1a4cb25f'),
(104, 0, 1442498855, 1442498855, '1a4cb25f'),
(105, 3, 1442498860, 1442499071, '1a4cb25f'),
(106, 3, 1442499492, 1442499564, '1a4cb25f'),
(107, 0, 1442499570, 1442499576, '1a4cb25f'),
(108, 1, 1442499581, 1442499914, '1a4cb25f'),
(109, 1, 1442503864, 1442504791, '1a4cb25f'),
(110, 1, 1442505186, 1442516943, '1a4cb25f'),
(111, 0, 1442516029, 1442516041, '1a4cb25f'),
(112, 2, 1442516042, 1442516856, '1a4cb25f'),
(113, 1, 1442524844, 1442527357, '1a4cb25f'),
(114, 0, 1442577129, 1442577310, '1a4cb25f'),
(115, 1, 1442577312, 1442589727, '1a4cb25f'),
(116, 0, 1442651490, 1442651601, '1a4cb25f'),
(117, 1, 1442651603, 1442651821, '1a4cb25f'),
(118, 1, 1442652213, 1442652626, '1a4cb25f'),
(119, 1, 1442653880, 1442655689, '1a4cb25f'),
(120, 1, 1442658593, 1442658593, '1a4cb25f'),
(121, 1, 1442663603, 1442679700, '1a4cb25f'),
(122, 1, 1442680459, 1442682438, '1a4cb25f');

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
  `status` char(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `nameraw` varchar(255) DEFAULT NULL,
  `tags` text,
  `description` text,
  `private.view` int(1) NOT NULL,
  `private.comment` int(1) NOT NULL,
  `private.share` int(1) NOT NULL,
  `file.hd` varchar(50) NOT NULL,
  `file.vga` varchar(50) NOT NULL,
  `file.qvga` varchar(50) NOT NULL,
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
  `preview` int(1) NOT NULL DEFAULT '0',
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

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `status`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.hd`, `file.vga`, `file.qvga`, `secret.hd`, `secret.vga`, `secret.qvga`, `path.thumbnail`, `path.audio`, `path.hd`, `path.vga`, `path.qvga`, `file.datetime`, `file.size`, `preview`, `codec_name`, `codec_long_name`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(1, 1, 'user', 1, 0, 1441184002, '4f526865', '5f59d1c5f6b97391b1072f5bced89210', '', 'Ä‘iá»u anh lo láº¯ng', 'ÄÃ n Ã´ng cÅ©ng biáº¿t khÃ³c - KhÃ¡nh PhÆ°Æ¡ng - Full HD - YouTube.mp4', 'love like khanhphuong best music love like khanhphuong best music', 'Molly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses.\nMolly Goodall’s store on Etsy, the online crafts marketplace, started as a creative solution to a parenting problem.\n\nHer rambunctious 2-year-old, Carter, simply refused to wear the hoods on his coats. So she designed a coat with a hood hidden under a shaggy lion’s mane and perky ears, one that Carter loved and was happy to wear for hours on end.\n\nWhen she started selling the quirky animal coats on Etsy, she was soon swamped with orders. Her aha moment, she said, was a bulk order for 400 coats from Gilt, the flash sales website that had heard about her hot-selling product.\n\n“I was sewing all the time. My husband would come home from work and cut fabric for me on the kitchen table, while I was sewing on the dining room table,” said Ms. Goodall, who has run an Etsy store from her home in McKinney, Tex., since 2010. “It became clear that if I wanted to grow and if I wanted to develop more designs, which is the part I love, I was going to have to find help.”\n\nContinue reading the main story\nRELATED COVERAGE\n\nChad Dickerson, center right, chief executive of Etsy, celebrated the online craft bazaar''s Nasdaq debut on Thursday.Etsy I.P.O. Tests Pledge to Balance Social Mission and ProfitAPRIL 16, 2015\nEtsy reported $195.6 million in sales last year, up 56 percent from the previous year.Etsy, Online Bazaar for Handmade Goods, Files for Initial OfferingMARCH 4, 2015\nEtsy, Home of the Handmade, Takes On a Wholesaler’s RoleAPRIL 14, 2014\nThis fall, Etsy is set to introduce Etsy Manufacturing, a new service in the United States and Canada that matches sellers like Ms. Goodall with small manufacturers. It is a bid by the company, which went public in April, to help its small sellers expand their businesses', 4, 4, 4, '68ee2fce6c94d53b3f2d9f264d6d8d18', 'ef429e84ba74a7c5771b1f2acb8dddf1', 'feadfb52ee08ab062e7c0dbdec789ca4', '54bf075239ef091cd33eded54a766da6', '3e2b285b4479d3525790bc8592fcb2d5', '91f9ec3a914a6213564c2a0db2564387', '0', '0', '1f4bf6ca', '9ca0bfec', '94560fb9', 0, 57882648, 1, 'h264', 'H.264 / AVC / MPEG-4 AVC / MPEG-4 part 10', 720, 1280, '16:9', 1388648, '25/1', 333.461670, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 333, 191999);

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
-- Table structure for table `videos_preview`
--

CREATE TABLE IF NOT EXISTS `videos_preview` (
  `id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `distance` int(11) NOT NULL,
  `path` char(10) NOT NULL,
  `size.width` int(11) NOT NULL,
  `size.height` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos_preview`
--

INSERT INTO `videos_preview` (`id`, `videos.id`, `distance`, `path`, `size.width`, `size.height`) VALUES
(1, 1, 2, '', 128, 72);

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
-- Table structure for table `videos_thumbnail`
--

CREATE TABLE IF NOT EXISTS `videos_thumbnail` (
  `id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `time` int(11) NOT NULL,
  `official` int(1) NOT NULL,
  `thumbnail.path` char(10) NOT NULL,
  `original.path` char(10) NOT NULL
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
-- Indexes for table `videos_preview`
--
ALTER TABLE `videos_preview`
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
-- Indexes for table `videos_thumbnail`
--
ALTER TABLE `videos_thumbnail`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=872;
--
-- AUTO_INCREMENT for table `library_cited`
--
ALTER TABLE `library_cited`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `library_voice`
--
ALTER TABLE `library_voice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `library_words`
--
ALTER TABLE `library_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `logs_actions`
--
ALTER TABLE `logs_actions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
--
-- AUTO_INCREMENT for table `logs_ajax`
--
ALTER TABLE `logs_ajax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `logs_client`
--
ALTER TABLE `logs_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=512;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=265;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=123;
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
-- AUTO_INCREMENT for table `videos_preview`
--
ALTER TABLE `videos_preview`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
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
-- AUTO_INCREMENT for table `videos_thumbnail`
--
ALTER TABLE `videos_thumbnail`
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
