-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 04:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pulsa`
--

-- --------------------------------------------------------

--
-- Table structure for table `reseller`
--

CREATE TABLE `reseller` (
  `id_user` int(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `saldo` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reseller`
--

INSERT INTO `reseller` (`id_user`, `user`, `password`, `saldo`) VALUES
(1, 'ali', '1234', 79000),
(3, 'yudhati', '1234', 58000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trx` int(50) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  `user` varchar(50) NOT NULL,
  `nominal` varchar(50) NOT NULL,
  `nomor` varchar(50) NOT NULL,
  `bayar` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trx`, `date`, `user`, `nominal`, `nomor`, `bayar`) VALUES
(1, '2022-12-06', 'ali', '5000', '082111191828', 6000),
(2, '2022-12-14', 'ali', '10000', '083811053130', 11000),
(3, '2022-12-14', 'ali', '5000', '082111191828', 6000),
(4, '2022-12-13', 'ali', '10000', '082111119731', 11000),
(13, '2022-12-21', 'ali', '5000', '082111193333', 6000),
(14, '2022-12-21', 'ali', '5000', '082111194444', 6000),
(15, '2022-12-21', 'ali', '5000', '082111195555', 6000),
(16, '2022-12-26', 'ali', '20000', '538712341234', 21000),
(17, '2022-12-26', 'ali', 'D20000', '082111191828', 22000),
(18, '2022-12-26', 'ali', '200000', '538712341234', 202000),
(19, '2022-12-26', 'ali', 'D50000', '0821191828', 52000),
(20, '2022-12-26', 'ali', '100000', '538712341234', 102000),
(21, '2022-12-26', 'ali', '75000', '082111191828', 76000),
(22, '2022-12-26', 'ali', '1GB', '083821345124', 7000),
(23, '2022-12-26', 'ali', '25GB', '083821345124', 75000),
(24, '2022-12-26', 'ali', '20000', '538712344321', 21000),
(25, '2023-01-11', 'yudhati', '20000', '538712344321', 21000),
(26, '2023-01-11', 'yudhati', '20000', '538712345678', 21000);

--
-- Triggers `transaksi`
--
DELIMITER $$
CREATE TRIGGER `Potongsaldo` AFTER INSERT ON `transaksi` FOR EACH ROW BEGIN
	UPDATE reseller SET saldo = saldo - NEW.bayar
    WHERE user = NEW.user;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reseller`
--
ALTER TABLE `reseller`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reseller`
--
ALTER TABLE `reseller`
  MODIFY `id_user` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_trx` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
