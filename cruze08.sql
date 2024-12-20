SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cruze08`
--

-- --------------------------------------------------------

--
-- Table structure for table `developed`
--

CREATE TABLE `developed` (
  `DeveloperID` int NOT NULL,
  `GameID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `developed`
--

INSERT INTO `developed` (`DeveloperID`, `GameID`) VALUES
(1, 1),
(2, 2),
(2, 3),
(3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `DeveloperID` int NOT NULL,
  `DeveloperName` varchar(300) NOT NULL,
  `YearFounded` date NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Country` varchar(100) NOT NULL,
  `PublisherID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`DeveloperID`, `DeveloperName`, `YearFounded`, `Description`, `Country`, `PublisherID`) VALUES
(1, 'Meta Fork', '0000-00-00', 'N/A', 'N/A', 1),
(2, 'Insomniac Games', '1994-02-28', 'Insomniac Games, Inc. is an American video game developer based in Burbank, California and part of PlayStation Studios.', 'United States', 2),
(3, 'Obsidian Entertainment', '2003-06-12', 'Your worlds. Your way. We create worlds for you to immerse yourself in, journey with companions, be challenged by enemies, and have the power to be who you want to be.', 'United States', 3);

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `GameID` int NOT NULL,
  `GameName` varchar(300) NOT NULL,
  `Price` float NOT NULL,
  `AgeRating` varchar(25) NOT NULL,
  `AverageRating` float NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `ReleaseDate` date NOT NULL,
  `RSRID` int NOT NULL,
  `PublisherID` int NOT NULL,
  `DeveloperID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`GameID`, `GameName`, `Price`, `AgeRating`, `AverageRating`, `Description`, `ReleaseDate`, `RSRID`, `PublisherID`, `DeveloperID`) VALUES
(1, 'FPS CHESS', 0, 'UNRATED', 83, 'Play an ordinary game of chess against a friend or a stranger.\r\n\r\nHowever, all your intricate strategies will crumble before the enemy rook\'s sniper trick-shot.\r\nAll your practiced openings and counters will amount to nothing before the enemy queen\'s randomly sprayed machine gun.\r\nYou finally checkmate the king. Unfortunately, it seems you are not ready for this fight. 5 seconds in and you\'ve been sliced in half by the king\'s sword.\r\n\r\nIt turns out you are not playing Chess at all, but an FPS. Just make sure to practice your aim!', '2022-07-16', 1, 1, 1),
(2, 'Marvel\'s Spider Man Remastered', 59.99, 'T for Teen (13+)', 96, 'Developed by Insomniac Games in collaboration with Marvel, and optimized for PC by Nixxes Software, Marvel\'s Spider-Man Remastered on PC introduces an experienced Peter Parker who’s fighting big crime and iconic villains in Marvel’s New York. At the same time, he’s struggling to balance his chaotic personal life and career while the fate of Marvel’s New York rests upon his shoulders.', '2022-08-12', 2, 2, 2),
(3, 'Marvel\'s Spider Man: Miles Morales', 49.99, 'T for Teen (13+)', 94, 'Following the events of Marvel’s Spider-Man Remastered, teenager Miles Morales is adjusting to his new home while following in the footsteps of his mentor, Peter Parker, as a new Spider-Man. But when a fierce power struggle threatens to destroy his new home, the aspiring hero realizes that with great power, there must also come great responsibility. To save all of Marvel’s New York, Miles must take up the mantle of Spider-Man and own it.', '2022-11-18', 3, 2, 2),
(4, 'Fallout: New Vegas', 9.99, 'M for Mature (17+)', 96, 'Welcome to Vegas. New Vegas. Enjoy your stay!', '2010-10-19', 4, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `genre_tag`
--

CREATE TABLE `genre_tag` (
  `TagID` int NOT NULL,
  `TagName` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `genre_tag`
--

INSERT INTO `genre_tag` (`TagID`, `TagName`) VALUES
(1, 'ACTION'),
(2, 'CASUAL'),
(3, 'Free-To-Play'),
(4, 'Strategy'),
(5, 'Adventure'),
(6, 'RPG');

-- --------------------------------------------------------

--
-- Table structure for table `minimum_sr`
--

CREATE TABLE `minimum_sr` (
  `CPU` varchar(200) NOT NULL,
  `GPU` varchar(200) NOT NULL,
  `RAM` varchar(20) NOT NULL,
  `Storage` varchar(10) NOT NULL,
  `StorageType` varchar(10) NOT NULL,
  `AddtionalNotes` varchar(1000) NOT NULL,
  `OS` varchar(100) NOT NULL,
  `GameID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `minimum_sr`
--

INSERT INTO `minimum_sr` (`CPU`, `GPU`, `RAM`, `Storage`, `StorageType`, `AddtionalNotes`, `OS`, `GameID`) VALUES
('AMD FX-4350 or Intel Core i5-4460', 'AMD Radeon R9 280X or GeForce GTX 760', '4 GB RAM', '1 GB', 'HDD', 'Requires a 64-bit processor and operating system', 'Windows 10', 1),
('Intel Core i3-4160, 3.6 GHz or AMD equivalent', 'NVIDIA GTX 950 or AMD Radeon RX 470', '8 GB RAM', ' 75 GB', 'SSD', 'Requires a 64-bit processor and operating system.', 'Windows 10 64-bit', 2),
('Intel Core i3-4160, 3.6 GHz or AMD equivalent', 'NVIDIA GTX 950 or AMD Radeon RX 470', '8 GB RAM', ' 75 GB', 'SSD', 'Requires a 64-bit processor and operating system.', 'Windows 10 64-bit 1909', 3),
('Dual Core 2.0GHz', 'NVIDIA GeForce 6 series, ATI 1300XT series', '2 GB RAM', '10GB', 'HDD', 'N/A', 'Windows 7/Vista/XP', 4);

-- --------------------------------------------------------

--
-- Table structure for table `platform`
--

CREATE TABLE `platform` (
  `PlatformID` int NOT NULL,
  `GameID` int NOT NULL,
  `PlatformName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `platform`
--

INSERT INTO `platform` (`PlatformID`, `GameID`, `PlatformName`) VALUES
(1, 1, 'Windows'),
(1, 2, 'Windows'),
(1, 3, 'Windows'),
(1, 4, 'Windows');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` char(3) NOT NULL,
  `productname` varchar(25) NOT NULL,
  `productprice` decimal(7,2) NOT NULL,
  `vendorid` char(2) NOT NULL,
  `categoryid` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`, `productprice`, `vendorid`, `categoryid`) VALUES
('1X1', 'Zzz Bag', '100.00', 'PG', 'CP'),
('1X2', 'Comfy Harness', '150.00', 'MK', 'CL'),
('1X3', 'Sunny Charger', '125.00', 'OA', 'EL'),
('1X4', 'Safe-T Helmet', '40.00', 'PG', 'CY'),
('2X1', 'Mmm Stove', '80.00', 'WL', 'CP'),
('2X2', 'Easy Boot', '70.00', 'MK', 'FW'),
('2X3', 'Reflect-o Jacket', '35.00', 'PG', 'CY'),
('2X4', 'Strongster Carribeaner', '20.00', 'MK', 'CL'),
('3X1', 'Sleepy Pad', '25.00', 'WL', 'CP'),
('3X2', 'Bucky Knife', '60.00', 'WL', 'CP'),
('3X3', 'Cosy Sock', '15.00', 'MK', 'FW'),
('3X4', 'Treado Tire', '30.00', 'OA', 'CY'),
('4X1', 'Slicky Tire', '25.00', 'OA', 'CY'),
('4X2', 'Electra Compass', '45.00', 'MK', 'EL'),
('4X3', 'Mega Camera', '275.00', 'WL', 'EL'),
('4X4', 'Dura Boot', '90.00', 'PG', 'FW'),
('5X1', 'Simple Sandal', '50.00', 'PG', 'FW'),
('5X2', 'Action Sandal', '70.00', 'PG', 'FW'),
('5X3', 'Luxo Tent', '500.00', 'OA', 'CP'),
('5X5', 'Tiny Tent', '150.00', 'MK', 'CP'),
('6X6', 'Biggy Tent', '250.00', 'MK', 'CP'),
('7X7', 'Hi-Tec GPS', '300.00', 'OA', 'EL'),
('8X8', 'Power Pedals', '20.00', 'MK', 'CY'),
('9X9', 'Trusty Rope', '30.00', 'WL', 'CL');

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `PublisherID` int NOT NULL,
  `PublisherName` varchar(300) NOT NULL,
  `YearFounded` date NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Country` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`PublisherID`, `PublisherName`, `YearFounded`, `Description`, `Country`) VALUES
(1, 'DigiPen Institute of Technology', '1988-01-01', 'DigiPen Institute of Technology is a world-renowned college for game development, with campuses in the U.S., Singapore, and Spain.', 'Canada'),
(2, 'PlayStation PC LLC', '2020-05-01', 'PlayStation Studios is home to the development of Sony Interactive Entertainment’s own outstanding and immersive games, including some of the most popular and critically acclaimed titles in entertainment history.', 'United States'),
(3, 'Bethesda Softworks', '1986-06-28', 'N/A', 'United States');

-- --------------------------------------------------------

--
-- Table structure for table `recommended_sr`
--

CREATE TABLE `recommended_sr` (
  `RSRID` int NOT NULL,
  `CPU` varchar(200) NOT NULL,
  `GPU` varchar(200) NOT NULL,
  `RAM` varchar(20) NOT NULL,
  `Storage` varchar(10) NOT NULL,
  `StorageType` varchar(10) NOT NULL,
  `AdditionalNotes` varchar(1000) NOT NULL,
  `OS` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `recommended_sr`
--

INSERT INTO `recommended_sr` (`RSRID`, `CPU`, `GPU`, `RAM`, `Storage`, `StorageType`, `AdditionalNotes`, `OS`) VALUES
(1, 'AMD FX-6300 or Intel Core i5-4590', 'AMD Radeon R9 290 or GeForce GTX 1050 Ti', '8 GB RAM', '1 GB', 'HDD', 'Requires a 64-bit processor and operating system.', 'Windows 10'),
(2, 'Intel Core i5-4670, 3.4 Ghz or AMD', 'NVIDIA GTX 1060 6GB or AMD Radeon RX 580 8GB', '16 GB RAM', '75 GB', 'SSD', 'Requires a 64-bit processor and operating system.', 'Windows 10 64-bit'),
(3, 'Intel Core i5-4670, 3.4 Ghz or AMD', 'NVIDIA GTX 1060 6GB or AMD Radeon RX 580 8GB', '16 GB RAM', '75 GB', 'SSD', 'Requires a 64-bit processor and operating system.\r\n', 'Windows 10 64-bit 1909'),
(4, 'Dual Core 2.0GHz', 'NVIDIA GeForce 6 series, ATI 1300XT series', '2 GB RAM', '10GB', 'HDD', 'N/A', 'Windows 7/Vista/XP');

-- --------------------------------------------------------

--
-- Table structure for table `sale_event`
--

CREATE TABLE `sale_event` (
  `SaleID` int NOT NULL,
  `SaleStartDate` date NOT NULL,
  `SaleEndDate` date NOT NULL,
  `DiscountPercentage` int NOT NULL,
  `PublisherID` int NOT NULL,
  `SaleName` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sale_event`
--

INSERT INTO `sale_event` (`SaleID`, `SaleStartDate`, `SaleEndDate`, `DiscountPercentage`, `PublisherID`, `SaleName`) VALUES
(1, '2023-10-25', '2023-11-02', 40, 2, 'Marvel\'s Spider Man Weekend Deal'),
(2, '2023-10-25', '2023-10-31', 75, 3, 'FALLOUT DAY SALE');

-- --------------------------------------------------------

--
-- Table structure for table `sale_includes`
--

CREATE TABLE `sale_includes` (
  `GameID` int NOT NULL,
  `SaleID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sale_includes`
--

INSERT INTO `sale_includes` (`GameID`, `SaleID`) VALUES
(2, 1),
(3, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tag_association`
--

CREATE TABLE `tag_association` (
  `GameID` int NOT NULL,
  `TagID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tag_association`
--

INSERT INTO `tag_association` (`GameID`, `TagID`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(1, 2),
(2, 2),
(1, 3),
(1, 4),
(2, 5),
(3, 5),
(4, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `developed`
--
ALTER TABLE `developed`
  ADD PRIMARY KEY (`DeveloperID`,`GameID`),
  ADD KEY `GameID` (`GameID`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`DeveloperID`),
  ADD KEY `PublisherID` (`PublisherID`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`GameID`),
  ADD KEY `RSRID` (`RSRID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `DeveloperID` (`DeveloperID`);

--
-- Indexes for table `genre_tag`
--
ALTER TABLE `genre_tag`
  ADD PRIMARY KEY (`TagID`);

--
-- Indexes for table `minimum_sr`
--
ALTER TABLE `minimum_sr`
  ADD PRIMARY KEY (`GameID`);

--
-- Indexes for table `platform`
--
ALTER TABLE `platform`
  ADD PRIMARY KEY (`PlatformID`,`GameID`),
  ADD KEY `GameID` (`GameID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `vendorid` (`vendorid`),
  ADD KEY `prod_cat_index` (`categoryid`),
  ADD KEY `prod_price` (`productprice`),
  ADD KEY `idx_productname` (`productname`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`PublisherID`);

--
-- Indexes for table `recommended_sr`
--
ALTER TABLE `recommended_sr`
  ADD PRIMARY KEY (`RSRID`);

--
-- Indexes for table `sale_event`
--
ALTER TABLE `sale_event`
  ADD PRIMARY KEY (`SaleID`),
  ADD KEY `PublisherID` (`PublisherID`);

--
-- Indexes for table `sale_includes`
--
ALTER TABLE `sale_includes`
  ADD PRIMARY KEY (`GameID`,`SaleID`),
  ADD KEY `SaleID` (`SaleID`);

--
-- Indexes for table `tag_association`
--
ALTER TABLE `tag_association`
  ADD PRIMARY KEY (`GameID`,`TagID`),
  ADD KEY `TagID` (`TagID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `developed`
--
ALTER TABLE `developed`
  ADD CONSTRAINT `developed_ibfk_1` FOREIGN KEY (`DeveloperID`) REFERENCES `developer` (`DeveloperID`),
  ADD CONSTRAINT `developed_ibfk_2` FOREIGN KEY (`GameID`) REFERENCES `game` (`GameID`);

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `developer_ibfk_1` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`PublisherID`);

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_ibfk_1` FOREIGN KEY (`RSRID`) REFERENCES `recommended_sr` (`RSRID`),
  ADD CONSTRAINT `game_ibfk_2` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`PublisherID`),
  ADD CONSTRAINT `game_ibfk_3` FOREIGN KEY (`DeveloperID`) REFERENCES `developer` (`DeveloperID`);

--
-- Constraints for table `minimum_sr`
--
ALTER TABLE `minimum_sr`
  ADD CONSTRAINT `minimum_sr_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `game` (`GameID`);

--
-- Constraints for table `platform`
--
ALTER TABLE `platform`
  ADD CONSTRAINT `platform_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `game` (`GameID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`vendorid`) REFERENCES `vendor` (`vendorid`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`categoryid`) REFERENCES `category` (`categoryid`);

--
-- Constraints for table `sale_event`
--
ALTER TABLE `sale_event`
  ADD CONSTRAINT `sale_event_ibfk_1` FOREIGN KEY (`PublisherID`) REFERENCES `publisher` (`PublisherID`);

--
-- Constraints for table `sale_includes`
--
ALTER TABLE `sale_includes`
  ADD CONSTRAINT `sale_includes_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `game` (`GameID`),
  ADD CONSTRAINT `sale_includes_ibfk_2` FOREIGN KEY (`SaleID`) REFERENCES `sale_event` (`SaleID`);

--
-- Constraints for table `tag_association`
--
ALTER TABLE `tag_association`
  ADD CONSTRAINT `tag_association_ibfk_1` FOREIGN KEY (`GameID`) REFERENCES `game` (`GameID`),
  ADD CONSTRAINT `tag_association_ibfk_2` FOREIGN KEY (`TagID`) REFERENCES `genre_tag` (`TagID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
