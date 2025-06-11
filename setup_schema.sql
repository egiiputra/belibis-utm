--
-- Table structure for table `essay_detail`
--

CREATE TABLE `essay_detail` (
  `id_essay_detail` int(11) NOT NULL,
  `kode_ujian` varchar(255) NOT NULL,
  `nama_soal` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `essay_siswa`
--

CREATE TABLE `essay_siswa` (
  `id_essay_siswa` int(11) NOT NULL,
  `id_essay_detail` int(11) NOT NULL,
  `kode_ujian` varchar(255) NOT NULL,
  `siswa` int(11) NOT NULL,
  `jawaban` longtext NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `essay_waktu_siswa`
--

CREATE TABLE `essay_waktu_siswa` (
  `id_essay_waktu_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(255) NOT NULL,
  `siswa` varchar(255) NOT NULL,
  `waktu_berakhir` varchar(255) NOT NULL,
  `selesai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `file_stream`
--

CREATE TABLE `file_stream` (
  `id` int(11) NOT NULL,
  `kode_stream` varchar(128) NOT NULL,
  `nama_file` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `kode_kelas` varchar(255) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `email_user` varchar(128) NOT NULL,
  `nama_kelas` varchar(128) NOT NULL,
  `mapel` varchar(128) NOT NULL,
  `gambar_user` varchar(255) NOT NULL,
  `bg_class` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


--
-- Table structure for table `komen_material`
--

CREATE TABLE `komen_material` (
  `id_komen` int(11) NOT NULL,
  `kode_materi` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `isi_komen` longtext DEFAULT NULL,
  `date_send` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `komen_stream`
--

CREATE TABLE `komen_stream` (
  `id_komen_stream` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `stream` varchar(128) NOT NULL,
  `nama_stream` varchar(128) NOT NULL,
  `email_stream` varchar(128) NOT NULL,
  `gambar_stream` varchar(128) NOT NULL,
  `isi_komen` longtext DEFAULT NULL,
  `date_send` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `komen_tugas`
--

CREATE TABLE `komen_tugas` (
  `id_komen` int(11) NOT NULL,
  `kode_tugas` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `isi_komen` longtext DEFAULT NULL,
  `date_send` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `materi_kode` varchar(128) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `date_created` int(11) NOT NULL,
  `date_updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `pg_detail`
--

CREATE TABLE `pg_detail` (
  `id_pg_detail` int(11) NOT NULL,
  `kode_ujian` varchar(255) NOT NULL,
  `soal` longtext DEFAULT NULL,
  `pg_a` varchar(255) DEFAULT NULL,
  `pg_b` varchar(255) DEFAULT NULL,
  `pg_c` varchar(255) DEFAULT NULL,
  `pg_d` varchar(255) DEFAULT NULL,
  `pg_e` varchar(255) DEFAULT NULL,
  `jawaban` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `pg_siswa`
--

CREATE TABLE `pg_siswa` (
  `id_pg_siswa` int(11) NOT NULL,
  `id_pg_detail` int(11) NOT NULL,
  `kode_ujian` varchar(255) NOT NULL,
  `siswa` int(11) NOT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `benar` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `pg_waktu_siswa`
--

CREATE TABLE `pg_waktu_siswa` (
  `id_pg_waktu_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(255) NOT NULL,
  `siswa` varchar(255) NOT NULL,
  `waktu_berakhir` varchar(255) NOT NULL,
  `selesai` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id_settings` int(11) NOT NULL,
  `smtp_host` varchar(255) NOT NULL,
  `smtp_user` varchar(255) NOT NULL,
  `smtp_password` varchar(255) NOT NULL,
  `smtp_port` int(11) NOT NULL,
  `smtp_crypto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `stream`
--

CREATE TABLE `stream` (
  `id_stream` int(11) NOT NULL,
  `stream_kode` varchar(255) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nama_user` varchar(128) NOT NULL,
  `gambar` varchar(128) NOT NULL,
  `text_stream` longtext DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `tugas`
--

CREATE TABLE `tugas` (
  `id_tugas` int(11) NOT NULL,
  `kode_tugas` varchar(128) NOT NULL,
  `kelas_kode` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `date_created` int(11) NOT NULL,
  `due_date` varchar(255) NOT NULL,
  `date_updated` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `ujian`
--

CREATE TABLE `ujian` (
  `id_ujian` int(11) NOT NULL,
  `kode_ujian` varchar(255) NOT NULL,
  `kode_kelas` varchar(255) NOT NULL,
  `nama_ujian` varchar(255) NOT NULL,
  `tanggal_dibuat` int(11) NOT NULL,
  `waktu_jam` int(11) NOT NULL,
  `waktu_menit` int(11) NOT NULL,
  `jenis_ujian` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `no_regis` int(11) NOT NULL,
  `nama` varchar(123) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `role_id` int(1) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `user_kelas`
--

CREATE TABLE `user_kelas` (
  `id_user_kelas` int(11) NOT NULL,
  `kelas_kode` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `role` varchar(20) DEFAULT 'pelajar'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Table structure for table `user_tugas`
--

CREATE TABLE `user_tugas` (
  `id_user_tugas` int(11) NOT NULL,
  `kode_user_tugas` varchar(128) NOT NULL,
  `kode_tugas` varchar(128) NOT NULL,
  `kode_kelas` varchar(128) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `teks` longtext DEFAULT NULL,
  `date_send` int(11) NOT NULL,
  `is_late` int(1) NOT NULL,
  `grade` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for table `essay_detail`
--
ALTER TABLE `essay_detail`
  ADD PRIMARY KEY (`id_essay_detail`);

--
-- Indexes for table `essay_siswa`
--
ALTER TABLE `essay_siswa`
  ADD PRIMARY KEY (`id_essay_siswa`);

--
-- Indexes for table `essay_waktu_siswa`
--
ALTER TABLE `essay_waktu_siswa`
  ADD PRIMARY KEY (`id_essay_waktu_siswa`);

--
-- Indexes for table `file_stream`
--
ALTER TABLE `file_stream`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `komen_material`
--
ALTER TABLE `komen_material`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indexes for table `komen_stream`
--
ALTER TABLE `komen_stream`
  ADD PRIMARY KEY (`id_komen_stream`);

--
-- Indexes for table `komen_tugas`
--
ALTER TABLE `komen_tugas`
  ADD PRIMARY KEY (`id_komen`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `pg_detail`
--
ALTER TABLE `pg_detail`
  ADD PRIMARY KEY (`id_pg_detail`);

--
-- Indexes for table `pg_siswa`
--
ALTER TABLE `pg_siswa`
  ADD PRIMARY KEY (`id_pg_siswa`);

--
-- Indexes for table `pg_waktu_siswa`
--
ALTER TABLE `pg_waktu_siswa`
  ADD PRIMARY KEY (`id_pg_waktu_siswa`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id_settings`);

--
-- Indexes for table `stream`
--
ALTER TABLE `stream`
  ADD PRIMARY KEY (`id_stream`);

--
-- Indexes for table `tugas`
--
ALTER TABLE `tugas`
  ADD PRIMARY KEY (`id_tugas`);

--
-- Indexes for table `ujian`
--
ALTER TABLE `ujian`
  ADD PRIMARY KEY (`id_ujian`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `user_kelas`
--
ALTER TABLE `user_kelas`
  ADD PRIMARY KEY (`id_user_kelas`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_tugas`
--
ALTER TABLE `user_tugas`
  ADD PRIMARY KEY (`id_user_tugas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `essay_detail`
--
ALTER TABLE `essay_detail`
  MODIFY `id_essay_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essay_siswa`
--
ALTER TABLE `essay_siswa`
  MODIFY `id_essay_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essay_waktu_siswa`
--
ALTER TABLE `essay_waktu_siswa`
  MODIFY `id_essay_waktu_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_stream`
--
ALTER TABLE `file_stream`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `komen_material`
--
ALTER TABLE `komen_material`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `komen_stream`
--
ALTER TABLE `komen_stream`
  MODIFY `id_komen_stream` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `komen_tugas`
--
ALTER TABLE `komen_tugas`
  MODIFY `id_komen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pg_detail`
--
ALTER TABLE `pg_detail`
  MODIFY `id_pg_detail` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pg_siswa`
--
ALTER TABLE `pg_siswa`
  MODIFY `id_pg_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pg_waktu_siswa`
--
ALTER TABLE `pg_waktu_siswa`
  MODIFY `id_pg_waktu_siswa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id_settings` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stream`
--
ALTER TABLE `stream`
  MODIFY `id_stream` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tugas`
--
ALTER TABLE `tugas`
  MODIFY `id_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ujian`
--
ALTER TABLE `ujian`
  MODIFY `id_ujian` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_kelas`
--
ALTER TABLE `user_kelas`
  MODIFY `id_user_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user_tugas`
--
ALTER TABLE `user_tugas`
  MODIFY `id_user_tugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
