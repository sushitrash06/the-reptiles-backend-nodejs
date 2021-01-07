-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Jan 2021 pada 09.57
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `the-reptiles`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjangs`
--

CREATE TABLE `keranjangs` (
  `id_keranjang` int(11) NOT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `Nama_Produk` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Nama_toko` varchar(255) DEFAULT NULL,
  `Deskripsi` varchar(255) DEFAULT NULL,
  `status_keranjang` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanans`
--

CREATE TABLE `pesanans` (
  `id_pesanan` int(11) NOT NULL,
  `Tgl_order` datetime DEFAULT NULL,
  `Nama_pengguna` text NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `Username` text NOT NULL,
  `pesanan` text NOT NULL,
  `Nama_toko` text DEFAULT NULL,
  `Price` int(11) NOT NULL,
  `Total_bayar` int(11) DEFAULT NULL,
  `jumlah_pesanan` int(11) DEFAULT NULL,
  `Alamat_kirim` text DEFAULT NULL,
  `Nomer_hp` int(11) NOT NULL,
  `Catatan` text DEFAULT NULL,
  `Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produks`
--

CREATE TABLE `produks` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `Username` text NOT NULL,
  `Nama_toko` varchar(255) DEFAULT NULL,
  `Nama_Produk` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `Deskripsi` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Jumlah_stock` int(11) DEFAULT NULL,
  `StatusBarang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produks`
--

INSERT INTO `produks` (`id_produk`, `id_user`, `Username`, `Nama_toko`, `Nama_Produk`, `image`, `Deskripsi`, `Price`, `Jumlah_stock`, `StatusBarang`) VALUES
(0, 3, 'gerald_gerald', 'Reptile Unyu', 'Bearded Dragon', 'afe259e9fe3cb9ace6a30872390331f1.webp', 'Bearded Dragon kecil', 700000, 1, 'aman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `Nama_pengguna` text DEFAULT NULL,
  `Nama_toko` text DEFAULT NULL,
  `Username` text DEFAULT NULL,
  `Password` text DEFAULT NULL,
  `Alamat` text NOT NULL,
  `Kota` text NOT NULL,
  `Roles` text NOT NULL,
  `Foto` varchar(255) DEFAULT NULL,
  `created` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `Nama_pengguna`, `Nama_toko`, `Username`, `Password`, `Alamat`, `Kota`, `Roles`, `Foto`, `created`) VALUES
(1, NULL, 'Ular Shop', 'hade_shoppu', '$2b$10$upINIrhNxhtjmXp.MtzPTuVdvoexVRPtZ0jaYhaKhcOSSfugv1DgO', '', 'Bandung', 'Penjual', 'f51ec17787c11284c2ad7b46f20163eb.png', '2020-12-24 20:32:35'),
(2, 'Mincot Ala ala', 'Shoppu', 'Ular_miggos', '$2b$10$UGwtfEUNW8M1kbQXTqrdg.ZzoRMn3XXDAMs7SBQp8fE0phJKvRW/y', 'Jalan Cibatu tensei', 'Jakarta', 'Penjual', '0521f9515e6fdced026396de433ab829.png', '2020-12-24 20:38:23'),
(3, 'geraldine', 'Reptile Unyu', 'gerald_gerald', '$2b$10$/kV2Of168BxXlNI1RXxtFeB4.BLnqckPfnAAwa7MUM1vkMY9tbGv2', 'Bekasi', 'Jakarta', 'Penjual', '7c78adb2e94645219a10acdab341b012.png', '2020-12-26 06:59:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
