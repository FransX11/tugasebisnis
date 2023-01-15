-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 01:35 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebisnis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `idAdmin` varchar(11) NOT NULL,
  `namaAdmin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`idAdmin`, `namaAdmin`, `email`, `password`) VALUES
('1', 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_kategori`
--

CREATE TABLE `tabel_kategori` (
  `idKategori` int(11) NOT NULL,
  `namaKategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_kategori`
--

INSERT INTO `tabel_kategori` (`idKategori`, `namaKategori`) VALUES
(1, 'Pria'),
(2, 'Wanita'),
(3, 'Anak-anak'),
(4, 'Couple'),
(5, 'Sarimbit');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_keranjang`
--

CREATE TABLE `tabel_keranjang` (
  `idKeranjang` varchar(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` varchar(11) NOT NULL,
  `namaProduk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_komentar`
--

CREATE TABLE `tabel_komentar` (
  `idKomen` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_komentar`
--

INSERT INTO `tabel_komentar` (`idKomen`, `nama`, `email`, `pesan`) VALUES
(1, 'frans', 'admin@gmail.com', 'mainnya hebat!'),
(2, 'bowok', 'bowoknihbos@gmail.com', 'GGWP!'),
(3, 'Alfira', 'firaislan@gmail.com', 'Bagus Batiknya');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `idProduk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `ukuran` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `path` varchar(50) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_produk`
--

INSERT INTO `tabel_produk` (`idProduk`, `nama`, `gambar`, `ukuran`, `keterangan`, `kategori`, `harga`, `stock`, `path`, `size`) VALUES
(15, 'Batik Sarimbit Keluarga', '185283bd07c8f6587b5a9b79c1a29661', 'm', 'Batik Sarimbit keluarga berkah', 'sarimbit', 500000, 99998, 'image/185283bd07c8f6587b5a9b79c1a29661.png', 265674),
(19, 'Batik Couple', '359c2067e776e80ca60c5de15a1ca597', 's', 'Batik Couple', 'couple', 300000, 3, 'image/359c2067e776e80ca60c5de15a1ca597.png', 14872),
(20, '', 'c2b25cd4cf155c98b1bfe2e646589028', 'l', 'Batik Sarimbit Keluarga Berkah', 'sarimbit', 123000, 2, 'image/c2b25cd4cf155c98b1bfe2e646589028.png', 91850),
(21, 'ADLV HOODIE BABYFACE BLACK BUBBLE', '28a33ec86141e49144434ebb8ba34bfc', 'L', 'ADLV HOODIE BABYFACE BLACK BUBBLE\r\n100% Cotton\r\nManufacture By AcmeDeLaVie\r\nOrigin Republic Of Korea\r\n', 'pria', 149000000, 3, 'image/28a33ec86141e49144434ebb8ba34bfc.png', 112469),
(22, 'ADLV T-Shirt BABYFACE BLACK BUBBLE', '383f8760e541dd7a504d506e7f77af3f', 'L', 'ADLV T-Shirt BABYFACE BLACK BUBBLE 100% Cotton Manufacture By AcmeDeLaVie Origin Republic Of Korea', 'pria', 81000000, 9, 'image/383f8760e541dd7a504d506e7f77af3f.png', 119017),
(23, 'ADLV HOODIE BABYFACE WHITE INDIAN BOY', 'ab1bf4c8445f533d988dcd648e8b94b8', 'L', 'ADLV HOODIE BABYFACE WHITE INDIAN BOY 100% Cotton Manufacture By AcmeDeLaVie Origin Republic Of Korea', 'pria', 149000000, 5, 'image/ab1bf4c8445f533d988dcd648e8b94b8.png', 126555),
(24, 'ADLV T-Shirt BABYFACE WHITE INDIAN BOY', 'd55a9daeb2be4a702b45cbbc98ebb7ee', 'L', 'ADLV T-Shirt BABYFACE WHITE INDIAN BOY 100% Cotton Manufacture By AcmeDeLaVie Origin Republic Of Korea', 'pria', 81000000, 9, 'image/d55a9daeb2be4a702b45cbbc98ebb7ee.png', 93979),
(25, 'ADLV HOODIE BABYFACE BLACK DONUT', '474b07a0658f7a489d2f3f48ab17f919', 'L', 'ADLV HOODIE BABYFACE BLACK DONUT 100% Cotton Manufacture By AcmeDeLaVie Origin Republic Of Korea', 'pria', 149000000, 5, 'image/474b07a0658f7a489d2f3f48ab17f919.png', 163554),
(26, 'ADLV T-Shirt BABYFACE BLACK DONUT', '6f05967b142db3a4abd5d9e41ec877ca', 'L', 'ADLV T-Shirt BABYFACE BLACK DONUT 100% Cotton Manufacture By AcmeDeLaVie Origin Republic Of Korea', 'pria', 81000000, 9, 'image/6f05967b142db3a4abd5d9e41ec877ca.png', 152522),
(27, 'ADLV T-Shirt BABYFACE WHITE DONUT', '0250f29bace93651e92cf1bce6e76b69', 'L', 'ADLV T-Shirt BABYFACE WHITE DONUT 100% Cotton Manufacture By AcmeDeLaVie Origin Republic Of Korea', 'pria', 81000000, 10, 'image/0250f29bace93651e92cf1bce6e76b69.png', 111495),
(28, 'ADLVXLISA REVERSIBLE A LOGO EMBLEM FAKE FUR JACKET PINK', 'f8af1dd315b715f6d79af8f50cfb49a4', 'L', 'ADLVXLISA REVERSIBLE A LOGO EMBLEM FAKE FUR JACKET PINK\r\nORIGIN GLOBAL\r\nMATERIAL OUTERSHELL:NYLON 100% LINING POLY 100% PADDING: DOWN 80% FEATHER 20%\r\nMANUFACTURE BY AcmeDeLaVie', 'wanita', 312000000, 3, 'image/f8af1dd315b715f6d79af8f50cfb49a4.png', 386819),
(29, 'ADLVXLISA A LOGO EMBLEM ECHO FUR BUCKET HAT PINK', '46588cd0b7549e431c6fef2be467cdaa', 'M', 'ADLVXLISA A LOGO EMBLEM ECHO FUR BUCKET HAT PINK 100% Cotton Manufacture By AcmeDeLaVie Origin Republic Of Korea', 'wanita', 95000000, 5, 'image/46588cd0b7549e431c6fef2be467cdaa.png', 166679),
(31, 'ADLVXLISA LAUREL A LOGO EMBLEM BOOTS CUT SWEAT PANTS CREAM', 'b997a039c8456e9046c345ea9282fc0f', 'M', 'ADLVXLISA LAUREL A LOGO EMBLEM BOOTS CUT SWEAT PANTS CREAM\r\nORIGIN Republic Of Korea\r\nMATERIALS: NYLON 100%\r\nMANUFACTURE AcmeDeLaVie', 'wanita', 149000000, 5, 'image/b997a039c8456e9046c345ea9282fc0f.png', 69786),
(32, 'ADLVXLISA LAUREL A LOGO EMBLEM HOODIE CREAM', '2114fff607ad37c1451dc0cb77c0601a', 'M', 'ADLVXLISA LAUREL A LOGO EMBLEM HOODIE CREAM\r\nORIGIN Republic Of Korea\r\nMATERIAL COTTON 100%\r\nMANUFACTURE AcmeDeLaVie', 'wanita', 149000000, 5, 'image/2114fff607ad37c1451dc0cb77c0601a.png', 106257),
(33, 'H&M 2-Packs Twill Jogger Pants Kids', '974594c6eb39ab300d6a3410cb3dc55d', 'M', 'JOGGER SLIM-FIT BERISI 2PCS CELANA YANG BERBAHAN KATUN, RINGAN DAN ELASTIS MEMILIKI KANTUNG SAMPING DAN JUGA BELAKANG', 'anak', 400000, 10, 'image/974594c6eb39ab300d6a3410cb3dc55d.png', 77499),
(34, 'H&M 2-Packs Cotton T-Shirt', '454e4b6fed7eefa5d66f454c05f8f689', 'M', 'T-Shirt Bundling 2Pcs yang Berbahan Dasar Katun Dan Dicetak Gambar Dengan Potongan Yang Nyaman Dan Lengan Baju Yang Lebar ', 'anak', 350000, 7, 'image/454e4b6fed7eefa5d66f454c05f8f689.png', 69670),
(35, 'ZARA PRINTED SHIRT', 'b5cdd0e8872ebb4420d3061b66d287fc', 'M', 'ZARA PRINTED SHIRT Dengan Potongan Bulat Di Leher Dan Lengan Panjang', 'anak', 250000, 10, 'image/b5cdd0e8872ebb4420d3061b66d287fc.png', 12421),
(36, 'ZARA RUFFLY FLORAL RIB TOP', '00fba43d88c5c13cb9f466be7279dd49', 'M', 'ZARA Ruffly Floral Rib Top Dengan Kerah Bulat Dan Lengan Pendek', 'anak', 200000, 5, 'image/00fba43d88c5c13cb9f466be7279dd49.png', 37982),
(37, 'Celana Jeans High Waist', 'd6e8c282dd1e62936f764fe9ccd6c131', 'M', 'Celana Jeans High Waist Yang Memiliki Potongan Lebar Dibagian Bawah Celana', 'wanita', 150000, 10, 'image/d6e8c282dd1e62936f764fe9ccd6c131.png', 83315);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `idUser` varchar(11) NOT NULL,
  `daftarBarang` text NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`idTransaksi`, `idUser`, `daftarBarang`, `tanggal`, `total`) VALUES
(6, '4', 'Batik Pria, Kategori : pria, Jumlah : 1<br>', '2022-12-30', 100000),
(7, '4', 'Batik Pria, Kategori : pria, Jumlah : 1<br>', '2023-01-03', 100000),
(8, '4', 'Batik Wanita, Kategori : wanita, Jumlah : 1<br>', '2023-01-03', 200000),
(9, '4', 'ADLV HOODIE BABYFACE BLACK BUBBLE, Kategori : pria, Jumlah : 1<br>', '2023-01-07', 149000000),
(10, '4', 'Celana Jeans High Waist, Kategori : wanita, Jumlah : 1<br>', '2023-01-13', 150000),
(11, '5', 'ADLV HOODIE BABYFACE BLACK BUBBLE, Kategori : pria, Jumlah : 1<br>', '2023-01-13', 149000000),
(12, '5', 'Batik Couple, Kategori : couple, Jumlah : 1<br>', '2023-01-14', 300000),
(13, '5', 'Batik Sarimbit Keluarga, Kategori : sarimbit, Jumlah : 1<br>', '2023-01-14', 500000),
(14, '5', 'ADLV T-Shirt BABYFACE WHITE INDIAN BOY, Kategori : pria, Jumlah : 1<br>', '2023-01-14', 81000000),
(15, '5', 'ADLV T-Shirt BABYFACE BLACK BUBBLE, Kategori : pria, Jumlah : 1<br>', '2023-01-14', 81000000),
(16, '5', 'Batik Sarimbit Keluarga, Kategori : sarimbit, Jumlah : 1<br>', '2023-01-14', 500000),
(17, '5', 'ADLV T-Shirt BABYFACE BLACK DONUT, Kategori : pria, Jumlah : 1<br>', '2023-01-14', 81000000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_trolly`
--

CREATE TABLE `tabel_trolly` (
  `idTrolly` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `idUser` int(11) NOT NULL,
  `namaUser` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`idUser`, `namaUser`, `email`, `password`, `alamat`, `telpon`) VALUES
(4, 'frans', 'fxaverius888@gmail.com', '2b216d62d3f71e80dd1301e4770fa53e', 'medan', '000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `tabel_kategori`
--
ALTER TABLE `tabel_kategori`
  ADD PRIMARY KEY (`idKategori`);

--
-- Indexes for table `tabel_keranjang`
--
ALTER TABLE `tabel_keranjang`
  ADD PRIMARY KEY (`idKeranjang`);

--
-- Indexes for table `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  ADD PRIMARY KEY (`idKomen`);

--
-- Indexes for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`idTransaksi`);

--
-- Indexes for table `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  ADD PRIMARY KEY (`idTrolly`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_komentar`
--
ALTER TABLE `tabel_komentar`
  MODIFY `idKomen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `idTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  MODIFY `idTrolly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
