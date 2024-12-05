-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 05, 2024 at 09:45 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plantanist`
--

-- --------------------------------------------------------

--
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `id` int NOT NULL,
  `user_id` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `accuracy` float NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`id`, `user_id`, `name`, `plant`, `accuracy`, `description`, `image`, `create_at`) VALUES
(4, '8RIVuflPQyQsQaen558djwLaCDH2', 'Late Blight', 'Potato', 0.86, 'Late blight, disebabkan oleh jamur *Phytophthora infestans*, adalah penyakit kentang yang sangat merusak dan dapat menyebabkan kegagalan panen secara total jika tidak dikendalikan.  Penyakit ini menyerang semua bagian tanaman kentang di atas tanah, termasuk daun, batang, bunga, dan umbi.\n\n**Gejala:**\n\n* **Pada daun:** Awalnya muncul bercak-bercak hijau gelap atau cokelat keunguan, yang kemudian membesar dan menjadi nekrotik (mati).  Bercak ini seringkali memiliki tepi tidak beraturan dan dapat menutupi sebagian besar daun dalam waktu singkat.  Pada kondisi lembap, lapisan putih keabu-abuan (spora jamur) dapat terlihat pada bagian bawah daun yang terkena infeksi.\n* **Pada batang:** Bercak-bercak serupa muncul pada batang, yang dapat menyebabkan layu dan kematian bagian tanaman.\n* **Pada umbi:** Infeksi pada umbi ditandai dengan bercak-bercak cokelat gelap, lunak, dan berlendir yang seringkali terendam air.  Bercak ini dapat meluas ke seluruh umbi, menyebabkan pembusukan.  Infeksi umbi dapat terjadi baik di lapangan maupun selama penyimpanan.\n\n**Siklus Penyakit:**\n\n* **Inokulum:** Jamur *P. infestans* dapat bertahan hidup dalam bentuk oospora (spora istirahat) di dalam tanah atau pada sisa-sisa tanaman yang terinfeksi.  Ia juga dapat bertahan hidup sebagai miselium pada umbi yang terinfeksi.\n* **Infeksi:** Spora jamur (spora) tersebar melalui angin, air hujan, atau percikan air.  Spora berkecambah pada permukaan daun ketika kondisi lembap (kelembaban tinggi dan suhu sejuk, idealnya 10-22°C) dan menembus jaringan tanaman.\n* **Penyebaran:** Setelah infeksi, jamur tumbuh dengan cepat di dalam jaringan tanaman dan menghasilkan spora baru yang menyebar ke bagian tanaman lainnya dan ke tanaman di sekitarnya.  Siklus ini dapat berulang beberapa kali dalam satu musim tanam.\n\n\n**Pengendalian:**\n\nPengendalian late blight memerlukan pendekatan terpadu, termasuk:\n\n* **Pencegahan:** Penggunaan varietas kentang yang tahan atau resisten terhadap late blight.  Rotasi tanaman untuk menghindari akumulasi inokulum di tanah.  Sanitasi lahan dengan menghilangkan sisa-sisa tanaman yang terinfeksi.\n* **Penggunaan Fungisida:** Aplikasi fungisida yang tepat waktu dan efektif sangat penting untuk mengendalikan penyakit ini.  Pemantauan secara teratur untuk mendeteksi gejala dini sangat penting untuk menentukan waktu aplikasi fungisida yang tepat.\n* **Pengelolaan air:**  Irigasi yang tepat dapat mengurangi kelembaban yang diperlukan untuk perkembangan jamur.  Hindari penyiraman dari atas.\n\n**Catatan:** Akurasi 0.86 menunjukkan bahwa deskripsi ini mengandung informasi yang sebagian besar akurat, tetapi mungkin ada beberapa detail kecil yang mungkin perlu diperbaiki atau diperjelas berdasarkan penelitian terbaru atau informasi spesifik lokasi.  Konsultasi dengan ahli pertanian lokal selalu disarankan untuk mendapatkan strategi pengendalian yang paling efektif untuk area tertentu.\n', 'https://lh3.googleusercontent.com/a/ACg8ocJgtWOc9ZZjnYcKrM-XGPmIacOX9XHlX6nsZRFCjiShosGoS-U8=s96-c', '2024-12-05 15:56:28'),
(5, '8RIVuflPQyQsQaen558djwLaCDH2', 'Fungus', 'Tomato', 0.97, 'Penyakit jamur pada tanaman tomat disebabkan oleh berbagai spesies jamur patogen yang menyerang berbagai bagian tanaman, mulai dari akar hingga buah.  Kerusakan yang ditimbulkan beragam, mulai dari bercak-bercak kecil hingga pembusukan total tanaman.  Akurasi diagnosis dan pengendalian sangat bergantung pada identifikasi spesies jamur penyebabnya.  Berikut beberapa penyakit jamur umum pada tomat dan karakteristiknya:\n\n**1. Layu Fusarium (Fusarium oxysporum f. sp. lycopersici):**  Merupakan penyakit serius yang menyerang akar dan pembuluh xilem.  Gejala awal meliputi layu pada daun bagian bawah, yang kemudian menyebar ke seluruh tanaman.  Daun layu bahkan saat tanah cukup lembap.  Pembuluh xilem pada batang akan berwarna cokelat kehitaman jika diiris.  Tidak ada bercak-bercak pada daun.  Penyakit ini bersifat persisten di dalam tanah dan sulit dikendalikan.\n\n**2. Layu Verticillium (Verticillium dahliae atau Verticillium albo-atrum):**  Mirip dengan layu Fusarium, tetapi perkembangannya lebih lambat.  Gejala meliputi layu bertahap, dimulai pada satu sisi tanaman.  Daun layu dan menguning, sering kali hanya pada satu sisi.  Pembuluh xilem juga akan berwarna kecokelatan jika diiris.  Penyakit ini juga persisten di tanah.\n\n**3. Antraknosa (Colletotrichum spp.):**  Menyebabkan bercak-bercak cekung berwarna gelap pada buah, batang, dan daun.  Bercak sering kali dikelilingi oleh lingkaran konsentrik.  Pada buah, bercak akan membesar dan menyebabkan pembusukan.  Kelembapan tinggi mendukung perkembangan penyakit ini.\n\n**4. Busuk Daun Septoria (Septoria lycopersici):**  Menyebabkan bercak-bercak kecil berwarna cokelat keabu-abuan pada daun, dikelilingi oleh halo berwarna gelap.  Bercak-bercak ini dapat bergabung dan menyebabkan defoliasi.  Kondisi lembap dan basah mendukung penyebaran penyakit.\n\n**5. Embun Tepung (Oidium lycopersici atau Leveillula taurica):**  Menyebabkan lapisan putih tepung pada daun, batang, dan buah.  Lapisan putih ini berupa miselium dan spora jamur.  Serangan berat dapat menyebabkan daun menguning, layu, dan rontok.\n\n**6. Busuk Buah Phytophthora (Phytophthora infestans):**  Meskipun lebih dikenal menyerang kentang, Phytophthora juga bisa menyerang tomat.  Menyebabkan bercak-bercak cokelat kehitaman dan berair pada buah, terutama di dekat pangkal tangkai buah.  Pada kondisi lembap, bercak dapat membesar dengan cepat dan menyebabkan pembusukan total.  Serangan juga dapat terjadi pada daun dan batang.\n\n**Pengendalian:**  Pengendalian penyakit jamur pada tomat meliputi tindakan preventif dan kuratif.  Tindakan preventif meliputi penggunaan benih bebas penyakit, rotasi tanaman, sanitasi lahan, pemangkasan untuk meningkatkan sirkulasi udara, dan pemilihan varietas tahan penyakit.  Tindakan kuratif meliputi aplikasi fungisida, yang harus dilakukan sesuai petunjuk dan dengan pertimbangan dampak lingkungan.  Identifikasi akurat patogen penyebab sangat penting untuk menentukan fungisida yang efektif.\n\n**Catatan:**  Deskripsi di atas memberikan gambaran umum.  Untuk diagnosis yang akurat, diperlukan identifikasi mikroskopis patogen dan pemeriksaan gejala secara detail. Konsultasikan dengan ahli fitopatologi untuk diagnosis dan rekomendasi pengendalian yang tepat.\n', 'https://lh3.googleusercontent.com/a/ACg8ocIeaZQAV40E7YUo3jGdYTYWiGb82AZv_kUedzMhbiA4xq84G9Dk=s96-c', '2024-12-05 16:00:30'),
(6, '8RIVuflPQyQsQaen558djwLaCDH2', 'Late Blight', 'Potato', 0.77, 'Late blight, disebabkan oleh jamur *Phytophthora infestans*, merupakan penyakit serius yang menyerang tanaman kentang ( *Solanum tuberosum* ) dan tanaman solanaceae lainnya. Penyakit ini ditandai oleh bercak-bercak cokelat kehitaman pada daun dan batang, yang seringkali disertai dengan lapisan putih keabu-abuan pada bagian bawah daun yang lembap,  merupakan struktur reproduksi seksual dari jamur (sporangia).  Gejala awalnya dapat muncul sebagai bercak-bercak kecil, berair, dan berwarna hijau gelap pada daun, yang kemudian membesar dan berubah menjadi cokelat kehitaman. Pada kondisi lembap,  bercak akan meluas dengan cepat, hingga seluruh tanaman layu dalam waktu singkat.\n\nPenyakit ini dapat menyerang semua bagian tanaman di atas tanah, termasuk daun, batang, bunga, dan buah (kentang).  Pada umbi, gejala awalnya seringkali tidak terlihat, namun secara internal umbi akan mengalami pembusukan yang lunak, berwarna cokelat tua hingga hitam, dan berbau tidak sedap. Pembusukan ini dapat terjadi baik di lahan maupun selama penyimpanan.\n\nPenyebaran penyakit ini sangat efektif dibantu oleh spora yang tersebar melalui angin, air hujan, irigasi, dan bahkan alat pertanian yang terkontaminasi.  Kondisi lingkungan yang lembap, suhu dingin (optimal sekitar 10-20°C), dan kelembapan tinggi sangat mendukung perkembangan dan penyebaran *P. infestans*.  Siklus hidup jamur ini relatif singkat, memungkinkan terjadinya infeksi dan penyebaran yang cepat dalam waktu yang singkat.\n\nPengendalian late blight memerlukan pendekatan terpadu,  meliputi penggunaan varietas kentang yang resisten, rotasi tanaman, sanitasi lahan, dan pengendalian kimiawi (fungisida) secara tepat dan terarah.  Penggunaan fungisida harus sesuai rekomendasi dan dengan memperhatikan dampak lingkungan.  Pemantauan secara berkala kondisi tanaman dan cuaca sangat penting untuk mendeteksi dini dan mencegah penyebaran penyakit secara meluas.\n\n\n**Perlu dicatat:** Akurasi 0.77 mengindikasikan bahwa deskripsi ini mungkin masih memiliki beberapa kelemahan atau kekurangan detail dibandingkan dengan informasi yang sangat komprehensif dan sempurna.  Beberapa faktor seperti detail genetika jamur, mekanisme patogenesis yang detail, dan berbagai strategi pengendalian yang lebih spesifik mungkin belum sepenuhnya tercakup.  Informasi ini ditujukan untuk pemahaman umum dan bukan sebagai panduan definitif dalam manajemen penyakit.\n', 'https://lh3.googleusercontent.com/a/ACg8ocIeaZQAV40E7YUo3jGdYTYWiGb82AZv_kUedzMhbiA4xq84G9Dk=s96-c', '2024-12-05 16:03:42'),
(7, '8RIVuflPQyQsQaen558djwLaCDH2', 'Late Blight', 'Potato', 0.77, 'Late blight, disebabkan oleh jamur *Phytophthora infestans*, adalah penyakit yang sangat merusak pada tanaman kentang (Solanum tuberosum).  Penyakit ini dapat menyebabkan kerugian hasil panen yang signifikan, bahkan kegagalan panen total jika tidak dikendalikan.  \n\nGejala awal biasanya muncul pada daun sebagai bercak-bercak kehijauan gelap, yang kemudian berkembang menjadi lesi berwarna cokelat kehitaman,  bertekstur berair dan  berkembang dengan cepat dalam kondisi lembap. Pada cuaca lembap, lapisan putih keabu-abuan (spora jamur) sering terlihat di bagian bawah daun yang terinfeksi.  Infeksi dapat menyebar dengan cepat dari daun ke batang, umbi, dan bahkan bunga.  Umbi yang terinfeksi akan menunjukkan bercak cokelat kehitaman, yang seringkali membusuk dari dalam ke luar dan mengeluarkan bau yang tidak sedap.  Bercak-bercak ini bisa cukup dangkal, atau dapat menembus jauh ke dalam umbi.\n\nPenyebaran penyakit ini sangat dipengaruhi oleh kondisi lingkungan.  Kelembapan tinggi (kelembaban udara di atas 90%) dan suhu sedang (sekitar 10-20°C)  merupakan kondisi ideal bagi perkembangan *P. infestans*.  Spora jamur dapat tersebar melalui angin, percikan air, atau alat pertanian yang terkontaminasi.  Siklus hidup jamur ini cukup kompleks,  dengan kemampuan untuk bertahan hidup dalam tanah dan puing-puing tanaman selama beberapa waktu.\n\nPengendalian late blight memerlukan pendekatan terpadu.  Hal ini termasuk penggunaan varietas kentang yang tahan, praktik budidaya yang baik (misalnya, rotasi tanaman, penjarangan tanaman untuk meningkatkan sirkulasi udara, dan pengelolaan air irigasi), dan aplikasi fungisida yang tepat waktu dan efektif.  Deteksi dini dan intervensi cepat sangat penting untuk membatasi penyebaran penyakit dan meminimalkan kerugian.  Pemantauan cuaca dan penggunaan model prediksi penyakit dapat membantu dalam menentukan waktu aplikasi fungisida yang optimal.  Namun, penting untuk diingat bahwa resistensi fungisida dapat berkembang, sehingga rotasi fungisida dengan mekanisme kerja yang berbeda sangat dianjurkan.\n', 'https://lh3.googleusercontent.com/a/ACg8ocIeaZQAV40E7YUo3jGdYTYWiGb82AZv_kUedzMhbiA4xq84G9Dk=s96-c', '2024-12-05 16:07:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diagnoses`
--
ALTER TABLE `diagnoses`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
