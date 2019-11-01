-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 01, 2019 at 08:38 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_favthings`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favthings`
--

CREATE TABLE `tbl_favthings` (
  `ID` int(11) NOT NULL,
  `foodName` varchar(30) DEFAULT NULL,
  `cooktime` varchar(60) DEFAULT NULL,
  `ingredients` text,
  `calories` varchar(30) DEFAULT NULL,
  `foodImage` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_favthings`
--

INSERT INTO `tbl_favthings` (`ID`, `foodName`, `cooktime`, `ingredients`, `calories`, `foodImage`) VALUES
(1, 'Lasagna', '40 minutes', '9 lasagna noodles\r\n1 tbsp. olive oil\r\n1 pound of ground beef\r\n1 onion, diced\r\nKosher salt and freshly ground black pepper, to taste\r\n1 (28-ounce) can crushed tomatoes\r\n1 tablespoon Italian seasoning\r\n1 (15-ounce) package whole milk ricotta\r\n3 1/2 cups shredded mozzarella, divided\r\n1 large egg, beaten\r\n1/4 cup freshly grated Parmesan\r\n2 tbsp. chopped fresh parsley leaves', '2,000 calories', 'lasagna.jpeg'),
(2, 'Burger', '15 minutes', '1 pound ground lean (7% fat) beef\r\n1 large egg \r\n1/2 cup minced onion\r\n 1/4 cup fine dried bread crumbs \r\n1 tbsp. Worcestershire \r\n1 or 2 cloves garlic, peeled and minced \r\n1/2 teaspoon salt \r\n1/4 teaspoon pepper\r\n4 hamburger buns (4 in. wide), split \r\n1/4 cup mayonnaise \r\n1/4 cup ketchup \r\n4 iceberg lettuce leaves, rinsed and crisped \r\n1 firm-ripe tomato, cored and thinly sliced \r\n4 thin slices red onion ', '435 calories', 'burger.jpeg'),
(3, 'Pad Thai', '25 minutes', '8 oz. Kosher salt\r\n2 tbsp. wide rice noodles\r\n2 tbsp. lime juice\r\n1 tbsp. brown sugar\r\n1 tbsp. fish sauce\r\n1/4 tsp. low-sodium soy sauce\r\n2 tbsp. cayenne pepper\r\n1 vegetable oil\r\n2 bell pepper, thinly sliced\r\n2 cloves garlic, minced\r\n1 lb. eggs, lightly whisked\r\nshrimp, peeled and deveined\r\n2 Freshly ground black pepper\r\n1/4 c. green onions, thinly sliced\r\nroasted peanuts, chopped', '1131 calories', 'padthai.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_favthings`
--
ALTER TABLE `tbl_favthings`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_favthings`
--
ALTER TABLE `tbl_favthings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
