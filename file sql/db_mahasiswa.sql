-- phpMyAdmin SQL Dump
-- version 4.2.0
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2015 at 11:28 PM
-- Server version: 5.6.17
-- PHP Version: 5.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_unikom`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dosen`
--

CREATE TABLE IF NOT EXISTS `tbl_dosen` (
`id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(50) DEFAULT NULL,
  `nip_dosen` varchar(30) DEFAULT NULL,
  `jurusan` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`id_dosen`, `nama_dosen`, `nip_dosen`, `jurusan`) VALUES
(1, 'John Doe, ST', '00001', 7),
(2, 'Angel Crown, ST', '00002', 7),
(3, 'Richard, S.Kom', '00003', 2),
(4, 'Cristin Vakofa, ST', '00004', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fakultas`
--

CREATE TABLE IF NOT EXISTS `tbl_fakultas` (
`id_fak` int(11) NOT NULL,
  `nama_fakultas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_fakultas`
--

INSERT INTO `tbl_fakultas` (`id_fak`, `nama_fakultas`) VALUES
(1, 'Teknik dan Ilmu Komputer'),
(2, 'Ekonomi'),
(3, 'Hukum'),
(4, 'Sospol'),
(5, 'Desain'),
(6, 'Sastra');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE IF NOT EXISTS `tbl_jurusan` (
`id_jur` int(11) NOT NULL,
  `nama_jur` varchar(50) DEFAULT NULL,
  `kode_jur` varchar(10) DEFAULT NULL,
  `tingkatan` varchar(10) DEFAULT NULL,
  `fakultas` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`id_jur`, `nama_jur`, `kode_jur`, `tingkatan`, `fakultas`) VALUES
(1, 'Teknik Informatika', '01', 'S1', 1),
(2, 'Teknik Komputer', '02', 'S1', 1),
(3, 'Teknik Industri', '03', 'S1', 1),
(4, 'Teknik Elektro', '31', 'S1', 1),
(5, 'Teknik Sipil', '30', 'S1', 1),
(6, 'Teknik Arsitektur', '04', 'S1', 1),
(7, 'Sistem Informasi', '05', 'S1', 1),
(8, 'Perencanaan Wilayah dan Kota', '06', 'S1', 1),
(9, 'Akuntansi', '11', 'S1', 2),
(10, 'Manajemen', '12', 'S1', 2),
(11, 'Manajemen Pemasaran', '14', 'D3', 2),
(12, 'Keuangan dan Perbankan', '15', 'D3', 2),
(13, 'Akuntansi', '13', 'D3', 2),
(14, 'Teknik Komputer', '08', 'D3', 1),
(15, 'Manajemen Informatika', '09', 'D3', 1),
(16, 'Komputerisasi Akuntansi', '10', 'D3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE IF NOT EXISTS `tbl_kelas` (
`id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(30) DEFAULT NULL,
  `kode_kelas` varchar(10) DEFAULT NULL,
  `dosen_wali` int(11) DEFAULT NULL,
  `jurusan` int(11) DEFAULT NULL,
  `fakultas` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `nama_kelas`, `kode_kelas`, `dosen_wali`, `jurusan`, `fakultas`) VALUES
(1, 'SI KARYAWAN', 'SI-KARK', 1, 7, 1),
(2, 'SI-16', 'SI-16', 2, 7, 1),
(3, 'TK-2', 'TK-2', 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mhs`
--

CREATE TABLE IF NOT EXISTS `tbl_mhs` (
`id_mhs` int(11) NOT NULL,
  `nama_mhs` varchar(50) DEFAULT NULL,
  `nim_mhs` varchar(12) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat_asal` varchar(100) DEFAULT NULL,
  `alamat_sekarang` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `kelas_mhs` int(11) DEFAULT NULL,
  `dosen_wali` int(11) DEFAULT NULL,
  `jurusan` int(11) DEFAULT NULL,
  `fakultas` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_mhs`
--

INSERT INTO `tbl_mhs` (`id_mhs`, `nama_mhs`, `nim_mhs`, `tempat_lahir`, `tanggal_lahir`, `alamat_asal`, `alamat_sekarang`, `telp`, `email`, `kelas_mhs`, `dosen_wali`, `jurusan`, `fakultas`) VALUES
(2, 'Billy John', '12345', 'Jakarta', '1992-01-01', 'Bandung', 'Jalan Tebet Raya No.10', '08999000111', 'billyjhon@gmail.com', 1, 3, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE IF NOT EXISTS `tbl_users` (
`id` tinyint(4) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(2, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
 ADD PRIMARY KEY (`id_dosen`), ADD KEY `FK_jurusan` (`jurusan`);

--
-- Indexes for table `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
 ADD PRIMARY KEY (`id_fak`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
 ADD PRIMARY KEY (`id_jur`), ADD KEY `FK_fakultas` (`fakultas`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
 ADD PRIMARY KEY (`id_kelas`), ADD KEY `FK_dosen` (`dosen_wali`);

--
-- Indexes for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
 ADD PRIMARY KEY (`id_mhs`), ADD KEY `FK_tbl_mhs_fak` (`fakultas`), ADD KEY `FK_tbl_mhs_jur` (`jurusan`), ADD KEY `FK_tbl_mhs_dosen` (`dosen_wali`), ADD KEY `FK_tbl_mhs_kelas` (`kelas_mhs`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_fakultas`
--
ALTER TABLE `tbl_fakultas`
MODIFY `id_fak` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
MODIFY `id_jur` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
ADD CONSTRAINT `FK_jurusan` FOREIGN KEY (`jurusan`) REFERENCES `tbl_jurusan` (`id_jur`);

--
-- Constraints for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
ADD CONSTRAINT `FK_fakultas` FOREIGN KEY (`fakultas`) REFERENCES `tbl_fakultas` (`id_fak`);

--
-- Constraints for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
ADD CONSTRAINT `FK_dosen` FOREIGN KEY (`dosen_wali`) REFERENCES `tbl_dosen` (`id_dosen`);

--
-- Constraints for table `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
ADD CONSTRAINT `FK_tbl_mhs_dosen` FOREIGN KEY (`dosen_wali`) REFERENCES `tbl_dosen` (`id_dosen`),
ADD CONSTRAINT `FK_tbl_mhs_fak` FOREIGN KEY (`fakultas`) REFERENCES `tbl_fakultas` (`id_fak`),
ADD CONSTRAINT `FK_tbl_mhs_jur` FOREIGN KEY (`jurusan`) REFERENCES `tbl_jurusan` (`id_jur`),
ADD CONSTRAINT `FK_tbl_mhs_kelas` FOREIGN KEY (`kelas_mhs`) REFERENCES `tbl_kelas` (`id_kelas`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
