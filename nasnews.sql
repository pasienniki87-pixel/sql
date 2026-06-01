-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2026 at 07:54 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nas.news`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_komunitas`
--

CREATE TABLE `anggota_komunitas` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `komunitas_id` int(11) DEFAULT NULL,
  `role` enum('admin','member') DEFAULT 'member',
  `tanggal_bergabung` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota_komunitas`
--

INSERT INTO `anggota_komunitas` (`id`, `user_id`, `komunitas_id`, `role`, `tanggal_bergabung`) VALUES
(11, 12, 8, 'member', '2026-05-14 05:17:23'),
(12, 5, 8, 'member', '2026-05-14 06:31:20'),
(13, 7, 8, 'member', '2026-05-14 07:48:12');

-- --------------------------------------------------------

--
-- Table structure for table `komentar_postingan`
--

CREATE TABLE `komentar_postingan` (
  `id` int(11) NOT NULL,
  `postingan_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `komunitas`
--

CREATE TABLE `komunitas` (
  `id` int(11) NOT NULL,
  `nama_komunitas` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(255) DEFAULT 'default_komunitas.jpg',
  `dibuat_oleh` varchar(50) DEFAULT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komunitas`
--

INSERT INTO `komunitas` (`id`, `nama_komunitas`, `deskripsi`, `gambar`, `dibuat_oleh`, `tanggal_dibuat`, `last_activity`) VALUES
(4, '✍️ Kartini Masa Kini', 'Emansipasi wanita, pendidikan, dan peran perempuan', '1778676923_9678.jpg', 'mimiN', '2026-05-13 12:55:23', '2026-05-13 12:55:23'),
(8, '🦸 #PahlawanDiFiksi – Pahlawan dari Layar & Lembaran', 'Dari Superman sampai Gatotkaca, dari Naruto sampai Gundala. Siapa pahlawan favoritmu di dunia fiksi?\r\n\r\n', '1778678038_7021.jpg', 'mimiN', '2026-05-13 13:13:58', '2026-05-13 13:13:58'),
(9, '📚 Pahlawan Pendidikan', 'Wawasan kebangsaan, pemersatu lintas daerah', '1778678149_3475.jpg', 'mimiN', '2026-05-13 13:15:49', '2026-05-13 13:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `komunitas_pesan`
--

CREATE TABLE `komunitas_pesan` (
  `id` int(11) NOT NULL,
  `komunitas_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pesan` text NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `komunitas_pesan`
--

INSERT INTO `komunitas_pesan` (`id`, `komunitas_id`, `user_id`, `pesan`, `waktu`) VALUES
(1, 2, 7, 'p', '2026-05-05 06:20:10'),
(2, 2, 8, 'ih bosen banget ini', '2026-05-05 06:21:32'),
(3, 2, 7, 'ha', '2026-05-05 06:22:52'),
(4, 2, 5, 'spill mbg', '2026-05-05 06:26:37'),
(6, 3, 5, 'p', '2026-05-05 06:54:01'),
(7, 2, 7, 'hai', '2026-05-12 07:37:40'),
(8, 8, 5, '[STICKER] 1778741615_download__1_-removebg-preview.png', '2026-05-14 06:53:51'),
(9, 8, 5, '[STICKER] 1778742318_icône_de_feu_de_joie_plasma_bleu_pixel_brûlant__feu_flamboyant_avec_une_flamme_centrale_rougeoyante_après_une_explosion_puissante_avec_des_étincelles_vectorielles_volantes_-removebg-preview.png', '2026-05-14 07:05:37'),
(10, 8, 5, '[STICKER] 1778742295_Ebay_Kleinanzeigen-removebg-preview.png', '2026-05-14 07:05:45'),
(11, 8, 5, '[STICKER] 1778742271_download__5_-removebg-preview.png', '2026-05-14 07:05:51'),
(12, 8, 5, '[STICKER] 1778742251_download__4_-removebg-preview.png', '2026-05-14 07:05:55'),
(13, 8, 5, '[STICKER] 1778742218_download__3_-removebg-preview.png', '2026-05-14 07:05:58'),
(14, 8, 5, 'hai guis', '2026-05-14 07:06:51'),
(15, 8, 12, 'hai mimiN', '2026-05-14 07:07:34'),
(16, 8, 7, '[STICKER] 1778742318_icône_de_feu_de_joie_plasma_bleu_pixel_brûlant__feu_flamboyant_avec_une_flamme_centrale_rougeoyante_après_une_explosion_puissante_avec_des_étincelles_vectorielles_volantes_-removebg-preview.png', '2026-05-14 07:48:27'),
(17, 8, 7, 'api guis', '2026-05-14 07:48:33'),
(18, 8, 7, '@oke elu udah up blom', '2026-05-14 07:48:58'),
(19, 8, 12, 'blom entar aja deh hehe', '2026-05-14 07:49:26'),
(20, 8, 12, '[STICKER] 1778742295_Ebay_Kleinanzeigen-removebg-preview.png', '2026-05-14 07:49:32'),
(21, 8, 7, 'hi!', '2026-05-18 02:49:54'),
(22, 8, 7, '[STICKER] 1778742318_icône_de_feu_de_joie_plasma_bleu_pixel_brûlant__feu_flamboyant_avec_une_flamme_centrale_rougeoyante_après_une_explosion_puissante_avec_des_étincelles_vectorielles_volantes_-removebg-preview.png', '2026-05-18 03:03:05');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_bug`
--

CREATE TABLE `laporan_bug` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `judul` varchar(200) NOT NULL,
  `pesan` text NOT NULL,
  `status` enum('pending','diproses','selesai') DEFAULT 'pending',
  `balasan` text DEFAULT NULL,
  `balasan_tanggal` timestamp NULL DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laporan_bug`
--

INSERT INTO `laporan_bug` (`id`, `nama`, `email`, `judul`, `pesan`, `status`, `balasan`, `balasan_tanggal`, `tanggal`, `user_id`) VALUES
(4, 'oke', 'ggtg@gmail.com', 'stickers', 'hai min, seneng rasanya nemu web ini. saya cuma mau ngasih saran sekaligus laporan, teruntuk sticker bisa dibuat lebih banyak lagi ya miN, karna jujur aja itu lucu-lucu abis dan sayang kalo cuma sedikit huhu. udah mungkin segitu aja min dari aku, makasih miN!', 'selesai', 'HAI HAI @oke terimakasih atas laporannya yaa! kebetulan project sticker ini masih tahap demo, dan dari pihak NAS.NEWS pun tidak menyangka kalau readers akan tertarik :P. tapi tapi tapi, akan kami usahakan agar project ini bisa meningkat lebih pesat lagi ^^\r\nsalam hangat -mimiN.', '2026-05-14 07:24:53', '2026-05-14 07:16:11', 12),
(5, 'Nasya Adinda Rahayu', 'nasyaadindarahayu@gmail.com', 'test', 'bla bla bla', 'selesai', 'Hai! @Nasya Adinda Rahayu ', '2026-05-18 02:55:27', '2026-05-18 02:54:19', 7);

-- --------------------------------------------------------

--
-- Table structure for table `like_postingan`
--

CREATE TABLE `like_postingan` (
  `id` int(11) NOT NULL,
  `postingan_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pahlawan`
--

CREATE TABLE `pahlawan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `link_file` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `asal_negara` varchar(50) DEFAULT 'Indonesia',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pahlawan`
--

INSERT INTO `pahlawan` (`id`, `nama`, `deskripsi`, `link_file`, `gambar`, `asal_negara`, `created_at`) VALUES
(1, 'Tan Malaka', 'Tan Malaka lahir dengan nama Ibrahim Datuk Sutan Malaka pada 2 Juni 1897 di Pandam Gadang. Ia merupakan salah satu tokoh penting dalam perjuangan kemerdekaan Indonesia yang dikenal sebagai pejuang, pemikir, guru, dan penulis. Setelah menempuh pendidikan di sekolah guru di Bukittinggi dan melanjutkan studi ke Belanda, Tan Malaka mulai aktif dalam pergerakan politik yang menentang penjajahan Belanda. Ia memiliki pemikiran bahwa Indonesia harus merdeka sepenuhnya tanpa campur tangan bangsa asing. Karena aktivitas politiknya, ia sering diburu pemerintah kolonial sehingga harus hidup berpindah-pindah ke berbagai negara seperti Filipina, Tiongkok, dan Uni Soviet.\r\n\r\nSelama masa perjuangannya, Tan Malaka banyak menulis buku dan gagasan politik. Karya terkenalnya adalah Madilog yang membahas cara berpikir logis, ilmiah, dan rasional bagi masyarakat Indonesia. Selain itu, ia juga mendirikan Partai Murba sebagai wadah perjuangan rakyat. Setelah Indonesia merdeka, Tan Malaka tetap aktif memperjuangkan persatuan bangsa, tetapi pandangannya sering berbeda dengan pemerintah saat itu. Pada tahun 1949, ia meninggal dunia di Kediri, Jawa Timur. Atas jasa dan perjuangannya, pemerintah Indonesia menetapkannya sebagai Pahlawan Nasional pada tahun 1963.\r\n', 'pahlawan.php?id=1', 'uploads/pahlawan/1778503995_6557.jpeg', 'Indonesia', '2026-05-11 12:53:15'),
(2, 'Ir. Soekarno', 'Proklamator dan Presiden Pertama Republik Indonesia. Lahir di Surabaya 6 Juni 1901. Beliau adalah penggali Pancasila dan orator ulung yang mampu membangkitkan semangat perjuangan bangsa. Wafat di Jakarta 21 Juni 1970.', 'pahlawan.php?id=2', 'uploads/pahlawan/1778569736_2685.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(3, 'Drs. Mohammad Hatta', 'Proklamator dan Wakil Presiden Pertama Republik Indonesia. Lahir di Bukittinggi 12 Agustus 1902. Dikenal sebagai Bapak Koperasi Indonesia karena pemikirannya tentang ekonomi kerakyatan. Wafat di Jakarta 14 Maret 1980.', 'pahlawan.php?id=3', 'uploads/pahlawan/1778569994_9446.jpeg', 'Indonesia', '2026-05-12 06:24:07'),
(4, 'Jenderal Soedirman', 'Panglima Besar Tentara Nasional Indonesia pertama. Lahir di Purbalingga 24 Januari 1916. Tokoh gerilya legendaris yang memimpin perang meskipun dalam kondisi sakit paru-paru. Wafat di Magelang 29 Januari 1950.', 'pahlawan.php?id=4', 'uploads/pahlawan/1778570159_9441.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(5, 'Raden Ajeng Kartini', 'Pahlawan emansipasi wanita. Lahir di Jepara 21 April 1879. Beliau memperjuangkan hak pendidikan dan kesetaraan bagi perempuan pribumi melalui surat-suratnya yang terkenal. Wafat di Rembang 17 September 1904.', 'pahlawan.php?id=5', 'uploads/pahlawan/1778570180_6274.jpeg', 'Indonesia', '2026-05-12 06:24:07'),
(6, 'Ki Hajar Dewantara', 'Bapak Pendidikan Nasional. Lahir di Yogyakarta 2 Mei 1889. Pendiri Perguruan Taman Siswa yang menjadi pelopor pendidikan bagi rakyat pribumi dengan semboyan \'Ing Ngarso Sung Tulodo\'. Wafat 26 April 1959.', 'pahlawan.php?id=6', 'uploads/pahlawan/1778570205_7524.jpeg', 'Indonesia', '2026-05-12 06:24:07'),
(7, 'Cut Nyak Dien', 'Pahlawan wanita dari Aceh. Lahir di Aceh Besar 1848. Beliau memimpin perang gerilya melawan Belanda setelah suaminya gugur. Wafat di Sumedang 6 November 1908.', 'pahlawan.php?id=7', 'uploads/pahlawan/1778570245_4744.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(8, 'Haji Agus Salim', 'Tokoh intelektual dan diplomat Indonesia. Lahir di Koto Gadang 8 Oktober 1884. Dikenal sebagai \'The Grand Old Man\' karena kebijaksanaannya. Wafat di Jakarta 4 November 1954.', 'pahlawan.php?id=8', 'uploads/pahlawan/1778570423_5572.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(9, 'H.O.S. Tjokroaminoto', '\'Raja Jawa\' dan pemimpin Sarekat Islam. Lahir di Ponorogo 16 Agustus 1883. Beliau menjadi guru bagi banyak tokoh pergerakan nasional seperti Soekarno dan Semaoen. Wafat 17 Desember 1934.', 'pahlawan.php?id=9', 'uploads/pahlawan/1778570515_7246.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(10, 'Dr. Wahidin Sudirohusodo', 'Penggagas organisasi Boedi Oetomo. Lahir di Yogyakarta 7 Januari 1852. Beliau adalah pelopor kebangkitan nasional melalui gerakan pendidikan dan sosial. Wafat 26 Mei 1917.', 'pahlawan.php?id=10', 'uploads/pahlawan/1778570585_1970.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(11, 'Cut Meutia', 'Pahlawan wanita dari Aceh. Lahir di Aceh Utara 1870. Beliau ikut berperang melawan Belanda bersama suaminya dan gugur di medan pertempuran. Wafat 25 Oktober 1910.', 'pahlawan.php?id=11', 'uploads/pahlawan/1778570695_9726.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(12, 'Sultan Hasanuddin', 'Pahlawan dari Makassar. Lahir di Gowa 12 Januari 1631. Dikenal sebagai \'Ayam Jantan dari Timur\' karena keberaniannya melawan VOC. Wafat 12 Juni 1670.', 'pahlawan.php?id=12', 'uploads/pahlawan/1778570783_5821.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(13, 'Tuanku Imam Bonjol', 'Pahlawan nasional asal Sumatera Barat. Lahir di Pasaman 1772. Beliau adalah pemimpin Perang Padri melawan penjajahan Belanda. Wafat di Lokasi pengasingan 6 November 1864.', 'pahlawan.php?id=13', 'uploads/pahlawan/1778570848_9313.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(14, 'Pangeran Diponegoro', 'Pemimpin Perang Jawa (1825-1830). Lahir di Yogyakarta 11 November 1785. Tokoh spiritual yang memimpin perlawanan besar-besaran melawan Belanda. Wafat di Makassar 8 Januari 1855.', 'pahlawan.php?id=14', 'uploads/pahlawan/1778570962_8336.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(15, 'Teuku Umar', 'Pahlawan Aceh yang terkenal dengan strateginya. Lahir di Meulaboh 1854. Beliau terkenal dengan siasat \'berpura-pura menyerah\' kepada Belanda. Wafat 11 Februari 1899.', 'pahlawan.php?id=15', 'uploads/pahlawan/1778571035_4861.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(16, 'Bung Tomo', 'Pahlawan 10 November 1945. Lahir di Surabaya 3 Oktober 1920. Beliau adalah orator yang membakar semangat arek-arek Suroboyo melawan Sekutu. Wafat di Padang Arafah 10 Oktober 1981.', 'pahlawan.php?id=16', 'uploads/pahlawan/1778571109_5192.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(17, 'KH Hasyim Asy\'ari', 'Pendiri Nahdlatul Ulama (NU). Lahir di Jombang 10 April 1871. Beliau adalah ulama besar yang juga pejuang kemerdekaan. Wafat 25 Juli 1947.', 'pahlawan.php?id=17', 'uploads/pahlawan/1778571164_1616.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(18, 'KH Ahmad Dahlan', 'Pendiri Muhammadiyah. Lahir di Yogyakarta 1 Agustus 1868. Beliau memperjuangkan pembaruan Islam dan pendidikan. Wafat 23 Februari 1923.', 'pahlawan.php?id=18', 'uploads/pahlawan/1778571215_6637.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(19, 'Mgr. Albertus Soegijapranata', 'Uskup pribumi pertama Indonesia. Lahir di Surakarta 25 November 1896. Tokoh nasionalis yang gigih memperjuangkan kemerdekaan. Wafat di Belanda 22 Juli 1963.', 'pahlawan.php?id=19', 'uploads/pahlawan/1778571268_5378.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(20, 'Ir. H. Djuanda Kartawidjaja', 'Perdana Menteri Indonesia penggagas Deklarasi Djuanda. Lahir di Bandung 14 Januari 1911. Beliau yang menyatakan bahwa laut Indonesia adalah batas teritorial. Wafat 7 November 1963.', 'pahlawan.php?id=20', 'uploads/pahlawan/1778571336_5851.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(21, 'Adam Malik', 'Tokoh pers', 'pahlawan.php?id=21', 'uploads/pahlawan/1778676481_9884.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(22, 'Jenderal AH Nasution', 'Tokoh militer dan pencetus Dwifungsi ABRI. Lahir di Mandailing Natal 5 Desember 1918. Beliau juga menulis buku tentang Perang Gerilya. Wafat 6 September 2000.', 'pahlawan.php?id=22', 'uploads/pahlawan/1778676463_7272.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(23, 'Jenderal Gatot Subroto', 'Pahlawan militer dalam Perang Kemerdekaan. Lahir di Banyumas 10 Oktober 1907. Beliau menjadi pimpinan TNI dalam berbagai pertempuran. Wafat 11 Juni 1962.', 'pahlawan.php?id=23', 'uploads/pahlawan/1778676449_4633.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(24, 'Rasuna Said', 'Pahlawan wanita dari Sumatera Barat. Lahir di Agam 14 September 1910. Tokoh pergerakan kemerdekaan dan pidato. Wafat 2 November 1965.', 'pahlawan.php?id=24', 'uploads/pahlawan/1778676433_3779.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(25, 'Laksamana Malahayati', 'Laksamana wanita pertama dari Aceh. Lahir di Aceh 1550. Beliau memimpin pasukan Inong Balee (pasukan janda) melawan Belanda. Wafat 1610.', 'pahlawan.php?id=25', 'uploads/pahlawan/1778676421_4654.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(26, 'Frans Kaisiepo', 'Pahlawan dari Papua. Lahir di Biak 10 Oktober 1921. Beliau tokoh integrasi Irian Barat ke NKRI. Wafat 10 April 1979.', 'pahlawan.php?id=26', 'uploads/pahlawan/1778676402_4165.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(27, 'Marthen Indey', 'Tokoh pejuang Papua. Lahir di Papua 1912. Beliau anggota BPUPKI yang memperjuangkan kemerdekaan RI. Wafat 1974.', 'pahlawan.php?id=27', 'uploads/pahlawan/1778676385_9911.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(28, 'Silas Papare', 'Pahlawan kemerdekaan dari Papua. Lahir di Serui 1918. Tokoh integrasi Papua ke Indonesia melalui TRIKORA. Wafat 1978.', 'pahlawan.php?id=28', 'uploads/pahlawan/1778676368_3610.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(29, 'Thomas Matulessy (Pattimura)', 'Pahlawan perlawanan dari Maluku. Lahir di Saparua 1783. Memimpin perlawanan melawan VOC. Wafat di Ambon 16 Desember 1817.', 'pahlawan.php?id=29', 'uploads/pahlawan/1778676348_7353.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(30, 'Martha Christina Tiahahu', 'Pahlawan wanita dari Maluku. Lahir di Maluku 4 Januari 1800. Putri pejuang yang gugur di usia 17 tahun saat dibuang Belanda. Wafat 2 Januari 1818.', 'pahlawan.php?id=30', 'uploads/pahlawan/1778676326_5435.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(31, 'Sultan Baabullah', 'Sultan Ternate yang mengusir Portugis. Lahir di Ternate 10 Februari 1528. Beliau menguasai hampir seluruh wilayah timur Indonesia. Wafat 1583.', 'pahlawan.php?id=31', 'uploads/pahlawan/1778676290_2453.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(32, 'Maria Walanda Maramis', 'Pahlawan wanita dari Minahasa. Lahir di Minahasa 1 Desember 1872. Pendiri organisasi PIKAT untuk pendidikan perempuan. Wafat 22 April 1924.', 'pahlawan.php?id=32', 'uploads/pahlawan/1778676251_2433.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(33, 'Sam Ratulangi', 'Pahlawan nasional dari Sulawesi Utara. Lahir di Minahasa 5 November 1890. Tokoh pendidikan dan anggota BPUPKI. Wafat 30 Juni 1949.', 'pahlawan.php?id=33', 'uploads/pahlawan/1778675692_4428.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(34, 'AA Maramis', 'Tokoh pejuang dari Minahasa. Lahir di Minahasa 1898. Anggota BPUPKI dan tokoh persatuan Indonesia Timur. Wafat 1977.', 'pahlawan.php?id=34', 'uploads/pahlawan/1778675666_3203.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(35, 'Andi Mappanyukki', 'Raja Bone yang melawan kolonialisme. Lahir di Sulawesi Selatan 1885. Tokoh perlawanan terhadap Belanda. Wafat 1940.', 'pahlawan.php?id=35', 'uploads/pahlawan/1778675507_4689.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(36, 'Sultan Adam', 'Sultan Banjar pelaku Perang Banjar. Lahir di Kalimantan Selatan 1800. Memimpin perlawanan melawan Belanda. Wafat 1864.', 'pahlawan.php?id=36', 'uploads/pahlawan/1778675488_5999.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(37, 'Pangeran Antasari', 'Pemimpin Perang Banjar. Lahir di Kalimantan Selatan 1809. Simbol perlawanan rakyat Kalimantan. Wafat 1862.', 'pahlawan.php?id=37', 'uploads/pahlawan/1778675469_9515.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(38, 'Fatahillah', 'Pemimpin ekspedisi Sunda Kelapa. Lahir di (tidak diketahui). Mengusir Portugis dari Sunda Kelapa pada 22 Juni 1527. Wafat 1570.', 'pahlawan.php?id=38', 'uploads/pahlawan/1778675412_8621.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(39, 'Nyai Ahmad Dahlan', 'Pendiri \'Aisyiyah. Lahir di Yogyakarta 1872. Tokoh emansipasi dan pendidikan perempuan. Wafat 31 Mei 1946.', 'pahlawan.php?id=39', 'uploads/pahlawan/1778675392_5784.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(40, 'KH Abdul Wahab Hasbullah', 'Ulama pendiri NU. Lahir di Jombang 31 Maret 1888. Tokoh pejuang kemerdekaan dan pendidikan. Wafat 29 Desember 1971.', 'pahlawan.php?id=40', 'uploads/pahlawan/1778675374_6089.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(41, 'KH Bisri Syansuri', 'Rais \'Aam PBNU pejuang kemerdekaan. Lahir di Jombang 10 Oktober 1895. Tokoh pendidikan. Wafat 25 April 1980.', 'pahlawan.php?id=41', 'uploads/pahlawan/1778675354_9189.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(42, 'KH Zainal Mustafa', 'Ulama pejuang dari Tasikmalaya. Lahir di Tasikmalaya 1919. Memimpin pemberontakan melawan Jepang. Wafat 1944.', 'pahlawan.php?id=42', 'uploads/pahlawan/1778675286_4210.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(43, 'KH Cholil Bangkalan', 'Ulama pejuang dari Madura. Lahir di Bangkalan 1820. Panglima perang dalam perjuangan rakyat Madura. Wafat 1900.', 'pahlawan.php?id=43', 'uploads/pahlawan/1778675717_7537.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(44, 'KH Zainul Arifin Pohan', 'Wakil Perdana Menteri. Lahir di Barus 1909. Pemimpin laskar Hizbullah. Wafat 2 Maret 1963.', 'pahlawan.php?id=44', 'uploads/pahlawan/1778675227_1071.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(45, 'KH Masjkur', 'Tokoh NU dan pejuang kemerdekaan. Lahir di Jawa Timur 1906. Wafat 1994.', 'pahlawan.php?id=45', 'uploads/pahlawan/1778675210_8846.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(46, 'Mgr. Albertus Soegijapranata', 'Uskup pribumi pertama. Lahir di Surakarta 25 November 1896. Tokoh nasionalis dan pejuang. Wafat 22 Juli 1963.', 'pahlawan.php?id=46', 'uploads/pahlawan/1778675191_8187.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(47, 'Prof. Dr. GSSJ Ratulangi', 'Pahlawan nasional dari Minahasa. Lahir di Minahasa 5 November 1890. Gubernur Sulawesi pasca kemerdekaan. Wafat 30 Juni 1949.', 'pahlawan.php?id=47', 'uploads/pahlawan/1778675170_6415.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(48, 'Supeno', 'Menteri termuda era Hatta. Lahir di Pekalongan 1916. Gugur dalam Agresi Militer Belanda II. Wafat 1949.', 'pahlawan.php?id=48', 'uploads/pahlawan/1778675131_7200.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(49, 'Marsinah', 'Aktivis buruh perempuan. Lahir di Sidoarjo 1969. Simbol perjuangan hak-hak karyawan. Wafat 1993.', 'pahlawan.php?id=49', 'uploads/pahlawan/1778675109_8411.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(50, 'Laksamana Muda Udara (Purn) Soejono', 'Penerbang pejuang AURI. Lahir di Jawa Timur 1928. Tokoh perjuangan angkatan udara. Wafat 2015.', 'pahlawan.php?id=50', 'uploads/pahlawan/1778675092_1541.jpg', 'Indonesia', '2026-05-12 06:24:07'),
(51, 'Nelson Mandela', 'Pejuang anti-apartheid dan Presiden kulit hitam pertama Afrika Selatan. Lahir 1918. Meraih Nobel Perdamaian 1993 atas jasanya mengakhiri diskriminasi rasial. Wafat 2013.', 'pahlawan.php?id=51', 'uploads/pahlawan/1778571946_2522.jpg', 'Afrika Selatan', '2026-05-12 06:28:53'),
(52, 'Mahatma Gandhi', 'Pemimpin gerakan kemerdekaan India. Lahir 1869. Pelopor filosofi ahimsa (tanpa kekerasan) dan satyagraha. Wafat 1948.', 'pahlawan.php?id=52', 'uploads/pahlawan/1778572052_9166.jpg', 'India', '2026-05-12 06:28:53'),
(53, 'Martin Luther King Jr.', 'Pemimpin hak sipil Amerika Serikat. Lahir 1929. Tokoh gerakan tanpa kekerasan melawan rasisme. Pidato terkenal \'I Have a Dream\'. Wafat 1968.', 'pahlawan.php?id=53', 'uploads/pahlawan/1778572108_9830.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(54, 'Albert Einstein', 'Amerika Serikat', 'pahlawan.php?id=54', 'uploads/pahlawan/1778572222_4194.jpg', 'Jerman', '2026-05-12 06:28:53'),
(55, 'Marie Curie', 'Prancis', 'pahlawan.php?id=55', 'uploads/pahlawan/1778572245_7272.jpg', 'Polandia', '2026-05-12 06:28:53'),
(56, 'Mother Teresa', 'India/Albania', 'pahlawan.php?id=56', 'uploads/pahlawan/1778572265_7421.jpg', 'India', '2026-05-12 06:28:53'),
(57, 'Leonardo da Vinci', 'Polimatik: pelukis', 'pahlawan.php?id=57', 'uploads/pahlawan/1778572579_6531.jpg', 'Italia', '2026-05-12 06:28:53'),
(58, 'Isaac Newton', 'Fisikawan dan matematikawan. Lahir 1643. Penemu hukum gravitasi dan kalkulus. Wafat 1727.', 'pahlawan.php?id=58', 'uploads/pahlawan/1778572607_3541.jpg', 'Inggris', '2026-05-12 06:28:53'),
(59, 'Charles Darwin', 'Ilmuwan pencetus teori evolusi. Lahir 1809. Buku \'On the Origin of Species\' mengubah dunia sains. Wafat 1882.', 'pahlawan.php?id=59', 'uploads/pahlawan/1778572628_3099.jpg', 'Inggris', '2026-05-12 06:28:53'),
(60, 'William Shakespeare', 'Sastrawan terbesar Inggris. Lahir 1564. Karya: Hamlet', 'pahlawan.php?id=60', 'uploads/pahlawan/1778572649_4756.jpg', 'Inggris', '2026-05-12 06:28:53'),
(61, 'Winston Churchill', 'Perdana Menteri Inggris masa Perang Dunia II. Lahir 1874. Peraih Nobel Sastra 1953. Wafat 1965.', 'pahlawan.php?id=61', 'uploads/pahlawan/1778572671_4199.jpg', 'Inggris', '2026-05-12 06:28:53'),
(62, 'Franklin D. Roosevelt', 'Presiden AS masa Depresi Besar dan PD II. Lahir 1882. Satu-satunya Presiden yang terpilih 4 periode. Wafat 1945.', 'pahlawan.php?id=62', 'uploads/pahlawan/1778572723_7179.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(63, 'Abraham Lincoln', 'Presiden AS ke-16. Lahir 1809. Menghapus perbudakan di AS. Wafat 1865.', 'pahlawan.php?id=63', 'uploads/pahlawan/1778572740_9865.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(64, 'George Washington', 'Presiden pertama Amerika Serikat. Lahir 1732. Pemimpin Perang Revolusi. Wafat 1799.', 'pahlawan.php?id=64', 'uploads/pahlawan/1778572758_6868.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(65, 'Thomas Jefferson', 'Penulis utama Deklarasi Kemerdekaan AS. Lahir 1743. Presiden ke-3 AS. Wafat 1826.', 'pahlawan.php?id=65', 'uploads/pahlawan/1778572777_7338.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(66, 'Alexander Graham Bell', 'Penemu telepon. Lahir 1847. Wafat 1922.', 'pahlawan.php?id=66', 'uploads/pahlawan/1778572965_8561.jpg', 'Skotlandia', '2026-05-12 06:28:53'),
(67, 'Thomas Alva Edison', 'Penemu bola lampu pijar dan fonograf. Lahir 1847. Wafat 1931.', 'pahlawan.php?id=67', 'uploads/pahlawan/1778572989_5219.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(68, 'Nikola Tesla', 'Penemu sistem listrik arus bolak-balik (AC). Lahir 1856. Wafat 1943.', 'pahlawan.php?id=68', 'uploads/pahlawan/1778573011_5293.jpg', 'Kroasia/Kekaisaran Austria', '2026-05-12 06:28:53'),
(69, 'Galileo Galilei', 'Ilmuwan penemu teleskop. Lahir 1564. Pendukung teori heliosentris. Wafat 1642.', 'pahlawan.php?id=69', 'uploads/pahlawan/1778573033_7608.jpg', 'Italia', '2026-05-12 06:28:53'),
(70, 'Christopher Columbus', 'Penjelajah yang menemukan benua Amerika (1492). Lahir 1451. Wafat 1506.', 'pahlawan.php?id=70', 'uploads/pahlawan/1778573056_2380.jpg', 'Italia', '2026-05-12 06:28:53'),
(71, 'Ferdinand Magellan', 'Penjelajah yang memimpin ekspedisi mengelilingi dunia. Lahir 1480. Wafat 1521.', 'pahlawan.php?id=71', 'uploads/pahlawan/1778675069_4323.jpg', 'Portugal', '2026-05-12 06:28:53'),
(72, 'Che Guevara', 'Revolusioner Marxis. Lahir 1928. Tokoh kunci Revolusi Kuba. Wafat 1967.', 'pahlawan.php?id=72', 'uploads/pahlawan/1778675053_7073.jpg', 'Argentina', '2026-05-12 06:28:53'),
(73, 'Fidel Castro', 'Pemimpin Revolusi Kuba dan Perdana Menteri Kuba. Lahir 1926. Wafat 2016.', 'pahlawan.php?id=73', 'uploads/pahlawan/1778675025_5414.jpg', 'Kuba', '2026-05-12 06:28:53'),
(74, 'John F. Kennedy', 'Presiden AS ke-35. Lahir 1917. Tokoh Perang Dingin dan krisis misil Kuba. Wafat 1963.', 'pahlawan.php?id=74', 'uploads/pahlawan/1778675010_2286.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(75, 'Rosa Parks', 'Aktivis hak sipil. Lahir 1913. Penentang kebijakan segregasi di bus. Wafat 2005.', 'pahlawan.php?id=75', 'uploads/pahlawan/1778674991_3708.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(76, 'Malcolm X', 'Aktivis hak sipil dan tokoh Muslim kulit hitam. Lahir 1925. Wafat 1965.', 'pahlawan.php?id=76', 'uploads/pahlawan/1778674973_5230.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(77, 'Nelson Mandela', 'Pejuang anti-apartheid dan Presiden pertama kulit hitam Afrika Selatan. Lahir 1918. Wafat 2013.', 'pahlawan.php?id=77', 'uploads/pahlawan/1778674950_1321.jpg', 'Afrika Selatan', '2026-05-12 06:28:53'),
(78, 'Desmond Tutu', 'Tokoh gereja dan aktivis hak asasi manusia. Lahir 1931. Peraih Nobel Perdamaian 1984. Wafat 2021.', 'pahlawan.php?id=78', 'uploads/pahlawan/1778674925_9620.jpg', 'Afrika Selatan', '2026-05-12 06:28:53'),
(79, 'Aung San Suu Kyi', 'Pemimpin pro-demokrasi. Lahir 1945. Peraih Nobel Perdamaian 1991.', 'pahlawan.php?id=79', 'uploads/pahlawan/1778674910_5830.jpg', 'Myanmar', '2026-05-12 06:28:53'),
(80, 'Mikhail Gorbachev', 'Pemimpin Soviet perestroika dan glasnost. Lahir 1931. Peraih Nobel Perdamaian 1990. Wafat 2022.', 'pahlawan.php?id=80', 'uploads/pahlawan/1778569156_2959.jpg', 'Rusia', '2026-05-12 06:28:53'),
(81, 'Vladimir Putin', 'Politikus dan Presiden Rusia. Lahir 1952.', 'pahlawan.php?id=81', 'uploads/pahlawan/1778569070_3997.jpg', 'Rusia', '2026-05-12 06:28:53'),
(82, 'Angela Merkel', 'Kanselir Jerman (2005-2021). Lahir 1954.', 'pahlawan.php?id=82', 'uploads/pahlawan/1778568977_2474.jpg', 'Jerman', '2026-05-12 06:28:53'),
(83, 'Margaret Thatcher', 'Perdana Menteri wanita pertama Inggris. Lahir 1925. Julukan \'Iron Lady\'. Wafat 2013.', 'pahlawan.php?id=83', 'uploads/pahlawan/1778568908_3728.jpg', 'Inggris', '2026-05-12 06:28:53'),
(84, 'Indira Gandhi', 'Perdana Menteri wanita pertama India. Lahir 1917. Wafat 1984.', 'pahlawan.php?id=84', 'uploads/pahlawan/1778568831_3120.jpg', 'India', '2026-05-12 06:28:53'),
(85, 'Dalai Lama', 'Tokoh spiritual Tibet. Lahir 1935.', 'pahlawan.php?id=85', 'uploads/pahlawan/1778568781_6460.jpg', 'Tibet', '2026-05-12 06:28:53'),
(86, 'Billy Graham', 'Pendeta evangelis terkenal. Lahir 1918. Wafat 2018.', 'pahlawan.php?id=86', 'uploads/pahlawan/1778568719_9633.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(87, 'Paus Yohanes Paulus II', 'Paus asal Polandia (1978-2005). Lahir 1920. Wafat 2005.', 'pahlawan.php?id=87', 'uploads/pahlawan/1778568654_1297.jpg', 'Polandia', '2026-05-12 06:28:53'),
(88, 'Elvis Presley', 'Raja musik rock and roll. Lahir 1935. Wafat 1977.', 'pahlawan.php?id=88', 'uploads/pahlawan/1778568554_9591.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(89, 'The Beatles', 'Grup band legendaris asal Inggris. Aktif 1960-1970.', 'pahlawan.php?id=89', 'uploads/pahlawan/1778568479_5228.jpg', 'Inggris', '2026-05-12 06:28:53'),
(90, 'Bob Marley', 'Musisi reggae legendaris. Lahir 1945. Wafat 1981.', 'pahlawan.php?id=90', 'uploads/pahlawan/1778568342_1575.jpg', 'Jamaika', '2026-05-12 06:28:53'),
(91, 'Muhammad Ali', 'Petinju legendaris. Lahir 1942. Wafat 2016.', 'pahlawan.php?id=91', 'uploads/pahlawan/1778568283_6911.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(92, 'Michael Jordan', 'Legenda bola basket. Lahir 1963.', 'pahlawan.php?id=92', 'uploads/pahlawan/1778568225_3790.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(93, 'Pele', 'Pesepak bola legendaris. Lahir 1940. Wafat 2022.', 'pahlawan.php?id=93', 'uploads/pahlawan/1778568152_1582.jpg', 'Brasil', '2026-05-12 06:28:53'),
(94, 'Diego Maradona', 'Pesepak bola legendaris. Lahir 1960. Wafat 2020.', 'pahlawan.php?id=94', 'uploads/pahlawan/1778568091_2985.jpg', 'Argentina', '2026-05-12 06:28:53'),
(95, 'Usain Bolt', 'Sprinter tercepat dunia. Lahir 1986.', 'pahlawan.php?id=95', 'uploads/pahlawan/1778567968_9508.jpg', 'Jamaika', '2026-05-12 06:28:53'),
(96, 'Stephen Hawking', 'Fisikawan teori terkenal. Lahir 1942. Wafat 2018.', 'pahlawan.php?id=96', 'uploads/pahlawan/1778567888_1751.jpg', 'Inggris', '2026-05-12 06:28:53'),
(97, 'Mark Zuckerberg', 'Pendiri Facebook. Lahir 1984.', 'pahlawan.php?id=97', 'uploads/pahlawan/1778567789_2389.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(98, 'Steve Jobs', 'Tokoh pendiri Apple. Lahir 1955. Wafat 2011.', 'pahlawan.php?id=98', 'uploads/pahlawan/1778567728_4686.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(99, 'Bill Gates', 'Pendiri Microsoft dan filantropis. Lahir 1955.', 'pahlawan.php?id=99', 'uploads/pahlawan/1778567635_4731.jpg', 'Amerika Serikat', '2026-05-12 06:28:53'),
(100, 'Elon Musk', 'Pengusaha teknologi (Tesla', 'pahlawan.php?id=100', 'uploads/pahlawan/1778567561_9632.jpg', 'Afrika Selatan', '2026-05-12 06:28:53');

-- --------------------------------------------------------

--
-- Table structure for table `pencarian_log`
--

CREATE TABLE `pencarian_log` (
  `id` int(11) NOT NULL,
  `keyword` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postingan_komunitas`
--

CREATE TABLE `postingan_komunitas` (
  `id` int(11) NOT NULL,
  `komunitas_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `konten` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `like_count` int(11) DEFAULT 0,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pesan` text NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`id`, `nama`, `email`, `pesan`, `tanggal`) VALUES
(4, 'Nasya Adinda Rahayu', 'nasyaadindarahayu@gmail.com', 'halooo min', '2026-05-18 02:57:46');

-- --------------------------------------------------------

--
-- Table structure for table `stickers`
--

CREATE TABLE `stickers` (
  `id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `kategori` varchar(100) DEFAULT 'umum',
  `uploaded_by` varchar(100) DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stickers`
--

INSERT INTO `stickers` (`id`, `file_name`, `deskripsi`, `kategori`, `uploaded_by`, `tanggal`) VALUES
(1, '1778741615_download__1_-removebg-preview.png', 'bunga', 'lucu', 'mimiN', '2026-05-14 06:53:35'),
(2, '1778742218_download__3_-removebg-preview.png', 'kucing', 'lucu', 'mimiN', '2026-05-14 07:03:38'),
(3, '1778742251_download__4_-removebg-preview.png', 'laut', 'lucu', 'mimiN', '2026-05-14 07:04:11'),
(4, '1778742271_download__5_-removebg-preview.png', 'jamur', 'lucu', 'mimiN', '2026-05-14 07:04:31'),
(5, '1778742295_Ebay_Kleinanzeigen-removebg-preview.png', 'gajah', 'lucu', 'mimiN', '2026-05-14 07:04:55'),
(6, '1778742318_icône_de_feu_de_joie_plasma_bleu_pixel_brûlant__feu_flamboyant_avec_une_flamme_centrale_rougeoyante_après_une_explosion_puissante_avec_des_étincelles_vectorielles_volantes_-removebg-preview.png', 'api', 'lucu', 'mimiN', '2026-05-14 07:05:18');

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `profile` varchar(100) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `balasan` text DEFAULT NULL,
  `balasan_tanggal` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id`, `username`, `profile`, `pesan`, `tanggal`, `balasan`, `balasan_tanggal`) VALUES
(1, 'Mochammad Rayhan', 'profile2.jpeg', 'y bgs bgt', '2026-04-21 07:44:04', 'mks', '2026-04-21 08:18:17'),
(2, 'Nasya Adinda Rahayu', 'profile8.jpg', 'bagus\r\n', '2026-05-05 06:57:57', 'hai @Nasya Adinda Rahayu !', '2026-05-12 07:41:26');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profile` varchar(100) DEFAULT 'default.jpg',
  `role` enum('user','admin') DEFAULT 'user',
  `bio` text DEFAULT NULL,
  `tanggal_bergabung` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `profile`, `role`, `bio`, `tanggal_bergabung`) VALUES
(5, 'mimiN', '$2y$10$RdEXCFiRMN5x8nVjzb1arerFC65vxBW.CIc5oQCb/JCar9yOLic.u', 'admin_nasnews.png', 'admin', 'Admin of Nas.News', '2026-04-26 03:55:29'),
(7, 'Nasya Adinda Rahayu', '$2y$10$pj7ECj6awI1xcEKebLOtEOT6tTY.eQLke6irIhZQl7vSZMySEjBnK', 'profile8.jpg', 'user', 'caleb\'s wifey :o', '2026-05-05 05:53:25'),
(8, 'Captain Caleb', '$2y$10$6ONH/SIDO0eb.8uOn1yZ8OAzk0koeY2v5LYpNEVwTa0w549lnlZee', 'profile8.jpg', 'user', NULL, '2026-05-05 06:20:48'),
(9, 'Xia Yizhou', '$2y$10$gdJW.qIl5.XpjkeiqTNF4OGhHy8UgXRMj30kOTF3aoO.ccx7u0xK6', 'profile3.jpeg', 'user', NULL, '2026-05-05 06:23:20'),
(10, 'Vidya', '$2y$10$OW1kfJOE3JNAjnMUYk/1n.ymb801AqIPzUmb8IEyB5vLOZglK3zVa', 'profile5.jpeg', 'user', NULL, '2026-05-05 06:58:41'),
(11, 'Rehan', '$2y$10$rKcttzvzFkjMiwFg5JdrKuV/Q6m9alPmMUNmj/90GcpLhVPJff3XW', 'profile2.jpeg', 'user', NULL, '2026-05-12 07:38:41'),
(12, 'oke', '$2y$10$Wrw1R7pRNXIWLSI6JVw5k.puKsk93VbL.Yc7C1tuRIQEz40m5m84u', 'profile4.jpeg', 'user', NULL, '2026-05-14 04:25:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_komunitas`
--
ALTER TABLE `anggota_komunitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `komunitas_id` (`komunitas_id`);

--
-- Indexes for table `komentar_postingan`
--
ALTER TABLE `komentar_postingan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `postingan_id` (`postingan_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `komunitas`
--
ALTER TABLE `komunitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komunitas_pesan`
--
ALTER TABLE `komunitas_pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laporan_bug`
--
ALTER TABLE `laporan_bug`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_postingan`
--
ALTER TABLE `like_postingan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_like` (`postingan_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pahlawan`
--
ALTER TABLE `pahlawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pencarian_log`
--
ALTER TABLE `pencarian_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `postingan_komunitas`
--
ALTER TABLE `postingan_komunitas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `komunitas_id` (`komunitas_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `saran`
--
ALTER TABLE `saran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stickers`
--
ALTER TABLE `stickers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_komunitas`
--
ALTER TABLE `anggota_komunitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `komentar_postingan`
--
ALTER TABLE `komentar_postingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `komunitas`
--
ALTER TABLE `komunitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `komunitas_pesan`
--
ALTER TABLE `komunitas_pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `laporan_bug`
--
ALTER TABLE `laporan_bug`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `like_postingan`
--
ALTER TABLE `like_postingan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pahlawan`
--
ALTER TABLE `pahlawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `pencarian_log`
--
ALTER TABLE `pencarian_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `postingan_komunitas`
--
ALTER TABLE `postingan_komunitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `saran`
--
ALTER TABLE `saran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `stickers`
--
ALTER TABLE `stickers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_komunitas`
--
ALTER TABLE `anggota_komunitas`
  ADD CONSTRAINT `anggota_komunitas_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `anggota_komunitas_ibfk_2` FOREIGN KEY (`komunitas_id`) REFERENCES `komunitas` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `komentar_postingan`
--
ALTER TABLE `komentar_postingan`
  ADD CONSTRAINT `komentar_postingan_ibfk_1` FOREIGN KEY (`postingan_id`) REFERENCES `postingan_komunitas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `komentar_postingan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `like_postingan`
--
ALTER TABLE `like_postingan`
  ADD CONSTRAINT `like_postingan_ibfk_1` FOREIGN KEY (`postingan_id`) REFERENCES `postingan_komunitas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `like_postingan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pencarian_log`
--
ALTER TABLE `pencarian_log`
  ADD CONSTRAINT `pencarian_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `postingan_komunitas`
--
ALTER TABLE `postingan_komunitas`
  ADD CONSTRAINT `postingan_komunitas_ibfk_1` FOREIGN KEY (`komunitas_id`) REFERENCES `komunitas` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `postingan_komunitas_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
