-- MySQL dump 10.13  Distrib 5.6.13, for osx10.8 (x86_64)
--
-- Host: localhost    Database: konakart
-- ------------------------------------------------------
-- Server version	5.6.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address_book`
--

DROP TABLE IF EXISTS `address_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `entry_gender` char(1) NOT NULL,
  `entry_company` varchar(32) DEFAULT NULL,
  `entry_firstname` varchar(32) DEFAULT NULL,
  `entry_lastname` varchar(32) DEFAULT NULL,
  `entry_street_address` varchar(64) NOT NULL,
  `entry_suburb` varchar(32) DEFAULT NULL,
  `entry_postcode` varchar(10) NOT NULL,
  `entry_city` varchar(64) NOT NULL,
  `entry_state` varchar(32) DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `entry_telephone` varchar(32) DEFAULT NULL,
  `entry_telephone_1` varchar(32) DEFAULT NULL,
  `entry_email_address` varchar(96) DEFAULT NULL,
  `entry_street_address_1` varchar(64) DEFAULT NULL,
  `manufacturers_id` int(11) NOT NULL DEFAULT '0',
  `addr_store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`address_book_id`),
  KEY `idx_address_book_customers_id` (`customers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_book`
--

LOCK TABLES `address_book` WRITE;
/*!40000 ALTER TABLE `address_book` DISABLE KEYS */;
INSERT INTO `address_book` VALUES (1,1,'m','ACME Inc.','John','Doe','1 Way Street','','12345','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(2,2,'m','ACME Inc.','Andy','Admin','1 Way Street','','PostCode1','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(3,3,'m','ACME Inc.','Caty','Catalog','2 Way Street','','PostCode2','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(4,4,'m','ACME Inc.','Olly','Order','3 Way Street','','PostCode3','NeverNever','',223,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `address_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_format`
--

DROP TABLE IF EXISTS `address_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address_format` (
  `address_format_id` int(11) NOT NULL AUTO_INCREMENT,
  `address_format` varchar(255) DEFAULT NULL,
  `address_summary` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`address_format_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_format`
--

LOCK TABLES `address_format` WRITE;
/*!40000 ALTER TABLE `address_format` DISABLE KEYS */;
INSERT INTO `address_format` VALUES (1,'$firstname $lastname$cr$streets$cr$city, $postcode$cr$statecomma$country','$city / $country',NULL),(2,'$firstname $lastname$cr$streets$cr$city, $state    $postcode$cr$country','$city, $state / $country',NULL),(3,'$firstname $lastname$cr$streets$cr$city$cr$postcode - $statecomma$country','$state / $country',NULL),(4,'$firstname $lastname$cr$streets$cr$city ($postcode)$cr$country','$postcode / $country',NULL),(5,'$firstname $lastname$cr$streets$cr$postcode $city$cr$country','$city / $country',NULL);
/*!40000 ALTER TABLE `address_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_title` varchar(64) NOT NULL,
  `banners_url` varchar(255) NOT NULL,
  `banners_image` varchar(64) NOT NULL,
  `banners_group` varchar(10) NOT NULL,
  `banners_html_text` text,
  `expires_impressions` int(7) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`banners_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners_history`
--

DROP TABLE IF EXISTS `banners_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(5) NOT NULL DEFAULT '0',
  `banners_clicked` int(5) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`banners_history_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners_history`
--

LOCK TABLES `banners_history` WRITE;
/*!40000 ALTER TABLE `banners_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `banners_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL AUTO_INCREMENT,
  `categories_image` varchar(64) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(3) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `categories_invisible` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`categories_id`),
  KEY `idx_categories_parent_id` (`parent_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (3,'category_dvd_movies.gif',0,3,'2013-09-20 19:53:46','2013-09-20 20:05:57',NULL,NULL,NULL,NULL,0),(12,'subcategory_comedy.gif',3,0,'2013-09-20 19:53:46','2013-09-20 20:06:22',NULL,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_description`
--

DROP TABLE IF EXISTS `categories_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_description` (
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`categories_id`,`language_id`),
  KEY `idx_categories_name` (`categories_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_description`
--

LOCK TABLES `categories_description` WRITE;
/*!40000 ALTER TABLE `categories_description` DISABLE KEYS */;
INSERT INTO `categories_description` VALUES (3,1,'Treadmills',NULL,''),(3,2,'DVD Filme',NULL,''),(3,3,'Peliculas DVD',NULL,''),(3,4,'DVD Filmes',NULL,''),(12,1,'Performance',NULL,''),(12,2,'Komödie',NULL,''),(12,3,'Comedia',NULL,''),(12,4,'Comedia',NULL,'');
/*!40000 ALTER TABLE `categories_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration`
--

DROP TABLE IF EXISTS `configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration` (
  `configuration_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_title` varchar(64) NOT NULL,
  `configuration_key` varchar(64) NOT NULL,
  `configuration_value` varchar(255) NOT NULL,
  `configuration_description` varchar(255) NOT NULL,
  `configuration_group_id` int(11) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `use_function` varchar(255) DEFAULT NULL,
  `set_function` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `return_by_api` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`configuration_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=264 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration`
--

LOCK TABLES `configuration` WRITE;
/*!40000 ALTER TABLE `configuration` DISABLE KEYS */;
INSERT INTO `configuration` VALUES (1,'Store Name','STORE_NAME','KonaKart','The name of my store',1,1,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,1),(2,'Store Owner','STORE_OWNER','Gregory Dallari','The name of my store owner',1,2,'2013-09-20 20:00:51','2013-09-20 19:53:46',NULL,NULL,NULL,1),(3,'E-Mail Address','STORE_OWNER_EMAIL_ADDRESS','gregory.dallari@marist.edu','The e-mail address of my store owner',1,3,'2013-09-20 20:00:51','2013-09-20 19:53:46',NULL,NULL,NULL,1),(4,'E-Mail From','EMAIL_FROM','admin@konakart.com','The e-mail address used in (sent) e-mails',12,6,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(5,'Country','STORE_COUNTRY','223','The country my store is located in',1,6,NULL,'2013-09-20 19:53:46','tep_get_country_name','tep_cfg_pull_down_country_list(',NULL,1),(6,'Zone','STORE_ZONE','43','The zone my store is located in',1,7,'2013-09-20 20:00:51','2013-09-20 19:53:46','tep_cfg_get_zone_name','tep_cfg_pull_down_zone_list(',NULL,1),(7,'Show Category Counts','SHOW_COUNTS','true','Count recursively how many products are in each category',1,19,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(8,'Display Prices with Tax','DISPLAY_PRICE_WITH_TAX','false','Display prices with tax included (true) or add the tax at the end (false)',1,21,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(9,'First Name','ENTRY_FIRST_NAME_MIN_LENGTH','2','Minimum length of first name',2,1,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(10,'Last Name','ENTRY_LAST_NAME_MIN_LENGTH','2','Minimum length of last name',2,2,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(13,'Street Address','ENTRY_STREET_ADDRESS_MIN_LENGTH','5','Minimum length of street address',2,5,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(14,'Company','ENTRY_COMPANY_MIN_LENGTH','2','Minimum length of company name',2,6,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(15,'Post Code','ENTRY_POSTCODE_MIN_LENGTH','4','Minimum length of post code',2,7,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(16,'City','ENTRY_CITY_MIN_LENGTH','3','Minimum length of city',2,8,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(17,'State','ENTRY_STATE_MIN_LENGTH','2','Minimum length of state',2,9,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(18,'Telephone Number','ENTRY_TELEPHONE_MIN_LENGTH','3','Minimum length of telephone number',2,10,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(19,'Password','ENTRY_PASSWORD_MIN_LENGTH','8','Minimum length of password',2,11,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(20,'Address Book Entries','MAX_ADDRESS_BOOK_ENTRIES','10','Maximum address book entries a customer is allowed to have',3,1,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(21,'Search Results','MAX_DISPLAY_SEARCH_RESULTS','20','Number of products to list',3,2,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(22,'New Products Module','MAX_DISPLAY_NEW_PRODUCTS','10','Maximum number of latest products to cache',3,5,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(23,'Manufacturers List','MAX_DISPLAY_MANUFACTURERS_IN_A_LIST','15','Used in manufacturers box; when the number of manufacturers exceeds this number, a drop-down list will be displayed instead of the default list',3,7,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(25,'New Reviews','MAX_DISPLAY_NEW_REVIEWS','5','Maximum number of new reviews to display',3,9,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(31,'Also Purchased','MAX_DISPLAY_ALSO_PURCHASED','6','Maximum number of products to display in the \'This Customer Also Purchased\' box',3,16,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(33,'Order History','MAX_DISPLAY_ORDER_HISTORY','10','Maximum number of orders to display in the order history page',3,18,NULL,'2013-09-20 19:53:46',NULL,'integer(0,null)',NULL,1),(40,'Gender','ACCOUNT_GENDER','true','Display gender in the customers account',5,1,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(41,'Date of Birth','ACCOUNT_DOB','true','Display date of birth in the customers account',5,2,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(42,'Company','ACCOUNT_COMPANY','true','Display company in the customers account',5,3,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(43,'Suburb','ACCOUNT_SUBURB','true','Display suburb in the customers account',5,4,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(44,'State','ACCOUNT_STATE','true','Display state in the customers account',5,5,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(45,'Installed Modules','MODULE_PAYMENT_INSTALLED','cod.php','List of payment module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: cc.php;cod.php;paypal.php)',6,0,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(46,'Installed Modules','MODULE_ORDER_TOTAL_INSTALLED','ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php','List of order_total module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ot_subtotal.php;ot_tax.php;ot_shipping.php;ot_total.php)',6,0,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(47,'Installed Modules','MODULE_SHIPPING_INSTALLED','DigitalDownload;flat.php','List of shipping module filenames separated by a semi-colon. This is automatically updated. No need to edit. (Example: ups.php;flat.php;item.php)',6,0,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(48,'Enable Cash On Delivery Module','MODULE_PAYMENT_COD_STATUS','True','Do you want to accept Cash On Delevery payments?',6,1,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(49,'Payment Zone','MODULE_PAYMENT_COD_ZONE','0','If a zone is selected, only enable this payment method for that zone.',6,2,NULL,'2013-09-20 19:53:46','tep_get_zone_class_title','tep_cfg_pull_down_zone_classes(',NULL,0),(50,'Sort order of display.','MODULE_PAYMENT_COD_SORT_ORDER','0','Sort order of display. Lowest is displayed first.',6,0,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(51,'Set Order Status','MODULE_PAYMENT_COD_ORDER_STATUS_ID','0','Set the status of orders made with this payment module to this value',6,0,NULL,'2013-09-20 19:53:46','tep_get_order_status_name','tep_cfg_pull_down_order_statuses(',NULL,0),(52,'Enable Flat Shipping','MODULE_SHIPPING_FLAT_STATUS','True','Do you want to offer flat rate shipping?',6,0,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(53,'Shipping Cost','MODULE_SHIPPING_FLAT_COST','5.00','The shipping cost for all orders using this shipping method.',6,0,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(54,'Tax Class','MODULE_SHIPPING_FLAT_TAX_CLASS','0','Use the following tax class on the shipping fee.',6,0,NULL,'2013-09-20 19:53:46','tep_get_tax_class_title','tep_cfg_pull_down_tax_classes(',NULL,0),(55,'Shipping Zone','MODULE_SHIPPING_FLAT_ZONE','0','If a zone is selected, only enable this shipping method for that zone.',6,0,NULL,'2013-09-20 19:53:46','tep_get_zone_class_title','tep_cfg_pull_down_zone_classes(',NULL,0),(56,'Sort Order','MODULE_SHIPPING_FLAT_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(57,'Display Shipping','MODULE_ORDER_TOTAL_SHIPPING_STATUS','true','Do you want to display the order shipping cost?',6,1,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(58,'Sort Order','MODULE_ORDER_TOTAL_SHIPPING_SORT_ORDER','2','Sort order of display.',6,2,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(59,'Display Sub-Total','MODULE_ORDER_TOTAL_SUBTOTAL_STATUS','true','Do you want to display the order sub-total cost?',6,1,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(60,'Sort Order','MODULE_ORDER_TOTAL_SUBTOTAL_SORT_ORDER','1','Sort order of display.',6,2,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(61,'Display Tax','MODULE_ORDER_TOTAL_TAX_STATUS','true','Do you want to display the order tax value?',6,1,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(62,'Sort Order','MODULE_ORDER_TOTAL_TAX_SORT_ORDER','3','Sort order of display.',6,2,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(63,'Display Total','MODULE_ORDER_TOTAL_TOTAL_STATUS','true','Do you want to display the total order value?',6,1,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(64,'Sort Order','MODULE_ORDER_TOTAL_TOTAL_SORT_ORDER','40','Sort order of display.',6,2,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(65,'Default Currency','DEFAULT_CURRENCY','USD','Default Currency',6,0,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,1),(66,'Default Language','DEFAULT_LANGUAGE','en','Default Language',6,0,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,1),(67,'Country of Origin','SHIPPING_ORIGIN_COUNTRY','223','Select the country of origin to be used in shipping quotes.',7,1,NULL,'2013-09-20 19:53:46','tep_get_country_name','tep_cfg_pull_down_country_list(',NULL,0),(68,'Postal Code','SHIPPING_ORIGIN_ZIP','NONE','Enter the Postal Code (ZIP) of the Store to be used in shipping quotes.',7,2,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(69,'Enter the Maximum Package Weight you will ship','SHIPPING_MAX_WEIGHT','50','Carriers have a max weight limit for a single package. This is a common one for all.',7,3,NULL,'2013-09-20 19:53:46',NULL,'double(0,null)',NULL,0),(70,'Package Tare weight.','SHIPPING_BOX_WEIGHT','3','What is the weight of typical packaging of small to medium packages?',7,4,NULL,'2013-09-20 19:53:46',NULL,'double(0,null)',NULL,0),(71,'Larger packages - percentage increase.','SHIPPING_BOX_PADDING','10','For 10% enter 10',7,5,NULL,'2013-09-20 19:53:46',NULL,'double(0,null)',NULL,0),(72,'Check stock level','STOCK_CHECK','true','Check to see if sufficent stock is available',9,1,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(73,'Subtract stock','STOCK_LIMITED','true','Subtract product in stock by product orders',9,2,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(74,'Allow Checkout','STOCK_ALLOW_CHECKOUT','true','Allow customer to checkout even if there is insufficient stock',9,3,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(75,'Stock Re-order level','STOCK_REORDER_LEVEL','5','Define when stock needs to be re-ordered',9,5,NULL,'2013-09-20 19:53:46',NULL,'integer(null,null)',NULL,1),(76,'Send E-Mails','SEND_EMAILS','true','Send out e-mails',12,1,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(77,'SMTP Server','SMTP_SERVER','ENTER_YOUR_SMTP_SERVER_HERE','The SMTP server',12,2,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(78,'SMTP Secure','SMTP_SECURE','false','Whether or not the SMTP server needs user authentication',12,3,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(79,'SMTP User','SMTP_USER','user@yourdomain.com','The SMTP user',12,4,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(80,'SMTP Password','SMTP_PASSWORD','','The SMTP password',12,5,NULL,'2013-09-20 19:53:46',NULL,'password',NULL,0),(81,'Email Reply To','EMAIL_REPLY_TO','user@yourdomain.com','The Reply To Address',12,6,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(82,'Debug Email Sessions','DEBUG_EMAIL_SESSIONS','false','Debug email sessions',12,7,NULL,'2013-09-20 19:53:46',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(83,'Send Extra Emails To','SEND_EXTRA_EMAILS_TO','','Send extra emails to the following email addresses, separated by semicolons: email@address1; email@address2',12,6,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(84,'Stock Reorder Class','STOCK_REORDER_CLASS','com.konakart.bl.ReorderMgr','The Stock Reorder Implementation Cass',9,7,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,0),(86,'KonaKart cache refresh check interval','CLIENT_CONFIG_CACHE_CHECK_SECS','30','Interval in seconds for checking to see whether to refresh the KonaKart caches',11,9,NULL,'2013-09-20 19:53:46',NULL,'integer(30,null)',NULL,1),(87,'Client config cache refresh flag','CLIENT_CONFIG_CACHE_CHECK_FLAG','true','Boolean to determine whether to refresh the client config variable cache',100,1,'2013-09-20 20:00:51','2013-09-20 19:53:46',NULL,NULL,NULL,1),(88,'Image base URL','IMG_BASE_URL','http://localhost:8780/konakart/images/','The base URL for application images',4,9,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,1),(89,'Image base path','IMG_BASE_PATH','C:/Program Files/KonaKart/webapps/konakart/images','The base path where application images are saved',4,10,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,1),(90,'URL for reaching Image servlet','IMG_SERVLET_URL','/konakartadmin/uploadAction','The URL used to reach the servlet used for uploading images',4,11,NULL,'2013-09-20 19:53:46',NULL,NULL,NULL,1),(91,'Enables SSL if set to true','ENABLE_SSL','false','Enables SSL if set to true to make the site secure',16,10,NULL,'2013-09-20 19:53:50',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(92,'Port number for standard (non SSL) pages','STANDARD_PORT_NUMBER','8780','Port number used to access standard non SSL pages',16,20,NULL,'2013-09-20 19:53:50',NULL,'integer(0,null)',NULL,1),(93,'Port number for SSL pages','SSL_PORT_NUMBER','8783','Port number used to access SSL pages',16,30,NULL,'2013-09-20 19:53:50',NULL,'integer(0,null)',NULL,1),(94,'Report definitions base path','REPORTS_DEFN_PATH','C:/Program Files/KonaKart/webapps/birtviewer/reports/stores/store1/','The reports definition location',17,1,NULL,'2013-09-20 19:53:50',NULL,NULL,NULL,0),(95,'Report file extension','REPORTS_EXTENSION','.rptdesign','The report file extension - identifies report files',17,2,NULL,'2013-09-20 19:53:50',NULL,NULL,NULL,0),(96,'Report viewer URL','REPORTS_URL','http://localhost:8780/birtviewer/frameset?__report=reports/stores/store1/','The report viewer base URL',17,3,NULL,'2013-09-20 19:53:50',NULL,NULL,NULL,0),(97,'Status Page Report URL','REPORTS_STATUS_PAGE_URL','http://localhost:8780/birtviewer/run?__report=reports/stores/store1/OrdersInLast30DaysChart.rptdesign&storeId=store1','The URL for the report on the status page',17,4,NULL,'2013-09-20 19:53:50',NULL,NULL,NULL,0),(98,'E-Mail address for low stock alert','STOCK_REORDER_EMAIL','reorder_mgr@konakart.com','The e-mail address used to send an alert email when the stock level of a product falls below the reorder level',9,6,NULL,'2013-09-20 19:53:50',NULL,NULL,NULL,0),(99,'Display Coupon Entry Field','DISPLAY_COUPON_ENTRY','true','During checkout the customer will be allowed to enter a coupon if set to true',1,22,NULL,'2013-09-20 19:53:50',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(100,'Up Sell Products','MAX_DISPLAY_UP_SELL','6','Maximum number of products to display in the \'Top of Range\' box',3,20,NULL,'2013-09-20 19:53:51',NULL,'integer(0,null)',NULL,1),(101,'Cross Sell Products','MAX_DISPLAY_CROSS_SELL','6','Maximum number of products to display in the \'Similar Products\' box',3,21,NULL,'2013-09-20 19:53:51',NULL,'integer(0,null)',NULL,1),(102,'Accessories','MAX_DISPLAY_ACCESSORIES','6','Maximum number of products to display in the \'Accessories\' box',3,22,NULL,'2013-09-20 19:53:51',NULL,'integer(0,null)',NULL,1),(103,'Dependent Products','MAX_DISPLAY_DEPENDENT_PRODUCTS','6','Maximum number of products to display in the \'Warranties\' box',3,23,NULL,'2013-09-20 19:53:51',NULL,'integer(0,null)',NULL,1),(105,'Enables Checkout Without Registration','ALLOW_CHECKOUT_WITHOUT_REGISTRATION','false','This allows checkout without registration',1,24,NULL,'2013-09-20 19:53:51',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(106,'Order Integration Class','ORDER_INTEGRATION_CLASS','com.konakart.bl.OrderIntegrationMgr','The Order Integration Implementation Class, to trigger off events when an order is saved or modified',9,8,NULL,'2013-09-20 19:53:51',NULL,NULL,NULL,0),(107,'Admin Order Integration Class','ADMIN_ORDER_INTEGRATION_CLASS','com.konakartadmin.bl.AdminOrderIntegrationMgr','The Order Integration Implementation Class, to trigger off events when an order is modified from the Admin App',9,9,NULL,'2013-09-20 19:53:51',NULL,NULL,NULL,0),(108,'Base URL for SSL pages','SSL_BASE_URL','','Base URL used for SSL pages (i.e. https://myhost:8443). This overrides the SSL port number config.',16,40,NULL,'2013-09-20 19:53:52',NULL,NULL,NULL,1),(109,'Auditing for Reads','READ_AUDIT','0','Enable / Disable auditing for reads',18,1,NULL,'2013-09-20 19:53:52',NULL,'tep_cfg_pull_down_audit_list(',NULL,0),(110,'Auditing for Edits','EDIT_AUDIT','0','Enable / Disable auditing for edits',18,2,NULL,'2013-09-20 19:53:52',NULL,'tep_cfg_pull_down_audit_list(',NULL,0),(111,'Auditing for Inserts','INSERT_AUDIT','0','Enable / Disable auditing for inserts',18,3,NULL,'2013-09-20 19:53:52',NULL,'tep_cfg_pull_down_audit_list(',NULL,0),(112,'Auditing for Deletes','DELETE_AUDIT','0','Enable / Disable auditing for deletes',18,4,NULL,'2013-09-20 19:53:52',NULL,'tep_cfg_pull_down_audit_list(',NULL,0),(113,'Digital Download Base Path','DD_BASE_PATH','','Base path for digital download files',19,0,NULL,'2013-09-20 19:53:53',NULL,NULL,NULL,1),(114,'Max Number of Downloads','DD_MAX_DOWNLOADS','-1','Maximum number of downloads allowed from link. -1 for unlimited number.',19,1,NULL,'2013-09-20 19:53:53',NULL,NULL,NULL,1),(115,'Number of days link is valid','DD_MAX_DOWNLOAD_DAYS','-1','The download link remains valid for this number of days. -1 for unlimited number of days',19,2,NULL,'2013-09-20 19:53:53',NULL,NULL,NULL,1),(116,'Delete record on expiration','DD_DELETE_ON_EXPIRATION','true','When the download link expires, delete the database table record',19,3,NULL,'2013-09-20 19:53:53',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(117,'Download as an attachment','DD_DOWNLOAD_AS_ATTACHMENT','true','Download the file as an attachment rather than viewing in the browser',19,4,NULL,'2013-09-20 19:53:53',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(118,'Show Invisible Products','SHOW_INVISIBLE_PRODUCTS_IN_ADM','true','Show invisible products in the Admin App',9,4,NULL,'2013-09-20 19:53:53',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(119,'Admin App logging level','ADMIN_APP_LOGGING_LEVEL','4','Set the logging level for the KonaKart Admin App',20,1,NULL,'2013-09-20 19:53:53',NULL,'option(0=OFF,1=SEVERE,2=ERROR,4=WARNING,6=INFO,8=DEBUG)',NULL,0),(120,'Send Order Confirmation E-Mails','SEND_ORDER_CONF_EMAIL','true','Send out an e-mail when an order is saved or state changes',12,8,NULL,'2013-09-20 19:53:53',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(121,'Send Stock Reorder E-Mails','SEND_STOCK_REORDER_EMAIL','true','Send out an e-mail when the stock level of a product falls below a certain value',12,9,NULL,'2013-09-20 19:53:53',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(122,'Send Welcome E-Mails','SEND_WELCOME_EMAIL','true','Send out a welcome e-mail when a customer registers to use the cart',12,10,NULL,'2013-09-20 19:53:53',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(123,'Send New Password E-Mails','SEND_NEW_PASSWORD_EMAIL','true','Send out an e-mail containing a new password when requested by a customer',12,11,NULL,'2013-09-20 19:53:53',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(124,'Allow Free Shipping','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING','false','Do you want to allow free shipping?',6,3,NULL,'2013-09-20 19:53:54',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(125,'Free Shipping For Orders Over','MODULE_ORDER_TOTAL_SHIPPING_FREE_SHIPPING_OVER','50','Provide free shipping for orders over the set amount.',6,4,NULL,'2013-09-20 19:53:54','currencies->format',NULL,NULL,0),(126,'Provide Free Shipping For Orders Made','MODULE_ORDER_TOTAL_SHIPPING_DESTINATION','national','Provide free shipping for orders sent to the set destination.',6,5,NULL,'2013-09-20 19:53:54',NULL,'tep_cfg_select_option(array(\'national\', \'international\', \'both\'), ',NULL,0),(127,'Enable Security on API Calls','API_CALL_SECURITY','false','Do you want to enable security on API calls ?',18,5,NULL,'2013-09-20 19:53:54',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(128,'KonaKart mail properties filename','KONAKART_MAIL_PROPERTIES_FILE','C:/Program Files/KonaKart/conf/konakart_mail.properties','Location of the KonaKart mail properties file',12,8,NULL,'2013-09-20 19:53:54',NULL,'FileUpload',NULL,0),(129,'KonaKart Log file Directory','KONAKART_LOG_FILE_DIRECTORY','C:/Program Files/KonaKart/logs','The location where KonaKart will write diagnostic log files',20,2,NULL,'2013-09-20 19:53:54',NULL,NULL,NULL,0),(130,'Number of email sender threads','EMAIL_THREADS','5','Number of concurrent threads used to send newsletter eMails',12,15,NULL,'2013-09-20 19:53:55',NULL,NULL,NULL,0),(131,'Address Format for Admin App','ADMIN_APP_ADDRESS_FORMAT','$street $street1 $suburb $city $state $country','How the address is formatted in the customers panel',21,0,NULL,'2013-09-20 19:53:58',NULL,NULL,NULL,0),(132,'Base URL for logging into the App','ADMIN_APP_LOGIN_BASE_URL','https://localhost:8783/konakart/AdminLoginSubmit.action','Base URL for logging into the App from the Admin App',21,1,NULL,'2013-09-20 19:53:58',NULL,NULL,NULL,0),(133,'Window features','ADMIN_APP_LOGIN_WINDOW_FEATURES','resizable=yes,scrollbars=yes,status=yes,toolbar=yes,location=yes','Comma separated features for the application window opened by the login feature of the admin app',21,2,NULL,'2013-09-20 19:53:58',NULL,NULL,NULL,0),(134,'Login Integration Class','LOGIN_INTEGRATION_CLASS','com.konakart.bl.LoginIntegrationMgr','The Login Integration Implementation Class, to allow custom credential checking',18,6,NULL,'2013-09-20 19:53:58',NULL,NULL,NULL,0),(135,'Admin Login Integration Class','ADMIN_LOGIN_INTEGRATION_CLASS','com.konakartadmin.bl.AdminLoginIntegrationMgr','The Login Integration Implementation Class, to allow custom credential checking for the Admin App',18,7,NULL,'2013-09-20 19:53:58',NULL,NULL,NULL,0),(136,'Add wildcard search before text','ADMIN_APP_ADD_WILDCARD_BEFORE','true','When set to true, a wildcard search character is added before the specified text',21,10,NULL,'2013-09-20 19:53:58',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(137,'Add wildcard search after text','ADMIN_APP_ADD_WILDCARD_AFTER','true','When set to true, a wildcard search character is added after the specified text',21,11,NULL,'2013-09-20 19:53:58',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(138,'Customer Custom Button Label','ADMIN_APP_CUST_CUSTOM_LABEL','','When this is set, a custom button appears on the customer panel with this label',21,20,NULL,'2013-09-20 19:53:58',NULL,NULL,NULL,0),(139,'Customer Custom Button URL','ADMIN_APP_CUST_CUSTOM_URL','http://www.konakart.com','The URL that is launched when the Customer Custom button is clicked',21,21,NULL,'2013-09-20 19:53:58',NULL,NULL,NULL,0),(140,'Default Customer Choice','ADMIN_APP_DEFAULT_CUST_CHOICE_IDX','0','Sets the default customer choice droplist on the Customer Panel',21,22,NULL,'2013-09-20 19:53:58',NULL,'CustomerChoices',NULL,0),(141,'Default Customer Group','ADMIN_APP_DEFAULT_CUST_GROUP_IDX','0','Sets the default customer group droplist on the Customer Panel',21,22,NULL,'2013-09-20 19:53:58',NULL,'CustomerGroups',NULL,0),(142,'Returns Custom Button Label','ADMIN_APP_RETURNS_CUSTOM_LABEL','','When this is set, a custom button appears on the returns panels with this label',21,22,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(143,'Returns Custom Button URL','ADMIN_APP_RETURNS_CUSTOM_URL','http://www.konakart.com','The URL that is launched when the Returns Custom button is clicked',21,23,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(144,'URL for Custom1 panel','ADMIN_APP_CUSTOM_PANEL1_URL','http://www.konakart.com/?','The URL for Custom1 panel',22,0,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(145,'URL for Custom2 panel','ADMIN_APP_CUSTOM_PANEL2_URL','http://www.konakart.com/?','The URL for Custom2 panel',22,1,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(146,'URL for Custom3 panel','ADMIN_APP_CUSTOM_PANEL3_URL','http://www.konakart.com/?','The URL for Custom3 panel',22,2,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(147,'URL for Custom4 panel','ADMIN_APP_CUSTOM_PANEL4_URL','http://www.konakart.com/?','The URL for Custom4 panel',22,3,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(148,'URL for Custom5 panel','ADMIN_APP_CUSTOM_PANEL5_URL','http://www.konakart.com/?','The URL for Custom5 panel',22,4,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(149,'URL for Custom6 panel','ADMIN_APP_CUSTOM_PANEL6_URL','http://www.konakart.com/?','The URL for Custom6 panel',22,5,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(150,'URL for Custom7 panel','ADMIN_APP_CUSTOM_PANEL7_URL','http://www.konakart.com/?','The URL for Custom7 panel',22,6,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(151,'URL for Custom8 panel','ADMIN_APP_CUSTOM_PANEL8_URL','http://www.konakart.com/?','The URL for Custom8 panel',22,7,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(152,'URL for Custom9 panel','ADMIN_APP_CUSTOM_PANEL9_URL','http://www.konakart.com/?','The URL for Custom9 panel',22,8,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(153,'URL for Custom10 panel','ADMIN_APP_CUSTOM_PANEL10_URL','http://www.konakart.com/?','The URL for Custom10 panel',22,9,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(154,'Run Initial Customer Search','CUST_PANEL_RUN_INITIAL_SEARCH','true','Set to true to always run the initial Customer Search',21,12,NULL,'2013-09-20 19:53:59',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(155,'Clear button on Customer Panel removes results','CUST_PANEL_CLEAR_REMOVES_RESULTS','false','Set to true to clear both the search criteria AND the results when the clear button is clicked',21,13,NULL,'2013-09-20 19:53:59',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(156,'Enable Analytics','ENABLE_ANALYTICS','false','Enable analytics to have the analytics.code (in your Messages.properties file) inserted into the JSPs',20,3,NULL,'2013-09-20 19:53:59',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(157,'Google Data Enabled','GOOGLE_DATA_ENABLED','','Set to true to enable Google Data updates when products are amended in KonaKart',23,1,NULL,'2013-09-20 19:53:59',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(158,'Google API Key','GOOGLE_API_KEY','','Google API Key (obtain from Google) for populating Google Data with Product Information',23,100,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(159,'Google Data Username','GOOGLE_DATA_USERNAME','','Username (obtain from Google) for populating Google Data with Product Information',23,3,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(160,'Google Data Password','GOOGLE_DATA_PASSWORD','','Password (obtain from Google) for populating Google Data with Product Information',23,4,NULL,'2013-09-20 19:53:59',NULL,'password',NULL,0),(161,'Store Location','GOOGLE_DATA_LOCATION','Lake Buena Vista, FL 32830, USA','Store location (address) to be published to Google Data',23,101,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(162,'Use Solr Search Server','USE_SOLR_SEARCH','false','Use Solr search server to search for products',24,1,NULL,'2013-09-20 19:53:59',NULL,'tep_cfg_select_option(array(\'true\', \'false\') ',NULL,1),(163,'Base URL of Solr Search Server','SOLR_URL','http://localhost:8780/solr','Base URL of Solr Search Server',24,2,NULL,'2013-09-20 19:53:59',NULL,NULL,NULL,0),(164,'Store Credit Card Details','STORE_CC_DETAILS','false','Store credit card details',9,4,NULL,'2013-09-20 19:53:59',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(165,'Store Base URL','KK_BASE_URL','http://localhost:8780/konakart/','KonaKart Base URL',1,25,NULL,'2013-09-20 19:54:00',NULL,NULL,NULL,1),(166,'Multi-Store Template Store','MULTISTORE_TEMPLATE_STORE','store1','This is the storeId of the template store used when creating new stores in a multi-store installation',25,5,NULL,'2013-09-20 19:54:17',NULL,NULL,NULL,0),(167,'Multi-Store Admin Role','MULTISTORE_ADMIN_ROLE_IDX','5','Defines the Role given to Admin users of new stores',25,6,NULL,'2013-09-20 19:54:17',NULL,'Roles',NULL,0),(168,'Multi-Store Super User Role','MULTISTORE_SUPER_USER_ROLE_IDX','1','Defines the Role given to Super User user of new stores',25,6,NULL,'2013-09-20 19:54:17',NULL,'Roles',NULL,0),(169,'KonaKart new store creation SQL','KK_NEW_STORE_SQL_FILENAME','C:/Program Files/KonaKart/database/MySQL/konakart_new_store.sql','Filename containing the KonaKart new store creation SQL commands',25,10,NULL,'2013-09-20 19:54:17',NULL,'FileUpload',NULL,0),(170,'User new store creation SQL','USER_NEW_STORE_SQL_FILENAME','C:/Program Files/KonaKart/database/MySQL/konakart_user_new_store.sql','Filename containing the user defined new store creation SQL commands - these are executed after the KonaKart cloning commands',25,11,NULL,'2013-09-20 19:54:17',NULL,'FileUpload',NULL,0),(171,'Enable Wish List functionality','ENABLE_WISHLIST','false','When set to true, wish list functionality is enabled in the application',1,24,NULL,'2013-09-20 19:54:17',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(172,'Display Order Number','ADMIN_APP_ORDERS_DISPLAY_ORDER_NUM','','When this is set, the order number is displayed in the orders panel rather than the order id',21,24,NULL,'2013-09-20 19:54:17',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(173,'Admin Store Integration Class','ADMIN_STORE_INTEGRATION_CLASS','com.konakartadmin.bl.AdminStoreIntegrationMgr','The Store Integration Implementation Class, to allow custom store maintenance function',25,7,NULL,'2013-09-20 19:54:17',NULL,NULL,NULL,0),(174,'KonaKart Installation Home','INSTALLATION_HOME','C:/Program Files/KonaKart/','The home directory of this KonaKart Installation',1,26,NULL,'2013-09-20 19:54:18',NULL,NULL,NULL,1),(175,'Product Select Template','ADMIN_APP_PROD_SEL_TEMPLATE','$name','Sets the template for which attributes to view when selecting a product ($name, $sku, $id, $model, $manufacturer, $custom1 ... $custom5',21,25,NULL,'2013-09-20 19:54:18',NULL,NULL,NULL,0),(176,'Product Select Default Num Prods','ADMIN_APP_PROD_SEL_NUM_PRODS','0','Sets the default number of products displayed in the product select dialogs when opened',21,26,NULL,'2013-09-20 19:54:18',NULL,NULL,NULL,0),(177,'Product Select Max Num Prods','ADMIN_APP_PROD_SEL_MAX_NUM_PRODS','100','Sets the maximum number of products displayed in the product select dialogs after a search',21,27,NULL,'2013-09-20 19:54:18',NULL,NULL,NULL,0),(178,'Allow Cust Group Change eMail','ADMIN_APP_ALLOW_GROUP_CHANGE_MAIL','true','When this is set, a popup window appears when the group of a customer is changed to allow you to send an eMail',21,28,NULL,'2013-09-20 19:54:20',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(179,'Enable Gift Registry functionality','ENABLE_GIFT_REGISTRY','false','When set to true, gift registry functionality is enabled in the application',1,26,NULL,'2013-09-20 19:54:22',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(180,'Gift Registry Search','MAX_DISPLAY_GIFT_REGISTRIES','6','Maximum number of gift registries to display',3,24,NULL,'2013-09-20 19:54:22',NULL,'integer(0,null)',NULL,1),(181,'Gift Registry Items','MAX_DISPLAY_GIFT_REGISTRY_ITEMS','20','Maximum number of gift registry items to display',3,25,NULL,'2013-09-20 19:54:22',NULL,'integer(0,null)',NULL,1),(182,'Email Integration Class','EMAIL_INTEGRATION_CLASS','com.konakart.bl.EmailIntegrationMgr','The Email Integration Implementation Class to enable you to change the toAddress of the mail',12,16,NULL,'2013-09-20 19:54:22',NULL,NULL,NULL,0),(183,'Enable Customer Tag functionality','ENABLE_CUSTOMER_TAGS','false','When set to true, the application sets customer tags. All tag functionality is disabled when false.',5,6,NULL,'2013-09-20 19:54:22',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(184,'Enable Customer Cart Tag functionality','ENABLE_CUSTOMER_CART_TAGS','false','When set to true, the application sets customer cart tags',5,7,NULL,'2013-09-20 19:54:22',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(185,'Enable Customer WishList Tag functionality','ENABLE_CUSTOMER_WISHLIST_TAGS','false','When set to true, the application sets customer wish list tags',5,8,NULL,'2013-09-20 19:54:22',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(186,'Display Product Ids','ADMIN_APP_PRODUCTS_DISPLAY_ID','true','When this is set, the product id is displayed in the products panel',21,29,NULL,'2013-09-20 19:54:22',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(187,'Display Manufacturer Ids','ADMIN_APP_MANUFACTURERS_DISPLAY_ID','true','When this is set, the manufacturer id is displayed in the manufacturers panel',21,30,NULL,'2013-09-20 19:54:22',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(188,'Display Category Ids','ADMIN_APP_CATEGORIES_DISPLAY_ID','true','When this is set, the category id is displayed in the categories panel',21,31,NULL,'2013-09-20 19:54:22',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,0),(189,'Enable Reward Points','ENABLE_REWARD_POINTS','false','During checkout the customer will be allowed to enter reward points if set to true',26,1,NULL,'2013-09-20 19:54:23',NULL,'tep_cfg_select_option(array(\'true\', \'false\'), ',NULL,1),(190,'Reward Point Transactions','MAX_DISPLAY_REWARD_POINTS','15','Maximum number of reward point transactions to display',3,26,NULL,'2013-09-20 19:54:23',NULL,'integer(0,null)',NULL,1),(191,'Reward Points for registering','REGISTRATION_REWARD_POINTS','0','Reward points received for registration',26,2,NULL,'2013-09-20 19:54:23',NULL,'integer(0,null)',NULL,1),(192,'Reward Points for writing a review','REVIEW_REWARD_POINTS','0','Reward points received for writing a review',26,3,NULL,'2013-09-20 19:54:23',NULL,'integer(0,null)',NULL,1),(194,'1st Day of the Week','1ST_DAY_OF_WEEK','0','Define the first day of the week for the calendars in the Admin App.',21,35,NULL,'2013-09-20 19:54:24',NULL,'option(0=date.day.long.Sunday,1=date.day.long.Monday,2=date.day.long.Tuesday,3=date.day.long.Wednesday,4=date.day.long.Thursday,5=date.day.long.Friday,6=date.day.long.Saturday)',NULL,0),(195,'Display Gift Cert Entry Field','DISPLAY_GIFT_CERT_ENTRY','false','During checkout the customer will be allowed to enter a gift certificate if set to true',1,22,NULL,'2013-09-20 19:54:24',NULL,'choice(\'true\', \'false\')',NULL,1),(196,'PDF Directory','PDF_BASE_DIRECTORY','C:/Program Files/KonaKart/pdf/','Defines the root directory for the location of the PDF documents that are created',27,5,NULL,'2013-09-20 19:54:24',NULL,NULL,NULL,0),(197,'Enable PDF Invoice Download','ENABLE_PDF_INVOICE_DOWNLOAD','false','When set to true, invoices in PDF format can be downloaded from the application',27,10,NULL,'2013-09-20 19:54:24',NULL,'choice(\'true\', \'false\')',NULL,1),(198,'Templates Directory','TEMPLATE_BASE_DIRECTORY','C:/Program Files/KonaKart/templates','Defines the root directory where the velocity templates are stored',28,10,NULL,'2013-09-20 19:54:24',NULL,NULL,NULL,0),(199,'Automatically Enable Product','STOCK_ENABLE_PRODUCT','false','Automatically enable a product if quantity is set to a positive number',9,4,NULL,'2013-09-20 19:54:24',NULL,'choice(\'true\', \'false\')',NULL,0),(200,'Miscellaneous Config File','MODULE_PAYMENT_COD_MISC_CONFIG_FILE','C:/Temp/cod_misc.properties','Miscellaneous Configuration File (just an example - not actually used).',6,6,NULL,'2013-09-20 19:54:24','','FileUpload',NULL,0),(201,'Display Customer Ids','ADMIN_APP_CUSTOMERS_DISPLAY_ID','true','When this is set, the customer id is displayed in the edit customer panel',21,29,NULL,'2013-09-20 19:54:25',NULL,'choice(\'true\', \'false\')',NULL,0),(202,'Display Subscriptions Button','ADMIN_APP_DISPLAY_SUBSCRIPTIONS_BUTTON','false','When this is set, a Subscriptions button is displayed in the Customers and Orders panels',21,30,NULL,'2013-09-20 19:54:26',NULL,'choice(\'true\', \'false\')',NULL,0),(203,'Allow multiple basket entries','ALLOW_MULTIPLE_BASKET_ENTRIES','false','When set, allow the same product to be entered into the basket more than once without updating the quantity of the existing one',9,11,NULL,'2013-09-20 19:54:26',NULL,'choice(\'true\', \'false\')',NULL,1),(204,'Allow using the basket price','ALLOW_BASKET_PRICE','false','Allows you to define the price in the basket object when adding a product to the basket',18,8,NULL,'2013-09-20 19:54:28',NULL,'choice(\'true\', \'false\')',NULL,1),(205,'Tax Quantity Rule','TAX_QUANTITY_RULE','1','Tax calculated on total=1\nTax calculated per item and then rounded=2',9,13,NULL,'2013-09-20 19:54:28',NULL,'integer(1,2), ',NULL,0),(206,'No of decimal places for currency','ADMIN_CURRENCY_DECIMAL_PLACES','2','No of decimal places allowed for entering prices in the admin app',21,40,NULL,'2013-09-20 19:54:28',NULL,'integer(0,9), ',NULL,1),(207,'Street Address 1','ACCOUNT_STREET_ADDRESS_1','false','Display 2nd street address in the customers account',5,4,NULL,'2013-09-20 19:54:29',NULL,'choice(\'true\', \'false\')',NULL,1),(208,'Street Address 1','ENTRY_STREET_ADDRESS1_MIN_LENGTH','5','Minimum length of street address 1',2,5,NULL,'2013-09-20 19:54:29',NULL,'integer(0,null)',NULL,1),(209,'Warn of Duplicate SKUs','ADMIN_APP_WARN_OF_DUPLICATE_SKUS','false','Issue warning in Admin App of duplicate SKUs',21,32,NULL,'2013-09-20 19:54:29',NULL,'choice(\'true\', \'false\')',NULL,0),(210,'Exported Orders Directory','EXPORT_ORDERS_BASE_DIRECTORY','C:/Program Files/KonaKart/orders','Defines the root directory where the Orders are exported to',7,7,NULL,'2013-09-20 19:54:33',NULL,NULL,NULL,0),(211,'Allow Wish List when not logged in','ALLOW_WISHLIST_WHEN_NOT_LOGGED_IN','false','Allow wish list functionality to be available for customers that have not logged in',1,25,NULL,'2013-09-20 19:54:33',NULL,'choice(\'true\', \'false\')',NULL,1),(212,'Ship From Street Address','SHIP_FROM_STREET_ADDRESS','','Ship From Street Address - used by some of the Shipping Modules',7,2,NULL,'2013-09-20 19:54:33',NULL,NULL,NULL,0),(213,'Ship From City','SHIP_FROM_CITY','','Ship From City - used by some of the Shipping Modules',7,2,NULL,'2013-09-20 19:54:33',NULL,NULL,NULL,0),(214,'Hidden Product Types','HIDDEN_PRODUCT_TYPES','','The Product Types that are not shown in the droplist on the Edit Product Panel',21,27,NULL,'2013-09-20 19:54:34',NULL,NULL,NULL,0),(215,'Search Result Page Links','MAX_DISPLAY_PAGE_LINKS','5','Maximum number of links used for page-sets - must be odd number',3,3,NULL,'2013-09-20 19:54:34',NULL,'integer(3,null)',NULL,1),(216,'Default state for reviews','DEFAULT_REVIEW_STATE','0','Allows you to make reviews visible only after approval if initial state is set to 1',18,10,NULL,'2013-09-20 19:54:34',NULL,'integer(0,null)',NULL,1),(217,'Message Types','MESSAGE_TYPES','Application,AdminApp,AdminAppHelp','Used to populate the Message Types droplist in the Messages section',21,41,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(218,'Use D/B For Messages','USE_DB_FOR_MESSAGES','false','If true use the Database for the system messsages, if false use file-based messages',21,40,NULL,'2013-09-20 19:54:35',NULL,'choice(\'true\', \'false\')',NULL,1),(219,'Address Select Default Num Addrs','ADMIN_APP_ADDR_SEL_NUM_ADDRS','50','Sets the default number of addresses displayed in the address select dialogs when opened',21,50,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(220,'Address Select Max Num Addrs','ADMIN_APP_ADDR_SEL_MAX_NUM_ADDRS','100','Sets the maximum number of addresses displayed in the address select dialogs after a search',21,51,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(221,'Addr Format for Prod Addr Sel','ADMIN_APP_SELECT_PROD_ADDR_FORMAT','$company $street $street1 $suburb $city $state $country','How the address is formatted in the product select address panel',21,0,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(222,'Addr Format for Prod Addr','ADMIN_APP_PROD_ADDR_FORMAT','$company $street $street1 $suburb $city $state $country','How the address is formatted in the product address panel',21,0,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(223,'Addr Format for Cust Addr','ADMIN_APP_CUST_ADDR_FORMAT','$street $street1 $suburb $city $state $country','How the address is formatted in the customer address panel',21,0,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(224,'Addr Format for Manu Addr','ADMIN_APP_MANU_ADDR_FORMAT','$street $street1 $suburb $city $state $country','How the address is formatted in the manufacturer address panel',21,0,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(225,'Manufacturer Panel Default Num Manus','ADMIN_APP_MANU_SEL_NUM_MANUS','50','Sets the default number of manufacturers displayed in the manufacturer panels and dialogs when opened',21,52,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(226,'Manufacturer Panel Max Num Manus','ADMIN_APP_MANU_SEL_MAX_NUM_MANUS','100','Sets the maximum number of manufacturers displayed in the manufacturer panels and dialogs after a search',21,53,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(227,'Prod Option Panel Default Num Prod Opts','ADMIN_APP_PROD_OPT_SEL_NUM_PROD_OPTS','50','Sets the default number of product options displayed in the prod option panel when opened',21,54,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(228,'Prod Option Panel Max Num Prod Opts','ADMIN_APP_PROD_OPT_SEL_MAX_NUM_PROD_OPTS','100','Sets the maximum number of product options displayed in the prod option panel after a search',21,55,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(229,'Prod Custom Attr Panel Default Num Attrs','ADMIN_APP_PROD_ATTR_SEL_NUM_PROD_ATTRS','50','Sets the default number of product attributes displayed in the product attribute dialogs when opened',21,56,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(230,'Prod Custom Attr Panel Max Num Attrs','ADMIN_APP_PROD_ATTR_SEL_MAX_NUM_PROD_ATTRS','100','Sets the maximum number of product attributes displayed in the product attribute dialogs after a search',21,57,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(231,'Template Panel Default Num Templates','ADMIN_APP_TMPL_SEL_NUM_TMPLS','50','Sets the default number of templates displayed in the select template dialogs when opened',21,58,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(232,'Template Panel Max Num Templates','ADMIN_APP_TMPL_SEL_MAX_NUM_TMPLS','100','Sets the maximum number of templatess displayed in the select template dialogs after a search',21,59,NULL,'2013-09-20 19:54:35',NULL,NULL,NULL,0),(233,'Fetch Descriptions Separately','FETCH_PRODUCT_DESCRIPTIONS_SEPARATELY','false','Fetch Product Descriptions Separately',9,30,NULL,'2013-09-20 19:54:35',NULL,'choice(\'true\', \'false\')',NULL,0),(234,'Use Country Names in Msg Cat','USE_MSG_CAT_FOR_COUNTRY_NAMES','false','Use the Country Names in the Message Catalogues',1,29,NULL,'2013-09-20 19:54:36',NULL,'choice(\'true\', \'false\')',NULL,1),(235,'Enable Customer Event functionality','ENABLE_CUSTOMER_EVENTS','false','When set to true, the application inserts customer events. All event functionality is disabled when false.',5,9,NULL,'2013-09-20 19:54:36',NULL,'choice(\'true\', \'false\')',NULL,1),(236,'Google Shopping Account Id','GOOGLE_DATA_ACCOUNT_ID','','Account Id (obtain from Google) for populating Google Shopping with Product Information',23,3,NULL,'2013-09-20 19:54:36',NULL,NULL,NULL,0),(237,'Custom Panel Height','ADMIN_APP_CUSTOM_PANEL_HEIGHT','500px','Custom Panel Height eg. 100% or 700px etc',22,20,NULL,'2013-09-20 19:54:36',NULL,NULL,NULL,0),(238,'Suggested Search Items','MAX_NUM_SUGGESTED_SEARCH_ITEMS','10','Max number of suggested search items to display',3,3,NULL,'2013-09-20 19:54:37',NULL,'integer(0,null)',NULL,1),(239,'Installed Other Modules','MODULE_OTHERS_INSTALLED','','List of Other modules separated by a semi-colon.  Automatically updated.  No need to edit.',6,0,NULL,'2013-09-20 19:54:37',NULL,NULL,NULL,0),(240,'How to format the URLs for SEO','SEO_URL_FORMAT','2','Decide the format of the URLs for SEO',1,30,NULL,'2013-09-20 19:54:38',NULL,'option(0=OFF,1=SEO Parameters,2=SEO Directory Structure)',NULL,1),(241,'Store-Front base','STORE_FRONT_BASE','/konakart','Base directory used in JSPs for store-front application',4,12,NULL,'2013-09-20 19:54:38',NULL,NULL,NULL,1),(242,'Store-Front image base','STORE_FRONT_IMG_BASE','/konakart/images','Image base used in JSPs for store-front application',4,13,NULL,'2013-09-20 19:54:38',NULL,NULL,NULL,1),(243,'Store-Front script base','STORE_FRONT_SCRIPT_BASE','/konakart/script','Script base used in JSPs for store-front application',4,14,NULL,'2013-09-20 19:54:38',NULL,NULL,NULL,1),(244,'Store-Front style sheet base','STORE_FRONT_STYLE_BASE','/konakart/styles','Style sheet base used in JSPs for store-front application',4,15,NULL,'2013-09-20 19:54:38',NULL,NULL,NULL,1),(245,'Enable Digital Downloads','MODULE_SHIPPING_DD_STATUS','True','Set it to true if you sell digital downloads',6,0,NULL,'2013-09-20 19:54:39',NULL,'choice(\'true\', \'false\')',NULL,0),(246,'Sort Order','MODULE_SHIPPING_DD_SORT_ORDER','0','Sort order of display.',6,0,NULL,'2013-09-20 19:54:39',NULL,NULL,NULL,0),(247,'Suggested Search prepend regex','SOLR_TERMS_PRE_REGEX','.*','Regex prepended to search string used for searching within SOLR term',24,3,NULL,'2013-09-20 19:54:43',NULL,NULL,NULL,0),(248,'Suggested Search append regex','SOLR_TERMS_POST_REGEX','.*','Regex appended to search string used for searching within SOLR term',24,4,NULL,'2013-09-20 19:54:43',NULL,NULL,NULL,0),(249,'Delete from index on commit','SOLR_DELETE_ON_COMMIT','true','On commit, delete from index products marked for deletion',24,5,NULL,'2013-09-20 19:54:43',NULL,'choice(\'true\', \'false\')',NULL,0),(250,'Special Price Products','MAX_DISPLAY_SPECIALS','9','Maximum number of special price products to cache',3,5,NULL,'2013-09-20 19:54:43',NULL,'integer(0,null)',NULL,1),(251,'Stock warn level','STOCK_WARN_LEVEL','5','Warn customer when stock reaches this level',9,5,NULL,'2013-09-20 19:54:43',NULL,'integer(null,null)',NULL,1),(252,'Use Solr dynamic facets','SOLR_DYNAMIC_FACETS','false','When true, the displayed facets are valid for only the products returned by the search rather than for all the available products.',24,6,NULL,'2013-09-20 19:54:43',NULL,'choice(\'true\', \'false\')',NULL,1),(253,'Use Slider for price filter','PRICE_FACETS_SLIDER','true','When false, price facets are displayed instead of a slider for filtering a result set by price.',1,31,NULL,'2013-09-20 19:54:43',NULL,'choice(\'true\', \'false\')',NULL,1),(254,'Google Product Link','GOOGLE_PRODUCT_LINK','SelectProd.action?prodId=','Added to the KonaKart base URL to form a link to a product that is sent to Google.  The ProductId is appended at the end.',23,105,NULL,'2013-09-20 19:54:43',NULL,NULL,NULL,0),(255,'Batch Log file Directory','BATCH_LOG_FILE_DIRECTORY','C:/Program Files/KonaKart/batchlogs/','The location where KonaKart will write batch log files',20,2,NULL,'2013-09-20 19:54:44',NULL,NULL,NULL,0),(256,'Mobile Store-Front script base','STORE_FRONT_SCRIPT_BASE_M','/konakart-m/script','Script base used in JSPs for mobile store-front application',4,20,NULL,'2013-09-20 19:54:45',NULL,NULL,NULL,1),(257,'Mobile Store-Front style sheet base','STORE_FRONT_STYLE_BASE_M','/konakart-m/styles','Style sheet base used in JSPs for mobile store-front application',4,21,NULL,'2013-09-20 19:54:45',NULL,NULL,NULL,1),(258,'Sitemap file Directory','SITEMAP_FILE_DIRECTORY','C:/Program Files/KonaKart/batchlogs/','The location where KonaKart will write sitemap files',30,1,NULL,'2013-09-20 19:54:46',NULL,NULL,NULL,0),(259,'Import files path','IMPORT_FILES_PATH','C:/Program Files/KonaKart/data/','The import data files location',29,50,NULL,'2013-09-20 19:54:46',NULL,NULL,NULL,0),(260,'Importer Log file Directory','IMPORTER_LOG_FILE_DIRECTORY','C:/Program Files/KonaKart/importerlogs/','The location where KonaKart will write importer log files',29,60,NULL,'2013-09-20 19:54:46',NULL,NULL,NULL,0),(261,'Enable multi-vendor mode','MULTI_VENDOR_MODE','false','Set to true to enable multi-vendor mode. KK Engine must be in shared products mode.',1,35,NULL,'2013-09-20 19:54:46',NULL,'choice(\'true\', \'false\')',NULL,1),(262,'Addr Format for Store Addr','ADMIN_APP_STORE_ADDR_FORMAT','$street $street1 $suburb $city $state $country','How the address is formatted in the store address panel',21,1,NULL,'2013-09-20 19:54:46',NULL,NULL,NULL,0),(263,'Storefront force login','APP_FORCE_LOOGIN','false','Set to true to force customers to login in order to be able to use the storefront application.',1,38,NULL,'2013-09-20 19:54:46',NULL,'choice(\'true\', \'false\')',NULL,1);
/*!40000 ALTER TABLE `configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuration_group`
--

DROP TABLE IF EXISTS `configuration_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `configuration_group` (
  `configuration_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `configuration_group_title` varchar(64) NOT NULL,
  `configuration_group_description` varchar(255) NOT NULL,
  `sort_order` int(5) DEFAULT NULL,
  `visible` int(1) DEFAULT '1',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`configuration_group_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuration_group`
--

LOCK TABLES `configuration_group` WRITE;
/*!40000 ALTER TABLE `configuration_group` DISABLE KEYS */;
INSERT INTO `configuration_group` VALUES (1,'My Store','General information about my store',1,1,NULL),(2,'Minimum Values','The minimum values for functions / data',2,1,NULL),(3,'Maximum Values','The maximum values for functions / data',3,1,NULL),(4,'Images','Image parameters',4,1,NULL),(5,'Customer Details','Customer account configuration',5,1,NULL),(6,'Module Options','Hidden from configuration',6,0,NULL),(7,'Shipping/Packaging','Shipping options available at my store',7,1,NULL),(9,'Stock','Stock configuration options',9,1,NULL),(11,'Cache','Caching configuration options',11,1,NULL),(12,'E-Mail Options','General setting for E-Mail transport and HTML E-Mails',12,1,NULL),(20,'Logging','Logging configuration options',20,1,NULL),(26,'Reward Points','Reward Points Configuration',26,1,NULL),(27,'PDF Configuration','PDF Configuration',27,1,NULL),(28,'Velocity Templates','Velocity Templates Configuration',28,1,NULL),(29,'Importer Config','Importer Configuration',29,1,NULL),(30,'Sitemap','Sitemap Configuration',30,1,NULL);
/*!40000 ALTER TABLE `configuration_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `counter_id` int(11) NOT NULL AUTO_INCREMENT,
  `startdate` char(8) DEFAULT NULL,
  `counter` int(12) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`counter_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES (1,NULL,1,NULL);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter_history`
--

DROP TABLE IF EXISTS `counter_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter_history` (
  `month` char(8) DEFAULT NULL,
  `counter` int(12) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter_history`
--

LOCK TABLES `counter_history` WRITE;
/*!40000 ALTER TABLE `counter_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `counter_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL AUTO_INCREMENT,
  `countries_name` varchar(64) NOT NULL,
  `countries_iso_code_2` char(2) NOT NULL,
  `countries_iso_code_3` char(3) NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `msgCatKey` varchar(32) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`countries_id`),
  KEY `IDX_COUNTRIES_NAME` (`countries_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Afghanistan','AF','AFG',1,NULL,'CTRY.AFG',1),(2,'Albania','AL','ALB',1,NULL,'CTRY.ALB',1),(3,'Algeria','DZ','DZA',1,NULL,'CTRY.DZA',1),(4,'American Samoa','AS','ASM',1,NULL,'CTRY.ASM',1),(5,'Andorra','AD','AND',1,NULL,'CTRY.AND',1),(6,'Angola','AO','AGO',1,NULL,'CTRY.AGO',1),(7,'Anguilla','AI','AIA',1,NULL,'CTRY.AIA',1),(8,'Antarctica','AQ','ATA',1,NULL,'CTRY.ATA',1),(9,'Antigua and Barbuda','AG','ATG',1,NULL,'CTRY.ATG',1),(10,'Argentina','AR','ARG',1,NULL,'CTRY.ARG',1),(11,'Armenia','AM','ARM',1,NULL,'CTRY.ARM',1),(12,'Aruba','AW','ABW',1,NULL,'CTRY.ABW',1),(13,'Australia','AU','AUS',1,NULL,'CTRY.AUS',1),(14,'Austria','AT','AUT',5,NULL,'CTRY.AUT',1),(15,'Azerbaijan','AZ','AZE',1,NULL,'CTRY.AZE',1),(16,'Bahamas','BS','BHS',1,NULL,'CTRY.BHS',1),(17,'Bahrain','BH','BHR',1,NULL,'CTRY.BHR',1),(18,'Bangladesh','BD','BGD',1,NULL,'CTRY.BGD',1),(19,'Barbados','BB','BRB',1,NULL,'CTRY.BRB',1),(20,'Belarus','BY','BLR',1,NULL,'CTRY.BLR',1),(21,'Belgium','BE','BEL',1,NULL,'CTRY.BEL',1),(22,'Belize','BZ','BLZ',1,NULL,'CTRY.BLZ',1),(23,'Benin','BJ','BEN',1,NULL,'CTRY.BEN',1),(24,'Bermuda','BM','BMU',1,NULL,'CTRY.BMU',1),(25,'Bhutan','BT','BTN',1,NULL,'CTRY.BTN',1),(26,'Bolivia','BO','BOL',1,NULL,'CTRY.BOL',1),(27,'Bosnia and Herzegowina','BA','BIH',1,NULL,'CTRY.BIH',1),(28,'Botswana','BW','BWA',1,NULL,'CTRY.BWA',1),(29,'Bouvet Island','BV','BVT',1,NULL,'CTRY.BVT',1),(30,'Brazil','BR','BRA',1,NULL,'CTRY.BRA',1),(31,'British Indian Ocean Territory','IO','IOT',1,NULL,'CTRY.IOT',1),(32,'Brunei Darussalam','BN','BRN',1,NULL,'CTRY.BRN',1),(33,'Bulgaria','BG','BGR',1,NULL,'CTRY.BGR',1),(34,'Burkina Faso','BF','BFA',1,NULL,'CTRY.BFA',1),(35,'Burundi','BI','BDI',1,NULL,'CTRY.BDI',1),(36,'Cambodia','KH','KHM',1,NULL,'CTRY.KHM',1),(37,'Cameroon','CM','CMR',1,NULL,'CTRY.CMR',1),(38,'Canada','CA','CAN',1,NULL,'CTRY.CAN',1),(39,'Cape Verde','CV','CPV',1,NULL,'CTRY.CPV',1),(40,'Cayman Islands','KY','CYM',1,NULL,'CTRY.CYM',1),(41,'Central African Republic','CF','CAF',1,NULL,'CTRY.CAF',1),(42,'Chad','TD','TCD',1,NULL,'CTRY.TCD',1),(43,'Chile','CL','CHL',1,NULL,'CTRY.CHL',1),(44,'China','CN','CHN',1,NULL,'CTRY.CHN',1),(45,'Christmas Island','CX','CXR',1,NULL,'CTRY.CXR',1),(46,'Cocos (Keeling) Islands','CC','CCK',1,NULL,'CTRY.CCK',1),(47,'Colombia','CO','COL',1,NULL,'CTRY.COL',1),(48,'Comoros','KM','COM',1,NULL,'CTRY.COM',1),(49,'Congo','CG','COG',1,NULL,'CTRY.COG',1),(50,'Cook Islands','CK','COK',1,NULL,'CTRY.COK',1),(51,'Costa Rica','CR','CRI',1,NULL,'CTRY.CRI',1),(52,'Cote D\'Ivoire','CI','CIV',1,NULL,'CTRY.CIV',1),(53,'Croatia','HR','HRV',1,NULL,'CTRY.HRV',1),(54,'Cuba','CU','CUB',1,NULL,'CTRY.CUB',1),(55,'Cyprus','CY','CYP',1,NULL,'CTRY.CYP',1),(56,'Czech Republic','CZ','CZE',1,NULL,'CTRY.CZE',1),(57,'Denmark','DK','DNK',1,NULL,'CTRY.DNK',1),(58,'Djibouti','DJ','DJI',1,NULL,'CTRY.DJI',1),(59,'Dominica','DM','DMA',1,NULL,'CTRY.DMA',1),(60,'Dominican Republic','DO','DOM',1,NULL,'CTRY.DOM',1),(61,'East Timor','TP','TMP',1,NULL,'CTRY.TMP',1),(62,'Ecuador','EC','ECU',1,NULL,'CTRY.ECU',1),(63,'Egypt','EG','EGY',1,NULL,'CTRY.EGY',1),(64,'El Salvador','SV','SLV',1,NULL,'CTRY.SLV',1),(65,'Equatorial Guinea','GQ','GNQ',1,NULL,'CTRY.GNQ',1),(66,'Eritrea','ER','ERI',1,NULL,'CTRY.ERI',1),(67,'Estonia','EE','EST',1,NULL,'CTRY.EST',1),(68,'Ethiopia','ET','ETH',1,NULL,'CTRY.ETH',1),(69,'Falkland Islands (Malvinas)','FK','FLK',1,NULL,'CTRY.FLK',1),(70,'Faroe Islands','FO','FRO',1,NULL,'CTRY.FRO',1),(71,'Fiji','FJ','FJI',1,NULL,'CTRY.FJI',1),(72,'Finland','FI','FIN',1,NULL,'CTRY.FIN',1),(73,'France','FR','FRA',1,NULL,'CTRY.FRA',1),(74,'France, Metropolitan','FX','FXX',1,NULL,'CTRY.FXX',1),(75,'French Guiana','GF','GUF',1,NULL,'CTRY.GUF',1),(76,'French Polynesia','PF','PYF',1,NULL,'CTRY.PYF',1),(77,'French Southern Territories','TF','ATF',1,NULL,'CTRY.ATF',1),(78,'Gabon','GA','GAB',1,NULL,'CTRY.GAB',1),(79,'Gambia','GM','GMB',1,NULL,'CTRY.GMB',1),(80,'Georgia','GE','GEO',1,NULL,'CTRY.GEO',1),(81,'Germany','DE','DEU',5,NULL,'CTRY.DEU',1),(82,'Ghana','GH','GHA',1,NULL,'CTRY.GHA',1),(83,'Gibraltar','GI','GIB',1,NULL,'CTRY.GIB',1),(84,'Greece','GR','GRC',1,NULL,'CTRY.GRC',1),(85,'Greenland','GL','GRL',1,NULL,'CTRY.GRL',1),(86,'Grenada','GD','GRD',1,NULL,'CTRY.GRD',1),(87,'Guadeloupe','GP','GLP',1,NULL,'CTRY.GLP',1),(88,'Guam','GU','GUM',1,NULL,'CTRY.GUM',1),(89,'Guatemala','GT','GTM',1,NULL,'CTRY.GTM',1),(90,'Guinea','GN','GIN',1,NULL,'CTRY.GIN',1),(91,'Guinea-bissau','GW','GNB',1,NULL,'CTRY.GNB',1),(92,'Guyana','GY','GUY',1,NULL,'CTRY.GUY',1),(93,'Haiti','HT','HTI',1,NULL,'CTRY.HTI',1),(94,'Heard and Mc Donald Islands','HM','HMD',1,NULL,'CTRY.HMD',1),(95,'Honduras','HN','HND',1,NULL,'CTRY.HND',1),(96,'Hong Kong','HK','HKG',1,NULL,'CTRY.HKG',1),(97,'Hungary','HU','HUN',1,NULL,'CTRY.HUN',1),(98,'Iceland','IS','ISL',1,NULL,'CTRY.ISL',1),(99,'India','IN','IND',1,NULL,'CTRY.IND',1),(100,'Indonesia','ID','IDN',1,NULL,'CTRY.IDN',1),(101,'Iran (Islamic Republic of)','IR','IRN',1,NULL,'CTRY.IRN',1),(102,'Iraq','IQ','IRQ',1,NULL,'CTRY.IRQ',1),(103,'Ireland','IE','IRL',1,NULL,'CTRY.IRL',1),(104,'Israel','IL','ISR',1,NULL,'CTRY.ISR',1),(105,'Italy','IT','ITA',1,NULL,'CTRY.ITA',1),(106,'Jamaica','JM','JAM',1,NULL,'CTRY.JAM',1),(107,'Japan','JP','JPN',1,NULL,'CTRY.JPN',1),(108,'Jordan','JO','JOR',1,NULL,'CTRY.JOR',1),(109,'Kazakhstan','KZ','KAZ',1,NULL,'CTRY.KAZ',1),(110,'Kenya','KE','KEN',1,NULL,'CTRY.KEN',1),(111,'Kiribati','KI','KIR',1,NULL,'CTRY.KIR',1),(112,'Korea, Democratic People\'s Republic of','KP','PRK',1,NULL,'CTRY.PRK',1),(113,'Korea, Republic of','KR','KOR',1,NULL,'CTRY.KOR',1),(114,'Kuwait','KW','KWT',1,NULL,'CTRY.KWT',1),(115,'Kyrgyzstan','KG','KGZ',1,NULL,'CTRY.KGZ',1),(116,'Lao People\'s Democratic Republic','LA','LAO',1,NULL,'CTRY.LAO',1),(117,'Latvia','LV','LVA',1,NULL,'CTRY.LVA',1),(118,'Lebanon','LB','LBN',1,NULL,'CTRY.LBN',1),(119,'Lesotho','LS','LSO',1,NULL,'CTRY.LSO',1),(120,'Liberia','LR','LBR',1,NULL,'CTRY.LBR',1),(121,'Libyan Arab Jamahiriya','LY','LBY',1,NULL,'CTRY.LBY',1),(122,'Liechtenstein','LI','LIE',1,NULL,'CTRY.LIE',1),(123,'Lithuania','LT','LTU',1,NULL,'CTRY.LTU',1),(124,'Luxembourg','LU','LUX',1,NULL,'CTRY.LUX',1),(125,'Macau','MO','MAC',1,NULL,'CTRY.MAC',1),(126,'Macedonia, The Former Yugoslav Republic of','MK','MKD',1,NULL,'CTRY.MKD',1),(127,'Madagascar','MG','MDG',1,NULL,'CTRY.MDG',1),(128,'Malawi','MW','MWI',1,NULL,'CTRY.MWI',1),(129,'Malaysia','MY','MYS',1,NULL,'CTRY.MYS',1),(130,'Maldives','MV','MDV',1,NULL,'CTRY.MDV',1),(131,'Mali','ML','MLI',1,NULL,'CTRY.MLI',1),(132,'Malta','MT','MLT',1,NULL,'CTRY.MLT',1),(133,'Marshall Islands','MH','MHL',1,NULL,'CTRY.MHL',1),(134,'Martinique','MQ','MTQ',1,NULL,'CTRY.MTQ',1),(135,'Mauritania','MR','MRT',1,NULL,'CTRY.MRT',1),(136,'Mauritius','MU','MUS',1,NULL,'CTRY.MUS',1),(137,'Mayotte','YT','MYT',1,NULL,'CTRY.MYT',1),(138,'Mexico','MX','MEX',1,NULL,'CTRY.MEX',1),(139,'Micronesia, Federated States of','FM','FSM',1,NULL,'CTRY.FSM',1),(140,'Moldova, Republic of','MD','MDA',1,NULL,'CTRY.MDA',1),(141,'Monaco','MC','MCO',1,NULL,'CTRY.MCO',1),(142,'Mongolia','MN','MNG',1,NULL,'CTRY.MNG',1),(143,'Montserrat','MS','MSR',1,NULL,'CTRY.MSR',1),(144,'Morocco','MA','MAR',1,NULL,'CTRY.MAR',1),(145,'Mozambique','MZ','MOZ',1,NULL,'CTRY.MOZ',1),(146,'Myanmar','MM','MMR',1,NULL,'CTRY.MMR',1),(147,'Namibia','NA','NAM',1,NULL,'CTRY.NAM',1),(148,'Nauru','NR','NRU',1,NULL,'CTRY.NRU',1),(149,'Nepal','NP','NPL',1,NULL,'CTRY.NPL',1),(150,'Netherlands','NL','NLD',1,NULL,'CTRY.NLD',1),(151,'Netherlands Antilles','AN','ANT',1,NULL,'CTRY.ANT',1),(152,'New Caledonia','NC','NCL',1,NULL,'CTRY.NCL',1),(153,'New Zealand','NZ','NZL',1,NULL,'CTRY.NZL',1),(154,'Nicaragua','NI','NIC',1,NULL,'CTRY.NIC',1),(155,'Niger','NE','NER',1,NULL,'CTRY.NER',1),(156,'Nigeria','NG','NGA',1,NULL,'CTRY.NGA',1),(157,'Niue','NU','NIU',1,NULL,'CTRY.NIU',1),(158,'Norfolk Island','NF','NFK',1,NULL,'CTRY.NFK',1),(159,'Northern Mariana Islands','MP','MNP',1,NULL,'CTRY.MNP',1),(160,'Norway','NO','NOR',1,NULL,'CTRY.NOR',1),(161,'Oman','OM','OMN',1,NULL,'CTRY.OMN',1),(162,'Pakistan','PK','PAK',1,NULL,'CTRY.PAK',1),(163,'Palau','PW','PLW',1,NULL,'CTRY.PLW',1),(164,'Panama','PA','PAN',1,NULL,'CTRY.PAN',1),(165,'Papua New Guinea','PG','PNG',1,NULL,'CTRY.PNG',1),(166,'Paraguay','PY','PRY',1,NULL,'CTRY.PRY',1),(167,'Peru','PE','PER',1,NULL,'CTRY.PER',1),(168,'Philippines','PH','PHL',1,NULL,'CTRY.PHL',1),(169,'Pitcairn','PN','PCN',1,NULL,'CTRY.PCN',1),(170,'Poland','PL','POL',1,NULL,'CTRY.POL',1),(171,'Portugal','PT','PRT',1,NULL,'CTRY.PRT',1),(172,'Puerto Rico','PR','PRI',1,NULL,'CTRY.PRI',1),(173,'Qatar','QA','QAT',1,NULL,'CTRY.QAT',1),(174,'Reunion','RE','REU',1,NULL,'CTRY.REU',1),(175,'Romania','RO','ROM',1,NULL,'CTRY.ROM',1),(176,'Russian Federation','RU','RUS',1,NULL,'CTRY.RUS',1),(177,'Rwanda','RW','RWA',1,NULL,'CTRY.RWA',1),(178,'Saint Kitts and Nevis','KN','KNA',1,NULL,'CTRY.KNA',1),(179,'Saint Lucia','LC','LCA',1,NULL,'CTRY.LCA',1),(180,'Saint Vincent and the Grenadines','VC','VCT',1,NULL,'CTRY.VCT',1),(181,'Samoa','WS','WSM',1,NULL,'CTRY.WSM',1),(182,'San Marino','SM','SMR',1,NULL,'CTRY.SMR',1),(183,'Sao Tome and Principe','ST','STP',1,NULL,'CTRY.STP',1),(184,'Saudi Arabia','SA','SAU',1,NULL,'CTRY.SAU',1),(185,'Senegal','SN','SEN',1,NULL,'CTRY.SEN',1),(186,'Seychelles','SC','SYC',1,NULL,'CTRY.SYC',1),(187,'Sierra Leone','SL','SLE',1,NULL,'CTRY.SLE',1),(188,'Singapore','SG','SGP',4,NULL,'CTRY.SGP',1),(189,'Slovakia (Slovak Republic)','SK','SVK',1,NULL,'CTRY.SVK',1),(190,'Slovenia','SI','SVN',1,NULL,'CTRY.SVN',1),(191,'Solomon Islands','SB','SLB',1,NULL,'CTRY.SLB',1),(192,'Somalia','SO','SOM',1,NULL,'CTRY.SOM',1),(193,'South Africa','ZA','ZAF',1,NULL,'CTRY.ZAF',1),(194,'South Georgia and the South Sandwich Islands','GS','SGS',1,NULL,'CTRY.SGS',1),(195,'Spain','ES','ESP',3,NULL,'CTRY.ESP',1),(196,'Sri Lanka','LK','LKA',1,NULL,'CTRY.LKA',1),(197,'St. Helena','SH','SHN',1,NULL,'CTRY.SHN',1),(198,'St. Pierre and Miquelon','PM','SPM',1,NULL,'CTRY.SPM',1),(199,'Sudan','SD','SDN',1,NULL,'CTRY.SDN',1),(200,'Suriname','SR','SUR',1,NULL,'CTRY.SUR',1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM',1,NULL,'CTRY.SJM',1),(202,'Swaziland','SZ','SWZ',1,NULL,'CTRY.SWZ',1),(203,'Sweden','SE','SWE',1,NULL,'CTRY.SWE',1),(204,'Switzerland','CH','CHE',1,NULL,'CTRY.CHE',1),(205,'Syrian Arab Republic','SY','SYR',1,NULL,'CTRY.SYR',1),(206,'Taiwan','TW','TWN',1,NULL,'CTRY.TWN',1),(207,'Tajikistan','TJ','TJK',1,NULL,'CTRY.TJK',1),(208,'Tanzania, United Republic of','TZ','TZA',1,NULL,'CTRY.TZA',1),(209,'Thailand','TH','THA',1,NULL,'CTRY.THA',1),(210,'Togo','TG','TGO',1,NULL,'CTRY.TGO',1),(211,'Tokelau','TK','TKL',1,NULL,'CTRY.TKL',1),(212,'Tonga','TO','TON',1,NULL,'CTRY.TON',1),(213,'Trinidad and Tobago','TT','TTO',1,NULL,'CTRY.TTO',1),(214,'Tunisia','TN','TUN',1,NULL,'CTRY.TUN',1),(215,'Turkey','TR','TUR',1,NULL,'CTRY.TUR',1),(216,'Turkmenistan','TM','TKM',1,NULL,'CTRY.TKM',1),(217,'Turks and Caicos Islands','TC','TCA',1,NULL,'CTRY.TCA',1),(218,'Tuvalu','TV','TUV',1,NULL,'CTRY.TUV',1),(219,'Uganda','UG','UGA',1,NULL,'CTRY.UGA',1),(220,'Ukraine','UA','UKR',1,NULL,'CTRY.UKR',1),(221,'United Arab Emirates','AE','ARE',1,NULL,'CTRY.ARE',1),(222,'United Kingdom','GB','GBR',1,NULL,'CTRY.GBR',1),(223,'United States','US','USA',2,NULL,'CTRY.USA',1),(224,'United States Minor Outlying Islands','UM','UMI',1,NULL,'CTRY.UMI',1),(225,'Uruguay','UY','URY',1,NULL,'CTRY.URY',1),(226,'Uzbekistan','UZ','UZB',1,NULL,'CTRY.UZB',1),(227,'Vanuatu','VU','VUT',1,NULL,'CTRY.VUT',1),(228,'Vatican City State (Holy See)','VA','VAT',1,NULL,'CTRY.VAT',1),(229,'Venezuela','VE','VEN',1,NULL,'CTRY.VEN',1),(230,'Viet Nam','VN','VNM',1,NULL,'CTRY.VNM',1),(231,'Virgin Islands (British)','VG','VGB',1,NULL,'CTRY.VGB',1),(232,'Virgin Islands (U.S.)','VI','VIR',1,NULL,'CTRY.VIR',1),(233,'Wallis and Futuna Islands','WF','WLF',1,NULL,'CTRY.WLF',1),(234,'Western Sahara','EH','ESH',1,NULL,'CTRY.ESH',1),(235,'Yemen','YE','YEM',1,NULL,'CTRY.YEM',1),(236,'Yugoslavia','YU','YUG',1,NULL,'CTRY.YUG',1),(237,'Zaire','ZR','ZAR',1,NULL,'CTRY.ZAR',1),(238,'Zambia','ZM','ZMB',1,NULL,'CTRY.ZMB',1),(239,'Zimbabwe','ZW','ZWE',1,NULL,'CTRY.ZWE',1);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon`
--

DROP TABLE IF EXISTS `coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_code` varchar(64) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `max_use` int(11) NOT NULL DEFAULT '1',
  `times_used` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`coupon_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_coupon_code` (`coupon_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon`
--

LOCK TABLES `coupon` WRITE;
/*!40000 ALTER TABLE `coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `currencies_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` char(3) NOT NULL,
  `symbol_left` varchar(12) DEFAULT NULL,
  `symbol_right` varchar(12) DEFAULT NULL,
  `decimal_point` char(1) DEFAULT NULL,
  `thousands_point` char(1) DEFAULT NULL,
  `decimal_places` char(1) DEFAULT NULL,
  `value` float(13,8) DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`currencies_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'US Dollar','USD','$','','.',',','2',1.00000000,'2013-09-20 19:53:46',NULL),(2,'Euro','EUR','€','','.',',','2',1.39999998,'2013-09-20 19:53:46',NULL);
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_gender` char(1) NOT NULL,
  `customers_firstname` varchar(32) NOT NULL,
  `customers_lastname` varchar(32) NOT NULL,
  `customers_dob` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `customers_email_address` varchar(96) NOT NULL,
  `customers_default_address_id` int(11) NOT NULL,
  `customers_telephone` varchar(32) NOT NULL,
  `customers_fax` varchar(32) DEFAULT NULL,
  `customers_password` varchar(40) NOT NULL,
  `customers_newsletter` char(1) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `customers_type` int(11) DEFAULT NULL,
  `customers_enabled` int(11) DEFAULT '1',
  `customers_group_id` int(11) DEFAULT '-1',
  `store_id` varchar(64) DEFAULT NULL,
  `customers_locale` varchar(16) DEFAULT NULL,
  `customers_telephone_1` varchar(32) DEFAULT NULL,
  `invisible` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customers_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_email_address` (`customers_email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'m','John','doe','2001-01-01 00:00:00','doe@konakart.com',1,'12345','','d95e8fa7f20a009372eb3477473fcd34:1c','0',NULL,NULL,NULL,NULL,NULL,3,1,-1,NULL,NULL,NULL,0),(2,'m','Andy','Admin','1977-01-01 00:00:00','admin@konakart.com',2,'019081','','f5147fc3f6eb46e234c01db939bdb581:08','0',NULL,NULL,NULL,NULL,NULL,1,1,-1,NULL,NULL,NULL,0),(3,'m','Caty','Catalog','1977-01-01 00:00:00','cat@konakart.com',3,'019082','','f5147fc3f6eb46e234c01db939bdb581:08','0',NULL,NULL,NULL,NULL,NULL,1,1,-1,NULL,NULL,NULL,0),(4,'m','Olly','Order','1977-01-01 00:00:00','order@konakart.com',4,'019083','','f5147fc3f6eb46e234c01db939bdb581:08','0',NULL,NULL,NULL,NULL,NULL,1,1,-1,NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_basket`
--

DROP TABLE IF EXISTS `customers_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext NOT NULL,
  `customers_basket_quantity` int(2) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `customers_basket_date_added` char(8) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `products_sku` varchar(255) DEFAULT NULL,
  `kk_wishlist_id` int(11) DEFAULT NULL,
  `kk_wishlist_item_id` int(11) DEFAULT NULL,
  `use_basket_price` int(11) DEFAULT '0',
  PRIMARY KEY (`customers_basket_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_basket`
--

LOCK TABLES `customers_basket` WRITE;
/*!40000 ALTER TABLE `customers_basket` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_basket_attributes`
--

DROP TABLE IF EXISTS `customers_basket_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `products_id` tinytext NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_value_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `attr_type` int(11) NOT NULL DEFAULT '0',
  `attr_quantity` int(11) DEFAULT '0',
  `customers_basket_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`customers_basket_attributes_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_basket_attributes`
--

LOCK TABLES `customers_basket_attributes` WRITE;
/*!40000 ALTER TABLE `customers_basket_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers_basket_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers_info`
--

DROP TABLE IF EXISTS `customers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(5) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(1) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customers_info_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers_info`
--

LOCK TABLES `customers_info` WRITE;
/*!40000 ALTER TABLE `customers_info` DISABLE KEYS */;
INSERT INTO `customers_info` VALUES (1,'2013-09-20 19:53:46',0,'2013-09-20 19:53:46','2013-09-20 19:53:46',0,NULL),(2,'2013-09-20 19:53:53',0,'2013-09-20 19:53:53','2013-09-20 19:53:53',0,NULL),(3,'2013-09-20 19:53:53',0,'2013-09-20 19:53:53','2013-09-20 19:53:53',0,NULL),(4,'2013-09-20 19:53:53',0,'2013-09-20 19:53:53','2013-09-20 19:53:53',0,NULL);
/*!40000 ALTER TABLE `customers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geo_zones`
--

DROP TABLE IF EXISTS `geo_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_name` varchar(32) NOT NULL,
  `geo_zone_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`geo_zone_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geo_zones`
--

LOCK TABLES `geo_zones` WRITE;
/*!40000 ALTER TABLE `geo_zones` DISABLE KEYS */;
INSERT INTO `geo_zones` VALUES (1,'Florida','Florida local sales tax zone','2013-09-20 19:53:46','2013-09-20 19:53:46',NULL);
/*!40000 ALTER TABLE `geo_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ipn_history`
--

DROP TABLE IF EXISTS `ipn_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ipn_history` (
  `ipn_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_code` varchar(32) NOT NULL,
  `gateway_transaction_id` varchar(128) DEFAULT NULL,
  `gateway_result` varchar(128) DEFAULT NULL,
  `gateway_full_response` text,
  `order_id` int(11) DEFAULT NULL,
  `konakart_result_id` int(11) DEFAULT NULL,
  `konakart_result_description` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `kk_subscription_id` int(11) NOT NULL DEFAULT '-1',
  `transaction_type` varchar(128) DEFAULT NULL,
  `transaction_amount` decimal(15,4) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom1Dec` decimal(15,4) DEFAULT NULL,
  `custom2Dec` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`ipn_history_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ipn_history`
--

LOCK TABLES `ipn_history` WRITE;
/*!40000 ALTER TABLE `ipn_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ipn_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_addr_to_product`
--

DROP TABLE IF EXISTS `kk_addr_to_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_addr_to_product` (
  `store_id` varchar(64) DEFAULT NULL,
  `address_book_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`address_book_id`,`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_addr_to_product`
--

LOCK TABLES `kk_addr_to_product` WRITE;
/*!40000 ALTER TABLE `kk_addr_to_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_addr_to_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_api_call`
--

DROP TABLE IF EXISTS `kk_api_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_api_call` (
  `api_call_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`api_call_id`)
) ENGINE=InnoDB AUTO_INCREMENT=366 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_api_call`
--

LOCK TABLES `kk_api_call` WRITE;
/*!40000 ALTER TABLE `kk_api_call` DISABLE KEYS */;
INSERT INTO `kk_api_call` VALUES (1,'deleteCurrency','','2013-09-20 19:53:54',NULL),(2,'insertCurrency','','2013-09-20 19:53:54',NULL),(3,'updateCurrency','','2013-09-20 19:53:54',NULL),(4,'deleteOrderStatusName','','2013-09-20 19:53:54',NULL),(5,'insertOrderStatusName','','2013-09-20 19:53:54',NULL),(6,'insertOrderStatusNames','','2013-09-20 19:53:54',NULL),(7,'updateOrderStatusName','','2013-09-20 19:53:54',NULL),(8,'deleteCountry','','2013-09-20 19:53:54',NULL),(9,'insertCountry','','2013-09-20 19:53:54',NULL),(10,'updateCountry','','2013-09-20 19:53:54',NULL),(11,'deleteLanguage','','2013-09-20 19:53:54',NULL),(12,'insertLanguage','','2013-09-20 19:53:54',NULL),(13,'updateLanguage','','2013-09-20 19:53:54',NULL),(14,'sendEmail','','2013-09-20 19:53:54',NULL),(15,'getOrdersCount','','2013-09-20 19:53:54',NULL),(16,'getOrdersLite','','2013-09-20 19:53:54',NULL),(17,'getOrders','','2013-09-20 19:53:54',NULL),(18,'getOrderForOrderId','','2013-09-20 19:53:54',NULL),(19,'getOrderForOrderIdAndLangId','','2013-09-20 19:53:54',NULL),(20,'getOrdersCreatedSince','','2013-09-20 19:53:54',NULL),(21,'updateOrderStatus','','2013-09-20 19:53:54',NULL),(22,'getHtml','','2013-09-20 19:53:54',NULL),(23,'getCustomersCount','','2013-09-20 19:53:54',NULL),(24,'getCustomersCountWhoHaventPlacedAnOrderSince','','2013-09-20 19:53:54',NULL),(25,'getCustomersCountWhoHavePlacedAnOrderSince','','2013-09-20 19:53:54',NULL),(26,'updateCustomer','','2013-09-20 19:53:54',NULL),(27,'deleteCustomer','','2013-09-20 19:53:54',NULL),(28,'deleteOrder','','2013-09-20 19:53:54',NULL),(29,'getCustomers','','2013-09-20 19:53:54',NULL),(30,'getCustomersLite','','2013-09-20 19:53:54',NULL),(31,'getCustomerForId','','2013-09-20 19:53:54',NULL),(32,'deleteTaxRate','','2013-09-20 19:53:54',NULL),(33,'insertTaxRate','','2013-09-20 19:53:54',NULL),(34,'updateTaxRate','','2013-09-20 19:53:54',NULL),(35,'deleteZone','','2013-09-20 19:53:54',NULL),(36,'insertZone','','2013-09-20 19:53:54',NULL),(37,'updateZone','','2013-09-20 19:53:54',NULL),(38,'deleteTaxClass','','2013-09-20 19:53:54',NULL),(39,'insertTaxClass','','2013-09-20 19:53:54',NULL),(40,'updateTaxClass','','2013-09-20 19:53:54',NULL),(41,'deleteAddressFormat','','2013-09-20 19:53:54',NULL),(42,'insertAddressFormat','','2013-09-20 19:53:54',NULL),(43,'updateAddressFormat','','2013-09-20 19:53:54',NULL),(44,'deleteGeoZone','','2013-09-20 19:53:54',NULL),(45,'insertGeoZone','','2013-09-20 19:53:54',NULL),(46,'updateGeoZone','','2013-09-20 19:53:54',NULL),(47,'deleteSubZone','','2013-09-20 19:53:54',NULL),(48,'insertSubZone','','2013-09-20 19:53:54',NULL),(49,'updateSubZone','','2013-09-20 19:53:54',NULL),(50,'getConfigurationInfo','','2013-09-20 19:53:54',NULL),(51,'getConfigurationsByGroup','','2013-09-20 19:53:54',NULL),(52,'saveConfigs','','2013-09-20 19:53:54',NULL),(53,'insertConfigs','','2013-09-20 19:53:54',NULL),(54,'removeConfigs','','2013-09-20 19:53:54',NULL),(55,'getModules','','2013-09-20 19:53:54',NULL),(56,'registerCustomer','','2013-09-20 19:53:54',NULL),(57,'resetCustomerPassword','','2013-09-20 19:53:54',NULL),(58,'changePassword','','2013-09-20 19:53:54',NULL),(59,'insertProduct','','2013-09-20 19:53:54',NULL),(60,'editProduct','','2013-09-20 19:53:54',NULL),(61,'getProduct','','2013-09-20 19:53:54',NULL),(62,'searchForProducts','','2013-09-20 19:53:54',NULL),(63,'deleteProduct','','2013-09-20 19:53:54',NULL),(64,'deleteCategoryTree','','2013-09-20 19:53:54',NULL),(65,'deleteSingleCategory','','2013-09-20 19:53:54',NULL),(66,'editCategory','','2013-09-20 19:53:54',NULL),(67,'insertCategory','','2013-09-20 19:53:54',NULL),(68,'moveCategory','','2013-09-20 19:53:54',NULL),(69,'deleteManufacturer','','2013-09-20 19:53:54',NULL),(70,'editManufacturer','','2013-09-20 19:53:54',NULL),(71,'insertManufacturer','','2013-09-20 19:53:54',NULL),(72,'deleteReview','','2013-09-20 19:53:54',NULL),(73,'editReview','','2013-09-20 19:53:54',NULL),(74,'getAllReviews','','2013-09-20 19:53:54',NULL),(75,'getReview','','2013-09-20 19:53:54',NULL),(76,'getReviewsPerProduct','','2013-09-20 19:53:54',NULL),(77,'insertReview','','2013-09-20 19:53:54',NULL),(78,'insertSpecial','','2013-09-20 19:53:54',NULL),(79,'getSpecial','','2013-09-20 19:53:54',NULL),(80,'deleteSpecial','','2013-09-20 19:53:54',NULL),(81,'editSpecial','','2013-09-20 19:53:54',NULL),(82,'getAllSpecials','','2013-09-20 19:53:54',NULL),(83,'getSpecialsPerCategory','','2013-09-20 19:53:54',NULL),(84,'deleteProductOptions','','2013-09-20 19:53:54',NULL),(85,'deleteProductOptionValues','','2013-09-20 19:53:54',NULL),(86,'getProductOptionsPerId','','2013-09-20 19:53:54',NULL),(87,'getProductOptionValuesPerId','','2013-09-20 19:53:54',NULL),(88,'insertProductOption','','2013-09-20 19:53:54',NULL),(89,'editProductOption','','2013-09-20 19:53:54',NULL),(90,'insertProductOptionValue','','2013-09-20 19:53:54',NULL),(91,'editProductOptionValue','','2013-09-20 19:53:54',NULL),(92,'getNextProductOptionId','','2013-09-20 19:53:54',NULL),(93,'getNextProductOptionValuesId','','2013-09-20 19:53:54',NULL),(94,'getProductAttributesPerProduct','','2013-09-20 19:53:54',NULL),(95,'deleteProductAttribute','','2013-09-20 19:53:54',NULL),(96,'deleteProductAttributesPerProduct','','2013-09-20 19:53:54',NULL),(97,'editProductAttribute','','2013-09-20 19:53:54',NULL),(98,'insertProductAttribute','','2013-09-20 19:53:54',NULL),(99,'insertProductOptionValues','','2013-09-20 19:53:54',NULL),(100,'insertProductOptions','','2013-09-20 19:53:54',NULL),(101,'checkSession','','2013-09-20 19:53:54',NULL),(102,'searchForIpnHistory','','2013-09-20 19:53:54',NULL),(103,'deleteExpiredSessions','','2013-09-20 19:53:54',NULL),(104,'getConfigFiles','','2013-09-20 19:53:54',NULL),(105,'getReports','','2013-09-20 19:53:54',NULL),(106,'reloadReports','','2013-09-20 19:53:54',NULL),(107,'getFileContents','','2013-09-20 19:53:54',NULL),(108,'saveFileContents','','2013-09-20 19:53:54',NULL),(109,'deleteFile','','2013-09-20 19:53:54',NULL),(110,'addCategoriesToPromotion','','2013-09-20 19:53:54',NULL),(111,'addCouponsToPromotion','','2013-09-20 19:53:54',NULL),(112,'addPromotionsToCoupon','','2013-09-20 19:53:54',NULL),(113,'addCustomersToPromotion','','2013-09-20 19:53:54',NULL),(114,'addCustomersToPromotionPerOrdersMade','','2013-09-20 19:53:54',NULL),(115,'addManufacturersToPromotion','','2013-09-20 19:53:54',NULL),(116,'addProductsToPromotion','','2013-09-20 19:53:54',NULL),(117,'deletePromotion','','2013-09-20 19:53:54',NULL),(118,'deleteCoupon','','2013-09-20 19:53:54',NULL),(119,'editCoupon','','2013-09-20 19:53:54',NULL),(120,'editPromotion','','2013-09-20 19:53:54',NULL),(121,'getCouponsPerPromotion','','2013-09-20 19:53:54',NULL),(122,'getCoupons','','2013-09-20 19:53:54',NULL),(123,'getCategoriesPerPromotion','','2013-09-20 19:53:54',NULL),(124,'getManufacturersPerPromotion','','2013-09-20 19:53:54',NULL),(125,'getProductsPerPromotion','','2013-09-20 19:53:54',NULL),(126,'getPromotion','','2013-09-20 19:53:54',NULL),(127,'getPromotions','','2013-09-20 19:53:54',NULL),(128,'getPromotionsCount','','2013-09-20 19:53:54',NULL),(129,'getPromotionsPerCoupon','','2013-09-20 19:53:54',NULL),(130,'insertCouponForPromotion','','2013-09-20 19:53:54',NULL),(131,'insertCoupon','','2013-09-20 19:53:54',NULL),(132,'insertPromotion','','2013-09-20 19:53:54',NULL),(133,'removeCategoriesFromPromotion','','2013-09-20 19:53:54',NULL),(134,'removeCouponsFromPromotion','','2013-09-20 19:53:54',NULL),(135,'removePromotionsFromCoupon','','2013-09-20 19:53:54',NULL),(136,'removeCustomersFromPromotion','','2013-09-20 19:53:54',NULL),(137,'removeManufacturersFromPromotion','','2013-09-20 19:53:54',NULL),(138,'removeProductsFromPromotion','','2013-09-20 19:53:54',NULL),(139,'getRelatedProducts','','2013-09-20 19:53:54',NULL),(140,'removeRelatedProducts','','2013-09-20 19:53:54',NULL),(141,'addRelatedProducts','','2013-09-20 19:53:54',NULL),(142,'readFromUrl','','2013-09-20 19:53:54',NULL),(143,'editOrderReturn','','2013-09-20 19:53:54',NULL),(144,'insertOrderReturn','','2013-09-20 19:53:54',NULL),(145,'deleteOrderReturn','','2013-09-20 19:53:54',NULL),(146,'getOrderReturns','','2013-09-20 19:53:54',NULL),(147,'getSku','','2013-09-20 19:53:54',NULL),(148,'getSkus','','2013-09-20 19:53:54',NULL),(149,'doesCustomerExistForEmail','','2013-09-20 19:53:54',NULL),(150,'getAuditData','','2013-09-20 19:53:54',NULL),(151,'deleteAuditData','','2013-09-20 19:53:54',NULL),(152,'getRolesPerSessionId','','2013-09-20 19:53:54',NULL),(153,'getRolesPerUser','','2013-09-20 19:53:54',NULL),(154,'addRolesToUser','','2013-09-20 19:53:54',NULL),(155,'removeRolesFromUser','','2013-09-20 19:53:54',NULL),(156,'removePanelsFromRole','','2013-09-20 19:53:54',NULL),(157,'removeApiCallsFromRole','','2013-09-20 19:53:54',NULL),(158,'addPanelsToRole','','2013-09-20 19:53:54',NULL),(159,'addApiCallsToRole','','2013-09-20 19:53:54',NULL),(160,'getPanelsPerRole','','2013-09-20 19:53:54',NULL),(161,'getApiCallsPerRole','','2013-09-20 19:53:54',NULL),(162,'getAllPanels','','2013-09-20 19:53:54',NULL),(163,'getAllApiCalls','','2013-09-20 19:53:54',NULL),(164,'getAllRoles','','2013-09-20 19:53:54',NULL),(165,'editRole','','2013-09-20 19:53:54',NULL),(166,'insertRole','','2013-09-20 19:53:54',NULL),(167,'deleteRole','','2013-09-20 19:53:54',NULL),(168,'deletePanel','','2013-09-20 19:53:54',NULL),(169,'deleteApiCall','','2013-09-20 19:53:54',NULL),(170,'editPanel','','2013-09-20 19:53:54',NULL),(171,'editApiCall','','2013-09-20 19:53:54',NULL),(172,'getPanel','','2013-09-20 19:53:54',NULL),(173,'getApiCall','','2013-09-20 19:53:54',NULL),(174,'getRole','','2013-09-20 19:53:54',NULL),(175,'insertPanel','','2013-09-20 19:53:54',NULL),(176,'insertApiCall','','2013-09-20 19:53:54',NULL),(177,'insertDigitalDownload','','2013-09-20 19:53:54',NULL),(178,'sendTemplateEmailToCustomers1','','2013-09-20 19:53:55',NULL),(179,'insertProductNotification','','2013-09-20 19:53:55',NULL),(180,'deleteProductNotification','','2013-09-20 19:53:55',NULL),(181,'getCustomerForEmail','','2013-09-20 19:53:55',NULL),(182,'removeCustomerGroupsFromPromotion','','2013-09-20 19:53:58',NULL),(183,'addCustomerGroupsToPromotion','','2013-09-20 19:53:58',NULL),(184,'getCustomerGroupsPerPromotion','','2013-09-20 19:53:58',NULL),(185,'insertCustomerGroup','','2013-09-20 19:53:58',NULL),(186,'updateCustomerGroup','','2013-09-20 19:53:58',NULL),(187,'deleteCustomerGroup','','2013-09-20 19:53:58',NULL),(188,'getCustomerGroups','','2013-09-20 19:53:58',NULL),(189,'editOrder','','2013-09-20 19:53:58',NULL),(190,'getBundleProductDetails','','2013-09-20 19:53:58',NULL),(191,'customSecure','','2013-09-20 19:53:58',NULL),(192,'getTags','','2013-09-20 19:53:59',NULL),(193,'getTagGroups','','2013-09-20 19:53:59',NULL),(194,'insertTag','','2013-09-20 19:53:59',NULL),(195,'insertTags','','2013-09-20 19:53:59',NULL),(196,'insertGroup','','2013-09-20 19:53:59',NULL),(197,'insertGroups','','2013-09-20 19:53:59',NULL),(198,'updateTag','','2013-09-20 19:53:59',NULL),(199,'updateTagGroup','','2013-09-20 19:53:59',NULL),(200,'deleteTag','','2013-09-20 19:53:59',NULL),(201,'deleteTagGroup','','2013-09-20 19:53:59',NULL),(202,'getTagGroupsPerCategory','','2013-09-20 19:53:59',NULL),(203,'addTagGroupsToCategory','','2013-09-20 19:53:59',NULL),(204,'removeTagGroupsFromCategory','','2013-09-20 19:53:59',NULL),(205,'getTagsPerProduct','','2013-09-20 19:53:59',NULL),(206,'addTagsToProduct','','2013-09-20 19:53:59',NULL),(207,'removeTagsFromProduct','','2013-09-20 19:53:59',NULL),(208,'updateCachedConfigurations','','2013-09-20 19:53:59',NULL),(209,'getKonakartPropertyValue','','2013-09-20 19:53:59',NULL),(210,'publishProducts','','2013-09-20 19:53:59',NULL),(211,'addAllProductsToSearchEngine','','2013-09-20 19:53:59',NULL),(212,'addProductToSearchEngine','','2013-09-20 19:53:59',NULL),(213,'removeAllProductsFromSearchEngine','','2013-09-20 19:53:59',NULL),(214,'removeProductFromSearchEngine','','2013-09-20 19:53:59',NULL),(215,'insertConfigurationGroup','','2013-09-20 19:54:00',NULL),(216,'getMallStores','','2013-09-20 19:54:17',NULL),(217,'insertMallStore','','2013-09-20 19:54:17',NULL),(218,'deleteMallStore','','2013-09-20 19:54:17',NULL),(219,'updateMallStore','','2013-09-20 19:54:17',NULL),(220,'setProductQuantity','','2013-09-20 19:54:19',NULL),(221,'setProductAvailability','','2013-09-20 19:54:19',NULL),(222,'getProductQuantity','','2013-09-20 19:54:19',NULL),(223,'getProductAvailability','','2013-09-20 19:54:19',NULL),(224,'insertTagGroupToTags','','2013-09-20 19:54:19',NULL),(225,'getTagGroupToTags','','2013-09-20 19:54:19',NULL),(226,'importCustomer','','2013-09-20 19:54:19',NULL),(227,'getProductNotificationsForCustomer','','2013-09-20 19:54:19',NULL),(228,'getProductOptionsPerName','','2013-09-20 19:54:19',NULL),(229,'getAllProductOptionValues','','2013-09-20 19:54:19',NULL),(230,'getProductOptionValuesPerName','','2013-09-20 19:54:19',NULL),(231,'insertProductsOptionsValuesToProductsOptions','','2013-09-20 19:54:19',NULL),(232,'getProductOptionValueToProductOptions','','2013-09-20 19:54:19',NULL),(233,'getAllConfigurations','','2013-09-20 19:54:19',NULL),(234,'getAllConfigurationGroups','','2013-09-20 19:54:19',NULL),(235,'updateConfiguration','','2013-09-20 19:54:19',NULL),(236,'updateConfigurationGroup','','2013-09-20 19:54:19',NULL),(237,'getConfigurationGroupsByTitle','','2013-09-20 19:54:19',NULL),(238,'getConfigurationByKey','','2013-09-20 19:54:19',NULL),(239,'insertConfiguration','','2013-09-20 19:54:19',NULL),(240,'insertConfigurationGroup','','2013-09-20 19:54:19',NULL),(241,'insertIpnHistory','','2013-09-20 19:54:19',NULL),(242,'importAudit','','2013-09-20 19:54:19',NULL),(243,'getCategoriesPerTagGroup','','2013-09-20 19:54:19',NULL),(244,'addCategoriesToTagGroups','','2013-09-20 19:54:19',NULL),(245,'addCustomDataToSession','','2013-09-20 19:54:20',NULL),(246,'getCustomDataFromSession','','2013-09-20 19:54:20',NULL),(247,'com.konakartadmin.bl.AdminOrderBatchMgr.productAvailabilityNotificationBatch','','2013-09-20 19:54:20',NULL),(248,'com.konakartadmin.bl.AdminOrderBatchMgr.unpaidOrderNotificationBatch','','2013-09-20 19:54:20',NULL),(249,'com.konakartadmin.bl.AdminCustomerBatchMgr.removeExpiredCustomersBatch','','2013-09-20 19:54:20',NULL),(250,'getProductsToStores','','2013-09-20 19:54:20',NULL),(251,'insertProductsToStores','','2013-09-20 19:54:20',NULL),(252,'removeProductsToStores','','2013-09-20 19:54:20',NULL),(253,'getCategoriesToTagGroups','','2013-09-20 19:54:20',NULL),(254,'insertOrder','','2013-09-20 19:54:22',NULL),(255,'forceRegisterCustomer','','2013-09-20 19:54:22',NULL),(256,'getWishLists','','2013-09-20 19:54:22',NULL),(257,'insertWishList','','2013-09-20 19:54:22',NULL),(258,'deleteWishList','','2013-09-20 19:54:22',NULL),(259,'insertWishListItem','','2013-09-20 19:54:22',NULL),(260,'deleteWishListItem','','2013-09-20 19:54:22',NULL),(261,'insertCustomerTag','','2013-09-20 19:54:22',NULL),(262,'getCustomerTag','','2013-09-20 19:54:22',NULL),(263,'deleteCustomerTag','','2013-09-20 19:54:22',NULL),(264,'updateCustomerTag','','2013-09-20 19:54:22',NULL),(265,'getCustomerTags','','2013-09-20 19:54:22',NULL),(266,'deleteCustomerTagForCustomer','','2013-09-20 19:54:22',NULL),(267,'getCustomerTagForCustomer','','2013-09-20 19:54:22',NULL),(268,'getCustomerTagForName','','2013-09-20 19:54:22',NULL),(269,'getCustomerTagsForCustomer','','2013-09-20 19:54:22',NULL),(270,'insertCustomerTagForCustomer','','2013-09-20 19:54:22',NULL),(271,'getAddressById','','2013-09-20 19:54:22',NULL),(272,'getAddresses','','2013-09-20 19:54:22',NULL),(273,'insertAddress','','2013-09-20 19:54:22',NULL),(274,'updateAddress','','2013-09-20 19:54:22',NULL),(275,'deleteAddress','','2013-09-20 19:54:22',NULL),(276,'insertExpression','','2013-09-20 19:54:22',NULL),(277,'updateExpression','','2013-09-20 19:54:22',NULL),(278,'deleteExpression','','2013-09-20 19:54:22',NULL),(279,'getExpression','','2013-09-20 19:54:22',NULL),(280,'getExpressions','','2013-09-20 19:54:22',NULL),(281,'getExpressionVariable','','2013-09-20 19:54:22',NULL),(282,'getExpressionVariablesForExpression','','2013-09-20 19:54:22',NULL),(283,'getExpressionForName','','2013-09-20 19:54:22',NULL),(284,'insertExpressionVariables','','2013-09-20 19:54:22',NULL),(285,'updateExpressionVariable','','2013-09-20 19:54:22',NULL),(286,'deleteExpressionVariable','','2013-09-20 19:54:22',NULL),(287,'deleteExpressionVariablesForExpression','','2013-09-20 19:54:22',NULL),(288,'addExpressionsToPromotion','','2013-09-20 19:54:22',NULL),(289,'getExpressionsPerPromotion','','2013-09-20 19:54:22',NULL),(290,'removeExpressionsFromPromotion','','2013-09-20 19:54:22',NULL),(291,'evaluateExpression','','2013-09-20 19:54:22',NULL),(292,'addGiftCertificatesToPromotion','','2013-09-20 19:54:23',NULL),(293,'getGiftCertificatesPerPromotion','','2013-09-20 19:54:23',NULL),(294,'removeGiftCertificatesFromPromotion','','2013-09-20 19:54:23',NULL),(295,'searchDigitalDownloads','','2013-09-20 19:54:23',NULL),(296,'importDigitalDownload','','2013-09-20 19:54:23',NULL),(297,'getRewardPoints','','2013-09-20 19:54:23',NULL),(298,'deletePoints','','2013-09-20 19:54:23',NULL),(299,'importDigitalDownload','','2013-09-20 19:54:23',NULL),(300,'pointsAvailable','','2013-09-20 19:54:23',NULL),(301,'getPdf','','2013-09-20 19:54:24',NULL),(302,'getFileContentsAsByteArray','','2013-09-20 19:54:24',NULL),(303,'getLanguageIdForLocale','','2013-09-20 19:54:24',NULL),(304,'com.konakartadmin.bl.AdminOrderBatchMgr.createInvoicesBatch','','2013-09-20 19:54:24',NULL),(305,'checkDataIntegrity','','2013-09-20 19:54:30',NULL),(306,'exportOrder','','2013-09-20 19:54:33',NULL),(307,'getReviews','','2013-09-20 19:54:34',NULL),(308,'searchMsg','','2013-09-20 19:54:35',NULL),(309,'getMsgValue','','2013-09-20 19:54:35',NULL),(310,'deleteMsg','','2013-09-20 19:54:35',NULL),(311,'insertMsg','','2013-09-20 19:54:35',NULL),(312,'updateMsg','','2013-09-20 19:54:35',NULL),(313,'importMsgs','','2013-09-20 19:54:35',NULL),(314,'exportMsgs','','2013-09-20 19:54:35',NULL),(315,'getLanguageById','','2013-09-20 19:54:35',NULL),(316,'addAddressesToProduct','','2013-09-20 19:54:35',NULL),(317,'removeAddressFromProduct','','2013-09-20 19:54:35',NULL),(318,'getProductCountPerAddress','','2013-09-20 19:54:35',NULL),(319,'getManufacturers','','2013-09-20 19:54:35',NULL),(320,'getProductOptions','','2013-09-20 19:54:35',NULL),(321,'deleteProdAttrDesc','','2013-09-20 19:54:35',NULL),(322,'deleteProdAttrTemplate','','2013-09-20 19:54:35',NULL),(323,'getProdAttrDesc','','2013-09-20 19:54:35',NULL),(324,'getProdAttrTemplate','','2013-09-20 19:54:35',NULL),(325,'getProdAttrDescs','','2013-09-20 19:54:35',NULL),(326,'getProdAttrDescsForTemplate','','2013-09-20 19:54:35',NULL),(327,'getProdAttrTemplates','','2013-09-20 19:54:35',NULL),(328,'insertProdAttrDesc','','2013-09-20 19:54:35',NULL),(329,'insertProdAttrTemplate','','2013-09-20 19:54:35',NULL),(330,'updateProdAttrDesc','','2013-09-20 19:54:35',NULL),(331,'updateProdAttrTemplate','','2013-09-20 19:54:35',NULL),(332,'removeProdAttrDescsFromTemplate','','2013-09-20 19:54:35',NULL),(333,'addProdAttrDescsToTemplate','','2013-09-20 19:54:35',NULL),(334,'getTemplateCountPerProdAttrDesc','','2013-09-20 19:54:35',NULL),(335,'callPaymentModule','','2013-09-20 19:54:36',NULL),(336,'doesProductExist','','2013-09-20 19:54:38',NULL),(337,'getProductCountPerProdAttrDesc','','2013-09-20 19:54:39',NULL),(338,'updateProductsUsingProdAttrDesc','','2013-09-20 19:54:39',NULL),(339,'updateProductsUsingTemplates','','2013-09-20 19:54:39',NULL),(340,'insertMiscItemType','','2013-09-20 19:54:39',NULL),(341,'updateMiscItemType','','2013-09-20 19:54:39',NULL),(342,'deleteMiscItemType','','2013-09-20 19:54:39',NULL),(343,'getMiscItemTypes','','2013-09-20 19:54:39',NULL),(344,'insertMiscItems','','2013-09-20 19:54:39',NULL),(345,'updateMiscItems','','2013-09-20 19:54:39',NULL),(346,'deleteMiscItem','','2013-09-20 19:54:39',NULL),(347,'getMiscItems','','2013-09-20 19:54:39',NULL),(348,'copyProductToStore','','2013-09-20 19:54:41',NULL),(349,'getProductsToSynchronize','','2013-09-20 19:54:41',NULL),(350,'getLanguageForLocale','','2013-09-20 19:54:41',NULL),(351,'getConfigData','','2013-09-20 19:54:42',NULL),(352,'updateOrder','','2013-09-20 19:54:42',NULL),(353,'getKonaKartAdminVersion','','2013-09-20 19:54:42',NULL),(354,'editProductWithOptions','','2013-09-20 19:54:43',NULL),(355,'insertProductWithOptions','','2013-09-20 19:54:43',NULL),(356,'insertConfigData','','2013-09-20 19:54:43',NULL),(357,'updateConfigData','','2013-09-20 19:54:43',NULL),(358,'removeConfigData','','2013-09-20 19:54:43',NULL),(359,'scaleImage','','2013-09-20 19:54:43',NULL),(360,'getJobStatus','','2013-09-20 19:54:44',NULL),(361,'runBatchJob','','2013-09-20 19:54:44',NULL),(362,'insertProductCategory','','2013-09-20 19:54:44',NULL),(363,'com.konakartadmin.bl.AdminCustomerBatchMgr.countCustomersBatch','','2013-09-20 19:54:45',NULL),(364,'tailFile','','2013-09-20 19:54:45',NULL),(365,'copyFile','','2013-09-20 19:54:46',NULL);
/*!40000 ALTER TABLE `kk_api_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_audit`
--

DROP TABLE IF EXISTS `kk_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_audit` (
  `audit_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `audit_action` int(11) NOT NULL,
  `api_method_name` varchar(128) NOT NULL,
  `object_id` int(11) DEFAULT NULL,
  `object_to_string` text,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`audit_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_audit`
--

LOCK TABLES `kk_audit` WRITE;
/*!40000 ALTER TABLE `kk_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_bookable_prod`
--

DROP TABLE IF EXISTS `kk_bookable_prod`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_bookable_prod` (
  `products_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `max_num_bookings` int(11) DEFAULT '-1',
  `bookings_made` int(11) DEFAULT '0',
  `monday` varchar(128) DEFAULT NULL,
  `tuesday` varchar(128) DEFAULT NULL,
  `wednesday` varchar(128) DEFAULT NULL,
  `thursday` varchar(128) DEFAULT NULL,
  `friday` varchar(128) DEFAULT NULL,
  `saturday` varchar(128) DEFAULT NULL,
  `sunday` varchar(128) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_bookable_prod`
--

LOCK TABLES `kk_bookable_prod` WRITE;
/*!40000 ALTER TABLE `kk_bookable_prod` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_bookable_prod` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_booking`
--

DROP TABLE IF EXISTS `kk_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT '0',
  `customers_id` int(11) DEFAULT '0',
  `orders_id` int(11) DEFAULT '0',
  `orders_products_id` int(11) DEFAULT '0',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_booking`
--

LOCK TABLES `kk_booking` WRITE;
/*!40000 ALTER TABLE `kk_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_catalog`
--

DROP TABLE IF EXISTS `kk_catalog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_catalog` (
  `catalog_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `cat_name` varchar(32) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `use_cat_prices` int(11) DEFAULT NULL,
  `use_cat_quantities` int(11) DEFAULT NULL,
  PRIMARY KEY (`catalog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_catalog`
--

LOCK TABLES `kk_catalog` WRITE;
/*!40000 ALTER TABLE `kk_catalog` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_catalog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_catalog_quantity`
--

DROP TABLE IF EXISTS `kk_catalog_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_catalog_quantity` (
  `store_id` varchar(64) DEFAULT NULL,
  `catalog_id` varchar(32) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(128) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_date_available` datetime DEFAULT NULL,
  PRIMARY KEY (`catalog_id`,`products_id`,`products_options`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_catalog_quantity`
--

LOCK TABLES `kk_catalog_quantity` WRITE;
/*!40000 ALTER TABLE `kk_catalog_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_catalog_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_category_to_tag_group`
--

DROP TABLE IF EXISTS `kk_category_to_tag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_category_to_tag_group` (
  `categories_id` int(11) NOT NULL,
  `tag_group_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`categories_id`,`tag_group_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_category_to_tag_group`
--

LOCK TABLES `kk_category_to_tag_group` WRITE;
/*!40000 ALTER TABLE `kk_category_to_tag_group` DISABLE KEYS */;
INSERT INTO `kk_category_to_tag_group` VALUES (10,1,NULL,0),(10,2,NULL,0);
/*!40000 ALTER TABLE `kk_category_to_tag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_config`
--

DROP TABLE IF EXISTS `kk_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_config` (
  `kk_config_id` int(11) NOT NULL AUTO_INCREMENT,
  `kk_config_key` varchar(16) DEFAULT NULL,
  `kk_config_value` varchar(256) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_config`
--

LOCK TABLES `kk_config` WRITE;
/*!40000 ALTER TABLE `kk_config` DISABLE KEYS */;
INSERT INTO `kk_config` VALUES (1,'HISTORY','7.1.1.0 I','2013-09-20 19:54:46'),(2,'VERSION','7.1.1.0 MySQL','2013-09-20 19:54:46');
/*!40000 ALTER TABLE `kk_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cookie`
--

DROP TABLE IF EXISTS `kk_cookie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cookie` (
  `customer_uuid` varchar(128) NOT NULL,
  `attribute_id` varchar(64) NOT NULL,
  `attribute_value` varchar(256) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_read` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`customer_uuid`,`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cookie`
--

LOCK TABLES `kk_cookie` WRITE;
/*!40000 ALTER TABLE `kk_cookie` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_cookie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cust_attr`
--

DROP TABLE IF EXISTS `kk_cust_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cust_attr` (
  `kk_cust_attr_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `msg_cat_key` varchar(128) DEFAULT NULL,
  `attr_type` int(11) DEFAULT '-1',
  `template` varchar(128) DEFAULT NULL,
  `validation` varchar(512) DEFAULT NULL,
  `set_function` varchar(512) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `facet_number` int(11) NOT NULL DEFAULT '0',
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`kk_cust_attr_id`),
  KEY `idx_nm_kk_cust_attr` (`name`),
  KEY `idx_st_id_kk_cust_attr` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cust_attr`
--

LOCK TABLES `kk_cust_attr` WRITE;
/*!40000 ALTER TABLE `kk_cust_attr` DISABLE KEYS */;
INSERT INTO `kk_cust_attr` VALUES (1,NULL,'radio','label.size',0,NULL,NULL,'choice(\'label.small\',\'label.medium\',\'label.large\')',NULL,NULL,NULL,'2013-09-20 19:54:35',0,NULL,NULL),(2,NULL,'true-false','label.true.false',4,NULL,'true|false',NULL,NULL,NULL,NULL,'2013-09-20 19:54:35',0,NULL,NULL),(3,NULL,'dropList','label.size',0,NULL,NULL,'option(s=label.small,m=label.medium,l=label.large)',NULL,NULL,NULL,'2013-09-20 19:54:35',0,NULL,NULL),(4,NULL,'integer-1-to-10',NULL,1,NULL,NULL,'integer(1,10)',NULL,NULL,NULL,'2013-09-20 19:54:35',0,NULL,NULL),(5,NULL,'any-int',NULL,1,NULL,NULL,'integer(null,null)',NULL,NULL,NULL,'2013-09-20 19:54:35',0,NULL,NULL),(6,NULL,'decimal-1.5-to-2.3',NULL,2,NULL,NULL,'double(1.5,2.3)',NULL,NULL,NULL,'2013-09-20 19:54:35',0,NULL,NULL),(7,NULL,'string-length-4',NULL,0,NULL,NULL,'string(4,4)',NULL,NULL,NULL,'2013-09-20 19:54:35',0,NULL,NULL),(8,NULL,'date-dd/MM/yyyy',NULL,3,'dd/MM/yyyy','^(((0[1-9]|[12]\\d|3[01])\\/(0[13578]|1[02])\\/((1[6-9]|[2-9]\\d)\\d{2}))|((0[1-9]|[12]\\d|30)\\/(0[13456789]|1[012])\\/((1[6-9]|[2-9]\\d)\\d{2}))|((0[1-9]|1\\d|2[0-8])\\/02\\/((1[6-9]|[2-9]\\d)\\d{2}))|(29\\/02\\/((1[6-9]|[2-9]\\d)(0[48]|[2468][048]|[13579][26])|((16|[2468][048]|[3579][26])00))))$',NULL,NULL,NULL,NULL,'2013-09-20 19:54:35',0,NULL,NULL),(9,NULL,'any-string-use-custom',NULL,0,NULL,NULL,NULL,'c1','c2','c3','2013-09-20 19:54:35',0,NULL,NULL),(10,NULL,'RichText',NULL,0,NULL,NULL,'RichText(8)',NULL,NULL,NULL,'2013-09-20 19:54:39',0,NULL,NULL),(11,NULL,'DVD Format',NULL,0,NULL,NULL,'option(facet.blu.ray=Blu-ray,facet.hd.dvd=HD-DVD)',NULL,NULL,NULL,'2013-09-20 19:54:43',1,NULL,NULL),(12,NULL,'Movie Ratings',NULL,0,NULL,NULL,'option(facet.mpaa.g=General Audience: G,facet.mpaa.pg=Parental Guidance: PG,facet.mpaa.pg.13=Parents Cautioned: PG-13,facet.mpaa.r=Restricted: R,facet.mpaa.nc.17=Adults Only: NC-17)',NULL,NULL,NULL,'2013-09-20 19:54:43',2,NULL,NULL);
/*!40000 ALTER TABLE `kk_cust_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cust_attr_tmpl`
--

DROP TABLE IF EXISTS `kk_cust_attr_tmpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cust_attr_tmpl` (
  `kk_cust_attr_tmpl_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_cust_attr_tmpl_id`),
  KEY `idx_nm_kk_cust_attr_tmpl` (`name`),
  KEY `idx_st_kk_cust_attr_tmpl` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cust_attr_tmpl`
--

LOCK TABLES `kk_cust_attr_tmpl` WRITE;
/*!40000 ALTER TABLE `kk_cust_attr_tmpl` DISABLE KEYS */;
INSERT INTO `kk_cust_attr_tmpl` VALUES (1,NULL,'Movie Template','Template for DVD Movies',NULL,NULL,NULL,'2013-09-20 19:54:43');
/*!40000 ALTER TABLE `kk_cust_attr_tmpl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_cust_stats`
--

DROP TABLE IF EXISTS `kk_cust_stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_cust_stats` (
  `cust_stats_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `customers_id` int(11) DEFAULT '0',
  `event_type` int(11) DEFAULT '0',
  `data1Str` varchar(128) DEFAULT NULL,
  `data2Str` varchar(128) DEFAULT NULL,
  `data1Int` int(11) DEFAULT NULL,
  `data2Int` int(11) DEFAULT NULL,
  `data1Dec` decimal(15,4) DEFAULT NULL,
  `data2Dec` decimal(15,4) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`cust_stats_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_cust_stats`
--

LOCK TABLES `kk_cust_stats` WRITE;
/*!40000 ALTER TABLE `kk_cust_stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_cust_stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_customer_group`
--

DROP TABLE IF EXISTS `kk_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_customer_group` (
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(64) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `price_id` int(11) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_customer_group`
--

LOCK TABLES `kk_customer_group` WRITE;
/*!40000 ALTER TABLE `kk_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_customer_tag`
--

DROP TABLE IF EXISTS `kk_customer_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_customer_tag` (
  `kk_customer_tag_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) NOT NULL,
  `validation` varchar(128) DEFAULT NULL,
  `tag_type` int(11) NOT NULL DEFAULT '0',
  `max_ints` int(11) DEFAULT '1',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_customer_tag_id`),
  KEY `idx_name_kk_customer_tag` (`name`),
  KEY `idx_store_id_kk_customer_tag` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_customer_tag`
--

LOCK TABLES `kk_customer_tag` WRITE;
/*!40000 ALTER TABLE `kk_customer_tag` DISABLE KEYS */;
INSERT INTO `kk_customer_tag` VALUES (1,NULL,'PRODUCTS_VIEWED','Recently viewed product id','((:[0-9]*)*:|)',2,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(2,NULL,'CATEGORIES_VIEWED','Recently viewed category id','((:[0-9]*)*:|)',2,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(3,NULL,'MANUFACTURERS_VIEWED','Recently viewed manufacturer id','((:[0-9]*)*:|)',2,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(4,NULL,'PRODUCTS_IN_CART','Id of a product in the cart','((:[0-9]*)*:|)',2,50,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(5,NULL,'PRODUCTS_IN_WISHLIST','Id of a product in the Wish List','((:[0-9]*)*:|)',2,50,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(6,NULL,'SEARCH_STRING','Product Search String',NULL,0,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(7,NULL,'COUNTRY_CODE','Country code of customer',NULL,0,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(8,NULL,'CART_TOTAL','Cart total',NULL,3,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(9,NULL,'WISHLIST_TOTAL','Wish List total',NULL,3,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(11,NULL,'IS_MALE','Customer is Male','true|false',5,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:22'),(12,NULL,'PROD_PAGE_SIZE','The page size for product lists',NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:35'),(13,NULL,'ORDER_PAGE_SIZE','The page size for order lists',NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:35'),(14,NULL,'REVIEW_PAGE_SIZE','The page size for review lists',NULL,1,0,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:35'),(15,NULL,'BIRTH_DATE','Age of Customer',NULL,6,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:41'),(16,NULL,'LOGIN_DATE','Time of Last Login',NULL,6,5,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:41');
/*!40000 ALTER TABLE `kk_customer_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_customers_to_role`
--

DROP TABLE IF EXISTS `kk_customers_to_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_customers_to_role` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`role_id`,`customers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_customers_to_role`
--

LOCK TABLES `kk_customers_to_role` WRITE;
/*!40000 ALTER TABLE `kk_customers_to_role` DISABLE KEYS */;
INSERT INTO `kk_customers_to_role` VALUES (1,2,'2013-09-20 19:53:53',NULL),(2,3,'2013-09-20 19:53:53',NULL),(3,4,'2013-09-20 19:53:53',NULL),(4,4,'2013-09-20 19:53:53',NULL);
/*!40000 ALTER TABLE `kk_customers_to_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_customers_to_tag`
--

DROP TABLE IF EXISTS `kk_customers_to_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_customers_to_tag` (
  `kk_customer_tag_id` int(11) NOT NULL DEFAULT '0',
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `tag_value` varchar(255) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_customer_tag_id`,`customers_id`),
  KEY `idx_name_kk_customers_to_tag` (`name`),
  KEY `idx_stor_kk_customers_to_tag` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_customers_to_tag`
--

LOCK TABLES `kk_customers_to_tag` WRITE;
/*!40000 ALTER TABLE `kk_customers_to_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_customers_to_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_digital_download_1`
--

DROP TABLE IF EXISTS `kk_digital_download_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_digital_download_1` (
  `kk_digital_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `products_id` int(11) NOT NULL DEFAULT '0',
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `products_file_path` varchar(255) DEFAULT NULL,
  `max_downloads` int(11) DEFAULT '-1',
  `times_downloaded` int(11) DEFAULT '0',
  `expiration_date` datetime DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`kk_digital_download_id`),
  KEY `i_prodid_kk_digdown_1` (`products_id`),
  KEY `i_custid_kk_digdown_1` (`customers_id`),
  KEY `i_storid_kk_digdown_1` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_digital_download_1`
--

LOCK TABLES `kk_digital_download_1` WRITE;
/*!40000 ALTER TABLE `kk_digital_download_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_digital_download_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_expression`
--

DROP TABLE IF EXISTS `kk_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_expression` (
  `kk_expression_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `num_variables` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_expression_id`),
  KEY `idx_name_kk_expression` (`name`),
  KEY `idx_store_id_kk_expression` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_expression`
--

LOCK TABLES `kk_expression` WRITE;
/*!40000 ALTER TABLE `kk_expression` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_expression_variable`
--

DROP TABLE IF EXISTS `kk_expression_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_expression_variable` (
  `kk_expression_variable_id` int(11) NOT NULL AUTO_INCREMENT,
  `kk_customer_tag_id` int(11) NOT NULL DEFAULT '0',
  `kk_expression_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `tag_type` int(11) NOT NULL DEFAULT '0',
  `tag_value` varchar(255) NOT NULL,
  `operator` int(11) NOT NULL DEFAULT '0',
  `tag_order` int(11) NOT NULL DEFAULT '0',
  `tag_and_or` int(11) NOT NULL DEFAULT '0',
  `group_order` int(11) NOT NULL DEFAULT '0',
  `group_and_or` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_expression_variable_id`),
  KEY `idx_exp_kk_express_to_tag` (`kk_expression_id`),
  KEY `idx_stor_kk_express_to_tag` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_expression_variable`
--

LOCK TABLES `kk_expression_variable` WRITE;
/*!40000 ALTER TABLE `kk_expression_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_expression_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_misc_item`
--

DROP TABLE IF EXISTS `kk_misc_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_misc_item` (
  `kk_misc_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `kk_obj_id` int(11) NOT NULL,
  `kk_obj_type_id` int(11) NOT NULL,
  `kk_misc_item_type_id` int(11) NOT NULL,
  `item_value` varchar(512) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_misc_item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_misc_item`
--

LOCK TABLES `kk_misc_item` WRITE;
/*!40000 ALTER TABLE `kk_misc_item` DISABLE KEYS */;
INSERT INTO `kk_misc_item` VALUES (1,1,2,1,'banners/computer-peripherals/logitech-keyboard.jpg','SelectProd.action?prodId=31',NULL,NULL,NULL,NULL),(2,1,2,2,'banners/computer-peripherals/hp-photosmart.jpg','SelectProd.action?prodId=27',NULL,NULL,NULL,NULL),(3,1,2,3,'banners/computer-peripherals/deals-of-the-week.jpg','',NULL,NULL,NULL,NULL),(4,2,2,1,'banners/games/black-ops-2.jpg','SelectProd.action?prodId=63',NULL,NULL,NULL,NULL),(5,2,2,2,'banners/games/swat3.jpg','SelectProd.action?prodId=21',NULL,NULL,NULL,NULL),(6,2,2,3,'banners/games/winter-deals.jpg','',NULL,NULL,NULL,NULL),(7,3,2,1,'banners/movies/dark-knight.jpg','SelectProd.action?prodId=20',NULL,NULL,NULL,NULL),(8,3,2,2,'banners/movies/harry-potter.jpg','SelectProd.action?prodId=11',NULL,NULL,NULL,NULL),(9,3,2,3,'banners/movies/movie-deals.jpg','',NULL,NULL,NULL,NULL),(10,23,2,1,'banners/electronics/kindle-fire-hd.jpg','SelectProd.action?prodId=34',NULL,NULL,NULL,NULL),(11,23,2,2,'banners/electronics/canon-powershot.jpg','SelectProd.action?prodId=49',NULL,NULL,NULL,NULL),(12,23,2,3,'banners/electronics/electronics-sale.jpg','',NULL,NULL,NULL,NULL),(13,24,2,1,'banners/home-and-garden/delonghi.jpg','SelectProd.action?prodId=33',NULL,NULL,NULL,NULL),(14,24,2,2,'banners/home-and-garden/rotak-40.jpg','SelectProd.action?prodId=39',NULL,NULL,NULL,NULL),(15,24,2,3,'banners/home-and-garden/gifts-for-the-home.jpg','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `kk_misc_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_misc_item_type`
--

DROP TABLE IF EXISTS `kk_misc_item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_misc_item_type` (
  `kk_misc_item_type_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_misc_item_type_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_misc_item_type`
--

LOCK TABLES `kk_misc_item_type` WRITE;
/*!40000 ALTER TABLE `kk_misc_item_type` DISABLE KEYS */;
INSERT INTO `kk_misc_item_type` VALUES (1,1,'Banner_1','Top banner',NULL,NULL),(1,2,'Banner_1','Top banner',NULL,NULL),(1,3,'Banner_1','Top banner',NULL,NULL),(1,4,'Banner_1','Top banner',NULL,NULL),(2,1,'Banner_2','2nd banner',NULL,NULL),(2,2,'Banner_2','2nd banner',NULL,NULL),(2,3,'Banner_2','2nd banner',NULL,NULL),(2,4,'Banner_2','2nd banner',NULL,NULL),(3,1,'Banner_3','3rd banner',NULL,NULL),(3,2,'Banner_3','3rd banner',NULL,NULL),(3,3,'Banner_3','3rd banner',NULL,NULL),(3,4,'Banner_3','3rd banner',NULL,NULL);
/*!40000 ALTER TABLE `kk_misc_item_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_msg`
--

DROP TABLE IF EXISTS `kk_msg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_msg` (
  `msg_key` varchar(100) NOT NULL,
  `msg_locale` varchar(10) NOT NULL,
  `msg_type` int(11) NOT NULL,
  `msg_value` text,
  PRIMARY KEY (`msg_key`,`msg_type`,`msg_locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_msg`
--

LOCK TABLES `kk_msg` WRITE;
/*!40000 ALTER TABLE `kk_msg` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_msg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_panel`
--

DROP TABLE IF EXISTS `kk_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_panel` (
  `panel_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`panel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_panel`
--

LOCK TABLES `kk_panel` WRITE;
/*!40000 ALTER TABLE `kk_panel` DISABLE KEYS */;
INSERT INTO `kk_panel` VALUES (1,'kk_panel_addressFormats','Address Formats','2013-09-20 19:53:53',NULL),(2,'kk_panel_audit','Audit','2013-09-20 19:53:53',NULL),(3,'kk_panel_auditConfig','AuditConfig','2013-09-20 19:53:53',NULL),(4,'kk_panel_cache','Cache','2013-09-20 19:53:53',NULL),(5,'kk_panel_categories','Categories','2013-09-20 19:53:53',NULL),(6,'kk_panel_configFiles','Configuration Files','2013-09-20 19:53:53',NULL),(7,'kk_panel_digitalDownloadConfig','Digital Downloads','2013-09-20 19:53:53',NULL),(8,'kk_panel_countries','Countries','2013-09-20 19:53:53',NULL),(9,'kk_panel_coupons','Coupons','2013-09-20 19:53:53',NULL),(10,'kk_panel_couponsFromProm','Coupons For Promotions','2013-09-20 19:53:53',NULL),(11,'kk_panel_currencies','Currencies','2013-09-20 19:53:53',NULL),(12,'kk_panel_customerDetails','Customer Details','2013-09-20 19:53:53',NULL),(13,'kk_panel_customerOrders','Customer Orders','2013-09-20 19:53:53',NULL),(14,'kk_panel_customers','Customers','2013-09-20 19:53:53',NULL),(15,'kk_panel_deleteSessions','Delete Expired Sessions','2013-09-20 19:53:53',NULL),(16,'kk_panel_editCustomer','Edit Customer','2013-09-20 19:53:53',NULL),(17,'kk_panel_editOrderPanel','Edit Order','2013-09-20 19:53:53',NULL),(18,'kk_panel_editProduct','Edit Product','2013-09-20 19:53:53',NULL),(19,'kk_panel_emailOptions','Email Options','2013-09-20 19:53:53',NULL),(20,'kk_panel_geoZones','Geo-Zones','2013-09-20 19:53:53',NULL),(21,'kk_panel_httpHttps','HTTP / HTTPS','2013-09-20 19:53:53',NULL),(22,'kk_panel_images','Images','2013-09-20 19:53:53',NULL),(23,'kk_panel_insertCustomer','Insert Customer','2013-09-20 19:53:53',NULL),(24,'kk_panel_ipnhistory','Payment Gateway Callbacks','2013-09-20 19:53:53',NULL),(25,'kk_panel_ipnhistoryFromOrders','Payment Status For Order','2013-09-20 19:53:53',NULL),(26,'kk_panel_languages','Languages','2013-09-20 19:53:53',NULL),(27,'kk_panel_logging','Logging','2013-09-20 19:53:53',NULL),(28,'kk_panel_roleToPanels','Maintain Roles','2013-09-20 19:53:53',NULL),(29,'kk_panel_manufacturers','Manufacturers','2013-09-20 19:53:53',NULL),(30,'kk_panel_maximumValues','Maximum Values','2013-09-20 19:53:53',NULL),(31,'kk_panel_minimumValues','Minimum Values','2013-09-20 19:53:53',NULL),(32,'kk_panel_userToRoles','Map Users to Roles','2013-09-20 19:53:53',NULL),(33,'kk_panel_orders','Orders','2013-09-20 19:53:53',NULL),(34,'kk_panel_orderStatuses','Order Statuses','2013-09-20 19:53:53',NULL),(35,'kk_panel_orderTotalModules','Order Total','2013-09-20 19:53:53',NULL),(36,'kk_panel_paymentModules','Payment','2013-09-20 19:53:53',NULL),(37,'kk_panel_prodsFromCat','Products for Categories','2013-09-20 19:53:53',NULL),(38,'kk_panel_prodsFromManu','Products for Manufacturer','2013-09-20 19:53:53',NULL),(39,'kk_panel_productOptions','Product Options','2013-09-20 19:53:53',NULL),(40,'kk_panel_products','Products','2013-09-20 19:53:53',NULL),(41,'kk_panel_promotions','Promotions','2013-09-20 19:53:53',NULL),(42,'kk_panel_promRules','Promotion Rules','2013-09-20 19:53:53',NULL),(43,'kk_panel_refreshCache','Refresh Config Cache','2013-09-20 19:53:53',NULL),(44,'kk_panel_reports','Reports','2013-09-20 19:53:53',NULL),(45,'kk_panel_reportsConfig','Reports Configuration','2013-09-20 19:53:53',NULL),(46,'kk_panel_returns','Product Returns','2013-09-20 19:53:53',NULL),(47,'kk_panel_returnsFromOrders','Product Returns For Order','2013-09-20 19:53:53',NULL),(48,'kk_panel_rss','Latest News','2013-09-20 19:53:53',NULL),(49,'kk_panel_shippingModules','Shipping','2013-09-20 19:53:53',NULL),(50,'kk_panel_shippingPacking','Shipping / Packing','2013-09-20 19:53:53',NULL),(51,'kk_panel_status','Status','2013-09-20 19:53:53',NULL),(52,'kk_panel_stockAndOrders','Stock and Orders','2013-09-20 19:53:53',NULL),(53,'kk_panel_storeConfiguration','My Store','2013-09-20 19:53:53',NULL),(54,'kk_panel_subZones','Sub-Zones','2013-09-20 19:53:53',NULL),(55,'kk_panel_taxAreaMapping','Tax Area Mapping','2013-09-20 19:53:53',NULL),(56,'kk_panel_taxAreas','Tax Areas','2013-09-20 19:53:53',NULL),(57,'kk_panel_taxAreaToZoneMapping','Tax Area to Zone Mapping','2013-09-20 19:53:53',NULL),(58,'kk_panel_taxClasses','Tax Classes','2013-09-20 19:53:53',NULL),(59,'kk_panel_taxRates','Tax Rates','2013-09-20 19:53:53',NULL),(60,'kk_panel_zones','Zones','2013-09-20 19:53:53',NULL),(61,'kk_panel_changePassword','Change Password','2013-09-20 19:53:53',NULL),(62,'kk_panel_communications','Customer Communications','2013-09-20 19:53:55',NULL),(63,'kk_panel_custGroups','Customer Groups','2013-09-20 19:53:58',NULL),(64,'kk_panel_adminAppConfig','Configure Admin App','2013-09-20 19:53:58',NULL),(65,'kk_panel_tagGroups','Maintain Tag Groups','2013-09-20 19:53:59',NULL),(66,'kk_panel_tags','Maintain Tags','2013-09-20 19:53:59',NULL),(67,'kk_panel_customerForOrder','Customer For Order','2013-09-20 19:53:59',NULL),(68,'kk_panel_custom1','Custom1','2013-09-20 19:53:59',NULL),(69,'kk_panel_custom2','Custom2','2013-09-20 19:53:59',NULL),(70,'kk_panel_custom3','Custom3','2013-09-20 19:53:59',NULL),(71,'kk_panel_custom4','Custom4','2013-09-20 19:53:59',NULL),(72,'kk_panel_custom5','Custom5','2013-09-20 19:53:59',NULL),(73,'kk_panel_custom6','Custom6','2013-09-20 19:53:59',NULL),(74,'kk_panel_custom7','Custom7','2013-09-20 19:53:59',NULL),(75,'kk_panel_custom8','Custom8','2013-09-20 19:53:59',NULL),(76,'kk_panel_custom9','Custom9','2013-09-20 19:53:59',NULL),(77,'kk_panel_custom10','Custom10','2013-09-20 19:53:59',NULL),(78,'kk_panel_customConfig','Configure Custom Panels','2013-09-20 19:53:59',NULL),(79,'kk_panel_dataFeeds','Configure Data Feeds','2013-09-20 19:53:59',NULL),(80,'kk_panel_publishProducts','Publish Products','2013-09-20 19:53:59',NULL),(81,'kk_panel_solr_search','Solr Search Engine Configuration','2013-09-20 19:54:00',NULL),(82,'kk_panel_solr_control','Solr Search Engine Control','2013-09-20 19:54:00',NULL),(83,'kk_panel_stores','Manage Multiple Stores','2013-09-20 19:54:17',NULL),(84,'kk_panel_editStore','Edit a Store in a Mall','2013-09-20 19:54:17',NULL),(85,'kk_panel_insertStore','Insert a Store in a Mall','2013-09-20 19:54:17',NULL),(86,'kk_panel_multistoreConfig','Multi-Store Configuration','2013-09-20 19:54:17',NULL),(87,'kk_panel_productQuantity','Product Quantity','2013-09-20 19:54:19',NULL),(88,'kk_panel_productAvailableDate','Product Available Date','2013-09-20 19:54:19',NULL),(89,'kk_panel_custTags','Customer Tags','2013-09-20 19:54:22',NULL),(90,'kk_panel_expressions','Expressions','2013-09-20 19:54:22',NULL),(91,'kk_panel_variablesFromExp','Expression Variables','2013-09-20 19:54:22',NULL),(92,'kk_panel_reward_points','Reward Points Configuration','2013-09-20 19:54:23',NULL),(93,'kk_panel_pdfConfig','PDF Configuration','2013-09-20 19:54:24',NULL),(94,'kk_panel_templates','Template Configuration','2013-09-20 19:54:24',NULL),(95,'kk_panel_payment_schedule','Payment Schedule','2013-09-20 19:54:26',NULL),(96,'kk_panel_subscription','Subscription','2013-09-20 19:54:26',NULL),(97,'kk_panel_subscriptionFromOrders','Subscription From Orders','2013-09-20 19:54:26',NULL),(98,'kk_panel_subscriptionFromCustomers','Subscription From Customers','2013-09-20 19:54:26',NULL),(99,'kk_panel_reviews','Maintain Product Reviews','2013-09-20 19:54:34',NULL),(100,'kk_panel_prod_reviews','Product Reviews for Product','2013-09-20 19:54:34',NULL),(101,'kk_panel_cust_reviews','Product Reviews for Customer','2013-09-20 19:54:34',NULL),(102,'kk_panel_messages','Maintain Application Messages','2013-09-20 19:54:35',NULL),(103,'kk_panel_prod_address','Product Addresses','2013-09-20 19:54:35',NULL),(104,'kk_panel_manu_address','Manufacturer Addresses','2013-09-20 19:54:35',NULL),(105,'kk_panel_cust_address','Customer Addresses','2013-09-20 19:54:35',NULL),(106,'kk_panel_prodAttrTemplates','Product Custom Attribute Templates','2013-09-20 19:54:35',NULL),(107,'kk_panel_prodAttrDescs','Product Custom Attributes','2013-09-20 19:54:35',NULL),(108,'kk_panel_customers_2','Customers 2','2013-09-20 19:54:36',NULL),(109,'kk_panel_customerForOrder_2','Customer For Order 2','2013-09-20 19:54:37',NULL),(110,'kk_panel_bookingsForOrder','Bookings For Order','2013-09-20 19:54:37',NULL),(111,'kk_panel_bookingsForProduct','Bookings For Product','2013-09-20 19:54:37',NULL),(112,'kk_panel_bookingsForCustomer','Bookings For Customer','2013-09-20 19:54:37',NULL),(113,'kk_panel_catalogs','Product Catalog Definitions','2013-09-20 19:54:37',NULL),(114,'kk_panel_otherModules','Other Modules Configuration','2013-09-20 19:54:37',NULL),(115,'kk_panel_miscItemTypes','Miscellaneous Item Types','2013-09-20 19:54:39',NULL),(116,'kk_panel_miscItems','Miscellaneous Items','2013-09-20 19:54:39',NULL),(117,'kk_panel_cat_miscItems','Miscellaneous Category Items','2013-09-20 19:54:39',NULL),(118,'kk_panel_prod_miscItems','Miscellaneous Product Items','2013-09-20 19:54:39',NULL),(119,'kk_panel_syncProducts','Synchronize Products','2013-09-20 19:54:41',NULL),(120,'kk_panel_viewLogs','View Logs','2013-09-20 19:54:41',NULL),(121,'kk_panel_customerForReview','Customer From Reviews','2013-09-20 19:54:42',NULL),(122,'kk_panel_license','Licensing','2013-09-20 19:54:43',NULL),(123,'kk_panel_jobs','Scheduled Jobs','2013-09-20 19:54:44',NULL),(124,'kk_panel_viewBatchLogs','View Batch Jobs','2013-09-20 19:54:44',NULL),(125,'kk_panel_sitemap','SitemapConfiguration','2013-09-20 19:54:46',NULL),(126,'kk_panel_importer','Importer','2013-09-20 19:54:46',NULL),(127,'kk_panel_importerConfig','Importer Configuration','2013-09-20 19:54:46',NULL),(128,'kk_panel_resetDatabase','Reset Database','2013-09-20 19:54:46',NULL),(129,'kk_panel_viewImporterLogs','View Importer Jobs','2013-09-20 19:54:46',NULL),(130,'kk_panel_velocityTemplates','Maintain Velocity Templates','2013-09-20 19:54:46',NULL),(131,'kk_panel_store_address','Store Addresses','2013-09-20 19:54:46',NULL);
/*!40000 ALTER TABLE `kk_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_payment_schedule`
--

DROP TABLE IF EXISTS `kk_payment_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_payment_schedule` (
  `kk_payment_schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `length` int(11) NOT NULL DEFAULT '0',
  `unit` int(11) NOT NULL DEFAULT '0',
  `day_of_month` int(11) NOT NULL DEFAULT '0',
  `occurrences` int(11) NOT NULL DEFAULT '0',
  `trial_occurrences` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_payment_schedule_id`),
  KEY `i_storid_kk_pay_sched` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_payment_schedule`
--

LOCK TABLES `kk_payment_schedule` WRITE;
/*!40000 ALTER TABLE `kk_payment_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_payment_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_product_feed`
--

DROP TABLE IF EXISTS `kk_product_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_product_feed` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `feed_type` int(11) NOT NULL,
  `feed_key` varchar(255) NOT NULL,
  `last_updated` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`product_id`,`language_id`,`feed_type`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_product_feed`
--

LOCK TABLES `kk_product_feed` WRITE;
/*!40000 ALTER TABLE `kk_product_feed` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_product_feed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_product_prices`
--

DROP TABLE IF EXISTS `kk_product_prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_product_prices` (
  `store_id` varchar(64) DEFAULT NULL,
  `catalog_id` varchar(32) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_attributes_id` int(11) NOT NULL,
  `tier_price_id` int(11) NOT NULL DEFAULT '0',
  `products_price_0` decimal(15,4) DEFAULT NULL,
  `products_price_1` decimal(15,4) DEFAULT NULL,
  `products_price_2` decimal(15,4) DEFAULT NULL,
  `products_price_3` decimal(15,4) DEFAULT NULL,
  PRIMARY KEY (`catalog_id`,`products_id`,`products_attributes_id`,`tier_price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_product_prices`
--

LOCK TABLES `kk_product_prices` WRITE;
/*!40000 ALTER TABLE `kk_product_prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_product_prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_product_to_stores`
--

DROP TABLE IF EXISTS `kk_product_to_stores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_product_to_stores` (
  `store_id` varchar(64) NOT NULL,
  `products_id` int(11) NOT NULL,
  `price_id` int(11) NOT NULL DEFAULT '-1',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`store_id`,`products_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_product_to_stores`
--

LOCK TABLES `kk_product_to_stores` WRITE;
/*!40000 ALTER TABLE `kk_product_to_stores` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_product_to_stores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_product_to_templates`
--

DROP TABLE IF EXISTS `kk_product_to_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_product_to_templates` (
  `store_id` varchar(64) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `cust_attr_tmpl_id` int(11) NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_id`,`cust_attr_tmpl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_product_to_templates`
--

LOCK TABLES `kk_product_to_templates` WRITE;
/*!40000 ALTER TABLE `kk_product_to_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_product_to_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_promotion_to_expression`
--

DROP TABLE IF EXISTS `kk_promotion_to_expression`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_promotion_to_expression` (
  `promotion_id` int(11) NOT NULL,
  `kk_expression_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`kk_expression_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_promotion_to_expression`
--

LOCK TABLES `kk_promotion_to_expression` WRITE;
/*!40000 ALTER TABLE `kk_promotion_to_expression` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_promotion_to_expression` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_reserved_points`
--

DROP TABLE IF EXISTS `kk_reserved_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_reserved_points` (
  `kk_reserved_points_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `reward_points_id` int(11) NOT NULL DEFAULT '0',
  `reservation_id` int(11) NOT NULL DEFAULT '0',
  `reserved_points` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_reserved_points_id`),
  KEY `i_custid_kk_reserved_pts` (`reservation_id`),
  KEY `i_storid_kk_reserved_pts` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_reserved_points`
--

LOCK TABLES `kk_reserved_points` WRITE;
/*!40000 ALTER TABLE `kk_reserved_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_reserved_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_reward_points`
--

DROP TABLE IF EXISTS `kk_reward_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_reward_points` (
  `kk_reward_points_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `code` varchar(64) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `initial_points` int(11) NOT NULL DEFAULT '0',
  `remaining_points` int(11) NOT NULL DEFAULT '0',
  `expired` int(11) NOT NULL DEFAULT '0',
  `tx_type` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_reward_points_id`),
  KEY `i_custid_kk_reward_pts` (`customers_id`),
  KEY `i_storid_kk_reward_pts` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_reward_points`
--

LOCK TABLES `kk_reward_points` WRITE;
/*!40000 ALTER TABLE `kk_reward_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_reward_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_role`
--

DROP TABLE IF EXISTS `kk_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `super_user` int(1) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_role`
--

LOCK TABLES `kk_role` WRITE;
/*!40000 ALTER TABLE `kk_role` DISABLE KEYS */;
INSERT INTO `kk_role` VALUES (1,'Super User','Permission to do everything to all stores','2013-09-20 19:53:53',NULL,1,'Administrator',NULL,NULL,NULL,NULL),(2,'Catalog Maintenance','Permission to maintain the catalog of products','2013-09-20 19:53:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Order Maintenance','Permission to maintain the orders','2013-09-20 19:53:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'Customer Maintenance','Permission to maintain the customers','2013-09-20 19:53:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'Store Administrator','Permission to maintain a single store','2013-09-20 19:53:53',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `kk_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_role_to_api_call`
--

DROP TABLE IF EXISTS `kk_role_to_api_call`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_role_to_api_call` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `api_call_id` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`role_id`,`api_call_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_role_to_api_call`
--

LOCK TABLES `kk_role_to_api_call` WRITE;
/*!40000 ALTER TABLE `kk_role_to_api_call` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_role_to_api_call` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_role_to_panel`
--

DROP TABLE IF EXISTS `kk_role_to_panel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_role_to_panel` (
  `role_id` int(11) NOT NULL DEFAULT '0',
  `panel_id` int(11) NOT NULL DEFAULT '0',
  `can_edit` int(11) DEFAULT '0',
  `can_insert` int(11) DEFAULT '0',
  `can_delete` int(11) DEFAULT '0',
  `custom1` int(11) DEFAULT '0',
  `custom1_desc` varchar(128) DEFAULT NULL,
  `custom2` int(11) DEFAULT '0',
  `custom2_desc` varchar(128) DEFAULT NULL,
  `custom3` int(11) DEFAULT '0',
  `custom3_desc` varchar(128) DEFAULT NULL,
  `custom4` int(11) DEFAULT '0',
  `custom4_desc` varchar(128) DEFAULT NULL,
  `custom5` int(11) DEFAULT '0',
  `custom5_desc` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`role_id`,`panel_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_role_to_panel`
--

LOCK TABLES `kk_role_to_panel` WRITE;
/*!40000 ALTER TABLE `kk_role_to_panel` DISABLE KEYS */;
INSERT INTO `kk_role_to_panel` VALUES (1,1,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,2,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,3,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,4,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,5,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,6,1,1,1,1,'Set to allow upload of configuration files',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,7,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,8,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,9,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,10,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,11,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,12,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,13,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,14,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2013-09-20 19:53:53',NULL,NULL),(1,15,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,16,1,1,1,0,'Set to allow editing of external customer fields only',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,17,1,1,1,0,'Set to allow read and edit of credit card details',0,'Set to allow read and edit of custom fields, order number, tracking number',0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,18,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,19,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,20,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,21,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,22,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,23,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,24,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,25,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,26,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,27,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,28,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,29,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,30,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,31,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,32,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,33,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,34,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,35,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,36,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,37,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,38,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,39,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,40,1,1,1,0,'If set reviews button not shown',0,'If set addresses button not shown',0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,41,1,1,1,0,'If set coupons button not shown',0,'If set gift certificates button not shown',0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,42,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,43,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,44,1,1,1,0,'If set reports cannot be run',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,45,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,46,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,47,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,48,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,49,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,50,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,51,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,52,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,53,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,54,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,55,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,56,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,57,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,58,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,59,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,60,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(1,62,1,1,1,0,'If set, template names can be entered in a text box',0,'If set, a file upload button is not displayed',0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:55',NULL,NULL),(1,63,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:58',NULL,NULL),(1,64,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:58',NULL,NULL),(1,65,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,66,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,67,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2013-09-20 19:53:59',NULL,NULL),(1,68,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,69,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,70,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,71,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,72,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,73,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,74,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,75,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,76,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,77,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,78,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,79,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,80,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(1,81,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:00',NULL,NULL),(1,82,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:00',NULL,NULL),(1,83,1,1,1,1,'Set to allow admin of all stores',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:17',NULL,NULL),(1,84,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:17',NULL,NULL),(1,85,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:17',NULL,NULL),(1,86,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:17',NULL,NULL),(1,87,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:19',NULL,NULL),(1,88,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:19',NULL,NULL),(1,89,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:22',NULL,NULL),(1,90,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:22',NULL,NULL),(1,91,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:22',NULL,NULL),(1,92,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:23',NULL,NULL),(1,93,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:24',NULL,NULL),(1,94,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:24',NULL,NULL),(1,95,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(1,96,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(1,97,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(1,98,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(1,99,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(1,100,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(1,101,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(1,102,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(1,103,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(1,104,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(1,105,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(1,106,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(1,107,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(1,108,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2013-09-20 19:54:36',NULL,NULL),(1,109,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(1,110,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(1,111,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(1,112,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(1,113,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(1,114,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(1,115,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(1,116,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(1,117,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(1,118,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(1,119,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:41',NULL,NULL),(1,120,1,1,0,0,'Set to hide the View button',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:41',NULL,NULL),(1,121,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:42',NULL,NULL),(1,122,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:43',NULL,NULL),(1,123,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:44',NULL,NULL),(1,124,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:44',NULL,NULL),(1,125,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(1,126,1,1,1,0,'If set Custom1 button is not shown',0,'If set Custom2 button is not shown',0,'If set Custom3 button is not shown',0,'If set Upload button is not shown',0,NULL,'2013-09-20 19:54:46',NULL,NULL),(1,127,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(1,128,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(1,129,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(1,130,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(1,131,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(2,5,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,9,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,10,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,18,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,29,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,37,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,38,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,39,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,40,1,1,1,0,'If set reviews button not shown',0,'If set addresses button not shown',0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,41,1,1,1,0,'If set coupons button not shown',0,'If set gift certificates button not shown',0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,42,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(2,65,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(2,66,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:59',NULL,NULL),(2,87,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:19',NULL,NULL),(2,88,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:19',NULL,NULL),(2,89,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:22',NULL,NULL),(2,90,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:22',NULL,NULL),(2,91,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:22',NULL,NULL),(2,95,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(2,99,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(2,100,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(2,101,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(2,106,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(2,107,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(2,111,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(2,113,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(2,115,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(2,116,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(2,117,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(2,118,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(2,119,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:41',NULL,NULL),(3,17,1,1,1,0,'Set to allow read and edit of credit card details',0,'Set to allow read and edit of custom fields, order number, tracking number',0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(3,24,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(3,25,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(3,33,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2013-09-20 19:53:53',NULL,NULL),(3,46,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(3,47,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(3,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(3,67,0,0,0,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2013-09-20 19:53:59',NULL,NULL),(3,96,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(3,97,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(3,98,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(3,109,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(3,110,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(4,13,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2013-09-20 19:53:53',NULL,NULL),(4,14,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2013-09-20 19:53:53',NULL,NULL),(4,16,1,1,1,0,'Set to allow editing of external customer fields only',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(4,23,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(4,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:53',NULL,NULL),(4,62,1,1,1,0,'If set, template names can be entered in a text box',0,'If set, a file upload button is not displayed',0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:55',NULL,NULL),(4,63,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:53:58',NULL,NULL),(4,103,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(4,104,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(4,105,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(4,108,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2013-09-20 19:54:36',NULL,NULL),(4,112,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(4,121,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:42',NULL,NULL),(4,131,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(5,2,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,3,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,4,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,5,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,7,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,9,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,10,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,12,0,0,0,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,13,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,14,0,0,0,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2013-09-20 19:54:18',NULL,NULL),(5,15,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,16,1,1,1,0,'Set to allow editing of external customer fields only',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,17,1,1,1,0,'Set to allow read and edit of credit card details',0,'Set to allow read and edit of custom fields, order number, tracking number',0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,18,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,19,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,22,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,23,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,24,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,25,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,27,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,29,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,30,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,31,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,33,1,1,1,0,'If set packing list button not shown',0,'If set invoice button not shown',0,'If set Export For Shipping button not shown',0,'If set Export button not shown',0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,34,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,35,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,36,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,37,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,38,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,39,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,40,1,1,1,0,'If set reviews button not shown',0,'If set addresses button not shown',0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,41,1,1,1,0,'If set coupons button not shown',0,'If set gift certificates button not shown',0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,42,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,43,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,44,1,1,1,0,'If set reports cannot be run',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,45,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,46,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,47,1,1,1,0,NULL,0,NULL,0,'If set custom returns button is disabled',0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,48,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,49,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,50,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,51,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,52,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,53,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,61,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,62,1,1,1,0,'If set, template names can be entered in a text box',0,'If set, a file upload button is not displayed',0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,64,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,65,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,66,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,67,1,1,1,0,'If set email is disabled',0,'If set cannot reset password',0,'If set customer search droplists are disabled',0,'If set login button is hidden',0,'If set addresses button is hidden','2013-09-20 19:54:18',NULL,NULL),(5,68,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,69,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,70,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,71,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,72,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,73,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,74,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,75,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,76,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,77,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,78,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,79,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,80,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,81,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,82,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,83,1,0,0,0,'Set to allow admin of all stores',0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,84,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:18',NULL,NULL),(5,92,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:23',NULL,NULL),(5,93,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:24',NULL,NULL),(5,94,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:24',NULL,NULL),(5,95,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(5,96,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(5,97,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(5,98,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:26',NULL,NULL),(5,99,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(5,100,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(5,101,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:34',NULL,NULL),(5,102,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(5,103,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(5,104,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(5,105,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(5,106,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(5,107,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:35',NULL,NULL),(5,108,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2013-09-20 19:54:36',NULL,NULL),(5,109,1,1,1,0,'Set to Access Invisible Customers',0,'If set reviews button is hidden',0,'If set custom button is hidden',0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(5,110,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(5,111,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(5,112,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(5,113,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(5,114,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:37',NULL,NULL),(5,115,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(5,116,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(5,117,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(5,118,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:39',NULL,NULL),(5,119,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:41',NULL,NULL),(5,121,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:42',NULL,NULL),(5,122,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:43',NULL,NULL),(5,123,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:44',NULL,NULL),(5,124,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:44',NULL,NULL),(5,125,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(5,126,1,1,1,0,'If set Custom1 button is not shown',0,'If set Custom2 button is not shown',0,'If set Custom3 button is not shown',0,'If set Upload button is not shown',0,NULL,'2013-09-20 19:54:46',NULL,NULL),(5,127,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(5,128,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(5,129,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(5,130,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL),(5,131,1,1,1,0,NULL,0,NULL,0,NULL,0,NULL,0,NULL,'2013-09-20 19:54:46',NULL,NULL);
/*!40000 ALTER TABLE `kk_role_to_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_secret_key`
--

DROP TABLE IF EXISTS `kk_secret_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_secret_key` (
  `kk_secret_key_id` int(11) NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(255) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`kk_secret_key_id`),
  KEY `idx_secret_key_kk_secret_key` (`secret_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_secret_key`
--

LOCK TABLES `kk_secret_key` WRITE;
/*!40000 ALTER TABLE `kk_secret_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_secret_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_sso`
--

DROP TABLE IF EXISTS `kk_sso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_sso` (
  `kk_sso_id` int(11) NOT NULL AUTO_INCREMENT,
  `secret_key` varchar(255) NOT NULL,
  `customers_id` int(11) DEFAULT '0',
  `sesskey` varchar(32) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_sso_id`),
  KEY `i_kk_sso_1` (`secret_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_sso`
--

LOCK TABLES `kk_sso` WRITE;
/*!40000 ALTER TABLE `kk_sso` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_sso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_store`
--

DROP TABLE IF EXISTS `kk_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_store` (
  `store_id` varchar(64) NOT NULL,
  `store_name` varchar(64) NOT NULL,
  `store_desc` varchar(128) NOT NULL,
  `store_enabled` int(1) NOT NULL,
  `store_under_maint` int(1) NOT NULL,
  `store_deleted` int(1) NOT NULL,
  `store_template` int(1) NOT NULL,
  `store_admin_email` varchar(96) DEFAULT NULL,
  `store_css_filename` varchar(128) DEFAULT NULL,
  `store_logo_filename` varchar(128) DEFAULT NULL,
  `store_url` varchar(128) DEFAULT NULL,
  `store_home` varchar(64) DEFAULT NULL,
  `store_max_products` int(11) NOT NULL DEFAULT '-1',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_store`
--

LOCK TABLES `kk_store` WRITE;
/*!40000 ALTER TABLE `kk_store` DISABLE KEYS */;
INSERT INTO `kk_store` VALUES ('store1','store1','Store Number One',1,0,0,0,'admin@konakart.com','style.css','logo.png',NULL,'derby',-1,NULL,NULL,NULL,NULL,NULL,'2013-09-20 19:54:17',NULL);
/*!40000 ALTER TABLE `kk_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_subscription`
--

DROP TABLE IF EXISTS `kk_subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_subscription` (
  `kk_subscription_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_number` varchar(128) DEFAULT NULL,
  `customers_id` int(11) NOT NULL DEFAULT '0',
  `products_id` int(11) NOT NULL DEFAULT '0',
  `payment_schedule_id` int(11) NOT NULL DEFAULT '0',
  `products_sku` varchar(255) DEFAULT NULL,
  `subscription_code` varchar(128) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL,
  `trial_amount` decimal(15,4) DEFAULT NULL,
  `active` int(11) NOT NULL DEFAULT '0',
  `problem` int(11) NOT NULL DEFAULT '0',
  `problem_description` varchar(255) DEFAULT NULL,
  `last_billing_date` datetime DEFAULT NULL,
  `next_billing_date` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_subscription_id`),
  KEY `i_storid_kk_subscription` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_subscription`
--

LOCK TABLES `kk_subscription` WRITE;
/*!40000 ALTER TABLE `kk_subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tag`
--

DROP TABLE IF EXISTS `kk_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tag` (
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `sort_order` int(11) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tag_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tag`
--

LOCK TABLES `kk_tag` WRITE;
/*!40000 ALTER TABLE `kk_tag` DISABLE KEYS */;
INSERT INTO `kk_tag` VALUES (1,1,'General Audience: G',0,NULL),(1,2,'General Audience: G',0,NULL),(1,3,'General Audience: G',0,NULL),(1,4,'Audiência Geral: G',0,NULL),(2,1,'Parental Guidance: PG',1,NULL),(2,2,'Parental Guidance: PG',1,NULL),(2,3,'Parental Guidance: PG',1,NULL),(2,4,'Parental Guidance: PG',1,NULL),(3,1,'Parents Cautioned: PG-13',2,NULL),(3,2,'Parents Cautioned: PG-13',2,NULL),(3,3,'Parents Cautioned: PG-13',2,NULL),(3,4,'Pais Advertido: PG-13',2,NULL),(4,1,'Restricted: R',3,NULL),(4,2,'Restricted: R',3,NULL),(4,3,'Restricted: R',3,NULL),(4,4,'Restrito: R',3,NULL),(5,1,'Adults Only: NC-17',4,NULL),(5,2,'Adults Only: NC-17',4,NULL),(5,3,'Adults Only: NC-17',4,NULL),(5,4,'Adults Only: NC-17',4,NULL),(6,1,'Blu-ray',0,NULL),(6,2,'Blu-ray',0,NULL),(6,3,'Blu-ray',0,NULL),(6,4,'Blu-ray',0,NULL),(7,1,'HD-DVD',1,NULL),(7,2,'HD-DVD',1,NULL),(7,3,'HD-DVD',1,NULL),(7,4,'HD-DVD',1,NULL);
/*!40000 ALTER TABLE `kk_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tag_group`
--

DROP TABLE IF EXISTS `kk_tag_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tag_group` (
  `tag_group_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `facet_number` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tag_group_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tag_group`
--

LOCK TABLES `kk_tag_group` WRITE;
/*!40000 ALTER TABLE `kk_tag_group` DISABLE KEYS */;
INSERT INTO `kk_tag_group` VALUES (1,1,'MPAA Movie Ratings','The MPAA rating given to each movie',NULL,2),(1,2,'MPAA Movie Ratings','The MPAA rating given to each movie',NULL,2),(1,3,'MPAA Movie Ratings','The MPAA rating given to each movie',NULL,2),(1,4,'Avaliações MPAA Movie','A MPAA rating dado a cada filme',NULL,2),(2,1,'DVD Format','The format of the DVD',NULL,1),(2,2,'DVD Format','The format of the DVD',NULL,1),(2,3,'DVD Format','The format of the DVD',NULL,1),(2,4,'Formato DVD','O formato do DVD',NULL,1);
/*!40000 ALTER TABLE `kk_tag_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tag_group_to_tag`
--

DROP TABLE IF EXISTS `kk_tag_group_to_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tag_group_to_tag` (
  `tag_group_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tag_group_id`,`tag_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tag_group_to_tag`
--

LOCK TABLES `kk_tag_group_to_tag` WRITE;
/*!40000 ALTER TABLE `kk_tag_group_to_tag` DISABLE KEYS */;
INSERT INTO `kk_tag_group_to_tag` VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL),(1,4,NULL),(1,5,NULL),(2,6,NULL),(2,7,NULL);
/*!40000 ALTER TABLE `kk_tag_group_to_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tag_to_product`
--

DROP TABLE IF EXISTS `kk_tag_to_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tag_to_product` (
  `tag_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tag_id`,`products_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tag_to_product`
--

LOCK TABLES `kk_tag_to_product` WRITE;
/*!40000 ALTER TABLE `kk_tag_to_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_tag_to_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tier_price`
--

DROP TABLE IF EXISTS `kk_tier_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tier_price` (
  `kk_tier_price_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `tier_price` decimal(15,4) DEFAULT NULL,
  `tier_price_1` decimal(15,4) DEFAULT NULL,
  `tier_price_2` decimal(15,4) DEFAULT NULL,
  `tier_price_3` decimal(15,4) DEFAULT NULL,
  `use_percentage_discount` int(11) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_tier_price_id`),
  KEY `i_prodid_kk_tier_price` (`products_id`),
  KEY `i_storid_kk_tier_price` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tier_price`
--

LOCK TABLES `kk_tier_price` WRITE;
/*!40000 ALTER TABLE `kk_tier_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_tier_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_tmpl_to_cust_attr`
--

DROP TABLE IF EXISTS `kk_tmpl_to_cust_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_tmpl_to_cust_attr` (
  `kk_cust_attr_tmpl_id` int(11) NOT NULL DEFAULT '0',
  `kk_cust_attr_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`kk_cust_attr_tmpl_id`,`kk_cust_attr_id`),
  KEY `idx_st_kk_tmpl_to_cust_attr` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_tmpl_to_cust_attr`
--

LOCK TABLES `kk_tmpl_to_cust_attr` WRITE;
/*!40000 ALTER TABLE `kk_tmpl_to_cust_attr` DISABLE KEYS */;
INSERT INTO `kk_tmpl_to_cust_attr` VALUES (1,11,NULL,0),(1,12,NULL,1);
/*!40000 ALTER TABLE `kk_tmpl_to_cust_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_wishlist`
--

DROP TABLE IF EXISTS `kk_wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_wishlist` (
  `kk_wishlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `customers_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `public_or_private` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customers_firstname` varchar(32) DEFAULT NULL,
  `customers_lastname` varchar(32) DEFAULT NULL,
  `customers_dob` datetime DEFAULT NULL,
  `customers_city` varchar(64) DEFAULT NULL,
  `customers_state` varchar(32) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `customers1_firstname` varchar(32) DEFAULT NULL,
  `customers1_lastname` varchar(32) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `list_type` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  PRIMARY KEY (`kk_wishlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_wishlist`
--

LOCK TABLES `kk_wishlist` WRITE;
/*!40000 ALTER TABLE `kk_wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_wishlist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kk_wishlist_item`
--

DROP TABLE IF EXISTS `kk_wishlist_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kk_wishlist_item` (
  `kk_wishlist_item_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` varchar(64) DEFAULT NULL,
  `kk_wishlist_id` int(11) NOT NULL,
  `products_id` varchar(255) NOT NULL,
  `priority` int(11) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `quantity_desired` int(11) DEFAULT NULL,
  `quantity_bought` int(11) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`kk_wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kk_wishlist_item`
--

LOCK TABLES `kk_wishlist_item` WRITE;
/*!40000 ALTER TABLE `kk_wishlist_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `kk_wishlist_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` char(2) NOT NULL,
  `image` varchar(64) DEFAULT NULL,
  `directory` varchar(32) DEFAULT NULL,
  `sort_order` int(3) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `locale` varchar(10) DEFAULT NULL,
  `display_only` int(11) DEFAULT '0',
  PRIMARY KEY (`languages_id`),
  KEY `IDX_LANGUAGES_NAME` (`name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','icon.gif','english',1,NULL,'en_GB',0),(2,'Deutsch','de','icon.gif','german',2,NULL,'de_DE',0),(3,'Español','es','icon.gif','espanol',3,NULL,'es_ES',0),(4,'Português','pt','icon.gif','portuguese',4,NULL,'pt_BR',0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `manufacturers_id` int(11) NOT NULL AUTO_INCREMENT,
  `manufacturers_name` varchar(32) NOT NULL,
  `manufacturers_image` varchar(64) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`),
  KEY `IDX_MANUFACTURERS_NAME` (`manufacturers_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (3,'SuperTrack','manufacturer/warner.gif','2013-09-20 19:53:46','2013-09-20 20:10:18',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers_info`
--

DROP TABLE IF EXISTS `manufacturers_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(255) NOT NULL,
  `url_clicked` int(5) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`manufacturers_id`,`languages_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers_info`
--

LOCK TABLES `manufacturers_info` WRITE;
/*!40000 ALTER TABLE `manufacturers_info` DISABLE KEYS */;
INSERT INTO `manufacturers_info` VALUES (3,1,'http://www.supertrack.com',0,NULL,NULL),(3,2,'http://www.supertrack.com',0,NULL,NULL),(3,3,'http://www.supertrack.com',0,NULL,NULL),(3,4,'http://www.supertrack.com',0,NULL,NULL);
/*!40000 ALTER TABLE `manufacturers_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `newsletters_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `module` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_sent` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `locked` int(1) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`newsletters_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL AUTO_INCREMENT,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(66) DEFAULT NULL,
  `customers_company` varchar(32) DEFAULT NULL,
  `customers_street_address` varchar(64) NOT NULL,
  `customers_suburb` varchar(32) DEFAULT NULL,
  `customers_city` varchar(64) NOT NULL,
  `customers_postcode` varchar(10) NOT NULL,
  `customers_state` varchar(32) DEFAULT NULL,
  `customers_country` varchar(64) DEFAULT NULL,
  `customers_telephone` varchar(32) NOT NULL,
  `customers_email_address` varchar(96) NOT NULL,
  `customers_address_format_id` int(5) NOT NULL,
  `delivery_name` varchar(66) DEFAULT NULL,
  `delivery_company` varchar(32) DEFAULT NULL,
  `delivery_street_address` varchar(64) NOT NULL,
  `delivery_suburb` varchar(32) DEFAULT NULL,
  `delivery_city` varchar(64) NOT NULL,
  `delivery_postcode` varchar(10) NOT NULL,
  `delivery_state` varchar(32) DEFAULT NULL,
  `delivery_country` varchar(64) DEFAULT NULL,
  `delivery_address_format_id` int(5) NOT NULL,
  `billing_name` varchar(66) DEFAULT NULL,
  `billing_company` varchar(32) DEFAULT NULL,
  `billing_street_address` varchar(64) NOT NULL,
  `billing_suburb` varchar(32) DEFAULT NULL,
  `billing_city` varchar(64) NOT NULL,
  `billing_postcode` varchar(10) NOT NULL,
  `billing_state` varchar(32) DEFAULT NULL,
  `billing_country` varchar(64) DEFAULT NULL,
  `billing_address_format_id` int(5) NOT NULL,
  `payment_method` varchar(32) NOT NULL,
  `cc_type` varchar(20) DEFAULT NULL,
  `cc_owner` varchar(64) DEFAULT NULL,
  `cc_number` varchar(32) DEFAULT NULL,
  `cc_expires` varchar(4) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_status` int(5) NOT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `promotion_ids` varchar(64) DEFAULT NULL,
  `coupon_ids` varchar(64) DEFAULT NULL,
  `shipping_module_code` varchar(64) DEFAULT NULL,
  `payment_module_code` varchar(64) DEFAULT NULL,
  `cc_cvv` varchar(10) DEFAULT NULL,
  `e1` varchar(100) DEFAULT NULL,
  `e2` varchar(100) DEFAULT NULL,
  `e3` varchar(100) DEFAULT NULL,
  `e4` varchar(100) DEFAULT NULL,
  `e5` varchar(100) DEFAULT NULL,
  `e6` varchar(100) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `orders_number` varchar(128) DEFAULT NULL,
  `tracking_number` varchar(128) DEFAULT NULL,
  `points_used` int(11) DEFAULT '0',
  `points_awarded` int(11) DEFAULT '0',
  `points_reservation_id` int(11) DEFAULT '-1',
  `customers_locale` varchar(16) DEFAULT NULL,
  `invoice_filename` varchar(255) DEFAULT NULL,
  `customers_telephone_1` varchar(32) DEFAULT NULL,
  `delivery_telephone` varchar(32) DEFAULT NULL,
  `delivery_telephone_1` varchar(32) DEFAULT NULL,
  `delivery_email_address` varchar(96) DEFAULT NULL,
  `billing_telephone` varchar(32) DEFAULT NULL,
  `billing_telephone_1` varchar(32) DEFAULT NULL,
  `billing_email_address` varchar(96) DEFAULT NULL,
  `customers_street_address_1` varchar(64) DEFAULT NULL,
  `delivery_street_address_1` varchar(64) DEFAULT NULL,
  `billing_street_address_1` varchar(64) DEFAULT NULL,
  `shipping_service_code` varchar(128) DEFAULT NULL,
  `lifecycle_id` varchar(128) DEFAULT NULL,
  `billing_addr_id` int(11) DEFAULT '-1',
  `delivery_addr_id` int(11) DEFAULT '-1',
  `customer_addr_id` int(11) DEFAULT '-1',
  `order_creator` varchar(128) DEFAULT NULL,
  `affiliate_id` varchar(128) DEFAULT NULL,
  `payment_module_subcode` varchar(64) DEFAULT NULL,
  `store_name` varchar(64) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products`
--

DROP TABLE IF EXISTS `orders_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(64) DEFAULT NULL,
  `products_name` varchar(255) DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `final_price` decimal(15,4) NOT NULL,
  `products_tax` decimal(7,4) NOT NULL,
  `products_quantity` int(2) NOT NULL,
  `products_type` int(11) DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `products_price_0` decimal(15,4) DEFAULT NULL,
  `products_price_1` decimal(15,4) DEFAULT NULL,
  `products_price_2` decimal(15,4) DEFAULT NULL,
  `products_price_3` decimal(15,4) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `products_state` int(11) DEFAULT '0',
  `products_sku` varchar(255) DEFAULT NULL,
  `kk_wishlist_id` int(11) DEFAULT NULL,
  `kk_wishlist_item_id` int(11) DEFAULT NULL,
  `discount_percent` decimal(15,4) DEFAULT NULL,
  `weight` decimal(10,2) DEFAULT NULL,
  `tax_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`orders_products_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products`
--

LOCK TABLES `orders_products` WRITE;
/*!40000 ALTER TABLE `orders_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products_attributes`
--

DROP TABLE IF EXISTS `orders_products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_options` varchar(64) DEFAULT NULL,
  `products_options_values` varchar(64) DEFAULT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) NOT NULL,
  `products_options_id` int(11) NOT NULL DEFAULT '-1',
  `products_options_values_id` int(11) NOT NULL DEFAULT '-1',
  `store_id` varchar(64) DEFAULT NULL,
  `attr_type` int(11) NOT NULL DEFAULT '0',
  `attr_quantity` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_products_attributes_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products_attributes`
--

LOCK TABLES `orders_products_attributes` WRITE;
/*!40000 ALTER TABLE `orders_products_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_products_download`
--

DROP TABLE IF EXISTS `orders_products_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_products_download` (
  `orders_products_download_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_id` int(11) NOT NULL DEFAULT '0',
  `orders_products_filename` varchar(255) NOT NULL DEFAULT '',
  `download_maxdays` int(2) NOT NULL DEFAULT '0',
  `download_count` int(2) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`orders_products_download_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_products_download`
--

LOCK TABLES `orders_products_download` WRITE;
/*!40000 ALTER TABLE `orders_products_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_products_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_returns`
--

DROP TABLE IF EXISTS `orders_returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_returns` (
  `orders_returns_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `rma_code` varchar(128) DEFAULT NULL,
  `return_reason` text,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `orders_number` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`orders_returns_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_returns`
--

LOCK TABLES `orders_returns` WRITE;
/*!40000 ALTER TABLE `orders_returns` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status`
--

DROP TABLE IF EXISTS `orders_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `orders_status_name` varchar(32) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `notify_customer` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_status_id`,`language_id`),
  KEY `idx_orders_status_name` (`orders_status_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_status`
--

LOCK TABLES `orders_status` WRITE;
/*!40000 ALTER TABLE `orders_status` DISABLE KEYS */;
INSERT INTO `orders_status` VALUES (1,1,'Pending',NULL,0),(1,2,'Offen',NULL,0),(1,3,'Pendiente',NULL,0),(1,4,'Pendente',NULL,0),(2,1,'Processing',NULL,0),(2,2,'In Bearbeitung',NULL,0),(2,3,'Proceso',NULL,0),(2,4,'Processamento',NULL,0),(3,1,'Delivered',NULL,0),(3,2,'Versendet',NULL,0),(3,3,'Entregado',NULL,0),(3,4,'Entregue',NULL,0),(4,1,'Waiting for Payment',NULL,0),(4,2,'Wartezahlung',NULL,0),(4,3,'Para pago que espera',NULL,0),(4,4,'À espera de pagamento',NULL,0),(5,1,'Payment Received',NULL,0),(5,2,'Zahlung empfing',NULL,0),(5,3,'Pago recibido',NULL,0),(5,4,'Pagamento Recebido',NULL,0),(6,1,'Payment Declined',NULL,0),(6,2,'Zahlung sank',NULL,0),(6,3,'Pago declinado',NULL,0),(6,4,'Pagamento recusado',NULL,0),(7,1,'Partially Delivered',NULL,0),(7,2,'Teilweise geliefert',NULL,0),(7,3,'Entregado parcialmente',NULL,0),(7,4,'Parcialmente entregue',NULL,0),(8,1,'Cancelled',NULL,0),(8,2,'Abgesagt',NULL,0),(8,3,'Cancelado',NULL,0),(8,4,'Cancelado',NULL,0);
/*!40000 ALTER TABLE `orders_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_status_history`
--

DROP TABLE IF EXISTS `orders_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(5) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(1) DEFAULT '0',
  `comments` text,
  `store_id` varchar(64) DEFAULT NULL,
  `updated_by_id` int(11) DEFAULT '0',
  PRIMARY KEY (`orders_status_history_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_status_history`
--

LOCK TABLES `orders_status_history` WRITE;
/*!40000 ALTER TABLE `orders_status_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_total`
--

DROP TABLE IF EXISTS `orders_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_total` (
  `orders_total_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orders_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) NOT NULL,
  `sort_order` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`orders_total_id`),
  KEY `idx_orders_total_orders_id` (`orders_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_total`
--

LOCK TABLES `orders_total` WRITE;
/*!40000 ALTER TABLE `orders_total` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_quantity` int(4) NOT NULL,
  `products_model` varchar(64) DEFAULT NULL,
  `products_image` varchar(255) DEFAULT NULL,
  `products_price` decimal(15,4) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` decimal(15,2) DEFAULT '0.00',
  `products_status` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `products_invisible` int(1) NOT NULL DEFAULT '0',
  `products_sku` varchar(255) DEFAULT NULL,
  `products_type` int(11) DEFAULT '0',
  `products_file_path` varchar(255) DEFAULT NULL,
  `products_content_type` varchar(128) DEFAULT NULL,
  `products_image2` varchar(255) DEFAULT NULL,
  `products_image3` varchar(255) DEFAULT NULL,
  `products_image4` varchar(255) DEFAULT NULL,
  `products_price_1` decimal(15,4) DEFAULT NULL,
  `products_price_2` decimal(15,4) DEFAULT NULL,
  `products_price_3` decimal(15,4) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `max_num_downloads` int(11) NOT NULL DEFAULT '-1',
  `max_download_days` int(11) NOT NULL DEFAULT '-1',
  `stock_reorder_level` int(11) NOT NULL DEFAULT '-1',
  `can_order_when_not_in_stock` int(11) NOT NULL DEFAULT '-1',
  `index_attachment` int(11) NOT NULL DEFAULT '0',
  `rating` decimal(15,4) DEFAULT NULL,
  `custom6` varchar(128) DEFAULT NULL,
  `custom7` varchar(128) DEFAULT NULL,
  `custom8` varchar(128) DEFAULT NULL,
  `custom9` varchar(128) DEFAULT NULL,
  `custom10` varchar(128) DEFAULT NULL,
  `custom1Int` int(11) DEFAULT NULL,
  `custom2Int` int(11) DEFAULT NULL,
  `custom1Dec` decimal(15,4) DEFAULT NULL,
  `custom2Dec` decimal(15,4) DEFAULT NULL,
  `products_date_expiry` datetime DEFAULT NULL,
  `payment_schedule_id` int(11) NOT NULL DEFAULT '-1',
  `cust_attr_tmpl_id` int(11) DEFAULT '-1',
  `custom_attrs` text,
  `product_uuid` varchar(128) DEFAULT NULL,
  `source_last_modified` datetime DEFAULT NULL,
  `number_reviews` int(11) DEFAULT '0',
  `product_image_dir` varchar(64) DEFAULT NULL,
  `product_depth` int(11) NOT NULL DEFAULT '0',
  `product_width` int(11) NOT NULL DEFAULT '0',
  `product_length` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_id`),
  KEY `idx_products_date_added` (`products_date_added`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_manu_id` (`manufacturers_id`),
  KEY `idx_product_uuid` (`product_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (7,10,'DVD-YGEM','/prod/9/2/9/3/92937B41-BC5C-4CB8-92E3-4380A933F6E2_1_big.jpg',34.9900,'2013-09-20 19:53:46',NULL,'2013-09-20 19:53:46',7.00,1,1,3,0,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,-1,-1,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,-1,-1,NULL,'92937B41-BC5C-4CB8-92E3-4380A933F6E2',NULL,0,'/prod/9/2/9/3/',20,140,200);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes`
--

DROP TABLE IF EXISTS `products_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,4) NOT NULL,
  `price_prefix` char(1) NOT NULL,
  `options_values_price_1` decimal(15,4) DEFAULT NULL,
  `options_values_price_2` decimal(15,4) DEFAULT NULL,
  `options_values_price_3` decimal(15,4) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_products_id` (`products_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attributes`
--

LOCK TABLES `products_attributes` WRITE;
/*!40000 ALTER TABLE `products_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_attributes_download`
--

DROP TABLE IF EXISTS `products_attributes_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(255) NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(2) DEFAULT '0',
  `products_attributes_maxcount` int(2) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_attributes_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_attributes_download`
--

LOCK TABLES `products_attributes_download` WRITE;
/*!40000 ALTER TABLE `products_attributes_download` DISABLE KEYS */;
INSERT INTO `products_attributes_download` VALUES (26,'unreal.zip',7,3,NULL);
/*!40000 ALTER TABLE `products_attributes_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_description`
--

DROP TABLE IF EXISTS `products_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_description` (
  `products_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(255) DEFAULT NULL,
  `products_description` text,
  `products_url` varchar(255) DEFAULT NULL,
  `products_viewed` int(5) DEFAULT '0',
  `products_comparison` text,
  `store_id` varchar(64) DEFAULT NULL,
  `language_code` char(2) DEFAULT NULL,
  `customd1` varchar(2) DEFAULT NULL,
  `customd2` varchar(2) DEFAULT NULL,
  `customd3` varchar(2) DEFAULT NULL,
  `customd4` varchar(2) DEFAULT NULL,
  `customd5` varchar(2) DEFAULT NULL,
  `customd6` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`products_id`,`language_id`),
  KEY `products_name` (`products_name`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_description`
--

LOCK TABLES `products_description` WRITE;
/*!40000 ALTER TABLE `products_description` DISABLE KEYS */;
INSERT INTO `products_description` VALUES (7,1,'You\'ve Got Mail','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch, Spanish.<br><br>Subtitles: English, Deutsch, Spanish, French, Nordic, Polish.<br><br>Audio: Dolby Digital 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.youvegotmail.com',0,NULL,NULL,'en',NULL,NULL,NULL,NULL,NULL,NULL),(7,2,'e-m@il für Dich','Original: &quot;You\'ve got mail&quot;<br><br>Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Sprachen: English, Deutsch.<br><br>Untertitel: English, Deutsch, Spanish.<br><br>Audio: Dolby Surround 5.1.<br><br>Bildformat: 16:9 Wide-Screen.<br><br>Dauer: (approx) 112 minutes.<br><br>Außerdem: Interaktive Menus, Kapitelauswahl, Untertitel.<br><br>(USA 1998) von Nora Ephron (&qout;Schlaflos in Seattle&quot;). Meg Ryan und Tom Hanks knüpfen per E-Mail zarte Bande. Dass sie sich schon kennen, ahnen sie nicht ...','www.youvegotmail.com',0,NULL,NULL,'de',NULL,NULL,NULL,NULL,NULL,NULL),(7,3,'You\'ve Got Mail','Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch, Spanish.<br><br>Subtitles: English, Deutsch, Spanish, French, Nordic, Polish.<br><br>Audio: Dolby Digital 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.youvegotmail.com',0,NULL,NULL,'es',NULL,NULL,NULL,NULL,NULL,NULL),(7,4,'You\'ve Got Mail','(pt) Regional Code: 2 (Japan, Europe, Middle East, South Africa).<br><br>Languages: English, Deutsch, Spanish.<br><br>Subtitles: English, Deutsch, Spanish, French, Nordic, Polish.<br><br>Audio: Dolby Digital 5.1.<br><br>Picture Format: 16:9 Wide-Screen.<br><br>Length: (approx) 115 minutes.<br><br>Other: Interactive Menus, Chapter Selection, Subtitles (more languages).','www.youvegotmail.com',0,NULL,NULL,'pt',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `products_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_notifications`
--

DROP TABLE IF EXISTS `products_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_id`,`customers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_notifications`
--

LOCK TABLES `products_notifications` WRITE;
/*!40000 ALTER TABLE `products_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options`
--

DROP TABLE IF EXISTS `products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_name` varchar(64) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `option_type` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`products_options_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options`
--

LOCK TABLES `products_options` WRITE;
/*!40000 ALTER TABLE `products_options` DISABLE KEYS */;
INSERT INTO `products_options` VALUES (1,1,'Color',NULL,NULL,NULL,0),(1,2,'Farbe',NULL,NULL,NULL,0),(1,3,'Color',NULL,NULL,NULL,0),(1,4,'Cor',NULL,NULL,NULL,0),(2,1,'Size',NULL,NULL,NULL,0),(2,2,'Größe',NULL,NULL,NULL,0),(2,3,'Talla',NULL,NULL,NULL,0),(2,4,'Tamanho',NULL,NULL,NULL,0),(3,1,'Model',NULL,NULL,NULL,0),(3,2,'Modell',NULL,NULL,NULL,0),(3,3,'Modelo',NULL,NULL,NULL,0),(3,4,'Modelo',NULL,NULL,NULL,0),(4,1,'Memory',NULL,NULL,NULL,0),(4,2,'Speicher',NULL,NULL,NULL,0),(4,3,'Memoria',NULL,NULL,NULL,0),(4,4,'Memória',NULL,NULL,NULL,0),(5,1,'Type',NULL,NULL,NULL,0),(5,2,'Type',NULL,NULL,NULL,0),(5,3,'Type',NULL,NULL,NULL,0),(5,4,'Type',NULL,NULL,NULL,0);
/*!40000 ALTER TABLE `products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options_values`
--

DROP TABLE IF EXISTS `products_options_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_options_values_name` varchar(64) NOT NULL DEFAULT '',
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`products_options_values_id`,`language_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options_values`
--

LOCK TABLES `products_options_values` WRITE;
/*!40000 ALTER TABLE `products_options_values` DISABLE KEYS */;
INSERT INTO `products_options_values` VALUES (1,1,'4 mb',NULL,NULL,NULL),(1,2,'4 MB',NULL,NULL,NULL),(1,3,'4 mb',NULL,NULL,NULL),(1,4,'4 mb',NULL,NULL,NULL),(2,1,'8 mb',NULL,NULL,NULL),(2,2,'8 MB',NULL,NULL,NULL),(2,3,'8 mb',NULL,NULL,NULL),(2,4,'8 mb',NULL,NULL,NULL),(3,1,'16 mb',NULL,NULL,NULL),(3,2,'16 MB',NULL,NULL,NULL),(3,3,'16 mb',NULL,NULL,NULL),(3,4,'16 mb',NULL,NULL,NULL),(4,1,'32 mb',NULL,NULL,NULL),(4,2,'32 MB',NULL,NULL,NULL),(4,3,'32 mb',NULL,NULL,NULL),(4,4,'32 mb',NULL,NULL,NULL),(5,1,'Value',NULL,NULL,NULL),(5,2,'Value Ausgabe',NULL,NULL,NULL),(5,3,'Value',NULL,NULL,NULL),(5,4,'Valor',NULL,NULL,NULL),(6,1,'Premium',NULL,NULL,NULL),(6,2,'Premium Ausgabe',NULL,NULL,NULL),(6,3,'Premium',NULL,NULL,NULL),(6,4,'Premium',NULL,NULL,NULL),(7,1,'Deluxe',NULL,NULL,NULL),(7,2,'Deluxe Ausgabe',NULL,NULL,NULL),(7,3,'Deluxe',NULL,NULL,NULL),(7,4,'Deluxe',NULL,NULL,NULL),(8,1,'PS/2',NULL,NULL,NULL),(8,2,'PS/2 Anschluss',NULL,NULL,NULL),(8,3,'PS/2',NULL,NULL,NULL),(8,4,'PS/2',NULL,NULL,NULL),(9,1,'USB',NULL,NULL,NULL),(9,2,'USB Anschluss',NULL,NULL,NULL),(9,3,'USB',NULL,NULL,NULL),(9,4,'USB',NULL,NULL,NULL),(10,1,'Bronze',NULL,NULL,NULL),(10,2,'Bronze',NULL,NULL,NULL),(10,3,'Bronze',NULL,NULL,NULL),(10,4,'Bronze',NULL,NULL,NULL),(11,1,'Silver',NULL,NULL,NULL),(11,2,'Silver',NULL,NULL,NULL),(11,3,'Silver',NULL,NULL,NULL),(11,4,'Silver',NULL,NULL,NULL),(12,1,'Gold',NULL,NULL,NULL),(12,2,'Gold',NULL,NULL,NULL),(12,3,'Gold',NULL,NULL,NULL),(12,4,'Gold',NULL,NULL,NULL);
/*!40000 ALTER TABLE `products_options_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_options_values_to_products_options`
--

DROP TABLE IF EXISTS `products_options_values_to_products_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_options_values_to_products_options` (
  `products_options_values_to_products_options_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_options_values_to_products_options_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_options_values_to_products_options`
--

LOCK TABLES `products_options_values_to_products_options` WRITE;
/*!40000 ALTER TABLE `products_options_values_to_products_options` DISABLE KEYS */;
INSERT INTO `products_options_values_to_products_options` VALUES (1,4,1,NULL),(2,4,2,NULL),(3,4,3,NULL),(4,4,4,NULL),(5,3,5,NULL),(6,3,6,NULL),(7,3,7,NULL),(8,3,8,NULL),(9,3,9,NULL),(10,5,10,NULL),(11,5,11,NULL),(12,5,12,NULL);
/*!40000 ALTER TABLE `products_options_values_to_products_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_quantity`
--

DROP TABLE IF EXISTS `products_quantity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_quantity` (
  `products_id` int(11) NOT NULL,
  `products_options` varchar(128) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_sku` varchar(255) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  PRIMARY KEY (`products_id`,`products_options`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_quantity`
--

LOCK TABLES `products_quantity` WRITE;
/*!40000 ALTER TABLE `products_quantity` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_quantity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_to_categories`
--

DROP TABLE IF EXISTS `products_to_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_to_categories` (
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_id`,`categories_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_to_categories`
--

LOCK TABLES `products_to_categories` WRITE;
/*!40000 ALTER TABLE `products_to_categories` DISABLE KEYS */;
INSERT INTO `products_to_categories` VALUES (7,12,NULL);
/*!40000 ALTER TABLE `products_to_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_to_products`
--

DROP TABLE IF EXISTS `products_to_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products_to_products` (
  `products_to_products_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_from` int(11) NOT NULL,
  `id_to` int(11) NOT NULL,
  `relation_type` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `products_options` varchar(128) DEFAULT NULL,
  `products_quantity` int(11) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`products_to_products_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_to_products`
--

LOCK TABLES `products_to_products` WRITE;
/*!40000 ALTER TABLE `products_to_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_to_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion` (
  `promotion_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_total_code` varchar(32) NOT NULL,
  `description` varchar(128) DEFAULT NULL,
  `name` varchar(64) DEFAULT NULL,
  `active` int(1) NOT NULL DEFAULT '0',
  `cumulative` int(1) NOT NULL DEFAULT '0',
  `requires_coupon` int(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `manufacturer_rule` int(11) DEFAULT NULL,
  `product_rule` int(11) DEFAULT NULL,
  `customer_rule` int(11) DEFAULT NULL,
  `category_rule` int(11) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  `custom6` varchar(128) DEFAULT NULL,
  `custom7` varchar(128) DEFAULT NULL,
  `custom8` varchar(128) DEFAULT NULL,
  `custom9` varchar(128) DEFAULT NULL,
  `custom10` varchar(128) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `customer_group_rule` int(11) DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `max_use` int(11) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`promotion_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_category`
--

DROP TABLE IF EXISTS `promotion_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_category` (
  `promotion_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`categories_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_category`
--

LOCK TABLES `promotion_to_category` WRITE;
/*!40000 ALTER TABLE `promotion_to_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_coupon`
--

DROP TABLE IF EXISTS `promotion_to_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_coupon` (
  `promotion_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`coupon_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_coupon`
--

LOCK TABLES `promotion_to_coupon` WRITE;
/*!40000 ALTER TABLE `promotion_to_coupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_cust_group`
--

DROP TABLE IF EXISTS `promotion_to_cust_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_cust_group` (
  `promotion_id` int(11) NOT NULL,
  `customers_group_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`customers_group_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_cust_group`
--

LOCK TABLES `promotion_to_cust_group` WRITE;
/*!40000 ALTER TABLE `promotion_to_cust_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_cust_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_customer`
--

DROP TABLE IF EXISTS `promotion_to_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_customer` (
  `promotion_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `max_use` int(11) NOT NULL DEFAULT '-1',
  `times_used` int(11) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`customers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_customer`
--

LOCK TABLES `promotion_to_customer` WRITE;
/*!40000 ALTER TABLE `promotion_to_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_customer_use`
--

DROP TABLE IF EXISTS `promotion_to_customer_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_customer_use` (
  `store_id` varchar(64) DEFAULT NULL,
  `promotion_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `times_used` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`promotion_id`,`customers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_customer_use`
--

LOCK TABLES `promotion_to_customer_use` WRITE;
/*!40000 ALTER TABLE `promotion_to_customer_use` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_customer_use` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_manufacturer`
--

DROP TABLE IF EXISTS `promotion_to_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_manufacturer` (
  `promotion_id` int(11) NOT NULL,
  `manufacturers_id` int(11) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`,`manufacturers_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_manufacturer`
--

LOCK TABLES `promotion_to_manufacturer` WRITE;
/*!40000 ALTER TABLE `promotion_to_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_to_product`
--

DROP TABLE IF EXISTS `promotion_to_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_to_product` (
  `promotion_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL DEFAULT '0',
  `products_options_values_id` int(11) NOT NULL DEFAULT '0',
  `store_id` varchar(64) DEFAULT NULL,
  `relation_type` int(11) DEFAULT '0',
  PRIMARY KEY (`promotion_id`,`products_id`,`products_options_id`,`products_options_values_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_to_product`
--

LOCK TABLES `promotion_to_product` WRITE;
/*!40000 ALTER TABLE `promotion_to_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `promotion_to_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns_to_ord_prods`
--

DROP TABLE IF EXISTS `returns_to_ord_prods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returns_to_ord_prods` (
  `orders_returns_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`orders_returns_id`,`orders_products_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns_to_ord_prods`
--

LOCK TABLES `returns_to_ord_prods` WRITE;
/*!40000 ALTER TABLE `returns_to_ord_prods` DISABLE KEYS */;
/*!40000 ALTER TABLE `returns_to_ord_prods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(64) NOT NULL,
  `reviews_rating` int(1) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `reviews_read` int(5) NOT NULL DEFAULT '0',
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`reviews_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews_description`
--

DROP TABLE IF EXISTS `reviews_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews_description` (
  `reviews_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `reviews_text` text NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`reviews_id`,`languages_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews_description`
--

LOCK TABLES `reviews_description` WRITE;
/*!40000 ALTER TABLE `reviews_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `sesskey` varchar(32) NOT NULL,
  `expiry` int(11) unsigned NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `value` varchar(256) DEFAULT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `custom4` varchar(128) DEFAULT NULL,
  `custom5` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`sesskey`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('90e7dd04b396a9ad243ae5d6b7480b5f',1379724092,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specials`
--

DROP TABLE IF EXISTS `specials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,4) NOT NULL,
  `specials_date_added` datetime DEFAULT NULL,
  `specials_last_modified` datetime DEFAULT NULL,
  `expires_date` datetime DEFAULT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `store_id` varchar(64) DEFAULT NULL,
  `starts_date` datetime DEFAULT NULL,
  PRIMARY KEY (`specials_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specials`
--

LOCK TABLES `specials` WRITE;
/*!40000 ALTER TABLE `specials` DISABLE KEYS */;
/*!40000 ALTER TABLE `specials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_class`
--

DROP TABLE IF EXISTS `tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_title` varchar(32) NOT NULL,
  `tax_class_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `tax_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tax_class_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_class`
--

LOCK TABLES `tax_class` WRITE;
/*!40000 ALTER TABLE `tax_class` DISABLE KEYS */;
INSERT INTO `tax_class` VALUES (1,'Taxable Goods','The following types of products are included non-food, services, etc','2013-09-20 19:53:46','2013-09-20 19:53:46',NULL,NULL);
/*!40000 ALTER TABLE `tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tax_rates`
--

DROP TABLE IF EXISTS `tax_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(5) DEFAULT '1',
  `tax_rate` decimal(7,4) NOT NULL,
  `tax_description` varchar(255) NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`tax_rates_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tax_rates`
--

LOCK TABLES `tax_rates` WRITE;
/*!40000 ALTER TABLE `tax_rates` DISABLE KEYS */;
INSERT INTO `tax_rates` VALUES (1,1,1,1,7.0000,'FL TAX 7.0%','2013-09-20 19:53:46','2013-09-20 19:53:46',NULL);
/*!40000 ALTER TABLE `tax_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utility`
--

DROP TABLE IF EXISTS `utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utility` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utility`
--

LOCK TABLES `utility` WRITE;
/*!40000 ALTER TABLE `utility` DISABLE KEYS */;
INSERT INTO `utility` VALUES (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12),(13),(14),(15),(16),(17),(18),(19),(20),(21),(22),(23),(24),(25),(26),(27),(28),(29),(30),(31);
/*!40000 ALTER TABLE `utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whos_online`
--

DROP TABLE IF EXISTS `whos_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whos_online` (
  `customer_id` int(11) DEFAULT NULL,
  `full_name` varchar(64) NOT NULL,
  `session_id` varchar(128) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `time_entry` varchar(14) NOT NULL,
  `time_last_click` varchar(14) NOT NULL,
  `last_page_url` varchar(64) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whos_online`
--

LOCK TABLES `whos_online` WRITE;
/*!40000 ALTER TABLE `whos_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `whos_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) NOT NULL,
  `zone_name` varchar(32) NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  `custom1` varchar(128) DEFAULT NULL,
  `custom2` varchar(128) DEFAULT NULL,
  `custom3` varchar(128) DEFAULT NULL,
  `zone_invisible` int(11) NOT NULL DEFAULT '0',
  `zone_search` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`zone_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_zone_search` (`zone_search`)
) ENGINE=InnoDB AUTO_INCREMENT=459 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
INSERT INTO `zones` VALUES (1,223,'AL','Alabama',NULL,NULL,NULL,NULL,0,NULL),(2,223,'AK','Alaska',NULL,NULL,NULL,NULL,0,NULL),(3,223,'AS','American Samoa',NULL,NULL,NULL,NULL,0,NULL),(4,223,'AZ','Arizona',NULL,NULL,NULL,NULL,0,NULL),(5,223,'AR','Arkansas',NULL,NULL,NULL,NULL,0,NULL),(6,223,'AF','Armed Forces Africa',NULL,NULL,NULL,NULL,0,NULL),(7,223,'AA','Armed Forces Americas',NULL,NULL,NULL,NULL,0,NULL),(8,223,'AC','Armed Forces Canada',NULL,NULL,NULL,NULL,0,NULL),(9,223,'AE','Armed Forces Europe',NULL,NULL,NULL,NULL,0,NULL),(10,223,'AM','Armed Forces Middle East',NULL,NULL,NULL,NULL,0,NULL),(11,223,'AP','Armed Forces Pacific',NULL,NULL,NULL,NULL,0,NULL),(12,223,'CA','California',NULL,NULL,NULL,NULL,0,NULL),(13,223,'CO','Colorado',NULL,NULL,NULL,NULL,0,NULL),(14,223,'CT','Connecticut',NULL,NULL,NULL,NULL,0,NULL),(15,223,'DE','Delaware',NULL,NULL,NULL,NULL,0,NULL),(16,223,'DC','District of Columbia',NULL,NULL,NULL,NULL,0,NULL),(17,223,'FM','Federated States Of Micronesia',NULL,NULL,NULL,NULL,0,NULL),(18,223,'FL','Florida',NULL,NULL,NULL,NULL,0,NULL),(19,223,'GA','Georgia',NULL,NULL,NULL,NULL,0,NULL),(20,223,'GU','Guam',NULL,NULL,NULL,NULL,0,NULL),(21,223,'HI','Hawaii',NULL,NULL,NULL,NULL,0,NULL),(22,223,'ID','Idaho',NULL,NULL,NULL,NULL,0,NULL),(23,223,'IL','Illinois',NULL,NULL,NULL,NULL,0,NULL),(24,223,'IN','Indiana',NULL,NULL,NULL,NULL,0,NULL),(25,223,'IA','Iowa',NULL,NULL,NULL,NULL,0,NULL),(26,223,'KS','Kansas',NULL,NULL,NULL,NULL,0,NULL),(27,223,'KY','Kentucky',NULL,NULL,NULL,NULL,0,NULL),(28,223,'LA','Louisiana',NULL,NULL,NULL,NULL,0,NULL),(29,223,'ME','Maine',NULL,NULL,NULL,NULL,0,NULL),(30,223,'MH','Marshall Islands',NULL,NULL,NULL,NULL,0,NULL),(31,223,'MD','Maryland',NULL,NULL,NULL,NULL,0,NULL),(32,223,'MA','Massachusetts',NULL,NULL,NULL,NULL,0,NULL),(33,223,'MI','Michigan',NULL,NULL,NULL,NULL,0,NULL),(34,223,'MN','Minnesota',NULL,NULL,NULL,NULL,0,NULL),(35,223,'MS','Mississippi',NULL,NULL,NULL,NULL,0,NULL),(36,223,'MO','Missouri',NULL,NULL,NULL,NULL,0,NULL),(37,223,'MT','Montana',NULL,NULL,NULL,NULL,0,NULL),(38,223,'NE','Nebraska',NULL,NULL,NULL,NULL,0,NULL),(39,223,'NV','Nevada',NULL,NULL,NULL,NULL,0,NULL),(40,223,'NH','New Hampshire',NULL,NULL,NULL,NULL,0,NULL),(41,223,'NJ','New Jersey',NULL,NULL,NULL,NULL,0,NULL),(42,223,'NM','New Mexico',NULL,NULL,NULL,NULL,0,NULL),(43,223,'NY','New York',NULL,NULL,NULL,NULL,0,NULL),(44,223,'NC','North Carolina',NULL,NULL,NULL,NULL,0,NULL),(45,223,'ND','North Dakota',NULL,NULL,NULL,NULL,0,NULL),(46,223,'MP','Northern Mariana Islands',NULL,NULL,NULL,NULL,0,NULL),(47,223,'OH','Ohio',NULL,NULL,NULL,NULL,0,NULL),(48,223,'OK','Oklahoma',NULL,NULL,NULL,NULL,0,NULL),(49,223,'OR','Oregon',NULL,NULL,NULL,NULL,0,NULL),(50,223,'PW','Palau',NULL,NULL,NULL,NULL,0,NULL),(51,223,'PA','Pennsylvania',NULL,NULL,NULL,NULL,0,NULL),(52,223,'PR','Puerto Rico',NULL,NULL,NULL,NULL,0,NULL),(53,223,'RI','Rhode Island',NULL,NULL,NULL,NULL,0,NULL),(54,223,'SC','South Carolina',NULL,NULL,NULL,NULL,0,NULL),(55,223,'SD','South Dakota',NULL,NULL,NULL,NULL,0,NULL),(56,223,'TN','Tennessee',NULL,NULL,NULL,NULL,0,NULL),(57,223,'TX','Texas',NULL,NULL,NULL,NULL,0,NULL),(58,223,'UT','Utah',NULL,NULL,NULL,NULL,0,NULL),(59,223,'VT','Vermont',NULL,NULL,NULL,NULL,0,NULL),(60,223,'VI','Virgin Islands',NULL,NULL,NULL,NULL,0,NULL),(61,223,'VA','Virginia',NULL,NULL,NULL,NULL,0,NULL),(62,223,'WA','Washington',NULL,NULL,NULL,NULL,0,NULL),(63,223,'WV','West Virginia',NULL,NULL,NULL,NULL,0,NULL),(64,223,'WI','Wisconsin',NULL,NULL,NULL,NULL,0,NULL),(65,223,'WY','Wyoming',NULL,NULL,NULL,NULL,0,NULL),(66,13,'ACT','Australian Capitol Territory',NULL,NULL,NULL,NULL,0,NULL),(67,13,'NSW','New South Wales',NULL,NULL,NULL,NULL,0,NULL),(68,13,'NT','Northern Territory',NULL,NULL,NULL,NULL,0,NULL),(69,13,'QLD','Queensland',NULL,NULL,NULL,NULL,0,NULL),(70,13,'SA','South Australia',NULL,NULL,NULL,NULL,0,NULL),(71,13,'TAS','Tasmania',NULL,NULL,NULL,NULL,0,NULL),(72,13,'VIC','Victoria',NULL,NULL,NULL,NULL,0,NULL),(73,13,'WA','Western Australia',NULL,NULL,NULL,NULL,0,NULL),(74,14,'WI','Wien',NULL,NULL,NULL,NULL,0,NULL),(75,14,'NO','Niederösterreich',NULL,NULL,NULL,NULL,0,NULL),(76,14,'OO','Oberösterreich',NULL,NULL,NULL,NULL,0,NULL),(77,14,'SB','Salzburg',NULL,NULL,NULL,NULL,0,NULL),(78,14,'KN','Kärnten',NULL,NULL,NULL,NULL,0,NULL),(79,14,'ST','Steiermark',NULL,NULL,NULL,NULL,0,NULL),(80,14,'TI','Tirol',NULL,NULL,NULL,NULL,0,NULL),(81,14,'BL','Burgenland',NULL,NULL,NULL,NULL,0,NULL),(82,14,'VB','Voralberg',NULL,NULL,NULL,NULL,0,NULL),(83,44,'AN','Anhui',NULL,NULL,NULL,NULL,0,NULL),(84,44,'BE','Beijing',NULL,NULL,NULL,NULL,0,NULL),(85,44,'CH','Chongqing',NULL,NULL,NULL,NULL,0,NULL),(86,44,'FU','Fujian',NULL,NULL,NULL,NULL,0,NULL),(87,44,'GA','Gansu',NULL,NULL,NULL,NULL,0,NULL),(88,44,'GU','Guangdong',NULL,NULL,NULL,NULL,0,NULL),(89,44,'GX','Guangxi',NULL,NULL,NULL,NULL,0,NULL),(90,44,'GZ','Guizhou',NULL,NULL,NULL,NULL,0,NULL),(91,44,'HA','Hainan',NULL,NULL,NULL,NULL,0,NULL),(92,44,'HB','Hebei',NULL,NULL,NULL,NULL,0,NULL),(93,44,'HL','Heilongjiang',NULL,NULL,NULL,NULL,0,NULL),(94,44,'HE','Henan',NULL,NULL,NULL,NULL,0,NULL),(95,44,'HK','Hong Kong',NULL,NULL,NULL,NULL,0,NULL),(96,44,'HU','Hubei',NULL,NULL,NULL,NULL,0,NULL),(97,44,'HN','Hunan',NULL,NULL,NULL,NULL,0,NULL),(98,44,'IM','Inner Mongolia',NULL,NULL,NULL,NULL,0,NULL),(99,44,'JI','Jiangsu',NULL,NULL,NULL,NULL,0,NULL),(100,44,'JX','Jiangxi',NULL,NULL,NULL,NULL,0,NULL),(101,44,'JL','Jilin',NULL,NULL,NULL,NULL,0,NULL),(102,44,'LI','Liaoning',NULL,NULL,NULL,NULL,0,NULL),(103,44,'MA','Macau',NULL,NULL,NULL,NULL,0,NULL),(104,44,'NI','Ningxia',NULL,NULL,NULL,NULL,0,NULL),(105,44,'SH','Shaanxi',NULL,NULL,NULL,NULL,0,NULL),(106,44,'SA','Shandong',NULL,NULL,NULL,NULL,0,NULL),(107,44,'SG','Shanghai',NULL,NULL,NULL,NULL,0,NULL),(108,44,'SX','Shanxi',NULL,NULL,NULL,NULL,0,NULL),(109,44,'SI','Sichuan',NULL,NULL,NULL,NULL,0,NULL),(110,44,'TI','Tianjin',NULL,NULL,NULL,NULL,0,NULL),(111,44,'XI','Xinjiang',NULL,NULL,NULL,NULL,0,NULL),(112,44,'YU','Yunnan',NULL,NULL,NULL,NULL,0,NULL),(113,44,'ZH','Zhejiang',NULL,NULL,NULL,NULL,0,NULL),(114,99,'AN','Andaman and Nicobar Islands',NULL,NULL,NULL,NULL,0,NULL),(115,99,'AP','Andhra Pradesh',NULL,NULL,NULL,NULL,0,NULL),(116,99,'AR','Arunachal Pradesh',NULL,NULL,NULL,NULL,0,NULL),(117,99,'AS','Assam',NULL,NULL,NULL,NULL,0,NULL),(118,99,'BI','Bihar',NULL,NULL,NULL,NULL,0,NULL),(119,99,'CH','Chandigarh',NULL,NULL,NULL,NULL,0,NULL),(120,99,'DA','Dadra and Nagar Haveli',NULL,NULL,NULL,NULL,0,NULL),(121,99,'DM','Daman and Diu',NULL,NULL,NULL,NULL,0,NULL),(122,99,'DE','Delhi',NULL,NULL,NULL,NULL,0,NULL),(123,99,'GO','Goa',NULL,NULL,NULL,NULL,0,NULL),(124,99,'GU','Gujarat',NULL,NULL,NULL,NULL,0,NULL),(125,99,'HA','Haryana',NULL,NULL,NULL,NULL,0,NULL),(126,99,'HP','Himachal Pradesh',NULL,NULL,NULL,NULL,0,NULL),(127,99,'JA','Jammu and Kashmir',NULL,NULL,NULL,NULL,0,NULL),(128,99,'KA','Karnataka',NULL,NULL,NULL,NULL,0,NULL),(129,99,'KE','Kerala',NULL,NULL,NULL,NULL,0,NULL),(130,99,'LI','Lakshadweep Islands',NULL,NULL,NULL,NULL,0,NULL),(131,99,'MP','Madhya Pradesh',NULL,NULL,NULL,NULL,0,NULL),(132,99,'MA','Maharashtra',NULL,NULL,NULL,NULL,0,NULL),(133,99,'MN','Manipur',NULL,NULL,NULL,NULL,0,NULL),(134,99,'ME','Meghalaya',NULL,NULL,NULL,NULL,0,NULL),(135,99,'MI','Mizoram',NULL,NULL,NULL,NULL,0,NULL),(136,99,'NA','Nagaland',NULL,NULL,NULL,NULL,0,NULL),(137,99,'OR','Orissa',NULL,NULL,NULL,NULL,0,NULL),(138,99,'PO','Pondicherry',NULL,NULL,NULL,NULL,0,NULL),(139,99,'PU','Punjab',NULL,NULL,NULL,NULL,0,NULL),(140,99,'RA','Rajasthan',NULL,NULL,NULL,NULL,0,NULL),(141,99,'SI','Sikkim',NULL,NULL,NULL,NULL,0,NULL),(142,99,'TN','Tamil Nadu',NULL,NULL,NULL,NULL,0,NULL),(143,99,'TR','Tripura',NULL,NULL,NULL,NULL,0,NULL),(144,99,'UP','Uttar Pradesh',NULL,NULL,NULL,NULL,0,NULL),(145,99,'WB','West Bengal',NULL,NULL,NULL,NULL,0,NULL),(146,150,'DR','Drenthe',NULL,NULL,NULL,NULL,0,NULL),(147,150,'FL','Flevoland',NULL,NULL,NULL,NULL,0,NULL),(148,150,'FR','Friesland',NULL,NULL,NULL,NULL,0,NULL),(149,150,'GE','Gelderland',NULL,NULL,NULL,NULL,0,NULL),(150,150,'GR','Groningen',NULL,NULL,NULL,NULL,0,NULL),(151,150,'LI','Limburg',NULL,NULL,NULL,NULL,0,NULL),(152,150,'NB','Noord Brabant',NULL,NULL,NULL,NULL,0,NULL),(153,150,'NH','Noord Holland',NULL,NULL,NULL,NULL,0,NULL),(154,150,'OV','Overijssel',NULL,NULL,NULL,NULL,0,NULL),(155,150,'UT','Utrecht',NULL,NULL,NULL,NULL,0,NULL),(156,150,'ZE','Zeeland',NULL,NULL,NULL,NULL,0,NULL),(157,150,'ZH','Zuid Holland',NULL,NULL,NULL,NULL,0,NULL),(158,38,'AB','Alberta',NULL,NULL,NULL,NULL,0,NULL),(159,38,'BC','British Columbia',NULL,NULL,NULL,NULL,0,NULL),(160,38,'MB','Manitoba',NULL,NULL,NULL,NULL,0,NULL),(161,38,'NL','Newfoundland and Labrador',NULL,NULL,NULL,NULL,0,NULL),(162,38,'NB','New Brunswick',NULL,NULL,NULL,NULL,0,NULL),(163,38,'NS','Nova Scotia',NULL,NULL,NULL,NULL,0,NULL),(164,38,'NT','Northwest Territories',NULL,NULL,NULL,NULL,0,NULL),(165,38,'NU','Nunavut',NULL,NULL,NULL,NULL,0,NULL),(166,38,'ON','Ontario',NULL,NULL,NULL,NULL,0,NULL),(167,38,'PE','Prince Edward Island',NULL,NULL,NULL,NULL,0,NULL),(168,38,'QC','Quebec',NULL,NULL,NULL,NULL,0,NULL),(169,38,'SK','Saskatchewan',NULL,NULL,NULL,NULL,0,NULL),(170,38,'YT','Yukon Territory',NULL,NULL,NULL,NULL,0,NULL),(171,81,'NDS','Niedersachsen',NULL,NULL,NULL,NULL,0,NULL),(172,81,'BAW','Baden-Württemberg',NULL,NULL,NULL,NULL,0,NULL),(173,81,'BAY','Bayern',NULL,NULL,NULL,NULL,0,NULL),(174,81,'BER','Berlin',NULL,NULL,NULL,NULL,0,NULL),(175,81,'BRG','Brandenburg',NULL,NULL,NULL,NULL,0,NULL),(176,81,'BRE','Bremen',NULL,NULL,NULL,NULL,0,NULL),(177,81,'HAM','Hamburg',NULL,NULL,NULL,NULL,0,NULL),(178,81,'HES','Hessen',NULL,NULL,NULL,NULL,0,NULL),(179,81,'MEC','Mecklenburg-Vorpommern',NULL,NULL,NULL,NULL,0,NULL),(180,81,'NRW','Nordrhein-Westfalen',NULL,NULL,NULL,NULL,0,NULL),(181,81,'RHE','Rheinland-Pfalz',NULL,NULL,NULL,NULL,0,NULL),(182,81,'SAR','Saarland',NULL,NULL,NULL,NULL,0,NULL),(183,81,'SAS','Sachsen',NULL,NULL,NULL,NULL,0,NULL),(184,81,'SAC','Sachsen-Anhalt',NULL,NULL,NULL,NULL,0,NULL),(185,81,'SCN','Schleswig-Holstein',NULL,NULL,NULL,NULL,0,NULL),(186,81,'THE','Thüringen',NULL,NULL,NULL,NULL,0,NULL),(187,84,'AT','Attica',NULL,NULL,NULL,NULL,0,NULL),(188,84,'CN','Central Greece',NULL,NULL,NULL,NULL,0,NULL),(189,84,'CM','Central Macedonia',NULL,NULL,NULL,NULL,0,NULL),(190,84,'CR','Crete',NULL,NULL,NULL,NULL,0,NULL),(191,84,'EM','East Macedonia and Thrace',NULL,NULL,NULL,NULL,0,NULL),(192,84,'EP','Epirus',NULL,NULL,NULL,NULL,0,NULL),(193,84,'II','Ionian Islands',NULL,NULL,NULL,NULL,0,NULL),(194,84,'NA','North Aegean',NULL,NULL,NULL,NULL,0,NULL),(195,84,'PP','Peloponnesos',NULL,NULL,NULL,NULL,0,NULL),(196,84,'SA','South Aegean',NULL,NULL,NULL,NULL,0,NULL),(197,84,'TH','Thessaly',NULL,NULL,NULL,NULL,0,NULL),(198,84,'WG','West Greece',NULL,NULL,NULL,NULL,0,NULL),(199,84,'WM','West Macedonia',NULL,NULL,NULL,NULL,0,NULL),(200,204,'AG','Aargau',NULL,NULL,NULL,NULL,0,NULL),(201,204,'AI','Appenzell Innerrhoden',NULL,NULL,NULL,NULL,0,NULL),(202,204,'AR','Appenzell Ausserrhoden',NULL,NULL,NULL,NULL,0,NULL),(203,204,'BE','Bern',NULL,NULL,NULL,NULL,0,NULL),(204,204,'BL','Basel-Landschaft',NULL,NULL,NULL,NULL,0,NULL),(205,204,'BS','Basel-Stadt',NULL,NULL,NULL,NULL,0,NULL),(206,204,'FR','Freiburg',NULL,NULL,NULL,NULL,0,NULL),(207,204,'GE','Genf',NULL,NULL,NULL,NULL,0,NULL),(208,204,'GL','Glarus',NULL,NULL,NULL,NULL,0,NULL),(209,204,'JU','Graubünden',NULL,NULL,NULL,NULL,0,NULL),(210,204,'JU','Jura',NULL,NULL,NULL,NULL,0,NULL),(211,204,'LU','Luzern',NULL,NULL,NULL,NULL,0,NULL),(212,204,'NE','Neuenburg',NULL,NULL,NULL,NULL,0,NULL),(213,204,'NW','Nidwalden',NULL,NULL,NULL,NULL,0,NULL),(214,204,'OW','Obwalden',NULL,NULL,NULL,NULL,0,NULL),(215,204,'SG','St. Gallen',NULL,NULL,NULL,NULL,0,NULL),(216,204,'SH','Schaffhausen',NULL,NULL,NULL,NULL,0,NULL),(217,204,'SO','Solothurn',NULL,NULL,NULL,NULL,0,NULL),(218,204,'SZ','Schwyz',NULL,NULL,NULL,NULL,0,NULL),(219,204,'TG','Thurgau',NULL,NULL,NULL,NULL,0,NULL),(220,204,'TI','Tessin',NULL,NULL,NULL,NULL,0,NULL),(221,204,'UR','Uri',NULL,NULL,NULL,NULL,0,NULL),(222,204,'VD','Waadt',NULL,NULL,NULL,NULL,0,NULL),(223,204,'VS','Wallis',NULL,NULL,NULL,NULL,0,NULL),(224,204,'ZG','Zug',NULL,NULL,NULL,NULL,0,NULL),(225,204,'ZH','Zürich',NULL,NULL,NULL,NULL,0,NULL),(226,195,'A Coruña','A Coruña',NULL,NULL,NULL,NULL,0,NULL),(227,195,'Alava','Alava',NULL,NULL,NULL,NULL,0,NULL),(228,195,'Albacete','Albacete',NULL,NULL,NULL,NULL,0,NULL),(229,195,'Alicante','Alicante',NULL,NULL,NULL,NULL,0,NULL),(230,195,'Almeria','Almeria',NULL,NULL,NULL,NULL,0,NULL),(231,195,'Asturias','Asturias',NULL,NULL,NULL,NULL,0,NULL),(232,195,'Avila','Avila',NULL,NULL,NULL,NULL,0,NULL),(233,195,'Badajoz','Badajoz',NULL,NULL,NULL,NULL,0,NULL),(234,195,'Baleares','Baleares',NULL,NULL,NULL,NULL,0,NULL),(235,195,'Barcelona','Barcelona',NULL,NULL,NULL,NULL,0,NULL),(236,195,'Burgos','Burgos',NULL,NULL,NULL,NULL,0,NULL),(237,195,'Caceres','Caceres',NULL,NULL,NULL,NULL,0,NULL),(238,195,'Cadiz','Cadiz',NULL,NULL,NULL,NULL,0,NULL),(239,195,'Cantabria','Cantabria',NULL,NULL,NULL,NULL,0,NULL),(240,195,'Castellon','Castellon',NULL,NULL,NULL,NULL,0,NULL),(241,195,'Ceuta','Ceuta',NULL,NULL,NULL,NULL,0,NULL),(242,195,'Ciudad Real','Ciudad Real',NULL,NULL,NULL,NULL,0,NULL),(243,195,'Cordoba','Cordoba',NULL,NULL,NULL,NULL,0,NULL),(244,195,'Cuenca','Cuenca',NULL,NULL,NULL,NULL,0,NULL),(245,195,'Girona','Girona',NULL,NULL,NULL,NULL,0,NULL),(246,195,'Granada','Granada',NULL,NULL,NULL,NULL,0,NULL),(247,195,'Guadalajara','Guadalajara',NULL,NULL,NULL,NULL,0,NULL),(248,195,'Guipuzcoa','Guipuzcoa',NULL,NULL,NULL,NULL,0,NULL),(249,195,'Huelva','Huelva',NULL,NULL,NULL,NULL,0,NULL),(250,195,'Huesca','Huesca',NULL,NULL,NULL,NULL,0,NULL),(251,195,'Jaen','Jaen',NULL,NULL,NULL,NULL,0,NULL),(252,195,'La Rioja','La Rioja',NULL,NULL,NULL,NULL,0,NULL),(253,195,'Las Palmas','Las Palmas',NULL,NULL,NULL,NULL,0,NULL),(254,195,'Leon','Leon',NULL,NULL,NULL,NULL,0,NULL),(255,195,'Lleida','Lleida',NULL,NULL,NULL,NULL,0,NULL),(256,195,'Lugo','Lugo',NULL,NULL,NULL,NULL,0,NULL),(257,195,'Madrid','Madrid',NULL,NULL,NULL,NULL,0,NULL),(258,195,'Malaga','Malaga',NULL,NULL,NULL,NULL,0,NULL),(259,195,'Melilla','Melilla',NULL,NULL,NULL,NULL,0,NULL),(260,195,'Murcia','Murcia',NULL,NULL,NULL,NULL,0,NULL),(261,195,'Navarra','Navarra',NULL,NULL,NULL,NULL,0,NULL),(262,195,'Ourense','Ourense',NULL,NULL,NULL,NULL,0,NULL),(263,195,'Palencia','Palencia',NULL,NULL,NULL,NULL,0,NULL),(264,195,'Pontevedra','Pontevedra',NULL,NULL,NULL,NULL,0,NULL),(265,195,'Salamanca','Salamanca',NULL,NULL,NULL,NULL,0,NULL),(266,195,'Santa Cruz de Tenerife','Santa Cruz de Tenerife',NULL,NULL,NULL,NULL,0,NULL),(267,195,'Segovia','Segovia',NULL,NULL,NULL,NULL,0,NULL),(268,195,'Sevilla','Sevilla',NULL,NULL,NULL,NULL,0,NULL),(269,195,'Soria','Soria',NULL,NULL,NULL,NULL,0,NULL),(270,195,'Tarragona','Tarragona',NULL,NULL,NULL,NULL,0,NULL),(271,195,'Teruel','Teruel',NULL,NULL,NULL,NULL,0,NULL),(272,195,'Toledo','Toledo',NULL,NULL,NULL,NULL,0,NULL),(273,195,'Valencia','Valencia',NULL,NULL,NULL,NULL,0,NULL),(274,195,'Valladolid','Valladolid',NULL,NULL,NULL,NULL,0,NULL),(275,195,'Vizcaya','Vizcaya',NULL,NULL,NULL,NULL,0,NULL),(276,195,'Zamora','Zamora',NULL,NULL,NULL,NULL,0,NULL),(277,195,'Zaragoza','Zaragoza',NULL,NULL,NULL,NULL,0,NULL),(278,215,'ADA','Adana',NULL,NULL,NULL,NULL,0,NULL),(279,215,'ADI','Adiyaman',NULL,NULL,NULL,NULL,0,NULL),(280,215,'AFY','Afyonkarahisar',NULL,NULL,NULL,NULL,0,NULL),(281,215,'AGR','Agri',NULL,NULL,NULL,NULL,0,NULL),(282,215,'AKS','Aksaray',NULL,NULL,NULL,NULL,0,NULL),(283,215,'AMA','Amasya',NULL,NULL,NULL,NULL,0,NULL),(284,215,'ANK','Ankara',NULL,NULL,NULL,NULL,0,NULL),(285,215,'ANT','Antalya',NULL,NULL,NULL,NULL,0,NULL),(286,215,'ARD','Ardahan',NULL,NULL,NULL,NULL,0,NULL),(287,215,'ART','Artvin',NULL,NULL,NULL,NULL,0,NULL),(288,215,'AYI','Aydin',NULL,NULL,NULL,NULL,0,NULL),(289,215,'BAL','Balikesir',NULL,NULL,NULL,NULL,0,NULL),(290,215,'BAR','Bartin',NULL,NULL,NULL,NULL,0,NULL),(291,215,'BAT','Batman',NULL,NULL,NULL,NULL,0,NULL),(292,215,'BAY','Bayburt',NULL,NULL,NULL,NULL,0,NULL),(293,215,'BIL','Bilecik',NULL,NULL,NULL,NULL,0,NULL),(294,215,'BIN','Bingol',NULL,NULL,NULL,NULL,0,NULL),(295,215,'BIT','Bitlis',NULL,NULL,NULL,NULL,0,NULL),(296,215,'BOL','Bolu',NULL,NULL,NULL,NULL,0,NULL),(297,215,'BRD','Burdur',NULL,NULL,NULL,NULL,0,NULL),(298,215,'BRS','Bursa',NULL,NULL,NULL,NULL,0,NULL),(299,215,'CKL','Canakkale',NULL,NULL,NULL,NULL,0,NULL),(300,215,'CKR','Cankiri',NULL,NULL,NULL,NULL,0,NULL),(301,215,'COR','Corum',NULL,NULL,NULL,NULL,0,NULL),(302,215,'DEN','Denizli',NULL,NULL,NULL,NULL,0,NULL),(303,215,'DIY','Diyarbakir',NULL,NULL,NULL,NULL,0,NULL),(304,215,'DUZ','Duzce',NULL,NULL,NULL,NULL,0,NULL),(305,215,'EDI','Edirne',NULL,NULL,NULL,NULL,0,NULL),(306,215,'ELA','Elazig',NULL,NULL,NULL,NULL,0,NULL),(307,215,'EZC','Erzincan',NULL,NULL,NULL,NULL,0,NULL),(308,215,'EZR','Erzurum',NULL,NULL,NULL,NULL,0,NULL),(309,215,'ESK','Eskisehir',NULL,NULL,NULL,NULL,0,NULL),(310,215,'GAZ','Gaziantep',NULL,NULL,NULL,NULL,0,NULL),(311,215,'GIR','Giresun',NULL,NULL,NULL,NULL,0,NULL),(312,215,'GMS','Gumushane',NULL,NULL,NULL,NULL,0,NULL),(313,215,'HKR','Hakkari',NULL,NULL,NULL,NULL,0,NULL),(314,215,'HTY','Hatay',NULL,NULL,NULL,NULL,0,NULL),(315,215,'IGD','Igdir',NULL,NULL,NULL,NULL,0,NULL),(316,215,'ISP','Isparta',NULL,NULL,NULL,NULL,0,NULL),(317,215,'IST','Istanbul',NULL,NULL,NULL,NULL,0,NULL),(318,215,'IZM','Izmir',NULL,NULL,NULL,NULL,0,NULL),(319,215,'KAH','Kahramanmaras',NULL,NULL,NULL,NULL,0,NULL),(320,215,'KRB','Karabuk',NULL,NULL,NULL,NULL,0,NULL),(321,215,'KRM','Karaman',NULL,NULL,NULL,NULL,0,NULL),(322,215,'KRS','Kars',NULL,NULL,NULL,NULL,0,NULL),(323,215,'KAS','Kastamonu',NULL,NULL,NULL,NULL,0,NULL),(324,215,'KAY','Kayseri',NULL,NULL,NULL,NULL,0,NULL),(325,215,'KLS','Kilis',NULL,NULL,NULL,NULL,0,NULL),(326,215,'KRK','Kirikkale',NULL,NULL,NULL,NULL,0,NULL),(327,215,'KLR','Kirklareli',NULL,NULL,NULL,NULL,0,NULL),(328,215,'KRH','Kirsehir',NULL,NULL,NULL,NULL,0,NULL),(329,215,'KOC','Kocaeli',NULL,NULL,NULL,NULL,0,NULL),(330,215,'KON','Konya',NULL,NULL,NULL,NULL,0,NULL),(331,215,'KUT','Kutahya',NULL,NULL,NULL,NULL,0,NULL),(332,215,'MAL','Malatya',NULL,NULL,NULL,NULL,0,NULL),(333,215,'MAN','Manisa',NULL,NULL,NULL,NULL,0,NULL),(334,215,'MAR','Mardin',NULL,NULL,NULL,NULL,0,NULL),(335,215,'MER','Mersin',NULL,NULL,NULL,NULL,0,NULL),(336,215,'MUG','Mugla',NULL,NULL,NULL,NULL,0,NULL),(337,215,'MUS','Mus',NULL,NULL,NULL,NULL,0,NULL),(338,215,'NEV','Nevsehir',NULL,NULL,NULL,NULL,0,NULL),(339,215,'NIG','Nigde',NULL,NULL,NULL,NULL,0,NULL),(340,215,'ORD','Ordu',NULL,NULL,NULL,NULL,0,NULL),(341,215,'OSM','Osmaniye',NULL,NULL,NULL,NULL,0,NULL),(342,215,'RIZ','Rize',NULL,NULL,NULL,NULL,0,NULL),(343,215,'SAK','Sakarya',NULL,NULL,NULL,NULL,0,NULL),(344,215,'SAM','Samsun',NULL,NULL,NULL,NULL,0,NULL),(345,215,'SAN','Sanliurfa',NULL,NULL,NULL,NULL,0,NULL),(346,215,'SII','Siirt',NULL,NULL,NULL,NULL,0,NULL),(347,215,'SIN','Sinop',NULL,NULL,NULL,NULL,0,NULL),(348,215,'SIR','Sirnak',NULL,NULL,NULL,NULL,0,NULL),(349,215,'SIV','Sivas',NULL,NULL,NULL,NULL,0,NULL),(350,215,'TEL','Tekirdag',NULL,NULL,NULL,NULL,0,NULL),(351,215,'TOK','Tokat',NULL,NULL,NULL,NULL,0,NULL),(352,215,'TRA','Trabzon',NULL,NULL,NULL,NULL,0,NULL),(353,215,'TUN','Tunceli',NULL,NULL,NULL,NULL,0,NULL),(354,215,'USK','Usak',NULL,NULL,NULL,NULL,0,NULL),(355,215,'VAN','Van',NULL,NULL,NULL,NULL,0,NULL),(356,215,'YAL','Yalova',NULL,NULL,NULL,NULL,0,NULL),(357,215,'YOZ','Yozgat',NULL,NULL,NULL,NULL,0,NULL),(358,215,'ZON','Zonguldak',NULL,NULL,NULL,NULL,0,NULL),(359,222,'ABN','Aberdeen',NULL,NULL,NULL,NULL,0,NULL),(360,222,'ABNS','Aberdeenshire',NULL,NULL,NULL,NULL,0,NULL),(361,222,'ANG','Anglesey',NULL,NULL,NULL,NULL,0,NULL),(362,222,'AGS','Angus',NULL,NULL,NULL,NULL,0,NULL),(363,222,'ARY','Argyll and Bute',NULL,NULL,NULL,NULL,0,NULL),(364,222,'BEDS','Bedfordshire',NULL,NULL,NULL,NULL,0,NULL),(365,222,'BERKS','Berkshire',NULL,NULL,NULL,NULL,0,NULL),(366,222,'BLA','Blaenau Gwent',NULL,NULL,NULL,NULL,0,NULL),(367,222,'BRI','Bridgend',NULL,NULL,NULL,NULL,0,NULL),(368,222,'BSTL','Bristol',NULL,NULL,NULL,NULL,0,NULL),(369,222,'BUCKS','Buckinghamshire',NULL,NULL,NULL,NULL,0,NULL),(370,222,'CAE','Caerphilly',NULL,NULL,NULL,NULL,0,NULL),(371,222,'CAMBS','Cambridgeshire',NULL,NULL,NULL,NULL,0,NULL),(372,222,'CDF','Cardiff',NULL,NULL,NULL,NULL,0,NULL),(373,222,'CARM','Carmarthenshire',NULL,NULL,NULL,NULL,0,NULL),(374,222,'CDGN','Ceredigion',NULL,NULL,NULL,NULL,0,NULL),(375,222,'CHES','Cheshire',NULL,NULL,NULL,NULL,0,NULL),(376,222,'CLACK','Clackmannanshire',NULL,NULL,NULL,NULL,0,NULL),(377,222,'CON','Conwy',NULL,NULL,NULL,NULL,0,NULL),(378,222,'CORN','Cornwall',NULL,NULL,NULL,NULL,0,NULL),(379,222,'DNBG','Denbighshire',NULL,NULL,NULL,NULL,0,NULL),(380,222,'DERBY','Derbyshire',NULL,NULL,NULL,NULL,0,NULL),(381,222,'DVN','Devon',NULL,NULL,NULL,NULL,0,NULL),(382,222,'DOR','Dorset',NULL,NULL,NULL,NULL,0,NULL),(383,222,'DGL','Dumfries and Galloway',NULL,NULL,NULL,NULL,0,NULL),(384,222,'DUND','Dundee',NULL,NULL,NULL,NULL,0,NULL),(385,222,'DHM','Durham',NULL,NULL,NULL,NULL,0,NULL),(386,222,'ARYE','East Ayrshire',NULL,NULL,NULL,NULL,0,NULL),(387,222,'DUNBE','East Dunbartonshire',NULL,NULL,NULL,NULL,0,NULL),(388,222,'LOTE','East Lothian',NULL,NULL,NULL,NULL,0,NULL),(389,222,'RENE','East Renfrewshire',NULL,NULL,NULL,NULL,0,NULL),(390,222,'ERYS','East Riding of Yorkshire',NULL,NULL,NULL,NULL,0,NULL),(391,222,'SXE','East Sussex',NULL,NULL,NULL,NULL,0,NULL),(392,222,'EDIN','Edinburgh',NULL,NULL,NULL,NULL,0,NULL),(393,222,'ESX','Essex',NULL,NULL,NULL,NULL,0,NULL),(394,222,'FALK','Falkirk',NULL,NULL,NULL,NULL,0,NULL),(395,222,'FFE','Fife',NULL,NULL,NULL,NULL,0,NULL),(396,222,'FLINT','Flintshire',NULL,NULL,NULL,NULL,0,NULL),(397,222,'GLAS','Glasgow',NULL,NULL,NULL,NULL,0,NULL),(398,222,'GLOS','Gloucestershire',NULL,NULL,NULL,NULL,0,NULL),(399,222,'LDN','Greater London',NULL,NULL,NULL,NULL,0,NULL),(400,222,'MCH','Greater Manchester',NULL,NULL,NULL,NULL,0,NULL),(401,222,'GDD','Gwynedd',NULL,NULL,NULL,NULL,0,NULL),(402,222,'HANTS','Hampshire',NULL,NULL,NULL,NULL,0,NULL),(403,222,'HWR','Herefordshire',NULL,NULL,NULL,NULL,0,NULL),(404,222,'HERTS','Hertfordshire',NULL,NULL,NULL,NULL,0,NULL),(405,222,'HLD','Highlands',NULL,NULL,NULL,NULL,0,NULL),(406,222,'IVER','Inverclyde',NULL,NULL,NULL,NULL,0,NULL),(407,222,'IOW','Isle of Wight',NULL,NULL,NULL,NULL,0,NULL),(408,222,'KNT','Kent',NULL,NULL,NULL,NULL,0,NULL),(409,222,'LANCS','Lancashire',NULL,NULL,NULL,NULL,0,NULL),(410,222,'LEICS','Leicestershire',NULL,NULL,NULL,NULL,0,NULL),(411,222,'LINCS','Lincolnshire',NULL,NULL,NULL,NULL,0,NULL),(412,222,'MSY','Merseyside',NULL,NULL,NULL,NULL,0,NULL),(413,222,'MERT','Merthyr Tydfil',NULL,NULL,NULL,NULL,0,NULL),(414,222,'MLOT','Midlothian',NULL,NULL,NULL,NULL,0,NULL),(415,222,'MMOUTH','Monmouthshire',NULL,NULL,NULL,NULL,0,NULL),(416,222,'MORAY','Moray',NULL,NULL,NULL,NULL,0,NULL),(417,222,'NPRTAL','Neath Port Talbot',NULL,NULL,NULL,NULL,0,NULL),(418,222,'NEWPT','Newport',NULL,NULL,NULL,NULL,0,NULL),(419,222,'NOR','Norfolk',NULL,NULL,NULL,NULL,0,NULL),(420,222,'ARYN','North Ayrshire',NULL,NULL,NULL,NULL,0,NULL),(421,222,'LANN','North Lanarkshire',NULL,NULL,NULL,NULL,0,NULL),(422,222,'YSN','North Yorkshire',NULL,NULL,NULL,NULL,0,NULL),(423,222,'NHM','Northamptonshire',NULL,NULL,NULL,NULL,0,NULL),(424,222,'NLD','Northumberland',NULL,NULL,NULL,NULL,0,NULL),(425,222,'NOT','Nottinghamshire',NULL,NULL,NULL,NULL,0,NULL),(426,222,'ORK','Orkney Islands',NULL,NULL,NULL,NULL,0,NULL),(427,222,'OFE','Oxfordshire',NULL,NULL,NULL,NULL,0,NULL),(428,222,'PEM','Pembrokeshire',NULL,NULL,NULL,NULL,0,NULL),(429,222,'PERTH','Perth and Kinross',NULL,NULL,NULL,NULL,0,NULL),(430,222,'PWS','Powys',NULL,NULL,NULL,NULL,0,NULL),(431,222,'REN','Renfrewshire',NULL,NULL,NULL,NULL,0,NULL),(432,222,'RHON','Rhondda Cynon Taff',NULL,NULL,NULL,NULL,0,NULL),(433,222,'RUT','Rutland',NULL,NULL,NULL,NULL,0,NULL),(434,222,'BOR','Scottish Borders',NULL,NULL,NULL,NULL,0,NULL),(435,222,'SHET','Shetland Islands',NULL,NULL,NULL,NULL,0,NULL),(436,222,'SPE','Shropshire',NULL,NULL,NULL,NULL,0,NULL),(437,222,'SOM','Somerset',NULL,NULL,NULL,NULL,0,NULL),(438,222,'ARYS','South Ayrshire',NULL,NULL,NULL,NULL,0,NULL),(439,222,'LANS','South Lanarkshire',NULL,NULL,NULL,NULL,0,NULL),(440,222,'YSS','South Yorkshire',NULL,NULL,NULL,NULL,0,NULL),(441,222,'SFD','Staffordshire',NULL,NULL,NULL,NULL,0,NULL),(442,222,'STIR','Stirling',NULL,NULL,NULL,NULL,0,NULL),(443,222,'SFK','Suffolk',NULL,NULL,NULL,NULL,0,NULL),(444,222,'SRY','Surrey',NULL,NULL,NULL,NULL,0,NULL),(445,222,'SWAN','Swansea',NULL,NULL,NULL,NULL,0,NULL),(446,222,'TORF','Torfaen',NULL,NULL,NULL,NULL,0,NULL),(447,222,'TWR','Tyne and Wear',NULL,NULL,NULL,NULL,0,NULL),(448,222,'VGLAM','Vale of Glamorgan',NULL,NULL,NULL,NULL,0,NULL),(449,222,'WARKS','Warwickshire',NULL,NULL,NULL,NULL,0,NULL),(450,222,'WDUN','West Dunbartonshire',NULL,NULL,NULL,NULL,0,NULL),(451,222,'WLOT','West Lothian',NULL,NULL,NULL,NULL,0,NULL),(452,222,'WMD','West Midlands',NULL,NULL,NULL,NULL,0,NULL),(453,222,'SXW','West Sussex',NULL,NULL,NULL,NULL,0,NULL),(454,222,'YSW','West Yorkshire',NULL,NULL,NULL,NULL,0,NULL),(455,222,'WIL','Western Isles',NULL,NULL,NULL,NULL,0,NULL),(456,222,'WLT','Wiltshire',NULL,NULL,NULL,NULL,0,NULL),(457,222,'WORCS','Worcestershire',NULL,NULL,NULL,NULL,0,NULL),(458,222,'WRX','Wrexham',NULL,NULL,NULL,NULL,0,NULL);
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones_to_geo_zones`
--

DROP TABLE IF EXISTS `zones_to_geo_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL AUTO_INCREMENT,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `store_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`association_id`),
  KEY `idx_store_id` (`store_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones_to_geo_zones`
--

LOCK TABLES `zones_to_geo_zones` WRITE;
/*!40000 ALTER TABLE `zones_to_geo_zones` DISABLE KEYS */;
INSERT INTO `zones_to_geo_zones` VALUES (1,223,18,1,'2013-09-20 19:53:46','2013-09-20 19:53:46',NULL);
/*!40000 ALTER TABLE `zones_to_geo_zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-09-20 20:12:21
