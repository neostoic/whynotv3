-- phpMyAdmin SQL Dump
-- version 2.11.11.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 28, 2013 at 09:45 AM
-- Server version: 5.5.34
-- PHP Version: 5.3.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `whynotv3`
--

-- --------------------------------------------------------

--
-- Table structure for table `Pins`
--

CREATE TABLE IF NOT EXISTS `Pins` (
  `User` varchar(255) NOT NULL,
  `Event` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Pins`
--

INSERT INTO `Pins` (`User`, `Event`, `Image`, `Timestamp`) VALUES
('newkid1@what', 'Universal Soul Exclusive Screening: Legacy In The Dust - The Four Aces Story', '', '2013-12-27 20:39:33'),
('r.w.shimmin@gmail.com', 'The Mayor of Scaredy Cat Town', 'http://s3-media4.ak.yelpcdn.com/bphoto/mmNYvcWL2b-ZMazEGc47Bg/l.jpg', '2013-12-27 20:40:16');

-- --------------------------------------------------------

--
-- Table structure for table `UserHistory`
--

CREATE TABLE IF NOT EXISTS `UserHistory` (
  `User` varchar(255) NOT NULL,
  `Event` varchar(255) NOT NULL,
  `Image` varchar(255) NOT NULL,
  `Choice` int(2) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserHistory`
--

INSERT INTO `UserHistory` (`User`, `Event`, `Image`, `Choice`, `Timestamp`) VALUES
('kicks66@gmail.com', 'The Sandrock', '', 1, '2013-12-26 22:45:52'),
('kicks66@gmail.com', 'Sir Julian Huxley', '', 1, '2013-12-26 22:45:54'),
('kicks66@gmail.com', 'The Crown', '', 1, '2013-12-26 22:46:00'),
('kicks66@gmail.com', 'The Crown', '', 1, '2013-12-26 22:46:09'),
('kicks66@gmail.com', 'The Crown', '', -1, '2013-12-26 22:46:15'),
('r.w.shimmin@gmail.com', '', '', 1, '2013-12-27 08:14:48'),
('r.w.shimmin@gmail.com', '', '', 1, '2013-12-27 08:15:23'),
('kicks66@gmail.com', 'The Ship', '', 1, '2013-12-27 08:40:55'),
('kicks66@gmail.com', 'The Edge', '', 1, '2013-12-27 08:41:07'),
('r.w.shimmin@gmail.com', 'Cornish Pasty', '', -1, '2013-12-27 08:45:56'),
('r.w.shimmin@gmail.com', 'Royal Bengal', '', 1, '2013-12-27 08:46:12'),
('map@test', 'The Big Valentine day party @ LAZY DOG NIGHT CLUB', '', 1, '2013-12-27 09:45:50'),
('map@test', 'XCELLENT RADIO PARTY - BEST Vintage Reggae & Soul Party Night', '', 1, '2013-12-27 09:47:24'),
('map@test', 'My HR Career: Monthly Networking Earlybird Group', '', -1, '2013-12-27 09:47:33'),
('map@test', 'Christmas Special - Reggae Bands & DJs !', '', 1, '2013-12-27 09:47:37'),
('map@test', 'Christmas Special - Reggae Bands & DJs !', '', 1, '2013-12-27 09:47:39'),
('map@test', 'Christmas Special - Reggae Bands & DJs !', '', 1, '2013-12-27 09:47:41'),
('devrankaraca1@gmail.com', 'Pizza Express Restaurants', '', -1, '2013-12-27 10:29:39'),
('devrankaraca1@gmail.com', 'Cafe Rouge', '', -1, '2013-12-27 10:29:47'),
('devrankaraca1@gmail.com', 'Busby and Wilds', '', 1, '2013-12-27 10:30:01'),
('devrankaraca1@gmail.com', 'Busby and Wilds', '', 1, '2013-12-27 10:30:01'),
('devrankaraca1@gmail.com', 'Seattle Restaurant', '', 1, '2013-12-27 10:30:01'),
('devrankaraca1@gmail.com', 'Katarina Harvester', '', -1, '2013-12-27 10:30:11'),
('devrankaraca1@gmail.com', 'Katarina Harvester', '', -1, '2013-12-27 10:30:24'),
('devrankaraca1@gmail.com', 'Acorn House Restaurant', '', -1, '2013-12-27 10:39:36'),
('devrankaraca1@gmail.com', 'The Big Valentine day party @ LAZY DOG NIGHT CLUB', '', 1, '2013-12-27 10:40:08'),
('r.w.shimmin@gmail.com', 'Stan Douglas: Disco Angola', '', -1, '2013-12-27 10:40:47'),
('r.w.shimmin@gmail.com', 'Medical Law & Ethics by Distance Learning 2013', '', 1, '2013-12-27 10:43:39'),
('r.w.shimmin@gmail.com', 'Union Chapel', '', -1, '2013-12-27 12:24:20'),
('r.w.shimmin@gmail.com', 'The Slaughtered Lamb', '', 1, '2013-12-27 12:28:05'),
('r.w.shimmin@gmail.com', 'Electricity Showrooms', '', -1, '2013-12-27 12:28:17'),
('r.w.shimmin@gmail.com', 'Barbican Pit Theatre', '', 1, '2013-12-27 12:28:28'),
('r.w.shimmin@gmail.com', 'The Gladstone', '', 1, '2013-12-27 12:28:28'),
('r.w.shimmin@gmail.com', 'The Macbeth', '', -1, '2013-12-27 12:28:42'),
('darts@dartn.freeserve.co.uk', 'My HR Career: Monthly Networking Earlybird Group', '', -1, '2013-12-27 13:06:45'),
('darts@dartn.freeserve.co.uk', 'Life Drawing', '', -1, '2013-12-27 13:06:49'),
('r.w.shimmin@gmail.com', 'Hoxton Hall', '', -1, '2013-12-27 13:31:53'),
('r.w.shimmin@gmail.com', 'Rough Trade', '', -1, '2013-12-27 13:32:11'),
('r.w.shimmin@gmail.com', 'Village Underground', '', 1, '2013-12-27 13:32:20'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:20'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', -1, '2013-12-27 13:32:37'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:39'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:39'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:39'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:43'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:43'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:43'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', -1, '2013-12-27 13:32:45'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:46'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:46'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:46'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:46'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', -1, '2013-12-27 13:32:48'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:49'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:49'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:49'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:50'),
('r.w.shimmin@gmail.com', 'Shoreditch Town Hall', '', 1, '2013-12-27 13:32:50'),
('r.w.shimmin@gmail.com', 'Cybersalon Digital Futures: 26 Nov, 9 Dec', '', -1, '2013-12-27 14:33:21'),
('r.w.shimmin@gmail.com', 'Zaffrani Indian Dining', '', -1, '2013-12-27 14:34:31'),
('r.w.shimmin@gmail.com', 'Cafe Du Marche', '', 1, '2013-12-27 14:34:40'),
('r.w.shimmin@gmail.com', 'Le Mercury', '', -1, '2013-12-27 14:34:56'),
('r.w.shimmin@gmail.com', 'The Big Valentine day party @ LAZY DOG NIGHT CLUB', '', -1, '2013-12-27 16:09:20'),
('r.w.shimmin@gmail.com', '3 hours Initiation to Patisserie Class', '', 1, '2013-12-27 16:09:24'),
('r.w.shimmin@gmail.com', 'Life Drawing', '', -1, '2013-12-27 16:10:35'),
('r.w.shimmin@gmail.com', 'My HR Career: Monthly Networking Earlybird Group', '', 1, '2013-12-27 16:10:44'),
('r.w.shimmin@gmail.com', 'Towpath CafÃ©', '', 1, '2013-12-27 16:15:06'),
('r.w.shimmin@gmail.com', 'Monmouth Coffee', '', 1, '2013-12-27 16:15:10'),
('nick@whynot', 'The Big Valentine day party @ LAZY DOG NIGHT CLUB', 'http://s3.evcdn.com/images/medium/I0-001/003/794/878-7.png_/big-valentine-day-party-lazy-dog-nigh-78.png', -1, '2013-12-27 17:36:19'),
('nick@whynot', 'The El Train 27th December', 'http://s2.evcdn.com/images/medium/I0-001/015/004/733-0.jpeg_/el-train-27th-december-33.jpeg', -1, '2013-12-27 17:36:20'),
('nick@whynot', '3 hours Initiation to Patisserie Class', 'http://s2.evcdn.com/images/medium/I0-001/014/739/493-7.jpeg_/3-hours-initiation-patisserie-class-93.jpeg', -1, '2013-12-27 17:36:22'),
('newkid1@what', '3 hours Initiation to Patisserie Class', 'http://s2.evcdn.com/images/medium/I0-001/014/739/493-7.jpeg_/3-hours-initiation-patisserie-class-93.jpeg', -1, '2013-12-27 17:58:29'),
('newkid1@what', 'XCELLENT RADIO PARTY - BEST Vintage Reggae & Soul Party Night', 'http://s2.evcdn.com/images/medium/I0-001/014/677/913-1.jpeg_/xcellent-radio-party-best-vintage-reg-13.jpeg', 1, '2013-12-27 17:58:31'),
('newkid1@what', 'Universal Soul Exclusive Screening: Legacy In The Dust - The Four Aces Story', '', 1, '2013-12-27 17:58:34'),
('nick@kitcheb', '', '', -1, '2013-12-27 18:27:07'),
('nick@kitcheb', 'Crostini Bar & Cafe', '', -1, '2013-12-27 18:27:11'),
('nick@kitcheb', 'Crostini Bar & Cafe', '', -1, '2013-12-27 18:27:12'),
('nick@kitcheb', 'Crostini Bar & Cafe', '', 1, '2013-12-27 18:27:14'),
('nick@kitcheb', '', '', 1, '2013-12-27 18:27:14'),
('nick@kitcheb', '', '', 1, '2013-12-27 18:27:14'),
('nick@kitcheb', '', '', 1, '2013-12-27 18:27:14'),
('nick@kitcheb', '', '', 1, '2013-12-27 18:27:14'),
('nick@kitcheb', '', '', 1, '2013-12-27 18:27:15'),
('nick@mob', 'The Orangery', 'http://s3-media2.ak.yelpcdn.com/bphoto/5WdvzdorCIQejeQdxLRw0Q/l.jpg', -1, '2013-12-27 20:51:16'),
('nick@mob', 'The Orangery', 'http://s3-media2.ak.yelpcdn.com/bphoto/5WdvzdorCIQejeQdxLRw0Q/l.jpg', 1, '2013-12-27 20:51:24'),
('nick@mob', 'Montparnasse Cafe', 'http://s3-media3.ak.yelpcdn.com/bphoto/eSk75T-ZuDeP52sWAT3QgA/l.jpg', 1, '2013-12-27 20:51:31'),
('nick@mob', 'Le Pain Quotidien', 'http://s3-media1.ak.yelpcdn.com/bphoto/bHvo6O9hmyEulXRbKQVgAA/l.jpg', 1, '2013-12-27 20:51:38'),
('nick@mob', 'Le Pain Quotidien', 'http://s3-media1.ak.yelpcdn.com/bphoto/bHvo6O9hmyEulXRbKQVgAA/l.jpg', 1, '2013-12-27 20:51:48'),
('nick@mob', 'The Muffin Man Tea Shop', 'http://s3-media3.ak.yelpcdn.com/bphoto/oJGA23nkWDWVQINBFc4LGA/l.jpg', -1, '2013-12-27 20:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE IF NOT EXISTS `Users` (
  `User` varchar(255) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  `Category` varchar(255) NOT NULL,
  `LookingIn` varchar(255) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`User`, `Latitude`, `Longitude`, `Category`, `LookingIn`, `Timestamp`) VALUES
('kicks66@gmail.com', 51.3552, -0.222044, 'bars', '', '2013-12-26 22:45:38'),
('hattie@gmail.com', 51.5171, -0.146084, 'swimming', '', '2013-12-26 22:48:42'),
('devrankaraca1@gmail.com', 0, 0, 'restaurants', '', '2013-12-27 00:56:32'),
('devrankaraca1@gmail.com', 0, 0, 'restaurants', '', '2013-12-27 00:57:57'),
('r.w.shimmin@gmail.com', 54.6007, -3.13514, 'Resturants', '', '2013-12-27 08:14:15'),
('r.w.shimmin@gmail.com', 54.6007, -3.13513, 'Gigs', '', '2013-12-27 08:21:22'),
('kicks66@gmail.com', 51.355, -0.222333, 'bars', '', '2013-12-27 08:40:11'),
('r.w.shimmin@gmail.com', 54.6008, -3.13509, '', '', '2013-12-27 08:43:32'),
('r.w.shimmin@gmail.com', 54.6007, -3.13512, 'Resturants', '', '2013-12-27 08:44:05'),
('map@test', 51.3614, -0.193961, 'bars', '', '2013-12-27 09:45:12'),
('kicks66@gmail.com', 51.3614, -0.193961, 'restaurants', '', '2013-12-27 09:57:32'),
('devrankaraca1@gmail.com', 50.7968, 0.249783, 'restaurants', '', '2013-12-27 10:28:56'),
('kicks66@gmail.com', 51.3614, -0.193961, 'restaurants', '', '2013-12-27 10:31:27'),
('kicks66@gmail.com', 51.3614, -0.193961, 'restaurants', '', '2013-12-27 10:32:33'),
('devrankaraca1@gmail.com', 50.7968, 0.249775, 'restaurants', '', '2013-12-27 10:37:51'),
('r.w.shimmin@gmail.com', 54.6008, -3.13509, 'Markets', '', '2013-12-27 10:40:26'),
('kicks66@gmail.com', 51.3614, -0.193961, 'Bars', 'London Bridge', '2013-12-27 11:03:27'),
('r.w.shimmin@gmail.com', 51.7848, -1.26014, 'gigs', 'Old Street', '2013-12-27 12:23:36'),
('r.w.shimmin@gmail.com', 51.7848, -1.26014, 'gigs', 'Old Street', '2013-12-27 12:23:48'),
('darts@dartn.freeserve.co.uk', 0, 0, 'walk', '', '2013-12-27 13:05:31'),
('darts@dartn.freeserve.co.uk', 0, 0, 'coffee', 'sloane square', '2013-12-27 13:06:18'),
('darts@dartn.freeserve.co.uk', 0, 0, 'coffee', 'Sloane Square', '2013-12-27 13:06:34'),
('darts@dartn.freeserve.co.uk', 0, 0, 'coffee', 'kensington', '2013-12-27 13:17:26'),
('darts@dartn.freeserve.co.uk', 0, 0, 'coffee', 'High Street Kensington', '2013-12-27 13:17:38'),
('r.w.shimmin@gmail.com', 51.7848, -1.26014, 'gig', 'Old Street', '2013-12-27 13:31:13'),
('r.w.shimmin@gmail.com', 54.6007, -3.13515, 'Cafe', 'Old Street', '2013-12-27 14:33:04'),
('r.w.shimmin@gmail.com', 54.6006, -3.13518, 'Resturants', 'Old Street', '2013-12-27 14:34:11'),
('r.w.shimmin@gmail.com', 54.6007, -3.13513, 'Resturants', 'Old Street', '2013-12-27 15:09:35'),
('r.w.shimmin@gmail.com', 51.7848, -1.26014, 'restaurants', 'Old Street', '2013-12-27 15:23:48'),
('r.w.shimmin@gmail.com', 54.6007, -3.13514, 'Resturants', 'Old Street', '2013-12-27 16:08:36'),
('r.w.shimmin@gmail.com', 51.7848, -1.26014, 'coffee', 'Old Street', '2013-12-27 16:09:54'),
('r.w.shimmin@gmail.com', 54.6007, -3.1352, 'Cocktail', 'Old Street', '2013-12-27 16:22:40'),
('r.w.shimmin@gmail.com', 51.7848, -1.26014, 'tomatoes', 'Clapham North', '2013-12-27 16:24:45'),
('r.w.shimmin@gmail.com', 54.6007, -3.1352, 'Cocktail', 'Old Street', '2013-12-27 16:25:25'),
('nick@whynot', 51.3545, -0.223901, 'bars', 'Old Street', '2013-12-27 17:36:04'),
('newkid1@what', 51.5171, -0.146084, 'bars', 'Old Street', '2013-12-27 17:58:21'),
('nick@kitcheb', 51.3545, -0.223901, 'cafe', 'kensington', '2013-12-27 18:26:42'),
('', 0, 0, '', 'me', '2013-12-27 18:34:12'),
('nick@mob', 51.3545, -0.223901, 'cafe', 'High Street Kensington', '2013-12-27 20:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `UserTags`
--

CREATE TABLE IF NOT EXISTS `UserTags` (
  `User` varchar(255) NOT NULL,
  `Tag` varchar(255) NOT NULL,
  `Weight` int(7) NOT NULL,
  UNIQUE KEY `User` (`User`,`Tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `UserTags`
--

INSERT INTO `UserTags` (`User`, `Tag`, `Weight`) VALUES
('darts@dartn.freeserve.co.uk', 'conference', -1),
('darts@dartn.freeserve.co.uk', 'o', -1),
('darts@dartn.freeserve.co.uk', 'singles_social', -1),
('devrankaraca1@gmail.com', 'british', 0),
('devrankaraca1@gmail.com', 'clubs_associations', 1),
('devrankaraca1@gmail.com', 'festivals_parades', 1),
('devrankaraca1@gmail.com', 'french', -1),
('devrankaraca1@gmail.com', 'hotdogs', -1),
('devrankaraca1@gmail.com', 'italian', -1),
('devrankaraca1@gmail.com', 'pizza', -1),
('devrankaraca1@gmail.com', 'pubs', -2),
('devrankaraca1@gmail.com', 'singles_social', 1),
('hattie@gmail.com', 'parks', 4),
('kicks66@gmail.com', 'pubs', 5),
('map@test', 'clubs_associations', 1),
('map@test', 'conference', -1),
('map@test', 'festivals_parades', 2),
('map@test', 'holiday', 3),
('map@test', 'music', 4),
('map@test', 'singles_social', 1),
('newkid1@what', 'conference', -1),
('newkid1@what', 'festivals_parades', 1),
('newkid1@what', 'food', -1),
('newkid1@what', 'music', 2),
('newkid1@what', 'schools_alumni', 1),
('newkid1@what', 'singles_social', 2),
('nick@kitcheb', 'coffee', -1),
('nick@mob', 'bakeries', 3),
('nick@mob', 'breakfast_brunch', 2),
('nick@mob', 'british', 0),
('nick@mob', 'coffee', 2),
('nick@mob', 'tea', 0),
('nick@whynot', 'clubs_associations', -1),
('nick@whynot', 'conference', -1),
('nick@whynot', 'festivals_parades', -1),
('nick@whynot', 'food', -1),
('nick@whynot', 'o', -1),
('nick@whynot', 'singles_social', -1),
('r.w.shimmin@gmail.com', 'a', -1),
('r.w.shimmin@gmail.com', 'british', -1),
('r.w.shimmin@gmail.com', 'c', -1),
('r.w.shimmin@gmail.com', 'clubs_associations', -1),
('r.w.shimmin@gmail.com', 'coffee', 2),
('r.w.shimmin@gmail.com', 'conference', 2),
('r.w.shimmin@gmail.com', 'danceclubs', -1),
('r.w.shimmin@gmail.com', 'festivals_parades', -1),
('r.w.shimmin@gmail.com', 'food', 1),
('r.w.shimmin@gmail.com', 'french', 0),
('r.w.shimmin@gmail.com', 'hotdogs', -1),
('r.w.shimmin@gmail.com', 'indpak', 0),
('r.w.shimmin@gmail.com', 'l', 1),
('r.w.shimmin@gmail.com', 'mediterranean', 1),
('r.w.shimmin@gmail.com', 'modern_european', 1),
('r.w.shimmin@gmail.com', 'musicvenues', -2),
('r.w.shimmin@gmail.com', 'musicvideo', -1),
('r.w.shimmin@gmail.com', 'o', -1),
('r.w.shimmin@gmail.com', 'pakistani', 0),
('r.w.shimmin@gmail.com', 'pubs', 0),
('r.w.shimmin@gmail.com', 'singles_social', 0),
('r.w.shimmin@gmail.com', 'theater', 0),
('r.w.shimmin@gmail.com', 'venues', 14);
