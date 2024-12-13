-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2024 pada 05.09
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
-- Database: `raport_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ekstrakurikuler`
--

CREATE TABLE `ekstrakurikuler` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nilai` enum('A','B','C','D') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ekstrakurikuler`
--

INSERT INTO `ekstrakurikuler` (`id`, `siswa_id`, `nama`, `nilai`) VALUES
(25, 3, 'Badminton', 'A'),
(26, 3, 'Karate', 'A'),
(27, 1, 'Voli', 'A'),
(28, 1, 'tinju', 'A'),
(31, 2, 'Renang', 'A'),
(32, 2, 'futsal', 'B'),
(36, 7, 'Voli', 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `feedback`
--

INSERT INTO `feedback` (`id`, `nama`, `email`, `pesan`, `created_at`) VALUES
(1, 'Dana', 'naufalsyanda@gmail.com', 'Kembangkan lagi agar lebih keren', '2024-12-08 02:01:17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ketidakhadiran`
--

CREATE TABLE `ketidakhadiran` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `sakit` int(11) DEFAULT NULL,
  `izin` int(11) DEFAULT NULL,
  `tanpa_keterangan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ketidakhadiran`
--

INSERT INTO `ketidakhadiran` (`id`, `siswa_id`, `sakit`, `izin`, `tanpa_keterangan`) VALUES
(1, 1, 2, 3, 0),
(2, 2, 3, 2, 4),
(3, 3, 0, 0, 0),
(5, 7, 6, 9, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_project`
--

CREATE TABLE `laporan_project` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `kemampuan_kolaborasi` enum('Sangat Baik','Baik','Cukup','Perlu Perbaikan') DEFAULT NULL,
  `bernalar_kritis` enum('Sangat Baik','Baik','Cukup','Perlu Perbaikan') DEFAULT NULL,
  `kreativitas` enum('Sangat Baik','Baik','Cukup','Perlu Perbaikan') DEFAULT NULL,
  `kemandirian` enum('Sangat Baik','Baik','Cukup','Perlu Perbaikan') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `laporan_project`
--

INSERT INTO `laporan_project` (`id`, `siswa_id`, `kemampuan_kolaborasi`, `bernalar_kritis`, `kreativitas`, `kemandirian`) VALUES
(1, 1, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik'),
(2, 2, 'Sangat Baik', 'Sangat Baik', 'Baik', 'Sangat Baik'),
(3, 3, 'Baik', 'Baik', 'Baik', 'Sangat Baik'),
(5, 7, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'Sangat Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_akademik`
--

CREATE TABLE `nilai_akademik` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `matematika` int(11) DEFAULT NULL,
  `bahasa_indonesia` int(11) DEFAULT NULL,
  `bahasa_inggris` int(11) DEFAULT NULL,
  `ppkn` int(11) DEFAULT NULL,
  `pendidikan_agama` int(11) DEFAULT NULL,
  `pendidikan_jasmani` int(11) DEFAULT NULL,
  `ipas` int(11) DEFAULT NULL,
  `bahasa_sunda` int(11) DEFAULT NULL,
  `seni_musik` int(11) DEFAULT NULL,
  `sejarah` int(11) DEFAULT NULL,
  `bahasa_jepang` int(11) DEFAULT NULL,
  `informatika` int(11) DEFAULT NULL,
  `mata_pelajaran_pilihan` int(11) DEFAULT NULL,
  `pkk` int(11) DEFAULT NULL,
  `bimbingan_konseling` int(11) DEFAULT NULL,
  `produktif` int(11) DEFAULT NULL,
  `fase` varchar(20) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `tahun_pelajaran` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nilai_akademik`
--

INSERT INTO `nilai_akademik` (`id`, `siswa_id`, `matematika`, `bahasa_indonesia`, `bahasa_inggris`, `ppkn`, `pendidikan_agama`, `pendidikan_jasmani`, `ipas`, `bahasa_sunda`, `seni_musik`, `sejarah`, `bahasa_jepang`, `informatika`, `mata_pelajaran_pilihan`, `pkk`, `bimbingan_konseling`, `produktif`, `fase`, `semester`, `tahun_pelajaran`) VALUES
(1, 1, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 'kesatu', 'Ganjil', '2023-2024'),
(2, 2, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 'kesatu', 'Ganjil', '2023-2024'),
(3, 3, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, '1', 'Ganjil', '2023-2024'),
(5, 7, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 100, 'satu', 'Ganjil', '2023-2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang_tua`
--

CREATE TABLE `orang_tua` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `nama_ayah` varchar(100) DEFAULT NULL,
  `nama_ibu` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `pekerjaan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orang_tua`
--

INSERT INTO `orang_tua` (`id`, `siswa_id`, `nama_ayah`, `nama_ibu`, `alamat`, `nomor_telepon`, `pekerjaan_ayah`, `pekerjaan_ibu`) VALUES
(1, 1, 'pahmi', 'kiran', 'KC. Andir', '09875456789', 'PNS', 'PNS'),
(2, 2, 'gifar', 'ima', 'Jakarta', '78789889897', 'PNS', 'ibu rumah tangga'),
(3, 3, 'pppppp', 'yyyyyyy', 'Kp Astaraja', '0304032323', 'Pegawai', 'IRT'),
(5, 7, 'ppp', 'ppp', 'soreang', '99999999999999', 'PNS', 'ibu rumah tangga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkembangan_karakter`
--

CREATE TABLE `perkembangan_karakter` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `beriman_bertakwa` enum('Sangat Baik','Baik','Cukup','Perlu Perbaikan') DEFAULT NULL,
  `berkebinekaan_global` enum('Sangat Baik','Baik','Cukup','Perlu Perbaikan') DEFAULT NULL,
  `bernalar_kritis` enum('Sangat Baik','Baik','Cukup','Perlu Perbaikan') DEFAULT NULL,
  `catatan_proses` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `perkembangan_karakter`
--

INSERT INTO `perkembangan_karakter` (`id`, `siswa_id`, `beriman_bertakwa`, `berkebinekaan_global`, `bernalar_kritis`, `catatan_proses`) VALUES
(1, 1, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'mantap'),
(2, 2, 'Baik', 'Cukup', 'Sangat Baik', 'Penyanyi handal'),
(3, 3, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'Nanda sangat baik dalam segalanya'),
(5, 7, 'Sangat Baik', 'Sangat Baik', 'Sangat Baik', 'mantap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `saran_pengaduan`
--

CREATE TABLE `saran_pengaduan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal_submit` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `saran_pengaduan`
--

INSERT INTO `saran_pengaduan` (`id`, `nama`, `email`, `pesan`, `tanggal_submit`) VALUES
(1, 'Dana', 'naufalsyanda@gmail.com', 'Tingkatkan lagi Agar lebih keren', '2024-12-08 02:06:49'),
(2, 'Tulus', 'tulusganteng@gmail.com', 'Ini Sudah Sangat keren Tingkatkannn!!!', '2024-12-08 02:11:53'),
(3, 'Acef', 'Acef@gmail.com', 'keren banget ', '2024-12-08 23:49:57'),
(4, 'gilang ', 'g@gmail.com', 'ppp', '2024-12-12 07:19:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `status_keluarga` varchar(50) DEFAULT NULL,
  `anak_ke` int(11) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `asal_sekolah` varchar(100) DEFAULT NULL,
  `diterima_di_kelas` varchar(20) DEFAULT NULL,
  `tanggal_diterima` date DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `user_id`, `nama`, `nis`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `agama`, `status_keluarga`, `anak_ke`, `alamat`, `nomor_telepon`, `asal_sekolah`, `diterima_di_kelas`, `tanggal_diterima`, `foto`) VALUES
(1, 2, 'Dana', '12345', 'Bandung ', '2008-03-06', 'Laki-laki', 'Islam', 'Anak Kandung', 2, 'Soreang', '081222799830', 'SMPN 1 Margahayu', 'X RPL 1', '2024-12-07', 'uploads/675638487ed45_376625664_340247948426959_6169301217989367190_n.jpg'),
(2, 3, 'Tulus', '000000', 'Jakarta', '2007-12-10', 'Laki-laki', 'Islam', 'Anak Kandung', 1, 'Banjaran', '085157420086', 'SMPN 1 Jakarta', 'X RPL 2', '2024-12-07', 'uploads/675639a861d20_download (1).jpg'),
(3, 4, 'Nanda', '101010', 'Bandung', '2024-12-09', 'Laki-laki', 'Islam', 'Anak Kandung', 2, 'Kp Astaraja', '0839393344', 'SMPN 2 Banjaran', 'X RPL 1', '2024-12-09', NULL),
(7, 5, 'rajen', '999999', 'Bandung ', '2024-12-12', 'Laki-laki', 'Islam', 'Anak Kandung', 1, 'jalan jalan\r\n', '0000000000000', 'SMPN 1 ma', 'X RPL 2', '2024-12-12', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('siswa','guru','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'Syandana', '$2y$10$Sr5qZbDhTq4WGtGDPv81juB/XTfQzGABvXrnn9edh4f4lYNgfRB/W', 'guru'),
(2, 'Dana', '$2y$10$mM64Dx/KGOwOTlH2sWOTi.uCIG118vQiZhAhEjgnNONrs7zg9RHsq', 'siswa'),
(3, 'Tulus', '$2y$10$MYB7E0L5PKc6pddMK4GVtOEEGcII2WSmqnkJou8bKP.8bcGH.PGpW', 'siswa'),
(4, 'Nanda', '$2y$10$osJSrqLKMq9FFi7aqVkrJOR6E0PKMlSaFf61thmPkoDxZdpdJ7y5m', 'siswa'),
(5, 'Rajendra V.Z', '$2y$10$p6dYBN0o3pjkhTBxAmI3EeB.OCubYW8RriaoneyiwS/89.tRhZbsC', 'siswa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali`
--

CREATE TABLE `wali` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `pekerjaan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `wali`
--

INSERT INTO `wali` (`id`, `siswa_id`, `nama`, `alamat`, `nomor_telepon`, `pekerjaan`) VALUES
(1, 1, '-', '-', '-', '-'),
(2, 2, '-', '-', '-', '-'),
(3, 3, '-', '-\r\n', '-', '-'),
(5, 7, '-', '-', '-', '-');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `laporan_project`
--
ALTER TABLE `laporan_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `nilai_akademik`
--
ALTER TABLE `nilai_akademik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `perkembangan_karakter`
--
ALTER TABLE `perkembangan_karakter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indeks untuk tabel `saran_pengaduan`
--
ALTER TABLE `saran_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `wali`
--
ALTER TABLE `wali`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `laporan_project`
--
ALTER TABLE `laporan_project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `nilai_akademik`
--
ALTER TABLE `nilai_akademik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `perkembangan_karakter`
--
ALTER TABLE `perkembangan_karakter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `saran_pengaduan`
--
ALTER TABLE `saran_pengaduan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `wali`
--
ALTER TABLE `wali`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ekstrakurikuler`
--
ALTER TABLE `ekstrakurikuler`
  ADD CONSTRAINT `ekstrakurikuler_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `ketidakhadiran`
--
ALTER TABLE `ketidakhadiran`
  ADD CONSTRAINT `ketidakhadiran_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `laporan_project`
--
ALTER TABLE `laporan_project`
  ADD CONSTRAINT `laporan_project_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `nilai_akademik`
--
ALTER TABLE `nilai_akademik`
  ADD CONSTRAINT `nilai_akademik_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `orang_tua`
--
ALTER TABLE `orang_tua`
  ADD CONSTRAINT `orang_tua_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `perkembangan_karakter`
--
ALTER TABLE `perkembangan_karakter`
  ADD CONSTRAINT `perkembangan_karakter_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `wali`
--
ALTER TABLE `wali`
  ADD CONSTRAINT `wali_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
