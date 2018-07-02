-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 26 Juillet 2015 à 11:23
-- Version du serveur :  5.6.21
-- Version de PHP :  5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `giccos`
--

-- --------------------------------------------------------

--
-- Structure de la table `advertising_actions`
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
-- Structure de la table `advertising_id`
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
-- Structure de la table `analysis_faces`
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `analysis_faces`
--

INSERT INTO `analysis_faces` (`id`, `time`, `updated`, `token`, `display`, `tag`, `thumbnail`, `faces`, `confidence`, `eye.left.x`, `eye.left.y`, `eye.right.x`, `eye.right.y`, `nose.x`, `nose.y`, `mouth.tl.x`, `mouth.tl.y`, `mouth.bl.x`, `mouth.bl.y`, `mouth.tr.x`, `mouth.tr.y`, `mouth.br.x`, `mouth.br.y`, `pose.roll`, `pose.yaw`, `pose.pitch`, `race.text`, `race.value`, `quality.brn`, `quality.shn`, `emotion.oe.text`, `emotion.oe.value`, `emotion.to.text`, `emotion.to.value`, `emotion.te.text`, `emotion.te.value`, `age`, `smile`, `glasses`, `sunglasses`, `eye_closed`, `mouth_open_wide`, `beauty`, `sex`) VALUES
(8, 1431790466, 1431790466, '2c1c6d60', '6c2c8ed3', '073ca2a2b839a15fd65a9e146150b38b', 'd77e899e', 'b543367d', '1', '395.6', '221', '417.8', '221.9', '406.2', '233.5', '396.5', '242.3', '396.5', '242.3', '413.9', '243.1', '413.9', '243.1', '2.18', '6.53', '-6.23', 'asian', '0.99', '0.37', '0', 'confused', '0.01', '', '0', '', '0', '16.38', '0.88', '0', '0', '0', '0.05', '0.9871', '0'),
(9, 1431790472, 1431790472, '796b7f61', '33a0ccae', '073ca2a2b839a15fd65a9e146150b38b', '8995d578', 'd226272f', '1', '319.7', '232.4', '342.7', '232.7', '334.8', '246.4', '319.3', '254.8', '319.3', '254.8', '339', '254.5', '339', '254.5', '-1.04', '34.65', '-3.77', 'asian', '0.91', '0.51', '0.1', 'calm', '0', '', '0', '', '0', '25.46', '0.99', '0', '0.01', '0', '0.99', '0.5190', '0'),
(10, 1431790477, 1431790477, 'a55d009d', '38e8e714', '073ca2a2b839a15fd65a9e146150b38b', '5bf0774c', 'f11f7d8e', '1', '493.3', '225.7', '515.2', '228', '504.9', '239.1', '492.9', '247.5', '492.9', '247.5', '512.2', '248.8', '512.2', '248.8', '6.09', '9.87', '-1.49', 'asian', '0.97', '0.29', '0.1', 'sad', '0.02', '', '0', '', '0', '22', '0.8', '0', '0', '0.02', '0.34', '0.9027', '0'),
(11, 1431790482, 1431790482, '08ce1790', '9e08409e', '073ca2a2b839a15fd65a9e146150b38b', 'fd92b7d8', '6168593e', '1', '209.7', '238.1', '234.9', '237.2', '227.4', '250.9', '214.7', '264.2', '214.7', '264.2', '235.1', '263', '235.1', '263', '-3.37', '17', '-3.43', 'asian', '0.82', '0.47', '0.1', 'calm', '0.02', '', '0', '', '0', '22.02', '0.06', '0', '0.01', '0', '0.02', '0.9823', '0'),
(12, 1431790486, 1431790486, '39e9518d', '0618ac42', '073ca2a2b839a15fd65a9e146150b38b', 'e4038007', '53f99e7b', '1', '586.8', '215.9', '609.3', '216.5', '594.2', '227.1', '588.5', '236.9', '588.5', '236.9', '608.3', '237.9', '608.3', '237.9', '2.42', '-27.4', '1.69', 'asian', '0.39', '0.57', '0', 'disgust', '0.01', '', '0', '', '0', '21.05', '0.94', '0', '0.06', '0', '0.49', '0.5729', '0'),
(13, 1431790759, 1431790759, '71b64d12', 'a20a372b', '073ca2a2b839a15fd65a9e146150b38b', '249761a7', 'fc149565', '1', '586.8', '215.9', '609.3', '216.5', '594.2', '227.1', '588.5', '236.9', '588.5', '236.9', '608.3', '237.9', '608.3', '237.9', '2.42', '-27.4', '1.69', 'asian', '0.39', '0.57', '0', 'disgust', '0.01', '', '0', '', '0', '21.05', '0.94', '0', '0.06', '0', '0.49', '0.5729', '0'),
(14, 1434286394, 1434286394, '9a0112fc', '560d572e', '073ca2a2b839a15fd65a9e146150b38b', 'a9eccca7', 'f38c6391', '1', '162.7', '379.5', '227.3', '370.1', '207.8', '415.1', '175.7', '440.9', '175.7', '440.9', '225.5', '436', '225.5', '436', '-10.62', '18.33', '-11.88', 'asian', '0.99', '0.34', '1', 'confused', '0.02', '', '0', '', '0', '18.1', '0.72', '0', '0', '0', '0.1', '0.8803', '0'),
(15, 1434286398, 1434286398, '79e1e1b7', 'b56b7d41', '073ca2a2b839a15fd65a9e146150b38b', 'd2a4f2e2', '38309e84', '1', '267.1', '375.8', '322.3', '374.8', '280.4', '414.8', '281', '434.5', '281', '434.5', '328.1', '432', '328.1', '432', '0.62', '-56.27', '-15.39', 'asian', '0.96', '0.32', '0.6', 'surprised', '0.11', '', '0', '', '0', '23.92', '0.9', '0.05', '0', '0', '0', '0.9964', '0'),
(16, 1434286401, 1434286401, '58a43413', '3f729a6c', '073ca2a2b839a15fd65a9e146150b38b', '12cdd749', 'dfa6d234', '1', '433.2', '318.5', '543.6', '307.3', '463.8', '383', '450', '439.4', '450', '439.4', '523.4', '440.4', '523.4', '440.4', '-5.4', '-24.43', '-6.98', 'asian', '0.98', '0.49', '2', 'surprised', '0.02', '', '0', '', '0', '16.57', '0.52', '0', '0', '0', '0', '0.8451', '0.05'),
(17, 1434548412, 1434548412, '97c94437', 'f85038f8', '073ca2a2b839a15fd65a9e146150b38b', 'd4f20a6d', '7c912c5f', '1', '271.4', '271.2', '386.6', '266.5', '310.2', '342', '297.5', '382.1', '297.5', '382.1', '391.2', '379.6', '391.2', '379.6', '-1.55', '-29.91', '-8.69', 'asian', '0.98', '0.46', '0.7', 'confused', '0.02', '', '0', '', '0', '19.23', '0.99', '0', '0', '0', '0.02', '0.9364', '0'),
(18, 1436306436, 1436306436, 'aa0443b1', '1afc6b15', '073ca2a2b839a15fd65a9e146150b38b', '8e3b2ad4', '488f3eaf', '1', '246.2', '200', '350.9', '182.3', '289.3', '256.3', '278.6', '306.3', '278.6', '306.3', '357.1', '297.8', '357.1', '297.8', '-9.3', '-23.06', '-6.26', 'asian', '1', '0.41', '1.3', 'angry', '0', '', '0', '', '0', '21.07', '0.99', '0', '0', '0', '0.04', '0.6632', '0'),
(19, 1436408161, 1436408161, 'ffe84acd', '8d26a0de', '073ca2a2b839a15fd65a9e146150b38b', '1a693274', 'c5c2d204', '1', '105.1', '60.4', '190.9', '69.7', '160.9', '125.3', '115.2', '155.3', '115.2', '155.3', '166', '155.7', '166', '155.7', '5.67', '17.87', '-15.01', 'asian', '0.98', '0.48', '1', 'calm', '0.08', '', '0', '', '0', '17.5', '0.75', '0', '0', '0', '0', '0.3962', '0'),
(20, 1436408179, 1436408179, 'e44f802f', '31930fb0', '073ca2a2b839a15fd65a9e146150b38b', 'd7c0cb1f', '2a8d617d', '1', '311', '125.4', '362.7', '117.9', '351.7', '149.9', '320.1', '180.1', '320.1', '180.1', '368.8', '171.7', '368.8', '171.7', '-10.42', '21.79', '-1.68', 'asian', '1', '0.56', '0.5', 'calm', '0.01', '', '0', '', '0', '25.2', '1', '0', '0', '0.04', '0.48', '0.9527', '0'),
(21, 1436408183, 1436408183, 'c408fb27', '3970f17c', '073ca2a2b839a15fd65a9e146150b38b', 'c068a13e', '1236e3ff', '1', '119', '228.3', '201.6', '254.4', '183.3', '302.9', '88.7', '341.5', '88.7', '341.5', '177.1', '360.3', '177.1', '360.3', '14.74', '53.15', '4.14', 'asian', '0.97', '0.54', '1.7', 'sad', '0.04', '', '0', '', '0', '28.89', '0.79', '0', '0', '0', '0.08', '0.8107', '0'),
(22, 1436408188, 1436408188, 'b1d3d904', 'ebd2a7b7', '073ca2a2b839a15fd65a9e146150b38b', '23733616', '4adb7f74', '0.97', '620', '214.1', '678.2', '231.4', '633', '249.9', '601.7', '271.8', '601.7', '271.8', '657.6', '289.4', '657.6', '289.4', '18.9', '-8.17', '-1.21', 'white', '0.73', '0.54', '0.9', 'calm', '0.03', '', '0', '', '0', '22.01', '1', '1', '0.7', '1', '0', '0.3845', '0');

-- --------------------------------------------------------

--
-- Structure de la table `answers_category`
--

CREATE TABLE IF NOT EXISTS `answers_category` (
  `id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL,
  `value` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `answers_post`
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
-- Structure de la table `answers_rate`
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
-- Structure de la table `answers_topic`
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
-- Structure de la table `cited`
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
-- Structure de la table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `friends`
--

INSERT INTO `friends` (`id`, `time`, `user.id`, `guy.id`) VALUES
(1, 1, 15, 16),
(2, 1, 16, 15),
(5, 1, 17, 16),
(6, 1, 16, 17);

-- --------------------------------------------------------

--
-- Structure de la table `friends_request`
--

CREATE TABLE IF NOT EXISTS `friends_request` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
`id` int(11) NOT NULL,
  `language` varchar(40) NOT NULL,
  `code` varchar(2) NOT NULL,
  `note` text
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `note`) VALUES
(1, 'english', 'en', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `languages_codes`
--

CREATE TABLE IF NOT EXISTS `languages_codes` (
`id` int(11) NOT NULL,
  `country` varchar(2) NOT NULL,
  `code` char(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `languages_codes`
--

INSERT INTO `languages_codes` (`id`, `country`, `code`) VALUES
(1, 'vn', 'vi'),
(2, 'us', 'en');

-- --------------------------------------------------------

--
-- Structure de la table `languages_list`
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
-- Contenu de la table `languages_list`
--

INSERT INTO `languages_list` (`id`, `name`, `code`, `country.name`, `country.code`, `supported`) VALUES
(1, 'Tiáº¿ng Viá»‡t', 'vi', 'Vietnam', 'vn', 1),
(2, 'English', 'en', 'United States', 'us', 1);

-- --------------------------------------------------------

--
-- Structure de la table `languages_values`
--

CREATE TABLE IF NOT EXISTS `languages_values` (
`id` int(11) NOT NULL,
  `language` varchar(4) NOT NULL,
  `code` text NOT NULL,
  `text` text NOT NULL,
  `short` char(10) DEFAULT 'false'
) ENGINE=InnoDB AUTO_INCREMENT=691 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `languages_values`
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
(690, 'en', 'not_found_info_places', 'not found information about place', 'false');

-- --------------------------------------------------------

--
-- Structure de la table `logs_actions`
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
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `logs_actions`
--

INSERT INTO `logs_actions` (`id`, `time`, `author.type`, `author.id`, `action`, `things`, `things.id`, `obj`, `obj.id`) VALUES
(1, 1431546174, 'user', 15, 'add', '', 0, 'status', 1),
(2, 1432051085, 'user', 15, 'add', '', 0, 'status', 2),
(3, 1432051223, 'user', 15, 'add', '', 0, 'status', 3),
(4, 1432051278, 'user', 15, 'add', '', 0, 'status', 4),
(5, 1432051327, 'user', 15, 'add', '', 0, 'status', 5),
(6, 1432051385, 'user', 15, 'add', '', 0, 'status', 6),
(7, 1432051455, 'user', 15, 'add', '', 0, 'status', 7),
(8, 1432051647, 'user', 15, 'add', '', 0, 'status', 8),
(9, 1432051716, 'user', 15, 'add', '', 0, 'status', 9),
(10, 1432051907, 'user', 15, 'add', '', 0, 'status', 10),
(11, 1432052165, 'user', 15, 'add', '', 0, 'status', 11),
(12, 1432052378, 'user', 15, 'add', '', 0, 'status', 12),
(13, 1432052430, 'user', 15, 'add', '', 0, 'status', 13),
(14, 1432052517, 'user', 15, 'add', '', 0, 'status', 14),
(15, 1432052598, 'user', 15, 'add', '', 0, 'status', 15),
(16, 1432052854, 'user', 15, 'add', '', 0, 'status', 16),
(17, 1432052901, 'user', 15, 'add', '', 0, 'status', 17),
(18, 1432053047, 'user', 15, 'add', '', 0, 'status', 18),
(19, 1432053216, 'user', 15, 'add', '', 0, 'status', 19),
(20, 1432053292, 'user', 15, 'add', '', 0, 'status', 20),
(21, 1432214173, 'user', 15, 'add', '', 0, 'status', 1),
(22, 1432488658, 'user', 15, 'add', '', 0, 'status', 2),
(23, 1432488695, 'user', 15, 'add', '', 0, 'status', 3),
(24, 1433573670, 'user', 15, 'add', '', 0, 'status', 4),
(25, 1433574861, 'user', 15, 'add', '', 0, 'status', 5),
(26, 1433576050, 'user', 15, 'add', '', 0, 'status', 6),
(27, 1433576139, 'user', 15, 'add', '', 0, 'status', 7),
(28, 1433576595, 'user', 15, 'add', '', 0, 'status', 8),
(29, 1433576664, 'user', 15, 'add', '', 0, 'status', 9),
(30, 1433577496, 'user', 15, 'add', '', 0, 'status', 10),
(31, 1433577702, 'user', 15, 'add', '', 0, 'status', 1),
(32, 1433577803, 'user', 15, 'add', '', 0, 'status', 2),
(33, 1433578315, 'user', 15, 'add', '', 0, 'status', 3),
(34, 1433578576, 'user', 15, 'add', '', 0, 'status', 1),
(35, 1433578819, 'user', 15, 'add', '', 0, 'status', 2),
(36, 1433578903, 'user', 15, 'add', '', 0, 'status', 3),
(37, 1433579201, 'user', 15, 'add', '', 0, 'status', 4),
(38, 1433579663, 'user', 15, 'add', '', 0, 'status', 5),
(39, 1433580058, 'user', 15, 'add', '', 0, 'status', 6),
(40, 1433580136, 'user', 15, 'add', '', 0, 'status', 7),
(41, 1433580321, 'user', 15, 'add', '', 0, 'status', 8),
(42, 1433580570, 'user', 15, 'add', '', 0, 'status', 9),
(43, 1433580704, 'user', 15, 'add', '', 0, 'status', 10),
(44, 1433580772, 'user', 15, 'add', '', 0, 'status', 11),
(45, 1433581048, 'user', 15, 'add', '', 0, 'status', 12),
(46, 1433581174, 'user', 15, 'add', '', 0, 'status', 13),
(47, 1433581261, 'user', 15, 'add', '', 0, 'status', 14),
(48, 1433581776, 'user', 15, 'add', '', 0, 'status', 15),
(49, 1433745199, 'user', 15, 'add', '', 0, 'status', 16),
(50, 1433753226, 'user', 15, 'add', '', 0, 'status', 17),
(51, 1434036454, 'user', 15, 'add', '', 0, 'status', 18),
(52, 1434036487, 'user', 15, 'add', '', 0, 'status', 19),
(53, 1434036648, 'user', 15, 'add', '', 0, 'status', 20),
(54, 1434092540, 'user', 16, 'add', '', 0, 'status', 18),
(55, 1434096785, 'user', 15, 'add', '', 0, 'status', 19),
(56, 1434096829, 'user', 15, 'add', '', 0, 'status', 20),
(57, 1434096883, 'user', 15, 'add', '', 0, 'status', 21),
(58, 1434096955, 'user', 15, 'add', '', 0, 'status', 22),
(59, 1434096997, 'user', 15, 'add', '', 0, 'status', 23),
(60, 1434097025, 'user', 15, 'add', '', 0, 'status', 24),
(61, 1434097050, 'user', 15, 'add', '', 0, 'status', 25),
(62, 1434097305, 'user', 15, 'add', '', 0, 'status', 26),
(63, 1434097410, 'user', 15, 'add', '', 0, 'status', 27),
(64, 1434097810, 'user', 15, 'add', '', 0, 'status', 28),
(65, 1434098084, 'user', 15, 'add', '', 0, 'status', 29),
(66, 1434098822, 'user', 15, 'add', '', 0, 'status', 30),
(67, 1434098924, 'user', 15, 'add', '', 0, 'status', 31),
(68, 1434098977, 'user', 15, 'add', '', 0, 'status', 32),
(69, 1434099014, 'user', 15, 'add', '', 0, 'status', 33),
(70, 1434099027, 'user', 15, 'add', '', 0, 'status', 34),
(71, 1434099164, 'user', 15, 'add', '', 0, 'status', 35),
(72, 1434099202, 'user', 15, 'add', '', 0, 'status', 36),
(73, 1434099203, 'user', 15, 'add', '', 0, 'status', 37),
(74, 1434099562, 'user', 15, 'add', '', 0, 'status', 38),
(75, 1434099787, 'user', 15, 'add', '', 0, 'status', 39),
(76, 1434099911, 'user', 15, 'add', '', 0, 'status', 40),
(77, 1434099993, 'user', 15, 'add', '', 0, 'status', 41),
(78, 1434100458, 'user', 16, 'add', '', 0, 'status', 42),
(79, 1434121490, 'user', 15, 'add', '', 0, 'status', 43),
(80, 1434700352, 'user', 15, 'add', '', 0, 'status', 43),
(81, 1434700624, 'user', 15, 'add', '', 0, 'status', 44),
(82, 1434700729, 'user', 15, 'add', '', 0, 'status', 45),
(83, 1434700814, 'user', 15, 'add', '', 0, 'status', 47),
(84, 1434701005, 'user', 15, 'add', '', 0, 'status', 48),
(85, 1434701059, 'user', 15, 'add', '', 0, 'status', 49),
(86, 1434778944, 'user', 15, 'add', '', 0, 'status', 50),
(87, 1434779051, 'user', 15, 'add', '', 0, 'status', 51),
(88, 1434787496, 'user', 15, 'add', '', 0, 'status', 52),
(89, 1434787533, 'user', 15, 'add', '', 0, 'status', 53),
(90, 1434788628, 'user', 15, 'add', '', 0, 'status', 54),
(91, 1434788778, 'user', 15, 'add', '', 0, 'status', 55),
(92, 1434789174, 'user', 15, 'add', '', 0, 'status', 60),
(93, 1434987597, 'user', 15, 'add', '', 0, 'status', 61),
(94, 1434987761, 'user', 15, 'add', '', 0, 'status', 62),
(95, 1435048621, 'user', 15, 'add', '', 0, 'status', 63),
(96, 1435048700, 'user', 15, 'add', '', 0, 'status', 64),
(97, 1435048714, 'user', 15, 'add', '', 0, 'status', 65),
(98, 1435306006, 'user', 15, 'add', '', 0, 'status', 66),
(99, 1435405192, 'user', 15, 'add', '', 0, 'status', 67),
(100, 1435409271, 'user', 15, 'add', '', 0, 'status', 69),
(101, 1435409420, 'user', 15, 'add', '', 0, 'status', 71),
(102, 1435409445, 'user', 15, 'add', '', 0, 'status', 72),
(103, 1435410307, 'user', 15, 'add', '', 0, 'status', 73),
(104, 1435478658, 'user', 15, 'add', '', 0, 'status', 74),
(105, 1435478842, 'user', 15, 'add', '', 0, 'status', 75),
(106, 1435479130, 'user', 15, 'add', '', 0, 'status', 76),
(107, 1435479162, 'user', 15, 'add', '', 0, 'status', 77),
(108, 1435479395, 'user', 15, 'add', '', 0, 'status', 78),
(109, 1435479865, 'user', 15, 'add', '', 0, 'status', 79),
(110, 1435479929, 'user', 15, 'add', '', 0, 'status', 80),
(111, 1435479998, 'user', 15, 'add', '', 0, 'status', 81),
(112, 1435480245, 'user', 15, 'add', '', 0, 'status', 82),
(113, 1435481392, 'user', 15, 'add', '', 0, 'status', 83),
(114, 1435484831, 'user', 15, 'add', '', 0, 'status', 84),
(115, 1435485707, 'user', 15, 'add', '', 0, 'status', 85),
(116, 1435486127, 'user', 15, 'add', '', 0, 'status', 86),
(117, 1435486167, 'user', 15, 'add', '', 0, 'status', 87),
(118, 1435565495, 'user', 15, 'add', '', 0, 'status', 88),
(119, 1435801741, 'user', 15, 'add', '', 0, 'status', 89),
(120, 1436757995, 'user', 15, 'add', '', 0, 'status', 90),
(121, 1436758471, 'user', 15, 'add', '', 0, 'status', 91),
(122, 1436758890, 'user', 15, 'add', '', 0, 'status', 92),
(123, 1436759155, 'user', 15, 'add', '', 0, 'status', 93),
(124, 1436759328, 'user', 15, 'add', '', 0, 'status', 94),
(125, 1436761882, 'user', 15, 'add', '', 0, 'status', 95),
(126, 1436761890, 'user', 15, 'add', '', 0, 'status', 96),
(127, 1436762676, 'user', 15, 'add', '', 0, 'status', 97),
(128, 1436763913, 'user', 15, 'add', '', 0, 'status', 98),
(129, 1436764391, 'user', 15, 'add', '', 0, 'status', 99),
(130, 1437032312, 'user', 15, 'add', '', 0, 'status', 100),
(131, 1437033632, 'user', 15, 'add', '', 0, 'status', 101),
(132, 1437034298, 'user', 15, 'add', '', 0, 'status', 102),
(133, 1437038930, 'user', 15, 'add', '', 0, 'status', 103),
(134, 1437039398, 'user', 15, 'add', '', 0, 'status', 104),
(135, 1437040027, 'user', 15, 'add', '', 0, 'status', 105),
(136, 1437041259, 'user', 15, 'add', '', 0, 'status', 106),
(137, 1437041344, 'user', 15, 'add', '', 0, 'status', 107),
(138, 1437041566, 'user', 15, 'add', '', 0, 'status', 108),
(139, 1437042394, 'user', 15, 'add', '', 0, 'status', 109),
(140, 1437293071, 'user', 15, 'add', '', 0, 'status', 110),
(141, 1437294181, 'user', 15, 'add', '', 0, 'status', 111),
(142, 1437639883, 'user', 15, 'add', '', 0, 'status', 112),
(143, 1437818619, 'user', 15, 'add', '', 0, 'status', 113),
(144, 1437818687, 'user', 15, 'add', '', 0, 'status', 114),
(145, 1437818718, 'user', 15, 'add', '', 0, 'status', 115),
(146, 1437818736, 'user', 15, 'add', '', 0, 'status', 116),
(147, 1437818764, 'user', 15, 'add', '', 0, 'status', 117),
(148, 1437818845, 'user', 15, 'add', '', 0, 'status', 118),
(149, 1437818877, 'user', 15, 'add', '', 0, 'status', 119),
(150, 1437818894, 'user', 15, 'add', '', 0, 'status', 120),
(151, 1437818924, 'user', 15, 'add', '', 0, 'status', 121),
(152, 1437818945, 'user', 15, 'add', '', 0, 'status', 122),
(153, 1437818970, 'user', 15, 'add', '', 0, 'status', 123),
(154, 1437818981, 'user', 15, 'add', '', 0, 'status', 124),
(155, 1437818991, 'user', 15, 'add', '', 0, 'status', 125),
(156, 1437819002, 'user', 15, 'add', '', 0, 'status', 126),
(157, 1437819072, 'user', 15, 'add', '', 0, 'status', 127),
(158, 1437819097, 'user', 15, 'add', '', 0, 'status', 128),
(159, 1437819142, 'user', 15, 'add', '', 0, 'status', 129),
(160, 1437835720, 'user', 15, 'add', '', 0, 'status', 130),
(161, 1437835728, 'user', 15, 'add', '', 0, 'status', 131),
(162, 1437835895, 'user', 15, 'add', '', 0, 'status', 132),
(163, 1437836069, 'user', 15, 'add', '', 0, 'status', 133),
(164, 1437836217, 'user', 15, 'add', '', 0, 'status', 134),
(165, 1437836263, 'user', 15, 'add', '', 0, 'status', 135),
(166, 1437836329, 'user', 15, 'add', '', 0, 'status', 136),
(167, 1437836373, 'user', 15, 'add', '', 0, 'status', 137),
(168, 1437836501, 'user', 15, 'add', '', 0, 'status', 138),
(169, 1437836510, 'user', 15, 'add', '', 0, 'status', 139),
(170, 1437836532, 'user', 15, 'add', '', 0, 'status', 140),
(171, 1437836548, 'user', 15, 'add', '', 0, 'status', 141),
(172, 1437893593, 'user', 15, 'add', '', 0, 'status', 142),
(173, 1437893629, 'user', 15, 'add', '', 0, 'status', 143),
(174, 1437893634, 'user', 15, 'add', '', 0, 'status', 144),
(175, 1437893637, 'user', 15, 'add', '', 0, 'status', 145),
(176, 1437893771, 'user', 15, 'add', '', 0, 'status', 146);

-- --------------------------------------------------------

--
-- Structure de la table `logs_ajax`
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
-- Structure de la table `logs_client`
--

CREATE TABLE IF NOT EXISTS `logs_client` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` varchar(10) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `device` char(10) DEFAULT NULL,
  `platform` varchar(40) NOT NULL,
  `browser` varchar(40) NOT NULL,
  `browser.kernel` varchar(40) NOT NULL,
  `browser.version` varchar(20) NOT NULL,
  `agent` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `logs_client`
--

INSERT INTO `logs_client` (`id`, `time`, `token`, `ip`, `device`, `platform`, `browser`, `browser.kernel`, `browser.version`, `agent`) VALUES
(32, 1437899925, '3da3fc27', '113.170.45.132', 'mobile', 'Windows Phone 8.0', 'Internet Explorer', 'ms', '10.0', 'Mozilla/5.0 (compatible; MSIE 10.0; Windows Phone 8.0; Trident/6.0; IEMobile/10.0; ARM; Touch; NOKIA; Lumia 520)'),
(33, 1437899999, 'a0f61a4a', '113.170.45.132', 'desktop', 'Windows 7 (x64)', 'Google Chrome', 'webkit', '44.0.2403.107', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36'),
(40, 1437900713, '78f85b96', '113.170.45.132', 'desktop', 'Linux', 'Apple Safari', 'webkit', '535.19', 'Mozilla/5.0 (Linux; U; en-us; KFAPWI Build/JDQ39) AppleWebKit/535.19 (KHTML, like Gecko) Silk/3.13 Safari/535.19 Silk-Accelerated=true'),
(44, 1437901929, '0527146e', '113.170.45.132', 'desktop', 'Windows 7 (x64)', 'Coc Coc', 'blink', '?', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/45.0 Chrome/39.0.2171.98 Safari/537.36'),
(45, 1437901964, 'd74c4605', '113.170.45.132', 'mobile', 'MeeGo', 'Nokia Browser', 'webkit', '8.5.0', 'Mozilla/5.0 (MeeGo; NokiaN9) AppleWebKit/534.13 (KHTML, like Gecko) NokiaBrowser/8.5.0 Mobile Safari/534.13'),
(47, 1437902568, '7cff4be5', '113.170.45.132', 'mobile', 'Blackberry', 'BlackBerry Browser', 'mango/webkit', '10.0.9.2372', 'Mozilla/5.0 (BB10; Touch) AppleWebKit/537.10+ (KHTML, like Gecko) Version/10.0.9.2372 Mobile Safari/537.10+'),
(48, 1437902579, 'c7627f17', '113.170.45.132', 'table', 'Blackberry', 'BlackBerry Browser', 'mango/webkit', '7.2.1.0', 'Mozilla/5.0 (PlayBook; U; RIM Tablet OS 2.1.0; en-US) AppleWebKit/536.2+ (KHTML like Gecko) Version/7.2.1.0 Safari/536.2+');

-- --------------------------------------------------------

--
-- Structure de la table `maps_places`
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
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `maps_places`
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
(148, '70037b1f', '4e5202d6a805e9efd58d7cd5144f79bb', 'Wild Beach Resort and Spa', 'Hon Tre Island, Vinh Nguyen Ward, tp. Nha Trang, ., Vietnam', '12.24689,109.196', 12.246890, 109.195999, 'lodging', 'maps/raw/places/staticmap/location=12.24689,109.196&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.24689,109.196&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(149, 'f93a1748', '4fc15cd7a610b715bd6bc18048ad8d83', 'Vinpearl Resort Phu Quoc', 'Bai Dai, Gach Dau, Phu Quoc, Kien Giang, Vietnam', '10.30675,103.86157', 10.306750, 103.861572, 'lodging', 'maps/raw/places/staticmap/location=10.30675,103.86157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.30675,103.86157&format=gif'),
(150, 'd64c081b', '78ea94f6e0bcca4678eeb5af46cddfbe', 'vinpearl premium Phu Quoc', 'BÃ£i DÃ i, PhÃº Quá»‘c, KiÃªn Giang Kien Giang tá»‰nh KiÃªn Giang, GÃ nh Dáº§u, Kien Giang, tá»‰nh KiÃªn Giang, Vietnam', '10.34819,103.902799', 10.348190, 103.902802, 'real_estate_agency', 'maps/raw/places/staticmap/location=10.34819,103.902799&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.34819,103.902799&format=gif'),
(151, 'b38ccf8b', 'b030f8f39bea7010835ff2386700ffa6', 'Vinpearl Ice Rink', 'Khu Ä‘Ã´ thá»‹, 72 Nguyá»…n TrÃ£i, Khu Ä‘Ã´ thá»‹ Royal City, ThÆ°á»£ng ÄÃ¬nh, Thanh Xuï¿¢n, HÃ  Ná»™i, Vietnam', '21.003493,105.815817', 21.003492, 105.815819, 'establishment', 'maps/raw/places/staticmap/location=21.003493,105.815817&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C21.003493,105.815817&format=gif'),
(152, 'ae5dbe27', '1f2a2349b63e8a1643a7549648757802', 'Vinpearl Golf Club Sales Office', 'Táº§ng 4, TÃ²a NhÃ  Vincom Center, 72, ÄÆ°á»ng LÃª ThÃ¡nh TÃ´n, PhÆ°á»ng Báº¿n NghÃ©, Quáº­n 1, Há»“ ChÃ­ Minh, Vietnam', '10.778342,106.701902', 10.778342, 106.701904, 'establishment', 'maps/raw/places/staticmap/location=10.778342,106.701902&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C10.778342,106.701902&format=gif'),
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
(308, '0a689e4a', 'bb877b68f02f0e2f1dad7ca6ed35b7b9', 'Silicon', 'Silicon, Las PiÃ±as, Metro Manila, Philippines', '14.4206731,121.0089541', 14.420673, 121.008957, 'route', 'maps/raw/places/staticmap/location=14.4206731,121.0089541&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C14.4206731,121.0089541&format=gif');
INSERT INTO `maps_places` (`id`, `token`, `display`, `name`, `address`, `location`, `latitude`, `longitude`, `type`, `thumbnail`) VALUES
(309, 'da2e0476', '97b97e9d2c6a2b0fa77cccf062ac7a67', 'Silicon', 'Silicon, Estate Ave, Karachi, Pakistan', '24.9046874,67.0034956', 24.904688, 67.003494, 'premise', 'maps/raw/places/staticmap/location=24.9046874,67.0034956&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C24.9046874,67.0034956&format=gif'),
(310, 'a88903ca', 'a82a3a346804900d75e92ff70d5f3d4b', 'Manchester computer repair', 'Manchester computer repair, Bowfell Rd, Urmston, Manchester M41 5RW, UK', '53.4512377,-2.3633818', 53.451237, -2.363382, 'point_of_interest', 'maps/raw/places/staticmap/location=53.4512377,-2.3633818&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C53.4512377,-2.3633818&format=gif'),
(311, '9cde7202', '01d7c613c0e4b82544f21d059f46249d', 'Silicon', 'Silicon, El Agustino 15006, Peru', '-12.0344607,-76.9985374', -12.034461, -76.998535, 'route', 'maps/raw/places/staticmap/location=-12.0344607,-76.9985374&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C-12.0344607,-76.9985374&format=gif'),
(312, '09f546a2', '970a3013042deaf782d563e88b630181', 'Silicon', 'Silicon, Jalan Tenggiri, Batu Ampar, Kota Batam, Indonesia', '1.167073,104.009652', 1.167073, 104.009651, 'point_of_interest', 'maps/raw/places/staticmap/location=1.167073,104.009652&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C1.167073,104.009652&format=gif'),
(313, 'ed1b3faf', 'b6db13cdbf5b6b15de1e8ec82818a28c', 'Silicon', 'Silicon, Annai Indira Nagar, Annani Indira Nagar, Indira Nagar, Okkiyam Thuraipakkam, Palavakkam, Tamil Nadu 600097, India', '12.9271389,80.2343157', 12.927139, 80.234314, 'premise', 'maps/raw/places/staticmap/location=12.9271389,80.2343157&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C12.9271389,80.2343157&format=gif'),
(314, '805cdeb4', 'f0c2829729dce0c1d7fdd5842916d597', 'Silicon', 'Silicon, MS Ali Rd, Grant Road East, Grant Road Area, Bharat Nagar, Grant Rd, Mumbai, Maharashtra 400008, India', '18.9620695,72.8206681', 18.962069, 72.820671, 'point_of_interest', 'maps/raw/places/staticmap/location=18.9620695,72.8206681&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C18.9620695,72.8206681&format=gif'),
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
(342, 'a87828d7', '936d6c213a9fa512384d8c1c10e302b1', 'Sardar Ji Rewdi Waley', 'Revdi Vala Charbagh, Cash and Pay Colony, Charbagh, Lucknow, Uttar Pradesh 226004, India', '26.832592,80.922494', 26.832592, 80.922493, 'food', 'maps/raw/places/staticmap/location=26.832592,80.922494&zoom=15&size=480x480&maptype=roadmap&markers=color:red%7C26.832592,80.922494&format=gif');

-- --------------------------------------------------------

--
-- Structure de la table `messages_data`
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages_data`
--

INSERT INTO `messages_data` (`id`, `time`, `tab`, `token`, `display`, `author.type`, `author.id`, `content`, `emoticons`) VALUES
(1, 1433307396, 2, '14c4cf3b', 'a0b1c721104e56f7dec4903ac13758a1', 'user', 15, 'GX7ynuQ6jpxs4m6dJspNyiIOPME76Y+tEMgq1IbCThc=', ''),
(2, 1433308503, 2, '6900420b', '18f78192f485dee4ad19bfa37455957c', 'user', 15, 'nJ9OXzswv+1Y94uTW4iega2rhciEssNZHTUjCQRe8OM=', ''),
(3, 1433309148, 2, '70329da9', '3b46e894f67dd90ea586573b69cccf64', 'user', 15, 'O1U3Y9sPmPr5/XZqsG1hZ8wjLV8Z7Wa0j4T5D3zNvrI=', ''),
(4, 1433309205, 1, 'b27881b5', '1e5a03e0526bb0c9d3a6a0ec5c755e03', 'user', 16, 'AmN47nsi9UFDLd/OJJz/xU9O8TQsh+4FOGFpaPzbjS0=', ''),
(5, 1433309212, 1, '47e0bc43', '611081a1dcb37138f72174bfdfeb0b83', 'user', 16, '0LOogbEFxybn1kXNLZL5d1g3MVGW6jjWAPV7hVId07Q=', ''),
(6, 1433309223, 1, '6d571e2c', '1adc90ac7e69f73c64b365fbb6fc82b6', 'user', 15, 'SulYLLt3AXq8kxFRbRaPJg4Pym2BnaifFiZM0UTuOm0=', ''),
(7, 1433309231, 1, 'f7cce24a', '8664f509d6f4f238dcf04629d63e4932', 'user', 16, 'iuxhZYex4uWq9Z6iYaSuyc53fgRle+4xsNrcdsqR6+A=', ''),
(8, 1433309267, 1, '3bfe29b9', '0d18636a325b05275330fafd54cd4b22', 'user', 16, 'cg8yUjLqoOqoKQA/CROgjTW4hyIBIdBSCm3lNgTWhRHigJxYfnQzfJQLGpNAhAQo8x1PxEwhXo7jUG1WK7qeyxiG5UcjSMHFXisZww2wxytGkbawcmc6hXxTi2MT0fda', ''),
(9, 1433309287, 1, '31f627be', '8f7724639484f3e2d36275503d816181', 'user', 16, 'sYpSoqCGtDFBW6cHQFBuSy43/jSDmqcgvk44pIV0m4g=', ''),
(12, 1433413989, 1, 'c2558a5d', 'db1dee58c5edefdc432241242126ca86', 'user', 16, 'RGpEy4CYcFPnUm7CQM+7kMNpOpOU3ZzC9ue2PahJXoNzuYH/csfUhwTuODRBInFBz08Ch9u7sHO06fZNIgpmz31zRo4LQk9f1jRajIJ+lwF0vRtSb0nb77h1mdxojcsKiTB9QMWTUJLVZ/uhbFQDeyFoEUOPzuBw/53AL1Oml4M65ydZETX/x4do+SUUVd5EwgTWxk6huIMnMc1IFXn7Tg==', ''),
(13, 1435567172, 1, '1b10d9b8', 'bd4b3bb99306c41c18516a9b2a6f1bad', 'user', 16, 'dBPoka5Vih+VgotL2IzbcBHRRGsjB3pbT1gRZs71aNA=', ''),
(14, 1435567351, 1, '46c08801', '07ce7446528bdc95c796c8fd4c048185', 'user', 16, 'HHKEryGWYTDSfJ2y7kC0KwTsjvUMCCvOSnXCfy6DAKI=', ''),
(15, 1435568292, 1, '891f09f1', '19b847c8c48ac7f4a55442f4c24b64d6', 'user', 15, 'sVtKRp0Rl1VgobFA4fHf3hoxX8loJnlecgm1HBRBxzU=', ''),
(16, 1435568307, 1, '1b2ccc59', '63289e37903ed7f86d04135825903914', 'user', 15, 'FNMERG7ILSMsK/pO7qeMT3xh2kbyLLXH06JtFiJz+TM=', ''),
(17, 1435647023, 1, 'e60c24d8', '4792663903078a69e36320ac626b03f6', 'user', 16, 'd9GEEtlTwZBEBavcYdjj44JBY/keYb0L3i1zB2rm9wE=', ''),
(23, 1435647902, 1, '4f04a4de', 'f44b0997dcc859d681253acfff5e5941', 'user', 16, 'SkAcShbfLBYrFlSsnzjDYbhsYJJf4P/W+eHnL/0VeH0=', ''),
(24, 1437547398, 2, '15fef304', '3e25368f311de0296a4e42de60435b58', 'user', 16, 'SgOEA3C12f3qvsd6ovamYcynukqhmGo6IoqkBgGBRYY=', ''),
(25, 1437639019, 2, '7a77b1d5', 'e1d04302fe70c3456ce9cfcb1d403127', 'user', 15, '76VRzSKhZt4AbhaeKwLEyeDtfDSOa5Xn9+G+a3SpQnU=', ''),
(35, 1437640635, 2, '85df9c4a', '18a705db47703cfb458fd58199f44aab', 'user', 15, '65RrTtNoqPgZlw5pTGWMLj7F0h+LIKWVUOjlFKmX788pCoHRUGgqpO9bAv32LVOr3jSUCrPrBfPXNK2EQLrFToZZxlBjEt0vgT4XbDh/FTVG+J21YmugX8ceYoWxlPqUZop66qfdw48PMlBzy8w4DoSZmHfNPtNewxhUjg7uEqk=', ''),
(36, 1437640651, 2, '811da56d', '472da230771d16d9da51b39bb40fce0b', 'user', 15, 'OB/J85g1uHSLAENCnyLKC2z21EA3Zbx0zCnw7XorpXU=', ''),
(37, 1437642433, 2, '10711922', '5bb13af029e13234d7ef8dec1d9d30eb', 'user', 15, 'eiMltyUfCLDAwGReoamiOgUGx5nhlO3BVwDK9sZqGrUvzQzREEGUK7GjXDoxHgOXbl8zWUx8UKJGGw2C+BIpIHUCyyYCYpGZmw9xFE7D6Flr6ZRcuum8sVPYKo/b19vn', ''),
(38, 1437645576, 2, '7f4bc2c8', '003f85880df87ea66588f8d27ac4aa00', 'user', 15, 'Mc+TnRiTAQEzQX75FoG8soJDKWcoUBD884ou4Vxbfps=', ''),
(39, 1437645582, 2, 'aaadc024', '0199f9b6f9c0a06e0136796c5e4b501e', 'user', 15, '6uh+66MfTs650mHyfwWuyz2KKY+bl02bwfI6vXGReoU=', ''),
(40, 1437647223, 2, '0fe99242', '023927c26466f3e723cb19d056f67772', 'user', 15, 'Rb8m5BBJthM1TnAkDiY5+u56uJyxIcq0eqCcERA/1FQ=', ''),
(41, 1437647688, 2, '84d69a51', '885c13ce569ae96cca7a7b703070cb61', 'user', 15, 'qdtpIv4zHxVmnWho7grOv81Ki5CLe23hc+EiaojWVzE=', '');

-- --------------------------------------------------------

--
-- Structure de la table `messages_hashtag`
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
-- Structure de la table `messages_hide`
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
-- Structure de la table `messages_id`
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages_id`
--

INSERT INTO `messages_id` (`id`, `time`, `token`, `display`, `private`, `type`, `name`, `language`, `deleted`, `action`, `updated`) VALUES
(1, 1433306571, 'c6729d95', 'f25232f9bc4da9bef5fa1d9be8d3f4e2', 1, 'groups', '', 'vi', 0, 1435647902, 1433312716),
(2, 1433307391, '19605aa7', '96ca778c5a88897519515268f0f9b043', 1, 'private', '', 'vi', 0, 1437647688, 0),
(3, 1433413882, '24194ec5', '843a18fe20af68113f82f8c840bfd66d', 1, 'private', '', 'vi', 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `messages_members`
--

CREATE TABLE IF NOT EXISTS `messages_members` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `regency` char(10) NOT NULL,
  `translate` char(4) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages_members`
--

INSERT INTO `messages_members` (`id`, `time`, `tab`, `regency`, `translate`, `guy.type`, `guy.id`) VALUES
(1, 1433306571, 1, 'author', 'en', 'user', 15),
(2, 1433306571, 1, 'members', '0', 'user', 16),
(3, 1433306571, 1, 'members', '0', 'user', 17),
(4, 1433307391, 2, 'members', 'en', 'user', 15),
(5, 1433307391, 2, 'members', '0', 'user', 16),
(6, 1433413882, 3, 'members', '0', 'user', 16),
(7, 1433413882, 3, 'members', '0', 'user', 17);

-- --------------------------------------------------------

--
-- Structure de la table `messages_typing`
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
-- Structure de la table `messages_views`
--

CREATE TABLE IF NOT EXISTS `messages_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `tab` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `messages_views`
--

INSERT INTO `messages_views` (`id`, `time`, `tab`, `guy.type`, `guy.id`) VALUES
(39, 1433254452, 97, 'user', 15),
(40, 1433254578, 98, 'user', 15),
(41, 1433254608, 99, 'user', 15),
(42, 1436299107, 1, 'user', 15),
(43, 1437660734, 2, 'user', 15),
(44, 1435647907, 1, 'user', 16),
(45, 1433411253, 1, 'user', 17),
(46, 1435567376, 3, 'user', 16),
(47, 1437547418, 2, 'user', 16);

-- --------------------------------------------------------

--
-- Structure de la table `mood`
--

CREATE TABLE IF NOT EXISTS `mood` (
`id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `emoticon` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `mood`
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
-- Structure de la table `music_album`
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
-- Structure de la table `music_block`
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
-- Structure de la table `music_cache`
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `music_cache`
--

INSERT INTO `music_cache` (`id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `copy`, `mime`, `size`, `duration`, `path`, `user.id`, `author.id`, `author.type`) VALUES
(5, 1434614101, 1435498857, 'da65d66b', 'd6b39c35', 'e727921e', '6b93ff96.mp3', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', '0', 'audio/mp3', 3636470, 226.873474, 'b33b94a8', 15, 15, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `music_info`
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
-- Contenu de la table `music_info`
--

INSERT INTO `music_info` (`id`, `user.id`, `author.type`, `author.id`, `album`, `time`, `token`, `display`, `name`, `nameraw`, `singer`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.original`, `secret.original`, `path.original`, `file.datetime`, `file.size`, `codec`, `bitrate`, `duration`, `mime_type`) VALUES
(1, 15, 'user', 15, 0, 1433745199, '966a5164', '7f2e596d7ed79d1720651a37fb98015d', 'x', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', '', '', '', 4, 4, 4, 'd098eb5a6b6137ed8433e56050783a36.mp3', '250b5ac580f1bc35c4d98743ccd50a9e', '49607e4f', 0, 3636470, 'mp3', 128229, 226.873474, 'audio/mp3');

-- --------------------------------------------------------

--
-- Structure de la table `music_replay`
--

CREATE TABLE IF NOT EXISTS `music_replay` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `music.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `expires` int(11) NOT NULL,
  `at` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `music_replay`
--

INSERT INTO `music_replay` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(5, 1433750606, 1, 'user', '15', 1434640107, 39);

-- --------------------------------------------------------

--
-- Structure de la table `music_reviewlater`
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
-- Structure de la table `music_views`
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
-- Contenu de la table `music_views`
--

INSERT INTO `music_views` (`id`, `time`, `music.id`, `guy.type`, `guy.id`, `quality`) VALUES
(1, 1433745205, 1, 'user', '15', '0'),
(2, 1434035297, 1, 'user', '15', '0');

-- --------------------------------------------------------

--
-- Structure de la table `parameter`
--

CREATE TABLE IF NOT EXISTS `parameter` (
`id` int(11) NOT NULL,
  `code` text NOT NULL,
  `language` char(4) NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `parameter`
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
(149, 'suggest_weather_reopen', 'en', '1800'),
(150, 'suggest_weather_reload', 'en', '3600'),
(151, 'suggest_news_reload', 'en', '3600'),
(152, 'suggest_guys_reload', 'en', '3600'),
(153, 'suggest_guys_reopen', 'en', '1800'),
(154, 'suggest_news_reopen', 'en', '1800'),
(155, 'select_time_year_min_limit', 'en', '1975'),
(156, 'select_time_year_max_limit', 'en', '2015'),
(157, 'select_time_month_min_limit', 'en', '1'),
(158, 'select_time_month_max_limit', 'en', '12'),
(159, 'select_time_day_min_limit', 'en', '1'),
(160, 'select_time_day_max_limit', 'en', '30'),
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
(188, 'storage_folder_max', 'en', '1'),
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
(206, 'ajax_request_limit_checktime', 'en', '15'),
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
(239, 'users_online_timeout', 'en', '300');

-- --------------------------------------------------------

--
-- Structure de la table `photos_block`
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
-- Structure de la table `photos_cache`
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
-- Structure de la table `photos_faces`
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
-- Structure de la table `photos_info`
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
-- Contenu de la table `photos_info`
--

INSERT INTO `photos_info` (`id`, `user.id`, `author.type`, `author.id`, `scrapbook`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `attachments`, `public`, `private.view`, `private.comment`, `private.share`, `file.original`, `file.large`, `file.medium`, `file.small`, `secret.original`, `secret.large`, `secret.medium`, `secret.small`, `path.original`, `path.large`, `path.medium`, `path.small`, `size.height`, `size.width`, `aperture.f`, `aperture.max_value`, `b.o.m`, `file.datetime`, `file.size`, `file.type`, `file.source`, `flash`, `focal.length`, `iso`, `make`, `model`, `metering.mode`, `mime_type`, `software`, `ccd.width`, `exposure.time`, `exposure.mode`, `exposure.bias_value`, `f_number`, `sensing.method`, `shutter.speed`, `digital_zoom.ratio`) VALUES
(1, 15, 'user', 15, 0, 1433753226, 'bad63031', '550b43c6719b29034d11284365df366f', 'c53196af.jpg', 'IMG_3270.JPG', '', '', 0, 0, 4, 4, 4, '16994d4d897b0913f24e4d298bfc3413.jpg', '0c015bc3125b2e37002d62fc8d056e87.jpg', '4f27f528eb066716ebd2ee74123556c5.jpg', 'd6cf363d62d042798059f52b11671b84.jpg', '4972ebf829ed31f4661478754d02ccbf', '11fbe610ab0b81590b773ddbfef908a1', '148e4531979c96c57c5d9c8e8763e759', '21f1559c387fab9e433746f9af35deab', '9b8c6d73', '72d39a0c', '35b63e0f', '202615eb', 1042, 1936, 'f/11.0', '3625/1000', 0, 1433753221, 389897, 2, '0', 16, '35/1', 100, 'Canon', 'Canon EOS DIGITAL REBEL XTi', 3, 'image/jpeg', 'Adobe Photoshop CC (Windows)', '0', '1/320', 1, '0/3', '11/1', 0, '8321928/10', '0');

-- --------------------------------------------------------

--
-- Structure de la table `photos_scrapbook`
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `photos_scrapbook`
--

INSERT INTO `photos_scrapbook` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 15, 'a0718873', 'da94c4a297b8fe31b611c30e21cbc789', 1433580568, 'Gym', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `photos_tips`
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
-- Structure de la table `photos_views`
--

CREATE TABLE IF NOT EXISTS `photos_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(10) NOT NULL,
  `size` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `photos_views`
--

INSERT INTO `photos_views` (`id`, `time`, `photos.id`, `guy.type`, `guy.id`, `size`) VALUES
(1, 1433753232, 1, 'user', '15', '0');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(128) NOT NULL,
  `time` int(11) NOT NULL,
  `data` longtext NOT NULL,
  `token` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sessions`
--

INSERT INTO `sessions` (`id`, `time`, `data`, `token`) VALUES
('NogkSiaTIMrqFLQ4eDt8HzxVQbGZfHjnXDFpZm4N185', 1437902581, '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', 'e8721b598d8ff24d1147481b5266065b');

-- --------------------------------------------------------

--
-- Structure de la table `sites_author`
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
-- Structure de la table `sites_id`
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
-- Structure de la table `sites_info`
--

CREATE TABLE IF NOT EXISTS `sites_info` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `token` char(10) NOT NULL,
  `display` varchar(40) NOT NULL,
  `scheme` char(10) DEFAULT NULL,
  `host` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `dot` varchar(25) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `mime` char(10) DEFAULT NULL,
  `fingerprints` char(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text NOT NULL,
  `description` text NOT NULL,
  `url` text NOT NULL,
  `secure` char(5) NOT NULL,
  `updated` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sites_info`
--

INSERT INTO `sites_info` (`id`, `time`, `token`, `display`, `scheme`, `host`, `name`, `dot`, `path`, `mime`, `fingerprints`, `title`, `thumbnail`, `description`, `url`, `secure`, `updated`) VALUES
(9, 1434721022, '49dbdfc4', '764634a6a5c638bb27f1f802b1709773', 'http', 'yan.vn', 'yan', 'vn', '15-quoc-gia-xasdco-phu-nu-dep-nhat-the-gioi-52582.html', 'html', '1315f15b58', '15 quá»‘c gia cÃ³ phá»¥ ná»¯ Ä‘áº¹p nháº¥t tháº¿ giá»›i', 'photos/raw/other/5FVCyI26HK6jGqzds2Beii3qTumGZiAkFXkJ61IEQOIp1+goI3wimdCcR12akceQKRGn19pwWVR3kKSiYv7KhD2xxyeGyrBHtIDzwxY/3oSojXADbGepYSdODcDMjspEW4OPqLDTJ8StkZnhocJM3TpeB0V8clemkoUDplaiebI=', 'Phá»¥ ná»¯ á»Ÿ má»—i quá»‘c gia cÃ³ sá»± khÃ¡c biá»‡t lá»›n vá» hÃ¬nh thá»ƒ hay nhá»¯ng nÃ©t Ä‘áº·c trÆ°ng nÃªn tháº­t khÃ³ Ä‘á»ƒ chá»‰ ra phá»¥ ná»¯ á»Ÿ quá»‘c gia nÃ o Ä‘áº¹p nháº¥t.', 'http://www.yan.vn/15-quoc-gia-xasdco-phu-nu-dep-nhat-the-gioi-52582.html', '0', 1434721022),
(11, 1434775699, 'fc051336', '47b8eb2948bcecf5577fbb074aba0da2', 'http', 'clip.vn', 'clip', 'vn', 'watch/Detective-Conan-Tap-265,OUCu/20029', '', 'b586a81d3c', 'Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan - Detective Conan', 'photos/raw/other/hEyZGNA/Wq11Ppwzhmb7bb92qvDRZN/pCFxFd2aJrdlygDbxoiQ7Rt2IWtHNCBoWCpbpiw+z3tU0xVYMvTfY2Pv12ZVDqDXfddUD5D14h3fkT4Zv5wnp25Wo2udD5/zMo6QUR36xjSDO5h3+4iWQzJ4CVs3qwRSJt6AQo0lZy0Y=', 'Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan Detective Conan táº­p 195 FULL HD , Xem phim ThÃ¡m Tá»­ Lá»«ng Danh Conan - Detective Conan - 1996: Shinichi Kudo lÃ  má»™t thÃ¡m tá»­...', 'http://phim.clip.vn/watch/Detective-Conan-Tap-265,OUCu/20029', '0', 1434775699),
(12, 1434775804, 'f9d499cb', '4939c4c2ea30120efd4458a9a90347d2', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=COXKvGhj-rw', '', 'c1284319', '[Official MV HD] Em! CÃ³ YÃªu Anh KhÃ´ng - KhÃ¡nh PhÆ°Æ¡ng (HOT SONG 2015)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu4OzW+KKDCmJQWq13ZZbR10S6c9YCqwrHMNumQ2RnpfA==', 'Music Video Em! CÃ³ YÃªu Anh KhÃ´ng? performing by KhÃ¡nh PhÆ°Æ¡ng FOLLOW Khanh Phuong â–¶ Khanh Phuong Facebook: http://www.facebook.com/khanhphuongsinger â–¶ Subscri...', 'https://www.youtube.com/watch?v=COXKvGhj-rw', '0', 1436763613),
(13, 1434778851, '00471ce2', 'a3a608455224f0792acaae98a95dc691', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=exorHh1Xkjs', '', 'd495c77a58', 'XÃ¢y â€œÄ‘áº£o nhÃ¢n táº¡oâ€ táº¡i Biá»ƒn ÄÃ´ng, Trung Cá»™ng dá»‘t hay tÃ­nh toÃ¡n ?', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsO1CZFwpN7Hru4aGkZFAGouow9koIuBRxRN92c3ZPt0Q==', 'Khi láº­p cÃ¡c â€œÄ‘áº£o nhÃ¢n táº¡oâ€ Ä‘á»ƒ xÃ¢y dá»±ng cÄƒn cá»© quÃ¢n sá»±, háº£i Ä‘Äƒng, vÃ  phi trÆ°á»ng, Cá»™ng Sáº£n Trung Quá»‘c chá»‰ cÃ³ lá»£i náº¿u Ä‘Ã¡nh nhau vá»›i Viá»‡t Nam. VÃ¬ thá»© nháº¥t, vá» máº·...', 'https://www.youtube.com/watch?v=exorHh1Xkjs', '0', 1434778851),
(14, 1434779018, 'c5328be8', 'c04c2b0b51dcff0cd90fad125857b936', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=MkBTUMKh58s', '', '14069e95fc', 'Trung Quá»‘c: Sen Ä‘áº§m Quá»‘c táº¿ hay Hung Ä‘á»“ Quá»‘c táº¿', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobuck8tlo8QBB50v8B7KUiqailfo4pQYeA09jDUlM4pOlQ==', 'ChÆ°Æ¡ng trÃ¬nh &quot;Giá» Giáº£i áº¢o&quot; vá»›i Kinh táº¿ gia Nguyá»…n XuÃ¢n NghÄ©a, má»—i Thá»© Báº£y hÃ ng tuáº§n. Thá»±c hiá»‡n: Äinh Quang Anh ThÃ¡i Äá» tÃ i ká»³ nÃ y: Trung Quá»‘c: Sen Ä‘áº§m Quá»‘c t...', 'https://www.youtube.com/watch?v=MkBTUMKh58s', '0', 1434779018),
(15, 1434786799, 'd78164f0', '45bfa6bc9d89cc61c4adf84da45a4cf7', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=kdbVUGAn8e4&feature=youtu.be', 'be', '722917e34a', 'NhÃ  lÃ  nÆ¡i cÃ³ máº¹ cÃ³ ba - DÆ°a Leo talk 36', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobv0FwQpV4W9xGZ+1NieYlgwkOMJMi6nb7F+UFowPXdpzQ==', '8h30 tá»‘i t7, minishow hÃ i Ä‘á»™c thoáº¡i á»Ÿ Rue of Chic cafe, táº§ng 2, 171 Cao Tháº¯ng q10, Ä‘áº·t chá»— 0903097363. Lá»‹ch diá»…n hÃ ng tuáº§n http://bit.ly/lichdienhaidocthoai ...', 'https://www.youtube.com/watch?v=kdbVUGAn8e4&feature=youtu.be', '0', 1434786799),
(16, 1434786958, '91ea721d', '0aa9e42bbe0e007ff0ba2483f6248ba3', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=Yec1SFizlgI', '', '4fba6ae33d', 'Schannel - So sÃ¡nh nhanh Bphone vs Galaxy S6 Edge : á»¦ng há»™ hÃ ng Viá»‡t hay mua hÃ ng ngoáº¡i ?', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobtOfAip7Bmi1HLlr3fUzfFpEVhHVg7Ui73AuIirIo4jFg==', '- So sÃ¡nh nhanh BKAV Bphone Ä‘áº¹p hÆ¡n iPhone 6 Plus : Liá»‡u cÃ³ tin Ä‘Æ°á»£c khÃ´ng ? : https://youtu.be/hqs3NRzvna0 - ÄÃ¡nh giÃ¡ nhanh Bphone Ä‘áº§u tiÃªn táº¡i Viá»‡t Nam : Ä...', 'https://www.youtube.com/watch?v=Yec1SFizlgI', '0', 1434786958),
(17, 1434787103, '6cc7a741', 'c86707642971720859ca18fcd4d1583d', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=kdbVUGAn8e4', '', 'e85ae37b31', 'NhÃ  lÃ  nÆ¡i cÃ³ máº¹ cÃ³ ba - DÆ°a Leo talk 36', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobv0FwQpV4W9xGZ+1NieYlgwkOMJMi6nb7F+UFowPXdpzQ==', '8h30 tá»‘i t7, minishow hÃ i Ä‘á»™c thoáº¡i á»Ÿ Rue of Chic cafe, táº§ng 2, 171 Cao Tháº¯ng q10, Ä‘áº·t chá»— 0903097363. Lá»‹ch diá»…n hÃ ng tuáº§n http://bit.ly/lichdienhaidocthoai ...', 'https://www.youtube.com/watch?v=kdbVUGAn8e4', '0', 1434787103),
(18, 1434787529, 'fb425134', '13b889444d521784a151c24b38fd08f4', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=R79zGqZWQ8E', '', '09e42d8f44', 'Linkin Park - 08 - In The End (Live - MTV World Stage 2011) HD', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsQLJ+O+kIkGBSsOL0bF2avPRbb8RpUjGvyRLTPZ870xw==', '- LINKIN PARK: Live In Vasilyevsky Spuck (Moscow, Russia. June 2011) *Emitido por MTV ESPAÃ‘A el dia 6 de agosto del 2011 a las 00:15h', 'https://www.youtube.com/watch?v=R79zGqZWQ8E', '0', 1434787529),
(19, 1434788624, '5bc56f5b', '44d1e10453f10123a068cacd1dd19976', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=EZoBQB4sveA', '', '146eb91eb1', '[HÃ i VÃ¢n SÆ¡n - Báº£o LiÃªm] Má»™t duyÃªn hai ná»£ ba tÃ¬nh (Official)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobt9xoFg4n4yxmTQcV6V+8Ibd/qhg7N77E9f5aNOitV0tA==', 'HÃ i ká»‹ch: Má»™t duyÃªn hai ná»£ ba tÃ¬nh Danh hÃ i: VÃ¢n SÆ¡n - Báº£o LiÃªm - Báº£o VÃ¢n ÄÆ°á»£c phÃ¡t sÃ³ng trÃªn SCTV 1 ÄÄƒng kÃ½ kÃªnh Ä‘á»ƒ xem thÃªm nhiá»u hÃ i ká»‹ch', 'https://www.youtube.com/watch?v=EZoBQB4sveA', '0', 1434788624),
(20, 1434789171, 'f400a7ce', 'f77007857843ec3271fa7fba582b6061', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=BKsjE-QEc-w', '', '7391cb37d6', 'Song táº¥u hÃ i Báº£o Chung, VÃ¢n SÆ¡n, VÃ¢n SÆ¡n 48', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu+AaaDQe+ZzTf1FELCO/+bszUb7YjqT9t0tdLJxGZMJg==', 'https://www.facebook.com/luong.nghiemtuc', 'https://www.youtube.com/watch?v=BKsjE-QEc-w', '0', 1434789171),
(21, 1434789432, '24f4f66b', '6ba27838d4fd0223b21445694ce10bc4', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=KIy6QxcpxKo', '', 'a256edbf20', 'LiÃªn khÃºc TÃ¬nh Lá»¡ vÃ  TÃ n Tro Thanh HÃ  hÃ¡t live', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobshB0Gx7GnPto+/M/VIfeAadx20jmkRKmzhzm0A5gWpXg==', 'LiÃªn khÃºc TÃ¬nh Lá»¡ vÃ  TÃ n Tro Thanh HÃ  hÃ¡t live, tÃ¬nh lá»¡ thanh hÃ , tÃ n tro thanh hÃ , thanh hÃ  hÃ¡t live', 'https://www.youtube.com/watch?v=KIy6QxcpxKo', '0', 1434789432),
(22, 1434987589, '6f23f0ee', '262f69c66954a3c32a604cbf31594244', 'https', 'vimeo.com', 'vimeo', 'com', '130731671', '', 'e4a0443c8f', 'Signature', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm3V/TxmUHwXfY9Nlj+zDE97tkHWUIQ3PbrR1lM3htVt0g==', 'Nothing is intact or permanent, everything is affected and connected&mdash;the history, the city and the rider. Just as the city left a mark on the rider, he leaves a&hellip;', 'https://vimeo.com/130731671', '0', 1434987589),
(23, 1434987690, '202fb000', '88de1fdd997e469c75286efc7c37bfaa', 'http', 'dailymotion.com', 'dailymotion', 'com', 'vn/relevance/universal/search/The+rose+-+Westlife+vietsub/1', '', '55f8526b25', '', 'photos/raw/other/TzdxCHbuRsCMh4O+p6bjz1wMwxvRY/osJPBEb581hNk=', 'Má»i báº¡n Ä‘Ã³n xem video ca nháº¡c, cÃ¡c buá»•i hÃ²a nháº¡c, phá»ng váº¥n nghá»‡ sá»¹ thuá»™c nhiá»u thá»ƒ loáº¡i, pop, rock, hip-hop, country..., Ä‘áº¿n tá»« nhiá»u quá»‘c gia khÃ¡c nhau Viá»‡t Nam, HÃ n Quá»‘c, Má»¹, PhÃ¡p,....; trong Ä‘Ã³ Ä‘áº·c biá»‡t lÃ  cÃ¡c buá»•i biá»ƒu diá»…n truyá»n hÃ¬nh trá»±c tiáº¿p táº¡i Dailymotion.', 'http://www.dailymotion.com/vn/relevance/universal/search/The+rose+-+Westlife+vietsub/1', '0', 1434987690),
(24, 1434987757, 'c3d2540e', '45ba2b5c41ee316d863a0895af82649b', 'http', 'dailymotion.com', 'dailymotion', 'com', 'video/x2tlokz_westlife-the-rose-with-lyrics_music', '', 'ae5c6bd1fa', 'Westlife - The Rose (With Lyrics)', 'photos/raw/other/4vwUJuLJY5QtNw0jVOrLbWUgdIjlv3fAJEpr7bdPcg3ZCd+En6P/nQ17SHBXpsQ8UZp6fPgmbAlA8fWgjnkJCQ==', 'Westlife - The Rose (With Lyrics)', 'http://www.dailymotion.com/video/x2tlokz_westlife-the-rose-with-lyrics_music', '0', 1434987757),
(25, 1436757984, 'fe7326ce', '453f1e155e28817570cf1c0303b72270', 'http', 'dailymotion.com', 'dailymotion', 'com', 'video/x2vdkl4_oto-nh%E1%BB%AFng-cach-ne-tranh-di%E1%BB%87n-tho%E1%BA%A1i_fun', '', '67c5213d38', 'OTO- Nhá»¯ng cÃ¡ch nÃ© trÃ¡nh Ä‘iá»‡n thoáº¡i', 'photos/raw/other/n+6D8pR67xh570YpjY83D+sgBfE8DsJG87gpAYI8CYnEOFf4SqDlXqecTqDbAglC51f6Qlu2+xcpKe6DiKrzVw==', 'NgÃ y nay Ä‘iá»‡n thoáº¡i trá»Ÿ thÃ nh má»™t â€œváº­t báº¥t ly thÃ¢nâ€ cá»§a nhiá»u ngÆ°á»i trong viá»‡c giá»¯ liÃªn láº¡c. Tuy nhiÃªn khÃ´ng pháº£i cuá»™c gá»i nÃ o cÅ©ng Ä‘á»u Ä‘Æ°á»£c Ä‘Ã³n nháº­n. Báº¡n cÃ³ bao giá» pháº£i trá»‘n Ä‘iá»‡n thoáº¡i cá»§a má»™t ai Ä‘Ã³ chÆ°a? HÃ£y xem clip trÃªn Ä‘á»ƒ náº¯m cÃ¡c chiÃªu trá»‘n Ä‘iá»‡n thoáº¡i hiá»‡u quáº£ nhÃ©... ----------------------------------------------------------------------------------------------------------- YANNEWS - KÃªnh giáº£i trÃ­ Ä‘áº·c sáº¯c dÃ nh cho giá»›i tráº» Viá»‡t  ÄÄƒng kÃ½ ngay Ä‘á»ƒ xem nhiá»u video hay: http://www.dailymotion.com/yannews   VÃ  Ä‘á»«ng quÃªn theo dÃµi Yan trÃªn: https://www.youtube.com/YanNewsTube  https://www.facebook.com/yantv https://www.facebook.com/yannews https://googleplus.com/yannews https://www.facebook.com/YANSchoolTV  LiÃªn há»‡: yannewstube@yan.vn', 'http://www.dailymotion.com/video/x2vdkl4_oto-nh%E1%BB%AFng-cach-ne-tranh-di%E1%BB%87n-tho%E1%BA%A1i_fun', '0', 1436757984),
(28, 1436761761, 'b9f965a0', '268f357a047cfd070b36d6fdec89ea04', 'http', 'nhaccuatui.com', 'nhaccuatui', 'com', 'bai-hat/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ', 'pk64vAfNGh', 'f2e238e3', 'Nghe nháº¡c MP3 má»i lÃºc má»i nÆ¡i táº¡i NhacCuaTui.Com', 'photos/raw/other/BjhSl630Dzlv2mANkhp1oGu+zbHDtceVtj4+EaF5lEAe4dcj3hHC9EzM1SLXHY3r3krV5KWpoNTcJnC9wuHRuQ==', 'Truy cáº­p NhacCuaTui.Com Ä‘á»ƒ nghe cÃ¡c bÃ i hÃ¡t HOT nháº¥t hiá»‡n nay, táº­n hÆ°á»Ÿng Ã¢m nháº¡c vá»›i hÃ ng triá»‡u bÃ i hÃ¡t cá»§a cÃ¡c ca sá»¹, nháº¡c sá»¹ trong vÃ  ngoÃ i nÆ°á»›c.', 'http://www.nhaccuatui.com/bai-hat/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ.html', '0', 1436761761),
(29, 1436761846, '8042d6bd', 'd6eeace6edf81647cf79b2dc49d874fe', 'http', 'nhaccuatui.com', 'nhaccuatui', 'com', 'video/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ', 'pk64vAfNGh', '8143293a', 'Tiáº¿n LÃªn Viá»‡t Nam Æ i - SÆ¡n TÃ¹ng (M-TP)', 'photos/raw/other/PeUqALBhdjXCOQtJZozv1n+s0Dbml47ajc4BTKOfwE0fjuV5DMZ29ETb7UiwzEvhFSQ7ybNMthXoyTbiQ+Ptb+V4P0qicHiZcW0WO68/SY2LOx3hrj1FgckP/jRKI6Fr', 'Video Tiáº¿n LÃªn Viá»‡t Nam Æ i cá»§a SÆ¡n TÃ¹ng (M-TP). Truy cáº­p ngay NhacCuaTui.Com Ä‘á»ƒ xem vÃ  táº£i video Tiáº¿n LÃªn Viá»‡t Nam Æ i vá»›i hÃ¬nh áº£nh Ä‘áº¹p, cháº¥t lÆ°á»£ng cao, pk64vAfNGhAwZ. NhacCuaTui.Com nghe nháº¡c má»i lÃºc má»i nÆ¡i', 'http://www.nhaccuatui.com/video/tien-len-viet-nam-oi-son-tung-m-tp.pk64vAfNGhAwZ.html', '0', 1436761846),
(30, 1436762951, '0d4bfa0c', '2d1cacfc8f69fbda4ba559a412eb7c99', 'https', 'tinhte.vn', 'tinhte', 'vn', 'threads/mercedes-tiet-lo-nhung-tinh-nang-moi-tren-e-class-2017.2482586', '2482586', 'a5bdee03', 'Mercedes tiáº¿t lá»™ nhá»¯ng tÃ­nh nÄƒng má»›i trÃªn E-Class 2017', 'photos/raw/other/XL5LZ9SkRASzCKlsyZo/2GJjziI7g1yofO1/y041waw5dBzbh75U7iPVBbEZNc4KgcP9VTtMG7nxKdcgd25t3sTfZFj6Eyw97sK2UL6Y6ABVzNkb8moF+X9GwZkSpNhq', '[ATTACH]  CÃ²n khÃ¡ lÃ¢u ná»¯a thÃ¬ E-Class 2017 má»›i chÃ­nh thá»©c trÃ¬nh lÃ ng, nhÆ°ng Mercedes cÃ³ váº» Ä‘Ã£ nÃ´n nÃ³ng láº¯m rá»“i khi cho cÃ´ng bá»‘ nhá»¯ng cÃ´ng nghá»‡ hoÃ n...', 'https://www.tinhte.vn/threads/mercedes-tiet-lo-nhung-tinh-nang-moi-tren-e-class-2017.2482586/', '0', 1436762951),
(31, 1436763657, '2ab3908b', '5c7e15cea9d7a5e01dab96133d31dd7d', 'http', 'mp3.zing.vn', 'mp3', 'zing.vn', 'bai-hat/An-Nut-Nho-Tha-Giac-Mo-Son-Tung-M-TP/ZW7I776I.html', 'html', 'b76a8e20', 'áº¤n NÃºt Nhá»›â€¦Tháº£ Giáº¥c MÆ¡ - SÆ¡n TÃ¹ng M-TP | BÃ i hÃ¡t, lyrics', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaa7x2GqoLMvGYDeTCTl3nAT9kK16b8r6FRjCQoEqUvzamUM3eQD78e8olkpcNJGGQY7Ci5PGa5CXNsH/oQP6qTytR1p6N3TeIHrF+BKOffw1UnDIJANbYFpK5vZ5o+MWYQ=', 'áº¤n NÃºt Nhá»›â€¦Tháº£ Giáº¥c MÆ¡, SÆ¡n TÃ¹ng M-TP. Ehhh ohhh Sinh con ra bang cau hat ru quen thuoc Diu doi chan mong con lon khong. Táº£i download 320 nháº¡c chá» An Nut Nho Tha Giac Mo, Son Tung M TP', 'http://mp3.zing.vn/bai-hat/An-Nut-Nho-Tha-Giac-Mo-Son-Tung-M-TP/ZW7I776I.html', '0', 1436763657),
(32, 1436763671, 'c2e11670', 'e23d87e1a939622e8a9351c88e887435', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=COXKvGhj-rw', '', '5352176b', '[Official MV HD] Em! CÃ³ YÃªu Anh KhÃ´ng - KhÃ¡nh PhÆ°Æ¡ng (HOT SONG 2015)', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobu4OzW+KKDCmJQWq13ZZbR10S6c9YCqwrHMNumQ2RnpfA==', 'Music Video Em! CÃ³ YÃªu Anh KhÃ´ng? performing by KhÃ¡nh PhÆ°Æ¡ng FOLLOW Khanh Phuong â–¶ Khanh Phuong Facebook: http://www.facebook.com/khanhphuongsinger â–¶ Subscri...', 'https://www.youtube.com/watch?v=COXKvGhj-rw', '0', 1436763671),
(33, 1436763867, '19d9ccd4', '9fde37b8a99bba5af157908dd7927419', 'http', 'mp3.zing.vn', 'mp3', 'zing.vn', 'bai-hat/Say-You-Do-Tien-Tien/ZW70EIUE.html', 'html', 'a1ba2891', 'Say You Do - TiÃªn TiÃªn | BÃ i hÃ¡t, lyrics', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaZtI7aF5kxFIZmOuxBLPnaw4eVczBG7XYZ2Ai/sLJQy7Y1ktAAwASiyJN/4wahHJZj6RCKAKEOtFHLdykaJcO+WtR1p6N3TeIHrF+BKOffw1UnDIJANbYFpK5vZ5o+MWYQ=', 'Say You Do, TiÃªn TiÃªn. Ta gap nhau 1 chieu thu thang 10  vi nu cuoi ay cho em nho mong tung ngay  Dem. Táº£i download 320 nháº¡c chá» Say You Do, Tien Tien', 'http://mp3.zing.vn/bai-hat/Say-You-Do-Tien-Tien/ZW70EIUE.html', '0', 1436763867),
(34, 1436764165, 'ac0b7521', '2e70b774598669b15b4b6852b7308a9a', 'http', 'mp3.zing.vn', 'mp3', 'zing.vn', 'video-clip/Anh-Khong-Sao-Dau-Chi-Dan/ZW6EEZCA.html', 'html', '5e6c4362', 'Anh KhÃ´ng Sao ÄÃ¢u - Chi DÃ¢n | Video Clip MV HD', 'photos/raw/other/jmxqWvnlM8ChOO7++0hACTD+QxSrqahn6jmOAF8xZaZrtYsJUFRRhTraR+VmWJMvK/nmsp9XzQ/cydSMw7hVhck5hgwROapnlQZJLr1ai0PY9Ecz5yesuC0w/yjZMnzz4aV9BWYNNS6C3x4rP1DfebsLsRxxW2dJCoSG5PAK6AU=', 'MV Anh KhÃ´ng Sao ÄÃ¢u - Chi DÃ¢n cháº¥t lÆ°á»£ng cao HD 720 1080, Video clip báº£n Ä‘áº¹p nháº¥t cá»±c nÃ©t cÃ³ lyrics Anh Khong Sao Dau Chi Dan viet sub', 'http://mp3.zing.vn/video-clip/Anh-Khong-Sao-Dau-Chi-Dan/ZW6EEZCA.html', '0', 1436764165),
(35, 1437032300, '5c79703c', '3533ac521ff9ee83852cbf2a3f656792', 'https', 'flickr.com', 'flickr', 'com', 'photos/131636999@N03/17016433587/in/dateposted-public/', '', '45d3159a', 'IMG_2017', 'photos/raw/other/Kaq2QVqZpO5R1BUXTbtrlnQZ+6jbJ9e7c+zC8wWg0mUUslxgGZiAWRl/Gn746WwQ6J9hHphaZmwX6LY72afYlhOn6XafZ4KeEJBKZDYyCZ/VyPpor4DoAkRdsH7oOwWe', 'IMG_2017', 'https://www.flickr.com/photos/131636999@N03/17016433587/in/dateposted-public/', '0', 1437032300),
(39, 1437034002, 'cf5360c7', '0730a6c2338cbf67dee359748917bf55', 'https', 'twitter.com', 'twitter', 'com', 'nhaccuatui_com/status/621589704836820992', '', '9b94cbe4', 'NhacCuaTui Official on Twitter', 'photos/raw/other/INkHeJ5q8fWwZZI1eV7Fo0G6w3QWw8QG824XUJeNBcmUxoSoAppraQHuyI3xz0fderrs0K6AlP1GFWCEXDcvT7K1Q7JVuitRCILzbIRsju3oR+L0Jyn+ol5hxkXco847SwCPSOmyw5WbiJ0B9jpUNywVkazdtL0p59iMa/ihXUI=', 'â€œCháº¯c pháº£i hÃ©t vÃ o tai ngÆ°á»i ta má»›i biáº¿t &amp;gt;,&amp;lt; http://t.co/BpXRyNOLztâ€', 'https://twitter.com/nhaccuatui_com/status/621589704836820992', '0', 1437034002),
(40, 1437034082, '8d517ba0', 'cb2b025d3e2215934b292dc9b0eec960', 'https', 'twitter.com', 'twitter', 'com', 'nhaccuatui_com/status/621589704836820992', '', 'f1ffe498', 'NhacCuaTui Official on Twitter', 'photos/raw/other/INkHeJ5q8fWwZZI1eV7Fo0G6w3QWw8QG824XUJeNBcmUxoSoAppraQHuyI3xz0fderrs0K6AlP1GFWCEXDcvT7K1Q7JVuitRCILzbIRsju3oR+L0Jyn+ol5hxkXco847SwCPSOmyw5WbiJ0B9jpUNywVkazdtL0p59iMa/ihXUI=', 'â€œCháº¯c pháº£i hÃ©t vÃ o tai ngÆ°á»i ta má»›i biáº¿t &amp;gt;,&amp;lt; http://t.co/BpXRyNOLztâ€', 'https://twitter.com/nhaccuatui_com/status/621589704836820992', '0', 1437034082),
(41, 1437034213, '5ceaedd4', '0af10b44253048765e2421b2b8eed55f', 'https', 'pinterest.com', 'pinterest', 'com', 'pin/234961305536143153/', '', '53ef08a3', 'Panasonic&#39;s Lumix GX8 is a sleek and compact flagship camera', 'photos/raw/other/eMkT3J0UB7UvnyqMxfc8KqD50GaA91CwzCc5nxX/+pFd9PwT/0W2fEOZXtANZEsNiEu9bueBJ7GOKLdUdaR5u7a0SV+sWTO680ZoRcilEQahV29ZvbG7aZvDqZ+2jRMdAE1mozUhz+RXz7eqQz/vHhPwwX2GG/fPehevRWVUorY=', 'Only two months after introducing the G7 Micro Four Thirds camera, Panasonic is now expanding its compact line with the Lumix GX8. The new shooter, which is dus', 'https://www.pinterest.com/pin/234961305536143153/', '0', 1437034213),
(42, 1437034288, '5dcbfcab', '72fcf5750ea8b73083ee57d2ae8c809e', 'https', 'vine.co', 'vine', 'co', 'v/eiLAwvqddeg', '', '181158d1', 'Never change, Muni. Never change.', 'photos/raw/other/6J5kQnJbC1mG8LZlHmzQCU41Soy0WOCenmcRv9TCp6FGD4MTgAMS840QPSjLKXQ2Cl1wHK+33j5VXRsXHd1bbdXwfT/90ha/TLjVCorebv5GMMqIQtyglVWrPcoPQAA89eSsD3lCNKVCzD70bjUr4hzWQ2kYL/IclvJHEkxHwwgfWkuwjZKvGnerwcC+ai4FJaIzajiPATEeyWvVDGCUzw==', 'Watch MLB&#39;s Vine &#34;Never change, Muni. Never change.&#34; taken on 21 June 2015. It has 6466 likes. Vine is the best way to see and share life in motion. Create short, beautiful, looping videos in a simple and fun way for your friends and family to see.', 'https://vine.co/v/eiLAwvqddeg', '0', 1437034288),
(43, 1437038924, 'd835b2d8', '2abeca64817e78f0a830171e9823b3d2', 'https', 'instagram.com', 'instagram', 'com', 'p/5L8Ls0Q7Kl', '', '10e64e9f', 'ThiÃªn Kim on Instagram: â€œÄá»i mÃ¬nh cÃ´ Ä‘Æ¡n ráº¥t cÃ´ Ä‘Æ¡nðŸ˜­â€', 'photos/raw/other/fi3EbdTSVZ8BpaP9rRtEgsHcDE1xF0XIOR5xAi26ab0KIB/gDe/DxYRIDO9wt2RZ9wx2JW8dQQKhNYpkJ4hnC6OjqDB7GR5z6YDVBbGGdjDcKvqSOnGZ3VaqZ3uaytmNq1+jfTwSeP/vquy1p75L8DVJKMaM1cF39D0OD1FkA1M=', 'â€œÄá»i mÃ¬nh cÃ´ Ä‘Æ¡n ráº¥t cÃ´ Ä‘Æ¡nðŸ˜­â€', 'https://instagram.com/p/5L8Ls0Q7Kl', '0', 1437038924),
(44, 1437039388, '397cf8fc', '876ca08aa20ae519f08e0876e4d7631e', 'https', 'myspace.com', 'myspace', 'com', 'myspace/video/the-pedicab-interviews-chris-cole/109546118', '', '7600ceee', 'The Pedicab Interviews: Chris Cole Video by Myspace on Myspace', 'photos/raw/other/6+LuqxyzAWZNY1G2Y8V/IF96/yyLDakKoCSbodCz823zApc4NtJj8L8CPgSaacbTkebrrjA7Z0kF1MsPa8xRzVdXNmlKqfc4V8mf2mPF7RQ7E7BjTUiwzjcZPsmp1/KEbBKbjXMQNPXNf2M896UJ4TwrFP7YNv8VwNPLU12bmf8=', 'The Summer X Games are underway in Austin, and Myspace is hitching rides with the some of the best pro athletes and artists in town. First up: skateboarder and two-time X Games gold medalist Chris Cole talks all things &amp;#39;90s, from Janet Jackson to Teenage Mutant Ninja Turtles.', 'https://myspace.com/myspace/video/the-pedicab-interviews-chris-cole/109546118', '0', 1437039388),
(45, 1437040021, 'bf905552', '34a1251a4aea27c107207cc80cdf82d7', 'https', 'myspace.com', 'myspace', 'com', 'iamsebas/music/song/boyfriend-remix-87571429-97164009', '', '73f3e548', 'Boyfriend (Remix)', 'photos/raw/other/OLopoV2n/ONmmp77fSJfrBfRfZpulovCct/mDNMYUohN0Qzk3uJC6jH0y2gR192QX+NjZ0d83y4aRYCT03VvrvFqJ25Ws4IYrLfZGOGcboBWufv/SYcGvMtITiFuuDkNYOCANLqJ8DUjACFqyEyOsFT48Kdap3Iw1EGGaUvUcK4=', 'Boyfriend (Remix) by Sebastian: Listen to songs by Sebastian on Myspace, a place where people come to connect, discover, and share.', 'https://myspace.com/iamsebas/music/song/boyfriend-remix-87571429-97164009', '0', 1437040021),
(46, 1437041264, 'a2253bc1', '01711712709fc80cf075cf9c76ead5a4', 'https', 'vimeo.com', 'vimeo', 'com', '108846792', '', 'ff734a32', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041264),
(47, 1437041323, 'a5ef16d7', 'a893bb001e31484665da299657bb547e', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=Yd8UeUp7B60', '', '66d2006b', 'DON&amp;#39;T BE THAT GIRL AT THE GYM', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsFeEtQmpiyyHsPp+5XkUrwo64bSEceH6s4bXZchQHKMQ==', 'AS I STARTED CREATING SCENES FOR THIS SKIT I REALIZED IT WASN&amp;#39;T ALWAYS EXACTLY WHAT GIRLS WERE DOING BUT SOMETIMES WHAT HAPPENS AT GYMS THAT HAD TO BE MADE F...', 'https://www.youtube.com/watch?v=Yd8UeUp7B60', '0', 1437041323),
(48, 1437041337, 'a29f026e', 'da081bc6e1baaf75bea7a7302f07f33e', 'https', 'vimeo.com', 'vimeo', 'com', '108846792', '', '365ede98', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041337),
(49, 1437041343, 'c071685f', 'f517a3f37a71ba5247401b902a0bf761', 'https', 'youtube.com', 'youtube', 'com', 'watch?v=Yd8UeUp7B60', '', '5d2d041e', 'DON&amp;#39;T BE THAT GIRL AT THE GYM', 'photos/raw/other/V9SKp3QnENSIuTxkfFfEWjKdP48LNJ717C20Hx7hobsFeEtQmpiyyHsPp+5XkUrwo64bSEceH6s4bXZchQHKMQ==', 'AS I STARTED CREATING SCENES FOR THIS SKIT I REALIZED IT WASN&amp;#39;T ALWAYS EXACTLY WHAT GIRLS WERE DOING BUT SOMETIMES WHAT HAPPENS AT GYMS THAT HAD TO BE MADE F...', 'https://www.youtube.com/watch?v=Yd8UeUp7B60', '0', 1437041343),
(50, 1437041564, '5953fcd7', '2531bbc657a2b263dc13dce5f2ae62d8', 'https', 'vimeo.com', 'vimeo', 'com', '108846792', '', 'aa58fb2b', 'Wall Script 7 The Social Network Script', 'photos/raw/other/gevUnZE1jQjmnoO/+0Mk9oNFrRsmMzUDk4vsBk3yVm26KymbvNxfdrFTwCEuQiiyEQZWBlcZT36K27eqaUIYmw==', 'The Social Network Script developed using PHP, Jquery, Oembed, Oauth and MySQL', 'https://vimeo.com/108846792', '0', 1437041564),
(51, 1437293065, 'df5ce222', '774fe9f07ca91b07b5280798505ebc57', 'http', 'ted.com', 'ted', 'com', 'talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives', '', '41eefe0e', 'What we learn from insectsâ€™ kinky sex lives', 'photos/raw/other/Ch2XzQ9zHmxtd9BFz9YAHK2xppFEJIAHBtF1n5/ZcpUZOsxzuP8R3BFEoPfNGW0PQKEmh3X6ZHZnZAf5Vw8agcxvRrA9ghzhuI+onPFp5dfL26wZlZcUo2A+qHWH9ZP78DZDHIpwPlTmXiSZlYpPVtHC8gBoftq5/3P55Ht9rJxuof81tim+de/F8S3HQncr8odZ0Oq4TXRRINWz64mOd8G5H2DbI8m3EhLDU8LHUdrCk8v8LLem3/PvqcNSCppx', 'Marlene Zuk delightedly, determinedly studies insects. In this enlightening, funny talk, she shares just some of the ways that they are truly astonishing -- not least for the creative ways they have sex.', 'http://www.ted.com/talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives', '0', 1437293065),
(55, 1437294167, 'd52b6da1', '7d780f72409dbf770d5073a3866a4b0f', 'https', 'ted.com', 'ted', 'com', 'talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives.html', 'html', '055f252c', '', '', 'TED Talks Marlene Zuk delightedly, determinedly studies insects. In this enlightening, funny talk, she shares just some of the ways that they are truly astonishing -- not least for the creative ways they have sex.', 'https://embed-ssl.ted.com/talks/marlene_zuk_what_we_learn_from_insects_kinky_sex_lives.html', '0', 1437294167);

-- --------------------------------------------------------

--
-- Structure de la table `sites_secure`
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
-- Structure de la table `sites_views`
--

CREATE TABLE IF NOT EXISTS `sites_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `sites_views`
--

INSERT INTO `sites_views` (`id`, `time`, `sites.id`, `guy.type`, `guy.id`) VALUES
(1, 1434700852, 1, 'user', '15'),
(2, 1434789828, 0, 'user', '15');

-- --------------------------------------------------------

--
-- Structure de la table `status`
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
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status`
--

INSERT INTO `status` (`id`, `token`, `display`, `time`, `date`, `edit`, `user.id`, `author.type`, `author.id`, `private.view`, `private.comment`, `private.share`, `type`, `content`, `usertag`, `hashtag`, `places`, `mood`, `link`, `share`) VALUES
(15, '3768679f', 'fb35c7c0a191284bf2b29921fd9483d2', 1433581761, NULL, 0, 15, 'user', 15, 3, 3, 3, 'videos', 'dJAoMGpmQzUYRn+c+m7ZITFoVArteoaIo8dfrSm7eZo=', 0, 0, 0, 0, 0, 0),
(16, '921dc0d6', 'b22b767b12979a610bf2e1ad901d0834', 1433745199, NULL, 0, 15, 'user', 15, 3, 3, 3, 'music', 'V42a2JnVhmKzYNIyqRcWXkU0NL+263GFb+8hoHb1/iA=', 0, 0, 0, 0, 0, 0),
(17, '4c59ac5a', '7e0f721096e28c4b7d7b0cc6142153fb', 1433753223, NULL, 0, 15, 'user', 15, 3, 3, 3, 'photos', '3FUOwvsiZZ5EXqgoilUgGyQqYWi5hqd9ZRUmXh4IhKE=', 0, 0, 0, 0, 0, 0),
(18, '7ae7bba5', 'ff252e76eecaf1cea21f55e76bd7365a', 1434092540, NULL, 0, 16, 'user', 16, 4, 3, 3, 'status', 'ZkEpSTykP8f6wlZH+gLcigG/ocG5Bl0beCU/PH7vl1Q=', 0, 0, 0, 0, 0, 0),
(26, 'dcbb6b78', '94a56f537fab2e295370836ee0b7e77f', 1434097305, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'HF3OijhX0MVFyR3W1TIu8YInzlOaI3dI1GLbWkyiwtA=', 0, 1, 0, 0, 0, 0),
(27, 'd027744c', 'e8748f92070e1348d107788e9a867427', 1434097410, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'igzaZ+lbU21WyApRYJ3gB/N9N1VaKeEy17cuAglySWI=', 0, 1, 0, 0, 0, 0),
(28, '317a8ebd', '94fd8b620a540e2443bd9384518e54e7', 1434097810, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'EtcrZ21ANeG1qWx4cmAvbpvnNm1GQENJp5/YzA1qAAA=', 0, 1, 0, 0, 0, 0),
(29, 'eb5ca495', 'e5f5e8e7a31c427a635cbc88021997b2', 1434098084, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '+RNCtAVIP7CDEMNOy0JQbLChdU3I7H60cMCkqxFf7h4=', 0, 1, 0, 0, 0, 0),
(30, 'b67dc892', '50a75787bb761932fc6755891652c87e', 1434098822, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'KEkq8h9HCgR7mo+SM88mQSCIqvPDxy0IsfsTHqE9TE0=', 0, 1, 0, 0, 0, 0),
(42, 'c279fec1', 'cf358411ac6254f67d02d46d5ef3ea91', 1434100458, NULL, 0, 16, 'user', 16, 4, 3, 3, 'status', 'zEbMNRX7otdm1ADLLMDZatlCJVRODnfgm5Gh2/sTEiQ=', 0, 0, 0, 0, 0, 0),
(47, '4817a929', 'e0b84fb6e0469063e9268343c9c15b7b', 1434700812, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 's9Dr6IhJ9Y6LvIBPsr+jpy3FYIaAG3Ad74mLA6JDsNLN3aazhMT+t2N2Fj2Pg8tq9UvH+pigcg9MogvTCBCPqw==', 0, 0, 0, 0, 1, 0),
(49, '7126c114', 'a205a0b7dc8c99c1c421dca87d04ca53', 1434701058, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'D5jITdHnnBiR+VfWcf+pnbgfdrG3FvU4s60xXcbJ7bYCrlrBW2gcdQ75ylAxdJZ05Hk7o224+4UFHQVVSnCC/A==', 0, 0, 0, 0, 1, 0),
(50, '35d1a1af', 'b096aeb491c396e26501d17bde6c8bd4', 1434778944, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'oLnqzcire8CBJxlRAKETP8niNZnT2bZow19Q2YER+gAdzpviTEXlRNYRRoqBA2emb29Jeo0IYd8m11t2RQWelA==', 0, 0, 0, 0, 0, 0),
(51, '96f55e20', 'b4c3df352bed4aeb661fe6ee3a0a4db7', 1434779051, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'wBtA3Gpg/CblZ5OGrVmMLzXKTvj+bu2SOhDFLxEBDQaZfAlWO6z4BAt1RABxLcqKDhqx62BPTSAupGGCC48RHA==', 0, 0, 0, 0, 0, 0),
(52, 'edcc7e0c', 'a24ec5ffa63da0ecf68465887dee0f3d', 1434787496, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '/uwV5UUi1muYnjPp3R+vxAvZu5BVWHN6yI6pLkjxmTAFBqYuUrCqw0CXz5xF8raP7AuAFp93qQjixyYt56t1xQ==', 0, 0, 0, 0, 0, 0),
(53, '915e4b13', 'b4f9283c0ab096426a4629b403b957b0', 1434787533, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '1YG/VDBIb7AWxwcDXNp8g2djjcY1/SqnnSbBpfH/0mcEx9qkESl8ydfNOYhu6mD02OtP5qQWzBXAzYmFl9cnyA==', 0, 0, 0, 0, 0, 0),
(54, '45200686', '7a25e070b8d4d025cde2e501d6252797', 1434788628, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'hCT/GYaJpEk2Tjrd9HiLtTzeh7GyeA6E1B8wgNPyoqvZDFNQNc+aFi2yqJmYUbhqI868pP0qNnNniyTsKFOfdA==', 0, 0, 0, 0, 0, 0),
(55, '5e0884e1', 'd957a0ebfa852f96c3853f12780c92b7', 1434788778, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'wp3HtMlrrcvdIlMElqzvMUjKLU61pW9fhkC3r0lWUaEYhXm+BzBvj/FKMx9jIJYoLPW5wfLPqFHWdNlrt7fExQ==', 0, 0, 0, 0, 0, 0),
(56, '1a8b780a', 'ca744d16fb0a513b2d07894ea7fa8967', 1434788835, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '5tElnvntMGco8NTPqqcDS//tLZSHEOPOG5Dgfhw71b/o159s25j0F8RAhUZL72ugWh7t8E4VtTeirFPdPwjwVg==', 0, 0, 0, 0, 0, 0),
(57, '7616ffe7', '14e7040bdf1aae17c2bc483b0c01ec82', 1434788949, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'gjJadgxcF+jYN7v6CYNY0PuQtg8wZfRsUXj3eDTGpiaqSfykIoShGDOWV1XAOz/JOREZv0mojasZ70yTd4P+pA==', 0, 0, 0, 0, 0, 0),
(58, '539189ed', 'f4245a02f38823addc0a269fbddf6272', 1434789020, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'GKIQb7SUeeCgjCCqqEeCR97uvhXpBOqQcgzzgBYpxsKIOZNLcMBUFSifh1/iuQETxjSJVU0JFN4FJ/yvlgPsUQ==', 0, 0, 0, 0, 0, 0),
(59, 'c307d216', 'ee6cc021d9a15c4fd2f414ee33f93f85', 1434789130, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'OPC57Kgqom+qOEaDhDlfbeP/Ia+8Yv0fWgUGg3y5mGBmVP3ZROvLGZtyh4pZroUZeKcD7EOyc6YgLOH2Vw4hzQ==', 0, 0, 0, 0, 0, 0),
(60, '25a938ad', 'b572244d9dad91774eec5324e4be4c43', 1434789174, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'YakAt7pXeh3lQlz1lknkC/0+MCB+DX410xiNGXYSfxblBKLh3P0PtwsmsaFhdBAjITYiC93ViuJKYV3Sof3tbg==', 0, 0, 0, 0, 1, 0),
(61, '1a4ab147', '065fd024d9178d4db0fa9cb73e809f9c', 1434987597, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'uthojd8GpKJSD6ZKRa1YzOKRbH/5A+fRwhPq1G8itKM=', 0, 0, 0, 0, 1, 0),
(62, 'c92ba13a', 'f913104b36ebcea1864862efb4f43928', 1434987761, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Kc/Ee/btiaPtb5zWUKe1PNcdcmpvOrAnWpoYAtskDinSHHQA5t13Km/i2ore3LvbwEQ/AwLnniwWG1pJYntksxZv+CQTVIEg0B0nCgRZQvJ65mApDXF+sjNE+T5Ckqya', 0, 0, 0, 0, 1, 0),
(63, 'd2bc1322', '47950160b50bae19553701fa6354a2f3', 1435048620, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'vxNmODve+0kTA6WCLbYEfh4vl1jvzZXpD6K9hriPcGE=', 0, 1, 0, 0, 0, 0),
(64, '8c447a74', 'a7c5e85d762eb0315527da4ea805d972', 1435048699, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '7Sh3VTFT4FGKQ1aiZNaUFDQv5WLBmQESbM/MCvf+6Gg=', 0, 1, 0, 0, 0, 0),
(65, 'e3f0b149', '7ff1648c338b93e6e56a3ac9ada0e79a', 1435048714, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'B2WeyQN5qxfF7d92AUN5ndZf2Ky4GEkBkARjXiXwB6I=', 0, 1, 0, 0, 0, 0),
(66, 'ed22f94c', '6584f4c052ad70d8bf1b92e4bcd75d69', 1435306006, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'zwCbJPOz/yMhsoX0rNAz11LaTyBdC9ceW+2l0DpWUlM=', 0, 0, 0, 0, 0, 0),
(67, 'f1f7b6d4', '70b5918f418728239d8112400366b47f', 1435405192, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'KoU0jHJcO0tKXypLK9IwVehqdjZUAjvT4emT1QOXbzc=', 0, 0, 0, 0, 0, 0),
(68, '94bafa39', '07788f962de3b0e5a6d4f32b45f1c409', 1435405296, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'jGQOQb/r3zcBLKiJVk668GxPr3BrTV3wt8I89xm0wNI=', 0, 0, 1, 0, 0, 0),
(69, '594a7e55', '2ff10d446a9c33c4b7ef2bf0194b15e6', 1435409271, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kBQ/E4skPvtbrznZrvYR8GcqiaNhTk32KoUwN4Ksvww=', 0, 0, 0, 0, 0, 0),
(70, '6ed4ec4c', '173876e1e8238e0f022ff812ccd7e251', 1435409388, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'UWTXu4wGMVS+JDv8onSksFOCHniWlOo+zaK3nP/tY5g=', 0, 0, 1, 0, 0, 0),
(71, '105a7455', '23a46c55f57471bd59e4feea32c2acbc', 1435409420, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Pkalnb3A1V3ZapFX821mcY+/58DRnuSYQLBoXcP1gGY=', 0, 0, 1, 0, 0, 0),
(72, '2abf9897', 'ca7d23a28003277f1d87dfd13a7b7aa6', 1435409444, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'A1DzClocnDHAG7NOicfE1Ta+XULhcy/E4XgbrxTNXk8=', 0, 0, 1, 0, 0, 0),
(73, '375d1a92', 'fd2f0fa914f9d6e5500462187b0844e0', 1435410307, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 's3YOmGino0OEr4/8YISS6da7VD9Sq0PeJjjz70wp2ns=', 0, 1, 1, 0, 0, 0),
(74, 'a220e31b', '70179212c844daee77715323e3574e03', 1435478658, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'hlqvolHY84RcXBEhLsPc0ojs4mSQKVm3zmSlJe1uIQ8=', 0, 0, 0, 0, 0, 0),
(75, '9a23e1fc', 'e76e04abb861bc4e84d4e9473f2d7536', 1435478842, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '2bdrikL950FCJm65E+U6xHiXJ+4RFvTDeAg/lJtv38s=', 0, 0, 0, 0, 0, 0),
(76, 'f77e5d42', '51ac4977c610b375c57ca0c72ca6f357', 1435479130, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kNsolc3X5JrtENvaApygYO0afTATNXCKPxmO45aHyuk=', 0, 0, 0, 1, 0, 0),
(77, '28be871b', '5b585276c3df1e0dcd42435e2e5e5ad4', 1435479162, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'VkxJHYCSJkbOJUO0as/XY9nON99MKlRsj80bG5x4uvA=', 0, 0, 0, 1, 0, 0),
(78, '44442f18', 'f2a25bd5dfa75c92d5a9987403289bfb', 1435479395, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'iVHlNlnOuE3JS9LjTwgORxvfSagKgEcuO3nL8hRdWHk=', 0, 0, 0, 1, 0, 0),
(79, '01f21a65', 'f1224d7f834f6cd9ab1feb21b2564b0d', 1435479865, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'CA2OrvpiJli/UzJudO+r63RF5jQsDd2GuVh0NIM1a/A=', 0, 0, 0, 1, 0, 0),
(80, '076b999a', 'a973bea0874d6dfbdab91d940a268cfb', 1435479929, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'WZJ3v7H62VSnTRm3KrVYbzRqwINlEsIXPmNvMPoC1Ss=', 0, 0, 0, 1, 0, 0),
(81, '586564aa', '4c777c7ce772d1b966c3b1335aa54c03', 1435479998, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'Yj0qPusmZvgs/R/UzBA6AwO2OGMIX5heLJtNN9ycm0o=', 0, 0, 0, 1, 0, 0),
(82, '302b19e6', 'b4704c4e4fdb555705677c164f80e341', 1435480245, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'adp922z1EcMQzixq5Z6xsNwMOmF6CvdnCD2khVrtUX4=', 0, 0, 0, 1, 0, 0),
(83, 'e661a437', '3277ae0ff6c07db702d835694f89d589', 1435481392, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', '+3/b4+7g0Va9UUvi4dlZ5Rp9qcv/r07FTea5+h+9gdw=', 0, 0, 1, 1, 0, 0),
(84, '6ea389ff', 'cddb1d3acca83f2c46c53234028da296', 1435484831, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'kTyfuwuagc0gFMhdkIvJpEtXhiG8Fgj0Z4mpg75yIto=', 0, 0, 1, 0, 0, 0),
(85, 'c0c3d7dc', 'e7188088277b3d80d73c758fafaa0849', 1435485706, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'xbbsjo5PpPEQ9u6HzmJYmPhHvhUwV0yRuUn3VeHK/qk=', 0, 0, 0, 0, 0, 0),
(86, '62d397ca', 'afbba2a35c39765001828d720d6b06b8', 1435486127, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'SxFzsJxGbmAHoWMh/lFfXb9lNPNZ1ikOzbBM7VTqZBM=', 0, 0, 1, 0, 0, 0),
(87, '2cec330a', '1865729c4bda8589e66f4de5338afc0e', 1435486167, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'pue6o/gfx4hhkaYBPwcc25dNhjgOkkrzAgCoZccioYQ=', 0, 0, 0, 0, 0, 0),
(88, 'a19bd9d2', '57a9261efdd7cf87efa6c88b9efd547e', 1435565495, NULL, 0, 15, 'user', 15, 3, 3, 3, 'status', 'crUNgUyCnIacoLANm0TsC60zNsiffKMraCAcFIVKtps=', 0, 0, 0, 0, 0, 0),
(89, 'd25f01e7', '49abf154ae8693724b3fdd472e4ca052', 1435801741, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cu73G2j7RbFuVP01/41w6wZZY/1MruhLjH8vt5pwvPY=', 0, 0, 0, 0, 0, 0),
(90, '39e3603a', 'e2de2ab821dd5484701c60898b09c80e', 1436757995, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'y2Kt8Iq57i4FwcVFqnrlmmZEBA65o6LNiM+havQispYuxKlAN9HcjafPMkppPNVdZV19rcDKwkG6N8K/AsoID18XW1WNCDJCOMq+L5y+dedBl9uv0bqncJECggbXaUCqjJyqNIxGQfw/w8kPGzkMAAy0sSTA/kbUvl34n6ppbuk=', 0, 0, 0, 0, 1, 0),
(95, '5e6939cc', '7dd27869f88c159000ae5d04ee2f4bff', 1436761882, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'nh+4G9JI6jY/V6t4p1N95c+E2W1ZBK9bpYTHe8Ss0d8Kk86DpJvtxjYymhl/4WM70pTf+2GkOzbBnzrp3xcnDYJRJk/lyMp31LHfNEy8S/28uTISlW6htF4DeZnyLnSQ', 0, 0, 0, 0, 1, 0),
(96, '05361dd4', '6bec7041054eda98dbcae9ebafb88a79', 1436761890, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Q47Jlf70E1stOphFl/MRQlz9zXAtQV60xm6Fn6SltgYv/iViF6F18j/VKqRDYU/14fQmUIFkzixea+vbC67em/3L/l0GKrTTW/b5tgtWZBecINS8KJNf8Zn2KCw7J9+k', 0, 0, 0, 0, 0, 0),
(98, '5cf30f18', 'c1cb3249a8118086af2673513514d4d2', 1436763913, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'XEdlb8pWFBmh+UgfY5msXcKl1VSWfhX/VSWI1nuc4Js67Yx6g5oCUGkeeAiAQk1usSCdO0NzCVyKv2T9SVP6aA==', 0, 0, 0, 0, 1, 0),
(99, '81be78f5', 'eb377008f40bc25483a14126e4e86fdb', 1436764391, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'YBjfYKGEY0cww4UerWk1tmPfm0DaCTPKLCozQ+41D1usI3Y1qu0e378LKwgwkAgtEuq5GP2M7CbIM8jRp7QsbFDYTSD0tcCNVlP+UkMMg8Ewer03B3HXIEEhH6AVgJF4', 0, 0, 0, 0, 1, 0),
(100, '12884f51', '9d7fd44ec3b74763419fabeea8ebe93d', 1437032311, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ZR0awSySdpxxzXxX+i3wcDp7ZRX+DLZcwd6x1k71HKFkqol7MgM4vWAzY9mxW1iAFKJnZKs7WWlMU+S4DEPWjEQHznsh+P3hIS3LmWsBvmz6Yav5SKedyhetH5QT3kVv', 0, 0, 0, 0, 1, 0),
(101, 'b027c477', 'f6ac7d16a303d3b49b29e94f74840ade', 1437033632, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ufGyIgj+seilZQ6oFTh63MTlPsm307j+gMYtOkWFcTD25TqcgxjZ4nOBEMcVtT2ixej4i3ZYk37gc9cbF5W17Q==', 0, 0, 0, 0, 1, 0),
(103, '7cb3195c', '9044a1d554247b0b65f99d63db5f7e2a', 1437038930, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'VDXoiLFJpGXCjPWhgR5FhRvtt64hp4Pk/uY1UwTkXLozEoqd5+46Uao+fOaS8Er1qnlUk4mjb9fx2hbQ4qT5XA==', 0, 0, 0, 0, 1, 0),
(104, '14aa9d0e', '823887392b4a29d1aa4a96fed7e58ee5', 1437039398, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'De1AsvIjK1ivESYfpjUpzuFgHlNQhoPBPBd3iWIrSR7bboWIh/qaHWwW5Xi052V62VYa0TuAXEXYBqc05Acv4TeL8kIyDvQDEvaGsCWOZdvubHCHlADgHNpf5TJdWz0B', 0, 0, 0, 0, 1, 0),
(105, 'cf9e99da', '2aba45d8fd04940e49d94a705741b562', 1437040027, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'owVpXDkpLsLe8n95hb9y8esNi/5eUD+/tT6BqlUGwSt+SiNCEhoChgiE9UOZoTne/zgpcAHbvBMzUlxC9+4WZ56Z9oc9Pl7p/cjQVRcocXUHjRWzepHoaWZkAn9R8Fn1', 0, 0, 0, 0, 1, 0),
(106, 'c4c9e55a', '34096364f13cd8c1acf7141283cee791', 1437041259, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'QpXUIkcrXRPiNiLvNFsJFIDKnNTIpVxL27EdNguH3kU=', 0, 0, 0, 0, 0, 0),
(107, '59f62f5b', 'e101a35911943b7a65774c746b1920b1', 1437041344, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '0auoxc4uitk9K9vCpwEkOGD+5Z8/WDSimFcSeG7tOP140uhSbKotFqN0flNMzYVrN+OTPI8EybDuhPawMZt8Vw==', 0, 0, 0, 0, 1, 0),
(108, '4a9f2541', '5af2129625ac35031223528b398aab31', 1437041566, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'HTQ21ycrdqqBd5+1NjigHsWRH1FMbwvKcNbhWnEJPew=', 0, 0, 0, 0, 1, 0),
(109, '1c26cb97', 'a1adde33f7dd0ad34fa3c8e1e580bfb0', 1437042378, NULL, 0, 15, 'user', 15, 4, 2, 3, 'videos', 'LA/t60xSshpBX/tdg5nev8YqdIuN5z0QKDDsLdKktAU=', 0, 0, 0, 0, 0, 0),
(110, '047aedb7', '9fd3ca7491a0d72220264c846eb5f581', 1437293071, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '+09L6P6FZBp/HSzNsilf90kfkQs0+eBXPYV/UXAQl3fSEX+FkM8cUrcXekqgE/8MZ2vyquxgJ48JE5dYUKm8g8XDAf42gUXW8DlMK+ccSpvdeGdJI8MEF8B2KatwDAAf', 0, 0, 0, 0, 1, 0),
(111, '472967ed', '90ad77cc8b8aa2410fbcc067879af2b1', 1437294181, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'lQVvAyDjOFCgidTo+x3zGhmabhdXKJpH/SVY/QPvFaRR62xHIzWmXDos4qxtyFjU8dDwHdYWF3z7Myu7vNl/3N8lCHvtAl1CcPb/h44qbdPttN73qLKin9qz+QcaTQSk', 0, 0, 0, 0, 1, 0),
(112, '7b1f2c57', 'c8ca4e8ff9bce681403230e155ad96e7', 1437639883, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'gX9ppqqWozuCMnCRvtebFPLKmkUghA7vPkIjZdKZ9SE=', 0, 0, 0, 0, 0, 0),
(113, '2e2a9c62', '4f29167fd8196cb61915c765b7d58ece', 1437818619, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '3MnZERkKKoITbMUOr8s83nlmxkRoZjFQpzu2MfmnASs=', 0, 0, 0, 0, 0, 0),
(114, '1f2e1d4d', '033f6f13ce6119af0d7d82e651a39413', 1437818687, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'VkYgjyAxKuBmg/4Ss1CcvXeEZnM0k0xQINDy/xJDoWc=', 0, 0, 0, 0, 0, 0),
(115, 'b8951b5b', '79d1320f95f65c003e897f12bf0ec241', 1437818718, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'PXPsEt2nGyzshWNUjg62cyfmZAKkGxfvSoVVY+BOQtM=', 0, 0, 0, 0, 0, 0),
(116, '6fd167e3', 'd53002ff5f18f86995c1413c604d038d', 1437818736, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'CnHvwuhTcHFLH2KPV16WL+9p/7ba8BhAINOEaEccP4Y=', 0, 0, 0, 0, 0, 0),
(117, 'fc31b6a1', '3a93f8509eaa36a7dcf01b4bb049b104', 1437818764, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'GMXEILL/Rk6h6/dsPrMkU9NwS96Huc4H/TS9S0IaGUs=', 0, 0, 0, 0, 0, 0),
(118, 'f2f88a93', 'de760b9ec603c61a2b51b066cfa05e98', 1437818845, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ESgrSpnaGaCyzdZdIrLXtlzrZrFm/cX1rxFllYWOm8c=', 0, 0, 0, 0, 0, 0),
(119, '61e3f03a', '9ec2d96f51efc8d31cd219b2d7e21aef', 1437818877, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'YNyskJjX+ZR/Cfc5uuGraG9fakiIaYtO09GZhoQ5Ml8=', 0, 0, 0, 0, 0, 0),
(120, '5c35551d', '8b312e0aa1e7e71570e2e0d7b896e84b', 1437818894, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'MBAAwZoPJVjaS/OSLDP2CiQZ1gE0aUFbbFVyiR1Kfw4=', 0, 0, 0, 0, 0, 0),
(121, '491958b6', 'ddffdc20dd4c0979b72830e481ec5d58', 1437818924, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'iGMp831cmXulN0ALUjd/90FD91cpOdO54YSd1HyZp3U=', 0, 0, 0, 0, 0, 0),
(122, 'ef221972', '5f95ba48d15887891a762bef7a8d644b', 1437818944, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '2xsI4yUxnigD+spGwpgU/r5jemUQJz4kuBuaNtKDPEg=', 0, 0, 0, 0, 0, 0),
(123, 'e5ff165b', 'd3118175c17e2e24c9bda872151f8d53', 1437818970, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'LTho/4OVQwCd1RJhMSicC/3vGS6svNhsS+wd+e7pEIg=', 0, 0, 0, 0, 0, 0),
(124, '1417f7c9', '2de9a3b759d06a3ff06e371cb869e800', 1437818981, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'TVG2JCEUdEbRxMEE7rQvRevczQiwerg7oxIMvZ8XR7Y=', 0, 0, 0, 0, 0, 0),
(125, '6b7693ba', 'be275ca5a6f03d5297d2abc6fb7dbba4', 1437818990, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '8U5ZT3wJ+knplLo8L2HfXY0NiuYfaQeJLdOxBrBnvcM=', 0, 0, 0, 0, 0, 0),
(126, 'dc8e33b8', '5999d6da12b9f4f34f631e03d8614080', 1437819002, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'ALJWWS285ywimEZ4wzltf2zKqhU+cMt4MMFxNjxmIZo=', 0, 0, 0, 0, 0, 0),
(127, 'c91358c9', 'b04e1bda1bf64f56afdfae714a9368d4', 1437819072, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'oWA7QRVT7IGGFS9WmMPRPiAGXfD4FRfU8rsuaNlgYpM=', 0, 0, 0, 0, 0, 0),
(130, '0798505a', 'e859eb5c9cce17766a6dad0883cb5aed', 1437835720, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'uxoV0YXGdl7LX/NYi35d3RNIVcj2T8G1S0FwcIL5Thc=', 0, 0, 0, 0, 0, 0),
(131, 'e3eaf03d', '30283ad661beb734480aed67978164ed', 1437835728, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'WTuqK/WQ/+as5TkJThmq3USzDBiuFPgZ6lpHxRcbRIo=', 0, 0, 0, 0, 0, 0),
(132, '16f5966c', '7e685bab54ffacd5bad13ae5cda95af3', 1437835895, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'cJBAilnmD9kwESKRXKcN5kWyJ+klNwqbRR+1WyAz7N0=', 0, 0, 0, 0, 0, 0),
(133, '71b64e69', 'f124ea8cdd851e6acc3e312d683cecd1', 1437836069, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'jXQiu4DCU11Gp/Ztj1LETssoTSc+GxX3DCdXTo8gdXw=', 0, 0, 0, 0, 0, 0),
(134, '8abf789d', '4285cf087ede38a14e5a1be947f47e80', 1437836217, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'BPDT4Kkhgrh0c2TVCysEk/QCT6+PDcWCt0UgPBTTuE0=', 0, 0, 0, 0, 0, 0),
(135, '8a766317', 'db6c7e9fdabb0d51bbe0975243f5954d', 1437836263, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '50yT3SK2XbNb5sIkIv4eI7FNvRLA7XYTnbHbVx+Vs+w=', 0, 0, 0, 0, 0, 0),
(136, 'a3de633b', '3b875690eb991a0ce37444bc4aa1197d', 1437836329, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'wr0pfsjUYspfmZsQLNKxJI86s5fXsx+7kdzDH5I2bek=', 0, 0, 0, 0, 0, 0),
(137, 'e7aaf4d1', '1f15940ed51b59e81ed332bc8a510e42', 1437836373, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'pb+BNvn1t+EhTsqNPvaE5WrdJ7GWn++2agpZ8dMf8IA=', 0, 0, 0, 0, 0, 0),
(138, '554b6fd0', '45b5f2d3135a63bc399f0b5fe4933a5b', 1437836501, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'FB8HeuLRuMvFbxLn7O53kfmC8naBI0SAKaI1aXFodHE=', 0, 0, 0, 0, 0, 0),
(139, '14074951', 'f5420a2e78d6d6711a84b58d002c21d1', 1437836510, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Yn4K1mZqdwyOLDJVnO317VllwRZ2GSYEwblhSDvR5Cc=', 0, 0, 0, 0, 0, 0),
(140, 'c83fdd74', '4f249d246ff7a8d2a606e6510f0b2a58', 1437836532, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'Cc1BtPfdcgo/8lQmV8I2sLDzGq7CuPun2WUXILEtHY8=', 0, 0, 0, 0, 0, 0),
(141, '11636063', 'c3de780036f8ee3891dd0d8d46e1ebc0', 1437836548, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'hzv97Ko7RvGhwLHz/anSTfs2W4L0YJl2XRvrK3K/37k=', 0, 0, 0, 0, 0, 0),
(142, 'ae1be7bc', '5501f442c02545b73c558469506fe9ad', 1437893593, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', '1ZtSd+pfhjVDbYyVATUPFDW5U+5JSWK0jHYSEmz6Kn8=', 0, 0, 0, 0, 0, 0),
(143, 'e6f0a9ba', '6a2190b091ebd657c9f158738d65cc21', 1437893629, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'rFhGr4bEOIpIbbgWighg9MgX2zQ6XONvqJIH2+XyxSY=', 0, 0, 0, 0, 0, 0),
(144, 'ca2228eb', 'da377a92f18cd615d9d40a6a8a137388', 1437893634, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'WIoJAbcCJcmxzKhg3C3Ib7VWdW7Sa109kPBwDEy23YA=', 0, 0, 0, 0, 0, 0),
(145, '85b0dd08', '4d1beb4f223fde1c7d634805ec3cbc2a', 1437893637, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'TzM6Z+oFMowgVBjmeG3hM//uqc5grAMSpwdixDcq8MU=', 0, 0, 0, 0, 0, 0),
(146, '024948c7', '696a1c42333e9fe607f40f8e305a3bf3', 1437893771, NULL, 0, 15, 'user', 15, 4, 2, 3, 'status', 'AtlafjXNQ8XXYra+s4B4qjTbzpO83z75csQRWMxCsYw=', 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `status_block`
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
-- Structure de la table `status_cited`
--

CREATE TABLE IF NOT EXISTS `status_cited` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `cited.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_comment`
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_comment`
--

INSERT INTO `status_comment` (`id`, `token`, `display`, `time`, `inside.type`, `inside.id`, `user.id`, `author.type`, `author.id`, `edit`, `content`, `logscontent`) VALUES
(1, '3e0b7c4b', '95737622be7b632c37238c26ee4911e7', 1434099491, 'status', 37, 15, 'user', 15, 0, 'YursVAgxspJ6FNEQnSSJB0xBE+R5xjwAnfQjNaI8hcg=', ''),
(2, 'd5e559a9', '9ae01a426ad7faed89bf6dcfef67a3f6', 1434099557, 'status', 34, 15, 'user', 15, 0, 'ezdspZEZPfPNnNm/O1eX0El168q5OMEbb2O0DsZ8NDQ=', ''),
(3, '8f0d2287', '26f4d43ed7818df975778d3c359fc84c', 1434099997, 'status', 41, 15, 'user', 15, 0, 'WdNOabHy7kJQ1TmFsqYXDiqfGsHO91cBY3QaFiMhjtg=', ''),
(4, '0977aefe', 'd821878976f6b66ff8c1f57be6c4165f', 1434100004, 'comment', 3, 15, 'user', 15, 0, 'NVc2rcttXgIA1Zs95Z+3LOv1wytAqvcRl40VoHUNoAQ=', '');

-- --------------------------------------------------------

--
-- Structure de la table `status_comment_favorite`
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
-- Structure de la table `status_edit`
--

CREATE TABLE IF NOT EXISTS `status_edit` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_favorite`
--

CREATE TABLE IF NOT EXISTS `status_favorite` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_favorite`
--

INSERT INTO `status_favorite` (`id`, `time`, `status.id`, `guy.id`, `guy.type`) VALUES
(4, 1437835772, 131, 15, 'user'),
(6, 1437835779, 130, 15, 'user'),
(13, 1437836224, 134, 15, 'user'),
(14, 1437836268, 135, 15, 'user'),
(16, 1437836380, 137, 15, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `status_follow`
--

CREATE TABLE IF NOT EXISTS `status_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_follow`
--

INSERT INTO `status_follow` (`id`, `time`, `status.id`, `guy.type`, `guy.id`) VALUES
(15, 1433581761, 15, 'user', 15),
(16, 1433745199, 16, 'user', 15),
(17, 1433753223, 17, 'user', 15),
(18, 1434092540, 18, 'user', 16),
(26, 1434097305, 26, 'user', 15),
(27, 1434097410, 27, 'user', 15),
(28, 1434097810, 28, 'user', 15),
(29, 1434098084, 29, 'user', 15),
(30, 1434098822, 30, 'user', 15),
(42, 1434100458, 42, 'user', 16),
(47, 1434700812, 47, 'user', 15),
(49, 1434701058, 49, 'user', 15),
(50, 1434778944, 50, 'user', 15),
(51, 1434779051, 51, 'user', 15),
(52, 1434787496, 52, 'user', 15),
(53, 1434787533, 53, 'user', 15),
(54, 1434788628, 54, 'user', 15),
(55, 1434788778, 55, 'user', 15),
(56, 1434788835, 56, 'user', 15),
(57, 1434788949, 57, 'user', 15),
(58, 1434789020, 58, 'user', 15),
(59, 1434789130, 59, 'user', 15),
(60, 1434789174, 60, 'user', 15),
(61, 1434987597, 61, 'user', 15),
(62, 1434987761, 62, 'user', 15),
(63, 1435048620, 63, 'user', 15),
(64, 1435048699, 64, 'user', 15),
(65, 1435048714, 65, 'user', 15),
(66, 1435306006, 66, 'user', 15),
(67, 1435405192, 67, 'user', 15),
(68, 1435409271, 69, 'user', 15),
(69, 1435409420, 71, 'user', 15),
(70, 1435409444, 72, 'user', 15),
(71, 1435410307, 73, 'user', 15),
(72, 1435478658, 74, 'user', 15),
(73, 1435478842, 75, 'user', 15),
(74, 1435479130, 76, 'user', 15),
(75, 1435479162, 77, 'user', 15),
(76, 1435479395, 78, 'user', 15),
(77, 1435479865, 79, 'user', 15),
(78, 1435479929, 80, 'user', 15),
(79, 1435479998, 81, 'user', 15),
(80, 1435480245, 82, 'user', 15),
(81, 1435481392, 83, 'user', 15),
(82, 1435484831, 84, 'user', 15),
(83, 1435485706, 85, 'user', 15),
(84, 1435486127, 86, 'user', 15),
(85, 1435486167, 87, 'user', 15),
(86, 1435565495, 88, 'user', 15),
(87, 1435801741, 89, 'user', 15),
(88, 1436757995, 90, 'user', 15),
(93, 1436761882, 95, 'user', 15),
(94, 1436761890, 96, 'user', 15),
(96, 1436763913, 98, 'user', 15),
(97, 1436764391, 99, 'user', 15),
(98, 1437032311, 100, 'user', 15),
(99, 1437033632, 101, 'user', 15),
(100, 1437034298, 102, 'user', 15),
(101, 1437038930, 103, 'user', 15),
(102, 1437039398, 104, 'user', 15),
(103, 1437040027, 105, 'user', 15),
(104, 1437041259, 106, 'user', 15),
(105, 1437041344, 107, 'user', 15),
(106, 1437041566, 108, 'user', 15),
(107, 1437042378, 109, 'user', 15),
(108, 1437293071, 110, 'user', 15),
(109, 1437294181, 111, 'user', 15),
(110, 1437639883, 112, 'user', 15),
(111, 1437818619, 113, 'user', 15),
(112, 1437818687, 114, 'user', 15),
(113, 1437818718, 115, 'user', 15),
(114, 1437818736, 116, 'user', 15),
(115, 1437818764, 117, 'user', 15),
(116, 1437818845, 118, 'user', 15),
(117, 1437818877, 119, 'user', 15),
(118, 1437818894, 120, 'user', 15),
(119, 1437818924, 121, 'user', 15),
(120, 1437818944, 122, 'user', 15),
(121, 1437818970, 123, 'user', 15),
(122, 1437818981, 124, 'user', 15),
(123, 1437818990, 125, 'user', 15),
(124, 1437819002, 126, 'user', 15),
(125, 1437819072, 127, 'user', 15),
(128, 1437835720, 130, 'user', 15),
(129, 1437835728, 131, 'user', 15),
(130, 1437835895, 132, 'user', 15),
(131, 1437836069, 133, 'user', 15),
(132, 1437836217, 134, 'user', 15),
(133, 1437836263, 135, 'user', 15),
(134, 1437836329, 136, 'user', 15),
(135, 1437836373, 137, 'user', 15),
(136, 1437836501, 138, 'user', 15),
(137, 1437836510, 139, 'user', 15),
(138, 1437836532, 140, 'user', 15),
(139, 1437836548, 141, 'user', 15),
(140, 1437893593, 142, 'user', 15),
(141, 1437893629, 143, 'user', 15),
(142, 1437893634, 144, 'user', 15),
(143, 1437893637, 145, 'user', 15),
(144, 1437893771, 146, 'user', 15);

-- --------------------------------------------------------

--
-- Structure de la table `status_hashtag`
--

CREATE TABLE IF NOT EXISTS `status_hashtag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `hashtag` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_hashtag`
--

INSERT INTO `status_hashtag` (`id`, `status.id`, `hashtag`) VALUES
(8, 26, 'x'),
(9, 27, 'x'),
(10, 28, 'x'),
(11, 29, 'x'),
(12, 30, 'x'),
(13, 63, 's'),
(14, 63, 'a'),
(15, 64, 's'),
(16, 64, 'a'),
(17, 65, 's'),
(18, 65, 'a'),
(19, 73, 'sd');

-- --------------------------------------------------------

--
-- Structure de la table `status_invite`
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
-- Structure de la table `status_link`
--

CREATE TABLE IF NOT EXISTS `status_link` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `sites.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_link`
--

INSERT INTO `status_link` (`id`, `status.id`, `sites.id`) VALUES
(1, 47, 1),
(2, 48, 0),
(3, 49, 0),
(4, 60, 20),
(5, 61, 22),
(6, 62, 24),
(7, 90, 25),
(8, 91, 26),
(9, 92, 26),
(10, 93, 26),
(11, 94, 26),
(12, 95, 29),
(13, 98, 33),
(14, 99, 34),
(15, 100, 35),
(16, 101, 36),
(17, 102, 42),
(18, 103, 43),
(19, 104, 44),
(20, 105, 45),
(21, 107, 47),
(22, 108, 48),
(23, 110, 51),
(24, 111, 51);

-- --------------------------------------------------------

--
-- Structure de la table `status_mood`
--

CREATE TABLE IF NOT EXISTS `status_mood` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_mood`
--

INSERT INTO `status_mood` (`id`, `status.id`, `type`, `value`) VALUES
(1, 76, 0, ''),
(2, 77, 1, '[feel]sad'),
(3, 78, 2, 'ad'),
(4, 79, 1, '[feel]so_sad'),
(5, 80, 1, '[feel]happy'),
(6, 81, 1, '[feel]so_sad'),
(7, 82, 2, 'sd'),
(8, 83, 1, '[feel]happy');

-- --------------------------------------------------------

--
-- Structure de la table `status_music`
--

CREATE TABLE IF NOT EXISTS `status_music` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `music.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_music`
--

INSERT INTO `status_music` (`id`, `status.id`, `music.id`) VALUES
(1, 16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `status_photos`
--

CREATE TABLE IF NOT EXISTS `status_photos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `photos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_photos`
--

INSERT INTO `status_photos` (`id`, `status.id`, `photos.id`) VALUES
(1, 17, 1);

-- --------------------------------------------------------

--
-- Structure de la table `status_places`
--

CREATE TABLE IF NOT EXISTS `status_places` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_places`
--

INSERT INTO `status_places` (`id`, `status.id`, `value`) VALUES
(1, 71, ''),
(2, 72, '68'),
(3, 73, '104'),
(4, 83, '9'),
(5, 84, '1'),
(6, 86, '1'),
(7, 146, '1');

-- --------------------------------------------------------

--
-- Structure de la table `status_share`
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
-- Structure de la table `status_usertag`
--

CREATE TABLE IF NOT EXISTS `status_usertag` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `status_videos`
--

CREATE TABLE IF NOT EXISTS `status_videos` (
`id` int(11) NOT NULL,
  `status.id` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `status_videos`
--

INSERT INTO `status_videos` (`id`, `status.id`, `videos.id`) VALUES
(5, 15, 5),
(6, 109, 6);

-- --------------------------------------------------------

--
-- Structure de la table `storage_audio`
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `storage_audio`
--

INSERT INTO `storage_audio` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(5, 'drive', 1, 1433745199, 'a0bee08a', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'W0hCcZpdm6iZiDWfTFUNWsACrcMvrl7/V8RGwHMqSuS/0mCf6IG+dWYj4jtGKNSSNleHX/dYcFsJUnWCu3hcIw==', 'audio/mp3', '49607e4f', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1433745199, 3636470),
(10, 'drive', 1, 1434614101, 'dbabf7dd', '', '250b5ac580f1bc35c4d98743ccd50a9e', 'n4606qWwd7eP5sWpnfBl3YLHjTiOEdBZnTRR/yLYWvdxH8PFWEBz67cUdi4liGGK6Usx/+bcng5h+M+87gj8mg==', 'audio/mp3', 'b33b94a8', 'See You Again Beat Wiz Khalifa, Charlie Puth Lyric Loi _ aUfgp7QTMVrk.mp3', 1434614101, 3636470);

-- --------------------------------------------------------

--
-- Structure de la table `storage_image`
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
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `storage_image`
--

INSERT INTO `storage_image` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `icc`, `mime`, `display`, `name`, `status`, `size`) VALUES
(16, 'drive', 2, 1433580764, 'd26c1af1', '', '0', 'Uoo2O2koxM5OcSfSgnyVH1+PNONwhfscWYKG06nJcwxVG4Zlj+xAU/OlgZAf0qO2VcnovA4cjDYSWKTtmxGCbQ==', NULL, 'image/png', 'aab6282e', '3e55446d.png', 1433580764, 0),
(17, 'drive', 10, 1433580772, 'cb74df38', '', '0', 'eDgHkIkkmEF9nnouUsjFYwmKb2qZ2YNaf/ayeTeJPEjz5e6b6ziXfF+fSEwX4YYYfzcUrxe/MTp5myJ5bJjZFQ==', NULL, 'image/png', '8453d2d8', 'caf25947a32d0f56aa5d142fcf16dad0.png', 1433580772, 0),
(18, 'drive', 1, 1433581025, 'd4d868c2', '', '0', 'Y4DGrpQ3bWj/nHx5XnRV/VrnoS2OA+NOlC69Eg1SU6nJyw/ii7ibLG0tPVOpun5C93GRoTvgLL7f6rLjOWGSvA==', NULL, 'image/png', '05a32824', '308d0952.png', 1433581025, 0),
(19, 'drive', 7, 1433581047, '5cf40292', '', '0', '7NBcLNDw/rPmjlTE+MA+WocmF6dyQQqEuJyzcUZ4EOtRx4jV2toWgxM8uUM5vAVvBqs3nIcJ6yAhOEfwL+eUjA==', NULL, 'image/png', '3e9a5517', 'd0939d9860c48ed73eef96ea53555a88.png', 1433581047, 0),
(20, 'drive', 9, 1433581166, '36b87fd7', '', '0', 'b4vclMq37cxN/uyp7SbiUZkui2+Ao/7GJbAFlZtRnGG1TLtWuTYlT5M3tNwSdLoqbDuwgI+DL2l2FaqFwGjaWg==', NULL, 'image/png', '43bd3ae8', '365ca3e0.png', 1433581166, 0),
(21, 'drive', 5, 1433581173, '4b28f133', '', '0', 'YTNn5BCDF6+leRr3E/lpqJ+oJ0ypDI23sruqxOthRqjuPmriuOI7jY6f9NM0v9LaqN8tr+o2xbh/EZh1zupYFA==', NULL, 'image/png', '4caa20a2', 'dad9490d11e8da1ee435fa2e7c328cb8.png', 1433581173, 0),
(22, 'drive', 9, 1433581256, '2b1f0ea5', '', '0', 'fbI70E6acHDT9OV/Y4Q2u+E9aOycgY8/ikGfy36SSzkk1M3Yk9Jqun/s/vqvF+b1W1IQ2dYpJwDfqULRlAeqdw==', NULL, 'image/png', '668a0a45', '8e22c13c.png', 1433581256, 0),
(23, 'drive', 7, 1433581260, 'c7be7f4c', '', '0', 'pB1YKm4EiqPMqwCDhxMJtVAcMA31Bn1qD4quDxK+Al7US5hqAV+Om7cNYsaiCotCWFAVr58dy1D8rq5RDOBtdg==', NULL, 'image/png', '0512d923', '29b8f946f2dadc61fd4b816e35e12903.png', 1433581260, 0),
(24, 'drive', 10, 1433581746, '45063f48', '', '0', 'Oy5GcdqA+ht0HKb2ZCqkk2lVHXD+FTUadZno5PCY4XXNiHMNBnCARQby1Lw35/hvJiLbw6F+PBhOoScPptWQCA==', NULL, 'image/png', 'bc805909', '5c3e1741.png', 1433581746, 0),
(25, 'drive', 8, 1433581762, '52aa584a', '', '0', 'TaxCJv/2r86oZvatofn9sd9jJNG/GME79jW5xwfO2/xbk1RYTBkkEYQKD7fso+TAnDYGv3DoLrdmyyTOCXqsLw==', NULL, 'image/png', '43f28c42', 'e5dc9bc7cd1a8457dd2cfd0c1f39585e.png', 1433581762, 0),
(26, 'drive', 4, 1433743258, '44f9ddf1', '', '0', 'FvRC8cgjlKVXSWSMXqPIUzftXb8hOliYV4osDxoBXAtOAgBa8uOjL1DquBR0r/OdSPMUG69EfC6PJ/wiRiwekQ==', NULL, 'image/png', 'e6b1282a', '6acab82e.png', 1433743258, 0),
(27, 'drive', 1, 1433743394, '22c26521', '', '0', 'kK8oBKSn/RrmsA4zyrb51815DagVMG0FKoThNiV/VOLr6df3OxELWW/rE3VdMG9F1AkEXDFO+ijAWEUjf30pjw==', NULL, 'image/png', 'db9a3e59', '0c5c17d2.png', 1433743394, 0),
(28, 'drive', 1, 1433743583, 'ba510db4', '', '0', 'iLX5C/Y42S0nSY/0x0Ix6iT/5RQIE0Y1iLDRhEIOrRQgIc16csakE1+8vx+T0lubUBGOBDSyM021otrL8eAWiQ==', NULL, 'image/png', '99cc62e2', '457083d4.png', 1433743583, 0),
(29, 'drive', 1, 1433743808, '5a5a4e27', '', '0', '9KqoPz53PAwdb3lJmme2S6es3vkQ8Gyoj4dPCyor7k47i/qZXi+6TTO7WocesCfrvSz/eiohWYEWX4Y2quCYJg==', NULL, 'image/png', '87f89fd3', '4dd0e63f.png', 1433743808, 0),
(30, 'drive', 1, 1433743851, '76e21b27', '', '0', 'GyDozAoZPu2itx6MT5eb7lYMTNBOgwj9zF3rtoNlGVFKnYuhYoVEIfHI1+63p0auhnJS65vp6pFldoVfU3/w1g==', NULL, 'image/png', '91a71b63', 'dd81a31a.png', 1433743851, 0),
(31, 'drive', 1, 1433744739, '31a0e4e6', '', '0', 'cTAQJPqCoPS7d06iTp1OVPO1HnThS3QM53qJ3y3ZKlk73T3Cz06TNoKzBFY918XOaNNKsqVrgteQdUmPpg1Cpg==', NULL, 'image/png', 'f7511b48', '7c78491f.png', 1433744739, 0),
(32, 'drive', 1, 1433744756, 'bb64a72c', '', '0', 'hfiDV/UgFL0LI2hXyMxYTfOaMKd1wPYyO2hxZb6386ZCB0dgqJNkuaOd93ywKsA0XXqLgdxA8WM6mHqrdG7HIg==', NULL, 'image/png', '09b07fd3', 'b59cdc98.png', 1433744756, 0),
(33, 'drive', 1, 1433744783, '6b6306ee', '', '0', 'asjDBuOSnQ20YX+As/XIEh3kAXBRXVfKnHpaYObY9iqYltfx9ivV6LMovc+0YGicnx/O3mt0pPBUxnUyc8I02Q==', NULL, 'image/png', '5ab90ed6', 'f3e3cc3d.png', 1433744783, 0),
(35, 'drive', 1, 1433753223, 'cafcab80', '', '4972ebf829ed31f4661478754d02ccbf', '/dI8bvqGn8ZQ3LY6845UBBXd77dh0QCQPx/nysS4ZdsgL+nkWjLbk4jFLyokik5Lnwe2nhf7LenqDuH5SPqeiQ==', NULL, 'image/jpeg', '9b8c6d73', 'IMG_3270.JPG', 1433753223, 389897),
(36, 'drive', 1, 1433753224, '798bc465', '', '11fbe610ab0b81590b773ddbfef908a1', '0kQRCQGyvHJjsYacYpSYo0GgEWJe5z9DNGf8YZRD2MzgmMD4b/VanX7nHVu+kfZVX7a9mk2KLq0MxhP2MLRzcA==', NULL, 'image/jpeg', '72d39a0c', 'IMG_3270.JPG', 1433753224, 389897),
(37, 'drive', 1, 1433753225, 'c6cf3055', '', '148e4531979c96c57c5d9c8e8763e759', 'EbniOKhJrhWfsTw8tERTxu4d0fnqj82aJP4Rx0k3cTVowUFiPMtj3PUeSy9Nsa3VWT+2Qskz/fK3dRGpW0EOQg==', NULL, 'image/jpeg', '35b63e0f', 'IMG_3270.JPG', 1433753225, 71365),
(38, 'drive', 1, 1433753226, '4d12d7b8', '', '21f1559c387fab9e433746f9af35deab', 'MTKM4YI04Oq6aSG3ltFeaZ3Q3AvQxLLP5HrRwKGvQ4g2Lw3aPxGHy45hMJLciOGW0k6j9atxiLvFFSD9av+9jQ==', NULL, 'image/jpeg', '202615eb', 'IMG_3270.JPG', 1433753226, 34631),
(44, 'faces', 1, 1434286390, '7c70fabc', '', '983fdaf966b166453e3191c5a4ac59cb', '5JjphHZw6MCHK6yNu1CtWD/vRAY5mpxLF9iKlFTeGxm0jPEUkFFvpCLxl16faCHnoBGHdKYvZU/x6AcRbM1EcQ==', NULL, 'image/jpeg', 'a9eccca7', '11011466_537786266359740_5019260888783328429_n.jpg', 1434286390, 104382),
(45, 'faces', 1, 1434286395, '826c7a78', '', '983fdaf966b166453e3191c5a4ac59cb', 'cHWKF/eZ1vwHVCW9qF9xbqGNeS6Vw3jQszamYqZZhyweW7QR1hn8U34eh3yhPRMlsWCgADbzSQZHrwcOjLPL2g==', NULL, 'image/jpeg', 'd2a4f2e2', '11011466_537786266359740_5019260888783328429_n.jpg', 1434286395, 104382),
(46, 'faces', 1, 1434286398, '0e9552a3', '', '983fdaf966b166453e3191c5a4ac59cb', 'Cdbxslxgw+PWO4yQDS5la1n0FW4fs+BOpii1ILOHTdBCueN6mta5l51CwojNyhj8eu3SzUl2ihWsDGLuZoqkaA==', NULL, 'image/jpeg', '12cdd749', '11011466_537786266359740_5019260888783328429_n.jpg', 1434286398, 104382),
(143, 'faces', 1, 1434548408, 'f0499d40', '', '53b985ce0c501d1710a7d5441d2066c9', 'jmBBqoN2/l1nCF/j8+5EymsUiG9rME6yW5vPunPpqUtzDPfuM3+Qq4hDyhz4RL8AewHonz8/4mhk+BIr3pMqMQ==', NULL, 'image/jpeg', 'd4f20a6d', '1234489_638157786330815_1794467412252996416_n.jpg', 1434548408, 79334),
(144, 'drive', 1, 1434615942, 'fc162df4', '', '0', 'vQSXts+ZjRdohv7Di09h+PZM6iL5Pg806GeYSX3HM4AEVALkuU1vkAaduaWoMzL1AC06XefmOWGAuZUEiUW6gQ==', NULL, 'image/png', 'a065f778', 'b1846cbc.png', 1434615942, 0),
(145, 'drive', 1, 1435497449, 'c2e0be91', '', '0', '669KLq5fGFdUiMxgG/eH6OSf6wSG4csDjVIW6Jif6sVk0GriZ/X4sepizsAQgXlEh7/rzHXtE6xnk1SYLTM3fA==', NULL, 'image/png', '50a1bd10', '76dddf6a.png', 1435497449, 0),
(146, 'drive', 1, 1435497531, '5015d4cf', '', '0', 'YaGXEElG13cmTFtmXj8XSt6VrdbpJ5YVx6e/MGWR5MJDTZXVX9U8Y1008OJdMWvzuhmXHfOv08C1L+mzJClEXw==', NULL, 'image/png', '705d5894', '81a4002e.png', 1435497531, 0),
(148, 'faces', 1, 1436306433, '1a11744c', '', 'd33cda42a08ff654cf920a671a6909cd', '5vHKvTTVhfooaMyR94PE3uxydi6GBWdTkSzZ08/Qprev5xk5W/PcTThEDX0ObCkNs4DjUsCfTtPnLBFMRNPHRQ==', NULL, 'image/jpeg', '8e3b2ad4', '10847938_598251166988144_4544651445744408482_n.jpg', 1436306433, 56491),
(158, 'faces', 1, 1436408158, 'f1b609b9', '', '1bf8c47328421147a960b3fb0e92adde', 'XI3Dz7GSGpJsJsqYxvsvbl5t1OfwV1D3m0jUpamOZoC+h41yBNInQFhq7nLFVJEuxOYIqCa5JXC8YJ5hNIk0zA==', NULL, 'image/jpeg', '1a693274', '11156219_1667053670185098_3727091899443504505_n.jpg', 1436408158, 22836),
(159, 'faces', 1, 1436408176, 'ce1c6be1', '', '4acd8ff4eb8f3a090038ed637ed8124f', 'sVYs4FAY0VlD7M5x4RjSAdgWCERX56EuO4aguIAXY9UGmuLv/saqce/MhQ5vBgILtI4guQTzt7ib1VAXq42B9A==', NULL, 'image/jpeg', 'd7c0cb1f', '11141176_747089155404450_9041291105451923514_n.jpg', 1436408176, 100167),
(160, 'faces', 1, 1436408180, 'caffa215', '', '4acd8ff4eb8f3a090038ed637ed8124f', '6uqw3QEeUa0uj4FzV+9m/uhuwotIoy53x36xjsaPtUvTBhasWby4asEJgf5pq3LtEGVD0NFFwvPihc3RiXJm6g==', NULL, 'image/jpeg', 'c068a13e', '11141176_747089155404450_9041291105451923514_n.jpg', 1436408180, 100167),
(161, 'faces', 1, 1436408184, 'fec3a298', '', '4acd8ff4eb8f3a090038ed637ed8124f', 'VugBm81txbDCtn7gfO2wS/yiAwi2fLyt1sZDLHt+xn84oIDni/zWbHsa0uBoixrcM6k1hdBE29VzWtfEcjbaWA==', NULL, 'image/jpeg', '23733616', '11141176_747089155404450_9041291105451923514_n.jpg', 1436408184, 100167),
(162, 'drive', 1, 1437042260, '4103c7f3', '', '0', 'oAdGgSS89cY95BrKi9ERhCUXn5+tsxpvMZbYWKQlbHtaz807/QfgpJNkeBFG5AEi3y0XFPoOuemLLCdb1NXRHg==', NULL, 'image/png', 'b183eccf', 'b1564072.png', 1437042260, 0),
(163, 'drive', 1, 1437042379, 'b5bf02ae', '', '0', 'K0/jG6/mhUAAzb7tjVrWhgW8eOnCeziPBGCsstMNJywuGqGfVSWp12peFk7iwmqRvknBsSGplHgvwpdp0m+Fow==', NULL, 'image/png', '25492c91', '8d301478c02c5f731933f6ee94a523bb.png', 1437042379, 0);

-- --------------------------------------------------------

--
-- Structure de la table `storage_readfile`
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
-- Structure de la table `storage_static`
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
-- Structure de la table `storage_video`
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
-- Contenu de la table `storage_video`
--

INSERT INTO `storage_video` (`id`, `folder`, `port`, `time`, `token`, `secret`, `hash`, `path`, `mime`, `display`, `name`, `status`, `size`) VALUES
(10, 'drive', 2, 1433581762, 'dbe068bd', '', '8937f9a7586f9f04ccf805dadbab3ba7', '4SIQvxPhul09WxgIUFdFqfijdT3mU8a9zkwoMQV7OA/I4QYL4FQDTbKsvzgI1JMwzlcltIuQh9l/HoLk+ky2pw==', 'video/mp4', 'e6ed291b', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', 1433581762, 28178996),
(13, 'drive', 1, 1435497531, 'c2b70853', '', 'a3afc88b6d573875a151fa8df25311ba', 'mmD7J4lIvDbW7EsaX2oEyL/XuKiK4NInmeilZjUz8xIP/gw1JzLoSznf7Xu9qgYC/9AUL9o5LT+oBkeNgIEPlw==', 'video/mp4', '85f7ab95', 'GanhhaoTimelapse.mp4', 1435497531, 41635653),
(15, 'drive', 1, 1437042379, '600a93e5', '', 'd60188b6fca5f034cedbabf6af1f0caa', 'fEMcLyZu6fxjLfbEht1HNhnHUdpC0BNzYz4j7PB3omzeN+JKYMe4fZS/jKw+C63cZOK+NmEGAe5aa8Yt3nIa8g==', 'video/mp4', '243d022c', '94d910abdef5f1c350cd71a33ae77b7e.mp4', 1437042379, 47963315);

-- --------------------------------------------------------

--
-- Structure de la table `users`
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `time`, `token`, `secret`, `username`, `email`, `password`, `password.hash`, `phone`, `fullname`, `firstname`, `middlename`, `lastname`, `formatname`, `nickname`, `gender`, `interest`, `birthday`, `birthday.format`, `relationship`, `mate`, `family`, `language`, `timezone`, `introduction`, `quote`, `avatar.large`, `avatar.medium`, `avatar.small`, `cover.large`, `cover.medium`, `cover.small`, `theme`, `link`, `mode.safe`, `messages.translate`, `private.tag`, `private.search`, `private.info.friends`, `private.info.birthday`, `private.info.country`, `private.info.live`, `private.info.email`, `private.info.phone`, `private.status.view`, `private.status.comment`, `private.status.share`, `private.photos.view`, `private.photos.comment`, `private.photos.share`, `private.music.view`, `private.music.comment`, `private.music.share`, `private.videos.view`, `private.videos.comment`, `private.videos.share`, `country`, `country.description`, `live`, `live.description`, `units.temperature`, `units.speed`, `units.pressure`, `units.distance`, `videos.replay`, `music.replay`, `activated`, `activated.code`, `activated.time`, `verified`, `dead`, `online`) VALUES
(15, 1431482041, '0026e567', '073ca2a2b839a15fd65a9e146150b38b', 'lamhieu', 'lamhieu.vk@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '85deuPkordvW4zgaSr+2KAOcu31sFJGxveQ+1OZnjKg=', '', 'Lam Hieu', 'Lam', '', 'Hieu', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, 'I can do it.', '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/lamhieu', 0, 0, 3, 1, 4, 4, 4, 3, 4, 4, 4, 2, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', 'I want live at here', '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 1, 'c85b2ea9a6', 1436685831, 1, 0, NULL),
(16, 1432305135, '6ce9dd8f', '432963786e27b3405beab480adcb1004', 'truongtuan', 'truongtuan@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', '8vf2SLJ57qOZxH27a5wJmxXbIbVjQVu/VpDnpSGI7KY=', '', 'Truong Tuan', 'Truong', '', 'Tuan', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/truongtuan', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '1', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 4b6e16d36', NULL, 0, 0, NULL),
(17, 1432305182, '3ba3e443', '4d9036323fcb74408b65a322f9fd4e97', 'tranduong', 'tranduong@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'irrl2DX/bZ415Pi8JyqiQXWnS+EJhcRAU4wFWO2SJUc=', '', 'Tran Duong', 'Tran', '', 'Duong', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tranduong', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, ' 314482e1c', NULL, 0, 0, NULL),
(18, 1432316172, '08ab64a9', '14a4246db5e77a996d541229ae83af56', 'tringuyen', 'tringuyen@gmail.com', '561ff2d840decaddbf2c0ebcf8136ec9682d22c7', 'cHuw+fwFH/GFMnSGQbeE6B5Sp8CKZR7f2Y4S7zIMP6E=', '', 'Tri Nguyen', 'Tri', '', 'Nguyen', 'f-m-l', '', 'male', NULL, 923853661, 'm/d/Y', NULL, NULL, NULL, 'vi', 'Asia/Phnom_Penh', NULL, NULL, '::default::user::avatar::large', '::default::user::avatar::medium', '::default::user::avatar::small', '::default::user::cover::large', '::default::user::cover::medium', '::default::user::cover::small', 1, 'wall/tringuyen', 0, 1, 3, 1, 4, 4, 4, 4, 4, 4, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, '', NULL, '', NULL, 'c', 'km/h', 'mb', 'km', 1, 1, 0, 'b6b3e0c602', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users_block`
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
-- Structure de la table `users_contact`
--

CREATE TABLE IF NOT EXISTS `users_contact` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `private` int(1) NOT NULL,
  `time` int(11) NOT NULL,
  `type` char(10) NOT NULL,
  `value` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_contact`
--

INSERT INTO `users_contact` (`id`, `user.id`, `private`, `time`, `type`, `value`) VALUES
(1, 15, 4, 1, 'email', 'lamhieu@giccos.co');

-- --------------------------------------------------------

--
-- Structure de la table `users_education`
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_education`
--

INSERT INTO `users_education` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `school`, `special`, `description`, `address`) VALUES
(1, 15, 4, NULL, 1432316171, 0, 'THPT Ganh Hao', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users_faces`
--

CREATE TABLE IF NOT EXISTS `users_faces` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `faces.id` int(11) NOT NULL,
  `verified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_family`
--

CREATE TABLE IF NOT EXISTS `users_family` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_family`
--

INSERT INTO `users_family` (`id`, `time`, `user.id`, `guy.id`, `type`) VALUES
(1, 1, 15, 16, 'best_friends');

-- --------------------------------------------------------

--
-- Structure de la table `users_follow`
--

CREATE TABLE IF NOT EXISTS `users_follow` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_follow`
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
(14, 1431482041, 15, 'user', 15),
(15, 1432305135, 16, 'user', 16),
(16, 1432305182, 17, 'user', 17),
(17, 1432316171, 18, 'user', 18);

-- --------------------------------------------------------

--
-- Structure de la table `users_getpassword`
--

CREATE TABLE IF NOT EXISTS `users_getpassword` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_guide`
--

CREATE TABLE IF NOT EXISTS `users_guide` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `code` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users_login`
--

CREATE TABLE IF NOT EXISTS `users_login` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `status` int(1) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_login`
--

INSERT INTO `users_login` (`id`, `time`, `user.id`, `status`, `client`) VALUES
(1, 1431448459, 5, 1, '99108b06'),
(2, 1431448489, 5, 1, '99108b06'),
(3, 1431448532, 5, 1, '99108b06'),
(4, 1431449023, 11, 1, '99108b06'),
(5, 1431449116, 12, 1, '99108b06'),
(6, 1431449566, 13, 1, '99108b06'),
(7, 1431449644, 13, 1, '99108b06'),
(8, 1431482044, 15, 1, '99108b06'),
(9, 1431494182, 15, 1, '99108b06'),
(10, 1431535061, 15, 1, '99108b06'),
(11, 1431542858, 15, 1, '99108b06'),
(12, 1431621741, 15, 1, '99108b06'),
(13, 1431621766, 15, 1, '99108b06'),
(14, 1431621776, 15, 1, '99108b06'),
(15, 1431686410, 15, 1, '99108b06'),
(16, 1431755673, 15, 1, '99108b06'),
(17, 1431770517, 15, 1, '99108b06'),
(18, 1432021986, 15, 1, '99108b06'),
(19, 1432043417, 15, 1, '99108b06'),
(20, 1432073141, 15, 1, '99108b06'),
(21, 1432137064, 15, 1, '99108b06'),
(22, 1432140658, 15, 1, '99108b06'),
(23, 1432140881, 0, 0, 'da65d66b'),
(24, 1432140886, 15, 1, 'da65d66b'),
(25, 1432211631, 15, 1, 'da65d66b'),
(26, 1432257626, 15, 1, 'da65d66b'),
(27, 1432282976, 15, 1, 'da65d66b'),
(28, 1432302096, 0, 0, 'da65d66b'),
(29, 1432302098, 0, 0, 'da65d66b'),
(30, 1432302110, 0, 0, 'da65d66b'),
(31, 1432302150, 15, 1, 'da65d66b'),
(32, 1432305137, 16, 1, 'da65d66b'),
(33, 1432305184, 17, 1, 'da65d66b'),
(34, 1432305637, 15, 1, 'da65d66b'),
(35, 1432316174, 18, 1, 'da65d66b'),
(36, 1432327995, 15, 1, 'da65d66b'),
(37, 1432388722, 15, 1, 'da65d66b'),
(38, 1432479801, 15, 1, 'da65d66b'),
(39, 1432503377, 15, 1, 'da65d66b'),
(40, 1432503384, 15, 1, 'da65d66b'),
(41, 1432503414, 16, 1, 'da65d66b'),
(42, 1432505071, 15, 1, 'da65d66b'),
(43, 1432505087, 16, 1, 'da65d66b'),
(44, 1432564363, 16, 1, 'da65d66b'),
(45, 1432565372, 15, 1, 'da65d66b'),
(46, 1432588176, 15, 1, 'da65d66b'),
(47, 1432588284, 16, 1, 'da65d66b'),
(48, 1432592071, 15, 1, 'da65d66b'),
(49, 1432595562, 16, 1, 'da65d66b'),
(50, 1432611563, 15, 1, 'da65d66b'),
(51, 1432692614, 15, 1, 'da65d66b'),
(52, 1432696112, 15, 1, 'da65d66b'),
(53, 1432738520, 16, 1, 'da65d66b'),
(54, 1432773960, 15, 1, 'da65d66b'),
(55, 1432961727, 15, 1, 'da65d66b'),
(56, 1432962701, 0, 0, 'da65d66b'),
(57, 1432962706, 16, 1, 'da65d66b'),
(58, 1432968925, 15, 1, 'da65d66b'),
(59, 1432980577, 16, 1, 'da65d66b'),
(60, 1433045231, 15, 1, 'da65d66b'),
(61, 1433134331, 15, 1, 'da65d66b'),
(62, 1433226391, 15, 1, 'da65d66b'),
(63, 1433243919, 15, 1, 'da65d66b'),
(64, 1433247421, 15, 1, 'da65d66b'),
(65, 1433306339, 15, 1, 'da65d66b'),
(66, 1433309189, 16, 1, 'da65d66b'),
(67, 1433408104, 15, 1, 'da65d66b'),
(68, 1433411240, 17, 1, 'da65d66b'),
(69, 1433413859, 16, 1, 'da65d66b'),
(70, 1433478500, 15, 1, 'da65d66b'),
(71, 1433743211, 15, 1, 'da65d66b'),
(72, 1434035278, 15, 1, 'da65d66b'),
(73, 1434090969, 15, 1, 'da65d66b'),
(74, 1434092522, 16, 1, 'da65d66b'),
(75, 1434100077, 16, 1, 'da65d66b'),
(76, 1434178950, 15, 1, 'da65d66b'),
(77, 1434264463, 15, 1, 'da65d66b'),
(78, 1434284172, 15, 1, 'da65d66b'),
(79, 1434364874, 15, 1, 'da65d66b'),
(80, 1434475164, 15, 1, 'da65d66b'),
(81, 1434521843, 15, 1, 'da65d66b'),
(82, 1434613261, 15, 1, 'da65d66b'),
(83, 1434700188, 15, 1, 'da65d66b'),
(84, 1434774832, 15, 1, 'da65d66b'),
(85, 1434863860, 0, 0, 'da65d66b'),
(86, 1434863864, 15, 1, 'da65d66b'),
(87, 1434984798, 15, 1, 'da65d66b'),
(88, 1435045167, 0, 0, 'da65d66b'),
(89, 1435045173, 0, 0, 'da65d66b'),
(90, 1435045178, 15, 1, 'da65d66b'),
(91, 1435305659, 15, 1, 'da65d66b'),
(92, 1435392391, 15, 1, 'da65d66b'),
(93, 1435396013, 15, 1, 'da65d66b'),
(94, 1435478621, 15, 1, 'da65d66b'),
(95, 1435563373, 15, 1, 'da65d66b'),
(96, 1435567103, 15, 1, 'da65d66b'),
(97, 1435567142, 16, 1, 'da65d66b'),
(98, 1435567332, 16, 1, 'da65d66b'),
(99, 1435643650, 15, 1, 'da65d66b'),
(100, 1435645618, 15, 1, 'da65d66b'),
(101, 1435647007, 16, 1, 'da65d66b'),
(102, 1435647834, 16, 1, 'da65d66b'),
(103, 1435732749, 15, 1, 'da65d66b'),
(104, 1435826175, 15, 1, 'da65d66b'),
(105, 1435836503, 15, 1, 'da65d66b'),
(106, 1435855128, 15, 1, 'da65d66b'),
(107, 1435912334, 15, 1, 'da65d66b'),
(108, 1435954922, 15, 1, 'da65d66b'),
(109, 1435997898, 15, 1, 'da65d66b'),
(110, 1435998112, 16, 1, 'da65d66b'),
(111, 1435998323, 16, 1, 'da65d66b'),
(112, 1435998438, 16, 1, 'da65d66b'),
(113, 1435998507, 16, 1, 'da65d66b'),
(114, 1435998638, 16, 1, 'da65d66b'),
(115, 1435998768, 16, 1, 'da65d66b'),
(116, 1435998949, 16, 1, 'da65d66b'),
(117, 1435999182, 16, 1, 'da65d66b'),
(118, 1435999338, 15, 1, 'da65d66b'),
(119, 1436021764, 15, 1, 'da65d66b'),
(120, 1436030347, 15, 1, 'da65d66b'),
(121, 1436046157, 15, 1, 'da65d66b'),
(122, 1436124815, 15, 1, 'da65d66b'),
(123, 1436157240, 15, 1, 'da65d66b'),
(124, 1436214920, 15, 1, 'da65d66b'),
(125, 1436235075, 15, 1, 'da65d66b'),
(126, 1436291540, 15, 1, 'da65d66b'),
(127, 1436295112, 15, 1, 'da65d66b'),
(128, 1436295350, 15, 1, 'de4d67ee'),
(129, 1436295390, 15, 1, '65720525'),
(130, 1436305187, 15, 1, 'da65d66b'),
(131, 1436400605, 15, 1, 'da65d66b'),
(132, 1436446757, 15, 1, 'da65d66b'),
(133, 1436479666, 15, 1, 'da65d66b'),
(134, 1436680420, 15, 1, 'da65d66b'),
(135, 1436757882, 15, 1, 'da65d66b'),
(136, 1436843569, 15, 1, 'da65d66b'),
(137, 1437032284, 15, 1, 'da65d66b'),
(138, 1437034477, 15, 1, 'da65d66b'),
(139, 1437038066, 15, 1, 'da65d66b'),
(140, 1437292394, 15, 1, 'da65d66b'),
(141, 1437314086, 15, 1, 'da65d66b'),
(142, 1437314143, 15, 1, 'da65d66b'),
(143, 1437314215, 15, 1, 'da65d66b'),
(144, 1437454108, 15, 1, 'da65d66b'),
(145, 1437468844, 15, 1, 'da65d66b'),
(146, 1437469248, 15, 1, 'da65d66b'),
(147, 1437469646, 15, 1, 'da65d66b'),
(148, 1437471061, 15, 1, 'da65d66b'),
(149, 1437472230, 15, 1, 'da65d66b'),
(150, 1437472276, 15, 1, 'da65d66b'),
(151, 1437545739, 15, 1, 'da65d66b'),
(152, 1437545808, 0, 0, 'da65d66b'),
(153, 1437545812, 15, 1, 'da65d66b'),
(154, 1437545824, 16, 1, 'da65d66b'),
(155, 1437547369, 16, 1, 'da65d66b'),
(156, 1437636927, 15, 1, 'da65d66b'),
(157, 1437638032, 15, 1, 'da65d66b'),
(158, 1437726169, 15, 1, 'da65d66b'),
(159, 1437729944, 15, 1, 'da65d66b'),
(160, 1437742886, 15, 1, 'da65d66b'),
(161, 1437808651, 15, 1, 'da65d66b'),
(162, 1437835687, 15, 1, 'da65d66b'),
(163, 1437893338, 0, 0, 'da65d66b'),
(164, 1437893577, 15, 1, 'da65d66b'),
(165, 1437898109, 15, 1, 'a0f61a4a'),
(166, 1437898188, 15, 1, 'a0f61a4a'),
(167, 1437898190, 15, 1, 'a0f61a4a'),
(168, 1437898225, 15, 1, 'a0f61a4a'),
(169, 1437898255, 15, 1, 'a0f61a4a');

-- --------------------------------------------------------

--
-- Structure de la table `users_online`
--

CREATE TABLE IF NOT EXISTS `users_online` (
`id` int(11) NOT NULL,
  `user.id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `updated` int(11) NOT NULL,
  `client` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users_online`
--

INSERT INTO `users_online` (`id`, `user.id`, `time`, `updated`, `client`) VALUES
(2, 15, 1437898255, 1437898449, 'a0f61a4a');

-- --------------------------------------------------------

--
-- Structure de la table `users_remembers`
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
-- Structure de la table `users_workplaces`
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
-- Contenu de la table `users_workplaces`
--

INSERT INTO `users_workplaces` (`id`, `user.id`, `private`, `time.format`, `time.start`, `time.stop`, `company`, `work`, `description`, `address`, `awards`) VALUES
(1, 15, 3, '1', 1435647902, NULL, 'Giccos, Inc', 'CEO', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `videos_block`
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
-- Structure de la table `videos_cache`
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `videos_cache`
--

INSERT INTO `videos_cache` (`id`, `user.id`, `author.type`, `author.id`, `time`, `close`, `client`, `token`, `secret`, `name`, `nameraw`, `thumbnail`, `thumbnail.path`, `copy`, `mime`, `size`, `duration`, `path`) VALUES
(3, 15, 'user', 15, 1435497531, 1437043348, 'da65d66b', '0461491b', 'ed269e40', '81a4002e.mp4', 'GanhhaoTimelapse.mp4', '81a4002e.png', '705d5894', '0', 'video/mp4', 41635653, 42.666668, '85f7ab95');

-- --------------------------------------------------------

--
-- Structure de la table `videos_comment`
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
-- Structure de la table `videos_info`
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `videos_info`
--

INSERT INTO `videos_info` (`id`, `user.id`, `author.type`, `author.id`, `playlist`, `time`, `token`, `display`, `name`, `nameraw`, `tags`, `description`, `private.view`, `private.comment`, `private.share`, `file.thumbnail`, `file.audio`, `file.hd`, `file.sd`, `secret.thumbnail`, `secret.audio`, `secret.hd`, `secret.sd`, `path.thumbnail`, `path.audio`, `path.hd`, `path.sd`, `file.datetime`, `file.size`, `codec`, `dimension.height`, `dimension.width`, `display.ratio`, `bitrate`, `framerate`, `duration`, `mime_type`, `audio.codec_name`, `audio.codec_long_name`, `audio.profile`, `audio.codec_type`, `audio.codec_time_base`, `audio.codec_tag_string`, `audio.channels`, `audio.channel_layout`, `audio.duration`, `audio.bit_rate`) VALUES
(5, 15, 'user', 15, 1, 1433581762, '5ced9004', 'f65f1d77c7249b922f6487e72dfcf149', 'bÃ i hÃ¡t Ã½ nghÄ©a', 'BÃ i hÃ¡t Nháº­t Ä‘áº§u tiÃªn replay nhiá»u láº§n Ä‘áº¿n tháº¿ máº¥y cháº¿ áº¡. Ca tá»« quÃ¡ hay vÃ  Ã½ nghÄ©a ná»¯a chá»©.mp4', '', '', 4, 4, 4, 'e5dc9bc7cd1a8457dd2cfd0c1f39585e.png', '0', '0', '18338411353ae839453c12c1c70d39fe.mp4', '', '0', '0', '8937f9a7586f9f04ccf805dadbab3ba7', '43f28c42', '0', '0', 'e6ed291b', 0, 28178996, 'h264', 360, 480, '4:3', 675286, '2997/100', 333.831665, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 334, 128000),
(6, 15, 'user', 15, 2, 1437042379, '0e3e4465', 'dafae35eaa0ac8d49b7b071af45868cc', 'Biáº¿t nÃ³i lÃ  táº¡i sao', '94d910abdef5f1c350cd71a33ae77b7e.mp4', '', '', 4, 4, 4, '8d301478c02c5f731933f6ee94a523bb.png', '0', '0', 'ae27b319134ea5f37f1b16eebf669cf5.mp4', '', '0', '0', 'd60188b6fca5f034cedbabf6af1f0caa', '25492c91', '0', '0', '243d022c', 0, 47963315, 'h264', 360, 640, '0:1', 928819, '30000/1001', 413.112000, 'video/mp4', 'aac', 'AAC (Advanced Audio Coding)', 'LC', 'audio', '1/44100', 'mp4a', '2', 'stereo', 413, 126807);

-- --------------------------------------------------------

--
-- Structure de la table `videos_playlist`
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
-- Contenu de la table `videos_playlist`
--

INSERT INTO `videos_playlist` (`id`, `author.type`, `author.id`, `token`, `display`, `time`, `name`, `places.type`, `places.value`, `description`, `tags`) VALUES
(1, 'user', 15, 'f364dca9', 'd326ecd0392994c4f04d1061663f9fe8', 1433580771, 'sÆ°u táº§m', 0, '', '', NULL),
(2, 'user', 15, '20dd2f49', '55e721384c4d94e613df7a41df89fcfd', 1437042379, 'Kháº¯c Viá»‡t', 0, '', '', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `videos_replay`
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
-- Contenu de la table `videos_replay`
--

INSERT INTO `videos_replay` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `expires`, `at`) VALUES
(2, 1434037205, 5, 'user', '15', 1434642370, 18);

-- --------------------------------------------------------

--
-- Structure de la table `videos_views`
--

CREATE TABLE IF NOT EXISTS `videos_views` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `videos.id` int(11) NOT NULL,
  `guy.type` char(10) NOT NULL,
  `guy.id` char(11) NOT NULL,
  `quality` char(10) NOT NULL,
  `captions` char(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Contenu de la table `videos_views`
--

INSERT INTO `videos_views` (`id`, `time`, `videos.id`, `guy.type`, `guy.id`, `quality`, `captions`) VALUES
(3, 1433581791, 5, 'user', '15', '0', '0'),
(4, 1433741874, 5, 'guy', 'da65d66b', '0', '0'),
(5, 1433746592, 5, 'user', '15', '0', '0'),
(6, 1434036789, 5, 'user', '15', '0', '0'),
(7, 1437043142, 6, 'user', '15', '0', '0');

-- --------------------------------------------------------

--
-- Structure de la table `wiki_pages`
--

CREATE TABLE IF NOT EXISTS `wiki_pages` (
`id` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `language` char(4) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `advertising_actions`
--
ALTER TABLE `advertising_actions`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `advertising_id`
--
ALTER TABLE `advertising_id`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `analysis_faces`
--
ALTER TABLE `analysis_faces`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `answers_post`
--
ALTER TABLE `answers_post`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `answers_rate`
--
ALTER TABLE `answers_rate`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `answers_topic`
--
ALTER TABLE `answers_topic`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `cited`
--
ALTER TABLE `cited`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `friends`
--
ALTER TABLE `friends`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `friends_request`
--
ALTER TABLE `friends_request`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages_codes`
--
ALTER TABLE `languages_codes`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages_list`
--
ALTER TABLE `languages_list`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `languages_values`
--
ALTER TABLE `languages_values`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs_actions`
--
ALTER TABLE `logs_actions`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs_ajax`
--
ALTER TABLE `logs_ajax`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `logs_client`
--
ALTER TABLE `logs_client`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `maps_places`
--
ALTER TABLE `maps_places`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_data`
--
ALTER TABLE `messages_data`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_hide`
--
ALTER TABLE `messages_hide`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_id`
--
ALTER TABLE `messages_id`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_members`
--
ALTER TABLE `messages_members`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_typing`
--
ALTER TABLE `messages_typing`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messages_views`
--
ALTER TABLE `messages_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mood`
--
ALTER TABLE `mood`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_album`
--
ALTER TABLE `music_album`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_block`
--
ALTER TABLE `music_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_cache`
--
ALTER TABLE `music_cache`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_info`
--
ALTER TABLE `music_info`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_replay`
--
ALTER TABLE `music_replay`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `music_views`
--
ALTER TABLE `music_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `parameter`
--
ALTER TABLE `parameter`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_block`
--
ALTER TABLE `photos_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_cache`
--
ALTER TABLE `photos_cache`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_faces`
--
ALTER TABLE `photos_faces`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_info`
--
ALTER TABLE `photos_info`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_tips`
--
ALTER TABLE `photos_tips`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `photos_views`
--
ALTER TABLE `photos_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_author`
--
ALTER TABLE `sites_author`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_id`
--
ALTER TABLE `sites_id`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_info`
--
ALTER TABLE `sites_info`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_secure`
--
ALTER TABLE `sites_secure`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sites_views`
--
ALTER TABLE `sites_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_block`
--
ALTER TABLE `status_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_cited`
--
ALTER TABLE `status_cited`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_comment`
--
ALTER TABLE `status_comment`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_edit`
--
ALTER TABLE `status_edit`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_favorite`
--
ALTER TABLE `status_favorite`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_follow`
--
ALTER TABLE `status_follow`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_hashtag`
--
ALTER TABLE `status_hashtag`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_invite`
--
ALTER TABLE `status_invite`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_link`
--
ALTER TABLE `status_link`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_mood`
--
ALTER TABLE `status_mood`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_music`
--
ALTER TABLE `status_music`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_photos`
--
ALTER TABLE `status_photos`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_places`
--
ALTER TABLE `status_places`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_share`
--
ALTER TABLE `status_share`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_usertag`
--
ALTER TABLE `status_usertag`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status_videos`
--
ALTER TABLE `status_videos`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_audio`
--
ALTER TABLE `storage_audio`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_image`
--
ALTER TABLE `storage_image`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_readfile`
--
ALTER TABLE `storage_readfile`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_static`
--
ALTER TABLE `storage_static`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `storage_video`
--
ALTER TABLE `storage_video`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_block`
--
ALTER TABLE `users_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_contact`
--
ALTER TABLE `users_contact`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_education`
--
ALTER TABLE `users_education`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_faces`
--
ALTER TABLE `users_faces`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_family`
--
ALTER TABLE `users_family`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_follow`
--
ALTER TABLE `users_follow`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_getpassword`
--
ALTER TABLE `users_getpassword`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_guide`
--
ALTER TABLE `users_guide`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_login`
--
ALTER TABLE `users_login`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_online`
--
ALTER TABLE `users_online`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_remembers`
--
ALTER TABLE `users_remembers`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users_workplaces`
--
ALTER TABLE `users_workplaces`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_block`
--
ALTER TABLE `videos_block`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_cache`
--
ALTER TABLE `videos_cache`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_comment`
--
ALTER TABLE `videos_comment`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_info`
--
ALTER TABLE `videos_info`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_playlist`
--
ALTER TABLE `videos_playlist`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_replay`
--
ALTER TABLE `videos_replay`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `videos_views`
--
ALTER TABLE `videos_views`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `wiki_pages`
--
ALTER TABLE `wiki_pages`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `advertising_actions`
--
ALTER TABLE `advertising_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `advertising_id`
--
ALTER TABLE `advertising_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `analysis_faces`
--
ALTER TABLE `analysis_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `answers_post`
--
ALTER TABLE `answers_post`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `answers_rate`
--
ALTER TABLE `answers_rate`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `answers_topic`
--
ALTER TABLE `answers_topic`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cited`
--
ALTER TABLE `cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `friends`
--
ALTER TABLE `friends`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `friends_request`
--
ALTER TABLE `friends_request`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `languages_codes`
--
ALTER TABLE `languages_codes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `languages_list`
--
ALTER TABLE `languages_list`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `languages_values`
--
ALTER TABLE `languages_values`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=691;
--
-- AUTO_INCREMENT pour la table `logs_actions`
--
ALTER TABLE `logs_actions`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT pour la table `logs_ajax`
--
ALTER TABLE `logs_ajax`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `logs_client`
--
ALTER TABLE `logs_client`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT pour la table `maps_places`
--
ALTER TABLE `maps_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=343;
--
-- AUTO_INCREMENT pour la table `messages_data`
--
ALTER TABLE `messages_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT pour la table `messages_hashtag`
--
ALTER TABLE `messages_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `messages_hide`
--
ALTER TABLE `messages_hide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `messages_id`
--
ALTER TABLE `messages_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `messages_members`
--
ALTER TABLE `messages_members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `messages_typing`
--
ALTER TABLE `messages_typing`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `messages_views`
--
ALTER TABLE `messages_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT pour la table `mood`
--
ALTER TABLE `mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT pour la table `music_album`
--
ALTER TABLE `music_album`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_block`
--
ALTER TABLE `music_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_cache`
--
ALTER TABLE `music_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `music_info`
--
ALTER TABLE `music_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `music_replay`
--
ALTER TABLE `music_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `music_reviewlater`
--
ALTER TABLE `music_reviewlater`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `music_views`
--
ALTER TABLE `music_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `parameter`
--
ALTER TABLE `parameter`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT pour la table `photos_block`
--
ALTER TABLE `photos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photos_cache`
--
ALTER TABLE `photos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photos_faces`
--
ALTER TABLE `photos_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photos_info`
--
ALTER TABLE `photos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `photos_scrapbook`
--
ALTER TABLE `photos_scrapbook`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `photos_tips`
--
ALTER TABLE `photos_tips`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `photos_views`
--
ALTER TABLE `photos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `sites_author`
--
ALTER TABLE `sites_author`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sites_id`
--
ALTER TABLE `sites_id`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sites_info`
--
ALTER TABLE `sites_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT pour la table `sites_secure`
--
ALTER TABLE `sites_secure`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `sites_views`
--
ALTER TABLE `sites_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT pour la table `status_block`
--
ALTER TABLE `status_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_cited`
--
ALTER TABLE `status_cited`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_comment`
--
ALTER TABLE `status_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `status_comment_favorite`
--
ALTER TABLE `status_comment_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_edit`
--
ALTER TABLE `status_edit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_favorite`
--
ALTER TABLE `status_favorite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `status_follow`
--
ALTER TABLE `status_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT pour la table `status_hashtag`
--
ALTER TABLE `status_hashtag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT pour la table `status_invite`
--
ALTER TABLE `status_invite`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_link`
--
ALTER TABLE `status_link`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT pour la table `status_mood`
--
ALTER TABLE `status_mood`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `status_music`
--
ALTER TABLE `status_music`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `status_photos`
--
ALTER TABLE `status_photos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `status_places`
--
ALTER TABLE `status_places`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `status_share`
--
ALTER TABLE `status_share`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_usertag`
--
ALTER TABLE `status_usertag`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `status_videos`
--
ALTER TABLE `status_videos`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `storage_audio`
--
ALTER TABLE `storage_audio`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT pour la table `storage_image`
--
ALTER TABLE `storage_image`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT pour la table `storage_readfile`
--
ALTER TABLE `storage_readfile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `storage_static`
--
ALTER TABLE `storage_static`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `storage_video`
--
ALTER TABLE `storage_video`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT pour la table `users_block`
--
ALTER TABLE `users_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_contact`
--
ALTER TABLE `users_contact`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `users_education`
--
ALTER TABLE `users_education`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `users_faces`
--
ALTER TABLE `users_faces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_family`
--
ALTER TABLE `users_family`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `users_follow`
--
ALTER TABLE `users_follow`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT pour la table `users_getpassword`
--
ALTER TABLE `users_getpassword`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_guide`
--
ALTER TABLE `users_guide`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_login`
--
ALTER TABLE `users_login`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT pour la table `users_online`
--
ALTER TABLE `users_online`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users_remembers`
--
ALTER TABLE `users_remembers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `users_workplaces`
--
ALTER TABLE `users_workplaces`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `videos_block`
--
ALTER TABLE `videos_block`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_cache`
--
ALTER TABLE `videos_cache`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `videos_comment`
--
ALTER TABLE `videos_comment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `videos_info`
--
ALTER TABLE `videos_info`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `videos_playlist`
--
ALTER TABLE `videos_playlist`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `videos_replay`
--
ALTER TABLE `videos_replay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `videos_views`
--
ALTER TABLE `videos_views`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `wiki_pages`
--
ALTER TABLE `wiki_pages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
