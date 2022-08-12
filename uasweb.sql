-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2022 pada 12.25
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uasweb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `keterangan` varchar(500) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `updated_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `kode`, `nama`, `model`, `tgl_masuk`, `jumlah`, `keterangan`, `created_at`, `updated_at`) VALUES
(3, '2015-A-02', 'Keyboard', 'Logitec', '2022-08-06', '200', 'Kurang Baik', '2022-07-13 08:43:22', '2022-07-15 12:24:21'),
(4, '2015-A-59', 'Monitor', 'Samsung', '2022-07-30', '20', 'Baik', '2022-07-15 12:15:17', '2022-07-15 12:15:17'),
(5, '2015-A-59', 'Keyboard', 'Samsung', '2022-07-16', '123', 'Baik', '2022-07-15 13:26:21', '2022-07-15 13:26:21'),
(6, '2015-A-03', 'Mouse', 'Logitec', '2022-07-16', '12', 'Baik', '2022-07-15 22:13:47', '2022-07-15 22:13:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2022-07-09-125832', 'App\\Database\\Migrations\\Pegawai', 'default', 'App', 1657371648, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` enum('pria','wanita') NOT NULL,
  `no_telp` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama`, `jenis_kelamin`, `no_telp`, `email`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'Gangga Arsa Putra 7821', 'pria', '081234555678', 'gangga@gmail.com', 'gianyar', '2022-07-09 08:02:59', '2022-07-15 13:25:25'),
(5, 'Sucipta', 'wanita', '123456789011', 'gangga@gmail.com', 'poltek', '2022-07-12 05:33:32', '2022-07-12 05:33:32'),
(6, 'Sucipta', 'wanita', '123456789011', 'gangga@gmail.com', 'tiuh balak', '2022-07-13 05:51:49', '2022-07-13 05:51:49'),
(7, 'Sucipta', 'wanita', '081234235576', 'gangga@gmail.com', 'anjing', '2022-07-13 05:58:59', '2022-07-13 05:58:59'),
(8, 'Komang', 'pria', '081234235576', 'gangga@gmail.com', 'konoha', '2022-07-13 07:26:33', '2022-07-13 07:26:33'),
(9, 'Sucipta', 'wanita', '123456789011', 'gangga@gmail.com', 'tps', '2022-07-15 13:25:45', '2022-07-15 13:25:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `status` varchar(200) NOT NULL,
  `jumlah` varchar(200) NOT NULL,
  `no_tlp` varchar(12) NOT NULL,
  `created_at` varchar(225) NOT NULL,
  `updated_at` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `peminjaman`
--

INSERT INTO `peminjaman` (`id_peminjaman`, `nama_barang`, `tgl_pinjam`, `tgl_kembali`, `status`, `jumlah`, `no_tlp`, `created_at`, `updated_at`) VALUES
(1, 'Router', '2022-07-01', '2022-07-02', 'Dosen', '50', '123456789121', '', '2022-07-16 00:48:46'),
(2, 'Proyektor', '2022-07-16', '2022-07-16', 'Mahasiswa ', '12', '098767898765', '2022-07-15 23:47:14', '2022-07-15 23:47:14'),
(3, 'Proyektor', '2022-07-20', '2022-07-29', 'Dosen', '123', '098767898765', '2022-07-16 01:37:12', '2022-07-16 01:37:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(225) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`) VALUES
(10, 'gang', '25d55ad283aa400af464c76d713c07ad', 1),
(12, 'win', '6eea9b7ef19179a06954edd0f6c05ceb', 2),
(14, 'user', 'b5b73fae0d87d8b4e2573105f8fbe7bc', 2),
(15, 'admin', '0192023a7bbd73250516f069df18b500', 1),
(28, 'made', 'f5bb0c8de146c67b44babbf4e6584cc0', 2),
(34, 'pki', '25d55ad283aa400af464c76d713c07ad', 2),
(35, 'malam', '067776df9b9d69fb0c021b232a1fcc5b', 2),
(36, 'gangga', '25d55ad283aa400af464c76d713c07ad', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
