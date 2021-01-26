-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2021 at 06:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `storedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phonenumber` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `address`, `phonenumber`, `city`, `state`, `country`, `zipcode`, `address_id`) VALUES
(1, '15 West', '333-333-3345', 'Man-Hattan', 'NY', 'USA', 11204, 1),
(2, '7402 Bay Parkway', '6785557878', 'Quenns', 'Ny', 'USA', 11122, 2),
(4, 'be', '4534434', 'grofno', 'ny', 'belarus', 112014, 4),
(5, 'bb', 'vv', 'bb', 'PA', 'USA', 11345, 5),
(11, 'your street and apt', 'your phonenumber', 'your city', 'your state', 'your country', 11111, NULL),
(12, 'your street and apt', 'your phonenumber', 'your city', 'your state', 'your country', 11111, NULL),
(14, 'your street and apt', 'your phonenumber', 'your city', 'your state', 'your country', 11111, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `authorities`
--

CREATE TABLE `authorities` (
  `authority_id` int(11) NOT NULL,
  `authority` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `user_id`) VALUES
(1, 1),
(2, 5),
(3, 6),
(4, 8),
(5, 9),
(6, 10),
(7, 11);

-- --------------------------------------------------------

--
-- Table structure for table `cart_item`
--

CREATE TABLE `cart_item` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart_item`
--

INSERT INTO `cart_item` (`id`, `cart_id`, `product_id`, `date_added`, `quantity`) VALUES
(1, 1, 1, '2021-01-18', 1),
(2, 2, 4, '2021-01-18', 2),
(3, 2, 13, '2021-01-19', 1),
(13, 1, 2, '2021-01-21', 1),
(14, 1, 3, '2021-01-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`) VALUES
(1, 1),
(2, 5),
(3, 6),
(4, 8),
(5, 9),
(6, 10),
(7, 11);

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`id`, `order_id`, `product_id`, `date_added`, `quantity`) VALUES
(1, 1, 1, '2021-01-21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` bigint(20) NOT NULL,
  `age` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `place_order`
--

CREATE TABLE `place_order` (
  `order_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `total_cost` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `productname` varchar(255) DEFAULT NULL,
  `productimage` longblob DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `productname`, `productimage`, `description`, `price`, `quantity`, `product_name`) VALUES
(1, 'Nokia 7.2', 0xffd8ffe000104a46494600010100000100010000ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc000110802af012003012200021101031101ffc4001d000000070101010000000000000000000000020304050607010809ffc400581000010302030306080b0505030b030500010002030411051221063141071322516171323435727381b1c114233337527491a1b2b3d1082436429215166263c32582e117262743535493a2d2f0f11883c2445664a3e2ffc4001b01010002030101000000000000000000000001020304050607ffc4003111000202010400060201030305010000000001020311041221310513323341712251611434b123c1d1065291a1e181ffda000c03010002110311003f00f369d172e51415d40186e5d1a9006a4a2b2ee706b412e3a0038ab450e17fd9d13659da0d4bb5ebc9d8808983079dcd0fa822067f8bc23ea459a8e28fe4dce77695658e864a825eebf5a675746d12399a823791af701da80ae98f5b0d4a069e4fa07ec53d510d35131ad949e708bf36c3a8ed73bdc13313c1c216fac5d0116ea777511ea45e61dd6a5c4b4e77c60771211bf762373c773bf54042189c0f5845746ee02ea74c50b80b487fde683ecb2e1a58f8169f511ef40587904963a5e532966a97b618be0f2b73c8728be5dd729ff2bd2c72edf6d13e27b5ec31436734820f407154ef820fe52d07ce44752bc071249077d88280f64fecde47fc90e0dffdcfc6e5a78375f3fb07dacc770585906118ed7d1c2df0638a5735a3d5b959f0fe5876ee92dcded03e60384d1c6f3f7b501eda41792283f682db3a7d2a60c32adbd6e88b4ffe577b958287f692af6e95fb3b0bc71314c5bf710501e974160b45fb48e0f2102b306ad87cc7b5eac141cbeec5d481cecb5b4e7fc705c7dc4a035a4151a8b958d89acf93da0a48cf54c4c7f880561a2da7c0abf2fc0719c36a2fb84554c77b0a026104464b1c82ec7b5c3b0dd1d00104104004104100104104004104100104104004104101f33015dcc880eaba50171e4ff08f8654c9592b7e2a1d1b71bdca7f1089afaf6b780525b1748293652985ba520323bd6a2e4941c45d728094a88db4b405e06b65052b0410495328be5b96f5970de7dc3b8a99ab939f30b01e80e93bd5aa85daf260a3642378631a7bc8b9fbca02a13cae9a6748f37738dd146aa4f00c1e5c56a4807240cf0dfee1dab40c3f07a1a26810533337d370bb8fad67ab4f2b167e0c33b944cb403ae85709b1b2d9991b4820b411dc91930ea296fced253bafd71859de89fecc5fd52fd19012422f38e1d6b597ecde1326fa28879b71ec4d26d8dc25fe0b2461ec79547a39a2eb531331e75dd65013bda742b427ec251b81c951330f6d8a6536c0937e6ebffaa3ff008aa3d2d8be0b2be0fe4a2e721c4dfee439d03781ea56c9b60f1100f35514d2750bb9a7d8a0b13c0712c3813554cf0c1fcede90fb96395538f68bab22c642a34d1bebba02a6dfcef1f7a684ea85afbb7ac65c7edabff340ef6a505503a1744eedb59307d34ad8c38837e213437bef404f366693ab233dce4ab5ed1af35237b5a556cee41b348c3d17b8771405c29b18aba437a7c42ba0b716c8e6fb0a9ea0dbfda8a4b1a5da3ae16dc1f2177b5664eaa988b3a57b875128adab986e36406df45cb1edbd2dbfdb314de9a361f72b05072fbb5908027a4c2eabac98dc09fe972f3a371095bc4a3ff693c6f68280f54d17ed193b728afd9c69eb30d411f716ab3615fb406cd553dadada5afa1bef2f68781eb07dcbc6d1e31234685c3b8d938663d28dee24768ba03e836cded7e03b48dff636294d52f02e636bc078ff0074eaa797ce9c3b6864a7a864d0bcc52b0ddb244e2c734f611b97a3f923e5a2599d4f41b53373d04966475a77b1dd4febef407a1d0458ded7b4398e0e6b85c386e211900104104004104101f31c1d51858e8880ea8d1f843bd01bbd2b041815330681b0347dc150aba72cad71078ad027e8e1518ea8dbec59a626e1f0b7f7a02c745219692a1f7e908881de45935e516e312a8637709dcd1ead129811ff0066543b87447de13ada68054ed73187506b5c48ebb1254c565e087d1298261c30ec3a187f9ed99e7ac9560a1c1eaeb2827ab81ac74709d5a5e038db5361c6c353d49abdb7562d9ac62970da291b50d90cac2fe6dad6dc3f3b729b9e16debb38718e2273b397c916709ae6570a214ee755117e6d9d2234beb6dda70459a82aa08cc93534cc8c3cc65ee610330de2fbaead9558b5155e22f91954d609a9dd148fe6b202f717d9c40ea05a0a5768312a4abc36acc352d7890b636477372e6c8497dbaadc7b546e967a236ac76529a176c940c5dcab3228276d116c96cab858804ac816070b38020f0212a188d9510333dbcd9665346ec470f8ed183f1b181e0dff0098762a3c02f3c77fa417a066859344f8e468731c2c41e21623b55854982e2f2d39079b273c4eeb6f05ccd5d5b5ee89bb45ae5f8c891a0869eaa96532173268daf75f35c3fa85b82aa5400d9de00b0053f8ebc36270ca79c22d98236cf6132e338b474cc0430f4a478fe56f15ac96f69451b0f11429b3bb355b8db8ba1023a769b3a57eeee1d655be3e4e68c37e3ab6673bfc0000af14b4b0d2534705346238a3166b423386aba50d2412fcb9668cef937c19fcdc9d5339d68aba51d8e68298cbc9c5402799af89de73085a616a01aadfd2d5fa2be7cd192cdc9f62edbf36ea693fdfb7b547cfb138f437bd1671fe091a7deb6b210b2abd1d6fa2cb5333029f01c5a1bf3987558038f344fb133929a78ee25865679cd217a25a3546746d7f86d6bbbc5d637a15f0cbad5bf9479bb51d854cecd62a682b9ad98de9a5e8480f01d6b5cc6b64b09c56377394e21988d2486cd20fb0ac8769702a9c02bf98a81769e947201a382d6bb4f2ab9f83357746ce8f687207b55256d0bf00ad98cb25347ce52bde6e5f15ec47fba6dea2b5e5e34e46b1a929dd85624d7912514cc0fb1f0a371c8f07ed695ec98c8730386a08bad73306410410010410407cc4051d8ee9b7bd248d17ca37bc2037eabf25b3cc1ec598e27e36eef5a6d6792d9e60f62ccf13f1a777a027b0639705a83dadfc414ae22336db345bff00d4cbef515847912a3ce67e20a66a85f6edbf5997deb255eb4567e96588b5732ea9cb98b81975da3942406ed12f18d1732591d81060310b964a86e88c1aa408597435285a8ed6a0120d5dc9d8970c5dc8806f91436d2601498e52086a5a5af6dcb2468e934fbd4fb9a885aa1c5496192a4e2f28c924e4debc5496b6b29f99be8fb1cd6eeff8abb6cdecfd3603486283a72bf592523577e83b158cb744916ac55e9e15bcc4bcad94d618d8849b8272e6a41e1662826b85188dc8ae4200822dca337540182959f07960c322ac748d21e03b23413604db7fd8a32da2bbf26947864d5cfa9c6f10861820e9474f2c99448fe0483c02a4e5b56498acbc11d856c6e23896ced56314fcdf33066bb09b39d945dd6ee540db3c1998d603510e5bcf1b4c911ff10e1eb5e87d8eaba71c9de3519a88848e75490dce2e6edd3458c345c2c506eddd191924bcbc34671c9239cfa1aea726c4c52803a8819bda17b7765ea8d66ce617507532d346f3fd2178eb6368850ed8e2d4ad16619652d03807464fbd7ad79367f39b058138eff82307d8172a4b6b68e8a79592c882082a9204104101f30414688fc637bc24ee8f19f8c6f78406ff0059e4b67983d8b33c4cfef4eef5a65579299e60f62ccb14f1b777a027f083fec4a8f399f88299a83ff3f1bf5997dea1707f225479ccfc614d4c33728118ff003e6f7ac957ad14b3d2cb7917466312a6320a51ac5da67346ce6ae346a9cb988819aa220eb1b70940d56cd9b8593ecb6274cf6ddf2c8d319e21cd697fb1a4275361314d8161947108e29c3cc951339bab41667d78e8db68b1cadc3c16506ca416a335aa78e02c9250ea7ad8cd1984ca2a24696f8240702dd483aa106cfce6adcc32d3f32c2c22573acc903b56817d6e42bef8fec8d8c830176ca7eb701a87d6d79a385a29e19a46b4660090d3ad871b051d2504f1f399e37031b43ddd401dc7ef50a69f43030217036ea570da2a5aa2f6d4d67c19f70180c45e1df66e44c4684d0d74f4ce9192989d94b997b1fb55b3ce08c114e624cb54ad5d0c94c22e707ca3048db1e077264f6593391818c8d4de46a917c4e31b9f6e882013da7ff829a989f23b2c6c73ddd4d1746d2596064511e9c491b98e2d734b48d0829170be8a7b204858a51a1140d528d401804a0171aa204a35480c0147630f05c625e30882ecade1ac0ddbea877173331ffc272f4d7261f37f815bfeecdf7af34d10b6decde8bfd372f4bf261f37f817d59bef5c4bfdc674eaf4968410416232010410407cbdb9468c9e719de1111a2f946778407a0aa8ff00b299e60f62cd314f1a777ad2eabc94cf307b166989f8cbbbd013b83f9167f3e3fc614f017e50e3f4f2fbd40e0fe459fcf8ff0018560845f94687d3cbef592af5a2967a597a736e519ac4bba3ec5d0db2ed1cc1031e88a19ad93a0dbaef37d8807d84e21f018191f365d96a1b39d77800823d77522dc7e2f8448f9a177372cef739ade11b9992c3b40f62846b2c111c151c13ecb29344ccb5f45150ba8e95d33e26c0f6b647b6c5cf73813a6b6166a59b351e214d153baae3a6310824cf2839496b32b9bbb7eba2afdae11437550eb4c29fecbd61b2511ad9ea23928dd9aa262f925790e00839720bf1ba8faa8fe1581520a7b1a9aa2d80b6fc23bf1edccdfb140c0cb80148beb267180b3245ccb0b18236dad7bdcf79eb55f2f0cb6e1b6054e3fb44492db9ba76999f7e21bff1b24a2a59aba699d10cee0d74aed752389edde8c1a5b7ca6d7d0f6a5299f241289217ba3906e734d8857e57253392c31442310be734d13194b131c67879db124e81bda1215743454f50da36d140e134f531f38e0733436d96ddca3e3c4ab6399f33677191e2cf73866cdd5bd213e2556f9992bde1ef639cf04b46f77847458bcb91752443065b0ea91d5233d8e571e4ee8a36504d5792f2bde599c8dc001a0fb5549c72d1cd1e5b97b9aebf55affaa9ed9adb018461bfd9b554cd753e72f12b7c204f62e778ee96dd568a55d5df7f7fc19f4538576a73e86bca761d0c535356c4d0c925bb24b7f35b50542e0d2d3d4d1cb46ea080c71d3c92cf52e65e4691e090ee02f616e374bed963831aa989b0b5cca6841cb9b7b89de536a5aac37fbbe68a49ea29e77bcc9216441c24b0e8826f7b0f7a9f07a6fa3435d77e777f81aa9c27749c3a1de214186466581d4ad84509a732ced71cd235f6cf7fb74b2424a1c2201575b23649a88ce2085b0496d72ddc6ee1a81dbd6bb8b625435341572c72bcd5563616c90961190c605ce6dc6e404df0910d6e0cfc3e5aa8696465409d8e98d9a416d9c2fd7a05d4c3c1aef088cc429e2a6ae9a182613c2d759920dce1d692684ae20c823ae99944f7cb4ed7598f7ef70eb4460592263628d0956a201a23b55caaecaf517f1e4de8bfd372f4bf261f37f817d59bef5e68a1fe3c9bd17fa6e5e97e4c3e6ff02fab37deb877fb923a957a4b420820b119408208203e5e5d1a2f946778444788fc6b3bc203d0555e4a67983d8b34c4fc65ddeb4babd30a67983d8b33c4cfef2eef404f60fe459fcf8ff18563a61ff48f0fa79bdeab983f9167f3e3fc61592885f949a71fe7cfef57abd68a59e966905a885baa745a100c0bb47346ec614b3630940d4a06282044b122f62916c408dc939a20ddc1324e08f2db041acd538732fc1291c5a8d14e483b4cc3a689d64d372344cb109c08c90ab92c90c9cc41ac4e64658ae0628c8c0898f44de58fb149e4d124f8c1539230425436cc3d6a2e669254e55b09040515332d7baba208d95b64d9e354fe56dd367b3b1481bd97404a16d972c84640023b4228471b911028d28c0a205d0ac42ec80a1fe3c9bd17fa6e5e97e4c3e6ff0002fab37debccf879beddcde8ff00d372f4c7261f37f817d59bef5c3bfdc91d4abd25a10410588ca04104101f2ed1a2f95679c1111a2f95679c101e83abf25b3cc1ec599e27e32eef5a4d7179c3636c6403cd824917b68b36afb9a87e6b5efc1013f83f9127f3e3fc615968be72a9fd3cfef55ac23c8951e733f10565a336e52e9fd3cfef592af5a2967a59a7591820d29416b2ecfc9ccf93ac6dca5dad49c241364e1a02ab2c28c6f624aa59702c12edb20f6dd41231115ca5a38b7259add52cc6e811b1808c8f54f2260012606a950eb050c942150c05c2c111ac4e3c2deb81baa820264d124e6a74468885aa4922ea60d090a12ae3df6567a86f44a80ae6d9c559331c8877b522f1aa7923744839aae40d9cd44b270e6a4dc1486276402e9082b22a742370450baa192bb2bf877f1dcde8ff00d372f4cf261f37f817d59bef5e66c3bf8ee6f47fe9b97a67930f9bfc0beacdf7ae25fee33a757a4b420820b119408208203e5d2345f2acf3822a345f2acf38203d0155a500ed89bef59be23e38f5a4d5f8837d137deb36c4bc71e809ec23c8951e733f10564a4d394980f54f3fbd56f08f225479ccfc4159297e7221f4d3fbd64abd68a59e9669d9b547cfa2489b2292bb4ce66472c758e89e31f700a8e8dc9d46ed37a8c01e34a3829bb5c956baeaac9c8ab77a55bb9370754e186ea0b0a342359065ac8fa2ab24e35a8c588edb23922c8488e542c129a24ddbd41035a81d12a06b9bd22ac138e895095a352af129222246e89bb9a9fb9ba26ee6eab2151a39a917353c7b524e629206a422d92ee622b9aa51024bb74085cb2325764061dfc7737a3ff4dcbd33c987cdfe05f566fbd799b0dfe3b9bd1ffa6e5e99e4c3e6ff0002fab37deb897fb8ce9d5e92d082082c46502082080f97374688fc6b3ce0888f17cab3ce080f40d59fdc1be89bef59b623ad5bd69157e20df44df7acdf11f1b7a027f08f21d479ccfc6159293e7221f4d3fbd56f0af2154dbe947f8c2b252fce4c56ff00b69fdeb255eb463b7d0cd2dc5138aeb8a25f55dbc1ccc8ab52ec29a829661ba860791ebc52cd3629b30db7a59a6eaac645c6a978d376a59a6ca0b64700d9181ed48675d6baea304e4721ddaba5e90be88b9946064741daa0e4dc3ecbae90d946064ecd6caa12b357152b2beecdea2e700b95d22ac64e6e89bbdbaa7b20d1372d57206ce6245ed4f5ccff00dd922e6a1191a38249cd4e9ec4939aa481b96dd148b258b75447040bb2b587ff001e4c3fcbff004dcbd31c97ff0000607f566fbd799f0e16dbd9bd1ffa6e5e98e4bff80303fab37deb8b7fb923a957a4b420820b119408208203e5c23c5f2acf38222347a48def080f40d5f8837d137deb37c47c6deb49abf1067a16fbd66d88f8dbd013d85790aa3cf8ff0018567a41ff0049517a69fdeab384f90aa3cf8ff18566a2f9cb8bd34fef592af5a31dbe8668efdc931bd2cf1a24ecbb67300d4bc692684b3468a190d8b03a252329360471a21191d34a38726a1cba1fdca091ce74763d346bf54a8728c1391ce7d114b925990cca304e45f320e724b32e172601c7bae084ce4dc52ef76853790e8a48c8de5dc936ea949772246ac4062dd120e62766d64938042068e6245ec4f5cd49be30a40c5cdd521227cf6d9339468817655a83f8f67f47fe9b97a63930f9bfc0beacdf7af33d07f1ecfe8ffd372f4c72607fe8ff0002fab37deb8b7fb8cea55e92d082082c46502082080f9708ccf0dbde8a8ccf0dbde80f4155f93d9e85bef59b623e36f5a4d5f93d9e85bef59b623e36f404f615e41a9f3e3fc6d569c3c5f94e847f9d51ef556c2bc8353e7c7f8daad9858bf2a117a5a8f7ac957ad14b3d0cd29cd4896ea9fb99d891316abb672d8835a951b91b9b432d90800365dbae108594100ccbb9972c801aa00ed295074446b528d6a107438a3665cb20a093a1cbae72e05c2a090921d0a40a5dda848b8594a2041e2e506847211371524361cee45b6abbbd19a10644dcd49bc270e493ec806d2353299aa45c99ca1492bb299482db7f3fa3ff004dcbd2bc98fcdfe05f566fbd79ae9be702a3d1ff00a6e5e94e4c7e6ff02fab37deb8b7fb923a957a4b520820b119408208203e5c2347e1b7bc22a347f28def080dfb139e3a7c29b2ccf0c636165c959cd790ea92e69bb4ea0ad071ba565560cc8e6617c6f89b700d88b6a167956d0d988032b5bd103a90161c2bc8353e7c7f8daadd840bf2a308ff0036a3deaa385790ea3ce8ff001856fc105f95687d2d41f6abd5eb452cf4b359c9708bcd0ea4f1b1aef36bb3939ac606344e6fb13e747aee45e6c7529c956866635ce6d3e110ea5c7463a90ae065911436c53b747d8922cd7729015a12cd6ae31a9668b28010b3445c89c5ae8ae6d94138102db2214b382216a92045c8845d2c5a8a5aa486225ba6e4891aa744689073754010238460dd115d6080e1447351c9452e4022f16299c9bd3c9133937ab05d94ba7f9c1a8f47fe9b97a53931f9bfc0beacdf7af35d37ce0d47a3ff004dcbd29c98fcdfe05f566fbd712ff724756af496a410416232810410407cb8466786def45466786def407a12b3c9717a36fb166b5fe30eef5a556f92e2f46df62cdb10f18777a02730af21d479f1fe30ae9b3adcdcad423fcda8f7aa5e15e43a8f3e3fc615df65c66e57a01fe6d47bd5eaf5a293f4b36611d9772689d18c8443192bac99cfc0d1cc452cb278e658249cc52995686e1ab8e6ea96cbaae88c97053923021cd13b8223e9cf1165351c2cca17278da1ba28dc4ed20844470460c4f9d1d8949166aa725702194ae109c65452c4c8c0dcb74442d4e4b45911cd52558dc849b9a9c39a9278d1481bbb4499b5d2d235245aa480a4e8917255e126e4011c6c1244ea8ef49db5564401c5357eae09d38689070e90524aeca4422dca0d4fa2ff0049cbd27c98ff0000605f566fbd79b582dca154fa2ff49cbd25c98ff00605f566fbd70eff007247569f496a410416232810410407cb8466786def45466786def407a12b7c9517a36fb166b889fde5ddeb4aadf24c5e8dbec59ae21e32eef404fe122f81d479f1fe30af5b1edcdcb1403fcca9f7aa2e11e42a8f3e3fc615ff0061c5f967807f8ea7d855a1ea444ba66eee8afc11399b1d54816a2b99a2e964d2c1152c762922cd1494b1a6cf6ab2914686823d52823d1396c774a08b44720a23668b2e385c27259649b9a991819bdba949e409db9a93cbaab265702193b911d1a7797bd02c4dc570312c4996a7ce8d22632ac99181939a927353e2c49be3539230473c245c13f963ea4d9ece2ad92b81a3d22ede9d3d89331a9206ee1a2206a72632ba235240d4b526589f18f54474699257667645b945aaf443f29cbd1fc98ff00605f566fbd79ca616e522ac7f943f29cbd1bc98ff0000605f566fbd716ff7247569f496a410416232810410407cb8466786def45466786def407a12b7c9317a36fb166b8878cbbbd6955be4a8bd18f62cd710f1975fad013f84790aa3cf8ff1856fc13188301e55a2afaa8e492164b501cd8fc2d6e154308f215479f1fe30acb4cd6bb94b6e78992b44b5072bc5c71592a599a463b5e20da3d398662587e334ada8c3a764ad70b903c26f611c0a70e6ac24612ea7c5657e1355399a47110b609035d7075078f5e9c55930cdb5c7f0698526d1d03e7035ce464786dec0df715d59d0d7a4e6c3529fa8d2a56a6af8f54df04da4c2b1d60f80d4b4cbc617f45ff671f5295e681d78ac3caeccea4a5d0d626ee4b16e8961180816e8a1b2d8c0d5cd493804e5ec4939bea52990c6ee6df7049e4d564b578de2d84e3d56195721b4aebb5e73348bf5273ff28b8c5354f393d2d2cd4bbb286961fb6e56cf9127ca345eb2b8bc4b8353e6f44322a9e07ca460d5cd0cafcf4337538666fda15b29eb686ade194b594f33cb43c08e40e25a7715595728f68cb5df5d9cc5852d1d488e60ea4e9ccb249cd54328d5ccec49b99a6e4e9cd452dd132548f963ec4ddf1762947b2e91746ac990d11860bf0498a775f829510f62e735aab6e236919f0636d404399ee529cd689292220ee4dc4608fe67bbec49be1eefb1490889e088e851c82464758dcbca6560ff00287e5397a27931fe00c0beacdf7af3de2adcbca8560ff247e5397a13931fe00c0beacdf7ae4ddea6ce9d5e92d482082c46402082080f9708d1fca37bc22a347f28def080de71f6e6d9e6837d631b8db82ce250e6ccf8dce2ec84004efdd75a4e37e4267a31ec59c54f8e4de70f604059708f215479f1fe30ae7b3ad9dfcad44ca588cb2be4a9686e7cbd7bcf00a9b84791271fe38ff18578d9105dcb044d11992efa9e882d0771e2e202c953c4d331dcb3068d39db38590304ce7caf2ee8ba28c3591375d05ee5c493d6a32b63aa64cda68709e769a95a04fcfbf9b74c48b5ac1d62376eea57a99f3d2c0e9053d3d2e9711b67cad7b8dce5731a32bbd4a32b5f87b29658d829d8e6039e2a78e10f9b4b10013716249d405d7564a4f2ce1b8c62b09e0cbabf0f7bdae9a534f4d2ca486436399807f30d789bfd88f49b53b438444ff8356cb3422c089067b7712a7e9c3b998c3e09a9228cb844f103581cd06e2eebddc6f7ec48e2b462498c92c7d30c2d6d9b1c71824e9c6e5dbf45b785d346af9af1ba2c6f41ca763903986a994b531f16e5b38fac7e8af5b33ca2e0f8b82cacbe1f3f012b816bbb9cb27c4e8e18a47e58f99899a35ce6b81ef22dc541485c6405d92c07f2b6c07d8adfd1c2ceb831bf12954fbc9bee27ca16cbe1f33a296bc48f6bb291146e70fb40b296c031ec1f681a5d8555c7316ef6ee70f51d579a1cc2fb07006dd89384cf4b52ca8a47cb0cd1baed92325a41ef0aafc396387c968f8c49bfc97069bca7e1428f681ef89996395a241de77fdeaa01c03323acf6fd12136afda4c5f172cfed3ad927731a1ad738006dde13bd99a4fed9c5e9e81f208448ef0f79dc4db55bd443caaf13f8399ab9bbeccd7c646b5343058c909b6b62d3bc76848431cb4b3326a791f14ac3d17b0d884f5d998e21d6b82949a612b40735ad775b4582d8d89a39be74d3fe49da6dbdc621c3be0ee74724c1c0b677b6eeb7511c7bd5bb6536e28b15c94d888f82569d35f937771e1dc56565975ce66c37ad6b74509ae3837e8f16bab7f93ca3d0f253902e1205963aace36176d25a39e3c3b1894c9464e58e679b98fa813c47b16a3233300f6ead22e08e2b8f7552aa5891e9f4baaaf530dd01a1624cb13a2c2782023ec58771b381a08d779bec4f4457e08ed835dc9b8b288c5b0df8224d1656ee537143d892ae8b41a6e50a5c87121047d88a62ec521cd81c02216ab37c15dbc98863a32f2ad5c3fc91f92e5e80e4c7f80302fab37deb01da4d3959aef42dfc972dff0093017e4ff02fab37deb9b6f66fd7d16941041632e04104101f2e4aec7a48def0b8772eb3c36f7a037bc6fc84df463d8b38a9f1c9bce1ec0b47c73c82cf463d8b38a9f1c9bbc7b0202cd8479167f3e3fc6d576d95844fcae35a4dac6a9c0e9a100efbf0549c23c8b3f9f1fe36abd6c7061e5862ced2eb3ea480199b5b752c953c4d18aef6d9e828d966467e0b0402d9190c7067977126c41b0b84d860c5a67149106cd35c933c3ac62dae576f26dda9dc35261703927754c8ebb61ccd0f6b741723dc13dc3e47ccf91e267ce438fc607865f5f040171f6ade7271e8e628c678c99e494d35367315499228d85a1b2348201b801b737d5dd69a62915453f38f6cb390cb379cb0bb5c776fb9e17bf62d22aa829cb9cea7a42f92c466cd6703c2f6d78f12abd55857eea5ace6a38af6b06997d40df527a5d6b72bd4a7d9a16e99ace0ca31489d2d44ef709228db182d73980120dac7402e4e9f6a858e981003cc7180352efe62af5b494adf86cec7b400c161ceb8dcb8ea4803b2c156591e43963b73b723419801bcff00f0baf5cd389e7ef8b8cb922c40d7c60f82370706d8387ea949216c71b5bd28c5886cc1a5c1dc2e3afd4a418d37e71cccf1385be301cb7f52645cd3139cd324a5bd1072dc1b8e3ae8564ecc6a442c9186399f18d739de1017b8ef52f83b5d0d5c73c0f0c922f8c6baf6d47051c62323eed6971d4e5097a5786b867201bdf50a719582d19ace4752bb9c91cf3bdc4944211f4792e68b0e03a90b2ce91a2df2277b14a0d5708d5283206585f3f7a10c41ecbad2b92dda52646e0b88c9983cda99ee3b8fd0bfb16717bef4038c6f6bd848734dc11c0ad6d450ad8389b7a2d5cf4b629a3d2c68dc0d8b7ee476d0b8f0fb947725db451ed0e00d13381aea6b47303bcf53bd7ee57331b7a9794b672ae6e125ca3e8144a16d6ac874c826d091c3ee47f8210777dca58b2c8a59a2a79accbb48e6d391c2c9a54d3b9ce3a29a2d493d9752a643895c7d3bae45b549ba9dcd1d2562e61bbec919616dc68afe622140f376d6b0c7cafd734ef1037f25cb7be4bfe6ff0002faab7deb0ddbc16e59f11005be219f92e5b8f25ff37f817d55bef5a937966c45611694104150b010410407cb92bacf0dbdeb85759e1b7bd01bde3a7fd82cf463d8b38a9f1b9bbc7b02d171ea67d4e091c71cce8498db77017d2cb3b9e110bcb0173ac7571de50165c1f5c167f3e3fc6d579d8e7ba3e58e27b0c60b5f527e3090371ea546c1bc8b3f9f1fe36abbec8c8e8f9618f21635ee7d4b417b6e2e7b164ab99a315fedcbe8f423258aaa463d9522a1c5dd06c82ed6b80bd89de2d6de97a4a73f0cf85ca6863b0b3b9b7106fb8ea4007d698616c91c210f8e28dd0e6cf941dffcbbf78b5d4eeb25292435e080eb48dd077ae859f8bc1c7a5eee589d56582a592cf30963700ccaf76a4df43a69c54542216d439b28687b642607068b1bdee470bd87a94ad6e58e269b8024390b9bfca78776aa16aa67bc47388c48f8ee1b9ac05f711a6a6e95a6d609b67879655b6be9f2564a6268717c398e6399cd6ef1a9ebd2ea8f590f315114928062918d25a1db9a751c16875b132adae74af7cac0c2d00681e0d8db7df28b7ad527142d7493c92d9c227f3161bc31adb8b0ddaaece99bc28bf83cfeb5294b77ec8c6b9ad39632c683d26b9f71adb4dd74d638c86b1e242c90deeed41047559769897b3302e66569680d06e754bb489a43034642e7175c117ddbafbf8add48e639a218b72937e37ddc7ad1b9bd04858032c45dc343dc949747b835da071df7bfe8baf73a40e6824746f6b8034eb5748aa91c848370dd40d6fd69568d754cd879b703706e2e6c53c8cdc5d648982c58793ae68484808174e111ed1652522c6eca92c69190107ad739cd3a7b8ee28b2377a24520638b641769e0aaf836124c9fd93c7ea767714656d1926da3e3be8f6f1057a6367719a4c7f0a86be85c5d14835077b4f107b57936a0470864b0c85f138749bc633fa2d4b90ac7053e2f36152484c554dcf15ce81e06a0778f62e2789e963641db1ed1dff06d64b4f6aa26ff001975f66e25a885a95de85979b523d9e06ee6a4cb53b2d49b9bd8aea451a1b5926e6ea1392dec4996f62ba654f346dffcf5625e85bf92e5b8725ff37f817d55bef5887281f3d5897a06fe4b96dfc97fcdfe05f556fbd629766545a50410552408208203e5ca3463e31bde11b9a7f6234713b302781406fb59ae1317983d8b37af3fbcbfbd69157e498bcc1ec59b57f8cbfbd0161c17c8b3f9f1fe30aedb2d1ba4e575ad8c90e2ea9b11bc2a4e0be469bcf8ff001857bd8ec9ff002c4c326a03aa74b1373d4b2d3ee230ea3da97d1bee1672d509046e6e78800f7f123af8a99e6da181b7cd9b80dc49e2541d041470de316123dc5c5e75733d5ad829584c714cd8f9c6b9a19e10dd7b6eeceb5d0b7967169785c8a555219299d019db73d2cfbf5be8a12be30c90b1ac31b1dc07036b127ac6bbd4afc5b9d95a7a24663aea08dfa28cc4eae9e5a12ca97b58e0e3620df76874f58d15a9ca645d24d64aae1d0b24cec232b9b987489b6f37bebfe1f62ac62af8e76358f2f32891a5efb820335d7b343b95a2a39aa4e6798cae827191ceb96f76bd4a9d8a902b5ad0d71d33bf2001a00240dfa916eb5d8a16e91e77572db1512132c71364920ce58e759bff001ef5ca870f843b2bcf845c1c34b95c95e5ed6b416f5e6046ff00d12733873a3a45ceb5afd6b7d2398de44e4033802ed1aefeb4206199c631673cdf571b58008d2ca491aeeb036ea4d09e238a92505b25609b9b01aff07ad2652521b8ba22f8ddc32581045c6e457916dea1b9f9632323cdbab826154e96690bdced7b38239e3e09869773ec9e12324b8639ae237d8dec929597d74ba83818e818676c81a01b169dea429ab84e48366b86f078f6aaa9e7b32cb4ee1cc7942af680d3985c711d6a4b65b1476178d5254b06510ca1e2dc05f50a2a47dc942176591a7a956715358262dc70ff0047b469a56cf0472b0ddaf6870f5a5382a5f267b4f498c6cbc01d286545144239daf36b58785dc42630f2bbb2f262afa374d51131ae2df853e302127b0deff72f173d358a72828f47d02bd654eb8cdc97e468488f2d634b9c435a05c93b82a5e2bca96ca61cec8ec49b5125af969da64fbf77deb25e52b94b93695b152612da8a4a0b7c6b5e407487b6c77762cda7d0dd7492c617ecc3aaf11a74f16f397fa356da1e52b67f0991d1c733ab661a16d3905a3bddb954e7e5a206b8e4c1c96f0bd4ebf8563793e2f8dc84d5ccb2edc3c2a98ae793cdd9e397d8ff001e096afc7bfbc7ca757623cc0833c61b903f35ad0bb8d82f45725ff37f817d55bef5e57d98fe2fa9f34fe515ea8e4bfe6ff02faab7debceea22a16ca2ba4cf5ba49bb298ce5db45a50410584d802082080f9779dc3f98fdabb13ddce34663a91c512e8d1fca37bc203d015a2d8545e60f62ce6b7c61fdeb46abd7098bcc1ec59c571fde5dde80b160de459fcf8ff001b55b305716f2af196871225a8d1bbcf62a9e0de459fcf8ff18569c2e66d3f2a3ce480e5124f72386bbd67d2fbd1fb3575af1a79bfe0dce8abdf047ceddee8469679b39a7a8f5a5eab172e8c4c49bb88796917ec55af84d35642f6b9cf738ddae703a123ad244830d98fb16ee5e9969a2de5ae4f112d64a0b1165ccd6b0bda5ad6659350e00124db77b556f1caea98e492200734d0c3d1bf489bef3d5a2631d6ba287a4ed1a6f627446ae9d95b0b835e487919881d2b3778dfa70e090d32ae59c704cf59e7476e70c4e6a81f0583a16a87c8d258d366dc6ba8bdaddeab3b5b520d63c024bdcebc848e8925a3407ab79f5a9b8aa1a5c5ac774c0bbad604b7ef246845fbd56f68a57c93020124802e58ee90b6fd6c6dfa2d8ae389706b592dd1c11524d9e52e6902e46800034ea0929e539dbb80b716ef48ba70e908b817dee4573aee1c779eb0b68d7d82e1d76bf703dd6bf7245e6c4006e48bff00c1262432bacf27541ec21ee0d68e89e2755192db52150e69de93934160345c0eb0bfb111e736b7fb102424f17e2892b435d669b847722b9bc4286664369a3cc2c907332baedde3727ae1a248b6ea8d19a3262b0bf3345f7a5e3049d5368016ef4ec1b00ac8c36763da7aca8a78a68e9ea2489933724818e233b7a8f62ace2904d5321617b8463a94eb4a4f2b5f29d45d56c8290aad75bc9134f08a3637374a422c06fb77a7b0663673b7a564a6e9e6e297f833db135f6394a88c76f45ecb54f91d32e58db8e09291ba14fe9e3618984eb70855c71c6c041dfc166dbc1cf53c4b040eccff001854f9a7f28af53f25ff0037f817d55bef5e59d9b37db2aaf35df9457a9b92ff009bfc0beaadf7af13acf7e7f67d2f41fdb57f48b4a0820b58db02082080f9708d1fca37bc22a347f28def080f40d579222f307b166f5fe32eef5a455f9262f307b166f5de32eef4058f05f234de7c7f8c2b6e0f4bf0ce545d0e773039d524968b9b2a960be469bcf8ff001856ec11ae7f2b0c635a4e67ce0db80bef59f4cf16c5ff0026aeb5674f34d7c334c9293e00ef83973f2f841f6d6fc6fd890ac80bdaca824b63360076db51653430e7543267d4cefe947f16e26dd207507edf6a714585454f0ba4aca833358d731ad6824349d091db7d57aafea23159ce59e11e92537d611576e1f5d3c12bcc66120921ae362469afdca18cf35349ce5efaeebe87b15c713a27c05d3fc22a678dae0d24e806ed37ea140d5d2d3544733f2b98f73f3020650343a5bbd6c576a9ae4d1bb4fb1e170c6551545d411c4c30ba47019c9ccd1bc6f0379b2ad62153239af12ba59350eb175c1278d89b8d2da27d52f7358c6d8f024289af91ae2e2e6924eb6e0b26c4b942bb5cb86306bacf39bd9741cf7122fa0eaeb49179693c1733070ea2a0dada2c082f233587720f21b2104875b769b922378b9ca7ad1c309370a46050905b71eb011779d34bf05c22c05ce88a5c00f080f6a64848313d764527545247025109de5325923a4ae6e2b8d37175d2a0b60334a55ae04ea905db9b5c6f44c86b238cd6dc9392fa11a10834e66dd027552caa5863c8ddceb013ab9281cfb65ceecbd57d144c8e2ce9349b8ea294188e78c0734b5fd6a33fb2aea93e513f8756d3c0e2ca86e669dc4704d6b24e72a2420de307a3dc99411b9c01213cbb0445af16770b1564cc2e2a2f823766ff008caa6df44fe515ea6e4bfe6ff02faab7debcafb322db63543fc2efca2bd51c97fcdfe05f556fbd78ad67bf3fb3e8da0feda1f48b4a0820b58db02082080f9708d1fca37bc22a347f28def080f4055f9262f307b16715de32eef5a3d5f9262f307b16715de32eef4058f05f234de7c7f8c2b56173c9072af1985ec63dd24f1de4366eba589e0aab82f9226f3e3fc615969a969eb39499e0ab30b58e6d559d33acd0ee04fad67d37bb135f57eccbe8d52a71be7a9c1c3192cd5cd7baf4d511101cfdcfd7769a1bdf876a2e13598d36aa718abe28670733606dad93adbf7efd55226c46acc4009df4d09b0925a692f1e4b019030d893a0e905214b88d6b29c321c38be8e2616ba2925bcae07300775c0d772f50aa497078b7636f2cbe54d44928aa3031afaa8d81cc7bba4d0dbefb6eb6f50f8b348a3741d29262cce5cd1660b1d494df66aa311861647554c5ac8dae2248a40e2211fcbdae06deaba8ac736826aaab91d863a37c528745ab6c4124ea6fd82e95c5a9e0a5cd388cb136648580bb396deee02dd10e22fdddeabb3932124808f5b89d454b5ccb0683a38b34cc3b5320f3a024adf4f8c1cf55e39093459b5034481bb744ecbafc53495fd2b28667865f076e0826fa8e094738c6ee890e1d613473ac50cc4b6d7d02a64c9b471ceb5c77d915f6277ea9a1932bc38f04ae605d7d3326e2db31d0a82bae3a109306fc570bc87db7a648da28dd1b65c24844cc4aedd4e4603b4aeb85c5b8248128e1d64c918158dd639575d7b5c0d1372ee95c2e4d24a2dcd588e37ea4ce06ccbe03b8df804848d052ae3a24de74ed557c968a391575453f441bb785d3aa7ab134ade71fd22750744c48bbae42e4b1876b6b1eb509b5d177083fb2536745b6ceabcd77e515ea6e4bfe6ff02faab7debc9db119bfbcf5199c5c72bb53e88af58f25ff0037f817d55bef5e3f56f374dff27b5d12dba782fe1169410416b9b404104101f2e11a3f946f7845468fe51bde101e80ab3fec98bcc1ec59cd70fde5ddeb45acf24c7e60f62ceeb7c61dde80b0e0be4897d247f8daa4b17ab8e876ff00e1337365ac9a53693c13d2e238a8dc13c912fa58bf1b525ca0b0bf692602d7e7a53af9cb369e5b6d8b306a63bea945fe8b9c58ce1f86454f399a8aae491afc9039d9cc6775ec4683d69cd26df51beb79e7c706693a1210d01c35d3b481a5b8e8b1ec8e2e3a1b845869e61374a3397acaf42f5326f3b4f32b415a8e371a3e238ae201d2d6420c5492bf9b0e0dbb6e45c8fb085c89f51252994bdbcd5eccbb85dddc1506696ad8c1136495b19370db9b5fafbd77e1958266b5f23c34580575abdaf9451e814a384d1780eb8e9684705d0f0a9f495d3995d9e57dc6a78ab2412f3b135fa6a35b2dbaaf8d9d1a77695d5d8e1efb6e28a7703d6936b6ee4ae842cd9c9870908484a267b0b8479f4dc9bb9c729d2cb13786658aca3af766bf12426f04ae6c9d12729466120936ba2363caeecdeb1b796664924d120d7e885efaa4237586a2e8fce0e01644cc2e22a1cba5d64953669267070194349ba3395932ae3ce0397ee5ce70dd259b815d0991814cc8ed7704934f5a04d88213246055e6e933aa3137dc932403628120ed08ce032a2b083c502e402db162db5351e6bbf28af57f25ff0037f817d55bef5e51d8eb7f7aaa2df45df9457abb92ff009bfc0beaadf7af1faaf7a5f67b7d1fb10fa2d282082d736408208203e5c2347f28def0a479ac27fef35bff0080cffd68d1c584e76fef35bbc7fd4b7ff52036bacf2547e60f62ceab8fef0eef5a356dbfb2a3b1b8c83d8b39aef18777a02c781f9264f4b17e6350db7fe299fd2cbed4303f24c9e962fcc6a36da5ff00bd7358ebcecded59b4feec7ecc1a9f6a4464510043ace03b38a71ccb070092a72e687685ad3c49b94e22025072b883da17a78a583cacdbc8430b4ef6849c9451bfa441bf5dd3ab01bf72eb5cd00171dfbb8abb845f6515925d101594d273a72e8c6e83b54b60f239a5f193a5f775146c4980c0d7877827a933a4a88e0a8cb339c33ea1c16ba8aae66c393baac160b1211d9708b1bb33439a4dbb518ded725748e5ff0002536a48d52164b1249eb49c808d468b1c8c910ac02c6fa6a8af2dcdd137088495c2150c890a070b2edee93ca48094737338161b01c14a21a156122e07108c354517b237056463614a01076882900ba0570a127806c509148de05ee939012e26da22b0d8017370966d9eddfea50474259b282483a752501b8d77145737a4bb25b29b9b2743b1cec57f145479aefca2bd61c97fcdfe05f556fbd793761c5b69aa3b9df9457acb92ff009bfc0beaadf7af21aae6e97d9ed748b1443e8b4a0820b01b00410410198ffc84f275ff00edd8ff00f1e5ff00d48b2f217c9db227bdbb3d1dda091fbc4bff00a96a093a8f1797cd3ec40790f1a6363a573182cd6e80750599d778c3bbd69d8f7c8487b4acc6bbc61dde80b1e07e4993d2c5f98d47db217dad9bac4b291fd48b81f92a4f4b17e36a3ed78076be6b9b5a597f12cfa6f763f660d57b32fa23cb5e5bf162c7adc52fb835b9ac77dbad14343ec466711d7bae855441f28264b068f06dbd7a84b0793ce786739c201ccc1a1b5ded06fdc932d2f7dc39ac3f67dcb91cf91e39d730df4e2493d4027126f6e82c775b550b0cb3fc42481d2c79091977ebc544d534b672c23a2df04a996bf9c786b5a0399bcf5a4a5635f210350a9386f5c16ae7b1f27704accf78a424b8ea0952d20b9deaaa43a1a90e6e9c429689e5ed07313eb5929b5e36bf831ea2959df1f9242c01d0dd070ccdb26cd7126e9504db7acf9c9ace38117b6c6c574016de2ebaf1772280aa5c3808c06abb1b6e404a4b1f36e2dbdec77ab2451b38ddcbab8d5dbeaac5589c9a95d6e9bd7241a20a0b7c01c1700fb174ee4028000171c72381d51971e34dd7408503730b8b908b20b0b14585d92e12928ccc0427c11d315d8627fbcd517ea77e515eb2e4bfe6ff0002faab7debc9bb0ffc4d55b868fdde88af59725ffc01817d55bef5e4353eecbecf6ba5f663f45a50410580d802082080093a8f1797cd3ec4a24ea3c5e5f34fb101e45c7bc5e4ef2b31aef183deb4dc77e424ef2b32aef18777a02c982792a4f4b17e36a36d88bed74c3267bcb28b7ad1702f2549e962fc6d45db77b99b5b3e58f9c2669465f5acda778b63f660d4acd525fc0966caf692d0e0d16748e75bec09ab9eccce731bbfa449dd97ad7036368b782182da6b63c4a6cf6b3a4232e2d06e06fb9e0bd24a7f08f33082f9143511ba721acccedf70346a5dd3c9216b4b83b2e8065d2dde9a1cf97273cd66b99c0ea494e68ee24cb21700ed7a5bd523279e4bcd24b2858b4b1adbd813a85d690d21e0b492750109648c9192fa0e26e8913eee363f72ccb86605d722b5b4cd743ce6a2d6b5824207b9a79b27301b8a3d4b898f81b6baa674e4f3da6e2557a9705a11cc392559c13860b848464166a6d9744b4771bcdc596cc39356619ccd1102586a1108b1576634c33468ba01713741ad7650729cbd764660d54a21f074374453bd2a1ba2193ad5b053225237a1745b6a9c398e78e834b8f6044746e6786c2def0a36b2eb381170bd9151a4d3724c92aaf82c830d4aebaf65d818e9646c7182e7b8d8002e495643b0fb4c284551c0eb84045f3737adbaedbd52538c7b782ca1297a564ac0b117d6fc52f1f49a112585d14af8dfd17349042529468076ab2e4c73e85763465daaab1d8ffca2bd61c987f00605f556fbd794f6505b6b6afcd77e515eace4c3f80302faab7debc8ea962e97d9ed746f3443e9168410416b9b20410410012751e2f2f9a7d89449d478bcbe69f6203c898efc849de56655de30eef5a6e3bf2127795995778c3bbd0164c0bc9527a58bf1b5736d9a4ed6cd67169e7a5b5b8f4b72ee09e4a93d2c5f8dabbb6797fbd93979b0124dafad67d37bb1306a7da91132b9f2e679208f09e46e6f0b2778650cb5f56ca6a16ba599c72b5ac049d07522070f839a66444b5a4124fbd6c7c82e1c70aa39f6967a39a689f23e979d89999f169e181c75d176b557ad3c37b3814414de25c25fe0a8ed8727726caec4d0ed14d6ad35127372c6eccc30df770b9d4151789ec7cf4b86d356c4e2d3511e7e6ef9ac743607af51a2d7b961af9e93922a818b4f512c95b8833e0a2a4012736db1d470dc4fad31d918e8399a4971a9df20ac8cc74c09bb6163868f3d572b9366a75109255fe6dfebe4dbba1195918c1622fbcfc23073a1e9340007da52b1919b46d8f1566e5170076cfed2494afca4bd8d94dbac8d7ef55c8c0692bbd54b7c54bf673ae8f97270fd16de4f3622b36e31af81d3930d2c633d45416dc31bfa9e0bd29837245b1b8651320fec88aa9e059d35412f7b8f5f50f5009af22f8652ecd72754b57505913aac1a9964769bf77dc141566d362c5f5b3331c01b99e618e3b6eb9ca0e8bcdf89f8a79766d597f1849bff00076f45a45184731cb7fbc7fb903cac723d4b86d14f8decbc6f6c5102f9e8ee5d668dee613af691af62c5982e17ab3935dac8f1ac35b8762752e97157f385cc91b6cccf61d179cb6df0a1826d862f40c168e3a87641d4d3a81f615d9f09d5cad4e13ed7fe4e6f8be93c951b12c67e082016c1c946c0e19361ecda4dac7c6ca071fdde299d95afff0011ebec0b2dc2a8cd7e274948dbde795b1fda6cb6ce55dc69711a0c2611cdd152533046c1bbabdcba57c656d91d3c5e339cbfe11a3a284527749671f1fc9abc3846035d86b1b050d04d4520e8e48da5a4762c17962e4f62d9a99b8ae10d230b99d95f1efe65e770ee2adfc986d14582e1d8a3f1295e28a2c8e6817367124580edf72b463f2cbb57b2f8f4669e33853e94494738def70049b8ec202e1f992d06afc9dd9ff83bd7e996af48ad70c67a7fca3cb4d01294f1baa676431b6ee71b247d6a6b656306b6490ef6374f5af5305967928414a582c34345151c0191b6e78b8ef2516ba962ab8cc72b41d3436d42d0364f6568f15c21b575724c1ce7b800c7002c3d492da9d918a86333d0997988e17c9239e6fbad6034e37589788e9bcd74bed1d9fe827e5ef4b830ac4695d4b54f89dad8e87ac26642b1ed43733e0900dedd54065cce03acab5b1db2672e4b6cb07a07901d88a5a6c2bfbc789c4d7d54e6d4d9c691307f3779eb56bdbbda77ecf6d1611344fe7291ed73678c1b82dbefef1bd2b8acacc3f03a1c2a0696d2d3c0c6c8fdcdd1a2dfaacaf943a4ab8f0a8710a4619a9cb8c61f1f48027b97cb755e3766afc45e929837fc9f4ef03f0da2b847ce92595d7ef24cf2edb29455385c3b5584318336515063dd235de0bfbf82c4616d88217a6e2a8a0afe488e1afaaa77551c28de22f05c1c197d47610bcdb18d0e9a95effc2a52956e33ed1e0bc76a855a87e5f4c26cb0b6d755f9aefca2bd55c987f00605f556fbd795f66f4dafacf35df9457aa3931f9bec07eaadf7ae06afdf9fd9e8343fdbc3e9169410416b9b40410410012751e2f2f9a7d89449d478bcbe69f6203c898f7c849de56655be30eef5a663ff00212779599d6f8c1ef4059303f2549e962fc6d46db300ed6545cb05a49ac5fb86bbd7303f2549e962fc6d5ddb3b7f7b2a2e40bcb28d45ff009967d37bb1306abd9911b0b5a03983a62f98922ddc55fb937db1db2c0ab9f87ec9503b14a77c2d7ba93217b5aefa42db8aa2b19200581cd99e7536eaea5b0f24bb6d5382608cc3b09c229a5ae9a77373bce57387f28bfdaba9e256c69d3ef92ca4733c1f4d3d5ea9535bc37fce3afb331e56368b6ab1ec740db0866a39a26fc551b98636c43ac03befd7d89f6c460fb778b610e9367f0c9eb6863bb5b2c96b0b70697117ee0b48e52ea8f283b0afc42ba8e0a5c4f0ec422a76be3fa32744824f51f62d568b153b2f19c0e8f0d068a91ada6a57423c27868be7eabefbae6d5e2318d51baae3275aef08b63a89d16f71ecf2662271232cbfdb9f08fed26cae6ca2a2f9c1000b1bf50b26f00bb8661756de5371b9b6876aea2a6a442248fe25dccf824b49171d6ab313755e8b4a9cab5297193cb6ada8d928a79c1ebe6c31d4f24f4dcd5b2b6818f6fa9ab3d8f00a56fc05f2643138b5b23a498b73b9cccd70034d870e2ac9c9062c36979339b0a8e467c36923752b9a4dac083949ecfd1230f279b42ce66d89c4ce681e6ecf7742fd5d4b9fa3d944ecdf3daf3ff93b16e6e841c565603f277854316ddd64f4c58e820a7cad2c717005c4697201e1d4b26e59a464bca4e2e596b0731a7bc31ab79d9ec2e4d8bc3b17c531cae8e56e4e71f2126e0341e27792bcc78be22fc6f1aacaf9059f532ba4eeb959f451566ae76c5e571cfef8469f8b5cd69abae4b0d7ff007fe475b1af643b578448f366b6aa324ffbc17a676eb6363da530cf0ce29eae3197316dc39bd45794ba50b9b234d9ec75c11d617aeb93eda4a7da8d99a5ad85cde7834473b06f63c0d47bd4f8a4eca270beb78c7062f0670b233aa5f256710d84a2a1d8d9e8a6ac2d9e495b23aa325eee1b801d5a953d4b053609c9e4d1c1309608292425e74b9ca6fa77a96da3c3e4c42884709687b5d98663a1598f2bf8fc7b3bb1d1e010cad7e2359f28d06fcdc77b927bf70f5af2754f55a9f156a71fc5a5f97f27aad45f1a3c3f66ee137c1e7db924a9ed9775a697acb54113af7a7986ceea6a86c8db903423ac2fa357c491f3c84b6cb733d1bc9de3384d26cc451d6d653452b5eebb6578046a9aedfed7e1cda5750514d4f53154d3c8d7be2b3b9b76997d4755923b254c0d746ecc08b8b14ce473626b9ef36016abf08a9deef94be7277d6be4abd9823b1bb5e36120d85d43905ae046fde13ea9799a473ddbfdc9a3996248dd75b56bdcd9c09d9ba6da3d63b435031be4c66a9a619cd4d235c2daea6d758cd7e1d88c545454587534f5313097c8236170cc78e8acbc896dc52370dfeee6372b63682453c921b35c0ef613c35dddeb50c0b0e8b039ebe474ac6d13ecf63dce1668e209ec5e1e70bb43af8589652cff00f0f5118c35aa36a7f187fc19cd1e0dfddae4f31ac5f1261656d5533e086378b16671940ef37bac4e16742d6dcb49e5a76ea0c7a6870cc2a4e730ea77e77ca374af1a69d816635154da7a6966934631a49ed5eaf46e7252baee1cbff48e0789ce33b235d3ca5c7db09b302db59563fc2efca2bd53c986bc9fe05f556fbd7917939aa7d6e3b57512905cf321d380e6ce8bd75c97fcdfe05f556fbd795d4c94ed9497ecf5fa583ae98c5fc22d282082c26702082080093a8f1797cd3ec4a24ea3c5e5f34fb101e43c7fe424ef2b32adf182b4dc7fe424ef2b32adf18280b2607e4a93d2c5f8dabbb6601dad9c126dcecbb8db8f5ae607e4a93d2c5f8da86dc3a466d4d498981ee32cadb11d6566d3fbb1306a566a90ce9cb038c6e79758663cd8ddebe27827d438a3b0fa964b10923fa6c73ac6d7d6d6dc546e49a58da086f34d3763a3361eb4bc1218a27f36e60692730de00e26fd6bd1ce2ad8384d70cf395db2a2c56d6f124cd1b69f68f073b010e17b30676d5cf54ca9ab356f682d2c1a0046845fdea7f6b79578aa7013060f04b16255ac6baae773816b1f9407067d9bd63b059acbb0b436da0de51c5c1d3407ef5ad4f86535a514b846d6a7c5f5374e539bcca5db0c333dc49d493724a5a28c91a6e08b10b2730d86845c2eb411c49c992fb23b4988ecae2ecc430c90070e8c91bbc191bd442dc68b977c19f48d357865745536d58ccaf6dfb1d71ec5e79796bded6c40971d2c35b944ca46f1bc5c7685afa8d153a8799766c69f5d769e3883e0d17954e502b76adb15346df82e1ba3c401d7738f5b8f1eee0b3ba6a8e69f9034923721a9df7d137905a4bdb5e0b35754288edad61182cb277b72b5e58f1b50667b9af696381bd8ee560d96da4c4f662bfe17844fcdb9c32be377498f1da157e3787c60bec1e342027c282aaedb53bdf76b1e328be8ef04e9d6b249426b6cf930a73ae5ba1c346975fcb7e3d2d118e9e8a869e722c66b39d63d61a4dbedbac9b14c56ab12c4a4a9afa892a6aa637748f3bcfb949bb09ad746f736965735a2e6cdddbbf50a3a7c03126324a89a91f1c3102e739c6d60081ed216b2a69a39ad60db77dfa858b5b68486a3b52f4fa1b6fba6b01e71d61f7ef4bc05c5e5a065ed2b6e3234e687d0cb2439b9b91ccbf52e19dd2bddce48e79e17dc9ee1d85bb10a291cc9b2d466cac665d1c40b9d6fa6893a8c267c3e9a292731fc65b40eb9171717ef53e626f192ad4f667e0681a2c736e481049b009690d8d826ef71bf52966388601cddc354f1d5952fa5e6a4a899d1db46190968f55d3fd9ca5a1aaa7a87e20f2dcb2471b48758f483b70e27a213a9705c3e189ce9ab64b3c0311cad1705c075efb1fb485af3bab8bfc8d9ae8b67e82af24c1accd239ad8982e493b95231fc70d7cc44320104770d66ecda6f533ca0b6363a8e9e8a6924825cc0e616cc41b5c81b87da3d828525a37ba32f05a7f988dcb8fadd76ff00c6be8ef787f872adefb3b343e48dce756cce71bb8f384dfd195ec6e4bfe6ff0002faab7debc71c90bc3eae4205b493f2caf63f25ff0037f817d55bef5c497677d745a5041050481041040049d4f8b4be61f62512753e2d2f987d880f2163de2efef2b33adf182b4bc77c5dfde56695be3050165c07c96ff4b17e36aeedbff15cf70e239e9746bac4f4b721808ff65bfd2c5f8da8bb70c126d65434826d34a74f3966d3fbb1c18353ed488e0e8c831481c23fe50c7745a3b7aca94d9b14efc598d90c4eb46f1135e1bcd67ca72875ec0eb6dfa13bd4435cf3903242c03c16dba2575ae748e73cb8bda379f042f45f183ce75c9a03705c0a3cf23e58007173896d4003fc44345fc1e03f9b82795d4180d2d118a60d649cdc92c4de71d7248686927ac804d8f6aa05374c0d45b769b82725ee70b3c9b8d2e4f52cb1a9bc3c98676ae78e43c76319b0ddc519a08b8b92b90eeff0f128e379b5d6d2349f639c1a714389d3d4b8db9a903efdc55abfbcf848822be1a1cf1632031b48be53b8f0198e83a9534902f9dbf6a2169d7422c2f70ab2829765e164a3c227b1ec529f10a48594f0ba2cb23dc06500652741dfdbd8ab7587230748837e1bd292bc43192e764b8d09d5474d266039cbdb78b71ed546d416117845ce5964899dadb39c6cf1a9b5ad656d876be53192fa38416968194e4cad0ebb740386ebf1e375408def3259a2cd1ab8f504e2291ad71c85c49d1c0f5f051b94fb2ce0e1e92ec36b5ee90b7e0b4c4670e172e234005bff0028ef5198a6d355d6beb227c51f37306b4b6c5c465bdb526e77a848a6cd6e70b5a5a4df33bff6116a6663aa3331f958e68b12354718e328aa94f386c33985f19731f91c2d717ba7b4a5eddee0fb024f5951e2d7ccc3661ede09dc2324cd25ee0d235eaee5920f93158b8c12d4d89d4d1c4e6524a63639c1f6005ee376a516a712aaad6b4554ce9034dc03c146ba41c0a426aa644d2e7c8d6b471255db8ae598a3093fc50ee49da1c413aa6d555b0d3c79a67868b6f2555f17da58e1ceca1f8c90e85e4683bbad54aa6ae6a9973cf23a471eb5ced478942b7b63cb3ada5f0894d6eb3845bf10dae674a2a0617bafe138582ae565455d5d407be592491e2fd2b803b82469e95d38360e8edfcc7408398c3048f12b43da7a2d26e6dc571eed4d977333b7469aaa7882128e69a0f8d0e04df2919b5fb11a9e574b2b41667b6a7a20a6ce0eb816d4ee45639d1484825ae6f56842d5cb36f6a355e4c1d1bf1499d1001967e805bfea8af5ff0025ff0037f817d55bef5e37e481e64ab95c6f73ce5efe8caf64725ff37f817d55bef58e4f2644b08b4a0820a0902082080093a9f1697cc3ec4a24ea35a7947f84fb101e41c77c5dfde56695be3056958ef8bc9de7dab34abf18777a02cf80f92dfe962fc6d5cdb6fe2da8162ebcb28b0e3d24301f25bfd2c5f8dab9b6d6fef6d4defacb2eef3966d3fbb1306a7da91125a497f5dec3b076251b1b5c080db3c0e1ef48589258c0f1a96ddc6df7a73187365b17b4b6e45d9a85e8a2b2cf392e07148cb33c2d08d08ec4f46a7311a1d534a51721ae3a0d37dadea5214f0dda4e999a3715b95a78346d787c9c8dba1b6e3c11846e711607ed4b865cf6a5830c401373dcb3a89ab2b06b3c65962dcd71d5bd32adab652b435c4c93bfc18c9f6d91b18ace65cf6b3c61c375ef947ad40361a833f3d52f70cb6ca6d724f605a975db5e228ddd3d1ba3ba6f8ff23e619a5d6a2ee71ebdc8b20bdec0000ebadd3f2c73628cca41046606dc1347001c403a5955c70b9322967a1bfc2a31198da5c250eb875f877239748f376b6c6f7b5f7a8b9ec24e81bbb5b76a93a6cdf076e56e97cdc772d7849b78362c828a4c734a5b23df13da1a2dadc680a52aa4260b90018ba21cd75ee13295ed7ca1ce6b8926c329f6a7cd898610ee71a41d0b7f559d3ed1af3c2698e28e11f076bb3375e245b55d924c8cb685337d532284ccf39231e0b49f074550c671e74d78a8ce48f8bb8955bb530a239916a3473d44b8e89ac5f68a3a76b994f67cdbbb07eaaa3515b355c8e927792e3bbb1342eb9b942f65c2bf593bdf3d7e8f43a7d1d742c457228356971e08f1547313b5f05f416bbb7a44b886e9620ae58daf6d3ad6aeec3c9b3824dd886782406639cee045efeb4d8f3d567396991da0b8b04e2868a37e59656c86371b036d09ef56185f474f1f3109c80801d2e41985f7db8acea2e6b3266294945e122b4da2a892401c5b1b81b589d4234542c7389739f2b81e9168d2dfaab5c78561b2cf144df84191dd21239bd071ea2772254e0559ce4628de662ef95d3a3ffbd159e9da594555ebe782639262c3884dcdc66368e70653c3e2caf62f25ff0037f817d55bef5e43e4da9e4a4c6aa619ed9c67bd8dff00ea8af5e725ff0037f817d55bef5a925866d45a6b82d282082a96020820800893fc849e69f623a24ff21279a7d880f1fe3be2f279c7dab34ab1fbc3bbd6958f7c849e71f6acdaafc60a02cb80f92dfe962fc6d5ddb16b9fb63386e9f1d2dcf56ab980f92dfe962fc6d47daf8e49b6beaa38af99d24a34e1d259f4ab36c7ecd7d53c5327fc119153bdcd73b9a2e8ef625ce4f28a9d97c914848dfa0de9f51e1e20664ce4b40e3ee09d4704710b4605fbb55eb61435cb3c75ba94f290c61a52c9a42750e1a34689ec3039d2173736eb58a731b00d6d6246a92acc429e85bd2766908d19d6b3a4a2b9355ce763c450b18c42de71da01bc9e0a2713c5d91b4b28c82fb1f8cb5c0ee5175388d5d71118716b49d05ac3fe2976d1b5b1b5cfbcb6172d02f75827739e540d9af4cabc3b797fa185346e9c3aa1f7e71fa663adcf5ae49540d88735e2d62412014ee59247c7d085b70400d3bec780095760950f682c2c61df63a0fb02d6d9292c4393a11fc9e5a118c111db3922db89de3822c84318d37cc0f0bea11a68a7a56864ad2081606f70534710012e03dca64f6ac329b39e46759acba348b6e006aa76a0361673905dd19841161b956aae5bcb9a204349e883d4b54e48760f11dbb6cb77fc170f8c18e6aa2dcd73becc1c4d8ad48dd0af2e4cd99d139a8a8ac99fd2b98f7d8bac7b78a76f31c4dcc0939c1cdae975e9997f67bd987523591566251ced6d849ce0209eb2db2f35f2c5b3189ec1e28dc2ab097c32b4ba1a86821b2b6fbfbfac2c50d757878ed1965e1f66e59e8a56d06246a5c2084fc5b77db89508458ebbd076a539c3a82a310aa8e9e99b792420341d2eb936d8ec939c8ecd3528250821b251a0324697b730bded7deb6fd9cd8fc3708a4673b0c55352402f9246df5ec07704ae37b3186623092da6861a86f83246d035ed1b8ae6ad7d7bf6e383d1affa76f756fdcb3fa31a86923ad9f2c0cc9703a25d6b153f478447cdbe37c2d2c6f44bb35fbee8957845453cd3327753b5f1f45c48b69d76b28da2c4a7a199ae8dd99a05835da85d9828ae66b867979a9f2976818950d4e1d591d38748e8dc740ce29d49b2f8dd4bb9e187557c1c817e8d9d94766f5a5727987c95749fda52b1d2197e4d992e1b626e42d459b2b8949442a43630d2ce70349e91d2fbadbd7521e1d4ecdf74f19e91a72d5589ed84738ecf2dc35104320a761999266cb6b59d7ddadd4d418c88e965a6aa7c94b2b010240df0bbb8856ee57b66e5870f6e2b1d3ba0a88dc1d25db94b9bbafea593cf5b2553e31339800e205b55a57c65a59b8379ff007366b6af8a960d27931a892ab169e699e647b83fa4779f8a3bd7aff92ff9bfc0beaadf7af1cf249e392124124484db87c595ec6e4bff0080302faab7deb9b279793763c2c16941041549020820800893fc849e69f623a24ff21279a7d880f1ee3c7e224f38fb566d567f782b49c7fe424f38fb566b57e307bd0167c07c96ff004b17e36a7f8c8cdb773d8dbe3263ff009930c07c98ef4b17e6354862ff00c773f9f37b42dad17f710fb34fc43fb69fd0f4b49e95b44ac103ea25645035cf95e6cd6b05c93d412134cd8a3bb88df602faa96d8dad14bb4984553f46c7551b9d7eacc2ff0072f6b296136b9691e3345479b62ddd0862b85d7e19cdfc3e927a6e735673ac2dcddd750588524556c22568cc3c17710b69fda16be924aec2a8a37e6ab85ae91e07f2b5d6b7e12b1d93ad57476ff57429ce38c9e82ea9552db1e88da6a7114391a1a0b7f94e841f5ef426a9a28ba334a43add202e4fdc857bf9a7990976468b90dde556e79447539ecdb3fa5a1bdf5e2b4efb3c97b5239d1d3ef9bcb349d89d95afc7d9355e0f40ea98d966df30196fde7b15b63e4c76aa523f708d83add3b3f54e3900ad929b68a1a3848e62a29ce71d761707dbf6ad927a91cebef5d516b9b6562d1d5f88dda39f9704b18c9dbd2e9213af3c9e6fdb3d93c4f010d831781b1f3cd2637b5c1cd36ed0b37abbb4169167374b2f4bf2f0e0366b067667bc999dd278e96e5e69c541f844ee03407559ff00a87a8d3ab64b9357534aaecc223e828a5c46b29e961d649a46c6c1da4d97b5ea68c727db0b84506079636d3b98c792d079c7117713de6e579379256b24e52766e397c035b1dfed5ec2e54d99b03807f9c3d85729c55b7c2b974c8d6ce55682db60f124b863fd98daaa5c6236c6f222abe2c277f68548fda7b6661da0e4b2bea3234d5e1845542fb6a00d1c3d63d8156b01ab8e1c7a9e99d98ccef02dc1dc1695ca11963e4a368dd881198504b7bf9a6cb8565eead74f4786f6f3bbe3ebecdff075acb7410d46b161cbafdb5fb3e75c6e31ca1c40ccde0568bc9883595953505bf20c01bd84aa152514b546f6201ebe3dcb4ee4d299949157440dde5cd27ec5b36424eb6fe09d7eaa5a5abcdafb4d3ffd9af6054f470e11fda58a4667e71e62829c38b73116cce2470170159309c1f06c628c5553d1f34e6bb249117976536b820f5155b8e3353b2f412c3d36533e48650352c25d9813d841dfd8ae3b074aea6c2aa2598163aa1ed746d3bcb403adbd7f72c5e2de1da4abc0657f567ef3ce73d1d4d2f8feab5baf8b84bf06baf8e8c4b974c068f0ec6a2750c2d8e5aaa6bbac3a24b491afdcb0d923a863017c6f0ddc090bd11fb41d64276828290bb2ca294b890edc0b8eff00b1628d753443238fc2049e0b9a7f5ddaaaf82a95be1f4ca6f9c18f5b3c6a2785f27aaf914a38a0a39db2dc369a8dae25a3536deab92eda62271ee70d64d981ce2907c9e4beeb6ebdb8ef56ee43648abe9eb1d9818a7a265cdf783a150ede4db1166d298a6653b291aeb7c34ca3a51dfa89bdedea5d9f15e751f8f585fe0d3d13ff004b2fbcb14e5e1914f474f91bf155387bdc43bb578eeee61360403a6a17af7f68faca6a2c2e27534ad708a89f1372b81b126c068bc805e72d88d7b7826b1e28a62fbc3ff245197658fe33fec6a1c90c8e96aa473b7da4fcb2bd8fc976bc9fe05f556fbd78d791bd6793ff00b9f9657b2792df9bec07eaadf7ae61ba5a9041040041041001127f9093cd3ec47449fe424f34fb101e3dc7fe424f38fb566b57f2e56958ff00c849e71f6acd6afe5ca02d1b3fe4b7fa68bf31abbb6133e9f6beae48e56c4ecf30cce170355cd9ff0026387f9d17e63521b7bcc0daba8f853dcc673d2d8817b1cda2cda678b62d18352b35490919e3a58db2be5965320e8cb636bf6a9bc2ea39ca182469b9b6fed0aa33d75442de6e37b5f083d078dc41ff00dee52bb3b5ef797534da3bc26771175eb3497a5628b7d9c0aeb70cb66e15946ce51366296a688b3fb7e8182196326c656f0ff87ad30dace4c67d9ed96fed69b116be4606f3b07356b1240b075f85fa951b09c56b306ae65661d3be0a866e7378f61eb0acdb4bca762d8decdcb86e2315318df6cd235a438d8dfb94ca8d4e9ec4aa7fe9e72ff846ef995ca2dcfb331c7e5e6dcde916df4b855e9182c6e45efa0eb5255839d983e6cee0fd6dd5dc9998d8da919aed61dd7d4ad3d4c9cec6fe0d58348d9b914c569a8f6a30da8a995b144f8dd16671d0122c2e7bd7a239f829ea0cb3e334dcd5c90c2f681f6dd78bb0dae8e99c607389a771bb1c46e3d454abc822f7197aeeafa8d0435d8b3761a5866dd1aaf2e38c1b0f2f7b4387d7c5875050d4c552f8dce964746e0e6b45ac05c715e75c42673f9d03c17389ef53389d48653bdac71d742e0ab85ecb104ebc0055b6b869ea8d307d182db7ce9ee1decfe22702c6b0fc48ebf059db31b7615ed4db4a938e6c8e1d5b83c6fac655163e1e685ef98687b02f04e2b50f0ce6f3eafd091f456b1c8872e526c2d3c782e3704d598083f14e61bc94f73ad81dedd6f65c5becdb62947b46f57a785d53aee598cbb3d41b05b0f1606df876225b3e2d2749ceded8efc1bfaaaafed3db470617c9ecb84365636bb1670858ccd6390105eeeeb69eb4d713fda3f6323a22fc205762354474606c063b1ed73b41eabaf32edeeda56edc6d3546215d56e0f68b3216b7a11301f05a56bd556e79674351a894fbf8e3e97c2440d3d2f354ede7646b1c3a4486dedf7a9bd8fc49945531992560825bb75b020df8fad57e4aa7e7f83b1ade993d2704dec0388d1a58350dbddf75b32dad389ceba857c1c27f26f185e31598548e970ea87c2e70b3b2d8e61da0ad4b04ac750ecc7f6ae3b55673d9f089a594db2b6da0ecd2da2f28506d6e218746c0c8d93431100b6506c7b2fd49f6d6edfed06d87314f54e0da216fdd6201ad246e3db6ed5e6bc4bc36ed6edd3c5e219cb29e05a697874e73b1e7fedff914dbada0a5da3da7abc46aa6765988e6581d6c8c6e8dfbb7e8a96f99d0d4f3946d0034975c9b8212f5b4d21323a42d6bb40d6b9b7769aa8e642ee93ae3281d7aaee4231a611ae0b0a26f7a9b949e726abc9d6d5b5f4a70aaa95d4e4022191b2583b5dc55c247b98d2ea87901a2e5f21dc3ad60d4724b4f4e6a69ecc7464b6c4dee3d69b56d5cd3451e69a5ca46b1979201ec0bb9a6f197a7af6ca3939f77872b67ba2f08b6f28bb531e212b2830f78929627667beda3ddd9d81524ba4a875ad99c77003545732c00759a6d71637ba2d9c002410d3bbb571f53a89ea2c7399d0a6a8d515089a77236d2da8943810473ba1f4657b2392df9bec07eaadf7af1b723649a8949d7e53f2caf64f25bf37d80fd55bef5aacce5a9041040041041001127f9093cd3ec47449fe424f34fb101e3dc7fe424f38fb566b57f2e56938ffc84be71f6acd6afc60a02d3b3fe4e77a68bf1b536e50e2867da8a88ea1ee635d3480168beb9939d9ef273bd345f8da93dbaa67d5ed75444cd099a537ea19b7acb42dd6258c986f78adbce080a7c3aa5904ac2d7986337b8d43ba8fdeb86590c521632c6370170db11eb4e2b2b2b29e66416114510b30b45b37693c5165ae7323b7c5875c0366efeb5dd5b62b878384a537cb59178f19ac636d331a5bb848f69174ddd57515320e7b339e7c1cba35bea49493c4f735cf0e79b6a49de9496461aa6977c89b020705776cdac4a5944be7e0eb5ed7c65ef0fe7187791a7d8909e412bef2c8459ba068e09d4a59ccfc5b4dfdaa3e469d41bb4dbaaca9378e08af0de470c17058dcee21da022c51e176471639c6c6e2c49b7a9231bdae7b1ad6104917beabbd10e2d37b83c5562f0598fa5787d2b8c8eb068b05052cad6349360d1add38a9a83cdb98068abb8854f38431a741bfbd6b6aae4919f4ba76fb119657cd39b1bdf41dca4f0fc24cd67d4683e8a8aa7d666d81f52b1c12b58739808735a2eebe5cc7b8ad3a2119bdd23a5637158892d41153d2372358c61b5f311bc77a6719a18db24d1b038497be5d4dff45ca9a80f85d136cd6ff36675f28dfa2466ac928443143031c5c49d59adb4ea5bd39456125c1ab18bff00f433e99edcad631b2b8ee7bc588495450fc1e01374677ebd1cda0edd12d89d6b19901395a4f03f6a8a6c32d6ca723c860b9249d4b7b160b36e708cb0dcd7248c0d92a199656c4c6ddadb17017d785d3baa829a7b06e689d1745a0100388bf1ba8834ee74967b5cf6971b3c36f7ddc112b39ba698c2c939c6b5b700d886e9eed546e5159c16db97c31dd748ea595b33a46481c72dad7007fc5327cd6a3d6266a7a4e0d172ddfbfad20656bcb039f61abad9ae2fc3dc93e6ccb3343e4b1702438eeee58253cf46451c0ad759d140d883b41775cf13d6983dc72061b100e89cd5543cfc4b8b431ba10cfe63d69abc01a0eabef58a6f3d19120a081bd1daecc1b9757b4dc377848a334963aed3621632c6a3c8e12ea9949b5cf3bb85bfeacaf64725bf37d80fd55bef5e38e475ee92aa673b571e72ff00f8657b1f92df9bec07eaadf7a824b520820800820820024ea3e424f34fb12893a9f1797cd3ec4078f71ff9093ce3ed59ad5f8c1ef5a463be2f279c7dab37abf973de80b4ecf7939de962fc6d4d794425bb51525a2e79e93f1275b3fe4e77a68bf1b523b7af747b593c8db742695daf615968f7118aff006d911585a5e2274cd7f36d19adb81ea4d842666ccd7004b48b1000e09b35ee6e77b091b89245c95c8ded20973f2b735c93d4bb0e69b38ca0d2e18a0616c91c4c73aee1639b8ffc13b86ff080c2438df828caaab85b52d3ceb081d46e93189c1135ae125ddb88b705456c53e596754e6ba252a9ee8e3b37a277a4a1731e1a09fe5e3c4a879b158dda07badd564ddf89308b069d371baa4b530ce4c90d2cf18c12f35574c746d6dc5235158e79bdc050b357c8fbd8589e29bbe791edb39d70b5e5aa4ba3661a4f963eaea973ba0d3bf7a8f2114bcf5a198ad49cf7bcb37210d8b0875083186bed77df46a73055c85c2e48d73170eaea51ed95ed3769b1eb463348ef09e4f7948cdc7a0e39ec9a64c1d4ee2d7b5ad3a35ad69b9ec2b91c377974ceb9b0b02edca1093c095ccc7ac9593ce7f253cb26aa6389d1d9f24719bddb6dff0067048bea601669735ee0d02e4923ff009516493bd1485576f392ca0be49993167b29b988b26571bb881d251ed9e363f3866677f886964d82eaacac94bb25412e83f380e6b8d0fdcb99cdee09ba2ae1d1532cb60eb9d98ae0257029ed9ac07fb6a0c4a4e7b9af8240651a5f31eafb95abae564b6c7b2252515964114102bad6971b054c16350e463e5a4ee97f2caf65725bf37d80fd55bef5e35e467e5a4ee93f2caf65725bf37d80fd55bef405a90410400410410012753e2f2f987d89449d4f8bcbe61f6203c778ef8b49e71f6ace2abe5dcb47c7bc5a4f38fb566f55f2eeef405a767b5c39de9a2fc6d4c794c246d155fa693da9f6cef935de9a2fc6d4c794b706ed255170b8e7a407fa95ebf518edf4b2ae257084df5690a0ab2a5f312d0488c6e174feb25632191ad945eda0e2754f793ec086398ccbceb735351c0faa99bf49ade1f7ac9abd42ae396f8463d169fcc9a5fb2b5b85ca2df82bee2b3d7ed2e0aff80601147491bc98e7600086b6f70a83c5615e66d529c719372e8d719b8d72dc8e95c0502b8a0c6750e082e203a85900ba80175d5c5d5240a431be6959144333e4706b475926c1483b04ab74ae6d206d5b596ccf8750092458f6e8547d3bc473c6f734b9ad702407652477f0ef566fedfa6697b618a57ccf01a2a252d6b89d757581eb1a8d4d9010f4387b649b9aab97987bda0c4dcb72f24d8278ed97ae0d01cc747212fe84ad2d2403616efd7ec4cf17af64f8ecb574ed6f36d9073605ed66eef6252971da9a782481818237971275bdddeb401a2c2be0d585958d1286c464e6dafcb9ba594027875a732e03199a53ce3e10d7191d11b3cb23b9b1cc342744c2ab1591d8819e071204622f8c00e66816d46e447e335ee703f087021f9c1000b1fd35ddb9402729302a782625d2ba593239cdbb406e52d75afda2d7b28fc7e38f0c068694e764803dee7b7a40824686c34d2feb4cdf8c55ba81d4ae792d7c86473b31b927d76e2994b2c93383a691ef700002e37d0212115db636aa1a5c26bb980de7a589d1d417c81a18de0fb711a9ddd8a92948679216ca23710246e47768bdedf7298ce707ba0f0c622f892ca3b566235329805a2cc728ec44690182e75ba22e82a097c9a97238009a620e9697f2caf64f25bf37d817d55bef5e35e46fe526ee97f2caf657259f37d817d55bef420b520820800820820024ea7c5e5f30fb12893a9f1797cc3ec4078eb1ef1693ce3ed59bd51f8f72d231ef1693ce3ed59bd57cbb9016ad9df26bbd2c5f8daa1f95d716e3b545a48fde1fbbbd4c6cef935de962fc6d50dcaff96aafeb0f3f7a033b7b8937255ab938da08b02c6671546d4b5b4efa495d6f003adaaa995c54b211b62e32e990d7184f06a124f4bb2782d5b20c6fe1e268df1d35330f4599b7b880b30e2820565f326e2a1279c18eaabcbce5e5b015c5d5d6b1ce360154ca150462d20ee478e173c80389d1303226175387d364b5dc0dcd92f53491c1087190971dc00d15d56d95dc8608272218cc598bec524d6b44801d45b551b704e44c6f46cc950f8f21018d04ff0031e0928dcdb10fddd61180886f47e6ddc5bdabae000d083ea5004d028d60b9a2824e05d408b6a85fb10005ac6fbf82e0470dcce0058f140f44f685380148b22a54bf30370dd4df44475b4b7ad40351e467c39bba5fcb2bd95c96fcdf603f556fbd78d7919f0a73d4d94fff00d457b2b92ed393fc047ffc461405a90410400410410012751f21279a7d89449cff0021279a7d880f1ee3cdfdde5ef3ed59a5511cfbbbd69d8e78bce3a8959855e950eef405af677c9aef4b17e36a8be55a3e731cad6f1e764b7f5293d9e36c35dd92c47ff3b532e5307fce7ab07fed9fed4065f6e0b89de214e6197334741daf726880e2e81742c8e340a704642a71130b9a5a41ebd11a07451ff2e67116b14b33a6c749a073740d1c564843255c84e22d70264b10d1d7a2771bd950d0d6c362c1724714c258de64024de78f5254cbccc6d6b05dfaf4acaf0963b455c722d254c71c591d1b4c9d6d29acf331e7a20f7148963dce2434ebd8bbccc87731df62a4ecddc1651c0517b822c8cd05ce2e79dda9ed4a9a77168b30877124a1cc3f2652003d6b1961136bb8e96bae346670164b1a721bbc5c2e086dbc941838e7e6e8b5b61b85cf048ebaf6276f00803801b9265a38046c08971205cee1608a952d0b877a8244f5466db29befe1aae945280e8716bae171ce2f71738924f15cbae203a8590e2ba80d5791d8c8a0c52a3f961a79de7fa32fff00905ecfd8084d36c4e0511162da38affd21790f935a2741b0f36569e7b149a3a38bace67873bee685ed3c3a9c52e1f4d4e341144d67d82c80748208200208208008b28cd13c758211903b8a03c81b42dcadab6eeb3dc3ef595d59fde1ddeb5de501a28f19c5e9dc6c5b3beddc4923dab20aa7074ee23ad0167c1a4cb84d41bf8203fec20a272a4d2ddabac1fe6bfda99e09287c72417f948dc3ee527caa373e331d50f02a2364c0f5e6634fea80a43dad7b4870b83c147cb87464dd8e2d1d4a4570a0235b86f5c9f725598730784e253c5d4037f824401d09eab9dc8474f1b082d6d88dc52e570a9cb23013237e8845734750463bd70a36d9210d86e45473bd14ee50021b5ef74576bb96d4dd8fc0f13c3707a7c329591e33053d2d6cec24915313c0cfa76145c4e9311c32a28a1d99c0e9a5a692a26e7e5f833642db4ee6db31dd603720315e6dcf73435ae25da0006f5df82d4ba48a3641299253663721bb8f675ada71b6d0c4ea48691d052e25232a9b45290031aee775ee36d01557a67d2524385d4e25591c4fa1a5941b3839e2573c81a5f53bca033aaa826a699f0d4c6f8a661b398f1620f684dcab56ddd5d062151495d4353cf48f88327ccdcaeccdd3311da15590047223b7a3908a48bee4014a29473c1148401105d42c80e27b84d0cb896234f494ed2e9257868037a429a9e5a999b1411b9f23b735a2eb54e4eb66ea21ac8a9b0e8be138ed574185a2e2069de7bfb782035ce49b679b5fb5d86d1c5d2c3f008f9d99e356baa0dacdf55bff0029eb5e91553e4e764e0d90d9e8e8a3224aa93e32a66fa6f3bfd4382b60dc8008208200208208008208203cbffb49509c276a3e185b682be30f69e199a0070f61f5ac01f267793dabdc3cb46c57f7e36366a3a768fed2a73cf52bbfc56d5beb1a7d8bc395504d4b51241511be29a3716bd8f162d23782100e68aa8d3d546f07407557bda689b8cec1d06214facd87b8d24ed1bc3474a377ada6dea59b9bd95b362b1c8e8df3d3d734be8aa23e66a1837b99c1c3fc4d3723bca02ae0dd02a5f68b0776135439b91b3d1cbd28276782f6fbbb944a03882eae2038570ae95c26c8021deb851f7844ca7802500528a772584123b730a37c1243bcb07fbc100e86d162ccae82ae2ad9a2a982114f1c919ca5b18160dd3b12271ec5f9b923fed3ad0c7b9cf7344ce00b89b936bf12931462fd2980f5251b4317f348e3dc10116e2e7389738b8f6a49f6bab04585b64b7374f3ca7a8053787ec5e33596345b3d884c0f114ef23d880a15ae8736f71b358e3ea5b2e1fc906db555b9bd9c310eb99d1c76f539d7564a2e4136c67b73f261d4a0f032e623ec080f3d368aa9fe040f3ea476e0f5aeff00aab779017a868bf674c41d635f8f40deb1144e3ed2a768ff00674c21a41acc66b64eb0c635b7fb6e80f24b301a87019e4899ebba5d9b3cd362faa16ec6af66d0f20fb1905b9e8abaa08fa7505a0ff4d958b0fe4af62e84830e0148e238ca5d2fe22501e176ecfd202019667bba8002ea670bd87a8af2d1458357d493bb2b5c47b17bbe9367305a203e0784d0416ddcdd3b5bee5251c4c8c598c6b7b85901e52d8ae437686b5ed35b04382d11f09cfb3e43dcd07da42f43ec26c360fb1d4b970e873d5bdb692aa41f18ff00d0760569ef410034ba082080082082002082080082ef3551f462feb3fa21cd547d18bfacfe880e058f72cfc8d52ed967c57067b2931c03a571665479dd47b7ed5b173551f422feb3fa2ef3551f422feb3fa203e776d36cde31b2f881a2c72826a4986ecede8bc75b4ee21440716b839a6ce1a8217d1bc53078715a6753e2545475503b7c737487ded59e631c83ec7625239e30a148f3ff0076a97347d96280f1dd2e332c70985eeccc3bdae199a7d5c0f684ce69237b89616345f70bd97adfff00a6ed94bdf357777c2bff00f0a4e8bf67fd8da6702ec39f391ff6954ef704078c6ed1bdc3d41758d0f3a1713d417bba83929d92a120c1b37865c7190b9fed055868766e828001458561b05bfece30dfff00140780e8700c5ab88f816138854df773703ddec0ac741c976dad691cd6ccd6b1a78cac0cfc442f750a7981e8c708ee79fd11b9aa8fa117f59fd101e34a1e4276e6a48cf454b4ed3c659dba7a85d58687f672da2932fc3315a082fbf2e67d97aab9aa8fa117f59fd10314e7f922feb3fa203ceb43fb3541a1aeda499d7ded869837ef2e3ec562a0fd9db642020d5546295246f0666b01fb1b75b473351f462feb3fa21cd547d18bfacfe880cee8791ad86a4032e08c948e334af7fb4a9fa1d86d98a100536058732dd5034fb55979aa8fa317f59fd10e6aa3e8c5fd67f44034a6a0a4a6b7c1e9a0880fa1181ec4e9779aa8fa317f59fd10e6aa3e8c5fd67f4407100bbcd547d18bfacfe8873551f462feb3fa2039742ebbcd547d18bfacfe8873551f462feb3fa2038bb7439aa8fa317f59fd10e6aa3e8c5fd67f44072e82ef3551f462feb3fa21cd547d18bfacfe880e20bbcd547d18bfacfe8873551f462feb3fa203882ef3551f462feb3fa21cd547d18bfacfe880e20bbcd547d18bfacfe8873551f462feb3fa203882ef3551f462feb3fa21cd547d18bfacfe880fffd9, 'Best phone of Nokia company', 300, 10, NULL);
INSERT INTO `product` (`product_id`, `productname`, `productimage`, `description`, `price`, `quantity`, `product_name`) VALUES
(2, 'Sony Experia S 10', 0xffd8ffe000104a46494600010100000100010000ffdb00430006040506050406060506070706080a100a0a09090a140e0f0c1017141818171416161a1d251f1a1b231c1616202c20232627292a29191f2d302d283025282928ffdb0043010707070a080a130a0a13281a161a2828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828282828ffc0001108020e013c03012200021101031101ffc4001d000001040301010000000000000000000000050607080103040209ffc4005f1000010302010508090f0906040503050001000203041105061221314107081322516171b31432378191a1c1c2d215233536425253567273759395b1d1171833548292b2e1f016246294a2d3344374e3636584a3f125265544466483c3ffc4001b01010002030101000000000000000000000003040102050607ffc4003a1100020201030204020705080300000000000102031104123121410522325113911423617181a1b106163342532434355272c1d1f062e1f1ffda000c03010002110311003f00b5284210021084008421002108400842100210840084210021084008421002108400842100210840084210021084008421002108400842100210840084210021084008421002108400842100210840084dfca9cb4c9cc948cbb28318a4a37e6e7085cece95c2f6bb636ddee1d00a8ef10df0b92b0caf650506355e076b2c74ed8d8efdf707785a809910a019b7c6c7a7b1f24aadfc9c256359f734ae7fce3aa3e269fb4c7fb498058642af3f9c754fc4c3f698ff00691f9c754fc4c3f698ff0069300b0c855e0ef8ea9f8987ed31fed2cfe71d53f130fda63fda4c02c321578fce3aa7e261fb4ffed2cfe71d53f130fda7ff0069300b0c855e3f38ea9f8987ed3ffb4b3f9c754fc4c3f69ffda4c02c321579fce3aa7e261fb4c7fb48fce3aa7e261fb4ff00ed26016190abcfe71d53f130fda63fda47e71d53f130fda63fda4c02c321578fce3aa7e261fb4ffed23f38ea9f8987ed3ffb498058742af1f9c754fc4c3f698ff6967f38ea9f8987ed31fed26016190abcfe71d53f130fda63fda5b23df1af27d7723e668ff06201df7c61300b048507526f8bc108feff0093f8d427ff0007829478ded4f3c9cdd7f2271e95b0c18d454954eb7acd7b4d39b9360d0e7d9ae37d8d253007f2100dc5c6a42004210801084200421080108420042108010842030f7b63639f238358d172e26c00e555a7754ddbeaf139a6c2f216a3b130e8c16cf8b5acf94f2437ed5bfe3d649e2dac0b94f7cce5c4fc24791783d5705c2c7c2e2af61b1119ed61becce1773868e2e68d4e20d69ca2af187d1c6d8db673c7acb0ec1efcf3f20fbd6419c5b1da7a299f2663eb2b6539d24b3bc97389f7449d24f39d690ea32ab1393f472321f9b6d9213dee7bcb9ee2e7137249b9257958c8159f9418a38ddd5b21ef05e7d5ec4ff5b7f8024b42014fd5dc4ff5b93c48f57713fd6e4f124c42014fd5dc4bf5b7f891eaee25fadbfc01262100a7eaee27fadbfc011eaee27fadbfc01262100a7eaee27fadbfc011eaee27fadbfc01262100a7eaee27fadbfc011eaee27fadbfc01262100a7eaee27fadbfc011eaf627fadc9e249884029fabb89feb6ff0047abb89feb6ff000049884029fabb89feb6ff000047abb89feb6ff0049884029fabb89feb6ff005918f6260e8ab7f807e092d0805a8f29b156919d54e781b1da9295265489ded8f12a589ed71b17b38b6feb94a69a1013eee7bba4e3d914e8fd47a9762183b6c65c32a9e435addbc19d2633aed6b8d3720ab6f90f95d8565ae03162d824ce7c2e39924520b490c800258f1b08b8e62082090415f3bf2531122a23a495e5a49f5993de9f7bce0f27f4255dce72c2a720b2b21c5585edc3a67360c5299a7383a3be8786f2b6e5cd3af58d44ac82eda16ba69e2aaa78a7a69192c12b43e3918e0e6bda45c1046b046d5b1600210840084210021084008421002f323db146e924706b1a0b9ce26c001b57a4d1dd7aadb43b97e54cce36be1d3443a5ec2c1e3704053d92baa32ab282b715ad6bdb362952fa991a6ef11c638d999da080066b01d1a3c0a34caead756e3f56f278ac718da3900d7e3b9efa95726602da7aa9b3acd8a9033379deed7fe8f1a8526799257bceb7389460f2b084200421080108420059009584b740fa1ec0b4a2d280ee35f6db40b5c6db9be9598acf730de04442f525b3ce6f6b7d0b7d13a0648e352c2f6e6d9b6d874693cba2eb064e6425232d0fbc3fb9fcd1c3508ff00937e969fc5009a84a7c3501d7191b3433f9ac70d4235420f4b4fe2804d42efa89691d039b1c7eb9a334816b2e040084210021084008421002108407a638b1e1cd24381b8236152cc4462380d1d7800895bc0c805ce922e39859c08ef8512295720253364257b45b3a99d9cdfd9735fe5280b57bdaf1b9316dcc69a967739f361533e84b9ceb92c16733a006bdad1f254a8abbef529df1e2995f44e7717fbb4ad6f21f5c0e3fc3e056211804210801084200421080108420051e6f8236dc7b28adef22eb98a4351e6f83ee3f943f221ebe34055ec997b9f82e2ee27488e202dfb6a0f53ae00d6b707c5c34003838b50b7bf505200421080108420042108016561080ca161080cac2108010842032b0842004210801084200421080108420052aee5cdcec8ec72fc92ff00035454a57dcafda7639d13756d404c5bd62a1d265d65235e74be91ae23a24fe6acdaac5bd8dad66e958f358001ea7ea1f3ad5675002108400842100210840084210028f37c1771fca1f930f5f1a90d42bbea67a88f22a8e28aa268e19672d96363cb5b2002e0380d60117b1d08082f02f61b16f9b87cf50ce1183e238cccf870aa2a8ac998dcf7474f13a4706dc0bd9a09b5c8d3ce14cd817b0d8b7cdc3e7a4ddebe3ffbdb11fa3a4eb6254fc4754f49a69df159715937ae3be4a2307fb09953f17b17ff00252fa28fec1e557c5dc63fc94be8abb402f4bc37efb5ff00d25f365efa147dca47fd83caaf8bb8bff9297d147f60f2abe2ee31fe4a5f455ddb2c0364fdf6bffa4be6c7d0a3ee523fec2654fc5ec5ff00c94be8a3fb09953f17b17ff252fa2aee386705ac8b27efb5ff00d25f363e851f72937f6132a7e2f62ffe4a5f4560e436538d793f8b7f9297d157648b85a9ecbeb5b2fdb5bbfa4be6ccfd063ee52afec46537ff0081c57fc9cbe8af71641e554a488b27718791af368653e6ab92f611758a7925a795b242e2c7b748214b0fdb1b1bf356b1f7b32f40b1d1f529d1dcfb2b86bc9ac687fe826f4579390395635e4e6323ff00432fa2af961789c58930433011d4ec1b1dd1f822aa94b6fa0aec55e3eed5ba314736c8cab7b648a1672172a46bc9ec5c7fe8a5f45699323f2863fd260b89b7e552483cd579e78edb12162b44d9587469532f189ff951139b295c993f8ac6e224c3eada46b06078f22d4ec1eb9bdb52cc3a6370f22b319478370ad2582d337573f328e3118cb5ce0e696b81b10762bd4ebfe2ae08ddcd7622a761b52deda278e969fc17934530d6df114f6ac66b48f52db1255a5737d8da36e588228673a984f78a0d0ccdd6d23a414bf03ae42e9921e1a3b0b676c2b5fa4e1e1ae848dbc741ae286726c1849e82b068e56921c2c41b106fa12bb5e6392c74381b2eaaa60a883b2183d71b61201b46c3e4f02b78e99457fa4352c34377b124e64762bf9425242c12ef626ba964009d1a149db95fb4fc73a25eada9832f68ee84fedcafda7e39d12f56d4378bca261decbdd371dfa38f5ac5675561decbdd3f1c1ff969eb58acf2cb3604210b00108420042108010842005096facf69b877fd4bbf854daa24df3782faa3b9bcf5e2a5d11c3646cbc1e6e70943dcd611af476d7be9da36a2057cc0bd86c5be6e1f3d276f5cf6ef88fd1d275b1251c0bd86c5be6e1f3d706f5af6f188dfff00c6c9d6c4b93e3ffe1d77dc4b47f11166d0bdb9a0af0742f8ca67601081ceb0b20c84119c840d0b00f046c58b5d6e20382d6458e9594cc9a6465c695cb232c5281170b4c8cbade32c1b26718bb487349041b8236272e138c32a1a29abdc1b26a6ca753b98f3a6f39962b5b8595ed36a6744b3135b698dcb121dd5b485b7d091aa60d16b2d983637c106d35792e875364d659cc794256ada505a1ecb39845c11a885e9b4daa8dd1ca3877d12aa5890c0c628439a5c06951ae57608ea86ba781bebec1a5a076e07954d35f4d7690426862f4762481a97469b5c1e514e712bc56352354b2e080a4bcb8c08b33ebe959c5d73300d5fe21e5f0f2a8ee76df4af414d8a71ca238bc09d11d1a129d3bae024bed2473790aeea5769096a2df26bc7690b626d64638b70c900d8761f12e4c3eaf32417d5a88e509d142219f3a9eaff00e1e66f06fe500ed1ce0d8f7933b10a59b0dc427a49c5a585e5a6da8f38e63ac74a9f477ee5b1f2bf421b2b5247556c1c04dc5d31bb4b4f32e75d913c555096fbb8f485c57575a34ae4dac3e51e65fd1b93fb72bf69f8e744bd5b53065fd1bba13fb72bf69f8e744bd5b560b30e09837b37750c73e8d3d6b159e55877b37750c73e8d3d6b159e5966e0842160021084008421002108400a3cdf07dc7f287e4c3d7c6a4351e6f83ee3f943f261ebe340564c0bd86c5be6e1f3d70ef5919d971888ff00cb64eb625dd80fb0d8b7cdc3e7ae4dea82f97588fd1b275b0ae478ff00f875dfe925a7f888b345a42f06fb576962f0e8c1d8be2fbcebe4e5585bdd0f22d6e611b16ca49993c85eec085e17a6e85960cb75acb9b9c822eb216a0d2458ac1175bdcd0e1ceb490415b279069963bae6735779170b44acda149191ba67139a94707c5df41eb35179290ecd659ce3f05c6e6ad65bcaad537caa96e89b4eb8db1db21db574ac9a16cb039af89c2ed70d20a6a6314776bb42e8c2b147e17296bc19291e78ece4ff0010e7fbd2fd752c5534ed9a9dc2489e2ed70dabd3697591ba39ee70355a6952f1d888b11a517735cd05a741046b0a1dcb3c08e1357c240c7761cc4e613a730fbd27eee6e82ac2e3f879612404ccc5b0e8abe926a4a96931c82c6dac1d847385ddd2ea363cf639ed60af754db4f7e50b7539b59766526173e13883e96a74b9878ae02c1ed3a9c3c1f7ae18b410bb326a4b28b10798a15299fc60b7e5ad232bb06a3c6220387848a4aab0d62deb4f3a39016dc9f72171c26d64e2c04475667c32a9c05362119a72e22f98f3a58fb5c6a706f8d5394fe0cd58bb7e9dff00efb8911ee1d318e6173a1da17ba86f07339a351d21734f0cb4b55243334b2689e58f69d8e06c478574541cf631e3a0aefe72ba103589e7dcd727e8cf427fee57ed3f1ce897ab6a8f9c788ee8520ee57ed3f1ce897ab6ac1661c1306f66eea18e7d1a7ad62b3cab0ef66ee9f8efd1a7ad62b3cb2cdc10842c0042108010842004210801441be7a6ab6ee7861a5a8314324a0cedb03c235b621bcdc6b1ef297d441be73da1f7dde4595c8201c0fd88c5edf070f9eb837abd6535165de20fac9046c761d230388245f858b93a0aeec0bd88c5cffe1c3e7a6b6e0c6d95159ff46ffe38d53f10ad5ba69c1f0d1bd7ea45cf8d90d445c253c91cac3eea37070f085adf0386a51951544d4d27094d2c913f958e20a74e1794d54d2195ac64edf7d6cd778b47897ce353e0517d6274149a17cb48d61782d057452d7d156001afe0de7dcc9a0fe0b7c94d6d4b817f865b53e86f1b13131d12f0634a0e888d975af33942a125383c4912291c56235a08bf4ae9745ccb539b644f26c9e4d40d8ac3db9c2e35ad85b7d5ad7959c99346d416df52f7237dd05e01b15ba328e6959637d8b490bba46dc5d72bdb652c64491673bd970415ef07c51f84d518e405f4721e3b3deff8873fdebd16ae6ab8b3d971ac2b345ceb96519b211b23b6439b16a18ea69c4b096c91bdb9cd70d4428eb1aa1753cce36d174e9c99c5bb0e6ec2ab3fdd253c527fe5b8ede83b7c3ca94329309e118fb374af55a4d4a9aca3cdeab4eea96083b2df279b8e610f10b0767420be13efb95bdffbedcea188c10eb10411ac10aca55d39866735c2da544fba5e4ff61d70c5699beb152ef5d00769272fed6be9bf285e83497ff23fc082b7d98ce8eda12840eb049cd3a976c07529ec448ce6dd06983eb29317676b88479d26a16999c57e81aafa1dfb49b713b3a0734ec4faaba6f54b25713a6173351daba2000d438b269d7a8b4dbfc298113ac4ae878759baad8f98f4fc3b7e5d08a4b266f769e85226e57ed3f1ce897ab6a8eb610a45dcafda7e39d12f56d5749abe093b7bdbaac6ebf2369a71140607f6433341e1599aeb36fac59d9a74722b60aa9ef75eeb955ff4aef2ab58b2cdc10842c004210801084200421080143fbe73da1fed3bc8a6050fef9d36c821f28f916572080703f61f16f9b87cf4dadeff00170b9555adbdbfb93c83ff00f6469cb817b0f8bfcdc3e7a6f6f7917cadacff00a17f591a86f59ada368bc32720d742fcd78b15d903f4dc2ea7c0278f35da1c351e449ce8df4cfb3859702ca4b3198e0a4789073a58a2aca881a04721cdf7aed23c09ab4b51621cd3a425fa399b330169d3b4722a76529ac3448a42dc38c425dc1d5c6627fbe1a5a7cabbf8364ac0f8dcd7b0ea734dc26f4b089e3b7ba1a8ae282a27a494f04f731e341b6dfc571f53e1b5cf846ebec1d4e8742e79235a28b1c64966d63330fc23068ef8fc12ab4453c41f139af611a1cd370579fd57854a3e936536b9125cc2d3ccb5b82509a036360b91ecb2e44a3283c4913a964d165a5ecb690ba08b6c5e48b844f06c99cede75e6566d5b1cdb1591a42df38ea8d9338885e1cdbae995962b516e852a64a988b5d166bce8d07527464b6262be93b02a9d7a88dbeb6e3aded1b3a47ddd0522d7c79d1120691a526413494b531cf03b36463839a79d74f497b83c906a2956c76b14b2ab092d2e958132712c3e1c46867a2ab6de295a5a6dac7211ce0d88e8530b9d16338532a636819e2cf6fbd76d0a3ac628cd2d5385b8b75ea34f76783cd59070786570c530f970cc467a39c7aec2ecd240d046c3d0458f7d621361ad48bba9e1025a48b1685beb90da39adb584e83de26dfb5cca3988802e0aee42cf89052378bca15b03a9652e294f2ca01873b325b8bf11c0b5de22530b19a1930ac5eb2866073e9e57466fb6c75a78c5a5ab9374da6ceaec37156839b8852b4bdc4e974b1f11e7c414da2b365fb7fccbf35d57e5930c6803707a0a91b72bf69f8e744bd5b546ed3ac7315246e57ed3f1ce897ab6aed1bc38251deebdd72abfe95de556b5553deeddd72abfe95de556b1659b821085800842100210840084210028937ce6153d76e6b2d64150226d04cc9656117e11ae2199be1703de52da8af7ca62b1506e5f5d4924733e4c41f1c3198c021a5af6c84bb4e816611b74908815d703f62317f9a87cf4dddef0f6b32c2a83c819d44f02fcbc2469c581fb118bfcdc3e7a69ee14dceca6ac045c1a37ff001c6b5b165340b36c162b7be08eaa3cc9058ec3c890686bdf4e5aca9bbe03a049b59d3ca39d38e21a8b7483a8aa13acdd486fd553cb47366b8741e50ba28eb1d13c3da748d9ca97e4823a984c730d0751e44ddaea1928a5b1b96ec70daa959512c643ae86a1951087c67a472159ada513b3399a241e34d4a0ae928a51232ee61eddbca9e349511d4c2d96276735c2fa151b2aec4919086d710eb1b823584a18556ba8ea33038b6394e83b03b93beb6e25479ede1621c71ac72a4bb07c65876f8973edab0588c9343da3aa63c5a519a7946a5e2a29c119cdd37da12160f5a656982736999fea1b0aed33cb42fbb38f4ee3a587503cdc8b91aad242d5d5049a7d0f72c242d0e16d69521960ac6130b81701a587b66f7968a8a7da35af3d7e8a55755d51ba9f5c313dcdbaf0058ea5b9c08362bc91755132646a7b6e168705d765a646d8e85b459b459c7232ed22c90e68f31ce69d89c2f6a4ac45967070daadd32eb824e4f79378c1c3312829e770147592085c4ea63cf68eefbacdfda076256caec373a3739a3484c9c7690d6e1557036f9ef61ccb7be1a5be3013eb23f171953917475b2383aa5ade06a7e71ba093d22cefda5e93433cd79f6671bc42af36ef723caca58ea69e6a5a866745234c6f6f2b48b10a06aea27e198954d14f72e81e59722d9c361ef8b1efab218d529a7aa7e8d17511eea98688ab697118db6e18705211a2ee1a413ca6d71d0d0bd0692cebb7dce6c1e1e06642742db9510f666433640d264c3eaee5e4ea8e416b0fda683df5a63d495a8231578463544e05dc3523dcc68daf6f19bf7156a52f8728cfd9affdfe46ec8b99acf41fb9493b95fb4fc73a25eadaa366ede82a4adcafda7639d13756d5e8d1bc7824ddef587cd57bafc9510d408d9474ef9a58ec7d75a43a3b5f99cf69ef2b60ab16f66ee9f8e7d1aeeb58acead99b021085800842100210840084210028837cdfb42fda3e452fa8837cdfb423f29de4595c8200c0bd87c5be6a1f3d36b7bf4665cabad005ed44f3ff00b91a72e05ec3e2df350f9e93b7af167f6d71264cccf8df86c8d70e6e16258609a853f16cb761d58fc3de2298175313df8fa39b992d54d0064966b81ce1763bdf8fc79527d4531d370a19440bd159f187b08735c2e08d442f72c0ca88782945c1d479136f0eac930d9335c1cfa6274b36b79c7e09d30b99344d961707c6ed21c36aaf381b290d4c42864a494822edd87942f185e22ec32a06712699e78c3de9e54f09e99955098e51d079135312a0753c8e63db769f010a959512290f28656cd1b5ec20823624ec4a9783770d10e29ed87226e6018a3f0eaa6d254b8985dfa371fb93dda5b2477162d2150ba9c92c6436272f8dcca986fc247a6c3dd0da138e8aa23c428daf162d70d292eb697b1e4e2fe8ddab9b9927d1543b0bc4434ffc34e4db91aee4effe2b936d586598cb228620c9e95fc2d3b9cd9e239cd2dda3912e60d8bc589c6d6c99ac9c8d4353ba3f05aaa236d4c01ccb175ae0f2a6abc3a86bb45db1bce7348d87685caba2e0f3d8992562c3e47ad6536d0127e906c577e158836b616c731f5dd41defbf9ac5752d8dc05c5d5e976fd657c1a45b8bdb238485e246dd7b171a0eb5922eb9c9932389e170d732f11f0a5395bad71ccdb8d2a7ae5d724a9882f162b8372ac43d49cb5c4f0294da9ab1c5d137635e06737c2d247782549d99af298b95065c372a28b10a6219280d95aeb5f8ec76bfe15e87c367e670f7454d6c7304fd896f2ae80398e781a428af2e70fecec9aad8f3419226f0ccb8bd8b749b73dae3bea6f7cd163182d3d6c22d1d4c42402f7cdb8d5de3a14718841c154c8c70dabb7a7b1c5fdc7026b6b2b9c5a825dc9490c78ed2585cbdfc1dbe5717ca92f12a4ec0c4eae90875a195cc6976b201d07c165b30d9dd056c32b090e638387482baf7477c1a5dd1b8c1c4690d06255948f21cea795f1123696922fe24ff00dcb3da7639d13756d481ba651c7459758c450fe8cc824079739a1c4f8494e0dcb3da7639d13756d5e834d67c5aa167ba4fe68da1c1306f66eea18efd1ceeb58aceaac3bd9bba8639f46bbad62b3ca766e0842160021084008421002108400a20df37ed08f4bbc8a5f50c6fa6a834f9094e383739b34fc0e701a1a4b6e09fdd594082302f61f16f9a87cf49dbd75b9d96f887d1d275b1251c0fd88c5fe6e1f3d736f508f85cbcc49b7b7ff4c90ffeec2b019650b4398e8a504c6ed3a35b4fbe1ceb85f664e29eacb448efd1cba9b28f214b9253906c42e3aba3654d3ba098710e969b76a79561a354c46aca22d24116e90b8e8eaa7c2e72e8c17c2e3c78b979c7215df156ba867ec2c5b4c43432a35968d97e56f3ecfbb6e214058339b67308b820dc11ca147289b0af43530d6c0d9a99e1cd3af941e43cebd55d2b2ae2cc78e30d479133a392a30ea835147a5d6b3e2274483f1e429db84e234f89d309a99dcce61ed9a7682395412864ca634317c34d9f1480b48d446b07610ba32571c7b5eea2ae36999a398f211cc53b311a16d643a80906a3e44c0c7f0d959209e9c16d5417206ace1b5a7fad6a9d951246448523193c45aeb16909bf89d167c5240f245fb577dc569c92c7995b4ed64878dab4ebff00e538eaa16d445616ce1a5a572efa724d196046c98c4dc6f4b544096339aed3a8ff003d6bb71da113c4e737413a41e4726d63713e8e76d746334b38b30e51cbdefb93a706ad66214618e233c05c6be9cf42d46587942360f5658f0d7dc106c47214f5a3a86d4c618f377db41e5fe698d8bc0ea2ae1281663cd9dccee5ef8fb92c61352248f349208d4571a79adb4cb138a9ac8b1594e58ebb4685c812ad2ce2b22746fb09d9db0e51cab86aa131b891a9723554283df1e191c5b5e56734cdbb6eb8660949bc6165c752cb1215683eb8254c45ab6ddc4a65e5ed3de92967db1c99bde70fe413eaa9a9af965167e03506d72c2d70fde03ee257674166db62fed35bd6eada1ddb90e21d9b931350c8497d249768ff0003ae478f3969caba5e0ea7380ed9363720ad14b9491c4fed2aa2743a4d803a1c3f86ddf5226585267439f6d4bd0c5e24702e5dcacdba5d2763653195baaa226c9df1c53fc2136a9cfaeb798a90f75ca671a6c3ea40168e47444fca008fe12a3aa7d2f0bbb54b75699a2e0f3bae441b8e61d3b74f0f86c2f71e570ce69fe10bbb72bf69d8e744dd5b572eea2d2ea5c9c9cfbba47c77f92f3f8aeadcafda7639d13756d5d8f0c79d2c3eccaf9368de1c12fef66eea18e7d1a7ad62b3cab0ef66ee9f8e7d1aeeb58acf2becdc108420042108010842004210801479be0bb8fe50fc987af8d486a3cdf07dc7f287e4c3d7c688159302f61f16f9a87cf493bd8f19a0c172eea64c52aa3a68ea289f4f1be4366979923205f50d0d3ad2b605ec3e2df350f9ea1ec0dd9b2170d634fdc8cd64f6ac9f431a1b2306a20e95a25a7b5c8d4aaee42ee8d8ce4bf051c12f666166c4d2cc4d80ff0003b5b4f8b99588c8acb6c1f2b69b3b0f9b83aa68bc9493584ace7b7ba6f38d1cb63a16b1b14ba7724956d75ec746298732b69cc6f033c768e3b39ba135e8b119f0298d2d6b1d2d01362c3a4c479473737f46439210e176f81226378532b62243470a07ef0fc565a2313ab68a39a06d5513c4b03c67070e44dba88eaa82abb3b0bd1503f4909366ccde4e67721ef747aa4ababc9bab2435d2d13cf1e2e4e71cff007f80871cb0d3e25482b30d707b08b968d9cbff00c6c5a38994f27464ee50d26314e1d13f3651a1ec7682d3b411b175e33868aa84cd101c201a47be0a3cc5f0ea986a7d51c23895ccfd2460d84e06c3fe2e43dee4b3b72332aa0c5a99a1cecd9468734e820a8651c994c64e314d26115e2be9c1103dc38603dcbb63ba0ea3e1e54f9c9dc5595b4ed05c3382e9ca5c2239a19246c6d743234b6465b469f228de8659b00c57b15ee718c71a271f76cbea3ce35780ed542ea8962c92714a56cb1b9e5a0822cf16d6134708a89307c55d4cf24b586ec27dd30eafc3bc9e385d6c75b4e1cd20dd37b2bb0d78885440d26482ee6db5b9bee9be5ef2e3ea29ee59ae7d98e1c4e08f11c38bdbee869e6e7ef26de1750e8662c7e8734e6b87385dd9238a3668444e75dae1a173650d29a2af6cedbe64ba0f48d5e21e25e7f594e565176a97663884ce8cc75501e3375f38e4296898eb699b345a5ae1ab683c89ab84548923e0dda884a5855576155ba294da179b1e6e42b8f959d92e1fea6d64372cae51b5cd31c963a978aa667465c36253af82c090352e16e905a752e55b5baa78647196508354d4858f333b07ae045fd61e7fd25392ba32d2472248aa8c4b1491bb539a5a7be15ed3cf0d3247d5608f327ea9f45574d511fe9217b646f48375607196b2af0ee123d2c91a1ed3cc45c2ae7869e2b54ff92d3f67e4661efd176c5c11d3ef096f917a97d24ce1cd66242dba752b65c9aab7104ba9dec91839f3b34f89c543f4c74a9f72e298c986e2d034719d04800e7cd36f1a80a901242ede9659ada2b40dfba391264ce4d386b63aa584fee1f2adbb95fb4ec73a26eadabc65e445d915864db23ac919fbd183e6af7b967b4ec73a26eadabb7e14ff00b3a5f6cbf564b0e097f7b3774fc73e8e775ac5679562decddd3f1cfa39dd6b159d5d166e084210021084008421002108400a3cdf07dc7f287e4c3d7c6a4351e6f83ee3f943f261ebe340564c0bd87c5be6e1f3d43b836b7a98b02f62316f9b87cf50ee0bdb3fa167b91dbe8639f0a9ae38076bd6df284af45533d1d4c7514b2c905444ece6491b8b5cd3ca084d7692d707349041b8212ed1ce2a612eff009aded879556ba187b91b68afdcbe1cb92c0ee73bacc75bc0e1d94ef6435678acacd0d649ccfd8d3cfa8f36d96b8b2f6b6ced6a962923738dd26a3033161d8cbdf3e1838b1c9adf4ff8b79b58d9aac95ddda4599d5de24e38de171d546f766e9f742de34c30fadc99af33d302fa771e3c57b077e079fef0a4bc3eba0c4208a6824648c91a1cc9186ed783b42e1c6f09654c678a2c42b38c955a125afa5c6e8c55e1ce05fee99a8df68b6c3cddf098d945433e1b56719c2c16b9ba6aa26fba1efc73f2f87a7aa78eb326f113514973193c78cea78feb51d89d50cf4d8e518aca22385d4f611624f211cbf7a8a48d93c9d591594d063344d64ae69791622e9332e3278cb01e040e15878481fcfef4f311a3c7b130f14826c93c663aca105b87ccfd43544ff7bd0767836296727b15a7ca2c2b837b87096f0155ac8e51b21839278d3a091ac9096d8e6b9a7583cea462595b4b76d8dc5c151be5a6112e17891ad8db9b1bdc1b301a83b63ba0fdfd297324319ce6b627bba1726f87b9622c4c2d7e0d8dc900bb63713247c96be91de3e2213ce66b318c1dc011c206dc1e4293f2c70e355422aa9db79a139e00172e1b477c78c05c392989063c349e2385971753516a12ee6bc2e7746ecd768734d88e429c535a585920e4b14898f52f61e27c2b3f4538ce1d3b52861351c230c4e3db05e63554ed6d17632cac8e8c1aa8565118e420cd0e83ca5bb0f91699e331ca791225154ba86bd92ec06cf1ca3684e9ac8db246248c87348bb48da153be3f1aadddd10591d92e9c310b1265da1fb0e82909e38f64e79a3e129a46dae46909b750dcd9157d34ba60de244786bb8a3a14d5b92d489b02ada537bc5287f79cdb79a5421879b1b296771d988c46be0be87c01f6f92eb79cbd94d79ce2b319574e0574ad3a9e0855aa95a5a403ac6b569f2d21b56075b5aacf5b0f038b5645ef277b3c0e21753472f2b4558f46cd996ed03735a7275faa4ceaa5fc172ee59ed3b1ce89bab6aeecbd6e6ee6b4dcf88c67ff006a65c1b967b4ec73a26eadabbbe0ef343ff53258704c3bd9fba8639f473bad62b3aab16f67eea18e7d1ceeb58aceaeab3704210801084200421080108420051e6f83ee3f943f261ebe3521a8f37c1f71fca1f930f5f1a02b2605ec462ff370f9ea1dc13b67f4298b03f62316f9a87cf50f609db3fa167b91dbe862aec5ba9e67c12b6466b1ac728e45aecb298cf2735369e50e289ec9636c919e2bb6721e4411637092282abb1a5b3ae627e870f2a5b22e010410748236aa564363fb0ee69af57473dc77640e5b5564dd4b62933e7c39eebc90df4b4fbe6721e6d479b58b2180e2f498d5043514d33268a56dd8f1eeb98f211b42a7a0969d09d390f961559335b76e74b432106686ff00ea6f23befdbb08debb76f47c1b5956eeab92c863b8532a62702d1ab4151c48cabc9cc48cf4d7cc278ecd8e0a4fc0318a5c6e8229e9a56cb1c8dce63dba9c3c841d046c2b8b1fc259511b81682ac32a885551d1652e152968cf12b0b648ed6279f99c35f7ae147b82d6d6649e3dd873bcb9ad3763f50918751feb6a71015180d7e7c41dc138f19a0dbc7b0f3aedca8c260ca7c2bb2290b457443848cd80b9dbde3b46c363a941346c3c2a5b4b94b8199000f2596737690a296b65c17157d2c8e3c4376b8fba6ec2bbb2032925c36b3b1aab39b9aecc7b1dac1d49cdba260ecaba0662744d0e2ce37176b768f2f85736f8e49a2c57c03106d6d2863cdcdac535b12a476118c48c6e885e7848eda05afa477bf04999338a182568ceda9e99414c315c1f8684675441c76db591b42e4df0c93c5e1997918b604e0dd33c3c76f4848b86d51648d375e726310e06768278aed056316a7ec0c525637f46ff005c6741d8bcfeb69cac976a7d870d590e0d946a70f1a70e4d55764503a079bbe13a2fb5a7fa3e24d4a1984f465bb4690baf01ac14789c6e7bb3632731e4eab1da7a341ef2e2c1ed9e1f0c96c8ef863d8723dbc1cc46cba6d62b1f053b80d40e8e84eec423238dc89bb8f47da48368b1ef2a1b1d37b8320ae59440f427d79c39ca92372b9f82caa8597fd344f678b3bcd51a509f5f7dbdf1fbd3e720e6e072ab0b7f2cc19fbc337cabda5bea4725bea48596acd20f3aacb8eb6d94b890ff00f9321f0b8ab47966df5a71e70ab365132d95d5e2dff389f2abfa5784fee2b7f31a37456db739a51ff9847d54c93372cf69d8e744dd5b576ee99306e455041b5d599ffbb1b879cb8772cf69d8e744dd5b57a1f0758d3e7ddb248704c3bd9fba7e39f473bad62b3aab16f67eea18e7d1ceeb58aceaeab3704210801084200421080108420051e6f83ee3f943f261ebe3521a8f37c1f71fca1f930f5f1a02b2607ec462df370f9ea1ec0fb77f47e0a61c0bd87c5be6e1f3d43d81f6efe8fc167b91dbe862c590b285939a095309aabff7790fcd9f3525ac39d9ad2ee4d2b59c54960de9b1d53524399cdbf4ad278bb569c22bbb3698079f5f8c71ff00c5fe2fc57548de8545a717867a08b525943a373dcb39f25f11cd91cf7e1d2b8195834961f7ed1cbca368d1c96b3d8756c38b5132589ec78734383986e1c08d0473154c9daaca4adc7f2ddd83d74584d7487b1a57da9dee3a23713da1e46b8f81dd24896b9e3cac86d867cc89a71dc29b3c6e0e68bd9332374f855616b5ce6b6f7046c5295e3ada512c5b761d6398a6ae3b85899af2071869524915c64653e1ccae8e4c670f68656416eca85808bb763c73103c445eedd2e2c81c759594870fab75dae1604ec2936924928ab18e01bc2c64801c6c1cd36bb4f31b0e8201d892b17a3f517118b10c3c39b4150e25adb58c4fdac2361d7e354ad8f7378b35e5261926058ebe36b4b6179cf8c8d56da3bdf7593b724b1405ad8deeb83a34a31689b95392e2484035f4a33db6d6e006a4cbc12b1d0ccdb1b722e5dd12c45e50e0c5e94e178dbd8cd10bcf091f41d9de4a98b5ab30982a4697c0735c7fc27f9d97ac718312c0e3ab8f4cb4fc6e7cddbe43de5a30199b2c4fa790f1246961efae1eae05aad9e7089b35e013a0e85d388711931bdaec3f724b883a09cb1da1cc7107a42ebc6a5bd0678d05c33579b9c3eb117d3241c02b0e2980534ee37933731e75f1868bf7f5f7d71e2d16751c80eb61ba45dcc6bae6ae81c4904099836721fbc7813a6b6205ce69d01e0850f88d78db6a28af24da2b2d0baf29b6d253cf249d6ca1c28f25545fc613230d0e6becf05af06c41d60f2277e4fbf3315a17dfb59d87c0e0bd55ebcc7224c98b2b467432f32ad1948dbe58e2079241fc21599ca9fd0ceab3e509cecaec448f85b7882b7474cfdc46fd437f754246058337df4d507c0d8ff15e372cf69d8e744dd5b56add565bd36090ec6c734bfbce03cc5bb72cf69d8e744dd5b57a6f0958d2c7f1fd59bc38260decfdd431cfa39dd6b159d55877b3f750c73e8d775ac56797499b821085800842100210840084210028f37c1f71fca1f930f5f1a90d479be0fb8fe50fc987af8d0159303f62316f9a87cf50f607dbbfa3f0530e05ec462ff370f9ea1ec13b67f47e0b3dc8edf43162ebd2f216564e682d5546d174e85b972d49ce903763478d651b56b323de1f2be9a66cb1eb1b3611c853ae37b6789b2466ec70b8e6e64d28858251c1eb053cfc14a7d6643acfb93b0fe3fc9457d7b965728ead166d787c0ab23482b9a4ba50999af9970c82da0aa48b8c9ff716cb9389d29c3b1098bab69c0ce2e3a658f507dfdf0d4ee5d074926d2a57c01ecce6e90552fc2b12a9c1f14a6afa2766d453bc3db7bd9dcad205ae08b82368255b3c81ca4a5ca1c129e780f12569cd69372c70ed9879c78c6956212cac32b591c3c88d94387907848c691c8b829cc3554d352560bc13001fcac70d4f1ce3477adc89f38ad20731c08d698f5d03a96a4b9a346bb72a8ac446ba09d81554f80632ea59cf68734f239bca39885cd959870a0c5f87a71fdd6aef34646c24e96f84f8d2ae2f4c2bf0f654422f3d336e0ed747b4748d7e15e620319c09f466c6a61f5d84f38d63be2eb997449e0cdf92b5a1d19864b16385883c8b552c4ea1af92026f98eb03ca361f0245c1263154374e83a139b106f08fa7a96eb2331fe4f2ae16ad742dd7c9ab156815cd91baa568777f515cb8a92fc30ff81e1de4f2a50ac6f0940c7fba89de23fd049d53c7a1a86ff82fe0d3e45e766b16265f83cc4f59175829328a89eeed5cfe0cfed0b7954af88b6cd0ee42a0ca690b246b9a4820dc11b14e26615985435207e9626c96e9174d657bea922a5cb124caed94f4a68f2c7168b55ea1d20e87f18789c1766127fbe531dbc237ef5dfba7d3b61caf6cadff00f514ec90f48bb7ee685c18203262148c1add2b478485d5a27f16984fdd238d77966d1356549f5a9d565c51d9d95189bb92a1e3c04ab29954ff00589b955657bbb231daf7374992a5f6efb8ae955c3237ea1b1bab3ad8961715ef9b87b5c7a5cf79f285dfb95fb4ec73a26eada91b75475b2daba10ece6c11431379ad136e3c374b1b967b4ec73a26eadabd5f87c76e96bfb93f9f5258ae84c1bd9bba8639f46bbad62b3cab16f67eea18e7d1aeeb58aceabacd810842c0042108010842004210801479be0fb8fe50fc987af8d486a3cdf07dc7f287e4c3d7c680ac981fb118b7cdc3e7a87704ed9e7994c5817b0f8b7cdc3e7a87705ed9fd0b3dc8edf431636af4bcb75af487340ae7b6739c794ade4d9a5796b752de24d4f393cb06b58902db6b15e2417375965c42ee0d59d954e6294de5886df74dd87fae65b2a63b14dd8267d34ec9a3ed9a751d479414e90e654c0d923d2c78b8e6546e86d96570cb954f72c3e44a78d89f1b91e55bb00c79b43532e6e1f5af00b9ceb0865d4d7e9d02fda9d5a2c4f6a9933b731e56893485a278ea6f259582efc328aea36c96b3c6870e429bb8d5207b5c6da5347715cb138ae0ec86b25bd652010ce5c74bdbee24f0683ce093ac292b11843985c351523ea8aad61e0625139d4d5462bd81e33798ae3963386628d92119b0bce7b47269d2def1f1592b62d4a5a4b9a34b7485a2a23ecea1d03d70696fca1b3be150ba06d1622e2908a7c4784887ad4bebade6e51e1f225ea43c3523e3d66d71d2124ca3b270eff1c3c61d075ff5ccbbf097f1187982e0eae05bad9d510e129e58fdf30dba762449df6a5a8d3ff2ddf727130707506daaf709b3898e0fb2a2074343da3c0579bb23e7c1d1a9f4623c2ed214cf921376464952e9bb981cc3cd671b78aca1380f18594b5b9b4d9f93f5516d64d9dde207e0a5b6394d105eba0c9dd7e26b6ab089bddb84ac27981691fc452064a59d8fe1635835510ff584efdd8616fa8d47507b68eaf831d0e6389fe109a790d19972830cb6b150c77ee9bf914be1bfdd62bdb2bf3387aafe2929e56ca053c849d65578c88a738863905c5c3a4e11df7a9c3742abec7c26aa5bf68c7bfc0d2544790d7c3303c5719205e969a49197da5ad2eb78405d69e634c92e5e12fc48f96c8672baae2afca9c62b299ce7c13d5cd2444ed61712df1593c372cf69d8e744dd5b5474751b0d8a45dcb3da7639d13756d5ee145422a2bb22c1306f67eea18e7d1aeeb58acf2ac3bd9fba8e3bf46bbad62b3cb66010842c0042108010842004210801479be0fb8fe50fc987af8d486a3bdf07dc7b28be4c3d7c680acb81fb118b7cd43e7a87705ed9fd0a62c0fd88c5be6a1f3d43b82f6cf59ee476fa18ae17b0bc5d7a08738c9e45ec36eb0d172b6b1aa48ae84f574c1a9cdb2d6fb2eb7b2e17348db0592d1a1c34e94a78055864a69a43c4934b0f23bf9fe0931ebc0b8376e823515a4e1ba38666327179439ab62d17b24d7255a3a815d441e6dc20e2c9d3fcf5a4daa6163cae7e1a7865fce5650a99198fbf2672929abc671a7bf0750c6eb7c675f491a081ca02b7582d6c75f87c659236561682c91a6e1ed22ed703b411b7a5529769054ebb81e55764513b06aa93fbc518ce889d6e849f35c477880a483ec4362ee4a98a416bdc6d4dfa71c0d4c909d00f6be44f1ae609610f034ea2390a6a628ccc7b6402c41b28ed86485338a58c41564dbd6e4b923a75858a06988ba376b6388e95d558d1240d919abb61e5feb996a8c7ae35e2dc6163d23fa0b85acafa166b6285af98eef26ae56bb83ac9ad601ed691e000f953b23d3191df4cecbbb8afa6b6a7442fde2579b9c3eb4e8552e822d31e305296e5effeed884676863beffc54594ddb05256e64eb3eb3e6c7deb4b39462e7e5387766d193b07356b0ff00a24fc537373561765050bb63448f3fb8ef2d939376517c9a61e4aa8cf89c3ca92773188371191e7fe5d29b7492dfe6a5f0e58a31ff0093387aafe32fb8f7badd518f03aa0cd25cccc3d0e706f9547b966f6e09b934f09e2cb58f8a9c5b5dc9cf77fa5ae09dfba1935d88d2d2b4f14ced2f1cad6827efcd51ceeeb5a23a7c130c6496b092a648edac1b3587c522ed69e1f17534d5f6ee7f875348756442745fa148bb967b4ec73a26eadaa3bb5daeb6a02ea44dcb3da7639d13756d5ed25c9392fef66eea18e7d1a7ad62b3cab0ef66eea18e7d1aeeb58acf2c300842160021084008421002108400a3cdf07dc7f287e4c3d7c6a4351def83ee3d945f261ebe340565c0fd87c5be6e1f3d439836b7a98f03f62316f9b87cf50de11adeb3dcd2df4315c15e96b0b20a1ce3aa11a16f68d2b545da85b8053a37dd83d16ae799ba175b4676a5aa767156a5c4f3d44c97415e4690bdce2c56a61d299077e0f56296b03643eb32d98fd3ab90f7beeba58c4a036246cd69b4f00a72e193f66e1e03cde48f8afe53c87fae42aa6a218f3a2cd12fe5121da0a50c9bc626c9fc7a8f13a7b9e05fc760f76c3a1cdef827a0d8ec5c754c31c842d274850a64cd67a174302c420afa0a79a1903e9ea580b1fcb71769e5d22c93b17a721cf63b45f428bb706ca9351452e4fd54844f071a99c4e92dbdc0ef1b8fda1c8a63c480aaa3654340ce3a1e06c235a9e4b72c955ac3c0dca339f0be377b9d36e63a0af10b4b439875b5cb6c604757ab43f41efad85969fe50f1ea5c6d647a12d6fa9d300bb4f426865e37d7e88edcd70f184f3a51ab42676e8166d45137686bbef0bc9dabeb51d0ad8dc80e90a48dcd8d9d567fc03ef51b41db0524ee7bc5a6ab7fc91f7a82cf52163cc4e4dd75c1d93f1376baaa31e271f22e4dcf43590e2531d60318d3e127c8b7eeacebe094a792b59d5c8b8f26e4ec2c91926711ebd23e41cc0716de16f8d58f0f8fd5a5f6b38daa7f5df808b5af15b9404ebcd2ed3d27f9285775bc44e219735cd6b8ba2a4cda48c116cdcc1c61fbe5fe1530e17511d38afc4ea2fc0d346f99fd0d6927ee55caa667d4544b3cee2e9257991eee524dc95e97c12adfaab2eff2a4be7ffc34a974c9e5acfeed33b9804fddcb3da7639d13756d4c894665110359173a13df72cf69d8e744dd5b57a47c92c5e49877b3f750c73e8d775ac5675561decfdd431dfa35dd6b159e466c0842160021084008421002108400a3cdf07dc7f287e4c3d7c6a4351def83ee3f943f261ebe340565c0fd88c5be6e1f3d437847ba532607ec4e2df350f9ea1bc2b53964d2cf4b14aebd5d780b37439e28c5dab4f32dedd2b4d3698587996e6e856118c9be95a5ce3a350bac4cdb82bbf046092a250e17698cdfc21734ccb673545bb32712dd2fca21d536cb89a6cf4a958dd0524bf4396490ead6174e0f53d8b5ec2e368e4e23afab98f87cab8d86e16240b128a92c3331961e50e3c5a036cfb6a49412ce1f2f67612d2f3791a331dd236f82c9264666485a79573f187865fce5651d781e272e098c536214ee735d13aeeb1d25bb55b8c9dc422c4e8d8f88b4c35b089a3cd3701f6e301d1623f6553b7b73987994e5b86e3aea9c997d2b9d79f0c981603b5876740b78d4b5be9820b63c3241ab8b3652dda0add20ce2c7db59bf8576e33134c91cd1e964adce07a573c6d262b7203f8fe2b9baee198af93a29d9a4a606e84fbe37136fa1b08f0e73bf929169d9a0151565b4bc2e5456ec0d70681d0d03efbaf25359b0e841f43869fb60a4cc901c0e117daf793e0519d082e900526e19eb1414f18d8db9efe955ece4c4d8d5dd6eb1ec830d841e249249211ced0079e572e295228f2568e0ed5c626e7379c8b9f19293f74d9cd5654617437e27059da3617bc83e2685af1d98d5d75353b755ef6e40ba9a082ae88cdfb37fa9c4d43dd6cbe437b743aef52f73fec56902a31295b19d241cc6f19c4781ad3cce50cb5b77b41d574fddd8b13ec9ca1830e8dc781c3e10c2dd9c23ace711decd1de4c7a76ddeed4362f55e0b47c1d2294b9979be7c7e5825f4c727bacb98652eb782c9ebb967b4ec73a26eada997567fbacbce3ca9e9b967b4ec73a26eadaba2c55c12fef66eea18e7d1aeeb58acf2ac3bd9bba863bf469eb58acf232404210b001084200421080108420051def83ee3f943f261ebe352228f37c1f71fca1f930f5f1a02b2607ec462df370f9ea1ac2f5394cb81fb118b7cd43e7a8670cd4e597c9a59e962882b20ad6b37d085115e86cea76db9fef5d19ba6eb8f0b75e270e4375dfb1588f044c54c9d17ab907fe19fbc2d352dcd9e469d8576e49c65f5f2db6444f8c2d18bb382ae7f39542c9ecbcb354b1142356c4736f6d0906a066bca734e03e3236a6ed68b38ab7caca2c6726217685edda573c4ed4ba762014326ea382af3093c4985bbe348f28efaecc5a2cc943c6d4de0f745236461b3da439a7908d49db5d9b5787b2760b0734380e4e654f511c4948b544b31711299a7a13c3717c48e1d97628deeb4388c6ea722d7bb8e9601fb407793360376f42cc554fc3b19a0ad89c58f8a56bb386cd2b48bc3249acc4b8b49fdeb06cc3a5f038b7bdfd1b7796ba665db6e75e7276a193554998008aae26cece822e3c4e3e05d6c88b247b7682b9fe22f088abe4dd4cce2850b653bf3f29b13e6a87b7c06de4538c2cd9cea05c4e71598d56d4347166a89241df713e55e4d759b65d5c0a78040659d82daca7f46fd26c740d013532662cce391da8ba71d31cecd034dcaa76cba366af9232c6e7ecbdd22b64ce2594cd6b5bc9a18011e1256fa29e38eb6b311aa27b1a8e2748f2349000ce2073d8048d864e2aebb13c41a1c055d43e46df634b891f7f89276e895e70fc908a8d8eb4f89cb9cfe5e09a41b7369ccf015e9e3a773857a65fcd85f82e4e2c7cf639118d7d5c95d5f5159516e1ea2474afb0b0ce7124dbc2b642cb35a2fa4e92b9a261710176fb9b8d16d1a57b1c24b0892d97634d5ff00c33ee34809ebb967b4ec73a26eada9955a6d038728ba7aee57ed3b1ce89bab6a8e46d57a497f7b3774fc77e8d775ac5679561decddd3f1cfa34f5ac56796192821085800842100210840084210028ef7c1f71fca1f930f5f1a911477be0fb8fe50fc987af8d0159703f62317f9b87cf50ce19dab94cd81fb118b7cdc3e7a8670ced5dd2b2f934b3d2ceeb216508513b70a7da57b7945d2b0d2121501b55334e8d23c497187429a1c114b91d9911082dac92da78ad1e33f82e2ca88736ac3b952be4200ea3a9f9c17f02d195b0ddac7f215c9ba5fda19623e81a8ed490f12669725c7a4ac41ba4df915ea2598e0dea96508d11b1b2eb61b85c4743974c6eb8054b92567a7a71e4dcdc3e19240e3c685d60398e91e3ba6e3d2864c4dc162c233daccc2cd7a01d63eeb77d4774774192d32c491bcb782a97b0f2ad589b33a9491ada6ebb7168f83ab0e1a8ad150dcfa67b795aa9a7dcb8d762c9ee6589f65e4be4e5697873b82e0653c9625b6fddb2916a63b4d9d6b670b9e95086e115427c859298b4e7535517977287ea1fe83e153a93c2d3c527be00f45c02b9fe27e921af938f109cd1e1759543418617ca3bcd27c8a02a16e748a61dd1eb451648d534121f50e6c0defe93fe90e514e0f0e73c6d5e53388ca45a6c77618de068872bcaf58f561a0c9ec42a5af31be381c18f6eb6bdc335a7f788598ec1cc60d4d09232ee60306a7a6be9a99c5c72b18338f8f3557a61f16e857f690dd2d95b90d3c1a948a78606b6c480d239cebf2a8cf2fb1618c652d43e275e9a9ff00bb41637198cda0f217673bf6948b943889c13266a6a984b6a24f58808d8f703a7bcd0e239c050d346ab2f79e194efb2573e1745fefff00073a98e23966fa56d81772e85bdc6cd2490b2d68000b5805a6475dda350d0bb5c9aaf3c8d339bc2f274e84fadcafda7639d13756d4c5a8b763bf9d3eb72bf69d8e744bd5b5473e4b11e097f7b3774fc73e8d3d6b159e55877b3774fc73e8d775ac56796acd810842c0042108010842004210801477be0fb8f6517c987af8d488a3bdf07dc7b28be4c3d7c680acb81fb118bfcdc3e7a8670ced5ca66c0fd88c5fe6e1f3d433866a72cbe4d2cf4b3b9010808513d4673246bb90dd2f44742404b94a6f130f28ba96a23b07c6409bb6b1bb2ed23c694329a10f88801716404578aae4beacd16e94b98dc79f00239172357e5d4325a9ee811a4edcd710937116d80e84b9894799506dab5a43c49e339ad57f4cbcb924a974637aa3438f4ad94efb8b22ad9acad103ac54c4fca3b8ea5e2198c15514cdeda378701d06eb20e85a64d69c843d71f687c2c919a5b7b8236849d1f1a217da2cbbe122ab26e9df6d2230dfddd1e449d486f1d8ec5cec63a1d1ce7a92b6f7b9c7a978cd29d65cd907ec9b79cac2e18784c2e3e502de3fe6abaef7bb36b71561f7513c0ef3d87c8ac36026f87387213f77f2543c47ac0821ea23ddd8e527d4881af3ae573997f9201fe2f1a6c60916690e3a8694b1baa384b9534cc69be653341e625ce3f75927d037362d1acaf2374b11489dbea2c520ce25c53672b643539411d336e5b4d1865adee9dc627c199e04eba2018ccf9086b5a33893b146d8fe33ea7d16238cb85e67b88818ed23847139a34eb035db91a54de1554a7639a596ba2fbdf054d5cb29417718bba66282af19661f0baf05082c36db21b67f82c07ec9e54d7a66dc971d416a2e7cb239cf739cf7924b9c6e493b4aeb69e09a00d242fa369e954551ad76ff00ac827d16d41238db37975ad406b59d6b2740e753e04560d151a6278e409f5b95fb4ec73a26eada98f38b53bcf284f8dcafda7e39d12f56d50d9c9247825fdecddd431cfa39dd6b159e55877b37750c73e8d775ac56796acd810842c0042108010842004210801477be0fb8fe50fc987af8d488a3bdf09dc7b28be443d7c680acb817b0f8b7cdc3e7a8670ded5dd2a66c0fd88c5fe6e1f3d43386f6aee9597c9a59e96772108428994b741a69633cc9112b61eeb5237a4fdea4af9359aca252c808ad83ccfd59cfcd3a3907f34a589349a577324fc8c984581c41c471c97ebe81e45d98dd4b21a191e4f41e75c6d536ef66685e423bc5e519ee20e809b350fcf92e529e293974840efa4779e312baf08ec8a896a31c2c1a6a1b705260e2bd2b38dda932a1b9afbacb3789d6c3c45a9e749446ee205e494087864ab8cb81cac7107325700390100fde4ae4a51696469d857ac87376d7b6fa7d6c8ff57f25eb37371099bce550b1626d17ab798224cdc1db9b8a549b68770a3faf02b0d80e8a09bfad85403b86c79b553388d7c29f0a9e70f95b4d8354cf21b3236e7b8f30b92b97e232c56690f53225cab9bb372bb1191bdab64110fd901a7c60add46dbb9a00d0124d267492ba5909748f25ce276929c18743aafa6ebc75f2cbc1223c6504e69b0391ad3c79888877f5f8815036e818a765e28282177f76a2bb4d8f6d27bb3deed7bc4ed5276ea18e8c3627189e04d0b783846de11c2f9dde163c9716daa0a02fce4f2af63fb3ba2db5ab65f87fdfbbf5294defb1cbdba1ee9c58b9c766a5b35eb5802c02f402f5068d75c9802e8d67a165dc516da50dd01049a4ba9aea87f777f427b6e57ed3b1ce897ab6a645513c03fa13df72bf69d8e744dd5b5436726d5cb72e84bfbd9bba8639f46bbad62b3cab0ef67eea18e7d1ceeb58acf2d592021085800842100210840084210028ef7c1f71eca2f930f5f1a911477be0fb8f6517c987af8d0159703f62316f9b87cf50c61ba9dd2a67c0bd88c5fe6e1f3d43186ea774acbe4d2cf4b3b96508428804b340c3d871f3dfef291d38e923b411336e68ba92be4d26f0890b0880c583d0b748f5b27bd727ee48d95958e647141736b5ca7635bc1d161819b638c785bfcd4739553f0b8a4adbdf338aa8461bb51933a37bb2bd98813b8b9c5c76ae195764e762e4935abecbcce72e5a2719c16c97434ad17bac030c366ac1283a17871432872e43b8faa150dd861bf808fc52898cbb1891ad1726e923229f6c4e6e4309fe26a73e0b170d9571c674e702a8ddd26cbb57a11276e3307070c8f22d785c7bf9c14ab8f4fd8990f8838004c8ce0ac76e7717ee37ef2616e6b0701851b8b5dac00f4ebfb827565fcd998361d4635cb2194f4345bcef12e178acf6d6690e5b1918741dad8694e4858da6a674d2039ac6971b6bb017d1ceb9707a4bd891a026d6ed5942dc1f2645040fb55e2178c5b5b6316ce3cdb00fe4bce6934f2d5df1ad7766672daba10d65c634ec6f1d9a56bf3a9e37111d8f149278ce1d27c402438db737f02d4ce3685d2d16b00bea15551aa0a11e115318580b685eda1005c85979d814869296d59359d2516d085e960aade7934550b40fb7227bee59ed3b1ce89bab6a65557fc3bfa13d372cf69d8e744dd5b5456725ad3fa49837b37750c73e8e775ac5679561decddd3f1dfa34f5ac567968c9c10842c0042108010842004210801477be13b8fe50fc987af8d488a3bdf09dc7b28be443d7c680acb817b138bfcd43e7a8630eed5ca67c0bd89c5fe6a1f3d429473322043cd9659acd662d21496572f6645efbc451d9917bef1142a7c29fb1d91373e5634ea73804eba067093b46c0093de4cca7c4218e66bdda40d896a932a29608e4060797bc5af7d5e25242497241a8a6d716a2b2c98a791ada7c2b39d66864573c9a028a7119ccd59348eed9ce24f852856ee894b5147042da4918e8a26c79d9fac816bea4d37e33039c4e69d2a1ad6d6db25d1d33adcb72e4ea99da5733ce85ceec4a176d2b53aba23b4a97722d6d67b92e4db62c08ec2ebcb6b2006e4af4eaf848b025328ce19aa4162b9dc56d7d444e3db7896a2e8cff00cc1e02b19465262ee4768c4653ff0086478c278e4ce8caf889d8d24a6060d88c3874b23dc4bf38002da2c96f06caba6a0c5fb32585f23730b7303ac748e8552d84a526d22d572518a4cb3791f0f07450307ba75edd0005d395ce355940d805f329e26463a48ce3fc56ef288b08ddc30ca031e7e0f52f0df7b301e6ac1ddc30e7e215155260f3974b23a4b09868b9bdbb55c0f14d16a6f4a35c73f2ff00935849244cf49088620340b6b557b748ca0fed2e56d65646ecea58cf014df36d26c750ed892eb1d59d6d89e1949bb553e2580d65050e1d353cf51198b857ca1c1a1da0e8b6bb5edcea22ecb86fafc4ad7817874b4ce56dcb0f85fee6b396783ae3161ce56e6ae0ecd8b957a6d7c236af4bbe240d3148715b75afa76ae3388c246d58f546158de886c84e4fa23b566fc8b84e2309fe8a0e210acef8fb91fc19fb1d157ff0efe84f5dcb3da6e3bd13756d51fcf5d13e37341d24290372df69b8ef44dd5b545369be859a62e31c3260decddd431cfa35dd6b159e55877b3774fc73e8d775ac56796ac9410842c0042108010842004210801477be0fb8fe50fc987af8d488a3cdf07dc7b28be443d74680ac9817b158bfcd43ff00fa28254df931239f836305e6e7838bcf5082300842ca030842ca005859420308594203085958400b7329e478b86d8729d0b0d023687b85dc7505e6491f23aef712500a4cc06be4a6e1e16472b2d72192b491debdd26cb1be279648c731e35b5c2c42c31ce638398e2d70d208362129475a2b6310620739c07adcdee9a790f284025a17b7b0b1e5aed617940610b2840610859406108594061085940614adb96fb4cc77e4cdd5b5452a55dcbbda663bf266eada809877b37750c73e8d775ac567955edeb39f2ee858f4cfd245066dfa6569f22b428c021084008421002108400842100262eee54aeacdc9b29a366b6d2f0dde639af3e2694fa49d94b85b71bc9dc530a7c86365752cb4a5e05cb43d85b71d174052dc9dcdf537128db605f4f13801acd8bee7c6141e75a97726ea383922134798f9237d2bcbce69613670163b6edb5b9d45d8cd31a4c56ae02080c91d6e8be8f1596583896561656002c2108010859400b0842032b31b0c9231835b8801617ba794c33c72b7b66383874837407bad618ea5f1b858b0e6db91684e7dd1206b72924ac81a4526211b2ae177be6b9a2fd1c6be84d94061650b2c6b9ee0d6825c4d801b4a01772ae9e08e3c22a2999982a6858f934eb90121c7c4120271e5be6c1594387b5d7750d2470c96d5c2692eb78426ea030b2b0b28016108400b2b0b28016108400a50dce1dc1e44e38e3a01cf03bed68517a9572600a2c8ca68086992ae40f7349d6d073c9f0068efa0270deb50b24caccaca98da03590c0c161ab39cf3e6ab1ea0fdea7867059318d630e6383abeb444c2476d1c4db023978cf78ef29c118042108010842004210801084200421080a7fbbc64b3f25b743a9a889a5987638e75653ca0dcc73dc1905cedce39dd0fb0d4a17cb3a63512f67b23cd7db36760f72761e8e7e85f413740c90c3f2df26aa308c4db9a1dc782768bbe09476af6f38b91ce091b552fcb2c95c57263167e139450763d55888671c686a99aaed3b4691ce2f62167904405095f1ac1a7a3989642fe0ce9b0d36eff002248580085842032b0b2b080ca1616501842cac201cf85629495f823702c6488e38de5f47561b73038eb69e569fbfbc4256238455d038f08c1245ee6688e731c394149cb745553c5198e399ed8ceb603a0f7901a831c4d834f812ee03574982e757cec1518833fe1a122ed63bdfbba360ffe4233aa6576b79ef003ee5a8e93a4a03dcf349513c934ce2f96471739c75927595ad65080c2ca16101942c21019585946c40610b2ba28e8e6ab903628dc41362e0340406cc2688d756c716911def23b91bb54974f155625534b4186c0e96aea9cda6a485a6d7ce36bf35ced36b01a74246c2f0b144c8a0e09ef9a5706b29e305d24cf26c05869d7a0056b3706dcb25c9d3fda4ca785beaeccd2da78090eec38c8d3cd9e46836d4346d2b2093321b2760c93c92c2f03a5707b28e10c748011c2484e73df624db39c5ceb5f45ec97508580084210021084008421002108400842100249ca6c9dc2729f0b7e1f8f50c35b4ae39c1b20d2d7588ce6b8696bac4e9041d252b21015d32a37bcd5c4e7bf24f188a5809b8a3c51baba246837e605bdf519635b90e575267bebb24269da0d849492473e7738687177882bb0859c82843b735c5c939d91b94608e4c3e4f23178fc9ae2bf137297ecd97d057e90990505fc9ae2bf13b297ece97d047e4d715f89d94bf66cbe82bf484c8282fe4d715f89d94bf674be823f26b8afc4eca5fb3a5f415fa42641417f26b8afc4eca5fb3a5f411f935c57e27652fd9d2fa0afd21320a0bf935c57e27652fd9b2fa0b3f935c56ded3b297ecd97d057e509905063b9ae29f13b297ecd97d058fc9ae2bf13b297ecd97d057e90990505fc9a62bf13b297ece97d047e4d315f89d94bf674be82bf484c8282fe4d315f89d94bf674be823f2698afc4eca5fb3a5f415fa42641417f26b8afc4eca5fb3a5f411f934c57e27652fd9d2fa0afd21320a0bf934c57e276527d9d2fa0b3f935c547ff00b37297ece97d057e50990516c2f72bca2ac9b83a3c8ac573b5deaa114e3f79f9a3c69ff937b82e5656e61c4a4c3b02808b38677644e3bcde2ffad5aa42c640c3dcfb72cc9dc8a78a9a485f5b8adb4d7d5d9f28b8b10cd1660d2750b9074929f8842004210801084200421080d59d51f0517d61f4519d51f0517d61f456d5aa9a432c65ceb5c3dedd1cce23c88033aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8406acea8f828beb0fa28cea8f828beb0fa2b6a101ab3aa3e0a2fac3e8a33aa3e0a2fac3e8ada8407fffd9, 'SOny music phone for users', 400, 100, NULL),
(3, 'Apple Iphone 112', NULL, 'Besto Apple phone ever', 60, 19, NULL),
(4, 'Asus ZenPhone 2', NULL, 'Asus Flagman phone for developers', 200, 3, NULL),
(13, 'Zauza', NULL, 'cool product', 25, 10, NULL),
(15, 'Kofevarko', NULL, 'Best Kofevarko', 15, 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `dateof_birth` datetime DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_enabled` bit(1) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `usertype_id` int(11) NOT NULL DEFAULT 3,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `dateof_birth`, `job`, `name`, `age`, `email`, `is_enabled`, `password`, `username`, `usertype_id`, `address_id`) VALUES
(1, '2000-01-04 00:00:00', 'best job', 'Dzmitry S', 37, 'dz@gmail.com', b'1', '1234', 'dzen', 1, 1),
(5, '2002-01-04 00:00:00', 'doctor', 'Alex Mishurin', 23, 'alex@mail.com', b'0', '567', 'alex', 3, 2),
(6, '2001-01-12 00:00:00', 'tester', 'don', 32, 'addres@gmail.com', b'0', '123', 'dze1567', 3, 4),
(8, '2021-01-12 00:00:00', 'merchik', 'Antony K', 20, 'ant@gmail.com', b'1', '4567', 'ant', 3, 5),
(9, '1983-01-12 00:00:00', 'developer', 'Dzmitr', 36, 'dz@gmail.com', b'0', '12345', 'Samoila', 3, 11),
(10, '1983-01-12 00:00:00', 'teacher', 'Panasik Olga', 37, 'pans@gmail.com', b'0', '12345', 'panas', 3, 12),
(11, '2021-01-13 00:00:00', 'president', 'Vasil', 21, 'dz@gmail.com', b'0', '123', 'vasil', 3, 14);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE `usertype` (
  `usertype_id` int(11) NOT NULL,
  `usertype_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertype_id`, `usertype_name`) VALUES
(1, 'superadmin'),
(2, 'admin'),
(3, 'customer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `fk_user` (`user_id`);

--
-- Indexes for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_item` (`cart_id`),
  ADD KEY `fk_product_item` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_user_key1` (`user_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_key2` (`order_id`),
  ADD KEY `fk_product_key2` (`product_id`);

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `FK_usertype` (`usertype_id`),
  ADD KEY `fk_address` (`address_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
  ADD PRIMARY KEY (`usertype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `cart_item`
--
ALTER TABLE `cart_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
  MODIFY `usertype_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_item`
--
ALTER TABLE `cart_item`
  ADD CONSTRAINT `fk_cart_item` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`cart_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_item` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_user_key1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `fk_order_key2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_key2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_usertype` FOREIGN KEY (`usertype_id`) REFERENCES `usertype` (`usertype_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
