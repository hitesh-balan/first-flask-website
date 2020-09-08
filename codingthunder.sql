-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 08, 2020 at 06:13 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(15) NOT NULL,
  `mes` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `mes`, `date`) VALUES
(1, 'First post', 'firstpost@gmail.com', '1234567890', 'This is my first post', '2020-08-22 23:49:34'),
(7, 'R', '', '', '', '2020-08-23 11:56:58'),
(8, 'R', '', '', '', '2020-08-23 11:57:08'),
(9, 'Rohan', 'rohan@gmail.com', '9988774455', 'Hlo OR KYA HAAL CHAL HAI', '2020-08-23 11:57:45'),
(10, 'Rohan', 'rohan@gmail.com', '9988774455', 'Hlo OR KYA HAAL CHAL HAI', '2020-08-23 12:17:48');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'Lets learn about Share Market', 'This is a Share Market post', 'first-post', 'A person who owns a percentage of the stock market has the ownership of the corporation proportional to their share. The shares form stock. The stock of a corporation is partitioned into shares, the total of which are stated at the time of business formation. Additional shares may subsequently be authorized by the existing shareholders and issued by the company. In some jurisdictions, each share of stock has a certain declared par value, which is a nominal accounting value used to represent the equity on the balance sheet of the corporation. In other jurisdictions, however, shares of stock may be issued without associated par value.', 'post-bg.jpg', '2020-08-25 13:00:36'),
(2, 'Stock Market', 'This is a Stock post', 'second-post', 'Stock can be bought and sold privately or on stock exchanges, and such transactions are typically heavily regulated by governments to prevent fraud, protect investors, and benefit the larger economy. The stocks are deposited with the depositories in the electronic format also known as Demat account. As new shares are issued by a company, the ownership and rights of existing shareholders are diluted in return for cash to sustain or grow the business. Companies can also buy back stock, which often lets investors recoup the initial investment plus capital gains from subsequent rises in stock price.', 'post-bg.jpg', '2020-08-23 17:26:41'),
(3, 'Capital Gain', 'This is a Capital Gain Post', 'capital-post', 'A capital gain refers to profit that results from a sale of a capital asset, such as stock, bond or real estate, where the sale price exceeds the purchase price. The gain is the difference between a higher selling price and a lower purchase price.[1] Conversely, a capital loss arises if the proceeds from the sale of a capital asset are less than the purchase price.', 'post-bg.jpg', '2020-08-23 22:41:13'),
(4, 'Market Value', 'This is a Market Value Post', 'market-post', 'Market value is a concept distinct from market price, which is \"the price at which one can transact\", while market value is \"the true underlying value\" according to theoretical standards. The concept is most commonly invoked in inefficient markets or disequilibrium situations where prevailing market prices are not reflective of true underlying market value. For market price to equal market value, the market must be informationally efficient and rational expectations must prevail.\r\n\r\nRecently, Mocciaro Li Destri, Picone & Minà (2012)[2] have underscored the subtle but important difference between the firms’ capacity to create value through correct operational choices and valid strategies, on the one hand, and the epiphenomenal manifestation of variations in stockholder value on the financial markets (notably on stock markets). In this perspective, they suggest to implement new methodologies able to bring strategy back into financial performance measures.', 'post-bg.jpg', '2020-08-23 22:43:12'),
(5, 'Digital Marketing', 'Digital Marketing is the component of marketing', 'digital-marketing-post', 'The development of digital marketing is inseparable from technology development. One of the key points in the start of was in 1971, where Ray Tomlinson sent the very first email and his technology set the platform to allow people to send and receive files through different machines.[8] However, the more recognisable period as being the start of Digital Marketing is 1990 as this was where the Archie search engine was created as an index for FTP sites. In the 1980s, the storage capacity of computer was already big enough to store huge volumes of customer information. Companies started choosing online techniques, such as database marketing, rather than limited list broker.[9] These kinds of databases allowed companies to track customers\' information more effectively, thus transforming the relationship between buyer and seller. However, the manual process was not as efficient.', 'post-bg.jpg', '2020-08-23 22:45:01'),
(6, 'Digital Currency', 'This is a Digital currency post', 'digital-currency-post', 'Digital currencies exhibit properties similar to other currencies, but do not have a physical form of banknotes and coins. Not having a physical form, they allow for nearly instantaneous transactions. Usually not issued by a governmental body, virtual currencies are not considered a legal tender and they enable ownership transfer across governmental borders.', 'post-bg.jpg', '2020-08-23 22:46:36'),
(7, 'Last Post', 'This is the last post', 'last-post', 'This is my last post', 'post-bg.jpg', '2020-08-27 21:19:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
