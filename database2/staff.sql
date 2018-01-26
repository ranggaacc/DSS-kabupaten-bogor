-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2017 at 02:54 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mppl`
--

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(25) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `divisi` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `gaji` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `nama`, `alamat`, `email`, `telp`, `divisi`, `jabatan`, `gaji`) VALUES
(1, 'Achmad Ismail Rivaldi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16880', 'valldyarco@gmail.com', '81290963062', 'kependudukan dan pencatatan', 'Pembina Utama', 15000000),
(2, 'Adam Firdaus', 'Jalan Babakan Tengah No.27 Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16881', 'adam.firdauz22@gmail.com', '89643730412', 'pendapatan daerah', 'Pembina UtamaMadya', 8000000),
(3, 'Adi Rizka', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16882', 'email@adirizka7.us', '81260507323', 'ketenagakerjaan sosial', 'Pembina Utama Muda', 6000000),
(4, 'Adis Mutiara Syafitri', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16883', 'adismutiara@yahoo.com', '83823925895', 'Hubungan Masyarakat', 'Pembina Tingkat I', 5000000),
(5, 'Agil Cahyo Priyantono', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16884', 'surazorklif@gmail.com', '81286240604', 'perizinan', 'Pembina', 4000000),
(6, 'Ahmad Syauqi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16885', 'okimonoki@rocketmail.com', '81310022906', 'kesehatan', 'Pembina Utama', 15000000),
(7, 'Ainil Fitri', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16886', '56afitri@gmail.com', '81511316050', 'kependudukan dan pencatatan', 'Pembina UtamaMadya', 8000000),
(8, 'Alif Ahmad Zulfikar', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16887', 'ahmadzulfikaralif@yahoo.c', '81288270014', 'pendapatan daerah', 'Pembina Utama Muda', 6000000),
(9, 'Alvin Afandi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16888', 'alvinafandi80@gmail.com', '8972959255', 'ketenagakerjaan sosial', 'Pembina Tingkat I', 5000000),
(10, 'Andhika Kartika Rahayu', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16889', 'ankarayu@gmail.com', '81293596010', 'Hubungan Masyarakat', 'Pembina', 4000000),
(11, 'Angga Yudhatama Dewa', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16890', 'angga.yudhatamadewa@yahoo', '85776249599', 'perizinan', 'Pembina Utama', 15000000),
(12, 'Ardi Sinduwinarta', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16891', 'sindu.winarta@gmail.com', '8978153722', 'kesehatan', 'Pembina UtamaMadya', 8000000),
(13, 'Arga Putra Panatagama', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16892', 'arga.putra.panatagama@gma', '85719558497', 'kependudukan dan pencatatan', 'Pembina Utama Muda', 6000000),
(14, 'Ariel', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16893', 'arielmalada@outlook.com', '85778823079', 'pendapatan daerah', 'Pembina Tingkat I', 5000000),
(15, 'Azman Fatahillah', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16894', 'azman.fatahillah1@gmail.c', '89692001633', 'ketenagakerjaan sosial', 'Pembina', 4000000),
(16, 'Bayu Yashadana', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16895', 'yashadana.bayu@gmail.com', '87887656292', 'Hubungan Masyarakat', 'Pembina Utama', 15000000),
(17, 'Bella Kurnia', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16896', 'bellakurnia27@yahoo.co.id', '89668941538', 'perizinan', 'Pembina UtamaMadya', 8000000),
(18, 'Danang Wahyu', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16897', 'danang.wahyu@gmail.com', '81329894692', 'kesehatan', 'Pembina Utama Muda', 6000000),
(19, 'Devy Apriansyah', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16898', 'devyapriansyah@gmail.com', '85883325343', 'kependudukan dan pencatatan', 'Pembina Tingkat I', 5000000),
(20, 'Dila Novia Rizki Sujiyono', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16899', 'dilanoviaa@gmail.com', '82276418876', 'pendapatan daerah', 'Pembina', 4000000),
(21, 'Fahira Anindita Hanoum', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16900', 'fanindita20@gmail.com', '85722055585', 'ketenagakerjaan sosial', 'Pembina Utama', 15000000),
(22, 'Faishal Hanin', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16901', 'haninfaishal13@gmail.com', '85743968984', 'Hubungan Masyarakat', 'Pembina UtamaMadya', 8000000),
(23, 'Faiz Muchazmi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16902', 'faizmuchazmi@gmail.com', '87808149164', 'perizinan', 'Pembina Utama Muda', 6000000),
(24, 'Fajar Maulana', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16903', 'of.maulana@gmail.com', '83811521832', 'kesehatan', 'Pembina Tingkat I', 5000000),
(25, 'Fajar Tri Anggara', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16904', 'fajartrianggara1@gmail.co', '85747828700', 'kependudukan dan pencatatan', 'Pembina', 4000000),
(26, 'Falahudin Halim Shariski', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16905', 'falahudin6@gmail.com', '85606098762', 'pendapatan daerah', 'Pembina Utama', 15000000),
(27, 'Farah Ghita', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16906', 'farahghita@ymail.com', '83899630308', 'ketenagakerjaan sosial', 'Pembina UtamaMadya', 8000000),
(28, 'Fauki Rijatul H', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16907', 'sultanbumi4@gmail.com', '82342620805', 'Hubungan Masyarakat', 'Pembina Utama Muda', 6000000),
(29, 'Firgiawan Saktyo Wibowo', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16908', 'firgiawansaktyo@yahoo.com', '8977704104', 'perizinan', 'Pembina Tingkat I', 5000000),
(30, 'Gabriel Muhammad Raharjan', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16909', 'rielraharj@gmail.com', '87880760903', 'kesehatan', 'Pembina', 4000000),
(31, 'Hafidlotul Fatimah Ahmad', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16910', 'haefaalhafidz@gmail.com', '8567224612', 'kependudukan dan pencatatan', 'Pembina Utama', 15000000),
(32, 'Hafidzuddin Kautsar Fahmi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16911', 'hafidzuddinkf@yahoo.com', '82310631041', 'pendapatan daerah', 'Pembina UtamaMadya', 8000000),
(33, 'Henry Lamsihar', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16912', 'henry9222@gmail.com', '85712510497', 'ketenagakerjaan sosial', 'Pembina Utama Muda', 6000000),
(34, 'Ihda Aini Fatkhiah', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16913', 'ainiihda@gmail.com', '85712444713', 'Hubungan Masyarakat', 'Pembina Tingkat I', 5000000),
(35, 'Ilham Kurniawan', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16914', 'ilham.krn02@gmail.com', '81377792468', 'perizinan', 'Pembina', 4000000),
(36, 'Ira Adellya Lestari', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16915', 'iraadellyalesrari@gmail.c', '82394044937', 'kesehatan', 'Pembina Utama', 15000000),
(37, 'Jodhi Lesmana Putra', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16916', 'skinbrow@gmail.com', '85710898500', 'kependudukan dan pencatatan', 'Pembina UtamaMadya', 8000000),
(38, 'Jonggi Abialdo', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16917', 'jonggialdo@gmail.com', '8131516836', 'pendapatan daerah', 'Pembina Utama Muda', 6000000),
(39, 'Juan Josua', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16918', 'mynameisjuanjosua@gmail.c', '82112609637', 'ketenagakerjaan sosial', 'Pembina Tingkat I', 5000000),
(40, 'Kania Eka Safira', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16919', 'kaniaekasa@gmail.com', '83808919918', 'Hubungan Masyarakat', 'Pembina', 4000000),
(41, 'Kevin Joshua Adithia Prat', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16920', 'kevinjoshly@gmail.com', '81282137965', 'perizinan', 'Pembina Utama', 15000000),
(42, 'Kevin Reynaldi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16921', 's.kevinreynaldi@gmail.com', '8121223778', 'kesehatan', 'Pembina UtamaMadya', 8000000),
(43, 'Luthfi Jovan Wandy Akmand', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16922', 'luthfipijc@gmail.com', '89654703443', 'kependudukan dan pencatatan', 'Pembina Utama Muda', 6000000),
(44, 'M Ardan Maulana', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16923', 'nadra7kakikaeru@gmail.com', '85842220888', 'pendapatan daerah', 'Pembina Tingkat I', 5000000),
(45, 'M Daffa Rangga Putra', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16924', 'daffanasution@rocketmail.', '8949704549', 'ketenagakerjaan sosial', 'Pembina', 4000000),
(46, 'M Fadhli Z', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16925', 'muhammad.fadhliz@yahoo.co', '82385063064', 'Hubungan Masyarakat', 'Pembina Utama', 15000000),
(47, 'M Kholili', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16926', 'm.kholili12@gmail.com', '85693276947', 'perizinan', 'Pembina UtamaMadya', 8000000),
(48, 'M.  Ilham R', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16927', 'm.ilhamramadhanca@gmail.c', '8513872950', 'kesehatan', 'Pembina Utama Muda', 6000000),
(49, 'M. Iqbal Choironi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16928', 'iqbalc666@gmail.com', '81231799998', 'kependudukan dan pencatatan', 'Pembina Tingkat I', 5000000),
(50, 'M.Wiranegara Girinata', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16929', 'muhammadwiranegara777@gma', '85780263714', 'pendapatan daerah', 'Pembina', 4000000),
(51, 'Made Pendy Prasetya', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16930', 'pendyp10@gmail.com', '87862332040', 'ketenagakerjaan sosial', 'Pembina Utama', 15000000),
(52, 'Mahatir Zanur', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16931', 'zanurmahatir@gmail.com', '85210502316', 'Hubungan Masyarakat', 'Pembina UtamaMadya', 8000000),
(53, 'Malika Saumnuari', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16932', 'saumnuarim66@gmail.com', '89514355634', 'perizinan', 'Pembina Utama Muda', 6000000),
(54, 'Melati Aulia Putri W', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16933', 'melatiapw@gmail.com', '81806041799', 'kesehatan', 'Pembina Tingkat I', 5000000),
(55, 'Mochamad Suryono', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16934', 'ms.theater@yahoo.com', '85712163208', 'kependudukan dan pencatatan', 'Pembina', 4000000),
(56, 'Mohammad Romano Diansyah', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16935', 'romano.diansyah@gmail.com', '81284863256', 'pendapatan daerah', 'Pembina Utama', 15000000),
(57, 'Muhammad Fadhlan Prakoso', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16936', 'mfadhlan22@yahoo.com', '83898806247', 'ketenagakerjaan sosial', 'Pembina UtamaMadya', 8000000),
(58, 'Muhammad Harits Arrazi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16937', 'm.harits7@gmail.com', '87870406253', 'Hubungan Masyarakat', 'Pembina Utama Muda', 6000000),
(59, 'Muhammad Hazim', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16938', 'mhazim2@gmail.com', '85774349795', 'perizinan', 'Pembina Tingkat I', 5000000),
(60, 'Muhammad Luthfir Rahman', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16939', 'm.luthfirrahman97@gmail.c', '87809432148', 'kesehatan', 'Pembina', 4000000),
(61, 'Muhammad Nabil Baihaqi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16940', 'muhnabilbaihaqi@gmail.com', '8983811450', 'kependudukan dan pencatatan', 'Pembina Utama', 15000000),
(62, 'Muhammad Ricky Murdana', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16941', 'rickymurdana@gmail.com', '82358995458', 'pendapatan daerah', 'Pembina UtamaMadya', 8000000),
(63, 'Mukhaddam Muhammad', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16942', 'mukhaddammuhammad@gmail.c', '8883591309', 'ketenagakerjaan sosial', 'Pembina Utama Muda', 6000000),
(64, 'Nazla Aufa', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16943', 'nazlaufaco@outlook.com', '85692198477', 'Hubungan Masyarakat', 'Pembina Tingkat I', 5000000),
(65, 'Noer Widya H', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16944', 'noer.herlambang@gmail.com', '85695534839', 'perizinan', 'Pembina', 4000000),
(66, 'Nuh Satria Putra', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16945', 'nuhsatria@gmail.com', '83891220022', 'kesehatan', 'Pembina Utama', 15000000),
(67, 'Nur Meilinda N', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16946', 'nmlinda97@gmail.com', '82213781699', 'kependudukan dan pencatatan', 'Pembina UtamaMadya', 8000000),
(68, 'Octavian Wibawa R', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16947', 'octavian_wr@yahoo.com', '8990165029', 'pendapatan daerah', 'Pembina Utama Muda', 6000000),
(69, 'Pramesywara Jembar Panala', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16948', 'jems.p14@gmail.com', '85659181814', 'ketenagakerjaan sosial', 'Pembina Tingkat I', 5000000),
(70, 'Pranayadna Afif Pradhana', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16949', 'pranayadnaap96@gmail.com', '81395969659', 'Hubungan Masyarakat', 'Pembina', 4000000),
(71, 'Prasetyo Pambudi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16950', 'prasetyopambudi@yahoo.com', '85715426243', 'perizinan', 'Pembina Utama', 15000000),
(72, 'Purnama Syafitri Manurung', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16951', 'purnamasftr@gmail.com', '87892261850', 'kesehatan', 'Pembina UtamaMadya', 8000000),
(73, 'Rachman Lazuardi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16952', 'rachmanlazuardi.9a@gmail.', '81947394302', 'kependudukan dan pencatatan', 'Pembina Utama Muda', 6000000),
(74, 'Raden Syaufina Ratnadarya', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16953', 'syau97@gmail.com', '83806678886', 'pendapatan daerah', 'Pembina Tingkat I', 5000000),
(75, 'Rakean Gilang Dipa Pawitr', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16954', 'codename.rgdp@gmail.com', '89520958149', 'ketenagakerjaan sosial', 'Pembina', 4000000),
(76, 'Rakish Frisky', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16955', 'rakishfrisky@yahoo.co.id', '85711661258', 'Hubungan Masyarakat', 'Pembina Utama', 15000000),
(77, 'Raymundus Jati Primanda', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16956', 'raymon_prijati@yahoo.com', '81218453791', 'perizinan', 'Pembina UtamaMadya', 8000000),
(78, 'Renardi Purnama P', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16957', 'renardipurnamaputra@yahoo', '85778899191', 'kesehatan', 'Pembina Utama Muda', 6000000),
(79, 'Reyhan Javier', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16958', 'stormliquid99@yahoo.com', '81372268868', 'kependudukan dan pencatatan', 'Pembina Tingkat I', 5000000),
(80, 'Rio Al Rasyid', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16959', 'rioalrasyid97@gmail.com', '81354639063', 'pendapatan daerah', 'Pembina', 4000000),
(81, 'Riska Ratnasari', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16960', 'riska.ratnasari96@gmail.c', '81366426144', 'ketenagakerjaan sosial', 'Pembina Utama', 15000000),
(82, 'Rizky Subagja', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16961', 'rizkysubagja99@gmail.com', '85691958469', 'Hubungan Masyarakat', 'Pembina UtamaMadya', 8000000),
(83, 'Rizky Tria Meditanala', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16962', 'ritrime97@gmail.com', '89604060686', 'perizinan', 'Pembina Utama Muda', 6000000),
(84, 'Ryan Azrian Syah', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16963', 'azrian.ryan@gmail.com', '85373318178', 'kesehatan', 'Pembina Tingkat I', 5000000),
(85, 'Saeful Ramadhan', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16964', 'sflramadhan@gmail.com', '88801215867', 'kependudukan dan pencatatan', 'Pembina', 4000000),
(86, 'samuel ginting', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16965', 'samuelginting01@gmail.com', '87884405577', 'pendapatan daerah', 'Pembina Utama', 15000000),
(87, 'Shelvinta Oktaviani', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16966', 'shelvinto@gmail.com', '81275639197', 'ketenagakerjaan sosial', 'Pembina UtamaMadya', 8000000),
(88, 'Thirafi Aufar Idris', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16967', 'thirafi_aufar_idris@yahoo', '81372246678', 'Hubungan Masyarakat', 'Pembina Utama Muda', 6000000),
(89, 'Topan Try Harmanda', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16968', 'topantryharmanda@gmail.co', '8568835040', 'perizinan', 'Pembina Tingkat I', 5000000),
(90, 'Velia Deby Rahmawati', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16969', 'veliaaime@gmail.com', '89649948739', 'kesehatan', 'Pembina', 4000000),
(91, 'Vito Rizki Imanda', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16970', 'vitorizkiimanda@gmail.com', '89657011491', 'kependudukan dan pencatatan', 'Pembina Utama', 15000000),
(92, 'Wiandrini Anindita', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16971', 'waw.dita@gmail.com', '87889000794', 'pendapatan daerah', 'Pembina UtamaMadya', 8000000),
(93, 'Wingatun S Tartiana', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16972', 'tartiana.wins@gmail.com', '81804717442', 'ketenagakerjaan sosial', 'Pembina Utama Muda', 6000000),
(94, 'Wiradani Ramadhan', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16973', 'adhan432@gmail.com', '81383524851', 'Hubungan Masyarakat', 'Pembina Tingkat I', 5000000),
(95, 'Yoga Permana S.', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16974', 'yogapermana.s12@gmail.com', '89668617485', 'perizinan', 'Pembina', 4000000),
(96, 'Yudha Prasetya S.', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16975', 'yudha14.yp@gmail.com', '81318146598', 'kesehatan', 'Pembina Utama', 15000000),
(97, 'Zulfahmi Ibnu Habibi', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16976', 'ibnuhadi11@gmail.com', '89656314414', 'kependudukan dan pencatatan', 'Pembina UtamaMadya', 8000000),
(98, 'Zulkifli Pohan', 'Jalan Babakan Tengah No.26, Babakan, Bogor, Jawa Barat, Babakan, Dramaga, BOGOR, West Java 16977', 'zul97x@gmail.com', '85274148832', 'pendapatan daerah', 'Pembina Utama Muda', 6000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
