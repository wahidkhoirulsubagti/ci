-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Bulan Mei 2023 pada 11.49
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrentalmobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `merk`
--

CREATE TABLE `merk` (
  `idmerk` int(2) NOT NULL,
  `namamerk` varchar(100) DEFAULT NULL,
  `namamerk_seo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merk`
--

INSERT INTO `merk` (`idmerk`, `namamerk`, `namamerk_seo`) VALUES
(1, 'Toyota', 'toyota'),
(3, 'Daihatsu', 'daihatsu'),
(4, 'Nissan', 'nissan'),
(5, 'Suzuki', 'suzuki'),
(7, 'Mitsubishi', 'mitsubishi'),
(10, 'BMW', 'bmw'),
(11, 'Isuzu', 'isuzu'),
(12, 'Datsun', 'datsun'),
(13, 'Ferrari', 'ferrari'),
(14, 'Honda', 'honda'),
(19, 'Hyundai', 'hyundai'),
(20, 'Toyota01', 'toyota01'),
(21, 'Brio01', 'brio01'),
(22, 'CR-V01', 'crv01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `idmobil` int(3) NOT NULL,
  `date` datetime DEFAULT NULL,
  `idmerk` int(2) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `tahunproduksi` int(4) DEFAULT NULL,
  `platnomer` varchar(15) DEFAULT NULL,
  `kursi` int(2) DEFAULT NULL,
  `tarif` int(6) DEFAULT NULL,
  `lembur` int(6) DEFAULT NULL,
  `norangka` varchar(20) DEFAULT NULL,
  `foto` varchar(200) DEFAULT NULL,
  `update` datetime DEFAULT NULL,
  `stmobil` enum('bebas','jalan') DEFAULT 'bebas'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`idmobil`, `date`, `idmerk`, `type`, `tahunproduksi`, `platnomer`, `kursi`, `tarif`, `lembur`, `norangka`, `foto`, `update`, `stmobil`) VALUES
(1, '2016-11-17 08:19:32', 3, 'Ayla', 2016, 'A 1234 BCD', 5, 270000, 50000, 'A123KGJR', 'ayla.jpg', '2016-11-22 16:05:00', 'bebas'),
(2, '2016-11-17 14:21:55', 1, 'Agya ', 2016, 'B 1122 CD', 5, 280000, 50000, 'A4455GGHF', 'agya.jpg', '2023-05-20 06:23:09', 'jalan'),
(3, '2016-11-20 09:05:34', 3, 'Xenia', 2016, 'B 4444 DUT', 8, 350000, 50000, 'AHASDR567JH', 'xenia1.png', '2016-11-20 09:07:26', 'jalan'),
(4, '2016-11-20 09:07:18', 1, 'Luxio', 2016, 'B 2233 CDH', 8, 350000, 50000, 'AGD556K7', 'luxio.png', '2023-05-17 11:33:46', 'jalan'),
(5, '2016-11-22 16:02:14', 1, 'Avanza', 2016, 'B 1111 AAA', 8, 350000, 50000, 'HIJKLMN123', 'avanza.jpg', NULL, 'jalan'),
(6, '2023-05-17 19:01:06', 14, 'Jazz', 2019, 'B 9742 KYF', 4, 350000, 50000, 'FWW14562624GF', '4989a66e-d1fa-4eca-8a87-8b68e8784232.jpg', NULL, 'bebas'),
(7, '2023-05-17 19:08:34', 14, 'HR-V', 2018, 'B 4824 KTG', 4, 380000, 50000, 'FWFG252456B', 'm1fvoevehvyybmqltwus.jpg', '2023-05-17 19:21:54', 'jalan'),
(9, '2023-05-17 19:15:02', 14, 'Brio', 2019, 'B 8294 JKG', 4, 340000, 50000, 'SDG2452F', 'honda-brio-2019-3.jpg', NULL, 'bebas'),
(10, '2023-05-17 19:19:35', 22, 'CR-V', 2019, 'B 2563 GHF', 6, 380000, 50000, 'DFWF3533D', 'autos-d0da.jpg', '2023-05-20 06:42:06', 'bebas'),
(11, '2023-05-17 19:21:23', 1, 'Fortuner', 2019, 'B 8324 TYD', 6, 395000, 50000, 'SDFG3534S', 'Spesifikasi-dan-Harga-Mobil-Fortuner-1200x835.jpg', NULL, 'bebas'),
(12, '2023-05-17 19:23:54', 7, 'Pajero Sport', 2019, 'B 8424 DRW', 6, 395000, 50000, 'FSFE3453S', 'cbff9f78-31b8-45e4-9ba3-c246943681db.jpg', NULL, 'bebas'),
(14, '2023-05-20 06:11:31', 20, 'Inovva01', 2019, 'B 7482 HFG', 6, 360000, 50000, 'DFHS2642634F', 'exterior_2L_11.jpg', NULL, 'bebas'),
(16, '2023-05-20 06:14:49', 20, 'Inovva', 2019, 'GRRG6436F', 6, 400000, 50000, 'STT464W', 'exterior_2L_13.jpg', NULL, 'bebas'),
(17, '2023-05-20 06:17:21', 14, 'Jepang', 2018, 'J 2435 HTF', 4, 500000, 50000, 'RGSGR353D', 'honda-civic-turbo-15-e-cvt-hb-hatchback-2019-nik-2018-akhir-52561.jpg', NULL, 'bebas'),
(19, '2023-05-20 06:33:13', 22, 'VR-V', 2020, 'B 2742 JFY', 4, 350000, 50000, 'DGS22352FDF', 'm1fvoevehvyybmqltwus1.jpg', '2023-05-20 06:43:37', 'bebas'),
(20, '2023-05-20 10:52:38', 10, '330i', 2022, 'B 1805 KLM', 4, 800000, 50000, 'thgsrt352763set', 'land_330i__159_0307144711.png', NULL, 'bebas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supir`
--

CREATE TABLE `supir` (
  `idsupir` int(2) NOT NULL,
  `date` datetime DEFAULT NULL,
  `namasupir` varchar(30) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `noktp` varchar(100) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `tarif` int(6) DEFAULT NULL,
  `lembur` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `supir`
--

INSERT INTO `supir` (`idsupir`, `date`, `namasupir`, `tgllahir`, `alamat`, `noktp`, `foto`, `tarif`, `lembur`) VALUES
(1, NULL, 'Wandi', '1980-07-24', 'Pasar Minggu, Jakarta Selatan', '1234455678', '121116140543100465.jpg', 100000, 20000),
(3, NULL, 'Ade Margono', '1981-03-05', 'Jakarta Barat', '456712378', 'foto_pp1.png', 100000, 20000),
(4, '2023-05-17 07:59:22', 'Rizky febri', '1999-07-14', 'jl. jatiasih blok 1', '32534521', 'Gunung_Fotografi_Studio_Sampul_Facebook.png', 100000, 200000),
(5, '2023-05-19 21:20:41', 'Dani', '1999-06-16', 'Jln merpati', '14235214', 'brilogo.jpg', NULL, NULL),
(6, '2023-05-19 21:25:15', 'Wandi', '1995-06-14', 'Jln rawa panjang', '41362123e', 'Logo-Bank-BRI.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` int(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `namapelanggan` varchar(20) DEFAULT NULL,
  `noktp` varchar(20) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `tglsewa` date DEFAULT NULL,
  `tglkembali` date DEFAULT NULL,
  `selisih` int(2) DEFAULT 0,
  `idmobil` int(2) DEFAULT NULL,
  `idsupir` int(2) DEFAULT NULL,
  `total` int(10) DEFAULT 0,
  `sttransaksi` enum('mulai','selesai') DEFAULT 'mulai'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `date`, `namapelanggan`, `noktp`, `nohp`, `alamat`, `tglsewa`, `tglkembali`, `selisih`, `idmobil`, `idsupir`, `total`, `sttransaksi`) VALUES
(1, '2023-05-19 21:02:42', 'Budi Pangestu', '65437890123', '0812345678', 'Depok', '2023-05-17', '2023-05-19', 3, 3, 3, 1350000, 'selesai'),
(2, '2023-05-19 21:14:19', 'Dedi Irawan', '1234455678', '0812345678', 'Jakarta', '2023-06-02', '0000-00-00', 0, 4, 4, 0, 'mulai'),
(3, '2023-05-19 21:14:04', 'Jamal', '584986794039', '08982000969', 'Jakarta', '2023-05-30', '0000-00-00', 0, 3, 1, 0, 'mulai'),
(5, '2023-05-19 21:14:37', 'yanto', '132525246673', '0812446563', 'jl merpati blok 3', '2023-05-15', '2023-05-19', 5, 9, 1, 2200000, 'selesai'),
(6, '2023-05-19 21:15:50', 'Gideon', '2482471240', '0812353523', 'Jl. sudirman ', '2023-05-17', NULL, 0, 7, 1, 0, 'mulai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `iduser` int(2) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `lastlogin` datetime DEFAULT NULL,
  `stuser` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`iduser`, `username`, `password`, `lastlogin`, `stuser`) VALUES
(1, 'administrator', 'admin123', NULL, 1),
(2, 'budi01', 'budi01', '2023-05-20 06:07:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`idmerk`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`idmobil`);

--
-- Indeks untuk tabel `supir`
--
ALTER TABLE `supir`
  ADD PRIMARY KEY (`idsupir`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `merk`
--
ALTER TABLE `merk`
  MODIFY `idmerk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `idmobil` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `supir`
--
ALTER TABLE `supir`
  MODIFY `idsupir` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idtransaksi` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
