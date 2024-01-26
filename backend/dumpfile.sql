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
  KEY `IDX_casbin_api_rule_ptype` (`ptype`),
  KEY `IDX_casbin_api_rule_v0` (`v0`),
  KEY `IDX_casbin_api_rule_v1` (`v1`),
  KEY `IDX_casbin_api_rule_v2` (`v2`),
  KEY `IDX_casbin_api_rule_v3` (`v3`),
  KEY `IDX_casbin_api_rule_v4` (`v4`),
  KEY `IDX_casbin_api_rule_v5` (`v5`)
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
('admin','cert-built-in','2024-01-22T14:02:33Z','Built-in Cert','JWT','x509','RS256',4096,20,'-----BEGIN CERTIFICATE-----\nMIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCgxDjAMBgNVBAoTBWFk\nbWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MDEyMjE0MDIzNloXDTQ0\nMDEyMjE0MDIzNlowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp\nbHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC56mXBc2a0YyH0\nrWDisBF5lIsfjZwOjrr08lXtzn0SYOd1la9ngerhE155NGlRxC3PfCvVUR89qTDJ\nWblYuuMEtc1YUJ4YeaoaIfoqG5OkMiialej3/83dOXb2uiJ/Q7wAdR3o/PXOx6Lo\nKTYDNZaEaH1yIU83cz2XMl0gRpZlm4s7/R9xkVldAVZmH8gLppP881DB4oGkFNPF\nw3J0u2LjoiMgDgZczl68fDB/Oq9KFb5bH7b7kjCSeV+42+vL6MrPdAHqe2iIoeHB\n9AFU82W0E/oaN37GQIRG763knUe8sTl99N3IHqKKDnTCUYg+TmwhJRSNZ2ViE7YG\nIRRLdjoYIfqyx+McQpt6Yui76VxVAChjKVrc7VyYz7DmVsfm9v+SDzgDNbJXFzP3\ntPS2QsVAbiCYghSU2GhX3/ip1BB34+MDu/fnzRYbK3BjTWFvsrHRgszTBju4PlbR\nSdN7ySV3IICGLM9eb9EBmAJW+dYAvjOAjQwJHnwrx2Mee9yWdeENnpNd0lbIiZqW\nI3x7xiwxRh9PJMCrJyzXd7970m6ht95KK9VApbphOPr6GezpqqJ5BmATg6iBMiio\nYzPR5h2k7zJopFTFNBmjYeTvAUWkkKs8QtlQiCJu0Wn13kFnFIxNiyQ02lOXLieW\nDvNr9JPM3uNHDGdEiDErquAZmsQwBQIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G\nCSqGSIb3DQEBCwUAA4ICAQCuHb0B4h3EMHCIzKPjhJyjJmopGXU0moCRyONMF84l\nA/bG2H53Q8Xbiw+7TaIradViv1+3FwItpF417dAoaH0/yayLSt9JYEOIzXK0WWpM\n/ROJR9Esu1y7JI3PUfjPqRRbQ4bYKE6hQJpj+S+UzinXhF/EftLfGG3HoW/C9xjo\ndCYo0LupVLejqZsuP6GI4nrcep19LTL/QUee+lZUFFfqE4NdBWykCoMaG/YGi+fj\nsh1MzpcpdLb5pfI0+uyMaQgoOMU3nhy5/1Lev4XQMtfTMddEJYbyXtHD9ytvqDVW\nLfljbje4jYRxaZfMzbdNI0dRFjIc7QbeSV8WVLYApGWAWbEEqmK8lU08KT79HkOr\nDacW34tlTiYnPz0fdMNj/wEd/7P0KkWbKclAtZHUw8Q6GmfRMujH8NQ0JWtyquMA\nyi0AD2doN7ctc704AENz1H2vsiU39Rclykf9T5OBFlyMBkcEM1f3YV7pS6JqoaW5\ngEL/VVOpVsTVyQlc19ZpFzSTkr59pWAsllaJ9eHr8qyEhQG64GZ+v/ssMvujXMB9\nw0NWo4PeSxU5hCoaEOwroaE+ELb8b1SUfxIt0Zk1/5utJwAnaWVE+ILs6tigUy4b\nDjNhiI8XyJASXv0cX33cfaL4G8zEYIQcx3slWt5AZ2QwyxQ81RUO6Y1f6Z5uUa4a\n2Q==\n-----END CERTIFICATE-----\n','-----BEGIN RSA PRIVATE KEY-----\nMIIJKgIBAAKCAgEAueplwXNmtGMh9K1g4rAReZSLH42cDo669PJV7c59EmDndZWv\nZ4Hq4RNeeTRpUcQtz3wr1VEfPakwyVm5WLrjBLXNWFCeGHmqGiH6KhuTpDIompXo\n9//N3Tl29roif0O8AHUd6Pz1zsei6Ck2AzWWhGh9ciFPN3M9lzJdIEaWZZuLO/0f\ncZFZXQFWZh/IC6aT/PNQweKBpBTTxcNydLti46IjIA4GXM5evHwwfzqvShW+Wx+2\n+5IwknlfuNvry+jKz3QB6ntoiKHhwfQBVPNltBP6Gjd+xkCERu+t5J1HvLE5ffTd\nyB6iig50wlGIPk5sISUUjWdlYhO2BiEUS3Y6GCH6ssfjHEKbemLou+lcVQAoYyla\n3O1cmM+w5lbH5vb/kg84AzWyVxcz97T0tkLFQG4gmIIUlNhoV9/4qdQQd+PjA7v3\n580WGytwY01hb7Kx0YLM0wY7uD5W0UnTe8kldyCAhizPXm/RAZgCVvnWAL4zgI0M\nCR58K8djHnvclnXhDZ6TXdJWyImaliN8e8YsMUYfTyTAqycs13e/e9JuobfeSivV\nQKW6YTj6+hns6aqieQZgE4OogTIoqGMz0eYdpO8yaKRUxTQZo2Hk7wFFpJCrPELZ\nUIgibtFp9d5BZxSMTYskNNpTly4nlg7za/STzN7jRwxnRIgxK6rgGZrEMAUCAwEA\nAQKCAgBMLIHstT/LgSKUgcVEnCdMzVQDZZ4fSNPJMNGMUiJkuVeckewAWPbHqYv3\n1UWhvuOWM6YyDL7kIMJgfWa3uDrz3xl3qfBcztynQGyjfBEOIY8JZ4rAsgrDLZxU\nkwc3ZaVN+q56m8qLIrjYrqn2vqohLj7X2FYAvjLqFDSb2NAeaZCuz5NmkMswlC+2\nQCdSvrm71mWsSwYbGH18dgwbT/vAkNobdCOfOt8OE0Q7nOvdSvNnmqL6iHdmTFyv\n/UurjIIsZbezP0UhVlKNiVBSYje1hMngnARRbnXEKsfw95BA+8w2k3GbYRHvxuSI\nCafs/2zGV88H8OlVOgZGlJ8gHBzIu0LaXcR7+RQ8MHsGCKxjQSsq9xu0NmDQB3G5\nhl6ChrxPXDYRdutravX0Z8Ex8oFCTWwCr33IrWmFe5FRGJE7YzgETWvdJuJHWBcB\nSheu/ngTjPM5Z2imdAcJnfSKOwQ+bIb9sdnLtRq+1Ixy1UwSqpjvSAI9JzVgMLk2\ni4kNwlDxyR5sXw4+FqQdqZCHYe4ZFD9AS2O2v6A9nI9CxJoZCL5RsvxQOAJSuSdo\nM52675HzWS10nlNYwMDn/pZi7VxE0d1A2dwkx4W5IBYdO/WJ36c58if/pl27AXjA\nuaIzyn+ATYQ2MTWaobKrmJkeMvovasxJnlNVQCygWYzKgbcxAQKCAQEA6rUvyvu2\n+G/9nsmF36I4MyhQRdWRGbSkhZ7FxwRc0VnRPUWfkp3m32PaZa/eVZfmyHlPqENs\nLHVfGggktz5SpCYeOyZ3oJTgsApcMejCJY64ZERyBa5HUlVOu9tva2HdteHbCBu9\n98OymjB8Ulo8rKRK8J9OSLOUixSGTDXlt/2NGik3gn3lPfRzMCaCv5Gk84/4hX2j\nQW+M8ijToTs841yHurzesX84N2hO7OifTWJo/kVi7KeM6+jaOKXzccc0ef897qP8\niKlSlR1t1NPJoVgMGcYtfj4qFAlsGnbYpszuG4qn/JIHY5rDZ9qsb0vqvZZdNP7k\no5VFqctuj1Ha0QKCAQEAysgR/PP2rvVmX8IZhBQ54gcW3wiQLtO10mL2zYrJSWQa\nWySPEDazC8EE4xCVFCidHtMGO9uHrGyEt9dOcnzqDyjcc5VtZuUVKdf2Pb7V/fL9\nnTqPp3zfbjj7DTRqB6t7+AyDoKUoqM2fsRlc8dtoojWJRShN++67QMsmdeZJhDPt\nfL9d+Y+epObjBTNCyyMebu3eqZipXf0UP4a5FlhyCS1re0vVk38g9vN6+4mMP8Ny\nqC/p8mnfTJoaD0PVpc5t4ecjUeuGUWqW1iryrn8ll31Zo1rjwAyaK2/Y8sii0wCr\n2URSRwKynXZPlv81jCQ0TTJUU9VBAiVLMZPZAvbm9QKCAQEAn1QaOpg/sE0OBWHW\nUGbl8cx3GcEN/D5FxTNwHVcXz0JCqW5/Ed/BH3rAgnEt5Dr2/rZjXd1PLKsMwTYv\n/nj/TtFVil/lq4wFL1wJFBRm32oQQHi6UqLpZbnldd9Ttri78kF9F/cFMZGWx9cM\nPjdloujwuoHaeb32o6duN4QLCqjDxbOfLCVcnn84RsKN1ZAAQxtD4RLV5ZDdRHJ0\nn6n//nQM67ZVEndDaVGU6nxL0BNzJNFjgzWGk4sBwJzfMyjAteSQXVTTFM6k8fcF\nXQncgXus0z5WGbIHjIyM5zYwgqLxLJ8mxG05OOORrQmkLvWBR+wwH8681VN68/XW\netJdUQKCAQEAqxHN2xAVc9Qi4XXmAL7vdfd1HAMlX9vK8An9G7mRxhBlC67z4kHD\nGo9jiAtdOPxqUK7F+4lgE94YuN8ylvM6oj9ee0P8X2mzSPGgEscD0JFF03ar6ig2\ndc4sPR+Ss5W/p6snAEdU3dNafRVgi8kFpJJ1k5pE79yerDK155C3RIhqOWtX5El9\nFLCTpLdyCd0+t2aFCZ54g4oVouINEwTab1OZ8RIww5XkQXF2tu17G+/OsoR5YMBg\nWUdH5MjdXFuh54oPCfUgA19gkJz6zqsFE5/0FxN+P25iQXLCG0+XzVorn8c7ghyM\ngrpkuoXirq98UAO9kFu/1AeSP+jyksWoYQKCAQEAyO0JWwHkQG2XiFVqqSy8tZMD\n9qZOIVQ8GiOfYGnGsIuIXLWJD21FcC0WbbT2asWB+SXrvtSb8xa76NBOrYcNxoch\n+/ll9J4kSRdUc0ER/I3QFyA4RCVzIeQPFzlH5sNCo2SSdBhwWOYIBKkZAkL+93QN\nm5zcHO0Ov1gGfcUjRYTl/s7GjOtGftiaqOxnhO8u87ommbfrBKnM/6RaXXvorgu+\nPRXJbOk6txhvXM7xI77geQ3CSCAHMr+yF+zCin4iEKuQOSW+g5diiaZT6pvR9Nz9\n1WR7lPw6MECOeiSLRR/xobcgobuOk4Mdt2h6ntsrgLy0MOgP1k95oo2g6S8j8Q==\n-----END RSA PRIVATE KEY-----\n'),
('admin','cert_6kw4bl','2024-01-26T14:15:45+01:00','New Cert - 6kw4bl','JWT','x509','RS256',4096,20,'-----BEGIN CERTIFICATE-----\nMIIE2TCCAsGgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCYxDjAMBgNVBAoTBWFk\nbWluMRQwEgYDVQQDDAtjZXJ0XzZrdzRibDAeFw0yNDAxMjYxMzE1NDZaFw00NDAx\nMjYxMzE1NDZaMCYxDjAMBgNVBAoTBWFkbWluMRQwEgYDVQQDDAtjZXJ0XzZrdzRi\nbDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAM72XPzd0zJBIhQREgWX\nB9GQQDRXzUcqgHHWFoWsAJaqQBFXKMYiC5wAa0xvyR7sL/qdKm1q921DE8+lmg8S\nvRV0KyhqyWm/AHyDt/GQo1kTI1te7N29sg7ou45eoEReYvbuL+FKm2V7LT9oUgRT\n29UL0XHzm5SgSy7QlE1g5kI7l+r4yjIpWacbqiUCSotGRTD1l/mY44NXAHkLI87V\n+xtaShtyF/Q4vojq/eke17OqDxoPCpwM7LQRJiAgcXW+8ZDCi6ISJ+37NbHE8FKS\nM0yi5fi9JhyfnD9nuvMKaH5gli+8AmUDkE4OQX+5k8solQ9F6oGno1nAbewgPTRJ\nex4xcOvVrlPmihOvPdeiLPf+Jv0evg0GIlTm4UGsQ3vH3Q4DQSnaUgQeV7/QgLAa\n/FAdAKJrt7URqu3w8olQbBrzaRNvo92+TfU7xP28GRiM48tndVLaoWojS82UF1d8\nrIs1JzY94icF3PK5IHaBaJasthbqKkCNROqsQ4OHp7Stal4F/E0mr0FKvrzuibTQ\nDy2CJ0JbBJ/+cbJcXsshRAG+AoY5vbSK3z/3cqAW7mM8aOtBh79ItL+IvLeXo9yG\nyRUMg9tepFXPggEm/s2jm2yuEIuNvi62/yEwyISrz+lUBzPTy++tfr14eQDUXGed\nJJMcDL6RKfhvH8BQDfwOejwZAgMBAAGjEDAOMAwGA1UdEwEB/wQCMAAwDQYJKoZI\nhvcNAQELBQADggIBADiSBqYDt8RkWnyiq9UMtr5+EwT67m0+YOFFnCjclrLd3t3u\nkk9+kjt55aMImP7+m3nAnf8wjo1jSD54+tP/rha4+DIZrdoH1NUulJd5CaCQhhJG\nm//zqQryp3IcxW3xNmn6icHmb7xOnTmIxUunuyy1gkPGiSJfvrStYcZbvoV2n8mD\nG+K5VcgUudOvEypoP/t3XoBJf73TgPA/Uv/4Gv1BeMSseAj4gqtbETrp7TEBMxmd\nve/74dmAP639PTCa8zcydwMEa1dAwA4hq6liB4s+MtYG9TqpYnaqk7c/3EPsT0DE\na7AMyEg0cdIIvbekEiQ9olK6wkRaDvi3IyZX9Z2tnBLZKmzvk4113dc79kpl+ile\n2JI7ep0aMO1Zt3CJWtxCRNvEnWge0MscFr5UsweugNdcREP/5FgZpqWg5y5t9EhM\nJ0jrXyEmvgmkJ7SXv8LDr1ornWm3ZY6ZTYEu0Tp+Uf1XnGfyEQJmI0AWGtqnRxf0\nJRsFt+ktBJapyswq/d2ZCtZswiiMwMj9C6jIF8I+9dLkUPtTLoEXQR7KUcwypIfB\nCB3OUp7J4lvL7ygaIAv+LNL5Uq+sMK1KkFhlVxsXVZjNljyAM37mxOpR4JDfaYZa\ngVbRqn9eCd+JMV+g/bfSd64OaG+Cu4XDRACaa0owAHQq9Ics71K810I314Yc\n-----END CERTIFICATE-----\n','-----BEGIN RSA PRIVATE KEY-----\nMIIJJwIBAAKCAgEAzvZc/N3TMkEiFBESBZcH0ZBANFfNRyqAcdYWhawAlqpAEVco\nxiILnABrTG/JHuwv+p0qbWr3bUMTz6WaDxK9FXQrKGrJab8AfIO38ZCjWRMjW17s\n3b2yDui7jl6gRF5i9u4v4UqbZXstP2hSBFPb1QvRcfOblKBLLtCUTWDmQjuX6vjK\nMilZpxuqJQJKi0ZFMPWX+Zjjg1cAeQsjztX7G1pKG3IX9Di+iOr96R7Xs6oPGg8K\nnAzstBEmICBxdb7xkMKLohIn7fs1scTwUpIzTKLl+L0mHJ+cP2e68wpofmCWL7wC\nZQOQTg5Bf7mTyyiVD0XqgaejWcBt7CA9NEl7HjFw69WuU+aKE68916Is9/4m/R6+\nDQYiVObhQaxDe8fdDgNBKdpSBB5Xv9CAsBr8UB0Aomu3tRGq7fDyiVBsGvNpE2+j\n3b5N9TvE/bwZGIzjy2d1UtqhaiNLzZQXV3ysizUnNj3iJwXc8rkgdoFolqy2Fuoq\nQI1E6qxDg4entK1qXgX8TSavQUq+vO6JtNAPLYInQlsEn/5xslxeyyFEAb4Chjm9\ntIrfP/dyoBbuYzxo60GHv0i0v4i8t5ej3IbJFQyD216kVc+CASb+zaObbK4Qi42+\nLrb/ITDIhKvP6VQHM9PL761+vXh5ANRcZ50kkxwMvpEp+G8fwFAN/A56PBkCAwEA\nAQKCAgB3iAyesxNWdA3VnyJUfi0y2OhsEsXps19p3+c0HupcGkpUeY2AGYuw9wEB\nrZJwPKNdUEZ/2Ya74UDg7dkzmXQBnw2KE1ruqzUBtSWY7Bubx5TlIccWLohXWg1x\nJa/UrNrlmR2oNenYS7MPaxXrj+9odaHq+XLC/W1OxYLRygRS/o44VKabIAy6mhzD\nsTYSiGxP4Zh7vNSyN557SnbM8ANOgfBJN7UkBV3uQCKT8I9OIgsE1ukexcw0F694\nYKSHB9gG7oWs/mV3al5RpNfUKMJeIbtG1R/c6kZYzHVKB5ngW7KCMUkExHEk09D6\njtkQPgkRQCU36vVKUfxqoxgWSdZDyACOF+qgwmYpnlApX4J+SSsZvhuycvK2siKi\nUodRgVFVw0/pO1aO3B3a7KCW7wwk8HkymRK4lkTAryPH1XoRgl21r/tcaskfgVbB\nzqzjcl218weE9VA2O21cVWygadtGon0MwIfeZrRoAPxHrDygIPSTcmqGaphQTAEl\neOAieGPdZqsdUXkTBRDi4uHa5Ppq0KQ9ODvU9PLpfNX837odNzmcc1wFXPYDhiWe\ndGmN+xaVX7q74IGYgzvFQmNXUSTkLuFOaPXCzSU3F9chE04OhLq26QgNEksoVcZx\nWeWs3LDsEofRq5FMfqCehFatBl9zRO8CoTzdBqPk+IvTPG5/gQKCAQEA+8DRHRvC\nKge4Xowq5GTnjUK6MlojtU4AlZHsy5h3DRYMkck1Ch0/FVw64Em/Buxh7kIViKSO\nMhFsoEb4s53YoDMNEOBpDn5N8rVvBPHNCcLc5v2LkQOynZFzXPdwPA83kz7MscGB\n1OPFkvgcFuir/mIn8TnXw6B5V67Y2S7N9jszgy6sevdRkKvZCFcYg9ntN7S8bpvc\nGMv/EonDXh+uE4AvgeBlYzoLMs8gEA4oPKXWQpM53PxC5bdyogq3wUZPVZZxXxKg\ndUFAHCLNCZ4a30ECEuYftNo/GjEKkJlAkOcpIlAwVwpZ9wVEo/8G7OM9m0z9+GiW\nH/7o0M8/TEj7SQKCAQEA0nQeliDtPNntt+51j7CqFG1Xgnkan3/uiWxbV5/djwT9\nxesJuVO83f1fRtRa67DyIo5LE+JDBco/vrvmCe7mL1D/LswjI9HGcqWbwlCqZoS/\n/fBIB38ODGqRD5YWYFEIW5rXd+afc7xcuEqqgRZYTesLZ9hK1PkKIEiOLjpimLTO\nAvji3B1NZ7y9JY8BnuiFrrh4g+o6a3Djmc5BYZuIDYFxADc63yV0200+LbYH/EZs\nYhk6hY2x5/wTGwXJF0PS0RWzkYBGKdxpRh5TDretrRETkbKYfd1c9Wz5pAXJ7xvX\n4//qaTPwsPv2Nkt/6iO9bRfCmNOTX7ZsRIpcJiLqUQKCAQAyMgi/wAgfrzhgiZwH\nu+K7NKHBZl2WSb4uFFFdasHZ9xp8ety7bodkb+ZBUBLpg3onMj/u5biAXR8GegAe\neAt4LZWeVtA7lo1eJjTDjJ6wIo0+9TC9sjoL1rNkxuU25GXVUwEnNAj59IwxOI0J\nOE0KxHFoVHsjwzxOcktESmPAg59KuaSkQ+mcadc1JYB60ZnNsJidiTACNbJe9N7i\nRnjD5JwUTjSI60rOT6P574iwRvSIg6hW2mlQOhp+Gpr2y1kIHJ3wMduSZXct5PZy\nw3ZiKykJsZ6Cxb0tMLgFirjn6181Oz3YLPUxHnjIJhIwa0KeU2SUAe5k5MNw1tGt\nGSQZAoIBAGHRIQpMgZf//vK3viKsTVEzRTJakZpC/x8WoxoGLxezjTR5u0pNdoKD\nqs4kE6Jq2xBerNywFNDTIW/Iq/I//PNPJVyd+1NBxIgzG0Nk9N6zov0nuoLpdiEl\nQwlIjFv2LflN7gpHwiMsELiD094uAZstvV5l9Noqap94ucUY1A0ANKTDA8alQ/4M\nhqm3X1x53PDJwxIlQ0P+83rgmBkDDmigmmIsSYvAQCFSNK1QZ0PFg8jQyxeaNW+L\nBWJQ/Rd4KbuO56igQ3xfevrhS1+S1gGT51GX/jK6OePE4/9txV8CxQSvRUfioWPR\nqK2xx+GO/ROAsK0R4fThuE7fNFdxcRECggEAZsH+UmD+QE55i3kcDkZEQ/NE9jXU\n+r40ULueF6EhFddCEOIGyUO/lswKveYBAo9yNpHNTQSchhiN4pQFLzbIoeVxmIDo\ndSotoiSILvufrJ09yp87jId539luPmojwa5qgA9AHJ5VScdofEzbgVKlNXKME1Nj\nl04DyKuibG44W67fVDE4mcw4neVWqNfLZW9iGmcZeFZ4wZGQUiiFHK1eKACK9efe\ne9RhoDYOx7esU02mpvo1F7vOE690bPSfip8IrGkWuDaj4qm4AmHbmZDFaBDqQn0H\nYXKwS+ovA0kHhCEgGKTPEJ17FZv+xXkJfpZgdmkFHJcB4xznDbbdBefV8w==\n-----END RSA PRIVATE KEY-----\n'),
('golmon','golmon','2024-01-26T14:15:43+01:00','golmon','JWT','x509','RS256',4096,20,'-----BEGIN CERTIFICATE-----\nMIIE2TCCAsGgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCYxDjAMBgNVBAoTBWFk\nbWluMRQwEgYDVQQDDAtjZXJ0XzljaGQ4bzAeFw0yNDAxMjYxMzE1NDZaFw00NDAx\nMjYxMzE1NDZaMCYxDjAMBgNVBAoTBWFkbWluMRQwEgYDVQQDDAtjZXJ0XzljaGQ4\nbzCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMg/+r4q0x0FMTUGJQB4\n6rPETN47f02NeuIQlY56boG9vZBBUrEt+ubm/QvU6qBPa0TmA+3Au/9xwMe30GgC\n+DwzjLmybUJOSIjC5tS+9OTm4rbc3Bcvja4qlG5x8tdUg8jsL5wlI+3DK4PYcF5x\nzVmcd5tG0G0ZZTO2rOFlN+ketyMjTlalw5JkmbAkWrlN8Sd557Q2EvdSzn1uptfH\nddpzD1w0uLO9Id3D4Eqf2rrX0PquHGlasRQjxz7xly7MfVevAHU4zrjoNLlmhZMT\nerV69h13bsEIUM18TuGlvZJq+MYvceS1jJHmBhY2+rig6tMvqlkKrGyKR16GdnJE\ntWL8TX5zEGwIEMXOVR5M/xLOvWNyys68EOOGIJshRChzCdom3Oi0mNEDV3OYMqyQ\nJOT5xUDVhP8iLDMA0BXKlUPVoUa5Blwd9nOQJ6c0858hp63yE23nPxAdEDBv78yL\nYIrs8oknNfiF7/9TQC47n69mrtBvd0WuVmApbSCl2nabKftgwifEykrmZf5G9PMh\nKBZVLE+XWaELMXJxAqzB88vpWtYA6pfx/n/MeFvDlaiXN+sZQYqnKlf+34dWbYaM\nyHxsIM1rViWMSTIc4iybvIsKAye6+o8Y/p5lxLpf8E1pG4lq0TITkDLX8VFeW4KQ\n8ikfI1WHNWVjbfKxf7d/fsjzAgMBAAGjEDAOMAwGA1UdEwEB/wQCMAAwDQYJKoZI\nhvcNAQELBQADggIBAC3UlV0+jgZvJokazbfsxiHHtX3NNj1oeAd5dq9WJQhHN/X8\nzkXMOdkn7134ocQg0//9vEBO+BwHe2Iav69tPuryiPGIX0gBlbXHqfUfkE3tst4A\neFq3DF7iTL5kMKSvhXTOvs1TJBEBjBPuKME6sPjoItdzc760t/MD+xVVWgs7DD41\n6WEs4ERluLX2gTV/Sr5D6nzSTDhD9dCjBO0CKWvntZPmK/vh1cPaZWomsdF7Cl7G\nf9BQTElvpiT7pzytkTzRW7o/jKNroBTvYleG9ilDN59nTMGXPTkKPZi7XIEsHZBa\nD6ECDlUoBLqLDZCGN4+dfwtQipUPSWaFU4IEjAtXUOOJwbBV4GDbc1WcXNh8f/Hy\n/vP8gUAZTtKP+Br0TdAzbbAxztnwJUpl6IW2vNMZv+5mT8OUfXoW7+vDtLadWd0w\nAInoNMnrASURCO5yXLrYkGPCU/2zG8WFu9Tg2pu9EOtQY/tsBwj9j3uVIgfrUema\npQ/K/Q444rk9IoD3N7hx7GhsJIZtfeDl/5t5MZxW5CIiU/dee9BW1r/21ez+j9Ih\nmcsxeSsE0VyRZ0szI1Jv733VAaBbCZ0cBPzrQRJyrZxN2i8Dubk3L5iN+eM6ztfO\nfjqi9nbwuOqpf7IK4Ickggv0HHw9wToQ8npEW6IEDwWjkjDHC1Uql0kv/E5M\n-----END CERTIFICATE-----\n','-----BEGIN RSA PRIVATE KEY-----\nMIIJKAIBAAKCAgEAyD/6virTHQUxNQYlAHjqs8RM3jt/TY164hCVjnpugb29kEFS\nsS365ub9C9TqoE9rROYD7cC7/3HAx7fQaAL4PDOMubJtQk5IiMLm1L705Obittzc\nFy+NriqUbnHy11SDyOwvnCUj7cMrg9hwXnHNWZx3m0bQbRllM7as4WU36R63IyNO\nVqXDkmSZsCRauU3xJ3nntDYS91LOfW6m18d12nMPXDS4s70h3cPgSp/autfQ+q4c\naVqxFCPHPvGXLsx9V68AdTjOuOg0uWaFkxN6tXr2HXduwQhQzXxO4aW9kmr4xi9x\n5LWMkeYGFjb6uKDq0y+qWQqsbIpHXoZ2ckS1YvxNfnMQbAgQxc5VHkz/Es69Y3LK\nzrwQ44YgmyFEKHMJ2ibc6LSY0QNXc5gyrJAk5PnFQNWE/yIsMwDQFcqVQ9WhRrkG\nXB32c5AnpzTznyGnrfITbec/EB0QMG/vzItgiuzyiSc1+IXv/1NALjufr2au0G93\nRa5WYCltIKXadpsp+2DCJ8TKSuZl/kb08yEoFlUsT5dZoQsxcnECrMHzy+la1gDq\nl/H+f8x4W8OVqJc36xlBiqcqV/7fh1ZthozIfGwgzWtWJYxJMhziLJu8iwoDJ7r6\njxj+nmXEul/wTWkbiWrRMhOQMtfxUV5bgpDyKR8jVYc1ZWNt8rF/t39+yPMCAwEA\nAQKCAgBUrLkaMIGUg92Kzk5XJMoZuafHUOFDqc+MR/b1iE+yDMlbdkPBJ/AwMvxN\nRHrxzqNNPvXqUtUr7q3VxaQaVycgTavz2b7ZisChE8kHrLdhE0BKkpl+NF10iAy7\npvNImjQfgb+gBxRqNVzxI1Rgmz555e+teQQpHdPtShFQPbymlpZaBVPaz70i6ecS\n1EyIjqyqRKH1UegzLJCj+WYTWAQ9mumj06dGWXM4ktsEsxOKbjevyG+7HN5D5d0a\ngI2s/EsECLvo1VyUU5v3yaIxzsrUcmofi6EJfrqsKSQxxiOjBhirtOQ0EZCfIOTx\n/82ExIaHRmCBxkGio9YJ4lGzf9oygLwX9chqt6dsHirhsaETwAnp9RJWvpd6ij8T\njbf2dVfepWq4d4fb17aR0BCzhAOw6bULJGRxNXRrg+kLxyI+9X8WPVafwIpvV3eO\nL05vZxKN6//SULwIaUxfSMcGKNR3+0wxB7iLF41gBEEa+Oxf0JSHrSoY8skyFz43\n+nAFrmgsnYxgXSd6EFYVwI8ivwuR9xtvAjCJZhR/zhJvkJOGcGW147Gf+PlNMS2G\n3mLeUwV9Pd/k4U46I7IeAakBCcqQfHBHRtdGrhBkf1LVnET8hUOo2XqmgX+XN0VK\n9AhtfklVSs2KyWwUxijUzg2tWI8TZi0oaAsog665AXPDI+gqAQKCAQEA97aKmR1u\niZK+yrhUva5bOy80yNudqwqgB04dlg6GdBYIcD8oQqm9JlyeCggOyWcUWg0h4WPU\nCCsOFfbZjLzzJy0F0PZlD+3ujlFZJi9YomC4hp8WV+SVWw8kG58AYKJ8igbfMxV1\n2a8w75WjI8YvzZlFjwWkklkOgUTTk0dnLkjKOkVKQiserUf8tL10TfoWq2LPSKAF\n8Jw8edTOJ6twplqcOuzb3UIbgMAfm8n5tHZmlTU6xm/v3thrhSVP5rfvy0jQp0gg\nabQF6/hfAtX4E3FHpKwEcd2HFr1f2c8g6mlbaUAxYZnvBD6xkrmwutl4Naba/5EG\nOQ2e/1JzaYg+nwKCAQEAzvL0krQFLesSyXXEkRA5Vvn9Aqb0A5ctTv33N72TY1QB\nCU0Rt7IApwIi8cO10z0Hx5JitZyI3fF3wnSVEkKt4CKOY84SCYFHNOoPB2haGsBC\n4indBg6SD9qKEI/rpqdJXPhC5Y22jUiR6+7WO9itvdkDeIUVUEsFFtx72NswQLSZ\nvn8/3GpW3etmdham5avFstPKhzDtEzZD1ebxyiSroce0qT9Toc4SUH+NCwgEtOad\nUO8FX16Dc5KfLqF2n3Q5M3XPUtlGtizyGx46id/Xc1EBhImqBfbixjFPWjMxKaT9\n7lNQ47WK5qOYMZhnEBHIEa8wblWWAyQNfI2X0inZLQKCAQAEKVfovJrXytRTuYcK\n7LvxoZhka3QZpIMNvF044SOXHauknxsBC7L2ywWIq5v7/DRWUvQnwjKUtIx3B/+d\noqr/FH2NhiYqf1fLokg6IP9/MtrGwDNy5I8xyW5U3HX4KaKn+veS9yBUuOG8lKn5\n9uFktdd6UKD0KHTa7RoU1lVAbM6g7fsSY4EPbi8rpicnDDWHSZCr6qxO34EQluej\nuPiagtkvED2dWPf3UML3Lgx44KhWh19maAkCmGYuBXNzL9Hie2Wt+cM5o2GaFkEa\nXhfd08BdXtpwQ0V6t1G96gHmjkCP4xkxR5HBY4A+M8ppSTAAzr3NH1WYbccnCO6R\nbk2HAoIBACqWpyxVrccwXFJnUQeFbjdvBNl54Deo8eMSssCe2+kSDZCLcrz5/dZg\nwy4713xcT/CLOJMlXqlGGx5CfbcfT8cTdXgmnWGlYDEMhgFBQWHF9T2z3c90SizH\nDaiw5Y8LWDawxJuXGV1j9Nu38BCq2755HZS81pEKj0aQI1CScxCt2gHxEARdQfkz\ni4d7y+bx/aJ6oXBG6lMM1NL9Tv8JouSNQ6mc5aojzXMRfMYrZUSRPQi9174zphuv\nreCby9yuv2LOuNbU7g9pmn1oMCXVkfIiVoyfBAVsNGkTFsB6ToDCepuEO95QqwAh\n5J04PuV4s1KoWfAq3s9QqRHb1cWjZRUCggEBANu8dCD7o9JlI3kkZBShakASBMut\nPyCGOr1V/bvH24+1+9tMLblFVtRZH4MTVyl18iLwOSyhshtcsrHiOkJI0ylnRj2N\nfn8LPY8K8ne+CEbcSlc6ycRdjKnlSL/SDgVfTyvdUt/xWqOJ+as5lLBTyX/oekGX\n0mDET+93FK3Z4OQImWJ473mLoizp8AO4/ZEfaLWcU54PoSjMWAk01NOg/x3EtD3O\nYthKyYqTLcdC71Ogw2OnsKUBigeNyndncRAEwXWxf7/+D35fs+bdVGsCaDVlznZe\nYdnRr4LFL+aR0erXnGdiWcqVP/E0HnL5i7UqWfujJWuYX5S5ASKvReT2YnU=\n-----END RSA PRIVATE KEY-----\n');
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
INSERT INTO `group` VALUES
('built-in','group_ehw8p8','2024-01-26T09:40:30+01:00','2024-01-26T09:40:30+01:00','New Group - ehw8p8','','','Virtual','built-in',1,'','','null',1);
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
('admin','golmon','2024-01-22T15:09:17+01:00','Golmon Land','','https://cdn.casbin.org/img/favicon.png','md5-salt','','[]','[\"FR\"]','https://cdn.casbin.org/img/casbin.svg','golmon_app','[]','[\"en\",\"es\",\"fr\",\"de\",\"zh\",\"id\",\"ja\",\"ko\",\"ru\",\"vi\",\"pt\",\"it\",\"ms\",\"tr\",\"ar\",\"he\",\"nl\",\"pl\",\"fi\",\"sv\",\"uk\",\"kk\",\"fa\"]',NULL,'2a5c3b2b907146e0c13c9faa93b4ef3a','','',0,0,1,'null','[{\"name\":\"Organization\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"ID\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Immutable\"},{\"name\":\"Name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Display name\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Avatar\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"User type\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Password\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Email\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Phone\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country code\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Country/Region\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Location\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Address\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Affiliation\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Title\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card type\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"ID card info\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Homepage\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Bio\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Self\"},{\"name\":\"Tag\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Language\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Gender\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Birthday\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Education\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Score\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Karma\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Ranking\",\"visible\":false,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Signup application\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"API key\",\"visible\":false,\"viewRule\":\"\",\"modifyRule\":\"Self\"},{\"name\":\"Groups\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Roles\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"Permissions\",\"visible\":true,\"viewRule\":\"Public\",\"modifyRule\":\"Admin\"},{\"name\":\"3rd-party logins\",\"visible\":false,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Properties\",\"visible\":false,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is online\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is admin\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is forbidden\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Is deleted\",\"visible\":true,\"viewRule\":\"Admin\",\"modifyRule\":\"Admin\"},{\"name\":\"Multi-factor authentication\",\"visible\":false,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"WebAuthn credentials\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"},{\"name\":\"Managed accounts\",\"visible\":true,\"viewRule\":\"Self\",\"modifyRule\":\"Self\"}]'),
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
('golmon','permission_admin','2024-01-26T11:17:56+01:00','permission_admin','','[\"golmon/admin\"]','[]','[]','[\"*\"]','','','Custom','[\"golmon_app\"]','[\"Read\",\"Write\",\"Admin\"]','Allow',1,'admin','','','Approved'),
('golmon','permission_admingod','2024-01-26T13:57:08+01:00','permission_admingod','','[\"golmon/AdminGod\"]','[]','[]','[\"*\"]','','','Custom','[\"golmon_app\"]','[\"Admin\"]','Allow',1,'admin','','','Approved'),
('golmon','permission_ecrire','2024-01-26T09:52:05+01:00','permission_ecrire','','[\"golmon/writer\"]','[]','[]','[\"*\"]','','','Custom','[\"golmon_app\"]','[\"Write\"]','Allow',1,'admin','','','Approved'),
('golmon','permission_lire','2024-01-26T10:00:06+01:00','permission_lire','','[\"golmon/reader\"]','[]','[]','[\"*\"]','','','Custom','[\"golmon_app\"]','[\"Read\"]','Allow',1,'admin','','','Approved');
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_rule`
--

LOCK TABLES `permission_rule` WRITE;
/*!40000 ALTER TABLE `permission_rule` DISABLE KEYS */;
INSERT INTO `permission_rule` VALUES
(34,'p','golmon/admin','*','golmon_app','read','allow','golmon/permission_admin'),
(35,'p','golmon/admin','*','golmon_app','write','allow','golmon/permission_admin'),
(36,'p','golmon/admin','*','golmon_app','admin','allow','golmon/permission_admin'),
(37,'p','golmon/reader','*','golmon_app','read','allow','golmon/permission_lire'),
(38,'p','golmon/writer','*','golmon_app','write','allow','golmon/permission_ecrire'),
(39,'p','golmon/AdminGod','*','golmon_app','admin','allow','golmon/permission_admingod');
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
INSERT INTO `role` VALUES
('built-in','role_fx7kac','2024-01-26T09:53:06+01:00','New Role - fx7kac','','[]','[]','[]','[]',1),
('golmon','role_jqh2xu','2024-01-26T11:24:23+01:00','New Role - jqh2xu','','[]','[]','[]','[]',1);
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
('built-in','admin','app-built-in','2024-01-22T14:02:57Z','[\"262efdb538b9814809f98c8cc1a1b704\",\"7ce9f9a1d7db4fe114ed354f789b4530\",\"5a49dde0e86ade8c41b503da31c8526f\",\"1b588388e4b448ab2570e981d3c71edf\",\"b0c5394e7f04d0bfe80bc1e672a5ec6d\",\"19be8aa217cc2ee7b07ecc75b6c71613\",\"ea6b11d839d2cc04da325af48c594a4f\",\"dfa48c79ca5e51c8c4eaebc339d67e60\"]'),
('golmon','admin','golmon_app','2024-01-26T10:10:07Z','[\"ea6b11d839d2cc04da325af48c594a4f\",\"5bdbd2ce0793ddf382bc65e8f843b9c2\"]'),
('golmon','AdminGod','golmon_app','2024-01-26T15:29:02Z','[\"5bdbd2ce0793ddf382bc65e8f843b9c2\"]'),
('golmon','reader','golmon_app','2024-01-26T15:17:58Z','[\"5bdbd2ce0793ddf382bc65e8f843b9c2\"]'),
('golmon','writer','golmon_app','2024-01-26T14:35:42Z','[\"5bdbd2ce0793ddf382bc65e8f843b9c2\"]');
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
INSERT INTO `token` VALUES
('admin','00efed77-222d-43f7-b566-11b07ab6731c','2024-01-26T15:19:02Z','golmon_app','golmon','writer','cea661e8a42c969816c5','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODcxNDIsIm5iZiI6MTcwNjI4MjM0MiwiaWF0IjoxNzA2MjgyMzQyLCJqdGkiOiJhZG1pbi8wMGVmZWQ3Ny0yMjJkLTQzZjctYjU2Ni0xMWIwN2FiNjczMWMifQ.ma5QvpFL0-_PKcVTtAuohMFAgxuCHjlbhwuNQuNh-JRbkMPpGhfNAuhScYw4hc40C6sZ8QJsrB33hvW0T4HvFtbdbZ8bmEoRZtu9g3tVk5q-TXPKmS_RaL4v40PaEJ8-FVZvFCshygNiiRQRmk5uDx6FSSNpN9wMfDYt1mIDRPw64wps6m_H4KSK0A-WX4AWtjjd_8zWyJYJjBeATPfYuFfjQMP-ToPcFMq8I44B4m1oEvp61fXsqYDkhWP2UGVb8jsBH-LpPO5SHjCjeBwq_fvE5kFGe5wUDTgz1isH0UTdVc6CIJUOXr2MRzvbqxZ2Nt7eV41dG_fnb5Szmyf1KTqrQW3nhyod9srFaACzSqUu2ZnVFPKh93lt1kvIwTh8ilwKQXM7uyVpM9PMw3usoJBdG3cdB0mD6lIqp5uZu6YTOf1hzSEJQmvRz-7pivHuTuWJArxiBhambIWf8Fy1Gpr_OBlx4xGmIa7NrWXfpgP0CVocU8GNk8ZOrDbgsS51JhwcDk4nUXcKt8K_curegcmS2VB5In3hpJCUHF-hiI5XusdxcbNiLVNUHrDHkq9dEsM9MVzp1hJY4eZjOukH9qydaQgyGscHTzkt2y1kr0ndlGoW3flJ_bpQrjMs5TO11qVKr5d5oPShwVzbyraTR76NADHfg9MLO1LjUAb3Mq4','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3MTQyLCJuYmYiOjE3MDYyODIzNDIsImlhdCI6MTcwNjI4MjM0MiwianRpIjoiYWRtaW4vMDBlZmVkNzctMjIyZC00M2Y3LWI1NjYtMTFiMDdhYjY3MzFjIn0.dvxawldcb8wdOV_dvCExHVts94i4Tk028IJ_BYf-13G3E_z2k3p4nI5QD77_T-xBDpL90ZZctUsrte0SQaxRTPbozmb8T0xkdjeuz2iCuebyjPGVuwbA5gw9x_m3atgFy0cmbYag3rm-C2HOtDR-d0psaR7QcdmWSir8FOE-KMbSN9jE4FXiDnu9lnOrQv0J9JVOUn0XKuKDWWbIPzaaCpPzP2PJz0qodVZHJ-4xG_Sp9rLKIDHX5u2jUQ-DQ9K6LEQsjMGjvD28vJIlO7Kbls8SbAH18IqJr9Aos0PNHQnch9xJ1XBXdA0nZ5mVKM7SIN-oVPquG38YZGnfWJoNtnlJ4_z08R3APqPfxbc4synCFH2K6iZyclY4UuiMGNex87IPmA1Qa254QJynq2Ocp1Iz27cVle8mJ7JZO3g2lSrK3rJMt5wIagfyf8OzQVRI5wYuDgT2u2eiCJ2rfYrmxJfcKwHrtRuvSLYfXeYS-mlfxbkqfrVOImZx393oFh5hRIJG6hJF_v2zMVcauL8BG7LNyUErlFH1SgtUvWftsDJFMhWmrWbU7K_UXXQ2aPkPoIaPw6tcv4RKf6XgQI8Thse9AVu0h9PasIHiJlsq6HUgYDHXbNZ0Vy-22lfB0lm_RJFCFcywXyQjEGAk8A5KPitsQB9NESZfX9TJtHF-E_s','a0555241cd2c99acc96f262ab0512f00c103e5e5838ffc6565c26888914b2276','27cea9368683cd73ee75e83c690c374615841f44d6bec9c0d0053c001c8a5f57',604800,'read','Bearer','',1,1706282642),
('admin','07965c39-6867-4138-9316-5d85b56a0562','2024-01-26T15:28:24Z','golmon_app','golmon','reader','e1d63c37a055460562c7','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJyZWFkZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTQ6MTMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6MDU6MjVaIiwiaWQiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJyZWFkZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJyZWFkZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI5NTk2MjU5NjQ3OCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fbGlyZSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9saXJlIiwiZGVzY3JpcHRpb24iOiIiLCJ1c2VycyI6bnVsbCwiZ3JvdXBzIjpbXSwicm9sZXMiOltdLCJkb21haW5zIjpbIioiXSwibW9kZWwiOiIiLCJhZGFwdGVyIjoiIiwicmVzb3VyY2VUeXBlIjoiQ3VzdG9tIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3NzA0LCJuYmYiOjE3MDYyODI5MDQsImlhdCI6MTcwNjI4MjkwNCwianRpIjoiYWRtaW4vMDc5NjVjMzktNjg2Ny00MTM4LTkzMTYtNWQ4NWI1NmEwNTYyIn0.Yl7lLDh18ijmA--qZQoykNSqCNbOQjrL6S1AHA4AsfimoBTc3__8pm_YiTtq5MkMTIc3o6KTov8jxfMXmNL7P6ePzDHIsOFzCq26oLnBxIWYCtoxYJaWp0IwdqYnuC8ps62Cy9TvVJ7Oe5yZajPHLFGSrUExUYXBiEHE--p68Bg3c5PSN27SY4ZPeZELlcxQryzwUWg14EpZ5rQtxbyrtwcBg4MIaMuYvc7RRlXdCQ962OSBfOCRGQ9WRfWMPRJnHjaMIqfELeCMrrr725JmtecJbRDcEskzhRr7fSTX5aJbL7Jksu-KGnEqAYTgrTpgco6PPP_-gC74H4NkK3OCfSguFY3zhRqwW90OdeNhsEvD3Sk3zYWcJ0aP3bAiogL2eZPtlfuukXWK390zbOGQA_Cf96zB2ZjoXcnHQcXN1-wgDisk3Jllr0M-R0MH2jQ43GkPZmGLVDYPyK9DL3K5T1JZ5NRtT4fZMDiOnAptBnfGHe6NRjfBHS_o8AuI5lwGfzHZ2wRntX5COvcL23A7DpuRa1NiTK-3p--94AYpwTuiP9EigCgOAwrDxkVj8M2fCJAmdSiNBa8Qkr4PFHIm3sStHCWS9GrjfxeJQNMpUBv7Fta4rxSdL7wsHO3boN8W58z9avlc0c2KvjGUNtFKIZy6IgYzErmBflqFdsqvu7k','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJyZWFkZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTQ6MTMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6MDU6MjVaIiwiaWQiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJyZWFkZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJyZWFkZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI5NTk2MjU5NjQ3OCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fbGlyZSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9saXJlIiwiZGVzY3JpcHRpb24iOiIiLCJ1c2VycyI6bnVsbCwiZ3JvdXBzIjpbXSwicm9sZXMiOltdLCJkb21haW5zIjpbIioiXSwibW9kZWwiOiIiLCJhZGFwdGVyIjoiIiwicmVzb3VyY2VUeXBlIjoiQ3VzdG9tIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiODQ1YWMxOTQtMmU3Ni00NTAzLTg5NWMtODdiMTgzY2U0Y2NkIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4NzcwNCwibmJmIjoxNzA2MjgyOTA0LCJpYXQiOjE3MDYyODI5MDQsImp0aSI6ImFkbWluLzA3OTY1YzM5LTY4NjctNDEzOC05MzE2LTVkODViNTZhMDU2MiJ9.Ns1r_JLEUJHk5a2le1jKCq8lClrDNLRZNVpZivcTfEHflEAmhhJW3fseY3SsOccMTHFaCTQUC9-ZkDUnkv8zwlquMVGoYDGu8xQGBGJKWGRWQvc9ssueBirsbTI8C048ui9GHZj4aEdhMiGxLuHcrHTV5RwD9d1XnW9eLiVVqkOlGKY39v1wJK-vF58ChJNdiESI0V71LrLt81baO3Vt9UIdN7VtoQNQ4tWO20aYdAb6sh9QNoH0ZnRcheYKQGKyX8IxvMm9FJIttSUkk7ojWWch_PtLTxKJZw2QhTYmrUZvRLx2IJmSMeQAjpN_QZMe4VdldzZSQW4T64IvowOfZeqSjH0pM483T4HJumw-95hwxml2NvpUYgarCc59c3BmRdp7a-_AhmaGvDy5kqHG01tAQtSmXKbG3Y3QoL0bYO1jZsd2hIwJ8TA6qkDU7hWO3oSJHaeNKEVCS0oUQr6yooZEhJLddLt3B7v2Q3S-PRt2gkD4Se66mfZBMV_BysBQb_8IsAy2FLIG5Xk24yZmE-1SS4k7WQxvQtoVsplrw-aZ84MeFMr9OOSL-MyG2LdKXjY7C8gBEXC42pvWaEng9GRpcYMZq1X5GI6K4MFqIdCyCh7K5K9d6gO8fKjH3FuEX4LE8g6Elb8mxuTGlRy5nyDxWNJf4UXRS4juxtNK8bY','9d1db7b1bb70f664793f2f868844dfb938e715077a496039c341a68569af2c9f','1febc8de50ba2311937b924ef90a61f618efaab7bf62e217095105735fb56a23',604800,'read','Bearer','',1,1706283204),
('admin','0fb61648-42f8-499e-80a3-eae61e1ab417','2024-01-26T14:35:42Z','golmon_app','golmon','writer','f30072642a0ed099ffd8','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJXcml0ZSJdLCJlZmZlY3QiOiJBbGxvdyIsImlzRW5hYmxlZCI6ZmFsc2UsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifSx7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InRlc3QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTU6MzI6MTQrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InRlc3QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODQ1NDIsIm5iZiI6MTcwNjI3OTc0MiwiaWF0IjoxNzA2Mjc5NzQyLCJqdGkiOiJhZG1pbi8wZmI2MTY0OC00MmY4LTQ5OWUtODBhMy1lYWU2MWUxYWI0MTcifQ.R_nRZUAA6q9GLheR5V36q-9FuzahvDlSGLis1ijs8MfebQnDte6m7Z3Wd7ZlXZMcRr7DEBVDS-6HCfqewP8iWysWJFlP2OuGLm0YTMNg4a0bciBmc1qzSQ1nMzgwl51JG9Ftg-O_FoBlcvCJfQ5z1elNPkWTMXv8If0sQI81UFP0jl-A1ezQx0n76O76o1-JCaryO5TljweJok4iuyzrpaxxRik7S0feFbl_zLW6azeoMwC4dM1B2VTvLRXosxdHOEPwov17xIHZ8JbmcLbQUCDjyQGU8dars3SvAOaNpXGj4UQnbM4063PNehbw0ICrWUXDbrXLRl4S6gd_K3NCDSq9mwhPkEi4Tnqxio3rQ3ELCNJsl--pazc0ZS5jtXSeEWUkA1BbOfPr7pM8okAuudad2k8142R9o-117ZooSvwH5gvrGNLMnGwR8H05UVdWZvS7aZP3ydVjthp9kJswgMASBBhWl4QPzwzLFb71OYh_m7WxN3mg80Uu-kc3qWioFWFU82qG2drQFDASaxRfCdZuAaFvo1Yrn_afEzYeGgqJexLLo0QUfpx6yDOaPTQH5ARkKlL3S3rKPSkOT194adegm0vlsytYek9vwKzYp26-MEbKCW1QU4feu4gKOWsdIUaL1cNupSqYjgA1o0A0fhnQU1u_mBQsBH1fgSBzRt4','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJXcml0ZSJdLCJlZmZlY3QiOiJBbGxvdyIsImlzRW5hYmxlZCI6ZmFsc2UsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifSx7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InRlc3QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTU6MzI6MTQrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InRlc3QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg0NTQyLCJuYmYiOjE3MDYyNzk3NDIsImlhdCI6MTcwNjI3OTc0MiwianRpIjoiYWRtaW4vMGZiNjE2NDgtNDJmOC00OTllLTgwYTMtZWFlNjFlMWFiNDE3In0.V2tXPFrndiXIgkIIhycsG_4Nekd9jZZwhUNAuldirKpG0e1WQAk7mKD9BRF7RgV4uRAzKnSwxYJBlGTPa5z1kKQnMw_Ybzj88nZ7FS-3mA4uRkNSl1Sa8p-j7Gms7DLTFMsNZxe-vD6GBXyCh5Pp0jWbI3Mn4_kGi2h3aTTFA7DHGLDkF8EszhGkMW0KBlZwRosEy-IOeB4BLZu011jKIKdl7eUBAqu6gm8Iyyc-4sZjStQTf5kLBZXjaumXF_7ImpJlXo-NQ73LRW7osAMAJcy9fs3piKNMQa7P9e157MtMDRCjLhWMAduXTbi-X-Vxxp5B02SIlg7S0IuafoEU5HqOmxLLIv4GJFoaMCwHnFcndoESKgFIo2VWP-xtha1XPYfp2JGJ3-MZqWYezl9-O3ZGiFlizqK_5hp5Dy6cwm8D4RFkkENbzhW93m_tzKS--H0-O4wbW0jOFmH0pw2sSuZkjXShkwMvPp1wPZKdAu459hTOn_P1_BoIyEuGM9q21g_Ufx7QxZTTckK7-OcoHQdI0N21jJn7N4wyR0xNNqNtZG8bX5xXQfjYuOQU75_B6IbcCkuf6LhiscDlyiqjoRSuVFwV62cJHUCruhxr1ns8wBS7s3nZBw_D4_ucF-ekpjO1x8U0OpyRTkOKhZnD8JqbmXdK_L4DPQ8QC3iQVb0','121b74f5ee06178116b6262233f146b51d4c2af06c147d86a7ecda4ec76403b2','62455a3685dbc6e6907e1a911e7fdfecaee5d47fea6b7d111f0f821016d19f77',604800,'read','Bearer','',1,1706280042),
('admin','15fa416f-19fc-445f-897a-1631d358a5b9','2024-01-26T14:16:43Z','golmon_app','built-in','admin','efc68f58fd975c83b91e','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMjo1MzoxMloiLCJpZCI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiIxMjM0NTY3ODkxMCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MSwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiYXBwLWJ1aWx0LWluIiwiaGFzaCI6IiIsInByZUhhc2giOiIiLCJhY2Nlc3NLZXkiOiIiLCJhY2Nlc3NTZWNyZXQiOiIiLCJnaXRodWIiOiIiLCJnb29nbGUiOiIiLCJxcSI6IiIsIndlY2hhdCI6IiIsImZhY2Vib29rIjoiIiwiZGluZ3RhbGsiOiIiLCJ3ZWlibyI6IiIsImdpdGVlIjoiIiwibGlua2VkaW4iOiIiLCJ3ZWNvbSI6IiIsImxhcmsiOiIiLCJnaXRsYWIiOiIiLCJjcmVhdGVkSXAiOiIxMjcuMC4wLjEiLCJsYXN0U2lnbmluVGltZSI6IiIsImxhc3RTaWduaW5JcCI6IiIsInByZWZlcnJlZE1mYVR5cGUiOiIiLCJyZWNvdmVyeUNvZGVzIjpudWxsLCJ0b3RwU2VjcmV0IjoiIiwibWZhUGhvbmVFbmFibGVkIjpmYWxzZSwibWZhRW1haWxFbmFibGVkIjpmYWxzZSwibGRhcCI6IiIsInByb3BlcnRpZXMiOnt9LCJyb2xlcyI6W10sInBlcm1pc3Npb25zIjpbXSwiZ3JvdXBzIjpbXSwibGFzdFNpZ25pbldyb25nVGltZSI6IiIsInNpZ25pbldyb25nVGltZXMiOjAsInRva2VuVHlwZSI6ImFjY2Vzcy10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiZjdiNDk2NGQtOGJlNy00NWQzLTk4ODUtNjFlMWY0Y2YyNzNiIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4MzQwMywibmJmIjoxNzA2Mjc4NjAzLCJpYXQiOjE3MDYyNzg2MDMsImp0aSI6ImFkbWluLzE1ZmE0MTZmLTE5ZmMtNDQ1Zi04OTdhLTE2MzFkMzU4YTViOSJ9.UI8NeB42it3b6ZkLIk3cX3ECtOS7_EsQCdqmAa30dN8GYR3gjgUmoWVLdc1bxM_oFerbm7B915mRTUURWZtmXtR7WvoiZKRluq_77lvCl3EmHV6yfgp5t4_45DgtyToWFYeBdKoXlBSA8JPbe4HvTZ1iXKTrF6L0MAzcyRTQR0MSJuY91bG_m76AhJngPwIaxWcDXEYzn4Ao9dldF_s3Xu52OWk3-phuTlQ-YCsFv2pQubfF_sxgLwo1MWLrcpje26BZWjQyR3RKPicCJfrrRLOwXYEU00hN3qq_M0Bgdp7SH6QBYe1tjqvaYRf-E25EH6XhNYnMeL1lU6Ljh2arzBjZsZRiICsySvJpT48cEdSask8CboyxISeQ5H-EVI5L0_kwrUNGxf168MGTAExbKrfdjoE6DCwNVqq7amkrEwiQBxTe28muZD8Sm-Uexcy4kg0s_qbsYRbALwNp9PGcgIvB25iF4V1YSMz_P7xoF-gk3eC1redDcQPThnv4E-vKy46mwrQfXIx12FDrb3fMJoqy8nysyodzxzfpuz96I6yaW81XaZSAto6k5PMHc13JBp6upfI0EyJVOAgYc1jJe_OQfkZ3WXDM9zVaAHTFYvcQZ7Dv-FNeLl3TGgY_jvfBDMEzbtMZM3c6uk1_xeYroUmdQ6mVNQ33rq5dK8lN3L0','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMjo1MzoxMloiLCJpZCI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiIxMjM0NTY3ODkxMCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MSwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiYXBwLWJ1aWx0LWluIiwiaGFzaCI6IiIsInByZUhhc2giOiIiLCJhY2Nlc3NLZXkiOiIiLCJhY2Nlc3NTZWNyZXQiOiIiLCJnaXRodWIiOiIiLCJnb29nbGUiOiIiLCJxcSI6IiIsIndlY2hhdCI6IiIsImZhY2Vib29rIjoiIiwiZGluZ3RhbGsiOiIiLCJ3ZWlibyI6IiIsImdpdGVlIjoiIiwibGlua2VkaW4iOiIiLCJ3ZWNvbSI6IiIsImxhcmsiOiIiLCJnaXRsYWIiOiIiLCJjcmVhdGVkSXAiOiIxMjcuMC4wLjEiLCJsYXN0U2lnbmluVGltZSI6IiIsImxhc3RTaWduaW5JcCI6IiIsInByZWZlcnJlZE1mYVR5cGUiOiIiLCJyZWNvdmVyeUNvZGVzIjpudWxsLCJ0b3RwU2VjcmV0IjoiIiwibWZhUGhvbmVFbmFibGVkIjpmYWxzZSwibWZhRW1haWxFbmFibGVkIjpmYWxzZSwibGRhcCI6IiIsInByb3BlcnRpZXMiOnt9LCJyb2xlcyI6W10sInBlcm1pc3Npb25zIjpbXSwiZ3JvdXBzIjpbXSwibGFzdFNpZ25pbldyb25nVGltZSI6IiIsInNpZ25pbldyb25nVGltZXMiOjAsInRva2VuVHlwZSI6InJlZnJlc2gtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODM0MDMsIm5iZiI6MTcwNjI3ODYwMywiaWF0IjoxNzA2Mjc4NjAzLCJqdGkiOiJhZG1pbi8xNWZhNDE2Zi0xOWZjLTQ0NWYtODk3YS0xNjMxZDM1OGE1YjkifQ.cKGcKuA0OxjMlMKUyTcZco13-Au9RdwiHR9gQas2lVrld-n7XgXGVW9U8w_HAB60u5p1ykBk0979TvurGLYnCo_4cQfMt6c7ig4WmYPD5D-qZwNsMKRVW7ZhuHRieRGEv-e23z6160dOElSBiC5yPbxUck9VW4ECsDgzCRGYMN71_DdZmXSgPLmEU1rQaE1hoDwYD5X3MJFrJuGFuzOYWuVZ-G06TnCVV-J5tMNB-gL4eOv0U9GK-wFnhmkGznSOWPcTOe_agm3yR_eW4O_NPBXsGAU7AReHN5CW44sLKD08Lcp_z6AajGOfUGO2JSo_kC1q28k1WH4N1hoakWnPmS1k1gFYnJfWVQWGbnHOViZDaFwlZhsR-g9okCCMOZAwZcCITCkL8JZ0CGjnWTZooU0_WngQPdMvsxzQN81jytQinT2S1OT-OZAD7cEYcy0VLP38qYFwiGDDrVer-Gy-TjUVKOg-4aRiNVRR1i_1mJ5If88YRtI29j7__T2C6urknjfzQ7KjJgTFn7ZTwKnmJ0xC1StO8s39yDqKq3wGbMOjg0U5VvaccU-oWI597DA5cm0Y9OdsTQsOUsTK4x4yY5FDWo1oG1EBPT-8v8tACT523SYr8-GNehonZEXumnbP5OgqEk53eaMkTNCzxNfJtq1fwrH-7DTMbq2IiM5v4O4','7228d9cc6866aa2c99b0e7a42c929a9eb4634d806b3f810406c2ef279b68bf2f','4ff09b87f217562ef9801fea622a4c0c097ee55b397c2ebaea217026ae2b7b1a',604800,'read','Bearer','',1,1706278903),
('admin','3ab0e2ab-396d-4949-af68-df3ad398a10f','2024-01-26T14:38:37Z','golmon_app','golmon','writer','ba14ac682ca4d6cfdc61','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJXcml0ZSJdLCJlZmZlY3QiOiJBbGxvdyIsImlzRW5hYmxlZCI6ZmFsc2UsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifSx7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InRlc3QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTU6MzI6MTQrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InRlc3QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODQ3MTcsIm5iZiI6MTcwNjI3OTkxNywiaWF0IjoxNzA2Mjc5OTE3LCJqdGkiOiJhZG1pbi8zYWIwZTJhYi0zOTZkLTQ5NDktYWY2OC1kZjNhZDM5OGExMGYifQ.g_tH6QYl4SGMBEn2OomhrjKUijwa9DGhgJ8_2t-Dc5z6CR0UmHVhIOEtkYlES4ZttGUEZePd9weVXw8C1iu3riiRKa-yMLptOQZJQsZnlOghCbaM4OacqFP_D-mfT4paCse4pVsScDXX012AdO3mOOmu2E-cMUGjhnP1sV4yqZp9yw6tiHSD1aIUWSFUO-vPHjYHb2BIiIZ5Bqj9PjDZN-lq9LG1Qs8Qh3nzaqk5pxtZqZXlQWTLfieusX6o89NP0UZXzei8xl5NENAobVP-IutdQiiSiPzBiub95sA9M6WSRbu5HKTiFrZFy6faJeoDBwyCWBNFH8u7viQML-YkEzL7vr26NX06mYJ05hsoO9t5uEcOcAuTp_Og32M3Qd1ZC6J5Vcg81qfbKInjOIDpg7Wn0_Ic-NkaQSAatF3Bh-cxQ9HMDBIHYAm7oTiF7WW2mTipWaK-fEntqTk__E1_f-TvytDaG3TPCFI5G0lUo5zVivPRhfDhNd916_K7CnF0R9mA6ChGCeycoyvwx7xk8AdHXXRAMxcBuX91E-dl_5Nl1-pAbF5OOL0Zu-LWvlwswgEpVUFGdaO78FPqEcdPj35LDdsQFOmUlNcyNWICksbvZB7tshvPS7cKOupATXYBO2E6MVpVdEqr6Rx9_FPGx2qhqKW_l-abNkKB8wSfOCg','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJXcml0ZSJdLCJlZmZlY3QiOiJBbGxvdyIsImlzRW5hYmxlZCI6ZmFsc2UsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifSx7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InRlc3QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTU6MzI6MTQrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InRlc3QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg0NzE3LCJuYmYiOjE3MDYyNzk5MTcsImlhdCI6MTcwNjI3OTkxNywianRpIjoiYWRtaW4vM2FiMGUyYWItMzk2ZC00OTQ5LWFmNjgtZGYzYWQzOThhMTBmIn0.AxWpwKDTmGS_QdBvoBKYw02_HxFN4DoRmbrDbvgAZh0Qfm_sxTtw2jONLovsJFa1bytoj9qjQmL5acUhXmr5agKpM9L7_7z4DpsrsuUrTKwIrozx5W6uk-DM6ULyEXM9R98Mr_xGxY-VjKh-9KiqBmOY2-GJF4fInBWYuCi56DGc3aThLO5x2OEe1yZx5wctgH2q97SzRqlFQeJaimH7BGC-Nbnk04TO-pHQURmpA7bQ9W-cYs4bPv6S4GNvPVrqJZQNNTCZc15QLhzPJ6hvSlVtvUr4Aru6BtOUaBT3DAWyDhCFKX7rVoyyL_rVriBXOqs-VkhDhTr9wmSGf3ikbflTs-Fn2WcBEKxZBvM_kmdDLD_bMoVglXEBI4gvfgSbtgQr7X-oPOwhretDCKfWC21jRTEb8SRsup4pm9VmxMKl9RUENdfDh7Eb0UIX2QtxucPr_LTtqXhbgQTVwX0TgI44PTb-cE4OyL05lpmVTHSfQnprDKUC520WGXROop4XgtHoawC2SdK4clKllCx3jDPtxhm503rACHCGZGrf7dwsN8FXlfRjmrlHJT7H0yxjn2Yx5brl6s5nJwn4vQlSpD5SP7lFfOMCzP-qoot-LTqDJybiWFGtyCY9GELJm1Mo8CogU4Tg0dsZmC9uebAMxzMCGk0OG92F3q3QdCrb3go','7e3c20944a99d9d37cb8cc9f2b9583607fce19565a29b0e791b9f5bffe64d3c9','5b988733c61463df47d8c606ddc3dd4fcd1f502d88a56769d27b58fb48a6c000',604800,'read','Bearer','',1,1706280217),
('admin','3fce047d-cfda-490c-9751-49a11af4d38e','2024-01-26T14:36:53Z','golmon_app','golmon','writer','58a8ee75711b66264128','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJXcml0ZSJdLCJlZmZlY3QiOiJBbGxvdyIsImlzRW5hYmxlZCI6ZmFsc2UsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifSx7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InRlc3QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTU6MzI6MTQrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InRlc3QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODQ2MTMsIm5iZiI6MTcwNjI3OTgxMywiaWF0IjoxNzA2Mjc5ODEzLCJqdGkiOiJhZG1pbi8zZmNlMDQ3ZC1jZmRhLTQ5MGMtOTc1MS00OWExMWFmNGQzOGUifQ.gXTTW8tKjoUw5gp21Zx-2ralUT02rg8GZ2SQjtwvrW2ye4IGjiGF3k1kWKhxGAHJPM0aZOZXu3GQUJAArI_RmVB1T25BFnZc4scGZrQRaIJ0EHOPzQltucSLI04Z7L6uIQI9WT6ICOivexycHaeGrWMW96RTviPyr2_5aIR4g0NZ8qRedcwooJOhXSHVd4db1ly0IKRPDWG1h4zSEJPctM7elSzK9HTdCRU98c5PKzITahMjOi9-4fHAOGDGcoAhftYZb-wV-Spoy5vIUT-b33WxXUXT2sZ7efFj_z-jXn_KE-EceQxUrE7QY6Z7-C3hmvPjMO3Oobp6DmTMtFjFUseGpNiSIoAxr9WYMGPrIlfNLpTjBaTX6MtlL_lqerNeteFdduzd17qPVQ084lueE4b4n2oY556yXiU-zXL7erFlwX9Oc6pcCN47lT9swAnWjYVYLIcpdpU9D33gg3eTsh0zdNQcuL6k64asP8OKpma21hF2ipG6nbAOwLnUogVQ0wtNA0fUmmL9sF6_QEuHQi30K2x3FWOVwbYEibd-c8UQ-g2UsIpj2Shx0IHmpvnr7k1Yh3L1zK_rDUUTp1F8TkNqCi_BQPAxg5-tpZmdb5XTuY0BxuDJH_9OLEWh_4XNfp_e0JdVPnbc7jhXPTNeDcpapxor04dGZz2_GIMbHMg','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJXcml0ZSJdLCJlZmZlY3QiOiJBbGxvdyIsImlzRW5hYmxlZCI6ZmFsc2UsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifSx7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InRlc3QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTU6MzI6MTQrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InRlc3QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg0NjEzLCJuYmYiOjE3MDYyNzk4MTMsImlhdCI6MTcwNjI3OTgxMywianRpIjoiYWRtaW4vM2ZjZTA0N2QtY2ZkYS00OTBjLTk3NTEtNDlhMTFhZjRkMzhlIn0.W-t0WnCf_kLJ7WiG69UXIVUy0r2MyszpeLYU46kEwjOM8i8q7ehs--chv3GcWKPcs5iIuGUoaRx5uK8EYXmudZNk6s0JAN2vuFiqJ6EbKaeyPj9WvzieGan9F0szLAgjK3oV4aEMLGw9tWMLnxmbcD6SQ4gtVTHtJEEpb-q2xf1TpwW83MZ3llR4fMpyrOO-KXwpczyAAzMxunbM3bSELaTgQSsrj1EvVET83EkGP6za40cGD82Hh0HPED2ElMHOOM2hwbpuB7kco6U6e9ZoLkNWOQ8_C0mMDS96WEN6jRSlR2b7uaxlxhJ-pmDv2ZAopR-LSZqMp7UjlPDdKuzAH39qJKVE_bCe-lsHu2uxHPLort8dQWatzo75M8Iewf5mWz2_yaCB6Z73MlyXqU3TB3QwKs3Qjx0Y8frVchJl9M54snyEjIIlM6FFhTjO7XGYh0OlvDti7gHPOjkCriF8cjOMOQt7FFzQjGHrN4QvrAGzzcpcLIdMKFmLijvKnBh61JVSssuGKdMa4EmtimuOxwFkPyENQw2CFoxvrW2gxE0iZwTqo5tNjpLjZjest-JQSiG7qu2gFN4qUMS1_-RrRy3eifwWFewOFTti5YWlTnBnduwNqZi7F00302eT2LdZZrRiubRU4MmVUN0CIEzIu8gnppccqLHj4w4-QTNywJI','727355f4297a98eba61c04a030ba076bff2d6b0e2aaee06b2faac625496bf265','0fa5c91537ee3d2d75e56f306aa90184e498f6f450b6eb2e87b37ebbfbad122f',604800,'read','Bearer','',1,1706280113),
('admin','4613a135-b1d3-43a4-8f06-e01a97592980','2024-01-26T15:21:20Z','golmon_app','golmon','writer','fcf24f88e0b9548207be','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODcyODAsIm5iZiI6MTcwNjI4MjQ4MCwiaWF0IjoxNzA2MjgyNDgwLCJqdGkiOiJhZG1pbi80NjEzYTEzNS1iMWQzLTQzYTQtOGYwNi1lMDFhOTc1OTI5ODAifQ.hsQv8UiLu_5iJSYFaziZ1PaeKQ7nP8N4xplMenT33ZIltigZ_yPjgTWE2xMZF0OalO5m4CVKOj73wYQgjY_DOZeX4feSGfO5CM03h6kCzdGTtxg7c_HZRR7imtiSUwRRNapPKee-tCKfcWM-vCp9Eapno7K77uhEQYuk8uB-LMs80lYCqRUPtmh1oTTPAwAyC6MwA6JpR3k7UtmNkmRPYjEyh2vB2t_zE3FhK2j81YAiIyz2_FgQyfjuRV23SQgb0Vyg4B9BJsxo5pLvcA5OD17fSfoFpqw9-VcVuZkwvvYzwaxtmoHs-4j0_mZJdOExOjOGXfGeeaIZ8T6me3WUgx8onVT0E1nNPtwZml1r6efcSiv7E-6BA2ZvMwFdS-3MvRtxAoYtBGpz14-pSQC1LHezdASMbtSLvMUpi4VzIgfbLHlqdCcPWUrIlftLj1NK4ZZrIcPbf-N6nRCCxWk7MmqkrnotLMpkR9xLbOGisAWL_ss-X8YboyifO0Gb3HZ9cdMjmtTKPS-a1YRUCw3DIRH3woVl1NWk2rWhhqP0Z7fDxCbfyzSEzT7fTCk2N7MNqn_ioxiKpL86ptL_M01Db7L4VEyntB1Qqgv6wtmK7dkXHPeAAIa-xr-yF2BFmlGb2_0xfIHzP1ezIN76RrZWju8lFblONoTC8L5PLVELGkM','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3MjgwLCJuYmYiOjE3MDYyODI0ODAsImlhdCI6MTcwNjI4MjQ4MCwianRpIjoiYWRtaW4vNDYxM2ExMzUtYjFkMy00M2E0LThmMDYtZTAxYTk3NTkyOTgwIn0.m3PQrLwJdjzCU4wvdYQLjC6hS60aBLpJy-yIXtRbcZ2741kmH4w4QXZV1O8_cvSBBff1lFgFbZwgPgSDWC5FpqoECFfq9R2Z8N2LAl2rWebLeJyNuZAGema6f9jr5JDebA2_wofVFMZX86obCIlDQkCWGT7olODJ_JdUYv3cSxybUc4EL5_8p1iQljXWxrwwB77N3jiYbUP9LF8d4wYILNxkFrtyoythjhKxYP7G5GoyoY_AOO_VHqweyxmZPXqoGDSx3YW0apfGzbk6q17-vg0YsZ2G_U_Atriwap2QFiKeRmcD61Yta0drt7S2owwPjbA5G73_Y9A9rDHoweZzxWmP51QuoFIzvBCdIpEqf3tudAO3b-D_ZEMoOeF0xgnkZ9dY-JMe-K3W2z3BA98EYeBGUOpNFDKzImk4_X7cGilk8H4-BK2rFGfrjodpd-3X5x1gnhCsLpCtwfa_Hsr3cXQRQmcgniHY8XMdjasGObGKsJDmyi0iF6lpGBUFalShgaKe-pg5M4x5zFS4y49uKXdfdQD5XAQgS5tJnIpeZzswEJ89g-tE6GzPfX6FqngTudAP6dw_Dca6AUugDtAahzsceu5pmYnS7Lgi30tE5AbsjYukKcCjzyGGWz_PnN_8V2Nls0o2Hdyq9amimlGYCJDuPMqTsXimDXzyvBkCgT8','87b14037b357d956c365dbbb0d4146ed99249704695f4282bf9c6703715266c8','00d8ec7ddd8b84de0df4f77c60ac52d8d1fdfd514ff65874af583fe394d2db45',604800,'read','Bearer','',1,1706282780),
('admin','4d1ae297-ec7a-4c3d-9849-4aaa52cd3e5d','2024-01-26T15:27:43Z','golmon_app','golmon','writer','d1af0edd99d549a65b3a','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODc2NjIsIm5iZiI6MTcwNjI4Mjg2MiwiaWF0IjoxNzA2MjgyODYyLCJqdGkiOiJhZG1pbi80ZDFhZTI5Ny1lYzdhLTRjM2QtOTg0OS00YWFhNTJjZDNlNWQifQ.eyPKaGC8cNJX9U_df8jgN8GJm-dLL3ADPvLxAJmm4sEudanPmU95aeRDkd5ufjZ-sKduatSTYzuHxTZT_NuBUIyhFYwG-HlKEfpEz6O4y-LamdED6gKWYfIbMghCune9G4pFEDcezg_CV3OPpGTo908e87M8tZJ4mXN3F2Yzqfvhf3BPK7oUMOvLRNMVdbum2q0CKyCEd38B1WTa0OH9h-r_LRZ1ElRHIEiGVDd5OtJjf-u5nxa95ifdSm5fU030RmjUEmeSni7COWKIEIOJ5GvdSAzYpMz28J2H1HCr6Touby9iQXwoAWwbglxOrQw8xUyVIJqmvKYVIF6I-GDD-qmI4c_0MHIww0x7wv4MfnZDqgkpeQgBn8mOjmJGfk5Rt28TyCNG2IB0mysk-zaFOBfSpAiW9sonGDzV4sIdZu5nE77hS1mw9wQ-lq0GNlrdWRgN5JLm0Zs2KCXjfJeJMhmZ9hU6XMTPh5axNvdKw46Exbu2BJ4kHIaZ2fHhWwqS-LGkZNc95MAE5r0TP74HEOLvuzjGW51dXQ_iKEpklKRmLPBmGQ_Nqf_olQrCV2zjzfolU57ATRenaCL_tsLftKx3LyCDbkBlhd_qjyO_obMPoGh0__JoLyF1OMr-pYHUNZo6ZzWD0WewBs7614T7YeaVlK8jI-HYnMECnGtrLOY','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3NjYyLCJuYmYiOjE3MDYyODI4NjIsImlhdCI6MTcwNjI4Mjg2MiwianRpIjoiYWRtaW4vNGQxYWUyOTctZWM3YS00YzNkLTk4NDktNGFhYTUyY2QzZTVkIn0.Qqmz1O9EizeB-1-JRX-WPRCIf9xvpJs5ouaZLoojsvOCgj-RXBtyw744UgsXMdh1XOBYX4QFWqwY1byn6aojsA-MXyhEbQF6BhjpYpiN7-MBueTCA-3Is7qzDSIRjbB1-_US-fIBLcYze0oxinqejQCGKTTNKyiifIoCjeT1dJ8_7LhEj0ymlb3s6zPB4WcWmO7D1pEPi0j4jMgZMz2NxfMcKdiCCGs7IGejh6zHpp4vYOHGCZek-_CwCaUUMsfhztDwH-DvSysEf5ZzKPU_9fILoW0OhPcoE9mPEu6nB9rG7k_wVhuYEtvZU8ET7AuU05NKQ_vxMtOMV7qTCTfwxemOiE0Jfjbf4Wn5A9Du-TsZOG0mp6gnK4ZFoV6cJ3ZnwuhPvSYahIpC6UiuYGV1ZOaqc7-WRCuPTJ1Svrzt8hafKGlwJDL73TeQPI33z36I3E3mDL9DS-HgaKZJUFJnD4fcbM0_FXnjo00nYTvybLsTj0NQfDL4Xq99BZLcpAmCh-JXooWYeny2xa3hbnPtAU0gHJeTqvZ-jWJ5GilUPusL-44IuQT96BX1X2hVybLWhGAo0Vp_wrgbsLIGV3ccVU3W-AEibn0ApXSC03aZOYMpI7k00LUszHNwkSuntgEUC2EHhn7_WdXpgiYuMYLDf0S_wUAc86HGJaAPMXSpOS8','a9c2263653774126667c016d60d1f5358dc721f854e7c444756152134a030971','d2150d436795075a70f8de0effff133e0436f309d918f4a636bb0391b4d051de',604800,'read','Bearer','',1,1706283163),
('admin','59982c4f-5267-4c44-9d71-4f4cd435f6c3','2024-01-26T14:18:18Z','golmon_app','built-in','admin','4f264326def872837d68','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMjo1MzoxMloiLCJpZCI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiIxMjM0NTY3ODkxMCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MSwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiYXBwLWJ1aWx0LWluIiwiaGFzaCI6IiIsInByZUhhc2giOiIiLCJhY2Nlc3NLZXkiOiIiLCJhY2Nlc3NTZWNyZXQiOiIiLCJnaXRodWIiOiIiLCJnb29nbGUiOiIiLCJxcSI6IiIsIndlY2hhdCI6IiIsImZhY2Vib29rIjoiIiwiZGluZ3RhbGsiOiIiLCJ3ZWlibyI6IiIsImdpdGVlIjoiIiwibGlua2VkaW4iOiIiLCJ3ZWNvbSI6IiIsImxhcmsiOiIiLCJnaXRsYWIiOiIiLCJjcmVhdGVkSXAiOiIxMjcuMC4wLjEiLCJsYXN0U2lnbmluVGltZSI6IiIsImxhc3RTaWduaW5JcCI6IiIsInByZWZlcnJlZE1mYVR5cGUiOiIiLCJyZWNvdmVyeUNvZGVzIjpudWxsLCJ0b3RwU2VjcmV0IjoiIiwibWZhUGhvbmVFbmFibGVkIjpmYWxzZSwibWZhRW1haWxFbmFibGVkIjpmYWxzZSwibGRhcCI6IiIsInByb3BlcnRpZXMiOnt9LCJyb2xlcyI6W10sInBlcm1pc3Npb25zIjpbXSwiZ3JvdXBzIjpbXSwibGFzdFNpZ25pbldyb25nVGltZSI6IiIsInNpZ25pbldyb25nVGltZXMiOjAsInRva2VuVHlwZSI6ImFjY2Vzcy10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiZjdiNDk2NGQtOGJlNy00NWQzLTk4ODUtNjFlMWY0Y2YyNzNiIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4MzQ5NywibmJmIjoxNzA2Mjc4Njk3LCJpYXQiOjE3MDYyNzg2OTcsImp0aSI6ImFkbWluLzU5OTgyYzRmLTUyNjctNGM0NC05ZDcxLTRmNGNkNDM1ZjZjMyJ9.tznoHQWcjFFqz79cUjYLOLYwr7E3CYnmA0tvP51Dy6Qa5WB1O9B2-kkHNHMYYceEEGlATvZL6ST_r6MbBxm9MhIU-GE3kBYFJmNfNOLVdfLq6VkKaszJ4u3ii1vOWx4u9T0E-vCMyvU82MWvJrHkRGSVYDiL3iqXbgC1H-_XKrcK9FXZULRAlMZERC_smdG4t4X1ulqlf1Z4rxnIRt82pFBB7CdGHNysbWOC4eNR7okROmhElKF8qERmz7lKmUf9RY9_ExOkNx33Rod8xcSUnsmXoWsdXL3rjAHFhUEpTmvJ57d_n_68ZerMGdNPYyDEHj6cYe6SFrzIidO7Q22OB54d0K_VrdQgWU2RjeiWIaC_nFgSaZQOAto8KxSkiAg0f-aVVhPfj4Vk4syA3Nq4i2Blg2GWBUX75_ZHIXsValCEaEIRJWgzSmkanTLYpAWZEC5ALfRY9qStsGR9PRh42k_OnU71mYrGdtQpdpflCKcbk9Dana5U0x1CcWXaUpY00CW3BwBhT3_vhIL1DQ1rXX5Q9VRiu1SOjPOp-cuPJ8sbvhP1q3c04H9pGtiNHex2ZWBti_SbuZh8Fx3P4ZGK46YDPMfoPaecQ6jmbaExkKqme7qhzK6Q5kKMRexNyeMBHoARAxmZ6KyEQNdMNUNYiP3YxmgRvnDnN7zArpTbhok','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMjo1MzoxMloiLCJpZCI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiIxMjM0NTY3ODkxMCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MSwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiYXBwLWJ1aWx0LWluIiwiaGFzaCI6IiIsInByZUhhc2giOiIiLCJhY2Nlc3NLZXkiOiIiLCJhY2Nlc3NTZWNyZXQiOiIiLCJnaXRodWIiOiIiLCJnb29nbGUiOiIiLCJxcSI6IiIsIndlY2hhdCI6IiIsImZhY2Vib29rIjoiIiwiZGluZ3RhbGsiOiIiLCJ3ZWlibyI6IiIsImdpdGVlIjoiIiwibGlua2VkaW4iOiIiLCJ3ZWNvbSI6IiIsImxhcmsiOiIiLCJnaXRsYWIiOiIiLCJjcmVhdGVkSXAiOiIxMjcuMC4wLjEiLCJsYXN0U2lnbmluVGltZSI6IiIsImxhc3RTaWduaW5JcCI6IiIsInByZWZlcnJlZE1mYVR5cGUiOiIiLCJyZWNvdmVyeUNvZGVzIjpudWxsLCJ0b3RwU2VjcmV0IjoiIiwibWZhUGhvbmVFbmFibGVkIjpmYWxzZSwibWZhRW1haWxFbmFibGVkIjpmYWxzZSwibGRhcCI6IiIsInByb3BlcnRpZXMiOnt9LCJyb2xlcyI6W10sInBlcm1pc3Npb25zIjpbXSwiZ3JvdXBzIjpbXSwibGFzdFNpZ25pbldyb25nVGltZSI6IiIsInNpZ25pbldyb25nVGltZXMiOjAsInRva2VuVHlwZSI6InJlZnJlc2gtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODM0OTcsIm5iZiI6MTcwNjI3ODY5NywiaWF0IjoxNzA2Mjc4Njk3LCJqdGkiOiJhZG1pbi81OTk4MmM0Zi01MjY3LTRjNDQtOWQ3MS00ZjRjZDQzNWY2YzMifQ.avvLSb_uMRp_mjnKSKUIcbPEcmEYccnh-Nk0O3TqNCNC8PD9qpHsudJfnFeyDBlUu6q-QEpWmWzD1WS4EGsRWQLkgr8fPmWqQf-CcN743YuWa9rcNkCgwd2DS7tFP295Fn_y9KspKeqX7V43UdhfFIVa029V8a12rWOCO_oJNnOoiR0HlnHrFnKJreEaCmL4hisG01oO6s_faPO5X3LqGyxbdKfPGAgQeYDxs3jT_LfY7ndCrQdu1KlEKSXUw3_004HSMZ6vncTlhRGFM80y7Yf3s1SU2VVm_05WyYlUS3ETc6knpE-Y1KG76znpFO4L0ePkANRmThpXsU1p4GFgoZroexQZEaWhSa-KvJGeQaAOvMP1jZqQwjdt1snsigXIEv1x1O5U0OYekkScFiOoQJFiwMQ2RHxuMADfhhiqtd-c2C1-F0IT8hsLv5HquOB9LvmSl9NtvDrFoMmT-rCRN9hj7zClQr3ICo2AsF21gZiZ2MjT5FRfr_rFhY0ltEOFClAsiSl0LdDdBSa665dxgGoucIYe55WHMed2XETOYUuFz2ApZj50mTnOvq4S9cs-9VBYYVGEHCsqTiMlo-x6Zp_EVaSwXFXRaq8cIiDUXn4LT_Yt39D1j9a5_AYilP3UQ7vrwirfJd6SF_uRSLAx2gkU0cUUDDEh1YSXmpepdrc','3c7573be5218d07b99106e071bf149c7e9d73c2c9cda08d90d28f1c790d7c7cd','9fc920d890d955beb8d3afd1fe61459ccc32ebd429a9c893b3459ad7d612fb2d',604800,'read','Bearer','',1,1706278998),
('admin','82b8d75a-1efa-4ed2-92fd-a33831d1da2c','2024-01-26T15:14:51Z','golmon_app','golmon','writer','a1370df26d02c22b9dc3','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODY4OTEsIm5iZiI6MTcwNjI4MjA5MSwiaWF0IjoxNzA2MjgyMDkxLCJqdGkiOiJhZG1pbi84MmI4ZDc1YS0xZWZhLTRlZDItOTJmZC1hMzM4MzFkMWRhMmMifQ.TORBTTrQ8xLBNj_V2zM5jXfqXgAudg4V3QVLk9sNT2LT1CqG05pt4OEVX6D27eNVsoZBG8imLwkL7N7_tS6EFJTsMEgS0Syue6C1BWdtgMn7w7oZYOPOQ2q9DDKUL-zS_FTuhDr-P1qNBYIsK84TQFBX5PH6D2U7eB7b5To3zOG-GGPamjOCiLqk5tqcGk_BeC_gjpfBZMP-KqKqL3wcS3ZO1cZ7DRfBQ95Zl-yVqeGkJfLqCokaCjwH6LdYaJfhYu1ngOsrvd6V4P_Xb0UDiQQZvqJzA69ZBiI_RRWtWa9hrC0E2QLTu0cPN7Er5WimMiifCpt5inpAIPmDRlm3qzbB-tD052ol_q5o-Yl5wKWiVe4WZrbYEuoiXbS4HukfBwe5ob5UmOZ870mPp3-Mq6xtY5HNaxKmCMsakWeKhi7r6K6FrcEeaQjLE0xC6v1QbPxNcJqepbelaDGhNtkK7HDYnhPY0bFuZ-VyJhCEPe8H2_aJKKPgi3rIPPklpWHyDa5rgNszpVp98tP3B-kQMpCF2G6j1nvMAvJW76HBzI8B5YmAirgZH3SGd_mS1YABxd0uy5vOEJvFGUY22Kz0sVlxPalbAKg2jhpDJyVB6efyymn8Z1SYNQbS0FedNjwHja894prMB9jYIHxVMyGUaJyWppp76AMofZEZFD4Lamk','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg2ODkxLCJuYmYiOjE3MDYyODIwOTEsImlhdCI6MTcwNjI4MjA5MSwianRpIjoiYWRtaW4vODJiOGQ3NWEtMWVmYS00ZWQyLTkyZmQtYTMzODMxZDFkYTJjIn0.QI59LZDI0qsL3veNUGqlOVxDrOtT0wtCVgKSzAX2vrGEv-LMis2Tc3HceH9cW2crxTMML_ZgakvJXUfMPDDVM-5T3NZtWkS2P5dLMVPVt7idOZ-cSli4N6qDDxYYBubPfecSlNx-XUvzDU6dX_RiRJFG45B3uiJaIFv26LT3LHkPg1MCyypm30D55p2euvV8Xf5DExQ90iPMnSKEiG_Wx0T9By841qg2285NdriYowAAUm9IfGeBsGRxUcGiIC60lYvyTdkSuWfYXmzn2UV3cJYNjzegcK6s2b6FtyxlP6h2V_BjuQJYR9t8grvCcgFWfSywHW0NpGPGUPufaou6gszSeowj-DiTxRB9x-p7a3ePoMRQDQp-PamZwbpBGqVuXdCIe_tUdG8X9VmxO-R4QNhVd6hl8HF_3eRyakHN0oY-Gr0Fi4dQtg7XVD1HFooLeajJMlVr2tLk8s9PBnWirTtG-33CngVTdIeZKEUk6DIV6HiaP3W-6YViVlavFQ3AE3F_srMMnynsB3mgB7wO0wOqzSbkAzcmyfDxUqm3o7qr2BAlhyA5BFWz5ULSF2ukjcpsemJkFD2J4_j-xpupc1Iguzksi-GU8RQ18wMy8J1-UFjZEG0vSsE9uttKmNFekJCrQv88Dh0mkTNXk7NPNk3vI39t_w7xxz5F_3VIYno','7d1fbce072dcad8d112e14f1a2969139809749e8c4eec43c28312a0146f62bd4','acd23e70c8ac187480ad88d94358a46bd59bfc5c43e394b13ad172f0cf09f59d',604800,'read','Bearer','',1,1706282391),
('admin','8a2ce6be-2877-4f25-97f4-16aa6c37de87','2024-01-26T15:37:13Z','golmon_app','golmon','AdminGod','4e786bd4b2093498cd5a','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJBZG1pbkdvZCIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNTo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMzowODowN1oiLCJpZCI6ImY1MmEwMjJjLWRjZjMtNDk5OC1iZTRlLTBlY2M4OTk5YzA1ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6ImFkbWluZ29kIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoieTFlNHF5QGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMDEzMDY0MTY1MTYiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fYWRtaW5nb2QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTc6MDgrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InBlcm1pc3Npb25fYWRtaW5nb2QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOlsiKiJdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIkFkbWluIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmNTJhMDIyYy1kY2YzLTQ5OTgtYmU0ZS0wZWNjODk5OWMwNWUiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg4MjMzLCJuYmYiOjE3MDYyODM0MzMsImlhdCI6MTcwNjI4MzQzMywianRpIjoiYWRtaW4vOGEyY2U2YmUtMjg3Ny00ZjI1LTk3ZjQtMTZhYTZjMzdkZTg3In0.ANUDKp9Q4WvoNQdDmbFCoQGO-fcETa5rr1yiwqp9OJymzvV3V6lkHZRrB0czaBivdJQRJmgUBSc6Oy5YOKHAxXVqGFPPR3kawXCcoYkO4VCntpdu0_cjXeXgH2DyxQGkmTwZrUda9KXk8QB2TAciy85lWSaiBgIzc16SRDtMB1Mt0DV_6oJUp0sDCxjeacPomZ1RCfcqPyTUTd1_d-DreW9fhjx85H26dqXzsgRMGRKF5pGjm2LyPV12HOPYKtjfOmZIYnEuy0h_yWk05g7_6Al3XfhATdDCjDlILZLd7FnOGEDeO2mXjFhq4lxhqtECABSLepyv2PwBkuyX4-H3kPBYvZK9kEtOB8acqIBpVQqFHUhUdogOqE5a0_FXxcbCiEhWR3zWP79LcEM4lp-xuIHjz3tyvnRblvJBfvoM7EvJPNpLElK9zAySvgWSv6Oj2h1TpDi4thIBa-pe_oeIdS4AA-CQ4lM4pAUSavZZcBdZypuitwKvYfmZldLwXV6BcnNG1q4gEYr1MG7H6pULJE8TiPzyAgIzCSOmZQdffMY4mrTpu-YBsxAibh5YmVZR1LqVFGJ4g9PctOVwwBZUs9DLfbVGrDjB3D0wXDxISfGY_pT9ozAfpVrAQGbsvDJQoVpAHkci-fpRSH_dV4Ew7M9aCjXoeXbEIcMpnqF2bG8','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJBZG1pbkdvZCIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNTo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMzowODowN1oiLCJpZCI6ImY1MmEwMjJjLWRjZjMtNDk5OC1iZTRlLTBlY2M4OTk5YzA1ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6ImFkbWluZ29kIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoieTFlNHF5QGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMDEzMDY0MTY1MTYiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fYWRtaW5nb2QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTc6MDgrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InBlcm1pc3Npb25fYWRtaW5nb2QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOlsiKiJdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIkFkbWluIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiZjUyYTAyMmMtZGNmMy00OTk4LWJlNGUtMGVjYzg5OTljMDVlIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4ODIzMywibmJmIjoxNzA2MjgzNDMzLCJpYXQiOjE3MDYyODM0MzMsImp0aSI6ImFkbWluLzhhMmNlNmJlLTI4NzctNGYyNS05N2Y0LTE2YWE2YzM3ZGU4NyJ9.ig5PWovbByjYNVkeJEVehoF2pFdydcMmjjoihTK141ibWW15XATkcf6e7LCTEMD1DC8zDEHHi6aJBy-x65hnOoVDeYh_3RIn_1qFIv-i7z-8Mbo_Lu-lAyvXshXuvEo0G1cUdOBbL8k8yktpoXqf_cEfU_u9bEUrSLpDcLwPuUD7eAm_gzrJ1Km8okWsPnKOMVAhbI_89wQY4alRvMo0Jo4hGtJhYWM39bAp1rAa5se-qs_VEcCEkeXxY2N1hKwqmikn_KFJvlmbO3EH5sA9U3YAJbNutx9-MQLcludFico9UcxCWG2h5bZ71y-f3EID53YoJH2pN15_eMvN3R1FvyOEMteEdVPHUFiRBlzR7J7mE2hkgpS24MhFCh6J4cjj4rQaPbaGnFUFRYlzBMkEUhNFvXAXk3aQnAyM3xkhh4IQbU_IR-hTVc3gcaVJAggeI0TzEA7yeKbnCBkmaPt1InwKQlhdl9j5a-BS997bCL7YlSMoby5pT3dUJx6yxYN0zfd5fJQZGznlddDG_3X8BHtylB_z9SwaEpuLIcWnxWnKEsC0Muw3HKVn0u0HFyQJA7ilz-0fAONwqCrm-Q3JpKBql0_4qTTzVHLCRQR969k_GE5Mb4TbN89y2Jju-QCdqh1umVQul8p3SF6o9gqdP64xyLEQ3NyiDlqAptW2sPE','a568e6c3030e7116766042512db99e679e3c4296988450af5611d9fd4e31e0f4','c9cbd0170b81cb67e177cd96e2b57aad0bcbca62e083f9b6faeac7006b860c29',604800,'read','Bearer','',1,1706283733),
('admin','a1936903-9a21-41d1-8c97-e9077f56796a','2024-01-26T15:21:57Z','golmon_app','golmon','admin','a80bb5727438b98f21aa','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNDowMloiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJnb2xtb24iLCJuYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMToxNzo1NiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiUmVhZCIsIldyaXRlIiwiQWRtaW4iXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODczMTcsIm5iZiI6MTcwNjI4MjUxNywiaWF0IjoxNzA2MjgyNTE3LCJqdGkiOiJhZG1pbi9hMTkzNjkwMy05YTIxLTQxZDEtOGM5Ny1lOTA3N2Y1Njc5NmEifQ.rd1t7JUuOa8h88dIXba-cz0EAqUcBgtmAj1XjcWtPY4KNOmaf6UCCnvPXM3XwcwOfV7DldNE8S7fOxKhNqN-2Wm85UcrS4ok3Pj1J4wec6v3soMHoVv7BHe9gcL7jl7asejLy_IWKDMG2QTdAU2JgzCZzWJLJdrGdmsfSeP-rpZ_rJrX6HfIGACi5EjRTuyVX0GVzt_Z9AdvneuSxypmZ0z-Iuzo4ywGziVvvnEcyDypdpOtSeV-4WI80INFK_G474gzLDO6DxfzYgjta0KPDk919OUbiuwsMPy1ce8VLJG1XupC8sstPzdGp61CGOzt_t7AGO1PTQkOO7w9o7RiI2C5BfHWgtfVTm4vJK_CpkRu0N-HG9H7pognhzNXWBJMKI5mjzuYCuDeFO5zts3yqm6ARO69-o6z7DGbGhoP-Ev5xtqYj5MB1LblNsWTSsHW4ausSiRdAzUFIxBRKa8-TFHs5t9yu_hkusuJkeZFdhJ8PvEY0xji5iQ_oC7zS2HHKOAUpm5yR0Tvj1qKofuFZHuOLR2uFMiW9tVL_kW0QlWZ3OCjEDxTuBVMj_DeKtZQzf6qbUIyICvwgaPGNgfBo1NQjYSTxANOjJR36oFljclpKq7_MClGC72S_Nh8i-3Kcs2FuDmp_YyPuK5cSDYGCW2EAdtUKVklsg9DaNpKO7w','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNDowMloiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJnb2xtb24iLCJuYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMToxNzo1NiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiUmVhZCIsIldyaXRlIiwiQWRtaW4iXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmODFlNDgwYS1lZDBlLTQ5ZTktOWRhNi1hNjUxMGE0OTJmZTIiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3MzE3LCJuYmYiOjE3MDYyODI1MTcsImlhdCI6MTcwNjI4MjUxNywianRpIjoiYWRtaW4vYTE5MzY5MDMtOWEyMS00MWQxLThjOTctZTkwNzdmNTY3OTZhIn0.fQB0MIxaFgvpLjEoyCxuUGytrCcWurPRDixXC7JSio92fKxfTRW_ygfXkNEwUFFDJqr0rY3ywtpku4mHTb1K1aP6PqrSn5M726hq4N8v4UmZSfOQQ0cQtgVcmqkQ-uGYltsL_eIhRnD8yKrwBSnJ0BxuHkQTiczXkXNJSQwZ3_izcNW3Dy1UoQilp5wRwQSi9rO8HddcGVjW3rQtWPBkqNuVDNAXhGobl2lvRS8-XvGc_FpL2MSYS9SXJYl3Rid_f97KSXqJw-n6W1G9xtZVrQEUKWaXdvaD5jGbNe0XzryhJemHeikYgO6QDXWNf6BI6q8c3oAvpYSPA9tY8PogusyawFVPgUx6ZkywWzDBaCoC9DCg1dIJEKkqDjLKJye_-Ifx_peeuO1ktiQkWliC6iTm30tqhZhcxFYUy9VFK_HYEp8ILf309cDXgAa45bc4wgWAzDvOUe9Px7yyFlrzdKKnezQK1csF3lhAcx8jLC7krLpSvZrvHEiIWnHgqQK2geKEJs_FR-Bnc5Z4TY_EoRWtfygDfw4jWikuv9t8xlxZ5yiBVk3sz7yA4RJf0q_HfIZVJpYSiEn_BvD8qKTHj3A5ANZDNQA9beZGvjvDWfId1iEv_UR1AC3uyltK6jN4dO6ifeLMv319v_yzc6DZOujNTPTXPMV0KNOFf7OXnhs','ffd8c5c6ef234ade8bc6553e6d4c0d5141ce96842c2d84ad13696424a7cb9feb','d04eae606fd86a908ad4baf7b30398bd134ff0690b9c6dd2022565691cd9edca',604800,'read','Bearer','',1,1706282817),
('admin','b13919a7-6134-456f-af5d-d9ca6debd28c','2024-01-26T15:27:16Z','golmon_app','golmon','admin','1fc5b16c0d52b616614c','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNDowMloiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJnb2xtb24iLCJuYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMToxNzo1NiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiUmVhZCIsIldyaXRlIiwiQWRtaW4iXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODc2MzYsIm5iZiI6MTcwNjI4MjgzNiwiaWF0IjoxNzA2MjgyODM2LCJqdGkiOiJhZG1pbi9iMTM5MTlhNy02MTM0LTQ1NmYtYWY1ZC1kOWNhNmRlYmQyOGMifQ.C5kaYctSKFstYuYkgYcL8HJ4KOv87Qg2Ljq1VZcFDZFFf6gIbD4WUKOb95DtH86ylFJ1L_U88zv4Vf1rLevNuzBc3rBk7PQfaf6crhwyQ21d5uUpMSesDvnSorAkTHl3uWzQ9qDoMFEyddQqisLPheKNhgAtxezBPEVPQQbKSBY_fHNAxEMm9BgR1MmAX01Y4OvjGNgtqAKLXR2m2FjbjY9rp5N5BDNqoUAsDD755xUQtw8Ygsfy39IVJtF94Vrb8w2Z0ovI8too9-myGwllFHo154jlf4vKdIzBoIlP4v9b2qaLTgm5eVF-ufO5-uLqVHgrphtZlXlJdvdvQW2xnB9yEmb2MlIMF-3Mqd5HLLP2-UI-JE2ty8qkV_RG-PqAY3qKr9oThlWRApFV746CHGKSVh3iPdAaKfdd2vg8TVs1gCcjbrFHuM67xiH1JTlHq5uqJIXG8QKM4PizAA-hSZo3P11Ced9pP0y1x38DZJWK0xVH1rUrXtm7ktOHX3MVCH44FqphMnfOl8AN1xHgjzA75UWKWDhK0S6nxpL9hwKyq4ZZ2b08nDpx4hT91nmSXds55tYfUXEVTt2_ZPUr7sN0yDAS83-6yqnEbQFlT5e9cfEwYNetvRGDDlQ6pxCjUGpMOsl4DHHIe5oL5f9d1yRQsiemp6JAKWC91PThDm0','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNDowMloiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJnb2xtb24iLCJuYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMToxNzo1NiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiUmVhZCIsIldyaXRlIiwiQWRtaW4iXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmODFlNDgwYS1lZDBlLTQ5ZTktOWRhNi1hNjUxMGE0OTJmZTIiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3NjM2LCJuYmYiOjE3MDYyODI4MzYsImlhdCI6MTcwNjI4MjgzNiwianRpIjoiYWRtaW4vYjEzOTE5YTctNjEzNC00NTZmLWFmNWQtZDljYTZkZWJkMjhjIn0.Frt-tVha0p_HKroq7yvYesHcbQ4-T9fi-o2Kp1K3vnp_WVxWMSB4aeW198wQYrR8pkJr1JNUpDTWe5FpQa6xNb8lgu8Hhkeay_llOeEC9AwNO_teYThXawTXJwEi9BmKRBfyOv60T5dhePHCGYmE2NGe4mQlFkwdbbjyxAOUxj6IHUKSkb9-OpYfeYPyiu13sOj6a_5WtCs5rMhbYgedHYWtazgcZjdbIobuVGQSqsuO78NsLf6oqjDTdEBi51Cxn2MfZfAk-cPwQG9D47CrA1CfgDMQVR9-u4nHbGc1wFcUkejT8JMsE0ztsa4LX55Uzzk_6zr6XQ9pfbQ5dCJRbD_aV9lOyvVR9eOX815EaKHJYUfSzD3SCFafD2X9BoxwqSgkqksFLFaEgziNhcJa94_Z-Wff50-JdlHGmI1Hzv39E4or609s_GvQKRRBOEMr6VT2034zS6ulUlWCHJrF4VUMiczLZ4haJSjMDNgxITxJZv5ugjmNlDf6Qy6SISN-wgAR5LKN2qsl8Gg4FRoEqawM8x7ZiYj8EAcg6xqLd_XCfMcwvqXjqxlBdAG-6qZ6tCJpy4UX8rnzC1MF7AMuVTMr6LnriST0c4AgoklVLvZc5iiCRSr_R6ZXb9ugcR6WYu4TjIbcWeUudNrEpxbfQ6IZWDeY-ONrKuOoQTkhLw8','777eb30fc3dc3543cadc640cf29643f0166fe7df87ce3ad4f7d89d8dae37706e','82be5ede090cf623e9b95105a990b7d967905dc88cbdb9e7501fefb31c8d276c',604800,'read','Bearer','',1,1706283136),
('admin','be664fec-d8f0-402d-89e7-2fe78aec46ae','2024-01-26T15:28:34Z','golmon_app','golmon','reader','7cb728473eaf3325daf5','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJyZWFkZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTQ6MTMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6MDU6MjVaIiwiaWQiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJyZWFkZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJyZWFkZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI5NTk2MjU5NjQ3OCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fbGlyZSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9saXJlIiwiZGVzY3JpcHRpb24iOiIiLCJ1c2VycyI6bnVsbCwiZ3JvdXBzIjpbXSwicm9sZXMiOltdLCJkb21haW5zIjpbIioiXSwibW9kZWwiOiIiLCJhZGFwdGVyIjoiIiwicmVzb3VyY2VUeXBlIjoiQ3VzdG9tIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3NzEzLCJuYmYiOjE3MDYyODI5MTMsImlhdCI6MTcwNjI4MjkxMywianRpIjoiYWRtaW4vYmU2NjRmZWMtZDhmMC00MDJkLTg5ZTctMmZlNzhhZWM0NmFlIn0.OPKi9QGxhCHuHlVMQDtg9fEHDrNKcYCvVq8sJgQ61ECje0IRDT0dtGeHQ_MlVYXXCDTe5xQacumjx1RgU5Vhzu-lqplkiRFRyHWtVdzPlbohghWx2hfkb9skjPAiCy5XR7x-h7lBGbFs_8JypezRlw1p0s6VStwp5j-E-jbS04Ue2jxIoIdd_A7LuUtsU-L5SIqxuHnuzGvOxBGUAGNM7ch55iA0Xk1WA-MyoWrGfoB65tAJ9ORHqOqSLnruK0hUGbtKLhyfyBRs9pRWWcI4Krm7UcWRFF4l7un5h0fOwRuTvnpMuIB9itK4PFM8YWRyxOU_pLYavWgHMc51ArQe5Pemc5R5B1jjxLDY19t9C__9biLoZSI_RVHsvOCGy8M0vVsHd13gL1a13cVoZe587De3ovw_w1I4jLZXFtE8a8tWSabZ5QdiWTVD34X3FRk4kqwRkXPdzdFz4yYz_M48eQqa-V3hcpGMFRRLjNO-4TEVRLEb1lC2qwY7DAoKks212qeWJDqinmDMnE0QQmFN4AH4gcBcoExViu2zVWNur71e02rhXiGH5GAiCycCuE6uHRpFYKAJlpLpkBC1vAfSgf5OjZ8vcPLhfWtiIig9OmvYRHRhJiaimiGIbBr7NiAw3kfYMJLofvww42FnHK70xpz61dD97hMKVEqZKoDmfgs','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJyZWFkZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTQ6MTMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6MDU6MjVaIiwiaWQiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJyZWFkZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJyZWFkZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI5NTk2MjU5NjQ3OCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fbGlyZSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9saXJlIiwiZGVzY3JpcHRpb24iOiIiLCJ1c2VycyI6bnVsbCwiZ3JvdXBzIjpbXSwicm9sZXMiOltdLCJkb21haW5zIjpbIioiXSwibW9kZWwiOiIiLCJhZGFwdGVyIjoiIiwicmVzb3VyY2VUeXBlIjoiQ3VzdG9tIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiODQ1YWMxOTQtMmU3Ni00NTAzLTg5NWMtODdiMTgzY2U0Y2NkIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4NzcxMywibmJmIjoxNzA2MjgyOTEzLCJpYXQiOjE3MDYyODI5MTMsImp0aSI6ImFkbWluL2JlNjY0ZmVjLWQ4ZjAtNDAyZC04OWU3LTJmZTc4YWVjNDZhZSJ9.KpXzdbMFOMX8D_25R21BEcmHaP3o76yMWv4og2AM2FVrcdfbfeyBK7cCRCytAqAcitUZ0q59kJU3aLPiCrDTRyM39pc5hcio-qNI8-phfTXCMPmKSgoil7eTzJBwBWQLttA2DuwacwNvvSCJxyXErAOae9gqCb5Mdrz7n4H6wlApbsxcd6ZZRMJDdVWC1essnLyvjiHZDV7ngz2Ca2rwey4FwsdiYj-ZzzYhvYkuA5bD4IB-imbB_8IkiTerwpiYWLacgr5KxsZ3VZEz_3qRq8DWSsqnzNnTCY4iDuPHfTiJIhjGg5k4Vtyu7BEbVZrs192cAqAOMsHdFOWe-AZacSe5A7MJcpTsD4tpBVtOhcQEM51yBfeKpjrFyFnGhQVsfrkCLhpnnO0zbijC3bC7g_xi0sPrvNnAPS6g4od4Jrrk5jCxN2QmqKb-fDftoQ0nyPajgvwqyBifOm-pihejwUxjK0YbYN-TboBeoKK94_TiWsqcEOqcUDrUokbqruoYjyHoM1Bg3ImuCPPOIKCFybKeodVOlUzk6SZPaKj6dfhKuOvIp72Md_05BE8jjbYLDlXDqfgfkZklkW5wcyKY8bH_O8pnuBs3JrlEjdvQP87myw9InG6q-hQ-i_O-JOrzwfOF2rml8QMxqvwc5cMYRMw75vqTm-p1bLTgZ9UoNCM','5083040b2784af38d562b594dffc9f3efae8b915484b43dfe9af92d2cbd59076','5aed86aeea7fff0ae0671819273aa0b8fb11ea0fd52223136fe580bdc92167b5',604800,'read','Bearer','',1,1706283214),
('admin','c07cad8b-f643-4a44-be6d-11ee5de444b9','2024-01-26T14:45:29Z','golmon_app','golmon','writer','c2eb3688b15e6c205192','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODUxMjksIm5iZiI6MTcwNjI4MDMyOSwiaWF0IjoxNzA2MjgwMzI5LCJqdGkiOiJhZG1pbi9jMDdjYWQ4Yi1mNjQzLTRhNDQtYmU2ZC0xMWVlNWRlNDQ0YjkifQ.BQ6UxYhRrQZeNuLLDgdFtRTDqatDl7zZv_OFMeaR2x-bzet15BmaG1Ng_m90EcLpCUn7M0D5_jWQXDV-Rv8nzU7vYTzpj4EsUN13BcRlu-FWerQ42jIcKuRrdY4W8Jd72H0qZYuaYnkqISHuLBMRO9dh8-gmPbpd8zucyy-9hksrCbi4fyCm_bTFh_WRpVs92Pfrj9aa-GUBs-a19r5Dan0NcN96a6mqkEt9Soo8W7zKzIDzC0g67aw705J4pC0RnaQ0eK5Fb2LtOmuIIP4s-JoPKwlhrsqV4xNkfvRcAxYVZVe9uF7LBbAxk-gOnsF2WXTv1lNXUy-geL90ZRk5MejCu0e2ysVYL41qDgCJk82ueBQ5x42RU-IXivZk8BKW6KPbaEFP8_9rHoiJI0JCrxwyehokUJA1L3frg9_XLb14f8VY6_c3qST1qNRwOzlBgWTpw5eyC-VxAUcM9RrWGPy_gyksBKxblS1pd0XKBjUF9TxncUp85Q7mUys-5BmSNMrUR63FaWvj7IUZpu-Newkv1upwLX_Y-eLfFkmxz4-EV-eqo2X8VVCQl_OVCCUrbjmzLEZtAnTJ1u8KzCORR4Ag9PuYWZI0akm4bpfMzt4B0reosLdIUkwTCqNWID3KFu_qK2nWb_xEXMg2nILOfXL8kyH2rC3UjMkyRKxERz0','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg1MTI5LCJuYmYiOjE3MDYyODAzMjksImlhdCI6MTcwNjI4MDMyOSwianRpIjoiYWRtaW4vYzA3Y2FkOGItZjY0My00YTQ0LWJlNmQtMTFlZTVkZTQ0NGI5In0.IHZ1AdB6y3S1NqwrocR4K2rBhuR2Tt_JEil5VxAx7SB2gxTrDHS3IF2UcPvUY-I4nqxY2PKyA9t-B1n8t443iW3Y9psqbkWmH2ij6vry2G4LFl2RMKCuHaTIs6RkhltuuoMr-wsrfM1M2HmbfQwIoHpoqDmMXW-t9z9Ta7G9_OEot1xqbY5R81rr8Ogzjqx6_HyMLnfC4HOc9VFhAZ4WL3IBeQPYi0sLU0PRflLB03MneQm29vZqVaRCxIkAPykdiiVFEyYXFC1oAiawk0iCuDyJym1SCVgw0XQMPiyRZUsqcvvmCBRsePBA6TTqbw_qPvvqJyOBvE_9Wx_E96cVymjxbH1BYGbqYOuQp9aGvcg9xoUkRNd9DLM1o8NkidWyyTht_ncAtRliuq7w99cX8L3EXNpkcYbeM_qaHy95iPRjcntwQ9zhzgI8D7yS1xjMiIADOEgEwjx-gPpsOKumr5D2UyEitHcSwGtQPIMfOuVAgm6bS3Ocm08BFUXFqEy3BQZJR-MDeNL8dxzcnoAmckJ9nso_8KOV3uQAj9-v0Ps2DEyvYKhFTnur8Glpnd1PY60EBNiSOtkn8UIofIKPCa58FFZkCMWyl9qGOua79M26w5SbM2t-QIDWqVvh2M0vy9FKrRVcNSFWf9fvFN6mg5o2ljqh_7UZzdRyOfsyA8I','5eb95cd6cfdc581520bcaaf72c1724813d7f598f7207cd04c29e0888d51f5401','bb2338b6e4563c317f144fff430a7ece30dc10eb5ad23094373c4fbf8bbeb2b4',604800,'read','Bearer','',1,1706280629),
('admin','c5135195-8885-458e-8a46-3c7fa159f10d','2024-01-26T15:00:09Z','golmon_app','golmon','writer','31a3dc291d167b924c74','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODYwMDksIm5iZiI6MTcwNjI4MTIwOSwiaWF0IjoxNzA2MjgxMjA5LCJqdGkiOiJhZG1pbi9jNTEzNTE5NS04ODg1LTQ1OGUtOGE0Ni0zYzdmYTE1OWYxMGQifQ.gMxJwdKKwgOkEg0yaIigf-497M9IYExUm3yTVNdTC6MvCWDS_wOXrEVE5YnEvrSBQPGUMtyk_OnhiReS-nH1i4wJdScpCKw5vOAgJNfiUcwD-h7LRxLP5AulHAhBol-RqKsJZEQG55WDNtSOHDMaoitR-Y5GNDNOFJph0qvH0GxdcckUt-G7W8uZXA-dEM-ZysScQIXTT3_Tye81JcNcP32U1md8dkEQWZV7FkUfBxi_fTIhqzFyd_ScZcr0rcEAR9RL0aLucaSJI7LZ088xB3McBch9EF9IGjjofJNnCeODNxpck9k7KcuaHO98-WDYqqdfjUbOjwcoq4SMINL-43B7FuEwOxEAJns2insvmWfuBfMN7W-GzHcyEZAnX-Gv-bPdLU25w13DATIE9xIugxh65J0ZXGkmpDlrAEikz-7Q7oSY08VeevNWgrdLU0mUvEojcvJr1_6MtVkwdZPLf4YOvwu6yLxJZaNP7QIeI6IC-ahyPDmR9zqsQMjZ-TsDPvHIB6D-BZr11jE51Wb7pNaLXVBjmgxwVxAbX-Nm20TsBElWuuJ8ZmoFbwO3rIIbgOtLVMA0fc-naQAo5ATmOqNkzz_uuFRIpqUriT5dy4aoOmRK-dglH07VNkbB6QxPYsdzMAgvQcJYfhk19Zvqc3J9Ilr6c7hD0mMv5cwAe1o','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg2MDA5LCJuYmYiOjE3MDYyODEyMDksImlhdCI6MTcwNjI4MTIwOSwianRpIjoiYWRtaW4vYzUxMzUxOTUtODg4NS00NThlLThhNDYtM2M3ZmExNTlmMTBkIn0.YaBuuv4MwOwXgT3uWAZsX0CiyhInGEBuc089MJiCsSZodKPKiJWN9IOoD0qRx2GIsKcvevYg2F1UAlFYcnMaDNWZ-luaI-4RvAK4XPsOppIbVgUj_zj1_tdWJSCchbgwFYiZ7QIY3IsOw-sEuu-oksPg9P0mpH_rKONsRhbfPE3LkAglcY5B-gIfdCRvgOjQ2NPC7q5rc3hyb2x7_BEZVU-OV1c_M1tB6P5fxvwPn4NsRvm0DIzV8x6HiFR2CtPw6kfaELRiJt2B_vXs3mJFl82iqujXDmm79JAnL1GoYbTpDqTDqcPnPJ4e4aS7NXZJZEO1IRqKP1Ts3mYT0hBksb-aQSSxM92pfprmucdzpOLVhadtACGtLRPJwXmOeUoC5j_RBtjS03AniJrA8Sn9amQMSovQ4cDSC0HJhoi89JRPX0CTyg4Q4lWkQBXyYJa-OadecO0emDUQVRpmL9SBbxpVNL7kqWzr8Gwh9y4IuSylo2S6zvDth9NP1QP9PSh8LtOMamx4b8OHjLL42eM4S0pHS8J2-tRgXEhzL6R8p_27-9qDnaol8DHbsVnXE9BLzkuwMyZiBhnc0hHA4WTS6kGNIBh1loOaQs-fih2_VC7C5S5tf_IY1ldHGXrvEOWhNuZXZsDrCq7Qwp8qo7eNgLhFf5Mgtp1gVfhESsmh2OI','22477648239670b84ef463c688614a97c3ce93eca63df695ea638a94fa52a319','ba983f6a6ddcad98d24dbe02beca722f7f228d6fa759ad7787c37da2bb5de6dd',604800,'read','Bearer','',1,1706281509),
('admin','ca359d1a-d9f7-462a-9192-72761f9c4da3','2024-01-26T14:17:59Z','golmon_app','built-in','admin','3b2284ac477962932a66','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMjo1MzoxMloiLCJpZCI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiIxMjM0NTY3ODkxMCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MSwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiYXBwLWJ1aWx0LWluIiwiaGFzaCI6IiIsInByZUhhc2giOiIiLCJhY2Nlc3NLZXkiOiIiLCJhY2Nlc3NTZWNyZXQiOiIiLCJnaXRodWIiOiIiLCJnb29nbGUiOiIiLCJxcSI6IiIsIndlY2hhdCI6IiIsImZhY2Vib29rIjoiIiwiZGluZ3RhbGsiOiIiLCJ3ZWlibyI6IiIsImdpdGVlIjoiIiwibGlua2VkaW4iOiIiLCJ3ZWNvbSI6IiIsImxhcmsiOiIiLCJnaXRsYWIiOiIiLCJjcmVhdGVkSXAiOiIxMjcuMC4wLjEiLCJsYXN0U2lnbmluVGltZSI6IiIsImxhc3RTaWduaW5JcCI6IiIsInByZWZlcnJlZE1mYVR5cGUiOiIiLCJyZWNvdmVyeUNvZGVzIjpudWxsLCJ0b3RwU2VjcmV0IjoiIiwibWZhUGhvbmVFbmFibGVkIjpmYWxzZSwibWZhRW1haWxFbmFibGVkIjpmYWxzZSwibGRhcCI6IiIsInByb3BlcnRpZXMiOnt9LCJyb2xlcyI6W10sInBlcm1pc3Npb25zIjpbXSwiZ3JvdXBzIjpbXSwibGFzdFNpZ25pbldyb25nVGltZSI6IiIsInNpZ25pbldyb25nVGltZXMiOjAsInRva2VuVHlwZSI6ImFjY2Vzcy10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiZjdiNDk2NGQtOGJlNy00NWQzLTk4ODUtNjFlMWY0Y2YyNzNiIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4MzQ3OSwibmJmIjoxNzA2Mjc4Njc5LCJpYXQiOjE3MDYyNzg2NzksImp0aSI6ImFkbWluL2NhMzU5ZDFhLWQ5ZjctNDYyYS05MTkyLTcyNzYxZjljNGRhMyJ9.n7MVgbfWZJ3uXCETHDonBGNVhZ85jg_v3Cjm_B-KhXbKjFDV5dArp16EmLoURxog5T0jkhiyDzYApy-gvtXPyQJx8fD0xG1AMIOQdwv40IdN_l3by541bYj2Cdh6OM_jSJ633YiOVkzlN0i992U4TUsRMKMGSfwfXBWMGNoFQ5c0H74mAaPSZVsD-qr7rCi1sojJKO9VmjG-NOz_cOX-8xbnR8rm0KppL8O_Sec-eq2g5szjrHuHwRZwBrKlnEJiF0OoFnQeb2NpUmZCbjdDt05mYPy_j8WsU2GevvrGtW2mfP3cwm0qwLIUqmMna_g8NhedBHaFaeDXvB7Ik0uIEWeXU7zdIUVIoKmcGLkCdMw9yejMPb0mFEFhiSujvA_6oultFEQwOhKpbhDkl26CIJGSm8bS3TKkBbRxaAcpRiLwK6kSYnlNMByn4GksxP2Vhsg8MraGc8IsmRLO49uti9C2xEhWu5pNqQhfBRlGEWN5OEeb45Sr49_q8KtS7FL7lZF-wiPMw2wLe1lpZopvqDi76UhYs-VNXCo6l7ZjPbjiqchJTyBTBPaSYU_NThmRxTHQpvMoyTUTRBH6dKc9-aeYLhDMw3XLTtJA6eQCw2AJdiWi3nMoSgkHpeFIDnZur9o0FRcDiNfAyEJt4HznAciyEsJf1icxcX9XUWiGJZI','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMjo1MzoxMloiLCJpZCI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiIxMjM0NTY3ODkxMCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MSwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiYXBwLWJ1aWx0LWluIiwiaGFzaCI6IiIsInByZUhhc2giOiIiLCJhY2Nlc3NLZXkiOiIiLCJhY2Nlc3NTZWNyZXQiOiIiLCJnaXRodWIiOiIiLCJnb29nbGUiOiIiLCJxcSI6IiIsIndlY2hhdCI6IiIsImZhY2Vib29rIjoiIiwiZGluZ3RhbGsiOiIiLCJ3ZWlibyI6IiIsImdpdGVlIjoiIiwibGlua2VkaW4iOiIiLCJ3ZWNvbSI6IiIsImxhcmsiOiIiLCJnaXRsYWIiOiIiLCJjcmVhdGVkSXAiOiIxMjcuMC4wLjEiLCJsYXN0U2lnbmluVGltZSI6IiIsImxhc3RTaWduaW5JcCI6IiIsInByZWZlcnJlZE1mYVR5cGUiOiIiLCJyZWNvdmVyeUNvZGVzIjpudWxsLCJ0b3RwU2VjcmV0IjoiIiwibWZhUGhvbmVFbmFibGVkIjpmYWxzZSwibWZhRW1haWxFbmFibGVkIjpmYWxzZSwibGRhcCI6IiIsInByb3BlcnRpZXMiOnt9LCJyb2xlcyI6W10sInBlcm1pc3Npb25zIjpbXSwiZ3JvdXBzIjpbXSwibGFzdFNpZ25pbldyb25nVGltZSI6IiIsInNpZ25pbldyb25nVGltZXMiOjAsInRva2VuVHlwZSI6InJlZnJlc2gtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODM0NzksIm5iZiI6MTcwNjI3ODY3OSwiaWF0IjoxNzA2Mjc4Njc5LCJqdGkiOiJhZG1pbi9jYTM1OWQxYS1kOWY3LTQ2MmEtOTE5Mi03Mjc2MWY5YzRkYTMifQ.dy2_ystFedPB8v1LBqyv4gzAzBtaVmRjzOv7zv3z_nZ4AuyuwvfdXlo0ISGVC5y01wic-zcDfybgmDrKGNdRuIIAeNXFcMY3lqTGw1mE-wZAFrgdhovYDH2XRqLsZxEnlMPHS6pZ3O5XRJiNtxXXthcQNze0_HnkWVN_nd5PD7ioXYSZhbgXbrIT5tDJ5bMSARmxdYmeuAqxaMk7LYgMOlk6xOdlSVXYhYJEpMs90YPZavFfKHf5-jjxe8dM3QwXRY-QkiF7svFLOUzEv-Die4Fn8A7CIjc_kTFz9cwHQePp7gMIVg2FZwanid2vR2zbZRH9nR0q2a6OpFxY7k78ZVLPxM_DuGMnMwektfSoQk3W5d6fir_qNvyeWmuI_QS8viB7pHibjc7vmQ-ByW1dKbWmUfa1sQVPTwJpxMxdvsnneMJ3Z2VrBfXODIawnT7t1ig8CQQqhCqquZUw0-FecnB0_DJ-rgc4_XHd_JzYYe2faegVhRVsI6criOuQdEfgKP5r6_S5yWdz5yirmK_JRD4FR0tU2hSQ-jG5NBpeCQhMvcSTCYYbp5DCHidQ1YcOr9-wGJp0wsSV7kP5WWxqFWJmAt-qYnJGNptboxmZ1qXYpNv5B-_Yvaq-hPLncoqkGS8Cyi4U8Q1tL23g5iF6C3oaHsUCWvsXC5I8N0v_8ic','f587f1597da61eac3d3154b9690aaf6e016e21b4168d5ecd69bf84f2834fa2cc','3746a603a8493bd1744097cf4422610b90654ea61d638696b3d2903992ba0f95',604800,'read','Bearer','',1,1706278979),
('admin','d96290da-389b-4229-8a05-6d6f7c4984a0','2024-01-26T15:37:31Z','golmon_app','golmon','writer','ec35db479fe51d2edbb5','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODgyNTEsIm5iZiI6MTcwNjI4MzQ1MSwiaWF0IjoxNzA2MjgzNDUxLCJqdGkiOiJhZG1pbi9kOTYyOTBkYS0zODliLTQyMjktOGEwNS02ZDZmN2M0OTg0YTAifQ.Xxc-TSq7J626Dvjf2ZeDNooIXIKb3kihL0HPZXKTAY3gORF6l-8Sk25201h-Yny0oeJAUPhtmMoX55w_nm4KAps3M_tUFO5G2EAdG-IKRA12cNBInQ743h17suPuIULiLE6w1c4qlCdHebj6e-3YfaHLfngnmehlzepYXfQFw58bBKb5_q1ztUVuvpySK-R_IzyImhgFCOSNKunxlw8O7c_YTCqi1fOJE1SnnMOs636WUjCvYJAwY10tYIWXYGGA_2oAITe_luDQZuRZfXQpHghnUqRBY-LzI3EZUaIyN9avknH4dOoqa-L2TCOLZtQ0FTkol0X2iE_YOutZpZdxIZBUpU3VwJ8gPZX7uREWOcXcjxcsszuVqYX4s1or3qpZ6Ih2FBuxowiwwl93-0voTAAsrNODo7ujDEUHdlpAPC52AE8Uz7Y87HRoFvMdw9v2-NwzUHz2K7Q0s4k3kT40mEExZ3b9MZkPTjA54aCrc-WW7rFd6WGDTEvSCG7Yig22puo2n1mBi5C7DVt4aXAnTxH-OnGAwopZgZzItK-U_7rrhCrWocKP9n79PfVAmaliKI29KMfVpDK5GXYpJ854y8eIgAhtYP3IsyRH5ma8qN_8_sfrYheccE8RG6Ehx5OPw3bZiVM0mG9FAhu9i5UNIMdhIT9qNgRQ2EW40fuXEgQ','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg4MjUxLCJuYmYiOjE3MDYyODM0NTEsImlhdCI6MTcwNjI4MzQ1MSwianRpIjoiYWRtaW4vZDk2MjkwZGEtMzg5Yi00MjI5LThhMDUtNmQ2ZjdjNDk4NGEwIn0.SUuYL0buhXXsL2qhn_OlHaACzzDOqpJ3_vf7WxV8HvnN22S6hq6LaD9Qz5tEQHjst67-foJ5ii_bT6dmW-iKcFVyqO6w7HCPwDNORJWylBEX-l-gkV94FlcG9KcuuRl0KCbREy0lZHw_fhwfI0c-lsPUirTyIBtsKxXzskNlXLlUKLJ55PEK721MASJBZZErK_NSyXFf23QDXfwBh9ra9Y1bDxqzxQ_wpq1sjvYRMS-2QDtkv8FX6mEyKYnT91WMGiSgucgnZ6WA5AgrDoRX1i5kcBaYAOPBuNYKQ3cYeAuQ9bhDZEmKjo-5kPrlvoWSEEodKf2xJIbPTjkVr_7amSsZFQf7IZrJxC-xZRMQLb_lGXUvthzrVQuMqJLCY4lOZHd_hSoVlIaQaJ7HRvJvFNnYhymHhD8H9b0dgt_M1Mrbi2BrLT856yqWwD9l-_RPDDlkNMTMyuO4CC1nTB4lBqlPel0sQg3nPeiLmzBkMmweU-ofP7bJaDEkaPyzD97sT0uhmumE29dQnuJ8AENWgGClv6xbwHM0bHPkq8ZU07wDSuZW_PTLQQyA9DySiSNuWzHeGjTL3-sRfWWbygsM2hHv5jQBQq2aAKUD2Iwfg7fx8ncTZWGPMPYL8BVnF__kp98yofqHPv-ZSQHWSK7hX9CKthymek-_grjUCqUKKNc','aeb58ed6024545b915302d6230841c167c07f1655983a7645ce5fcb829f787ec','d82c3d7cc00cfe66ca1ee9a366db67aab8affd329e025fa3313f6e8e3459f902',604800,'read','Bearer','',1,1706283751),
('admin','dac5de89-66bc-4d12-8d97-0af252160880','2024-01-26T15:17:58Z','golmon_app','golmon','reader','0694411563eca3617c70','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJyZWFkZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTQ6MTMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6MDU6MjVaIiwiaWQiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJyZWFkZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJyZWFkZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI5NTk2MjU5NjQ3OCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fbGlyZSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9saXJlIiwiZGVzY3JpcHRpb24iOiIiLCJ1c2VycyI6bnVsbCwiZ3JvdXBzIjpbXSwicm9sZXMiOltdLCJkb21haW5zIjpbIioiXSwibW9kZWwiOiIiLCJhZGFwdGVyIjoiIiwicmVzb3VyY2VUeXBlIjoiQ3VzdG9tIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3MDc4LCJuYmYiOjE3MDYyODIyNzgsImlhdCI6MTcwNjI4MjI3OCwianRpIjoiYWRtaW4vZGFjNWRlODktNjZiYy00ZDEyLThkOTctMGFmMjUyMTYwODgwIn0.rAA0HWVhkn4KUFlLigbfq_dsL3APXnk9fWvWChbIt7Sm0N7Y0dO-_NKWn1TZ2j2fA3v00Ab_zCib8-L4e5wXF2Cti2mHP8TIlh2hlUe42bpLnRfh3xnPeVbnnNeEyTH2d9dhP-nz07XdusPqflZ-TdzgJgLHfroHafWxakmCwi1UmO4eyEkxW5x-zYQy7C8OwTJzwxtJ5dlD3eyFU4oun4kNt2cmruJirYSlqubdy6ysQor6IRMJxsbPlB3pyogCBa6z0Yn0YqC11adCF3v1Eoii86HYrWARc2rZsP9TWP7EboO_yhu3jxXSlDSnQnADLJp6iLg9ZX9jRoh4bMCZzE72acutqDEJskvXNFvipcW5vGzEAQRRqVk33Sf9M7aoZrEjZdSxevVpjMCnVg48pRdx0eb6B76GXXR3WgU4AieaI68ImvbyRrKyEfFLGsFgCkrwFhn8OfFRuSBBGwk43U4_f10YW_eN_Bb2XsXhvc_woAsl7N4gDgr1U3Ib7aP9Y_93AcrEPbgjO8TuNYaA44KMpeICqo-tLnByxjXTIqbLT1FsqmPeJYqQL-88g1NhUAuREkfdOdHI4jKdlBvsB9Vz40AE_gHwxiD72JsjNabA1cqC9bSZNNwU6AcaPIfhuqBaQCTH-6bLasWw9xfXgou5bQab9Lew0kFA1cs6_l8','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJyZWFkZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTQ6MTMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6MDU6MjVaIiwiaWQiOiI4NDVhYzE5NC0yZTc2LTQ1MDMtODk1Yy04N2IxODNjZTRjY2QiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJyZWFkZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJyZWFkZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI5NTk2MjU5NjQ3OCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fbGlyZSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9saXJlIiwiZGVzY3JpcHRpb24iOiIiLCJ1c2VycyI6bnVsbCwiZ3JvdXBzIjpbXSwicm9sZXMiOltdLCJkb21haW5zIjpbIioiXSwibW9kZWwiOiIiLCJhZGFwdGVyIjoiIiwicmVzb3VyY2VUeXBlIjoiQ3VzdG9tIiwicmVzb3VyY2VzIjpbImdvbG1vbl9hcHAiXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiODQ1YWMxOTQtMmU3Ni00NTAzLTg5NWMtODdiMTgzY2U0Y2NkIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4NzA3OCwibmJmIjoxNzA2MjgyMjc4LCJpYXQiOjE3MDYyODIyNzgsImp0aSI6ImFkbWluL2RhYzVkZTg5LTY2YmMtNGQxMi04ZDk3LTBhZjI1MjE2MDg4MCJ9.QYToSDDLFPfvDMoQr8IrybLCXbAYLntpZda90sCKIbzExwjQ02kqh-gpxdvSgbROxL0GEsQwtAR9zXSV6LP9Dqb_vtUaKNkGJDeI3MqWA8HKMgUxSm52Flo1OuveL65N_MHkKm8c35vLnmfgLmA4fG_6woUVIlYdFKXGrQR_nkXBKg0L4aclwFvu1gQgtKMijhLfrfdaTFK0IMIk9vC1qtTXYZ6YJ_npbCkex9h4TohPvhTeu3svKTHIFFmc_WpGG9PxapJWsKNDVgEphuceUyYJJtoPKoBnnUeTLOgemxKHeX-FyxheHIFScW-SY52ig58FPm-yh4mJ4aQ1HCFOo-PHKRCrJnM_Dw1IrePBibYzQ37QMKDDvsw9ktnm383lZw2CTUW8M9G-JnYi7levWeGSVhlzvwI8Pkf8auuqxHMkuyUrKq7SZRBIeTGrUxY6PUdJbxtdmRM67HHtI-Vycdfpocs9zg0oqlj0wGYVboMQrmXpekxkyOB0RrnBRQwgiMMYNFrT1FuRDIzaejg1_REVFdvDQbGQ9EygwSn76k_tKuvDnCmfGVWY7i5geMk59skx863hDfvphRDXmR13Sx6ggQpiCiN425jfun9hhesXypudODOqULQIXausLrTTc_E7ky10MbTPFtTEVj9XKOAgxc6NYzs_H_USyzovFng','cf37d2810d3294ff24cc2c61f3fc03cb962a2d6637b4dd0037d4e5a622aa710c','4bbb84cbf876c4f210f924f8f9cb99102cfae7029e12838c7c164c131146b102',604800,'read','Bearer','',1,1706282578),
('admin','e4b6b8ff-39db-4bd6-8034-f326697fbe44','2024-01-26T15:29:02Z','golmon_app','golmon','AdminGod','431e94d904036256e1f7','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJBZG1pbkdvZCIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNTo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMzowODowN1oiLCJpZCI6ImY1MmEwMjJjLWRjZjMtNDk5OC1iZTRlLTBlY2M4OTk5YzA1ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6ImFkbWluZ29kIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoieTFlNHF5QGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMDEzMDY0MTY1MTYiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fYWRtaW5nb2QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTc6MDgrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InBlcm1pc3Npb25fYWRtaW5nb2QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOlsiKiJdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIkFkbWluIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoiYWNjZXNzLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmNTJhMDIyYy1kY2YzLTQ5OTgtYmU0ZS0wZWNjODk5OWMwNWUiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3NzQyLCJuYmYiOjE3MDYyODI5NDIsImlhdCI6MTcwNjI4Mjk0MiwianRpIjoiYWRtaW4vZTRiNmI4ZmYtMzlkYi00YmQ2LTgwMzQtZjMyNjY5N2ZiZTQ0In0.BobQFe1dVLTX6iEbm8EFXeHlx4bEEuUIf5u9FcWn5mFbezcNi3XMY90sc9uvzUtm0XtVHivdpoN685UMYwSS5lJqQyXBMTtdwnSLe5YfnHDarBt49cPYRO3D_qnhp1EEq4koKvWmrYuneIhZc3_luE69sYRjCD_TLUd8H6uX6cpfXXbm4QYBDdOprp3sKOvRQm9-kdZ5fu6LvPqt9LR6FwpjeJe22eexzUsc5M4EOwn3VAjhuxjadU6riJ5gHCdnPhZEvOJlvnOzedN-bSC7mD-pqJFtms3vRSuKKIRt2QSRCYF56TJcIKblyUEo4CBmQWji3HHdfYoFhrQAmkB4jHdvlK90FvBrfcEyFGzhJFKFKCGcERX9ZzGN8GuYdF8C62ZMVctIUmZF2qhJYbIgZqpg3mn4eSO0pP_dau3kz77UKUebF5PYC_PFHl4UDVwiDbgD3zFkwVaD7ktKUdp4VtzBEw1KFNxZtUFOIp3AQgLTskTJgYsOOnGqpddPuIBirR72qK_4RQVW-1K4XI9YvehBqcePeSNNyBbiXZi3jYTZrDh3V2Q7Gu5JNxOKx4LW7aHPWYea6un34KsElnLm1DyNWTLA4R4Jk9sUO8SfzQRILHTdvd_D0-U5AqkZKPGxvua1Q8kezP2JezqQAs24idNE84J9l0gHsczPUS3OoIE','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJBZG1pbkdvZCIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNTo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMzowODowN1oiLCJpZCI6ImY1MmEwMjJjLWRjZjMtNDk5OC1iZTRlLTBlY2M4OTk5YzA1ZSIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6ImFkbWluZ29kIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoieTFlNHF5QGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMDEzMDY0MTY1MTYiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjIsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fYWRtaW5nb2QiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTc6MDgrMDE6MDAiLCJkaXNwbGF5TmFtZSI6InBlcm1pc3Npb25fYWRtaW5nb2QiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOlsiKiJdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJDdXN0b20iLCJyZXNvdXJjZXMiOlsiZ29sbW9uX2FwcCJdLCJhY3Rpb25zIjpbIkFkbWluIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn1dLCJncm91cHMiOltdLCJsYXN0U2lnbmluV3JvbmdUaW1lIjoiIiwic2lnbmluV3JvbmdUaW1lcyI6MCwidG9rZW5UeXBlIjoicmVmcmVzaC10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiZjUyYTAyMmMtZGNmMy00OTk4LWJlNGUtMGVjYzg5OTljMDVlIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4Nzc0MiwibmJmIjoxNzA2MjgyOTQyLCJpYXQiOjE3MDYyODI5NDIsImp0aSI6ImFkbWluL2U0YjZiOGZmLTM5ZGItNGJkNi04MDM0LWYzMjY2OTdmYmU0NCJ9.SeGIj4M8hZp6J1jTeMpYkRdLtn_hXSTwRmrELSDZ6uI83Z6usZi6-ww2UhKEEZd04kYB7H0rSlFfBVibufdiQARE-I5OoN_T0qtNkdrz4nNflUrLH7u_yolSxyoy76bjm1LZMRt7J4WuI8OiPvndIVD5T_7ODZiVGizT4fCXUZGzQE6DeXsvIHXz3pnTcjxsZY5CeTnSMzoeFLdYONsNdlBmh_Jv6LFP5UThYsIKhesSK6tGrYZaTq2tcG7M4eVGOinJ5MBhYMtdNulgPq7grYPEc7iOjhRNFGhZRStV19J1mcx5l_vNwAXd82Y5Rx5r8138Phwig1IdsbnIpFC4nLG2Ep9uBte6M7JoSGeVhuhBJnVJmNmuDNRgyZT_ObmHiMs8ZXmAgmEiTlCPQZ12XMdz0cweeiUpJOProAVNVAVE3iJxT3LokAUgDhsiDgRErNBT-XX_ORe4JkQd3r0Q5qEsXjjDCSlwfo-5MpLBF9W6tnUCOgG0311mpKV_asr9baAhSMZtGJ4b83GraOWs0WcWkD2M2s69Pej_cIYHbqoaoe4TUwi-MHaD6L-U0YHaJy8aKkrIt-tu5B1qUdrz121U7thBzD6suDnwFEHC8VDLql3Xqc3QC6C8BmwOk5KFwbCb5NAj-XprSqUMY5gUM9tygJX39BGVRt2xVQVLNA8','2100d97449b9e7c1f9542ff7f69760dd01ee1eac566cd9ccc68180eacc927ecc','b0c511acc420777825d80345f99aae7ebf8735939e3290009cce03def02ac716',604800,'read','Bearer','',1,1706283242),
('admin','eaaf7a3d-ca76-4ab4-a788-5d47fe2d8a5f','2024-01-26T15:15:16Z','golmon_app','golmon','admin','d037241a14640a635717','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNDowMloiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJnb2xtb24iLCJuYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMToxNzo1NiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiUmVhZCIsIldyaXRlIiwiQWRtaW4iXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODY5MTYsIm5iZiI6MTcwNjI4MjExNiwiaWF0IjoxNzA2MjgyMTE2LCJqdGkiOiJhZG1pbi9lYWFmN2EzZC1jYTc2LTRhYjQtYTc4OC01ZDQ3ZmUyZDhhNWYifQ.OoIWDeYCWn3PytBFMS8ozsJCnJYCcZYxfKBDJ-U70-lm7yx0XNJsOuryA-raEI6hDX6Rb68RPqgt7P0ZKBsAXNdYIqJFh2wib8ulKnzq172LKgHvJ3Ue7KXSgL14-JCzYnHglEzyFwvnmjyqI5tMpi1TVxipbSWw4Qfy-m4r333Ps_FaoPI-peFLTKEZhnnw__S7kXlls97u1OaRvO0c6BxsJIu0oC8sfFDQmSuk13MidBVLhukA3XwWJi21BgcEVWsrbBxdGPGnmvIAA7oRCwKaasj3fBnH6aWFinaRSgv4OXB6RKSMT8c7yNqDHWcfwU6Fr3OByjn_J5S_4teY5935SIGkd33sq6r6WvdBtA0n68uBNrcpa5HGARFPllZdwQ4kv2BnUzGKATacup_tdENIMAPWZ8w2kkYBPQiFGq-FhJqLNotrWIKO3R8bUVXU6US5ESNPj_IlyhZFXd5QziSgb5kjKBCXmkZCVDYVKF42-1NyIPgxiihP3sIIPOK1r7uQNSrUuPDCtf7ztVeDNJw1kPWA6rYg3Ubf1hLrBZgJ20BhDz-NUMYCh-gZvz42yf71DKLDh_fh0nycBLOW89q6oBQubRP5Ke3-N0gM3N-T94pM8u2HIoHAJdFrGkY0IWL5e3jSPrjJywWb6dxqVClp9BIQZw3L0ZC0TBdiDcA','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNDowMloiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJnb2xtb24iLCJuYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMToxNzo1NiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiUmVhZCIsIldyaXRlIiwiQWRtaW4iXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmODFlNDgwYS1lZDBlLTQ5ZTktOWRhNi1hNjUxMGE0OTJmZTIiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg2OTE2LCJuYmYiOjE3MDYyODIxMTYsImlhdCI6MTcwNjI4MjExNiwianRpIjoiYWRtaW4vZWFhZjdhM2QtY2E3Ni00YWI0LWE3ODgtNWQ0N2ZlMmQ4YTVmIn0.mRGKhlvj4ZmnPFRqUyydR-lvvniTRBl0FKIfbrgkZAeVqo5HNH_PehRVWDs8GmhrKBbKqp3haxY566J2mzMSbyc3SV0pwoOp2oVGHXrcjWwez4zOk88oz7yzVGn9hgIULhjcb4TelbkdiN5l5GJ3_XLqHyzhItzdLukVJHLbyypCl8BKMS9a4CFyA-WavH62JLBb2ekLmrwuY_QJ8Hwy5ScbXrBzuFV7UST3odLylqelaZE16FIgbuc1KKrJgRnP5tWazeq5bRXxvSnN8P1MLs39c7YESZtll7RaAVIqKhD4Y3BU9QZoga_cAq9wwuCLYwkPfh7M7fvvdly_8OFtk-xVR2EemN0sj91tEDSqtyv4BhHzCVej6R264sppDo3DDl8CvKlhM4ji6Orxq85wNHwzWw0Ik8q-XH7AzIiyfAUh8ahwxExT2LpVTdLg9aWEFwzZsePzGAB4Ygpof4Pe9Lb_lDCxSTeH-kDUAaS6haUIhGhCxK4ow8YQEfF1_k5GDf1357l5OVjlQ2gGnTk8gmUS3SQvAu5Xc4hUhYxQilZGTWvruN6Ukdp53zhkKFxAUC5_Okilvu486khcrkL7vi2hDtiwBznWdrcZsdxX5LD9MU0Cfp1Qmzuod5ODe57gdU1g61ctiq9ZlNiqZJpXiYIE6auCOotrqVcFj0HWTUM','1f9f01c964ac0fde5898d2194b040b90d835ad6d5fce2f7123a8e57aae060663','28ddae6597b5c4e6e0b1c0367db05f94564f5721df0830bb28499ff6d1c92581',604800,'read','Bearer','',1,1706282416),
('admin','eca303be-c3b7-4824-bb83-cc0ef8ec3039','2024-01-26T15:27:50Z','golmon_app','golmon','writer','965a4d7205e87038aa0e','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODc2NzAsIm5iZiI6MTcwNjI4Mjg3MCwiaWF0IjoxNzA2MjgyODcwLCJqdGkiOiJhZG1pbi9lY2EzMDNiZS1jM2I3LTQ4MjQtYmI4My1jYzBlZjhlYzMwMzkifQ.FM3i_OlOVQnqPbSymoqp_6EDxYnHdup3sRm1fL05W8ri-PzFOL6Jsv80uprpT7YvcKywFqGSY6QIgkPzjOfydiZc4zFS_6U7kfvi-DzyAZtqNDRsHmK7-YbEKZkRhHSM2GmVSqT19ft2sbenasUQyppE_napfwOKEzQUoh3Gm7GdhfWzyEN6iY1itM15AKXh9G1pY_cXYfO5dj-0e6w3rrms5mpNFkYqas60YraucwT_jU0nL-g-qNXaCyunRsfJ5t2Uai1Eiw9IYGd6tVGI1SCvSmrEZGvy4ZcMbA48akatGKXOlO7SBszPbrc4lI5Y7tNtPw7kCK8iAGqjIl6X0LFq07DGSHM-GAmEYlRMbGPbFsf4JI40fxeM97v_C8aigzqCU0E8L_t6IfVJkJfoRM6Xko94NBjqQt1C7H-mTwBfv_16tyFt7fASpy7ksSnq-dyAA8jKRYOQy-EpQumC5Oza53FTKVh6bWoPk_5ooXsBO0TZ-_Jv6kc_qdt7dTRjWC07DmXtepSw4i0qutzw_vztJ3jjAPgXpYPDKOec46RdG9u1jiPs0j8_swtRF686nuVrBtYVlBvvCV8Psnm8K2SI6WmtwqIX3QpcTq2N5nWmQpw-zwATDQtZ8cu7QgHtt3FbwGrEtTtaEa1I17B_44bSMr6saQkruAvlyXAI2QE','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3NjcwLCJuYmYiOjE3MDYyODI4NzAsImlhdCI6MTcwNjI4Mjg3MCwianRpIjoiYWRtaW4vZWNhMzAzYmUtYzNiNy00ODI0LWJiODMtY2MwZWY4ZWMzMDM5In0.LjR2XKTtoXuDyRmCm-IvID2qOL40KrCYtH78wVL4-3O_vXPnGOE1I07or6xOcLWQcJKb5-mGboqWMaAHWu9iQFFIkpV3lHZ_EoCZ9KOVtiopN4ejHvPLAlmJ06tgNDChZtxvuPpRU7v5MlsRlC-6e7MePBJZKB5ztw4u-dGSlYrdaFRb-VB-zd5TTTY-x7Xc8kzaqAiRkUjENO3yAtWW7lw7WkQhOaGNi11pHChYPIitJErWsT6WZmIIZ5BJJjZVhAn5Kg-U-xZdAL4VsIOvxG-hzUWtXZnwmTD0u7__wi_VZwzzu_-nIRlNhy29nOWJ01mAKyGW5OeVz7MNKczvD6hvF1wd7gsXl0bh3FXHA56a9VbFkzmxbtZQmsdsJ5wUdjuLTueizqgP8oa8voncCGF1zBm9B5-jI8nQHSJGHgbq9wUwnhTiFNOy-jv816JSUv3lowJJTNlKSbl-c30o72w3gg8P9ZnZyi7TLW6khK1MBlu1NRqy4O_w20Ij5Au_1XQJDU-UHlj5XYB7wN4xc8i_4-ljcl6N3g9bFDyJM4wyrXmNQj9EiJRUUvZHcF7CIQE1N1udHWYD0a4cs3LZRgsX-QiCuR2UZ8Xo-kZMAIUByAJvPzAZqXRU2krSXTIyBWDJcUTLVdKhOImpeaGwzAYqD6aZ4j9rDXD2XdPY_2o','b095c199fb8108175b9ef0793eef72b62466aa46863f2ec85738da6431dd29da','e65d9a72d7662ece8d7d1a281886353753d9fb02488e5799e174650ea036775a',604800,'read','Bearer','',1,1706283170),
('admin','eedc13b4-0dba-4ad7-bff3-ff30787bf6a0','2024-01-26T14:38:19Z','golmon_app','built-in','admin','2fe75e54479b6457c2f2','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMjo1MzoxMloiLCJpZCI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiIxMjM0NTY3ODkxMCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MSwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiYXBwLWJ1aWx0LWluIiwiaGFzaCI6IiIsInByZUhhc2giOiIiLCJhY2Nlc3NLZXkiOiIiLCJhY2Nlc3NTZWNyZXQiOiIiLCJnaXRodWIiOiIiLCJnb29nbGUiOiIiLCJxcSI6IiIsIndlY2hhdCI6IiIsImZhY2Vib29rIjoiIiwiZGluZ3RhbGsiOiIiLCJ3ZWlibyI6IiIsImdpdGVlIjoiIiwibGlua2VkaW4iOiIiLCJ3ZWNvbSI6IiIsImxhcmsiOiIiLCJnaXRsYWIiOiIiLCJjcmVhdGVkSXAiOiIxMjcuMC4wLjEiLCJsYXN0U2lnbmluVGltZSI6IiIsImxhc3RTaWduaW5JcCI6IiIsInByZWZlcnJlZE1mYVR5cGUiOiIiLCJyZWNvdmVyeUNvZGVzIjpudWxsLCJ0b3RwU2VjcmV0IjoiIiwibWZhUGhvbmVFbmFibGVkIjpmYWxzZSwibWZhRW1haWxFbmFibGVkIjpmYWxzZSwibGRhcCI6IiIsInByb3BlcnRpZXMiOnt9LCJyb2xlcyI6W10sInBlcm1pc3Npb25zIjpbXSwiZ3JvdXBzIjpbXSwibGFzdFNpZ25pbldyb25nVGltZSI6IiIsInNpZ25pbldyb25nVGltZXMiOjAsInRva2VuVHlwZSI6ImFjY2Vzcy10b2tlbiIsInRhZyI6InN0YWZmIiwic2NvcGUiOiJyZWFkIiwiaXNzIjoiaHR0cDovL2xvY2FsaG9zdDo4MDAwIiwic3ViIjoiZjdiNDk2NGQtOGJlNy00NWQzLTk4ODUtNjFlMWY0Y2YyNzNiIiwiYXVkIjpbIjlmZmQzNzEwZGQzMDVmMGM1ZmZiIl0sImV4cCI6MTcwNjg4NDY5OSwibmJmIjoxNzA2Mjc5ODk5LCJpYXQiOjE3MDYyNzk4OTksImp0aSI6ImFkbWluL2VlZGMxM2I0LTBkYmEtNGFkNy1iZmYzLWZmMzA3ODdiZjZhMCJ9.J4oZak6o_4HjJIEMEbRNljYzu3o1ofyebYjimxHdI6nbDbqL0dT7GBJceEgwRrYO_H-lXPMAPNiQ08vvah6Lk4l_imWHFYE1wFgLfBCbuScXKFdXHdyW3sXke0Uc39hliE4W3q0hFmdQfRJYFGX2JE5xsuZni3Moj9A1UnyP63XlQumg9FHHYlPgHTKrhjYhuCWIJABqqFcQC0Q4eQyq7a7Oq0JVcLY1vO7W_1h1xH6jL0hV1AVS6LMGlmF-FbG2cfJbIJp9KBOq2OapLQXwiE_3eZuREglDriMuNSB12WKbmHnVfurak0Tqct3Wr_Hso80qvthdAH1s4_5wNFM6ODbJ1bZwRP781DL_YrepVhVA-iBV98Y0buARR_X7ESn-dEfWGQfNkVcfP1FiInLeK8uY4q5O7GebqiU4s7ICAUJr25IDnrNWTpisTcxdrhsbXk_UTH9LtYPBlOGsCQnrUd9awV7C5WujCMSVKV7gNyShoUdndkzTVaOdxUkN8SKeD8sEkYOQ_TyDuANXPKWFO0akXUH4YzTUPy3OtxrMKPQrWUsrb22pnkY2w_4Ywcy_6qNEGDqXa_wgUEsWs1qVHbGQsJzLoGZ03FysQVSevqPqZYPEg2kVyaVBrg1tSpzP7588Fmmgug7H9RyvSm275eYfjDJ2peMir3cKRktYH90','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMjo1MzoxMloiLCJpZCI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoicGxhaW4iLCJkaXNwbGF5TmFtZSI6IkFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiIxMjM0NTY3ODkxMCIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MSwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiYXBwLWJ1aWx0LWluIiwiaGFzaCI6IiIsInByZUhhc2giOiIiLCJhY2Nlc3NLZXkiOiIiLCJhY2Nlc3NTZWNyZXQiOiIiLCJnaXRodWIiOiIiLCJnb29nbGUiOiIiLCJxcSI6IiIsIndlY2hhdCI6IiIsImZhY2Vib29rIjoiIiwiZGluZ3RhbGsiOiIiLCJ3ZWlibyI6IiIsImdpdGVlIjoiIiwibGlua2VkaW4iOiIiLCJ3ZWNvbSI6IiIsImxhcmsiOiIiLCJnaXRsYWIiOiIiLCJjcmVhdGVkSXAiOiIxMjcuMC4wLjEiLCJsYXN0U2lnbmluVGltZSI6IiIsImxhc3RTaWduaW5JcCI6IiIsInByZWZlcnJlZE1mYVR5cGUiOiIiLCJyZWNvdmVyeUNvZGVzIjpudWxsLCJ0b3RwU2VjcmV0IjoiIiwibWZhUGhvbmVFbmFibGVkIjpmYWxzZSwibWZhRW1haWxFbmFibGVkIjpmYWxzZSwibGRhcCI6IiIsInByb3BlcnRpZXMiOnt9LCJyb2xlcyI6W10sInBlcm1pc3Npb25zIjpbXSwiZ3JvdXBzIjpbXSwibGFzdFNpZ25pbldyb25nVGltZSI6IiIsInNpZ25pbldyb25nVGltZXMiOjAsInRva2VuVHlwZSI6InJlZnJlc2gtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODQ2OTksIm5iZiI6MTcwNjI3OTg5OSwiaWF0IjoxNzA2Mjc5ODk5LCJqdGkiOiJhZG1pbi9lZWRjMTNiNC0wZGJhLTRhZDctYmZmMy1mZjMwNzg3YmY2YTAifQ.th5L487fHWPWbEuppbt97teJHLkCJ2HyOVIfLZ2RbkbAzRaNuTHlnYKvI-AoeKLmZ0DP8RU3lG0fQJTNQPsg_580ZoJl3Al9z9I0asWjrraREaPJAlFgl0Av75rQ8xBQyf4l1F2moFeqaRZgjvi00WSeq9eFOxeRv1imD2z7KpNgAr6XR74g0p1yR2B4bZVU3Fw0bCTrnh9pYI39pRsIwGL6X-N6UFewgf1Flu-g37JXLUTvHO1lv1g-Aq7iw0E3Rc5Gw6kQEYFXgL6WHhJXWQZu7Jvnj0-9nyQm6UH7FptJofmbsGQG0pPDgKoaZdAOIIf8uNFzky1oxn8x88LNgOwLBZRzvH7yuIk2FFKo458lxrbNaxFZj1-b_25qsFkRHUEsTzyQdNTZoK3E93MasNFEF-N5wis1sGxW34WzUvAySQ-wL245bYs0p3QjxXy3460kIFZC3qiBKZpUZv3JUOqtMMXuHgSuSLWhYcBA7ZmlBkiyhhSvfF2ekryZuPzOYVDvZMN5yVjfYVKirewjlsQOA58MhMD-XPiFULMILggwjo0B55c1bFM5sD1LXndRX33MgK1Hfn_y0yGSj8scl3TgFEHcOOIlSN-OlmhwuPsyXCZYW4sjbK3MarpKfMV446C4QFpksw1YPwIEXwzxPeRJfjlro4EyBm2eqOaycmQ','838097a7c22a43f30e4abb7de37359b089f7cde2cf357c726b1bfe4416d41f14','c8126a18c025c494e1d7a6828629bdcdcc5a26653c1425bce36ce31255eb3d9c',604800,'read','Bearer','',1,1706280199),
('admin','fe7f1199-c3bd-4611-97b2-675e717b9383','2024-01-26T15:21:06Z','golmon_app','golmon','writer','279e807d01df4344b5d0','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6IjE4OTBmMzZjLTdkYjktNDZiZi05MTUyLTQ1YmY5ODRkYmRmMCIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODcyNjYsIm5iZiI6MTcwNjI4MjQ2NiwiaWF0IjoxNzA2MjgyNDY2LCJqdGkiOiJhZG1pbi9mZTdmMTE5OS1jM2JkLTQ2MTEtOTdiMi02NzVlNzE3YjkzODMifQ.RNsvpukoNd1ABtkFXx98wjVXnEIlQ3Kq-_mLg2JLp_Bis6MdkOFNU_icP1rvSyqiMO8lP_SRh9jpgiGvmYZvij1zvemEBTQtmjzZBMuRp_FbZ-ssZSlFXT4547GJqWqUFu-GVlwDqYBAK_HqL2Wtzmw5EXimhyM7zR4auFfD6STxIwEoOQ58O_58QOSLpt9CTPafoTS3WtDuj81kkjSiGcUmhLBcMCQwLslOjV83Ysdb8Jt5Ztr9tQYiftDExRxnZzTHkDh-KJcl_YQnqWXHcO109nDORyUCbKYNupHDY4tft1BwwzmRXVaN5T4BdZ6c7DqN9wv2ziGhrvs6JhjYV2_SlT5uUPPGjvMvV53RsmNbQ7VeEFnn7RBYAoWJcCrtd45Wnl_Iy95rxbUxJ73BCPaY3yuXIrp-4OJeqBiSNwwSg-8dj6fnWICz8TFlI1tGvn3jrKF844GGtdDPw1e4vJPVN3vvex5GySa9rsPlJf-LdmioZQnPGfRRaMXI2FN6_3Q_5GxcG85j-mmmlaQ8EcWe2bpqx2KXves6kS6baL99pDRe-P_T9Vkvs_DO1yMjHgIkNak-Ipa7VPHoWqkLATacF4YmUDXwxLuy5ESna8JxIeKafYyIYYE5rOnp4rzV_le697Xb9itXbACmIuvo6otuL_T10wvbikFEDs47osE','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJ3cml0ZXIiLCJjcmVhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTM6NTk6MjMrMDE6MDAiLCJ1cGRhdGVkVGltZSI6IjIwMjQtMDEtMjZUMTQ6MTY6MjlaIiwiaWQiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6Im1kNS1zYWx0IiwiZGlzcGxheU5hbWUiOiJ3cml0ZXIiLCJmaXJzdE5hbWUiOiIiLCJsYXN0TmFtZSI6IiIsImF2YXRhciI6Imh0dHBzOi8vY2RuLmNhc2Jpbi5vcmcvaW1nL2Nhc2Jpbi5zdmciLCJhdmF0YXJUeXBlIjoiIiwicGVybWFuZW50QXZhdGFyIjoiIiwiZW1haWwiOiJ3cml0ZXJAZXhhbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI1NTkwNzEyMjQzNSIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MiwiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjpmYWxzZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImdvbG1vbl9hcHAiLCJoYXNoIjoiIiwicHJlSGFzaCI6IiIsImFjY2Vzc0tleSI6IiIsImFjY2Vzc1NlY3JldCI6IiIsImdpdGh1YiI6IiIsImdvb2dsZSI6IiIsInFxIjoiIiwid2VjaGF0IjoiIiwiZmFjZWJvb2siOiIiLCJkaW5ndGFsayI6IiIsIndlaWJvIjoiIiwiZ2l0ZWUiOiIiLCJsaW5rZWRpbiI6IiIsIndlY29tIjoiIiwibGFyayI6IiIsImdpdGxhYiI6IiIsImNyZWF0ZWRJcCI6IiIsImxhc3RTaWduaW5UaW1lIjoiIiwibGFzdFNpZ25pbklwIjoiIiwicHJlZmVycmVkTWZhVHlwZSI6IiIsInJlY292ZXJ5Q29kZXMiOm51bGwsInRvdHBTZWNyZXQiOiIiLCJtZmFQaG9uZUVuYWJsZWQiOmZhbHNlLCJtZmFFbWFpbEVuYWJsZWQiOmZhbHNlLCJsZGFwIjoiIiwicHJvcGVydGllcyI6e30sInJvbGVzIjpbXSwicGVybWlzc2lvbnMiOlt7Im93bmVyIjoiZ29sbW9uIiwibmFtZSI6InBlcm1pc3Npb25fZWNyaXJlIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJwZXJtaXNzaW9uX2VjcmlyZSIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiV3JpdGUiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiIxODkwZjM2Yy03ZGI5LTQ2YmYtOTE1Mi00NWJmOTg0ZGJkZjAiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3MjY2LCJuYmYiOjE3MDYyODI0NjYsImlhdCI6MTcwNjI4MjQ2NiwianRpIjoiYWRtaW4vZmU3ZjExOTktYzNiZC00NjExLTk3YjItNjc1ZTcxN2I5MzgzIn0.LGI9y70pxh6uTOlXn6yxPl7MfzYeBOwDQ6vozhYrYs4ckmmq2WAJQ5pcZp1FUtDoppv-uznAtlYHfd3Fw3WMCeTTZarCc516dyjTC78JpXSx_Pj1T5i-lv1tlEltEz2gtL9tghiaW1UBoOyGzEk1SW1SMtNkf5BUbHAf4nzBos87AIVY9WORlvG8l38WkzQspBbaT7BICO9AXmFNY_i1CbB35Ta-2P5c1dYS8k3pFj0dxqFNj6HV_fizPZzgUqS98ani1BD05tAXOuTL2QrnCNwe2KhmvLYcbywJZk3qSyf42nikpgdPCI-Uoz0TKYYeDrGHRGnQuKqUUkGvUbuhIV4ErfZciFssdHiAHZPZiGSFdRh7vjRSllnVzam8fiVNKPHzuFkM7R0FIQAX0pOQpYbmM6ZqRzTb0p5HFec9AXbzaFMJ8ikVaOaugUwdS5w51vjFId-xFrkbHSwaVD0-E5zmWHDrwkYKcjVeBsxRAs45qWR1V4XF3GGviMQC1Xi1oows5ecJyT3PuPjv2-DpGgwbS_QJRTt83qZp_Y6vHyNdj2VrIALVtKBorwGda-2kav01HPOKbQmwTbXkUVIMpls2TAg1BNzQyOWvrhXu466SxcMwKf9_sTeiVnUsB6pCNN47Q-tcFP795lPzp9Vz3hEIInlYOYy2GSHZa-ntMn0','01eabe0c8e36e04fa8ae26e8f91962e9686dce5260a741bbe62598d683e0d92d','f9e7f4bc7a0df42038e27c66f7dbee6e2bd3ca15db49c43d9fef388b2608cb2c',604800,'read','Bearer','',1,1706282766),
('admin','ffb72b0a-3b43-4eb5-bbd3-a6ac09379c0d','2024-01-26T15:27:12Z','golmon_app','golmon','admin','cd43da7803c5d0f78357','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNDowMloiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJnb2xtb24iLCJuYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMToxNzo1NiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiUmVhZCIsIldyaXRlIiwiQWRtaW4iXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4ODc2MzIsIm5iZiI6MTcwNjI4MjgzMiwiaWF0IjoxNzA2MjgyODMyLCJqdGkiOiJhZG1pbi9mZmI3MmIwYS0zYjQzLTRlYjUtYmJkMy1hNmFjMDkzNzljMGQifQ.iQiy64A5HJ1G0NATGl-R7HZvs5SXm7Miv2M8p0NxOc9r5uwNyrxSTZhNfQL5gjDLX5zV3WhWXfLHf1qDE2Ph5DLqT1GiYNzZ7M1Gx4EjNJ5Zv-xdc4vqNy2rSGDww6oUo5_4BHgLj-q0dqQkdmMOZPZ8tVyOJmAM1sTEabBs9xbiXZdCgHQa7hRtSQDvp8jtQFDSJCTTyslAEW1i6foCw3qzwVCFTdduNResrlrPuC4b3IFIUzimv42Bjbn9jdhipwfFZ1sSypdhQ1xYyrrAd6Pw_EynixrQulsbP2DzW7r_4MNcopmxrcJhyHYubRMKpRzlvWlyNKy3aW5kbNR0hvIEYNh_jCERCtYGc87i2w65CleKv581QtVQqeTKcN1KkhDjlpTf513EKegDz-QlD9IXgE0aTEN9_v7F3RA3kOZ12AAYNmR_Krc69czlV7a6-e38UqHW-DtKhc1GcqIsaPL1Z5gD09t8wjXMrVyV3IoA38eU5NBtXRW1Jg_J9-IYwACsN3X5eAcHpnyLyk3_H8VgV3bFqmLm-K_PN4v1ZwmkV6GdEDK3z1gJL5DO3Yhnv9CLa3LTOoUiGqIEM2c1zb7EHPLgXT9tSK_CD3JZCu7mVxBnpg2dOeT-f_GgAGtKWSJypCfWvXiVU8TXMsHfRASnRfp8XpD1wxVzv_A318g','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxNDowNDowMloiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJnb2xtb24iLCJuYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMToxNzo1NiswMTowMCIsImRpc3BsYXlOYW1lIjoicGVybWlzc2lvbl9hZG1pbiIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6WyIqIl0sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkN1c3RvbSIsInJlc291cmNlcyI6WyJnb2xtb25fYXBwIl0sImFjdGlvbnMiOlsiUmVhZCIsIldyaXRlIiwiQWRtaW4iXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmODFlNDgwYS1lZDBlLTQ5ZTktOWRhNi1hNjUxMGE0OTJmZTIiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODg3NjMyLCJuYmYiOjE3MDYyODI4MzIsImlhdCI6MTcwNjI4MjgzMiwianRpIjoiYWRtaW4vZmZiNzJiMGEtM2I0My00ZWI1LWJiZDMtYTZhYzA5Mzc5YzBkIn0.UOODXA9ltdcK-Xf3G0Jcnd35oYrYRgLN4US8ajTG6Xxh58wdRuo7YT63vq2_WsK8Uz5NpyXYYaQhFEbS-9i0MEWoNljQLYK2Zg8VMgEhMN4o-dVjvKmMpaJBeAEV4_F2xuvUch1EeLf4Sr3ZyZ4RNdqjCF-2557U6pqUuMAKZyRmTwcVYf8-ucuqwPk0-ZYJqVjz-Iy8v55eUUlwW5OARcCx19JuRT0anh2NW6QkEpHqiRI44Wp8uYOd1qw1gTYPn9v-d7WtbDHEIBouGbJnxMTmmAi1R72z3fLAqYmwkCUNZbzxHFz3PXzJ94WkWhnf4lKplDTvEmnTx_1MdP_aeZCeXiMNbYIO-pcSC7mVkQkOm59DdmX1qTMIOFNG1Nqp5qdWc_ABHJ-SdDv6VY5VpkDaaw8cDanIcfwdK4T9l98gItLfbgPOspdfKsI17o_pdwMhEq6P-SMREXQwh1QpC1aY6FLzADIsMrgm0fgEOmwhYPignTU4ujrNWAerykXeDGJySbMv5pSyZArYvJakT2ZJ5HgrMiUUh-XmGKywlzU7tl31ZRtnziN3rz5UYBe0LS_ZGogwAHuoZYlotkBRl-s8FUVw7ERo11Bx40qke8hMddjW7obOHbOpeFTV3u88N-hBGX3y26Q-07ioBp2-oeaptfgQ96rx_h2jztzraZc','816ecc33eb0d794a2fec55d498232ec83de9341a93d57e4f3dae074ccd2512c8','f901314cff115a7d313141118f5599daa0c880e75c89c8e4d1f27e979c8d5867',604800,'read','Bearer','',1,1706283132);
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
('built-in','admin','2024-01-22T14:02:33Z','2024-01-26T12:53:12Z','f7b4964d-8be7-45d3-9885-61e1f4cf273b','','normal-user','123','','plain','Admin','','','https://cdn.casbin.org/img/casbin.svg','','','admin@example.com',0,'12345678910','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,1,0,0,1,0,0,'app-built-in','','','','','127.0.0.1','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','null','',0,'null'),
('golmon','admin','2024-01-26T11:07:52+01:00','2024-01-26T14:04:02Z','f81e480a-ed0e-49e9-9da6-a6510a492fe2','','normal-user','cf53aaa72eb6b9661473e9c1d8e2bb15','','md5-salt','admin','','','https://cdn.casbin.org/img/casbin.svg','','','admin@exemple.com',0,'76731355063','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,3,0,0,1,0,0,'golmon_app','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','[]','',0,'null'),
('golmon','AdminGod','2024-01-26T14:05:52+01:00','2024-01-26T13:08:07Z','f52a022c-dcf3-4998-be4e-0ecc8999c05e','','normal-user','AdminGodGolmon5','','plain','admingod','','','https://cdn.casbin.org/img/casbin.svg','','','y1e4qy@example.com',0,'01306416516','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,2,0,0,1,0,0,'golmon_app','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','[]','',0,'[{\"application\":\"\",\"username\":\"\",\"password\":\"\",\"signinUrl\":\"\"}]'),
('golmon','reader','2024-01-26T13:54:13+01:00','2024-01-26T13:05:25Z','845ac194-2e76-4503-895c-87b183ce4ccd','','normal-user','6699bdeecd3263952134f43aa398da22','','md5-salt','reader','','','https://cdn.casbin.org/img/casbin.svg','','','reader@example.com',0,'95962596478','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,2,0,0,0,0,0,'golmon_app','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','[]','',0,'null'),
('golmon','writer','2024-01-26T13:59:23+01:00','2024-01-26T14:16:29Z','1890f36c-7db9-46bf-9152-45bf984dbdf0','','normal-user','18219ef9abfdd902070bbe61ebb25965','','md5-salt','writer','','','https://cdn.casbin.org/img/casbin.svg','','','writer@example.com',0,'55907122435','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,2,0,0,0,0,0,'golmon_app','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','[]','',0,'null');
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

-- Dump completed on 2024-01-26 15:42:29
