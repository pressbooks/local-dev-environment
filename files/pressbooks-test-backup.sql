-- MySQL dump 10.19  Distrib 10.2.37-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: pressbooks_test_development
-- ------------------------------------------------------
-- Server version	10.2.37-MariaDB-1:10.2.37+maria~bionic

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_blogmeta`
--

DROP TABLE IF EXISTS `wp_blogmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blogmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `blog_id` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blogmeta`
--

LOCK TABLES `wp_blogmeta` WRITE;
/*!40000 ALTER TABLE `wp_blogmeta` DISABLE KEYS */;
INSERT INTO `wp_blogmeta` VALUES (1,1,'pb_book_information_array','a:3:{s:8:\"pb_title\";s:15:\"pressbooks.test\";s:10:\"pb_authors\";s:5:\"admin\";s:14:\"pb_cover_image\";s:87:\"http://pressbooks.test/app/plugins/pressbooks/assets/dist/images/default-book-cover.jpg\";}'),(2,1,'pb_cover_image','http://pressbooks.test/app/plugins/pressbooks/assets/dist/images/default-book-cover.jpg'),(3,1,'pb_title','pressbooks.test'),(4,1,'pb_last_edited','2021-04-22 14:03:56'),(5,1,'pb_created','2021-04-22 14:03:49'),(6,1,'pb_deactivated','0'),(7,1,'pb_word_count','0'),(8,1,'pb_total_authors','1'),(9,1,'pb_total_readers','0'),(10,1,'pb_storage_size','7082'),(11,1,'pb_language','en'),(12,1,'pb_subject',NULL),(13,1,'pb_theme','Aldine'),(14,1,'pb_book_license','all-rights-reserved'),(15,1,'pb_is_public','1'),(16,1,'pb_in_catalog','0'),(17,1,'pb_is_clone','0'),(18,1,'pb_total_revisions','5'),(19,1,'pb_last_export',NULL),(20,1,'pb_latest_files_public','0'),(21,1,'pb_exports_by_format',''),(22,1,'pb_has_exports','0'),(23,1,'pb_akismet_activated','0'),(24,1,'pb_parsedown_party_activated','0'),(25,1,'pb_wp_quick_latex_activated','0'),(26,1,'pb_glossary_terms','0'),(27,1,'pb_h5p_activities','0'),(28,1,'pb_tablepress_tables','0'),(29,1,'pb_admin_url','https://pressbooks.test/wp/wp-admin/upload.php'),(30,1,'pb_book_url','https://pressbooks.test'),(31,1,'pb_book_sync_timestamp','2021-04-22 14:03:56');
/*!40000 ALTER TABLE `wp_blogmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_blogs`
--

DROP TABLE IF EXISTS `wp_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_blogs` (
  `blog_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT 0,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `public` tinyint(2) NOT NULL DEFAULT 1,
  `archived` tinyint(2) NOT NULL DEFAULT 0,
  `mature` tinyint(2) NOT NULL DEFAULT 0,
  `spam` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` tinyint(2) NOT NULL DEFAULT 0,
  `lang_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`blog_id`),
  KEY `domain` (`domain`(50),`path`(5)),
  KEY `lang_id` (`lang_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_blogs`
--

LOCK TABLES `wp_blogs` WRITE;
/*!40000 ALTER TABLE `wp_blogs` DISABLE KEYS */;
INSERT INTO `wp_blogs` VALUES (1,1,'pressbooks.test','/','2021-04-22 14:03:49','2021-04-22 14:03:56',1,0,0,0,0,0);
/*!40000 ALTER TABLE `wp_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://pressbooks.test/wp','yes'),(2,'home','https://pressbooks.test/wp','yes'),(3,'blogname','pressbooks.test','yes'),(4,'blogdescription','Simple Book Publishing','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','ops@pressbooks.test','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/blog/%postname%/','yes'),(29,'rewrite_rules','a:232:{s:31:\"^catalog/([A-Za-z0-9@\\.\\-\\_]+)$\";s:57:\"index.php?pagename=pb_catalog&pb_catalog_user=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:10:\"chapter/?$\";s:27:\"index.php?post_type=chapter\";s:52:\"chapter/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:44:\"index.php?post_type=chapter&feed=$matches[1]\";s:47:\"chapter/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:44:\"index.php?post_type=chapter&feed=$matches[1]\";s:27:\"chapter/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=chapter&paged=$matches[1]\";s:7:\"part/?$\";s:24:\"index.php?post_type=part\";s:49:\"part/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:41:\"index.php?post_type=part&feed=$matches[1]\";s:44:\"part/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:41:\"index.php?post_type=part&feed=$matches[1]\";s:24:\"part/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=part&paged=$matches[1]\";s:15:\"front-matter/?$\";s:32:\"index.php?post_type=front-matter\";s:57:\"front-matter/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?post_type=front-matter&feed=$matches[1]\";s:52:\"front-matter/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?post_type=front-matter&feed=$matches[1]\";s:32:\"front-matter/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=front-matter&paged=$matches[1]\";s:14:\"back-matter/?$\";s:31:\"index.php?post_type=back-matter\";s:56:\"back-matter/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:48:\"index.php?post_type=back-matter&feed=$matches[1]\";s:51:\"back-matter/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:48:\"index.php?post_type=back-matter&feed=$matches[1]\";s:31:\"back-matter/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=back-matter&paged=$matches[1]\";s:64:\"blog/category/(.+?)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:59:\"blog/category/(.+?)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:28:\"blog/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:40:\"blog/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:22:\"blog/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:61:\"blog/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:56:\"blog/tag/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:25:\"blog/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:37:\"blog/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:19:\"blog/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:62:\"blog/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:57:\"blog/type/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:26:\"blog/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:38:\"blog/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:20:\"blog/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"chapter/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"chapter/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"chapter/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"chapter/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"chapter/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"chapter/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"chapter/([^/]+)/embed/?$\";s:40:\"index.php?chapter=$matches[1]&embed=true\";s:28:\"chapter/([^/]+)/trackback/?$\";s:34:\"index.php?chapter=$matches[1]&tb=1\";s:60:\"chapter/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:46:\"index.php?chapter=$matches[1]&feed=$matches[2]\";s:55:\"chapter/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:46:\"index.php?chapter=$matches[1]&feed=$matches[2]\";s:36:\"chapter/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?chapter=$matches[1]&paged=$matches[2]\";s:43:\"chapter/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?chapter=$matches[1]&cpage=$matches[2]\";s:32:\"chapter/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?chapter=$matches[1]&page=$matches[2]\";s:24:\"chapter/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"chapter/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"chapter/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"chapter/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"chapter/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"chapter/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"part/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"part/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"part/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"part/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"part/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"part/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:19:\"part/(.+?)/embed/?$\";s:37:\"index.php?part=$matches[1]&embed=true\";s:23:\"part/(.+?)/trackback/?$\";s:31:\"index.php?part=$matches[1]&tb=1\";s:55:\"part/(.+?)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:43:\"index.php?part=$matches[1]&feed=$matches[2]\";s:50:\"part/(.+?)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:43:\"index.php?part=$matches[1]&feed=$matches[2]\";s:31:\"part/(.+?)/page/?([0-9]{1,})/?$\";s:44:\"index.php?part=$matches[1]&paged=$matches[2]\";s:38:\"part/(.+?)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?part=$matches[1]&cpage=$matches[2]\";s:27:\"part/(.+?)(?:/([0-9]+))?/?$\";s:43:\"index.php?part=$matches[1]&page=$matches[2]\";s:40:\"front-matter/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"front-matter/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:82:\"front-matter/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:77:\"front-matter/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"front-matter/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"front-matter/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"front-matter/([^/]+)/embed/?$\";s:45:\"index.php?front-matter=$matches[1]&embed=true\";s:33:\"front-matter/([^/]+)/trackback/?$\";s:39:\"index.php?front-matter=$matches[1]&tb=1\";s:65:\"front-matter/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:51:\"index.php?front-matter=$matches[1]&feed=$matches[2]\";s:60:\"front-matter/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:51:\"index.php?front-matter=$matches[1]&feed=$matches[2]\";s:41:\"front-matter/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?front-matter=$matches[1]&paged=$matches[2]\";s:48:\"front-matter/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?front-matter=$matches[1]&cpage=$matches[2]\";s:37:\"front-matter/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?front-matter=$matches[1]&page=$matches[2]\";s:29:\"front-matter/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"front-matter/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"front-matter/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"front-matter/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"front-matter/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"front-matter/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"back-matter/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"back-matter/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:81:\"back-matter/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:76:\"back-matter/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"back-matter/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"back-matter/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"back-matter/([^/]+)/embed/?$\";s:44:\"index.php?back-matter=$matches[1]&embed=true\";s:32:\"back-matter/([^/]+)/trackback/?$\";s:38:\"index.php?back-matter=$matches[1]&tb=1\";s:64:\"back-matter/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:50:\"index.php?back-matter=$matches[1]&feed=$matches[2]\";s:59:\"back-matter/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:50:\"index.php?back-matter=$matches[1]&feed=$matches[2]\";s:40:\"back-matter/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?back-matter=$matches[1]&paged=$matches[2]\";s:47:\"back-matter/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?back-matter=$matches[1]&cpage=$matches[2]\";s:36:\"back-matter/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?back-matter=$matches[1]&page=$matches[2]\";s:28:\"back-matter/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"back-matter/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"back-matter/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"back-matter/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"back-matter/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"back-matter/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"glossary/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"glossary/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:78:\"glossary/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:73:\"glossary/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"glossary/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"glossary/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"glossary/([^/]+)/embed/?$\";s:41:\"index.php?glossary=$matches[1]&embed=true\";s:29:\"glossary/([^/]+)/trackback/?$\";s:35:\"index.php?glossary=$matches[1]&tb=1\";s:37:\"glossary/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?glossary=$matches[1]&paged=$matches[2]\";s:44:\"glossary/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?glossary=$matches[1]&cpage=$matches[2]\";s:33:\"glossary/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?glossary=$matches[1]&page=$matches[2]\";s:25:\"glossary/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"glossary/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"glossary/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"glossary/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"glossary/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"glossary/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:71:\"front-matter-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:56:\"index.php?front-matter-type=$matches[1]&feed=$matches[2]\";s:66:\"front-matter-types/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:56:\"index.php?front-matter-type=$matches[1]&feed=$matches[2]\";s:35:\"front-matter-types/([^/]+)/embed/?$\";s:50:\"index.php?front-matter-type=$matches[1]&embed=true\";s:47:\"front-matter-types/([^/]+)/page/?([0-9]{1,})/?$\";s:57:\"index.php?front-matter-type=$matches[1]&paged=$matches[2]\";s:29:\"front-matter-types/([^/]+)/?$\";s:39:\"index.php?front-matter-type=$matches[1]\";s:70:\"back-matter-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:55:\"index.php?back-matter-type=$matches[1]&feed=$matches[2]\";s:65:\"back-matter-types/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:55:\"index.php?back-matter-type=$matches[1]&feed=$matches[2]\";s:34:\"back-matter-types/([^/]+)/embed/?$\";s:49:\"index.php?back-matter-type=$matches[1]&embed=true\";s:46:\"back-matter-types/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?back-matter-type=$matches[1]&paged=$matches[2]\";s:28:\"back-matter-types/([^/]+)/?$\";s:38:\"index.php?back-matter-type=$matches[1]\";s:66:\"chapter-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:51:\"index.php?chapter-type=$matches[1]&feed=$matches[2]\";s:61:\"chapter-types/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:51:\"index.php?chapter-type=$matches[1]&feed=$matches[2]\";s:30:\"chapter-types/([^/]+)/embed/?$\";s:45:\"index.php?chapter-type=$matches[1]&embed=true\";s:42:\"chapter-types/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?chapter-type=$matches[1]&paged=$matches[2]\";s:24:\"chapter-types/([^/]+)/?$\";s:34:\"index.php?chapter-type=$matches[1]\";s:65:\"contributors/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:50:\"index.php?contributor=$matches[1]&feed=$matches[2]\";s:60:\"contributors/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:50:\"index.php?contributor=$matches[1]&feed=$matches[2]\";s:29:\"contributors/([^/]+)/embed/?$\";s:44:\"index.php?contributor=$matches[1]&embed=true\";s:41:\"contributors/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?contributor=$matches[1]&paged=$matches[2]\";s:23:\"contributors/([^/]+)/?$\";s:33:\"index.php?contributor=$matches[1]\";s:61:\"licenses/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:46:\"index.php?license=$matches[1]&feed=$matches[2]\";s:56:\"licenses/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:46:\"index.php?license=$matches[1]&feed=$matches[2]\";s:25:\"licenses/([^/]+)/embed/?$\";s:40:\"index.php?license=$matches[1]&embed=true\";s:37:\"licenses/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?license=$matches[1]&paged=$matches[2]\";s:19:\"licenses/([^/]+)/?$\";s:29:\"index.php?license=$matches[1]\";s:67:\"glossary-types/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:52:\"index.php?glossary-type=$matches[1]&feed=$matches[2]\";s:62:\"glossary-types/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:52:\"index.php?glossary-type=$matches[1]&feed=$matches[2]\";s:31:\"glossary-types/([^/]+)/embed/?$\";s:46:\"index.php?glossary-type=$matches[1]&embed=true\";s:43:\"glossary-types/([^/]+)/page/?([0-9]{1,})/?$\";s:53:\"index.php?glossary-type=$matches[1]&paged=$matches[2]\";s:25:\"glossary-types/([^/]+)/?$\";s:35:\"index.php?glossary-type=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:16:\".*wp-signup.php$\";s:21:\"index.php?signup=true\";s:18:\".*wp-activate.php$\";s:23:\"index.php?activate=true\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:44:\"feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:39:\"(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:17:\"format(/(.*))?/?$\";s:29:\"index.php?&format=$matches[2]\";s:15:\"open(/(.*))?/?$\";s:27:\"index.php?&open=$matches[2]\";s:53:\"comments/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:48:\"comments/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:56:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:51:\"search/(.+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:64:\"blog/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:59:\"blog/author/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:28:\"blog/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:40:\"blog/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:22:\"blog/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:86:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:81:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:50:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:62:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:44:\"blog/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:73:\"blog/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:68:\"blog/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:37:\"blog/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:49:\"blog/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:31:\"blog/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:60:\"blog/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:55:\"blog/([0-9]{4})/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:24:\"blog/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:36:\"blog/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:18:\"blog/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:52:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:47:\"(.?.+?)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:32:\"blog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"blog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"blog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blog/([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:25:\"blog/([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:57:\"blog/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:52:\"blog/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:33:\"blog/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:40:\"blog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:29:\"blog/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:21:\"blog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"blog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"blog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"blog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom|sitemap.xml)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"blog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:0:{}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(40,'template','pressbooks-aldine','yes'),(41,'stylesheet','pressbooks-aldine','yes'),(42,'comment_registration','0','yes'),(43,'html_type','text/html','yes'),(44,'use_trackback','0','yes'),(45,'default_role','subscriber','yes'),(46,'db_version','49752','yes'),(47,'uploads_use_yearmonth_folders','1','yes'),(48,'upload_path','','yes'),(49,'blog_public','1','yes'),(50,'default_link_category','2','yes'),(51,'show_on_front','page','yes'),(52,'tag_base','','yes'),(53,'show_avatars','1','yes'),(54,'avatar_rating','G','yes'),(55,'upload_url_path','','yes'),(56,'thumbnail_size_w','150','yes'),(57,'thumbnail_size_h','150','yes'),(58,'thumbnail_crop','1','yes'),(59,'medium_size_w','300','yes'),(60,'medium_size_h','300','yes'),(61,'avatar_default','mystery','yes'),(62,'large_size_w','1024','yes'),(63,'large_size_h','1024','yes'),(64,'image_default_link_type','none','yes'),(65,'image_default_size','','yes'),(66,'image_default_align','','yes'),(67,'close_comments_for_old_posts','0','yes'),(68,'close_comments_days_old','14','yes'),(69,'thread_comments','1','yes'),(70,'thread_comments_depth','5','yes'),(71,'page_comments','0','yes'),(72,'comments_per_page','50','yes'),(73,'default_comments_page','newest','yes'),(74,'comment_order','asc','yes'),(75,'sticky_posts','a:0:{}','yes'),(76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(77,'widget_text','a:0:{}','yes'),(78,'widget_rss','a:0:{}','yes'),(79,'uninstall_plugins','a:0:{}','no'),(80,'timezone_string','','yes'),(81,'page_for_posts','0','yes'),(82,'page_on_front','6','yes'),(83,'default_post_format','0','yes'),(84,'link_manager_enabled','0','yes'),(85,'finished_splitting_shared_terms','1','yes'),(86,'site_icon','0','yes'),(87,'medium_large_size_w','768','yes'),(88,'medium_large_size_h','0','yes'),(89,'wp_page_for_privacy_policy','0','yes'),(90,'show_comments_cookies_opt_in','1','yes'),(91,'admin_email_lifespan','1634652228','yes'),(92,'disallowed_keys','','no'),(93,'comment_previously_approved','1','yes'),(94,'auto_plugin_theme_update_emails','a:0:{}','no'),(95,'auto_update_core_dev','enabled','yes'),(96,'auto_update_core_minor','enabled','yes'),(97,'auto_update_core_major','enabled','yes'),(98,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(99,'fresh_site','0','yes'),(100,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(102,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(103,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(106,'cron','a:6:{i:1620671157;a:4:{s:26:\"rediscache_discard_metrics\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"update_network_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1620671217;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1620698631;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1620705831;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1621001030;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes'),(107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(116,'theme_mods_twentytwentyone','a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1619100233;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes'),(117,'current_theme','Aldine','yes'),(118,'theme_switched','','yes'),(119,'pressbooks_theme_migration','5','yes'),(120,'pressbooks_buckram_version','1.5.0','yes'),(121,'pressbooks_theme_version','1.9.1','yes'),(122,'theme_mods_pressbooks-aldine','a:2:{s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}','yes'),(123,'post_count','1','yes'),(124,'pb_aldine_activated','1','yes'),(125,'pressbooks_flusher','3','yes'),(126,'pressbooks_cg_options','a:0:{}','yes');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (2,7,'_menu_item_type','post_type'),(3,7,'_menu_item_menu_item_parent','0'),(4,7,'_menu_item_object_id','5'),(5,7,'_menu_item_object','page'),(6,7,'_menu_item_target',''),(7,7,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(8,7,'_menu_item_xfn',''),(9,7,'_menu_item_url',''),(10,8,'_menu_item_type','post_type'),(11,8,'_menu_item_menu_item_parent','0'),(12,8,'_menu_item_object_id','3'),(13,8,'_menu_item_object','page'),(14,8,'_menu_item_target',''),(15,8,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(16,8,'_menu_item_xfn',''),(17,8,'_menu_item_url',''),(18,9,'_menu_item_type','post_type'),(19,9,'_menu_item_menu_item_parent','0'),(20,9,'_menu_item_object_id','5'),(21,9,'_menu_item_object','page'),(22,9,'_menu_item_target',''),(23,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(24,9,'_menu_item_xfn',''),(25,9,'_menu_item_url',''),(26,10,'_menu_item_type','post_type'),(27,10,'_menu_item_menu_item_parent','0'),(28,10,'_menu_item_object_id','4'),(29,10,'_menu_item_object','page'),(30,10,'_menu_item_target',''),(31,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(32,10,'_menu_item_xfn',''),(33,10,'_menu_item_url','');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (3,0,'2021-04-22 14:03:55','2021-04-22 14:03:55','<p>Pressbooks is simple book production software. You can use Pressbooks to publish textbooks, scholarly monographs, syllabi, fiction and non-fiction books, white papers, and more in multiple formats including:</p><ul><li>MOBI (for Kindle ebooks)</li><li>EPUB (for all other ebookstores)</li><li>designed PDF (for print-on-demand and digital distribution)</li></ul><p>Pressbooks is used by educational institutions around the world as well as authors and publishers.</p><p>For more information about Pressbooks, <a href=\"https://pressbooks.com/about\">see here</a>.</p>','About','','publish','closed','closed','','about','','','2021-04-22 14:03:55','2021-04-22 14:03:55','',0,'https://pressbooks.test/about/',0,'page','',0),(4,0,'2021-04-22 14:03:55','2021-04-22 14:03:55','<p>The easiest way to get started with Pressbooks is to follow our <a href=\"https://pressbooks.com/how-to-make-a-book-with-pressbooks\">4 Step Guide to Making a Book on Pressbooks</a>. Or, you can review our <a href=\"https://guide.pressbooks.com/\">Guide to Using Pressbooks</a>.</p><p>If you require further assistance, please contact your network manager.</p>','Help','','publish','closed','closed','','help','','','2021-04-22 14:03:55','2021-04-22 14:03:55','',0,'https://pressbooks.test/help/',0,'page','',0),(5,0,'2021-04-22 14:03:55','2021-04-22 14:03:55','','Catalog','','publish','closed','closed','','catalog','','','2021-04-22 14:03:55','2021-04-22 14:03:55','',0,'https://pressbooks.test/catalog/',0,'page','',0),(6,0,'2021-04-22 14:03:55','2021-04-22 14:03:55','[aldine_page_section title=\"About Pressbooks\"]<p>Pressbooks is easy-to-use book writing software that lets you create a book in all the formats you need to publish.</p><p>[aldine_call_to_action link=\"/about\" text=\"Learn More\"]</p>[/aldine_page_section]','Home','','publish','closed','closed','','home','','','2021-04-22 14:03:55','2021-04-22 14:03:55','',0,'https://pressbooks.test/home/',0,'page','',0),(7,0,'2021-04-22 14:03:56','2021-04-22 14:03:56',' ','','','publish','closed','closed','','7','','','2021-04-22 14:03:56','2021-04-22 14:03:56','',0,'https://pressbooks.test/blog/7/',0,'nav_menu_item','',0),(8,0,'2021-04-22 14:03:56','2021-04-22 14:03:56',' ','','','publish','closed','closed','','8','','','2021-04-22 14:03:56','2021-04-22 14:03:56','',0,'https://pressbooks.test/blog/8/',0,'nav_menu_item','',0),(9,0,'2021-04-22 14:03:56','2021-04-22 14:03:56',' ','','','publish','closed','closed','','9','','','2021-04-22 14:03:56','2021-04-22 14:03:56','',0,'https://pressbooks.test/blog/9/',2,'nav_menu_item','',0),(10,0,'2021-04-22 14:03:56','2021-04-22 14:03:56',' ','','','publish','closed','closed','','10','','','2021-04-22 14:03:56','2021-04-22 14:03:56','',0,'https://pressbooks.test/blog/10/',3,'nav_menu_item','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pressbooks__catalog__tags`
--

DROP TABLE IF EXISTS `wp_pressbooks__catalog__tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_pressbooks__catalog__tags` (
  `users_id` int(11) NOT NULL,
  `blogs_id` int(11) NOT NULL,
  `tags_id` int(11) NOT NULL,
  `tags_group` int(3) NOT NULL,
  PRIMARY KEY (`users_id`,`blogs_id`,`tags_id`,`tags_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pressbooks__catalog__tags`
--

LOCK TABLES `wp_pressbooks__catalog__tags` WRITE;
/*!40000 ALTER TABLE `wp_pressbooks__catalog__tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pressbooks__catalog__tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pressbooks_catalog`
--

DROP TABLE IF EXISTS `wp_pressbooks_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_pressbooks_catalog` (
  `users_id` int(11) NOT NULL,
  `blogs_id` int(11) NOT NULL,
  `deleted` tinyint(1) NOT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`users_id`,`blogs_id`),
  KEY `featured` (`featured`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pressbooks_catalog`
--

LOCK TABLES `wp_pressbooks_catalog` WRITE;
/*!40000 ALTER TABLE `wp_pressbooks_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pressbooks_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_pressbooks_tags`
--

DROP TABLE IF EXISTS `wp_pressbooks_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_pressbooks_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `tag` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`tag`(191))
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_pressbooks_tags`
--

LOCK TABLES `wp_pressbooks_tags` WRITE;
/*!40000 ALTER TABLE `wp_pressbooks_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_pressbooks_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_registration_log`
--

DROP TABLE IF EXISTS `wp_registration_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_registration_log` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `IP` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `date_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`ID`),
  KEY `IP` (`IP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_registration_log`
--

LOCK TABLES `wp_registration_log` WRITE;
/*!40000 ALTER TABLE `wp_registration_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_registration_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_signups`
--

DROP TABLE IF EXISTS `wp_signups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_signups`
--

LOCK TABLES `wp_signups` WRITE;
/*!40000 ALTER TABLE `wp_signups` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_signups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_site`
--

DROP TABLE IF EXISTS `wp_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_site` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `domain` (`domain`(140),`path`(51))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_site`
--

LOCK TABLES `wp_site` WRITE;
/*!40000 ALTER TABLE `wp_site` DISABLE KEYS */;
INSERT INTO `wp_site` VALUES (1,'pressbooks.test','/');
/*!40000 ALTER TABLE `wp_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sitemeta`
--

DROP TABLE IF EXISTS `wp_sitemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_sitemeta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `site_id` (`site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sitemeta`
--

LOCK TABLES `wp_sitemeta` WRITE;
/*!40000 ALTER TABLE `wp_sitemeta` DISABLE KEYS */;
INSERT INTO `wp_sitemeta` VALUES (1,1,'user_count','1'),(2,1,'site_name','Pressbooks'),(3,1,'admin_email','ops@pressbooks.test'),(4,1,'admin_user_id','1'),(5,1,'registration','blog'),(6,1,'upload_filetypes','jpg jpeg png gif mov avi mpg 3gp 3g2 midi mid pdf doc ppt odt pptx docx pps ppsx xls xlsx key mp3 ogg flac m4a wav mp4 m4v webm ogv flv'),(7,1,'blog_upload_space','100'),(8,1,'fileupload_maxk','1500'),(10,1,'allowedthemes','a:6:{s:15:\"twentytwentyone\";b:1;s:17:\"pressbooks-aldine\";b:1;s:15:\"pressbooks-book\";b:1;s:17:\"pressbooks-clarke\";b:1;s:17:\"pressbooks-donham\";b:1;s:17:\"pressbooks-jacobs\";b:1;}'),(11,1,'illegal_names','a:9:{i:0;s:3:\"www\";i:1;s:3:\"web\";i:2;s:4:\"root\";i:3;s:5:\"admin\";i:4;s:4:\"main\";i:5;s:6:\"invite\";i:6;s:13:\"administrator\";i:7;s:5:\"files\";i:8;s:4:\"blog\";}'),(12,1,'wpmu_upgrade_site','49752'),(13,1,'welcome_email','Howdy USERNAME,\n\nYour new SITE_NAME site has been successfully set up at:\nBLOG_URL\n\nYou can log in to the administrator account with the following information:\n\nUsername: USERNAME\nPassword: PASSWORD\nLog in here: BLOG_URLwp-login.php\n\nWe hope you enjoy your new site. Thanks!\n\n--The Team @ SITE_NAME'),(14,1,'first_post','Welcome to %s. This is your first post. Edit or delete it, then start writing!'),(15,1,'siteurl','https://pressbooks.test/wp/'),(16,1,'add_new_users','0'),(18,1,'subdomain_install',''),(19,1,'global_terms_enabled','0'),(20,1,'ms_files_rewriting',''),(21,1,'initial_db_version',''),(22,1,'active_sitewide_plugins','a:2:{s:25:\"pressbooks/pressbooks.php\";i:1619100233;s:27:\"redis-cache/redis-cache.php\";i:1619100237;}'),(23,1,'WPLANG','en_US'),(24,1,'upload_space_check_disabled','1'),(25,1,'site_admins','a:1:{i:0;s:5:\"admin\";}'),(26,1,'bedrock_autoloader','a:2:{s:7:\"plugins\";a:1:{s:43:\"multisite-url-fixer/multisite-url-fixer.php\";a:13:{s:4:\"Name\";s:19:\"Multisite URL Fixer\";s:9:\"PluginURI\";s:44:\"https://github.com/roots/multisite-url-fixer\";s:7:\"Version\";s:5:\"1.0.0\";s:11:\"Description\";s:77:\"Fixes WordPress issues with home and site URL on multisite when using Bedrock\";s:6:\"Author\";s:5:\"Roots\";s:9:\"AuthorURI\";s:17:\"https://roots.io/\";s:10:\"TextDomain\";s:0:\"\";s:10:\"DomainPath\";s:0:\"\";s:7:\"Network\";b:0;s:10:\"RequiresWP\";s:0:\"\";s:11:\"RequiresPHP\";s:0:\"\";s:5:\"Title\";s:19:\"Multisite URL Fixer\";s:10:\"AuthorName\";s:5:\"Roots\";}}s:5:\"count\";i:1;}'),(27,1,'nonce_key','2=s%24l/]!JYvgJy>`jntoW?w$#@FR e]g!VnOR]6@S .|,wf}h3,@j,j$COOJ9@'),(28,1,'nonce_salt',']Mq[w2<;:xU~FW,BG&e%G,kz~E1batb<a,K<e~VE^%v!P`|@m<tZ{3dw-M`t$](C'),(29,1,'pressbooks-activated','1'),(30,1,'pressbooks_analytics_migration','1'),(31,1,'site_meta_supported','1'),(32,1,'pressbooks_catalog_version','3'),(33,1,'menu_items','a:1:{s:7:\"plugins\";s:1:\"1\";}'),(34,1,'secure_auth_key',':0?l4<bp>?jUsK8p~_d.soRw8qD9GLAev/Ni4*t,0KZ(/i(aSqP[eK7)[|&/S=@2'),(35,1,'secure_auth_salt','S:9%r+1@qtM_B,8pcSNw5&T%%F,dFHRN.g#U7|W0Zf0BkPk4=)F~1VTdDYS)M|e~'),(36,1,'logged_in_key','Ra:q*z^MrX<X`HwVP/l#%dxt(v}Ak|!4z-KD#}Ew%S4:2rFoKYO/:+FlgF^vmCe?'),(37,1,'logged_in_salt','nVpa0F+b[#8s.nyx2NMyS-UP8+?+dNL,/[6AL3 5[@/75c%0fZ~`tl<v8(32$;GF'),(38,1,'can_compress_scripts','0');
/*!40000 ALTER TABLE `wp_sitemeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (7,2,0),(8,3,0),(9,3,0),(10,3,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0),(2,2,'nav_menu','',0,1),(3,3,'nav_menu','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'Primary Menu','primary-menu',0),(3,'Footer Menu','footer-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'aim',''),(16,1,'yim',''),(17,1,'jabber',''),(18,1,'source_domain','pressbooks.test'),(19,1,'primary_blog','1'),(20,1,'session_tokens','a:1:{s:64:\"0b808a57b1b28589abff537ff1f7ef45c4f2af9b07a02a6724dfe6ec4b9f4712\";a:4:{s:10:\"expiration\";i:1620843952;s:2:\"ip\";s:12:\"192.168.50.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36\";s:5:\"login\";i:1620671152;}}'),(21,1,'pb_last_login','2021-05-10 18:25:52'),(22,1,'wp_user-settings','mfold=o&editor=tinymce&unfold=1&sites_list_mode=list'),(23,1,'wp_user-settings-time','1620671152');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `spam` tinyint(2) NOT NULL DEFAULT 0,
  `deleted` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin','$2y$10$iGjAVyA//0egYJqj5fFZfunFRGsEHOR30jG8fqU/d3.WJEii0QNUu','admin','ops@pressbooks.test','https://pressbooks.test/wp','2021-04-22 14:03:49','',0,'admin',0,0);
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-10 18:27:55
