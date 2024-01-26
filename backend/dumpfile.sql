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
('admin','cert-built-in','2024-01-22T14:02:33Z','Built-in Cert','JWT','x509','RS256',4096,20,'-----BEGIN CERTIFICATE-----\nMIIE3TCCAsWgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCgxDjAMBgNVBAoTBWFk\nbWluMRYwFAYDVQQDEw1jZXJ0LWJ1aWx0LWluMB4XDTI0MDEyMjE0MDIzNloXDTQ0\nMDEyMjE0MDIzNlowKDEOMAwGA1UEChMFYWRtaW4xFjAUBgNVBAMTDWNlcnQtYnVp\nbHQtaW4wggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC56mXBc2a0YyH0\nrWDisBF5lIsfjZwOjrr08lXtzn0SYOd1la9ngerhE155NGlRxC3PfCvVUR89qTDJ\nWblYuuMEtc1YUJ4YeaoaIfoqG5OkMiialej3/83dOXb2uiJ/Q7wAdR3o/PXOx6Lo\nKTYDNZaEaH1yIU83cz2XMl0gRpZlm4s7/R9xkVldAVZmH8gLppP881DB4oGkFNPF\nw3J0u2LjoiMgDgZczl68fDB/Oq9KFb5bH7b7kjCSeV+42+vL6MrPdAHqe2iIoeHB\n9AFU82W0E/oaN37GQIRG763knUe8sTl99N3IHqKKDnTCUYg+TmwhJRSNZ2ViE7YG\nIRRLdjoYIfqyx+McQpt6Yui76VxVAChjKVrc7VyYz7DmVsfm9v+SDzgDNbJXFzP3\ntPS2QsVAbiCYghSU2GhX3/ip1BB34+MDu/fnzRYbK3BjTWFvsrHRgszTBju4PlbR\nSdN7ySV3IICGLM9eb9EBmAJW+dYAvjOAjQwJHnwrx2Mee9yWdeENnpNd0lbIiZqW\nI3x7xiwxRh9PJMCrJyzXd7970m6ht95KK9VApbphOPr6GezpqqJ5BmATg6iBMiio\nYzPR5h2k7zJopFTFNBmjYeTvAUWkkKs8QtlQiCJu0Wn13kFnFIxNiyQ02lOXLieW\nDvNr9JPM3uNHDGdEiDErquAZmsQwBQIDAQABoxAwDjAMBgNVHRMBAf8EAjAAMA0G\nCSqGSIb3DQEBCwUAA4ICAQCuHb0B4h3EMHCIzKPjhJyjJmopGXU0moCRyONMF84l\nA/bG2H53Q8Xbiw+7TaIradViv1+3FwItpF417dAoaH0/yayLSt9JYEOIzXK0WWpM\n/ROJR9Esu1y7JI3PUfjPqRRbQ4bYKE6hQJpj+S+UzinXhF/EftLfGG3HoW/C9xjo\ndCYo0LupVLejqZsuP6GI4nrcep19LTL/QUee+lZUFFfqE4NdBWykCoMaG/YGi+fj\nsh1MzpcpdLb5pfI0+uyMaQgoOMU3nhy5/1Lev4XQMtfTMddEJYbyXtHD9ytvqDVW\nLfljbje4jYRxaZfMzbdNI0dRFjIc7QbeSV8WVLYApGWAWbEEqmK8lU08KT79HkOr\nDacW34tlTiYnPz0fdMNj/wEd/7P0KkWbKclAtZHUw8Q6GmfRMujH8NQ0JWtyquMA\nyi0AD2doN7ctc704AENz1H2vsiU39Rclykf9T5OBFlyMBkcEM1f3YV7pS6JqoaW5\ngEL/VVOpVsTVyQlc19ZpFzSTkr59pWAsllaJ9eHr8qyEhQG64GZ+v/ssMvujXMB9\nw0NWo4PeSxU5hCoaEOwroaE+ELb8b1SUfxIt0Zk1/5utJwAnaWVE+ILs6tigUy4b\nDjNhiI8XyJASXv0cX33cfaL4G8zEYIQcx3slWt5AZ2QwyxQ81RUO6Y1f6Z5uUa4a\n2Q==\n-----END CERTIFICATE-----\n','-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----\n'),
('admin','cert_6kw4bl','2024-01-26T14:15:45+01:00','New Cert - 6kw4bl','JWT','x509','RS256',4096,20,'-----BEGIN CERTIFICATE-----\nMIIE2TCCAsGgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCYxDjAMBgNVBAoTBWFk\nbWluMRQwEgYDVQQDDAtjZXJ0XzZrdzRibDAeFw0yNDAxMjYxMzE1NDZaFw00NDAx\nMjYxMzE1NDZaMCYxDjAMBgNVBAoTBWFkbWluMRQwEgYDVQQDDAtjZXJ0XzZrdzRi\nbDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAM72XPzd0zJBIhQREgWX\nB9GQQDRXzUcqgHHWFoWsAJaqQBFXKMYiC5wAa0xvyR7sL/qdKm1q921DE8+lmg8S\nvRV0KyhqyWm/AHyDt/GQo1kTI1te7N29sg7ou45eoEReYvbuL+FKm2V7LT9oUgRT\n29UL0XHzm5SgSy7QlE1g5kI7l+r4yjIpWacbqiUCSotGRTD1l/mY44NXAHkLI87V\n+xtaShtyF/Q4vojq/eke17OqDxoPCpwM7LQRJiAgcXW+8ZDCi6ISJ+37NbHE8FKS\nM0yi5fi9JhyfnD9nuvMKaH5gli+8AmUDkE4OQX+5k8solQ9F6oGno1nAbewgPTRJ\nex4xcOvVrlPmihOvPdeiLPf+Jv0evg0GIlTm4UGsQ3vH3Q4DQSnaUgQeV7/QgLAa\n/FAdAKJrt7URqu3w8olQbBrzaRNvo92+TfU7xP28GRiM48tndVLaoWojS82UF1d8\nrIs1JzY94icF3PK5IHaBaJasthbqKkCNROqsQ4OHp7Stal4F/E0mr0FKvrzuibTQ\nDy2CJ0JbBJ/+cbJcXsshRAG+AoY5vbSK3z/3cqAW7mM8aOtBh79ItL+IvLeXo9yG\nyRUMg9tepFXPggEm/s2jm2yuEIuNvi62/yEwyISrz+lUBzPTy++tfr14eQDUXGed\nJJMcDL6RKfhvH8BQDfwOejwZAgMBAAGjEDAOMAwGA1UdEwEB/wQCMAAwDQYJKoZI\nhvcNAQELBQADggIBADiSBqYDt8RkWnyiq9UMtr5+EwT67m0+YOFFnCjclrLd3t3u\nkk9+kjt55aMImP7+m3nAnf8wjo1jSD54+tP/rha4+DIZrdoH1NUulJd5CaCQhhJG\nm//zqQryp3IcxW3xNmn6icHmb7xOnTmIxUunuyy1gkPGiSJfvrStYcZbvoV2n8mD\nG+K5VcgUudOvEypoP/t3XoBJf73TgPA/Uv/4Gv1BeMSseAj4gqtbETrp7TEBMxmd\nve/74dmAP639PTCa8zcydwMEa1dAwA4hq6liB4s+MtYG9TqpYnaqk7c/3EPsT0DE\na7AMyEg0cdIIvbekEiQ9olK6wkRaDvi3IyZX9Z2tnBLZKmzvk4113dc79kpl+ile\n2JI7ep0aMO1Zt3CJWtxCRNvEnWge0MscFr5UsweugNdcREP/5FgZpqWg5y5t9EhM\nJ0jrXyEmvgmkJ7SXv8LDr1ornWm3ZY6ZTYEu0Tp+Uf1XnGfyEQJmI0AWGtqnRxf0\nJRsFt+ktBJapyswq/d2ZCtZswiiMwMj9C6jIF8I+9dLkUPtTLoEXQR7KUcwypIfB\nCB3OUp7J4lvL7ygaIAv+LNL5Uq+sMK1KkFhlVxsXVZjNljyAM37mxOpR4JDfaYZa\ngVbRqn9eCd+JMV+g/bfSd64OaG+Cu4XDRACaa0owAHQq9Ics71K810I314Yc\n-----END CERTIFICATE-----\n','-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----\n'),
('golmon','golmon','2024-01-26T14:15:43+01:00','golmon','JWT','x509','RS256',4096,20,'-----BEGIN CERTIFICATE-----\nMIIE2TCCAsGgAwIBAgIDAeJAMA0GCSqGSIb3DQEBCwUAMCYxDjAMBgNVBAoTBWFk\nbWluMRQwEgYDVQQDDAtjZXJ0XzljaGQ4bzAeFw0yNDAxMjYxMzE1NDZaFw00NDAx\nMjYxMzE1NDZaMCYxDjAMBgNVBAoTBWFkbWluMRQwEgYDVQQDDAtjZXJ0XzljaGQ4\nbzCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIBAMg/+r4q0x0FMTUGJQB4\n6rPETN47f02NeuIQlY56boG9vZBBUrEt+ubm/QvU6qBPa0TmA+3Au/9xwMe30GgC\n+DwzjLmybUJOSIjC5tS+9OTm4rbc3Bcvja4qlG5x8tdUg8jsL5wlI+3DK4PYcF5x\nzVmcd5tG0G0ZZTO2rOFlN+ketyMjTlalw5JkmbAkWrlN8Sd557Q2EvdSzn1uptfH\nddpzD1w0uLO9Id3D4Eqf2rrX0PquHGlasRQjxz7xly7MfVevAHU4zrjoNLlmhZMT\nerV69h13bsEIUM18TuGlvZJq+MYvceS1jJHmBhY2+rig6tMvqlkKrGyKR16GdnJE\ntWL8TX5zEGwIEMXOVR5M/xLOvWNyys68EOOGIJshRChzCdom3Oi0mNEDV3OYMqyQ\nJOT5xUDVhP8iLDMA0BXKlUPVoUa5Blwd9nOQJ6c0858hp63yE23nPxAdEDBv78yL\nYIrs8oknNfiF7/9TQC47n69mrtBvd0WuVmApbSCl2nabKftgwifEykrmZf5G9PMh\nKBZVLE+XWaELMXJxAqzB88vpWtYA6pfx/n/MeFvDlaiXN+sZQYqnKlf+34dWbYaM\nyHxsIM1rViWMSTIc4iybvIsKAye6+o8Y/p5lxLpf8E1pG4lq0TITkDLX8VFeW4KQ\n8ikfI1WHNWVjbfKxf7d/fsjzAgMBAAGjEDAOMAwGA1UdEwEB/wQCMAAwDQYJKoZI\nhvcNAQELBQADggIBAC3UlV0+jgZvJokazbfsxiHHtX3NNj1oeAd5dq9WJQhHN/X8\nzkXMOdkn7134ocQg0//9vEBO+BwHe2Iav69tPuryiPGIX0gBlbXHqfUfkE3tst4A\neFq3DF7iTL5kMKSvhXTOvs1TJBEBjBPuKME6sPjoItdzc760t/MD+xVVWgs7DD41\n6WEs4ERluLX2gTV/Sr5D6nzSTDhD9dCjBO0CKWvntZPmK/vh1cPaZWomsdF7Cl7G\nf9BQTElvpiT7pzytkTzRW7o/jKNroBTvYleG9ilDN59nTMGXPTkKPZi7XIEsHZBa\nD6ECDlUoBLqLDZCGN4+dfwtQipUPSWaFU4IEjAtXUOOJwbBV4GDbc1WcXNh8f/Hy\n/vP8gUAZTtKP+Br0TdAzbbAxztnwJUpl6IW2vNMZv+5mT8OUfXoW7+vDtLadWd0w\nAInoNMnrASURCO5yXLrYkGPCU/2zG8WFu9Tg2pu9EOtQY/tsBwj9j3uVIgfrUema\npQ/K/Q444rk9IoD3N7hx7GhsJIZtfeDl/5t5MZxW5CIiU/dee9BW1r/21ez+j9Ih\nmcsxeSsE0VyRZ0szI1Jv733VAaBbCZ0cBPzrQRJyrZxN2i8Dubk3L5iN+eM6ztfO\nfjqi9nbwuOqpf7IK4Ickggv0HHw9wToQ8npEW6IEDwWjkjDHC1Uql0kv/E5M\n-----END CERTIFICATE-----\n','-----BEGIN RSA PRIVATE KEY-----\n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\n-----END RSA PRIVATE KEY-----\n');
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
('golmon','permission_admin','2024-01-26T11:17:56+01:00','permission_admin','','[\"golmon/admin\"]','[]','[]','[\"*\"]','','','Application','[\"golmon_app\"]','[\"Admin\"]','Allow',1,'admin','','','Approved'),
('golmon','permission_admingod','2024-01-26T13:57:08+01:00','permission_admingod','','[\"golmon/admin\"]','[]','[]','[\"*\"]','','','Custom','[\"golmon_app\"]','[\"Read\",\"Write\",\"Admin\"]','Allow',0,'admin','','','Approved'),
('golmon','permission_ecrire','2024-01-26T09:52:05+01:00','permission_ecrire','','[\"golmon/writer\"]','[]','[]','[\"*\"]','','','Application','[\"app-built-in\"]','[\"Write\"]','Allow',1,'admin','','','Approved'),
('golmon','permission_lire','2024-01-26T10:00:06+01:00','permission_lire','','[\"golmon/reader\"]','[]','[]','[\"*\"]','','','Application','[\"golmon_app\"]','[\"Read\"]','Allow',1,'admin','','','Approved');
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_rule`
--

LOCK TABLES `permission_rule` WRITE;
/*!40000 ALTER TABLE `permission_rule` DISABLE KEYS */;
INSERT INTO `permission_rule` VALUES
(16,'p','golmon/reader','*','golmon_app','read','allow','golmon/permission_lire'),
(19,'p','golmon/admin','*','golmon_app','read','allow','golmon/permission_admin'),
(20,'p','golmon/admin','*','golmon_app','write','allow','golmon/permission_admin'),
(21,'p','golmon/admin','*','golmon_app','admin','allow','golmon/permission_admin'),
(22,'p','golmon/admin','*','golmon_app','admin','allow','golmon/permission_admingod'),
(23,'p','golmon/writer','*','app-built-in','write','allow','golmon/permission_ecrire');
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
('golmon','admin','golmon_app','2024-01-26T10:10:07Z','[\"ea6b11d839d2cc04da325af48c594a4f\"]');
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
('admin','5001f09d-cb48-4cfb-b69a-793a01c4de8e','2024-01-26T09:59:48Z','golmon_app','built-in','admin','24dd3039d7460630368b','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiIiwiaWQiOiJmN2I0OTY0ZC04YmU3LTQ1ZDMtOTg4NS02MWUxZjRjZjI3M2IiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6InBsYWluIiwiZGlzcGxheU5hbWUiOiJBZG1pbiIsImZpcnN0TmFtZSI6IiIsImxhc3ROYW1lIjoiIiwiYXZhdGFyIjoiaHR0cHM6Ly9jZG4uY2FzYmluLm9yZy9pbWcvY2FzYmluLnN2ZyIsImF2YXRhclR5cGUiOiIiLCJwZXJtYW5lbnRBdmF0YXIiOiIiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMTIzNDU2Nzg5MTAiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjEsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImFwcC1idWlsdC1pbiIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiMTI3LjAuMC4xIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJidWlsdC1pbiIsIm5hbWUiOiJwZXJtaXNzaW9uXzVneXhraSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoiTmV3IFBlcm1pc3Npb24gLSA1Z3l4a2kiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJBcHBsaWNhdGlvbiIsInJlc291cmNlcyI6WyJhcHAtYnVpbHQtaW4iXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn0seyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6InBlcm1pc3Npb25fdXY4dmt0IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUGVybWlzc2lvbiAtIHV2OHZrdCIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImFwcC1idWlsdC1pbiJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4Njc5ODgsIm5iZiI6MTcwNjI2MzE4OCwiaWF0IjoxNzA2MjYzMTg4LCJqdGkiOiJhZG1pbi81MDAxZjA5ZC1jYjQ4LTRjZmItYjY5YS03OTNhMDFjNGRlOGUifQ.NKTfYDKwBWF1How3XaS8369jTkPDq-hv3LMDhGTQNv_-Ci1nPui6vEmtDM_NJTovT38pCJ-bRh85QFPNiJInOsCQc2q5dy-Pagp9_jLJ8RuJUr3VEffsv82MecZCaLuk6XDFU7xX6j6yNfmI7Km1dIeYvKEnzdfIKoZZ0JErPv0szI0CIz6ycrH653c0JF5sP1XqB099iFzcqGCmNHlCN8C4nOGZB0ra9yKumv6K6ioZ5AKWFhKNp2xk7yhz2QxGPvmCaTMS0kYjCq7DMqR_xgntlhxGbvBGwDX3ICGcjnYk1VhqNqmLSGw0Uk_wplDsPhOlPuXBnEElc_cOM3icRuO95JOM5eW593xqZtkLfRdZ6iE_KyeS8cyHimvFnajVPNVF4PESbHAL87T1yIfRUy8tGn05GC1ZiMac53wdyTUYgLVQDzF3ZIhTSo4Vts4AP5cHfjtf4mZpYfmFQoQBk9uVdSl4J93Miyf1HQqSw0x8Dfh4X3kxspNoAi_NMaqk1oo7yk3nuPdhNgP6YIhmkC8qrhnqQ35jq6H3ZmJ5Etx3yLcQBilMb2pJ057qoz234KoYShipuYMRcqWeQbAvpKI5coLoe0tQdK0Yj96GVJGA7KEC7mb5Y48gbYc5o27GVtKKmYgjE03Ap0zU8jInqHmg1A7wWqPwdc95ECiCig4','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiIiwiaWQiOiJmN2I0OTY0ZC04YmU3LTQ1ZDMtOTg4NS02MWUxZjRjZjI3M2IiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6InBsYWluIiwiZGlzcGxheU5hbWUiOiJBZG1pbiIsImZpcnN0TmFtZSI6IiIsImxhc3ROYW1lIjoiIiwiYXZhdGFyIjoiaHR0cHM6Ly9jZG4uY2FzYmluLm9yZy9pbWcvY2FzYmluLnN2ZyIsImF2YXRhclR5cGUiOiIiLCJwZXJtYW5lbnRBdmF0YXIiOiIiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMTIzNDU2Nzg5MTAiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjEsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImFwcC1idWlsdC1pbiIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiMTI3LjAuMC4xIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJidWlsdC1pbiIsIm5hbWUiOiJwZXJtaXNzaW9uXzVneXhraSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoiTmV3IFBlcm1pc3Npb24gLSA1Z3l4a2kiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJBcHBsaWNhdGlvbiIsInJlc291cmNlcyI6WyJhcHAtYnVpbHQtaW4iXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn0seyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6InBlcm1pc3Npb25fdXY4dmt0IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUGVybWlzc2lvbiAtIHV2OHZrdCIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImFwcC1idWlsdC1pbiJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmN2I0OTY0ZC04YmU3LTQ1ZDMtOTg4NS02MWUxZjRjZjI3M2IiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODY3OTg4LCJuYmYiOjE3MDYyNjMxODgsImlhdCI6MTcwNjI2MzE4OCwianRpIjoiYWRtaW4vNTAwMWYwOWQtY2I0OC00Y2ZiLWI2OWEtNzkzYTAxYzRkZThlIn0.QplNmShPvG0rHv3GyzfJ5GXZy_49q5K6X7xSIqBpiMuczzMgYnOC6huXzWb2nR5ck1Y6b_GYwyeawGhvaHhFGk0x6LYj4LhoXenB5yVtLo2PVvvA1xe07-DU2AfqzN8iroN6p-4xBR68QZ3hkXtHnrvNsO-6NvaNK59uWYLkdayIKdTAKOxXtAXHvi37yEDR4I70td5CjoPrl3Tj7LvL_HY4oYO6sCE60wZjdacWO9Fkst7GMAu-WIG4SFr_fZIhP_TIkwz-Mp9BTiHQHHys98Vfg8BZRGhZXVm390agp8GIispWzFxqu9WNgp-LicOMcP22OzbOhYMI0UV_OhuFb8aBmoB90V7i49hjiF3_0PD5GEakPZ_bQfpSEA8eEDhqwd1FAT0DJYmP7lZXiVkDb-4VE7999KucnVel_BMskskplkvFnspmWpjv3jIxmawQuvy-QFi3BBuoEVnxyvypP9yEB0Sx4Db_K9N6dXLcPgYRU51MWVmO_d2dv2zptRMsBxxMKEFittDF-x2tWzrSOEVqZ--PlUgzBW66A_qLi1IY5fAocVV7HjTRbHKpODqky4c2JK_gp2XNvsqFwvlHVHgz7PD8hR_cuwDWsyw7NR9jb8oSw7ulS0oRA1t-fEvDXXNMIZnnJ3mdQlMW4xfBBOci-ZpDiXEqmqlEA-DsXXc','7861f491363b0a09ad88e61696266078fcc6efb591b944d5264f44afe901a442','e7482d6587e42b8627b9905c68f0147195223409c7e57babf59d2f1e4da4f862',604800,'read','Bearer','',1,1706263488),
('admin','716a3796-4a8a-4264-bdbc-c0df9de4d18d','2024-01-26T10:10:07Z','golmon_app','golmon','admin','f97d7c948e1b85e20df5','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowOTo0MFoiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4Njg2MDcsIm5iZiI6MTcwNjI2MzgwNywiaWF0IjoxNzA2MjYzODA3LCJqdGkiOiJhZG1pbi83MTZhMzc5Ni00YThhLTQyNjQtYmRiYy1jMGRmOWRlNGQxOGQifQ.mG4YgZc_QXhH5UPXhOan8v0XXmnLMNXyj2BLKb8qUYKBou1KtINy6Ccuosoeb0yxVsTUIXOAi1iwZmtbfjr1cBtvxxs9NFm4OxIa0hVep2e3Rym9GO9BwzL-pVq4e3N4whuKYldiwoHZkhkH16MgtIUec4Isybe8YazoOVe7F6Urg-ltewn8w6PX8C6NaLqkVkYMNTXkkAuAzu4FhTL7QB2aEmzieTU4UKplpIq3oiBizWJrQLzw7NF7ogsge8RYsBTxUl7NV1_5G5J9iGYmSsX-HvfCcYdIfj6-zZeq1qzWHkAY0cvdZZager8_WxgZrOIawhBIJnijMz4iZwIXTOuGYTHpBL6K2bwkG85WQ1qVC19Ve0HL20CznqC1SHp0XyjozHj4DmgdZnJruFcyOfpIjM2psvZ-f77Gxqze4qbWSDCo3kPeZCo27KmLNwK40Xadq7XMSUEzVROP7kKELDVrFdMoDn79ch8vTclMFMDH7r8nTXTBorA0f_1ch7JUrBgSTxrUPd0HKGka5CMI1tHGjMV9JWAWE62eO8as8U1NS9eDMdfKbIJF6cLgBVUyZ42I_twUAhfOjsxIbYST2-JVSdQTMXhf6EaqZsXuhRzexoXa-3XUIdN08I7nRci3QqNyZi5luwvNwcRtoLkiazaVWuFnJAWvIon39qrNGNc','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImdvbG1vbiIsIm5hbWUiOiJhZG1pbiIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMTowNzo1MiswMTowMCIsInVwZGF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowOTo0MFoiLCJpZCI6ImY4MWU0ODBhLWVkMGUtNDllOS05ZGE2LWE2NTEwYTQ5MmZlMiIsInR5cGUiOiJub3JtYWwtdXNlciIsInBhc3N3b3JkIjoiIiwicGFzc3dvcmRTYWx0IjoiIiwicGFzc3dvcmRUeXBlIjoibWQ1LXNhbHQiLCJkaXNwbGF5TmFtZSI6ImFkbWluIiwiZmlyc3ROYW1lIjoiIiwibGFzdE5hbWUiOiIiLCJhdmF0YXIiOiJodHRwczovL2Nkbi5jYXNiaW4ub3JnL2ltZy9jYXNiaW4uc3ZnIiwiYXZhdGFyVHlwZSI6IiIsInBlcm1hbmVudEF2YXRhciI6IiIsImVtYWlsIjoiYWRtaW5AZXhlbXBsZS5jb20iLCJlbWFpbFZlcmlmaWVkIjpmYWxzZSwicGhvbmUiOiI3NjczMTM1NTA2MyIsImNvdW50cnlDb2RlIjoiVVMiLCJyZWdpb24iOiIiLCJsb2NhdGlvbiI6IiIsImFkZHJlc3MiOltdLCJhZmZpbGlhdGlvbiI6IkV4YW1wbGUgSW5jLiIsInRpdGxlIjoiIiwiaWRDYXJkVHlwZSI6IiIsImlkQ2FyZCI6IiIsImhvbWVwYWdlIjoiIiwiYmlvIjoiIiwibGFuZ3VhZ2UiOiIiLCJnZW5kZXIiOiIiLCJiaXJ0aGRheSI6IiIsImVkdWNhdGlvbiI6IiIsInNjb3JlIjoyMDAwLCJrYXJtYSI6MCwicmFua2luZyI6MywiaXNEZWZhdWx0QXZhdGFyIjpmYWxzZSwiaXNPbmxpbmUiOmZhbHNlLCJpc0FkbWluIjp0cnVlLCJpc0ZvcmJpZGRlbiI6ZmFsc2UsImlzRGVsZXRlZCI6ZmFsc2UsInNpZ251cEFwcGxpY2F0aW9uIjoiZ29sbW9uX2FwcCIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W10sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmODFlNDgwYS1lZDBlLTQ5ZTktOWRhNi1hNjUxMGE0OTJmZTIiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODY4NjA3LCJuYmYiOjE3MDYyNjM4MDcsImlhdCI6MTcwNjI2MzgwNywianRpIjoiYWRtaW4vNzE2YTM3OTYtNGE4YS00MjY0LWJkYmMtYzBkZjlkZTRkMThkIn0.HhoeuyK_fEvn5jmsEPsgRXgGNmhMmh4dlBPUrII-xBn_3c__aNilFogaikFoe6m3JLa-eGJrxiX1ttj8vcZHccZMXPY4gWSy36JsEWjZWzFCGJMjtMJihWlx7421S-sCOMtdlVKzPdzVQsLoMsURJLT2cpV4D-0UXnvlOvnQP_dQcoBvu711-sbxPSTELhD4jgOWenvHLV_afrEDZQPgPCH1kbVwt4VI4ikXd4L_fV6VoE4kfWAsIiWEG9K90FaT_MaWfsCOQExOttMffdMalCbZZobRWavR09C2dUdn_QqrBn4CpOHvxgqyimDot4vlRukO8q7b08hL1N3J7g01P5OwGKKs4MLKOc_2o9e4s9gqEnQO1etvqaQHtZkbUd9EJ3rn-rayYkxGQQvnjuAhSbM6krxeQp3fcRxFk6qx_xbMb3dg4QUYlHRd_90Hxd18nL3t8hz2gMFPKJLm8DXnfNz36KaaFpQBtWf4_O37eGbRFzLEoS6QJFzVfTlIabaNTmcZPOm7B2JAL0tnfycSQa3TJyxh_PeVmLjNJdtX74NX-iT1QngefYr2PEpDNusydkTM4ksD2NWIqCspdLvwkoHgojcNiD4LTbRef5ptUkzAedesa83L2SKjtBsCGFCD979wKpF3IXT1Ot9VwIwRrNEX60iZqTIBbOuT3-vKEXs','bf3ce49fd6428b7d94ac9d355cfa6b1bf6453ea8920808a4ccbfd60e609ff38c','3b16df630b2ef40d6e42f12c6d385651647c80016de2f4d1ae56b4f7253980a9',604800,'read','Bearer','',1,1706264107),
('admin','98cca8c2-852c-44c2-ad67-6727832db62e','2024-01-26T09:59:54Z','golmon_app','built-in','admin','eefa323aa798d6248b54','eyJhbGciOiJSUzI1NiIsImtpZCI6ImNlcnQtYnVpbHQtaW4iLCJ0eXAiOiJKV1QifQ.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiIiwiaWQiOiJmN2I0OTY0ZC04YmU3LTQ1ZDMtOTg4NS02MWUxZjRjZjI3M2IiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6InBsYWluIiwiZGlzcGxheU5hbWUiOiJBZG1pbiIsImZpcnN0TmFtZSI6IiIsImxhc3ROYW1lIjoiIiwiYXZhdGFyIjoiaHR0cHM6Ly9jZG4uY2FzYmluLm9yZy9pbWcvY2FzYmluLnN2ZyIsImF2YXRhclR5cGUiOiIiLCJwZXJtYW5lbnRBdmF0YXIiOiIiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMTIzNDU2Nzg5MTAiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjEsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImFwcC1idWlsdC1pbiIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiMTI3LjAuMC4xIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJidWlsdC1pbiIsIm5hbWUiOiJwZXJtaXNzaW9uXzVneXhraSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoiTmV3IFBlcm1pc3Npb24gLSA1Z3l4a2kiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJBcHBsaWNhdGlvbiIsInJlc291cmNlcyI6WyJhcHAtYnVpbHQtaW4iXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn0seyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6InBlcm1pc3Npb25fdXY4dmt0IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUGVybWlzc2lvbiAtIHV2OHZrdCIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImFwcC1idWlsdC1pbiJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJhY2Nlc3MtdG9rZW4iLCJ0YWciOiJzdGFmZiIsInNjb3BlIjoicmVhZCIsImlzcyI6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCIsInN1YiI6ImY3YjQ5NjRkLThiZTctNDVkMy05ODg1LTYxZTFmNGNmMjczYiIsImF1ZCI6WyI5ZmZkMzcxMGRkMzA1ZjBjNWZmYiJdLCJleHAiOjE3MDY4Njc5OTQsIm5iZiI6MTcwNjI2MzE5NCwiaWF0IjoxNzA2MjYzMTk0LCJqdGkiOiJhZG1pbi85OGNjYThjMi04NTJjLTQ0YzItYWQ2Ny02NzI3ODMyZGI2MmUifQ.crmIzH2QSquhPsQ-F1gFMp82V91_mnPVPSFVx5lwlyhO9vw8KzzabsZxrvqyaFZd0yCVxJAHuOmu5zEsDZFVuPCRUnCGDFrjbr-4NkTDbLqWE3nYQ79Jtvf4VcWKIUH6r-iufhvh2L0fDfahlwBke25yywNn50s0nv-2CNzstZoXyCagL2pvs4CeIma6YuV4Pt07Ds65y0yHuzIyq3LUJyVo5qNkPPkbdnSObsKDv7E25hQklMobLs2tFrw8DjF73MS_lXW_5ou2a5Zcz-zXwe1Z9ZUigLkyXmTdS-l9ouI-DCe3dDXyuhALDe3aiIMgOOElpbDkoty767pBk6PpfgFyPK7VJQYQ5kSD5PpXIckh3rdnA8i3QM010I3Od04s5mPq4KzwR_-sAg1dwEBwlZKpTzV9Nj1tuzqzSGo32RJtUFBFBXsUa3yuPYEXso04K4LGWfmZhBT42_s50GNQBYuPuOPIyTNiV-owcLnRnvFm0ma6vuMIe_PdHFASHJ0bpIAHQEkGcavY4y-R7v-uKqXDkl1-btMrCfFmxL9rhWtuxiMx7RqAPmJYnmxrlRLprYaFP0Hd7qy5-GcPEVYrNcCHS_GtO-EeSnv59F715SeIGnKJJXShmWzWQOKfohSpQf7vVq9VQg8VSo1D__XqRAYo4leQE9N_BPEqZNOGYNo','eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6ImFkbWluIiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTIyVDE0OjAyOjMzWiIsInVwZGF0ZWRUaW1lIjoiIiwiaWQiOiJmN2I0OTY0ZC04YmU3LTQ1ZDMtOTg4NS02MWUxZjRjZjI3M2IiLCJ0eXBlIjoibm9ybWFsLXVzZXIiLCJwYXNzd29yZCI6IiIsInBhc3N3b3JkU2FsdCI6IiIsInBhc3N3b3JkVHlwZSI6InBsYWluIiwiZGlzcGxheU5hbWUiOiJBZG1pbiIsImZpcnN0TmFtZSI6IiIsImxhc3ROYW1lIjoiIiwiYXZhdGFyIjoiaHR0cHM6Ly9jZG4uY2FzYmluLm9yZy9pbWcvY2FzYmluLnN2ZyIsImF2YXRhclR5cGUiOiIiLCJwZXJtYW5lbnRBdmF0YXIiOiIiLCJlbWFpbCI6ImFkbWluQGV4YW1wbGUuY29tIiwiZW1haWxWZXJpZmllZCI6ZmFsc2UsInBob25lIjoiMTIzNDU2Nzg5MTAiLCJjb3VudHJ5Q29kZSI6IlVTIiwicmVnaW9uIjoiIiwibG9jYXRpb24iOiIiLCJhZGRyZXNzIjpbXSwiYWZmaWxpYXRpb24iOiJFeGFtcGxlIEluYy4iLCJ0aXRsZSI6IiIsImlkQ2FyZFR5cGUiOiIiLCJpZENhcmQiOiIiLCJob21lcGFnZSI6IiIsImJpbyI6IiIsImxhbmd1YWdlIjoiIiwiZ2VuZGVyIjoiIiwiYmlydGhkYXkiOiIiLCJlZHVjYXRpb24iOiIiLCJzY29yZSI6MjAwMCwia2FybWEiOjAsInJhbmtpbmciOjEsImlzRGVmYXVsdEF2YXRhciI6ZmFsc2UsImlzT25saW5lIjpmYWxzZSwiaXNBZG1pbiI6dHJ1ZSwiaXNGb3JiaWRkZW4iOmZhbHNlLCJpc0RlbGV0ZWQiOmZhbHNlLCJzaWdudXBBcHBsaWNhdGlvbiI6ImFwcC1idWlsdC1pbiIsImhhc2giOiIiLCJwcmVIYXNoIjoiIiwiYWNjZXNzS2V5IjoiIiwiYWNjZXNzU2VjcmV0IjoiIiwiZ2l0aHViIjoiIiwiZ29vZ2xlIjoiIiwicXEiOiIiLCJ3ZWNoYXQiOiIiLCJmYWNlYm9vayI6IiIsImRpbmd0YWxrIjoiIiwid2VpYm8iOiIiLCJnaXRlZSI6IiIsImxpbmtlZGluIjoiIiwid2Vjb20iOiIiLCJsYXJrIjoiIiwiZ2l0bGFiIjoiIiwiY3JlYXRlZElwIjoiMTI3LjAuMC4xIiwibGFzdFNpZ25pblRpbWUiOiIiLCJsYXN0U2lnbmluSXAiOiIiLCJwcmVmZXJyZWRNZmFUeXBlIjoiIiwicmVjb3ZlcnlDb2RlcyI6bnVsbCwidG90cFNlY3JldCI6IiIsIm1mYVBob25lRW5hYmxlZCI6ZmFsc2UsIm1mYUVtYWlsRW5hYmxlZCI6ZmFsc2UsImxkYXAiOiIiLCJwcm9wZXJ0aWVzIjp7fSwicm9sZXMiOltdLCJwZXJtaXNzaW9ucyI6W3sib3duZXIiOiJidWlsdC1pbiIsIm5hbWUiOiJwZXJtaXNzaW9uXzVneXhraSIsImNyZWF0ZWRUaW1lIjoiMjAyNC0wMS0yNlQxMDowMDowNiswMTowMCIsImRpc3BsYXlOYW1lIjoiTmV3IFBlcm1pc3Npb24gLSA1Z3l4a2kiLCJkZXNjcmlwdGlvbiI6IiIsInVzZXJzIjpudWxsLCJncm91cHMiOltdLCJyb2xlcyI6W10sImRvbWFpbnMiOltdLCJtb2RlbCI6IiIsImFkYXB0ZXIiOiIiLCJyZXNvdXJjZVR5cGUiOiJBcHBsaWNhdGlvbiIsInJlc291cmNlcyI6WyJhcHAtYnVpbHQtaW4iXSwiYWN0aW9ucyI6WyJSZWFkIl0sImVmZmVjdCI6IkFsbG93IiwiaXNFbmFibGVkIjp0cnVlLCJzdWJtaXR0ZXIiOiJhZG1pbiIsImFwcHJvdmVyIjoiIiwiYXBwcm92ZVRpbWUiOiIiLCJzdGF0ZSI6IkFwcHJvdmVkIn0seyJvd25lciI6ImJ1aWx0LWluIiwibmFtZSI6InBlcm1pc3Npb25fdXY4dmt0IiwiY3JlYXRlZFRpbWUiOiIyMDI0LTAxLTI2VDA5OjUyOjA1KzAxOjAwIiwiZGlzcGxheU5hbWUiOiJOZXcgUGVybWlzc2lvbiAtIHV2OHZrdCIsImRlc2NyaXB0aW9uIjoiIiwidXNlcnMiOm51bGwsImdyb3VwcyI6W10sInJvbGVzIjpbXSwiZG9tYWlucyI6W10sIm1vZGVsIjoiIiwiYWRhcHRlciI6IiIsInJlc291cmNlVHlwZSI6IkFwcGxpY2F0aW9uIiwicmVzb3VyY2VzIjpbImFwcC1idWlsdC1pbiJdLCJhY3Rpb25zIjpbIlJlYWQiXSwiZWZmZWN0IjoiQWxsb3ciLCJpc0VuYWJsZWQiOnRydWUsInN1Ym1pdHRlciI6ImFkbWluIiwiYXBwcm92ZXIiOiIiLCJhcHByb3ZlVGltZSI6IiIsInN0YXRlIjoiQXBwcm92ZWQifV0sImdyb3VwcyI6W10sImxhc3RTaWduaW5Xcm9uZ1RpbWUiOiIiLCJzaWduaW5Xcm9uZ1RpbWVzIjowLCJ0b2tlblR5cGUiOiJyZWZyZXNoLXRva2VuIiwidGFnIjoic3RhZmYiLCJzY29wZSI6InJlYWQiLCJpc3MiOiJodHRwOi8vbG9jYWxob3N0OjgwMDAiLCJzdWIiOiJmN2I0OTY0ZC04YmU3LTQ1ZDMtOTg4NS02MWUxZjRjZjI3M2IiLCJhdWQiOlsiOWZmZDM3MTBkZDMwNWYwYzVmZmIiXSwiZXhwIjoxNzA2ODY3OTk0LCJuYmYiOjE3MDYyNjMxOTQsImlhdCI6MTcwNjI2MzE5NCwianRpIjoiYWRtaW4vOThjY2E4YzItODUyYy00NGMyLWFkNjctNjcyNzgzMmRiNjJlIn0.jXIi4wbu9wwjcaI0b6fqEKSIVvNgdjZH48zJwkx3wwIksnzrixW1N0gSh3i4XExAv_mFjqQqtrbfMmT2y_VszHx4qtAnxD4IUX74D68OhjWdXvv3wbDI3XIPibLeWLiaOtLk8PKu6OvY_k7ptJkO-TjSVMtW7vEYydH0gv2-sv4XmA9DTTHLUalWQyjsoHP_RJD-DZIL-JjE-NyGs_Ev26uA9YFinUMZ015nTPs2PH9wyWtaK7sarQXvf5p1DmRm0ILQhA0tPaU39jhm-ERBZOe8MXWn9fH0e9XeQsdkKbpcGU1-r8jja-mjAEpVSRTVTKFCVZUpprefRX-Hlz6S2WZo-1JKuBSHyvdtP3jM8HUFnoLkePOwrimX-FjknlchdE6hgXg3QzS42Xa92-2ScYDZ00LXCLWmAlN7FwZjlL3E4GRLL8HgkSnXzrHXLJau7yK21kg5FbAgHVrF32n5sEFxdh_TMcWfPGKe4vo1viKyKtiq8ZsTEknnPZYH8fPHyM415m4jeOHlLRZlszNCTtNvgm4abLmx9AEF-MXbnuErZbwdTfq_pB8OhsIfFED4TJm9spy3IOVbbEXIcCIGfX1j6fdhcXB1bMrhFcZ7J3vgFT2JDzO_fKcfdKivQmvwepPZkRRRqcFzzLfaj_otybkGvsJwExGHeImdJ1dBXc4','b2b234ffb9cfa5dbd16fd2a520b8790d7e465ac614bb59fbde41070beac83ec4','06bfc7a4515e2abd949b438dab582385a92ed1903e51018731a7bebf83324e0c',604800,'read','Bearer','',1,1706263494);
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
('golmon','admin','2024-01-26T11:07:52+01:00','2024-01-26T10:09:40Z','f81e480a-ed0e-49e9-9da6-a6510a492fe2','','normal-user','cf53aaa72eb6b9661473e9c1d8e2bb15','','md5-salt','admin','','','https://cdn.casbin.org/img/casbin.svg','','','admin@exemple.com',0,'76731355063','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,3,0,0,1,0,0,'golmon_app','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','[]','',0,'null'),
('golmon','AdminGod','2024-01-26T14:05:52+01:00','2024-01-26T13:08:07Z','f52a022c-dcf3-4998-be4e-0ecc8999c05e','','normal-user','AdminGodGolmon5','','plain','admingod','','','https://cdn.casbin.org/img/casbin.svg','','','y1e4qy@example.com',0,'01306416516','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,2,0,0,1,0,0,'golmon_app','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','[]','',0,'[{\"application\":\"\",\"username\":\"\",\"password\":\"\",\"signinUrl\":\"\"}]'),
('golmon','reader','2024-01-26T13:54:13+01:00','2024-01-26T13:05:25Z','845ac194-2e76-4503-895c-87b183ce4ccd','','normal-user','6699bdeecd3263952134f43aa398da22','','md5-salt','reader','','','https://cdn.casbin.org/img/casbin.svg','','','reader@example.com',0,'95962596478','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,2,0,0,0,0,0,'golmon_app','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','[]','',0,'null'),
('golmon','writer','2024-01-26T13:59:23+01:00','2024-01-26T13:05:01Z','1890f36c-7db9-46bf-9152-45bf984dbdf0','','normal-user','18219ef9abfdd902070bbe61ebb25965','','md5-salt','writer','','','https://cdn.casbin.org/img/casbin.svg','','','writer@example.com',0,'55907122435','US','','','[]','Example Inc.','','','','','','staff','','','','',2000,0,2,0,0,0,0,0,'golmon_app','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','','null','','null','',0,0,'','','','{}','null','null','[]','',0,'null');
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

-- Dump completed on 2024-01-26 13:23:59
