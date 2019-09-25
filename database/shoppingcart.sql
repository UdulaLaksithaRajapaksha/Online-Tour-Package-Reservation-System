-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 18, 2015 at 05:42 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE IF NOT EXISTS `addresses` (
  `address_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `country_id` int(11) unsigned NOT NULL,
  `company` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `post_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `zone` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`address_id`, `user_id`, `country_id`, `company`, `first_name`, `last_name`, `address`, `post_code`, `city`, `zone`) VALUES
(1, 2, 99, 'Senthil Pandian', 'Senthil ', 'Pandian', '23, Leven Street', '10029', 'Ramnadu', 'Ramnadu'),
(2, 3, 99, 'Shewag', 'murgan', 'murgan23', '23, Leven Street', '10029', 'Ramnadu', 'India'),
(3, 8, 1, 'ewew', 'Raj', 'admin', '232323', '232332', 'Madurai', 'admin@admin.com'),
(4, 9, 1, 'ewew', 'Raj', 'admin', '232323', '232332', 'Madurai', 'admin@admin.com'),
(5, 10, 1, 'ewew', 'Raj', 'admin', '232323', '232332', 'Madurai', 'admin@admin.com'),
(6, 11, 1, 'ewew', 'Raj', 'admin', '232323', '232332', 'Madurai', 'admin@admin.com'),
(7, 12, 1, 'ewew', 'admin', 'ereer', '232323', '232332', 'Madurai', 'admin@admin.com'),
(8, 13, 1, 'ewew', 'Raj', 'ereer', 'wewewwewe', '232332', 'Madurai', 'admin@admin.com'),
(9, 14, 1, 'ewew', 'Raj', 'ereer', 'wewewwewe', '232332', 'Madurai', 'admin@admin.com'),
(10, 15, 1, 'ewew', 'erer', 'ereer', 'wewewwewe', '232332', 'Madurai', 'admin@admin.com'),
(11, 16, 1, 'ewew', 'prakash', 'Kumar', 'wewewwewe', '232332', 'Madurai', 'admin@admin.com'),
(12, 17, 1, 'ewew', 'prakash', 'Kumar', 'wewewwewe', '232332', 'Madurai', 'admin@admin.com'),
(13, 18, 1, 'ewew', 'prakash', 'Kumar', 'wewewwewe', '232332', 'Madurai', 'admin@admin.com'),
(14, 19, 1, 'ewew', 'prakash', 'Kumar', 'wewewwewe', '232332', 'Madurai', 'admin@admin.com'),
(15, 20, 99, 'Elysium', 'Raj', 'raju', '3434e', '232332', 'Madurai', 'mad'),
(16, 21, 1, 'TCS', 'Riyaz', 'Khan', '3434e', '232332', 'Madurai', 'mad'),
(17, 22, 1, 'Foundation', 'MyprojectBazaar', 'Kumar', 'wewewwewe', '232332', 'Madurai', 'erer'),
(18, 22, 1, 'hjbhj', 'aaa', 'aaa', 'hjjbjk', '89787', 'hjbhb', 'Tamil nadu'),
(19, 23, 1, 'fdsfds', 'ab', 'ab', 'dsfdsfsd', '45345', 'sdfdsf', 'tamilnadu'),
(20, 24, 1, 'gfhgfh', 'saina', 'saina', 'gdfgdfgd', '7657', 'gfhgf', 'tamilnadu');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE IF NOT EXISTS `carts` (
  `cart_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cart_session` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `product_quantity` int(4) unsigned NOT NULL DEFAULT '0',
  `options` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cart_created` int(11) unsigned NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=89 ;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`cart_id`, `cart_session`, `product_id`, `product_quantity`, `options`, `cart_created`) VALUES
(88, '02b456aca48dbce67d074df7cef1e19e', 31, 1, NULL, 1429378540);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=39 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `parent_id`, `category_name`, `category_status`) VALUES
(30, 18, 'Tamil nadu', 1),
(29, 19, 'AUSTRALIA', 1),
(28, 19, 'EUROPE', 1),
(26, 19, 'NORTH AMERICA', 1),
(27, 19, 'SOUTH AMERICA', 1),
(25, 19, 'ASIA', 1),
(18, 0, 'LOW COST PACKAGE', 1),
(19, 0, 'HIGH COST PACKAGE', 1),
(20, 0, 'MEDIUM COST PACKAGE', 1),
(31, 18, 'Kerala', 1),
(32, 20, 'Jammu and Kashmir', 1),
(33, 20, 'Goa', 1),
(34, 20, 'Punjab', 1),
(35, 20, 'Rajasthan', 1),
(37, 18, 'Karnataka', 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE IF NOT EXISTS `category_products` (
  `product_id` int(11) unsigned NOT NULL,
  `category_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`product_id`, `category_id`) VALUES
(0, 21),
(0, 24),
(1, 11),
(2, 6),
(3, 6),
(4, 8),
(5, 12),
(6, 4),
(7, 3),
(8, 5),
(9, 2),
(13, 10),
(14, 11),
(15, 11),
(16, 12),
(17, 12),
(18, 12),
(19, 12),
(20, 12),
(21, 12),
(22, 12),
(23, 12),
(24, 21),
(25, 12),
(25, 22),
(26, 23),
(27, 24),
(28, 29),
(29, 29),
(30, 29),
(31, 30),
(32, 30),
(33, 30),
(34, 30),
(35, 31);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code_2` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `iso_code_3` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `country_status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=240 ;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `iso_code_2`, `iso_code_3`, `country_status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1),
(2, 'Albania', 'AL', 'ALB', 1),
(3, 'Algeria', 'DZ', 'DZA', 1),
(4, 'American Samoa', 'AS', 'ASM', 1),
(5, 'Andorra', 'AD', 'AND', 1),
(6, 'Angola', 'AO', 'AGO', 1),
(7, 'Anguilla', 'AI', 'AIA', 1),
(8, 'Antarctica', 'AQ', 'ATA', 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1),
(10, 'Argentina', 'AR', 'ARG', 1),
(11, 'Armenia', 'AM', 'ARM', 1),
(12, 'Aruba', 'AW', 'ABW', 1),
(13, 'Australia', 'AU', 'AUS', 1),
(14, 'Austria', 'AT', 'AUT', 1),
(15, 'Azerbaijan', 'AZ', 'AZE', 1),
(16, 'Bahamas', 'BS', 'BHS', 1),
(17, 'Bahrain', 'BH', 'BHR', 1),
(18, 'Bangladesh', 'BD', 'BGD', 1),
(19, 'Barbados', 'BB', 'BRB', 1),
(20, 'Belarus', 'BY', 'BLR', 1),
(21, 'Belgium', 'BE', 'BEL', 1),
(22, 'Belize', 'BZ', 'BLZ', 1),
(23, 'Benin', 'BJ', 'BEN', 1),
(24, 'Bermuda', 'BM', 'BMU', 1),
(25, 'Bhutan', 'BT', 'BTN', 1),
(26, 'Bolivia', 'BO', 'BOL', 1),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1),
(28, 'Botswana', 'BW', 'BWA', 1),
(29, 'Bouvet Island', 'BV', 'BVT', 1),
(30, 'Brazil', 'BR', 'BRA', 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1),
(33, 'Bulgaria', 'BG', 'BGR', 1),
(34, 'Burkina Faso', 'BF', 'BFA', 1),
(35, 'Burundi', 'BI', 'BDI', 1),
(36, 'Cambodia', 'KH', 'KHM', 1),
(37, 'Cameroon', 'CM', 'CMR', 1),
(38, 'Canada', 'CA', 'CAN', 1),
(39, 'Cape Verde', 'CV', 'CPV', 1),
(40, 'Cayman Islands', 'KY', 'CYM', 1),
(41, 'Central African Republic', 'CF', 'CAF', 1),
(42, 'Chad', 'TD', 'TCD', 1),
(43, 'Chile', 'CL', 'CHL', 1),
(44, 'China', 'CN', 'CHN', 1),
(45, 'Christmas Island', 'CX', 'CXR', 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1),
(47, 'Colombia', 'CO', 'COL', 1),
(48, 'Comoros', 'KM', 'COM', 1),
(49, 'Congo', 'CG', 'COG', 1),
(50, 'Cook Islands', 'CK', 'COK', 1),
(51, 'Costa Rica', 'CR', 'CRI', 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', 1),
(53, 'Croatia', 'HR', 'HRV', 1),
(54, 'Cuba', 'CU', 'CUB', 1),
(55, 'Cyprus', 'CY', 'CYP', 1),
(56, 'Czech Republic', 'CZ', 'CZE', 1),
(57, 'Denmark', 'DK', 'DNK', 1),
(58, 'Djibouti', 'DJ', 'DJI', 1),
(59, 'Dominica', 'DM', 'DMA', 1),
(60, 'Dominican Republic', 'DO', 'DOM', 1),
(61, 'East Timor', 'TP', 'TMP', 1),
(62, 'Ecuador', 'EC', 'ECU', 1),
(63, 'Egypt', 'EG', 'EGY', 1),
(64, 'El Salvador', 'SV', 'SLV', 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1),
(66, 'Eritrea', 'ER', 'ERI', 1),
(67, 'Estonia', 'EE', 'EST', 1),
(68, 'Ethiopia', 'ET', 'ETH', 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1),
(70, 'Faroe Islands', 'FO', 'FRO', 1),
(71, 'Fiji', 'FJ', 'FJI', 1),
(72, 'Finland', 'FI', 'FIN', 1),
(73, 'France', 'FR', 'FRA', 1),
(74, 'France, Metropolitan', 'FX', 'FXX', 1),
(75, 'French Guiana', 'GF', 'GUF', 1),
(76, 'French Polynesia', 'PF', 'PYF', 1),
(77, 'French Southern Territories', 'TF', 'ATF', 1),
(78, 'Gabon', 'GA', 'GAB', 1),
(79, 'Gambia', 'GM', 'GMB', 1),
(80, 'Georgia', 'GE', 'GEO', 1),
(81, 'Germany', 'DE', 'DEU', 1),
(82, 'Ghana', 'GH', 'GHA', 1),
(83, 'Gibraltar', 'GI', 'GIB', 1),
(84, 'Greece', 'GR', 'GRC', 1),
(85, 'Greenland', 'GL', 'GRL', 1),
(86, 'Grenada', 'GD', 'GRD', 1),
(87, 'Guadeloupe', 'GP', 'GLP', 1),
(88, 'Guam', 'GU', 'GUM', 1),
(89, 'Guatemala', 'GT', 'GTM', 1),
(90, 'Guinea', 'GN', 'GIN', 1),
(91, 'Guinea-bissau', 'GW', 'GNB', 1),
(92, 'Guyana', 'GY', 'GUY', 1),
(93, 'Haiti', 'HT', 'HTI', 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1),
(95, 'Honduras', 'HN', 'HND', 1),
(96, 'Hong Kong', 'HK', 'HKG', 1),
(97, 'Hungary', 'HU', 'HUN', 1),
(98, 'Iceland', 'IS', 'ISL', 1),
(99, 'India', 'IN', 'IND', 1),
(100, 'Indonesia', 'ID', 'IDN', 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1),
(102, 'Iraq', 'IQ', 'IRQ', 1),
(103, 'Ireland', 'IE', 'IRL', 1),
(104, 'Israel', 'IL', 'ISR', 1),
(105, 'Italy', 'IT', 'ITA', 1),
(106, 'Jamaica', 'JM', 'JAM', 1),
(107, 'Japan', 'JP', 'JPN', 1),
(108, 'Jordan', 'JO', 'JOR', 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1),
(110, 'Kenya', 'KE', 'KEN', 1),
(111, 'Kiribati', 'KI', 'KIR', 1),
(112, 'North Korea', 'KP', 'PRK', 1),
(113, 'Korea, Republic of', 'KR', 'KOR', 1),
(114, 'Kuwait', 'KW', 'KWT', 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1),
(116, 'Laos', 'LA', 'LAO', 1),
(117, 'Latvia', 'LV', 'LVA', 1),
(118, 'Lebanon', 'LB', 'LBN', 1),
(119, 'Lesotho', 'LS', 'LSO', 1),
(120, 'Liberia', 'LR', 'LBR', 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1),
(122, 'Liechtenstein', 'LI', 'LIE', 1),
(123, 'Lithuania', 'LT', 'LTU', 1),
(124, 'Luxembourg', 'LU', 'LUX', 1),
(125, 'Macau', 'MO', 'MAC', 1),
(126, 'Macedonia', 'MK', 'MKD', 1),
(127, 'Madagascar', 'MG', 'MDG', 1),
(128, 'Malawi', 'MW', 'MWI', 1),
(129, 'Malaysia', 'MY', 'MYS', 1),
(130, 'Maldives', 'MV', 'MDV', 1),
(131, 'Mali', 'ML', 'MLI', 1),
(132, 'Malta', 'MT', 'MLT', 1),
(133, 'Marshall Islands', 'MH', 'MHL', 1),
(134, 'Martinique', 'MQ', 'MTQ', 1),
(135, 'Mauritania', 'MR', 'MRT', 1),
(136, 'Mauritius', 'MU', 'MUS', 1),
(137, 'Mayotte', 'YT', 'MYT', 1),
(138, 'Mexico', 'MX', 'MEX', 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1),
(141, 'Monaco', 'MC', 'MCO', 1),
(142, 'Mongolia', 'MN', 'MNG', 1),
(143, 'Montserrat', 'MS', 'MSR', 1),
(144, 'Morocco', 'MA', 'MAR', 1),
(145, 'Mozambique', 'MZ', 'MOZ', 1),
(146, 'Myanmar', 'MM', 'MMR', 1),
(147, 'Namibia', 'NA', 'NAM', 1),
(148, 'Nauru', 'NR', 'NRU', 1),
(149, 'Nepal', 'NP', 'NPL', 1),
(150, 'Netherlands', 'NL', 'NLD', 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1),
(152, 'New Caledonia', 'NC', 'NCL', 1),
(153, 'New Zealand', 'NZ', 'NZL', 1),
(154, 'Nicaragua', 'NI', 'NIC', 1),
(155, 'Niger', 'NE', 'NER', 1),
(156, 'Nigeria', 'NG', 'NGA', 1),
(157, 'Niue', 'NU', 'NIU', 1),
(158, 'Norfolk Island', 'NF', 'NFK', 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1),
(160, 'Norway', 'NO', 'NOR', 1),
(161, 'Oman', 'OM', 'OMN', 1),
(162, 'Pakistan', 'PK', 'PAK', 1),
(163, 'Palau', 'PW', 'PLW', 1),
(164, 'Panama', 'PA', 'PAN', 1),
(165, 'Papua New Guinea', 'PG', 'PNG', 1),
(166, 'Paraguay', 'PY', 'PRY', 1),
(167, 'Peru', 'PE', 'PER', 1),
(168, 'Philippines', 'PH', 'PHL', 1),
(169, 'Pitcairn', 'PN', 'PCN', 1),
(170, 'Poland', 'PL', 'POL', 1),
(171, 'Portugal', 'PT', 'PRT', 1),
(172, 'Puerto Rico', 'PR', 'PRI', 1),
(173, 'Qatar', 'QA', 'QAT', 1),
(174, 'Reunion', 'RE', 'REU', 1),
(175, 'Romania', 'RO', 'ROM', 1),
(176, 'Russian Federation', 'RU', 'RUS', 1),
(177, 'Rwanda', 'RW', 'RWA', 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1),
(179, 'Saint Lucia', 'LC', 'LCA', 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1),
(181, 'Samoa', 'WS', 'WSM', 1),
(182, 'San Marino', 'SM', 'SMR', 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1),
(184, 'Saudi Arabia', 'SA', 'SAU', 1),
(185, 'Senegal', 'SN', 'SEN', 1),
(186, 'Seychelles', 'SC', 'SYC', 1),
(187, 'Sierra Leone', 'SL', 'SLE', 1),
(188, 'Singapore', 'SG', 'SGP', 1),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1),
(190, 'Slovenia', 'SI', 'SVN', 1),
(191, 'Solomon Islands', 'SB', 'SLB', 1),
(192, 'Somalia', 'SO', 'SOM', 1),
(193, 'South Africa', 'ZA', 'ZAF', 1),
(194, 'South Georgia and South Sandwich Islands', 'GS', 'SGS', 1),
(195, 'Spain', 'ES', 'ESP', 1),
(196, 'Sri Lanka', 'LK', 'LKA', 1),
(197, 'St. Helena', 'SH', 'SHN', 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1),
(199, 'Sudan', 'SD', 'SDN', 1),
(200, 'Suriname', 'SR', 'SUR', 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1),
(202, 'Swaziland', 'SZ', 'SWZ', 1),
(203, 'Sweden', 'SE', 'SWE', 1),
(204, 'Switzerland', 'CH', 'CHE', 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1),
(206, 'Taiwan', 'TW', 'TWN', 1),
(207, 'Tajikistan', 'TJ', 'TJK', 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1),
(209, 'Thailand', 'TH', 'THA', 1),
(210, 'Togo', 'TG', 'TGO', 1),
(211, 'Tokelau', 'TK', 'TKL', 1),
(212, 'Tonga', 'TO', 'TON', 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1),
(214, 'Tunisia', 'TN', 'TUN', 1),
(215, 'Turkey', 'TR', 'TUR', 1),
(216, 'Turkmenistan', 'TM', 'TKM', 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1),
(218, 'Tuvalu', 'TV', 'TUV', 1),
(219, 'Uganda', 'UG', 'UGA', 1),
(220, 'Ukraine', 'UA', 'UKR', 1),
(221, 'United Arab Emirates', 'AE', 'ARE', 1),
(222, 'United Kingdom', 'GB', 'GBR', 1),
(223, 'United States', 'US', 'USA', 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1),
(225, 'Uruguay', 'UY', 'URY', 1),
(226, 'Uzbekistan', 'UZ', 'UZB', 1),
(227, 'Vanuatu', 'VU', 'VUT', 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1),
(229, 'Venezuela', 'VE', 'VEN', 1),
(230, 'Viet Nam', 'VN', 'VNM', 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1),
(234, 'Western Sahara', 'EH', 'ESH', 1),
(235, 'Yemen', 'YE', 'YEM', 1),
(236, 'Yugoslavia', 'YU', 'YUG', 1),
(237, 'Zaire', 'ZR', 'ZAR', 1),
(238, 'Zambia', 'ZM', 'ZMB', 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE IF NOT EXISTS `coupons` (
  `coupon_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `coupon_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_discount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `coupon_status` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `coupon_name`, `coupon_code`, `coupon_type`, `coupon_discount`, `date_start`, `date_end`, `coupon_status`) VALUES
(1, 'Coupon (-10%)', '123456', 'P', '10.00', '2013-04-03', '2013-12-31', 0),
(2, 'Coupon (-10.00)', '123', 'F', '10.00', '2013-04-03', '2014-12-31', 0),
(3, 'new', 'CU018742', 'F', '50.00', '2014-03-20', '2015-03-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customer_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_telephone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `user_id`, `first_name`, `last_name`, `customer_email`, `customer_telephone`) VALUES
(21, 24, 'saina', 'saina', 'sai@gmail.com', '676578657'),
(20, 23, 'ab', 'ab', 'ab@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `dealer_orders`
--

CREATE TABLE IF NOT EXISTS `dealer_orders` (
  `packageid` mediumtext NOT NULL,
  `ordid` mediumtext NOT NULL,
  `date` mediumtext NOT NULL,
  `customerid` mediumtext NOT NULL,
  `paytype` mediumtext NOT NULL,
  `sts` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dealer_orders`
--

INSERT INTO `dealer_orders` (`packageid`, `ordid`, `date`, `customerid`, `paytype`, `sts`) VALUES
('6f39194', '9a4b930', '31/03/2014', '3', 'Bank transfer', 2),
('9b698eb', '9a4b930', '31/03/2014', '3', 'Bank transfer', 2),
('6f39194', '0c95e4a', '31/03/2014', '3', 'Cash on delivery', 2);

-- --------------------------------------------------------

--
-- Table structure for table `dealer_products`
--

CREATE TABLE IF NOT EXISTS `dealer_products` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` mediumtext NOT NULL,
  `package_name` mediumtext NOT NULL,
  `qty` mediumtext NOT NULL,
  `price` mediumtext NOT NULL,
  `product_id` mediumtext NOT NULL,
  `product_name` mediumtext NOT NULL,
  `img` mediumtext NOT NULL,
  `sts` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `dealer_products`
--

INSERT INTO `dealer_products` (`sno`, `package_id`, `package_name`, `qty`, `price`, `product_id`, `product_name`, `img`, `sts`) VALUES
(1, '6f39194', 'Combo Pack', '2', '4000', '2', 'HTC Aria', '../product_image/6f39194carts.png', 0),
(2, '6f39194', 'Combo Pack', '2', '4000', '3', 'iPhone 3Gs', '../product_image/6f39194carts.png', 0),
(3, '6f39194', 'Combo Pack', '2', '4000', '6', 'Monitor', '../product_image/6f39194carts.png', 0),
(4, '6f39194', 'Combo Pack', '2', '4000', '7', 'Printer', '../product_image/6f39194carts.png', 0),
(5, '6f39194', 'Combo Pack', '2', '4000', '8', 'Scanner', '../product_image/6f39194carts.png', 0),
(6, '9b698eb', 'Combo Pack 2', '4', '6000', '4', 'iMac', '../product_image/9b698eb8.png', 0),
(7, '9b698eb', 'Combo Pack 2', '4', '6000', '5', 'Nikon', '../product_image/9b698eb8.png', 0),
(8, '9b698eb', 'Combo Pack 2', '4', '6000', '6', 'Monitor', '../product_image/9b698eb8.png', 0),
(9, '9b698eb', 'Combo Pack 2', '4', '6000', '7', 'Printer', '../product_image/9b698eb8.png', 0),
(10, '9b698eb', 'Combo Pack 2', '4', '6000', '8', 'Scanner', '../product_image/9b698eb8.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `deliverboy`
--

CREATE TABLE IF NOT EXISTS `deliverboy` (
  `sno` int(12) NOT NULL AUTO_INCREMENT,
  `dbname` mediumtext NOT NULL,
  `com_name` mediumtext NOT NULL,
  `mailid` mediumtext NOT NULL,
  `mobno` mediumtext NOT NULL,
  `prod` mediumtext NOT NULL,
  `addr` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `deliverboy`
--

INSERT INTO `deliverboy` (`sno`, `dbname`, `com_name`, `mailid`, `mobno`, `prod`, `addr`, `status`) VALUES
(4, 'Ram Kumar', 'Blu Dart Courier', 'a@gmail.com', '9555447891', 'HTC Aria', 'xxxxxxxxxxxxxxx,\r\nxxxxxxxxxxx,\r\nxxxxxx.', 0),
(5, 'Arun M', 'Blu Dart Courier', 'b@gmail.com', '9555445891', 'HTC Aria', 'xxxxxxxxxxxxxx,\r\nxxxxxxxxxxx,\r\nxxxxxxx.', 0),
(6, 'Arjun M', 'Individual', 'c@gmail.com', '9555447861', 'HTC Aria', 'xxxxxx,\r\nxxxx,\r\nx.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `digital_goods`
--

CREATE TABLE IF NOT EXISTS `digital_goods` (
  `digital_good_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `display_filename` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` int(11) unsigned NOT NULL,
  `number_days` int(11) unsigned NOT NULL,
  `number_downloadable` int(11) unsigned NOT NULL,
  PRIMARY KEY (`digital_good_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `digital_goods`
--

INSERT INTO `digital_goods` (`digital_good_id`, `product_id`, `display_filename`, `filename`, `date_added`, `number_days`, `number_downloadable`) VALUES
(9, 14, '1365676584.jpg', '1365676584.jpg', 1365676584, 10, 0),
(10, 15, '1365676829.jpg', '1365676829.jpg', 1365676829, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_telephone` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_company` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_post_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_city` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_country_id` int(11) unsigned NOT NULL,
  `shipping_zone` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_method` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `payment_company` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `payment_first_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `payment_last_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `payment_address` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `payment_post_code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `payment_city` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `payment_country_id` int(11) unsigned NOT NULL,
  `payment_zone` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `payment_method` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `total` decimal(17,2) NOT NULL DEFAULT '0.00',
  `shipping_cost` decimal(17,2) NOT NULL DEFAULT '0.00',
  `tax_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tax_rate` decimal(17,2) NOT NULL DEFAULT '0.00',
  `tax_shipping` int(1) NOT NULL DEFAULT '0',
  `currency` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `coupon_discount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `order_status_description_id` int(11) unsigned NOT NULL,
  `date_modified` int(11) unsigned NOT NULL,
  `date_added` int(11) unsigned NOT NULL,
  `ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `ormonth` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `oryear` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=23 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `first_name`, `last_name`, `customer_email`, `customer_telephone`, `shipping_company`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_post_code`, `shipping_city`, `shipping_country_id`, `shipping_zone`, `shipping_method`, `payment_company`, `payment_first_name`, `payment_last_name`, `payment_address`, `payment_post_code`, `payment_city`, `payment_country_id`, `payment_zone`, `payment_method`, `comment`, `total`, `shipping_cost`, `tax_description`, `tax_rate`, `tax_shipping`, `currency`, `coupon_name`, `coupon_discount`, `order_status_description_id`, `date_modified`, `date_added`, `ip`, `ormonth`, `oryear`) VALUES
(22, 24, 'saina', 'saina', 'sai@gmail.com', '676578657', 'gfhgfh', 'saina', 'saina', 'gdfgdfgd', '7657', 'gfhgf', 1, 'tamilnadu', 'Flat Rate', 'gfhgfh', 'saina', 'saina', 'gdfgdfgd', '7657', 'gfhgf', 1, 'tamilnadu', 'Cash on delivery', 'werwerwrewwe', '2000.00', '0.00', '', '0.00', 0, '&#8377;', '', '0.00', 2, 0, 1427837769, '127.0.0.1', '03', '2015'),
(20, 23, 'ab', 'ab', 'ab@gmail.com', '123', 'fdsfds', 'ab', 'ab', 'dsfdsfsd', '45345', 'sdfdsf', 1, 'tamilnadu', 'Flat Rate', 'fdsfds', 'ab', 'ab', 'dsfdsfsd', '45345', 'sdfdsf', 1, 'tamilnadu', 'Bank transfer', 'dsfdsf', '1199.00', '0.00', '', '0.00', 0, '&#8377;', '', '0.00', 1, 0, 1427818656, '127.0.0.1', '03', '2015'),
(21, 23, 'ab', 'ab', 'ab@gmail.com', '123', 'fdsfds', 'ab', 'ab', 'dsfdsfsd', '45345', 'sdfdsf', 1, 'tamilnadu', 'Flat Rate', 'fdsfds', 'ab', 'ab', 'dsfdsfsd', '45345', 'sdfdsf', 1, 'tamilnadu', 'Bank transfer', 'zxcvxv', '20000.00', '0.00', '', '0.00', 0, '&#8377;', '', '0.00', 1, 0, 1427833779, '127.0.0.1', '03', '2015');

-- --------------------------------------------------------

--
-- Table structure for table `order_de_dealer`
--

CREATE TABLE IF NOT EXISTS `order_de_dealer` (
  `orderid` mediumtext NOT NULL,
  `productid` mediumtext NOT NULL,
  `quantity` mediumtext NOT NULL,
  `price` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_de_dealer`
--


-- --------------------------------------------------------

--
-- Table structure for table `order_digital_goods`
--

CREATE TABLE IF NOT EXISTS `order_digital_goods` (
  `order_digital_good_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `display_filename` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` int(11) unsigned NOT NULL,
  `date_expiration` int(11) unsigned NOT NULL,
  `number_days` int(11) unsigned NOT NULL,
  `number_downloadable` int(11) unsigned NOT NULL,
  `downloads` int(11) unsigned NOT NULL,
  `download_hash` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`order_digital_good_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `order_digital_goods`
--

INSERT INTO `order_digital_goods` (`order_digital_good_id`, `order_id`, `product_id`, `display_filename`, `filename`, `date_added`, `date_expiration`, `number_days`, `number_downloadable`, `downloads`, `download_hash`) VALUES
(1, 1, 10, 'ebook.pdf', 'ebook.pdf', 1364881069, 0, 0, 10, 0, 'e2e7e21899ff74f1a7baa7917300e076');

-- --------------------------------------------------------

--
-- Table structure for table `order_options`
--

CREATE TABLE IF NOT EXISTS `order_options` (
  `order_option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `order_product_id` int(11) unsigned NOT NULL,
  `option_value_id` int(11) unsigned NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_price` decimal(17,2) NOT NULL DEFAULT '0.00',
  `option_type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `order_options`
--

INSERT INTO `order_options` (`order_option_id`, `order_id`, `order_product_id`, `option_value_id`, `option_name`, `option_value`, `option_price`, `option_type`) VALUES
(1, 5, 9, 56, '23', 'Blue', '13000.00', '+');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE IF NOT EXISTS `order_products` (
  `order_product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `product_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total` decimal(17,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(17,2) NOT NULL DEFAULT '0.00',
  `product_quantity` int(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=47 ;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_product_id`, `order_id`, `product_id`, `product_name`, `product_price`, `total`, `tax`, `product_quantity`) VALUES
(1, 1, 9, 'Webcam', '12.50', '12.50', '0.00', 1),
(2, 1, 10, 'Sample PDF eBook', '9.50', '9.50', '0.00', 1),
(3, 1, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(4, 1, 1, 'Laptop', '1700.00', '1700.00', '0.00', 1),
(5, 2, 9, 'Webcam', '12.50', '12.50', '0.00', 1),
(6, 3, 9, 'Webcam', '12.50', '12.50', '0.00', 1),
(7, 3, 5, 'Nikon', '200.00', '200.00', '0.00', 1),
(8, 4, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(9, 0, 8, 'Scanner', '30.00', '30.00', '0.00', 1),
(10, 0, 1, 'Laptop', '1700.00', '3400.00', '0.00', 2),
(11, 0, 9, 'Webcam', '12.50', '12.50', '0.00', 1),
(12, 0, 7, 'Printer', '45.00', '45.00', '0.00', 1),
(13, 0, 6, 'Monitor', '225.00', '1125.00', '0.00', 5),
(14, 0, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(15, 0, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(16, 0, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(17, 0, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(18, 0, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(19, 0, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(20, 0, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(21, 0, 1, 'Laptop', '1700.00', '1700.00', '0.00', 1),
(22, 0, 7, 'Printer', '45.00', '135.00', '0.00', 3),
(23, 0, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(24, 0, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(25, 5, 9, 'Webcam', '12.50', '12.50', '0.00', 1),
(26, 6, 8, 'Scanner', '30.00', '30.00', '0.00', 1),
(27, 6, 7, 'Printer', '45.00', '45.00', '0.00', 1),
(28, 7, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(29, 8, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(30, 9, 6, 'Monitor', '225.00', '1125.00', '0.00', 5),
(31, 10, 4, 'iMac', '1199.00', '29975.00', '0.00', 25),
(32, 11, 6, 'Monitor', '225.00', '450.00', '0.00', 2),
(33, 12, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(34, 13, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(35, 13, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(36, 14, 6, 'Monitor', '225.00', '450.00', '0.00', 2),
(37, 15, 6, 'Monitor', '225.00', '450.00', '0.00', 2),
(38, 16, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(39, 16, 6, 'Monitor', '225.00', '225.00', '0.00', 1),
(40, 17, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(41, 18, 6, 'Monitor', '225.00', '450.00', '0.00', 2),
(42, 19, 6, 'Monitor', '225.00', '450.00', '0.00', 2),
(43, 20, 4, 'iMac', '1199.00', '1199.00', '0.00', 1),
(44, 21, 32, 'marina Beach', '500.00', '20000.00', '0.00', 40),
(45, 22, 32, 'marina Beach', '500.00', '2000.00', '0.00', 4),
(46, 0, 31, 'ooty', '500.00', '5000.00', '0.00', 10);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE IF NOT EXISTS `order_status` (
  `order_status_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(11) unsigned NOT NULL,
  `order_status_description_id` int(11) unsigned NOT NULL,
  `date_added` int(11) unsigned NOT NULL,
  PRIMARY KEY (`order_status_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=48 ;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`order_status_id`, `order_id`, `order_status_description_id`, `date_added`) VALUES
(1, 1, 1, 1364881069),
(2, 1, 3, 1364881250),
(3, 1, 1, 1364890930),
(4, 1, 2, 1365069324),
(5, 1, 5, 1365069339),
(6, 1, 2, 1365069903),
(7, 2, 1, 1365069984),
(8, 1, 1, 1365070066),
(9, 1, 2, 1365070085),
(10, 3, 1, 1365573176),
(11, 4, 1, 1365589513),
(12, 2, 2, 1395314238),
(13, 5, 1, 1395314935),
(14, 0, 1, 1396249458),
(15, 5, 2, 1418446456),
(16, 4, 8, 1418446474),
(17, 0, 1, 1421903436),
(18, 0, 1, 1424418925),
(19, 0, 1, 1426415112),
(20, 0, 1, 1426419883),
(21, 0, 1, 1426419925),
(22, 0, 1, 1426419973),
(23, 0, 1, 1426420056),
(24, 0, 1, 1426420131),
(25, 0, 1, 1426420246),
(26, 0, 1, 1426420336),
(27, 0, 1, 1426420505),
(28, 5, 1, 1426420739),
(29, 6, 1, 1426420781),
(30, 7, 1, 1426420893),
(31, 8, 1, 1426421220),
(32, 9, 1, 1426421312),
(33, 10, 1, 1426421371),
(34, 11, 1, 1426421597),
(35, 12, 1, 1426421709),
(36, 13, 1, 1426422041),
(37, 14, 1, 1426422577),
(38, 15, 1, 1426423562),
(39, 16, 1, 1426424141),
(40, 17, 1, 1426424774),
(41, 18, 1, 1426425164),
(42, 19, 1, 1426838604),
(43, 20, 1, 1427818656),
(44, 21, 1, 1427833779),
(45, 22, 1, 1427837769),
(46, 22, 2, 1427837839),
(47, 0, 1, 1429377268);

-- --------------------------------------------------------

--
-- Table structure for table `order_status_descriptions`
--

CREATE TABLE IF NOT EXISTS `order_status_descriptions` (
  `order_status_description_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `status_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `invoice` tinyint(1) unsigned DEFAULT NULL,
  PRIMARY KEY (`order_status_description_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `order_status_descriptions`
--

INSERT INTO `order_status_descriptions` (`order_status_description_id`, `status_name`, `invoice`) VALUES
(1, 'Pending', 0),
(2, 'Completed', 1),
(3, 'Processing', 1),
(4, 'Shipped', 1),
(5, 'Canceled', 0),
(6, 'Denied', 0),
(7, 'Failed', 0),
(8, 'Refunded', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8_unicode_ci,
  `qr_image` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `product_image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_thumbnail` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` decimal(17,2) NOT NULL DEFAULT '0.00',
  `product_quantity` int(4) unsigned NOT NULL DEFAULT '0',
  `shipping` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=36 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `qr_image`, `product_image`, `product_thumbnail`, `product_price`, `product_quantity`, `shipping`) VALUES
(35, 'Zoo', '<p>dfgdfgdfg dfgdfg dff</p>', '', '1427837581c9793bf9aa0b0e1ab26d7af54c4fd9f3.jpg', '142783758133c7a96ab31c68a1ecbca66ac23982df.jpg', '600.00', 40, 0),
(32, 'marina Beach', '<p>Situated at the tip of the Pamban Island and 50&nbsp;km from the coast of <a title="Sri Lanka" href="http://en.wikipedia.org/wiki/Sri_Lanka">Sri Lanka</a>, is considered to be as sacred as <a title="Varanasi" href="http://en.wikipedia.org/wiki/Varanasi">Varanasi</a> and is a bustling pilgrimage center. Name</p>', '', '14278324881238ecb7cbb9233096595e5bbeda3aa2.jpg', '142783248820b50b972c0f01e5b1ed37d73c3d9ec9.jpg', '500.00', 1, 0),
(31, 'ooty', '<p>Situated at the tip of the Pamban Island and 50&nbsp;km from the coast of <a title="Sri Lanka" href="http://en.wikipedia.org/wiki/Sri_Lanka">Sri Lanka</a>, is considered to be as sacred as <a title="Varanasi" href="http://en.wikipedia.org/wiki/Varanasi">Varanasi</a> and is a bustling pilgrimage center. Name</p>', '', '1427832429fde45deeb0dfcc18adbd566353dcd303.jpg', '1427832430a1f7ad46b656c8d62dbe2dd9e7f4d76d.jpg', '500.00', 20, 0),
(30, 'uluru', '<p>Situated at the tip of the Pamban Island and 50&nbsp;km from the coast of <a title="Sri Lanka" href="http://en.wikipedia.org/wiki/Sri_Lanka">Sri Lanka</a>, is considered to be as sacred as <a title="Varanasi" href="http://en.wikipedia.org/wiki/Varanasi">Varanasi</a> and is a bustling pilgrimage center. Name</p>', '', '1427831915d2bf1201d1e9f5a74e5220e5ac3d0172.jpg', '142783191656d9239e9a6bbb1c12e4a946228d9bbd.jpg', '35000.00', 5, 0),
(28, 'port jackson', '<p>Situated at the tip of the Pamban Island and 50&nbsp;km from the coast of <a title="Sri Lanka" href="http://en.wikipedia.org/wiki/Sri_Lanka">Sri Lanka</a>, is considered to be as sacred as <a title="Varanasi" href="http://en.wikipedia.org/wiki/Varanasi">Varanasi</a> and is a bustling pilgrimage center. Name</p>', '', '1427831472ab9adf467f7ccc703d7ece2b394cec3a.jpg', '1427831473d752132f974bbda9acb3be423d63c94c.jpg', '45000.00', 10, 0),
(29, 'Blue Mountains', '<p>Situated at the tip of the Pamban Island and 50&nbsp;km from the coast of <a title="Sri Lanka" href="http://en.wikipedia.org/wiki/Sri_Lanka">Sri Lanka</a>, is considered to be as sacred as <a title="Varanasi" href="http://en.wikipedia.org/wiki/Varanasi">Varanasi</a> and is a bustling pilgrimage center. Name</p>', '', '14278318422051aa70a34f96ddfc806d2f2e3d496e.jpg', '1427831842adb8927a8ffb9b057db2173cf2e4e9c5.jpg', '45000.00', 3, 0),
(33, 'Pichavaram Mangrove Forest', '<p>Situated at the tip of the Pamban Island and 50&nbsp;km from the coast of <a title="Sri Lanka" href="http://en.wikipedia.org/wiki/Sri_Lanka">Sri Lanka</a>, is considered to be as sacred as <a title="Varanasi" href="http://en.wikipedia.org/wiki/Varanasi">Varanasi</a> and is a bustling pilgrimage center. Name</p>', '', '142783254010d3db9040dfe6b315d8d55866c4acec.jpg', '1427832540f9e292e6ae57de154dd1d982b12c35fa.jpg', '500.00', 35, 0),
(34, 'Rameswaram', '<p>Situated at the tip of the Pamban Island and 50&nbsp;km from the coast of <a title="Sri Lanka" href="http://en.wikipedia.org/wiki/Sri_Lanka">Sri Lanka</a>, is considered to be as sacred as <a title="Varanasi" href="http://en.wikipedia.org/wiki/Varanasi">Varanasi</a> and is a bustling pilgrimage center. Name</p>', '', '1427832575c200b41d0bf00fedf3e330f0e4936867.jpg', '14278325763e950aca435a12e7e33ba1ab29ea02a0.jpg', '600.00', 40, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE IF NOT EXISTS `product_images` (
  `image_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`image_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=21 ;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`image_id`, `product_id`, `image`, `thumbnail`) VALUES
(2, 13, '1365080415043d001effd09a93f3952db9202658f8.png', '13650804150249fa223dec8cbb7e12cb476ff3a2fb.png'),
(3, 16, '1365753045c9058ff602f0519b67199c4baa79adb8.png', '1365753046fdb4b0e2f7bd77758bdc2807597ddd15.png'),
(6, 25, NULL, NULL),
(7, 0, '142782838872f2645ff865d3d344bcb0544299736d.jpg', '142782838947b73bede5524ccbc9b82f451e6f0cf0.jpg'),
(8, 24, '14278285124e41c9df024fa6c125db7ea19c006905.jpg', '1427828513f3bd2dbfb5a3a2f68f09bf5f7f5a123f.jpg'),
(9, 25, '14278288843648a76ba7bd63fbb96de61859f85c35.jpg', '14278288844e644ff35e7ebb141068ff7f088888e8.jpg'),
(10, 26, '14278294543e2f787178075a36558feac854574b30.jpg', '14278294549935e5b103cc99e3c9aa4e56d203bdf0.jpg'),
(11, 0, '142782979991204eb64498958ce66cf6568ef7785b.jpg', '1427829799d4d9ebca34cf934b256af62b5bf9df5f.jpg'),
(12, 27, '142783006319b3de7c8ba988690cacec57e3782f5b.jpg', '1427830063a33d461585ea5d1b6e88163c7050c37d.jpg'),
(13, 28, '14278314734d343bf993cb935d7164c3098569667c.jpg', '1427831473d09f5fae117a6578b7721f669e0c2d4e.jpg'),
(14, 29, '1427831842266f9fe41e510d368b311b4ee9f38658.jpg', '142783184231eae98929cbc6cd5b81906063d54830.jpg'),
(15, 30, '1427831916792377809b475fbed00678cee84ce008.jpg', '14278319160674385c3fdaf5891cd332bf4425d311.jpg'),
(16, 31, '14278324308fed2c4b4e70201793a731ee10feb975.jpg', '142783243033dd550757e7127eeddef284cbc10eaa.jpg'),
(17, 32, '1427832488da0794546d501fb0ee44b143ab1320fc.jpg', '14278324887630227fc73ba916bc89a9adde3fe6c7.jpg'),
(18, 33, '14278325407fcd2eef7a78bd8ae1548591d9b3fe4e.jpg', '14278325415ac1ae31f9ede275fc3689660ac633ca.jpg'),
(19, 34, '1427832576a73002f57c0ef83464dd57d7545c08a6.jpg', '1427832576fdfc5d0933bfbcc418b9c4c661896f8c.jpg'),
(20, 35, '1427837581b8f4fee91e745cf6dc2fc733b4c56e91.jpg', '1427837581fe3ca5be51f5106775736127ea4a53ed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product_options`
--

CREATE TABLE IF NOT EXISTS `product_options` (
  `option_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned NOT NULL,
  `option_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `product_options`
--


-- --------------------------------------------------------

--
-- Table structure for table `product_option_values`
--

CREATE TABLE IF NOT EXISTS `product_option_values` (
  `option_value_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `option_id` int(11) unsigned NOT NULL,
  `product_id` int(11) unsigned NOT NULL,
  `option_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `option_price` decimal(17,2) NOT NULL DEFAULT '0.00',
  `option_type` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `option_quantity` int(4) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `product_option_values`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) unsigned NOT NULL,
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `user_status` tinyint(1) unsigned DEFAULT NULL,
  `user_approved` tinyint(1) unsigned DEFAULT NULL,
  `user_created` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `remember_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activation_code` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `couponsts` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `group_id`, `user_email`, `user_password`, `user_status`, `user_approved`, `user_created`, `last_login`, `last_ip`, `remember_code`, `activation_code`, `couponsts`) VALUES
(1, 1, 'admin@admin.com', '8cb2237d0679ca88db6464eac60da96345513964', 1, 1, 0, 1429378654, '127.0.0.1', '', '', 0),
(2, 2, 'senthil@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 1, 1, 1364880500, 1426838537, '127.0.0.1', NULL, NULL, 0),
(3, 3, 'murgan@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 1, 1, 1364974473, 1421903626, '127.0.0.1', NULL, NULL, 0),
(21, 2, 'riy@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', 1, 1, 1395731634, 1395758942, '127.0.0.1', NULL, NULL, 0),
(22, 2, 'aaa@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 1, 1424418889, 1429378511, '127.0.0.1', NULL, NULL, 0),
(23, 2, 'ab@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 1, 1427818622, 1427833716, '127.0.0.1', NULL, NULL, 0),
(24, 2, 'sai@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 1, 1, 1427837660, 1427838526, '127.0.0.1', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `group_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `group_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`group_id`, `group_name`, `group_description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'customer', 'Customer'),
(3, 'dealer', 'Dealer');

-- --------------------------------------------------------

--
-- Table structure for table `user_profiles`
--

CREATE TABLE IF NOT EXISTS `user_profiles` (
  `profile_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`profile_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `user_profiles`
--

INSERT INTO `user_profiles` (`profile_id`, `user_id`, `first_name`, `last_name`) VALUES
(1, 1, 'Administrator', 'prakash'),
(2, 2, 'Senthil ', 'Pandian'),
(3, 3, 'murgan', 'murgan23'),
(23, 21, 'Riyaz', 'Khan'),
(24, 22, 'MyprojectBazaar', 'Kumar'),
(22, 20, 'Rajesh Kumar', 'raju'),
(25, 22, 'aaa', 'aaa'),
(26, 23, 'ab', 'ab'),
(27, 24, 'saina', 'saina');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE IF NOT EXISTS `vendors` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `productid` mediumtext NOT NULL,
  `productname` mediumtext NOT NULL,
  `image` mediumtext NOT NULL,
  `quality` mediumtext NOT NULL,
  `price` mediumtext NOT NULL,
  `dateofpurchase` mediumtext NOT NULL,
  `vendorname` mediumtext NOT NULL,
  `address` mediumtext NOT NULL,
  `phone` mediumtext NOT NULL,
  `email` mediumtext NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`sno`, `productid`, `productname`, `image`, `quality`, `price`, `dateofpurchase`, `vendorname`, `address`, `phone`, `email`) VALUES
(1, 'gdfg', 'dfgdfgdf', '../product_image/gdfg3251583424_40f233a051_o.jpg', 'gdfg', 'dfg', 'dfgdfg', 'dfgdf', 'gdfg', 'dfg', 'dfg'),
(3, 'fgfghfgh', 'fghfghfg', '../product_image/fgfghfgh3251583424_40f233a051_o.jpg', 'hfgh', 'fghfghf', 'ghfg', 'fghfghfg', 'hfgh', 'fghfg', 'fgh');

-- --------------------------------------------------------

--
-- Table structure for table `visitor_track`
--

CREATE TABLE IF NOT EXISTS `visitor_track` (
  `sno` int(12) NOT NULL AUTO_INCREMENT,
  `userip` mediumtext NOT NULL,
  `vdate` mediumtext NOT NULL,
  `vtime` mediumtext NOT NULL,
  `vmonth` mediumtext NOT NULL,
  `vyear` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `visitor_track`
--

INSERT INTO `visitor_track` (`sno`, `userip`, `vdate`, `vtime`, `vmonth`, `vyear`, `status`) VALUES
(1, '127.0.0.1', '23/03/2015', '19:24:00 PM', 'Mar', '2015', 0),
(2, '127.0.0.1', '24/03/2015', '17:51:34 PM', 'Mar', '2015', 0),
(3, '127.0.0.1', '31/03/2015', '21:58:35 PM', 'Mar', '2015', 0),
(4, '127.0.0.1', '01/04/2015', '03:18:07 AM', 'Apr', '2015', 0),
(5, '127.0.0.1', '18/04/2015', '23:04:16 PM', 'Apr', '2015', 0);
