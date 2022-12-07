-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2022 at 11:42 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2021-05-26 18:30:00', '2021-11-11 16:23:15'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2021-11-10 18:28:11', NULL),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2021-11-10 18:28:32', NULL),
(5, 'useruser', '202cb962ac59075b964b07152d234b70', 'user@go.blog', 0, '2022-11-23 03:21:49', NULL),
(6, 'usersaya', '202cb962ac59075b964b07152d234b70', 'saya@user.ya', 0, '2022-11-23 03:23:03', NULL),
(9, 'ahahah', '202cb962ac59075b964b07152d234b70', 'ahaha@gmail.com', 0, '2022-11-23 03:25:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Android', 'Related to Android news', '2021-06-05 18:30:00', '2022-11-22 16:53:21', 1),
(5, 'IOS', 'IOS related News', '2021-06-13 18:30:00', '2022-11-22 16:53:42', 1),
(6, 'XBOX', 'XBOX', '2021-06-21 18:30:00', '2022-11-22 16:54:15', 1),
(7, 'PC', 'PC', '2021-06-21 18:30:00', '2022-11-22 16:54:32', 1),
(8, 'PlayStation', 'PlayStation', '2021-11-07 18:17:28', '2022-11-22 16:54:49', 1),
(9, 'Nitendo', 'Nitendo', '2022-11-22 16:55:16', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2021-11-20 18:30:00', 1),
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 1),
(3, 7, 'ABC', 'abc@test.com', 'This is sample text for testing.', '2021-11-20 18:30:00', 0),
(4, 19, 'yahaha', 'asta@gmail.com', 'lesgo', '2022-11-23 11:51:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Maniak Game', '<font color=\"#7b8898\" face=\"Mercury SSm A, Mercury SSm B, Georgia, Times, Times New Roman, Microsoft YaHei New, Microsoft Yahei, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif\"><span style=\"font-size: 26px;\">On this Website we Procedured all about the latest game News<br>only in ManiakGame.com</span></font>', '2021-06-29 18:30:00', '2022-11-23 13:29:23'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>New Delhi India</p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>phpgurukulofficial@gmail.com</p>', '2021-06-29 18:30:00', '2021-11-06 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int(11) DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(18, 'Xbox Berikan Tawaran Game Call of Duty di PlayStation Selama 10 Tahun', 6, 7, '<p>Belum rampung juga akuisisi Activision-Blizzard oleh Microsoft memasuki \r\nbulan-bulan akhir 2022. Akuisisi sebesar $68,7 Miliar masih terhambat \r\nmasalah legalitas di Britania Raya dan Uni Eropa. Namun baru-baru ini \r\nterdengar kabar tawaran Xbox ke Sony untuk 10 tahun Call of Duty di \r\nPlayStation.</p><p><br></p><h2>Call of Duty di PlayStation Dirumorkan Tetap Hadir</h2><p>Laporan dari New York Times membeberkan tuduhan Microsoft terhadap \r\nSony yang ‘menyesatkan regulator’ dan khawatir sebuah industri akan \r\nterlalu berkuasa. Pihak mereka benar-benar tidak ingin dicap sebagai \r\nmonopoli dan selalu pro kompetisi.</p><p><br></p><h3>Phil Spencer Sebelumnya Menegaskan Hal yang Sama</h3><p>Sang CEO Microsoft Gaming juga sebelumnya pernah membahas hal terkait Call of Duty ini.\r\n Dalam sebuah interview di kanal YouTube, Phil menegaskan dirinya tidak \r\ningin game hanya bisa dinikmati beberapa orang. Phil bahkan mengambil \r\ncontoh Minecraft yang sudah diakuisisi dan tetap multiplatform.</p><p><br></p><p><br></p><h3>Xbox Mulai Bergerak Kembangkan Game Eksklusif</h3><p>Berbeda dengan konsol Sony yang sedang gencar dengan game-game \r\neksklusif mereka, Microsoft juga sedang merilis game eksklusif mereka \r\nyang direncanakan tahun 2023. Phil Spencer pun membenarkan alasan \r\nminimnya game eksklusif di platform mereka karena berbagai alasan \r\nseperti COVID dan sebagainya.</p><p>Tetapi Phil menjamin gamer akan \r\nmulai dapat memainkan game eksklusif di tahun depan. Beberapa game yang \r\nsedang dikembangkan seperti Forza Motorsport 8 dan game dari Bethesda \r\nRedfall dan Starfield. <br></p><p>Begitulah\r\n berita terkait polemik akuisisi dan ekslusifitas yang masih berlanjut \r\nhingga saat ini. Kami akan selalu kabarkan bila ada berita terbaru \r\nterkait proses akuisisi ini yang lumayan seru untuk diikuti.</p><p><br></p><p><br><br></p><p></p>', '2022-11-22 17:01:51', '2022-11-23 13:34:47', 1, 'Xbox-Berikan-Tawaran-Game-Call-of-Duty-di-PlayStation-Selama-10-Tahun', '87f9b8b00dc0525fb779fe3b4c710dc5.jpg', 3, 'admin', 'admin'),
(19, '5 Game Multiplayer Terbaik Mobile Online dan Offline 2022 yang Seru Dimainkan!', 3, 5, '<p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: 700; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Game Multiplayer Terbaik</span>&nbsp;– Kegiatan bermain game tampaknya sudah menjadi bagian dari anak – anak&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">zaman now</em>. Tak hanya anak – anak, orang dewasa pun juga menjadikan video game sebagai hiburan.</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Main game sendirian itu tidak ada salahnya. Namun, game multiplayer menawarkan pengalaman bermain yang jauh lebih menyenangkan! Sebab, kalian juga bisa jadikan game multiplayer untuk membuat moment indah dan tak terlupakan bersama teman!</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\"><br></p><h2 style=\"margin-top: 0.83em; margin-bottom: 0.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.953em; line-height: 1.35; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; color: rgb(33, 33, 33); text-rendering: optimizelegibility;\">Game Multiplayer Online dan Offline<span class=\"ez-toc-section-end\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span></h2><div class=\"wp-block-image\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; position: relative; border-radius: 10px; color: rgb(51, 51, 51);\"><figure class=\"aligncenter size-full\" style=\"margin: 5px auto 1.25em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center;\"><img decoding=\"async\" width=\"640\" height=\"360\" src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/21-1.jpg\" alt=\"21 1\" class=\"wp-image-462528 lazyloaded\" data-lazy-srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/21-1.jpg 640w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/21-1-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/21-1-150x84.jpg 150w\" data-lazy-sizes=\"(max-width: 640px) 100vw, 640px\" title=\"20 Game Multiplayer Terbaik Mobile Online dan Offline 2022 yang Seru Dimainkan! 2\" data-lazy-src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/21-1.jpg\" loading=\"lazy\" sizes=\"(max-width: 640px) 100vw, 640px\" srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/21-1.jpg 640w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/21-1-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/21-1-150x84.jpg 150w\" data-ll-status=\"loaded\" data-pin-no-hover=\"true\" style=\"margin: 0px; padding: 0px; font: inherit; max-width: 100%; height: auto; transition: opacity 0.5s linear 0.2s; opacity: 1; object-fit: cover; border-radius: 10px;\"><figcaption class=\"wp-element-caption\" style=\"margin: 3px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11px; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(160, 160, 160);\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Game Multiplayer yang Asik Dimainkan Bersama Teman</em></figcaption></figure></div><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Semakin kesini, kegiatan bermain game semakin seru! Kalian bisa memainkan game bersama teman tanpa harus bertemu tatap muka, yang mana sering disebut ‘mabar’ atau main bareng</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\"><span style=\"font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\"><br></span></p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\"><span style=\"font-style: inherit; font-variant-ligatures: inherit; font-variant-caps: inherit; font-weight: inherit;\">Kali ini, penulis bakal bagikan rekomendasi game multiplayer terbaik mobile yang bisa kamu mainkan bersama teman – teman kamu!</span></p><h3 style=\"margin-top: 1em; margin-bottom: 0.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.563em; line-height: 1.4; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; color: rgb(33, 33, 33); text-rendering: optimizelegibility;\"><span class=\"ez-toc-section\" id=\"1-pubg-mobile\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span>1. PUBG Mobile<span class=\"ez-toc-section-end\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span></h3><div class=\"wp-block-image\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; position: relative; border-radius: 10px; color: rgb(51, 51, 51);\"><figure class=\"aligncenter size-large\" style=\"margin: 5px auto 1.25em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center;\"><img decoding=\"async\" width=\"1024\" height=\"576\" src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-1024x576.jpg\" alt=\"game multiplayer online terbaik\" class=\"wp-image-462447 lazyloaded\" data-lazy-srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23.jpg 1200w\" data-lazy-sizes=\"(max-width: 1024px) 100vw, 1024px\" title=\"20 Game Multiplayer Terbaik Mobile Online dan Offline 2022 yang Seru Dimainkan! 3\" data-lazy-src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-1024x576.jpg\" loading=\"lazy\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/1-23.jpg 1200w\" data-ll-status=\"loaded\" data-pin-no-hover=\"true\" style=\"margin: 0px; padding: 0px; font: inherit; max-width: 100%; height: auto; transition: opacity 0.5s linear 0.2s; opacity: 1; object-fit: cover; border-radius: 10px;\"><figcaption class=\"wp-element-caption\" style=\"margin: 3px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11px; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(160, 160, 160);\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">PUBG Mobile</em></figcaption></figure></div><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Kita bakal buka daftar ini dengan PUBG Mobile.&nbsp;Siapa sih yang ga tahu game yang satu ini? Game battle royale online ini memang digemari banyak pemain, sehingga banyak gamers&nbsp;yang menjatukan pilihannya ke PUBG Mobile.</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Memiliki latar belakang sebuah pulau berukuran besar. Di sini, kalian harus looting senjata dan menghadapi 100 pemain lain untuk menjadi si nomor 1!</p><h3 style=\"margin-top: 1em; margin-bottom: 0.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.563em; line-height: 1.4; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; color: rgb(33, 33, 33); text-rendering: optimizelegibility;\"><span class=\"ez-toc-section\" id=\"2-among-us\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span>2. Among Us<span class=\"ez-toc-section-end\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span></h3><div class=\"wp-block-image\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; position: relative; border-radius: 10px; color: rgb(51, 51, 51);\"><figure class=\"aligncenter size-large\" style=\"margin: 5px auto 1.25em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center;\"><img decoding=\"async\" width=\"1024\" height=\"576\" src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-1024x576.jpg\" alt=\"game multiplayer terbaik online\" class=\"wp-image-462453 lazyloaded\" data-lazy-srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15.jpg 1200w\" data-lazy-sizes=\"(max-width: 1024px) 100vw, 1024px\" title=\"20 Game Multiplayer Terbaik Mobile Online dan Offline 2022 yang Seru Dimainkan! 4\" data-lazy-src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-1024x576.jpg\" loading=\"lazy\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/2-15.jpg 1200w\" data-ll-status=\"loaded\" data-pin-no-hover=\"true\" style=\"margin: 0px; padding: 0px; font: inherit; max-width: 100%; height: auto; transition: opacity 0.5s linear 0.2s; opacity: 1; object-fit: cover; border-radius: 10px;\"><figcaption class=\"wp-element-caption\" style=\"margin: 3px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11px; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(160, 160, 160);\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Among Us</em></figcaption></figure></div><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Siapa yang tidak tahu game online Among? Kalau kamu pernah main Werewolf, pasti kamu sudah ga asing lagi dengan game tuduh – tuduhan ini. Among Us pertama kali diluncurkan tahun 2018 dan menjadi game yang banyak diminati semasa pandemik COVID-19.</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Game garapan InnerSloth ini disambut dengan baik banget oleh para gamers karena gameplay co-op multiplayernya yang unik dan menarik.&nbsp;Dan tentu saja membuat pertemananmu semakin erat!</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Kamu akan berperan sebagai astronot yang ditugaskan untuk menyelesaikan beberapa task di roket yang rusak. Namun, kamu juga harus berhati – hati dengan temanmu yang bergerak sebagai Impostor.</p><h3 style=\"margin-top: 1em; margin-bottom: 0.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.563em; line-height: 1.4; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; color: rgb(33, 33, 33); text-rendering: optimizelegibility;\"><span class=\"ez-toc-section\" id=\"3-mobile-legends\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span>3. Mobile Legends<span class=\"ez-toc-section-end\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span></h3><div class=\"wp-block-image\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; position: relative; border-radius: 10px; color: rgb(51, 51, 51);\"><figure class=\"aligncenter size-large\" style=\"margin: 5px auto 1.25em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center;\"><img decoding=\"async\" width=\"1024\" height=\"576\" src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-1024x576.jpg\" alt=\"game multiplayer terbaik online\" class=\"wp-image-462456 lazyloaded\" data-lazy-srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14.jpg 1280w\" data-lazy-sizes=\"(max-width: 1024px) 100vw, 1024px\" title=\"20 Game Multiplayer Terbaik Mobile Online dan Offline 2022 yang Seru Dimainkan! 5\" data-lazy-src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-1024x576.jpg\" loading=\"lazy\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/3-14.jpg 1280w\" data-ll-status=\"loaded\" data-pin-no-hover=\"true\" style=\"margin: 0px; padding: 0px; font: inherit; max-width: 100%; height: auto; transition: opacity 0.5s linear 0.2s; opacity: 1; object-fit: cover; border-radius: 10px;\"><figcaption class=\"wp-element-caption\" style=\"margin: 3px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11px; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(160, 160, 160);\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Mobile Legends</em></figcaption></figure></div><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Game mabar online yang satu ini sudah tidak perlu diragukan lagi kehadirannya.&nbsp;<a href=\"https://gamebrott.com/2000-nama-squad-mobile-legends-ml-keren-dan-artinya\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(225, 95, 65); text-decoration-line: underline;\">Mobile Legends</a>&nbsp;adalah salah satu game yang populer di Indonesia saat ini. Tidak hanya asik dimainkan, namun juga menghadirkan berbagai karakter dengan kemampuan unik.</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Game garapan Moonton mengharuskan kalian bekerja sama dalam tim yang terdiri dari 5 orang untuk menghancurkan tower dan base musuh. Maka, game ini bakal membuat pertemanan dan sosial kalian semakin erat!</p><h3 style=\"margin-top: 1em; margin-bottom: 0.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.563em; line-height: 1.4; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; color: rgb(33, 33, 33); text-rendering: optimizelegibility;\"><span class=\"ez-toc-section\" id=\"4-free-fire\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span>4. Free Fire<span class=\"ez-toc-section-end\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span></h3><div class=\"wp-block-image\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; position: relative; border-radius: 10px; color: rgb(51, 51, 51);\"><figure class=\"aligncenter size-large\" style=\"margin: 5px auto 1.25em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center;\"><img decoding=\"async\" width=\"1024\" height=\"576\" src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-1024x576.jpg\" alt=\"game multiplayer terbaik online\" class=\"wp-image-462461 lazyloaded\" data-lazy-srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8.jpg 1200w\" data-lazy-sizes=\"(max-width: 1024px) 100vw, 1024px\" title=\"20 Game Multiplayer Terbaik Mobile Online dan Offline 2022 yang Seru Dimainkan! 6\" data-lazy-src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-1024x576.jpg\" loading=\"lazy\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/4-8.jpg 1200w\" data-ll-status=\"loaded\" data-pin-no-hover=\"true\" style=\"margin: 0px; padding: 0px; font: inherit; max-width: 100%; height: auto; transition: opacity 0.5s linear 0.2s; opacity: 1; object-fit: cover; border-radius: 10px;\"><figcaption class=\"wp-element-caption\" style=\"margin: 3px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11px; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(160, 160, 160);\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Free Fire</em></figcaption></figure></div><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Game multiplayer online selanjutnya adalah&nbsp;<a href=\"https://gamebrott.com/72-wallpaper-free-fire-di-smartphone-auto-booyaah\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(225, 95, 65); text-decoration-line: underline;\">Free Fire</a>. Game shooter battle royale yang juga membuat jiwa kompetitifmu menggebu – gebu. Setiap 10 menit, kamu akan dibawa ke pulau untuk bertarung dengan 49 pemain lainnya.</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Sama seperti battle royale pada umumnya, game ini juga mengharuskanmu untuk looting senjata agar bisa memenangkan pertandingan. Tentu saja game ini bisa kamu mainkan bersama teman – temanmu dalam bentuk&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">squad.</em></p><h3 style=\"margin-top: 1em; margin-bottom: 0.5em; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 1.563em; line-height: 1.4; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; color: rgb(33, 33, 33); text-rendering: optimizelegibility;\"><span class=\"ez-toc-section\" id=\"5-call-of-duty-mobile\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span>5. Call of Duty: Mobile<span class=\"ez-toc-section-end\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"></span></h3><div class=\"wp-block-image\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 16px; line-height: inherit; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; position: relative; border-radius: 10px; color: rgb(51, 51, 51);\"><figure class=\"aligncenter size-large\" style=\"margin: 5px auto 1.25em; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; text-align: center;\"><img decoding=\"async\" width=\"1024\" height=\"576\" src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-1024x576.jpg\" alt=\"game multiplayer terbaik online\" class=\"wp-image-462463 lazyloaded\" data-lazy-srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6.jpg 1200w\" data-lazy-sizes=\"(max-width: 1024px) 100vw, 1024px\" title=\"20 Game Multiplayer Terbaik Mobile Online dan Offline 2022 yang Seru Dimainkan! 7\" data-lazy-src=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-1024x576.jpg\" loading=\"lazy\" sizes=\"(max-width: 1024px) 100vw, 1024px\" srcset=\"https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-1024x576.jpg 1024w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-300x169.jpg 300w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-768x432.jpg 768w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-150x84.jpg 150w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-750x422.jpg 750w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6-1140x641.jpg 1140w, https://cdn.gamebrott.com/wp-content/uploads/2022/11/5-6.jpg 1200w\" data-ll-status=\"loaded\" data-pin-no-hover=\"true\" style=\"margin: 0px; padding: 0px; font: inherit; max-width: 100%; height: auto; transition: opacity 0.5s linear 0.2s; opacity: 1; object-fit: cover; border-radius: 10px;\"><figcaption class=\"wp-element-caption\" style=\"margin: 3px 0px 1em; padding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: 11px; line-height: inherit; font-family: inherit; vertical-align: baseline; color: rgb(160, 160, 160);\"><em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">Call of Duty: Mobile</em></figcaption></figure></div><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Game mabar online selanjutnya ada&nbsp;<a href=\"https://gamebrott.com/bocoran-call-of-duty-mobile-season-10-world-class\" target=\"_blank\" rel=\"noreferrer noopener\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; color: rgb(225, 95, 65); text-decoration-line: underline;\">Call of Duty: Mobile</a>. Game ini menyajikan gameplay yang keren serta kualitas grafis yang enak dipandang. Sejauh ini, Call of Duty: Mobile sudah sampai di Season 9: Zombies Are Back.</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Ia hadir dalam dua mode, yakni mode multiplayer dan mode battle royale. Tentu saja game ini bisa kalian mainkan bersama teman. Dan kalian bisa menggunakan karakter yang ada di&nbsp;<em style=\"margin: 0px; padding: 0px; border: 0px; font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-size: inherit; line-height: inherit; font-family: inherit; vertical-align: baseline;\">franchise&nbsp;</em>Call of Duty seperti Ghost, Russell Adler, Manta Ray, dan lain – lain.</p><p style=\"margin-bottom: 1.6rem; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: 26px; font-family: -apple-system, BlinkMacSystemFont, &quot;segoe ui&quot;, &quot;helvetica neue&quot;, Arial, &quot;noto sans&quot;, sans-serif, &quot;apple color emoji&quot;, &quot;segoe ui emoji&quot;, &quot;segoe ui symbol&quot;, &quot;noto color emoji&quot;; vertical-align: baseline; text-rendering: optimizespeed; color: rgb(51, 51, 51); text-align: justify !important;\">Itulah 5 rekomendasi game multiplayer terbaik online dan offline yang bisa kalian mainkan bersama teman di tahun 2022 ini. Adakah game kesukaan kalian disini? Atau adakah rekomendasi lainnya dari kalian? Bagikan di kolom komentar, ya!<br></p>', '2022-11-23 03:11:45', '2022-11-23 17:55:59', 1, '5-Game-Multiplayer-Terbaik-Mobile-Online-dan-Offline-2022-yang-Seru-Dimainkan!', '86f6a9607875c6833d5a128674f8356a.jpg', 6, 'admin', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'news', 'news', '2021-06-21 18:30:00', '2022-11-23 03:05:26', 1),
(4, 3, 'Cricket', 'Cricket\r\n\r\n', '2021-06-29 18:30:00', '2022-11-23 03:04:24', 0),
(5, 3, 'news', 'news', '2021-06-29 18:30:00', '2022-11-23 03:05:51', 1),
(6, 5, 'Television', 'TeleVision', '2021-06-30 18:30:00', '2022-11-23 03:04:43', 0),
(7, 6, 'news', 'news', '2021-06-30 18:30:00', '2022-11-23 03:06:13', 1),
(8, 6, 'International', 'International', '2021-06-30 18:30:00', '2022-11-23 03:04:33', 0),
(9, 7, 'India', 'India', '2021-06-30 18:30:00', '2021-11-07 17:59:57', 1),
(10, 8, 'news', 'news', '2021-11-07 18:18:25', '2022-11-23 03:06:28', 1),
(11, 9, 'news', 'news', '2022-11-22 17:00:52', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
