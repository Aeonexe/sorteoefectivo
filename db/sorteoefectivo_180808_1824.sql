-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-08-2018 a las 23:24:37
-- Versión del servidor: 5.7.21
-- Versión de PHP: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bancoppel_sorteo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_commentmeta`
--

DROP TABLE IF EXISTS `bncstvx_commentmeta`;
CREATE TABLE IF NOT EXISTS `bncstvx_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_comments`
--

DROP TABLE IF EXISTS `bncstvx_comments`;
CREATE TABLE IF NOT EXISTS `bncstvx_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_comments`
--

INSERT INTO `bncstvx_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-06 10:38:40', '2018-08-06 16:38:40', 'Hola, esto es un comentario. Para empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio. Los avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_links`
--

DROP TABLE IF EXISTS `bncstvx_links`;
CREATE TABLE IF NOT EXISTS `bncstvx_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_options`
--

DROP TABLE IF EXISTS `bncstvx_options`;
CREATE TABLE IF NOT EXISTS `bncstvx_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_options`
--

INSERT INTO `bncstvx_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/bancoppel/sorteoefectivo', 'yes'),
(2, 'home', 'http://localhost/bancoppel/sorteoefectivo', 'yes'),
(3, 'blogname', 'Sorteo Efectivo', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alberto@alumin.agency', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:23:\"gutenberg/gutenberg.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '-6', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'sorteoefectivo', 'yes'),
(41, 'stylesheet', 'sorteoefectivo', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '414', 'yes'),
(59, 'thumbnail_size_h', '414', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '736', 'yes'),
(62, 'medium_size_h', '736', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'bncstvx_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:73:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:46:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:11:\"edit_blocks\";b:1;s:18:\"edit_others_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:19:\"read_private_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:21:\"delete_private_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:20:\"delete_others_blocks\";b:1;s:19:\"edit_private_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:17:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:11:\"edit_blocks\";b:1;s:14:\"publish_blocks\";b:1;s:11:\"read_blocks\";b:1;s:13:\"delete_blocks\";b:1;s:23:\"delete_published_blocks\";b:1;s:21:\"edit_published_blocks\";b:1;s:13:\"create_blocks\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:6:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:11:\"read_blocks\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'es_MX', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:20:\"widgetized-dashboard\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'cron', 'a:5:{i:1533764320;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1533789520;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1533821041;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1533832726;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533573531;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(192, 'wk_admin_menu_bg', '#1d242a', 'yes'),
(193, 'wk_admin_menu_current', '#005eef', 'yes'),
(117, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_MX\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_MX/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1533753743;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(119, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1533753745;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:23:\"gutenberg/gutenberg.php\";s:5:\"3.4.0\";s:9:\"hello.php\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"gutenberg/gutenberg.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:23:\"w.org/plugins/gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:6:\"plugin\";s:23:\"gutenberg/gutenberg.php\";s:11:\"new_version\";s:5:\"3.4.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/gutenberg/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/gutenberg.3.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-256x256.jpg?rev=1776042\";s:2:\"1x\";s:62:\"https://ps.w.org/gutenberg/assets/icon-128x128.jpg?rev=1776042\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/gutenberg/assets/banner-1544x500.jpg?rev=1718710\";s:2:\"1x\";s:64:\"https://ps.w.org/gutenberg/assets/banner-772x250.jpg?rev=1718710\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(214, '_site_transient_timeout_theme_roots', '1533755545', 'no'),
(215, '_site_transient_theme_roots', 'a:2:{s:14:\"sorteoefectivo\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1533753745;s:7:\"checked\";a:2:{s:14:\"sorteoefectivo\";s:5:\"4.1.2\";s:15:\"twentyseventeen\";s:3:\"1.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_a54eb83090ed984332f4eca22d3ec5e4', '1534178326', 'no'),
(124, '_site_transient_browser_a54eb83090ed984332f4eca22d3ec5e4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"67.0.3396.99\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(194, 'wk_admin_menu_color', '#ffffff', 'yes'),
(195, 'wk_toolbar_text_color', '#000000', 'yes'),
(196, 'wk_hide_wp_toolbar', '1', 'yes'),
(197, 'wk_use_wp_color_scheme', '', 'yes'),
(216, '_transient_timeout_feed_d58e7ff844c2b192b2484a488651a9b3', '1533796947', 'no'),
(217, '_transient_feed_d58e7ff844c2b192b2484a488651a9b3', 'a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"\n\n\n\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:28:\"\n	\n	\n	\n	\n	\n	\n	\n	\n	\n	\n		\n		\n	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Sorteo Efectivo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"http://localhost/bancoppel/sorteoefectivo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"Otro sitio realizado con WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 Aug 2018 22:46:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"es-MX\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=4.9.8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:3:{i:0;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Gaby Simbrón\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"http://localhost/bancoppel/sorteoefectivo/2018/08/07/gaby-simbron/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 Aug 2018 16:36:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Sin categoría\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"http://localhost/bancoppel/sorteoefectivo/?p=28\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"hrtzt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:33:\"\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:3:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:12:\"Amanda Ruíz\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://localhost/bancoppel/sorteoefectivo/2018/08/07/amanda-ruiz/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 07 Aug 2018 16:35:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Sin categoría\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"http://localhost/bancoppel/sorteoefectivo/?p=26\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"hrtzt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:42:\"\n		\n		\n		\n		\n		\n				\n\n		\n		\n				\n			\n		\n		\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:5:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Samuel Hernández\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"http://localhost/bancoppel/sorteoefectivo/2018/08/06/hola-mundo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"http://localhost/bancoppel/sorteoefectivo/2018/08/06/hola-mundo/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 06 Aug 2018 16:38:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Sin categoría\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:46:\"http://localhost/bancoppel/sorteoefectivo/?p=1\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:98:\"Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"hrtzt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.</p>\n\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"http://localhost/bancoppel/sorteoefectivo/2018/08/06/hola-mundo/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:47:\"http://localhost/bancoppel/sorteoefectivo/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:6:\"hourly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:4:\"date\";s:29:\"Wed, 08 Aug 2018 18:42:25 GMT\";s:6:\"server\";s:32:\"Apache/2.4.33 (Win64) PHP/5.6.35\";s:12:\"x-powered-by\";s:10:\"PHP/5.6.35\";s:13:\"last-modified\";s:29:\"Tue, 07 Aug 2018 22:46:44 GMT\";s:4:\"etag\";s:34:\"\"94ee76a64364b4dc9debc6adad89cd3d\"\";s:4:\"link\";s:78:\"<http://localhost/bancoppel/sorteoefectivo/wp-json/>; rel=\"https://api.w.org/\"\";s:14:\"content-length\";s:4:\"2713\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";}}s:5:\"build\";s:14:\"20180806160458\";}', 'no'),
(128, 'can_compress_scripts', '1', 'no'),
(139, 'current_theme', 'WPKit Framework', 'yes'),
(140, 'theme_mods_sorteoefectivo', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(142, 'widget_slider', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(143, 'widget_breadcrumb', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(144, 'acf_version', '5.5.12', 'yes'),
(218, '_transient_timeout_feed_mod_d58e7ff844c2b192b2484a488651a9b3', '1533796947', 'no'),
(219, '_transient_feed_mod_d58e7ff844c2b192b2484a488651a9b3', '1533753747', 'no'),
(153, 'recently_activated', 'a:1:{i:0;b:0;}', 'yes'),
(158, 'wk_custom_logo_main', 'http://localhost/bancoppel/sorteoefectivo/wp-content/uploads/2018/08/logo-bancoppel.svg', 'yes'),
(159, 'wk_custom_logo_alt', 'http://localhost/bancoppel/sorteoefectivo/wp-content/uploads/2018/08/logo-sorteo-efectivo.svg', 'yes'),
(160, 'wk_custom_logo_complementary', '', 'yes'),
(161, 'wk_custom_site_background', '', 'yes'),
(189, 'wk_posts_by_you', '', 'yes'),
(190, 'wk_footer_text', '', 'yes'),
(191, 'wk_toolbar_color', '#ffffff', 'yes'),
(185, 'wk_custom_admin_logo', '', 'yes'),
(186, 'wk_set_material_theme', '', 'yes'),
(187, 'wk_set_admin_sidebar', '', 'yes'),
(188, 'wk_set_toolbar_menu', '', 'yes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_postmeta`
--

DROP TABLE IF EXISTS `bncstvx_postmeta`;
CREATE TABLE IF NOT EXISTS `bncstvx_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=480 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_postmeta`
--

INSERT INTO `bncstvx_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_oembed_fb03bb0b9c9e7bf69eccd1e749e55745', '<iframe src=\"https://player.vimeo.com/video/22439234?app_id=122963\" width=\"500\" height=\"281\" frameborder=\"0\" title=\"The Mountain\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>'),
(4, 6, '_oembed_time_fb03bb0b9c9e7bf69eccd1e749e55745', '1533648319'),
(5, 7, '_wp_attached_file', '2018/08/logo-bancoppel.svg'),
(6, 8, '_wp_attached_file', '2018/08/logo-sorteo-efectivo.svg'),
(7, 6, '_wp_trash_meta_status', 'draft'),
(8, 6, '_wp_trash_meta_time', '1533658457'),
(9, 6, '_wp_desired_post_slug', ''),
(10, 1, '_edit_lock', '1533758577:1'),
(11, 1, '_edit_last', '1'),
(31, 11, '_edit_last', '1'),
(13, 1, 'seo_titulo-seo', ''),
(14, 1, 'seo_descripcion-seo', ''),
(15, 1, 'seo_tipo-de-schema', 'Article '),
(16, 1, 'seo_titulo-schema', ''),
(17, 1, 'seo_descripcion-schema', ''),
(18, 1, 'seo_imagen-schema', ''),
(19, 1, 'seo_titulo-facebook', ''),
(20, 1, 'seo_descripcion-facebook', ''),
(21, 1, 'seo_imagen-facebook', ''),
(22, 1, 'seo_tipo-twitter-card', 'global'),
(23, 1, 'seo_titulo-twitter', ''),
(24, 1, 'seo_descripcion-twitter', ''),
(25, 1, 'seo_imagen-twitter', ''),
(26, 1, 'seo_autor-twitter', '1 '),
(27, 1, 'seo_follow', 'follow '),
(28, 1, 'seo_index', 'index '),
(29, 1, 'wk_codediv_cdigo', ''),
(30, 1, 'wk_scriptdiv_scripts', ''),
(32, 11, '_edit_lock', '1533681840:1'),
(38, 16, '_edit_last', '1'),
(34, 1, 'estado', 'Veracruz'),
(35, 1, '_estado', 'field_5b69c6990498f'),
(36, 13, 'estado', 'Veracruz'),
(37, 13, '_estado', 'field_5b69c6990498f'),
(39, 16, '_edit_lock', '1533681840:1'),
(40, 20, '_edit_last', '1'),
(41, 20, '_edit_lock', '1533681840:1'),
(42, 22, '_wp_attached_file', '2018/08/gaby-bancopel-sorteo-efectivo.jpg'),
(43, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:561;s:6:\"height\";i:683;s:4:\"file\";s:41:\"2018/08/gaby-bancopel-sorteo-efectivo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"gaby-bancopel-sorteo-efectivo-414x414.jpg\";s:5:\"width\";i:414;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"icon\";a:4:{s:4:\"file\";s:39:\"gaby-bancopel-sorteo-efectivo-26x32.jpg\";s:5:\"width\";i:26;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"icon-large\";a:4:{s:4:\"file\";s:41:\"gaby-bancopel-sorteo-efectivo-123x150.jpg\";s:5:\"width\";i:123;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 23, '_wp_attached_file', '2018/08/samuel-bancoppel-sorteo-efectivo.jpg'),
(45, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:561;s:6:\"height\";i:683;s:4:\"file\";s:44:\"2018/08/samuel-bancoppel-sorteo-efectivo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"samuel-bancoppel-sorteo-efectivo-414x414.jpg\";s:5:\"width\";i:414;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"icon\";a:4:{s:4:\"file\";s:42:\"samuel-bancoppel-sorteo-efectivo-26x32.jpg\";s:5:\"width\";i:26;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"icon-large\";a:4:{s:4:\"file\";s:44:\"samuel-bancoppel-sorteo-efectivo-123x150.jpg\";s:5:\"width\";i:123;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(46, 24, '_wp_attached_file', '2018/08/amanda-bancoppel-sorteo-efectivo.jpg'),
(47, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:561;s:6:\"height\";i:683;s:4:\"file\";s:44:\"2018/08/amanda-bancoppel-sorteo-efectivo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:44:\"amanda-bancoppel-sorteo-efectivo-414x414.jpg\";s:5:\"width\";i:414;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"icon\";a:4:{s:4:\"file\";s:42:\"amanda-bancoppel-sorteo-efectivo-26x32.jpg\";s:5:\"width\";i:26;s:6:\"height\";i:32;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"icon-large\";a:4:{s:4:\"file\";s:44:\"amanda-bancoppel-sorteo-efectivo-123x150.jpg\";s:5:\"width\";i:123;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 1, '_thumbnail_id', '23'),
(72, 26, '_edit_last', '1'),
(50, 1, 'profesion', 'Pianista'),
(51, 1, '_profesion', 'field_5b69c6e825692'),
(52, 1, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(53, 1, '_video', 'field_5b69c72cbe0fa'),
(54, 1, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus,.'),
(55, 1, '_extracto', 'field_5b69c75c10680'),
(56, 1, 'parrafos', '3'),
(57, 1, '_parrafos', 'field_5b69c7aa10681'),
(58, 1, 'galeria', ''),
(59, 1, '_galeria', 'field_5b69c938accc6'),
(60, 25, 'estado', 'Veracruz'),
(61, 25, '_estado', 'field_5b69c6990498f'),
(62, 25, 'profesion', 'Pianista'),
(63, 25, '_profesion', 'field_5b69c6e825692'),
(64, 25, 'video', ''),
(65, 25, '_video', 'field_5b69c72cbe0fa'),
(66, 25, 'extracto', ''),
(67, 25, '_extracto', 'field_5b69c75c10680'),
(68, 25, 'parrafos', ''),
(69, 25, '_parrafos', 'field_5b69c7aa10681'),
(70, 25, 'galeria', ''),
(71, 25, '_galeria', 'field_5b69c938accc6'),
(73, 26, '_edit_lock', '1533659576:1'),
(74, 26, '_thumbnail_id', '24'),
(118, 28, '_edit_last', '1'),
(76, 26, 'seo_titulo-seo', ''),
(77, 26, 'seo_descripcion-seo', ''),
(78, 26, 'seo_tipo-de-schema', 'Article '),
(79, 26, 'seo_titulo-schema', ''),
(80, 26, 'seo_descripcion-schema', ''),
(81, 26, 'seo_imagen-schema', ''),
(82, 26, 'seo_titulo-facebook', ''),
(83, 26, 'seo_descripcion-facebook', ''),
(84, 26, 'seo_imagen-facebook', ''),
(85, 26, 'seo_tipo-twitter-card', 'global'),
(86, 26, 'seo_titulo-twitter', ''),
(87, 26, 'seo_descripcion-twitter', ''),
(88, 26, 'seo_imagen-twitter', ''),
(89, 26, 'seo_autor-twitter', '1 '),
(90, 26, 'seo_follow', 'follow '),
(91, 26, 'seo_index', 'index '),
(92, 26, 'wk_codediv_cdigo', ''),
(93, 26, 'wk_scriptdiv_scripts', ''),
(94, 26, 'estado', 'Sonora'),
(95, 26, '_estado', 'field_5b69c6990498f'),
(96, 26, 'profesion', 'Estudiante'),
(97, 26, '_profesion', 'field_5b69c6e825692'),
(98, 26, 'video', ''),
(99, 26, '_video', 'field_5b69c72cbe0fa'),
(100, 26, 'extracto', ''),
(101, 26, '_extracto', 'field_5b69c75c10680'),
(102, 26, 'parrafos', ''),
(103, 26, '_parrafos', 'field_5b69c7aa10681'),
(104, 26, 'galeria', ''),
(105, 26, '_galeria', 'field_5b69c938accc6'),
(106, 27, 'estado', 'Sonora'),
(107, 27, '_estado', 'field_5b69c6990498f'),
(108, 27, 'profesion', 'Estudiante'),
(109, 27, '_profesion', 'field_5b69c6e825692'),
(110, 27, 'video', ''),
(111, 27, '_video', 'field_5b69c72cbe0fa'),
(112, 27, 'extracto', ''),
(113, 27, '_extracto', 'field_5b69c75c10680'),
(114, 27, 'parrafos', ''),
(115, 27, '_parrafos', 'field_5b69c7aa10681'),
(116, 27, 'galeria', ''),
(117, 27, '_galeria', 'field_5b69c938accc6'),
(119, 28, '_edit_lock', '1533761771:1'),
(120, 28, '_thumbnail_id', '22'),
(164, 31, '_wp_attached_file', '2018/08/samuel-hernandez-video-thumb.jpg'),
(122, 28, 'seo_titulo-seo', ''),
(123, 28, 'seo_descripcion-seo', ''),
(124, 28, 'seo_tipo-de-schema', 'Article '),
(125, 28, 'seo_titulo-schema', ''),
(126, 28, 'seo_descripcion-schema', ''),
(127, 28, 'seo_imagen-schema', ''),
(128, 28, 'seo_titulo-facebook', ''),
(129, 28, 'seo_descripcion-facebook', ''),
(130, 28, 'seo_imagen-facebook', ''),
(131, 28, 'seo_tipo-twitter-card', 'global'),
(132, 28, 'seo_titulo-twitter', ''),
(133, 28, 'seo_descripcion-twitter', ''),
(134, 28, 'seo_imagen-twitter', ''),
(135, 28, 'seo_autor-twitter', '1 '),
(136, 28, 'seo_follow', 'follow '),
(137, 28, 'seo_index', 'index '),
(138, 28, 'wk_codediv_cdigo', ''),
(139, 28, 'wk_scriptdiv_scripts', ''),
(140, 28, 'estado', 'Veracruz'),
(141, 28, '_estado', 'field_5b69c6990498f'),
(142, 28, 'profesion', 'Ama de casa'),
(143, 28, '_profesion', 'field_5b69c6e825692'),
(144, 28, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(145, 28, '_video', 'field_5b69c72cbe0fa'),
(146, 28, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus  elit duis condimentum mollis nasso.'),
(147, 28, '_extracto', 'field_5b69c75c10680'),
(148, 28, 'parrafos', '3'),
(149, 28, '_parrafos', 'field_5b69c7aa10681'),
(150, 28, 'galeria', ''),
(151, 28, '_galeria', 'field_5b69c938accc6'),
(152, 29, 'estado', 'Veracruz'),
(153, 29, '_estado', 'field_5b69c6990498f'),
(154, 29, 'profesion', 'Ama de casa'),
(155, 29, '_profesion', 'field_5b69c6e825692'),
(156, 29, 'video', ''),
(157, 29, '_video', 'field_5b69c72cbe0fa'),
(158, 29, 'extracto', ''),
(159, 29, '_extracto', 'field_5b69c75c10680'),
(160, 29, 'parrafos', ''),
(161, 29, '_parrafos', 'field_5b69c7aa10681'),
(162, 29, 'galeria', ''),
(163, 29, '_galeria', 'field_5b69c938accc6'),
(165, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1488;s:6:\"height\";i:864;s:4:\"file\";s:40:\"2018/08/samuel-hernandez-video-thumb.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"samuel-hernandez-video-thumb-414x414.jpg\";s:5:\"width\";i:414;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"samuel-hernandez-video-thumb-736x427.jpg\";s:5:\"width\";i:736;s:6:\"height\";i:427;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"samuel-hernandez-video-thumb-768x446.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:446;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"samuel-hernandez-video-thumb-1024x595.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:595;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:4:\"icon\";a:4:{s:4:\"file\";s:38:\"samuel-hernandez-video-thumb-32x19.jpg\";s:5:\"width\";i:32;s:6:\"height\";i:19;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:10:\"icon-large\";a:4:{s:4:\"file\";s:39:\"samuel-hernandez-video-thumb-150x87.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:87;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(290, 38, '_edit_last', '1'),
(167, 28, 'video_thumbnail', '31'),
(168, 28, '_video_thumbnail', 'field_5b6a0b25b771d'),
(169, 32, 'estado', 'Veracruz'),
(170, 32, '_estado', 'field_5b69c6990498f'),
(171, 32, 'profesion', 'Ama de casa'),
(172, 32, '_profesion', 'field_5b69c6e825692'),
(173, 32, 'video', ''),
(174, 32, '_video', 'field_5b69c72cbe0fa'),
(175, 32, 'extracto', ''),
(176, 32, '_extracto', 'field_5b69c75c10680'),
(177, 32, 'parrafos', ''),
(178, 32, '_parrafos', 'field_5b69c7aa10681'),
(179, 32, 'galeria', ''),
(180, 32, '_galeria', 'field_5b69c938accc6'),
(181, 32, 'video_thumbnail', '31'),
(182, 32, '_video_thumbnail', 'field_5b6a0b25b771d'),
(184, 1, 'video_thumbnail', '31'),
(185, 1, '_video_thumbnail', 'field_5b6a0b25b771d'),
(186, 33, 'estado', 'Veracruz'),
(187, 33, '_estado', 'field_5b69c6990498f'),
(188, 33, 'profesion', 'Pianista'),
(189, 33, '_profesion', 'field_5b69c6e825692'),
(190, 33, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(191, 33, '_video', 'field_5b69c72cbe0fa'),
(192, 33, 'extracto', ''),
(193, 33, '_extracto', 'field_5b69c75c10680'),
(194, 33, 'parrafos', ''),
(195, 33, '_parrafos', 'field_5b69c7aa10681'),
(196, 33, 'galeria', ''),
(197, 33, '_galeria', 'field_5b69c938accc6'),
(198, 33, 'video_thumbnail', '31'),
(199, 33, '_video_thumbnail', 'field_5b6a0b25b771d'),
(201, 34, 'estado', 'Veracruz'),
(202, 34, '_estado', 'field_5b69c6990498f'),
(203, 34, 'profesion', 'Ama de casa'),
(204, 34, '_profesion', 'field_5b69c6e825692'),
(205, 34, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(206, 34, '_video', 'field_5b69c72cbe0fa'),
(207, 34, 'extracto', ''),
(208, 34, '_extracto', 'field_5b69c75c10680'),
(209, 34, 'parrafos', ''),
(210, 34, '_parrafos', 'field_5b69c7aa10681'),
(211, 34, 'galeria', ''),
(212, 34, '_galeria', 'field_5b69c938accc6'),
(213, 34, 'video_thumbnail', '31'),
(214, 34, '_video_thumbnail', 'field_5b6a0b25b771d'),
(216, 28, 'parrafos_0_parrafo', 'Párrafo 1 + Lorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(217, 28, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(218, 28, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(219, 28, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(220, 28, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(221, 28, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(222, 35, 'estado', 'Veracruz'),
(223, 35, '_estado', 'field_5b69c6990498f'),
(224, 35, 'profesion', 'Ama de casa'),
(225, 35, '_profesion', 'field_5b69c6e825692'),
(226, 35, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(227, 35, '_video', 'field_5b69c72cbe0fa'),
(228, 35, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus,.'),
(229, 35, '_extracto', 'field_5b69c75c10680'),
(230, 35, 'parrafos', '3'),
(231, 35, '_parrafos', 'field_5b69c7aa10681'),
(232, 35, 'galeria', ''),
(233, 35, '_galeria', 'field_5b69c938accc6'),
(234, 35, 'video_thumbnail', '31'),
(235, 35, '_video_thumbnail', 'field_5b6a0b25b771d'),
(236, 35, 'parrafos_0_parrafo', 'Párrafo 1\r\n\r\nLorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(237, 35, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(238, 35, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(239, 35, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(240, 35, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(241, 35, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(243, 1, 'parrafos_0_parrafo', 'Párrafo 1\r\n\r\nLorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(244, 1, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(245, 1, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(246, 1, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(247, 1, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(248, 1, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(249, 36, 'estado', 'Veracruz'),
(250, 36, '_estado', 'field_5b69c6990498f'),
(251, 36, 'profesion', 'Pianista'),
(252, 36, '_profesion', 'field_5b69c6e825692'),
(253, 36, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(254, 36, '_video', 'field_5b69c72cbe0fa'),
(255, 36, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus,.'),
(256, 36, '_extracto', 'field_5b69c75c10680'),
(257, 36, 'parrafos', '3'),
(258, 36, '_parrafos', 'field_5b69c7aa10681'),
(259, 36, 'galeria', ''),
(260, 36, '_galeria', 'field_5b69c938accc6'),
(261, 36, 'video_thumbnail', '31'),
(262, 36, '_video_thumbnail', 'field_5b6a0b25b771d'),
(263, 36, 'parrafos_0_parrafo', 'Párrafo 1\r\n\r\nLorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(264, 36, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(265, 36, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(266, 36, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(267, 36, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(268, 36, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(270, 37, 'estado', 'Veracruz'),
(271, 37, '_estado', 'field_5b69c6990498f'),
(272, 37, 'profesion', 'Ama de casa'),
(273, 37, '_profesion', 'field_5b69c6e825692'),
(274, 37, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(275, 37, '_video', 'field_5b69c72cbe0fa'),
(276, 37, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus  elit duis condimentum mollis nasso.'),
(277, 37, '_extracto', 'field_5b69c75c10680'),
(278, 37, 'parrafos', '3'),
(279, 37, '_parrafos', 'field_5b69c7aa10681'),
(280, 37, 'galeria', ''),
(281, 37, '_galeria', 'field_5b69c938accc6'),
(282, 37, 'video_thumbnail', '31'),
(283, 37, '_video_thumbnail', 'field_5b6a0b25b771d'),
(284, 37, 'parrafos_0_parrafo', 'Párrafo 1 + Lorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(285, 37, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(286, 37, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(287, 37, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(288, 37, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(289, 37, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(291, 38, '_edit_lock', '1533686225:1'),
(293, 1, 'quote', '<blockquote><strong>Ligula senectus curae </strong>scelerisque pellentesque cubiliasd</blockquote>'),
(294, 1, '_quote', 'field_5b6a20a901528'),
(295, 40, 'estado', 'Veracruz'),
(296, 40, '_estado', 'field_5b69c6990498f'),
(297, 40, 'profesion', 'Pianista'),
(298, 40, '_profesion', 'field_5b69c6e825692'),
(299, 40, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(300, 40, '_video', 'field_5b69c72cbe0fa'),
(301, 40, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus,.'),
(302, 40, '_extracto', 'field_5b69c75c10680'),
(303, 40, 'parrafos', '3'),
(304, 40, '_parrafos', 'field_5b69c7aa10681'),
(305, 40, 'galeria', ''),
(306, 40, '_galeria', 'field_5b69c938accc6'),
(307, 40, 'video_thumbnail', '31'),
(308, 40, '_video_thumbnail', 'field_5b6a0b25b771d'),
(309, 40, 'parrafos_0_parrafo', 'Párrafo 1\r\n\r\nLorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(310, 40, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(311, 40, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(312, 40, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(313, 40, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(314, 40, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(315, 40, 'quote', 'Ligula senectus curae scelerisque pellentesque cubilia'),
(316, 40, '_quote', 'field_5b6a20a901528'),
(318, 28, 'quote', '<blockquote><strong>Ligula senectus curae </strong>scelerisque cubiliasd</blockquote>'),
(319, 28, '_quote', 'field_5b6a20a901528'),
(320, 41, 'estado', 'Veracruz'),
(321, 41, '_estado', 'field_5b69c6990498f'),
(322, 41, 'profesion', 'Ama de casa'),
(323, 41, '_profesion', 'field_5b69c6e825692'),
(324, 41, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(325, 41, '_video', 'field_5b69c72cbe0fa'),
(326, 41, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus  elit duis condimentum mollis nasso.'),
(327, 41, '_extracto', 'field_5b69c75c10680'),
(328, 41, 'parrafos', '3'),
(329, 41, '_parrafos', 'field_5b69c7aa10681'),
(330, 41, 'galeria', ''),
(331, 41, '_galeria', 'field_5b69c938accc6'),
(332, 41, 'video_thumbnail', '31'),
(333, 41, '_video_thumbnail', 'field_5b6a0b25b771d'),
(334, 41, 'parrafos_0_parrafo', 'Párrafo 1 + Lorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(335, 41, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(336, 41, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(337, 41, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(338, 41, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(339, 41, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(340, 41, 'quote', 'Ligula senectus curae scelerisque pellentesque cubilia'),
(341, 41, '_quote', 'field_5b6a20a901528'),
(343, 42, 'estado', 'Veracruz'),
(344, 42, '_estado', 'field_5b69c6990498f'),
(345, 42, 'profesion', 'Pianista'),
(346, 42, '_profesion', 'field_5b69c6e825692'),
(347, 42, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(348, 42, '_video', 'field_5b69c72cbe0fa'),
(349, 42, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus,.'),
(350, 42, '_extracto', 'field_5b69c75c10680'),
(351, 42, 'parrafos', '3'),
(352, 42, '_parrafos', 'field_5b69c7aa10681'),
(353, 42, 'galeria', ''),
(354, 42, '_galeria', 'field_5b69c938accc6'),
(355, 42, 'video_thumbnail', '31'),
(356, 42, '_video_thumbnail', 'field_5b6a0b25b771d'),
(357, 42, 'parrafos_0_parrafo', 'Párrafo 1\r\n\r\nLorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(358, 42, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(359, 42, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(360, 42, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(361, 42, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(362, 42, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(363, 42, 'quote', '<blockquote><strong>Ligula senectus curae</strong> scelerisque pellentesque cubilia</blockquote>'),
(364, 42, '_quote', 'field_5b6a20a901528'),
(366, 43, 'estado', 'Veracruz'),
(367, 43, '_estado', 'field_5b69c6990498f'),
(368, 43, 'profesion', 'Pianista'),
(369, 43, '_profesion', 'field_5b69c6e825692'),
(370, 43, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(371, 43, '_video', 'field_5b69c72cbe0fa'),
(372, 43, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus,.'),
(373, 43, '_extracto', 'field_5b69c75c10680'),
(374, 43, 'parrafos', '3'),
(375, 43, '_parrafos', 'field_5b69c7aa10681'),
(376, 43, 'galeria', ''),
(377, 43, '_galeria', 'field_5b69c938accc6'),
(378, 43, 'video_thumbnail', '31'),
(379, 43, '_video_thumbnail', 'field_5b6a0b25b771d'),
(380, 43, 'parrafos_0_parrafo', 'Párrafo 1\r\n\r\nLorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(381, 43, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(382, 43, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(383, 43, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(384, 43, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(385, 43, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(386, 43, 'quote', '<blockquote><strong>Ligula senectus curae </strong>scelerisque pellentesque cubilia</blockquote>'),
(387, 43, '_quote', 'field_5b6a20a901528'),
(389, 44, 'estado', 'Veracruz'),
(390, 44, '_estado', 'field_5b69c6990498f'),
(391, 44, 'profesion', 'Pianista'),
(392, 44, '_profesion', 'field_5b69c6e825692'),
(393, 44, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(394, 44, '_video', 'field_5b69c72cbe0fa'),
(395, 44, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus,.'),
(396, 44, '_extracto', 'field_5b69c75c10680'),
(397, 44, 'parrafos', '3'),
(398, 44, '_parrafos', 'field_5b69c7aa10681'),
(399, 44, 'galeria', ''),
(400, 44, '_galeria', 'field_5b69c938accc6'),
(401, 44, 'video_thumbnail', '31'),
(402, 44, '_video_thumbnail', 'field_5b6a0b25b771d'),
(403, 44, 'parrafos_0_parrafo', 'Párrafo 1\r\n\r\nLorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(404, 44, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(405, 44, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(406, 44, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(407, 44, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(408, 44, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(409, 44, 'quote', '<blockquote><strong>Ligula senectus curae </strong>scelerisque pellentesque cubiliasd</blockquote>'),
(410, 44, '_quote', 'field_5b6a20a901528'),
(412, 45, 'estado', 'Veracruz'),
(413, 45, '_estado', 'field_5b69c6990498f'),
(414, 45, 'profesion', 'Ama de casa'),
(415, 45, '_profesion', 'field_5b69c6e825692'),
(416, 45, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(417, 45, '_video', 'field_5b69c72cbe0fa'),
(418, 45, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus  elit duis condimentum mollis nasso.'),
(419, 45, '_extracto', 'field_5b69c75c10680'),
(420, 45, 'parrafos', '3'),
(421, 45, '_parrafos', 'field_5b69c7aa10681'),
(422, 45, 'galeria', ''),
(423, 45, '_galeria', 'field_5b69c938accc6'),
(424, 45, 'video_thumbnail', '31'),
(425, 45, '_video_thumbnail', 'field_5b6a0b25b771d'),
(426, 45, 'parrafos_0_parrafo', 'Párrafo 1 + Lorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(427, 45, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(428, 45, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(429, 45, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(430, 45, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(431, 45, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(432, 45, 'quote', '<strong>Ligula senectus curae </strong>scelerisque pellentesque cubiliasd'),
(433, 45, '_quote', 'field_5b6a20a901528'),
(435, 46, 'estado', 'Veracruz'),
(436, 46, '_estado', 'field_5b69c6990498f'),
(437, 46, 'profesion', 'Ama de casa'),
(438, 46, '_profesion', 'field_5b69c6e825692'),
(439, 46, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(440, 46, '_video', 'field_5b69c72cbe0fa'),
(441, 46, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus  elit duis condimentum mollis nasso.'),
(442, 46, '_extracto', 'field_5b69c75c10680'),
(443, 46, 'parrafos', '3'),
(444, 46, '_parrafos', 'field_5b69c7aa10681'),
(445, 46, 'galeria', ''),
(446, 46, '_galeria', 'field_5b69c938accc6'),
(447, 46, 'video_thumbnail', '31'),
(448, 46, '_video_thumbnail', 'field_5b6a0b25b771d'),
(449, 46, 'parrafos_0_parrafo', 'Párrafo 1 + Lorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(450, 46, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(451, 46, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(452, 46, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(453, 46, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(454, 46, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(455, 46, 'quote', '<strong>Ligula senectus curae </strong>scelerisque cubiliasd'),
(456, 46, '_quote', 'field_5b6a20a901528'),
(458, 47, 'estado', 'Veracruz'),
(459, 47, '_estado', 'field_5b69c6990498f'),
(460, 47, 'profesion', 'Ama de casa'),
(461, 47, '_profesion', 'field_5b69c6e825692'),
(462, 47, 'video', 'https://www.youtube.com/watch?v=umw0kDCeEz4'),
(463, 47, '_video', 'field_5b69c72cbe0fa'),
(464, 47, 'extracto', 'Extracto + Ac urna id erat dui habitant metus, convallis at varius potenti pretiu habitant metus  elit duis condimentum mollis nasso.'),
(465, 47, '_extracto', 'field_5b69c75c10680'),
(466, 47, 'parrafos', '3'),
(467, 47, '_parrafos', 'field_5b69c7aa10681'),
(468, 47, 'galeria', ''),
(469, 47, '_galeria', 'field_5b69c938accc6'),
(470, 47, 'video_thumbnail', '31'),
(471, 47, '_video_thumbnail', 'field_5b6a0b25b771d'),
(472, 47, 'parrafos_0_parrafo', 'Párrafo 1 + Lorem ipsum dolor sit amet consectetur adipiscing, elit duis condimentum mollis nascetur nec et, penatibus eros aliquam in metus. Molestie ac urna id erat dui habitant metus, convallis at varius potenti pretium eleifend sodales, sociosqu turpis tempor nam netus tristique.'),
(473, 47, '_parrafos_0_parrafo', 'field_5b69c7c810682'),
(474, 47, 'parrafos_1_parrafo', 'Párrafo 2 + Dictumst nec duis torquent platea fames nulla malesuada vestibulum, ultrices hac a ultricies senectus egestas rutrum in, lacinia mattis euismod velit tempor per facilisis.\r\n\r\nEget velit pellentesque sagittis netus hendrerit per vivamus diam, taciti sapien habitasse facilisi proin congue auctor condimentum maecenas.'),
(475, 47, '_parrafos_1_parrafo', 'field_5b69c7c810682'),
(476, 47, 'parrafos_2_parrafo', 'Párrafo 3 + posuere dignissim libero platea vel aliquet scelerisque. Ligula senectus curae scelerisque pellentesque cubilia euismod justo, laoreet hac fusce congue tincidunt tristique habitant tortor, nam aptent conubia vestibulum vulputate luctus.'),
(477, 47, '_parrafos_2_parrafo', 'field_5b69c7c810682'),
(478, 47, 'quote', '<blockquote><strong>Ligula senectus curae </strong>scelerisque cubiliasd</blockquote>'),
(479, 47, '_quote', 'field_5b6a20a901528');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_posts`
--

DROP TABLE IF EXISTS `bncstvx_posts`;
CREATE TABLE IF NOT EXISTS `bncstvx_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_posts`
--

INSERT INTO `bncstvx_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-06 10:38:40', '2018-08-06 16:38:40', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Samuel Hernández', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2018-08-08 14:02:01', '2018-08-08 20:02:01', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-06 10:38:40', '2018-08-06 16:38:40', 'Esta es una página de ejemplo, Es diferente a una entrada de un blog porque se mantiene estática y se mostrará en la barra de navegación (en la mayoría de temas). Casi todo el mundo comienza con una página \"Acerca De\" para presentarse a los potenciales visitantes. Podría ser algo así:\n\n<blockquote>¡Hola!: Soy mensajero por el día, aspirante a actor por la noche y esta es mi web. Vivo en Guadalajara, tengo un gran perro llamado Khal y me encantan las piñas coladas (y empaparme en la lluvia)</blockquote>\n\n… o algo así:\n\n<blockquote>La empresa Banpatrás XYZ se fundó en 1971, y ha estado invirtiendo el ahorro de sus clientes desde entonces. Ubicada en Ciudad Gótica, Banpatrás XYZ tiene más de 2.000 empleados e hace toda clase de cosas increíbles por la comunidad de Ciudad Gótica</blockquote>\n\nSi eres nuevo en WordPress deberías ir a <a href=\"http://localhost/bancoppel/sorteoefectivo/wp-admin/\">tu escritorio</a> para borrar esta página y crear algunas nuevas con tu contenido. ¡Diviértete!', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2018-08-06 10:38:40', '2018-08-06 16:38:40', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-06 10:38:40', '2018-08-06 16:38:40', '<h2>Who we are</h2><p>Our website address is: http://localhost/bancoppel/sorteoefectivo.</p><h2>What personal data we collect and why we collect it</h2><h3>Comentarios</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Medios</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-08-06 10:38:40', '2018-08-06 16:38:40', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-08-06 10:38:46', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-08-06 10:38:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?p=4', 0, 'post', '', 0),
(5, 1, '2018-08-06 10:38:51', '2018-08-06 16:38:51', '', 'Style Guide', '', 'publish', 'closed', 'closed', '', 'style-guide', '', '', '2018-08-06 10:38:51', '2018-08-06 16:38:51', '', 0, 'http://localhost/bancoppel/sorteoefectivo/style-guide/', 0, 'page', '', 0),
(6, 1, '2018-08-07 10:14:17', '2018-08-07 16:14:17', '<!-- wp:cover-image {\"url\":\"https://cldup.com/Fz-ASbo2s3.jpg\",\"align\":\"wide\",\"dimRatio\":40} -->\n<div class=\"wp-block-cover-image has-background-dim-40 has-background-dim alignwide\" style=\"background-image:url(https://cldup.com/Fz-ASbo2s3.jpg)\"><p class=\"wp-block-cover-image-text\">Of Mountains &amp; Printing Presses</p></div>\n<!-- /wp:cover-image -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">... like this one, which is right aligned.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>What you are reading now is a <strong>text block</strong>, the most basic block of all. The text block has its own controls to be moved freely around the post...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The goal of this new editor is to make adding rich content to WordPress simple and enjoyable. This whole post is composed of <em>pieces of content</em>—somewhat similar to LEGO bricks—that you can move around and interact with. Move your cursor around and you\'ll notice the different blocks light up with outlines and arrows. Press the arrows to reposition blocks quickly, without fearing about losing things in the process of copying and pasting.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Picture <strong>is worth</strong> a <em>Thousand</em> Words</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Headings are separate blocks as well, which helps with the outline and organization of your content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Handling images and media with the utmost care is a primary focus of the new editor. Hopefully, you\'ll find aspects of adding captions or going full-width with your pictures much easier and robust than before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":340,\"height\":227} -->\n<figure class=\"wp-block-image aligncenter is-resized\"><img src=\"https://cldup.com/cXyG__fTLN.jpg\" alt=\"Beautiful landscape\" width=\"340\" height=\"227\"/><figcaption>If your theme supports it, you\'444he \"wide\" button on the image toolbar. Give it a try.</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Try selecting and removing or editing the caption, now you don\'t have to be careful about selecting the image or other text by mistake and ruining the presentation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The <em>Inserter</em> Tool</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Imagine everything that WordPress can do is available to you quickly and in the same place on the interface. No need to figure out HTML tags, classes, or remember complicated shortcode syntax. That\'s the spirit behind the inserter—the <code>(+)</code> button you\'ll see around the editor—which allows you to browse all available content blocks and add them into your post. Plugins and themes are able to register their own, opening up all sort of possibilities for rich editing and publishing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Go give it a try, you may discover things WordPress can already add into your posts that you didn\'t know about. Here\'s a short list of what you can currently find there:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Text &amp; Headings</li><li>Images &amp; Videos</li><li>Galleries</li><li>Embeds, like YouTube, Tweets, or other WordPress posts.</li><li>Layout blocks, like Buttons, Hero Images, Separators, etc.</li><li>And <em>Lists</em> like this one of course :)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Visual Editing</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A huge benefit of blocks is that you can edit them in place and manipulate your content directly. Instead of having fields for editing things like the source of a quote, or the text of a button, you can directly change the content. Try editing the following quote:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The editor will endeavour to create a new page and post building experience that makes writing rich posts effortless, and has “blocks” to make it easy what today might take shortcodes, custom HTML, or “mystery meat” embed discovery.</p><cite>Matt Mullenweg, 2017</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>The information corresponding to the source of the quote is a separate text field, similar to captions under images, so the structure of the quote is protected even if you select, modify, or remove the source. It\'s always easy to add it back.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blocks can be anything you need. For instance, you may want to add a subdued quote as part of the composition of your text, or you may prefer to display a giant stylized one. All of these options are available in the inserter.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"columns\":2} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/n0g6ME5VKC.jpg\" alt=\"\"/><figcaption>111</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/EKNF8xD2UM.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>You can change the amount of columns in your galleries by dragging a slider in the block inspector in the sidebar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media Rich</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you combine the new <strong>wide</strong> and <strong>full-wide</strong> alignments with galleries, you can create a very media rich layout, very quickly:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sure, the full-wide image can be pretty big. But sometimes the image is worth it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"align\":\"wide\"} -->\n<ul class=\"wp-block-gallery alignwide columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/_rSwtEeDGD.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/L-cC3qX2DN.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>The above is a gallery with just two images. It\'s an easier way to create visually appealing layouts, without having to deal with floats. You can also easily convert the gallery back to individual images again, by using the block switcher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any block can opt into these alignments. The embed block has them also, and is responsive out of the box:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/vimeo {\"url\":\"https://vimeo.com/22439234\",\"type\":\"video\",\"providerNameSlug\":\"vimeo\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-embed-vimeo alignwide wp-block-embed is-type-video is-provider-vimeo\">\nhttps://vimeo.com/22439234\n</figure>\n<!-- /wp:core-embed/vimeo -->\n\n<!-- wp:paragraph -->\n<p>You can build any block you like, static or dynamic, decorative or plain. Here\'s a pullquote block:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<blockquote class=\"wp-block-pullquote\"><p>Code is Poetry</p><cite>The WordPress community</cite></blockquote>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><em>If you want to learn more about how to build additional blocks, or if you are interested in helping with the project, head over to the <a href=\"https://github.com/WordPress/gutenberg\">GitHub repository</a>.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://github.com/WordPress/gutenberg\">Help build Gutenberg</a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Thanks for testing Gutenberg!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><img draggable=\"false\" class=\"emoji\" alt=\"👋\" src=\"https://s.w.org/images/core/emoji/2.3/svg/1f44b.svg\"/></p>\n<!-- /wp:paragraph -->', 'Welcome to the Gutenberg Editor', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2018-08-07 10:14:17', '2018-08-07 16:14:17', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?p=6', 0, 'post', '', 0),
(7, 1, '2018-08-07 07:41:01', '2018-08-07 13:41:01', '', 'logo-bancoppel', '', 'inherit', 'open', 'closed', '', 'logo-bancoppel', '', '', '2018-08-07 07:41:01', '2018-08-07 13:41:01', '', 0, 'http://localhost/bancoppel/sorteoefectivo/wp-content/uploads/2018/08/logo-bancoppel.svg', 0, 'attachment', 'image/svg+xml', 0),
(8, 1, '2018-08-07 07:41:02', '2018-08-07 13:41:02', '', 'logo-sorteo-efectivo', '', 'inherit', 'open', 'closed', '', 'logo-sorteo-efectivo', '', '', '2018-08-07 07:41:02', '2018-08-07 13:41:02', '', 0, 'http://localhost/bancoppel/sorteoefectivo/wp-content/uploads/2018/08/logo-sorteo-efectivo.svg', 0, 'attachment', 'image/svg+xml', 0),
(9, 1, '2018-08-07 10:14:17', '2018-08-07 16:14:17', '<!-- wp:cover-image {\"url\":\"https://cldup.com/Fz-ASbo2s3.jpg\",\"align\":\"wide\",\"dimRatio\":40} -->\n<div class=\"wp-block-cover-image has-background-dim-40 has-background-dim alignwide\" style=\"background-image:url(https://cldup.com/Fz-ASbo2s3.jpg)\"><p class=\"wp-block-cover-image-text\">Of Mountains &amp; Printing Presses</p></div>\n<!-- /wp:cover-image -->\n\n<!-- wp:paragraph {\"align\":\"right\"} -->\n<p style=\"text-align:right\">... like this one, which is right aligned.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>What you are reading now is a <strong>text block</strong>, the most basic block of all. The text block has its own controls to be moved freely around the post...</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The goal of this new editor is to make adding rich content to WordPress simple and enjoyable. This whole post is composed of <em>pieces of content</em>—somewhat similar to LEGO bricks—that you can move around and interact with. Move your cursor around and you\'ll notice the different blocks light up with outlines and arrows. Press the arrows to reposition blocks quickly, without fearing about losing things in the process of copying and pasting.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A Picture <strong>is worth</strong> a <em>Thousand</em> Words</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Headings are separate blocks as well, which helps with the outline and organization of your content.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Handling images and media with the utmost care is a primary focus of the new editor. Hopefully, you\'ll find aspects of adding captions or going full-width with your pictures much easier and robust than before.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"align\":\"center\",\"width\":340,\"height\":227} -->\n<figure class=\"wp-block-image aligncenter is-resized\"><img src=\"https://cldup.com/cXyG__fTLN.jpg\" alt=\"Beautiful landscape\" width=\"340\" height=\"227\"/><figcaption>If your theme supports it, you\'444he \"wide\" button on the image toolbar. Give it a try.</figcaption></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Try selecting and removing or editing the caption, now you don\'t have to be careful about selecting the image or other text by mistake and ruining the presentation.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>The <em>Inserter</em> Tool</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Imagine everything that WordPress can do is available to you quickly and in the same place on the interface. No need to figure out HTML tags, classes, or remember complicated shortcode syntax. That\'s the spirit behind the inserter—the <code>(+)</code> button you\'ll see around the editor—which allows you to browse all available content blocks and add them into your post. Plugins and themes are able to register their own, opening up all sort of possibilities for rich editing and publishing.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Go give it a try, you may discover things WordPress can already add into your posts that you didn\'t know about. Here\'s a short list of what you can currently find there:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Text &amp; Headings</li><li>Images &amp; Videos</li><li>Galleries</li><li>Embeds, like YouTube, Tweets, or other WordPress posts.</li><li>Layout blocks, like Buttons, Hero Images, Separators, etc.</li><li>And <em>Lists</em> like this one of course :)</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:heading -->\n<h2>Visual Editing</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>A huge benefit of blocks is that you can edit them in place and manipulate your content directly. Instead of having fields for editing things like the source of a quote, or the text of a button, you can directly change the content. Try editing the following quote:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The editor will endeavour to create a new page and post building experience that makes writing rich posts effortless, and has “blocks” to make it easy what today might take shortcodes, custom HTML, or “mystery meat” embed discovery.</p><cite>Matt Mullenweg, 2017</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>The information corresponding to the source of the quote is a separate text field, similar to captions under images, so the structure of the quote is protected even if you select, modify, or remove the source. It\'s always easy to add it back.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Blocks can be anything you need. For instance, you may want to add a subdued quote as part of the composition of your text, or you may prefer to display a giant stylized one. All of these options are available in the inserter.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"columns\":2} -->\n<ul class=\"wp-block-gallery columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/n0g6ME5VKC.jpg\" alt=\"\"/><figcaption>111</figcaption></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/EKNF8xD2UM.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>You can change the amount of columns in your galleries by dragging a slider in the block inspector in the sidebar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>Media Rich</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>If you combine the new <strong>wide</strong> and <strong>full-wide</strong> alignments with galleries, you can create a very media rich layout, very quickly:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image -->\n<figure class=\"wp-block-image\"><img alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Sure, the full-wide image can be pretty big. But sometimes the image is worth it.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"align\":\"wide\"} -->\n<ul class=\"wp-block-gallery alignwide columns-2 is-cropped\"><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/_rSwtEeDGD.jpg\" alt=\"\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"https://cldup.com/L-cC3qX2DN.jpg\" alt=\"\"/></figure></li></ul>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>The above is a gallery with just two images. It\'s an easier way to create visually appealing layouts, without having to deal with floats. You can also easily convert the gallery back to individual images again, by using the block switcher.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Any block can opt into these alignments. The embed block has them also, and is responsive out of the box:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:core-embed/vimeo {\"url\":\"https://vimeo.com/22439234\",\"type\":\"video\",\"providerNameSlug\":\"vimeo\",\"align\":\"wide\"} -->\n<figure class=\"wp-block-embed-vimeo alignwide wp-block-embed is-type-video is-provider-vimeo\">\nhttps://vimeo.com/22439234\n</figure>\n<!-- /wp:core-embed/vimeo -->\n\n<!-- wp:paragraph -->\n<p>You can build any block you like, static or dynamic, decorative or plain. Here\'s a pullquote block:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:pullquote -->\n<blockquote class=\"wp-block-pullquote\"><p>Code is Poetry</p><cite>The WordPress community</cite></blockquote>\n<!-- /wp:pullquote -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><em>If you want to learn more about how to build additional blocks, or if you are interested in helping with the project, head over to the <a href=\"https://github.com/WordPress/gutenberg\">GitHub repository</a>.</em></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:button {\"align\":\"center\"} -->\n<div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://github.com/WordPress/gutenberg\">Help build Gutenberg</a></div>\n<!-- /wp:button -->\n\n<!-- wp:separator -->\n<hr class=\"wp-block-separator\"/>\n<!-- /wp:separator -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\">Thanks for testing Gutenberg!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"align\":\"center\"} -->\n<p style=\"text-align:center\"><img draggable=\"false\" class=\"emoji\" alt=\"👋\" src=\"https://s.w.org/images/core/emoji/2.3/svg/1f44b.svg\"/></p>\n<!-- /wp:paragraph -->', 'Welcome to the Gutenberg Editor', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2018-08-07 10:14:17', '2018-08-07 16:14:17', '', 6, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/6-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2018-08-07 10:19:23', '2018-08-07 16:19:23', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-07 10:19:23', '2018-08-07 16:19:23', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/1-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-08-07 10:20:04', '2018-08-07 16:20:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:45:\"Estado, profesión, video, thumbnail de video\";}', 'Datos', 'datos', 'publish', 'closed', 'closed', '', 'group_5b69c6940a937', '', '', '2018-08-07 15:13:06', '2018-08-07 21:13:06', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field-group&#038;p=11', 1, 'acf-field-group', '', 0),
(12, 1, '2018-08-07 10:20:04', '2018-08-07 16:20:04', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Estado', 'estado', 'publish', 'closed', 'closed', '', 'field_5b69c6990498f', '', '', '2018-08-07 10:20:04', '2018-08-07 16:20:04', '', 11, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&p=12', 0, 'acf-field', '', 0),
(13, 1, '2018-08-07 10:20:35', '2018-08-07 16:20:35', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-07 10:20:35', '2018-08-07 16:20:35', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/1-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-08-07 10:21:06', '2018-08-07 16:21:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:23:\"p.ej. Pianista, músico\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Profesión', 'profesion', 'publish', 'closed', 'closed', '', 'field_5b69c6e825692', '', '', '2018-08-07 10:21:26', '2018-08-07 16:21:26', '', 11, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&#038;p=14', 1, 'acf-field', '', 0),
(15, 1, '2018-08-07 10:22:23', '2018-08-07 16:22:23', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Video', 'video', 'publish', 'closed', 'closed', '', 'field_5b69c72cbe0fa', '', '', '2018-08-07 10:22:23', '2018-08-07 16:22:23', '', 11, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&p=15', 2, 'acf-field', '', 0),
(16, 1, '2018-08-07 10:25:19', '2018-08-07 16:25:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:21:\"Builder de contenidos\";}', 'Contenido', 'contenido', 'publish', 'closed', 'closed', '', 'group_5b69c7556f3db', '', '', '2018-08-07 10:25:34', '2018-08-07 16:25:34', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field-group&#038;p=16', 2, 'acf-field-group', '', 0),
(17, 1, '2018-08-07 10:25:19', '2018-08-07 16:25:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Extracto', 'extracto', 'publish', 'closed', 'closed', '', 'field_5b69c75c10680', '', '', '2018-08-07 10:25:19', '2018-08-07 16:25:19', '', 16, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&p=17', 0, 'acf-field', '', 0),
(18, 1, '2018-08-07 10:25:19', '2018-08-07 16:25:19', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:16:\"Añadir párrafo\";}', 'Párrafos', 'parrafos', 'publish', 'closed', 'closed', '', 'field_5b69c7aa10681', '', '', '2018-08-07 10:25:19', '2018-08-07 16:25:19', '', 16, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&p=18', 1, 'acf-field', '', 0),
(19, 1, '2018-08-07 10:25:19', '2018-08-07 16:25:19', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Párrafo', 'parrafo', 'publish', 'closed', 'closed', '', 'field_5b69c7c810682', '', '', '2018-08-07 10:25:19', '2018-08-07 16:25:19', '', 18, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&p=19', 0, 'acf-field', '', 0),
(20, 1, '2018-08-07 10:31:38', '2018-08-07 16:31:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Galería', 'galeria', 'publish', 'closed', 'closed', '', 'group_5b69c932354ca', '', '', '2018-08-07 16:46:23', '2018-08-07 22:46:23', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field-group&#038;p=20', 4, 'acf-field-group', '', 0),
(21, 1, '2018-08-07 10:31:38', '2018-08-07 16:31:38', 'a:16:{s:4:\"type\";s:7:\"gallery\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"insert\";s:7:\"prepend\";s:7:\"library\";s:10:\"uploadedTo\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:7;s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";i:1000;s:10:\"mime_types\";s:4:\".jpg\";}', 'Galería', 'galeria', 'publish', 'closed', 'closed', '', 'field_5b69c938accc6', '', '', '2018-08-07 10:31:38', '2018-08-07 16:31:38', '', 20, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 1, '2018-08-07 10:32:46', '2018-08-07 16:32:46', '', 'gaby-bancopel-sorteo-efectivo', '', 'inherit', 'open', 'closed', '', 'gaby-bancopel-sorteo-efectivo', '', '', '2018-08-07 10:32:46', '2018-08-07 16:32:46', '', 1, 'http://localhost/bancoppel/sorteoefectivo/wp-content/uploads/2018/08/gaby-bancopel-sorteo-efectivo.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-08-07 10:32:47', '2018-08-07 16:32:47', '', 'samuel-bancoppel-sorteo-efectivo', '', 'inherit', 'open', 'closed', '', 'samuel-bancoppel-sorteo-efectivo', '', '', '2018-08-07 10:32:47', '2018-08-07 16:32:47', '', 1, 'http://localhost/bancoppel/sorteoefectivo/wp-content/uploads/2018/08/samuel-bancoppel-sorteo-efectivo.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-08-07 10:32:48', '2018-08-07 16:32:48', '', 'amanda-bancoppel-sorteo-efectivo', '', 'inherit', 'open', 'closed', '', 'amanda-bancoppel-sorteo-efectivo', '', '', '2018-08-07 10:32:48', '2018-08-07 16:32:48', '', 1, 'http://localhost/bancoppel/sorteoefectivo/wp-content/uploads/2018/08/amanda-bancoppel-sorteo-efectivo.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-08-07 10:34:28', '2018-08-07 16:34:28', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Samuel Hernández', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-07 10:34:28', '2018-08-07 16:34:28', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/1-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-08-07 10:35:16', '2018-08-07 16:35:16', '', 'Amanda Ruíz', '', 'publish', 'closed', 'closed', '', 'amanda-ruiz', '', '', '2018-08-07 10:35:16', '2018-08-07 16:35:16', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?p=26', 0, 'post', '', 0),
(27, 1, '2018-08-07 10:35:16', '2018-08-07 16:35:16', '', 'Amanda Ruíz', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2018-08-07 10:35:16', '2018-08-07 16:35:16', '', 26, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-08-07 10:36:01', '2018-08-07 16:36:01', '', 'Gaby Simbrón', '', 'publish', 'closed', 'closed', '', 'gaby-simbron', '', '', '2018-08-08 14:52:51', '2018-08-08 20:52:51', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?p=28', 0, 'post', '', 0),
(29, 1, '2018-08-07 10:36:01', '2018-08-07 16:36:01', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-07 10:36:01', '2018-08-07 16:36:01', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-08-07 15:12:27', '2018-08-07 21:12:27', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:10:\"icon-large\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Thumbnail de video', 'video_thumbnail', 'publish', 'closed', 'closed', '', 'field_5b6a0b25b771d', '', '', '2018-08-07 15:13:06', '2018-08-07 21:13:06', '', 11, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&#038;p=30', 3, 'acf-field', '', 0),
(31, 1, '2018-08-07 15:12:51', '2018-08-07 21:12:51', '', 'samuel-hernandez-video-thumb', '', 'inherit', 'open', 'closed', '', 'samuel-hernandez-video-thumb', '', '', '2018-08-07 15:13:39', '2018-08-07 21:13:39', '', 28, 'http://localhost/bancoppel/sorteoefectivo/wp-content/uploads/2018/08/samuel-hernandez-video-thumb.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-08-07 15:13:11', '2018-08-07 21:13:11', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-07 15:13:11', '2018-08-07 21:13:11', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/28-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-08-07 15:13:40', '2018-08-07 21:13:40', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Samuel Hernández', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-07 15:13:40', '2018-08-07 21:13:40', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/1-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-08-07 15:23:58', '2018-08-07 21:23:58', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-07 15:23:58', '2018-08-07 21:23:58', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/28-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-08-07 16:09:41', '2018-08-07 22:09:41', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-07 16:09:41', '2018-08-07 22:09:41', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/28-revision-v1/', 0, 'revision', '', 0),
(36, 1, '2018-08-07 16:10:46', '2018-08-07 22:10:46', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Samuel Hernández', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-07 16:10:46', '2018-08-07 22:10:46', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/1-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2018-08-07 16:30:18', '2018-08-07 22:30:18', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-07 16:30:18', '2018-08-07 22:30:18', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/28-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2018-08-07 16:44:55', '2018-08-07 22:44:55', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Quote', 'quote', 'publish', 'closed', 'closed', '', 'group_5b6a20a4c07d5', '', '', '2018-08-07 16:45:39', '2018-08-07 22:45:39', '', 0, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field-group&#038;p=38', 3, 'acf-field-group', '', 0),
(39, 1, '2018-08-07 16:44:55', '2018-08-07 22:44:55', 'a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:6:\"visual\";s:7:\"toolbar\";s:5:\"basic\";s:12:\"media_upload\";i:0;s:5:\"delay\";i:0;}', 'Quote', 'quote', 'publish', 'closed', 'closed', '', 'field_5b6a20a901528', '', '', '2018-08-07 16:44:55', '2018-08-07 22:44:55', '', 38, 'http://localhost/bancoppel/sorteoefectivo/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 1, '2018-08-07 16:45:15', '2018-08-07 22:45:15', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Samuel Hernández', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-07 16:45:15', '2018-08-07 22:45:15', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/1-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2018-08-07 16:45:29', '2018-08-07 22:45:29', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-07 16:45:29', '2018-08-07 22:45:29', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/28-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2018-08-07 16:46:44', '2018-08-07 22:46:44', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Samuel Hernández', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-07 16:46:44', '2018-08-07 22:46:44', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/07/1-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2018-08-08 14:01:32', '2018-08-08 20:01:32', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Samuel Hernández', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-08 14:01:32', '2018-08-08 20:01:32', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/08/1-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-08-08 14:02:01', '2018-08-08 20:02:01', 'Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡y comienza a publicar!.', 'Samuel Hernández', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-08 14:02:01', '2018-08-08 20:02:01', '', 1, 'http://localhost/bancoppel/sorteoefectivo/2018/08/08/1-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-08-08 14:05:33', '2018-08-08 20:05:33', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-08 14:05:33', '2018-08-08 20:05:33', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/08/28-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2018-08-08 14:09:42', '2018-08-08 20:09:42', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-08 14:09:42', '2018-08-08 20:09:42', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/08/28-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2018-08-08 14:52:51', '2018-08-08 20:52:51', '', 'Gaby Simbrón', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-08 14:52:51', '2018-08-08 20:52:51', '', 28, 'http://localhost/bancoppel/sorteoefectivo/2018/08/08/28-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_termmeta`
--

DROP TABLE IF EXISTS `bncstvx_termmeta`;
CREATE TABLE IF NOT EXISTS `bncstvx_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_terms`
--

DROP TABLE IF EXISTS `bncstvx_terms`;
CREATE TABLE IF NOT EXISTS `bncstvx_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_terms`
--

INSERT INTO `bncstvx_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_term_relationships`
--

DROP TABLE IF EXISTS `bncstvx_term_relationships`;
CREATE TABLE IF NOT EXISTS `bncstvx_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_term_relationships`
--

INSERT INTO `bncstvx_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 1, 0),
(26, 1, 0),
(28, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_term_taxonomy`
--

DROP TABLE IF EXISTS `bncstvx_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `bncstvx_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_term_taxonomy`
--

INSERT INTO `bncstvx_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_usermeta`
--

DROP TABLE IF EXISTS `bncstvx_usermeta`;
CREATE TABLE IF NOT EXISTS `bncstvx_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_usermeta`
--

INSERT INTO `bncstvx_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'hrtzt'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'bncstvx_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'bncstvx_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ecde3a04e352510fc58e5b6e096bba8f1ad853f64c605d6d96267a2f5f8e770f\";a:4:{s:10:\"expiration\";i:1534783125;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1533573525;}}'),
(17, 1, 'bncstvx_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'bncstvx_user-settings', 'libraryContent=browse'),
(19, 1, 'bncstvx_user-settings-time', '1533649271'),
(20, 1, 'acf_user_settings', 'a:0:{}'),
(21, 1, 'closedpostboxes_post', 'a:0:{}'),
(22, 1, 'metaboxhidden_post', 'a:6:{i:0;s:11:\"categorydiv\";i:1;s:16:\"tagsdiv-post_tag\";i:2;s:7:\"slugdiv\";i:3;s:6:\"seodiv\";i:4;s:10:\"wk-codediv\";i:5;s:12:\"wk_scriptdiv\";}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bncstvx_users`
--

DROP TABLE IF EXISTS `bncstvx_users`;
CREATE TABLE IF NOT EXISTS `bncstvx_users` (
  `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `bncstvx_users`
--

INSERT INTO `bncstvx_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'hrtzt', '$P$B/3EnTkAuoyhaq/lHheun0OpbyNlw6/', 'hrtzt', 'alberto@alumin.agency', '', '2018-08-06 16:38:40', '', 0, 'hrtzt');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
