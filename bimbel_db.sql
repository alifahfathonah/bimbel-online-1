-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2020 at 04:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bimbel_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `xx_admin`
--

CREATE TABLE `xx_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1. admin, 2. owner',
  `nama` varchar(100) NOT NULL COMMENT '\r\n',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xx_admin`
--

INSERT INTO `xx_admin` (`id_admin`, `username`, `password`, `status`, `nama`, `created_at`) VALUES
(1, 'admin1', '$2y$10$ncKnTYyNSVyVoeSuiv4sk.gmOaNSJ6lrL4fYgo6j1K4A3vDSwSJ2m', 1, 'Fran Handika Ganteng', '2020-06-13 00:00:00'),
(2, 'owner1', '$2y$10$MchkEJpIjZpfPZOgoyd8juDnvvfD7ybnFw1HvbEfZXXl0V34uulOq', 2, 'Owner Ganteng Sekali', '2020-06-11 00:00:00'),
(3, 'admin69', '$2y$10$KfllA9C36AGsSWwIff7u2.8ldvJTxK5OFcVBM5FkuV0Ny.WxPRr7W', 1, 'Yoga Anugrah Pratama', '2020-06-11 00:00:00'),
(4, 'kucing', '$2y$10$uFKWTDXrg5vI6qJmJ2/j3.LKEwGqU9O2pqdcx4mB5QZlzz92x3eta', 1, 'Kucing', '2020-06-11 00:00:00'),
(5, 'asddasasdads', '$2y$10$j1n6f7LxDfnqxMxijc21q.kjjIsARb51jchIjdoS8oLI0yeYNa.n2', 2, 'asddasasdasd', '2020-06-13 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `xx_jenis_kelamin`
--

CREATE TABLE `xx_jenis_kelamin` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `value` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xx_jenis_kelamin`
--

INSERT INTO `xx_jenis_kelamin` (`id`, `nama`, `value`) VALUES
(1, 'Laki - Laki', 'L'),
(2, 'Perempuan', 'P');

-- --------------------------------------------------------

--
-- Table structure for table `xx_kelas`
--

CREATE TABLE `xx_kelas` (
  `id_kelas` int(11) NOT NULL,
  `kode_kelas` varchar(50) NOT NULL,
  `judul_kelas` varchar(100) NOT NULL,
  `jadwal_kelas` varchar(50) NOT NULL,
  `waktu_kelas` varchar(50) NOT NULL,
  `deskripsi_kelas` text NOT NULL,
  `harga_kelas` bigint(20) NOT NULL,
  `biaya_pendaftaran` bigint(20) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xx_kelas`
--

INSERT INTO `xx_kelas` (`id_kelas`, `kode_kelas`, `judul_kelas`, `jadwal_kelas`, `waktu_kelas`, `deskripsi_kelas`, `harga_kelas`, `biaya_pendaftaran`, `created_at`, `updated_at`) VALUES
(1, 'bcapg2020', 'Cinta Matika Pagi', 'senin , rabu , jumat', '09:00 - 11:30', 'lorem ipsum', 250000, 150000, '2020-05-01', NULL),
(2, 'bcasg2020', 'Cinta Matika Siang', 'senin , rabu , jumat', '13:00 - 15:30', 'lorem ipsum', 250000, 150000, '2020-01-01', '2020-06-09'),
(3, 'mtkpg2020', 'Cinta Baca Pagi', 'senin , rabu , jumat', '09:00 - 11:30', 'lorem ipsum', 250000, 150000, '2020-07-06', NULL),
(4, 'mtksg2020', 'Cinta Baca Siang', 'senin - jumat', '13:00 - 15:30', 'Lorem ipsum dolor sit amet', 250000, 150000, '2020-08-06', '2020-06-13');

-- --------------------------------------------------------

--
-- Table structure for table `xx_pendaftaran`
--

CREATE TABLE `xx_pendaftaran` (
  `id_pendaftaran` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `nomor_pendaftaran` varchar(50) NOT NULL,
  `status_pembayaran` int(11) NOT NULL DEFAULT 3 COMMENT '1. selesai bayar, 2. pending',
  `status` int(11) NOT NULL DEFAULT 2 COMMENT '1. active, 2. inactive',
  `admin_acc` varchar(50) NOT NULL,
  `bukti_pembayaran` varchar(250) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xx_pendaftaran`
--

INSERT INTO `xx_pendaftaran` (`id_pendaftaran`, `id_user`, `id_kelas`, `nomor_pendaftaran`, `status_pembayaran`, `status`, `admin_acc`, `bukti_pembayaran`, `created_at`) VALUES
(2, 1, 2, 'bcasg20201', 1, 1, 'Fran Handika', '12Screenshot_1.png', '2020-06-08'),
(5, 1, 4, 'mtksg202011591653600', 1, 1, 'Fran Handika', '15Screenshot_1.png', '2020-06-09'),
(7, 3, 3, 'mtkpg202031591740000', 1, 1, 'Fran Handika', '3Screenshot_1.png', '2020-06-10'),
(8, 1, 1, 'bcapg202011591740000', 1, 1, 'Fran Handika', '1Screenshot_1.png', '2020-06-10'),
(9, 1, 3, 'mtkpg202011591740000', 2, 2, 'Fran Handika', '1mtkpg202011591740000.jpeg', '2020-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `xx_profile`
--

CREATE TABLE `xx_profile` (
  `id_profile` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `no_hp` varchar(50) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` varchar(30) NOT NULL,
  `umur` int(11) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xx_profile`
--

INSERT INTO `xx_profile` (`id_profile`, `id_user`, `foto`, `nama`, `no_hp`, `tempat_lahir`, `tanggal_lahir`, `umur`, `pendidikan`, `jenis_kelamin`, `alamat`, `created_at`) VALUES
(1, 1, '1.png', 'Yoga Anugrah Pratama.SY', '08981001118', 'Palembang', '1996-06-06', 24, 'Kuliah', 'L', 'Jl. mencintaimu', '2020-06-13'),
(2, 3, '', 'Aku Ganteng', '0928278289', 'Palembang', '2003-07-16', 16, 'SD', 'L', 'Jl', '2020-06-10');

-- --------------------------------------------------------

--
-- Table structure for table `xx_users`
--

CREATE TABLE `xx_users` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1 COMMENT '1. active,2.inactive\r\n',
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xx_users`
--

INSERT INTO `xx_users` (`id_user`, `username`, `email`, `password`, `nama`, `is_active`, `created_at`) VALUES
(1, 'yogaapsy', 'yogaanugrahpsy@gmail.com', '$2y$10$9qpJg9s4l/U3hvOAmhAmEuds7JADHYjocpxo0lR8Tyo1P4vp1vx6e', 'Yoga Anugrah Pratama', 1, '2020-06-06'),
(2, 'tes123', 'tes@gmail.com', '$2y$10$8Yot8UGRf1sRH1QKHMA6ZO2gX6ZZ4DJoxA6Iegc3zJZLb5V1MtRpy', 'Tes', 1, '2020-06-09'),
(3, 'tes1234', 'te2s@gmail.com', '$2y$10$GupjmBeYEMEw9OlvMtF8te2uSMOmVdcLoB8FkR2b5Fyd0LctZu8ai', 'Aku Ganteng', 1, '2020-06-10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `xx_admin`
--
ALTER TABLE `xx_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `xx_jenis_kelamin`
--
ALTER TABLE `xx_jenis_kelamin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xx_kelas`
--
ALTER TABLE `xx_kelas`
  ADD PRIMARY KEY (`id_kelas`),
  ADD UNIQUE KEY `kode_kelas` (`kode_kelas`);

--
-- Indexes for table `xx_pendaftaran`
--
ALTER TABLE `xx_pendaftaran`
  ADD PRIMARY KEY (`id_pendaftaran`);

--
-- Indexes for table `xx_profile`
--
ALTER TABLE `xx_profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- Indexes for table `xx_users`
--
ALTER TABLE `xx_users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `nik` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `xx_admin`
--
ALTER TABLE `xx_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `xx_jenis_kelamin`
--
ALTER TABLE `xx_jenis_kelamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xx_kelas`
--
ALTER TABLE `xx_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `xx_pendaftaran`
--
ALTER TABLE `xx_pendaftaran`
  MODIFY `id_pendaftaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `xx_profile`
--
ALTER TABLE `xx_profile`
  MODIFY `id_profile` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `xx_users`
--
ALTER TABLE `xx_users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
