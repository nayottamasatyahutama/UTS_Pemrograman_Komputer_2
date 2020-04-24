-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2020 at 05:14 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perumahan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_perumahan`
--

CREATE TABLE `data_perumahan` (
  `nama_perumahan` varchar(20) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pengembang` varchar(20) NOT NULL,
  `tipe_perumahan` varchar(10) NOT NULL,
  `file_brosur` varchar(50) NOT NULL,
  `id_perumahan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_perumahan`
--

INSERT INTO `data_perumahan` (`nama_perumahan`, `alamat`, `no_telp`, `email`, `pengembang`, `tipe_perumahan`, `file_brosur`, `id_perumahan`) VALUES
('Citra', 'Tegal', '0283', 'citra@citral.com', 'citra', '36', 'promo akhir tahun', 5),
('House', 'Kabupaten Tegal', '0283', 'house@house.com', 'citra', '48', 'promo awal tahun', 6),
('permai', 'Brebes', '08555555', 'permai@permai.com', 'permai', '24', 'promo ulang tahun permai', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'nayottama', '0167b3a22df375acd2a857ade8164e83');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_perumahan`
--
ALTER TABLE `data_perumahan`
  ADD PRIMARY KEY (`id_perumahan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_perumahan`
--
ALTER TABLE `data_perumahan`
  MODIFY `id_perumahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
