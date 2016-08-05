-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2016 at 12:02 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phonecat`
--

-- --------------------------------------------------------

--
-- Table structure for table `android`
--

CREATE TABLE IF NOT EXISTS `android` (
  `android_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `os` varchar(100) NOT NULL,
  `ui` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `android`
--

INSERT INTO `android` (`android_id`, `phone_id`, `os`, `ui`) VALUES
(1, 1, 'Android 3.0', 'Honeycomb'),
(2, 2, 'Android 3.0', 'Android'),
(3, 3, 'Android 2.2', 'MOTOBLUR');

-- --------------------------------------------------------

--
-- Table structure for table `availability`
--

CREATE TABLE IF NOT EXISTS `availability` (
  `availability_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `list` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `availability`
--

INSERT INTO `availability` (`availability_id`, `phone_id`, `list`) VALUES
(1, 1, ''),
(2, 2, 'Verizon'),
(3, 3, 'AT&T');

-- --------------------------------------------------------

--
-- Table structure for table `battery`
--

CREATE TABLE IF NOT EXISTS `battery` (
  `battery_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `standbyTime` varchar(200) NOT NULL,
  `talkTime` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `battery`
--

INSERT INTO `battery` (`battery_id`, `phone_id`, `standbyTime`, `talkTime`, `type`) VALUES
(1, 1, '336 hours', '24 hours', 'Other ( mAH)'),
(2, 2, '336 hours', '24 hours', 'Other (3250 mAH)'),
(3, 3, '400 hours', '5 hours', 'Lithium Ion (Li-Ion) (1930 mAH)');

-- --------------------------------------------------------

--
-- Table structure for table `camera`
--

CREATE TABLE IF NOT EXISTS `camera` (
  `camera_id` int(11) NOT NULL,
  `features` varchar(200) NOT NULL,
  `primary` varchar(200) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camera`
--

INSERT INTO `camera` (`camera_id`, `features`, `primary`, `phone_id`) VALUES
(1, 'Flash,Video', '5.0 megapixels', 1),
(2, 'Flash,Video', '5.0 megapixels', 2),
(3, '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `connectivity`
--

CREATE TABLE IF NOT EXISTS `connectivity` (
  `connectivity_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `bluetooth` varchar(200) NOT NULL,
  `cell` varchar(200) NOT NULL,
  `gps` varchar(100) NOT NULL,
  `infrared` varchar(100) NOT NULL,
  `wifi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connectivity`
--

INSERT INTO `connectivity` (`connectivity_id`, `phone_id`, `bluetooth`, `cell`, `gps`, `infrared`, `wifi`) VALUES
(1, 1, 'Bluetooth 2.1', '', 'true', 'false', '802.11 b/g/n'),
(2, 2, 'Bluetooth 2.1', 'CDMA 800 /1900 LTE 700, Rx diversity in all bands', 'true', 'false', '802.11 a/b/g/n'),
(3, 3, 'Bluetooth 2.1', 'WCDMA 850/1900/2100, GSM 850/900/1800/1900, HSDPA 14Mbps (Category 10) Edge Class 12, GPRS Class 12, eCompass, AGPS', 'true', 'false', '802.11 a/b/g/n');

-- --------------------------------------------------------

--
-- Table structure for table `display`
--

CREATE TABLE IF NOT EXISTS `display` (
  `display_id` int(11) NOT NULL,
  `screenResolution` varchar(200) NOT NULL,
  `screenSize` varchar(200) NOT NULL,
  `touchScreen` varchar(200) NOT NULL,
  `phone_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `display`
--

INSERT INTO `display` (`display_id`, `screenResolution`, `screenSize`, `touchScreen`, `phone_id`) VALUES
(1, 'WXGA (1200 x 800)', '10.1 inches', 'true', 1),
(2, 'WXGA (1200 x 800)', '10.1 inches', 'true', 2),
(5, 'QHD (960 x 540)', '4.0 inches', 'true', 3);

-- --------------------------------------------------------

--
-- Table structure for table `hardware`
--

CREATE TABLE IF NOT EXISTS `hardware` (
  `hardware_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `accelerometer` varchar(200) NOT NULL,
  `audioJack` varchar(200) NOT NULL,
  `cpu` varchar(200) NOT NULL,
  `fmRadio` varchar(200) NOT NULL,
  `physicalKeyboard` varchar(200) NOT NULL,
  `usb` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`hardware_id`, `phone_id`, `accelerometer`, `audioJack`, `cpu`, `fmRadio`, `physicalKeyboard`, `usb`) VALUES
(1, 1, 'true', '3.5mm', '1 GHz Dual Core Tegra 2', 'false', 'false', 'USB 2.0'),
(2, 2, 'true', '3.5mm', '1 GHz Dual Core Tegra 2', 'false', 'false', 'USB 2.0'),
(3, 3, 'true', '3.5mm', '1 GHz Dual Core', 'false', 'false', 'USB 2.0');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `images_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `list` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`images_id`, `phone_id`, `list`) VALUES
(1, 1, 'img/phones/motorola-xoom-with-wi-fi.0.jpg,img/phones/motorola-xoom-with-wi-fi.1.jpg,img/phones/motorola-xoom-with-wi-fi.2.jpg,img/phones/motorola-xoom-with-wi-fi.3.jpg,img/phones/motorola-xoom-with-wi-fi.4.jpg,img/phones/motorola-xoom-with-wi-fi.5.jpg'),
(2, 2, 'img/phones/motorola-xoom.0.jpg,img/phones/motorola-xoom.1.jpg,img/phones/motorola-xoom.2.jpg'),
(3, 3, 'img/phones/motorola-atrix-4g.0.jpg,img/phones/motorola-atrix-4g.1.jpg,img/phones/motorola-atrix-4g.2.jpg,img/phones/motorola-atrix-4g.3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `phone`
--

CREATE TABLE IF NOT EXISTS `phone` (
  `phone_id` int(11) NOT NULL,
  `id` varchar(250) NOT NULL,
  `age` varchar(10) NOT NULL,
  `carrier` varchar(100) NOT NULL,
  `imageUrl` varchar(250) NOT NULL,
  `name` varchar(150) NOT NULL,
  `snippet` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phone`
--

INSERT INTO `phone` (`phone_id`, `id`, `age`, `carrier`, `imageUrl`, `name`, `snippet`) VALUES
(1, 'motorola-xoom-with-wi-fi', '0', '', 'img/phones/motorola-xoom-with-wi-fi.0.jpg', 'Motorola XOOM\\u2122 with Wi-Fi', 'The Next, Next Generation\\r\\n\\r\\nExperience the future with Motorola XOOM with Wi-Fi, the world''s first tablet powered by Android 3.0 (Honeycomb).'),
(2, 'motorola-xoom', '1', '', 'img/phones/motorola-xoom.0.jpg', 'MOTOROLA XOOM\\u2122', 'The Next, Next Generation\\n\\nExperience the future with MOTOROLA XOOM, the world''s first tablet powered by Android 3.0 (Honeycomb).'),
(3, 'motorola-atrix-4g', '2', 'AT&T', 'img/phones/motorola-atrix-4g.0.jpg', 'MOTOROLA ATRIX\\u2122 4G', 'MOTOROLA ATRIX 4G the world''s most powerful smartphone.'),
(4, 'dell-streak-7', '3', '', 'img/phones/dell-streak-7.0.jpg', 'Dell Streak 7', 'Introducing Dell\\u2122 Streak 7. Share photos, videos and movies together. It\\u2019s small enough to carry around, big enough to gather around.'),
(5, 'samsung-gem', '4', 'Cellular South', 'img/phones/samsung-gem.0.jpg', 'Samsung Gem\\u2122', 'The Samsung Gem\\u2122 brings you everything that you would expect and more from a touch display smart phone \\u2013 more apps, more features and a more affordable price.'),
(6, 'dell-venue', '5', 'Dell', 'img/phones/dell-venue.0.jpg', 'Dell Venue', 'The Dell Venue; Your Personal Express Lane to Everything'),
(7, 'nexus-s', '6', 'Best Buy', 'img/phones/nexus-s.0.jpg', 'Nexus S', 'Fast just got faster with Nexus S. A pure Google experience, Nexus S is the first phone to run Gingerbread (Android 2.3), the fastest version of Android yet.'),
(8, 'lg-axis', '7', 'Cellular South', 'img/phones/lg-axis.0.jpg', 'LG Axis', 'Android Powered, Google Maps Navigation, 5 Customizable Home Screens'),
(9, 'samsung-galaxy-tab', '8', '', 'img/phones/samsung-galaxy-tab.0.jpg', 'Samsung Galaxy Tab\\u2122', 'Feel Free to Tab\\u2122. The Samsung Galaxy Tab\\u2122 brings you an ultra-mobile entertainment experience through its 7\\u201d display, high-power processor and Adobe\\u00ae Flash\\u00ae Player compatibility.'),
(10, 'samsung-showcase-a-galaxy-s-phone', '9', 'Cellular South', 'img/phones/samsung-showcase-a-galaxy-s-phone.0.jpg', 'Samsung Showcase\\u2122 a Galaxy S\\u2122 phone', 'The Samsung Showcase\\u2122 delivers a cinema quality experience like you\\u2019ve never seen before. Its innovative 4\\u201d touch display technology provides rich picture brilliance, even outdoors'),
(11, 'droid-2-global-by-motorola', '10', 'Verizon', 'img/phones/droid-2-global-by-motorola.0.jpg', 'DROID\\u2122 2 Global by Motorola', 'The first smartphone with a 1.2 GHz processor and global capabilities.'),
(12, 'droid-pro-by-motorola', '11', 'Verizon', 'img/phones/droid-pro-by-motorola.0.jpg', 'DROID\\u2122 Pro by Motorola', 'The next generation of DOES.'),
(13, 'motorola-bravo-with-motoblur', '12', 'AT&T', 'img/phones/motorola-bravo-with-motoblur.0.jpg', 'MOTOROLA BRAVO\\u2122 with MOTOBLUR\\u2122', 'An experience to cheer about.'),
(14, 'motorola-defy-with-motoblur', '13', 'T-Mobile', 'img/phones/motorola-defy-with-motoblur.0.jpg', 'Motorola DEFY\\u2122 with MOTOBLUR\\u2122', 'Are you ready for everything life throws your way?'),
(15, 't-mobile-mytouch-4g', '14', 'T-Mobile', 'img/phones/t-mobile-mytouch-4g.0.jpg', 'T-Mobile myTouch 4G', 'The T-Mobile myTouch 4G is a premium smartphone designed to deliver blazing fast 4G speeds so that you can video chat from practically anywhere, with or without Wi-Fi.'),
(16, 'samsung-mesmerize-a-galaxy-s-phone', '15', 'US Cellular', 'img/phones/samsung-mesmerize-a-galaxy-s-phone.0.jpg', 'Samsung Mesmerize\\u2122 a Galaxy S\\u2122 phone', 'The Samsung Mesmerize\\u2122 delivers a cinema quality experience like you\\u2019ve never seen before. Its innovative 4\\u201d touch display technology provides rich picture brilliance,even outdoors'),
(17, 'sanyo-zio', '16', 'Sprint', 'img/phones/sanyo-zio.0.jpg', 'SANYO ZIO', 'The Sanyo Zio by Kyocera is an Android smartphone with a combination of ultra-sleek styling, strong performance and unprecedented value.'),
(18, 'samsung-transform', '17', '', 'img/phones/samsung-transform.0.jpg', 'Samsung Transform\\u2122', 'The Samsung Transform\\u2122 brings you a fun way to customize your Android powered touch screen phone to just the way you like it through your favorite themed \\u201cSprint ID Service Pack\\u201d.'),
(19, 't-mobile-g2', '18', '', 'img/phones/t-mobile-g2.0.jpg', 'T-Mobile G2', 'The T-Mobile G2 with Google is the first smartphone built for 4G speeds on T-Mobile''s new network. Get the information you need, faster than you ever thought possible.'),
(20, 'motorola-charm-with-motoblur', '19', '', 'img/phones/motorola-charm-with-motoblur.0.jpg', 'Motorola CHARM\\u2122 with MOTOBLUR\\u2122', 'Motorola CHARM fits easily in your pocket or palm.  Includes MOTOBLUR service.');

-- --------------------------------------------------------

--
-- Table structure for table `phonedetail`
--

CREATE TABLE IF NOT EXISTS `phonedetail` (
  `phone_id` int(11) NOT NULL,
  `id` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `name` varchar(200) NOT NULL,
  `additionalFeatures` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonedetail`
--

INSERT INTO `phonedetail` (`phone_id`, `id`, `description`, `name`, `additionalFeatures`) VALUES
(1, 'motorola-xoom-with-wi-fi', 'Motorola XOOM with Wi-Fi has a super-powerful dual-core processor and Android\\u2122 3.0 (Honeycomb) \\u2014 the Android platform designed specifically for tablets. With its 10.1-inch HD widescreen display, you\\u2019ll enjoy HD video in a thin, light, powerful and upgradeable tablet.', 'Motorola XOOM\\u2122 with Wi-Fi', 'Sensors: proximity, ambient light, barometer, gyroscope'),
(2, 'motorola-xoom', 'MOTOROLA XOOM has a super-powerful dual-core processor and Android\\u2122 3.0 (Honeycomb) \\u2014 the Android platform designed specifically for tablets. With its 10.1-inch HD widescreen display, you\\u2019ll enjoy HD video in a thin, light, powerful and upgradeable tablet.', 'MOTOROLA XOOM\\u2122', 'Front-facing camera. Sensors: proximity, ambient light, barometer, gyroscope.'),
(3, 'motorola-atrix-4g', 'MOTOROLA ATRIX 4G gives you dual-core processing power and the revolutionary webtop application. With webtop and a compatible Motorola docking station, sold separately, you can surf the Internet with a full Firefox browser, create and edit docs, or access multimedia on a large screen almost anywhere.', 'MOTOROLA ATRIX\\u2122 4G', '');

-- --------------------------------------------------------

--
-- Table structure for table `size_weight`
--

CREATE TABLE IF NOT EXISTS `size_weight` (
  `size_weight_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `dimensions` text NOT NULL,
  `weight` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size_weight`
--

INSERT INTO `size_weight` (`size_weight_id`, `phone_id`, `dimensions`, `weight`) VALUES
(1, 1, '249.1 mm (w),167.8 mm (h),12.9 mm (d)', '708.0 grams'),
(2, 2, '249.0 mm (w),168.0 mm (h),12.7 mm (d)', '726.0 grams');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE IF NOT EXISTS `storage` (
  `storage_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `flash` varchar(100) NOT NULL,
  `ram` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`storage_id`, `phone_id`, `flash`, `ram`) VALUES
(1, 1, '2000MB', '1000MB'),
(2, 2, '32000MB', '1000MB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phone`
--
ALTER TABLE `phone`
  ADD PRIMARY KEY (`phone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `phone`
--
ALTER TABLE `phone`
  MODIFY `phone_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
