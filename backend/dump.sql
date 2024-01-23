-- MariaDB dump 10.19  Distrib 10.11.4-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: casdoor
-- ------------------------------------------------------
-- Server version	10.11.4-MariaDB-1~deb12u1

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
-- Current Database: `casdoor`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `casdoor` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `casdoor`;

--
-- Table structure for table `adapter`
--

DROP TABLE IF EXISTS `adapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adapter` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `table` varchar(100) DEFAULT NULL,
  `use_same_db` tinyint(1) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `database_type` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `database` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adapter`
--

LOCK TABLES `adapter` WRITE;
/*!40000 ALTER TABLE `adapter` DISABLE KEYS */;
INSERT INTO `adapter` VALUES
('built-in','api-adapter-built-in','2024-01-22T14:02:36Z','casbin_api_rule',1,'','','',0,'','',''),
('built-in','user-adapter-built-in','2024-01-22T14:02:36Z','casbin_user_rule',1,'','','',0,'','','');
/*!40000 ALTER TABLE `adapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `application`
--

DROP TABLE IF EXISTS `application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `application` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `logo` varchar(200) DEFAULT NULL,
  `homepage_url` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `cert` varchar(100) DEFAULT NULL,
  `enable_password` tinyint(1) DEFAULT NULL,
  `enable_sign_up` tinyint(1) DEFAULT NULL,
  `enable_signin_session` tinyint(1) DEFAULT NULL,
  `enable_auto_signin` tinyint(1) DEFAULT NULL,
  `enable_code_signin` tinyint(1) DEFAULT NULL,
  `enable_saml_compress` tinyint(1) DEFAULT NULL,
  `enable_saml_c14n10` tinyint(1) DEFAULT NULL,
  `enable_web_authn` tinyint(1) DEFAULT NULL,
  `enable_link_with_email` tinyint(1) DEFAULT NULL,
  `org_choice_mode` varchar(255) DEFAULT NULL,
  `saml_reply_url` varchar(100) DEFAULT NULL,
  `providers` mediumtext DEFAULT NULL,
  `signin_methods` varchar(2000) DEFAULT NULL,
  `signup_items` varchar(2000) DEFAULT NULL,
  `grant_types` varchar(1000) DEFAULT NULL,
  `tags` mediumtext DEFAULT NULL,
  `saml_attributes` varchar(1000) DEFAULT NULL,
  `client_id` varchar(100) DEFAULT NULL,
  `client_secret` varchar(100) DEFAULT NULL,
  `redirect_uris` varchar(1000) DEFAULT NULL,
  `token_format` varchar(100) DEFAULT NULL,
  `token_fields` varchar(1000) DEFAULT NULL,
  `expire_in_hours` int(11) DEFAULT NULL,
  `refresh_expire_in_hours` int(11) DEFAULT NULL,
  `signup_url` varchar(200) DEFAULT NULL,
  `signin_url` varchar(200) DEFAULT NULL,
  `forget_url` varchar(200) DEFAULT NULL,
  `affiliation_url` varchar(100) DEFAULT NULL,
  `terms_of_use` varchar(100) DEFAULT NULL,
  `signup_html` mediumtext DEFAULT NULL,
  `signin_html` mediumtext DEFAULT NULL,
  `theme_data` text DEFAULT NULL,
  `form_css` text DEFAULT NULL,
  `form_css_mobile` text DEFAULT NULL,
  `form_offset` int(11) DEFAULT NULL,
  `form_side_html` mediumtext DEFAULT NULL,
  `form_background_url` varchar(200) DEFAULT NULL,
  `failed_signin_limit` int(11) DEFAULT NULL,
  `failed_signin_frozen_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `application`
--

LOCK TABLES `application` WRITE;
/*!40000 ALTER TABLE `application` DISABLE KEYS */;
INSERT INTO `application` VALUES
('admin','app-built-in','2024-01-22T14:02:33Z','Casdoor','https://cdn.casbin.org/img/casdoor-logo_1185x256.png','https://casdoor.org','','built-in','cert-built-in',1,1,0,0,0,0,0,0,0,'','','[{\"owner\":\"\",\"name\":\"provider_captcha_default\",\"canSignUp\":false,\"canSignIn\":false,\"canUnlink\":false,\"prompted\":false,\"signupGroup\":\"\",\"rule\":\"None\",\"provider\":null}]','[{\"name\":\"Password\",\"displayName\":\"Password\",\"rule\":\"All\"},{\"name\":\"Verification code\",\"displayName\":\"Verification code\",\"rule\":\"All\"},{\"name\":\"WebAuthn\",\"displayName\":\"WebAuthn\",\"rule\":\"None\"}]','[{\"name\":\"ID\",\"visible\":false,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"Random\"},{\"name\":\"Username\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Display name\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Password\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Confirm password\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Email\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"Normal\"},{\"name\":\"Phone\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Agreement\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"}]','null','[]','null','bfcc0fc593f58adea851','bcd560e8e317469917a924ca341b208e29eb9bc3','[]','','[]',168,0,'','','','','','','',NULL,'','',2,'','',0,0),
('admin','golmon_app','2024-01-22T15:04:54+01:00','Golmon','https://cdn.casbin.org/img/casdoor-logo_1185x256.png','http://localhost:5173/','','golmon','cert-built-in',1,1,1,1,0,0,0,0,0,'Select','','[{\"owner\":\"\",\"name\":\"provider_captcha_default\",\"canSignUp\":false,\"canSignIn\":false,\"canUnlink\":false,\"prompted\":false,\"signupGroup\":\"\",\"rule\":\"\",\"provider\":null}]','[{\"name\":\"Password\",\"displayName\":\"Password\",\"rule\":\"All\"},{\"name\":\"Verification code\",\"displayName\":\"Verification code\",\"rule\":\"All\"},{\"name\":\"WebAuthn\",\"displayName\":\"WebAuthn\",\"rule\":\"None\"}]','[{\"name\":\"ID\",\"visible\":false,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"Random\"},{\"name\":\"Username\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Display name\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Password\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Confirm password\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Email\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"Normal\"},{\"name\":\"Phone\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"},{\"name\":\"Agreement\",\"visible\":true,\"required\":true,\"prompted\":false,\"label\":\"\",\"placeholder\":\"\",\"regex\":\"\",\"rule\":\"None\"}]','[\"authorization_code\",\"client_credentials\",\"token\"]','[]','null','9ffd3710dd305f0c5ffb','0c93d345748048b375ca48cbefe48ed0fc056b23','[\"http://localhost:9000/callback\"]','JWT','[]',168,168,'','','','','','','',NULL,'','',2,'','',5,15);
/*!40000 ALTER TABLE `application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casbin_api_rule`
--

DROP TABLE IF EXISTS `casbin_api_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casbin_api_rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) NOT NULL DEFAULT '',
  `v0` varchar(100) NOT NULL DEFAULT '',
  `v1` varchar(100) NOT NULL DEFAULT '',
  `v2` varchar(100) NOT NULL DEFAULT '',
  `v3` varchar(100) NOT NULL DEFAULT '',
  `v4` varchar(100) NOT NULL DEFAULT '',
  `v5` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_casbin_api_rule_v0` (`v0`),
  KEY `IDX_casbin_api_rule_v1` (`v1`),
  KEY `IDX_casbin_api_rule_v2` (`v2`),
  KEY `IDX_casbin_api_rule_v3` (`v3`),
  KEY `IDX_casbin_api_rule_v4` (`v4`),
  KEY `IDX_casbin_api_rule_v5` (`v5`),
  KEY `IDX_casbin_api_rule_ptype` (`ptype`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_api_rule`
--

LOCK TABLES `casbin_api_rule` WRITE;
/*!40000 ALTER TABLE `casbin_api_rule` DISABLE KEYS */;
INSERT INTO `casbin_api_rule` VALUES
(1,'p','built-in','*','*','*','*','*'),
(2,'p','app','*','*','*','*','*'),
(3,'p','*','*','POST','/api/signup','*','*'),
(4,'p','*','*','GET','/api/get-email-and-phone','*','*'),
(5,'p','*','*','POST','/api/login','*','*'),
(6,'p','*','*','GET','/api/get-app-login','*','*'),
(7,'p','*','*','POST','/api/logout','*','*'),
(8,'p','*','*','GET','/api/logout','*','*'),
(9,'p','*','*','POST','/api/callback','*','*'),
(10,'p','*','*','GET','/api/get-account','*','*'),
(11,'p','*','*','GET','/api/userinfo','*','*'),
(12,'p','*','*','GET','/api/user','*','*'),
(13,'p','*','*','GET','/api/health','*','*'),
(14,'p','*','*','POST','/api/webhook','*','*'),
(15,'p','*','*','GET','/api/get-webhook-event','*','*'),
(16,'p','*','*','GET','/api/get-captcha-status','*','*'),
(17,'p','*','*','*','/api/login/oauth','*','*'),
(18,'p','*','*','GET','/api/get-application','*','*'),
(19,'p','*','*','GET','/api/get-organization-applications','*','*'),
(20,'p','*','*','GET','/api/get-user','*','*'),
(21,'p','*','*','GET','/api/get-user-application','*','*'),
(22,'p','*','*','GET','/api/get-resources','*','*'),
(23,'p','*','*','GET','/api/get-records','*','*'),
(24,'p','*','*','GET','/api/get-product','*','*'),
(25,'p','*','*','POST','/api/buy-product','*','*'),
(26,'p','*','*','GET','/api/get-payment','*','*'),
(27,'p','*','*','POST','/api/update-payment','*','*'),
(28,'p','*','*','POST','/api/invoice-payment','*','*'),
(29,'p','*','*','POST','/api/notify-payment','*','*'),
(30,'p','*','*','POST','/api/unlink','*','*'),
(31,'p','*','*','POST','/api/set-password','*','*'),
(32,'p','*','*','POST','/api/send-verification-code','*','*'),
(33,'p','*','*','GET','/api/get-captcha','*','*'),
(34,'p','*','*','POST','/api/verify-captcha','*','*'),
(35,'p','*','*','POST','/api/verify-code','*','*'),
(36,'p','*','*','POST','/api/reset-email-or-phone','*','*'),
(37,'p','*','*','POST','/api/upload-resource','*','*'),
(38,'p','*','*','GET','/.well-known/openid-configuration','*','*'),
(39,'p','*','*','*','/.well-known/jwks','*','*'),
(40,'p','*','*','GET','/api/get-saml-login','*','*'),
(41,'p','*','*','POST','/api/acs','*','*'),
(42,'p','*','*','GET','/api/saml/metadata','*','*'),
(43,'p','*','*','*','/cas','*','*'),
(44,'p','*','*','*','/scim','*','*'),
(45,'p','*','*','*','/api/webauthn','*','*'),
(46,'p','*','*','GET','/api/get-release','*','*'),
(47,'p','*','*','GET','/api/get-default-application','*','*'),
(48,'p','*','*','GET','/api/get-prometheus-info','*','*'),
(49,'p','*','*','*','/api/metrics','*','*'),
(50,'p','*','*','GET','/api/get-pricing','*','*'),
(51,'p','*','*','GET','/api/get-plan','*','*'),
(52,'p','*','*','GET','/api/get-subscription','*','*'),
(53,'p','*','*','GET','/api/get-provider','*','*'),
(54,'p','*','*','GET','/api/get-organization-names','*','*'),
(55,'p','*','*','GET','/api/get-all-objects','*','*'),
(56,'p','*','*','GET','/api/get-all-actions','*','*'),
(57,'p','*','*','GET','/api/get-all-roles','*','*');
/*!40000 ALTER TABLE `casbin_api_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casbin_rule`
--

DROP TABLE IF EXISTS `casbin_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casbin_rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) NOT NULL DEFAULT '',
  `v0` varchar(100) NOT NULL DEFAULT '',
  `v1` varchar(100) NOT NULL DEFAULT '',
  `v2` varchar(100) NOT NULL DEFAULT '',
  `v3` varchar(100) NOT NULL DEFAULT '',
  `v4` varchar(100) NOT NULL DEFAULT '',
  `v5` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_casbin_rule_v0` (`v0`),
  KEY `IDX_casbin_rule_v1` (`v1`),
  KEY `IDX_casbin_rule_v2` (`v2`),
  KEY `IDX_casbin_rule_v3` (`v3`),
  KEY `IDX_casbin_rule_v4` (`v4`),
  KEY `IDX_casbin_rule_v5` (`v5`),
  KEY `IDX_casbin_rule_ptype` (`ptype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_rule`
--

LOCK TABLES `casbin_rule` WRITE;
/*!40000 ALTER TABLE `casbin_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `casbin_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `casbin_user_rule`
--

DROP TABLE IF EXISTS `casbin_user_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `casbin_user_rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) NOT NULL DEFAULT '',
  `v0` varchar(100) NOT NULL DEFAULT '',
  `v1` varchar(100) NOT NULL DEFAULT '',
  `v2` varchar(100) NOT NULL DEFAULT '',
  `v3` varchar(100) NOT NULL DEFAULT '',
  `v4` varchar(100) NOT NULL DEFAULT '',
  `v5` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_casbin_user_rule_ptype` (`ptype`),
  KEY `IDX_casbin_user_rule_v0` (`v0`),
  KEY `IDX_casbin_user_rule_v1` (`v1`),
  KEY `IDX_casbin_user_rule_v2` (`v2`),
  KEY `IDX_casbin_user_rule_v3` (`v3`),
  KEY `IDX_casbin_user_rule_v4` (`v4`),
  KEY `IDX_casbin_user_rule_v5` (`v5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `casbin_user_rule`
--

LOCK TABLES `casbin_user_rule` WRITE;
/*!40000 ALTER TABLE `casbin_user_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `casbin_user_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cert`
--

DROP TABLE IF EXISTS `cert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cert` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `crypto_algorithm` varchar(100) DEFAULT NULL,
  `bit_size` int(11) DEFAULT NULL,
  `expire_in_years` int(11) DEFAULT NULL,
  `certificate` mediumtext DEFAULT NULL,
  `private_key` mediumtext DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cert`
--

LOCK TABLES `cert` WRITE;
/*!40000 ALTER TABLE `cert` DISABLE KEYS */;
INSERT INTO `cert` VALUES
('admin','cert-built-in','2024-01-22T14:02:33Z','Built-in Cert','JWT','x509','RS256',4096,20,'-----BEGIN CERTIFICATE-----\nMIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCgxDjAMBgNVBAoTBWFk\nbWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MDEyMjE0MDIzNloXDTQ0\nMDEyMjE0MDIzNlowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp\nbHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC56mXBc2a0YyH0\nrWDisBF5lIsfjZwOjrr08lXtzn0SYOd1la9ngerhE155NGlRxC3PfCvVUR89qTDJ\nWblYuuMEtc1YUJ4YeaoaIfoqG5OkMiialej3/83dOXb2uiJ/Q7wAdR3o/PXOx6Lo\nKTYDNZaEaH1yIU83cz2XMl0gRpZlm4s7/R9xkVldAVZmH8gLppP881DB4oGkFNPF\nw3J0u2LjoiMgDgZczl68fDB/Oq9KFb5bH7b7kjCSeV+42+vL6MrPdAHqe2iIoeHB\n9AFU82W0E/oaN37GQIRG763knUe8sTl99N3IHqKKDnTCUYg+TmwhJRSNZ2ViE7YG\nIRRLdjoYIfqyx+McQpt6Yui76VxVAChjKVrc7VyYz7DmVsfm9v+SDzgDNbJXFzP3\ntPS2QsVAbiCYghSU2GhX3/ip1BB34+MDu/fnzRYbK3BjTWFvsrHRgszTBju4PlbR\nSdN7ySV3IICGLM9eb9EBmAJW+dYAvjOAjQwJHnwrx2Mee9yWdeENnpNd0lbIiZqW\nI3x7xiwxRh9PJMCrJyzXd7970m6ht95KK9VApbphOPr6GezpqqJ5BmATg6iBMiio\nYzPR5h2k7zJopFTFNBmjYeTvAUWkkKs8QtlQiCJu0Wn13kFnFIxNiyQ02lOXLieW\nDvNr9JPM3uNHDGdEiDErquAZmsQwBQIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G\nCSqGSIb3DQEBCwUAA4ICAQCuHb0B4h3EMHCIzKPjhJyjJmopGXU0moCRyONMF84l\nA/bG2H53Q8Xbiw+7TaIradViv1+3FwItpF417dAoaH0/yayLSt9JYEOIzXK0WWpM\n/ROJR9Esu1y7JI3PUfjPqRRbQ4bYKE6hQJpj+S+UzinXhF/EftLfGG3HoW/C9xjo\ndCYo0LupVLejqZsuP6GI4nrcep19LTL/QUee+lZUFFfqE4NdBWykCoMaG/YGi+fj\nsh1MzpcpdLb5pfI0+uyMaQgoOMU3nhy5/1Lev4XQMtfTMddEJYbyXtHD9ytvqDVW\nLfljbje4jYRxaZfMzbdNI0dRFjIc7QbeSV8WVLYApGWAWbEEqmK8lU08KT79HkOr\nDacW34tlTiYnPz0fdMNj/wEd/7P0KkWbKclAtZHUw8Q6GmfRMujH8NQ0JWtyquMA\nyi0AD2doN7ctc704AENz1H2vsiU39Rclykf9T5OBFlyMBkcEM1f3YV7pS6JqoaW5\ngEL/VVOpVsTVyQlc19ZpFzSTkr59pWAsllaJ9eHr8qyEhQG64GZ+v/ssMvujXMB9\nw0NWo4PeSxU5hCoaEOwroaE+ELb8b1SUfxIt0Zk1/5utJwAnaWVE+ILs6tigUy4b\nDjNhiI8XyJASXv0cX33cfaL4G8zEYIQcx3slWt5AZ2QwyxQ81RUO6Y1f6Z5uUa4a\n2Q==\n-----END CERTIFICATE-----\n','-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----\n');
/*!40000 ALTER TABLE `cert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enforcer`
--

DROP TABLE IF EXISTS `enforcer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enforcer` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `updated_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `adapter` varchar(100) DEFAULT NULL,
  `enforcer` text DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enforcer`
--

LOCK TABLES `enforcer` WRITE;
/*!40000 ALTER TABLE `enforcer` DISABLE KEYS */;
INSERT INTO `enforcer` VALUES
('built-in','api-enforcer-built-in','2024-01-22T14:02:36Z','2024-01-22 14:02:36','API Enforcer','','built-in/api-model-built-in','built-in/api-adapter-built-in',NULL),
('built-in','user-enforcer-built-in','2024-01-22T14:02:36Z','2024-01-22 14:02:36','User Enforcer','','built-in/user-model-built-in','built-in/user-adapter-built-in',NULL);
/*!40000 ALTER TABLE `enforcer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `updated_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `manager` varchar(100) DEFAULT NULL,
  `contact_email` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `parent_id` varchar(100) DEFAULT NULL,
  `is_top_group` tinyint(1) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `children` text DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  UNIQUE KEY `UQE_group_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation`
--

DROP TABLE IF EXISTS `invitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `updated_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `is_regexp` tinyint(1) DEFAULT NULL,
  `quota` int(11) DEFAULT NULL,
  `used_count` int(11) DEFAULT NULL,
  `application` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `signup_group` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_invitation_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation`
--

LOCK TABLES `invitation` WRITE;
/*!40000 ALTER TABLE `invitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ldap`
--

DROP TABLE IF EXISTS `ldap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ldap` (
  `id` varchar(100) NOT NULL,
  `owner` varchar(100) DEFAULT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `server_name` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `enable_ssl` tinyint(1) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `base_dn` varchar(100) DEFAULT NULL,
  `filter` varchar(200) DEFAULT NULL,
  `filter_fields` varchar(100) DEFAULT NULL,
  `auto_sync` int(11) DEFAULT NULL,
  `last_sync` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ldap`
--

LOCK TABLES `ldap` WRITE;
/*!40000 ALTER TABLE `ldap` DISABLE KEYS */;
INSERT INTO `ldap` VALUES
('ldap-built-in','built-in','2024-01-22T14:02:36Z','BuildIn LDAP Server','example.com',389,0,'cn=buildin,dc=example,dc=com','123','ou=BuildIn,dc=example,dc=com','','null',0,'');
/*!40000 ALTER TABLE `ldap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model`
--

DROP TABLE IF EXISTS `model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `model` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `model_text` mediumtext DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model`
--

LOCK TABLES `model` WRITE;
/*!40000 ALTER TABLE `model` DISABLE KEYS */;
INSERT INTO `model` VALUES
('built-in','api-model-built-in','2024-01-22T14:02:36Z','API Model','','[request_definition]\nr = subOwner, subName, method, urlPath, objOwner, objName\n\n[policy_definition]\np = subOwner, subName, method, urlPath, objOwner, objName\n\n[role_definition]\ng = _, _\n\n[policy_effect]\ne = some(where (p.eft == allow))\n\n[matchers]\nm = (r.subOwner == p.subOwner || p.subOwner == \"*\") && \\\n    (r.subName == p.subName || p.subName == \"*\" || r.subName != \"anonymous\" && p.subName == \"!anonymous\") && \\\n    (r.method == p.method || p.method == \"*\") && \\\n    (r.urlPath == p.urlPath || p.urlPath == \"*\") && \\\n    (r.objOwner == p.objOwner || p.objOwner == \"*\") && \\\n    (r.objName == p.objName || p.objName == \"*\") || \\\n    (r.subOwner == r.objOwner && r.subName == r.objName)'),
('built-in','user-model-built-in','2024-01-22T14:02:36Z','Built-in Model','','[request_definition]\nr = sub, obj, act\n\n[policy_definition]\np = sub, obj, act\n\n[role_definition]\ng = _, _\n\n[policy_effect]\ne = some(where (p.eft == allow))\n\n[matchers]\nm = g(r.sub, p.sub) && r.obj == p.obj && r.act == p.act');
/*!40000 ALTER TABLE `model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization`
--

DROP TABLE IF EXISTS `organization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `website_url` varchar(100) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `password_type` varchar(100) DEFAULT NULL,
  `password_salt` varchar(100) DEFAULT NULL,
  `password_options` varchar(100) DEFAULT NULL,
  `country_codes` varchar(200) DEFAULT NULL,
  `default_avatar` varchar(200) DEFAULT NULL,
  `default_application` varchar(100) DEFAULT NULL,
  `tags` mediumtext DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `theme_data` text DEFAULT NULL,
  `master_password` varchar(100) DEFAULT NULL,
  `default_password` varchar(100) DEFAULT NULL,
  `master_verification_code` varchar(100) DEFAULT NULL,
  `init_score` int(11) DEFAULT NULL,
  `enable_soft_deletion` tinyint(1) DEFAULT NULL,
  `is_profile_public` tinyint(1) DEFAULT NULL,
  `mfa_items` varchar(300) DEFAULT NULL,
  `account_items` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization`
--

LOCK TABLES `organization` WRITE;
/*!40000 ALTER TABLE `organization` DISABLE KEYS */;
INSERT INTO `organization` VALUES
('admin','built-in','2024-01-22T14:02:33Z','Built-in Organization','https://example.com','https://cdn.casbin.org/img/casbin/favicon.ico','plain','','[\"AtLeast6\"]','[\"US\",\"ES\",\"FR\",\"DE\",\"GB\",\"CN\",\"JP\",\"KR\",\"VN\",\"ID\",\"SG\",\"IN\"]','https://cdn.casbin.org/img/casbin.svg','','[]','[\"en\",\"zh\",\"es\",\"fr\",\"de\",\"id\",\"ja\",\"ko\",\"ru\",\"vi\",\"pt\"]',NULL,'','','',2000,0,0,'null','[{\"name\":\"Organization\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"ID\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Display name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Avatar\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"User type\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Password\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Email\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Phone\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country code\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Country/Region\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Location\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Affiliation\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Title\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Homepage\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Bio\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Tag\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Signup application\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Roles\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Permissions\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Groups\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"3rd-party logins\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Properties\",\"visible\":false,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is admin\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is forbidden\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is deleted\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Multi-factor authentication\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"WebAuthn credentials\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Managed accounts\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"}]'),
('admin','golmon','2024-01-22T15:09:17+01:00','Golmon Land','','https://cdn.casbin.org/img/favicon.png','md5-salt','','[\"AtLeast8\",\"Aa123\"]','[\"FR\"]','https://cdn.casbin.org/img/casbin.svg','','[]','[\"en\",\"es\",\"fr\",\"de\",\"zh\",\"id\",\"ja\",\"ko\",\"ru\",\"vi\",\"pt\",\"it\",\"ms\",\"tr\",\"ar\",\"he\",\"nl\",\"pl\",\"fi\",\"sv\",\"uk\",\"kk\",\"fa\"]',NULL,'2a5c3b2b907146e0c13c9faa93b4ef3a','','',0,0,1,'null','[{\"name\":\"Organization\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"ID\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Display name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Avatar\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"User type\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Password\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Email\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Phone\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country code\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country/Region\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Location\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Address\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Affiliation\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Title\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card type\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card info\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Homepage\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Bio\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Tag\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Language\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Gender\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Birthday\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Education\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Score\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Karma\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Ranking\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Signup application\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"API key\",\"visible\":false,\"viewRule\":\"\",\"modifyRule\":\"Self\"},{\"name\":\"Groups\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Roles\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Permissions\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"3rd-party logins\",\"visible\":false,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Properties\",\"visible\":false,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is online\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is admin\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is forbidden\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is deleted\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Multi-factor authentication\",\"visible\":false,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"WebAuthn credentials\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Managed accounts\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"}]'),
('admin','organization_r2cqte','2024-01-22T15:04:07+01:00','New Organization - r2cqte','https://door.casdoor.com','https://cdn.casbin.org/img/favicon.png','plain','','[]','[\"US\"]','https://cdn.casbin.org/img/casbin.svg','','[]','[\"en\",\"es\",\"fr\",\"de\",\"zh\",\"id\",\"ja\",\"ko\",\"ru\",\"vi\",\"pt\",\"it\",\"ms\",\"tr\",\"ar\",\"he\",\"nl\",\"pl\",\"fi\",\"sv\",\"uk\",\"kk\",\"fa\"]',NULL,'','','',0,0,1,'null','[{\"name\":\"Organization\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"ID\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Display name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Avatar\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"User type\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Password\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Email\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Phone\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country code\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country/Region\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Location\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Address\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Affiliation\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Title\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card type\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card info\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Homepage\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Bio\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Tag\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Language\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Gender\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Birthday\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Education\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Score\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Karma\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Ranking\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Signup application\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"API key\",\"visible\":false,\"viewRule\":\"\",\"modifyRule\":\"Self\"},{\"name\":\"Groups\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Roles\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Permissions\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"3rd-party logins\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Properties\",\"visible\":false,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is online\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is admin\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is forbidden\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is deleted\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Multi-factor authentication\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"WebAuthn credentials\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Managed accounts\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"}]');
/*!40000 ALTER TABLE `organization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `product_display_name` varchar(100) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `return_url` varchar(1000) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `person_name` varchar(100) DEFAULT NULL,
  `person_id_card` varchar(100) DEFAULT NULL,
  `person_email` varchar(100) DEFAULT NULL,
  `person_phone` varchar(100) DEFAULT NULL,
  `invoice_type` varchar(100) DEFAULT NULL,
  `invoice_title` varchar(100) DEFAULT NULL,
  `invoice_tax_id` varchar(100) DEFAULT NULL,
  `invoice_remark` varchar(100) DEFAULT NULL,
  `invoice_url` varchar(255) DEFAULT NULL,
  `out_order_id` varchar(100) DEFAULT NULL,
  `pay_url` varchar(2000) DEFAULT NULL,
  `success_url` varchar(2000) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `message` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission`
--

DROP TABLE IF EXISTS `permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `users` mediumtext DEFAULT NULL,
  `groups` mediumtext DEFAULT NULL,
  `roles` mediumtext DEFAULT NULL,
  `domains` mediumtext DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `adapter` varchar(100) DEFAULT NULL,
  `resource_type` varchar(100) DEFAULT NULL,
  `resources` mediumtext DEFAULT NULL,
  `actions` mediumtext DEFAULT NULL,
  `effect` varchar(100) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `submitter` varchar(100) DEFAULT NULL,
  `approver` varchar(100) DEFAULT NULL,
  `approve_time` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission`
--

LOCK TABLES `permission` WRITE;
/*!40000 ALTER TABLE `permission` DISABLE KEYS */;
INSERT INTO `permission` VALUES
('built-in','permission-built-in','2024-01-22T14:02:33Z','Built-in Permission','Built-in Permission','[\"built-in/*\"]','[]','[]','[]','model-built-in','','Application','[\"app-built-in\"]','[\"Read\",\"Write\",\"Admin\"]','Allow',1,'admin','admin','2024-01-22T14:02:33Z','Approved');
/*!40000 ALTER TABLE `permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_rule`
--

DROP TABLE IF EXISTS `permission_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_rule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) NOT NULL DEFAULT '',
  `v0` varchar(100) NOT NULL DEFAULT '',
  `v1` varchar(100) NOT NULL DEFAULT '',
  `v2` varchar(100) NOT NULL DEFAULT '',
  `v3` varchar(100) NOT NULL DEFAULT '',
  `v4` varchar(100) NOT NULL DEFAULT '',
  `v5` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `IDX_permission_rule_ptype` (`ptype`),
  KEY `IDX_permission_rule_v0` (`v0`),
  KEY `IDX_permission_rule_v1` (`v1`),
  KEY `IDX_permission_rule_v2` (`v2`),
  KEY `IDX_permission_rule_v3` (`v3`),
  KEY `IDX_permission_rule_v4` (`v4`),
  KEY `IDX_permission_rule_v5` (`v5`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_rule`
--

LOCK TABLES `permission_rule` WRITE;
/*!40000 ALTER TABLE `permission_rule` DISABLE KEYS */;
INSERT INTO `permission_rule` VALUES
(1,'p','built-in/*','app-built-in','read','allow','','built-in/permission-built-in'),
(2,'p','built-in/*','app-built-in','write','allow','','built-in/permission-built-in'),
(3,'p','built-in/*','app-built-in','admin','allow','','built-in/permission-built-in');
/*!40000 ALTER TABLE `permission_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plan`
--

DROP TABLE IF EXISTS `plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plan` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `period` varchar(100) DEFAULT NULL,
  `product` varchar(100) DEFAULT NULL,
  `payment_providers` varchar(100) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plan`
--

LOCK TABLES `plan` WRITE;
/*!40000 ALTER TABLE `plan` DISABLE KEYS */;
/*!40000 ALTER TABLE `plan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pricing`
--

DROP TABLE IF EXISTS `pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pricing` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `plans` mediumtext DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  `trial_duration` int(11) DEFAULT NULL,
  `application` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pricing`
--

LOCK TABLES `pricing` WRITE;
/*!40000 ALTER TABLE `pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `detail` varchar(1000) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `sold` int(11) DEFAULT NULL,
  `providers` varchar(255) DEFAULT NULL,
  `return_url` varchar(1000) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provider` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `sub_type` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `client_id` varchar(200) DEFAULT NULL,
  `client_secret` varchar(3000) DEFAULT NULL,
  `client_id2` varchar(100) DEFAULT NULL,
  `client_secret2` varchar(500) DEFAULT NULL,
  `cert` varchar(100) DEFAULT NULL,
  `custom_auth_url` varchar(200) DEFAULT NULL,
  `custom_token_url` varchar(200) DEFAULT NULL,
  `custom_user_info_url` varchar(200) DEFAULT NULL,
  `custom_logo` varchar(200) DEFAULT NULL,
  `scopes` varchar(100) DEFAULT NULL,
  `user_mapping` varchar(500) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `disable_ssl` tinyint(1) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `content` varchar(2000) DEFAULT NULL,
  `receiver` varchar(100) DEFAULT NULL,
  `region_id` varchar(100) DEFAULT NULL,
  `sign_name` varchar(100) DEFAULT NULL,
  `template_code` varchar(100) DEFAULT NULL,
  `app_id` varchar(100) DEFAULT NULL,
  `endpoint` varchar(1000) DEFAULT NULL,
  `intranet_endpoint` varchar(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `bucket` varchar(100) DEFAULT NULL,
  `path_prefix` varchar(100) DEFAULT NULL,
  `metadata` mediumtext DEFAULT NULL,
  `id_p` mediumtext DEFAULT NULL,
  `issuer_url` varchar(100) DEFAULT NULL,
  `enable_sign_authn_request` tinyint(1) DEFAULT NULL,
  `provider_url` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  UNIQUE KEY `UQE_provider_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES
('admin','provider_captcha_default','2024-01-22T14:02:33Z','Captcha Default','Captcha','Default','','','','','','','','','','','','','null','',0,0,'','','','','','','','','','','','','','','',0,'');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radius_accounting`
--

DROP TABLE IF EXISTS `radius_accounting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radius_accounting` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `service_type` bigint(20) DEFAULT NULL,
  `nas_id` varchar(255) DEFAULT NULL,
  `nas_ip_addr` varchar(255) DEFAULT NULL,
  `nas_port_id` varchar(255) DEFAULT NULL,
  `nas_port_type` bigint(20) DEFAULT NULL,
  `nas_port` bigint(20) DEFAULT NULL,
  `framed_ip_addr` varchar(255) DEFAULT NULL,
  `framed_ip_netmask` varchar(255) DEFAULT NULL,
  `acct_session_id` varchar(255) DEFAULT NULL,
  `acct_session_time` bigint(20) DEFAULT NULL,
  `acct_input_total` bigint(20) DEFAULT NULL,
  `acct_output_total` bigint(20) DEFAULT NULL,
  `acct_input_packets` bigint(20) DEFAULT NULL,
  `acct_output_packets` bigint(20) DEFAULT NULL,
  `acct_terminate_cause` bigint(20) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `acct_start_time` datetime DEFAULT NULL,
  `acct_stop_time` datetime DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_radius_accounting_username` (`username`),
  KEY `IDX_radius_accounting_acct_session_id` (`acct_session_id`),
  KEY `IDX_radius_accounting_acct_start_time` (`acct_start_time`),
  KEY `IDX_radius_accounting_acct_stop_time` (`acct_stop_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radius_accounting`
--

LOCK TABLES `radius_accounting` WRITE;
/*!40000 ALTER TABLE `radius_accounting` DISABLE KEYS */;
/*!40000 ALTER TABLE `radius_accounting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(180) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `provider` varchar(100) DEFAULT NULL,
  `application` varchar(100) DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `parent` varchar(100) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `file_type` varchar(100) DEFAULT NULL,
  `file_format` varchar(100) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `users` mediumtext DEFAULT NULL,
  `groups` mediumtext DEFAULT NULL,
  `roles` mediumtext DEFAULT NULL,
  `domains` mediumtext DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `session`
--

DROP TABLE IF EXISTS `session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `session` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `application` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `session_id` text DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`,`application`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `session`
--

LOCK TABLES `session` WRITE;
/*!40000 ALTER TABLE `session` DISABLE KEYS */;
INSERT INTO `session` VALUES
('built-in','admin','app-built-in','2024-01-22T14:02:57Z','[\"262efdb538b9814809f98c8cc1a1b704\",\"7ce9f9a1d7db4fe114ed354f789b4530\",\"5a49dde0e86ade8c41b503da31c8526f\",\"1b588388e4b448ab2570e981d3c71edf\"]');
/*!40000 ALTER TABLE `session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `pricing` varchar(100) DEFAULT NULL,
  `plan` varchar(100) DEFAULT NULL,
  `payment` varchar(100) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `period` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `syncer`
--

DROP TABLE IF EXISTS `syncer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syncer` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `database_type` varchar(100) DEFAULT NULL,
  `ssl_mode` varchar(100) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `port` int(11) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `database` varchar(100) DEFAULT NULL,
  `table` varchar(100) DEFAULT NULL,
  `table_columns` mediumtext DEFAULT NULL,
  `affiliation_table` varchar(100) DEFAULT NULL,
  `avatar_base_url` varchar(100) DEFAULT NULL,
  `error_text` mediumtext DEFAULT NULL,
  `sync_interval` int(11) DEFAULT NULL,
  `is_read_only` tinyint(1) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `syncer`
--

LOCK TABLES `syncer` WRITE;
/*!40000 ALTER TABLE `syncer` DISABLE KEYS */;
/*!40000 ALTER TABLE `syncer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `application` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `access_token` mediumtext DEFAULT NULL,
  `refresh_token` mediumtext DEFAULT NULL,
  `access_token_hash` varchar(100) DEFAULT NULL,
  `refresh_token_hash` varchar(100) DEFAULT NULL,
  `expires_in` int(11) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `token_type` varchar(100) DEFAULT NULL,
  `code_challenge` varchar(100) DEFAULT NULL,
  `code_is_used` tinyint(1) DEFAULT NULL,
  `code_expire_in` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_token_code` (`code`),
  KEY `IDX_token_access_token_hash` (`access_token_hash`),
  KEY `IDX_token_refresh_token_hash` (`refresh_token_hash`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `updated_time` varchar(100) DEFAULT NULL,
  `id` varchar(100) DEFAULT NULL,
  `external_id` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `password_salt` varchar(100) DEFAULT NULL,
  `password_type` varchar(100) DEFAULT NULL,
  `display_name` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `avatar_type` varchar(100) DEFAULT NULL,
  `permanent_avatar` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `email_verified` tinyint(1) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `country_code` varchar(6) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `affiliation` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `id_card_type` varchar(100) DEFAULT NULL,
  `id_card` varchar(100) DEFAULT NULL,
  `homepage` varchar(100) DEFAULT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `tag` varchar(100) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `birthday` varchar(100) DEFAULT NULL,
  `education` varchar(100) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `karma` int(11) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `is_default_avatar` tinyint(1) DEFAULT NULL,
  `is_online` tinyint(1) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `is_forbidden` tinyint(1) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `signup_application` varchar(100) DEFAULT NULL,
  `hash` varchar(100) DEFAULT NULL,
  `pre_hash` varchar(100) DEFAULT NULL,
  `access_key` varchar(100) DEFAULT NULL,
  `access_secret` varchar(100) DEFAULT NULL,
  `created_ip` varchar(100) DEFAULT NULL,
  `last_signin_time` varchar(100) DEFAULT NULL,
  `last_signin_ip` varchar(100) DEFAULT NULL,
  `github` varchar(100) DEFAULT NULL,
  `google` varchar(100) DEFAULT NULL,
  `qq` varchar(100) DEFAULT NULL,
  `wechat` varchar(100) DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `dingtalk` varchar(100) DEFAULT NULL,
  `weibo` varchar(100) DEFAULT NULL,
  `gitee` varchar(100) DEFAULT NULL,
  `linkedin` varchar(100) DEFAULT NULL,
  `wecom` varchar(100) DEFAULT NULL,
  `lark` varchar(100) DEFAULT NULL,
  `gitlab` varchar(100) DEFAULT NULL,
  `adfs` varchar(100) DEFAULT NULL,
  `baidu` varchar(100) DEFAULT NULL,
  `alipay` varchar(100) DEFAULT NULL,
  `casdoor` varchar(100) DEFAULT NULL,
  `infoflow` varchar(100) DEFAULT NULL,
  `apple` varchar(100) DEFAULT NULL,
  `azuread` varchar(100) DEFAULT NULL,
  `azureadb2c` varchar(100) DEFAULT NULL,
  `slack` varchar(100) DEFAULT NULL,
  `steam` varchar(100) DEFAULT NULL,
  `bilibili` varchar(100) DEFAULT NULL,
  `okta` varchar(100) DEFAULT NULL,
  `douyin` varchar(100) DEFAULT NULL,
  `line` varchar(100) DEFAULT NULL,
  `amazon` varchar(100) DEFAULT NULL,
  `auth0` varchar(100) DEFAULT NULL,
  `battlenet` varchar(100) DEFAULT NULL,
  `bitbucket` varchar(100) DEFAULT NULL,
  `box` varchar(100) DEFAULT NULL,
  `cloudfoundry` varchar(100) DEFAULT NULL,
  `dailymotion` varchar(100) DEFAULT NULL,
  `deezer` varchar(100) DEFAULT NULL,
  `digitalocean` varchar(100) DEFAULT NULL,
  `discord` varchar(100) DEFAULT NULL,
  `dropbox` varchar(100) DEFAULT NULL,
  `eveonline` varchar(100) DEFAULT NULL,
  `fitbit` varchar(100) DEFAULT NULL,
  `gitea` varchar(100) DEFAULT NULL,
  `heroku` varchar(100) DEFAULT NULL,
  `influxcloud` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `intercom` varchar(100) DEFAULT NULL,
  `kakao` varchar(100) DEFAULT NULL,
  `lastfm` varchar(100) DEFAULT NULL,
  `mailru` varchar(100) DEFAULT NULL,
  `meetup` varchar(100) DEFAULT NULL,
  `microsoftonline` varchar(100) DEFAULT NULL,
  `naver` varchar(100) DEFAULT NULL,
  `nextcloud` varchar(100) DEFAULT NULL,
  `onedrive` varchar(100) DEFAULT NULL,
  `oura` varchar(100) DEFAULT NULL,
  `patreon` varchar(100) DEFAULT NULL,
  `paypal` varchar(100) DEFAULT NULL,
  `salesforce` varchar(100) DEFAULT NULL,
  `shopify` varchar(100) DEFAULT NULL,
  `soundcloud` varchar(100) DEFAULT NULL,
  `spotify` varchar(100) DEFAULT NULL,
  `strava` varchar(100) DEFAULT NULL,
  `stripe` varchar(100) DEFAULT NULL,
  `tiktok` varchar(100) DEFAULT NULL,
  `tumblr` varchar(100) DEFAULT NULL,
  `twitch` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `typetalk` varchar(100) DEFAULT NULL,
  `uber` varchar(100) DEFAULT NULL,
  `vk` varchar(100) DEFAULT NULL,
  `wepay` varchar(100) DEFAULT NULL,
  `xero` varchar(100) DEFAULT NULL,
  `yahoo` varchar(100) DEFAULT NULL,
  `yammer` varchar(100) DEFAULT NULL,
  `yandex` varchar(100) DEFAULT NULL,
  `zoom` varchar(100) DEFAULT NULL,
  `metamask` varchar(100) DEFAULT NULL,
  `web3onboard` varchar(100) DEFAULT NULL,
  `custom` varchar(100) DEFAULT NULL,
  `webauthnCredentials` blob DEFAULT NULL,
  `preferred_mfa_type` varchar(100) DEFAULT NULL,
  `recovery_codes` varchar(1000) DEFAULT NULL,
  `totp_secret` varchar(100) DEFAULT NULL,
  `mfa_phone_enabled` tinyint(1) DEFAULT NULL,
  `mfa_email_enabled` tinyint(1) DEFAULT NULL,
  `invitation` varchar(100) DEFAULT NULL,
  `invitation_code` varchar(100) DEFAULT NULL,
  `ldap` varchar(100) DEFAULT NULL,
  `properties` text DEFAULT NULL,
  `roles` text DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `groups` varchar(1000) DEFAULT NULL,
  `last_signin_wrong_time` varchar(100) DEFAULT NULL,
  `signin_wrong_times` int(11) DEFAULT NULL,
  `managedAccounts` blob DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_user_invitation_code` (`invitation_code`),
  KEY `IDX_user_created_time` (`created_time`),
  KEY `IDX_user_id` (`id`),
  KEY `IDX_user_external_id` (`external_id`),
  KEY `IDX_user_email` (`email`),
  KEY `IDX_user_phone` (`phone`),
  KEY `IDX_user_id_card` (`id_card`),
  KEY `IDX_user_invitation` (`invitation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
('built-in','admin','2024-01-22T14:02:33Z','','f7b4964d-8be7-45d3-9885-61e1f4cf273b','','normal-user','123','','plain','Admin','','','https://cdn.casbin.org/img/casbin.svg','','','admin@example.com',0,'12345678910','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,1,0,0,1,0,0,'app-built-in','','','','','127.0.0.1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','null','',0,'null');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_record`
--

DROP TABLE IF EXISTS `verification_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `verification_record` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `remote_addr` varchar(100) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `user` varchar(100) NOT NULL,
  `provider` varchar(100) NOT NULL,
  `receiver` varchar(100) NOT NULL,
  `code` varchar(10) NOT NULL,
  `time` bigint(20) NOT NULL,
  `is_used` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_record`
--

LOCK TABLES `verification_record` WRITE;
/*!40000 ALTER TABLE `verification_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `verification_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webhook`
--

DROP TABLE IF EXISTS `webhook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webhook` (
  `owner` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_time` varchar(100) DEFAULT NULL,
  `organization` varchar(100) DEFAULT NULL,
  `url` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `content_type` varchar(100) DEFAULT NULL,
  `headers` mediumtext DEFAULT NULL,
  `events` varchar(1000) DEFAULT NULL,
  `is_user_extended` tinyint(1) DEFAULT NULL,
  `is_enabled` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`owner`,`name`),
  KEY `IDX_webhook_organization` (`organization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webhook`
--

LOCK TABLES `webhook` WRITE;
/*!40000 ALTER TABLE `webhook` DISABLE KEYS */;
/*!40000 ALTER TABLE `webhook` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-23 14:56:15
