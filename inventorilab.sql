-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Feb 2026 pada 01.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventorilab`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(20) NOT NULL,
  `namaBarang` varchar(50) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Sumber` varchar(30) NOT NULL,
  `kondisi` enum('Baik','Kurang Baik','Rusak Berat','') NOT NULL,
  `jumlah` int(15) NOT NULL,
  `id_ruang` varchar(12) NOT NULL,
  `keterangan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id_barang`, `namaBarang`, `Model`, `Sumber`, `kondisi`, `jumlah`, `id_ruang`, `keterangan`) VALUES
('1.1.7.01.03.06.007', 'Kartu Memori', 'DDR4', 'BOPD', 'Baik', 3, 'R001', '-'),
('1.1.7.01.03.06.010', 'Mouse', 'AXIOO', 'BOPD', 'Baik', 3, 'R002', '-'),
('1.3.2.05.01.04.003', 'Rak Besi', 'NAPOLI', 'BOPD', 'Baik', 1, 'R004', '-');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kodebarang`
--

CREATE TABLE `kodebarang` (
  `id_barang` varchar(20) NOT NULL,
  `namaBarang` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kodebarang`
--

INSERT INTO `kodebarang` (`id_barang`, `namaBarang`) VALUES
('1.1.7.01.03.06.007', 'Kartu Memori'),
('1.1.7.01.03.06.009', 'Hard Disk Internal'),
('1.1.7.01.03.06.010', 'Mouse'),
('1.1.7.01.03.07.001', 'Sapu Dan Sikat'),
('1.1.7.01.03.07.002', 'Alat-Alat Pel Dan Lap'),
('1.1.7.01.03.07.003', 'Ember, Slang, Dan Tempat Air Lainnya'),
('1.1.7.01.03.07.004', 'Keset Dan Tempat Sampah'),
('1.3.2.03.02.05.001', 'Tool Kit Set'),
('1.3.2.03.02.05.002', 'Tool Kit Box'),
('1.3.2.03.02.05.018', 'Toolkit Pemeliharaan'),
('1.3.2.05.01.04.003', 'Rak Besi'),
('1.3.2.05.01.04.005', 'Filing Cabinet Besi'),
('1.3.2.05.01.05.002', 'CCTV - Camera Control Television System'),
('1.3.2.05.01.05.043', 'LCD Projector/Infocus'),
('1.3.2.05.02.01.002', 'Meja Kerja Kayu'),
('1.3.2.05.02.01.004', 'Kursi Kayu'),
('1.3.2.05.02.01.017', 'Meja Panjang'),
('1.3.2.05.02.01.029', 'Kursi Fiber Glas/Plastik'),
('1.3.2.05.02.01.031', 'Kursi Tamu'),
('1.3.2.05.02.01.032', 'Kursi Putar'),
('1.3.2.05.02.01.036', 'Kursi Lipat'),
('1.3.2.05.02.04.002', 'A.C. Sentral'),
('1.3.2.05.02.06.028', 'Lambang Garuda Pancasila'),
('1.3.2.05.02.06.029', 'Gambar Presiden/Wakil Presiden'),
('1.3.2.05.02.06.037', 'Kaca Hias'),
('1.3.2.05.02.07.001', 'Alat Pemadam/Portable'),
('1.3.2.08.04.05.021', 'LAIN - LAIN SYSTEM/POWER SUPPLY'),
('1.3.2.08.08.07.019', 'Complete Set Of Handtools'),
('1.3.2.10.01.02.', 'PERSONAL KOMPUTER'),
('1.3.2.10.02.03.001', 'CPU (Peralatan Personal Komputer)'),
('1.3.2.10.02.03.002', 'Monitor'),
('1.3.2.10.02.04.023', 'Wireless Access Point'),
('1.3.2.10.02.04.024', 'Switch'),
('1.3.2.10.02.04.026', 'Acces Point');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi_barang`
--

CREATE TABLE `mutasi_barang` (
  `id_mutasi` varchar(20) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `namaBarang` varchar(50) NOT NULL,
  `asal_ruang` varchar(15) NOT NULL,
  `tujuan_ruang` varchar(15) NOT NULL,
  `tgl_mutasi` date NOT NULL,
  `jumlah` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mutasi_barang`
--

INSERT INTO `mutasi_barang` (`id_mutasi`, `id_barang`, `namaBarang`, `asal_ruang`, `tujuan_ruang`, `tgl_mutasi`, `jumlah`) VALUES
('M001', '1.1.7.01.03.06.010', 'Mouse', 'Ruang 2', 'Ruang 1', '2025-11-13', 2),
('M002', '1.1.7.01.03.06.007', 'Kartu Memori', 'Ruang 1', 'Ruang 2', '2025-11-21', 2),
('M003', '1.1.7.01.03.06.010', 'Mouse', 'Ruang 2', 'Ruang 4', '2025-11-21', 2),
('m004', '1.1.7.01.03.06.007', 'Kartu Memori', 'Ruang 1', 'Ruang 2', '2025-11-06', 1),
('M005', '1.1.7.01.03.06.010', 'Mouse', 'Ruang 2', 'Ruang 4', '2025-11-07', 1),
('M006', '1.1.7.01.03.06.007', 'Kartu Memori', 'Ruang 1', 'Ruang 6', '2026-02-03', 1),
('M007', '1.3.2.05.01.04.003', 'Rak Besi', 'Ruang 1', 'Ruang 6', '2026-02-04', 1);

--
-- Trigger `mutasi_barang`
--
DELIMITER $$
CREATE TRIGGER `trg_kurangi_jumlah_mutasi` AFTER INSERT ON `mutasi_barang` FOR EACH ROW BEGIN
    UPDATE barang 
    SET jumlah = jumlah - NEW.jumlah
    WHERE id_barang = NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruang`
--

CREATE TABLE `ruang` (
  `id_ruang` varchar(12) NOT NULL,
  `namaRuang` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `ruang`
--

INSERT INTO `ruang` (`id_ruang`, `namaRuang`) VALUES
('R001', 'Lab PPLG 1'),
('R002', 'Lab PPLG 2'),
('R003', 'Lab PPLG 3'),
('R004', 'Ruang Kaprog'),
('R005', 'Ruang Pertemuan'),
('R006', 'Ruang TEFA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(8) NOT NULL,
  `nama` varchar(15) NOT NULL,
  `userName` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` enum('admin','laboran','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `userName`, `password`, `role`) VALUES
(1, 'Arya', 'Admin', '202cb962ac59075b964b07152d234b70', 'admin'),
(2, 'Permadi', 'Laboran', '202cb962ac59075b964b07152d234b70', 'laboran'),
(3, 'arya', 'yuuzan', '202cb962ac59075b964b07152d234b70', 'laboran'),
(4, 'arya', 'xydut', '202cb962ac59075b964b07152d234b70', 'admin'),
(5, 'ogi', 'ogi', '202cb962ac59075b964b07152d234b70', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD UNIQUE KEY `id_ruang` (`id_ruang`) USING BTREE,
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `kodebarang`
--
ALTER TABLE `kodebarang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `mutasi_barang`
--
ALTER TABLE `mutasi_barang`
  ADD KEY `id_barang` (`id_barang`);

--
-- Indeks untuk tabel `ruang`
--
ALTER TABLE `ruang`
  ADD PRIMARY KEY (`id_ruang`);

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
  MODIFY `id_user` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `kodebarang` (`id_barang`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`id_ruang`) REFERENCES `ruang` (`id_ruang`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
