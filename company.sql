-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2020 at 01:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alat`
--

CREATE TABLE `tb_alat` (
  `id_alat` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `suplier` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alat`
--

INSERT INTO `tb_alat` (`id_alat`, `nama`, `jumlah`, `harga`, `suplier`) VALUES
(1, 'Tungku Pemanas', 12, 755000, 'PT Panas'),
(2, 'Malam', 100, 15000, 'PT. Dayat'),
(3, 'Ceting', 110, 24000, 'PT. Dayat');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `harga_produksi` int(11) NOT NULL,
  `stock` int(4) NOT NULL,
  `stock_awal` int(11) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `harga_produksi`, `stock`, `stock_awal`, `gambar`) VALUES
(1, 'Batik 5x5', 'Batik kualitas paling oke', 'Batik Cap', 300000, 200000, 43, 50, 'batik.jpeg'),
(2, 'Sarung Bantal Batik', 'Sarung Bantal Dengan Motif Batik', 'Batik Cap', 12000, 8000, 84, 100, 'sarungbantalbatik.jpeg'),
(3, 'Sarung Guling Motif Batik', 'Sarung Guling Motif Batik Terbaik', 'Batik Cap', 15000, 13500, 186, 200, 'sarunggulingbatik.jpeg\r\n'),
(7, 'Sarung Guling L', 'Bagus Dingin', 'Batik Cap', 12000, 8000, 99, 100, 'sarunggulingbatik1.jpeg'),
(8, 'Sarung Bantal', 'Dingin', 'Batik Cap', 45000, 40000, 100, 100, 'sarungbantalbatik1.jpeg'),
(9, 'Sarung Guling L', 'Bahan Enak', 'Batik Cap', 2400000, 30000, 100, 120, 'sarunggulingbatik11.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_document`
--

CREATE TABLE `tb_document` (
  `id_document` int(11) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `tanggal_terima` datetime DEFAULT current_timestamp(),
  `jenis_surat` varchar(50) NOT NULL,
  `tujuan_surat` varchar(50) NOT NULL,
  `lampiran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_document`
--

INSERT INTO `tb_document` (`id_document`, `no_surat`, `tanggal_terima`, `jenis_surat`, `tujuan_surat`, `lampiran`) VALUES
(1, 'ABC/12/2020', '2020-05-26 10:16:42', 'Izin', 'Pemkot', ''),
(2, 'AI/22/06/20', '2020-05-26 10:32:12', 'Urgent', 'Pemkot', ''),
(3, 'AX/22/06/20', '2020-05-26 10:35:13', 'Tawaran', 'PT Aldi', ''),
(4, 'AXE/22/06/20', '2020-05-26 10:36:23', 'Pemberitahuan', 'PT.ALDI 2', ''),
(5, 'AIC/22/06/20', '2020-05-26 10:36:38', 'Pemberitahuan', 'PT. Ayu', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL,
  `metode` varchar(30) NOT NULL,
  `pengiriman` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `no_telp`, `tgl_pesan`, `batas_bayar`, `metode`, `pengiriman`) VALUES
(1, 'Anam', 'Jaten,Karanganyar', '81218181818', '2020-05-15 18:39:56', '2020-05-16 18:39:56', 'BRI', 'JNT'),
(2, 'Zidane', 'Sukoharjo', '0892182718', '2020-05-15 18:41:57', '2020-05-16 18:41:57', 'BJB - xxxxxx', 'POS'),
(3, 'Bagus Nuril Anam', 'Bekonang', '0891281721', '2020-05-16 08:44:50', '2020-05-17 08:44:50', 'BRI - XXXXXX', 'JNT'),
(4, 'Malvin', 'Nusukan', '08112312', '2020-05-21 14:06:09', '2020-05-22 14:06:09', 'BJB - xxxxxx', 'POS'),
(5, 'Riyan Aldiansyah ', 'Sukoharjo', '0832435123', '2020-06-25 14:36:44', '2020-06-26 14:36:44', 'BNI - xxxxxx', 'JNE');

-- --------------------------------------------------------

--
-- Table structure for table `tb_karyawan`
--

CREATE TABLE `tb_karyawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_karyawan`
--

INSERT INTO `tb_karyawan` (`id`, `nama`, `alamat`, `jabatan`, `gaji`) VALUES
(1, 'Al Adiat Russetya Tamora', 'Polokarto', 'Director', 10000000),
(4, 'Riyan Aldiansyah', 'Polokarto', 'Maintennance System', 0),
(5, 'Bagus Nuril Anam', 'Demakan', 'Akunting', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_marketing`
--

CREATE TABLE `tb_marketing` (
  `id_marketing` int(11) NOT NULL,
  `nama_dev` varchar(20) NOT NULL,
  `nama_strategi` varchar(40) NOT NULL,
  `target` varchar(40) NOT NULL,
  `hasil` varchar(100) NOT NULL,
  `dana` varchar(100) NOT NULL,
  `tgl_dibuat` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_marketing`
--

INSERT INTO `tb_marketing` (`id_marketing`, `nama_dev`, `nama_strategi`, `target`, `hasil`, `dana`, `tgl_dibuat`) VALUES
(7, 'PT. Sejahtera', 'Portofolio Perusahaan Berbasis Teknologi', 'Peningkatan Penjualan 2 %', '-', '1250000', '2020-05-15 07:50:51'),
(8, 'PT Brosur Indo', 'Penyebaran Brosur Produk ', 'Peningkatan Penjualan 2 %', '-', '10000000', '2020-06-04 00:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 1, 1, 'Batik 5x5', 1, 300000, ''),
(2, 1, 2, 'Sarung Bantal Batik', 1, 12000, ''),
(3, 2, 1, 'Batik 5x5', 1, 300000, ''),
(4, 3, 2, 'Sarung Bantal Batik', 1, 12000, ''),
(5, 3, 3, 'Sarung Guling Motif Batik', 1, 15000, ''),
(6, 4, 7, 'Sarung Guling L', 1, 12000, ''),
(7, 4, 2, 'Sarung Bantal Batik', 1, 12000, ''),
(8, 5, 1, 'Batik 5x5', 1, 300000, '');

--
-- Triggers `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN
	UPDATE tb_barang SET stock = stock - NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'Bagus N.A', 'penjualan', 'penjualan123', 1),
(2, 'Bagus N.A', 'marketing', 'marketing123', 3),
(3, 'Riris Agriella', 'produksi', 'produksi123', 4),
(4, 'Riris Agriella', 'akunting', 'akunting123', 21),
(5, 'Riyan Aldiansyah', 'inventory', 'inventory123', 32),
(6, 'Riyan Aldiansyah', 'purchasing', 'purchasing123', 45),
(7, 'Al Adiat', 'document', 'document123', 65),
(8, 'Al Adiat', 'super', 'super123', 100),
(9, 'Malvin Iqbal F', 'payroll', 'payroll123', 66),
(10, 'Malvin Iqbal F', 'humanpay', 'humanpay123', 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alat`
--
ALTER TABLE `tb_alat`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indexes for table `tb_document`
--
ALTER TABLE `tb_document`
  ADD PRIMARY KEY (`id_document`);

--
-- Indexes for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_marketing`
--
ALTER TABLE `tb_marketing`
  ADD PRIMARY KEY (`id_marketing`);

--
-- Indexes for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alat`
--
ALTER TABLE `tb_alat`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tb_document`
--
ALTER TABLE `tb_document`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_marketing`
--
ALTER TABLE `tb_marketing`
  MODIFY `id_marketing` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
