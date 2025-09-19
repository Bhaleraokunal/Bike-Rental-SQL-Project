-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2025 at 04:23 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bikerental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2025-02-25 17:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `BookingNumber` bigint(12) DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `BookingNumber`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`, `LastUpdationDate`) VALUES
(1, 123456789, 'test@gmail.com', 1, '2020-07-07', '2020-07-09', 'What  is the cost?', 1, '2020-07-07 14:03:09', NULL),
(2, 987456321, 'test@gmail.com', 4, '2020-07-19', '2020-07-24', 'hfghg', 1, '2020-07-09 17:49:21', '2020-07-11 12:20:57'),
(3, 643656752, 'test@gmail.com', 3, '2025-02-25', '2025-02-28', 'hello world', 1, '2025-02-25 17:59:59', '2025-03-17 08:52:34'),
(4, 361484606, 'test@gmail.com', 4, '2025-03-05', '2025-03-20', 'hiii\r\n', 2, '2025-03-02 08:16:39', '2025-03-17 08:54:09'),
(5, 820129148, 'test@gmail.com', 1, '2025-03-05', '2025-03-05', '2', 0, '2025-03-04 09:12:13', NULL),
(6, 545595088, 'itachiuchihag2004@gmail.com', 2, '2025-04-01', '2025-04-05', 'hey', 1, '2025-03-05 11:48:18', '2025-03-05 11:51:53'),
(7, 153207866, 'kunalbhalerao2004@gmail.com', 8, '2025-03-01', '2025-03-05', 'hey i want this bike', 0, '2025-03-05 12:08:35', NULL),
(8, 822948297, 'kunalbhalerao204@gmail.com', 1, '2025-06-06', '2025-07-08', 'hey i want this bike', 1, '2025-03-06 09:46:29', '2025-03-06 09:47:33'),
(9, 978605083, 'kunalbhalerao204@gmail.com', 6, '2025-03-06', '2025-03-07', 'hey\r\n', 0, '2025-03-06 09:55:50', NULL),
(10, 605791350, 'kunalbhalerao204@gmail.com', 3, '2025-03-06', '2025-03-07', 'Hey i want this bikeAA', 0, '2025-03-06 10:00:30', NULL),
(11, 394674917, 'kunalb@gmail.com', 1, '2025-03-07', '2025-03-08', 'hey', 1, '2025-03-07 07:41:06', '2025-03-07 07:41:57'),
(12, 190803593, 'om@gmail.com', 2, '2025-03-17', '2025-03-18', 'kunal bhalerao', 0, '2025-03-17 08:53:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Honda', '2017-06-18 16:24:34', '2025-03-06 09:50:13'),
(2, '', '2017-06-18 16:24:50', '2025-03-06 09:54:35'),
(3, '', '2017-06-18 16:25:03', '2025-03-06 09:52:39'),
(4, '', '2017-06-18 16:25:13', '2025-03-06 09:55:24'),
(5, '', '2017-06-18 16:25:24', '2025-03-06 09:55:04'),
(7, 'Bajaj', '2017-06-19 06:22:13', '2025-03-06 09:52:04'),
(8, 'Suzuki', '2025-03-06 08:53:36', NULL),
(9, 'Royal Enfield ', '2025-03-06 09:56:44', NULL),
(10, 'Harley-Davidson', '2025-03-19 15:21:11', NULL),
(11, 'Hero ', '2025-03-19 15:21:51', NULL),
(12, 'Ducati Panigale', '2025-03-19 15:22:45', NULL),
(13, 'Ducati ', '2025-03-19 15:23:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Near Sangit Bhavan,Dipnagar', 'kunalbhalerao2004@gmail.com', '8698930858');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(2, 'kunal bhalerao', 'kunalbhalerao2004@gmail.com', '8698930858', 'hello this website is perfectly working', '2025-03-07 07:56:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																														<p data-start=\"66\" data-end=\"92\"><strong data-start=\"66\" data-end=\"90\">TERMS AND CONDITIONS</strong></p><p data-start=\"94\" data-end=\"592\">Welcome to <strong data-start=\"105\" data-end=\"129\">Bike Rental Portal</strong>&nbsp;we, By using our bike rental services (\"Service\"), you agree to the following Terms and Conditions (\"T&amp;C\"), which may be updated from time to time without prior notice. The latest version of the T&amp;C will always be available on our website. Our platform provides an online space for users to rent bikes for personal or commercial use. You understand and agree that the Service may include advertisements, updates, and communications from us.</p><p data-start=\"594\" data-end=\"1110\">As a user, you agree to use the Service only for lawful purposes and provide accurate personal information during rental registration. You will be held responsible for any damage or loss of the rented bike, and you must adhere to all local traffic laws and safety regulations while using the bike. Rental terms, including duration and charges, will be displayed on our website and may vary based on location. Late returns may incur additional fees, and users must return the bike in the same condition as received.</p><p data-start=\"1112\" data-end=\"1556\">We reserve the right to modify or discontinue any part of the Service, temporarily or permanently, without prior notice. We shall not be liable to you or any third party for any modifications. Your privacy is important to us, and our Privacy Policy outlines how we collect, use, and protect your personal information. Our website may contain links to third-party services, and we are not responsible for their content, policies, or practices.</p><p data-start=\"1558\" data-end=\"2014\">We may terminate your access to the Service at our sole discretion without prior notice if we believe you have violated these T&amp;C or engaged in activities harmful to the website or other users. The Service is provided on an \"as is\" and \"as available\" basis, and we do not guarantee uninterrupted, error-free, or secure operation. We shall not be liable for any indirect, incidental, special, or consequential damages arising from your use of the Service.</p><p>\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"2016\" data-end=\"2289\">These T&amp;C shall be governed by and construed in accordance with the laws of, and any disputes shall be resolved in the courts of. If you have any questions regarding these T&amp;C, please contact us at<span style=\"font-size: 1em;\">[kunalbhalerao2004@gmail.com]</span></p>\r\n										\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '										<p><strong>Privacy Policy</strong></p>\r\n<p><strong>Effective Date:</strong> [2025]</p>\r\n<p>Welcome to Bike Rental. Your privacy is important to us, and this Privacy Policy explains how we collect, use, disclose, and protect your personal information when you use our bike rental services.</p>\r\n<p>We collect different types of information to provide and improve our services, including personal details such as your name, email address, phone number, and billing information. Additionally, we gather booking details, payment methods (such as Cash on Delivery), rental history, and user preferences. We also collect device and usage data like IP addresses, browser types, and website analytics, along with location information if you permit us to do so.</p>\r\n<p>We use your information to process and manage bike rental bookings, communicate with you regarding reservations and support requests, improve website functionality and security, send promotional offers if you opt-in, and comply with legal requirements while preventing fraudulent activities. Your personal data is never sold or rented. However, we may share it with service providers for payment processing, customer support, and website hosting. We may also disclose information if required by law or in cases of business transfers such as mergers or acquisitions.</p>\r\n<p>To protect your data, we implement reasonable security measures against unauthorized access, loss, or misuse. However, as no internet-based transmission is completely secure, we cannot guarantee absolute protection. You have the right to access, update, or delete your personal information, opt out of marketing communications, and restrict certain data processing activities. To exercise these rights, please contact us at [Your Contact Email].</p>\r\n<p>Our website uses cookies to enhance user experience, analyze traffic, and personalize content. You can manage cookie preferences through your browser settings. Additionally, our site may contain links to third-party services, and we encourage you to review their privacy policies as we are not responsible for their practices.</p>\r\n<p>This Privacy Policy may be updated periodically, with changes posted on this page alongside an updated effective date. We encourage you to review this policy regularly. If you have any questions, please contact us at [Your Bike Rental Website Name], [Your Contact Email], or [Your Contact Phone Number]. Thank you for using our bike rental services!</p>\r\n										'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(51, 51, 51); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 13px;\">We offer a varied fleet of bikes, ranging from the compact.All our vehicles are bought and maintained at official dealerships only. Automatic transmission bikes are available in every booking class.&nbsp;</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif; font-size: 13px\">As we are not affiliated with any specific automaker, we are able to provide a variety of vehicle makes and models for customers to rent.</span><div><span style=\"color: rgb(52, 52, 52); font-family: &quot;Lucida Sans Unicode&quot;, &quot;Lucida Grande&quot;, sans-serif; font-size: 13px;\">Our mission is to be recognised as the global leader in Bike Rental for companies and the public and private sector by partnering with our clients to provide the best and most efficient Bike Rental solutions and to achieve service excellence.</span><span style=\"color: rgb(52, 52, 52); font-family: Arial, Helvetica, sans-serif; font-size: 13px\"><br></span></div>'),
(11, 'FAQs', 'faqs', '																														<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------Test &nbsp; &nbsp;dsfdsfds</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'test@gmail.com', 'I am satisfied with their service great job', '2020-07-07 14:30:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(2, 'jayesh ', 'itachiuchihag2004@gmail.com', '7db21b847be09bb6b7ca2febf9e1f461', '8669868396', NULL, NULL, NULL, NULL, '2025-03-05 11:39:47', NULL),
(3, 'kunal', 'kunalbhalerao2004@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8669868395', NULL, NULL, NULL, NULL, '2025-03-05 12:07:16', NULL),
(4, 'jayesh ', 'kunalbhalerao204@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8669868396', NULL, NULL, NULL, NULL, '2025-03-06 05:39:38', NULL),
(5, 'kunal', 'kunalb@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '8669868395', NULL, NULL, NULL, NULL, '2025-03-07 07:32:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, 'Honda CB Shine ', 1, 'Honda CB Shine latest Updates\r\n\r\nThe Honda CB Shine continues to be a leading choice in the 125cc commuter motorcycle segment in India. The latest model introduces several enhancements to maintain its appeal among daily commuters. It is powered by a refined 125cc Enhanced Smart Power (eSP) fuel-injected engine, delivering 10.84 PS at 7,500 rpm and 11.2 Nm of torque at 6,000 rpm. This setup ensures a balance of performance and fuel efficiency, with an approximate mileage of 60-65 kmpl. A 5-speed manual gearbox provides smooth acceleration and flexibility across various riding conditions.\r\n\r\nThe 2025 CB Shine features updated graphics and is available in multiple color options, including Rebel Red Metallic, Athletic Blue Metallic, Imperial Green Metallic, and Matte Axis Grey Metallic. It also comes equipped with a semi-digital instrument cluster, an LED headlamp for improved visibility, and a Combined Braking System (CBS) to enhance rider safety. Additionally, the CB Shine is available in multiple variants to cater to diverse rider preferences, including Drum (Standard Edition), Disc, BS6 Deluxe, SP (Sporty), and Special Edition models.\r\n\r\nWith these updates, the Honda CB Shine reinforces its reputation for reliability, efficiency, and rider comfort, ensuring it remains a top contender in its category.', 500, 'Petrol', 2019, 2, 'hondaside.jpg', 'hondadig.jpg', 'hondaleft.jpg', 'hondaback.jpg', 'hondanew.jpg', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-07 07:04:35', '2025-03-07 07:40:44'),
(2, 'Bajaj Pulsar ns200', 7, 'The Bajaj Pulsar NS200 is a prominent motorcycle in the 200cc segment, celebrated for its performance and modern design. It is powered by a 199.5cc liquid-cooled, single-cylinder engine that produces 24.5 PS at 9,750 rpm and 18.74 Nm of torque at 8,000 rpm. This engine is paired with a 6-speed manual transmission, enabling smooth gear shifts and efficient power delivery. \r\n\r\nIn terms of design, the NS200 features a street-fighter aesthetic with sharp lines and aggressive styling. The motorcycle is equipped with a fully digital instrument cluster, providing riders with essential information at a glance. The front suspension comprises inverted telescopic forks, enhancing handling and stability, while the rear is supported by a Nitrox mono-shock absorber. Braking duties are managed by a 300mm front disc and a 230mm rear disc, both featuring dual-channel ABS for improved safety.', 1000, 'Petrol', 2018, 2, 'bjside.jpeg', 'bjleft.jpg', 'bjback.jpg', 'bjblack.jpg', 'bjsidedig.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 07:12:02', '2025-03-19 15:20:39'),
(3, 'Harley-Davidson Iron 883', 10, 'The Harley-Davidson Iron 883 is a rugged and minimalist cruiser motorcycle that belongs to Harley’s Sportster lineup. First introduced in 2010, the Iron 883 became popular for its raw, stripped-down styling and classic bobber-inspired design. It is powered by an 883cc, air-cooled, V-twin Evolution engine, delivering a punchy low-end torque that provides an engaging and enjoyable riding experience.\r\n\r\nWith its blacked-out components, low-slung stance, and peanut-style fuel tank, the Iron 883 exudes a rebellious attitude. The bike features a comfortable solo seat, mid-mounted controls, and a low ride height, making it accessible for both new and experienced riders. The conventional telescopic front forks and dual rear shocks provide a balanced ride, while the disc brakes with optional ABS ensure confident stopping power.\r\n\r\nBuilt for urban cruising and laid-back highway rides, the Harley-Davidson Iron 883 (2010-2022) is a timeless motorcycle that combines old-school charm with modern reliability. However, due to changing emission regulations, Harley-Davidson discontinued the model in 2022, marking the end of an era for this iconic cruiser.', 3000, 'Petrol', 2010, 2, 'hdside.jpeg', 'hdright.jpeg', 'hdleftdig.jpeg', 'hddig.jpeg', 'hdback.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 07:19:21', '2025-03-19 15:21:22'),
(4, 'Honda CBR250R', 1, 'Latest Update: The Honda CBR250R is a sporty and reliable quarter-liter motorcycle that gained popularity for its balance between performance, comfort, and efficiency. Designed with a sleek, aerodynamic full-fairing body, it features a 249cc, liquid-cooled, single-cylinder engine that delivers a smooth and refined power output, making it ideal for both city commuting and highway cruising. The PGM-FI (Programmed Fuel Injection) system ensures optimal fuel efficiency and throttle response, while its 6-speed gearbox provides a seamless riding experience. The bike comes with a pro-link rear suspension and telescopic front forks, offering excellent stability and comfort. Additionally, its dual-disc braking system with an optional ABS variant enhances safety, making it a great choice for both beginners and experienced riders. With its sporty design, comfortable ergonomics, and Honda\'s renowned reliability, the CBR250R remains a strong contender in the entry-level sports bike segment..', 800, 'Petrol', 2019, 2, 'cbside.jpeg', 'cbfront.jpeg', 'cbleft.jpeg', 'cbback.jpeg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 07:25:28', '2025-03-19 15:21:34'),
(5, 'Hero Xtreme 160R', 11, 'The Hero Xtreme 160R is a stylish and performance-oriented 160cc naked streetfighter motorcycle from Hero MotoCorp. First launched in 2020, it is designed to offer a perfect blend of aggressive styling, lightweight chassis, and sporty performance, making it a strong competitor in the 160cc segment.\r\n\r\nThe bike is powered by a 163cc, air-cooled, single-cylinder engine that produces 15.2 PS of power and 14 Nm of torque, delivering a peppy and responsive ride. It features a lightweight frame (weighing around 139.5 kg), telescopic front forks, and a seven-step adjustable rear monoshock, ensuring excellent handling and comfort. The LED lighting setup (headlamp, indicators, and tail lamp), fully digital instrument cluster, and side-stand engine cut-off add to its modern appeal.\r\n\r\nFor safety, the Xtreme 160R comes with disc brakes on both ends with single-channel ABS, ensuring controlled braking. With its sharp design, muscular fuel tank, and sporty ergonomics, the Hero Xtreme 160R (2020-present) is a great choice for urban riders looking for a balance of style, efficiency, and performance.', 2000, 'Petrol', 2020, 5, 'hxright.jpeg', 'hxrightdig.png', 'hxside.jpg', 'hxleft.jpg', 'hxback.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 07:34:17', '2025-03-19 15:22:03'),
(6, 'Royal Enfield Classic 350', 9, 'The Royal Enfield Classic 350 is one of the most iconic motorcycles in India, known for its timeless design, thumping exhaust note, and comfortable ride quality. First launched in 2009, the Classic 350 became a favorite among cruiser enthusiasts, blending retro styling with modern reliability. In 2021, Royal Enfield introduced an all-new J-platform-based Classic 350, offering improved performance, refinement, and better technology while retaining its vintage charm.\r\n\r\nThe bike is powered by a 349cc, air-oil cooled, single-cylinder engine, producing 20.2 PS of power and 27 Nm of torque. The new J-series engine provides smoother power delivery, reduced vibrations, and better efficiency. It features a five-speed gearbox, a double-cradle frame for enhanced stability, and telescopic front forks with twin rear shock absorbers for a plush ride.\r\n\r\nModern features include dual-channel ABS, a semi-digital instrument cluster with an analog speedometer, fuel injection, and an optional Tripper navigation system (on select variants). Available in multiple color schemes and variants, including Redditch, Halcyon, Signals, Dark, and Chrome Editions, the Royal Enfield Classic 350 (2009-present) continues to be a perfect blend of heritage, comfort, and reliability, making it a preferred choice for both city commutes and long-distance touring.', 2500, 'petrol', 2021, 2, 'reside.jpeg', 'reright.png', 'refront.jpeg', 'releft.jpeg', 'reback.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 09:12:49', '2025-03-07 07:45:06'),
(7, 'Ducati Panigale V4', 13, 'The Ducati Panigale V4 is a high-performance superbike that represents the pinnacle of Ducati\'s engineering and racing heritage. Introduced in 2018, it replaced the older L-twin Panigale models with a more powerful 1,103cc, Desmosedici Stradale V4 engine, derived from Ducati’s MotoGP technology. This engine produces over 214 horsepower, making it one of the most powerful production motorcycles in the world.\r\n\r\nThe Panigale V4 features aerodynamic winglets, an advanced electronics package, and a lightweight aluminum frame for superior handling and stability. It comes equipped with cutting-edge rider aids, including cornering ABS, traction control, wheelie control, slide control, and multiple riding modes, all managed by a six-axis IMU (Inertial Measurement Unit). Its Ohlins electronic suspension (on higher variants) and Brembo Stylema brakes ensure top-tier performance on both track and street.\r\n\r\nWith its aggressive styling, state-of-the-art aerodynamics, and MotoGP-inspired technology, the Ducati Panigale V4 is a dream machine for enthusiasts and professional riders alike, redefining the superbike segment with its breathtaking speed, precision, and Italian craftsmanship.', 3000, 'Petrol', 2018, 2, 'dcside.jpg', 'dcleft.jpg', 'dcfront.jpg', 'dcback.jpeg', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-07-07 09:17:46', '2025-03-19 15:23:23'),
(8, 'Honda CB350', 1, 'The Honda CB350 is a retro-modern cruiser motorcycle introduced by Honda Motorcycle & Scooter India (HMSI) in 2020. Designed to compete with the Royal Enfield Classic 350, the CB350 blends classic styling with modern features, making it an appealing choice for riders who love vintage aesthetics with contemporary performance.\r\n\r\nIt is powered by a 348.36cc, air-cooled, single-cylinder engine that produces 21 PS of power and 30 Nm of torque, delivering strong low-end and mid-range performance. The bike features Honda’s Selectable Torque Control (HSTC) for added safety, along with dual-channel ABS, a slipper clutch, and an assist clutch for smooth rides. It also comes equipped with a semi-digital instrument cluster, Bluetooth connectivity (on the H’ness variant), and a LED lighting system.\r\n\r\nThe CB350 lineup includes two main variants:\r\n\r\nHonda H’ness CB350 – A classic roadster with chrome accents and retro appeal.\r\nHonda CB350RS – A sportier version with blacked-out components and a scrambler-inspired design.\r\nWith its refined engine, comfortable ergonomics, and premium build quality, the Honda CB350 (2020-present) is a fantastic option for riders looking for a smooth, reliable, and stylish cruiser in the mid-size segmen', 600, 'Petrol', 2020, 2, 'hcbside.png', 'hcbrightdig.png', 'hcbbackseat.png', 'hcbbacklight.png', 'hcbspeedmet.png', NULL, 1, 1, 1, NULL, NULL, 1, NULL, NULL, NULL, 1, NULL, '2020-07-07 09:23:11', '2025-03-07 07:36:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
