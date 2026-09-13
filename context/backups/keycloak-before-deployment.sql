/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.20-12.3.3-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: keycloak
-- ------------------------------------------------------
-- Server version	12.3.3-MariaDB-ubu2404

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `ADMIN_EVENT_ENTITY`
--

DROP TABLE IF EXISTS `ADMIN_EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ADMIN_EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `ADMIN_EVENT_TIME` bigint(20) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `OPERATION_TYPE` varchar(255) DEFAULT NULL,
  `AUTH_REALM_ID` varchar(255) DEFAULT NULL,
  `AUTH_CLIENT_ID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `RESOURCE_PATH` text DEFAULT NULL,
  `REPRESENTATION` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `RESOURCE_TYPE` varchar(64) DEFAULT NULL,
  `DETAILS_JSON` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ADMIN_EVENT_TIME` (`REALM_ID`,`ADMIN_EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADMIN_EVENT_ENTITY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ADMIN_EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` DISABLE KEYS */;
INSERT INTO `ADMIN_EVENT_ENTITY` VALUES
('06924955-0934-4f44-b400-dacd4c5abf01',1789043855371,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"notExpire\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"expireDate\",\"displayName\":\"expireDate\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"mac\",\"displayName\":\"mac\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"company\",\"displayName\":\"company\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"phoneNumbers\",\"displayName\":\"phoneNumbers\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"active\",\"displayName\":\"active\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('143500e8-bb04-46d7-b80c-85033ebd6150',1788528430541,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/1be7635b-9df6-4462-9587-821ee50be064','{\"id\":\"1be7635b-9df6-4462-9587-821ee50be064\",\"username\":\"kc.rest.user.1788528385\",\"firstName\":\"SCIM-Updated\",\"lastName\":\"Integration\",\"email\":\"updated.1788528385@example.com\",\"emailVerified\":false,\"enabled\":true,\"createdTimestamp\":1788528385578,\"totp\":false,\"disableableCredentialTypes\":[],\"requiredActions\":[],\"notBefore\":0,\"access\":{\"manageGroupMembership\":true,\"resetPassword\":true,\"view\":true,\"mapRoles\":true,\"impersonate\":true,\"manage\":true}}',NULL,'USER',NULL),
('16074f86-aefa-4b1e-b53e-953292d3f614',1788528403961,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/1be7635b-9df6-4462-9587-821ee50be064/groups/92dd3c91-c739-4fad-9505-a62e77a15d00','{\"id\":\"92dd3c91-c739-4fad-9505-a62e77a15d00\",\"name\":\"kc-rest-group-1788528385\",\"path\":\"/kc-rest-group-1788528385\",\"subGroups\":[],\"attributes\":{},\"realmRoles\":[],\"clientRoles\":{}}',NULL,'GROUP_MEMBERSHIP','{\"email\":\"kc.rest.user.1788528385@example.com\",\"username\":\"kc.rest.user.1788528385\"}'),
('26e9cfe0-0d79-4084-97f9-9e4a68f9c526',1788528385463,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','groups/92dd3c91-c739-4fad-9505-a62e77a15d00','{\"id\":\"92dd3c91-c739-4fad-9505-a62e77a15d00\",\"name\":\"kc-rest-group-1788528385\",\"subGroups\":[]}',NULL,'GROUP',NULL),
('3cd637ec-24bc-4fa0-81b0-8e0cd564eee1',1789043737329,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('418915b8-d8de-4b56-b7d9-6e442365d994',1788529427112,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','groups/dd474d75-ba84-4bab-ab2e-ea22cfdb9974','{\"id\":\"dd474d75-ba84-4bab-ab2e-ea22cfdb9974\",\"name\":\"normalized-group-1788529427\",\"subGroups\":[]}',NULL,'GROUP',NULL),
('449d5955-e3c7-46ef-aafa-c94601238998',1789043779888,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"expireDate\",\"displayName\":\"expireDate\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('47a17618-f0c1-47fd-88ca-048b9b7581eb',1789043743904,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('587d8af9-ab3e-4cce-a354-aa293cc91705',1788528385589,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/1be7635b-9df6-4462-9587-821ee50be064','{\"username\":\"kc.rest.user.1788528385\",\"firstName\":\"SCIM\",\"lastName\":\"Integration\",\"email\":\"kc.rest.user.1788528385@example.com\",\"enabled\":true}',NULL,'USER',NULL),
('6201a11e-77d6-4045-a761-1f020d49b39e',1788529427180,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/722dc370-483f-42c9-9faa-293ce641f83b/groups/dd474d75-ba84-4bab-ab2e-ea22cfdb9974','{\"id\":\"dd474d75-ba84-4bab-ab2e-ea22cfdb9974\",\"name\":\"normalized-group-1788529427\",\"path\":\"/normalized-group-1788529427\",\"subGroups\":[],\"attributes\":{},\"realmRoles\":[],\"clientRoles\":{}}',NULL,'GROUP_MEMBERSHIP','{\"email\":\"normalized.user.1788529427@example.com\",\"username\":\"normalized.user.1788529427\"}'),
('6741c70c-4ec9-490d-95cc-f535d0243cee',1789043765978,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('69b96406-5acf-44cc-b49a-6709c4f29504',1788528430584,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','groups/92dd3c91-c739-4fad-9505-a62e77a15d00','{\"name\":\"kc-rest-group-renamed-1788528385\",\"subGroups\":[]}',NULL,'GROUP',NULL),
('69cb868a-4dc5-4577-9468-2c20bafc7deb',1788528434918,'c0899c13-8583-446c-920c-28ff7136f230','DELETE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','groups/92dd3c91-c739-4fad-9505-a62e77a15d00','{\"id\":\"92dd3c91-c739-4fad-9505-a62e77a15d00\",\"name\":\"kc-rest-group-renamed-1788528385\",\"subGroups\":[]}',NULL,'GROUP',NULL),
('77d49952-8df8-4684-9e9d-b1fda4933406',1788528432698,'c0899c13-8583-446c-920c-28ff7136f230','DELETE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/1be7635b-9df6-4462-9587-821ee50be064/groups/92dd3c91-c739-4fad-9505-a62e77a15d00','{\"id\":\"92dd3c91-c739-4fad-9505-a62e77a15d00\",\"name\":\"kc-rest-group-renamed-1788528385\",\"path\":\"/kc-rest-group-renamed-1788528385\",\"subGroups\":[],\"attributes\":{},\"realmRoles\":[],\"clientRoles\":{}}',NULL,'GROUP_MEMBERSHIP','{\"email\":\"updated.1788528385@example.com\",\"username\":\"kc.rest.user.1788528385\"}'),
('8a1b0fda-0690-42fc-8c77-7a05178f05f7',1789043816391,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"notExpire\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"expireDate\",\"displayName\":\"expireDate\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"mac\",\"displayName\":\"mac\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"phoneNumbers\",\"displayName\":\"phoneNumbers\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"company\",\"displayName\":\"company\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('932b74ee-614d-4aff-a0b4-184f301dbea8',1788528434874,'c0899c13-8583-446c-920c-28ff7136f230','DELETE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/1be7635b-9df6-4462-9587-821ee50be064','{\"id\":\"1be7635b-9df6-4462-9587-821ee50be064\",\"username\":\"kc.rest.user.1788528385\"}',NULL,'USER',NULL),
('9ef5b3f5-f45e-48b2-bcdd-3183dc1aa4d8',1789043804956,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"expireDate\",\"displayName\":\"expireDate\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"mac\",\"displayName\":\"mac\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"phoneNumbers\",\"displayName\":\"phoneNumbers\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"company\",\"displayName\":\"company\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('b96bd91a-e607-41be-b42e-9721ed49e15e',1789043721678,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('bc73f7b5-8c68-421f-969a-b2be433d484c',1788528641535,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','groups/dade21e8-c7ef-4661-b7c5-688d7a97576e','{\"id\":\"dade21e8-c7ef-4661-b7c5-688d7a97576e\",\"name\":\"outbound-demo-group-1788528641\",\"subGroups\":[]}',NULL,'GROUP',NULL),
('c7b0d580-a335-48b2-aae6-9d41201a410c',1789043935661,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/d92fdd87-0324-434f-93d3-51ebb96ba1b3','{\"username\":\"aaa\",\"email\":\"\",\"emailVerified\":false,\"attributes\":{\"password\":[\"\"],\"displayName\":[\"\"],\"expireDate\":[\"\"],\"company\":[\"\"],\"mac\":[\"\"],\"phoneNumbers\":[\"\"]},\"enabled\":true,\"requiredActions\":[],\"groups\":[]}',NULL,'USER',NULL),
('c92b9b43-3ee2-4af9-af27-8fa72a9e4c98',1789043794731,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"expireDate\",\"displayName\":\"expireDate\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"mac\",\"displayName\":\"mac\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"phoneNumbers\",\"displayName\":\"phoneNumbers\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('c9d515e3-d527-40aa-a19f-d7853cbe4de1',1789043786942,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"expireDate\",\"displayName\":\"expireDate\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"mac\",\"displayName\":\"mac\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('d4ebfbbc-e937-4583-8a1d-c48cbab9b918',1789043718128,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"lastName\",\"displayName\":\"${lastName}\",\"validations\":{\"length\":{\"max\":255},\"person-name-prohibited-characters\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('e68a38ec-b4b0-4e79-852e-0cb792a27724',1789043730676,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('eb5914fd-3366-469a-bd69-5a52fe98ba1b',1788529427065,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/722dc370-483f-42c9-9faa-293ce641f83b','{\"username\":\"normalized.user.1788529427\",\"firstName\":\"정규화\",\"lastName\":\"테스트\",\"email\":\"normalized.user.1788529427@example.com\",\"enabled\":true}',NULL,'USER',NULL),
('ebbcf181-5ea8-4c8a-a579-90b85363fe78',1788528641502,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/95e7c54a-6df3-4e28-9b70-f7f0a184eeb8','{\"username\":\"outbound.demo.1788528641\",\"firstName\":\"Outbound\",\"lastName\":\"Demo\",\"email\":\"outbound.demo.1788528641@example.com\",\"enabled\":true}',NULL,'USER',NULL),
('f719d461-6440-4717-8d9e-fd2024c08547',1788528365699,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','events/config','{\"eventsEnabled\":true,\"eventsListeners\":[\"jboss-logging\",\"keycloak-scim-outbound\"],\"enabledEventTypes\":[\"LOGIN\",\"LOGIN_ERROR\",\"REGISTER\",\"REGISTER_ERROR\",\"LOGOUT\",\"LOGOUT_ERROR\",\"CODE_TO_TOKEN\",\"CODE_TO_TOKEN_ERROR\",\"CLIENT_LOGIN\",\"CLIENT_LOGIN_ERROR\",\"FEDERATED_IDENTITY_LINK\",\"FEDERATED_IDENTITY_LINK_ERROR\",\"REMOVE_FEDERATED_IDENTITY\",\"REMOVE_FEDERATED_IDENTITY_ERROR\",\"UPDATE_EMAIL\",\"UPDATE_EMAIL_ERROR\",\"UPDATE_PROFILE\",\"UPDATE_PROFILE_ERROR\",\"UPDATE_PASSWORD\",\"UPDATE_PASSWORD_ERROR\",\"UPDATE_TOTP\",\"UPDATE_TOTP_ERROR\",\"VERIFY_EMAIL\",\"VERIFY_EMAIL_ERROR\",\"VERIFY_PROFILE\",\"VERIFY_PROFILE_ERROR\",\"REMOVE_TOTP\",\"REMOVE_TOTP_ERROR\",\"GRANT_CONSENT\",\"GRANT_CONSENT_ERROR\",\"UPDATE_CONSENT\",\"UPDATE_CONSENT_ERROR\",\"REVOKE_GRANT\",\"REVOKE_GRANT_ERROR\",\"SEND_VERIFY_EMAIL\",\"SEND_VERIFY_EMAIL_ERROR\",\"SEND_RESET_PASSWORD\",\"SEND_RESET_PASSWORD_ERROR\",\"SEND_IDENTITY_PROVIDER_LINK\",\"SEND_IDENTITY_PROVIDER_LINK_ERROR\",\"RESET_PASSWORD\",\"RESET_PASSWORD_ERROR\",\"RESTART_AUTHENTICATION\",\"RESTART_AUTHENTICATION_ERROR\",\"IDENTITY_PROVIDER_LINK_ACCOUNT\",\"IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR\",\"IDENTITY_PROVIDER_LOGIN\",\"IDENTITY_PROVIDER_LOGIN_ERROR\",\"IDENTITY_PROVIDER_FIRST_LOGIN\",\"IDENTITY_PROVIDER_FIRST_LOGIN_ERROR\",\"IDENTITY_PROVIDER_POST_LOGIN\",\"IDENTITY_PROVIDER_POST_LOGIN_ERROR\",\"IMPERSONATE\",\"IMPERSONATE_ERROR\",\"CUSTOM_REQUIRED_ACTION\",\"CUSTOM_REQUIRED_ACTION_ERROR\",\"EXECUTE_ACTIONS\",\"EXECUTE_ACTIONS_ERROR\",\"EXECUTE_ACTION_TOKEN\",\"EXECUTE_ACTION_TOKEN_ERROR\",\"CLIENT_REGISTER\",\"CLIENT_REGISTER_ERROR\",\"CLIENT_UPDATE\",\"CLIENT_UPDATE_ERROR\",\"CLIENT_DELETE\",\"CLIENT_DELETE_ERROR\",\"CLIENT_INITIATED_ACCOUNT_LINKING\",\"CLIENT_INITIATED_ACCOUNT_LINKING_ERROR\",\"TOKEN_EXCHANGE\",\"TOKEN_EXCHANGE_ERROR\",\"OAUTH2_DEVICE_AUTH\",\"OAUTH2_DEVICE_AUTH_ERROR\",\"OAUTH2_DEVICE_VERIFY_USER_CODE\",\"OAUTH2_DEVICE_VERIFY_USER_CODE_ERROR\",\"OAUTH2_DEVICE_CODE_TO_TOKEN\",\"OAUTH2_DEVICE_CODE_TO_TOKEN_ERROR\",\"AUTHREQID_TO_TOKEN\",\"AUTHREQID_TO_TOKEN_ERROR\",\"PERMISSION_TOKEN\",\"DELETE_ACCOUNT\",\"DELETE_ACCOUNT_ERROR\",\"USER_DISABLED_BY_PERMANENT_LOCKOUT\",\"USER_DISABLED_BY_TEMPORARY_LOCKOUT\",\"OAUTH2_EXTENSION_GRANT\",\"OAUTH2_EXTENSION_GRANT_ERROR\",\"FEDERATED_IDENTITY_OVERRIDE_LINK\",\"FEDERATED_IDENTITY_OVERRIDE_LINK_ERROR\",\"UPDATE_CREDENTIAL\",\"UPDATE_CREDENTIAL_ERROR\",\"REMOVE_CREDENTIAL\",\"REMOVE_CREDENTIAL_ERROR\",\"INVITE_ORG\",\"INVITE_ORG_ERROR\",\"VERIFIABLE_CREDENTIAL_REQUEST\",\"VERIFIABLE_CREDENTIAL_REQUEST_ERROR\",\"VERIFIABLE_CREDENTIAL_OFFER_REQUEST\",\"VERIFIABLE_CREDENTIAL_OFFER_REQUEST_ERROR\",\"VERIFIABLE_CREDENTIAL_CREATE_OFFER\",\"VERIFIABLE_CREDENTIAL_CREATE_OFFER_ERROR\",\"VERIFIABLE_CREDENTIAL_PRE_AUTHORIZED_GRANT\",\"VERIFIABLE_CREDENTIAL_PRE_AUTHORIZED_GRANT_ERROR\",\"JWT_AUTHORIZATION_GRANT\",\"JWT_AUTHORIZATION_GRANT_ERROR\"],\"adminEventsEnabled\":true,\"adminEventsDetailsEnabled\":true}',NULL,'REALM',NULL),
('f9a11794-71a6-4622-bae1-75d7d82fac4d',1789043847225,'c0899c13-8583-446c-920c-28ff7136f230','UPDATE','c0899c13-8583-446c-920c-28ff7136f230','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/profile','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"notExpire\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"expireDate\",\"displayName\":\"expireDate\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"mac\",\"displayName\":\"mac\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"phoneNumbers\",\"displayName\":\"phoneNumbers\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"company\",\"displayName\":\"company\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"active\",\"displayName\":\"active\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}',NULL,'USER_PROFILE',NULL),
('fe1f0c99-0636-48be-8dd0-99f344950f50',1788528641601,'c0899c13-8583-446c-920c-28ff7136f230','CREATE','c0899c13-8583-446c-920c-28ff7136f230','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c4a621cf-d331-4b28-9887-dbb7bc1d0214','172.18.0.1','users/95e7c54a-6df3-4e28-9b70-f7f0a184eeb8/groups/dade21e8-c7ef-4661-b7c5-688d7a97576e','{\"id\":\"dade21e8-c7ef-4661-b7c5-688d7a97576e\",\"name\":\"outbound-demo-group-1788528641\",\"path\":\"/outbound-demo-group-1788528641\",\"subGroups\":[],\"attributes\":{},\"realmRoles\":[],\"clientRoles\":{}}',NULL,'GROUP_MEMBERSHIP','{\"email\":\"outbound.demo.1788528641@example.com\",\"username\":\"outbound.demo.1788528641\"}');
/*!40000 ALTER TABLE `ADMIN_EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ASSOCIATED_POLICY`
--

DROP TABLE IF EXISTS `ASSOCIATED_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ASSOCIATED_POLICY` (
  `POLICY_ID` varchar(36) NOT NULL,
  `ASSOCIATED_POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`POLICY_ID`,`ASSOCIATED_POLICY_ID`),
  KEY `IDX_ASSOC_POL_ASSOC_POL_ID` (`ASSOCIATED_POLICY_ID`),
  CONSTRAINT `FK_FRSR5S213XCX4WNKOG82SSRFY` FOREIGN KEY (`ASSOCIATED_POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPAS14XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ASSOCIATED_POLICY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ASSOCIATED_POLICY` WRITE;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `ASSOCIATED_POLICY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `AUTHENTICATION_EXECUTION`
--

DROP TABLE IF EXISTS `AUTHENTICATION_EXECUTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_EXECUTION` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `AUTHENTICATOR` varchar(36) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `REQUIREMENT` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `AUTHENTICATOR_FLOW` tinyint(1) NOT NULL DEFAULT 0,
  `AUTH_FLOW_ID` varchar(36) DEFAULT NULL,
  `AUTH_CONFIG` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_EXEC_REALM_FLOW` (`REALM_ID`,`FLOW_ID`),
  KEY `IDX_AUTH_EXEC_FLOW` (`FLOW_ID`),
  CONSTRAINT `FK_AUTH_EXEC_FLOW` FOREIGN KEY (`FLOW_ID`) REFERENCES `AUTHENTICATION_FLOW` (`ID`),
  CONSTRAINT `FK_AUTH_EXEC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_EXECUTION`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `AUTHENTICATION_EXECUTION` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_EXECUTION` VALUES
('08cf8b6f-e998-4d1c-8617-40f73a58cf16',NULL,'reset-password','c0899c13-8583-446c-920c-28ff7136f230','3ec3b392-8ccf-4372-b9d7-ed670243f366',0,30,0,NULL,NULL),
('10c244a9-7e3a-45b4-bf51-a301beeff915',NULL,'conditional-user-configured','c0899c13-8583-446c-920c-28ff7136f230','98959d06-9507-4a01-a2e8-15096a5a51f3',0,10,0,NULL,NULL),
('186c57de-4a4a-4a39-ade2-61900a3dc471',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','5e7aa2b6-8e3b-4452-be78-b368b092b698',0,20,1,'e48a4f98-efbb-4aca-b927-b4a90d6776c0',NULL),
('196e1cb3-06dc-4029-a8ba-d19edbc4e6f0',NULL,'idp-username-password-form','c0899c13-8583-446c-920c-28ff7136f230','49931c74-eac1-4540-8a11-1edcc2fe1a00',0,10,0,NULL,NULL),
('1b0a0327-5cec-494f-821e-864057c5c544',NULL,'registration-recaptcha-action','c0899c13-8583-446c-920c-28ff7136f230','3256d709-ad89-4cf8-8f56-d3dcac312e88',3,60,0,NULL,NULL),
('230d7a76-75f4-48ed-8fa5-82e945c19f2f',NULL,'auth-otp-form','c0899c13-8583-446c-920c-28ff7136f230','e0aef1ee-ce76-4acd-b381-a68663b475cc',2,30,0,NULL,NULL),
('2689abc1-b65e-420c-b1cc-758a0c0ebfbd',NULL,'conditional-user-configured','c0899c13-8583-446c-920c-28ff7136f230','e0aef1ee-ce76-4acd-b381-a68663b475cc',0,10,0,NULL,NULL),
('26baa276-c136-4e8d-b84f-886bbd3272a9',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','d057d1c3-8eb4-4e74-b695-223d1efd6b14',2,20,1,'49931c74-eac1-4540-8a11-1edcc2fe1a00',NULL),
('274d59fb-1386-4cd9-b1b3-9cb1f0831675',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','82352f0e-14f6-41e9-8cf3-6d5bf67a3a9b',0,20,1,'d057d1c3-8eb4-4e74-b695-223d1efd6b14',NULL),
('32882a51-0ae3-484b-a7a3-78e8668fa6df',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','ee411b99-9f8a-4481-8dc3-c2c967db0092',1,20,1,'62d2ccb6-79b9-48bb-97ca-fb44dd8b2f2a',NULL),
('32f94d95-5c65-40c6-8cb2-c582761eae3e',NULL,'conditional-user-configured','c0899c13-8583-446c-920c-28ff7136f230','0fe7a5c7-c526-496f-96b4-d7e4c4b5e2a2',0,10,0,NULL,NULL),
('369e80f5-0906-4728-8247-1872baa50467',NULL,'conditional-user-configured','c0899c13-8583-446c-920c-28ff7136f230','62d2ccb6-79b9-48bb-97ca-fb44dd8b2f2a',0,10,0,NULL,NULL),
('3a011659-7a95-4902-8190-ecaebcda4d03',NULL,'registration-page-form','c0899c13-8583-446c-920c-28ff7136f230','a9c49f93-7a64-4874-9eb6-dcf16729d37e',0,10,1,'3256d709-ad89-4cf8-8f56-d3dcac312e88',NULL),
('4454b85a-4e6d-4601-aad2-597621cd373c',NULL,'auth-recovery-authn-code-form','c0899c13-8583-446c-920c-28ff7136f230','62d2ccb6-79b9-48bb-97ca-fb44dd8b2f2a',3,50,0,NULL,NULL),
('464baeee-21c4-40ae-8f3c-194748b15e2c',NULL,'direct-grant-validate-username','c0899c13-8583-446c-920c-28ff7136f230','3d6ce569-d557-4e34-9d2d-9404d0da02d7',0,10,0,NULL,NULL),
('4b387a29-d51e-4b36-89b1-e20505936bfe',NULL,'auth-spnego','c0899c13-8583-446c-920c-28ff7136f230','b7ae33ee-f549-4d2c-947f-6186cb7d3599',3,20,0,NULL,NULL),
('56b7104f-3109-44f8-bf3d-cacaabeb482d',NULL,'client-secret','c0899c13-8583-446c-920c-28ff7136f230','40057b89-d7fc-4fc3-a995-d7f3f3225f28',2,10,0,NULL,NULL),
('5854e0b9-7cae-466a-8fe6-8101176d6dde',NULL,'reset-credentials-choose-user','c0899c13-8583-446c-920c-28ff7136f230','3ec3b392-8ccf-4372-b9d7-ed670243f366',0,10,0,NULL,NULL),
('61637639-c602-46e6-9ebf-7f6139c5ed39',NULL,'idp-confirm-link','c0899c13-8583-446c-920c-28ff7136f230','82352f0e-14f6-41e9-8cf3-6d5bf67a3a9b',0,10,0,NULL,NULL),
('650f5545-1a09-469f-aba0-e3db9d2b7be8',NULL,'docker-http-basic-authenticator','c0899c13-8583-446c-920c-28ff7136f230','87e37d1c-2ee2-45e9-9566-c8ce81bb9428',0,10,0,NULL,NULL),
('69289099-fde5-41d3-8c90-92db0dc5800b',NULL,'idp-email-verification','c0899c13-8583-446c-920c-28ff7136f230','d057d1c3-8eb4-4e74-b695-223d1efd6b14',2,10,0,NULL,NULL),
('72110ad5-f764-4736-a35b-6483d6197d95',NULL,'idp-review-profile','c0899c13-8583-446c-920c-28ff7136f230','5e7aa2b6-8e3b-4452-be78-b368b092b698',0,10,0,NULL,'30f39e67-e90d-4baf-9da4-c5b3a2403115'),
('73845eab-4f51-4bf2-85b0-ad9af4a82b51',NULL,'direct-grant-validate-otp','c0899c13-8583-446c-920c-28ff7136f230','0fe7a5c7-c526-496f-96b4-d7e4c4b5e2a2',0,20,0,NULL,NULL),
('7b1074c3-6a82-4e45-bce5-4924603295d9',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','e48a4f98-efbb-4aca-b927-b4a90d6776c0',2,20,1,'82352f0e-14f6-41e9-8cf3-6d5bf67a3a9b',NULL),
('82fdefc6-aedf-4eb2-8d36-67e1979fe2cb',NULL,'client-jwt','c0899c13-8583-446c-920c-28ff7136f230','40057b89-d7fc-4fc3-a995-d7f3f3225f28',2,20,0,NULL,NULL),
('8e02a9d3-e824-44e0-a777-685f481a29b5',NULL,'client-secret-jwt','c0899c13-8583-446c-920c-28ff7136f230','40057b89-d7fc-4fc3-a995-d7f3f3225f28',2,30,0,NULL,NULL),
('8fd5f222-9c7f-4094-8ff8-c326d7bc9c66',NULL,'registration-terms-and-conditions','c0899c13-8583-446c-920c-28ff7136f230','3256d709-ad89-4cf8-8f56-d3dcac312e88',3,70,0,NULL,NULL),
('915c879c-4d6a-4289-9d66-dd247dc1dce5',NULL,'auth-otp-form','c0899c13-8583-446c-920c-28ff7136f230','62d2ccb6-79b9-48bb-97ca-fb44dd8b2f2a',2,30,0,NULL,NULL),
('9dc204f9-b8df-46b2-bce6-d38fd00f5457',NULL,'idp-create-user-if-unique','c0899c13-8583-446c-920c-28ff7136f230','e48a4f98-efbb-4aca-b927-b4a90d6776c0',2,10,0,NULL,'ed97db10-5242-4321-9b3f-300c9d730b04'),
('a32ba837-dbfc-472b-a5ac-bd0f18d1ce55',NULL,'reset-credential-email','c0899c13-8583-446c-920c-28ff7136f230','3ec3b392-8ccf-4372-b9d7-ed670243f366',0,20,0,NULL,NULL),
('a37dd7d9-ba9c-4b63-9ebb-38e9d89e9df0',NULL,'auth-recovery-authn-code-form','c0899c13-8583-446c-920c-28ff7136f230','e0aef1ee-ce76-4acd-b381-a68663b475cc',3,50,0,NULL,NULL),
('a60f0760-677b-44bd-a054-f99b2b438827',NULL,'conditional-credential','c0899c13-8583-446c-920c-28ff7136f230','62d2ccb6-79b9-48bb-97ca-fb44dd8b2f2a',0,20,0,NULL,'bbd0780e-2413-4bea-877c-f7ec9a79f9ec'),
('b77d21f4-644d-4785-9a9f-3bf2bf1e0b2c',NULL,'direct-grant-validate-password','c0899c13-8583-446c-920c-28ff7136f230','3d6ce569-d557-4e34-9d2d-9404d0da02d7',0,20,0,NULL,NULL),
('ba76bb10-dcee-469b-bcf6-0cd42fc55b40',NULL,'webauthn-authenticator','c0899c13-8583-446c-920c-28ff7136f230','e0aef1ee-ce76-4acd-b381-a68663b475cc',3,40,0,NULL,NULL),
('c184e9dd-247d-4afc-a0eb-ed50c77101c7',NULL,'auth-username-password-form','c0899c13-8583-446c-920c-28ff7136f230','ee411b99-9f8a-4481-8dc3-c2c967db0092',0,10,0,NULL,NULL),
('c7ea5466-610a-421d-bd53-c05f9b2ed919',NULL,'http-basic-authenticator','c0899c13-8583-446c-920c-28ff7136f230','33fdaccc-0ae8-45b1-b720-d9649bd77762',0,10,0,NULL,NULL),
('cca9a26d-b9c4-498d-bdf3-db73816eb8b8',NULL,'identity-provider-redirector','c0899c13-8583-446c-920c-28ff7136f230','b7ae33ee-f549-4d2c-947f-6186cb7d3599',2,25,0,NULL,NULL),
('cea1eae0-31b9-4a41-b4e3-7b834e31a8a1',NULL,'federated-jwt','c0899c13-8583-446c-920c-28ff7136f230','40057b89-d7fc-4fc3-a995-d7f3f3225f28',2,50,0,NULL,NULL),
('d33bfa4f-325b-4c0b-8345-ef72ada3b2b9',NULL,'webauthn-authenticator','c0899c13-8583-446c-920c-28ff7136f230','62d2ccb6-79b9-48bb-97ca-fb44dd8b2f2a',3,40,0,NULL,NULL),
('d398c493-db42-44be-aeb1-8874c3026459',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','b7ae33ee-f549-4d2c-947f-6186cb7d3599',2,30,1,'ee411b99-9f8a-4481-8dc3-c2c967db0092',NULL),
('d3f0acff-dfac-4815-adfb-f5d37c1c576c',NULL,'client-x509','c0899c13-8583-446c-920c-28ff7136f230','40057b89-d7fc-4fc3-a995-d7f3f3225f28',2,40,0,NULL,NULL),
('e05149e3-6abf-4dbc-8ed0-91fc4eecdd0d',NULL,'registration-user-creation','c0899c13-8583-446c-920c-28ff7136f230','3256d709-ad89-4cf8-8f56-d3dcac312e88',0,20,0,NULL,NULL),
('e2bda1de-c4b2-407e-a78b-a3c61a7b1f3c',NULL,'registration-password-action','c0899c13-8583-446c-920c-28ff7136f230','3256d709-ad89-4cf8-8f56-d3dcac312e88',0,50,0,NULL,NULL),
('e3a666fe-0b04-44bb-a0b0-f73fccfd2037',NULL,'reset-otp','c0899c13-8583-446c-920c-28ff7136f230','98959d06-9507-4a01-a2e8-15096a5a51f3',0,20,0,NULL,NULL),
('e3b32bc1-8941-4af6-896c-8bf8bb613ebb',NULL,'conditional-credential','c0899c13-8583-446c-920c-28ff7136f230','e0aef1ee-ce76-4acd-b381-a68663b475cc',0,20,0,NULL,'44eca404-6ddd-4842-8dcb-55385567bf87'),
('e44d443b-6660-4bd0-a55c-48b3d1080174',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','3ec3b392-8ccf-4372-b9d7-ed670243f366',1,40,1,'98959d06-9507-4a01-a2e8-15096a5a51f3',NULL),
('e4e63a56-2c72-4494-8047-b4201d61b175',NULL,'auth-cookie','c0899c13-8583-446c-920c-28ff7136f230','b7ae33ee-f549-4d2c-947f-6186cb7d3599',2,10,0,NULL,NULL),
('f0e8b123-344c-4eed-b9ca-83e366339d7a',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','49931c74-eac1-4540-8a11-1edcc2fe1a00',1,20,1,'e0aef1ee-ce76-4acd-b381-a68663b475cc',NULL),
('f7ce38a9-35e6-4da1-a455-6494b3e8a747',NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','3d6ce569-d557-4e34-9d2d-9404d0da02d7',1,30,1,'0fe7a5c7-c526-496f-96b4-d7e4c4b5e2a2',NULL);
/*!40000 ALTER TABLE `AUTHENTICATION_EXECUTION` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `AUTHENTICATION_FLOW`
--

DROP TABLE IF EXISTS `AUTHENTICATION_FLOW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATION_FLOW` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) NOT NULL DEFAULT 'basic-flow',
  `TOP_LEVEL` tinyint(1) NOT NULL DEFAULT 0,
  `BUILT_IN` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_FLOW_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_FLOW_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATION_FLOW`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `AUTHENTICATION_FLOW` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` DISABLE KEYS */;
INSERT INTO `AUTHENTICATION_FLOW` VALUES
('0fe7a5c7-c526-496f-96b4-d7e4c4b5e2a2','Direct Grant - Conditional OTP','Flow to determine if the OTP is required for the authentication','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1),
('3256d709-ad89-4cf8-8f56-d3dcac312e88','registration form','Registration form','c0899c13-8583-446c-920c-28ff7136f230','form-flow',0,1),
('33fdaccc-0ae8-45b1-b720-d9649bd77762','saml ecp','SAML ECP Profile Authentication Flow','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',1,1),
('3d6ce569-d557-4e34-9d2d-9404d0da02d7','direct grant','OpenID Connect Resource Owner Grant','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',1,1),
('3ec3b392-8ccf-4372-b9d7-ed670243f366','reset credentials','Reset credentials for a user if they forgot their password or something','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',1,1),
('40057b89-d7fc-4fc3-a995-d7f3f3225f28','clients','Base authentication for clients','c0899c13-8583-446c-920c-28ff7136f230','client-flow',1,1),
('49931c74-eac1-4540-8a11-1edcc2fe1a00','Verify Existing Account by Re-authentication','Reauthentication of existing account','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1),
('5e7aa2b6-8e3b-4452-be78-b368b092b698','first broker login','Actions taken after first broker login with identity provider account, which is not yet linked to any Keycloak account','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',1,1),
('62d2ccb6-79b9-48bb-97ca-fb44dd8b2f2a','Browser - Conditional 2FA','Flow to determine if any 2FA is required for the authentication','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1),
('82352f0e-14f6-41e9-8cf3-6d5bf67a3a9b','Handle Existing Account','Handle what to do if there is existing account with same email/username like authenticated identity provider','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1),
('87e37d1c-2ee2-45e9-9566-c8ce81bb9428','docker auth','Used by Docker clients to authenticate against the IDP','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',1,1),
('98959d06-9507-4a01-a2e8-15096a5a51f3','Reset - Conditional OTP','Flow to determine if the OTP should be reset or not. Set to REQUIRED to force.','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1),
('a9c49f93-7a64-4874-9eb6-dcf16729d37e','registration','Registration flow','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',1,1),
('b7ae33ee-f549-4d2c-947f-6186cb7d3599','browser','Browser based authentication','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',1,1),
('d057d1c3-8eb4-4e74-b695-223d1efd6b14','Account verification options','Method with which to verify the existing account','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1),
('e0aef1ee-ce76-4acd-b381-a68663b475cc','First broker login - Conditional 2FA','Flow to determine if any 2FA is required for the authentication','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1),
('e48a4f98-efbb-4aca-b927-b4a90d6776c0','User creation or linking','Flow for the existing/non-existing user alternatives','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1),
('ee411b99-9f8a-4481-8dc3-c2c967db0092','forms','Username, password, otp and other auth forms.','c0899c13-8583-446c-920c-28ff7136f230','basic-flow',0,1);
/*!40000 ALTER TABLE `AUTHENTICATION_FLOW` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `AUTHENTICATOR_CONFIG`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATOR_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_AUTH_CONFIG_REALM` (`REALM_ID`),
  CONSTRAINT `FK_AUTH_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `AUTHENTICATOR_CONFIG` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG` VALUES
('30f39e67-e90d-4baf-9da4-c5b3a2403115','review profile config','c0899c13-8583-446c-920c-28ff7136f230'),
('44eca404-6ddd-4842-8dcb-55385567bf87','first-broker-login-conditional-credential','c0899c13-8583-446c-920c-28ff7136f230'),
('bbd0780e-2413-4bea-877c-f7ec9a79f9ec','browser-conditional-credential','c0899c13-8583-446c-920c-28ff7136f230'),
('ed97db10-5242-4321-9b3f-300c9d730b04','create unique user config','c0899c13-8583-446c-920c-28ff7136f230');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `AUTHENTICATOR_CONFIG_ENTRY`
--

DROP TABLE IF EXISTS `AUTHENTICATOR_CONFIG_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTHENTICATOR_CONFIG_ENTRY` (
  `AUTHENTICATOR_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`AUTHENTICATOR_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTHENTICATOR_CONFIG_ENTRY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `AUTHENTICATOR_CONFIG_ENTRY` WRITE;
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` DISABLE KEYS */;
INSERT INTO `AUTHENTICATOR_CONFIG_ENTRY` VALUES
('30f39e67-e90d-4baf-9da4-c5b3a2403115','missing','update.profile.on.first.login'),
('44eca404-6ddd-4842-8dcb-55385567bf87','webauthn-passwordless','credentials'),
('bbd0780e-2413-4bea-877c-f7ec9a79f9ec','webauthn-passwordless','credentials'),
('ed97db10-5242-4321-9b3f-300c9d730b04','false','require.password.update.after.registration');
/*!40000 ALTER TABLE `AUTHENTICATOR_CONFIG_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `AUTH_SESSION`
--

DROP TABLE IF EXISTS `AUTH_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `AUTH_SESSION` (
  `ROOT_AUTH_SESSION_ID` varchar(36) NOT NULL,
  `TAB_ID` varchar(36) NOT NULL,
  `CLIENT_UUID` varchar(255) DEFAULT NULL,
  `AUTH_USER_ID` varchar(255) DEFAULT NULL,
  `TIMESTAMP` bigint(20) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  `REDIRECT_URI` text DEFAULT NULL,
  `ACTION` varchar(255) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `CLIENT_SCOPES` text DEFAULT NULL,
  `EXECUTION_STATUS` text DEFAULT NULL,
  `CLIENT_NOTES` text DEFAULT NULL,
  `AUTH_NOTES` text DEFAULT NULL,
  `REQUIRED_ACTIONS` text DEFAULT NULL,
  `USER_SESSION_NOTES` text DEFAULT NULL,
  PRIMARY KEY (`ROOT_AUTH_SESSION_ID`,`TAB_ID`),
  CONSTRAINT `FK_AUTH_SESSION_ROOT` FOREIGN KEY (`ROOT_AUTH_SESSION_ID`) REFERENCES `ROOT_AUTH_SESSION` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AUTH_SESSION`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `AUTH_SESSION` WRITE;
/*!40000 ALTER TABLE `AUTH_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `AUTH_SESSION` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `BROKER_LINK`
--

DROP TABLE IF EXISTS `BROKER_LINK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `BROKER_LINK` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `BROKER_USER_ID` varchar(255) DEFAULT NULL,
  `BROKER_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_BROKER_LINK_USER_ID` (`USER_ID`),
  KEY `IDX_BROKER_LINK_IDENTITY_PROVIDER` (`REALM_ID`,`IDENTITY_PROVIDER`,`BROKER_USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BROKER_LINK`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `BROKER_LINK` WRITE;
/*!40000 ALTER TABLE `BROKER_LINK` DISABLE KEYS */;
/*!40000 ALTER TABLE `BROKER_LINK` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT`
--

DROP TABLE IF EXISTS `CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT` (
  `ID` varchar(36) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `FULL_SCOPE_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PUBLIC_CLIENT` tinyint(1) NOT NULL DEFAULT 0,
  `SECRET` varchar(255) DEFAULT NULL,
  `BASE_URL` varchar(255) DEFAULT NULL,
  `BEARER_ONLY` tinyint(1) NOT NULL DEFAULT 0,
  `MANAGEMENT_URL` varchar(255) DEFAULT NULL,
  `SURROGATE_AUTH_REQUIRED` tinyint(1) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  `NODE_REREG_TIMEOUT` int(11) DEFAULT 0,
  `FRONTCHANNEL_LOGOUT` tinyint(1) NOT NULL DEFAULT 0,
  `CONSENT_REQUIRED` tinyint(1) NOT NULL DEFAULT 0,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `SERVICE_ACCOUNTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `CLIENT_AUTHENTICATOR_TYPE` varchar(255) DEFAULT NULL,
  `ROOT_URL` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `REGISTRATION_TOKEN` varchar(255) DEFAULT NULL,
  `STANDARD_FLOW_ENABLED` tinyint(1) NOT NULL DEFAULT 1,
  `IMPLICIT_FLOW_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DIRECT_ACCESS_GRANTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `ALWAYS_DISPLAY_IN_CONSOLE` tinyint(1) NOT NULL DEFAULT 0,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `LAST_MODIFIED_TIMESTAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_B71CJLBENV945RB6GCON438AT` (`REALM_ID`,`CLIENT_ID`),
  KEY `IDX_CLIENT_ID` (`CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT` VALUES
('18c5eaf6-7675-4164-81f5-842f39b901a8',1,0,'account-console',0,1,NULL,'/realms/master/account/',0,NULL,0,'c0899c13-8583-446c-920c-28ff7136f230','openid-connect',0,0,0,'${client_account-console}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0,1788526611891,1788526611908),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,0,'account',0,1,NULL,'/realms/master/account/',0,NULL,0,'c0899c13-8583-446c-920c-28ff7136f230','openid-connect',0,0,0,'${client_account}',0,'client-secret','${authBaseUrl}',NULL,NULL,1,0,0,0,1788526611819,1788526611840),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b',1,0,'broker',0,0,NULL,NULL,1,NULL,0,'c0899c13-8583-446c-920c-28ff7136f230','openid-connect',0,0,0,'${client_broker}',0,'client-secret',NULL,NULL,NULL,1,0,0,0,1788526611922,1788526611942),
('956788ee-bb07-4062-afef-55c2182709d9',1,0,'master-realm',0,0,NULL,NULL,1,NULL,0,'c0899c13-8583-446c-920c-28ff7136f230',NULL,0,0,0,'master Realm',0,'client-secret',NULL,NULL,NULL,1,0,0,0,1788526611697,1788526611703),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a',1,1,'admin-cli',0,1,NULL,NULL,0,NULL,0,'c0899c13-8583-446c-920c-28ff7136f230','openid-connect',0,0,0,'${client_admin-cli}',0,'client-secret',NULL,NULL,NULL,0,0,1,0,1788526611981,1788526612002),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1',1,1,'security-admin-console',0,1,NULL,'/admin/master/console/',0,NULL,0,'c0899c13-8583-446c-920c-28ff7136f230','openid-connect',0,0,0,'${client_security-admin-console}',0,'client-secret','${authAdminUrl}',NULL,NULL,1,0,0,0,1788526611948,1788526611965);
/*!40000 ALTER TABLE `CLIENT` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_ATTRIBUTES` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  KEY `IDX_CLIENT_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`(255)),
  CONSTRAINT `FK3C47C64BEACCA966` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_ATTRIBUTES`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_ATTRIBUTES` VALUES
('18c5eaf6-7675-4164-81f5-842f39b901a8','pkce.code.challenge.method','S256'),
('18c5eaf6-7675-4164-81f5-842f39b901a8','post.logout.redirect.uris','+'),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','post.logout.redirect.uris','+'),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','client.use.lightweight.access.token.enabled','true'),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','client.use.lightweight.access.token.enabled','true'),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','pkce.code.challenge.method','S256'),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','post.logout.redirect.uris','+');
/*!40000 ALTER TABLE `CLIENT_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT_AUTH_FLOW_BINDINGS`
--

DROP TABLE IF EXISTS `CLIENT_AUTH_FLOW_BINDINGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_AUTH_FLOW_BINDINGS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `FLOW_ID` varchar(36) DEFAULT NULL,
  `BINDING_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`BINDING_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_AUTH_FLOW_BINDINGS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT_AUTH_FLOW_BINDINGS` WRITE;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_AUTH_FLOW_BINDINGS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT_INITIAL_ACCESS`
--

DROP TABLE IF EXISTS `CLIENT_INITIAL_ACCESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_INITIAL_ACCESS` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `EXPIRATION` int(11) DEFAULT NULL,
  `COUNT` int(11) DEFAULT NULL,
  `REMAINING_COUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_CLIENT_INIT_ACC_REALM` (`REALM_ID`),
  CONSTRAINT `FK_CLIENT_INIT_ACC_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_INITIAL_ACCESS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT_INITIAL_ACCESS` WRITE;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_INITIAL_ACCESS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT_NODE_REGISTRATIONS`
--

DROP TABLE IF EXISTS `CLIENT_NODE_REGISTRATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_NODE_REGISTRATIONS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` int(11) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`NAME`),
  CONSTRAINT `FK4129723BA992F594` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_NODE_REGISTRATIONS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT_NODE_REGISTRATIONS` WRITE;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLIENT_NODE_REGISTRATIONS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `PROTOCOL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_CLI_SCOPE` (`REALM_ID`,`NAME`),
  KEY `IDX_REALM_CLSCOPE` (`REALM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE` VALUES
('06956a58-3b2b-4f3f-b679-1368533a5861','role_list','c0899c13-8583-446c-920c-28ff7136f230','SAML role list','saml'),
('0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6','address','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect built-in scope: address','openid-connect'),
('265b69e1-8f89-4d7c-99a0-6385bbeb7627','saml_organization','c0899c13-8583-446c-920c-28ff7136f230','Organization Membership','saml'),
('49bc5502-f03b-4a64-aa31-10d953b2fddb','web-origins','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect scope for add allowed web origins to the access token','openid-connect'),
('4af42db0-9452-410d-b946-7309f7bd2ffe','basic','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect scope for add all basic claims to the token','openid-connect'),
('696aad78-490f-41da-bed3-8d83ad79a338','service_account','c0899c13-8583-446c-920c-28ff7136f230','Specific scope for a client enabled for service accounts','openid-connect'),
('700274d0-a9b7-4b4c-8dab-72446cdd0403','roles','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect scope for add user roles to the access token','openid-connect'),
('8048abc3-6367-4a30-b526-9fcd0b3299fd','email','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect built-in scope: email','openid-connect'),
('a7b78314-4682-443d-9835-21ede122b0e8','microprofile-jwt','c0899c13-8583-446c-920c-28ff7136f230','Microprofile - JWT built-in scope','openid-connect'),
('afa57da3-1193-45fc-90ce-fb94ec0a49ec','profile','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect built-in scope: profile','openid-connect'),
('b5b76f02-f456-4572-8431-e13def7ce4bd','organization','c0899c13-8583-446c-920c-28ff7136f230','Additional claims about the organization a subject belongs to','openid-connect'),
('c69d9d1a-b51d-4dca-904b-7e955b12fa2f','phone','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect built-in scope: phone','openid-connect'),
('cebbb767-9b22-4835-b465-e736fa3fa970','offline_access','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect built-in scope: offline_access','openid-connect'),
('d20427fc-dafe-40e9-8230-bd5c1906c7b2','AuthnContextClassRef','c0899c13-8583-446c-920c-28ff7136f230','AuthnContextClassRef Level of Authentiation','saml'),
('fd8508e5-0739-498f-9d07-0c2fbceab464','acr','c0899c13-8583-446c-920c-28ff7136f230','OpenID Connect scope for add acr (authentication context class reference) to the token','openid-connect');
/*!40000 ALTER TABLE `CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT_SCOPE_ATTRIBUTES`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_ATTRIBUTES` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `VALUE` text DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`NAME`),
  KEY `IDX_CLSCOPE_ATTRS` (`SCOPE_ID`),
  CONSTRAINT `FK_CL_SCOPE_ATTR_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ATTRIBUTES`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT_SCOPE_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ATTRIBUTES` VALUES
('06956a58-3b2b-4f3f-b679-1368533a5861','${samlRoleListScopeConsentText}','consent.screen.text'),
('06956a58-3b2b-4f3f-b679-1368533a5861','true','display.on.consent.screen'),
('0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6','${addressScopeConsentText}','consent.screen.text'),
('0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6','true','display.on.consent.screen'),
('0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6','true','include.in.token.scope'),
('265b69e1-8f89-4d7c-99a0-6385bbeb7627','false','display.on.consent.screen'),
('49bc5502-f03b-4a64-aa31-10d953b2fddb','','consent.screen.text'),
('49bc5502-f03b-4a64-aa31-10d953b2fddb','false','display.on.consent.screen'),
('49bc5502-f03b-4a64-aa31-10d953b2fddb','false','include.in.token.scope'),
('4af42db0-9452-410d-b946-7309f7bd2ffe','false','display.on.consent.screen'),
('4af42db0-9452-410d-b946-7309f7bd2ffe','false','include.in.token.scope'),
('696aad78-490f-41da-bed3-8d83ad79a338','false','display.on.consent.screen'),
('696aad78-490f-41da-bed3-8d83ad79a338','false','include.in.token.scope'),
('700274d0-a9b7-4b4c-8dab-72446cdd0403','${rolesScopeConsentText}','consent.screen.text'),
('700274d0-a9b7-4b4c-8dab-72446cdd0403','true','display.on.consent.screen'),
('700274d0-a9b7-4b4c-8dab-72446cdd0403','false','include.in.token.scope'),
('8048abc3-6367-4a30-b526-9fcd0b3299fd','${emailScopeConsentText}','consent.screen.text'),
('8048abc3-6367-4a30-b526-9fcd0b3299fd','true','display.on.consent.screen'),
('8048abc3-6367-4a30-b526-9fcd0b3299fd','true','include.in.token.scope'),
('a7b78314-4682-443d-9835-21ede122b0e8','false','display.on.consent.screen'),
('a7b78314-4682-443d-9835-21ede122b0e8','true','include.in.token.scope'),
('afa57da3-1193-45fc-90ce-fb94ec0a49ec','${profileScopeConsentText}','consent.screen.text'),
('afa57da3-1193-45fc-90ce-fb94ec0a49ec','true','display.on.consent.screen'),
('afa57da3-1193-45fc-90ce-fb94ec0a49ec','true','include.in.token.scope'),
('b5b76f02-f456-4572-8431-e13def7ce4bd','${organizationScopeConsentText}','consent.screen.text'),
('b5b76f02-f456-4572-8431-e13def7ce4bd','true','display.on.consent.screen'),
('b5b76f02-f456-4572-8431-e13def7ce4bd','true','include.in.token.scope'),
('c69d9d1a-b51d-4dca-904b-7e955b12fa2f','${phoneScopeConsentText}','consent.screen.text'),
('c69d9d1a-b51d-4dca-904b-7e955b12fa2f','true','display.on.consent.screen'),
('c69d9d1a-b51d-4dca-904b-7e955b12fa2f','true','include.in.token.scope'),
('cebbb767-9b22-4835-b465-e736fa3fa970','${offlineAccessScopeConsentText}','consent.screen.text'),
('cebbb767-9b22-4835-b465-e736fa3fa970','true','display.on.consent.screen'),
('fd8508e5-0739-498f-9d07-0c2fbceab464','false','display.on.consent.screen'),
('fd8508e5-0739-498f-9d07-0c2fbceab464','false','include.in.token.scope');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT_SCOPE_CLIENT`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_CLIENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_CLIENT` (
  `CLIENT_ID` varchar(255) NOT NULL,
  `SCOPE_ID` varchar(255) NOT NULL,
  `DEFAULT_SCOPE` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`CLIENT_ID`,`SCOPE_ID`),
  KEY `IDX_CLSCOPE_CL` (`CLIENT_ID`),
  KEY `IDX_CL_CLSCOPE` (`SCOPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_CLIENT`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT_SCOPE_CLIENT` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_CLIENT` VALUES
('18c5eaf6-7675-4164-81f5-842f39b901a8','0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6',0),
('18c5eaf6-7675-4164-81f5-842f39b901a8','49bc5502-f03b-4a64-aa31-10d953b2fddb',1),
('18c5eaf6-7675-4164-81f5-842f39b901a8','4af42db0-9452-410d-b946-7309f7bd2ffe',1),
('18c5eaf6-7675-4164-81f5-842f39b901a8','700274d0-a9b7-4b4c-8dab-72446cdd0403',1),
('18c5eaf6-7675-4164-81f5-842f39b901a8','8048abc3-6367-4a30-b526-9fcd0b3299fd',1),
('18c5eaf6-7675-4164-81f5-842f39b901a8','a7b78314-4682-443d-9835-21ede122b0e8',0),
('18c5eaf6-7675-4164-81f5-842f39b901a8','afa57da3-1193-45fc-90ce-fb94ec0a49ec',1),
('18c5eaf6-7675-4164-81f5-842f39b901a8','b5b76f02-f456-4572-8431-e13def7ce4bd',0),
('18c5eaf6-7675-4164-81f5-842f39b901a8','c69d9d1a-b51d-4dca-904b-7e955b12fa2f',0),
('18c5eaf6-7675-4164-81f5-842f39b901a8','cebbb767-9b22-4835-b465-e736fa3fa970',0),
('18c5eaf6-7675-4164-81f5-842f39b901a8','fd8508e5-0739-498f-9d07-0c2fbceab464',1),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6',0),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','49bc5502-f03b-4a64-aa31-10d953b2fddb',1),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','4af42db0-9452-410d-b946-7309f7bd2ffe',1),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','700274d0-a9b7-4b4c-8dab-72446cdd0403',1),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','8048abc3-6367-4a30-b526-9fcd0b3299fd',1),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','a7b78314-4682-443d-9835-21ede122b0e8',0),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','afa57da3-1193-45fc-90ce-fb94ec0a49ec',1),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','b5b76f02-f456-4572-8431-e13def7ce4bd',0),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','c69d9d1a-b51d-4dca-904b-7e955b12fa2f',0),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','cebbb767-9b22-4835-b465-e736fa3fa970',0),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','fd8508e5-0739-498f-9d07-0c2fbceab464',1),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6',0),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','49bc5502-f03b-4a64-aa31-10d953b2fddb',1),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','4af42db0-9452-410d-b946-7309f7bd2ffe',1),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','700274d0-a9b7-4b4c-8dab-72446cdd0403',1),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','8048abc3-6367-4a30-b526-9fcd0b3299fd',1),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','a7b78314-4682-443d-9835-21ede122b0e8',0),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','afa57da3-1193-45fc-90ce-fb94ec0a49ec',1),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','b5b76f02-f456-4572-8431-e13def7ce4bd',0),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','c69d9d1a-b51d-4dca-904b-7e955b12fa2f',0),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','cebbb767-9b22-4835-b465-e736fa3fa970',0),
('804f50f5-7983-4c3d-b0a3-ca338e72e07b','fd8508e5-0739-498f-9d07-0c2fbceab464',1),
('956788ee-bb07-4062-afef-55c2182709d9','0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6',0),
('956788ee-bb07-4062-afef-55c2182709d9','49bc5502-f03b-4a64-aa31-10d953b2fddb',1),
('956788ee-bb07-4062-afef-55c2182709d9','4af42db0-9452-410d-b946-7309f7bd2ffe',1),
('956788ee-bb07-4062-afef-55c2182709d9','700274d0-a9b7-4b4c-8dab-72446cdd0403',1),
('956788ee-bb07-4062-afef-55c2182709d9','8048abc3-6367-4a30-b526-9fcd0b3299fd',1),
('956788ee-bb07-4062-afef-55c2182709d9','a7b78314-4682-443d-9835-21ede122b0e8',0),
('956788ee-bb07-4062-afef-55c2182709d9','afa57da3-1193-45fc-90ce-fb94ec0a49ec',1),
('956788ee-bb07-4062-afef-55c2182709d9','b5b76f02-f456-4572-8431-e13def7ce4bd',0),
('956788ee-bb07-4062-afef-55c2182709d9','c69d9d1a-b51d-4dca-904b-7e955b12fa2f',0),
('956788ee-bb07-4062-afef-55c2182709d9','cebbb767-9b22-4835-b465-e736fa3fa970',0),
('956788ee-bb07-4062-afef-55c2182709d9','fd8508e5-0739-498f-9d07-0c2fbceab464',1),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6',0),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','49bc5502-f03b-4a64-aa31-10d953b2fddb',1),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','4af42db0-9452-410d-b946-7309f7bd2ffe',1),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','700274d0-a9b7-4b4c-8dab-72446cdd0403',1),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','8048abc3-6367-4a30-b526-9fcd0b3299fd',1),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','a7b78314-4682-443d-9835-21ede122b0e8',0),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','afa57da3-1193-45fc-90ce-fb94ec0a49ec',1),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','b5b76f02-f456-4572-8431-e13def7ce4bd',0),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','c69d9d1a-b51d-4dca-904b-7e955b12fa2f',0),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','cebbb767-9b22-4835-b465-e736fa3fa970',0),
('eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','fd8508e5-0739-498f-9d07-0c2fbceab464',1),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6',0),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','49bc5502-f03b-4a64-aa31-10d953b2fddb',1),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','4af42db0-9452-410d-b946-7309f7bd2ffe',1),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','700274d0-a9b7-4b4c-8dab-72446cdd0403',1),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','8048abc3-6367-4a30-b526-9fcd0b3299fd',1),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','a7b78314-4682-443d-9835-21ede122b0e8',0),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','afa57da3-1193-45fc-90ce-fb94ec0a49ec',1),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','b5b76f02-f456-4572-8431-e13def7ce4bd',0),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','c69d9d1a-b51d-4dca-904b-7e955b12fa2f',0),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','cebbb767-9b22-4835-b465-e736fa3fa970',0),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','fd8508e5-0739-498f-9d07-0c2fbceab464',1);
/*!40000 ALTER TABLE `CLIENT_SCOPE_CLIENT` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLIENT_SCOPE_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `CLIENT_SCOPE_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLIENT_SCOPE_ROLE_MAPPING` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`ROLE_ID`),
  KEY `IDX_CLSCOPE_ROLE` (`SCOPE_ID`),
  KEY `IDX_ROLE_CLSCOPE` (`ROLE_ID`),
  CONSTRAINT `FK_CL_SCOPE_RM_SCOPE` FOREIGN KEY (`SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLIENT_SCOPE_ROLE_MAPPING`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLIENT_SCOPE_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `CLIENT_SCOPE_ROLE_MAPPING` VALUES
('cebbb767-9b22-4835-b465-e736fa3fa970','b9652194-3f20-4bc0-a3c0-b1eeb7b8240e');
/*!40000 ALTER TABLE `CLIENT_SCOPE_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CLUSTER_EVENT`
--

DROP TABLE IF EXISTS `CLUSTER_EVENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CLUSTER_EVENT` (
  `ID` varchar(36) NOT NULL,
  `TARGET_CLUSTER` varchar(200) NOT NULL,
  `SENDER_CLUSTER` varchar(200) NOT NULL,
  `EVENT_DATA` blob NOT NULL,
  `CREATED_AT` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`,`TARGET_CLUSTER`),
  KEY `IDX_CLUSTER_EVENT_TARGET` (`TARGET_CLUSTER`,`CREATED_AT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CLUSTER_EVENT`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CLUSTER_EVENT` WRITE;
/*!40000 ALTER TABLE `CLUSTER_EVENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `CLUSTER_EVENT` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `COMPONENT`
--

DROP TABLE IF EXISTS `COMPONENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPONENT` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PARENT_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_TYPE` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `SUB_TYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPONENT_REALM` (`REALM_ID`),
  KEY `IDX_COMPONENT_PROVIDER_TYPE` (`PROVIDER_TYPE`),
  CONSTRAINT `FK_COMPONENT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `COMPONENT` WRITE;
/*!40000 ALTER TABLE `COMPONENT` DISABLE KEYS */;
INSERT INTO `COMPONENT` VALUES
('03cf4423-f82d-42de-9727-e050e02af7ae','Local Node SCIM','c0899c13-8583-446c-920c-28ff7136f230','keycloak-scim-outbound','org.keycloak.storage.UserStorageProvider','c0899c13-8583-446c-920c-28ff7136f230',NULL),
('2abc8d58-bf65-4456-92cc-5f6dc4ddfb9b','rsa-enc-generated','c0899c13-8583-446c-920c-28ff7136f230','rsa-enc-generated','org.keycloak.keys.KeyProvider','c0899c13-8583-446c-920c-28ff7136f230',NULL),
('50ccb280-695b-46e5-8991-d51070d951f8','Consent Required','c0899c13-8583-446c-920c-28ff7136f230','consent-required','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','anonymous'),
('531a6fca-f73f-4336-8b4d-9cf8e65cf50a','Allowed Protocol Mapper Types','c0899c13-8583-446c-920c-28ff7136f230','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','anonymous'),
('5d6ac7c3-e4ff-45d5-8294-36e2595d86af','Allowed Registration Web Origins','c0899c13-8583-446c-920c-28ff7136f230','registration-web-origins','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','anonymous'),
('80ee19b3-21bb-4d02-9f7a-3879bb6ff0a6','Full Scope Disabled','c0899c13-8583-446c-920c-28ff7136f230','scope','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','anonymous'),
('847cc645-9a28-4d75-b461-baf716b403bf','Allowed Client Scopes','c0899c13-8583-446c-920c-28ff7136f230','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','authenticated'),
('9fc5fd9a-d2ac-4eb1-ab58-0f74f7d22658','rsa-generated','c0899c13-8583-446c-920c-28ff7136f230','rsa-generated','org.keycloak.keys.KeyProvider','c0899c13-8583-446c-920c-28ff7136f230',NULL),
('a74e76ac-7e12-4f97-ab56-9b794a8d554b','Allowed Client Scopes','c0899c13-8583-446c-920c-28ff7136f230','allowed-client-templates','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','anonymous'),
('ab78188f-44db-408b-9d1e-62b0ee8f33c4','aes-generated','c0899c13-8583-446c-920c-28ff7136f230','aes-generated','org.keycloak.keys.KeyProvider','c0899c13-8583-446c-920c-28ff7136f230',NULL),
('b4461553-91e3-45f7-a8c3-c947e45361f7','Max Clients Limit','c0899c13-8583-446c-920c-28ff7136f230','max-clients','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','anonymous'),
('b762b3d3-ed0e-427a-8a25-1cb15a2138a9','hmac-generated-hs512','c0899c13-8583-446c-920c-28ff7136f230','hmac-generated','org.keycloak.keys.KeyProvider','c0899c13-8583-446c-920c-28ff7136f230',NULL),
('ba3a0a3b-40e0-48eb-9ec3-9430c8973bdd',NULL,'c0899c13-8583-446c-920c-28ff7136f230','declarative-user-profile','org.keycloak.userprofile.UserProfileProvider','c0899c13-8583-446c-920c-28ff7136f230',NULL),
('e82bf962-e1d8-4301-befa-0ddb17024a1a','Allowed Registration Web Origins','c0899c13-8583-446c-920c-28ff7136f230','registration-web-origins','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','authenticated'),
('edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','Allowed Protocol Mapper Types','c0899c13-8583-446c-920c-28ff7136f230','allowed-protocol-mappers','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','authenticated'),
('fce49f5b-73bc-4590-934b-9bc8fd28783a','Trusted Hosts','c0899c13-8583-446c-920c-28ff7136f230','trusted-hosts','org.keycloak.services.clientregistration.policy.ClientRegistrationPolicy','c0899c13-8583-446c-920c-28ff7136f230','anonymous');
/*!40000 ALTER TABLE `COMPONENT` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `COMPONENT_CONFIG`
--

DROP TABLE IF EXISTS `COMPONENT_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPONENT_CONFIG` (
  `ID` varchar(36) NOT NULL,
  `COMPONENT_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_COMPO_CONFIG_COMPO` (`COMPONENT_ID`),
  CONSTRAINT `FK_COMPONENT_CONFIG` FOREIGN KEY (`COMPONENT_ID`) REFERENCES `COMPONENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPONENT_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `COMPONENT_CONFIG` WRITE;
/*!40000 ALTER TABLE `COMPONENT_CONFIG` DISABLE KEYS */;
INSERT INTO `COMPONENT_CONFIG` VALUES
('038a0737-228b-48d6-a7e1-3090a621edb6','9fc5fd9a-d2ac-4eb1-ab58-0f74f7d22658','privateKey','MIIEowIBAAKCAQEAzjjikZ3wqDrTHGgd9ky9fH06h61O+StYhO3Hwc+OwHov0cSnM9F4Jqv7FVdQqodnUSCpKk29jRGIWfo2xie2S8Kl0EqlK+f8Qz6Lqzh0xsMufoDat20lg8R/VVVqJS/dXPMBDXRQCqc8WYgtKyx3FlE5KkhTxuBOCjUjqkmqtGNw9nZVlcTyYflnl2fzQanSH8URPdy5w48x/59jZrIdAl8HQ5rgO6bQfj6eF9sVfsLZB2cxo2zZnj8o+1P7n6TMxa0yeZbAm5/ovmXyg/lHVlumv/dagDi3v27bql70GhmGyc1cZbDzrXPMEFX/47NtoLsB8NVVKnS+axVrL8EyTwIDAQABAoIBAAYflkqwn+a+6GndhZY8rRu3NDe3I7MuYFCCJv5QRXLdrfHSnwxg2ep8DNaTYyfNIXo9OAizij9YF+5kCaBUqYsSWo4WyVTGbK0qfEc3Q/Bq90R2Wwg7S3PgL8++24oDI9WQuaVGoOHQGXCnJIA1r8uP2dyxjRtIqciPz2FNEq6Mf63V+i/Jy/Gb6GwehW5rFgZn4JR/J8hB56y5OFEjbrbqh+lud3moLsRBpfL3u2TI+SXosSOQIum3lEGrSHpx3457jUEmwRkRbUQAgsjXecRe82LJG3DbX8u8PIx6a84r+QG7oGlN1fIW3Gnu56JqAobXNLBMyUhtlGRKe87kapECgYEA9wqXEbVBXYKCa3NJr6QAphwIU01XUXWNK396dE+YpmtAEbS7hPFpnrc9XZ/nUJDKY9J323paUhXrFj3dSNYhq54F6TLvhTm2VQCwzWSyYOEFYKYqxk3b3/n2KYIS/xuQeZY7wBVDwutfVGGfyfrMn+TTnFBWcrpO9CuWJQFWtRUCgYEA1bNZmv7F6z/HwPBs/cUO703yBbe5unhopRHJPKig+yYV555YhzZJxIgRiYfHyIuFfYKSUrTgNsdomUj4IEYtW4RiH+BOAck+QKzl+pWjsh7xzNg4r00Xj4j0DeL5CsD/jmyUOQBpFFpPmYS0bPzxuvEWBzzZLxrJ2+ScdzNiqtMCgYAMtfLH6neOhCSJusjTzLBr241iG9yeSFoXHtwCGAZWqbYGMzJiyLkSfYMeyhdwwcJoGHAqTsVO6+nIny4/jST2W48aTJCeXjXPcdWm+8Nh0LIiIuqYgXEKuSW9RQANODHaz6wLWgy+frXM9ajvD4RvxapNpKSOCp/9WDDFfqgjcQKBgD14zfnL99roCenyPyfwm48y+L+0TfTZ1iBFsYGFcGlOV1a9MfITJ70k9wZ8zHdfyxKDkNvBtA2N5wTQ/K8sALgmqKNKvqW84e9wzOb8TI5cYGnweL3Ui0Z6utmTxNfXFKw/h5OuDowQPn2Gsu/3AwInf5KtajwmlJJwfKG9YlCJAoGBAIkavaGe2JfxYTdoB0w74kuskvB6nu7tkSeIlso1FBZ6UDMehciq6KYM5kuaiWQ60BH0PY+dVK5g8mr35uxcQuSXuoz/EUjJAPY4QOfeF4Cp9u5no04cr7+TKlL2vspZq3sylxHI/OCw7HjhNsJKkHTDq6H0hpqFLcSEMDAi6hPs'),
('0c01e1a5-b031-4dc2-a6db-a89a9c9d6bdf','03cf4423-f82d-42de-9727-e050e02af7ae','deprovisionAction','delete'),
('0cda3d06-6b0c-4ad1-bbf9-0703906890fa','03cf4423-f82d-42de-9727-e050e02af7ae','enabled','true'),
('0fc57526-560f-414e-b9da-6a579c220260','03cf4423-f82d-42de-9727-e050e02af7ae','syncGroups','true'),
('10e3b64a-e1a3-4ac9-93a2-bf21ebb3ca62','531a6fca-f73f-4336-8b4d-9cf8e65cf50a','allowed-protocol-mapper-types','oidc-full-name-mapper'),
('1768de66-799a-4295-aa5e-8b4741e5479d','531a6fca-f73f-4336-8b4d-9cf8e65cf50a','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),
('1898297a-993e-4b82-b1ca-249c49fd475b','b4461553-91e3-45f7-a8c3-c947e45361f7','max-clients','200'),
('1c266902-62b2-43fa-b6b1-f6b698cd0f81','531a6fca-f73f-4336-8b4d-9cf8e65cf50a','allowed-protocol-mapper-types','saml-user-attribute-mapper'),
('1c87f868-024f-4461-b0ea-f780a460b4ad','edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','allowed-protocol-mapper-types','oidc-address-mapper'),
('1d287435-4118-4813-aec6-4742dd94c3d2','b762b3d3-ed0e-427a-8a25-1cb15a2138a9','kid','14e916cc-ab55-43ea-ad33-65ced602269d'),
('2704184c-13a2-4a14-9bf2-32ab60da3ee4','2abc8d58-bf65-4456-92cc-5f6dc4ddfb9b','keyUse','ENC'),
('27584aae-ecb1-4112-ad27-82432dd47baf','fce49f5b-73bc-4590-934b-9bc8fd28783a','host-sending-registration-request-must-match','true'),
('3379d3fd-9898-456c-8542-5c7d359201a0','ba3a0a3b-40e0-48eb-9ec3-9430c8973bdd','kc.user.profile.config','{\"attributes\":[{\"name\":\"username\",\"displayName\":\"${username}\",\"validations\":{\"length\":{\"min\":3,\"max\":255},\"username-prohibited-characters\":{},\"up-username-not-idn-homograph\":{}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"email\",\"displayName\":\"${email}\",\"validations\":{\"email\":{},\"length\":{\"max\":255}},\"permissions\":{\"view\":[\"admin\",\"user\"],\"edit\":[\"admin\",\"user\"]},\"multivalued\":false},{\"name\":\"displayName\",\"displayName\":\"displayName\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"ip\",\"displayName\":\"ip\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":true},{\"name\":\"password\",\"displayName\":\"password\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"notExpire\",\"displayName\":\"notExpire\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"expireDate\",\"displayName\":\"expireDate\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"mac\",\"displayName\":\"mac\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"company\",\"displayName\":\"company\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"phoneNumbers\",\"displayName\":\"phoneNumbers\",\"validations\":{},\"annotations\":{},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false},{\"name\":\"active\",\"displayName\":\"active\",\"validations\":{\"options\":{\"options\":[\"true\",\"false\"]}},\"annotations\":{\"inputType\":\"select\"},\"permissions\":{\"view\":[],\"edit\":[\"admin\"]},\"multivalued\":false}],\"groups\":[{\"name\":\"user-metadata\",\"displayHeader\":\"User metadata\",\"displayDescription\":\"Attributes, which refer to user metadata\"}]}'),
('34eb444c-e6b1-4d6d-a0ac-85afb33dc1f1','ab78188f-44db-408b-9d1e-62b0ee8f33c4','secret','P4keGNPl0a7HIWxWatNUTEB7n5pI4I6zmqapVTbcL1s'),
('37fd3d0f-7ce8-468f-9fae-3cfa5c54580a','edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),
('3a53919b-d229-40bb-adaf-8877b53e3807','edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','allowed-protocol-mapper-types','saml-user-property-mapper'),
('4731eccf-bef8-4823-a001-761008cdc2d8','531a6fca-f73f-4336-8b4d-9cf8e65cf50a','allowed-protocol-mapper-types','saml-role-list-mapper'),
('5357b52c-7f7f-4a77-bc09-3c64d500a16b','b762b3d3-ed0e-427a-8a25-1cb15a2138a9','priority','100'),
('57a1ad96-6f56-4ac5-8993-7d89547d5e02','03cf4423-f82d-42de-9727-e050e02af7ae','userNameStrategy','username'),
('5a85be49-c9ba-4b67-a2f6-92bcfca47217','a74e76ac-7e12-4f97-ab56-9b794a8d554b','allow-default-scopes','true'),
('5ea51d5f-a978-4d6a-a160-e49572838a5c','847cc645-9a28-4d75-b461-baf716b403bf','allow-default-scopes','true'),
('60d8dfd4-2219-4aa6-a384-04da2ce4dd49','edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','allowed-protocol-mapper-types','saml-role-list-mapper'),
('6e0e9a4d-6b5c-4c4b-aef0-b432cd126840','2abc8d58-bf65-4456-92cc-5f6dc4ddfb9b','certificate','MIICmzCCAYMCBgGgbH5STjANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwOTA0MTI1NTEzWhcNMzYwOTA0MTI1NjUzWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDAQDj+xzmHBvCrDK4hjVB7yWluMyiSB3CVWZJ4lxLNEBXofDd4CzkdfkPl/rRlyR9pOEs5XVqqqQq2mIneXmZAi3s9kIxBFq6nCikgfuYoLco8Eye6b2w+9fUKmIg6hgNqKhzbhTEqVERwUVvk6lsCepjivsmoLC9gYIwJgBdWD9f69p7RRdEdLGFMAUjqacFfLunUggse9qoG+KaVj820nsRH2Px+xTRI2fPWZYk3TptL7M8MFiqMiqU1f8ODjxSvpvtajldlJPdj9rWgH4DKlC2rhkF3X3dqf8uIFQTKlZUyNRGuj9efI8cgmuz13ABqADB8QZKGG0iNB+GP2Zl7AgMBAAEwDQYJKoZIhvcNAQELBQADggEBAKW91IZqYfSJPDf28JZvEB2bLxAzQNcNfpjeObMnIhuTdxKNYhHd7WDuJ966rMEJcftFuZ1GrAAWenvuxayhebb4rjfor0Y7Tu83lzNyGnwO5OvqprikkaA/4MpAW7YiCkcaJb1wyWHXRhIXLkWBJEJ2BXlzc1CQh9cHrFE6uHdqLcYh+v0LSgAqV+x6DAbdkXtqt5l9fJPPc4R3LIpBl7hxCxUHjG1vOMtZnQ+bG77df948CAndldmN49RlBjE3cIiCTpQZARwEALk/6O2m224MHYEMZYYmakVi9bEsXk+StBc3O0Hn9gmCGgHKuXDFFXtI17geSIS0nI7k4Uabng4='),
('7271c4a7-da53-4bca-9e90-6513ff8c3c77','2abc8d58-bf65-4456-92cc-5f6dc4ddfb9b','algorithm','RSA-OAEP'),
('77cc40ad-035a-48ec-be79-8ad7873f0d70','03cf4423-f82d-42de-9727-e050e02af7ae','baseUrl','http://host.docker.internal:3000/scim/v2'),
('8b76ff68-47ea-4ca2-a868-34bb823a5cf2','2abc8d58-bf65-4456-92cc-5f6dc4ddfb9b','priority','100'),
('8f9ac4eb-b1f8-44c9-a9a2-8a04ca3c81bd','531a6fca-f73f-4336-8b4d-9cf8e65cf50a','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),
('96deb646-a52e-40c8-ab7e-c681c6c4e378','ab78188f-44db-408b-9d1e-62b0ee8f33c4','kid','a9022b58-da36-4dae-beaf-db1a09446685'),
('999ea90b-ba98-40ea-9faa-d4bb9501a2b7','b762b3d3-ed0e-427a-8a25-1cb15a2138a9','algorithm','HS512'),
('99ba86c4-d8ab-47c7-be6f-598e694a67af','9fc5fd9a-d2ac-4eb1-ab58-0f74f7d22658','keyUse','SIG'),
('a3ff0d4b-11ba-402c-90fe-eeaecde5d526','03cf4423-f82d-42de-9727-e050e02af7ae','priority','0'),
('a6253845-2187-4d23-9ad3-e064af06a767','ab78188f-44db-408b-9d1e-62b0ee8f33c4','priority','100'),
('ab00044c-c8a4-4be1-b609-b7cae99aeba4','edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','allowed-protocol-mapper-types','saml-user-attribute-mapper'),
('abf0502c-380e-42c0-85be-38d82db08798','edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','allowed-protocol-mapper-types','oidc-full-name-mapper'),
('ad0f2e28-4f74-4108-9428-d76e2b172018','531a6fca-f73f-4336-8b4d-9cf8e65cf50a','allowed-protocol-mapper-types','oidc-usermodel-attribute-mapper'),
('afe97043-8e2f-4e89-b699-d1078006e546','edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','allowed-protocol-mapper-types','oidc-usermodel-property-mapper'),
('b57b23d5-8018-410e-b46e-0c63db23b4f9','531a6fca-f73f-4336-8b4d-9cf8e65cf50a','allowed-protocol-mapper-types','oidc-address-mapper'),
('b885d4bc-75ff-4e01-95fa-7fc2e4cb593a','b762b3d3-ed0e-427a-8a25-1cb15a2138a9','secret','8jlNnjGVrWzzno56Gncnt6m3NQBX1ZdHqkxspbfmStVZWgyVp3S8tCHeDWvi-5ly3XrfuQpOKipGx5dEdA1gblUpRYXkq3oOA7dHgxTWi6xEnlegZLPbt3krKWrk3saS5F0eNRbOBx4zovnXZ1s9RYUYN-s_JEl8Nu1K5Z4M72U'),
('bbcdec60-36f3-4d7f-bb16-54f09de11e30','531a6fca-f73f-4336-8b4d-9cf8e65cf50a','allowed-protocol-mapper-types','saml-user-property-mapper'),
('c38e5631-9cd6-4986-a5d5-89a98659d686','2abc8d58-bf65-4456-92cc-5f6dc4ddfb9b','privateKey','MIIEpAIBAAKCAQEAwEA4/sc5hwbwqwyuIY1Qe8lpbjMokgdwlVmSeJcSzRAV6Hw3eAs5HX5D5f60ZckfaThLOV1aqqkKtpiJ3l5mQIt7PZCMQRaupwopIH7mKC3KPBMnum9sPvX1CpiIOoYDaioc24UxKlREcFFb5OpbAnqY4r7JqCwvYGCMCYAXVg/X+vae0UXRHSxhTAFI6mnBXy7p1IILHvaqBvimlY/NtJ7ER9j8fsU0SNnz1mWJN06bS+zPDBYqjIqlNX/Dg48Ur6b7Wo5XZST3Y/a1oB+AypQtq4ZBd193an/LiBUEypWVMjURro/XnyPHIJrs9dwAagAwfEGShhtIjQfhj9mZewIDAQABAoIBAAceJEGejW0yib+IznufMUR4cCNzn1JL3XDSHBiLM1e4JgTU/rna5IS6TGnNxnl+CSdnEsQg/xQSV8mWUL2/f8FSVuqwNYPMguhNwLjUVJjIVTf2uyVtg2y6bweWrR+e5nUhnJJ1K479XOzcTH0SIp09YYY860kt8g37P8QIuU1Y1c1P1F92d9Ia1IDpIS/ZZzGKUZD/tvQWSTzl4RVa7DdVSJjecgdnPh5Pdi+mwaaxtbXiGIzsTa8Z3PUNBMcJ0IkmCq4aWbDCIk9lEeVKqXlKmfFJVkqsEgO7gip7eY+HWdVOedD0bzep/00p+jzd/G+rgEoTPVvfeFaGOmKmEz0CgYEA7P0/927/qo5ssCsHSz99JYPUQUCfh7jbl2J/LHJRZSsz1L8dnkpVroS1qXqBGVo07GR5x3oHVgeHDncSi2uVBnR+EZ+qSs9NMu2HKxDBmTf7XrV6KdL0C2ykFdTodoO2v4T3buf8mmMjiRj6+z6oeM6ul8zy02qO83HTdihgiL0CgYEAz6w8nzGg+r3Cb3RyjpnMm0PT69P8Tw2nfEIzSzKbJyABRDdjQF/IK1FoGK1HdUjuVf/G/ZGgvAXYJK7HbwJ6mIfZXI2GkBT6rVGIZH+cZqSE7NHRN6CbS9g7IjPiEcdYhBL/ocTa0CdUDCexW3eapeHixBw79ioPyHpyYQfY2pcCgYEA0FTgwpdlUX3athNdWhz52tzE3of8tccf4zjHKz9jplgQPFm1o80c/UnUmKQEkVDnbVf2ZhE0GcCMTX8HYmC0pPQLT1rYzOLnrnl4dbdJOXQpGdzXA6VavCBJLpf3sxees0Ykbe6p9N5qAr9fAzbVyz2F5hRY8tmdyQyrJBfipNECgYEAv/y/8oAkDYpedUFXIqPmtueGxG8uwzqhSsu8tdkr/IinAxSdagbie8F/lcij1ja9N74FjagSy6AviQIXl3XYNqjodprT+uGaOZ61lAsxYObZiEIUw/NzfjOBv4XtingbScZyk2/0xhiFp9MOMLwquQ5R4PElMdcCzlj84t0pSjMCgYBXEpGfnppMG/Tt3J0qZ4qpSWWHyi1WV3yaTNRNiURAesJdWFh5bqFNbkV9OOFUH3gmiMTe5WlnY2feBo4k5kFTeNytt9Sw9R7j6eawHec0kOdv1UnbfUuR3OCZzIFpOjggbMqP2ZJ+OKSW15u0F6cVkXmcvGp8C3gemwZZIDZM0A=='),
('d0fe972f-faaf-4022-b765-790b7a9a00d2','fce49f5b-73bc-4590-934b-9bc8fd28783a','client-uris-must-match','true'),
('df8c6929-df24-46ee-ad90-5ae2a4f6df07','9fc5fd9a-d2ac-4eb1-ab58-0f74f7d22658','certificate','MIICmzCCAYMCBgGgbH5RYTANBgkqhkiG9w0BAQsFADARMQ8wDQYDVQQDDAZtYXN0ZXIwHhcNMjYwOTA0MTI1NTEyWhcNMzYwOTA0MTI1NjUyWjARMQ8wDQYDVQQDDAZtYXN0ZXIwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDOOOKRnfCoOtMcaB32TL18fTqHrU75K1iE7cfBz47Aei/RxKcz0Xgmq/sVV1Cqh2dRIKkqTb2NEYhZ+jbGJ7ZLwqXQSqUr5/xDPourOHTGwy5+gNq3bSWDxH9VVWolL91c8wENdFAKpzxZiC0rLHcWUTkqSFPG4E4KNSOqSaq0Y3D2dlWVxPJh+WeXZ/NBqdIfxRE93LnDjzH/n2Nmsh0CXwdDmuA7ptB+Pp4X2xV+wtkHZzGjbNmePyj7U/ufpMzFrTJ5lsCbn+i+ZfKD+UdWW6a/91qAOLe/btuqXvQaGYbJzVxlsPOtc8wQVf/js22guwHw1VUqdL5rFWsvwTJPAgMBAAEwDQYJKoZIhvcNAQELBQADggEBAJG5W6GfeLOY//bBykpgkOYlrpEKzd/OZGPMy13RuNLFSs98Q5oGVpWr+UmcMCKs+4PrBRWzbIvN+7V9l9nz01feLhGEltEr0fA3IkRqOI6FF8W7TNWpORDfx0NxS6TgfpIc9UuI+ANYP0TKMAq4e8V4epO0oGa6KpQlIa9wyKL3vNQOChDgdELqW8yg9EWJuBnpBrGzU/h8lIeg1+tn0BUNEd8h/teTRo59YANC0dtVBDVY0nWWiD0CUKzLxIMoYwcxWS9qW9Ug8mg7ORngtpF8KGKaQ/MqaDuz/VGrvcRfSvJflkulPASbjPw8cgIuptjf1dnIIKguw/Y+c8X54Qo='),
('e49dd638-80ef-4500-9d73-dd42ef4fde94','03cf4423-f82d-42de-9727-e050e02af7ae','token','root'),
('ec41638d-7706-4b6c-83c8-8471948ff6d1','edfea8cd-c5b3-46fd-a72f-874be6cbc8aa','allowed-protocol-mapper-types','oidc-sha256-pairwise-sub-mapper'),
('ee8211b6-1f6f-4e13-a0fb-be26af984d93','9fc5fd9a-d2ac-4eb1-ab58-0f74f7d22658','priority','100');
/*!40000 ALTER TABLE `COMPONENT_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `COMPOSITE_ROLE`
--

DROP TABLE IF EXISTS `COMPOSITE_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `COMPOSITE_ROLE` (
  `COMPOSITE` varchar(36) NOT NULL,
  `CHILD_ROLE` varchar(36) NOT NULL,
  PRIMARY KEY (`COMPOSITE`,`CHILD_ROLE`),
  KEY `IDX_COMPOSITE` (`COMPOSITE`),
  KEY `IDX_COMPOSITE_CHILD` (`CHILD_ROLE`),
  CONSTRAINT `FK_A63WVEKFTU8JO1PNJ81E7MCE2` FOREIGN KEY (`COMPOSITE`) REFERENCES `KEYCLOAK_ROLE` (`ID`),
  CONSTRAINT `FK_GR7THLLB9LU8Q4VQA4524JJY8` FOREIGN KEY (`CHILD_ROLE`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPOSITE_ROLE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `COMPOSITE_ROLE` WRITE;
/*!40000 ALTER TABLE `COMPOSITE_ROLE` DISABLE KEYS */;
INSERT INTO `COMPOSITE_ROLE` VALUES
('768ddeb5-ab6c-45ce-a998-502ae15b5b69','23f66c25-6046-43d0-aed0-2ddf839282c6'),
('77607977-4c3a-4d08-846b-4099aad35754','36229963-a96e-426b-994c-c695b5871260'),
('c03447cb-a71e-481d-a3ce-ec3160f411cf','b586a14b-146e-45fb-a6d7-5fa1cb67b0c5'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','0200b0fc-5cb3-431f-8e72-7a82c9c9c77a'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','0512e183-8afd-44a1-a305-955735697dbb'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','23f66c25-6046-43d0-aed0-2ddf839282c6'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','34cfe48f-4893-4ed7-9537-63299275169d'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','36229963-a96e-426b-994c-c695b5871260'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','482a5908-82e3-4f50-a496-6e3e75897795'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','7090a54d-fd5a-4445-8b0d-7c11e68774ad'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','768ddeb5-ab6c-45ce-a998-502ae15b5b69'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','77607977-4c3a-4d08-846b-4099aad35754'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','80efcfb2-f55a-4281-baf6-f21f6b0348fa'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','835f5b4d-a85e-401e-9203-5b4c6592d301'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','83cb9fb6-ed18-4f8d-bbf3-03c15c2c944a'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','875dd3b3-b4c4-4800-87c3-191ef8879d1a'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','94e20a7c-4138-4dad-a971-417cd3c46b52'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','99aae403-673c-4927-bb25-bb2b824a9e61'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','ad21a9c5-1521-49f8-855a-f819fe8883ae'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','c1550913-a3f7-4c6f-bbdf-85837f552075'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','cbe7279a-0f4e-4b08-a048-8dc261cd85a4'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','d9cbc5fa-e0d1-42c0-a798-d86a08845cb5'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','e37e42c6-b60f-416b-9465-3f2ac5908d12'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','ed791de2-815a-4ff9-b5ae-c905d8810225'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','fa82227e-c4da-4b20-a2e1-169c76787cf0'),
('eda2aab5-f53c-45a6-82f4-048e6e8931a3','544a1c70-33d1-46ee-83b7-bada0e934e38'),
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','0af2b6b3-4495-4ffa-a79a-fb13434cabf8'),
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','2d991ae3-fd2d-49ff-a486-a4ad27ffbe3f'),
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','b9652194-3f20-4bc0-a3c0-b1eeb7b8240e'),
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','eda2aab5-f53c-45a6-82f4-048e6e8931a3'),
('fa82227e-c4da-4b20-a2e1-169c76787cf0','80efcfb2-f55a-4281-baf6-f21f6b0348fa'),
('fa82227e-c4da-4b20-a2e1-169c76787cf0','99aae403-673c-4927-bb25-bb2b824a9e61');
/*!40000 ALTER TABLE `COMPOSITE_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `CREDENTIAL`
--

DROP TABLE IF EXISTS `CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_CREDENTIAL` (`USER_ID`),
  CONSTRAINT `FK_PFYR0GLASQYL0DEI3KL69R6V0` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CREDENTIAL`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `CREDENTIAL` DISABLE KEYS */;
INSERT INTO `CREDENTIAL` VALUES
('eaef7fa8-de3d-4a95-b5d3-a25215fb04ff',NULL,'password','c4a621cf-d331-4b28-9887-dbb7bc1d0214',1788526613378,NULL,'{\"value\":\"DS4AuhIKBzyL/jDC0DcmylW3e2r9EA5QmUevmEu0fFY=\",\"salt\":\"1wxXjjLVaga4AObneJZoIw==\",\"additionalParameters\":{}}','{\"hashIterations\":5,\"algorithm\":\"argon2\",\"additionalParameters\":{\"hashLength\":[\"32\"],\"memory\":[\"7168\"],\"type\":[\"id\"],\"version\":[\"1.3\"],\"parallelism\":[\"1\"]}}',10,0);
/*!40000 ALTER TABLE `CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int(11) NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`,`AUTHOR`,`FILENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOG` VALUES
('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/db2-jpa-changelog-1.0.0.Final.xml','2026-09-04 12:56:44',2,'MARK_RAN','9:828775b1596a07d1200ba1d49e5e3941','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.0.0.Final-KEYCLOAK-5461','sthorger@redhat.com','META-INF/jpa-changelog-1.0.0.Final.xml','2026-09-04 12:56:44',1,'EXECUTED','9:6f1016664e21e16d26517a4418f5e3df','createTable tableName=APPLICATION_DEFAULT_ROLES; createTable tableName=CLIENT; createTable tableName=CLIENT_SESSION; createTable tableName=CLIENT_SESSION_ROLE; createTable tableName=COMPOSITE_ROLE; createTable tableName=CREDENTIAL; createTable tab...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.1.0.Beta1','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Beta1.xml','2026-09-04 12:56:44',3,'EXECUTED','9:5f090e44a7d595883c1fb61f4b41fd38','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=CLIENT_ATTRIBUTES; createTable tableName=CLIENT_SESSION_NOTE; createTable tableName=APP_NODE_REGISTRATIONS; addColumn table...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.1.0.Final','sthorger@redhat.com','META-INF/jpa-changelog-1.1.0.Final.xml','2026-09-04 12:56:44',4,'EXECUTED','9:c07e577387a3d2c04d1adc9aaad8730e','renameColumn newColumnName=EVENT_TIME, oldColumnName=TIME, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.2.0.Beta1','psilva@redhat.com','META-INF/db2-jpa-changelog-1.2.0.Beta1.xml','2026-09-04 12:56:44',6,'MARK_RAN','9:543b5c9989f024fe35c6f6c5a97de88e','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.2.0.Beta1','psilva@redhat.com','META-INF/jpa-changelog-1.2.0.Beta1.xml','2026-09-04 12:56:44',5,'EXECUTED','9:b68ce996c655922dbcd2fe6b6ae72686','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION; createTable tableName=PROTOCOL_MAPPER; createTable tableName=PROTOCOL_MAPPER_CONFIG; createTable tableName=...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.2.0.Final','keycloak','META-INF/jpa-changelog-1.2.0.Final.xml','2026-09-04 12:56:45',9,'EXECUTED','9:9d05c7be10cdb873f8bcb41bc3a8ab23','update tableName=CLIENT; update tableName=CLIENT; update tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.2.0.RC1','bburke@redhat.com','META-INF/db2-jpa-changelog-1.2.0.CR1.xml','2026-09-04 12:56:45',8,'MARK_RAN','9:db4a145ba11a6fdaefb397f6dbf829a1','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.2.0.RC1','bburke@redhat.com','META-INF/jpa-changelog-1.2.0.CR1.xml','2026-09-04 12:56:45',7,'EXECUTED','9:765afebbe21cf5bbca048e632df38336','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=MIGRATION_MODEL; createTable tableName=IDENTITY_P...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.3.0','bburke@redhat.com','META-INF/jpa-changelog-1.3.0.xml','2026-09-04 12:56:45',10,'EXECUTED','9:18593702353128d53111f9b1ff0b82b8','delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete tableName=USER_SESSION; createTable tableName=ADMI...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.4.0','bburke@redhat.com','META-INF/db2-jpa-changelog-1.4.0.xml','2026-09-04 12:56:45',12,'MARK_RAN','9:e1ff28bf7568451453f844c5d54bb0b5','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.4.0','bburke@redhat.com','META-INF/jpa-changelog-1.4.0.xml','2026-09-04 12:56:45',11,'EXECUTED','9:6122efe5f090e41a85c0f1c9e52cbb62','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.5.0','bburke@redhat.com','META-INF/jpa-changelog-1.5.0.xml','2026-09-04 12:56:45',13,'EXECUTED','9:7af32cd8957fbc069f796b61217483fd','delete tableName=CLIENT_SESSION_AUTH_STATUS; delete tableName=CLIENT_SESSION_ROLE; delete tableName=CLIENT_SESSION_PROT_MAPPER; delete tableName=CLIENT_SESSION_NOTE; delete tableName=CLIENT_SESSION; delete tableName=USER_SESSION_NOTE; delete table...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.6.1','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-09-04 12:56:45',17,'EXECUTED','9:d41d8cd98f00b204e9800998ecf8427e','empty','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.6.1_from15','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-09-04 12:56:45',14,'EXECUTED','9:6005e15e84714cd83226bf7879f54190','addColumn tableName=REALM; addColumn tableName=KEYCLOAK_ROLE; addColumn tableName=CLIENT; createTable tableName=OFFLINE_USER_SESSION; createTable tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_US_SES_PK2, tableName=...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.6.1_from16','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-09-04 12:56:45',16,'MARK_RAN','9:f8dadc9284440469dcf71e25ca6ab99b','dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_US_SES_PK, tableName=OFFLINE_USER_SESSION; dropPrimaryKey constraintName=CONSTRAINT_OFFLINE_CL_SES_PK, tableName=OFFLINE_CLIENT_SESSION; addColumn tableName=OFFLINE_USER_SESSION; update tableName=OF...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.6.1_from16-pre','mposolda@redhat.com','META-INF/jpa-changelog-1.6.1.xml','2026-09-04 12:56:45',15,'MARK_RAN','9:bf656f5a2b055d07f314431cae76f06c','delete tableName=OFFLINE_CLIENT_SESSION; delete tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.7.0','bburke@redhat.com','META-INF/jpa-changelog-1.7.0.xml','2026-09-04 12:56:45',18,'EXECUTED','9:3368ff0be4c2855ee2dd9ca813b38d8e','createTable tableName=KEYCLOAK_GROUP; createTable tableName=GROUP_ROLE_MAPPING; createTable tableName=GROUP_ATTRIBUTE; createTable tableName=USER_GROUP_MEMBERSHIP; createTable tableName=REALM_DEFAULT_GROUPS; addColumn tableName=IDENTITY_PROVIDER; ...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.8.0','mposolda@redhat.com','META-INF/db2-jpa-changelog-1.8.0.xml','2026-09-04 12:56:45',21,'MARK_RAN','9:831e82914316dc8a57dc09d755f23c51','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.8.0','mposolda@redhat.com','META-INF/jpa-changelog-1.8.0.xml','2026-09-04 12:56:45',19,'EXECUTED','9:8ac2fb5dd030b24c0570a763ed75ed20','addColumn tableName=IDENTITY_PROVIDER; createTable tableName=CLIENT_TEMPLATE; createTable tableName=CLIENT_TEMPLATE_ATTRIBUTES; createTable tableName=TEMPLATE_SCOPE_MAPPING; dropNotNullConstraint columnName=CLIENT_ID, tableName=PROTOCOL_MAPPER; ad...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.8.0-2','keycloak','META-INF/db2-jpa-changelog-1.8.0.xml','2026-09-04 12:56:45',22,'MARK_RAN','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.8.0-2','keycloak','META-INF/jpa-changelog-1.8.0.xml','2026-09-04 12:56:45',20,'EXECUTED','9:f91ddca9b19743db60e3057679810e6c','dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; update tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.9.0','mposolda@redhat.com','META-INF/jpa-changelog-1.9.0.xml','2026-09-04 12:56:45',23,'EXECUTED','9:bc3d0f9e823a69dc21e23e94c7a94bb1','update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=REALM; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=REALM; update tableName=REALM; customChange; dr...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.9.1','keycloak','META-INF/db2-jpa-changelog-1.9.1.xml','2026-09-04 12:56:45',25,'MARK_RAN','9:0d6c65c6f58732d81569e77b10ba301d','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.9.1','keycloak','META-INF/jpa-changelog-1.9.1.xml','2026-09-04 12:56:45',24,'EXECUTED','9:c9999da42f543575ab790e76439a2679','modifyDataType columnName=PRIVATE_KEY, tableName=REALM; modifyDataType columnName=PUBLIC_KEY, tableName=REALM; modifyDataType columnName=CERTIFICATE, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('1.9.2','keycloak','META-INF/jpa-changelog-1.9.2.xml','2026-09-04 12:56:45',26,'EXECUTED','9:fc576660fc016ae53d2d4778d84d86d0','createIndex indexName=IDX_USER_EMAIL, tableName=USER_ENTITY; createIndex indexName=IDX_USER_ROLE_MAPPING, tableName=USER_ROLE_MAPPING; createIndex indexName=IDX_USER_GROUP_MAPPING, tableName=USER_GROUP_MEMBERSHIP; createIndex indexName=IDX_USER_CO...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('12.1.0-add-realm-localization-table','keycloak','META-INF/jpa-changelog-12.0.0.xml','2026-09-04 12:56:47',88,'EXECUTED','9:fffabce2bc01e1a8f5110d5278500065','createTable tableName=REALM_LOCALIZATIONS; addPrimaryKey tableName=REALM_LOCALIZATIONS','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('13.0.0-increase-column-size-federated','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-09-04 12:56:47',94,'EXECUTED','9:43c0c1055b6761b4b3e89de76d612ccf','modifyDataType columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; modifyDataType columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('13.0.0-KEYCLOAK-16844','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-09-04 12:56:47',91,'EXECUTED','9:ad1194d66c937e3ffc82386c050ba089','createIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('13.0.0-KEYCLOAK-17992-drop-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-09-04 12:56:47',93,'MARK_RAN','9:544d201116a0fcc5a5da0925fbbc3bde','dropPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CLSCOPE_CL, tableName=CLIENT_SCOPE_CLIENT; dropIndex indexName=IDX_CL_CLSCOPE, tableName=CLIENT_SCOPE_CLIENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('13.0.0-KEYCLOAK-17992-recreate-constraints','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-09-04 12:56:47',95,'MARK_RAN','9:8bd711fd0330f4fe980494ca43ab1139','addNotNullConstraint columnName=CLIENT_ID, tableName=CLIENT_SCOPE_CLIENT; addNotNullConstraint columnName=SCOPE_ID, tableName=CLIENT_SCOPE_CLIENT; addPrimaryKey constraintName=C_CLI_SCOPE_BIND, tableName=CLIENT_SCOPE_CLIENT; createIndex indexName=...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('14.0.0-KEYCLOAK-11019','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-09-04 12:56:47',97,'EXECUTED','9:24fb8611e97f29989bea412aa38d12b7','createIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USER, tableName=OFFLINE_USER_SESSION; createIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('14.0.0-KEYCLOAK-18286','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-09-04 12:56:47',98,'MARK_RAN','9:259f89014ce2506ee84740cbf7163aa7','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('14.0.0-KEYCLOAK-18286-revert','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-09-04 12:56:47',99,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('14.0.0-KEYCLOAK-18286-supported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-09-04 12:56:47',100,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('14.0.0-KEYCLOAK-18286-unsupported-dbs','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-09-04 12:56:47',101,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('15.0.0-KEYCLOAK-18467','keycloak','META-INF/jpa-changelog-15.0.0.xml','2026-09-04 12:56:47',104,'EXECUTED','9:47a760639ac597360a8219f5b768b4de','addColumn tableName=REALM_LOCALIZATIONS; update tableName=REALM_LOCALIZATIONS; dropColumn columnName=TEXTS, tableName=REALM_LOCALIZATIONS; renameColumn newColumnName=TEXTS, oldColumnName=TEXTS_NEW, tableName=REALM_LOCALIZATIONS; addNotNullConstrai...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('17.0.0-9562','keycloak','META-INF/jpa-changelog-17.0.0.xml','2026-09-04 12:56:47',105,'EXECUTED','9:a6272f0576727dd8cad2522335f5d99e','createIndex indexName=IDX_USER_SERVICE_ACCOUNT, tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('18.0.0-10625-IDX_ADMIN_EVENT_TIME','keycloak','META-INF/jpa-changelog-18.0.0.xml','2026-09-04 12:56:47',106,'EXECUTED','9:015479dbd691d9cc8669282f4828c41d','createIndex indexName=IDX_ADMIN_EVENT_TIME, tableName=ADMIN_EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('18.0.15-30992-index-consent','keycloak','META-INF/jpa-changelog-18.0.15.xml','2026-09-04 12:56:47',107,'EXECUTED','9:80071ede7a05604b1f4906f3bf3b00f0','createIndex indexName=IDX_USCONSENT_SCOPE_ID, tableName=USER_CONSENT_CLIENT_SCOPE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('19.0.0-10135','keycloak','META-INF/jpa-changelog-19.0.0.xml','2026-09-04 12:56:47',108,'EXECUTED','9:9518e495fdd22f78ad6425cc30630221','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.1.0-KEYCLOAK-5461','bburke@redhat.com','META-INF/jpa-changelog-2.1.0.xml','2026-09-04 12:56:45',29,'EXECUTED','9:bd88e1f833df0420b01e114533aee5e8','createTable tableName=BROKER_LINK; createTable tableName=FED_USER_ATTRIBUTE; createTable tableName=FED_USER_CONSENT; createTable tableName=FED_USER_CONSENT_ROLE; createTable tableName=FED_USER_CONSENT_PROT_MAPPER; createTable tableName=FED_USER_CR...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.2.0','bburke@redhat.com','META-INF/jpa-changelog-2.2.0.xml','2026-09-04 12:56:45',30,'EXECUTED','9:a7022af5267f019d020edfe316ef4371','addColumn tableName=ADMIN_EVENT_ENTITY; createTable tableName=CREDENTIAL_ATTRIBUTE; createTable tableName=FED_CREDENTIAL_ATTRIBUTE; modifyDataType columnName=VALUE, tableName=CREDENTIAL; addForeignKeyConstraint baseTableName=FED_CREDENTIAL_ATTRIBU...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.3.0','bburke@redhat.com','META-INF/jpa-changelog-2.3.0.xml','2026-09-04 12:56:45',31,'EXECUTED','9:fc155c394040654d6a79227e56f5e25a','createTable tableName=FEDERATED_USER; addPrimaryKey constraintName=CONSTR_FEDERATED_USER, tableName=FEDERATED_USER; dropDefaultValue columnName=TOTP, tableName=USER_ENTITY; dropColumn columnName=TOTP, tableName=USER_ENTITY; addColumn tableName=IDE...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.4.0','bburke@redhat.com','META-INF/jpa-changelog-2.4.0.xml','2026-09-04 12:56:45',32,'EXECUTED','9:eac4ffb2a14795e5dc7b426063e54d88','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.5.0','bburke@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-09-04 12:56:45',33,'EXECUTED','9:54937c05672568c4c64fc9524c1e9462','customChange; modifyDataType columnName=USER_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.5.0-duplicate-email-support','slawomir@dabek.name','META-INF/jpa-changelog-2.5.0.xml','2026-09-04 12:56:45',36,'EXECUTED','9:61b6d3d7a4c0e0024b0c839da283da0c','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.5.0-unicode-oracle','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-09-04 12:56:45',34,'MARK_RAN','9:737ee933fd399814ed5e24f3b1bbe39d','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.5.0-unicode-other-dbs','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-09-04 12:56:45',35,'EXECUTED','9:33d72168746f81f98ae3a1e8e0ca3554','modifyDataType columnName=DESCRIPTION, tableName=AUTHENTICATION_FLOW; modifyDataType columnName=DESCRIPTION, tableName=CLIENT_TEMPLATE; modifyDataType columnName=DESCRIPTION, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=DESCRIPTION,...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.5.0-unique-group-names','hmlnarik@redhat.com','META-INF/jpa-changelog-2.5.0.xml','2026-09-04 12:56:45',37,'EXECUTED','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('2.5.1','bburke@redhat.com','META-INF/jpa-changelog-2.5.1.xml','2026-09-04 12:56:45',38,'EXECUTED','9:a2b870802540cb3faa72098db5388af3','addColumn tableName=FED_USER_CONSENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('20.0.0-12964-supported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-09-04 12:56:47',109,'EXECUTED','9:f2e1331a71e0aa85e5608fe42f7f681c','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('20.0.0-12964-supported-dbs-edb-migration','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-09-04 12:56:47',110,'MARK_RAN','9:a6b18a8e38062df5793edbe064f4aecd','dropIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE; createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('20.0.0-12964-unsupported-dbs','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-09-04 12:56:47',111,'MARK_RAN','9:1a6fcaa85e20bdeae0a9ce49b41946a5','createIndex indexName=IDX_GROUP_ATT_BY_NAME_VALUE, tableName=GROUP_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('21.0.2-17277','keycloak','META-INF/jpa-changelog-21.0.2.xml','2026-09-04 12:56:47',115,'EXECUTED','9:7ee1f7a3fb8f5588f171fb9a6ab623c0','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('21.1.0-19404','keycloak','META-INF/jpa-changelog-21.1.0.xml','2026-09-04 12:56:47',116,'EXECUTED','9:3d7e830b52f33676b9d64f7f2b2ea634','modifyDataType columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=LOGIC, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=POLICY_ENFORCE_MODE, tableName=RESOURCE_SERVER','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('21.1.0-19404-2','keycloak','META-INF/jpa-changelog-21.1.0.xml','2026-09-04 12:56:47',117,'MARK_RAN','9:627d032e3ef2c06c0e1f73d2ae25c26c','addColumn tableName=RESOURCE_SERVER_POLICY; update tableName=RESOURCE_SERVER_POLICY; dropColumn columnName=DECISION_STRATEGY, tableName=RESOURCE_SERVER_POLICY; renameColumn newColumnName=DECISION_STRATEGY, oldColumnName=DECISION_STRATEGY_NEW, tabl...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('22.0.0-17484-updated','keycloak','META-INF/jpa-changelog-22.0.0.xml','2026-09-04 12:56:47',118,'EXECUTED','9:90af0bfd30cafc17b9f4d6eccd92b8b3','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('22.0.5-24031','keycloak','META-INF/jpa-changelog-22.0.0.xml','2026-09-04 12:56:47',119,'MARK_RAN','9:a60d2d7b315ec2d3eba9e2f145f9df28','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('23.0.0-12062','keycloak','META-INF/jpa-changelog-23.0.0.xml','2026-09-04 12:56:47',120,'EXECUTED','9:2168fbe728fec46ae9baf15bf80927b8','addColumn tableName=COMPONENT_CONFIG; update tableName=COMPONENT_CONFIG; dropColumn columnName=VALUE, tableName=COMPONENT_CONFIG; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=COMPONENT_CONFIG','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('23.0.0-17258','keycloak','META-INF/jpa-changelog-23.0.0.xml','2026-09-04 12:56:47',121,'EXECUTED','9:36506d679a83bbfda85a27ea1864dca8','addColumn tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('24.0.0-26618-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-09-04 12:56:47',124,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('24.0.0-26618-edb-migration','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-09-04 12:56:47',126,'MARK_RAN','9:2f684b29d414cd47efe3a3599f390741','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES; createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('24.0.0-26618-reindex','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-09-04 12:56:47',125,'EXECUTED','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('24.0.0-9758','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-09-04 12:56:47',122,'EXECUTED','9:502c557a5189f600f0f445a9b49ebbce','addColumn tableName=USER_ATTRIBUTE; addColumn tableName=FED_USER_ATTRIBUTE; createIndex indexName=USER_ATTR_LONG_VALUES, tableName=USER_ATTRIBUTE; createIndex indexName=FED_USER_ATTR_LONG_VALUES, tableName=FED_USER_ATTRIBUTE; createIndex indexName...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('24.0.0-9758-2','keycloak','META-INF/jpa-changelog-24.0.0.xml','2026-09-04 12:56:47',123,'EXECUTED','9:bf0fdee10afdf597a987adbf291db7b2','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('24.0.2-27228','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-09-04 12:56:47',127,'EXECUTED','9:eaee11f6b8aa25d2cc6a84fb86fc6238','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('24.0.2-27967-drop-index-if-present','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-09-04 12:56:47',128,'MARK_RAN','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('24.0.2-27967-reindex','keycloak','META-INF/jpa-changelog-24.0.2.xml','2026-09-04 12:56:47',129,'MARK_RAN','9:d3d977031d431db16e2c181ce49d73e9','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28265-index-2-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',136,'EXECUTED','9:b7ef76036d3126bb83c2423bf4d449d6','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28265-index-2-not-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',137,'MARK_RAN','9:23396cf51ab8bc1ae6f0cac7f9f6fcf7','createIndex indexName=IDX_OFFLINE_USS_BY_BROKER_SESSION_ID, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28265-index-cleanup-css-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',135,'EXECUTED','9:5411d2fb2891d3e8d63ddb55dfa3c0c9','dropIndex indexName=IDX_OFFLINE_CSS_PRELOAD, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28265-index-cleanup-uss-by-usersess','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',134,'EXECUTED','9:6eee220d024e38e89c799417ec33667f','dropIndex indexName=IDX_OFFLINE_USS_BY_USERSESS, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28265-index-cleanup-uss-createdon','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',132,'EXECUTED','9:78ab4fc129ed5e8265dbcc3485fba92f','dropIndex indexName=IDX_OFFLINE_USS_CREATEDON, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28265-index-cleanup-uss-preload','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',133,'EXECUTED','9:de5f7c1f7e10994ed8b62e621d20eaab','dropIndex indexName=IDX_OFFLINE_USS_PRELOAD, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28265-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',131,'EXECUTED','9:3e96709818458ae49f3c679ae58d263a','createIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28265-tables','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',130,'EXECUTED','9:deda2df035df23388af95bbd36c17cef','addColumn tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-28861-index-creation','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',142,'EXECUTED','9:b9acb58ac958d9ada0fe12a5d4794ab1','createIndex indexName=IDX_PERM_TICKET_REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; createIndex indexName=IDX_PERM_TICKET_OWNER, tableName=RESOURCE_SERVER_PERM_TICKET','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('25.0.0-org','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',138,'EXECUTED','9:5c859965c2c9b9c72136c360649af157','createTable tableName=ORG; addUniqueConstraint constraintName=UK_ORG_NAME, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_GROUP, tableName=ORG; createTable tableName=ORG_DOMAIN','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.0.0-32583-drop-redundant-index-on-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',150,'EXECUTED','9:24972d83bf27317a055d234187bb4af9','dropIndex indexName=IDX_US_SESS_ID_ON_CL_SESS, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.0.0-33201-org-redirect-url','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:48',152,'EXECUTED','9:4d0e22b0ac68ebe9794fa9cb752ea660','addColumn tableName=ORG','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.0.0-idps-for-login','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',149,'EXECUTED','9:51f5fffadf986983d4bd59582c6c1604','addColumn tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_REALM_ORG, tableName=IDENTITY_PROVIDER; createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER; customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.0.0-org-alias','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',143,'EXECUTED','9:6ef7d63e4412b3c2d66ed179159886a4','addColumn tableName=ORG; update tableName=ORG; addNotNullConstraint columnName=ALIAS, tableName=ORG; addUniqueConstraint constraintName=UK_ORG_ALIAS, tableName=ORG','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.0.0-org-group','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',144,'EXECUTED','9:da8e8087d80ef2ace4f89d8c5b9ca223','addColumn tableName=KEYCLOAK_GROUP; update tableName=KEYCLOAK_GROUP; addNotNullConstraint columnName=TYPE, tableName=KEYCLOAK_GROUP; customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.0.0-org-group-membership','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',146,'EXECUTED','9:a6ace2ce583a421d89b01ba2a28dc2d4','addColumn tableName=USER_GROUP_MEMBERSHIP; update tableName=USER_GROUP_MEMBERSHIP; addNotNullConstraint columnName=MEMBERSHIP_TYPE, tableName=USER_GROUP_MEMBERSHIP','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.0.0-org-indexes','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',145,'EXECUTED','9:79b05dcd610a8c7f25ec05135eec0857','createIndex indexName=IDX_ORG_DOMAIN_ORG_ID, tableName=ORG_DOMAIN','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.0.0.32582-remove-tables-user-session-user-session-note-and-client-session','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',151,'EXECUTED','9:febdc0f47f2ed241c59e60f58c3ceea5','dropTable tableName=CLIENT_SESSION_ROLE; dropTable tableName=CLIENT_SESSION_NOTE; dropTable tableName=CLIENT_SESSION_PROT_MAPPER; dropTable tableName=CLIENT_SESSION_AUTH_STATUS; dropTable tableName=CLIENT_USER_SESSION_NOTE; dropTable tableName=CLI...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.1.0-34013','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-09-04 12:56:48',154,'EXECUTED','9:e6b686a15759aef99a6d758a5c4c6a26','addColumn tableName=ADMIN_EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.1.0-34380','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-09-04 12:56:48',155,'EXECUTED','9:ac8b9edb7c2b6c17a1c7a11fcf5ccf01','dropTable tableName=USERNAME_LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.2.0-26106','keycloak','META-INF/jpa-changelog-26.2.0.xml','2026-09-04 12:56:48',157,'EXECUTED','9:b5877d5dab7d10ff3a9d209d7beb6680','addColumn tableName=CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.2.0-36750','keycloak','META-INF/jpa-changelog-26.2.0.xml','2026-09-04 12:56:48',156,'EXECUTED','9:b49ce951c22f7eb16480ff085640a33a','createTable tableName=SERVER_CONFIG','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.2.6-39866-duplicate','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-09-04 12:56:48',158,'EXECUTED','9:1dc67ccee24f30331db2cba4f372e40e','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.2.6-39866-uk','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-09-04 12:56:48',159,'EXECUTED','9:b70b76f47210cf0a5f4ef0e219eac7cd','addUniqueConstraint constraintName=UK_MIGRATION_VERSION, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.2.6-40088-duplicate','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-09-04 12:56:48',160,'EXECUTED','9:cc7e02ed69ab31979afb1982f9670e8f','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.2.6-40088-uk','keycloak','META-INF/jpa-changelog-26.2.6.xml','2026-09-04 12:56:48',161,'EXECUTED','9:5bb848128da7bc4595cc507383325241','addUniqueConstraint constraintName=UK_MIGRATION_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.3.0-groups-description','keycloak','META-INF/jpa-changelog-26.3.0.xml','2026-09-04 12:56:48',162,'EXECUTED','9:e1a3c05574326fb5b246b73b9a4c4d49','addColumn tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.4.0-40933-saml-encryption-attributes','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-09-04 12:56:48',163,'EXECUTED','9:7e9eaba362ca105efdda202303a4fe49','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.4.0-51321','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-09-04 12:56:48',164,'EXECUTED','9:34bab2bc56f75ffd7e347c580874e306','createIndex indexName=IDX_EVENT_ENTITY_USER_ID_TYPE, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-add-remember-me','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',172,'EXECUTED','9:a7273ea8b21bd2f674c9c49141999f05','addColumn tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-add-sess-create-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',174,'EXECUTED','9:aaee09e23a4d8468fbc5c51b7b314c58','createIndex indexName=IDX_USER_SESSION_EXPIRATION_LAST_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-add-sess-refresh-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',173,'EXECUTED','9:ce49383d317ccbcd3434d1f21172b0b7','createIndex indexName=IDX_USER_SESSION_EXPIRATION_CREATED, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-drop-sess-refresh-idx','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',175,'EXECUTED','9:f0082210b6ccbbaf81287c27aa23753c','dropIndex indexName=IDX_OFFLINE_USS_BY_LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-idp-config-allow-null','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',169,'EXECUTED','9:b667fb087874303b324c1af7fae4f606','dropDefaultValue columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=TRUST_EMAIL, tableName=IDENTITY_PROVIDER; dropNotNullConstraint columnName=STORE_TOKEN, tableName=IDENTITY_PROVIDER; dropDefaultValue columnName...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-idp-config-allow-null-fixed-create-mssql-index','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',170,'MARK_RAN','9:dcbbb24c151c3b0b59f12fede23cc94d','createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-idp-config-allow-null-fixed-drop-mssql-index','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',168,'MARK_RAN','9:50c51d2c98cd1d624eb1c485c3cf1f75','dropIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-index-offline-css-by-client','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',166,'EXECUTED','9:680b59ca7854fa5b77a303301bb2a941','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-index-offline-css-by-client-storage-provider','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',167,'EXECUTED','9:809bc160e2bc92f9c28eea39db323ae2','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_STORAGE_PROVIDER, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-invitations-table-fixed2','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',177,'EXECUTED','9:322cb11fc03181903dcd67a54f8b3cf0','createTable tableName=ORG_INVITATION; addForeignKeyConstraint baseTableName=ORG_INVITATION, constraintName=FK_ORG_INVITATION_ORG, referencedTableName=ORG; createIndex indexName=IDX_ORG_INVITATION_ORG_ID, tableName=ORG_INVITATION; createIndex index...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-mysql-mariadb-default-charset-collation','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',176,'EXECUTED','9:1b383fa60d2db0a8952b365e725f9d16','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.5.0-remove-workflow-provider-id-column','keycloak','META-INF/jpa-changelog-26.5.0.xml','2026-09-04 12:56:48',171,'EXECUTED','9:d8eeb324484d45e946d03b953e168b21','dropIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_PROVIDER, tableName=WORKFLOW_STATE; dropColumn columnName=WORKFLOW_PROVIDER_ID, tableName=WORKFLOW_STATE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-43829-user-created-timestamp-index','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',187,'EXECUTED','9:f2531a49b8bb21a7a97966d88fd1a411','createIndex indexName=IDX_USER_CREATED_TIMESTAMP, tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-44424-create-realm-in-client-session','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',182,'EXECUTED','9:77dbbc72d943e98cfe472ba8cc56a31c','addColumn tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-44424-idx-css-realm-and-clients','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',184,'EXECUTED','9:a093877fff41185ac24103be80e00968','createIndex indexName=IDX_OFFLINE_CSS_BY_CLIENT_AND_REALM, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-44424-index-css-user-session-and-offline','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',181,'EXECUTED','9:a704d8598df241a3fd3cb91b6ab4b2d4','createIndex indexName=IDX_OFFLINE_CSS_BY_USER_SESSION_AND_OFFLINE, tableName=OFFLINE_CLIENT_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-44424-set-realm-in-client-session','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',183,'EXECUTED','9:3964a3148d32a55ef81126e23cdf6721','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-45009-broker-link-identity-provider','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',179,'EXECUTED','9:7d9a0253c9de7be754efef8bba4265bd','createIndex indexName=IDX_BROKER_LINK_IDENTITY_PROVIDER, tableName=BROKER_LINK','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-45009-broker-link-user-id','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',178,'EXECUTED','9:05026bbbc8d2ead5afcbda2f5fdf3a2b','createIndex indexName=IDX_BROKER_LINK_USER_ID, tableName=BROKER_LINK','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-48716-create-mssql-idp-index','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',188,'MARK_RAN','9:dcbbb24c151c3b0b59f12fede23cc94d','createIndex indexName=IDX_IDP_FOR_LOGIN, tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-add-last-modified-timestamp-user','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',185,'EXECUTED','9:8aa583d2cdd9e913dff42fecd626c560','addColumn tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-add-timestamps-group','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',186,'EXECUTED','9:4363d45dc25105a3fc5db9ff6936b0a9','addColumn tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.6.0-org-group-relationship','keycloak','META-INF/jpa-changelog-26.6.0.xml','2026-09-04 12:56:48',180,'EXECUTED','9:05685853fba030f53548ac6bf23245e3','addColumn tableName=KEYCLOAK_GROUP; addForeignKeyConstraint baseTableName=KEYCLOAK_GROUP, constraintName=FK_GROUP_ORGANIZATION, referencedTableName=ORG; createIndex indexName=IDX_GROUP_ORG_ID, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-45292-realm-display-name-add-column','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',190,'EXECUTED','9:1de8c7824ce4fd7c739db6195f42be21','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-45292-realm-display-name-migrate-data','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',191,'EXECUTED','9:293096bc554dd51428d1d9882f2de1dd','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-45292-realm-display-name-remove-attribute','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',192,'EXECUTED','9:a08357e3b0908c09d478e692cf82f865','delete tableName=REALM_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-46204-issued-ver-credential-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',197,'EXECUTED','9:4918c6f68ba90ce417f1aaa031013168','createTable tableName=ISSUED_VER_CREDENTIAL; addPrimaryKey constraintName=PK_ISSUED_VER_CREDENTIAL, tableName=ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=ISSUED_VER_CREDENTIAL, constraintName=FK_ISSUED_VER_CREDENTIAL_USER, referen...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-9686-dynamic-scopes-consent','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',196,'EXECUTED','9:fb689bc3ff64e174d6319014b38876f1','addColumn tableName=USER_CONSENT_CLIENT_SCOPE; dropPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addPrimaryKey constraintName=CONSTRAINT_GRNTCSNT_CLSC_PM, tableName=USER_CONSENT_CLIENT_SCOPE; addColumn...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-add-last-modified-timestamp-client','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',209,'EXECUTED','9:bae67d2faa5438ee35adfbb20a53c3c6','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-add-timestamps-client','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',208,'EXECUTED','9:df5324c82398b446690b206c07649d40','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-cluster-event','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',210,'EXECUTED','9:556b201eb9c378fa05d5bf22ec9c8dcf','createTable tableName=CLUSTER_EVENT; addPrimaryKey constraintName=PK_CLUSTER_EVENT, tableName=CLUSTER_EVENT; createIndex indexName=IDX_CLUSTER_EVENT_TARGET, tableName=CLUSTER_EVENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-federated-issued-ver-credential','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',200,'EXECUTED','9:3d610f5527879623a0d2362e64fa667f','createTable tableName=FED_ISSUED_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=FED_ISSUED_VER_CREDENTIAL, constraintName=FK_FED_ISSUED_VC_VER_CRED, referencedTableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_ISSUED_VC_USER, ...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-federated-verifiable-credentials-1','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',194,'EXECUTED','9:49092fa73b1c2b3afca48d91b8111c65','createTable tableName=FED_USER_VER_CREDENTIAL; addUniqueConstraint constraintName=UK_FED_USER_VC, tableName=FED_USER_VER_CREDENTIAL; createIndex indexName=IDX_FED_USER_VC_REALM_USER, tableName=FED_USER_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-issued-ver-credential-expires-at-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',198,'EXECUTED','9:ab9e4c0c9f21d9217ffe52968a3cf732','createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_EXPIRES_AT, tableName=ISSUED_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-issued-ver-credential-vc-id-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',199,'EXECUTED','9:1c9b18926e48b4b66d0341400bd13834','createIndex indexName=IDX_ISSUED_VER_CREDENTIAL_VC, tableName=ISSUED_VER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-jdbcping-timestamp','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',189,'EXECUTED','9:9a91f62e494bd013594e007b74d01638','addColumn tableName=JGROUPS_PING','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-login-failure-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',207,'EXECUTED','9:f554afc6ad14784c99f6ad8811ac30ec','createIndex indexName=IDX_LOGIN_FAILURE_EXPIRE, tableName=LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-login-failure-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',206,'EXECUTED','9:671b50f88904b24ceb02463dd2d0c045','createTable tableName=LOGIN_FAILURE; addPrimaryKey constraintName=PK_LOGIN_FAILURE, tableName=LOGIN_FAILURE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-outbox','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',195,'EXECUTED','9:338b2743ca1be95f895d8f9b0cbe7b55','createTable tableName=OUTBOX_ENTRY; addUniqueConstraint constraintName=UC_OUTBOX_KIND_OWNER_CORRELATION, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_DRAIN, tableName=OUTBOX_ENTRY; createIndex indexName=IDX_OUTBOX_REALM, tableName=OUTB...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-persistent-auth-session-root-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',202,'EXECUTED','9:3090cd11d2dfeb5df754f41c0ffa35d7','createIndex indexName=IDX_ROOT_AUTH_SESSION_REALM, tableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-persistent-auth-session-root-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',201,'EXECUTED','9:ad622d5eebdf468747a0d08d2367a68e','createTable tableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-persistent-auth-session-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',203,'EXECUTED','9:609b8a172e43f617bb8920efd2b9ae5f','createTable tableName=AUTH_SESSION; addPrimaryKey constraintName=PK_AUTH_SESSION, tableName=AUTH_SESSION; addForeignKeyConstraint baseTableName=AUTH_SESSION, constraintName=FK_AUTH_SESSION_ROOT, referencedTableName=ROOT_AUTH_SESSION','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-single-use-object-index','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',205,'EXECUTED','9:b2ad66c013f48dc131ce109eface7fa5','createIndex indexName=IDX_SINGLE_USE_OBJ_EXPIRE, tableName=SINGLE_USE_OBJECT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-single-use-object-table','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',204,'EXECUTED','9:22bc4eb8e456b3b7be2808e457a44cb7','createTable tableName=SINGLE_USE_OBJECT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('26.7.0-verifiable-credential','keycloak','META-INF/jpa-changelog-26.7.0.xml','2026-09-04 12:56:48',193,'EXECUTED','9:68d8df23794085e79ba08b5046cba31d','createTable tableName=USER_VER_CREDENTIAL; addPrimaryKey constraintName=CONSTRAINT_VCRED_PM, tableName=USER_VER_CREDENTIAL; addForeignKeyConstraint baseTableName=USER_VER_CREDENTIAL, constraintName=FK_VCRED_USER, referencedTableName=USER_ENTITY; a...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('29399-jdbc-ping-default','keycloak','META-INF/jpa-changelog-26.1.0.xml','2026-09-04 12:56:48',153,'EXECUTED','9:007dbe99d7203fca403b89d4edfdf21e','createTable tableName=JGROUPS_PING; addPrimaryKey constraintName=CONSTRAINT_JGROUPS_PING, tableName=JGROUPS_PING','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.0.0','bburke@redhat.com','META-INF/jpa-changelog-3.0.0.xml','2026-09-04 12:56:45',39,'EXECUTED','9:132a67499ba24bcc54fb5cbdcfe7e4c0','addColumn tableName=IDENTITY_PROVIDER','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.2.0-fix','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-09-04 12:56:45',40,'MARK_RAN','9:938f894c032f5430f2b0fafb1a243462','addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.2.0-fix-offline-sessions','hmlnarik','META-INF/jpa-changelog-3.2.0.xml','2026-09-04 12:56:45',42,'EXECUTED','9:fc86359c079781adc577c5a217e4d04c','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.2.0-fix-with-keycloak-5416','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-09-04 12:56:45',41,'MARK_RAN','9:845c332ff1874dc5d35974b0babf3006','dropIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS; addNotNullConstraint columnName=REALM_ID, tableName=CLIENT_INITIAL_ACCESS; createIndex indexName=IDX_CLIENT_INIT_ACC_REALM, tableName=CLIENT_INITIAL_ACCESS','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.2.0-fixed','keycloak','META-INF/jpa-changelog-3.2.0.xml','2026-09-04 12:56:46',43,'EXECUTED','9:59a64800e3c0d09b825f8a3b444fa8f4','addColumn tableName=REALM; dropPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_PK2, tableName=OFFLINE_CLIENT_SESSION; dropColumn columnName=CLIENT_SESSION_ID, tableName=OFFLINE_CLIENT_SESSION; addPrimaryKey constraintName=CONSTRAINT_OFFL_CL_SES_P...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.3.0','keycloak','META-INF/jpa-changelog-3.3.0.xml','2026-09-04 12:56:46',44,'EXECUTED','9:d48d6da5c6ccf667807f633fe489ce88','addColumn tableName=USER_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.4.0','keycloak','META-INF/jpa-changelog-3.4.0.xml','2026-09-04 12:56:46',50,'EXECUTED','9:cfdd8736332ccdd72c5256ccb42335db','addPrimaryKey constraintName=CONSTRAINT_REALM_DEFAULT_ROLES, tableName=REALM_DEFAULT_ROLES; addPrimaryKey constraintName=CONSTRAINT_COMPOSITE_ROLE, tableName=COMPOSITE_ROLE; addPrimaryKey constraintName=CONSTR_REALM_DEFAULT_GROUPS, tableName=REALM...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.4.0-KEYCLOAK-5230','hmlnarik@redhat.com','META-INF/jpa-changelog-3.4.0.xml','2026-09-04 12:56:46',51,'EXECUTED','9:7c84de3d9bd84d7f077607c1a4dcb714','createIndex indexName=IDX_FU_ATTRIBUTE, tableName=FED_USER_ATTRIBUTE; createIndex indexName=IDX_FU_CONSENT, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CONSENT_RU, tableName=FED_USER_CONSENT; createIndex indexName=IDX_FU_CREDENTIAL, t...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.4.1','psilva@redhat.com','META-INF/jpa-changelog-3.4.1.xml','2026-09-04 12:56:46',52,'EXECUTED','9:5a6bb36cbefb6a9d6928452c0852af2d','modifyDataType columnName=VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.4.2','keycloak','META-INF/jpa-changelog-3.4.2.xml','2026-09-04 12:56:46',53,'EXECUTED','9:8f23e334dbc59f82e0a328373ca6ced0','update tableName=REALM','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('3.4.2-KEYCLOAK-5172','mkanis@redhat.com','META-INF/jpa-changelog-3.4.2.xml','2026-09-04 12:56:46',54,'EXECUTED','9:9156214268f09d970cdf0e1564d866af','update tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('31296-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',147,'EXECUTED','9:64ef94489d42a358e8304b0e245f0ed4','createTable tableName=REVOKED_TOKEN; addPrimaryKey constraintName=CONSTRAINT_RT, tableName=REVOKED_TOKEN','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('31725-index-persist-revoked-access-tokens','keycloak','META-INF/jpa-changelog-26.0.0.xml','2026-09-04 12:56:47',148,'EXECUTED','9:b994246ec2bf7c94da881e1d28782c7b','createIndex indexName=IDX_REV_TOKEN_ON_EXPIRE, tableName=REVOKED_TOKEN','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.0.0-CLEANUP-UNUSED-TABLE','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-09-04 12:56:46',56,'EXECUTED','9:229a041fb72d5beac76bb94a5fa709de','dropTable tableName=CLIENT_IDENTITY_PROV_MAPPING','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.0.0-KEYCLOAK-5579-fixed','mposolda@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-09-04 12:56:47',58,'EXECUTED','9:139b79bcbbfe903bb1c2d2a4dbf001d9','dropForeignKeyConstraint baseTableName=CLIENT_TEMPLATE_ATTRIBUTES, constraintName=FK_CL_TEMPL_ATTR_TEMPL; renameTable newTableName=CLIENT_SCOPE_ATTRIBUTES, oldTableName=CLIENT_TEMPLATE_ATTRIBUTES; renameColumn newColumnName=SCOPE_ID, oldColumnName...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.0.0-KEYCLOAK-6228','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-09-04 12:56:46',57,'EXECUTED','9:079899dade9c1e683f26b2aa9ca6ff04','dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; dropNotNullConstraint columnName=CLIENT_ID, tableName=USER_CONSENT; addColumn tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHO...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.0.0-KEYCLOAK-6335','bburke@redhat.com','META-INF/jpa-changelog-4.0.0.xml','2026-09-04 12:56:46',55,'EXECUTED','9:db806613b1ed154826c02610b7dbdf74','createTable tableName=CLIENT_AUTH_FLOW_BINDINGS; addPrimaryKey constraintName=C_CLI_FLOW_BIND, tableName=CLIENT_AUTH_FLOW_BINDINGS','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.2.0-KEYCLOAK-6313','wadahiro@gmail.com','META-INF/jpa-changelog-4.2.0.xml','2026-09-04 12:56:47',63,'EXECUTED','9:92143a6daea0a3f3b8f598c97ce55c3d','addColumn tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.3.0-KEYCLOAK-7984','wadahiro@gmail.com','META-INF/jpa-changelog-4.3.0.xml','2026-09-04 12:56:47',64,'EXECUTED','9:82bab26a27195d889fb0429003b18f40','update tableName=REQUIRED_ACTION_PROVIDER','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.6.0-KEYCLOAK-7950','psilva@redhat.com','META-INF/jpa-changelog-4.6.0.xml','2026-09-04 12:56:47',65,'EXECUTED','9:e590c88ddc0b38b0ae4249bbfcb5abc3','update tableName=RESOURCE_SERVER_RESOURCE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.6.0-KEYCLOAK-8377','keycloak','META-INF/jpa-changelog-4.6.0.xml','2026-09-04 12:56:47',66,'EXECUTED','9:5c1f475536118dbdc38d5d7977950cc0','createTable tableName=ROLE_ATTRIBUTE; addPrimaryKey constraintName=CONSTRAINT_ROLE_ATTRIBUTE_PK, tableName=ROLE_ATTRIBUTE; addForeignKeyConstraint baseTableName=ROLE_ATTRIBUTE, constraintName=FK_ROLE_ATTRIBUTE_ID, referencedTableName=KEYCLOAK_ROLE...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.6.0-KEYCLOAK-8555','gideonray@gmail.com','META-INF/jpa-changelog-4.6.0.xml','2026-09-04 12:56:47',67,'EXECUTED','9:e7c9f5f9c4d67ccbbcc215440c718a17','createIndex indexName=IDX_COMPONENT_PROVIDER_TYPE, tableName=COMPONENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.7.0-KEYCLOAK-1267','sguilhen@redhat.com','META-INF/jpa-changelog-4.7.0.xml','2026-09-04 12:56:47',68,'EXECUTED','9:88e0bfdda924690d6f4e430c53447dd5','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.7.0-KEYCLOAK-7275','keycloak','META-INF/jpa-changelog-4.7.0.xml','2026-09-04 12:56:47',69,'EXECUTED','9:f53177f137e1c46b6a88c59ec1cb5218','renameColumn newColumnName=CREATED_ON, oldColumnName=LAST_SESSION_REFRESH, tableName=OFFLINE_USER_SESSION; addNotNullConstraint columnName=CREATED_ON, tableName=OFFLINE_USER_SESSION; addColumn tableName=OFFLINE_USER_SESSION; customChange; createIn...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('4.8.0-KEYCLOAK-8835','sguilhen@redhat.com','META-INF/jpa-changelog-4.8.0.xml','2026-09-04 12:56:47',70,'EXECUTED','9:a74d33da4dc42a37ec27121580d1459f','addNotNullConstraint columnName=SSO_MAX_LIFESPAN_REMEMBER_ME, tableName=REALM; addNotNullConstraint columnName=SSO_IDLE_TIMEOUT_REMEMBER_ME, tableName=REALM','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('40343-workflow-state-table','keycloak','META-INF/jpa-changelog-26.4.0.xml','2026-09-04 12:56:48',165,'EXECUTED','9:ed3ab4723ceed210e5b5e60ac4562106','createTable tableName=WORKFLOW_STATE; addPrimaryKey constraintName=PK_WORKFLOW_STATE, tableName=WORKFLOW_STATE; addUniqueConstraint constraintName=UQ_WORKFLOW_RESOURCE, tableName=WORKFLOW_STATE; createIndex indexName=IDX_WORKFLOW_STATE_STEP, table...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('8.0.0-adding-credential-columns','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-09-04 12:56:47',72,'EXECUTED','9:aa072ad090bbba210d8f18781b8cebf4','addColumn tableName=CREDENTIAL; addColumn tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('8.0.0-credential-cleanup-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-09-04 12:56:47',75,'EXECUTED','9:2b9cc12779be32c5b40e2e67711a218b','dropDefaultValue columnName=COUNTER, tableName=CREDENTIAL; dropDefaultValue columnName=DIGITS, tableName=CREDENTIAL; dropDefaultValue columnName=PERIOD, tableName=CREDENTIAL; dropDefaultValue columnName=ALGORITHM, tableName=CREDENTIAL; dropColumn ...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('8.0.0-resource-tag-support','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-09-04 12:56:47',76,'EXECUTED','9:91fa186ce7a5af127a2d7a91ee083cc5','addColumn tableName=MIGRATION_MODEL; createIndex indexName=IDX_UPDATE_TIME, tableName=MIGRATION_MODEL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('8.0.0-updating-credential-data-not-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-09-04 12:56:47',73,'EXECUTED','9:1ae6be29bab7c2aa376f6983b932be37','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('8.0.0-updating-credential-data-oracle-fixed','keycloak','META-INF/jpa-changelog-8.0.0.xml','2026-09-04 12:56:47',74,'MARK_RAN','9:14706f286953fc9a25286dbd8fb30d97','update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL; update tableName=FED_USER_CREDENTIAL','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.0-always-display-client','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-09-04 12:56:47',77,'EXECUTED','9:6335e5c94e83a2639ccd68dd24e2e5ad','addColumn tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.0-drop-constraints-for-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-09-04 12:56:47',78,'MARK_RAN','9:6bdb5658951e028bfe16fa0a8228b530','dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5PMT, tableName=RESOURCE_SERVER_PERM_TICKET; dropUniqueConstraint constraintName=UK_FRSR6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER_RESOURCE; dropPrimaryKey constraintName=CONSTRAINT_O...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.0-increase-column-size-federated-fk','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-09-04 12:56:47',79,'EXECUTED','9:d5bc15a64117ccad481ce8792d4c608f','modifyDataType columnName=CLIENT_ID, tableName=FED_USER_CONSENT; modifyDataType columnName=CLIENT_REALM_CONSTRAINT, tableName=KEYCLOAK_ROLE; modifyDataType columnName=OWNER, tableName=RESOURCE_SERVER_POLICY; modifyDataType columnName=CLIENT_ID, ta...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.0-recreate-constraints-after-column-increase','keycloak','META-INF/jpa-changelog-9.0.0.xml','2026-09-04 12:56:47',80,'MARK_RAN','9:077cba51999515f4d3e7ad5619ab592c','addNotNullConstraint columnName=CLIENT_ID, tableName=OFFLINE_CLIENT_SESSION; addNotNullConstraint columnName=OWNER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNullConstraint columnName=REQUESTER, tableName=RESOURCE_SERVER_PERM_TICKET; addNotNull...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.1-add-index-to-client.client_id','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-09-04 12:56:47',81,'EXECUTED','9:be969f08a163bf47c6b9e9ead8ac2afb','createIndex indexName=IDX_CLIENT_ID, tableName=CLIENT','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.1-add-index-to-events','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-09-04 12:56:47',85,'EXECUTED','9:7d93d602352a30c0c317e6a609b56599','createIndex indexName=IDX_EVENT_TIME, tableName=EVENT_ENTITY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.1-KEYCLOAK-12579-add-not-null-constraint','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-09-04 12:56:47',83,'EXECUTED','9:966bda61e46bebf3cc39518fbed52fa7','addNotNullConstraint columnName=PARENT_GROUP, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.1-KEYCLOAK-12579-drop-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-09-04 12:56:47',82,'MARK_RAN','9:6d3bb4408ba5a72f39bd8a0b301ec6e3','dropUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('9.0.1-KEYCLOAK-12579-recreate-constraints','keycloak','META-INF/jpa-changelog-9.0.1.xml','2026-09-04 12:56:47',84,'MARK_RAN','9:8dcac7bdf7378e7d823cdfddebf72fda','addUniqueConstraint constraintName=SIBLING_NAMES, tableName=KEYCLOAK_GROUP','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authn-3.4.0.CR1-refresh-token-max-reuse','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-09-04 12:56:46',49,'EXECUTED','9:d198654156881c46bfba39abd7769e69','addColumn tableName=REALM','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-2.0.0','psilva@redhat.com','META-INF/jpa-changelog-authz-2.0.0.xml','2026-09-04 12:56:45',27,'EXECUTED','9:43ed6b0da89ff77206289e87eaa9c024','createTable tableName=RESOURCE_SERVER; addPrimaryKey constraintName=CONSTRAINT_FARS, tableName=RESOURCE_SERVER; addUniqueConstraint constraintName=UK_AU8TT6T700S9V50BU18WS5HA6, tableName=RESOURCE_SERVER; createTable tableName=RESOURCE_SERVER_RESOU...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-2.5.1','psilva@redhat.com','META-INF/jpa-changelog-authz-2.5.1.xml','2026-09-04 12:56:45',28,'EXECUTED','9:44bae577f551b3738740281eceb4ea70','update tableName=RESOURCE_SERVER_POLICY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-3.4.0.CR1-resource-server-pk-change-part1','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-09-04 12:56:46',45,'EXECUTED','9:dde36f7973e80d71fceee683bc5d2951','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_RESOURCE; addColumn tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-3.4.0.CR1-resource-server-pk-change-part2-KEYCLOAK-6095','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-09-04 12:56:46',46,'EXECUTED','9:b855e9b0a406b34fa323235a0cf4f640','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-09-04 12:56:46',47,'MARK_RAN','9:51abbacd7b416c50c4421a8cabf7927e','dropIndex indexName=IDX_RES_SERV_POL_RES_SERV, tableName=RESOURCE_SERVER_POLICY; dropIndex indexName=IDX_RES_SRV_RES_RES_SRV, tableName=RESOURCE_SERVER_RESOURCE; dropIndex indexName=IDX_RES_SRV_SCOPE_RES_SRV, tableName=RESOURCE_SERVER_SCOPE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-3.4.0.CR1-resource-server-pk-change-part3-fixed-nodropindex','glavoie@gmail.com','META-INF/jpa-changelog-authz-3.4.0.CR1.xml','2026-09-04 12:56:46',48,'EXECUTED','9:bdc99e567b3398bac83263d375aad143','addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_POLICY; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, tableName=RESOURCE_SERVER_RESOURCE; addNotNullConstraint columnName=RESOURCE_SERVER_CLIENT_ID, ...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-4.0.0.Beta3','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.Beta3.xml','2026-09-04 12:56:47',60,'EXECUTED','9:e0057eac39aa8fc8e09ac6cfa4ae15fe','addColumn tableName=RESOURCE_SERVER_POLICY; addColumn tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRPO2128CX4WNKOG82SSRFY, referencedTableName=RESOURCE_SERVER_POLICY','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-4.0.0.CR1','psilva@redhat.com','META-INF/jpa-changelog-authz-4.0.0.CR1.xml','2026-09-04 12:56:47',59,'EXECUTED','9:b55738ad889860c625ba2bf483495a04','createTable tableName=RESOURCE_SERVER_PERM_TICKET; addPrimaryKey constraintName=CONSTRAINT_FAPMT, tableName=RESOURCE_SERVER_PERM_TICKET; addForeignKeyConstraint baseTableName=RESOURCE_SERVER_PERM_TICKET, constraintName=FK_FRSRHO213XCX4WNKOG82SSPMT...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-4.2.0.Final','mhajas@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2026-09-04 12:56:47',61,'EXECUTED','9:42a33806f3a0443fe0e7feeec821326c','createTable tableName=RESOURCE_URIS; addForeignKeyConstraint baseTableName=RESOURCE_URIS, constraintName=FK_RESOURCE_SERVER_URIS, referencedTableName=RESOURCE_SERVER_RESOURCE; customChange; dropColumn columnName=URI, tableName=RESOURCE_SERVER_RESO...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-4.2.0.Final-KEYCLOAK-9944','hmlnarik@redhat.com','META-INF/jpa-changelog-authz-4.2.0.Final.xml','2026-09-04 12:56:47',62,'EXECUTED','9:9968206fca46eecc1f51db9c024bfe56','addPrimaryKey constraintName=CONSTRAINT_RESOUR_URIS_PK, tableName=RESOURCE_URIS','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('authz-7.0.0-KEYCLOAK-10443','psilva@redhat.com','META-INF/jpa-changelog-authz-7.0.0.xml','2026-09-04 12:56:47',71,'EXECUTED','9:fd4ade7b90c3b67fae0bfcfcb42dfb5f','addColumn tableName=RESOURCE_SERVER','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('client-attributes-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-09-04 12:56:47',113,'EXECUTED','9:3f332e13e90739ed0c35b0b25b7822ca','addColumn tableName=CLIENT_ATTRIBUTES; update tableName=CLIENT_ATTRIBUTES; dropColumn columnName=VALUE, tableName=CLIENT_ATTRIBUTES; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('client-attributes-string-accomodation-fixed-post-create-index','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-09-04 12:56:47',114,'MARK_RAN','9:bd2bd0fc7768cf0845ac96a8786fa735','createIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('client-attributes-string-accomodation-fixed-pre-drop-index','keycloak','META-INF/jpa-changelog-20.0.0.xml','2026-09-04 12:56:47',112,'EXECUTED','9:04baaf56c116ed19951cbc2cca584022','dropIndex indexName=IDX_CLIENT_ATT_BY_NAME_VALUE, tableName=CLIENT_ATTRIBUTES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('default-roles','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-09-04 12:56:47',89,'EXECUTED','9:fa8a5b5445e3857f4b010bafb5009957','addColumn tableName=REALM; customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('default-roles-cleanup','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-09-04 12:56:47',90,'EXECUTED','9:67ac3241df9a8582d591c5ed87125f39','dropTable tableName=REALM_DEFAULT_ROLES; dropTable tableName=CLIENT_DEFAULT_ROLES','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('json-string-accomodation-fixed','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-09-04 12:56:47',96,'EXECUTED','9:e07d2bc0970c348bb06fb63b1f82ddbf','addColumn tableName=REALM_ATTRIBUTE; update tableName=REALM_ATTRIBUTE; dropColumn columnName=VALUE, tableName=REALM_ATTRIBUTE; renameColumn newColumnName=VALUE, oldColumnName=VALUE_NEW, tableName=REALM_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('KEYCLOAK-17267-add-index-to-user-attributes','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-09-04 12:56:47',102,'EXECUTED','9:0b305d8d1277f3a89a0a53a659ad274c','createIndex indexName=IDX_USER_ATTRIBUTE_NAME, tableName=USER_ATTRIBUTE','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('KEYCLOAK-18146-add-saml-art-binding-identifier','keycloak','META-INF/jpa-changelog-14.0.0.xml','2026-09-04 12:56:47',103,'EXECUTED','9:2c374ad2cdfe20e2905a84c8fac48460','customChange','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('map-remove-ri','keycloak','META-INF/jpa-changelog-11.0.0.xml','2026-09-04 12:56:47',86,'EXECUTED','9:71c5969e6cdd8d7b6f47cebc86d37627','dropForeignKeyConstraint baseTableName=REALM, constraintName=FK_TRAF444KK6QRKMS7N56AIWQ5Y; dropForeignKeyConstraint baseTableName=KEYCLOAK_ROLE, constraintName=FK_KJHO5LE2C0RAL09FL8CM9WFW9','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('map-remove-ri','keycloak','META-INF/jpa-changelog-12.0.0.xml','2026-09-04 12:56:47',87,'EXECUTED','9:a9ba7d47f065f041b7da856a81762021','dropForeignKeyConstraint baseTableName=REALM_DEFAULT_GROUPS, constraintName=FK_DEF_GROUPS_GROUP; dropForeignKeyConstraint baseTableName=REALM_DEFAULT_ROLES, constraintName=FK_H4WPD7W4HSOOLNI3H0SW7BTJE; dropForeignKeyConstraint baseTableName=CLIENT...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('map-remove-ri-13.0.0','keycloak','META-INF/jpa-changelog-13.0.0.xml','2026-09-04 12:56:47',92,'EXECUTED','9:d9be619d94af5a2f5d07b9f003543b91','dropForeignKeyConstraint baseTableName=DEFAULT_CLIENT_SCOPE, constraintName=FK_R_DEF_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SCOPE_CLIENT, constraintName=FK_C_CLI_SCOPE_SCOPE; dropForeignKeyConstraint baseTableName=CLIENT_SC...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('unique-consentuser','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',139,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('unique-consentuser-edb-migration','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',140,'MARK_RAN','9:5857626a2ea8767e9a6c66bf3a2cb32f','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'8526600434'),
('unique-consentuser-mysql','keycloak','META-INF/jpa-changelog-25.0.0.xml','2026-09-04 12:56:47',141,'EXECUTED','9:b79478aad5adaa1bc428e31563f55e8e','customChange; dropUniqueConstraint constraintName=UK_JKUWUVD56ONTGSUHOGM8UEWRT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_LOCAL_CONSENT, tableName=USER_CONSENT; addUniqueConstraint constraintName=UK_EXTERNAL_CONSENT, tableName=...','',NULL,'4.33.0',NULL,NULL,'8526600434');
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int(11) NOT NULL,
  `LOCKED` tinyint(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES
(1,0,NULL,NULL),
(1000,0,NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `DEFAULT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `DEFAULT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `DEFAULT_CLIENT_SCOPE` (
  `REALM_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `DEFAULT_SCOPE` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`REALM_ID`,`SCOPE_ID`),
  KEY `IDX_DEFCLS_REALM` (`REALM_ID`),
  KEY `IDX_DEFCLS_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_R_DEF_CLI_SCOPE_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEFAULT_CLIENT_SCOPE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `DEFAULT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` DISABLE KEYS */;
INSERT INTO `DEFAULT_CLIENT_SCOPE` VALUES
('c0899c13-8583-446c-920c-28ff7136f230','06956a58-3b2b-4f3f-b679-1368533a5861',1),
('c0899c13-8583-446c-920c-28ff7136f230','0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6',0),
('c0899c13-8583-446c-920c-28ff7136f230','265b69e1-8f89-4d7c-99a0-6385bbeb7627',1),
('c0899c13-8583-446c-920c-28ff7136f230','49bc5502-f03b-4a64-aa31-10d953b2fddb',1),
('c0899c13-8583-446c-920c-28ff7136f230','4af42db0-9452-410d-b946-7309f7bd2ffe',1),
('c0899c13-8583-446c-920c-28ff7136f230','700274d0-a9b7-4b4c-8dab-72446cdd0403',1),
('c0899c13-8583-446c-920c-28ff7136f230','8048abc3-6367-4a30-b526-9fcd0b3299fd',1),
('c0899c13-8583-446c-920c-28ff7136f230','a7b78314-4682-443d-9835-21ede122b0e8',0),
('c0899c13-8583-446c-920c-28ff7136f230','afa57da3-1193-45fc-90ce-fb94ec0a49ec',1),
('c0899c13-8583-446c-920c-28ff7136f230','b5b76f02-f456-4572-8431-e13def7ce4bd',0),
('c0899c13-8583-446c-920c-28ff7136f230','c69d9d1a-b51d-4dca-904b-7e955b12fa2f',0),
('c0899c13-8583-446c-920c-28ff7136f230','cebbb767-9b22-4835-b465-e736fa3fa970',0),
('c0899c13-8583-446c-920c-28ff7136f230','d20427fc-dafe-40e9-8230-bd5c1906c7b2',1),
('c0899c13-8583-446c-920c-28ff7136f230','fd8508e5-0739-498f-9d07-0c2fbceab464',1);
/*!40000 ALTER TABLE `DEFAULT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `EVENT_ENTITY`
--

DROP TABLE IF EXISTS `EVENT_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `EVENT_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON` text DEFAULT NULL,
  `ERROR` varchar(255) DEFAULT NULL,
  `IP_ADDRESS` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `SESSION_ID` varchar(255) DEFAULT NULL,
  `EVENT_TIME` bigint(20) DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `DETAILS_JSON_LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_EVENT_TIME` (`REALM_ID`,`EVENT_TIME`),
  KEY `IDX_EVENT_ENTITY_USER_ID_TYPE` (`USER_ID`,`TYPE`,`EVENT_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EVENT_ENTITY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `EVENT_ENTITY` WRITE;
/*!40000 ALTER TABLE `EVENT_ENTITY` DISABLE KEYS */;
INSERT INTO `EVENT_ENTITY` VALUES
('01a1cfc3-eabf-432f-84f1-58288e0ac6d8','admin-cli',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','cXJc0mBLMCJyZoObUznWuGC_',1788529427024,'LOGIN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"auth_method\":\"openid-connect\",\"token_id\":\"onltro:43b44646-ad84-d978-dbaa-c4fc63076631\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"8fa3cb08-9c67-2a8b-226c-9815c33ffc64\",\"client_auth_method\":\"client-secret\",\"username\":\"root\"}'),
('0729cdd9-937d-45a1-8ce4-40bb0e7048be','admin-cli',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','YgWzCmJktwAApWzhBysRPSDw',1788528641463,'LOGIN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"auth_method\":\"openid-connect\",\"token_id\":\"onltro:418e00c2-b6fc-3134-5b9c-17b13b822130\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"60f09b6b-9cb3-5175-7b74-0c5ec5d56e36\",\"client_auth_method\":\"client-secret\",\"username\":\"root\"}'),
('12633bc1-95ac-4e84-b18e-4b3f9d4e5ce6','security-admin-console',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','11b4lmta9Al44ICetQbDbzRm',1789043697948,'LOGIN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"response_type\":\"code\",\"redirect_uri\":\"http://127.0.0.1:8080/admin/master/console/\",\"consent\":\"no_consent_required\",\"code_id\":\"11b4lmta9Al44ICetQbDbzRm\",\"username\":\"root\",\"response_mode\":\"query\"}'),
('4a0c82af-a759-4beb-b4db-b7f010cb7ddd','admin-cli',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','JocSRVKJoOs76anoZJLCQNm9',1789304791769,'LOGIN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"auth_method\":\"openid-connect\",\"token_id\":\"onltro:d85f4225-0acf-1a8d-9c43-f86782bcadd6\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"3444d202-3a53-8bf9-f8de-e4612a7c8b41\",\"client_auth_method\":\"client-secret\",\"username\":\"root\"}'),
('8554aa16-8a39-45b6-9acf-3851b6f5cbe3','security-admin-console',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','11b4lmta9Al44ICetQbDbzRm',1789043698223,'CODE_TO_TOKEN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"token_id\":\"onltac:6739f692-9156-83c4-3b91-07c7efb9cff4\",\"grant_type\":\"authorization_code\",\"refresh_token_type\":\"Refresh\",\"scope\":\"openid profile email\",\"refresh_token_id\":\"1e65a470-7a4e-ef23-924c-817f8debe7c2\",\"code_id\":\"11b4lmta9Al44ICetQbDbzRm\",\"client_auth_method\":\"client-secret\"}'),
('a43b9dcc-903b-4eaa-8ef7-dcf8de482068','security-admin-console',NULL,'user_not_found','172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230',NULL,1789043671447,'LOGIN_ERROR',NULL,'{\"auth_method\":\"openid-connect\",\"auth_type\":\"code\",\"redirect_uri\":\"http://127.0.0.1:8080/admin/master/console/\",\"code_id\":\"11b4lmta9Al44ICetQbDbzRm\",\"username\":\"admin\"}'),
('a5771a28-6575-4f39-9637-a66a4bfd7f57','admin-cli',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','rPgYfqWiL-wG9fw6dhDldjSj',1788528385428,'LOGIN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"auth_method\":\"openid-connect\",\"token_id\":\"onltro:d1f59a20-49aa-40d7-4935-adcff13f2b48\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"ac3cf0ce-3186-d1a5-7d75-884240f24c62\",\"client_auth_method\":\"client-secret\",\"username\":\"root\"}'),
('d862e251-8a7a-428b-9364-ba1060abe99c','admin-cli',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','JxCzoPPILQ4jHHvYSsD5Txp8',1789303648246,'LOGIN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"auth_method\":\"openid-connect\",\"token_id\":\"onltro:817832bf-8f84-5696-1390-9c3d5617093b\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"3aef928b-5396-80fa-5c42-63a455963d92\",\"client_auth_method\":\"client-secret\",\"username\":\"root\"}'),
('e0db7d02-d3af-4277-b8ef-a1c2db5ad012','admin-cli',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','w9TE1YZMCrRW2zbMGm3VROol',1788528403868,'LOGIN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"auth_method\":\"openid-connect\",\"token_id\":\"onltro:a7a4932a-03dc-62ed-0f49-dccc6662dbf2\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"034bde0c-c4bc-85fc-05f3-1379e0cde9f7\",\"client_auth_method\":\"client-secret\",\"username\":\"root\"}'),
('e8a6fa1b-e87c-4509-aed5-75c2ece35736','admin-cli',NULL,NULL,'172.18.0.1','c0899c13-8583-446c-920c-28ff7136f230','o7kJocszFPhf137quzWiMd48',1788528430485,'LOGIN','c4a621cf-d331-4b28-9887-dbb7bc1d0214','{\"auth_method\":\"openid-connect\",\"token_id\":\"onltro:25f6f6b5-ff8d-12a2-dc76-9a381c6526e9\",\"grant_type\":\"password\",\"refresh_token_type\":\"Refresh\",\"scope\":\"profile email\",\"refresh_token_id\":\"91435a19-e275-f5ff-f21e-4988e46d32cd\",\"client_auth_method\":\"client-secret\",\"username\":\"root\"}');
/*!40000 ALTER TABLE `EVENT_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FEDERATED_IDENTITY`
--

DROP TABLE IF EXISTS `FEDERATED_IDENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FEDERATED_IDENTITY` (
  `IDENTITY_PROVIDER` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `FEDERATED_USER_ID` varchar(255) DEFAULT NULL,
  `FEDERATED_USERNAME` varchar(255) DEFAULT NULL,
  `TOKEN` text DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER`,`USER_ID`),
  KEY `IDX_FEDIDENTITY_USER` (`USER_ID`),
  KEY `IDX_FEDIDENTITY_FEDUSER` (`FEDERATED_USER_ID`),
  CONSTRAINT `FK404288B92EF007A6` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_IDENTITY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FEDERATED_IDENTITY` WRITE;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_IDENTITY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FEDERATED_USER`
--

DROP TABLE IF EXISTS `FEDERATED_USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FEDERATED_USER` (
  `ID` varchar(255) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FEDERATED_USER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FEDERATED_USER` WRITE;
/*!40000 ALTER TABLE `FEDERATED_USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `FEDERATED_USER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_ISSUED_VER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_ISSUED_VER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_ISSUED_VER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) NOT NULL,
  `VER_CREDENTIAL_ID` varchar(36) NOT NULL,
  `ISSUED_AT` bigint(20) NOT NULL,
  `EXPIRES_AT` bigint(20) DEFAULT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REVISION` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FED_ISSUED_VC_USER` (`USER_ID`,`REALM_ID`,`ISSUED_AT`),
  KEY `IDX_FED_ISSUED_VC_EXPIRES` (`EXPIRES_AT`),
  KEY `IDX_FED_ISSUED_VC_CRED_ID` (`VER_CREDENTIAL_ID`),
  KEY `IDX_FED_ISSUED_VC_STORAGE` (`STORAGE_PROVIDER_ID`),
  CONSTRAINT `FK_FED_ISSUED_VC_VER_CRED` FOREIGN KEY (`VER_CREDENTIAL_ID`) REFERENCES `FED_USER_VER_CREDENTIAL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_ISSUED_VER_CREDENTIAL`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_ISSUED_VER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_ISSUED_VER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_ISSUED_VER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `FED_USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `VALUE` text DEFAULT NULL,
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_ATTRIBUTE` (`USER_ID`,`REALM_ID`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `FED_USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ATTRIBUTE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_USER_CONSENT`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CONSENT` (`USER_ID`,`CLIENT_ID`),
  KEY `IDX_FU_CONSENT_RU` (`REALM_ID`,`USER_ID`),
  KEY `IDX_FU_CNSNT_EXT` (`USER_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_USER_CONSENT_CL_SCOPE`
--

DROP TABLE IF EXISTS `FED_USER_CONSENT_CL_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CONSENT_CL_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `PARAMETER` varchar(255) NOT NULL DEFAULT '#N A#',
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`,`PARAMETER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CONSENT_CL_SCOPE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_USER_CONSENT_CL_SCOPE` WRITE;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CONSENT_CL_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_USER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_USER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `SALT` tinyblob DEFAULT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `USER_LABEL` varchar(255) DEFAULT NULL,
  `SECRET_DATA` longtext DEFAULT NULL,
  `CREDENTIAL_DATA` longtext DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_FU_CREDENTIAL` (`USER_ID`,`TYPE`),
  KEY `IDX_FU_CREDENTIAL_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_CREDENTIAL`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_USER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `FED_USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP` (`USER_ID`,`GROUP_ID`),
  KEY `IDX_FU_GROUP_MEMBERSHIP_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_GROUP_MEMBERSHIP`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `FED_USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_REQUIRED_ACTION` (
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_FU_REQUIRED_ACTION` (`USER_ID`,`REQUIRED_ACTION`),
  KEY `IDX_FU_REQUIRED_ACTION_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_REQUIRED_ACTION`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `FED_USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_FU_ROLE_MAPPING` (`USER_ID`,`ROLE_ID`),
  KEY `IDX_FU_ROLE_MAPPING_RU` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_ROLE_MAPPING`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `FED_USER_VER_CREDENTIAL`
--

DROP TABLE IF EXISTS `FED_USER_VER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `FED_USER_VER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `STORAGE_PROVIDER_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) NOT NULL,
  `REVISION` varchar(36) NOT NULL,
  `USER_ATTRIBUTES` text DEFAULT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `UPDATED_DATE` bigint(20) DEFAULT NULL,
  `VERSION` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FED_USER_VC` (`USER_ID`,`CLIENT_SCOPE_ID`),
  KEY `IDX_FED_USER_VC_REALM_USER` (`REALM_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FED_USER_VER_CREDENTIAL`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `FED_USER_VER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `FED_USER_VER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `FED_USER_VER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `GROUP_ATTRIBUTE`
--

DROP TABLE IF EXISTS `GROUP_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `GROUP_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_GROUP_ATTR_GROUP` (`GROUP_ID`),
  KEY `IDX_GROUP_ATT_BY_NAME_VALUE` (`NAME`,`VALUE`),
  CONSTRAINT `FK_GROUP_ATTRIBUTE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ATTRIBUTE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `GROUP_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `GROUP_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `GROUP_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `GROUP_ROLE_MAPPING` (
  `ROLE_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`GROUP_ID`),
  KEY `IDX_GROUP_ROLE_MAPP_GROUP` (`GROUP_ID`),
  CONSTRAINT `FK_GROUP_ROLE_GROUP` FOREIGN KEY (`GROUP_ID`) REFERENCES `KEYCLOAK_GROUP` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROUP_ROLE_MAPPING`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `GROUP_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` DISABLE KEYS */;
/*!40000 ALTER TABLE `GROUP_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `IDENTITY_PROVIDER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER` (
  `INTERNAL_ID` varchar(36) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `PROVIDER_ALIAS` varchar(255) DEFAULT NULL,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `STORE_TOKEN` tinyint(1) DEFAULT NULL,
  `AUTHENTICATE_BY_DEFAULT` tinyint(1) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ADD_TOKEN_ROLE` tinyint(1) DEFAULT NULL,
  `TRUST_EMAIL` tinyint(1) DEFAULT NULL,
  `FIRST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `POST_BROKER_LOGIN_FLOW_ID` varchar(36) DEFAULT NULL,
  `PROVIDER_DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `LINK_ONLY` tinyint(1) DEFAULT NULL,
  `ORGANIZATION_ID` varchar(255) DEFAULT NULL,
  `HIDE_ON_LOGIN` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`INTERNAL_ID`),
  UNIQUE KEY `UK_2DAELWNIBJI49AVXSRTUF6XJ33` (`PROVIDER_ALIAS`,`REALM_ID`),
  KEY `IDX_IDENT_PROV_REALM` (`REALM_ID`),
  KEY `IDX_IDP_REALM_ORG` (`REALM_ID`,`ORGANIZATION_ID`),
  KEY `IDX_IDP_FOR_LOGIN` (`REALM_ID`,`ENABLED`,`LINK_ONLY`,`HIDE_ON_LOGIN`,`ORGANIZATION_ID`),
  CONSTRAINT `FK2B4EBC52AE5C3B34` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `IDENTITY_PROVIDER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `IDENTITY_PROVIDER_CONFIG`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER_CONFIG` (
  `IDENTITY_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDENTITY_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FKDC4897CF864C4E43` FOREIGN KEY (`IDENTITY_PROVIDER_ID`) REFERENCES `IDENTITY_PROVIDER` (`INTERNAL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `IDENTITY_PROVIDER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `IDENTITY_PROVIDER_MAPPER`
--

DROP TABLE IF EXISTS `IDENTITY_PROVIDER_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDENTITY_PROVIDER_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `IDP_ALIAS` varchar(255) NOT NULL,
  `IDP_MAPPER_NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ID_PROV_MAPP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_IDPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDENTITY_PROVIDER_MAPPER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `IDENTITY_PROVIDER_MAPPER` WRITE;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDENTITY_PROVIDER_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `IDP_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `IDP_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `IDP_MAPPER_CONFIG` (
  `IDP_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`IDP_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_IDPMCONFIG` FOREIGN KEY (`IDP_MAPPER_ID`) REFERENCES `IDENTITY_PROVIDER_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IDP_MAPPER_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `IDP_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `IDP_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ISSUED_VER_CREDENTIAL`
--

DROP TABLE IF EXISTS `ISSUED_VER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ISSUED_VER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `VER_CREDENTIAL_ID` varchar(36) NOT NULL,
  `ISSUED_AT` bigint(20) NOT NULL,
  `EXPIRES_AT` bigint(20) DEFAULT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `REVISION` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ISSUED_VER_CREDENTIAL_USER` (`USER_ID`,`ISSUED_AT`),
  KEY `IDX_ISSUED_VER_CREDENTIAL_EXPIRES_AT` (`EXPIRES_AT`),
  KEY `IDX_ISSUED_VER_CREDENTIAL_VC` (`VER_CREDENTIAL_ID`),
  CONSTRAINT `FK_ISSUED_VER_CREDENTIAL_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`),
  CONSTRAINT `FK_ISSUED_VER_CREDENTIAL_VC` FOREIGN KEY (`VER_CREDENTIAL_ID`) REFERENCES `USER_VER_CREDENTIAL` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ISSUED_VER_CREDENTIAL`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ISSUED_VER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `ISSUED_VER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `ISSUED_VER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `JGROUPS_PING`
--

DROP TABLE IF EXISTS `JGROUPS_PING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `JGROUPS_PING` (
  `address` varchar(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `cluster_name` varchar(200) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `coord` tinyint(1) DEFAULT NULL,
  `last_update` bigint(20) DEFAULT NULL,
  `coordinated_by` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`address`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JGROUPS_PING`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `JGROUPS_PING` WRITE;
/*!40000 ALTER TABLE `JGROUPS_PING` DISABLE KEYS */;
/*!40000 ALTER TABLE `JGROUPS_PING` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `KEYCLOAK_GROUP`
--

DROP TABLE IF EXISTS `KEYCLOAK_GROUP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `KEYCLOAK_GROUP` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `PARENT_GROUP` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `TYPE` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `ORG_ID` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `LAST_MODIFIED_TIMESTAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `SIBLING_NAMES` (`REALM_ID`,`PARENT_GROUP`,`NAME`),
  KEY `IDX_GROUP_ORG_ID` (`ORG_ID`),
  CONSTRAINT `FK_GROUP_ORGANIZATION` FOREIGN KEY (`ORG_ID`) REFERENCES `ORG` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_GROUP`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `KEYCLOAK_GROUP` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_GROUP` VALUES
('dade21e8-c7ef-4661-b7c5-688d7a97576e','outbound-demo-group-1788528641',' ','c0899c13-8583-446c-920c-28ff7136f230',0,NULL,NULL,1788528641533,1788528641533),
('dd474d75-ba84-4bab-ab2e-ea22cfdb9974','normalized-group-1788529427',' ','c0899c13-8583-446c-920c-28ff7136f230',0,NULL,NULL,1788529427110,1788529427110);
/*!40000 ALTER TABLE `KEYCLOAK_GROUP` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `KEYCLOAK_ROLE`
--

DROP TABLE IF EXISTS `KEYCLOAK_ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `KEYCLOAK_ROLE` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_REALM_CONSTRAINT` varchar(255) DEFAULT NULL,
  `CLIENT_ROLE` tinyint(1) DEFAULT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `CLIENT` varchar(36) DEFAULT NULL,
  `REALM` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_J3RWUVD56ONTGSUHOGM184WW2-2` (`NAME`,`CLIENT_REALM_CONSTRAINT`),
  KEY `IDX_KEYCLOAK_ROLE_CLIENT` (`CLIENT`),
  KEY `IDX_KEYCLOAK_ROLE_REALM` (`REALM`),
  CONSTRAINT `FK_6VYQFE4CN4WLQ8R6KT5VDSJ5C` FOREIGN KEY (`REALM`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `KEYCLOAK_ROLE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `KEYCLOAK_ROLE` WRITE;
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` DISABLE KEYS */;
INSERT INTO `KEYCLOAK_ROLE` VALUES
('0200b0fc-5cb3-431f-8e72-7a82c9c9c77a','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_manage-organizations}','manage-organizations','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('0512e183-8afd-44a1-a305-955735697dbb','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_manage-events}','manage-events','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('08d7c7a8-6edc-4205-aedb-fe1158ce3e13','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,'${role_delete-account}','delete-account','c0899c13-8583-446c-920c-28ff7136f230','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',NULL),
('0af2b6b3-4495-4ffa-a79a-fb13434cabf8','c0899c13-8583-446c-920c-28ff7136f230',0,'${role_uma_authorization}','uma_authorization','c0899c13-8583-446c-920c-28ff7136f230',NULL,NULL),
('23f66c25-6046-43d0-aed0-2ddf839282c6','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_query-organizations}','query-organizations','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('2d991ae3-fd2d-49ff-a486-a4ad27ffbe3f','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,'${role_view-profile}','view-profile','c0899c13-8583-446c-920c-28ff7136f230','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',NULL),
('34cfe48f-4893-4ed7-9537-63299275169d','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_view-identity-providers}','view-identity-providers','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('36229963-a96e-426b-994c-c695b5871260','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_query-clients}','query-clients','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('482a5908-82e3-4f50-a496-6e3e75897795','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_manage-users}','manage-users','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('544a1c70-33d1-46ee-83b7-bada0e934e38','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,'${role_manage-account-links}','manage-account-links','c0899c13-8583-446c-920c-28ff7136f230','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',NULL),
('6c1d95aa-718f-404b-9b17-e7a0f534ea74','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,'${role_view-applications}','view-applications','c0899c13-8583-446c-920c-28ff7136f230','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',NULL),
('7090a54d-fd5a-4445-8b0d-7c11e68774ad','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_manage-clients}','manage-clients','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('768ddeb5-ab6c-45ce-a998-502ae15b5b69','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_view-organizations}','view-organizations','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('77607977-4c3a-4d08-846b-4099aad35754','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_view-clients}','view-clients','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('80efcfb2-f55a-4281-baf6-f21f6b0348fa','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_query-groups}','query-groups','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('835f5b4d-a85e-401e-9203-5b4c6592d301','c0899c13-8583-446c-920c-28ff7136f230',0,'${role_create-realm}','create-realm','c0899c13-8583-446c-920c-28ff7136f230',NULL,NULL),
('83cb9fb6-ed18-4f8d-bbf3-03c15c2c944a','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_view-authorization}','view-authorization','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('875dd3b3-b4c4-4800-87c3-191ef8879d1a','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_view-events}','view-events','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('8848d75a-8e9b-4191-b36f-f2c512e5c780','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,'${role_view-groups}','view-groups','c0899c13-8583-446c-920c-28ff7136f230','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',NULL),
('94e20a7c-4138-4dad-a971-417cd3c46b52','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_manage-authorization}','manage-authorization','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('99aae403-673c-4927-bb25-bb2b824a9e61','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_query-users}','query-users','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('ad21a9c5-1521-49f8-855a-f819fe8883ae','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_impersonation}','impersonation','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('b586a14b-146e-45fb-a6d7-5fa1cb67b0c5','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,'${role_view-consent}','view-consent','c0899c13-8583-446c-920c-28ff7136f230','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',NULL),
('b9652194-3f20-4bc0-a3c0-b1eeb7b8240e','c0899c13-8583-446c-920c-28ff7136f230',0,'${role_offline-access}','offline_access','c0899c13-8583-446c-920c-28ff7136f230',NULL,NULL),
('c03447cb-a71e-481d-a3ce-ec3160f411cf','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,'${role_manage-consent}','manage-consent','c0899c13-8583-446c-920c-28ff7136f230','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',NULL),
('c1550913-a3f7-4c6f-bbdf-85837f552075','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_manage-identity-providers}','manage-identity-providers','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('cbe7279a-0f4e-4b08-a048-8dc261cd85a4','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_manage-realm}','manage-realm','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('d9cbc5fa-e0d1-42c0-a798-d86a08845cb5','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_create-client}','create-client','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','c0899c13-8583-446c-920c-28ff7136f230',0,'${role_admin}','admin','c0899c13-8583-446c-920c-28ff7136f230',NULL,NULL),
('e37e42c6-b60f-416b-9465-3f2ac5908d12','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_query-realms}','query-realms','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('e886ddea-113e-4426-b8b4-9ba6333b420f','804f50f5-7983-4c3d-b0a3-ca338e72e07b',1,'${role_read-token}','read-token','c0899c13-8583-446c-920c-28ff7136f230','804f50f5-7983-4c3d-b0a3-ca338e72e07b',NULL),
('ed791de2-815a-4ff9-b5ae-c905d8810225','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_view-realm}','view-realm','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL),
('eda2aab5-f53c-45a6-82f4-048e6e8931a3','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',1,'${role_manage-account}','manage-account','c0899c13-8583-446c-920c-28ff7136f230','7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6',NULL),
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','c0899c13-8583-446c-920c-28ff7136f230',0,'${role_default-roles}','default-roles-master','c0899c13-8583-446c-920c-28ff7136f230',NULL,NULL),
('fa82227e-c4da-4b20-a2e1-169c76787cf0','956788ee-bb07-4062-afef-55c2182709d9',1,'${role_view-users}','view-users','c0899c13-8583-446c-920c-28ff7136f230','956788ee-bb07-4062-afef-55c2182709d9',NULL);
/*!40000 ALTER TABLE `KEYCLOAK_ROLE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `LOGIN_FAILURE`
--

DROP TABLE IF EXISTS `LOGIN_FAILURE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `LOGIN_FAILURE` (
  `REALM_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) NOT NULL,
  `FAILED_LOGIN_NOT_BEFORE` bigint(20) DEFAULT 0,
  `NUM_FAILURES` int(11) DEFAULT 0,
  `NUM_TEMPORARY_LOCKOUTS` int(11) DEFAULT 0,
  `LAST_FAILURE` bigint(20) DEFAULT 0,
  `LAST_IP_FAILURE` varchar(255) DEFAULT NULL,
  `NUM_SECONDARY_AUTH_FAILURES` int(11) DEFAULT 0,
  PRIMARY KEY (`REALM_ID`,`USER_ID`),
  KEY `IDX_LOGIN_FAILURE_EXPIRE` (`LAST_FAILURE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LOGIN_FAILURE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `LOGIN_FAILURE` WRITE;
/*!40000 ALTER TABLE `LOGIN_FAILURE` DISABLE KEYS */;
/*!40000 ALTER TABLE `LOGIN_FAILURE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `MIGRATION_MODEL`
--

DROP TABLE IF EXISTS `MIGRATION_MODEL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `MIGRATION_MODEL` (
  `ID` varchar(36) NOT NULL,
  `VERSION` varchar(36) DEFAULT NULL,
  `UPDATE_TIME` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_MIGRATION_UPDATE_TIME` (`UPDATE_TIME`),
  UNIQUE KEY `UK_MIGRATION_VERSION` (`VERSION`),
  KEY `IDX_UPDATE_TIME` (`UPDATE_TIME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MIGRATION_MODEL`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `MIGRATION_MODEL` WRITE;
/*!40000 ALTER TABLE `MIGRATION_MODEL` DISABLE KEYS */;
INSERT INTO `MIGRATION_MODEL` VALUES
('anr1v','26.7.3',1788526611);
/*!40000 ALTER TABLE `MIGRATION_MODEL` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `OFFLINE_CLIENT_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_CLIENT_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFLINE_CLIENT_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `TIMESTAMP` int(11) DEFAULT NULL,
  `DATA` longtext DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) NOT NULL DEFAULT 'local',
  `EXTERNAL_CLIENT_ID` varchar(255) NOT NULL DEFAULT 'local',
  `VERSION` int(11) DEFAULT 0,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`USER_SESSION_ID`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_CSS_BY_CLIENT` (`CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_CSS_BY_CLIENT_STORAGE_PROVIDER` (`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_CSS_BY_USER_SESSION_AND_OFFLINE` (`OFFLINE_FLAG`,`USER_SESSION_ID`),
  KEY `IDX_OFFLINE_CSS_BY_CLIENT_AND_REALM` (`REALM_ID`,`OFFLINE_FLAG`,`CLIENT_ID`,`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_CLIENT_SESSION`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `OFFLINE_CLIENT_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` DISABLE KEYS */;
INSERT INTO `OFFLINE_CLIENT_SESSION` VALUES
('JocSRVKJoOs76anoZJLCQNm9','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','0',1789304791,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a\",\"userSessionStartedAt\":\"1789304791\",\"iss\":\"http://127.0.0.1:8080/realms/master\",\"startedAt\":\"1789304791\",\"level-of-authentication\":\"-1\"}}','local','local',0,'c0899c13-8583-446c-920c-28ff7136f230'),
('JxCzoPPILQ4jHHvYSsD5Txp8','eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a','0',1789303648,'{\"authMethod\":\"openid-connect\",\"notes\":{\"clientId\":\"eee2b75f-1f3a-4d5c-af99-f2c8a7580f6a\",\"userSessionStartedAt\":\"1789303647\",\"iss\":\"http://127.0.0.1:8080/realms/master\",\"startedAt\":\"1789303647\",\"level-of-authentication\":\"-1\"}}','local','local',0,'c0899c13-8583-446c-920c-28ff7136f230');
/*!40000 ALTER TABLE `OFFLINE_CLIENT_SESSION` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `OFFLINE_USER_SESSION`
--

DROP TABLE IF EXISTS `OFFLINE_USER_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `OFFLINE_USER_SESSION` (
  `USER_SESSION_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `CREATED_ON` int(11) NOT NULL,
  `OFFLINE_FLAG` varchar(4) NOT NULL,
  `DATA` longtext DEFAULT NULL,
  `LAST_SESSION_REFRESH` int(11) NOT NULL DEFAULT 0,
  `BROKER_SESSION_ID` text DEFAULT NULL,
  `VERSION` int(11) DEFAULT 0,
  `REMEMBER_ME` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`USER_SESSION_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_USER` (`USER_ID`,`REALM_ID`,`OFFLINE_FLAG`),
  KEY `IDX_OFFLINE_USS_BY_BROKER_SESSION_ID` (`BROKER_SESSION_ID`(255),`REALM_ID`),
  KEY `IDX_USER_SESSION_EXPIRATION_CREATED` (`REALM_ID`,`OFFLINE_FLAG`,`REMEMBER_ME`,`CREATED_ON`,`USER_SESSION_ID`,`USER_ID`),
  KEY `IDX_USER_SESSION_EXPIRATION_LAST_REFRESH` (`REALM_ID`,`OFFLINE_FLAG`,`REMEMBER_ME`,`LAST_SESSION_REFRESH`,`USER_SESSION_ID`,`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OFFLINE_USER_SESSION`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `OFFLINE_USER_SESSION` WRITE;
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` DISABLE KEYS */;
INSERT INTO `OFFLINE_USER_SESSION` VALUES
('JocSRVKJoOs76anoZJLCQNm9','c4a621cf-d331-4b28-9887-dbb7bc1d0214','c0899c13-8583-446c-920c-28ff7136f230',1789304791,'0','{\"ipAddress\":\"172.18.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xIiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiUHl0aG9uLXVybGxpYi8zLjE0IiwiZGV2aWNlIjoiU3BpZGVyIiwibGFzdEFjY2VzcyI6MCwibW9iaWxlIjpmYWxzZX0=\",\"authenticators-completed\":\"{\\\"464baeee-21c4-40ae-8f3c-194748b15e2c\\\":1789304791,\\\"b77d21f4-644d-4785-9a9f-3bf2bf1e0b2c\\\":1789304791}\"},\"state\":\"LOGGED_IN\"}',1789304791,NULL,0,0),
('JxCzoPPILQ4jHHvYSsD5Txp8','c4a621cf-d331-4b28-9887-dbb7bc1d0214','c0899c13-8583-446c-920c-28ff7136f230',1789303647,'0','{\"ipAddress\":\"172.18.0.1\",\"authMethod\":\"openid-connect\",\"rememberMe\":false,\"started\":0,\"notes\":{\"KC_DEVICE_NOTE\":\"eyJpcEFkZHJlc3MiOiIxNzIuMTguMC4xIiwib3MiOiJPdGhlciIsIm9zVmVyc2lvbiI6IlVua25vd24iLCJicm93c2VyIjoiY3VybC84LjcuMSIsImRldmljZSI6Ik90aGVyIiwibGFzdEFjY2VzcyI6MCwibW9iaWxlIjpmYWxzZX0=\",\"authenticators-completed\":\"{\\\"464baeee-21c4-40ae-8f3c-194748b15e2c\\\":1789303647,\\\"b77d21f4-644d-4785-9a9f-3bf2bf1e0b2c\\\":1789303647}\"},\"state\":\"LOGGED_IN\"}',1789303648,NULL,0,0);
/*!40000 ALTER TABLE `OFFLINE_USER_SESSION` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ORG`
--

DROP TABLE IF EXISTS `ORG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORG` (
  `ID` varchar(255) NOT NULL,
  `ENABLED` tinyint(1) NOT NULL,
  `REALM_ID` varchar(255) NOT NULL,
  `GROUP_ID` varchar(255) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` text DEFAULT NULL,
  `ALIAS` varchar(255) NOT NULL,
  `REDIRECT_URL` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORG_NAME` (`REALM_ID`,`NAME`),
  UNIQUE KEY `UK_ORG_GROUP` (`GROUP_ID`),
  UNIQUE KEY `UK_ORG_ALIAS` (`REALM_ID`,`ALIAS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ORG` WRITE;
/*!40000 ALTER TABLE `ORG` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ORG_DOMAIN`
--

DROP TABLE IF EXISTS `ORG_DOMAIN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORG_DOMAIN` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VERIFIED` tinyint(1) NOT NULL,
  `ORG_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`,`NAME`),
  KEY `IDX_ORG_DOMAIN_ORG_ID` (`ORG_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG_DOMAIN`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ORG_DOMAIN` WRITE;
/*!40000 ALTER TABLE `ORG_DOMAIN` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORG_DOMAIN` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ORG_INVITATION`
--

DROP TABLE IF EXISTS `ORG_INVITATION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ORG_INVITATION` (
  `ID` varchar(36) NOT NULL,
  `ORGANIZATION_ID` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `CREATED_AT` int(11) NOT NULL,
  `EXPIRES_AT` int(11) DEFAULT NULL,
  `INVITE_LINK` text DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORG_INVITATION_EMAIL` (`ORGANIZATION_ID`,`EMAIL`),
  KEY `IDX_ORG_INVITATION_ORG_ID` (`ORGANIZATION_ID`),
  KEY `IDX_ORG_INVITATION_EMAIL` (`EMAIL`),
  KEY `IDX_ORG_INVITATION_EXPIRES` (`EXPIRES_AT`),
  CONSTRAINT `FK_ORG_INVITATION_ORG` FOREIGN KEY (`ORGANIZATION_ID`) REFERENCES `ORG` (`ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORG_INVITATION`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ORG_INVITATION` WRITE;
/*!40000 ALTER TABLE `ORG_INVITATION` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORG_INVITATION` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `OUTBOX_ENTRY`
--

DROP TABLE IF EXISTS `OUTBOX_ENTRY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `OUTBOX_ENTRY` (
  `ID` varchar(36) NOT NULL,
  `ENTRY_KIND` varchar(64) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `OWNER_ID` varchar(64) NOT NULL,
  `CONTAINER_ID` varchar(64) DEFAULT NULL,
  `CORRELATION_ID` varchar(255) NOT NULL,
  `ENTRY_TYPE` text NOT NULL,
  `PAYLOAD` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci NOT NULL,
  `METADATA` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `STATUS` varchar(16) NOT NULL,
  `ATTEMPTS` int(11) NOT NULL DEFAULT 0,
  `NEXT_ATTEMPT_AT` timestamp NOT NULL,
  `LAST_ERROR` text DEFAULT NULL,
  `CREATED_AT` timestamp NOT NULL,
  `DELIVERED_AT` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UC_OUTBOX_KIND_OWNER_CORRELATION` (`ENTRY_KIND`,`OWNER_ID`,`CORRELATION_ID`),
  KEY `IDX_OUTBOX_DRAIN` (`ENTRY_KIND`,`STATUS`,`NEXT_ATTEMPT_AT`),
  KEY `IDX_OUTBOX_REALM` (`ENTRY_KIND`,`REALM_ID`,`STATUS`),
  KEY `IDX_OUTBOX_OWNER` (`ENTRY_KIND`,`OWNER_ID`,`STATUS`),
  KEY `IDX_OUTBOX_CONTAINER` (`ENTRY_KIND`,`OWNER_ID`,`CONTAINER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OUTBOX_ENTRY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `OUTBOX_ENTRY` WRITE;
/*!40000 ALTER TABLE `OUTBOX_ENTRY` DISABLE KEYS */;
/*!40000 ALTER TABLE `OUTBOX_ENTRY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `POLICY_CONFIG`
--

DROP TABLE IF EXISTS `POLICY_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `POLICY_CONFIG` (
  `POLICY_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  PRIMARY KEY (`POLICY_ID`,`NAME`),
  CONSTRAINT `FKDC34197CF864C4E43` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `POLICY_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `POLICY_CONFIG` WRITE;
/*!40000 ALTER TABLE `POLICY_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `POLICY_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `PROTOCOL_MAPPER`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROTOCOL_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `PROTOCOL` varchar(255) NOT NULL,
  `PROTOCOL_MAPPER_NAME` varchar(255) NOT NULL,
  `CLIENT_ID` varchar(36) DEFAULT NULL,
  `CLIENT_SCOPE_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_PROTOCOL_MAPPER_CLIENT` (`CLIENT_ID`),
  KEY `IDX_CLSCOPE_PROTMAP` (`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_CLI_SCOPE_MAPPER` FOREIGN KEY (`CLIENT_SCOPE_ID`) REFERENCES `CLIENT_SCOPE` (`ID`),
  CONSTRAINT `FK_PCM_REALM` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `PROTOCOL_MAPPER` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER` VALUES
('07072367-6882-4fb3-9ce6-696f01cd75a4','client roles','openid-connect','oidc-usermodel-client-role-mapper',NULL,'700274d0-a9b7-4b4c-8dab-72446cdd0403'),
('14a74b97-361e-42b5-a37c-2fdf7e2414da','organization','saml','saml-organization-membership-mapper',NULL,'265b69e1-8f89-4d7c-99a0-6385bbeb7627'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','address','openid-connect','oidc-address-mapper',NULL,'0ce9d3e9-d5eb-45dd-a8ab-036f366a65e6'),
('3ba96b40-36ba-4581-ab1a-a5d8d8b0055a','gender','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('42a5a334-338d-47cd-9db6-e04ca7a57488','role list','saml','saml-role-list-mapper',NULL,'06956a58-3b2b-4f3f-b679-1368533a5861'),
('45514a72-7c57-42be-9fae-fb3db6255a47','username','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('4b65f9a8-8ba4-4a9f-8f38-440189722c09','email','openid-connect','oidc-usermodel-attribute-mapper',NULL,'8048abc3-6367-4a30-b526-9fcd0b3299fd'),
('537dc009-9373-4399-99e3-c3b69b2ecb7c','audience resolve','openid-connect','oidc-audience-resolve-mapper',NULL,'700274d0-a9b7-4b4c-8dab-72446cdd0403'),
('557acd2a-df85-4c10-af9d-4f29edd0c5dc','AuthnContextClassRef','saml','saml-authn-context-class-ref-mapper',NULL,'d20427fc-dafe-40e9-8230-bd5c1906c7b2'),
('6c48c6f1-02b4-4b78-9e83-8ab6e37d7fcd','upn','openid-connect','oidc-usermodel-attribute-mapper',NULL,'a7b78314-4682-443d-9835-21ede122b0e8'),
('7101c7cd-2a75-40d0-ac25-91c2e5d59576','given name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('75ecd645-129e-44cd-812d-e93bf415d29d','website','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('7eb49912-4d27-452b-a553-aacf41fde2fe','sub','openid-connect','oidc-sub-mapper',NULL,'4af42db0-9452-410d-b946-7309f7bd2ffe'),
('8095dcfa-94c5-4090-b7bb-4bc21d4fcb38','groups','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'a7b78314-4682-443d-9835-21ede122b0e8'),
('81b101e3-15d2-46da-8142-e3461df581ae','Client Host','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'696aad78-490f-41da-bed3-8d83ad79a338'),
('93832076-2e7e-4aad-9f1b-99a4ed9af6d9','full name','openid-connect','oidc-full-name-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('9931e06b-c684-468c-8172-c8230e8d8908','audience resolve','openid-connect','oidc-audience-resolve-mapper','18c5eaf6-7675-4164-81f5-842f39b901a8',NULL),
('9e8c49a9-ddb9-4ad6-8715-e8bd399d0a3e','acr loa level','openid-connect','oidc-acr-mapper',NULL,'fd8508e5-0739-498f-9d07-0c2fbceab464'),
('a1f83b27-aed0-4f6f-b5ff-5012d273f100','nickname','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('aeaf9c62-d248-477a-bb84-2e5fcd32ba14','phone number','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c69d9d1a-b51d-4dca-904b-7e955b12fa2f'),
('b1ac09ad-4696-4166-92f0-20b4eaaee883','picture','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('b9a52dfe-16a9-418e-a833-6760de89be19','middle name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('c1c04504-e809-4226-99b4-cb1f3a05fab6','locale','openid-connect','oidc-usermodel-attribute-mapper','f1e3b3a5-8167-4e4b-ad6a-45b60486ced1',NULL),
('c2184425-90d5-4414-b7cf-87c3bec7c356','auth_time','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'4af42db0-9452-410d-b946-7309f7bd2ffe'),
('c2363ca8-a49b-4545-91d5-09c4cc9a9370','profile','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('cbc88bcf-6db4-4758-bbdb-3c35d297a98a','Client ID','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'696aad78-490f-41da-bed3-8d83ad79a338'),
('d9cfed4d-fbeb-4016-8a8a-2f0e5396e6d8','realm roles','openid-connect','oidc-usermodel-realm-role-mapper',NULL,'700274d0-a9b7-4b4c-8dab-72446cdd0403'),
('dc640644-610d-4d95-81c5-d7f6b4a41a6c','updated at','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('e17f5bf1-7d8a-429f-afd5-9f5b909901df','zoneinfo','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('e24db5ea-0ed1-4f85-a146-022345ccc071','locale','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('e40156c8-65b0-4671-9547-a0a323f8fa63','family name','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('e7c804c2-a47d-45e6-88af-f98b796965c4','Client IP Address','openid-connect','oidc-usersessionmodel-note-mapper',NULL,'696aad78-490f-41da-bed3-8d83ad79a338'),
('ec8b60cc-2aaf-4eda-94fc-cc3118853c1a','email verified','openid-connect','oidc-usermodel-property-mapper',NULL,'8048abc3-6367-4a30-b526-9fcd0b3299fd'),
('f3027856-bea3-4a1d-955d-07cc496fa362','phone number verified','openid-connect','oidc-usermodel-attribute-mapper',NULL,'c69d9d1a-b51d-4dca-904b-7e955b12fa2f'),
('f42fb560-3ab2-456c-94ec-4c92cd10c1c0','birthdate','openid-connect','oidc-usermodel-attribute-mapper',NULL,'afa57da3-1193-45fc-90ce-fb94ec0a49ec'),
('f8491c06-6059-4fa5-8e7c-355431143c16','allowed web origins','openid-connect','oidc-allowed-origins-mapper',NULL,'49bc5502-f03b-4a64-aa31-10d953b2fddb'),
('fe4506de-cf7d-4c2f-bf94-264340798ebb','organization','openid-connect','oidc-organization-membership-mapper',NULL,'b5b76f02-f456-4572-8431-e13def7ce4bd');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `PROTOCOL_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `PROTOCOL_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `PROTOCOL_MAPPER_CONFIG` (
  `PROTOCOL_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`PROTOCOL_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_PMCONFIG` FOREIGN KEY (`PROTOCOL_MAPPER_ID`) REFERENCES `PROTOCOL_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PROTOCOL_MAPPER_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `PROTOCOL_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` DISABLE KEYS */;
INSERT INTO `PROTOCOL_MAPPER_CONFIG` VALUES
('07072367-6882-4fb3-9ce6-696f01cd75a4','true','access.token.claim'),
('07072367-6882-4fb3-9ce6-696f01cd75a4','resource_access.${client_id}.roles','claim.name'),
('07072367-6882-4fb3-9ce6-696f01cd75a4','true','introspection.token.claim'),
('07072367-6882-4fb3-9ce6-696f01cd75a4','String','jsonType.label'),
('07072367-6882-4fb3-9ce6-696f01cd75a4','true','multivalued'),
('07072367-6882-4fb3-9ce6-696f01cd75a4','foo','user.attribute'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','true','access.token.claim'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','true','id.token.claim'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','true','introspection.token.claim'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','country','user.attribute.country'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','formatted','user.attribute.formatted'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','locality','user.attribute.locality'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','postal_code','user.attribute.postal_code'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','region','user.attribute.region'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','street','user.attribute.street'),
('39a3a7bd-4ae6-4ea1-98ea-037aa708b6eb','true','userinfo.token.claim'),
('3ba96b40-36ba-4581-ab1a-a5d8d8b0055a','true','access.token.claim'),
('3ba96b40-36ba-4581-ab1a-a5d8d8b0055a','gender','claim.name'),
('3ba96b40-36ba-4581-ab1a-a5d8d8b0055a','true','id.token.claim'),
('3ba96b40-36ba-4581-ab1a-a5d8d8b0055a','true','introspection.token.claim'),
('3ba96b40-36ba-4581-ab1a-a5d8d8b0055a','String','jsonType.label'),
('3ba96b40-36ba-4581-ab1a-a5d8d8b0055a','gender','user.attribute'),
('3ba96b40-36ba-4581-ab1a-a5d8d8b0055a','true','userinfo.token.claim'),
('42a5a334-338d-47cd-9db6-e04ca7a57488','Role','attribute.name'),
('42a5a334-338d-47cd-9db6-e04ca7a57488','Basic','attribute.nameformat'),
('42a5a334-338d-47cd-9db6-e04ca7a57488','false','single'),
('45514a72-7c57-42be-9fae-fb3db6255a47','true','access.token.claim'),
('45514a72-7c57-42be-9fae-fb3db6255a47','preferred_username','claim.name'),
('45514a72-7c57-42be-9fae-fb3db6255a47','true','id.token.claim'),
('45514a72-7c57-42be-9fae-fb3db6255a47','true','introspection.token.claim'),
('45514a72-7c57-42be-9fae-fb3db6255a47','String','jsonType.label'),
('45514a72-7c57-42be-9fae-fb3db6255a47','username','user.attribute'),
('45514a72-7c57-42be-9fae-fb3db6255a47','true','userinfo.token.claim'),
('4b65f9a8-8ba4-4a9f-8f38-440189722c09','true','access.token.claim'),
('4b65f9a8-8ba4-4a9f-8f38-440189722c09','email','claim.name'),
('4b65f9a8-8ba4-4a9f-8f38-440189722c09','true','id.token.claim'),
('4b65f9a8-8ba4-4a9f-8f38-440189722c09','true','introspection.token.claim'),
('4b65f9a8-8ba4-4a9f-8f38-440189722c09','String','jsonType.label'),
('4b65f9a8-8ba4-4a9f-8f38-440189722c09','email','user.attribute'),
('4b65f9a8-8ba4-4a9f-8f38-440189722c09','true','userinfo.token.claim'),
('537dc009-9373-4399-99e3-c3b69b2ecb7c','true','access.token.claim'),
('537dc009-9373-4399-99e3-c3b69b2ecb7c','true','introspection.token.claim'),
('6c48c6f1-02b4-4b78-9e83-8ab6e37d7fcd','true','access.token.claim'),
('6c48c6f1-02b4-4b78-9e83-8ab6e37d7fcd','upn','claim.name'),
('6c48c6f1-02b4-4b78-9e83-8ab6e37d7fcd','true','id.token.claim'),
('6c48c6f1-02b4-4b78-9e83-8ab6e37d7fcd','true','introspection.token.claim'),
('6c48c6f1-02b4-4b78-9e83-8ab6e37d7fcd','String','jsonType.label'),
('6c48c6f1-02b4-4b78-9e83-8ab6e37d7fcd','username','user.attribute'),
('6c48c6f1-02b4-4b78-9e83-8ab6e37d7fcd','true','userinfo.token.claim'),
('7101c7cd-2a75-40d0-ac25-91c2e5d59576','true','access.token.claim'),
('7101c7cd-2a75-40d0-ac25-91c2e5d59576','given_name','claim.name'),
('7101c7cd-2a75-40d0-ac25-91c2e5d59576','true','id.token.claim'),
('7101c7cd-2a75-40d0-ac25-91c2e5d59576','true','introspection.token.claim'),
('7101c7cd-2a75-40d0-ac25-91c2e5d59576','String','jsonType.label'),
('7101c7cd-2a75-40d0-ac25-91c2e5d59576','firstName','user.attribute'),
('7101c7cd-2a75-40d0-ac25-91c2e5d59576','true','userinfo.token.claim'),
('75ecd645-129e-44cd-812d-e93bf415d29d','true','access.token.claim'),
('75ecd645-129e-44cd-812d-e93bf415d29d','website','claim.name'),
('75ecd645-129e-44cd-812d-e93bf415d29d','true','id.token.claim'),
('75ecd645-129e-44cd-812d-e93bf415d29d','true','introspection.token.claim'),
('75ecd645-129e-44cd-812d-e93bf415d29d','String','jsonType.label'),
('75ecd645-129e-44cd-812d-e93bf415d29d','website','user.attribute'),
('75ecd645-129e-44cd-812d-e93bf415d29d','true','userinfo.token.claim'),
('7eb49912-4d27-452b-a553-aacf41fde2fe','true','access.token.claim'),
('7eb49912-4d27-452b-a553-aacf41fde2fe','true','introspection.token.claim'),
('8095dcfa-94c5-4090-b7bb-4bc21d4fcb38','true','access.token.claim'),
('8095dcfa-94c5-4090-b7bb-4bc21d4fcb38','groups','claim.name'),
('8095dcfa-94c5-4090-b7bb-4bc21d4fcb38','true','id.token.claim'),
('8095dcfa-94c5-4090-b7bb-4bc21d4fcb38','true','introspection.token.claim'),
('8095dcfa-94c5-4090-b7bb-4bc21d4fcb38','String','jsonType.label'),
('8095dcfa-94c5-4090-b7bb-4bc21d4fcb38','true','multivalued'),
('8095dcfa-94c5-4090-b7bb-4bc21d4fcb38','foo','user.attribute'),
('81b101e3-15d2-46da-8142-e3461df581ae','true','access.token.claim'),
('81b101e3-15d2-46da-8142-e3461df581ae','clientHost','claim.name'),
('81b101e3-15d2-46da-8142-e3461df581ae','true','id.token.claim'),
('81b101e3-15d2-46da-8142-e3461df581ae','true','introspection.token.claim'),
('81b101e3-15d2-46da-8142-e3461df581ae','String','jsonType.label'),
('81b101e3-15d2-46da-8142-e3461df581ae','clientHost','user.session.note'),
('93832076-2e7e-4aad-9f1b-99a4ed9af6d9','true','access.token.claim'),
('93832076-2e7e-4aad-9f1b-99a4ed9af6d9','true','id.token.claim'),
('93832076-2e7e-4aad-9f1b-99a4ed9af6d9','true','introspection.token.claim'),
('93832076-2e7e-4aad-9f1b-99a4ed9af6d9','true','userinfo.token.claim'),
('9e8c49a9-ddb9-4ad6-8715-e8bd399d0a3e','true','access.token.claim'),
('9e8c49a9-ddb9-4ad6-8715-e8bd399d0a3e','true','id.token.claim'),
('9e8c49a9-ddb9-4ad6-8715-e8bd399d0a3e','true','introspection.token.claim'),
('a1f83b27-aed0-4f6f-b5ff-5012d273f100','true','access.token.claim'),
('a1f83b27-aed0-4f6f-b5ff-5012d273f100','nickname','claim.name'),
('a1f83b27-aed0-4f6f-b5ff-5012d273f100','true','id.token.claim'),
('a1f83b27-aed0-4f6f-b5ff-5012d273f100','true','introspection.token.claim'),
('a1f83b27-aed0-4f6f-b5ff-5012d273f100','String','jsonType.label'),
('a1f83b27-aed0-4f6f-b5ff-5012d273f100','nickname','user.attribute'),
('a1f83b27-aed0-4f6f-b5ff-5012d273f100','true','userinfo.token.claim'),
('aeaf9c62-d248-477a-bb84-2e5fcd32ba14','true','access.token.claim'),
('aeaf9c62-d248-477a-bb84-2e5fcd32ba14','phone_number','claim.name'),
('aeaf9c62-d248-477a-bb84-2e5fcd32ba14','true','id.token.claim'),
('aeaf9c62-d248-477a-bb84-2e5fcd32ba14','true','introspection.token.claim'),
('aeaf9c62-d248-477a-bb84-2e5fcd32ba14','String','jsonType.label'),
('aeaf9c62-d248-477a-bb84-2e5fcd32ba14','phoneNumber','user.attribute'),
('aeaf9c62-d248-477a-bb84-2e5fcd32ba14','true','userinfo.token.claim'),
('b1ac09ad-4696-4166-92f0-20b4eaaee883','true','access.token.claim'),
('b1ac09ad-4696-4166-92f0-20b4eaaee883','picture','claim.name'),
('b1ac09ad-4696-4166-92f0-20b4eaaee883','true','id.token.claim'),
('b1ac09ad-4696-4166-92f0-20b4eaaee883','true','introspection.token.claim'),
('b1ac09ad-4696-4166-92f0-20b4eaaee883','String','jsonType.label'),
('b1ac09ad-4696-4166-92f0-20b4eaaee883','picture','user.attribute'),
('b1ac09ad-4696-4166-92f0-20b4eaaee883','true','userinfo.token.claim'),
('b9a52dfe-16a9-418e-a833-6760de89be19','true','access.token.claim'),
('b9a52dfe-16a9-418e-a833-6760de89be19','middle_name','claim.name'),
('b9a52dfe-16a9-418e-a833-6760de89be19','true','id.token.claim'),
('b9a52dfe-16a9-418e-a833-6760de89be19','true','introspection.token.claim'),
('b9a52dfe-16a9-418e-a833-6760de89be19','String','jsonType.label'),
('b9a52dfe-16a9-418e-a833-6760de89be19','middleName','user.attribute'),
('b9a52dfe-16a9-418e-a833-6760de89be19','true','userinfo.token.claim'),
('c1c04504-e809-4226-99b4-cb1f3a05fab6','true','access.token.claim'),
('c1c04504-e809-4226-99b4-cb1f3a05fab6','locale','claim.name'),
('c1c04504-e809-4226-99b4-cb1f3a05fab6','true','id.token.claim'),
('c1c04504-e809-4226-99b4-cb1f3a05fab6','true','introspection.token.claim'),
('c1c04504-e809-4226-99b4-cb1f3a05fab6','String','jsonType.label'),
('c1c04504-e809-4226-99b4-cb1f3a05fab6','locale','user.attribute'),
('c1c04504-e809-4226-99b4-cb1f3a05fab6','true','userinfo.token.claim'),
('c2184425-90d5-4414-b7cf-87c3bec7c356','true','access.token.claim'),
('c2184425-90d5-4414-b7cf-87c3bec7c356','auth_time','claim.name'),
('c2184425-90d5-4414-b7cf-87c3bec7c356','true','id.token.claim'),
('c2184425-90d5-4414-b7cf-87c3bec7c356','true','introspection.token.claim'),
('c2184425-90d5-4414-b7cf-87c3bec7c356','long','jsonType.label'),
('c2184425-90d5-4414-b7cf-87c3bec7c356','AUTH_TIME','user.session.note'),
('c2363ca8-a49b-4545-91d5-09c4cc9a9370','true','access.token.claim'),
('c2363ca8-a49b-4545-91d5-09c4cc9a9370','profile','claim.name'),
('c2363ca8-a49b-4545-91d5-09c4cc9a9370','true','id.token.claim'),
('c2363ca8-a49b-4545-91d5-09c4cc9a9370','true','introspection.token.claim'),
('c2363ca8-a49b-4545-91d5-09c4cc9a9370','String','jsonType.label'),
('c2363ca8-a49b-4545-91d5-09c4cc9a9370','profile','user.attribute'),
('c2363ca8-a49b-4545-91d5-09c4cc9a9370','true','userinfo.token.claim'),
('cbc88bcf-6db4-4758-bbdb-3c35d297a98a','true','access.token.claim'),
('cbc88bcf-6db4-4758-bbdb-3c35d297a98a','client_id','claim.name'),
('cbc88bcf-6db4-4758-bbdb-3c35d297a98a','true','id.token.claim'),
('cbc88bcf-6db4-4758-bbdb-3c35d297a98a','true','introspection.token.claim'),
('cbc88bcf-6db4-4758-bbdb-3c35d297a98a','String','jsonType.label'),
('cbc88bcf-6db4-4758-bbdb-3c35d297a98a','client_id','user.session.note'),
('d9cfed4d-fbeb-4016-8a8a-2f0e5396e6d8','true','access.token.claim'),
('d9cfed4d-fbeb-4016-8a8a-2f0e5396e6d8','realm_access.roles','claim.name'),
('d9cfed4d-fbeb-4016-8a8a-2f0e5396e6d8','true','introspection.token.claim'),
('d9cfed4d-fbeb-4016-8a8a-2f0e5396e6d8','String','jsonType.label'),
('d9cfed4d-fbeb-4016-8a8a-2f0e5396e6d8','true','multivalued'),
('d9cfed4d-fbeb-4016-8a8a-2f0e5396e6d8','foo','user.attribute'),
('dc640644-610d-4d95-81c5-d7f6b4a41a6c','true','access.token.claim'),
('dc640644-610d-4d95-81c5-d7f6b4a41a6c','updated_at','claim.name'),
('dc640644-610d-4d95-81c5-d7f6b4a41a6c','true','id.token.claim'),
('dc640644-610d-4d95-81c5-d7f6b4a41a6c','true','introspection.token.claim'),
('dc640644-610d-4d95-81c5-d7f6b4a41a6c','long','jsonType.label'),
('dc640644-610d-4d95-81c5-d7f6b4a41a6c','updatedAt','user.attribute'),
('dc640644-610d-4d95-81c5-d7f6b4a41a6c','true','userinfo.token.claim'),
('e17f5bf1-7d8a-429f-afd5-9f5b909901df','true','access.token.claim'),
('e17f5bf1-7d8a-429f-afd5-9f5b909901df','zoneinfo','claim.name'),
('e17f5bf1-7d8a-429f-afd5-9f5b909901df','true','id.token.claim'),
('e17f5bf1-7d8a-429f-afd5-9f5b909901df','true','introspection.token.claim'),
('e17f5bf1-7d8a-429f-afd5-9f5b909901df','String','jsonType.label'),
('e17f5bf1-7d8a-429f-afd5-9f5b909901df','zoneinfo','user.attribute'),
('e17f5bf1-7d8a-429f-afd5-9f5b909901df','true','userinfo.token.claim'),
('e24db5ea-0ed1-4f85-a146-022345ccc071','true','access.token.claim'),
('e24db5ea-0ed1-4f85-a146-022345ccc071','locale','claim.name'),
('e24db5ea-0ed1-4f85-a146-022345ccc071','true','id.token.claim'),
('e24db5ea-0ed1-4f85-a146-022345ccc071','true','introspection.token.claim'),
('e24db5ea-0ed1-4f85-a146-022345ccc071','String','jsonType.label'),
('e24db5ea-0ed1-4f85-a146-022345ccc071','locale','user.attribute'),
('e24db5ea-0ed1-4f85-a146-022345ccc071','true','userinfo.token.claim'),
('e40156c8-65b0-4671-9547-a0a323f8fa63','true','access.token.claim'),
('e40156c8-65b0-4671-9547-a0a323f8fa63','family_name','claim.name'),
('e40156c8-65b0-4671-9547-a0a323f8fa63','true','id.token.claim'),
('e40156c8-65b0-4671-9547-a0a323f8fa63','true','introspection.token.claim'),
('e40156c8-65b0-4671-9547-a0a323f8fa63','String','jsonType.label'),
('e40156c8-65b0-4671-9547-a0a323f8fa63','lastName','user.attribute'),
('e40156c8-65b0-4671-9547-a0a323f8fa63','true','userinfo.token.claim'),
('e7c804c2-a47d-45e6-88af-f98b796965c4','true','access.token.claim'),
('e7c804c2-a47d-45e6-88af-f98b796965c4','clientAddress','claim.name'),
('e7c804c2-a47d-45e6-88af-f98b796965c4','true','id.token.claim'),
('e7c804c2-a47d-45e6-88af-f98b796965c4','true','introspection.token.claim'),
('e7c804c2-a47d-45e6-88af-f98b796965c4','String','jsonType.label'),
('e7c804c2-a47d-45e6-88af-f98b796965c4','clientAddress','user.session.note'),
('ec8b60cc-2aaf-4eda-94fc-cc3118853c1a','true','access.token.claim'),
('ec8b60cc-2aaf-4eda-94fc-cc3118853c1a','email_verified','claim.name'),
('ec8b60cc-2aaf-4eda-94fc-cc3118853c1a','true','id.token.claim'),
('ec8b60cc-2aaf-4eda-94fc-cc3118853c1a','true','introspection.token.claim'),
('ec8b60cc-2aaf-4eda-94fc-cc3118853c1a','boolean','jsonType.label'),
('ec8b60cc-2aaf-4eda-94fc-cc3118853c1a','emailVerified','user.attribute'),
('ec8b60cc-2aaf-4eda-94fc-cc3118853c1a','true','userinfo.token.claim'),
('f3027856-bea3-4a1d-955d-07cc496fa362','true','access.token.claim'),
('f3027856-bea3-4a1d-955d-07cc496fa362','phone_number_verified','claim.name'),
('f3027856-bea3-4a1d-955d-07cc496fa362','true','id.token.claim'),
('f3027856-bea3-4a1d-955d-07cc496fa362','true','introspection.token.claim'),
('f3027856-bea3-4a1d-955d-07cc496fa362','boolean','jsonType.label'),
('f3027856-bea3-4a1d-955d-07cc496fa362','phoneNumberVerified','user.attribute'),
('f3027856-bea3-4a1d-955d-07cc496fa362','true','userinfo.token.claim'),
('f42fb560-3ab2-456c-94ec-4c92cd10c1c0','true','access.token.claim'),
('f42fb560-3ab2-456c-94ec-4c92cd10c1c0','birthdate','claim.name'),
('f42fb560-3ab2-456c-94ec-4c92cd10c1c0','true','id.token.claim'),
('f42fb560-3ab2-456c-94ec-4c92cd10c1c0','true','introspection.token.claim'),
('f42fb560-3ab2-456c-94ec-4c92cd10c1c0','String','jsonType.label'),
('f42fb560-3ab2-456c-94ec-4c92cd10c1c0','birthdate','user.attribute'),
('f42fb560-3ab2-456c-94ec-4c92cd10c1c0','true','userinfo.token.claim'),
('f8491c06-6059-4fa5-8e7c-355431143c16','true','access.token.claim'),
('f8491c06-6059-4fa5-8e7c-355431143c16','true','introspection.token.claim'),
('fe4506de-cf7d-4c2f-bf94-264340798ebb','true','access.token.claim'),
('fe4506de-cf7d-4c2f-bf94-264340798ebb','organization','claim.name'),
('fe4506de-cf7d-4c2f-bf94-264340798ebb','true','id.token.claim'),
('fe4506de-cf7d-4c2f-bf94-264340798ebb','true','introspection.token.claim'),
('fe4506de-cf7d-4c2f-bf94-264340798ebb','String','jsonType.label'),
('fe4506de-cf7d-4c2f-bf94-264340798ebb','true','multivalued');
/*!40000 ALTER TABLE `PROTOCOL_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM`
--

DROP TABLE IF EXISTS `REALM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM` (
  `ID` varchar(36) NOT NULL,
  `ACCESS_CODE_LIFESPAN` int(11) DEFAULT NULL,
  `USER_ACTION_LIFESPAN` int(11) DEFAULT NULL,
  `ACCESS_TOKEN_LIFESPAN` int(11) DEFAULT NULL,
  `ACCOUNT_THEME` varchar(255) DEFAULT NULL,
  `ADMIN_THEME` varchar(255) DEFAULT NULL,
  `EMAIL_THEME` varchar(255) DEFAULT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EVENTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EVENTS_EXPIRATION` bigint(20) DEFAULT NULL,
  `LOGIN_THEME` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) DEFAULT NULL,
  `PASSWORD_POLICY` text DEFAULT NULL,
  `REGISTRATION_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `REMEMBER_ME` tinyint(1) NOT NULL DEFAULT 0,
  `RESET_PASSWORD_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `SOCIAL` tinyint(1) NOT NULL DEFAULT 0,
  `SSL_REQUIRED` varchar(255) DEFAULT NULL,
  `SSO_IDLE_TIMEOUT` int(11) DEFAULT NULL,
  `SSO_MAX_LIFESPAN` int(11) DEFAULT NULL,
  `UPDATE_PROFILE_ON_SOC_LOGIN` tinyint(1) NOT NULL DEFAULT 0,
  `VERIFY_EMAIL` tinyint(1) NOT NULL DEFAULT 0,
  `MASTER_ADMIN_CLIENT` varchar(36) DEFAULT NULL,
  `LOGIN_LIFESPAN` int(11) DEFAULT NULL,
  `INTERNATIONALIZATION_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DEFAULT_LOCALE` varchar(255) DEFAULT NULL,
  `REG_EMAIL_AS_USERNAME` tinyint(1) NOT NULL DEFAULT 0,
  `ADMIN_EVENTS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `ADMIN_EVENTS_DETAILS_ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `EDIT_USERNAME_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `OTP_POLICY_COUNTER` int(11) DEFAULT 0,
  `OTP_POLICY_WINDOW` int(11) DEFAULT 1,
  `OTP_POLICY_PERIOD` int(11) DEFAULT 30,
  `OTP_POLICY_DIGITS` int(11) DEFAULT 6,
  `OTP_POLICY_ALG` varchar(36) DEFAULT 'HmacSHA1',
  `OTP_POLICY_TYPE` varchar(36) DEFAULT 'totp',
  `BROWSER_FLOW` varchar(36) DEFAULT NULL,
  `REGISTRATION_FLOW` varchar(36) DEFAULT NULL,
  `DIRECT_GRANT_FLOW` varchar(36) DEFAULT NULL,
  `RESET_CREDENTIALS_FLOW` varchar(36) DEFAULT NULL,
  `CLIENT_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `OFFLINE_SESSION_IDLE_TIMEOUT` int(11) DEFAULT 0,
  `REVOKE_REFRESH_TOKEN` tinyint(1) NOT NULL DEFAULT 0,
  `ACCESS_TOKEN_LIFE_IMPLICIT` int(11) DEFAULT 0,
  `LOGIN_WITH_EMAIL_ALLOWED` tinyint(1) NOT NULL DEFAULT 1,
  `DUPLICATE_EMAILS_ALLOWED` tinyint(1) NOT NULL DEFAULT 0,
  `DOCKER_AUTH_FLOW` varchar(36) DEFAULT NULL,
  `REFRESH_TOKEN_MAX_REUSE` int(11) DEFAULT 0,
  `ALLOW_USER_MANAGED_ACCESS` tinyint(1) NOT NULL DEFAULT 0,
  `SSO_MAX_LIFESPAN_REMEMBER_ME` int(11) NOT NULL,
  `SSO_IDLE_TIMEOUT_REMEMBER_ME` int(11) NOT NULL,
  `DEFAULT_ROLE` varchar(255) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_ORVSDMLA56612EAEFIQ6WL5OI` (`NAME`),
  KEY `IDX_REALM_MASTER_ADM_CLI` (`MASTER_ADMIN_CLIENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM` WRITE;
/*!40000 ALTER TABLE `REALM` DISABLE KEYS */;
INSERT INTO `REALM` VALUES
('c0899c13-8583-446c-920c-28ff7136f230',60,300,60,NULL,NULL,NULL,1,1,0,NULL,'master',0,NULL,0,0,0,0,'EXTERNAL',1800,36000,0,0,'956788ee-bb07-4062-afef-55c2182709d9',1800,0,NULL,0,1,1,0,0,1,30,6,'HmacSHA1','totp','b7ae33ee-f549-4d2c-947f-6186cb7d3599','a9c49f93-7a64-4874-9eb6-dcf16729d37e','3d6ce569-d557-4e34-9d2d-9404d0da02d7','3ec3b392-8ccf-4372-b9d7-ed670243f366','40057b89-d7fc-4fc3-a995-d7f3f3225f28',2592000,0,900,1,0,'87e37d1c-2ee2-45e9-9566-c8ce81bb9428',0,0,0,0,'fa0d8771-5eb9-499b-a949-9ebe0825e69f','Keycloak');
/*!40000 ALTER TABLE `REALM` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM_ATTRIBUTE`
--

DROP TABLE IF EXISTS `REALM_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`NAME`,`REALM_ID`),
  KEY `IDX_REALM_ATTR_REALM` (`REALM_ID`),
  CONSTRAINT `FK_8SHXD6L3E9ATQUKACXGPFFPTW` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ATTRIBUTE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `REALM_ATTRIBUTE` VALUES
('_browser_header.contentSecurityPolicy','c0899c13-8583-446c-920c-28ff7136f230','frame-src \'self\'; frame-ancestors \'self\'; object-src \'none\';'),
('_browser_header.contentSecurityPolicyReportOnly','c0899c13-8583-446c-920c-28ff7136f230',''),
('_browser_header.referrerPolicy','c0899c13-8583-446c-920c-28ff7136f230','no-referrer'),
('_browser_header.strictTransportSecurity','c0899c13-8583-446c-920c-28ff7136f230','max-age=31536000; includeSubDomains'),
('_browser_header.xContentTypeOptions','c0899c13-8583-446c-920c-28ff7136f230','nosniff'),
('_browser_header.xFrameOptions','c0899c13-8583-446c-920c-28ff7136f230','SAMEORIGIN'),
('_browser_header.xRobotsTag','c0899c13-8583-446c-920c-28ff7136f230','none'),
('bruteForceProtected','c0899c13-8583-446c-920c-28ff7136f230','false'),
('bruteForceStrategy','c0899c13-8583-446c-920c-28ff7136f230','MULTIPLE'),
('defaultSignatureAlgorithm','c0899c13-8583-446c-920c-28ff7136f230','RS256'),
('displayNameHtml','c0899c13-8583-446c-920c-28ff7136f230','<div class=\"kc-logo-text\"><span>Keycloak</span></div>'),
('failureFactor','c0899c13-8583-446c-920c-28ff7136f230','30'),
('firstBrokerLoginFlowId','c0899c13-8583-446c-920c-28ff7136f230','5e7aa2b6-8e3b-4452-be78-b368b092b698'),
('maxDeltaTimeSeconds','c0899c13-8583-446c-920c-28ff7136f230','43200'),
('maxFailureWaitSeconds','c0899c13-8583-446c-920c-28ff7136f230','900'),
('maxSecondaryAuthFailures','c0899c13-8583-446c-920c-28ff7136f230','0'),
('maxTemporaryLockouts','c0899c13-8583-446c-920c-28ff7136f230','0'),
('minimumQuickLoginWaitSeconds','c0899c13-8583-446c-920c-28ff7136f230','60'),
('offlineSessionMaxLifespan','c0899c13-8583-446c-920c-28ff7136f230','5184000'),
('offlineSessionMaxLifespanEnabled','c0899c13-8583-446c-920c-28ff7136f230','false'),
('permanentLockout','c0899c13-8583-446c-920c-28ff7136f230','false'),
('quickLoginCheckMilliSeconds','c0899c13-8583-446c-920c-28ff7136f230','1000'),
('realmReusableOtpCode','c0899c13-8583-446c-920c-28ff7136f230','false'),
('waitIncrementSeconds','c0899c13-8583-446c-920c-28ff7136f230','60');
/*!40000 ALTER TABLE `REALM_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM_DEFAULT_GROUPS`
--

DROP TABLE IF EXISTS `REALM_DEFAULT_GROUPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_DEFAULT_GROUPS` (
  `REALM_ID` varchar(36) NOT NULL,
  `GROUP_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`GROUP_ID`),
  UNIQUE KEY `CON_GROUP_ID_DEF_GROUPS` (`GROUP_ID`),
  KEY `IDX_REALM_DEF_GRP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_DEF_GROUPS_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_DEFAULT_GROUPS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM_DEFAULT_GROUPS` WRITE;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_DEFAULT_GROUPS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM_ENABLED_EVENT_TYPES`
--

DROP TABLE IF EXISTS `REALM_ENABLED_EVENT_TYPES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_ENABLED_EVENT_TYPES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_TYPES_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NWEDRF5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_ENABLED_EVENT_TYPES`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM_ENABLED_EVENT_TYPES` WRITE;
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` DISABLE KEYS */;
INSERT INTO `REALM_ENABLED_EVENT_TYPES` VALUES
('c0899c13-8583-446c-920c-28ff7136f230','AUTHREQID_TO_TOKEN'),
('c0899c13-8583-446c-920c-28ff7136f230','AUTHREQID_TO_TOKEN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_DELETE'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_DELETE_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_INITIATED_ACCOUNT_LINKING'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_INITIATED_ACCOUNT_LINKING_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_LOGIN'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_LOGIN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_REGISTER'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_REGISTER_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_UPDATE'),
('c0899c13-8583-446c-920c-28ff7136f230','CLIENT_UPDATE_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','CODE_TO_TOKEN'),
('c0899c13-8583-446c-920c-28ff7136f230','CODE_TO_TOKEN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','CUSTOM_REQUIRED_ACTION'),
('c0899c13-8583-446c-920c-28ff7136f230','CUSTOM_REQUIRED_ACTION_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','DELETE_ACCOUNT'),
('c0899c13-8583-446c-920c-28ff7136f230','DELETE_ACCOUNT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','EXECUTE_ACTION_TOKEN'),
('c0899c13-8583-446c-920c-28ff7136f230','EXECUTE_ACTION_TOKEN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','EXECUTE_ACTIONS'),
('c0899c13-8583-446c-920c-28ff7136f230','EXECUTE_ACTIONS_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','FEDERATED_IDENTITY_LINK'),
('c0899c13-8583-446c-920c-28ff7136f230','FEDERATED_IDENTITY_LINK_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','FEDERATED_IDENTITY_OVERRIDE_LINK'),
('c0899c13-8583-446c-920c-28ff7136f230','FEDERATED_IDENTITY_OVERRIDE_LINK_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','GRANT_CONSENT'),
('c0899c13-8583-446c-920c-28ff7136f230','GRANT_CONSENT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','IDENTITY_PROVIDER_FIRST_LOGIN'),
('c0899c13-8583-446c-920c-28ff7136f230','IDENTITY_PROVIDER_FIRST_LOGIN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','IDENTITY_PROVIDER_LINK_ACCOUNT'),
('c0899c13-8583-446c-920c-28ff7136f230','IDENTITY_PROVIDER_LINK_ACCOUNT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','IDENTITY_PROVIDER_LOGIN'),
('c0899c13-8583-446c-920c-28ff7136f230','IDENTITY_PROVIDER_LOGIN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','IDENTITY_PROVIDER_POST_LOGIN'),
('c0899c13-8583-446c-920c-28ff7136f230','IDENTITY_PROVIDER_POST_LOGIN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','IMPERSONATE'),
('c0899c13-8583-446c-920c-28ff7136f230','IMPERSONATE_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','INVITE_ORG'),
('c0899c13-8583-446c-920c-28ff7136f230','INVITE_ORG_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','JWT_AUTHORIZATION_GRANT'),
('c0899c13-8583-446c-920c-28ff7136f230','JWT_AUTHORIZATION_GRANT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','LOGIN'),
('c0899c13-8583-446c-920c-28ff7136f230','LOGIN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','LOGOUT'),
('c0899c13-8583-446c-920c-28ff7136f230','LOGOUT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','OAUTH2_DEVICE_AUTH'),
('c0899c13-8583-446c-920c-28ff7136f230','OAUTH2_DEVICE_AUTH_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','OAUTH2_DEVICE_CODE_TO_TOKEN'),
('c0899c13-8583-446c-920c-28ff7136f230','OAUTH2_DEVICE_CODE_TO_TOKEN_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','OAUTH2_DEVICE_VERIFY_USER_CODE'),
('c0899c13-8583-446c-920c-28ff7136f230','OAUTH2_DEVICE_VERIFY_USER_CODE_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','OAUTH2_EXTENSION_GRANT'),
('c0899c13-8583-446c-920c-28ff7136f230','OAUTH2_EXTENSION_GRANT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','PERMISSION_TOKEN'),
('c0899c13-8583-446c-920c-28ff7136f230','REGISTER'),
('c0899c13-8583-446c-920c-28ff7136f230','REGISTER_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','REMOVE_CREDENTIAL'),
('c0899c13-8583-446c-920c-28ff7136f230','REMOVE_CREDENTIAL_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','REMOVE_FEDERATED_IDENTITY'),
('c0899c13-8583-446c-920c-28ff7136f230','REMOVE_FEDERATED_IDENTITY_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','REMOVE_TOTP'),
('c0899c13-8583-446c-920c-28ff7136f230','REMOVE_TOTP_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','RESET_PASSWORD'),
('c0899c13-8583-446c-920c-28ff7136f230','RESET_PASSWORD_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','RESTART_AUTHENTICATION'),
('c0899c13-8583-446c-920c-28ff7136f230','RESTART_AUTHENTICATION_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','REVOKE_GRANT'),
('c0899c13-8583-446c-920c-28ff7136f230','REVOKE_GRANT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','SEND_IDENTITY_PROVIDER_LINK'),
('c0899c13-8583-446c-920c-28ff7136f230','SEND_IDENTITY_PROVIDER_LINK_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','SEND_RESET_PASSWORD'),
('c0899c13-8583-446c-920c-28ff7136f230','SEND_RESET_PASSWORD_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','SEND_VERIFY_EMAIL'),
('c0899c13-8583-446c-920c-28ff7136f230','SEND_VERIFY_EMAIL_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','TOKEN_EXCHANGE'),
('c0899c13-8583-446c-920c-28ff7136f230','TOKEN_EXCHANGE_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_CONSENT'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_CONSENT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_CREDENTIAL'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_CREDENTIAL_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_EMAIL'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_EMAIL_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_PASSWORD'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_PASSWORD_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_PROFILE'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_PROFILE_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_TOTP'),
('c0899c13-8583-446c-920c-28ff7136f230','UPDATE_TOTP_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','USER_DISABLED_BY_PERMANENT_LOCKOUT'),
('c0899c13-8583-446c-920c-28ff7136f230','USER_DISABLED_BY_TEMPORARY_LOCKOUT'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFIABLE_CREDENTIAL_CREATE_OFFER'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFIABLE_CREDENTIAL_CREATE_OFFER_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFIABLE_CREDENTIAL_OFFER_REQUEST'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFIABLE_CREDENTIAL_OFFER_REQUEST_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFIABLE_CREDENTIAL_PRE_AUTHORIZED_GRANT'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFIABLE_CREDENTIAL_PRE_AUTHORIZED_GRANT_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFIABLE_CREDENTIAL_REQUEST'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFIABLE_CREDENTIAL_REQUEST_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFY_EMAIL'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFY_EMAIL_ERROR'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFY_PROFILE'),
('c0899c13-8583-446c-920c-28ff7136f230','VERIFY_PROFILE_ERROR');
/*!40000 ALTER TABLE `REALM_ENABLED_EVENT_TYPES` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM_EVENTS_LISTENERS`
--

DROP TABLE IF EXISTS `REALM_EVENTS_LISTENERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_EVENTS_LISTENERS` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_EVT_LIST_REALM` (`REALM_ID`),
  CONSTRAINT `FK_H846O4H0W8EPX5NXEV9F5Y69J` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_EVENTS_LISTENERS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM_EVENTS_LISTENERS` WRITE;
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` DISABLE KEYS */;
INSERT INTO `REALM_EVENTS_LISTENERS` VALUES
('c0899c13-8583-446c-920c-28ff7136f230','jboss-logging'),
('c0899c13-8583-446c-920c-28ff7136f230','keycloak-scim-outbound');
/*!40000 ALTER TABLE `REALM_EVENTS_LISTENERS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM_LOCALIZATIONS`
--

DROP TABLE IF EXISTS `REALM_LOCALIZATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_LOCALIZATIONS` (
  `REALM_ID` varchar(255) NOT NULL,
  `LOCALE` varchar(255) NOT NULL,
  `TEXTS` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci NOT NULL,
  PRIMARY KEY (`REALM_ID`,`LOCALE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_LOCALIZATIONS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM_LOCALIZATIONS` WRITE;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_LOCALIZATIONS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM_REQUIRED_CREDENTIAL`
--

DROP TABLE IF EXISTS `REALM_REQUIRED_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_REQUIRED_CREDENTIAL` (
  `TYPE` varchar(255) NOT NULL,
  `FORM_LABEL` varchar(255) DEFAULT NULL,
  `INPUT` tinyint(1) NOT NULL DEFAULT 0,
  `SECRET` tinyint(1) NOT NULL DEFAULT 0,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`TYPE`),
  CONSTRAINT `FK_5HG65LYBEVAVKQFKI3KPONH9V` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_REQUIRED_CREDENTIAL`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM_REQUIRED_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` DISABLE KEYS */;
INSERT INTO `REALM_REQUIRED_CREDENTIAL` VALUES
('password','password',1,1,'c0899c13-8583-446c-920c-28ff7136f230');
/*!40000 ALTER TABLE `REALM_REQUIRED_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM_SMTP_CONFIG`
--

DROP TABLE IF EXISTS `REALM_SMTP_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_SMTP_CONFIG` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`NAME`),
  CONSTRAINT `FK_70EJ8XDXGXD0B9HH6180IRR0O` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SMTP_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM_SMTP_CONFIG` WRITE;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SMTP_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REALM_SUPPORTED_LOCALES`
--

DROP TABLE IF EXISTS `REALM_SUPPORTED_LOCALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REALM_SUPPORTED_LOCALES` (
  `REALM_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`REALM_ID`,`VALUE`),
  KEY `IDX_REALM_SUPP_LOCAL_REALM` (`REALM_ID`),
  CONSTRAINT `FK_SUPPORTED_LOCALES_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REALM_SUPPORTED_LOCALES`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REALM_SUPPORTED_LOCALES` WRITE;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` DISABLE KEYS */;
/*!40000 ALTER TABLE `REALM_SUPPORTED_LOCALES` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REDIRECT_URIS`
--

DROP TABLE IF EXISTS `REDIRECT_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REDIRECT_URIS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_REDIR_URI_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_1BURS8PB4OUJ97H5WUPPAHV9F` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REDIRECT_URIS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REDIRECT_URIS` WRITE;
/*!40000 ALTER TABLE `REDIRECT_URIS` DISABLE KEYS */;
INSERT INTO `REDIRECT_URIS` VALUES
('18c5eaf6-7675-4164-81f5-842f39b901a8','/realms/master/account/*'),
('7a31eb93-70ac-4cb3-a60a-e1a6e6c12ad6','/realms/master/account/*'),
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','/admin/master/console/*');
/*!40000 ALTER TABLE `REDIRECT_URIS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REQUIRED_ACTION_CONFIG`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_CONFIG` (
  `REQUIRED_ACTION_ID` varchar(36) NOT NULL,
  `VALUE` longtext DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`REQUIRED_ACTION_ID`,`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REQUIRED_ACTION_CONFIG` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `REQUIRED_ACTION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REQUIRED_ACTION_PROVIDER`
--

DROP TABLE IF EXISTS `REQUIRED_ACTION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REQUIRED_ACTION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `ALIAS` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `DEFAULT_ACTION` tinyint(1) NOT NULL DEFAULT 0,
  `PROVIDER_ID` varchar(255) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REQ_ACT_PROV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_REQ_ACT_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REQUIRED_ACTION_PROVIDER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REQUIRED_ACTION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` DISABLE KEYS */;
INSERT INTO `REQUIRED_ACTION_PROVIDER` VALUES
('0fffde51-201d-44d0-97eb-b8e8ab8b8abc','delete_account','Delete Account','c0899c13-8583-446c-920c-28ff7136f230',0,0,'delete_account',60),
('2cfb8ea3-f461-419b-bd8b-41e960a480be','UPDATE_PROFILE','Update Profile','c0899c13-8583-446c-920c-28ff7136f230',1,0,'UPDATE_PROFILE',40),
('437b1705-8fcb-40ef-a9fe-3afa3235e097','UPDATE_EMAIL','Update Email','c0899c13-8583-446c-920c-28ff7136f230',0,0,'UPDATE_EMAIL',70),
('4ec70ee5-afe6-44e5-bff8-dfb72e7cf26d','webauthn-register-passwordless','Webauthn Register Passwordless','c0899c13-8583-446c-920c-28ff7136f230',1,0,'webauthn-register-passwordless',90),
('65e523f4-0fb2-40be-9a02-8d362078eac0','TERMS_AND_CONDITIONS','Terms and Conditions','c0899c13-8583-446c-920c-28ff7136f230',0,0,'TERMS_AND_CONDITIONS',20),
('67e10876-64d3-4cb4-888b-c70c7471ac28','update_user_locale','Update User Locale','c0899c13-8583-446c-920c-28ff7136f230',1,0,'update_user_locale',1000),
('6d7e3c51-fdf0-4f18-9257-40bbac85d2de','webauthn-register','Webauthn Register','c0899c13-8583-446c-920c-28ff7136f230',1,0,'webauthn-register',80),
('92e02fd7-e738-49dd-907c-6ea5014a3b9f','VERIFY_PROFILE','Verify Profile','c0899c13-8583-446c-920c-28ff7136f230',1,0,'VERIFY_PROFILE',100),
('a9d65c99-ad02-4b75-aa8b-5ef4f03aac73','CONFIGURE_TOTP','Configure OTP','c0899c13-8583-446c-920c-28ff7136f230',1,0,'CONFIGURE_TOTP',54),
('ac821619-364b-462c-ae0a-a938b579f2c7','VERIFY_EMAIL','Verify Email','c0899c13-8583-446c-920c-28ff7136f230',1,0,'VERIFY_EMAIL',50),
('c9038968-ea6b-45d0-8fba-7530b5754cc1','delete_credential','Delete Credential','c0899c13-8583-446c-920c-28ff7136f230',1,0,'delete_credential',110),
('eb8c883f-c4a4-4d27-8fa8-0330f49c37ea','UPDATE_PASSWORD','Update Password','c0899c13-8583-446c-920c-28ff7136f230',1,0,'UPDATE_PASSWORD',57),
('f582732d-d946-4c41-95b5-5f8f36267a10','idp_link','Linking Identity Provider','c0899c13-8583-446c-920c-28ff7136f230',1,0,'idp_link',120),
('f6cc7151-7811-493e-b9f2-b0f985da9b16','CONFIGURE_RECOVERY_AUTHN_CODES','Recovery Authentication Codes','c0899c13-8583-446c-920c-28ff7136f230',1,0,'CONFIGURE_RECOVERY_AUTHN_CODES',130);
/*!40000 ALTER TABLE `REQUIRED_ACTION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `RESOURCE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_5HRM2VLF9QL5FU022KQEPOVBR` (`RESOURCE_ID`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU022KQEPOVBR` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_ATTRIBUTE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_POLICY` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`POLICY_ID`),
  KEY `IDX_RES_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRPOS53XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPP213XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_POLICY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SCOPE` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`SCOPE_ID`),
  KEY `IDX_RES_SCOPE_SCOPE` (`SCOPE_ID`),
  CONSTRAINT `FK_FRSRPOS13XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRPS213XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SCOPE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_SERVER`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER` (
  `ID` varchar(36) NOT NULL,
  `ALLOW_RS_REMOTE_MGMT` tinyint(1) NOT NULL DEFAULT 0,
  `POLICY_ENFORCE_MODE` tinyint(4) DEFAULT NULL,
  `DECISION_STRATEGY` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_SERVER` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_SERVER_PERM_TICKET`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_PERM_TICKET`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_PERM_TICKET` (
  `ID` varchar(36) NOT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `REQUESTER` varchar(255) DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) NOT NULL,
  `GRANTED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `RESOURCE_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5PMT` (`OWNER`,`REQUESTER`,`RESOURCE_SERVER_ID`,`RESOURCE_ID`,`SCOPE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG82SSPMT` (`RESOURCE_SERVER_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG83SSPMT` (`RESOURCE_ID`),
  KEY `FK_FRSRHO213XCX4WNKOG84SSPMT` (`SCOPE_ID`),
  KEY `FK_FRSRPO2128CX4WNKOG82SSRFY` (`POLICY_ID`),
  KEY `IDX_PERM_TICKET_REQUESTER` (`REQUESTER`),
  KEY `IDX_PERM_TICKET_OWNER` (`OWNER`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSPMT` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG83SSPMT` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG84SSPMT` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`),
  CONSTRAINT `FK_FRSRPO2128CX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_PERM_TICKET`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_SERVER_PERM_TICKET` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_PERM_TICKET` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_SERVER_POLICY`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_POLICY` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `TYPE` varchar(255) NOT NULL,
  `DECISION_STRATEGY` tinyint(4) DEFAULT NULL,
  `LOGIC` tinyint(4) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRPT700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SERV_POL_RES_SERV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRPO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_POLICY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_SERVER_POLICY` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_POLICY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_SERVER_RESOURCE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_RESOURCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_RESOURCE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `TYPE` varchar(255) DEFAULT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `OWNER` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `OWNER_MANAGED_ACCESS` tinyint(1) NOT NULL DEFAULT 0,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSR6T700S9V50BU18WS5HA6` (`NAME`,`OWNER`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_RES_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_RESOURCE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_SERVER_RESOURCE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_RESOURCE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_SERVER_SCOPE`
--

DROP TABLE IF EXISTS `RESOURCE_SERVER_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_SERVER_SCOPE` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `ICON_URI` varchar(255) DEFAULT NULL,
  `RESOURCE_SERVER_ID` varchar(36) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_FRSRST700S9V50BU18WS5HA6` (`NAME`,`RESOURCE_SERVER_ID`),
  KEY `IDX_RES_SRV_SCOPE_RES_SRV` (`RESOURCE_SERVER_ID`),
  CONSTRAINT `FK_FRSRSO213XCX4WNKOG82SSRFY` FOREIGN KEY (`RESOURCE_SERVER_ID`) REFERENCES `RESOURCE_SERVER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_SERVER_SCOPE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_SERVER_SCOPE` WRITE;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_SERVER_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `RESOURCE_URIS`
--

DROP TABLE IF EXISTS `RESOURCE_URIS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RESOURCE_URIS` (
  `RESOURCE_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`RESOURCE_ID`,`VALUE`),
  CONSTRAINT `FK_RESOURCE_SERVER_URIS` FOREIGN KEY (`RESOURCE_ID`) REFERENCES `RESOURCE_SERVER_RESOURCE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RESOURCE_URIS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `RESOURCE_URIS` WRITE;
/*!40000 ALTER TABLE `RESOURCE_URIS` DISABLE KEYS */;
/*!40000 ALTER TABLE `RESOURCE_URIS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `REVOKED_TOKEN`
--

DROP TABLE IF EXISTS `REVOKED_TOKEN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `REVOKED_TOKEN` (
  `ID` varchar(255) NOT NULL,
  `EXPIRE` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_REV_TOKEN_ON_EXPIRE` (`EXPIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `REVOKED_TOKEN`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `REVOKED_TOKEN` WRITE;
/*!40000 ALTER TABLE `REVOKED_TOKEN` DISABLE KEYS */;
/*!40000 ALTER TABLE `REVOKED_TOKEN` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ROLE_ATTRIBUTE`
--

DROP TABLE IF EXISTS `ROLE_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROLE_ATTRIBUTE` (
  `ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROLE_ATTRIBUTE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_ATTRIBUTE_ID` FOREIGN KEY (`ROLE_ID`) REFERENCES `KEYCLOAK_ROLE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE_ATTRIBUTE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ROLE_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `ROOT_AUTH_SESSION`
--

DROP TABLE IF EXISTS `ROOT_AUTH_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `ROOT_AUTH_SESSION` (
  `ID` varchar(36) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  `TIMESTAMP` bigint(20) DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_ROOT_AUTH_SESSION_REALM` (`REALM_ID`,`TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROOT_AUTH_SESSION`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `ROOT_AUTH_SESSION` WRITE;
/*!40000 ALTER TABLE `ROOT_AUTH_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROOT_AUTH_SESSION` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `SCOPE_MAPPING`
--

DROP TABLE IF EXISTS `SCOPE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCOPE_MAPPING` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `ROLE_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`ROLE_ID`),
  KEY `IDX_SCOPE_MAPPING_ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_OUSE064PLMLR732LXJCN1Q5F1` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_MAPPING`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `SCOPE_MAPPING` WRITE;
/*!40000 ALTER TABLE `SCOPE_MAPPING` DISABLE KEYS */;
INSERT INTO `SCOPE_MAPPING` VALUES
('18c5eaf6-7675-4164-81f5-842f39b901a8','8848d75a-8e9b-4191-b36f-f2c512e5c780'),
('18c5eaf6-7675-4164-81f5-842f39b901a8','eda2aab5-f53c-45a6-82f4-048e6e8931a3');
/*!40000 ALTER TABLE `SCOPE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `SCOPE_POLICY`
--

DROP TABLE IF EXISTS `SCOPE_POLICY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `SCOPE_POLICY` (
  `SCOPE_ID` varchar(36) NOT NULL,
  `POLICY_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`SCOPE_ID`,`POLICY_ID`),
  KEY `IDX_SCOPE_POLICY_POLICY` (`POLICY_ID`),
  CONSTRAINT `FK_FRSRASP13XCX4WNKOG82SSRFY` FOREIGN KEY (`POLICY_ID`) REFERENCES `RESOURCE_SERVER_POLICY` (`ID`),
  CONSTRAINT `FK_FRSRPASS3XCX4WNKOG82SSRFY` FOREIGN KEY (`SCOPE_ID`) REFERENCES `RESOURCE_SERVER_SCOPE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCOPE_POLICY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `SCOPE_POLICY` WRITE;
/*!40000 ALTER TABLE `SCOPE_POLICY` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCOPE_POLICY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `SERVER_CONFIG`
--

DROP TABLE IF EXISTS `SERVER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `SERVER_CONFIG` (
  `SERVER_CONFIG_KEY` varchar(255) NOT NULL,
  `VALUE` longtext NOT NULL,
  `VERSION` int(11) DEFAULT 0,
  PRIMARY KEY (`SERVER_CONFIG_KEY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SERVER_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `SERVER_CONFIG` WRITE;
/*!40000 ALTER TABLE `SERVER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `SERVER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `SINGLE_USE_OBJECT`
--

DROP TABLE IF EXISTS `SINGLE_USE_OBJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `SINGLE_USE_OBJECT` (
  `ID` varchar(255) NOT NULL,
  `NOTES` text DEFAULT NULL,
  `EXPIRE` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_SINGLE_USE_OBJ_EXPIRE` (`EXPIRE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SINGLE_USE_OBJECT`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `SINGLE_USE_OBJECT` WRITE;
/*!40000 ALTER TABLE `SINGLE_USE_OBJECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `SINGLE_USE_OBJECT` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_ATTRIBUTE`
--

DROP TABLE IF EXISTS `USER_ATTRIBUTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ATTRIBUTE` (
  `NAME` varchar(255) NOT NULL,
  `VALUE` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `ID` varchar(36) NOT NULL DEFAULT 'sybase-needs-something-here',
  `LONG_VALUE_HASH` binary(64) DEFAULT NULL,
  `LONG_VALUE_HASH_LOWER_CASE` binary(64) DEFAULT NULL,
  `LONG_VALUE` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USER_ATTRIBUTE` (`USER_ID`),
  KEY `IDX_USER_ATTRIBUTE_NAME` (`NAME`,`VALUE`),
  KEY `USER_ATTR_LONG_VALUES` (`LONG_VALUE_HASH`,`NAME`),
  KEY `USER_ATTR_LONG_VALUES_LOWER_CASE` (`LONG_VALUE_HASH_LOWER_CASE`,`NAME`),
  CONSTRAINT `FK_5HRM2VLF9QL5FU043KQEPOVBR` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ATTRIBUTE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_ATTRIBUTE` WRITE;
/*!40000 ALTER TABLE `USER_ATTRIBUTE` DISABLE KEYS */;
INSERT INTO `USER_ATTRIBUTE` VALUES
('is_temporary_admin','true','c4a621cf-d331-4b28-9887-dbb7bc1d0214','ad54e41b-aa14-45cc-b115-2a8e31a10443',NULL,NULL,NULL);
/*!40000 ALTER TABLE `USER_ATTRIBUTE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_CONSENT`
--

DROP TABLE IF EXISTS `USER_CONSENT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CONSENT` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_ID` varchar(255) DEFAULT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `LAST_UPDATED_DATE` bigint(20) DEFAULT NULL,
  `CLIENT_STORAGE_PROVIDER` varchar(36) DEFAULT NULL,
  `EXTERNAL_CLIENT_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_LOCAL_CONSENT` (`CLIENT_ID`,`USER_ID`),
  UNIQUE KEY `UK_EXTERNAL_CONSENT` (`CLIENT_STORAGE_PROVIDER`,`EXTERNAL_CLIENT_ID`,`USER_ID`),
  KEY `IDX_USER_CONSENT` (`USER_ID`),
  CONSTRAINT `FK_GRNTCSNT_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_CONSENT` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_CONSENT_CLIENT_SCOPE`
--

DROP TABLE IF EXISTS `USER_CONSENT_CLIENT_SCOPE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_CONSENT_CLIENT_SCOPE` (
  `USER_CONSENT_ID` varchar(36) NOT NULL,
  `SCOPE_ID` varchar(36) NOT NULL,
  `PARAMETER` varchar(255) NOT NULL DEFAULT '#N A#',
  PRIMARY KEY (`USER_CONSENT_ID`,`SCOPE_ID`,`PARAMETER`),
  KEY `IDX_USCONSENT_CLSCOPE` (`USER_CONSENT_ID`),
  KEY `IDX_USCONSENT_SCOPE_ID` (`SCOPE_ID`),
  CONSTRAINT `FK_GRNTCSNT_CLSC_USC` FOREIGN KEY (`USER_CONSENT_ID`) REFERENCES `USER_CONSENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_CONSENT_CLIENT_SCOPE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_CONSENT_CLIENT_SCOPE` WRITE;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_CONSENT_CLIENT_SCOPE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_ENTITY`
--

DROP TABLE IF EXISTS `USER_ENTITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ENTITY` (
  `ID` varchar(36) NOT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `EMAIL_CONSTRAINT` varchar(255) DEFAULT NULL,
  `EMAIL_VERIFIED` tinyint(1) NOT NULL DEFAULT 0,
  `ENABLED` tinyint(1) NOT NULL DEFAULT 0,
  `FEDERATION_LINK` varchar(255) DEFAULT NULL,
  `FIRST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `LAST_NAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `REALM_ID` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_uca1400_ai_ci DEFAULT NULL,
  `CREATED_TIMESTAMP` bigint(20) DEFAULT NULL,
  `SERVICE_ACCOUNT_CLIENT_LINK` varchar(255) DEFAULT NULL,
  `NOT_BEFORE` int(11) NOT NULL DEFAULT 0,
  `LAST_MODIFIED_TIMESTAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_DYKN684SL8UP1CRFEI6ECKHD7` (`REALM_ID`,`EMAIL_CONSTRAINT`),
  UNIQUE KEY `UK_RU8TT6T700S9V50BU18WS5HA6` (`REALM_ID`,`USERNAME`),
  KEY `IDX_USER_EMAIL` (`EMAIL`),
  KEY `IDX_USER_SERVICE_ACCOUNT` (`REALM_ID`,`SERVICE_ACCOUNT_CLIENT_LINK`),
  KEY `IDX_USER_CREATED_TIMESTAMP` (`REALM_ID`,`CREATED_TIMESTAMP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ENTITY`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_ENTITY` WRITE;
/*!40000 ALTER TABLE `USER_ENTITY` DISABLE KEYS */;
INSERT INTO `USER_ENTITY` VALUES
('722dc370-483f-42c9-9faa-293ce641f83b','normalized.user.1788529427@example.com','normalized.user.1788529427@example.com',0,1,NULL,'정규화','테스트','c0899c13-8583-446c-920c-28ff7136f230','normalized.user.1788529427',1788529427061,NULL,0,1788529427061),
('95e7c54a-6df3-4e28-9b70-f7f0a184eeb8','outbound.demo.1788528641@example.com','outbound.demo.1788528641@example.com',0,1,NULL,'Outbound','Demo','c0899c13-8583-446c-920c-28ff7136f230','outbound.demo.1788528641',1788528641498,NULL,0,1788528641498),
('c4a621cf-d331-4b28-9887-dbb7bc1d0214',NULL,'dbc31f15-edc6-42d7-ba8a-4dc2df4b55ba',0,1,NULL,NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','root',1788526613176,NULL,0,1788526613176),
('d92fdd87-0324-434f-93d3-51ebb96ba1b3',NULL,'9091150b-56e8-4a6b-979f-34b903d4ba65',0,1,NULL,NULL,NULL,'c0899c13-8583-446c-920c-28ff7136f230','aaa',1789043935646,NULL,0,1789043935646);
/*!40000 ALTER TABLE `USER_ENTITY` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_FEDERATION_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_CONFIG` (
  `USER_FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_PROVIDER_ID`,`NAME`),
  CONSTRAINT `FK_T13HPU1J94R2EBPEKR39X5EU5` FOREIGN KEY (`USER_FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_FEDERATION_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_FEDERATION_MAPPER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_MAPPER` (
  `ID` varchar(36) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `FEDERATION_PROVIDER_ID` varchar(36) NOT NULL,
  `FEDERATION_MAPPER_TYPE` varchar(255) NOT NULL,
  `REALM_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_MAP_FED_PRV` (`FEDERATION_PROVIDER_ID`),
  KEY `IDX_USR_FED_MAP_REALM` (`REALM_ID`),
  CONSTRAINT `FK_FEDMAPPERPM_FEDPRV` FOREIGN KEY (`FEDERATION_PROVIDER_ID`) REFERENCES `USER_FEDERATION_PROVIDER` (`ID`),
  CONSTRAINT `FK_FEDMAPPERPM_REALM` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_FEDERATION_MAPPER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_FEDERATION_MAPPER_CONFIG`
--

DROP TABLE IF EXISTS `USER_FEDERATION_MAPPER_CONFIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_MAPPER_CONFIG` (
  `USER_FEDERATION_MAPPER_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`USER_FEDERATION_MAPPER_ID`,`NAME`),
  CONSTRAINT `FK_FEDMAPPER_CFG` FOREIGN KEY (`USER_FEDERATION_MAPPER_ID`) REFERENCES `USER_FEDERATION_MAPPER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_MAPPER_CONFIG`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_FEDERATION_MAPPER_CONFIG` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_MAPPER_CONFIG` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_FEDERATION_PROVIDER`
--

DROP TABLE IF EXISTS `USER_FEDERATION_PROVIDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_FEDERATION_PROVIDER` (
  `ID` varchar(36) NOT NULL,
  `CHANGED_SYNC_PERIOD` int(11) DEFAULT NULL,
  `DISPLAY_NAME` varchar(255) DEFAULT NULL,
  `FULL_SYNC_PERIOD` int(11) DEFAULT NULL,
  `LAST_SYNC` int(11) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `PROVIDER_NAME` varchar(255) DEFAULT NULL,
  `REALM_ID` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDX_USR_FED_PRV_REALM` (`REALM_ID`),
  CONSTRAINT `FK_1FJ32F6PTOLW2QY60CD8N01E8` FOREIGN KEY (`REALM_ID`) REFERENCES `REALM` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_FEDERATION_PROVIDER`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_FEDERATION_PROVIDER` WRITE;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_FEDERATION_PROVIDER` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_GROUP_MEMBERSHIP`
--

DROP TABLE IF EXISTS `USER_GROUP_MEMBERSHIP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_GROUP_MEMBERSHIP` (
  `GROUP_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `MEMBERSHIP_TYPE` varchar(255) NOT NULL,
  PRIMARY KEY (`GROUP_ID`,`USER_ID`),
  KEY `IDX_USER_GROUP_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_USER_GROUP_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_GROUP_MEMBERSHIP`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_GROUP_MEMBERSHIP` WRITE;
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` DISABLE KEYS */;
INSERT INTO `USER_GROUP_MEMBERSHIP` VALUES
('dade21e8-c7ef-4661-b7c5-688d7a97576e','95e7c54a-6df3-4e28-9b70-f7f0a184eeb8','UNMANAGED'),
('dd474d75-ba84-4bab-ab2e-ea22cfdb9974','722dc370-483f-42c9-9faa-293ce641f83b','UNMANAGED');
/*!40000 ALTER TABLE `USER_GROUP_MEMBERSHIP` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_REQUIRED_ACTION`
--

DROP TABLE IF EXISTS `USER_REQUIRED_ACTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_REQUIRED_ACTION` (
  `USER_ID` varchar(36) NOT NULL,
  `REQUIRED_ACTION` varchar(255) NOT NULL DEFAULT ' ',
  PRIMARY KEY (`REQUIRED_ACTION`,`USER_ID`),
  KEY `IDX_USER_REQACTIONS` (`USER_ID`),
  CONSTRAINT `FK_6QJ3W1JW9CVAFHE19BWSIUVMD` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_REQUIRED_ACTION`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_REQUIRED_ACTION` WRITE;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_REQUIRED_ACTION` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_ROLE_MAPPING`
--

DROP TABLE IF EXISTS `USER_ROLE_MAPPING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_ROLE_MAPPING` (
  `ROLE_ID` varchar(255) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  PRIMARY KEY (`ROLE_ID`,`USER_ID`),
  KEY `IDX_USER_ROLE_MAPPING` (`USER_ID`),
  CONSTRAINT `FK_C4FQV34P1MBYLLOXANG7B1Q3L` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_ROLE_MAPPING`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_ROLE_MAPPING` WRITE;
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` DISABLE KEYS */;
INSERT INTO `USER_ROLE_MAPPING` VALUES
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','722dc370-483f-42c9-9faa-293ce641f83b'),
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','95e7c54a-6df3-4e28-9b70-f7f0a184eeb8'),
('ddfc7bcf-5165-47c3-89dd-c57b6c5e3d40','c4a621cf-d331-4b28-9887-dbb7bc1d0214'),
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','c4a621cf-d331-4b28-9887-dbb7bc1d0214'),
('fa0d8771-5eb9-499b-a949-9ebe0825e69f','d92fdd87-0324-434f-93d3-51ebb96ba1b3');
/*!40000 ALTER TABLE `USER_ROLE_MAPPING` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `USER_VER_CREDENTIAL`
--

DROP TABLE IF EXISTS `USER_VER_CREDENTIAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER_VER_CREDENTIAL` (
  `ID` varchar(36) NOT NULL,
  `CLIENT_SCOPE_ID` varchar(36) NOT NULL,
  `USER_ID` varchar(36) NOT NULL,
  `REVISION` varchar(36) NOT NULL,
  `CREATED_DATE` bigint(20) DEFAULT NULL,
  `UPDATED_DATE` bigint(20) DEFAULT NULL,
  `USER_ATTRIBUTES` text DEFAULT NULL,
  `VERSION` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `UK_KKUWUVD67ONTGSUGOGM8UEWRE` (`USER_ID`,`CLIENT_SCOPE_ID`),
  CONSTRAINT `FK_VCRED_USER` FOREIGN KEY (`USER_ID`) REFERENCES `USER_ENTITY` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER_VER_CREDENTIAL`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `USER_VER_CREDENTIAL` WRITE;
/*!40000 ALTER TABLE `USER_VER_CREDENTIAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER_VER_CREDENTIAL` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `WEB_ORIGINS`
--

DROP TABLE IF EXISTS `WEB_ORIGINS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `WEB_ORIGINS` (
  `CLIENT_ID` varchar(36) NOT NULL,
  `VALUE` varchar(255) NOT NULL,
  PRIMARY KEY (`CLIENT_ID`,`VALUE`),
  KEY `IDX_WEB_ORIG_CLIENT` (`CLIENT_ID`),
  CONSTRAINT `FK_LOJPHO213XCX4WNKOG82SSRFY` FOREIGN KEY (`CLIENT_ID`) REFERENCES `CLIENT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WEB_ORIGINS`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `WEB_ORIGINS` WRITE;
/*!40000 ALTER TABLE `WEB_ORIGINS` DISABLE KEYS */;
INSERT INTO `WEB_ORIGINS` VALUES
('f1e3b3a5-8167-4e4b-ad6a-45b60486ced1','+');
/*!40000 ALTER TABLE `WEB_ORIGINS` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;

--
-- Table structure for table `WORKFLOW_STATE`
--

DROP TABLE IF EXISTS `WORKFLOW_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `WORKFLOW_STATE` (
  `EXECUTION_ID` varchar(255) NOT NULL,
  `RESOURCE_ID` varchar(255) NOT NULL,
  `WORKFLOW_ID` varchar(255) NOT NULL,
  `RESOURCE_TYPE` varchar(255) DEFAULT NULL,
  `SCHEDULED_STEP_ID` varchar(255) DEFAULT NULL,
  `SCHEDULED_STEP_TIMESTAMP` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`EXECUTION_ID`),
  UNIQUE KEY `UQ_WORKFLOW_RESOURCE` (`WORKFLOW_ID`,`RESOURCE_ID`),
  KEY `IDX_WORKFLOW_STATE_STEP` (`WORKFLOW_ID`,`SCHEDULED_STEP_ID`),
  KEY `IDX_WORKFLOW_STATE_PROVIDER` (`RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WORKFLOW_STATE`
--

SET @OLD_AUTOCOMMIT=@@AUTOCOMMIT, @@AUTOCOMMIT=0;
LOCK TABLES `WORKFLOW_STATE` WRITE;
/*!40000 ALTER TABLE `WORKFLOW_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `WORKFLOW_STATE` ENABLE KEYS */;
UNLOCK TABLES;
COMMIT;
SET AUTOCOMMIT=@OLD_AUTOCOMMIT;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-09-13 18:12:34
