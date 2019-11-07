-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 07, 2019 at 03:42 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_desserts`
--

CREATE TABLE `tbl_desserts` (
  `ID` int(11) NOT NULL,
  `Title` varchar(70) NOT NULL,
  `Dessert` varchar(70) NOT NULL,
  `Description` varchar(300) NOT NULL,
  `Company` varchar(70) NOT NULL,
  `Image` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_desserts`
--

INSERT INTO `tbl_desserts` (`ID`, `Title`, `Dessert`, `Description`, `Company`, `Image`) VALUES
(1, 'Valrhona chocolate ', 'Cupcake', 'I love about cupcake is how moist it is. The way the cupcake just dissolves in flavour and get mountains of frosting.', 'Georgetown Cupcake', 'cupcake.jpg'),
(2, 'The Hostess', 'Donut', ' I love doughnuts. The way they smell, the way they taste, the way they complement a cold glass of almond milk.', 'Donut Crazy', 'donuts.jpg'),
(3, 'Coffee & Chocolate', 'Macaroon', 'The flavour is amazing because it uses almond meal. It\'s not heavy; it\'s not dense; the flavours are light.', 'Laduree', 'macaroons.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tips`
--

CREATE TABLE `tbl_tips` (
  `ID` int(11) NOT NULL,
  `dessertID` int(11) NOT NULL,
  `flavour` varchar(300) NOT NULL,
  `price` varchar(100) NOT NULL,
  `about` varchar(300) NOT NULL,
  `location` varchar(40) NOT NULL,
  `url` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tips`
--

INSERT INTO `tbl_tips` (`ID`, `dessertID`, `flavour`, `price`, `about`, `location`, `url`) VALUES
(1, 1, 'Valrhona chocolate cupcake with a vanilla cream cheese frosting topped with French chocolate sprinkles', 'USD $3.50 for each,  $19 for 6, $36 for 12', 'Georgetown Cupcake is a cupcakery based in the Georgetown neighborhood of Washington, D.C. that has expanded to Bethesda, New York City, Boston, Los Angeles, and Atlanta now.', 'Georgetown, Washington D.C., USA', 'https://www.georgetowncupcake.com'),
(2, 2, 'Raised chocolate shell filled with fluffy vanilla-marshmallow cream, covered with chocolate fudge and adorned with a hostess swirl.', 'USD $3.25 for each, $28 for 12', 'Donut Crazy is a donut bakery based in New Haven, Connecticut. It has a small coffee shop has transformed into a family-owned business that serves some of the best donuts in USA. ', 'New Haven, Connecticut, USA', 'https://donutcrazy.com/'),
(3, 3, 'A macaroon garnished with a cream made with an infusion of 100% Arabica coffee. The natural coffee and chocolate flavour grilled and aromatic notes.', 'CAD $3.30 for each, $85 for 24, $188 for 54', 'Laduree is a Famed for its macarons, this ornate French. The world\'s most famous fancy French macaron cafe is opening a new location in downtown Toronto.', ' Yorkdale, Toronto, ON', 'https://www.ladureecanada.ca');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_desserts`
--
ALTER TABLE `tbl_desserts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_tips`
--
ALTER TABLE `tbl_tips`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_desserts`
--
ALTER TABLE `tbl_desserts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tips`
--
ALTER TABLE `tbl_tips`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
