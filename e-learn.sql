-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 02, 2022 at 03:20 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-learn`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `admin_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `email`, `user_id`) VALUES
(1, 'Admin 1', 'admin1@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE `class` (
  `id` int(10) NOT NULL,
  `class_name` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `class_name`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Table structure for table `class_attendance`
--

DROP TABLE IF EXISTS `class_attendance`;
CREATE TABLE `class_attendance` (
  `id` int(10) NOT NULL,
  `class_id` int(10) NOT NULL,
  `teacher_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_attendance`
--

INSERT INTO `class_attendance` (`id`, `class_id`, `teacher_id`) VALUES
(2, 1, 52),
(3, 1, 53),
(4, 2, 53),
(5, 3, 53),
(6, 1, 1),
(7, 4, 1),
(8, 1, 2),
(9, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

DROP TABLE IF EXISTS `materi`;
CREATE TABLE `materi` (
  `id` int(10) NOT NULL,
  `materi_desc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `materi_desc`, `module_id`) VALUES
(1, '\"Sel pertama kali ditemukan oleh Robert Hooke seorang ilmuwan berkebangsaan Inggris. Berdasarkan penemuan Robert Hooke, berkembanglah teori-teori mengenai sel. Beberapa saintis turut memberikan kontribusi terhadap konsep sel. Apa yang dimaksud dengan sel? Bagaimana komponen kimiawi penyusun sel?\r\n\r\nSel sangat mendasar bagi ilmu Biologi sebagaimana atom bagi ilmu Kimia. Seluruh organisme terdiri atas sel. Dalam hierarki organisasi biologis, sel merupakan kumpulan materi paling sederhana yang dapat hidup (Campbell, Reece, & Mitchel: 2002). Jadi, sel merupakan unit struktural dan fungsional terkecil makhluk hidup. Sel sebagai unit struktural terkecil berarti bahwa sel merupakan penyusun yang mendasar bagi tubuh makhluk hidup. Sel tidak dapat dibagi-bagi lagi menjadi bagian yang lebih kecil dan dapat berdiri sendiri. Adapun sel dikatakan sebagai unit fungsional terkecil berarti bahwa sel dapat melakukan berbagai proses kehidupan, misalnya respirasi, transportasi,reproduksi, ekskresi, sekresi, dan sintesis. Selain itu, sel juga merupakan unit hereditas makhluk hidup yang menurunkan sifat genetis dari satu generasi kepada generasi berikutnya.\"\r\n', 1),
(3, '<p>Seluruh kegiatan kehidupan sel merupakan akibat dari reaksi kimia yang berlangsung di dalam sel. Senyawa kimia penyusun sel disebut protoplasma yangmerupakan substansi kompleks. Secara garis besarnya, komponen kimia sebuah sel terdiri atas unsur makro, unsur mikro, senyawa organik, dan senyawa anorganik.<br />\n1. Unsur Makro<br />\nUnsur makro merupakan unsur terbesar yang menyusun sebuah sel. Unsur makro terdiri atas lima unsur utama, yaitu oksigen (O) sebanyak 62%, karbon (C) sebanyak 20%, hidrogen (H) sebanyak 10%, nitrogen (N) sebanyak 10%, dan kalium (K) sebanyak 25%. Selain itu, juga terdapat sulfur (S), fosfor (P), kalsium<br />\n(Ca), magnesium (Mg), dan natrium (Na). Dari berbagai unsur tersebut, unsur karbon, hidrogen, dan oksigen merupakan unsur paling utama serta dapat bersenyawa membentuk molekul karbohidrat, lemak, asam nukleat, dan protein.<br />\n2. Unsur Mikro<br />\nUnsur mikro merupakan unsur yang terdapat dalam jumlah sangat sedikit. Beberapa jenis unsur mikro dalam sel, antara lain besi (Fe), tembaga (Cu), kobalt (Co), mangan (Mn), seng (Zn), molibdenum (Mo), boron (Bo), dan silikon (Si).<br />\n3. Senyawa Organik<br />\nSenyawa organik terdiri atas mikromolekul dan makromolekul. Mikromolekul terdiri atas asam amino, nukleotida, asam lemak, dan glukosa. Makromolekul terdiri atas karbohidrat, protein, lemak, dan asam nukleat.<br />\na. Karbohidrat<br />\nKarbohidrat tersusun dari unsur karbon (C), hidrogen (H), dan oksigen (O). Karbohidrat terdiri atas rangkaian molekul-molekul gula yang disebut monosakarida. Polisakarida merupakan untaian monosakarida yang sangat panjang. Untaian ini dapat lurus maupun bercabang-cabang. Polisakarida digolongkan menjadi polisakarida struktural dan polisakarida nutrien. Beberapa contoh polisakarida struktural yaitu selulosa pembentuk dinding sel tumbuhan, asam hialuronat sebagai salah satu komponen substansi antara sel pada jaringan ikat, serta glikolipida dan glikoprotein yang merupakan struktur penting dari membran sel. Beberapa contoh polisakarida nutrien yaitu amilum, yang terdapat di dalam sel tumbuhan dan bakteri, glikogen di dalam sel hewan, serta paramilum di dalam beberapa jenis sel Protozoa.<br />\nb. Protein<br />\nProtein merupakan senyawa organik terbesar yang menyusun sel dan merupakan polimer dari asam amino yang saling berikatan dengan ikatan peptida. Protein tersusun dari karbon, hidrogen, oksigen, dan nitrogen, serta kadang-kadang terdapat sulfur dan fosfor sebagai unsur tambahan. Fungsi protein di dalam sel di antaranya membentuk membran plasma Bersama lemak dan karbohidrat, mengatur permeabilitas membran sel, mengatur keseimbangan kadar asam basa dalam sel, protein yang berupa enzim bertindak sebagai katalisator berbagai reaksi kimia, serta berperan dalam Gerakan dalam sel.<br />\nc. Lipid (Lemak)<br />\nLipid tersusun dari unsur karbon, hidrogen, dan oksigen. Lipid merupakan senyawa yang bersifat &nbsp;hidrofobik dan larut dalam pelarut organik. Di dalam sel terdapat bermacam-macam lipid di antaranya fosfolipid, glikolipid, dan steroid.<br />\nd. Nukleotida dan Asam Nukleat<br />\nAsam nukleat adalah makromolekul yang sangat penting untuk kelangsungan hidup sel. Asam nukleat terdiri atas dua macam, yaitu asam deoksiribosa nukleat (DNA) dan asam ribosa nukleat (RNA). DNA merupakan penyimpan informasi genetis dalam sel dan bersama-sama dengan protein histon membentuk kromosom. Satu asam nukleat terdiri atas nukleotida-nukleotida yang saling berikatan dengan ikatan fosfodiester.</p>\n\n<p>4. Senyawa Anorganik<br />\nSenyawa anorganik yang menjadi komponen kimiawi sel di antaranya air, garam-garam mineral, dan gas.<br />\na. Air<br />\nAir merupakan senyawa penyusun sel terbesar (50&ndash;60% berat sel). Air berperan sangat penting pada kehidupan sel maupun kehidupan semua organisme. Air merupakan pelarut dan pengangkut senyawa-senyawa yang diperlukan sel maupun limbah yang harus dibuang. Air juga berperan sebagai media berlangsungnya reaksi-reaksi kimia di dalam sel.<br />\nb. Garam-Garam Mineral<br />\nGaram-garam mineral di dalam sel terdapat dalam bentuk ion positif (kation) dan ion negatif (anion). Beberapa contoh garam mineral dalam sel antara lain NaCl, MgCl, CaSO4, dan NaHCO3. Garam-garam mineral tersebut berfungsi untuk mempertahankan tekanan osmotik dan keseimbangan asam basa dalam sel.<br />\nc. Gas<br />\nBeberapa jenis gas yang terlibat dalam aktivitas sel antara lain karbon dioksida (CO2), oksigen (O2), dan amonia (NH3).</p>\n', 2),
(4, '<p>Berdasarkan jumlah sel penyusunnya, organisme dibedakan menjadi organisme uniseluler dan multiseluler. Organisme uniseluler adalah organisme yang hanya terdiri atas satu sel. Adapun organisme multiseluler adalah organisme yang tubuhnya tersusun dari banyak sel. Sel tumbuhan dan sel hewan termasuk sel eukariotik, sedangkan sel bakteri termasuk sel prokariotik. Apa yang dimaksud dengan sel eukariotik dan prokariotik?<br />\n1. Struktur Sel Prokariotik dan Eukariotik<br />\nBerdasarkan strukturnya, sel dapat dibedakan menjadi dua jenis yaitu sel prokariotik dan sel eukariotik.<br />\na. Sel Prokariotik<br />\nSel prokariotik yaitu sel yang tidak memiliki membran inti sehingga inti sel berbatasan langsung dengan sitoplasma. Makhluk hidup yang termasuk prokariotik adalah bakteri dan ganggang biru (Cyanobacteria). Struktur umum sel prokariotik sebagai berikut.<br />\n1) Dinding selnya tersusun dari peptidoglikan, lipid, dan protein. Dinding sel berfungsi sebagai pelindung dan pemberi bentuk tubuh.<br />\n2) Membran plasma tersusun dari karbohidrat, lemak, dan protein. Membran plasma berfungsi sebagai pelindung molekuler sel terhadap lingkungan di sekitarnya.<br />\n3) Sitoplasma tersusun dari air, protein, lipid, mineral, dan enzim-enzim yang berfungsi untuk mencerna<br />\nmakanan secara intraseluler dan untuk melakukan proses metabolisme sel. Pada sitoplasma terdapat DNA dan RNA, ribosom, serta mesosom. Mesosom berfungsi sebagai penghasil energi.<br />\nb. Sel Eukariotik<br />\nSel eukariotik merupakan sel yang sudah memiliki membran inti (nukleus dibungkus membran nukleus) dan sistem endomembran. Sel eukariotik terdapat pada sel tumbuhan dan sel hewan.<br />\nStruktur sel eukariotik terdiri atas tiga komponen utama yaitu membran plasma, sitoplasma, dan organel-organel sel.<br />\n1) Membran Plasma<br />\nMembran plasma bersifat selektif permeabel (semipermeabel) yang artinya membran plasma dapat dilalui oleh molekul atau ion tertentu.<br />\n2) Sitoplasma<br />\nSitoplasma adalah cairan sel yang berada di luar membran inti. Komponen utama penyusun sitoplasma yaitu sitosol, substansi genetik, sitoskeleton, dan organel-organel sel.<br />\nSitoplasma berfungsi sebagai sumber bahan kimia penting bagi sel dan tempat<br />\nterjadinya reaksi metabolisme.<br />\n3) Organel-Organel Sel<br />\nOrganel-organel sel terdapat dalam sitoplasma. Macam-macam organel penyusun sel sebagai berikut.<br />\na) Inti Sel (Nukleus)<br />\nNukleus merupakan organel terbesar yang berada dalam sel dengan diameter sekitar 10 mm. Nukleus berfungsi sebagai pengatur pembelahan sel, pengendali seluruh kegiatan sel, dan pembawa informasi genetik.<br />\nb) Retikulum Endoplasma (RE)<br />\nRetikulum endoplasma tersusun oleh membran yang berbentuk seperti jala. RE memiliki beberapa fungsi berikut.<br />\n(1) Menyintesis lemak dan kolesterol (RE kasar dan RE halus).<br />\n(2) Menampung protein yang disintesis oleh ribosom (RE kasar).<br />\n(3) Transportasi molekul-molekul (RE kasar dan RE halus).<br />\n(4) Menetralkan racun (detoksifikasi).<br />\nc) Ribosom<br />\nRibosom merupakan struktur unit gabungan protein dengan RNA ribosom (disingkat RNA-r). Ribosom terdiri atas dua subunit, yaitu subunit kecil dan subunit besar. Ribosom berperan dalam sintesis protein.<br />\n4) Kompleks Golgi<br />\nKompleks Golgi mempunyai hubungan yang erat dengan RE dalam sintesis protein. Kompleks Golgi mempunyai beberapa fungsi berikut.<br />\na) Tempat sintesis polisakarida seperti mukus, selulosa, dan hemiselulosa.<br />\nb) Membentuk membran plasma.<br />\nc) Membentuk kantong sekresi untuk membungkus zat yang akan dikeluarkan sel.<br />\nd) Membentuk akrosom pada sperma, kuning telur pada sel telur, dan lisosom.<br />\n5) Lisosom<br />\nLisosom merupakan kantong membran yang berisi enzim-enzim hidrolitik (lisozim) seperti enzim protease, lipase, nuklease, fosfatase, dan enzim pencerna yang lain. Beberapa fungsi lisosom yaitu melakukan pencernaan intrasel, autofagi, eksositosis, dan autolisis.<br />\n6) Badan Mikro<br />\nBadan mikro terdiri atas dua tipe, yaitu peroksisom dan glioksisom. Peroksisom terdapat pada sel hewan, Fungi, dan tumbuhan. Peroksisom berperan dalam oksidasi substrat menghasilkan H2O2 yang selanjutnya dipecah menjadi H2O dan O2. Selain itu, peroksisom juga berperan dalam pengubahan lemak menjadi karbohidrat dan penguraian purin dalam sel. Adapun glioksisom berperan dalam metabolisme asam lemak dan sebagai tempat terjadinya siklus glioksilat.<br />\n7) Mitokondria<br />\nMitokondria memiliki dua jenis membran yaitu membran luar dan membran dalam. Membran dalam membentuk tonjolan-tonjolan yang disebut krista. Tonjolan-tonjolan tersebut berfungsi untuk memperluas permukaan agar penyerapan oksigen lebih efektif.<br />\nRuangan dalam mitokondria berisi cairan yang disebut matriks mitokondria. Di dalam matriks mitokondria terdapat enzim pernapasan, DNA, RNA, dan protein. Mitokondria berfungsi sebagai<br />\ntempat terjadinya respirasi seluler. Dalam respirasi seluler terjadi oksidasi makanan yang menghasilkan energi. Secara sederhana, reaksi oksidasi makanan dapat ditulis sebagai berikut.<br />\nC6H12O6 + 6O2 oksidasi makanan&rarr; 6CO2 + 6H2O + energi<br />\nBerkaitan dengan fungsi tersebut, mitokondria sering disebut the power house of cell.</p>\n', 3),
(5, '<p>2. Perbedaan Sel Hewan dengan Sel Tumbuhan<br />\nSel hewan dan sel tumbuhan termasuk sel eukariotik. Meskipun sama-sama sel eukariotik, kedua sel tersebut memiliki beberapa perbedaan pada organel-organel selnya secara spesifik.&nbsp;<br />\nBerdasarkan hasil pengamatan sel menggunakan mikroskop elektron dapat diketahui perbedaan antara sel hewan dengan sel tumbuhan. Sel hewan memiliki sentriol yang tidak dimiliki oleh sel tumbuhan. Adapun sel tumbuhan memiliki dinding sel, plastida, dan vakuola yang tidak dimiliki oleh sel hewan.<br />\na. Struktur Sel Tumbuhan<br />\nBagian-bagian sel yang hanya dimiliki oleh sel tumbuhan yaitu dinding sel, vakuola, dan plastida.<br />\n1) Dinding Sel<br />\nDinding sel merupakan lapisan terluar yang tersusun dari selulosa, hemiselulosa, dan pektin. Dinding sel berfungsi sebagai penyokong dan pelindung selaput plasma serta memelihara keseimbangan sel dari tekanan. Adanya dinding sel mengakibatkan bentuk sel tumbuhan relatif tetap.<br />\n2) Vakuola<br />\nVakuola atau rongga sel adalah organel sitoplasmik yang berisi cairan yang dibatasi membran tonoplas.<br />\nVakuola mempunyai beberapa fungsi sebagai berikut.<br />\na) Tempat menyimpan zat makanan seperti amilum dan gula.<br />\nb) Memasukkan air melalui tonoplast untuk membangun turgiditas sel bersama dinding sel.<br />\nc) Menyimpan pigmen.<br />\nd) Menyimpan minyak asiri.<br />\ne) Tempat penimbunan sisa metabolisme dan metabolit sekunder seperti Ca-oksalat, tanin, getah karet, dan alkaloid.<br />\n3) Plastida<br />\nBerdasarkan kandungan pigmen di dalamnya, plastida dibedakan menjadi tiga tipe yaitu kloroplas, kromoplas, dan leukoplas.<br />\na) Kloroplas<br />\nKloroplas yaitu plastida yang mengandung klorofil dan pigmen fotosintetik lainnya. Kloroplas tersusun dari membran luar dan membran dalam. Membran luar berfungsi mengatur keluar masuknya zat. Membran dalam membungkus cairan kloroplas yang disebut stroma. Membran dalam melipat ke arah dalam dan membentuk lembaran-lembaran yang disebut tilakoid. Pada tempat-tempat tertentu, tilakoid bertumpuk-tumpuk membentuk grana. Kloroplas berfungsi sebagai tempat berlangsungnya fotosintesis.<br />\nb) Kromoplas<br />\nKromoplas yaitu plastida yang mengandung pigmen nonfotosintetik. Beberapa pigmen yang terdapat dalam kromoplas yaitu xantofil dan karoten.<br />\nc) Leukoplas<br />\nLeukoplas adalah plastida yang tidak berwarna. Biasanya terdapat pada organ penyimpan makanan<br />\ncadangan seperti biji dan umbi. Ada tiga macam leukoplas yaitu amiloplas untuk menyimpan amilum, elaioplas (lipidoplas) untuk membentuk dan menyimpan lemak, serta proteoplas untuk menyimpan protein.<br />\nb. Struktur Sel Hewan<br />\nSel hewan memiliki dua sentriol di dalam sentrosom. Sentriol berperan dalam proses pembelahan sel. Saat pembelahan sel, tiap-tiap sentriol memisahkan diri menuju kutub yang berlawanan dan memancarkan benang-benang gelendong pembelahan yang akan menjerat kromosom.</p>\n', 4),
(6, '<p>Sel disebut sebagai unit fungsional terkecil dalam kehidupan karena di dalam sel berlangsung proses-proses kehidupan (bioproses).<br />\n1. Mekanisme Transpor Melalui Membran<br />\nPerpindahan molekul atau ion yang melewati membran ada dua macam yaitu transpor pasif dan transpor aktif.<br />\na. Transpor Pasif<br />\nTranspor pasif merupakan perpindahan molekul atau ion tanpa menggunakan energi sel. Perpindahan molekul tersebut terjadi secara spontan mengikuti gradien konsentrasi. Contoh transpor pasif yaitu difusi dan osmosis.<br />\nDifusi adalah perpindahan molekul-molekul zat dari konsentrasi tinggi ke konsentrasi rendah baik melalui membran plasma ataupun tidak. Difusi dibedakan menjadi dua yaitu difusi sederhana dan difusi terbantu. Difusi sederhana terjadi secara spontan, molekul zat akan berdifusi menyebar ke seluruh<br />\nruangan sampai dicapai kesetimbangan. Faktor-faktor yang memengaruhi proses difusi yaitu wujud materi, ukuran molekul, konsentrasi zat, dan suhu.<br />\nDifusi terbantu merupakan proses difusi dengan perantara protein pembawa dari konsentrasi tinggi ke konsentrasi rendah. Contoh mekanisme difusi terbantu yaitu proses molekul glukosa melewati membran.<br />\nOsmosis adalah perpindahan molekul-molekul pelarut (misal air) dari larutan berkonsentrasi rendah (hipotonik) ke larutan berkonsentrasi tinggi (hipertonik) melalui selaput (membran) semipermeabel. Jika pelarut yang digunakan berupa air, osmosis dapat berarti perpindahan molekul air melalui membran semipermeabel dari larutan yang kadar airnya tinggi ke larutan yang kadar airnya rendah.<br />\nAir akan masuk ke dalam sel jika konsentrasi larutan dalam sel tinggi sehingga terjadi endosmosis. Endosmosis pada sel hewan mengakibatkan kehancuran sel karena robeknya membran plasma (lisis). Endosmosis pada sel tumbuhan mengakibatkan sel dalam keadaan turgid. Sementara itu, air di dalam sel akan keluar jika konsentrasi larutan di luar sel tinggi dan terjadi eksosmosis. Eksosmosis pada hewan akan mengakibatkan pengerutan sel (krenasi). Eksosmosis pada tumbuhan akan mengakibatkan terlepasnya membran dari dinding sel yang disebut plasmolisis.<br />\nb. Transpor Aktif<br />\nTranspor aktif adalah transpor yang memerlukan energi untuk melawan gradien konsentrasi. Pada transpor aktif terjadi pemompaan molekul melewati membran dan melawan gradien konsentrasi. Contoh transpor aktif antara lain pompa natrium-kalium, endositosis, dan eksositosis.</p>\n', 5),
(7, '<p>2. Sintesis Protein dalam Sel<br />\nSelain mekanisme transpor melalui membran, di dalam sel juga terjadi sintesis protein. Sintesis protein berlangsung di ribosom. Bagaimana proses berlangsungnya sintesis protein dalam sel? Lakukan terlebih dahulu kegiatan berikut untuk mengetahui mekanisme sintesis protein dalam sel.<br />\nSintesis protein adalah proses penerjemahan gen menjadi urutan asam amino yang akan disintesis menjadi polipeptida (protein). Sintesis protein secara garis besar dibagi menjadi dua tahapan utama, yaitu proses pembuatan molekul mRNA pada inti sel (transkripsi) dan proses penerjemahan mRNA oleh tRNA serta perangkaian asam amino di ribosom (translasi).<br />\na. Transkripsi<br />\nProses transkripsi diawali dari sintesis RNA dari salah satu rantai DNA sense atau rantai cetakan. Adapun rantai DNA komplemennya disebut rantai antisense. Rentangan DNA yang ditranskripsi menjadi molekul RNA disebut unit transkripsi. Transkripsi terdiri atas tiga tahap yaitu inisiasi, elongasi, dan terminasi.<br />\n1) Inisiasi (Permulaan)<br />\nProses inisiasi dimulai dari promoter, yakni daerah DNA yang merupakan tempat melekatnya RNA polimerase. Promoter mencakup titik awal (start point) transkripsi yaitu nukleotida yang menunjukkan dimulainya sintesis protein (kodon start). Fungsi promoter untuk menentukan tempat dimulainya transkripsi dan menentukan satu rantai DNA yang akan digunakan sebagai cetakan.<br />\n2) Elongasi (Pemanjangan)<br />\nElongasi terjadi saat RNA bergerak di sepanjang pilinan ganda DNA terbuka secara berurutan. Enzim RNA polimerase menambahkan nukleotida dari molekul RNA yang sedang tumbuh di sepanjang rantai DNA. Setelah proses sintesis RNA selesai, rantai DNA terbentuk kembali dan molekul RNA baru terlepas dari cetakannya.<br />\n3) Terminasi (Pengakhiran)<br />\nProses transkripsi akan berhenti setelah sampai pada terminator, yakni urutan DNA yang berfungsi menghentikan transkripsi (kodon terminasi).<br />\nb. Translasi<br />\nTranslasi adalah proses pelekatan antara tRNA dengan asam amino dengan bantuan enzim aminoasil-tRNA sintetase. Ribosom memudahkan pelekatan yang spesifik antara antikodon tRNA dengan kodon mRNA selama sintesis protein.<br />\nTahap translasi terdiri atas inisiasi, elongasi, dan terminasi.<br />\n1) Inisiasi<br />\nRibosom kecil mengikatkan diri pada mRNA dan tRNA inisiator. Ribosom melekat pada salah satu ujung mRNA. Di dekat pelekatan tersebut terdapat kodon start AUG (yang membawa kode untuk membentuk asam amino metionin). Kodon ini memberikan sinyal dimulainya proses translasi.<br />\n2) Elongasi<br />\nTahap ini dimulai dengan terbentuknya asam-asam amino yang berikatan dengan metionin. Molekul rRNA dari ribosom mengatalis pembentukan ikatan peptida antara asam amino yang baru dengan ujung rantai polipeptida yang sebelumnya terbentuk dari asam amino yang dibawa tRNA. Setelah itu, tRNA<br />\nkeluar dari ribosom. Peristiwa ini berlangsung sampai terbentuk polipeptida.<br />\n3) Terminasi<br />\nElongasi akan berhenti setelah ribosom mencapai kodon stop yaitu UAA, UAG, atau UGA. Kodon stop berfungsi sebagai sinyal untuk menghentikan translasi. Selanjutnya, polipeptida yang terbentuk akan lepas dari ribosom menuju ke sitoplasma.<br />\nProses terminasi diakhiri dengan terbentuknya rantai asam amino yang sangat panjang, atau lebih sering dinamakan dengan rantai polipeptida. Rantai polipeptida inilah yang kita sebut dengan protein.<br />\nProtein atau rantai polipeptida dari hasil sintesis protein merupakan rantai protein primer. Protein ini harus mengalami modifikasi agar bisa digunakan dalam tubuh. Proses modifikasi dilakukan di badan Golgi. Hasil modifikasi ini dapat dibedakan menjadi dua yaitu protein struktural dan protein dinamis (fungsional).<br />\na. Protein Struktural<br />\nProtein struktural merupakan protein yang berperan dalam pembentukan struktur sel. Sebagai contoh, protein integral dan protein perifer yang berada pada membran sel. Sementara itu, protein struktural di dalam sel berperan untuk membentuk kerangka sel yang disebut sitoskeleton. Sitoskeleton berupa jaringan protein filamen yang memantapkan membran plasma sehingga menyokong stabilitas bentuk sel. Protein filamen ini terdiri atas mikrofilamen, filamen tengah (filamen intermediet), dan mikrotubulus. Mikrotubulus dibangun dari protein globuler yang disebut tubulin. Filamen intermediat disusun dari keluarga protein yang beragam disebut keratin. Mikrofilamen disusun dari protein globuler yang disebut aktin.<br />\nb. Protein Fungsional<br />\nProtein fungsional merupakan protein yang berperan dalam pengaturan aktivitas sel, misalnya enzim dan hormon.<br />\n1) Enzim<br />\nEnzim adalah satu atau beberapa gugus polipeptida (protein) yang berfungsi sebagai katalis dalam suatu reaksi kimia organik. Sebagian besar enzim bekerja di dalam sel (enzim intraseluler), tetapi ada juga enzim yang dibuat di dalam sel kemudian dikeluarkan dari dalam sel untuk menjalankan fungsinya<br />\n(enzim ekstraseluler). Contoh enzim intraseluler adalah enzim katalase. Enzim ini banyak terdapat di organel peroksisom yang berfungsi memecah senyawa H2O2 (hidrogen peroksida) yang bersifat toksik menjadi H2O dan O2. Adapun contoh enzim ekstraseluler adalah enzim-enzim pencernaan, misalnya enzim pepsin yang berfungsi memecah protein menjadi pepton.<br />\n2) Hormon<br />\nHormon terdiri atas tiga jenis berdasarkan struktur kimiawinya yaitu hormon yang terbuat dari protein atau peptida (hormon peptida), hormon yang terbuat dari kolesterol (hormon steroid), dan hormon yang terbuat dari asam amino (hormon tiroid). Jadi, protein merupakan salah satu bahan baku untuk membuat hormon.<br />\nHormon berperan mengatur homeostasis, metabolisme, reproduksi, pertumbuhan, dan perkembangan. Homeostasis adalah pengaturan secara otomatis dalam tubuh agar kelangsungan hidup dapat dipertahankan. Sebagai contoh pengendalian tekanan darah, kerja jantung, dan kadar gula darah.</p>\n', 6),
(8, '<p>3. Reproduksi Sel<br />\nReproduksi sel merupakan proses penggandaan materi genetik (DNA) yang terdapat di dalam nukleus sehingga menghasilkan sel-sel anakan yang memiliki materi genetik yang identik. Reproduksi sel dapat terjadi karena peristiwa pembelahan sel secara mitosis.<br />\nPembelahan mitosis adalah peristiwa pembelahan sel yang terjadi pada sel-sel somatis serta menghasilkan dua sel anak dengan genotipe sama dan identik dengan induknya. Pembelahan mitosis bertujuan untuk pertumbuhan dan regenerasi sel. Sel melangsungkan pembelahan mitosis sehingga dapat mengalami perubahan bentuk, ukuran, dan jumlahnya bertambah banyak.<br />\nTanaman mengalami<br />\npertumbuhan karena adanya penambahan jumlah sel sebagai hasil pembelahan mitosis. Pertumbuhan<br />\nadalah suatu proses pertambahan ukuran, baik volume, bobot, dan jumlah sel yang bersifat<br />\nirreversible. Pertumbuhan pada tumbuhan umumnya terjadi pada daerah meristem (titik tumbuh)<br />\ndi antaranya terdapat pada ujung akar dan ujung batang. Adapun tahap-tahap pembelahan mitosis<br />\nmeliputi profase, prometafase, metafase, anafase, dan telofase.</p>\n', 7),
(9, '<p>Salah satu tanaman yang dapat dikembangkan dengan teknik kultur jaringan tumbuhan adalah anggrek. Selain itu, dengan teknik kultur jaringan tumbuhan kita dapat memperbanyak tumbuhan langka atau tumbuhan yang hampir punah dengan cepat.<br />\nJaringan merupakan sekelompok sel yang mempunyai asal, struktur, dan fungsi yang sama. Ilmu yang mempelajari tentang jaringan disebut Histologi. Apabila sel-sel yang berkumpul tersebut adalah sel-sel tumbuhan maka disebut jaringan tumbuhan (Nugroho, Purnomo, dan Sumardi: 2006). Berdasarkan tipe struktur dan fungsi sel, jaringan tumbuhan diklasifikasikan ke dalam dua kelompok, yaitu jaringan<br />\nmeristematik (embrional) dan jaringan permanen (dewasa).<br />\n1. Jaringan Meristem (Embrional)<br />\nJaringan meristem merupakan jaringan yang masih aktif membelah dan belum mengalami diferensiasi. Sel-sel penyusun jaringan meristem berukuran kecil, dinding sel tipis, memiliki nukleus yang besar, mengandung banyak sitoplasma, tidak memiliki ruang antarsel, tidak memiliki vakuola atau memiliki vakuola berukuran sangat kecil, dan memiliki sifat totipotensi yang tinggi. Sel-sel meristem ada yang berbentuk bulat, lonjong, kubus, atau prisma.<br />\nBerdasarkan asalnya, jaringan meristem dibedakan menjadi dua macam, yaitu meristem primer dan meristem sekunder.<br />\na. Meristem primer, merupakan jaringan muda yang berasal dari perkembangan sel-sel embrionik. Jaringan meristem primer terdapat di ujung akar dan ujung batang. Aktivitas jaringan meristem primer mengakibatkan batang dan akar bertambah panjang.<br />\nb. Meristem sekunder, berasal dari jaringan dewasa yang telah terhenti pertumbuhannya, tetapi menjadi embrional kembali. Meristem sekunder meliputi kambium dan kambium gabus. Kambium terdapat pada akar maupun batang tumbuhan Dicotyledoneae dan Gymnospermae. Kambium gabus terdapat pada kulit batang dan membentuk jaringan gabus yang sukar dilalui air atau tidak dapat dilalui air. Pertumbuhan sekunder mengakibatkan tumbuhan bertambah besar.<br />\nBerdasarkan letaknya, jaringan meristem dibedakan menjadi tiga, yaitu meristem apikal, meristem interkalar, dan meristem lateral.<br />\na. Meristem apikal atau meristem ujung, terdapat di ujung batang atau ujung akar. Meristem apikal menghasilkan pemanjangan akar dan batang tumbuhan sehingga tanaman bertambah tinggi.<br />\nb. Meristem interkalar atau meristem antara, terdapat di antara jaringan dewasa dan terdapat di pangkal ruas batang.<br />\nc. Meristem lateral atau meristem samping, terdapat sejajar dengan permukaan organ tempat ditemukannya, contoh kambium dan kambium gabus (felogen). Kambium ke arah luar membentuk floem dan ke arah dalam membentuk xilem. Kambium gabus ke arah luar membentuk felem dan ke arah dalam membentuk feloderm.</p>\n', 14),
(10, '<p>2. Jaringan Dewasa<br />\nJaringan dewasa terdiri atas sel-sel yang sudah berhenti membelah dan telah mengalami diferensiasi. Jaringan dewasa memiliki beberapa karakteristik seperti tidak ada aktivitas pembelahan sel, ukuran sel relatif lebih besar daripada sel-sel meristematik, kadang-kadang sel telah mati, terdapat ruang antarsel, dinding sel mengalami penebalan sesuai dengan fungsinya, sitoplasma sedikit, dan vakuola besar.<br />\nBerdasarkan fungsinya, jaringan dewasa dapat dibedakan menjadi jaringan pelindung, jaringan dasar, jaringan penguat, dan jaringan pengangkut.<br />\na. Jaringan Pelindung<br />\nJaringan pelindung pada tumbuhan berupa jaringan epidermis dan jaringan gabus. Jaringan ini berfungsi melindungi tumbuhan dari pengaruh luar yang merugikan.<br />\n1) Jaringan Epidermis<br />\nJaringan epidermis merupakan jaringan yang terletak paling luar dan menutupi permukaan tubuh tumbuhan. Umumnya jaringan epidermis terdiri atas satu lapis sel dan susunannya rapat tanpa ruang antarsel.<br />\nJaringan epidermis tersusun dari sel-sel hidup dan tidak berklorofil. Klorofil terdapat pada sel penjaga dari stomata. Jaringan epidermis berfungsi melindungi bagian/jaringan dalam tubuh tumbuhan dari<br />\npengaruh buruk lingkungan atau patogen, menyerap air dan mineral (khusus daerah akar), dan menyekresi lapisan lilin atau kutikula yang bisa mencegah evaporasi (pada batang dan daun). Sebagian sel-sel epidermis dapat berkembang menjadi alat-alat tambahan yang disebut derivat epidermis, misalnya stomata dan trikomata.<br />\n2) Jaringan Gabus<br />\nSetelah batang tumbuh membesar, epidermis terdesak sehingga pecah dan rusak. Akhirnya, epidermis<br />\ntidak aktif lagi dan fungsinya digantikan oleh jaringan gabus. Jaringan gabus dibedakan menjadi tiga macam yaitu eksodermis, endodermis, dan peridermis. Pada bagian peridermis terdapat felem, felogen, dan feloderm.<br />\nb. Jaringan Dasar (Parenkim)<br />\nParenkim disebut jaringan dasar karena terletak hampir di semua bagian tumbuhan. Jaringan parenkim memiliki ciri-ciri sebagai berikut.<br />\n1) Sel-sel penyusunnya renggang sehingga mempunyai banyak ruang antarsel. Ruang antarsel ini digunakan untuk pertukaran gas.<br />\n2) Dinding sel tipis dan mempunyai vakuola besar untuk menyimpan makanan cadangan.<br />\n3) Sel-selnya berbentuk polihedral (segi banyak). Berdasarkan fungsinya, jaringan parenkim dibedakan menjadi lima macam, yaitu parenkim asimilasi, parenkim pengangkut, parenkim penimbun, parenkim air, dan parenkim udara.<br />\nc. Jaringan Penguat (Mekanik)<br />\nJaringan penguat pada tumbuhan digunakan untuk memperkukuh tubuh tumbuhan. Berdasarkan bentuk dan sifatnya, jaringan penguat dibedakan menjadi jaringan kolenkim dan jaringan sklerenkim.<br />\n1) Jaringan Kolenkim<br />\nJaringan kolenkim memiliki ciri-ciri sebagai berikut.<br />\na) Tersusun dari sel-sel hidup. Umumnya dijumpai di bawah epidermis batang, tangkai daun, tangkai bunga, ibu tulang daun, dan buah. Kolenkim jarang terdapat di akar.<br />\nb) Dinding selnya tidak mengandung lignin, tetapi mengandung selulosa, pektin, dan hemiselulosa sebagai penguat pada organ-organ tumbuhan yang masih muda atau bagian tubuh tumbuhan yang lunak.<br />\nc) Merupakan penguat utama organ-organ tumbuhan yang masih aktif mengadakan pertumbuhan dan perkembangan.<br />\n2) Jaringan Sklerenkim<br />\nJaringan sklerenkim memiliki ciri-ciri sebagai berikut.<br />\na) Terdiri atas sel-sel mati dengan dinding sel tebal.<br />\nb) Hanya terdapat pada organ tumbuhan yang tidak lagi mengadakan pertumbuhan dan perkembangan.<br />\nc) Merupakan jaringan penguat dengan dinding sekunder yang tebal dan terdiri atas lignin.<br />\nJaringan sklerenkim terdiri atas serabut sklerenkim dan sklereid.<br />\na) Serabut sklerenkim, berupa benang panjang dalam berkas pengangkut. Serabut biasanya merupakan suatu seludang yang berhubungan dengan berkas pengangkut atau dalam kelompok yang tersebar di dalam xilem dan floem.<br />\nb) Sklereid (sel batu), terdapat pada semua bagian tumbuhan terutama di dalam kulit kayu, pembuluh tapis, buah, dan biji. Sklereid yang terdapat soliter di antara sel-sel lainnya disebut idioblas. Sel-sel<br />\nsklereid juga dapat terhimpun menjadi kelompok sel keras di antara sel-sel parenkim di sekelilingnya.<br />\nd. Jaringan Pengangkut<br />\nBerdasarkan bentuk dan sifatnya, jaringan pengangkut dibedakan menjadi jaringan xilem dan jaringan floem.<br />\n1) Xilem<br />\nXilem berfungsi mengangkut air dan unsur hara dari akar ke daun. Sel-sel penyusun xylem umumnya sudah mati dengan dinding sekunder yang sangat tebal tersusun dari lignin sebagai jaringan penguat. Xilem terdiri atas unsur trakeal (trakea dan trakeid), serabut xilem, dan parenkim xilem.<br />\na) Unsur trakeal, merupakan unsur yang berperan dalam pengangkutan air dan zat terlarut di dalamnya. Sel trakeal berbentuk memanjang, tidak mengandung protoplas, dinding sel berlignin, dan mempunyai bermacam-macam noktah. Unsur trakeal terdiri atas trakea dan trakeid.<br />\nb) Serabut xilem, merupakan sel panjang dengan dinding sekunder yang biasanya berlignin. Serabut xilem ada 2 macam, yaitu serabut trakeid dan serabut libriform. Serabut trakeid mempunyai noktah<br />\nterlindung, ukuran pendek, dan dinding sel cenderung tipis. Serabut libriform memiliki ukuran yang lebih panjang, dinding sel tebal, dan mempunyai noktah sederhana.<br />\nc) Parenkim xilem, tersusun dari sel-sel yang masih hidup, dijumpai pada xilem primer maupun sekunder. Parenkim xilem berfungsi sebagai tempat makanan cadangan.<br />\n2) Floem<br />\nFloem berfungsi mengangkut dan mengedarkan zat-zat makanan hasil fotosintesis dari daun ke seluruh bagian tumbuhan. Floem terdiri atas berbagai macam bentuk sel hidup dan mati yaitu meliputi unsur-unsur kibral (sel-sel tapis dan komponen buluh tapis), sel pengiring, sel albumin, parenkim floem, dan serabut floem.<br />\na) Sel tapis memiliki bentuk seperti tabung dengan ujung yang berlubang-lubang. Sel tapis saling berhubungan dengan sel tapis yang lainnya dan saling berlekatan antara dinding ujung sel di bawah<br />\natau di atasnya. Deretan sel memanjang ini disebut pembuluh tapis.<br />\nb) Sel pengiring berupa deretan sel yang hidup dan menyerupai sel-sel parenkim. Sel pengiring berperan dalam transportasi zat makanan. Sel pengiring tidak dijumpai pada tumbuhan Gymnospermae dan<br />\nPteridophyta.<br />\nc) Sel albumin terletak di dekat sel tapis yang merupakan sel parenkim kaya akan zat albumin. Sel albumin menyusun jari-jari empulur. Sel albumin hanya dapat ditemukan pada tumbuhan Gymnospermae. Sel albumin diduga mempunyai fungsi yang sama dengan sel pengiring.<br />\nd) Parenkim floem, merupakan parenkim yang terletak di bagian buluh tapis yang berfungsi sebagai tempat menyimpan cadangan amilum, lemak, dan zat organik lainnya.<br />\ne) Serabut floem berbentuk panjang dan ujung-ujungnya saling berimpitan. Dinding sel serabut floem mengalami penebalan sekunder sehingga berfungsi sebagai penguat floem.</p>\n', 15),
(11, '<p>1. Akar (Radix)<br />\nAkar merupakan organ tumbuhan yang biasanya berada di bawah tanah, meskipun ada juga yang berada di permukaan tanah. Akar berasal dari akar lembaga (radikula). Akar lembaga pada tanaman Dicotyledoneae tumbuh terus sehingga membentuk akar tunggang, sedangkan akar lembaga pada tanaman Monocotyledoneae mati dan kemudian pada pangkal batang akan tumbuh akar-akar dengan ukuran sama sehingga membentuk akar serabut.<br />\nAkar berkembang dari meristem apikal di ujung akar. Pertumbuhan primer akan mendorong akar menembus tanah. Ujung akar ditutupi oleh tudung akar (kaliptra), yang secara fisik melindungi meristem yang rapuh pada saat akar memanjang menembus tanah yang abrasif (Campbell, Reece, dan Mitchell, 2003). Pembelahan meristem apikal membentuk zona pemanjangan sel, zona diferensiasi sel, dan zona pendewasaan sel.<br />\nAkar tumbuhan tersusun oleh beberapa jaringan, yaitu :<br />\na. Epidermis, terdiri atas satu lapis sel, susunan sel-sel rapat, dinding sel tipis sehingga mudah dilewati air. Sel epidermis akar dapat mengalamimodifikasi menjadi rambut akar yang berfungsi untuk memperluas bidang penyerapan.<br />\nb. Korteks terletak langsung di bawah epidermis, tersusun berlapis-lapis, sel-selnya tidak tersusun rapat sehingga memiliki banyak ruang antarsel, dan dinding selnya tipis.<br />\nKorteks sebagian besar dibangun oleh jaringan parenkim, kolenkim, serta sklerenkim. Parenkim pada korteks beberapa jenis tumbuhan berfungsi untuk tempat menyimpan makanan cadangan. Lapisan terdalam korteks berdiferensiasi menjadi endodermis.<br />\nc. Endodermis, merupakan pemisah antara korteks dengan silinder pusat. Endodermis berupa satu lapis sel, tersusun rapat, dan dinding selnya mengalami penebalan gabus dari suberin dan kutin sehingga membentuk penebalan berupa pita yang disebut pita kaspari. Sel-sel endodermis yang tidak mengalami penebalan disebut dengan sel penerus/sel peresap sehingga memungkinkan air dapat masuk ke silinder pusat.<br />\nd. Stele (silinder pusat), merupakan bagian terdalam dari akar. Silinder pusat terdiri atas berbagai jaringan berikut.<br />\n1) Perisikel/perikambium merupakan lapisan terluar dari stele dan terletak di sebelah dalam endodermis. Jaringan perisikel tersusun dari sel-sel parenkim yang menebal. Jaringan perisikel berfungsi untuk membentuk cabang akar dan berperan dalam pertumbuhan sekunder.<br />\n2) Berkas pengangkut yang terdiri atas xilem dan floem.<br />\n3) Empulur terdiri atas parenkim dan terletak di bagian paling dalam atau di antara berkas pengangkut.<br />\nAda perbedaan yang nyata antara struktur akar tumbuhan Dicotyledoneae<br />\ndan Monocotyledoneae, sebagai berikut.<br />\nAkar Dicotyledoneae<br />\nXylem : Berbentuk bintang di pusat, tersusun radial atau membentuk jari-jari bersama dengan floem. Berkas xylem bervariasi dari diarch&ndash;hexarch.<br />\nFloem : Letaknya di antara jari-jari yang dibentuk oleh xilem, dipisahkan oleh kambium (kolateral terbuka)<br />\nEmpulur : Tidak ada atau ada tetapi kecil<br />\nPerisikel : Membentuk cabang akar dan meristem sekunder<br />\nKambium : Ada<br />\nAkar Monocotyledoneae<br />\nXilem : Berdekatan dengan floem. Berkas xilem disebut polyarch.<br />\nFloem : Letaknya berdekatan dengan xilem dan tidak dipisahkan oleh kambium (kolateral tertutup)<br />\nEmpulur : Ada dan kadang berkembang menjadi sklerenkim<br />\nPerisikel : Hanya membentuk cabang akar<br />\nKambium : Tidak ada</p>\n', 16),
(12, '<p>2. Batang (Caulis)<br />\nUmumnya batang terletak di atas tanah dan tumbuh ke atas menuju cahaya matahari. Batang biasanya berbentuk bulat dan mempunyai buku atau ruas. Batang tersusun dari epidermis, korteks, dan stele.<br />\na. Epidermis, tersusun oleh satu lapis sel, tanpa ruang antarsel, dinding luar mengalami penebalan dari kutin yang disebut kutikula, dan pada tumbuhan kayu yang tua terdapat kambium gabus. Derivat epidermis pada batang berupa lentisel, trikoma, sel silika, dan sel gabus.<br />\nb. Korteks mengandung amilum dan tersusun oleh sel-sel parenkim, kolenkim, serta sklerenkim. Pada Monocotyledoneae, korteks hampir tidak bias dibedakan dengan stele.<br />\nc. Stele, terdiri atas perisikel yang bersifat meristematis, sel parenkim (empulur), dan berkas pengangkut (xilem dan floem). Ada beberapa perbedaan struktur batang Dicotyledoneae dan Monocotyledoneae, yaitu :<br />\nDicotyledoneae<br />\nKorteks : Terdiri atas beberapa lapis sel parenkim<br />\nEndodermis : Terlihat sebagai lapisan sel kompak bergelombang<br />\nPerisikel : Terdiri atas parenkim dan sklerenkim<br />\nJari-jari empulur : Berupa deretan parenkim di antara berkas pengangkut<br />\nEmpulur : Merupakan parenkim sentral yang terletak di tengah batang, pada batang tua tidak ada<br />\nBerkas Pengangkut : Tipe kolateral terbuka atau bikolateral, tersusun dalam lingkaran, ukuran seragam, terdapat parenkim floem, tidak ada sarung berkas pengangkut<br />\nKambium : Ada<br />\nMonocotyledoneae<br />\nKorteks : Parenkim berkesinambungan sampai bagian tengah batang<br />\nEndodermis : Tidak tampak<br />\nPerisikel : Tidak terdiferensiasi<br />\nJari-jari Empulur : Tidak ada<br />\nEmpulur : Tidak ada<br />\nBerkas Pengangkut : Tipe kolateral tertutup atau konsentris amfivasal, tersusun tersebar, ukuran semakin ke tengah semakin besar, tidak ada parenkim floem, sarung berkas pengangkut jelas<br />\nKambium : Tidak ada<br />\nKambium pada tumbuhan Dicotyledoneae dibedakan menjadi dua tipe, yaitu kambium intravaskuler dan kambium intervaskuler.<br />\na. Kambium intravaskular, kambium terletak di antara xilem dan floem.<br />\nb. Kambium intervaskular, kambium terletak di antara dua berkas pengangkut. Aktivitas kedua kambium tersebut mengakibatkan diameter batang bertambah besar karena adanya pertumbuhan sekunder.</p>\n', 17),
(13, '<p>3. Daun (Folium)<br />\nDaun merupakan bagian tumbuhan yang mengandung klorofil paling banyak. Daun umumnya berupa lembaran dan berwarna hijau. Daun melekat pada buku-buku batang tumbuhan. Daun tersusun dari jaringan epidermis, mesofil, berkas pengangkut, dan jaringan tambahan.<br />\na. Epidermis, merupakan lapisan terluar daun, umumnya terdiri atas satu lapis sel, dan dinding sel mengalami penebalan dari zat kutin (kutikula) atau lignin. Epidermis daun terdiri atas dua bagian, yaitu epidermis atas dan bawah.<br />\nUmumnya epidermis atas lebih tebal dibanding epidermis bawah karena dilapisi kutikula untuk mencegah penguapan yang terlalu besar. Pada epidermis terdapat stomata/mulut daun untuk berlangsungnya pertukaran gas dari dan ke luar tubuh tumbuhan. Derivat epidermis daun lainnya adalah trikomata dan sel kipas. Trikomata berfungsi untuk mengurangi penguapan dan mengurangi gangguan hewan. Sel kipas berfungsi untuk mengurangi penguapan dengan menggulungnya daun.<br />\nb. Mesofil, terletak di antara epidermis atas dan epidermis bawah. Mesofil pada daun Dicotyledoneae terdiri atas parenkim palisade (jaringan tiang) dan parenkim spons (jaringan bunga karang). Keduanya mengandung banyak klorofil, akan tetapi klorofil pada parenkim palisade lebih banyak disbanding pada parenkim spons. Palisade tersusun dari sel-sel yang rapat dan berbentuk lonjong. Sementara itu, sel-sel penyusun parenkim spons renggang sehingga banyak terdapat rongga-rongga antarsel yang memudahkan terjadinya pertukaran gas. Mesofil pada daun Monocotyledoneae hanya terdiri atas<br />\nparenkim spons (bunga karang).<br />\nc. Berkas pengangkut terdiri atas floem dan xilem yang terletak di tulang daun, cabang daun, dan urat daun.<br />\nd. Jaringan tambahan, misalnya sel-sel kristal dan kelenjar. Melalui pengamatan mikroskopis, dapat dilihat dengan jelas adanya perbedaan antara daun Dicotyledoneae dengan daun Monocotyledoneae.<br />\nPerbedaan itu terletak pada jaringan mesofil. Jaringan mesofil pada daun Dicotyledoneae terdiri atas jaringan parenkim palisade dan parenkim spons, sedangkan jaringan mesofil pada daun &nbsp;monocotyledoneae hanya terdiri atas jaringan spons.<br />\nOrgan pokok pada tumbuhan terdiri atas akar, batang, dan daun. Ketiga organ tersebut tersusun dari bermacam-macam jaringan. Selain itu, jaringan pada organ tumbuhan Monocotyledoneae berbeda dengan tumbuhan Dicotyledoneae.</p>\n', 18),
(14, '<p>Setelah Anda mempelajari jaringan penyusun organ tumbuhan, tentunya Anda menjadi lebih paham mengenai struktur tumbuhan. Pemahaman tentang sel, jaringan, dan organ tumbuhan sangatlah berperan dalam melestarikan sumber daya alam hayati. Dengan mengetahui struktur pada tumbuhan, kita dapat memperbanyak tumbuhan langka atau tumbuhan yang hampir punah. Tentu saja cara perbanyakan ini menggunakan teknologi yang semakin berkembang. Salah satu metode perbanyakan tersebut menggunakan teknik kultur jaringan tumbuhan.<br />\nSel tumbuhan memiliki sifat autonom dan totipotensi. Autonom berarti dapat mengatur aktivitas<br />\nhidupnya sendiri. Adapun totipotensi adalah kemampuan sel tumbuhan untuk beregenerasi menjadi tanaman lengkap kembali. Prinsip inilah yang menjadi dasar pelaksanaan teknik kultur jaringan.<br />\nKultur jaringan adalah cara perbanyakan tumbuhan secara in vitro dengan cara mengisolasi bagian-bagian tanaman seperti sel, jaringan, atau organ tumbuhan serta menumbuhkannya pada medium buatan secara aseptis (bebas hama) agar bagian-bagian tanaman tersebut dapat memperbanyak diri dan beregenerasi menjadi tanaman lengkap kembali. Kultur jaringan dilakukan di laboratorium khusus yang<br />\nsteril dengan pencahayaan dan suhu terkontrol. Bagian kecil dari tanaman (sel, jaringan, dan organ) yang digunakan dalam kultur jaringan disebut eksplan. Eksplan diambil dari bagian yang masih muda (primordial), sel-selnya masih bersifat meristematis, dan belum mengalami proses diferensiasi. Perbanyakan tanaman secara kultur jaringan memiliki beberapa kelebihan dan kekurangan. Kelebihan teknik kultur jaringan sebagai berikut.<br />\n1. Merupakan cara untuk menghasilkan bibit tanaman dalam jumlah banyak dengan waktu singkat.<br />\n2. Tidak memerlukan tempat luas.<br />\n3. Tidak bergantung pada musim sehingga bias dilaksanakan sepanjang tahun.<br />\n4. Bibit yang dihasilkan lebih sehat dan seragam.<br />\n5. Memungkinkan untuk dilakukan rekayasa genetika.<br />\nAdapun kekurangan teknik kultur jaringan sebagai berikut.<br />\n1. Memerlukan biaya besar karena harus dilakukan di dalam laboratorium yang steril serta menggunakan bahan-bahan kimia.<br />\n2. Memerlukan keahlian khusus.<br />\n3. Memerlukan aklimatisasi ke lingkungan luar karena tanaman hasil kultur berukuran kecil dan bersifat aseptik.<br />\nAnda tentu sudah tahu bahwa pelaksanaan teknik kultur jaringan tumbuhan memanfaatkan bagian-bagian dari tumbuhan itu sendiri (sel, jaringan, dan organ). Oleh sebab itu, kita harus memanfaatkan kemajuan teknologi secara arif dan bijaksana.<br />\nPelaksanaan teknik kultur jaringan mempunyai beberapa tujuan berikut.<br />\n1. Menghasilkan tanaman dalam jumlah besar dengan lahan yang tidak terlalu luas dan waktu singkat.<br />\n2. Menghasilkan tanaman yang bebas penyakit.<br />\n3. Melestarikan jenis tanaman yang sudah langka.<br />\n4. Mempertahankan sifat-sifat tanaman induk.<br />\n5. Menghasilkan varietas tanaman baru dengan teknik kultur fusi protoplas.<br />\nSemua peralatan dan kegiatan yang dilakukan dalam kultur jaringan harus aseptic agar bagian tanaman yang dikultur bisa tumbuh menjadi individu baru. Jika tidak steril, akan terjadi kontaminasi oleh bakteri, jamur, atau virus yang dapat mengakibatkan eksplan menjadi rusak. Keberhasilan kultur jaringan ditentukan oleh beberapa faktor berikut.<br />\n1. Eksplan yang digunakan, misal umur eksplan, ukuran eksplan, kondisi tanaman induk, dan genetik eksplan.<br />\n2. Perbandingan komposisi senyawa kimia dalam medium tanam.<br />\n3. Kondisi lingkungan, misal cahaya, suhu, kelembapan, pH, dan kepadatan media.<br />\n4. Kondisi kultur dan lingkungan yang steril.<br />\nBeberapa teknik kultur jaringan berdasarkan eksplan yang digunakan sebagai berikut.<br />\n1. Kultur meristem, eksplan yang digunakan berupa jaringan meristem.<br />\n2. Kultur kloroplas, eksplan berupa kloroplas dan biasanya digunakan untuk fusi protoplasma.<br />\n3. Kultur pollen atau kultur anther, eksplan yang digunakan berupa putik atau benang sari.<br />\n4. Kultur fusi protoplas, eksplan berupa protoplas.</p>\n', 19);
INSERT INTO `materi` (`id`, `materi_desc`, `module_id`) VALUES
(15, '<p>Jaringan epitel tersusun dari sel-sel yang saling terikat oleh zat pengikat yang kuat sehingga hampir tidak ada ruang antarsel. Jaringan epitel terdapat di bagian luar tubuh serta di permukaan luar maupun permukaan dalam organ tubuh. Jaringan epitel di bagian luar tubuh mempunyai fungsi utama melindungi tubuh dari luka akibat ganggguan mekanis, serangan mikroorganisme patogen, dan kehilangan cairan. Jaringan epitel yang terdapat di permukaan organ bagian dalam umumnya berperan penting dalam proses absorpsi dan proteksi. Sebagian jaringan epitel yang lain memiliki fungsi sebagai kelenjar.<br />\nJaringan epitel dapat digolongkan berdasarkan bentuk dan jumlah lapisan sel serta berdasarkan struktur dan fungsinya.<br />\n1) Jenis Epitel Berdasarkan Bentuk dan Jumlah Lapisan Sel<br />\nBerdasarkan bentuknya, sel epitel dibedakan menjadi bentuk pipih, kubus, dan silindris. Berdasarkan jumlah lapisannya, jaringan epitel dapat dibedakan menjadi epitel simpleks dan epitel kompleks.<br />\na) Epitel Simpleks<br />\nEpitel simpleks terdiri atas satu lapis sel. Jenis jaringan epitel simpleks beserta letak dan fungsinya dijelaskan sebagai berikut.<br />\n- Epitel pipih selapis<br />\nTerletak di kapsula Bowman pada ginjal, lapisan dalam pembuluh darah dan limfa, alveolus paruparu, ruang jantung, selaput bagian dalam telinga, dan sel ekskresi kecil pada sebagian besar kelenjar. Berfungsi sebagai Pelapis bagian dalam rongga dan saluran, tempat difusi dan infiltrasi zat.<br />\n- Epitel kubus selapis<br />\nTerletak di kelenjar air liur, retina mata, dinding ovarium, dan saluran dalam nefron ginjal. Berfungsi sebagai proteksi, absorpsi, dan sekresi (penghasil lendir atau mucus).<br />\n- Epitel silinder selapis<br />\nTerletak di dinding dalam lambung, usus, kantong empedu, rahim, saluran pernapasan bagian atas, dan saluran pencernaan. Berfungsi sebagai proteksi, sekresi, difusi, dan absorpsi zat.<br />\n- Epitel silinder selapis bersilia<br />\nTerletak di dinding dalam rongga hidung, trakea, bronkus, dan dinding dalam oviduk. Berfungsi sebagai penghasil mucus untuk menangkap benda asing yang masuk. Getaran silianya menghalau benda asing tersebut.<br />\n- Epitel silinder berlapis semu<br />\nTerletak di rongga hidung dan trakea. Berfungsi sebagai proteksi sekresi, dan gerakan gas.<br />\nb) Epitel Kompleks<br />\nEpitel kompleks tersusun dari beberapa lapisan sel. Lapisan sel terbawah yang selalu membelah diri untuk mengganti sel-sel permukaan yang rusak disebut lapisan germinativa. Jenis-jenis jaringan epitel kompleks beserta letak dan fungsinya dijelaskan sebagai berikut.<br />\n- Epitel pipih berlapis<br />\nTerletak di kulit, rongga mulut, esofagus, laring, vagina, anus, dan rongga hidung. Berfungsi sebagai proteksi dan penghasil mucus.<br />\n- Epitel kubus berlapis<br />\nTerletak di kelenjar keringat, kelenjar minyak, ovarium, dan buah zakar. Berfungsi sebagai proteksi dan penghasil mucus.<br />\n- Epitel silinder berlapis<br />\nTerletak di lapisan konjungtiva, dinding dalam kelopak mata, laring, faring, dan uretra. Berfungsi sebagai proteksi dan penghasil mucus.<br />\n- Epitel transisional<br />\nTerletak di kandung kemih, ureter, dan pelvis ginjal. Berfungsi untuk menahan regangan dan tekanan.</p>\n\n<p>2) Jenis Epitel Berdasarkan Struktur dan Fungsi<br />\nBerdasarkan struktur dan fungsinya, jaringan epitel dibagi menjadi dua, yaitu epitel kelenjar dan epitel penutup.<br />\na) Epitel kelenjar, berfungsi dalam pembuatan, penyimpanan, dan sekresi zat-zat kimia. Ada dua macam kelenjar yaitu kelenjar eksokrin dan kelenjar endokrin.<br />\n(1) Kelenjar eksokrin merupakan kelenjar yang memiliki saluran pengeluaran untuk menyalurkan hasil sekresinya. Kelenjar ini berfungsi membantu metabolisme dan komunikasi. Contoh kelenjar eksokrin yaitu kelenjar susu, kelenjar keringat pada kulit, kelenjar fundus pada dinding lambung, dan kelenjar submaksilaris pada rahang bawah.<br />\n(2) Kelenjar endokrin merupakan kelenjar yang tidak memiliki saluran pengeluaran. Hasil sekresi kelenjar endokrin langsung memasuki sistem peredaran darah untuk diangkut menuju bagian tubuh yang memerlukan. Contoh kelenjar endokrin yaitu kelenjar timus, kelenjar adrenal, dan kelenjar tiroid yang menyekresikan hormon.<br />\nb) Epitel penutup, berfungsi melapisi permukaan tubuh dan jaringan.</p>\n', 20),
(16, '<p>b. Jaringan Pengikat<br />\nJaringan pengikat berfungsi melekatkan suatu jaringan dengan jaringan lain, membungkus organ-organ, mengisi rongga di antara organ-organ, dan menghasilkan imunitas.<br />\n1) Komponen Jaringan Pengikat<br />\nJaringan pengikat tersusun dari matriks dan sel-sel penyusun jaringan pengikat.<br />\na) Matriks<br />\nMatriks tersusun oleh serabut-serabut dan bahan dasar. Serabut dibedakan menjadi serabut kolagen, serabut elastin, dan serabut retikuler. Serabut kolagen berwarna putih, bersifat sangat liat dan ulet, serta paling banyak ditemukan dalam tubuh. Serabut elastin berwarna kuning, lebih halus dari serabut kolagen, dan elastis. Serabut retikuler merupakan serabut paling halus dan bercabang-cabang membentuk jala. Bahan dasar matriks terdiri atas asam mukopolisakarida. Komponen utama asam mukopolisakarida adalah asam hialuronat. Semakin banyak asam hialuronat yang terkandung di dalam matriks, maka matriks akan semakin lentur. Komponen utama bahan dasar lainnya adalah mukopolisakarida yang mengandung sulfat, khususnya kondroitin sulfat. Jika bagian mukopolisakarida yang mengandung sulfat meningkat, matriks menjadi semakin kaku.<br />\nb) Sel-Sel Penyusun Jaringan Pengikat<br />\nBeberapa jenis sel yang tertanam dalam matriks sebagai berikut.<br />\n(1) Fibroblas, berfungsi menyintesis dan menyekresikan protein ke dalam serabut.<br />\n(2) Makrofag, sel yang bentuknya tidak teratur, umumnya terletak dekat pembuluh darah, serta berfungsi dalam pinositosis dan fagositosis.<br />\n(3) Sel tiang (sel mast), sel yang menghasilkan heparin untuk mencegah pembekuan darah dan histamin untuk meningkatkan permeabilitas darah.<br />\n(4) Sel lemak, berfungsi menyimpan lemak. Jaringan pengikat yang mengandung banyak sel lemak disebut jaringan adiposa.<br />\n(5) Sel darah putih, berfungsi melawan patogen penyebab penyakit.<br />\n2) Macam Jaringan Pengikat<br />\nBerdasarkan struktur dan fungsinya, jaringan pengikat dikelompokkan menjadi jaringan pengikat biasa dan jaringan pengikat dengan sifat khusus.<br />\na) Jaringan Pengikat Biasa<br />\nJaringan pengikat biasa dibedakan menjadi dua, yaitu jaringan pengikat longgar dan jaringan pengikat padat.<br />\n(1) Jaringan Pengikat Longgar<br />\nJaringan ini mempunyai susunan serabut-serabut yang longgar. Matriksnya berupa cairan lendir (mucus).<br />\nPada matriks terdapat berkas serabut kolagen yang fleksibel, tetapi tidak elastis. Jaringan pengikat longgar terdapat di sekitar pembuluh darah, saraf, dan organ dalam tubuh. Jaringan ini berfungsi<br />\nsebagai medium penyokong, pengisi ruang di antara organ, dan mengelilingi elemen-elemen jaringan lain.<br />\n(2) Jaringan Pengikat Padat<br />\nJaringan ini mempunyai struktur serabut-serabut terutama kolagen yang padat. Jaringan pengikat padat dibedakan menjadi jaringan pengikat padat teratur dan jaringan pengikat padat tidak teratur. Jaringan pengikat padat teratur memiliki berkas kolagen tersusun teratur ke satu arah (contoh pada tendon). Jaringan pengikat padat tidak teratur memiliki berkas kolagen menyebar membentuk anyaman kasar yang kuat (contoh pada lapisan di bawah kulit).<br />\nb) Jaringan Pengikat dengan Sifat Khusus<br />\nJaringan pengikat dengan sifat khusus mempunyai fungsi khusus, misalnya menunjang jaringan lunak dan membentuk sel-sel darah. Jaringan ini terdiri atas jaringan tulang rawan (kartilago), jaringan tulang keras, jaringan darah, dan jaringan limfa.<br />\n(1) Jaringan Tulang Rawan<br />\nJaringan ini merupakan spesialisasi dari jaringan pengikat berserabut tebal. Tulang rawan berfungsi sebagai rangka tubuh pada awal embrio, menunjang jaringan lunak dan organ dalam, serta melicinkan permukaan tulang dan sendi. Matriks jaringan tulang rawan terdiri atas kondrin. Sel tulang rawan disebut kondrosit yang terletak di dalam lakuna. Jaringan tulang rawan terdiri atas kartilago hialin, kartilago fibrosa, dan kartilago elastis.<br />\nCiri-Ciri Kartilago Hialin, Kartilago Fibrosa, dan Kartilago Elastis.<br />\n- Kartilago Hialin<br />\nSerabut kolagen yang halus, warna putih kebiru-biruan dan tembus cahaya. Letak di ujung tulang keras, cakram epifisis, persendian, dan saluran pernapasan. Berfungsi memberi kekuatan, menyokong rangka embrionik, menyokong bagian tertentu rangka dewasa, dan membantu pergerakan persendian.<br />\n- Kartilago Fibrosa<br />\nSerabut kolagen padat dan kasar. Warna gelap dan keruh. Terletak di ruas-ruas tulang belakang, simfisis pubis, dan persendian. Fungsi menyokong dan melindungi bagian di dalamnya.<br />\n- Kartilago Elastis<br />\nSerabut elastis dan serabut kolagen. Warna keruh kekuning-kuningan. Terletak di epiglotis, daun telinga, dan bronkiolus. Berfungsi memberi fleksibilitas dan sebagai penyokong.<br />\n(2) Jaringan Tulang Keras (Osteon)<br />\nJaringan ini merupakan jaringan pengikat yang mengandung mineral. Sel tulang disebut osteosit yang dibentuk dari osteoblast. Antara osteosit yang satu dengan yang lain dihubungkan oleh kanalikuli. Matriks osteoblast mengandung kalsium fosfat. Endapan garam mineral menyusun dan melingkari bagian pusat tulang membentuk lamela. Pada lamela terdapat lakuna. Berdasarkan susunan matriksnya, jaringan tulang dibedakan menjadi tulang keras atau tulang kompak dan tulang berongga atau tulang<br />\nspons. Tulang keras memiliki matriks yang susunannya rapat. Pada tulang keras terdapat sistem Havers yang terdiri atas 4&ndash;20 lamela yang tersusun konsentris mengelilingi saluran Havers. Saluran Havers mengandung pembuluh darah dan saraf sebagai penyuplai nutrisi tulang. Tulang spons memiliki susunan matriks longgar atau berongga. Pada tulang spons tidak terdapat sistem Havers. Tulang spons<br />\nterdiri atas trabekula tulang yang saling berhubungan satu dengan lainnya.<br />\n(3) Jaringan Darah<br />\nJaringan darah terdiri atas dua bagian yaitu bahan interseluler dan sel darah. Bahan interseluler adalah cairan yang disebut plasma dan di dalamnya terdapat unsur-unsur padat yaitu sel darah (Pearce, 2008). Sel darah terdiri atas sel darah merah (eritrosit), sel darah putih (leukosit), dan keping darah (trombosit).<br />\nSel darah merah berfungsi sebagai pengangkut oksigen dan karbon dioksida dalam darah (Hb). Sel darah putih berfungsi sebagai pelindung terhadap benda asing yang masuk ke dalam tubuh. Keping darah berperan dalam proses pembekuan darah. Plasma darah berfungsi mengangkut sari makanan dan hormon ke bagian tubuh yang memerlukan. Secara umum sel-sel darah dibentuk dalam sumsum tulang, kecuali sel darah putih (limfosit dan monosit) dibentuk dalam kelenjar limfe.<br />\n(4) Jaringan Limfa (Getah Bening)<br />\nLimfa merupakan suatu cairan yang dikumpulkan dari berbagai jaringan dan kembali ke aliran darah. Komponen seluler dalam cairan limfa berupa limfosit dan granulosit. Limfa berfungsi mengangkut cairan jaringan, protein, lemak, dan zat-zat lain dari jaringan ke sistem peredaran.</p>\n', 21),
(17, '<p>c. Jaringan Otot<br />\nJaringan otot tersusun dari sel-sel otot. Jaringan ini berfungsi melakukan pergerakan. Kemampuan otot untuk berkontraksi disebabkan adanya serabut kontraktil yang tersusun dari filamen aktin dan miosin. Jaringan otot terbagi menjadi tiga, yaitu otot polos, otot lurik (otot rangka), dan otot jantung. Ciri-ciri dan struktur ketiga macam otot sebagai berikut.<br />\n- Otot polos<br />\nBentuk sel seperti gelendong, bagian tengah besar, dan ujungnya meruncing. Inti sel satu, di tengah. Beraktivitas di luar kehendak (otot tidak sadar). Kontraksi lambat dan lama, tidak mudah lelah. Terletak di alat-alat tubuh bagian dalam, contoh saluran pencernaan, saluran pernapasan, kandung kemih, dan pembuluh limfa. Diskus interkalaris tidak ada.<br />\n- Otot Lurik&nbsp;<br />\nBentuk sel Panjang. Inti sel banyak, di tepi. Beraktivitas di bawah kehendak (otot sadar). Kontraksi cepat, tidak teratur, dan mudah lelah. Letak melekat pada rangka, lidah, bibir, dan kelopak mata. Diskus interkalaris tidak ada.<br />\n- Otot Jantung<br />\nBentuk sel silindris atau serabut pendek, bercabang-cabang. Inti sel satu atau dua, di tengah. Aktivitas di luar kehendak (otot<br />\ntidak sadar). Kontraksi otomatis, teratur, tidak pernah lelah, dan bereaksi lambat. Letak di jantung. Diskus interkalaris ada.</p>\n', 22),
(18, '<p>d. Jaringan Saraf<br />\nJaringan saraf terdiri atas sel-sel saraf yang disebut neuron. Neuron berfungsi merespons perubahan<br />\nlingkungan, membawa impuls-impuls saraf ke pusat saraf atau sebaliknya, dan bereaksi aktif terhadap rangsang. Neuron terdiri atas bagian-bagian berikut.<br />\na. Badan sel saraf yang mengandung inti sel dan neuroplasma.<br />\nb. Neurit atau akson, berfungsi membawa impuls meninggalkan badan sel saraf.<br />\nc. Dendrit, berfungsi membawa impuls ke badan sel saraf.<br />\nAkson dikelilingi oleh sel Schwann. Akson diselubungi oleh selaput neurilema. Sebelah dalam neurilema terdapat selubung mielin. Bagian akson yang tidak tertutup oleh selubung mielin dinamakan nodus Ranvier. Titik pertemuan antara ujung akson yang satu dengan yang lain disebut sinapsis. Sinapsis berfungsi meneruskan rangsang ke sel saraf yang lain dengan cara mengeluarkan neurotransmiter.<br />\nBerdasarkan fungsinya, neuron dibedakan menjadi tiga, yaitu neuron aferen, interneuron, dan neuron eferen.<br />\na. Neuron aferen atau neuron sensorik berfungsi menyampaikan rangsang dari reseptor ke sistem saraf pusat.<br />\nb. Neuron asosiasi/interneuron berfungsi menyampaikan impuls dari neuron sensorik atau interneuron yang lain ke neuron motorik.<br />\nc. Neuron eferen atau neuron motorik berfungsi menyampaikan impuls dari sistem saraf pusat ke efektor.</p>\n', 23),
(19, '<p>1. Stem Cell<br />\nStem cell dalam bahasa Indonesia disebut juga sel batang, sel induk, atau sel punca. Sel ini aktif melakukan pembelahan dan dapat berkembang menjadi sel apa saja. Stem cell pada dasarnya merupakan blok pembangun (building block) dalam tubuh manusia. Stem cell dalam embrio pada akhirnya akan berkembang menjadi sel, organ, dan jaringan di dalam tubuh janin. Berdasarkan sumbernya, ada dua<br />\nmacam stem cell, yaitu embrionic stem cell dan adult stem cell.<br />\na. Embrionic Stem Cell (Sel Induk Embrio)<br />\nEmbrionic stem cell adalah stem cell yang diperoleh dari embrio pada fase blastosit (5&ndash;7 hari setelah pembuahan) yang sudah dibuahi.<br />\nEmbrionic stem cell memiliki sifat sebagai berikut.<br />\n1) Pluripotensi, yaitu kemampuan sel induk berdiferensiasi menjadi sel-sel yang merupakan turunan dari tiga lapis germinal, tetapi tidak dapat membentuk membran embrio (tali pusat dan plasenta).<br />\n2) Immortal, yaitu dapat berumur panjang sehingga dapat memperbanyak diri ratusan kali pada medium kultur.<br />\n3) Mempunyai kariotipe normal.<br />\n4) Dapat bersifat tumorigenik, yaitu setiap mengalami kontaminasi dengan sel yang tidak berdiferensiasi dapat menimbulkan kanker.<br />\n5) Bersifat allogenik, yaitu berpotensi menimbulkan terjadinya penolakan imunitas. Untuk mencegah terjadinya reaksi penolakan jaringan dapat digunakan metode transfer inti sel somatik atau terapi kloning.<br />\nb. Adult Stem Cell (Sel Induk Dewasa)<br />\nAdult stem cell adalah stem cell yang diperoleh dari sel-sel orang dewasa. Sel tersebut berfungsi meregenerasi sel yang rusak akibat penyakit atau cedera. Dengan kata lain, adult stem cell merupakan sekelompok sel yang belum berdiferensiasi bahkan terkadang ditemukan dalam keadaan inaktif pada suatu jaringan yang telah memiliki fungsi spesifik dalam tubuh individu.<br />\nAdult stem cell memiliki dua karakteristik utama. Pertama, dapat berproliferasi dalam periode yang panjang untuk memperbarui diri. Kedua, dapat berdiferensiasi untuk menghasilkan sel-sel khusus yang mempunyai karakteristik morfologi dan fungsi spesial. Ada tiga sumber utama sel induk dewasa yang terdapat pada manusia, yaitu sumsum tulang, jaringan lemak, dan darah dari plasenta.<br />\nTeknologi stem cell dapat digunakan untuk mengobati berbagai macam penyakit. Tiga golongan penyakit yang dapat diatasi dengan stem cell yaitu penyakit autoimun, penyakit degeneratif, dan penyakit kanker.</p>\n', 24),
(20, '<p>2. Transplantasi Organ<br />\nTransplantasi organ merupakan suatu teknologi medis untuk mengganti seluruh atau sebagian organ tubuh dari satu tubuh ke tubuh yang lain, atau dari suatu tempat ke tempat yang lain pada tubuh yang sama. Transplantasi organ dilakukan untuk mengganti organ tubuh yang rusak maupun organ tubuh yang sudah tidak berfungsi. Salah satu contoh transplantasi organ yang sering dilakukan adalah tranplantasi organ kulit yang rusak akibat luka bakar. Transplantasi organ dari satu orang ke orang lain sering gagal karena tubuh resipien segera bereaksi menolaknya. Hal ini disebabkan organ yang ditransplantasikan dianggap sebagai benda asing sehingga harus dilawan dengan antibodi. Jadi, transplantasi yang aman dilakukan jika jaringan atau organ yang ditransplantasikan berasal dari tubuhnya sendiri. Misalnya, kulit wajah yang rusak dapat ditransplantasikan dengan kulitnya sendiri yang bisa diambil dari kulit paha.<br />\nTransplantasi biasanya dapat dilakukan jika terdapat kecocokan antara gen pendonor dengan penerima. Biasanya, pendonor lebih banyak diambil dari satu garis keturunan.</p>\n', 25),
(21, '<p>1. Fungsi Rangka<br />\nRangka tubuh manusia mempunyai beberapa fungsi berikut.<br />\na. Menegakkan dan menopang badan, misalnya tulang-tulang punggung dan tulang paha.<br />\nb. Melindungi bagian-bagian tubuh yang lunak dan penting, misalnya tengkorak melindungi otak dan mata.<br />\nc. Sebagai alat gerak pasif.<br />\nd. Memberi bentuk tubuh.<br />\ne. Tempat pembuatan sel darah merah dan sel darah putih.<br />\nf. Tempat melekatnya otot-otot rangka.</p>\n', 26),
(22, '<p>2. Jenis Tulang<br />\nTubuh manusia disusun oleh rangka dalam (endoskeleton). Berdasarkan sifatsifat jaringan penyusunnya, tulang rangka dapat dibedakan menjadi dua jenis, yaitu tulang rawan dan tulang keras.<br />\na. Tulang Rawan (Kartilago)<br />\nTulang rawan tersusun dari sel-sel tulang rawan. Sel-sel tulang rawan disebut kondrosit. Kondrosit terbentuk dari sel-sel tulang rawan muda (kondroblas). Kondrosit terdapat dalam ruangan yang disebut lakuna. Kondroblas menghasilkan matriks berupa kondrin. Kondrin umumnya berupa hialin yang homogen dan jernih. Kondrin yang berserabut mengandung banyak zat kolagen (zat perekat tulang).<br />\nAda tiga tipe tulang rawan yaitu tulang rawan hialin, fibrosa, dan elastis.<br />\n1) Tulang rawan hialin bersifat kuat dan elastis serta berwarna putih kebirubiruan, contoh tulang hidung, trakea, laring, dan ujung tulang rusuk.<br />\n2) Tulang rawan fibrosa (serat) bersifat keras dan berwarna putih, contoh tulang tempurung lutut dan ruas tulang belakang.<br />\n3) Tulang rawan elastis bersifat fleksibel dan elastis serta berwarna kuning, contoh daun telinga dan epiglotis. Tulang rawan bersifat lentur serta terdiri atas sel-sel rawan yang dapat menghasilkan matriks berupa kondrin. Pada anak-anak, tulang rawan berasal dari sel mesenkim dan mengandung banyak kondroblas. Pada orang dewasa tulang rawan mengandung banyak matriks. Tulang rawan pada orang dewasa dibentuk oleh perikondrium (selaput tulang rawan) yang mengandung kondroblas.<br />\nb. Tulang Keras (Osteon)<br />\nTulang keras tersusun dari sel-sel tulang yang disebut osteosit. Tulang keras berfungsi menyusun berbagai sistem rangka. Sel tulang keras (osteosit) terbentuk dari osteoblas (sel tulang muda). Osteosit terdapat dalam ruangan yang disebut lakuna. Antarlakuna tersebut dihubungkan oleh kanalikuli yang<br />\nberisi sitoplasma dan pembuluh darah. Kanalikuli berfungsi memenuhi kebutuhan nutrisi osteosit.<br />\nTulang keras dibedakan menjadi dua yaitu tulang kompak (tulang padat) dan tulang spons (tulang<br />\nberongga). Contoh tulang kompak terdapat pada tulang pipa, sedangkan contoh tulang spons terdapat pada bagian epifisis tulang pipa. Matriks tulang keras (tulang kompak) mengandung zat kapur, fosfat, dan serabut kolagen. Adapun matriks tulang spons mengandung sumsum tulang atau sel-sel lemak.</p>\n', 27),
(23, '<p>3. Bentuk Tulang<br />\nBerdasarkan bentuknya, terdapat tiga macam bentuk tulang yang menyusun rangka tubuh yaitu tulang pendek, tulang pipih, dan tulang pipa.<br />\na. Tulang pipih berbentuk pipih dan lebar. Tulang pipih tersusun dari dua lempengan tulang kompak dan tulang spons. Di dalam tulang spons terdapat sumsum tulang. Kebanyakan tulang pipih menyusun dinding rongga sehingga tulang pipih berfungsi sebagai pelindung atau sebagai penguat. Contoh tulang pipih yaitu tulang tengkorak, tulang rusuk, dan tulang belikat.<br />\nb. Tulang pendek berbentuk seperti kubus atau pendek tidak beraturan. Tulang ini terdapat pada telapak tangan dan kaki serta ruas-ruas tulang belakang.<br />\nc. Tulang pipa berbentuk seperti tabung dan pada umumnya berongga. Kedua ujungnya membulat dan terjadi perluasan yang berfungsi untuk berhubungan dengan tulang lain. Tulang pipa terdiri atas tiga bagian yaitu bagian ujung (epifisis), bagian tengah (diafisis), dan bagian antara epifisis dan diafisis yang disebut metafisis. Pada bagian metafisis terdapat cakra epifisis, yaitu bagian tulang pipa yang dapat bertambah panjang selama masa pertumbuhan. Contoh tulang pipa adalah tulang paha dan tulang betis.<br />\nDi dalam tulang pipa terdapat osteoblas yang berfungsi untuk perkembangan, pemeliharaan, perawatan, dan perbaikan tulang.</p>\n', 28),
(24, '<p>4. Proses Pembentukan Tulang<br />\nUrutan proses pembentukan tulang (osifikasi) sebagai berikut.<br />\na. Bagian dalam tulang rawan pada embrio berisi banyak osteoblas.<br />\nb. Osteoblas membentuk osteosit. Osteosit tersusun melingkar membentuk system Havers. Di tengah sistem Havers terdapat saluran Havers yang mengandung banyak pembuluh darah dan serabut saraf.<br />\nc. Osteosit menyekresikan zat protein yang akan menjadi matriks tulang. Selanjutnya, osteosit akan mendapat tambahan senyawa kalsium dan fosfat yang akan membuat tulang mengeras.<br />\nd. Selama terjadi penulangan (osifikasi) bagian di antara epifisis dan diafisis membentuk cakra epifisis. Cakra epifisis berupa tulang rawan yang mengandung banyak osteoblas.<br />\ne. Bagian cakra epifisis terus mengalami penulangan yang mengakibatkan tulang memanjang.<br />\nf. Di bagian tengah tulang pipa terdapat osteoklas yang merusak tulang. Akibatnya, tulang tersebut menjadi berongga dan terisi oleh sumsum tulang.</p>\n', 29),
(25, '<p>5. Susunan Tulang dalam Tubuh<br />\nSkeleton manusia dapat dibedakan menjadi dua kelompok besar yaitu skeleton aksial sumbu tubuh dan skeleton apendikular (anggota tubuh). Skeleton aksial adalah tulang-tulang yang menyusun sumbu utama tubuh manusia dari ujung kepala sampai ujung tulang ekor. Adapun skeleton apendikuler adalah tulang-tulang yang menyusun alat gerak atas dan alat gerak bawah.<br />\na. Skeleton Aksial<br />\nSkeleton aksial terletak pada sumbu tubuh meliputi tulang tengkorak, tulang belakang, tulang dada, serta tulang rusuk.<br />\n1) Tulang Tengkorak (Skull)<br />\nTulang tengkorak terdiri atas tulang pipih yang berjumlah 28 buah. Tulang-tulang pembentuk tengkorak<br />\ndibedakan menjadi tengkorak wajah (muka) dan tempurung kepala (tengkorak pelindung otak). Tulang<br />\ntempurung kepala terdiri atas tulang dahi, tulang kepala bagian belakang, tulang ubun-ubun, tulang baji, dan tulang pelipis. Adapun tulang muka terdiri atas tulang pipi, tulang hidung, tulang rahang atas, tulang rahang bawah, tulang air mata, dan tulang langit-langit. Fungsi tulang tengkorak adalah melindungi otak, mata, dan telinga bagian dalam.<br />\n2) Tulang Belakang (Vertebrae)<br />\nTulang belakang terdiri atas 26 buah ruas tulang. Tulang leher paling atas yang berhubungan dengan tempurung kepala disebut tulang atlas. Tulang belakang dibedakan atas tulang leher, tulang punggung, tulang pinggang, tulang kelangkang, dan tulang ekor. Tulang kelangkang merupakan fusi dari lima ruas tulang belakang, sedangkan tulang ekor merupakan fusi dari empat segmen terakhir tulang belakang. Fungsi tulang belakang yaitu menegakkan tubuh dan tengkorak serta sebagai pelekatan tulang-tulang rusuk.<br />\n3) Tulang Rusuk dan Tulang Dada (Sternum)<br />\nTulang dada terdiri atas tiga bagian yaitu bagian hulu, badan, dan taju pedang. Sementara itu, tulang rusuk terdiri atas 12 pasang yang dapat dibedakan menjadi tiga macam, yaitu tujuh pasang tulang rusuk sejati, tiga pasang tulang rusuk palsu, dan dua pasang tulang rusuk melayang. Tulang dada dengan tulang rusuk dan tulang belakang secara bersama-sama berfungsi melindungi organ vital seperti jantung dan paru-paru.<br />\nb. Skeleton Apendikuler<br />\nSkeleton apendikuler terdiri atas tungkai atas, tungkai bawah, tulang bahu, dan tulang pinggul. Tungkai atas terdiri atas tulang lengan, tulang hasta, tulang pengumpil, tulang pergelangan tangan, tulang telapak tangan, dan tulang jari tangan. Pangkal lengan berhubungan dengan tulang bahu. Tulang bahu terdiri atas tulang selangka dan tulang belikat. Tungkai bawah tulang paha berhubungan dengan tulang gelang panggul. Tulang panggul terdiri atas tulang duduk, tulang usus, dan tulang kemaluan.</p>\n', 30),
(26, '<p>6. Hubungan Antartulang (Persendian atau Artikulasi)<br />\nBagian dari sistem rangka yang menghubungkan antartulang sehingga kita dapat bergerak adalah persendian. Berdasarkan keleluasaan gerakan yang dihasilkan, persendian dibedakan menjadi sinartrosis, amfiartrosis, dan diartrosis. Sinartrosis (sendi mati) adalah persendian yang tidak memungkinkan terjadinya pergerakan. Sinartrosis ada dua macam yaitu sinostosis dan sinkondrosis. Sinostosis adalah hubungan antartulang yang dihubungkan dengan jaringan ikat serabut padat. contoh pada tengkorak. Sinkondrosis adalah persendian oleh tulang rawan (kartilago) hialin, contoh hubungan antara epifisis dan diafisis pada tulang dewasa. Amfiartrosis (sendi kaku) adalah persendian yang memungkinkan terjadinya sedikit gerakan. Hubungan antartulang ini dihubungkan oleh kartilago sehingga memungkinkan sedikit gerakan, contoh sendi antara tulang betis dan tulang kering. Diartrosis (sendi gerak) adalah persendian yang memungkinkan gerakan tulang-tulang secara leluasa. Hubungan antara tulang ini dihubungkan oleh ligamen sehingga dapat digerakkan.<br />\na. Ruang sinovial, berisi cairan sinovial yang berfungsi sebagai pelumas.<br />\nb. Ligamen, berupa jaringan ikat yang menghubungkan kedua ujung tulang.<br />\nc. Kapsul sendi merupakan lapisan serabut yang menyelubungi rongga sendi.<br />\nd. Tulang rawan hialin, berfungsi melindungi kedua ujung tulang yang membentuk persendian dari benturan keras.<br />\nBerdasarkan arah gerak yang ditimbulkan, diartrosis dapat dibedakan menjadi sendi peluru, sendi pelana, sendi engsel, sendi geser, sendi putar, dan sendi luncur.<br />\na. Sendi peluru, memungkinkan gerakan ke segala arah. Contohnya persendian antara tulang lengan atas dan gelang bahu.<br />\nb. Sendi pelana, memungkinkan gerakan ke dua arah. Contohnya persendian antara tulang ibu jari dan tulang telapak tangan.<br />\nc. Sendi engsel, memungkinkan gerakan ke satu arah. Contohnya persendian pada siku dan lutut.<br />\nd. Sendi geser, memungkinkan gerakan bergeser. Contohnya persendian antara ruas-ruas tulang belakang.<br />\ne. Sendi putar, memungkinkan gerakan memutar. Contohnya persendian antara tengkorak dan tulang atlas.<br />\nf. Sendi luncur, memungkinkan gerakan badan melengkung ke depan, ke belakang, atau memutar. Contohnya persendian antara tulang belikat (skapula) dan tulang selangka (klavikula).</p>\n', 31),
(27, '<p>1. Macam-Macam Otot<br />\nBerdasarkan bentuk morfologis, sistem kerja, dan lokasinya dalam tubuh, otot dapat dibedakan menjadi tiga jenis yaitu otot lurik, otot jantung, dan otot polos.<br />\na. Otot Lurik/Otot Rangka/Otot Serat Lintang<br />\nOtot lurik disebut juga otot sadar karena bekerjanya dikendalikan oleh kehendak kita. Otot lurik tersusun dari miofibril berinti banyak, intinya terletak di tepi sel, berwarna gelap dan terang, tersusun teratur, serta tampak bergaris. Otot lurik mempunyai kontraksi cepat, tidak teratur, dan mudah lelah. Otot lurik melekat pada rangka dan berfungsi menggerakkan rangka. Otot lurik dapat bergerak karena rangsang berupa panas, dingin, listrik, dan rangsang kimia.<br />\nb. Otot Jantung atau Miokardium<br />\nOtot jantung mempunyai ciri seperti otot lurik, tetapi berinti satu atau dua dan terletak di tengah sel. Selain itu, otot jantung bercabang-cabang menghubungkan sel satu dengan sel lain. Cabang dari otot jantung disebut anastomosis. Batas antarsel otot jantung tampak jelas dan disebut diskus interkalaris. Otot jantung hanya terdapat di jantung dan kontraksinya bekerja di luar kesadaran.<br />\nc. Otot Polos<br />\nSel otot polos berbentuk seperti gelendong, berinti satu, dan intinya terletak di tengah sel. Kontraksinya lambat dan tidak mudah lelah. Hal ini disebabkan karena kerja otot polos tidak dipengaruhi oleh kehendak. Otot polos terdapat pada dinding organ-organ bagian dalam.</p>\n', 32),
(28, '<p>2. Mekanisme Gerak Otot<br />\nSecara mikroskopis otot lurik tersusun dari miofibril dengan garis-garis gelap dan terang. Setiap miofibril tersusun dari sarkomer yang dibatasi dua garis Z. Sarkomer adalah unit otot yang dibatasi oleh garis gelap dan terang. Sarkomer mengandung filamen protein tebal (miosin) dan tipis (aktin) yang saling<br />\nbertumpang tindih. Pita A adalah daerah gelap yang mengandung aktin dan miosin. Zona H adalah bagian pita A yang hanya mengandung miosin di bagian tengah. Pita I adalah daerah ujung sarkomer yang terdapat daerah terang dan hanya mengandung aktin. Ketika otot berkontraksi, aktin dan miosin<br />\nbertautan serta saling menggelincir. Akibatnya, zona H dan pita I memendek sehingga sarkomer juga memendek.<br />\nMekanisme kerja otot dapat dijelaskan sebagai berikut. Jika otot mendapatkan rangsang, asetilkolin dalam otot akan membebaskan ion kalsium yang merangsang pembentukan aktomiosin sehingga mengakibatkan otot berkontraksi. Apabila sudah tidak ada rangsang, ion kalsium akan direabsorpsi.<br />\nAkibatnya, konsentrasi ion kalsium berkurang dan ikatan antara aktin dan miosin terlepas. Dengan demikian, sarkomer akan memanjang dan otot dalam keadaan relaksasi.<br />\nSaat berkontraksi, otot membutuhkan energi dan oksigen. Fase kontraksi disebut juga fase anaerob karena energi diperoleh dari penguraian ATP dan kreatin fosfat yang berlangsung secara anaerob. Dalam fase tersebut berlangsung suatu mekanisme proses kimia. Oleh karena itu, dalam mempelajari ilmu Biologi tidak terlepas dari ilmu Kimia. Adapun proses-proses kimia tersebut dapat dituliskan sebagai berikut.<br />\nKreatin fosfat + ADP &rarr;kreatin + ATP<br />\nATP &rarr;ADP + Energi<br />\nADP &rarr;AMP + Energi<br />\nFase relaksasi disebut juga fase aerob karena energi dihasilkan dari hasil pemecahan glikogen yang berlangsung secara aerob. Prosesnya adalah glikogen dipecah menjadi laktasidogen dengan diubah menjadi glukosa dan asam laktat. Glukosa akan dioksidasi sehingga menghasilkan energi serta melepaskan CO2 dan H2O. Adapun asam laktat merupakan hasil samping dari penguraian laktasidogen.<br />\nPenimbunan asam laktat dalam otot secara berlebihan mengakibatkan kelelahan otot. Anda telah mempelajari mengenai mekanisme kontraksi dan relaksasi pada otot sehingga menimbulkan suatu gerakan. Otot dapat berkontraksi karena dipengaruhi oleh beberapa rangsang antara lain rangsang panas, dingin, listrik, dan rangsang kimia.</p>\n', 33),
(29, '<p>3. Sifat Gerak Otot dan Jenis-Jenis Gerak<br />\nBerdasarkan sifat gerak, otot dibedakan menjadi otot sinergis dan otot antagonis. Otot sinergis adalah<br />\npasangan otot yang bekerja sama dengan tujuan yang sama. Sebagai contoh, otot-otot antartulang rusuk yang bekerja sama ketika menarik napas serta otot pronator teres dan otot pronator kuadratus yang bekerja sama dalam menelentangkan dan menelungkupkan telapak tangan. Sementara itu, otot antagonis adalah pasangan otot yang kerjanya berlawanan. Sebagai contoh, otot bisep dan otot trisep. Untuk mengangkat lengan bawah, otot bisep berkontraksi dan otot trisep berelaksasi serta untuk menurunkan lengan bawah otot bisep berelaksasi dan otot trisep berkontraksi.<br />\nKerja otot antagonis akan menghasilkan jenis-jenis gerakan yang berlawanan. Anda dapat mengetahui jenis-jenis gerakan yang disebabkan oleh otot antagonis melalui uraian materi berikut.<br />\na. Abduksi &ndash; Adduksi<br />\nAbduksi adalah gerakan menjauhi badan, sedangkan adduksi adalah gerakan mendekati badan.<br />\nb. Depresi &ndash; Elevasi<br />\nDepresi adalah gerak menurunkan, sedangkan elevasi adalah gerak mengangkat.<br />\nc. Supinasi &ndash; Pronasi<br />\nSupinasi adalah gerak menengadahkan tangan, sedangkan pronasi adalah gerak menelungkupkan tangan.<br />\nd. Ekstensi &ndash; Fleksi<br />\nEkstensi adalah gerak meluruskan, sedangkan fleksi adalah gerak membengkokkan.</p>\n', 34),
(30, '<p>Kelainan pada sistem gerak dapat menyerang tulang, persendian, dan otot. Kelainan atau gangguan yang berhubungan dengan otot antara lain tetanus, atrofi otot, kram atau kejang, hipertrofi otot, kaku leher (stiff), distrofi otot, dan hernia abdominal. Adapun kelainan atau gangguan yang berhubungan dengan tulang penyusun rangka antara lain rakitis, nekrosis, skoliosis, kifosis, lordosis, dan osteoporosis. Bagian persendian pun dapat mengalami gangguan, misal dislokasi, terkilir, ankilosis, dan arthritis.<br />\nUntuk memperoleh informasi lengkap mengenai penyakit pada sistem gerak serta cara penanganannya, Anda dapat mengakses alamat website berikut.<br />\n1. http://goo.gl/YkySbu.<br />\n2. http://goo.gl/PUVEqA.<br />\n3. http://goo.gl/z3AFo8.<br />\nPerkembangan ilmu dan teknologi didukung dengan pola pikir ilmiah telah berhasil menciptakan berbagai teknologi yang digunakan untuk membantu kelainan pada tulang. Dengan demikian, dapat dikatakan bahwa Biologi berhubungan erat dengan ilmu Kedokteran. Jenis-jenis teknologi yang digunakan untuk membantu gangguan pada tulang sebagai berikut.<br />\n1. Transplantasi Sumsum Tulang<br />\nSumsum merah yang terdapat di dalam tulang dapat ditransplantasikan dari satu orang ke orang lain. Transplantasi sumsum merah ini berguna untuk proses penyembuhan kanker darah (leukemia). Transplantasi sumsum tulang merupakan salah satu jenis transplantasi sel punca (stem cell).</p>\n', 35),
(31, '<p>2. Penggantian Sendi<br />\nPada orang tua yang mengalami penyakit degeneratif tulang, sendi-sendinya mengalami kerusakan sehingga menimbulkan rasa sakit. Untuk mengatasi permasalahan tersebut, saat ini telah dikenal metode pembedahan untuk mengganti sendi dengan bahan logam. Bonggol sendi diganti dengan logam campuran (missal campuran titanium) dan cawan sendi diganti dengan mangkuk polietilena (misal plastik) yang memiliki kerapatan tinggi. Selanjutnya, kedua sisi direkatkan dengan senyawa metal metakrilat yang berpori sehingga fisiologi tulang tetap normal.</p>\n', 36),
(32, '<p>3. Penyembuhan Patah Tulang<br />\nPenyembuhan patah tulang dapat dilakukan dengan cara-cara berikut.<br />\n1) Pembidaian, dilakukan dengan cara menempatkan benda keras di daerah sekeliling tulang yang patah.<br />\n2) Pemasangan gibs, dilakukan dengan membungkuskan bahan kapur di sekitar tulang yang patah.<br />\n3) Pembedahan internal, dilakukan dengan cara melakukan pembedahan dan menempatkan batang logam pada tulang yang patah.</p>\n', 37),
(33, '<p>Darah merupakan cairan yang terdapat dalam pembuluh darah yang berfungsi untuk menyalurkan zat-zat ke seluruh tubuh. Volume darah manusia kurang lebih 8% dari total berat badan manusia.<br />\n1. Komponen Darah<br />\nApa yang Anda pikirkan jika sampel darah disentrifugasi? Apabila contoh darah diambil, kemudian dimasukkan ke dalam tabung reaksi dan disentrifugasi maka dapat diketahui bahwa darah tersusun dari 55% plasma darah dan 45% sel-sel darah.<br />\na. Plasma Darah<br />\nPlasma darah terdiri atas 90% air dan 10% sisanya zat-zat yang terlarut di dalamnya. Zat terlarut dalam plasma darah meliputi protein (albumin, glabulin, protombin, dan fibrinogen), garam mineral (NaCl, magnesium, dan besi), bahan organik (glukosa, asam amino, dan asam lemak), hormon, gas (karbon dioksida), dan sisa metabolisme. Plasma darah berfungsi sebagai pelarut zat-zat lain dan mengedarkan sari-sari makanan.<br />\nb. Sel-Sel Darah<br />\nAda tiga macam sel darah, yaitu sel darah merah (eritrosit), sel darah putih (leukosit), dan keping darah (trombosit).<br />\n1) Sel Darah Merah (Eritrosit)<br />\nKarakteristik sel darah merah sebagai berikut.<br />\na) Berbentuk bikonkaf.<br />\nb) Tidak berinti.<br />\nc) Berwarna merah karena mengandung hemoglobin. Hemoglobin berperan mengikat oksigen dan karbon dioksida.<br />\nd) Setiap mm3 darah pada seorang laki-laki mengandung &plusmn;5 juta eritrosit dan pada seorang perempuan terdapat &plusmn;4 juta sel eritrosit.<br />\ne) Saat dalam rahim ibu, eritrosit dibentuk dalam hati dan limpa. Setelah dilahirkan, eritrosit dibentuk dalam sumsum tulang.<br />\nf) Eritrosit dapat berumur sampai 120 hari. Setelah mati, eritrosit akan dirombak menjadi bilirubin dan biliverdin di dalam hati.<br />\n2) Sel Darah Putih (Leukosit)<br />\nKarakteristik sel darah putih sebagai berikut.<br />\na) Leukosit memiliki inti sel.<br />\nb) Tidak mengandung hemoglobin sehingga tidak berwarna merah.<br />\nc) Memiliki ukuran lebih besar daripada eritrosit.<br />\nd) Leukosit dibentuk di dalam sumsum merah, limpa, dan kelenjar getah bening atau kelenjar limfe.<br />\ne) Dalam setiap mililiter darah terdapat leukosit sekitar 5.000&ndash;10.000 butir.<br />\nBerdasarkan karakteristik sitoplasmanya, leukosit dapat dibagi menjadi dua yaitu granulosit (sitoplasma bergranula) dan agranulosit (sitoplasma tidak bergranula).<br />\nJenis-jenis Leukosit Granulosit dan Agranulosit sebagai berikut.<br />\nBergranula<br />\nBasofil :<br />\n&bull; Setiap mm3 darah mengandung 20&ndash;50 butir.<br />\n&bull; Plasma bersifat basa dan terdapat bintik-bintik biru yang mengandung histamin (senyawa yang menimbulkan reaksi alergi).<br />\n&bull; Memproduksi heparin (berperan dalam pembekuan darah).<br />\n&bull; Bersifat fagosit.<br />\nEosinofil :<br />\n&bull; Setiap mm3 darah mengandung 100&ndash;400 butir.<br />\n&bull; Plasma bersifat asam dan terdapat bintik-bintik merah.<br />\n&bull; Pertahanan terhadap parasit.<br />\n&bull; Bersifat fagosit.<br />\nNeutrofil :<br />\n&bull; Setiap mm3 darah mengandung 3.000&ndash;7.000 butir.<br />\n&bull; Plasma bersifat netral dan terdapat bintik-bintik merah kebiruan.<br />\n&bull; Memusnahkan bakteri dan zat-zat asing yang masuk ke tubuh.<br />\n&bull; Bersifat fagosit.<br />\nTidak Bergranula<br />\nLimfosit :<br />\n&bull; Setiap mm3 darah mengandung 1.500&ndash;3.000 butir.<br />\n&bull; Tidak dapat bergerak bebas dan dapat membentuk zat antibodi.<br />\n&bull; Berperan dalam pertahanan terhadap serangan mikroorganisme (virus), makromolekul asing, dan sel-sel kanker.<br />\nMonosit :<br />\n&bull; Setiap mm3 darah mengandung 100&ndash;700 butir.<br />\n&bull; Dapat bergerak cepat.<br />\n&bull; Bersifat fagosit.<br />\n&bull; Monosit dapat bergerak bebas serta dapat membesar dan berkembang menjadi makrofag. Makrofag merupakan sel fagositik terbesar dan berumur panjang.<br />\n&bull; Berperan menjaga kekebalan tubuh dari infeksi.<br />\n3) Keping Darah (Trombosit)<br />\nTrombosit merupakan fragmenfragmen besar sel yang disebut megakariosit.<br />\nKarakteristik keping darah sebagai berikut.<br />\na) Keping darah berukuran kecil dan memiliki bentuk tidak beraturan.<br />\nb) Keping darah tidak berinti.<br />\nc) Masa hidup keping darah &plusmn;10&ndash;12 hari.<br />\nd) Dalam setiap mm3 darah terdapat keping darah sekitar 200.000&ndash;400.000 butir.<br />\ne) Keping darah berperan dalam proses penggumpalan darah.</p>\n', 38),
(34, '<p>2. Golongan Darah<br />\nGolongan darah setiap orang dapat berbeda-beda. Pada tahun 1900, Dr. Karl Landsteiner melakukan penelitian yaitu mencampur eritrosit seseorang dengan serum darah orang lain. Pada percobaan pertama, terjadi penggumpalan (aglutinasi) dan pada percobaan yang kedua, tidak terjadi penggumpalan. Pada akhirnya, Dr. Karl Landsteiner menemukan perbedaan antara aglutinogen dan aglutinin. Aglutinogen dibedakan menjadi dua yaitu aglutinogen A dan B. Aglutinin juga dibedakan menjadi dua yaitu aglutinin ïƒ¡ï€ dan ïƒ¢. Atas dasar inilah Dr. Karl Landsteiner memperkenalkan sistem penggolongan darah ABO yang membedakan darah ke dalam empat golongan, seperti berikut.<br />\nGolongan darah A memiliki aglutinogen A, aglutinin &beta;<br />\nGolongan darah B memiliki aglutinogen B, aglutinin &alpha;<br />\nGolongan darah AB memiliki aglutinogen A dan B, aglutinin tidak ada<br />\nGolongan darah O tidak memiliki aglutinogen, aglutinin &alpha; dan &beta;<br />\nBagaimana cara membaca golongan darah seseorang berdasarkan penjelasan di atas? Apabila eritrosit seseorang mengandung aglutinogen A, sedangkan plasma darahnya mengandung aglutinin ïƒ¢ï€ (anti-B) maka orang tersebut bergolongan darah A.<br />\nPenggolongan darah ABO berperan dalam transfusi darah. Transfusi darah merupakan proses pemindahan darah dari tubuh seseorang ke dalam tubuh orang lain. Orang yang menerima darah disebut penerima (resipien). Adapun orang yang memberikan darah disebut pemberi (donor).<br />\nHal yang harus diperhatikan dalam transfusi darah yaitu jenis aglutinogen donor dan aglutinin resipien. Aglutinin memiliki kemampuan untuk menggumpalkan eritrosit. Jadi, apabila darah donor tidak sesuai dengan resipien maka aglutinogen donor akan bercampur dengan aglutinin resipien dan mengakibatkan darah resipien menggumpal.<br />\nTransfusi darah :<br />\nResipien A : Donor A tidak menggumpal, B menggumpal, AB menggumpal, O tidak menggumpal.<br />\nResipien B : Donor A menggumpal, B tidak menggumpal, AB menggumpal, O tidak menggumpal<br />\nResipien O : Donor A menggumpal, B menggumpal, AB menggumpal, O tidak menggumpal<br />\nResipien AB : Donor A tidak menggumpal, B tidak menggumpal, AB tidak menggumpal, O tidak menggumpal<br />\nSeseorang dengan golongan darah O disebut donor universal karena dapat ditransfusikan kepada semua golongan darah. Golongan darah AB disebut resipien universal karena dapat menerima transfusi dari semua golongan darah. Namun, pada praktiknya hal tersebut jarang dilakukan. Darah manusia memiliki warna yang sama. Namun, protein dalam darah manusia ternyata berbeda. Hal tersebut menunjukkan kompleksitas ciptaan Tuhan. Sudah seharusnya Anda bersyukur kepada Tuhan yang dapat diwujudkan dengan menjaga ciptaan-Nya.</p>\n', 39),
(35, '<p>3. Pembekuan Darah<br />\nDarah manusia memiliki komponen yang berperan dalam pembekuan darah dan penutupan luka. Komponen darah tersebut adalah trombosit. Mekanisme pembekuan darah oleh trombosit sebagai berikut.<br />\nApabila terjadi luka hingga membuat pembuluh darah terpotong, trombosit akan menempel pada lapisan jaringan ikat di pembuluh darah. Selanjutnya, trombosit mengeluarkan zat-zat berupa serotinin dan trombokinase. Serotinin akan membuat trombosit yang berdekatan saling menempel di dekat luka. Sementara itu, trombokinase akan bercampur dengan plasma darah. Trombokinase berperan untuk mengubah protrombin menjadi trombin. Selain peran serta trombokinase, perubahan protrombin menjadi trombin dipengaruhi oleh faktor-faktor seperti vitamin K dan ion kalsium. Trombin berfungsi untuk mengubah fibrinogen menjadi fibrin. Fibrin merupakan protein berbentuk benang yang akan saling bertautan sehingga eritrosit dan plasma darah akan terjaring membentuk gumpalan di sekitar pembuluh darah yang luka. Pada akhirnya, jaringan baru akan terbentuk menggantikan gumpalan tersebut dan luka menutup.</p>\n', 40),
(36, '<p>1. Alat-Alat Peredaran Darah<br />\na. Jantung<br />\nJantung disarafi oleh saraf tidak sadar yang menempel di antara dua bilik sebagai suatu berkas. Berkas ini disebut berkas Hiss. Jantung manusia terdiri atas empat ruang yaitu atrium kanan dan kiri serta ventrikel kanan dan kiri. Secara struktur, dinding ventrikel lebih tebal daripada dinding atrium karena ventrikel berfungsi memompa darah keluar jantung. Dinding ventrikel kiri lebih tebal daripada ventrikel kanan karena ventrikel kiri berfungsi memompa darah ke seluruh tubuh.<br />\nAntarruang jantung dipisahkan oleh sekat (septum). Atrium kiri dan kanan dipisahkan oleh septum atrioreum. Sementara itu, ventrikel kiri dan ventrikel kanan dipisahkan oleh septum interventrikularis. Adapun sekat pemisah antara atrium dan ventrikel yaitu septum atrioventrikularis. Selain sekat, jantung juga memiliki katup yang disebut valvula. Katup jantung yang berada di antara atrium kanan dan ventrikel kanan disebut valvula trikuspidalis. Katup jantung yang berada di antara atrium kiri dan ventrikel kiri disebut valvula bikuspidalis. Katup-katup tersebut berfungsi mencegah darah dalam ventrikel tidak kembali lagi ke atrium. Selain antarruang dalam jantung, antara aorta dengan arteri pulmonalis juga terdapat katup yang disebut valvula semilunaris. Katup tersebut berfungsi mencegah darah yang menuju tubuh dan paru-paru tidak kembali lagi ke jantung.<br />\nSaat melakukan fungsinya, jantung berdenyut dengan siklus kontraksi relaksasi. Periode relaksasi yaitu pada saat bilik jantung mengembang sehingga darah mengalir ke dalam bilik jantung. Kondisi ini disebut diastol. Periode kontraksi yaitu pada saat bilik jantung menguncup sehingga darah terdorong keluar jantung. Kondisi ini disebut sistol. Pada umumnya, orang dewasa memiliki tekanan sistol kurang lebih 120 mmHg dan tekanan diastol kurang lebih 80 mmHg. Tekanan darah dapat diketahui dengan menggunakan alat tensimeter atau sphigmomanometer.<br />\nb. Pembuluh Darah<br />\nPembuluh darah pada manusia dibedakan menjadi dua macam, yaitu arteri dan vena.<br />\n1) Pembuluh Nadi (Arteri)<br />\nArteri merupakan pembuluh darah yang mengalirkan darah meninggalkan jantung. Ada dua macam arteri yaitu arteri pulmonalis dan aorta. Arteri bercabang-cabang hingga membentuk pembuluh darah yang diameternya lebih kecil. Pembuluh ini disebut arteriola. Selanjutnya, arteriola bercabang-cabang lagi menjadi pembuluh yang lebih halus disebut kapiler.<br />\n2) Pembuluh Balik (Vena)<br />\nVena adalah pembuluh darah yang membawa darah kembali menuju jantung. Vena bercabang-cabang hingga membentuk pembuluh darah yang diameternya lebih kecil. Pembuluh ini disebut venula. Selanjutnya, venula bercabang-cabang lagi menjadi pembuluh yang lebih halus disebut kapiler. Ada tiga macam vena yaitu vena kava superior, vena kava inferior, dan vena pulmonalis.<br />\nAdapun perbedaan antara arteri dan vena sebagai berikut.<br />\nArteri<br />\nDinding : Tebal dan elastis<br />\nKatup : Satu, terdapat pada pangkal aorta<br />\nLetak : Di bagian dalam tubuh<br />\nTekanan : Kuat, jika terpotong darah memancar<br />\nArah aliran darah : Keluar dari jantung<br />\nVena<br />\nDarah : Tipis dan kurang elastis<br />\nKatup : Banyak, terdapat sepanjang vena<br />\nLetak : Dekat dengan permukaan tubuh<br />\nTekanan : Lemah, jika terpotong darah menetes<br />\nArah aliran darah : Masuk ke jantung</p>\n', 41),
(37, '<p>2. Mekanisme Peredaran Darah<br />\nPeredaran darah manusia disebut sebagai peredaran darah tertutup dan ganda. Peredaran darah tertutup artinya darah mengalir di dalam pembuluh. Sementara itu, peredaran darah ganda artinya darah melewati jantung sebanyak dua kali dalam satu kali edar. Pertama, peredaran darah besar yaitu peredaran darah dari jantung (bilik kiri) ke seluruh tubuh dan kembali lagi ke jantung (serambi kanan). Kedua, peredaran darah kecil yaitu peredaran darah dari jantung (bilik kanan) ke paru-paru dan kembali lagi ke jantung (serambi kiri).</p>\n', 42);
INSERT INTO `materi` (`id`, `materi_desc`, `module_id`) VALUES
(38, '<p>Macam-Macam Gangguan pada Sistem Peredaran Darah<br />\nDarah : Anemia, Leukemia, Talasemia, Sickle cell, Hemofilia, Erythoblastosis foetalis.<br />\nJantung : Jantung coroner, Gagal Jantung, Perikarditis, Irama jantung abnormal, Heart Valve Desease, Cardiomyophaties<br />\nPembuluh darah : Hipertensi, Varises, Ambeien, Arteriosklerosis, Aterosklerosis<br />\nBeberapa gangguan pada sistem peredaran darah dapat diatasi dengan teknologi yang semakin berkembang dan maju. Beberapa teknologi yang berkaitan dengan sistem peredaran darah sebagai<br />\nberikut.<br />\n1. Golongan Darah untuk Pengujian Keturunan<br />\nGolongan darah anak dapat digunakan untuk memprediksi golongan darah orang tuanya. Kemungkinan golongan darah berdasarkan genotipe yang diwariskan.<br />\nAyah A<br />\nIbu A = IAIA<br />\nIbu B = IAIB<br />\nIbu O = IAIO<br />\nAyah B<br />\nIbu A = IAIB<br />\nIbu B = IBIB<br />\nIbu O = IBIO<br />\nAyah O<br />\nIbu A = IAIO<br />\nIbu B = IBIO<br />\nIbu O = IOIO<br />\nIAIA atau IAIO akan membentuk golongan darah A. IBIB atau IBIO akan membentuk golongan darah B. IAIB akan membentuk golongan darah AB. IOIO akan membentuk golongan darah O.<br />\n2. Operasi Jantung dan Pembuluh Darah<br />\nSeseorang penderita jantung koroner dapat diobati dengan melakukan operasi bypass. Prinsip operasi bypass yaitu mencangkokkan pembuluh darah baru yang menuju jantung. Pembuluh darah yang dicangkokkan dapat berasal dari pembuluh darah kaki.<br />\nOperasi jantung dan pembuluh darah pertama kali dilakukan pada tahun 1930-an dan mulai berkembang pada tahun 1953. Selama operasi berlangsung, jantung dibuat tidak aktif. Sebuah mesin yang berfungsi menggantikan fungsi jantung dipasangkan selama operasi berlangsung. Mesin jantung ini memiliki saluran yang berhubungan dengan vena kava dan aorta. Pertama, pompa mesin jantung menyedot darah dari vena kava jantung yang berisi darah kaya CO2. Darah tersebut dibawa menuju oksigenator untuk diambil karbon dioksidanya dan diganti dengan oksigen.<br />\nDarah yang sudah kaya oksigen dipompa menuju aorta untuk dialirkan ke seluruh tubuh. Senyawa antikoagulan (heparin) ditambahkan untuk menghindari penggumpalan darah.<br />\n3. Transplantasi Jantung<br />\nPrinsip dasar transplantasi jantung yaitu mengganti jantung yang tidak berfungsi dengan baik dengan jantung baru. Transplantasi jantung tidak dapat dilakukan dengan serta merta karena dapat memicu respons kekebalan tubuh. Transplantasi jantung harus memperhatikan faktor-faktor seperti usia, jenis kelamin, dan kecocokan donor organ.<br />\n4. Jantung Buatan<br />\nSetelah transplantasi jantung berhasil, muncullah teknologi jantung buatan. Jantung buatan yang pertama dibuat oleh Dr. Robert K. Jarvik pada tahun 1982. Jantung buatan ini terbuat dari poliester dacron, plastik, dan aluminium. Jantung buatan ini dapat mengatur aliran darah melalui sebuah sistem saluran udara yang masuk ke jantung melalui dada. Meskipun jantung buatan tersebut dapat membuat manusia bertahan hidup, ternyata pemakaian jantung buatan menimbulkan infeksi. Selain itu, para pengguna jantung buatan harus menggunakan pengencer darah untuk menghindari penyumbatan aliran darah dan strok.<br />\nSuatu bioproses yang tidak berlangsung dengan baik tentunya disebabkan oleh satu atau beberapa faktor. Oleh karena itu, Anda perlu menjaga kesehatan komponen sistem peredaran darah. Salah satunya yaitu dengan menjaga pola makan yang sehat. Kemajuan iptek telah banyak membantu manusia untuk mengatasi gangguan pada system peredaran darah. Namun, teknologi buatan manusia tersebut tidak akan pernah mengalahkan teknologi buatan Tuhan. Oleh karena itu, Anda harus banyak bersyukur atas teknologi buatan Tuhan tersebut.</p>\n', 43),
(39, '<p>Setiap orang mendambakan tubuh yang sehat dan ideal. Kondisi tubuh tersebut tidak mudah diperoleh. Ada banyak faktor yang memengaruhinya, salah satunya makanan. Tubuh yang sehat dan ideal memerlukan asupan makanan yang mengandung gizi seimbang.<br />\n1. Peranan Zat Makanan Bagi Tubuh<br />\nMakanan sehat berarti makanan yang higienis dan mengandung zat gizi seimbang. Makanan sehat mengandung berbagai zat yang diperlukan tubuh seperti karbohidrat, lemak, protein, vitamin, mineral, dan air.<br />\na. Karbohidrat<br />\nKarbohidrat merupakan senyawa organik yang terdiri atas unsur karbon, hidrogen, dan oksigen dengan perbandingan 1 atom C, 2 atom H, dan 1 atom O (CnH2nOn). Dilihat dari gugus gula penyusunnya karbohidrat dapat dibagi menjadi tiga golongan yaitu monosakarida, disakarida, dan polisakarida. Karbohidrat memiliki beberapa fungsi yaitu sebagai sumber energi (1 gram karbohidrat akan menghasilkan 4,1 kalori), mengatur proses metabolisme, menjaga keseimbangan asam dan basa, membantu proses penyerapan kalsium, mencegah terjadinya konstipasi, serta sebagai bahan pembentuk struktur sel, jaringan, dan organ tubuh. Bahan makanan yang mengandung karbohidrat antara lain jagung, gandum, padi, ketela pohon, kentang, dan sagu.<br />\nb. Lemak<br />\nLemak atau lipid merupakan zat organik hidrofobik sehingga sukar larut dalam air. Namun, lemak dapat larut dalam pelarut organik seperti eter dan kloroform. Lemak tersusun dari unsur karbon (C), hidrogen (H), oksigen (O), dan kadang-kadang fosfor (P) serta nitrogen (N). Lemak dapat berasal dari tumbuhan<br />\n(lemak nabati) dan dari hewan (lemak hewani). Bahan makanan yang mengandung lemak nabati yaitu kelapa, kemiri, zaitun, kacang tanah, dan buah avokad. Bahan makanan yang mengandung lemak hewani antara lain daging, keju, mentega, susu, telur (kuning telur), dan ikan segar.<br />\nDi dalam tubuh, lemak mempunyai beberapa fungsi penting yaitu penghasil energi tertinggi (1 gram lemak menghasilkan 9,3 kalori), pelindung tubuh dari pengaruh suhu rendah, pelindung alat-alat tubuh yang lunak, pelarut vitamin (vitamin A, D, E, dan K), penahan rasa lapar, penyusun membran sel, penyusun hormon dan vitamin, serta penyusun garam empedu.<br />\nc. Protein<br />\nProtein termasuk senyawa organik kompleks dengan berat molekul tinggi. Protein mengandung molekul karbon, hidrogen, oksigen, nitrogen, dan kadang mengandung sulfur serta fosfor. Protein terbentuk dari asam amino yang membentuk rantai panjang (polipeptida).<br />\nBerdasarkan sumbernya, protein dibedakan menjadi protein nabati dan protein hewani. Protein nabati dapat diperoleh dari kacang-kacangan dan sayur-sayuran. Protein hewani dapat diperoleh dari daging, ikan, susu, dan telur.<br />\nFungsi protein bagi tubuh adalah sebagai zat pembangun dan pelindung tubuh, mengganti sel-sel tubuh yang rusak, menyediakan energi (1 gram protein dapat menghasilkan energi 4,1 kalori), menyeimbangkan cairan dalam tubuh, menyintesis substansi-substansi penting, sebagai biokatalisator, serta berperan sebagai sistem buffer (penyangga pH) yang efektif. Defisiensi protein dapat mengakibatkan penyakit kwashiorkor dan maramus.<br />\nd. Vitamin<br />\nVitamin adalah molekul organik yang diperlukan dalam makanan dalam jumlah yang sangat kecil dibandingkan dengan jumlah asam amino esensial dan asam lemak yang diperlukan oleh hewan dalam<br />\njumlah yang sangat besar (Campbell, Reece, dan Mitchell: 2004). Vitamin berfungsi untuk membantu pengaturan atau proses kegiatan tubuh (metabolisme tubuh). Vitamin tidak dapat dihasilkan oleh tubuh,<br />\nkecuali vitamin K.<br />\na. Vitamin-Vitamin yang Larut dalam Air<br />\n1. Vitamin B1 (tiamin)<br />\nSumber : Ekstrak ragi, kacang-kacangan, susu, hati, dan kecambah<br />\nFungsi : Sebagai prekursor koenzim dalam metabolisme karbohidrat<br />\nAkibat Kekurangan : Beri-beri<br />\n2. Vitamin B2 (riboflavin) = C17H20O6N4<br />\nSumber : Hati, ginjal, susu, telur, mentega, sayuran, ragi, dan kecambah<br />\nFungsi : Transmisi rangsangan cahaya ke saraf mata, Menjaga nafsu makan, Memelihara kulit di sekitar mulut, Komponen koenzim dalam metabolisme energi<br />\nAkibat Kekurangan : Luka di sudut bibir (keilosis), Katarak, Dermatitis, Diare, Kelemahan otot<br />\n3. Vitamin B3 (niasin) = C6H5O2N<br />\nSumber : Susu, hati, ikan, telur, dan daging tanpa lemak<br />\nFungsi : Pertumbuhan sel, Bersama fosfat membentuk koenzim yang berperan dalam respirasi sel<br />\nAkibat Kekurangan : Penyakit pelagra dengan gejala 3D (dermatitis/radang kulit, diare, dan demensia)<br />\n4. Vitamin B5 (asam pantotenat) = C9H17O3N<br />\nSumber : Hati, daging, telur, susu, kentang, kacang-kacangan, dan ragi<br />\nFungsi : Memelihara keseimbangan unsur P dan K dalam sel, Aktif dalam pembentukan antibodi dan beberapa koenzim dalam metabolisme<br />\nAkibat Kekurangan : Peradangan kulit, Anemia, Mudah marah, Kejang otot, Keterbelakangan mental, Batu ginjal<br />\n5. Vitamin B11 (asam folat) = C12H12O6N7<br />\nSumber : Kacang-kacangan, ragi, hati, daging, pisang, lemon, dan sayuran hijau<br />\nFungsi : Pembuatan koenzim untuk produksi eritrosit, Membentuk asam nukleat untuk sintesis protein<br />\nAkibat Kekurangan : Anemia, Diare, Megaloblastosis (membesarnya eritrosit), Terhambatnya pertumbuhan.<br />\n6. Vitamin B12 (sianokobalin = anti anemia pernisiosa) = C63H90O14N14P9<br />\nSumber : Daging, unggas, ikan, telur, susu, keju, hati, udang, dan kerrang<br />\nFungsi : Metabolisme sel dan pertumbuhan jaringan, Pembentukan eritrosit<br />\nAkibat Kekurangan : Penurunan berat badan, Pusing, Anemia, Peradangan saraf<br />\n7. Vitamin C (asam askorbat) = C6H8O6<br />\nSumber : Jeruk, tomat, nanas, pepaya, semangka, stroberi, hati, dan sayur-sayuran segar<br />\nFungsi : Pembentukan serabut kolagen, Menjaga elastisitas kapiler darah, Menjaga perlekatan akar gigi pada gusi, Koenzim reaksi katabolisme karbohidrat dan lemak<br />\nAkibat kekurangan : Terganggunya imunitas tubuh, Pendarahan pada gusi dan persendian, Skorbut, Terhambatnya pembentukan kolagen, Kulit bersisik, Penurunan fungsi pembuluh darah, otot, dan tulang rawan<br />\nb. Vitamin-Vitamin yang Larut dalam Lemak<br />\n1. Vitamin A (retinol = antiseroftalmia) = C20H30OC31H46O2<br />\nSumber : Sayur-sayuran dan buah-buahan berwarna kuning dan merah (mengandung karoten), mentega, hati, kuning telur, dan daging<br />\nFungsi : Sebagai antioksidan, Memelihara kesehatan mata dan kulit, Membantu pertumbuhan tulang dan gigi, Menghambat proses penuaan, Memelihara jaringan epitel<br />\nAkibat kekurangan : Xeroftalmia (kornea menjadi kering karena adanya gangguan pada kelenjar air mata), Rabun senja, Kulit kasar, Kelelahan<br />\n2. Vitamin D (ergosterol = kalsiferol) = C26H44O<br />\nSumber : Susu, minyak ikan, kuning telur, ragi, dan sinar ultraviolet<br />\nFungsi : Absorpsi fosfor dan kalsium, Pembentukan tulang dan gigi<br />\nAkibat kekurangan : Rakitis (pada bayi), Osteomalacia (melunaknya tulang pada orang dewasa)<br />\n3. Vitamin E (tokoferol = antisterilitas) = C29H50O2<br />\nSumber ; Minyak zaitun, kecambah, susu, kuning telur, kacang-kacangan, tumbuhan hijau, dan biji gandum<br />\nFungsi : Pembentuk eritrosit, Fungsi reproduksi, Mencegah oksidasi lemak tak jenuh, Sebagai antioksidan<br />\nAkibat kekurangan : Kerusakan hati, Penimbunan lemak pada otot, Kemandulan, Pecahnya eritrosit sehingga mengakibatkan anemia<br />\n4. Vitamin K (filokuinon = antihemoragia) = C31H46O2<br />\nSumber : Kubis, bayam, hati, daging, dan kuning telur<br />\nFungsi : Pembekuan darah, Pembentukan protrombin dalam hati<br />\nAkibat kekurangan : Darah sukar membeku, Pendarahan</p>\n\n<p>e. Mineral<br />\nMineral merupakan substansi anorganik yang biasa ditemukan dalam bentuk ion. Mineral dibagi menjadi dua golongan yaitu unsur makro (makroelemen) dan unsur mikro (mikroelemen). Unsur makro yaitu unsur-unsur yang diperlukan tubuh dalam jumlah banyak, misal natrium, kalium, kalsium, fosfor, magnesium, dan belerang. Unsur mikro adalah unsur-unsur yang diperlukan tubuh dalam jumlah sedikit, misalnya mangan, seng, tembaga, dan kobalt.<br />\nJenis-jenis Unsur Mineral<br />\n1. Natrium (Na)<br />\nSumber : Garam dapur<br />\nFungsi : Memelihara keseimbangan cairan tubuh, Memelihara keseimbangan pH dalam sel, Mengatur permeabilitas sel, Mengatur transmisi impuls saraf<br />\nAkibat kelebihan : Hipertensi (tekanan darah tinggi)<br />\nAkibat kekurangan : Gangguan pada jantung dan ginjal, Kelelahan dan kejang otot, Turunnya nilai osmotic cairan sehingga meningkatkan suhu tubuh, Kehilangan nafsu<br />\nmakan<br />\n2. Kalium (K)<br />\nSumber : Susu, buah-buahan, padi-padian, daging, ikan, unggas, telur, dan sayur-sayuran<br />\nFungsi : Sebagai kofaktor (komponen kimia untuk membantu kerja enzim) pembentukan karbohidrat dan protein, Membantu kontraksi otot dan memelihara denyut jantung, Mengatur pelepasan insulin dari pankreas, Transmisi impuls saraf<br />\nAkibat kelebihan : Kejang otot<br />\nAkibat kekurangan : Kelemahan otot, Pertumbuhan terhambat, Denyut jantung tidak teratur dan gangguan pernapasan, Karies, Kelumpuhan<br />\n3. Kalsium (Ca)<br />\nSumber : Susu, keju, sayuran, ikan, dan padi-padian<br />\nFungsi : Membentuk matriks tulang dan gigi, Membantu proses pembekuan darah, Membantu kontraksi otot, Transmisi impuls saraf<br />\nAkibat kelebihan : Hiperkalsemia (kadar kalsium yang tinggi dalam darah)<br />\nAkibat kekurangan : Osteoporosis (kerapuhan tulang), Rakitis (pembengkokan tulang kaki), Kejang otot, Hipokalsemia (rendahnya<br />\nkadar kalsium dalam darah)<br />\n4. Fosfor (P)<br />\nSumber : Susu, keju, telur, daging, unggas, ikan, dan kacangkacangan.<br />\nFungsi : Pembentukan matriks tulang dan gigi, Mengatur keseimbangan asam dan basa dalam tubuh (darah), Sintesis nukleotida, Kontraksi otot, Memacu metabolisme<br />\nAkibat kelebihan : Pengikisan rahang<br />\nAkibat kekurangan : Kerapuhan tulang dan gigi, Rakitis, Lemah dan lunglai, Kehilangan kalsium dan mineral<br />\n5. Magnesium (Mg)<br />\nSumber : Susu, daging, padi-padian, dan sayuran hijau<br />\nFungsi : Biokatalisator, Unsur penting dalam pembentukan tulang dan gigi, Berperan penting dalam fungsi otot dan saraf<br />\nAkibat Kelebihan : Diare, Gangguan fungsi saraf<br />\nAkibat kekurangan : Gangguan otot dan saraf<br />\n6. Belerang (S)<br />\nSumber : Telur, susu, daging, keju, ikan, dan kacang-kacangan<br />\nFungsi : Penyusun asam amino, Komponen penyusun beberapa vitamin, misal tiamin, biotin, dan pantotenat, Aktivator enzim, Untuk pertumbuhan tulang<br />\nAkibat Kelebihan : Menghambat pertumbuhan<br />\nAkibat kekurangan : Mengganggu pertumbuhan, Defisiensi protein</p>\n\n<p>7. Zat besi (Fe)<br />\nSumber : Daging, unggas, hati, kuning telur, sayuran hijau, dan kacangkacangan<br />\nFungsi : Respirasi seluler, Membentuk hemoglobin<br />\nAkibat Kelebihan : Sirosis hati (pembengkakan karena meningkatnya cairan pada hati)<br />\nAkibat kekurangan : Lesu, pusing, dan anemia (kekurangan eritrosit), Menurunnya daya tahan tubuh sehingga mudah terkena infeksi</p>\n\n<p>8. Iodin (I)<br />\nSumber : Ikan laut, minyak ikan, rumput laut, dan garam beryodium<br />\nFungsi : Membantu fungsi kelenjar tiroid, Pembentukan hormon tiroksin<br />\nAkibat Kelebihan : Aktivitas tiroid menurun<br />\nAkibat kekurangan : Penyakit gondok (goiter), Penyakit kretinisme atau tumbuh kerdil</p>\n\n<p>9. Seng (Zn)<br />\nSumber : Ikan laut, kerang, hati, daging, susu, telur, dan tiram<br />\nFungsi : Membantu metabolisme, Pertumbuhan dan reproduksi<br />\nAkibat Kelebihan : Mengalami rasa besi pada mulut, Muntah-muntah, Diare<br />\nAkibat kekurangan : Anemia</p>\n\n<p>10. Tembaga (Cu)<br />\nSumber : Kacang-kacangan, hati, kerang, dan ginjal<br />\nFungsi : Pembentukan hemoglobin dan eritrosit,memelihara fungsi system saraf, Sintesis hormon<br />\nAkibat Kelebihan : Pusing, lesu, dan sakit kepala<br />\nAkibat kekurangan : Anemia, Gangguan sistem saraf<br />\nf. Air<br />\nAir adalah satu-satunya substansi umum yang ditemukan di alam sekitar kita dalam tiga wujud fisik materi: padat, cair, dan gas (Campbell, Reece, dan Mitchell: 2002). Air diperlukan tubuh karena memiliki beberapa fungsi penting, seperti mengatur suhu tubuh, melembapkan jaringan tubuh, melindungi organ<br />\nvital tubuh dan jaringan tubuh, membantu mencegah konstipasi, melumasi persendian, membawa nutrisi dan oksigen ke seluruh sel tubuh, membantu melarutkan mineral, mengangkut sisa metabolisme<br />\nkeluar tubuh, serta medium berbagai reaksi kimia tubuh.</p>\n', 44),
(40, '<p>2. Menu Makanan Bergizi Seimbang Berdasarkan Kebutuhan Energi<br />\nSetiap orang membutuhkan energi dalam jumlah yang berbeda-beda sesuai dengan berat badan, jenis kelamin, aktivitas, dan umur. Untuk memenuhi kebutuhan energi, kita perlu mengonsumsi makanan bergizi dalam jumlah yang cukup. Oleh karena itu, kita perlu mengetahui kandungan zat gizi pada makanan, cara menghitung kalori, dan menyusun menu makanan seimbang.<br />\nUntuk memenuhi kecukupan zat gizi diperlukan menu makanan yang seimbang. Menu makanan seimbang adalah menu makanan yang terdiri atas beraneka ragam makanan dalam jumlah dan proporsi yang sesuai sehingga memenuhi kebutuhan gizi seseorang guna pemeliharaan dan perbaikan sel-sel tubuh dalam proses kehidupan dan perkembangan.<br />\nDalam penyusunan menu makanan seimbang perlu menerapkan langkah-langkah berikut.<br />\n1) Menghitung kecukupan energi.<br />\n2) Menentukan jenis bahan makanan yang akan dimakan sesuai konsep menu empat sehat lima sempurna.<br />\n3) Menu makanan dibedakan menjadi makan pagi, makan siang, dan makan malam.<br />\n4) Mengontrol kebutuhan lemak yaitu 10&ndash;25% dari energi.<br />\nKecukupan energi setiap orang dapat diketahui dengan cara menghitung nilai BMR (Basal Metabolic Rate). Nilai BMR setiap orang bervariasi dan dipengaruhi oleh jenis kelamin, berat badan, tinggi badan, serta usia. Rumus menghitung BMR sebagai berikut.<br />\n1) BMR untuk wanita = 655 + ( 9,6 &times; BB) + ( 1,8 &times; TB ) &ndash; ( 4,7 &times; U)<br />\n2) BMR untuk pria = 66 + (13,7 &times; BB) + ( 5 &times; TB ) &ndash; ( 6,8 &times; U )<br />\nKeterangan:<br />\nBB : berat badan (kg)<br />\nTB : tinggi badan (cm)<br />\nU : umur (tahun)<br />\nKegiatan setiap orang berbeda-beda sehingga jumlah kalori yang diperlukan juga berbeda. Nilai BMR di atas hanya merupakan nilai minimal yang tidak dipengaruhi jenis aktivitas. Formula untuk membantu menghitung kalori sesuai dengan aktivitas sebagai berikut.<br />\nKebutuhan energi = BMR &times; faktor aktivitas fisik<br />\nNilai Aktivitas Fisik<br />\n1. Laki-laki<br />\nSangat ringan = 1,3<br />\nRingan = 1,65<br />\nSedang = 1,76<br />\nBerat = 2,10<br />\n2. Perempuan<br />\nSangat ringan = 1,3<br />\nRingan = 1,55<br />\nSedang = 1,70<br />\nBerat = 2,00<br />\nSetelah mengetahui kebutuhan energi yang diperlukan dalam sehari, perlu juga diketahui indeks massa tubuh atau Body Mass Index (BMI). BMI merupakan perbandingan antara berat badan (dalam kg) dengan kuadrat tinggi badan (dalam meter). Cara menghitung BMI sebagai berikut.<br />\nBMI = BB (kg)/(TB (m)xTB (m)) atau BB (kg)/TB2 (m)<br />\nMakanan yang dijual di pasaran biasanya telah ditambah dengan berbagai zat aditif untuk menarik minat pembeli. Penggunaan zat aditif yang berlebihan dapat menyebabkan gangguan kesehatan. Bagaimana pendapat Anda mengenai kasus tersebut? Apa tindakan Anda jika ada penjual makanan yang menambahkan zat aditif berbahaya pada makanannya?<br />\nKeterangan:<br />\nBB : berat badan<br />\nTB : tinggi badan<br />\nJika BMI &lt; 18 berarti kurus, BMI antara 18&ndash;24 berarti normal, BMI antara 25&ndash;30 berarti kelebihan berat badan, dan BMI &gt; 30 berarti kegemukan atau obesitas.<br />\nPengetahuan BMR dan BMI dapat digunakan untuk mengontrol berat badan ideal seseorang. Jika mengalami kelebihan berat badan, jumlah energi yang diperlukan tubuh dalam sehari (nilai BMR) dikurangi 500 kkal. Adapun jika mengalami kekurangan berat badan, jumlah energi yang diperlukan tubuh dalam sehari (nilai BMR) ditambah 500 kkal.<br />\nSetelah mengetahui kebutuhan kalori dalam sehari, menu makanan yang seimbang dapat disusun sesuai proporsi zat-zat makanan yang seimbang, yaitu karbohidrat 60&ndash;75%, protein 10&ndash;15%, dan lemak 10&ndash;25%. Selanjutnya, mulai dilakukan perhitungan jumlah masing-masing kalori untuk karbohidrat, protein, dan lemak berdasarkan persentase di atas. Jumlah kalori yang didapatkan per jenis zat dapat dibagi lagi menjadi beberapa jenis makanan. Sebagai contoh, dalam sehari diperlukan asupan karbohidrat sebesar 1.500 kkal, maka untuk memenuhi kebutuhan kalori tersebut dapat dilakukan dengan mengonsumsi nasi, kentang, ataupun roti.</p>\n', 45),
(41, '<p>1. Sistem Pencernaan Manusia<br />\nProses pencernaan makanan pada manusia melibatkan organ-organ pencernaan. Organ-organ pencernaan manusia terdiri atas saluran pencernaan dan kelenjar pencernaan. Meliputi organ apa sajakah saluran pencernaan? Organ apa sajakah yang termasuk kelenjar pencernaan? Ayo, kita pelajari bersama!<br />\na. Organ-Organ Pencernaan Manusia<br />\n1) Mulut<br />\nMakanan masuk pertama kali melalui mulut. Dalam mulut terjadi pencernaan makanan secara mekanis dan kimiawi. Dalam mulut terdapat beberapa alat yang berperan dalam proses pencernaan yaitu gigi, lidah, dan kelenjar ludah.<br />\na) Gigi<br />\nGigi berfungsi sebagai alat pencernaan mekanis karena membantu memecah makanan menjadi potongan-potongan yang lebih kecil. Hal ini akan membantu enzim-enzim pencernaan agar dapat mencerna makanan lebih efisien dan cepat. Berdasarkan bentuknya, gigi manusia terdiri atas gigi seri, gigi taring, gigi geraham depan (premolar), dan gigi geraham belakang (molar).<br />\nb) Lidah<br />\nDalam sistem pencernaan, lidah berfungsi membantu mencampur dan menelan makanan, mempertahankan makanan agar berada di antara gigi-gigi atas dan bawah saat makanan dikunyah, serta sebagai alat pengecap makanan. Lidah dapat berfungsi sebagai alat pengecap makanan karena mengandung banyak reseptor pengecap atau perasa.<br />\nc) Kelenjar Ludah (Glandula Salivalis)<br />\nKelenjar ludah berfungsi untuk menyekresikan saliva atau air liur. Air liur mengandung enzim ptyalin yang dapat mengubah amilum (polisakarida) menjadi maltosa (disakarida). Selain itu, air liur berfungsi juga untuk membasahi makanan, mencegah mulut dari kekeringan, membunuh mikroorganisme, dan bertindak sebagai buffer (penyangga pH).<br />\nBerdasarkan uraian di atas, Anda telah mengetahui bahwa saliva atau ludah berperan penting dalam proses pencernaan makanan secara kimiawi.<br />\n2) Kerongkongan<br />\nKerongkongan merupakan saluran tipis dan panjang (&plusmn; 25 cm) yang berfungsi sebagai jalan bolus (gumpalan makanan) dari mulut menuju lambung. Bergeraknya bolus dari mulut ke lambung melalui kerongkongan disebabkan adanya gerak peristaltik pada otot dinding kerongkongan. Gerak peristaltik dapat terjadi karena adanya kontraksi otot secara bergantian pada lapisan otot yang tersusun secara<br />\nmemanjang dan melingkar.<br />\n3) Lambung<br />\nLambung (ventrikulus) merupakan kantong besar yang terletak di sebelah kiri rongga perut. Lambung terdiri atas tiga bagian, yaitu bagian atas (kardiak), bagian tengah yang membulat (fundus), dan bagian bawah (pilorus).<br />\nDi dalam lambung terjadi pencernaan secara mekanis dan kimiawi. Pencernaan mekanis terjadi karena adaya kontraksi otot lambung. Sementara itu, pencernaan kimiawi berlangsung dengan bantuan getah lambung. Getah lambung mengandung asam lambung, enzim, dan hormon seperti dijelaskan<br />\nberikut ini.<br />\na) Asam lambung (HCl), berfungsi membunuh bakteri yang terdapat dalam makanan, mengubah sifat protein, merangsang keluarnya sekretin, merangsang keluarnya hormon kolesistokinin yang merangsang empedu agar mengeluarkan getahnya, dan mengaktifkan enzim pepsinogen menjadi pepsin.<br />\nb) Enzim pepsin, berfungsi merombak protein menjadi pepton.<br />\nc) Enzim renin, berfungsi mengaktifkan kaseinogen menjadi kasein.<br />\nd) Hormon gastrin, berfungsi merangsang sekresi getah lambung.<br />\n4) Usus Halus<br />\nUsus halus merupakan saluran berkelok-kelok yang panjangnya sekitar 6&ndash;8 meter dan lebar 25 mm. Usus halus terdiri atas tiga bagian yaitu usus dua belas jari (duodenum), usus kosong (jejunum), dan usus penyerapan (ileum).<br />\na) Usus Dua Belas Jari<br />\nDalam usus dua belas jari bermuara dua saluran, yaitu dari pankreas dan kantong empedu. Kantong empedu berisi cairan empedu yang dihasilkan oleh hati dan berguna untuk mengemulsikan lemak. Pankreas menghasilkan getah pankreas (bersifat basa) yang mengandung beberapa jenis enzim, seperti amilase, tripsinogen, dan lipase. Enzim amilase berfungsi untuk mengubah zat tepung menjadi gula. Tripsinogen diaktifkan oleh enzim enterokinase menjadi tripsin. Tripsin berfungsi mengubah protein menjadi peptida dan asam amino. Lipase berfungsi mengubah trigliserida (lemak) menjadi asam lemak dan gliserol. Jadi, dalam usus dua belas jari berlangsung pencernaan kimiawi.<br />\nb) Usus Kosong<br />\nDalam usus kosong makanan mengalami pencernaan kimiawi oleh enzim yang dihasilkan oleh kelenjar yang terdapat di dinding usus. Enzim-enzim yang dihasilkan oleh kelenjar yang terdapat di dinding usus sebagai berikut.<br />\n(1) Enterokinase, berfungsi mengaktifkan tripsinogen yang dihasilkan pankreas.<br />\n(2) Laktase, berfungsi mengubah laktosa menjadi glukosa.<br />\n(3) Erepsin (dipeptidase), berfungsi mengubah dipeptida atau pepton menjadi asam amino.<br />\n(4) Maltase, berfungsi mengubah maltosa menjadi glukosa.<br />\n(5) Disakarase, berfungsi mengubah disakarida menjadi monosakarida.<br />\n(6) Peptidase, berfungsi mengubah polipeptida menjadi asam amino.<br />\n(7) Sukrase, berfungsi mencerna sukrosa menjadi glukosa dan fruktosa.<br />\n(8) Lipase, berfungsi mengubah trigliserida menjadi gliserol dan asam lemak.<br />\nc) Usus Penyerapan<br />\nDalam usus penyerapan terdapat banyak lipatan atau lekukan yang disebut vili atau jonjot usus. Vili berfungsi memperluas permukaan usus sehingga proses penyerapan zat makanan akan lebih sempurna. Zat makanan berupa glukosa, asam amino, vitamin yang larut dalam air (vitamin B dan C), mineral, dan air akan diserap oleh kapiler darah dalam vili kemudian diangkut menuju hati melalui pembuluh darah. Sementara itu, zat makanan berupa asam lemak, gliserol, dan vitamin yang larut dalam lemak akan diangkut melalui pembuluh kil, yaitu pembuluh getah bening (limfa).<br />\n5) Usus Besar<br />\nUsus besar atau kolon memiliki Panjang &plusmn; 1 meter dan terdiri atas kolon ascendens, kolon transversum, dan kolon descendens. Di antara intestinum tenue (usus halus) dan intestinum crassum (usus besar) terdapat sekum (usus buntu). Pada ujung sekum terdapat tonjolan kecil yang disebut apendiks (umbai cacing) yang berisi massa sel darah putih yang berperan dalam imunitas.<br />\nSisa makanan hasil pencernaan di usus halus masuk ke usus besar. Di dalam usus besar terjadi proses pembusukan sisa makanan menjadi feses oleh bakteri Escherichia coli. Selain membusukkan sisa makanan, bakteri E. coli juga menghasilkan vitamin K dan vitamin B12. Bagian akhir usus besar disebut rektum. Di rektum tidak lagi terjadi penyerapan air. Rektum dapat berkontraksi sehingga menimbulkan defekasi.<br />\nDefekasi adalah pengeluaran zat-zat sisa makanan melalui anus.<br />\nBerdasarkan uraian di atas, dapat diketahui bahwa setiap organ pencernaan memiliki struktur sesuai dengan fungsinya.<br />\nb. Gangguan pada Sistem Pencernaan<br />\nGangguan pada sistem pencernaan manusia dapat diakibatkan oleh pola makan yang salah, infeksi bakteri, dan kelainan pada organ pencernaan.<br />\nSistem pencernaan dapat terserang beberapa jenis penyakit yaitu gastritis, tukak lambung (ulkus),<br />\napendisitis, diare, konstipasi, xerostomia, parotitis, dan hemoroid. Untuk mengetahui penyebab dan gejala-gejala penyakit tersebut, bukalah alamat-alamat website http://goo.gl/LZQZds; http://goo.gl/Dffk6x; dan http://goo.gl/5ewN1p.<br />\nSaluran pencernaan dapat terserang berbagai kelainan dan penyakit. Oleh karena itu, saluran pencernaan perlu dirawat dengan baik. Beberapa tips merawat saluran pencernaan seperti berikut.<br />\n1) Mencuci tangan menggunakan air bersih dan sabun sebelum makan.<br />\n2) Mengonsumsi makanan yang higienis untuk meminimalisasi gangguan pada sistem pencernaan.<br />\n3) Menerapkan pola makan yang teratur dengan pemenuhan gizi yang cukup dan seimbang.<br />\n4) Makan dalam keadaan santai atau tidak terburu-buru.<br />\n5) Memperhatikan cara menelan makanan, tidak boleh asal menelan.<br />\n6) Menjauhi kegiatan mental dan berpikir berat setelah makan.<br />\n7) Mengonsumsi makanan yang mengandung serat setiap hari, misalnya sayuran dan buah-buahan serta menghindari makanan yang mengakibatkan sembelit.<br />\n8) Menghindari kebiasaan menahan buang air besar karena dapat mengakibatkan sembelit.</p>\n', 46),
(42, '<p>2. Sistem Pencernaan Hewan Memamah Biak (Ruminansia)<br />\nHewan-hewan herbivora (pemakan rumput) seperti sapi, domba, dan kerbau disebut hewan memamah biak atau ruminansia. Sistem pencernaan hewan-hewan ini lebih kompleks. Makanan hewan ini mengandung banyak selulosa yang sulit dicerna oleh hewan pada umumnya sehingga sistem pencernaan ruminansia berbeda dengan hewan lainnya. Saluran pencernaan ruminansia terdiri atas mulut, kerongkongan, lambung, usus halus, usus besar, rektum, dan anus.<br />\nRuminansia tidak mepunyai gigi seri atas dan gigi taring. Namun, gigi gerahamnya lebih banyak dibandingkan gigi manusia karena gigi geraham digunakan untuk mengunyah makanan yang mengandung banyak serat. Gigi seri sapi berfungsi untuk menjepit dan memotong makanannya yang berupa rumput. Gigi geraham berfungsi untuk menggilas makanan. Di antara gigi seri dan gigi geraham terdapat ruang yang disebut diastema. Saat mengunyah makanan, rahang dapat bergerak ke kiri dan ke kanan sehingga makanan akan tergiling sempurna.<br />\nRuminansia seperti sapi memiliki kerongkongan sangat pendek (5 cm), berdinding tipis dan lebar serta lebih mampu berdilatasi (membesar). Lambung ruminansia terdiri atas 4 bagian, yaitu rumen (perut besar), retikulum (perut jala), omasum (perut kitab), dan abomasum (perut masam) yang memiliki ukuran bervariasi sesuai dengan umur dan makanan alamiahnya. Lambung sapi sangat besar, diperkirakan sekitar 3/4 dari isi rongga perut. Lambung mempunyai peranan penting untuk menyimpan makanan sementara yang akan dikunyah kembali. Pada lambung juga terjadi proses pembusukan dan peragian (fermentasi).<br />\nSelain itu, usus halus pada sapi sangat panjang bisa mencapai 40 meter. Kondisi ini dipengaruhi oleh makanannya yang mengandung banyak serat (selulosa). Bagaimana proses pencernaan makanan yang berlangsung dalam saluran pencernaan hewan ruminansia? Anda dapat mempelajarinya dengan membuka alamat website pada tautan.</p>\n', 47),
(43, '<p>Proses pengambilan oksigen dan pembebasan karbon dioksida dikenal sebagai respirasi atau pernapasan (Soewolo, 2000). Sistem pernapasan pada manusia dapat berlangsung dengan baik karena dalam tubuh manusia terdapat alat-alat yang berfungsi untuk bernapas.<br />\n1. Alat-Alat Pernapasan<br />\nSistem pernapasan pada manusia tersusun dari alat-alat pernapasan. Jalur pernapasan pada manusia yaitu rongga hidung &rarr;ï€ faring &rarr;ï€ trakea &rarr;ï€ bronkus &rarr;ï€ bronkiolus &rarr;ï€ alveolus &rarr;ï€ sel-sel tubuh.<br />\na. Rongga Hidung (Cavum Nasalis)<br />\nRongga hidung selalu lembap karena adanya selaput lendir. Di dalam rongga hidung juga terdapat<br />\nrambut-rambut pendek dan halus. Selaput lendir dan rambut-rambut halus tersebut berfungsi menyaring debu dan kotoran yang masuk bersama udara, melekatkan kotoran tersebut pada rambut hidung, mengatur suhu udara pernapasan, dan mengenali adanya bau.<br />\nb. Tekak (Faring)<br />\nUdara dari rongga hidung masuk ke faring. Faring merupakan persimpangan antara rongga hidung<br />\nke tenggorokan (saluran pernapasan) dengan rongga mulut ke kerongkongan (saluran pencernaan). Pada bagian belakang faring terdapat laring (pangkal tenggorokan). Pada laring terdapat pita suara dan epiglotis atau katup tenggorokan. Pada waktu menelan makanan epiglotis menutupi laring sehingga makanan tidak masuk ke dalam tenggorokan. Sebaliknya, pada saat bernapas epiglotis akan membuka sehingga udara masuk ke dalam laring, kemudian menuju tenggorokan.<br />\nc. Tenggorokan (Trakea)<br />\nTenggorokan berbentuk seperti pipa dengan panjang kurang lebih 10 cm. Trakea bercabang dua dan di dalam paru-paru membentuk bronkus. Dinding tenggorokan terdiri atas tiga lapisan berikut.<br />\n1) Lapisan paling luar terdiri atas jaringan ikat.<br />\n2) Lapisan tengah terdiri atas otot polos dan cincin tulang rawan. Trakea tersusun atas 16&ndash;20 cincin tulang rawan yang berbentuk huruf C.<br />\n3) Lapisan terdalam terdiri atas jaringan epitel silindris selapis bersilia yang menghasilkan banyak lendir.<br />\nd. Cabang Tenggorokan (Bronkus)<br />\nBronkus merupakan cabang batang tenggorokan yang berjumlah sepasang. Satu cabang menuju paru-paru kanan dan cabang yang lain menuju paru-paru kiri. Bronkus akan bercabang menjadi bronkiolus. Bronkus kanan bercabang menjadi tiga bronkiolus, sedangkan bronkus kiri bercabang menjadi dua bronkiolus.<br />\ne. Bronkiolus<br />\nBronkiolus akan bercabang-cabang menjadi saluran yang semakin halus, kecil, dan dinding yang semakin tipis. Bronkiolus tidak tersusun dari tulang rawan. Lapisan terdalam bronkiolus tersusun dari jaringan epitel silindris bersilia.<br />\nf. Alveolus<br />\nAlveolus merupakan saluran akhir dari alat pernapasan. Alveolus berupa kantong kecil mirip anggur yang berjumlah sangat banyak. Pada alveolus terjadi pertukaran oksigen (O2) dan karbon dioksida (CO2).<br />\ng. Paru-Paru (Pulmo)<br />\nAlveolus di dalam paru-paru. Jadi, paru-paru merupakan alat pernapasan utama pada manusia. Paru-paru terletak di dalam rongga dada bagian atas. Paru-paru manusia berjumlah sepasang di kanan dan kiri. Paru-paru dibungkus oleh selaput tipis rangkap dua yang disebut pleura. Kedua lapisan tersebut dibatasi oleh cairan pleura. Cairan pleura berfungsi mencegah terjadinya gesekan antara paru-paru dengan tulang rusuk saat bernapas.</p>\n', 48),
(44, '<p>2. Mekanisme Pernapasan<br />\nPernapasan pada manusia merupakan kegiatan mengambil dan mengeluarkan udara pernapasan. Pengambilan udara pernapasan disebut inspirasi, sedangkan pengeluaran udara pernapasan disebut ekspirasi. Pada saat inspirasi terjadi proses pengambilan oksigen (O2) dan pada saat ekspirasi terjadi proses pelepasan karbon dioksida (CO2) dan uap air (H2O).<br />\npernapasan pada manusia ada dua tahap yaitu pernapasan luar (pernapasan eksternal) dan pernapasan dalam (pernapasan internal). Baik pada pernapasan luar maupun pernapasan dalam, proses pengangkutan oksigen serta karbon dioksida menggunakan prinsip dasar kimia dan fisika. Oksigen dan karbon dioksida diangkut dalam kombinasi kimia dengan hemoglobin. Selain itu, proses pengangkutan gas-gas pernapasan dapat terjadi karena adanya perbedaan tekanan gas dalam darah. Pernapasan luar<br />\nmerupakan pertukaran gas (O2 dan CO2) yang terjadi antara udara dengan darah. Selama pernapasan luar, di dalam paru-paru akan terjadi pertukaran gas yaitu CO2 meninggalkan darah dan O2 masuk ke dalam darah melalui difusi. Selanjutnya, sejenis protein dalam sel darah merah yang disebut hemoglobin (Hb) mengikat oksigen dan menjadi oksihemoglobin (HbO2). Reaksinya sebagai berikut.<br />\nHb + O2 &rarr;ï€ HbO2<br />\nPernapasan dalam merupakan pertukaran gas di dalam jaringan tubuh. Pada pernapasan dalam, darah masuk ke dalam jaringan tubuh. Oksigen melepaskan ikatannya dengan hemoglobin dan berdifusi masuk ke dalam cairan jaringan tubuh.<br />\nReaksi kimianya sebagai berikut.<br />\nHbO2 &rarr;ï€ Hb + O2<br />\nProses difusi oksigen terjadi karena tekanan parsial oksigen dalam kapiler darah lebih tinggi daripada tekanan parsial oksigen dalam sel-sel tubuh. Setelah sampai dalam jaringan, O2 digunakan untuk respirasi sel, yaitu untuk mengoksidasi zat makanan (glukosa) sehingga dapat dihasilkan energi, CO2, dan uap air. Energi hasil respirasi sel berupa ATP. ATP dibentuk melalui tiga tahapan yaitu glikolisis, daur Krebs, dan sistem transpor elektron. Proses pembentukan ATP sebagai berikut.<br />\nC6H12O6 + 6O2 &rarr;ï€ 6CO2 + 6H2O + 38 ATP<br />\nSemakin banyak oksigen yang digunakan oleh sel-sel tubuh semakin banyak karbon dioksida yang terbentuk. Hal tersebut mengakibatkan tekanan parsial CO2 dalam sel-sel tubuh lebih tinggi dibandingkan tekanan parsial CO2 dalam kapiler darah. Oleh karena itu, CO2 akan berdifusi dari sel-sel<br />\ntubuh ke kapiler darah yang kemudian akan dibawa eritrosit menuju ke paru-paru. Di dalam paru-paru, CO2 akan berdifusi dari kapiler darah menuju alveolus. Hal ini terjadi karena tekanan parsial CO2 di kapiler darah lebih tinggi daripada tekanan parsial CO2 dalam alveolus. Akhirnya, CO2 dikeluarkan dari tubuh melaluiekspirasi. Berdasarkan jenis otot yang berperan aktif, pernapasan manusia dibedakan menjadi dua macam yaitu pernapasan dada dan pernapasan perut.<br />\na. Pernapasan Dada<br />\nOtot yang berperan aktif dalam pernapasan dada adalah otot antartulang rusuk (intercostal). Mekanisme pernapasan dada sebagai berikut.<br />\n1) Inspirasi<br />\nMekanisme fase inspirasi pada pernapasan dada sebagai berikut.<br />\nOtot interkostal eksternal (otot antartulang rusuk luar) berkontraksi &rarr;ï€ tulang rusuk terangkat &rarr;ï€ volume rongga dada membesar &rarr;ï€ tekanan udara dalam rongga dada lebih kecil daripada tekanan udara di luar tubuh &rarr;ï€ udara masuk ke paru-paru.<br />\n2) Ekspirasi<br />\nMekanisme fase ekspirasi pada pernapasan dada sebagai berikut.<br />\nOtot interkostal internal (otot antartulang rusuk dalam) berkontraksi &rarr;ï€ tulang rusuk turun &rarr;ï€ volume rongga dada mengecil &rarr;ï€ tekanan udara dalam rongga dada lebih besar daripada tekanan udara di luar tubuh &rarr;ï€ udara keluar dari paru-paru.<br />\nb. Pernapasan Perut<br />\nOtot yang berperan aktif dalam pernapasan perut adalah otot diafragma dan otot dinding perut. Mekanisme pernapasan perut sebagai berikut.<br />\n1) Inspirasi<br />\nMekanisme fase inspirasi pada pernapasan perut sebagai berikut.<br />\nOtot diafragma berkontraksi &rarr;ï€ diafragma mendatar &rarr;ï€ volume rongga dada membesar &rarr;ï€ tekanan udara dalam rongga dada mengecil &rarr;ï€ udara masuk ke paru-paru.<br />\n2) Ekspirasi<br />\nMekanisme fase ekspirasi pada pernapasan perut sebagai berikut.<br />\nOtot diafragma berelaksasi &rarr;ï€ diafragma akan cekung ke arah rongga dada &rarr;ï€ volume rongga dada mengecil &rarr;ï€ tekanan udara dalam rongga dada meningkat &rarr;ï€ udara keluar dari paru-paru.<br />\nAnda telah mempelajari bahwa dalam mekanisme pernapasan terjadi pertukaran antara gas CO2 dengan O2 yang berlangsung di dalam alveolus. Alveolus terdapat di paru-paru.<br />\nJaringan yang sederhana dapat melakukan suatu fungsi yang kompleks. Hal tersebut menunjukkan kompleksitas ciptaan Tuhan. Sudah seharusnya Anda bersyukur kepada Tuhan atas kompleksitas ciptaan-Nya. Rasa syukur Anda dapat diwujudkan dengan rajin beribadah dan menjaga kesehatan alat-alat pernapasan sehingga dapat berfungsi maksimal.</p>\n', 49),
(45, '<p>3. Volume Udara Pernapasan<br />\nVolume udara pernapasan adalah jumlah udara pernapasan yang keluar masuk melalui system pernapasan. Volume udara pernapasan dapat dibedakan menjadi beberapa macam sebagai berikut.<br />\na. Volume tidal (tidal volume), yaitu volume udara pernapasan biasa, besarnya kurang lebih 500 cc atau 500 ml.<br />\nb. Volume cadangan inspirasi (inspiratory reserve volume) atau udara komplementer, yaitu udara yang masih dapat dimasukkan secara maksimal ke dalam paru-paru setelah melakukan inspirasi biasa, besarnya kurang lebih 1.500 cc atau 1.500 ml. Udara komplementer terjadi apabila diafragma, otot-otot antartulang rusuk, dan otot-otot inspiratori tambahan berkontraksi secara maksimal.<br />\nc. Volume cadangan ekspirasi (expiratory reserve volume) atau udara suplementer, yaitu udara yang masih dapat dikeluarkan secara maksimal keluar dari paru-paru setelah melakukan ekspirasi biasa, besarnya kurang lebih 1.500 cc atau 1.500 ml.<br />\nd. Volume sisa atau volume residu (residual volume), yaitu volume udara yang masih tersisa di dalam paru-paru setelah melakukan ekspirasi maksimal, besarnya kurang lebih 1.000 cc atau 1.000 ml. Volume residu tidak dapat diukur secara langsung dengan spirometer karena volume residu tidak dikeluarkan<br />\ndari paru-paru.<br />\ne. Kapasitas vital (vital capacity), yaitu volume udara yang dapat dikeluarkan semaksimal mungkin setelah melakukan inspirasi maksimal, besarnya kurang lebih 3.500 cc atau 3.500 ml. Kapasitas vital merupakan jumlah dari volume tidal ditambah volume cadangan inspirasi dan volume cadangan ekspirasi.<br />\nf. Volume total paru-paru (total lung volume), yaitu volume udara yang dapat ditampung oleh paru-paru semaksimal mungkin, besarnya kurang lebih 4.500 cc atau 4.500 ml. Volume total paru-paru merupakan jumlah dari volume residu ditambah kapasitas vital.</p>\n', 50),
(46, '<p>Volume udara pernapasan setiap orang berbeda-beda. Hal ini disebabkan volume paru-paru setiap orang juga berbeda-beda. Volume udara paru-paru dipengaruhi oleh beberapa faktor meliputi faktor genetik, aktivitas tubuh, kondisi lingkungan, berat badan, usia, dan jenis kelamin. Frekuensi pernapasan setiap orang juga berbedabeda. Pada umumnya manusia mampu bernapas antara 15&ndash;18 kali setiap menit. Frekuensi pernapasan manusia dipengaruhi oleh faktor usia, jenis kelamin, suhu tubuh, posisi tubuh, dan kegiatan tubuh.</p>\n', 51),
(47, '<p>Hewan melakukan proses bernapas seperti halnya manusia. Semakin kompleks seekor hewan, maka semakin kompleks juga alat-alat yang menyusun sistem pernapasannya. Pernapasan pada hewan yang paling sederhana berlangsung secara difusi melalui permukaan tubuh yang basah, misalnya pada cacing pipih. Sementara itu, pernapasan yang paling kompleks yaitu pada hewan mammalia.<br />\n1. Pernapasan pada Serangga<br />\nSerangga bernapas menggunakan alat yang disebut sistem trakea. Sistem ini terdiri atas spirakel, pembuluh trakea, dan trakeolus. Udara keluar masuk melalui spirakel yang terletak berpasangan di setiap segmen tubuh. Oksigen yang masuk melalui spirakel kemudian menuju pembuluh trakea. Selanjutnya, pembuluh trakea bercabang-cabang lagi menjadi cabang halus (trakeolus) yang dapat mencapai seluruh jaringan tubuh. Di dalam trakeolus terjadi pertukaran gas dengan sel-sel tubuh. Oksigen akan berdifusi dari trakeolus ke sel-sel tubuh. Sementara itu, karbon dioksida akan berdifusi dari sel-sel tubuh ke trakeolus. Selanjutnya, karbon dioksida menuju trakea dan akan dikeluarkan melalui spirakel.<br />\nSistem trakea adalah sistem pernapasan sederhana. Pada sistem trakea, sel-sel tubuh dapat berhubungan langsung dengan udara luar melalui pembuluh udara. Dengan adanya sistem trakea, maka peredaran darah tidak berfungsi mengedarkan oksigen ke seluruh tubuh karena fungsi ini dilakukan oleh sistem trakea.<br />\nSeperti halnya dengan volume udara pernapasan pada manusia, volume udara pernapasan pada hewan juga dapat dihitung menggunakan alat yang disebut respirometer. Alat ini terdiri atas sebuah tabung sebagai tempat menampung serangga dan sebuah skala untuk mengukur volume respirasi serangga.</p>\n', 52),
(48, '<p>2. Pernapasan pada Burung<br />\nBurung mempunyai sepasang paru-paru yang terletak dalam rongga dada. Udara masuk melalui dua pasang lubang hidung yang terdapat pada pangkal paruh sebelah atas dan pada langit-langit rongga mulut. Selanjutnya, udara menuju celah tekak yang terdapat pada dasar hulu kerongkongan atau faring yang menghubungkan rongga mulut dengan trakea. Setelah melalui trakea, udara masuk ke dalam paru-paru. Paru-paru burung tidak memiliki alveoli. Sebagai gantinya, terdapat pembuluh-pembuluh udara yang disebut parabronki.<br />\nSelain paru-paru, burung mempunyai empat pasang pundi-pundi udara (saccus pneumaticus) yang berfungsi membantu pernapasan, terutama pada saat terbang. Pundi-pundi udara juga membantu mempertahankan suhu badan dan meringankan tubuh pada saat burung terbang. Mekanisme pernapasan pada burung sebagai berikut.<br />\na. Pernapasan pada Saat Tidak Terbang<br />\n1) Inspirasi<br />\nOtot antartulang rusuk berkontraksi sehingga rongga dada mengembang. Paru-paru pun ikut mengembang. Akibatnya, udara akan masuk ke dalam paru-paru. Sebagian udara diteruskan ke pundi-pundi udara.<br />\n2) Ekspirasi<br />\nRongga dada mengecil sehingga tekanan paru-paru lebih besar daripada tekanan udara luar. Akibatnya, udara keluar dari paru-paru. Bersamaan dengan mengecilnya rongga dada, udara dari pundi-pundi<br />\nudara masuk ke paru-paru dan terjadi pelepasan oksigen dalam pembuluh kapiler paru-paru. Jadi, pengambilan oksigen pada burung dilakukan pada tahap inspirasi maupun ekspirasi.<br />\nb. Pernapasan Saat Terbang<br />\n1) Inspirasi<br />\nPada waktu sayap diangkat ke atas, pundi-pundi udara di ketiak mengembang. Sementara itu, pundi-pundi udara di tulang korakoid terjepit sehingga oksigen masuk ke paru-paru.<br />\n2) Ekspirasi<br />\nPada waktu sayap diturunkan, pundi-pundi udara di ketiak terjepit. Sementara itu, kantong udara di tulang korakoid mengembang sehingga udara dikeluarkan dari paru-paru. Semakin tinggi burung terbang, semakin cepat burung mengepakkan sayapnya. Hal tersebut bertujuan untuk mendapatkan oksigen yang cukup banyak.</p>\n', 53),
(49, '<p>Kelainan-kelainan yang terjadi pada sistem pernapasan manusia dapat mengakibatkan terganggunya suplai oksigen dalam tubuh. Salah satu penyebab timbulnya kelainan pada sistem pernapasan yaitu banyaknya zat karsinogenik yang masuk ke dalam tubuh.<br />\nJenis kelainan dan penyakit yang menyerang sistem pernapasan dapat disebabkan oleh kebiasaan merokok. Selain diakibatkan oleh kebiasaan merokok, kelainan dan penyakit pada sistem pernapasan juga dapat diakibatkan oleh infeksi patogen, polusi udara, dan keabnormalan alat pernapasan. Kelainan dan penyakit yang dapat menyerang sistem pernapasan di antaranya yaitu asfiksi, asidosis, asma, bronkitis, difteri, emfiseme, influenza, kanker paru-paru, pneumonia, dan tuberkulosis.<br />\nKelainan dan penyakit tersebut harus segera ditangani agar tidak menggangu pemenuhan oksigen dalam tubuh. Anda dapat membuka alamat website: http://goo.gl/uLFzHp dan http://goo.gl/mTev3u untuk menambah wawasan Anda tentang penyebab dan cara penanganan kelainan serta penyakit yang menyerang sistem pernapasan.<br />\nBeberapa kelainan pada sistem pernapasan diakibatkan oleh kualitas udara di lingkungan sekitar Anda. Polusi oleh asap pabrik, kendaraan bermotor, atau kebakaran merupakan beberapa pemicu kelainan dan gangguan pada system pernapasan manusia. Oleh karena itu, Anda perlu menjaga kebersihan udara di lingkungan tempat tinggal Anda. Sebagai contoh tidak melakukan pembakaran sampah dan menanam berbagai jenis tumbuhan agar dapat menyerap polutan udara. Sekarang, lakukan kegiatan berikut untuk memahami pengaruh kualitas udara di lingkungan terhadap gangguan sistem pernapasan manusia.<br />\nLingkungan yang tercemar dapat mengakibatkan gangguan pada sistem pernapasan. Agar Anda dapat terhindar dari gangguan-gangguan tersebut, perlu menerapkan pola hidup sehat. Beberapa pola hidup sehat yang dapat Anda lakukan sebagai berikut.<br />\n1. Mengonsumsi makanan yang mengandung antioksidan dan klorofil.<br />\n2. Olahraga secara teratur.<br />\n3. Menghindari mengonsumsi minuman beralkohol.<br />\n4. Tidak mengonsumsi narkoba.<br />\n5. Tidak merokok.</p>\n', 54);
INSERT INTO `materi` (`id`, `materi_desc`, `module_id`) VALUES
(50, '<p>Sistem ekskresi merupakan hal yang pokok dalam homeostasis karena sistem tersebut membuang limbah metabolisme dan merespons terhadap ketidakseimbangan cairan tubuh dengan cara mengeskresikan ion-ion tertentu sesuai kebutuhan (Campbell, Reece, dan Mitchell: 2004). Macam-macam ion yang diekskresikan tersebut dipelajari dalam ilmu Kimia. Dengan demikian, dapat dikatakan bahwa Biologi sangat berkaitan dengan adanya ilmu Kimia.<br />\nSistem ekskresi manusia terdiri atas beberapa macam organ ekskresi. Dapat diketahui bahwa organ tubuh manusia yang berperan dalam sistem ekskresi yaitu ginjal, hati, kulit, dan paru-paru. Untuk mempelajari lebih lanjut mengenai organ-organ tersebut, simaklah uraian berikut.<br />\nOrgan ekskresi berfungsi untuk mengekskresikan zat-zat sisa metabolisme. Setiap organ ekskresi mengekskresikan zat-zat yang berbeda melalui proses-proses yang berbeda pula.<br />\n1. Ginjal<br />\nGinjal manusia berwarna merah gelap dan berbentuk mirip kacang merah. Panjangnya 10&ndash;13 cm dan lebarnya 5&ndash;7,5 cm. Ginjal terletak di sebelah kiri dan kanan ruas tulang pinggang di dalam rongga perut. Ginjal berada di bawah diafragma, tepatnya di bawah hati pada sisi kanan dan di bawah limfa pada sisi<br />\nkiri. Untuk mengetahui letak ginjal dalam tubuh.<br />\na. Fungsi Ginjal<br />\n1) Menjaga keseimbangan air dalam tubuh.<br />\n2) Membuang sisa metabolisme.<br />\n3) Mengatur kandungan elektrolit dengan menyaring zat-zat kimia yang masih berguna bagi tubuh (natrium, fosfor, dan kalium) dan mengembalikannya ke saluran peredaran darah.<br />\n4) Menjaga tekanan osmosis dengan cara mengatur ekskresi garam-garam, yaitu membuang garam yang berlebihan dan menahan garam apabila jumlahnya berkurang.<br />\n5) Menjaga asam basa cairan darah.<br />\n6) Menghasilkan eritropoietin (EPO) dan kalsitriol.<br />\nb. Struktur Ginjal<br />\nGinjal tersusun dari tiga bagian, yaitu korteks, medula, dan pelvis. Korteks atau kulit ginjal merupakan bagian luar ginjal. Sementara itu, bagian sebelah dalamnya disebut medula atau sumsum ginjal. Pelvis merupakan bagian dalam ginjal yang berupa ruang kosong sehingga disebut juga rongga ginjal. Pada bagian korteks terdapat nefron. Nefron merupakan unit fungsional dan struktural terkecil pada ginjal. Pada satu unit ginjal manusia terdapat sekitar satu juta nefron. Setiap nefron terdiri atas badan Malpighi dan saluran nefron. Badan Malpighi mengandung glomerulus yang diselubungi oleh kapsula Bowman. Glomerulus berupa anyaman pembuluh kapiler darah, sedangkan kapsula Bowman berbentuk cawan berdinding tebal yang mengelilingi glomerulus. Fungsi utama glomerulus adalah sebagai penyaring/filtrasi cairan darah. Saluran nefron terdiri atas tubulus kontortus proksimal, lengkung Henle, dan tubulus kontortus distal.<br />\nPada medula terdapat piramida ginjal dan piala ginjal yang mengandung pembuluh-pembuluh darah yang berfungsi untuk mengumpulkan hasil ekskresi. Pembuluh-pembuluh itu disebut tubulus kontortus kolektivus. Tubulus kontortus kolektivus berhubungan dengan ureter yang bermuara pada kandung kemih (vesica urinaria). Kandung kemih berfungsi sebagai tempat penampungan urine sementara. Jika kandung kemih telah mengandung banyak urine, dinding kandung kemih akan tertekan sehingga otot melingkar pada pangkal kandung kemih meregang. Akibatnya, akan timbul rasa ingin buang air kecil. Selanjutnya, urine tersebut akan dikeluarkan melalui uretra.<br />\nc. Proses Pembentukan Urine<br />\nProses pembentukan urine terjadi di dalam ginjal. Pembentukan urine ini terjadi melalui serangkaian proses filtrasi (penyaringan zat-zat sisa yang beracun), reabsorpsi (penyerapan kembali zat-zat yang masih diperlukan tubuh), dan augmentasi (penambahan zat sisa yang tidak diperlukan lagi oleh tubuh).<br />\n1) Filtrasi<br />\nPembentukan urine diawali dengan filtrasi yang terjadi di dalam kapiler glomerulus. Di glomerulus terdapat sel-sel endotelium kapiler yang berpori (podosit), membran basiler, dan epitel kapsula Bowman<br />\nyang dapat mempermudah proses filtrasi. Pada proses filtrasi, sel-sel darah, trombosit, dan sebagian besar protein plasma disaring dan diikat agar tidak turut dikeluarkan.<br />\nSementara itu, zat-zat kecil terlarut dalam plasma darah seperti glukosa, asam amino, natrium, kalium, klorida bikarbonat, garam lain, serta urea melewati saringan dan menjadi bagian dari endapan. Hasil saringan tersebut merupakan urine primer (filtrat glomerulus). Jadi, urine primer komposisinya masih serupa dengan darah tetapi tidak mengandung protein dan tidak mengandung elemen seluler, contoh sel darah merah. Cairan filtrasi dari glomerulus akan masuk ke tubulus dan mengalami reabsorpsi.<br />\n2) Reabsorpsi<br />\nPada proses ini terjadi reabsorpsi zat-zat berikut.<br />\na) Reabsorpsi air<br />\nPada keadaan normal, sekitar 99% dari air yang menembus membran filtrasi akan direabsorpsi sebelum mencapai ureter. Reabsorpsi terjadi di tubulus kontortus proksimal yang dilakukan secara pasif melalui proses osmosis.<br />\nb) Reabsorpsi zat tertentu<br />\nReabsorpsi zat-zat tertentu dapat terjadi secara transpor aktif dan difusi. Zat-zat yang mengalami reabsorpsi pada tubulus kontortus proksimal yaitu ion Na+, K+, PO4&ndash;, dan NO3.<br />\nc) Reabsorpsi zat yang penting bagi tubuh<br />\nZat-zat penting yang secara aktif direabsorpsi yaitu asam amino, glukosa, asam asetoasetat, dan vitamin. Pada saluran menurun lengkung Henle, reabsorpsi air terus berlangsung. Di saluran menurun ini, epitelium transpor sangat permeabel terhadap air, tetapi sangat tidak permeabel terhadap garam dan zat terlarut lainnya. Sebaliknya, saluran menaik lengkung Henle lebih permeabel terhadap garam dan tidak permeabel terhadap air.<br />\nSetelah terjadi reabsorpsi di tubulus kontortus proksimal dan sepanjang saluran lengkung Henle, tubulus akan menghasilkan urine sekunder. Pada urine sekunder zat-zat yang masih diperlukan tidak<br />\nakan ditemukan lagi. Sebaliknya, konsentrasi zat-zat sisa metabolisme yang bersifat racun akan bertambah, misal konsentrasi urea sebesar 0,03% dalam urine primer dapat mencapai 2% dalam urine sekunder.<br />\n3) Augmentasi<br />\nAugmentasi atau sekresi tubular adalah proses penambahan zat-zat yang tidak diperlukan oleh tubuh ke dalam tubulus kontortus distal. Selsel tubulus menyekresi ion hidrogen (H+), ion kalium (K+), amonium (NH3), urea, kreatinin, dan racun ke dalam lumen tubulus melalui proses difusi.<br />\nIon-ion ini kemudian menyatu dengan urine sekunder. Pada tahap augmentasi juga berlangsung proses pembersihan zat-zat sisa dari dalam tubuh. Dari proses augmentasi ini akan dihasilkan urine sesungguhnya. Urine yang terbentuk akan disimpan sementara di kandung kemih. Setelah itu, urine akan dikeluarkan dari tubuh melalui uretra. Komposisi urine yang dikeluarkan yaitu 96% air, 1,5% garam, 2,5% urea, dan sisa substansi lain seperti pigmen empedu. Pigmen empedu berfungsi memberi warna pada urine.<br />\nd. Mikturasi<br />\nMikturasi adalah proses pengeluaran urine dari dalam tubuh. Jika dalam kandung kemih tersimpan urine sekitar 200&ndash;300 ml, akan timbul refleks rasa ingin buang air kecil. Proses mikturasi dimulai dari ginjal&ndash;ureter&ndash;kandung kemih&ndash;uretra. Zat yang terkandung dalam urine di antaranya air, garam, urea, dan sisa substansi lain seperti pigmen empedu.<br />\ne. Faktor-Faktor yang Memengaruhi Produksi Urine<br />\n1) Hormon Antidiuretik<br />\nPada saat tubuh kekurangan cairan, konsentrasi air dalam darah akan menurun. Akibatnya, sekresi ADH meningkat dan dialirkan oleh darah menuju ginjal. ADH meningkatkan permeabilitas sel terhadap air dan permeabilitas saluran pengumpul. Dengan demikian, air akan berdifusi keluar dari pipa pengumpul, lalu masuk ke darah. Keadaan tersebut dapat memulihkan konsentrasi air dalam darah. Akibatnya, urine yang dihasilkan lebih sedikit dan pekat.<br />\n2) Usia<br />\nAnak balita lebih sering mengeluarkan urine karena belum bisa mengendalikan rangsangan untuk mikturasi. Selain itu, anak balita juga mengonsumsi lebih banyak makanan yang berwujud cairan sehingga urine yang dihasilkan lebih banyak.<br />\nSementara itu, pengeluaran urine pada lanjut usia akan lebih sedikit. Penurunan jumlah urine dikarenakan setelah usia 40 tahun, jumlah nefron yang berfungsi akan menurun kira-kira 10% setiap tahun. Kondisi ini akan mengurangi kemampuan ginjal dalam memproses pengeluaran urine.<br />\n3) Gaya Hidup dan Aktivitas<br />\nPada seseorang yang sering berolahraga, urine yang terbentuk akan lebih sedikit dan lebih pekat. Hal ini karena cairan tubuh lebih banyak digunakan untuk membentuk energi. Oleh karena itu, cairan yang dikeluarkan lebih banyak dalam bentuk keringat.<br />\n4) Kondisi Kesehatan<br />\nSeseorang yang sehat produksi urinenya berbeda dengan orang yang sakit. Orang yang sedang sakit bisa mengeluarkan urine lebih banyak ataupun lebih sedikit tergantung pada jenis penyakit yang diderita.<br />\n5) Psikologis<br />\nOrang cemas, aktivitas metabolismenya akan lebih cepat sehingga akan lebih sering mengeluarkan urine.<br />\n6) Cuaca<br />\nApabila cuaca panas, cairan tubuh lebih banyak dikeluarkan dalam bentuk keringat. Jika cuaca dingin cairan tubuh akan dikeluarkan dalam bentuk urine.<br />\n7) Jumlah Air yang Diminum<br />\nApabila mengonsumsi banyak air minum, konsentrasi protein dalam darah akan menurun. Kondisi ini dapat mengakibatkan penurunan tekanan koloid protein sehingga tekanan filtrasi kurang efektif. Akibatnya, volume urine yang diproduksi akan meningkat.<br />\nSalah satu organ ekskresi yaitu ginjal yang mengekskresikan urine. Produksi urine orang normal dan orang sakit berbeda. Selain itu, kandungan di dalamnya pun juga berbeda.</p>\n', 55),
(51, '<p>2. Hati<br />\nHati merupakan organ viseral (dalam rongga abdomen) terbesar yang terletak di bawah kerangka iga. Pada kondisi hidup, hati berwarna merah tua karena kaya persediaan darah dan kaya nutriea dari vena portal dan vena hepatika (Syaifuddin, 2011). Organ hati mempunyai berat sekitar 1,5 kg atau sekitar 3&ndash;5% dari berat badan.<br />\na. Fungsi Hati<br />\n1) Tempat Menyimpan Energi<br />\nHati menyimpan energi dalam bentuk glikogen. Glikogen dibentuk dari glukosa.<br />\n2) Menyimpan Vitamin-Vitamin<br />\nHati mengumpulkan dan menyimpan persediaan vitamin A, D, E, dan K. Vitamin ini dapat disimpan hingga dua sampai empat tahun.<br />\n3) Sebagai Pabrik Kimia Tubuh<br />\nBeberapa protein penting yang ditemukan dalam darah dihasilkan oleh hati. Protein tersebut antara lain albumin, globin, dan globulin. Selain itu, dalam hati dihasilkan zat kimia lain yaitu fibrinogen dan protrombin.<br />\n4) Sebagai Pembersih atau Detoksifikasi<br />\nHati membantu membersihkan zat-zat racun, seperti obat dan alcohol dari aliran darah.<br />\n5) Sebagai Alat Ekskresi<br />\nFungsi hati sebagai alat ekskresi yaitu mengekskresikan cairan empedu secara terus-menerus. Cairan empedu mengandung air, asam empedu, garam empedu, kolesterol, fosfolipid (lesitin), zat warna empedu (pigmen bilirubin dan biliverdin), serta beberapa ion. Cairan empedu berperan mencerna dan mengelmusikan lemak dalam usus, mengaktifkan lipase, mengubah zat yang tidak larut dalam air menjadi zat yang larut dalam air, serta membentuk urea dan amonia. Cairan empedu berasal dari penghancuran hemoglobin dari eritrosit yang telah tua. Hemoglobin ini akan diuraikan menjadi hemin, zat besi, dan globin. Zat besi dan globin digunakan dalam pembentukan antibodi atau hemoglobin baru.<br />\nSementara itu, hemin akan dirombak menjadi bilirubin dan biliverdin. Bilirubin dan biliverdin merupakan zat warna bagi empedu dan mengandung warna hijau-biru. Zat warna tersebut di dalam usus akan mengalami oksidasi menjadi urobilin. Urobilin kemudian diekskresikan dari dalam tubuh dan<br />\nmemberi warna kekuningan pada feses dan urine.<br />\nb. Struktur Hati<br />\nHati terdiri atas dua lobus utama, yaitu lobus kiri dan kanan, dengan posisi sedikit saling menindih. Lobus kanan memiliki dua lobus yang salah satunya berukuran lebih kecil. Setiap lobus terdiri atas banyak lobulus. Lobulus merupakan unsur terkecil yang menyusun hati. Sementara itu, jaringan hati tersusun dari sel-sel hepatosit. Antarlapisan hepatosit dipisahkan oleh lakuna, sedangkan antara hepatosit satu dengan hepatosit yang lain dipisahkan oleh kanalikuli.<br />\nBagian luar hati dilindungi oleh kapsula hepatika. Dalam jaringan hati terdapat beberapa pembuluh darah, yaitu arteri hepatika dan vena porta hepatika. Pertemuan antara pembuluh arteri hepatika dan vena porta hepatika membentuk sinusoid. Pada sinusoid terjadi spesialisasi sel yang membentuk sel kupffer. Sel ini bertugas memfagositosis organisme asing atau zat-zat berbahaya. Dari fagositosis ini akan menghasilkan bilirubin. Bilirubin kemudian diekskresikan oleh kanalikuli dalam wujud empedu.</p>\n', 56),
(52, '<p>3. Kulit<br />\nKulit merupakan lapisan terluar yang membungkus seluruh permukaan tubuh manusia. Sebagian besar kulit ditumbuhi rambut.<br />\na. Fungsi Kulit<br />\n1) Proteksi<br />\nKulit berfungsi melindungi organ tubuh dari kontak mekanis yang dapat mengakibatkan cedera dan melindungi tubuh dari kontak langsung dengan sinar matahari. Sementara itu, produksi keringat dan minyak pada kulit membuat lapisan kulit bersifat asam. Kondisi ini berfungsi melindungi tubuh dari infeksi jamur dan bakteri.<br />\n2) Regulator Suhu<br />\nKulit melakukan fungsi ini dengan cara memproduksi keringat dan mengkonstriksikan pembuluh darah dalam kulit.<br />\n3) Penentu Warna Kulit<br />\nWarna kulit salah satunya ditentukan oleh kandungan melanosit pada kulit.<br />\n4) Pembentukan Vitamin D<br />\nVitamin D dibentuk dari provitamin D yang terdapat di bawah kulit dengan bantuan sinar matahari.<br />\n5) Ekskresi<br />\nSebagai alat ekskresi kulit berfungsi mengeluarkan keringat. Kelenjar keringat menyerap air dan garam dari darah di pembuluh kapiler. Keringat yang dikeluarkan melalui pori-pori kulit akan menyerap panas tubuh sehingga suhu tubuh tetap stabil.<br />\nb. Struktur Kulit<br />\nKulit merupakan organ terluas yang menutupi seluruh tubuh dengan luas keseluruhan kurang lebih 2 m2. Ketebalan kulit pada setiap bagian tubuh berbeda-beda (0,5&ndash;5 mm) dan rata-rata ketebalannya 1&ndash;2 mm. Berdasarkan strukturnya, kulit terdiri atas dua lapisan, yaitu epidermis (kulit ari) dan dermis (kulit jangat).<br />\n1) Epidermis<br />\nEpidermis terdiri atas beberapa lapis berikut.<br />\na) Stratum korneum (lapisan tanduk), merupakan lapisan kulit yang paling luar, tersusun dari sel-sel mati yang bersifat keras, tahan terhadap air, dan selalu mengelupas (deskuamasi).<br />\nb) Stratum lusidum, tersusun dari sel-sel yang tidak berinti dan berfungsi mengganti stratum korneum.<br />\nc) Stratum granulosum, tersusun dari sel-sel yang berinti dan mengandung pigmen melanin.<br />\nd) Stratum germinativum, tersusun dari sel-sel yang selalu membentuk sel-sel baru ke arah luar.<br />\n2) Dermis<br />\nDermis merupakan lapisan yang terletak di bawah epidermis. Lapisan yang biasa disebut jangat ini di dalamnya terdapat akar rambut, pembuluh darah, kelenjar, dan saraf. Kelenjar yang terdapat di lapisan ini adalah kelenjar keringat (glandula sudorifera) dan kelenjar minyak (glandula sebasea).<br />\nKelenjar keringat menghasilkan keringat yang di dalamnya terlarut berbagai garam, terutama NaCl. Keringat dialirkan melalui saluran kelenjar keringat dan dikeluarkan dari dalam tubuh melalui pori-pori. Di dalam kantong rambut terdapat akar rambut dan batang rambut. Kelenjar minyak menghasilkan minyak yang berfungsi meminyaki rambut agar tidak kering. Rambut dapat tumbuh terus karena mendapat sari-sari makanan dari pembuluh kapiler di bawah kantong rambut. Di dekat akar rambut terdapat otot penegak rambut. Di bawah dermis terdapat jaringan lemak atau lapisan hipodermis.<br />\nJaringan lemak berfungsi sebagai makanan cadangan, pelindung tubuh terhadap benturan, dan menahan panas tubuh.</p>\n', 57),
(53, '<p>4. Paru-Paru<br />\nManusia memiliki sepasang paru-paru yang terletak di rongga dada. Paru-paru mempunyai fungsi utama sebagai alat pernapasan. Oleh karena paru-paru juga berperan mengekskresikan zat sisa metabolisme maka organ ini juga berperan sebagai alat ekskresi. Dalam sistem ekskresi paru-paru berfungsi mengeluarkan karbon dioksida (CO2) dan uap air (H2O). Karbon dioksida dan uap air berdifusi di dalam alveolus kemudian dikeluarkan melalui lubang hidung.</p>\n', 58),
(54, '<p>Beberapa gangguan atau penyakit pada sistem ekskresi<br />\nGinjal : Batu ginjal, Gagal ginjal kronis, Diabetes melitus, Nefritis, Albuminuria, Anuria, Poliuria<br />\nHati : Hepatitis, Penyakit kuning, Sirosis hati, Kanker hati<br />\nPru-paru : Asma, Tuberkulosis (TBC), Pneumonia, Emfisema, Pleuritis<br />\nKulit : Xerosis, Kanker kulit, Eksim atau dermatitis, Kusta atau lepra, Jerawat<br />\nPenjelasan mengenai penyebab dan penanganan gangguan atau penyakit pada sistem ekskresi dapat Anda akses melalui alamat website http://goo.gl/vs47D8 dan http://goo.gl/Fsr1Gh<br />\nPeranan ginjal sangat penting bagi tubuh. Ginjal berperan untuk menyaring zat-zat kimia yang masih berguna bagi tubuh dan mengembalikannya ke saluran peredaran darah. Apabila pada ginjal terjadi gangguan, dapat berakibat fatal. Gangguan tersebut terjadi akibat adanya kelainan pada ginjal atau komplikasi penyakit sistemik. Apabila gangguan pada ginjal masih ringan, ginjal dapat sembuh sempurna jika penyebabnya dapat diatasi. Sebaliknya, apabila gangguan tersebut memburuk maka bisa menjadi gagal ginjal akut. Apabila terjadi gagal ginjal akut, salah satu alternatif yang dapat dilakukan yaitu dengan membuat ginjal buatan melalui metode dialisis. Metode pengobatan seperti ini lebih dikenal dengan nama hemodialisis (cuci darah).</p>\n', 59),
(55, '<p>&nbsp; &nbsp; &nbsp; &nbsp; Otak manusia tidak pernah berhenti bekerja, baik siang maupun malam hari meskipun kita sedang tidur. Otak manusia berfungsi sebagai alat untuk memproses data yang diterima oleh reseptor pada alat indra. Otak merupakan komponen penting dalam sistem saraf manusia. Sistem saraf bersama dengan sistem endokrin dan sistem indra tergabung dalam sistem koordinasi.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Sistem koordinasi tersusun dari sistem saraf, system endokrin, dan sistem indra. Sistem saraf tersusun dari berjuta-juta sel saraf yang mempunyai bentuk bervariasi. Dalam tubuh, sel-sel saraf saling berhubungan untuk memindahkan impuls listrik dari satu bagian tubuh ke bagian tubuh lainnya. Seluruh sel-sel saraf saling bekerja sama dalam pengaturan kerja alat tubuh.</p>\n\n<h2>1. Sel Saraf (Neuron)</h2>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Sel saraf (neuron) adalah sel-sel yang bermuatan listrik dengan serabut-serabut mirip benang yang menghubungkannya dengan bagian-bagian tubuh atau dengan sel-sel saraf lain (Rutland, 1976). Sel saraf memiliki struktur tertentu yang meliputi dendrit, badan sel saraf, dan neurit.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; <img alt=\"\" src=\"../assets/images/materi/struktur-selsaraf.png\" style=\"float:right; height:354px; width:422px\" />Sel-sel saraf tersusun dari dendrit, badan sel, dan neurit (akson). Dendrit berfungsi menerima impuls dari ujung saraf lain dan menghantarkannya ke badan sel saraf. Dalam badan sel terdapat badan Nissl yang berfungsi menerima dan meneruskan impuls dari dendrit ke neurit. Neurit berfungsi meneruskan impuls dari badan sel saraf ke sel saraf yang lain. Neurit terbungkus oleh selubung mielin yang disusun oleh sel-sel Schwann. Selubung mielin berfungsi sebagai pelindung neurit dan pemberi nutrisi bagi neuron. Bagian neurit yang tidak terbungkus selubung mielin disebut nodus Ranvier. Ketika di neurit, impuls menjalar ke nodus Ranvier dan kemudian meloncati selubung mielin. Hal ini terjadi karena selubung mielin bersifat sebagai isolator impuls. Loncatan impuls tersebut mempercepat gerakan impuls. Sel-sel saraf saling berhubungan membentuk suatu simpul saraf yang disebut ganglion. Antara neuron satu dengan neuron lainnya dihubungkan oleh sinapsis.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Ada tiga macam neuron berdasarkan fungsinya, yaitu neuron sensorik (neuron aferen), neuron motorik (neuron eferen), dan neuron asosiasi (neuron penghubung).<br />\n1) Neuron sensorik berfungsi menghantarkan impuls dari reseptor ke sistem saraf pusat. Reseptor adalah penerima rangsang. Organ yang mengandung reseptor disebut indra.<br />\n2) Neuron motorik berfungsi menghantarkan impuls dari sistem saraf pusat ke efektor. Efektor berupa otot dan kelenjar.<br />\n3) Neuron asosiasi berfungsi menghubungkan neuron sensorik dengan neuron motorik. Neuron asosiasi terdapat dalam otak dan sumsum tulang belakang.</p>\n', 60),
(56, '<h2>2. Susunan Sistem Saraf Manusia</h2>\n\n<p>Sistem saraf manusia terdiri atas sistem saraf pusat dan sistem saraf tepi.<br />\n<strong>a. Sistem Saraf Pusat</strong><br />\nSistem saraf pusat terdiri atas otak dan sumsum tulang belakang.<br />\n<em><strong>1) Otak</strong></em><br />\nOtak merupakan pusat saraf utama karena berperan dalam pengaturan seluruh aktivitas tubuh. Bagian luar otak (korteks) berwarna abu-abu. Bagian ini mengandung banyak badan sel saraf yang disebut substansi grissea. Bagian dalam otak (medula) berwarna putih. Bagian ini mengandung banyak neurit dan dendrit yang disebut substansi alba. Otak terdiri atas enam bagian, yaitu otak besar (serebrum), otak depan (diensefalon), otak tengah (mesensefalon), otak kecil (serebelum), jembatan varol (Pons varolli), dan sumsum lanjutan (medula oblongata).</p>\n\n<p><img alt=\"\" src=\"../assets/images/materi/bagian_otak.png\" style=\"height:250px; width:402px\" /><img alt=\"\" src=\"../assets/images/materi/otak_besar.png\" style=\"height:250px; width:300px\" /><br />\n<em>a) Otak besar (serebrum)</em><br />\nSerebrum terdiri atas dua belahan. Setiap belahan terdiri atas empat lobus, yaitu lobus frontalis (pengendali gerakan otot rangka dan tempat terjadinya proses intelektual), lobus oksipitalis (pusat penglihatan), lobus temporalis (pusat pendengaran, penciuman, dan pengecap), serta lobus parietalis (pengatur perubahan pada kulit dan otot).<br />\nOtak besar berfungsi dalam pengaturan semua aktivitas yang berkaitan dengan kepandaian (intelegensi), ingatan (memori), kesadaran, dan pertimbangan. Otak besar merupakan pusat pengaturan semua kegiatan/gerakan yang kita sadari.<br />\n<em>b) Otak depan (diensefalon)</em><br />\nOtak depan terdiri atas talamus dan hipotalamus. Talamus berfungsi sebagai pusat pengaturan perasaan dan gerakan. Hipotalamus berperan dalam pengaturan suhu tubuh, rasa lapar, dan haus.<br />\n<em>c) Otak tengah (mesensefalon)</em><br />\nOtak tengah berfungsi mengatur gerak refleks mata. Selain itu, otak tengah juga berfungsi mengontrol pendengaran.<br />\n<em>d) Otak kecil (serebelum)</em><br />\nSerebelum terletak tepat di bawah bagian posterior otak besar. Serebelum merupakan pusat keseimbangan gerak, koordinasi gerak otot, serta posisi tubuh.<br />\n<em>e) Jembatan Varol (pons varolli)</em><br />\nPons varolli berfungsi menghantarkan impuls otot-otot bagian kiri dan kanan tubuh. Pons varolli juga berfungsi menghubungkan otak besar dengan otak kecil.<br />\n<em>f) Sumsum lanjutan (medula oblongata)</em><br />\nMedula oblongata merupakan lanjutan otak yang menghubungkan otak dengan sumsum tulang belakang. Medula oblongata berfungsi mengatur denyut jantung, pelebaran dan penyempitan pembuluh darah, gerak alat pencernaan, sekresi kelenjar, bersin, bersendawa, batuk, muntah, serta gerak alat pernapasan.<br />\n<em><strong>2) Sumsum Tulang Belakang (Medula Spinalis)</strong></em><br />\nBagian luar (tepi) medula spinalis berwarna putih (substansi alba) dan bagian dalamnya berwarna abu-abu (substansi grissea). Medula spinalis merupakan lanjutan medula oblongata dan terdapat dalam rongga tulang belakang. Medula spinalis berfungsi menghantarkan impuls dari dan ke otak serta mengendalikan gerak refleks.<br />\n<strong>b. Sistem Saraf Tepi</strong><br />\nSaraf tepi menghubungkan semua bagian tubuh dengan pusat saraf (otak dan sumsum tulang belakang). Berdasarkan tempatnya, sistem saraf tepi terdiri atas saraf kranial dan saraf spinal. Saraf kranial berasal dari otak dan berjumlah 12 pasang. Saraf spinal berasal dari sumsum tulang belakang. Cabang-cabang<br />\nsaraf spinal mempersatukan seluruh otot rangka dan kulit. Saraf spinal berjumlah 31 pasang.<br />\nBerdasarkan fungsinya, sistem saraf tepi terdiri atas sistem saraf somatic (saraf sadar) dan sistem saraf otonom (saraf tidak sadar).<br />\n<strong>1) Sistem Saraf Somatik</strong><br />\nSaraf somatik berfungsi mengatur gerakan yang disadari, contoh gerakan kaki melangkah menuju ke suatu tempat. Berdasarkan arah impuls yang dibawanya, sistem saraf tepi dibedakan menjadi sistem saraf aferen dan eferen.<br />\n<strong>2) Sistem Saraf Otonom</strong><br />\nSistem saraf otonom mengendalikan gerak organ-organ yang bekerja secara otomatis, contohnya otot polos, jantung, lambung, usus, pembuluh darah, dan kelenjar. Sistem saraf otonom terdiri atas saraf simpatetik dan saraf parasimpatetik. Kedua macam saraf itu bekerja saling berlawanan. Fungsi kedua macam saraf sebagai berikut.<br />\nJenis Saraf Otonom dan Fungsinya<br />\n&nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\n	<tbody>\n		<tr>\n			<td><strong>No</strong></td>\n			<td><strong>Parasimpatetik</strong></td>\n			<td><strong>Simpatetik</strong></td>\n		</tr>\n		<tr>\n			<td>1.<br />\n			2.<br />\n			3.<br />\n			4.<br />\n			5.<br />\n			6.<br />\n			7.<br />\n			8.<br />\n			9.</td>\n			<td>Mengecilkan pupil<br />\n			Memacu sekresi saliva<br />\n			Mengerutkan bronkus<br />\n			Memperlambat detak jantung<br />\n			Meningkatkan sekresi asam lambung<br />\n			Memacu kerja kantong empedu<br />\n			Mengerutkan kandung kemih<br />\n			Memacu ereksi pada alat kelamin<br />\n			&nbsp;</td>\n			<td>Membesarkan pupil<br />\n			Menghambat sekresi saliva<br />\n			Membesarkan bronkus<br />\n			Mempercepat detak jantung<br />\n			Menghambat sekresi asam lambung<br />\n			Memacu pelepasan glukosa oleh hati<br />\n			Menghambat kontraksi kandung kemih<br />\n			Memacu ejakulasi<br />\n			Menyekresi adrenalin</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n', 61),
(57, '<h2>3. Terjadinya Gerak Biasa dan Gerak Refleks</h2>\n\n<p>&nbsp; &nbsp; Tubuh kita dapat melakukan gerakan karena adanya hantaran impuls oleh sel-sel saraf. Gerak dapat dibedakan menjadi dua macam, yaitu gerak biasa dan gerak refleks.<br />\n<strong>a. Gerak Biasa</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gerak biasa merupakan gerak yang disadari, contohnya melangkahkan kaki menuju suatu tempat, berlari, dan menyapu. Urutan perjalanan impuls pada gerak biasa secara skematis sebagai berikut.<br />\nRangsang &rarr;reseptor &rarr;neuron sensorik &rarr;otak &rarr;neuron motorik &rarr;efektor<br />\n<strong>b. Gerak Refleks</strong><br />\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Gerak refleks merupakan gerak yang tidak disadari. Hantaran impuls pada gerak refleks mirip seperti pada gerak biasa. Bedanya, impuls pada gerak refleks tidak melalui pengolahan oleh pusat saraf. Neuron di otak hanya berperan sebagai konektor saja. Urutan perjalanan impuls pada gerak refleks secara skematis sebagai berikut.<br />\nRangsang &rarr;reseptor &rarr;neuron sensorik &rarr;konektor (otak/sumsum tulang belakang) &rarr;neuron motorik &rarr;efektor</p>\n', 62),
(58, '<h2>4. Prinsip Penghantaran Impuls</h2>\n\n<p>Ada dua prinsip penghantaran impuls, yaitu melalui neuron dan melalui sinapsis.</p>\n\n<ul>\n	<li><strong>Penghantaran Impuls Melalui Neuron</strong></li>\n</ul>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"../assets/images/materi/penghantaran_impuls_darineuron.png\" style=\"float:right; height:265px; width:443px\" /> &nbsp;Penghantaran impuls dengan cara ini terjadi karena adanya perbedaan muatan listrik antara bagian luar dan bagian dalam membran serabut saraf. Ketika istirahat, bagian luar membran serabut saraf bermuatan listrik positif. Sementara itu, bagian dalam membrane serabut saraf bermuatan listrik negatif. Keadaan tersebut dinamakan polarisasi.<br />\nKetika menerima rangsang berupa impuls, permukaan luar membran serabut saraf bermuatan negatif dan permukaan dalamnya bermuatan positif. Keadaan ini disebut depolarisasi. Selanjutnya akan terjadi aliran listrik dari daerah bermuatan listrik negatif ke daerah bermuatan listrik positif. Impuls kemudian diteruskan ke neuron dan akhirnya menuju sumsum tulang belakang dan otak. Pesan kemudian diolah oleh otak dan sumsum tulang belakang sehingga timbul tanggapan atau respons. Respons diubah menjadi impuls dan diteruskan ke neuron motorik hingga ke efektor.</p>\n\n<ul>\n	<li><strong>Penghantaran Impuls Melalui Sinapsis</strong></li>\n</ul>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<img alt=\"\" src=\"../assets/images/materi/penghantaran_impuls_darisinapsis.png\" style=\"float:right; height:242px; width:443px\" />Jika impuls telah sampai di membran prasinapsis, vesikel-vesikel akan menuju membrane prasinapsis karena pengaruh Ca2+ yang masuk ke bonggol sinapsis. Selanjutnya, vesikel-vesikel tersebut akan melepaskan zat <strong>neurotransmiter</strong>. Zat ini berfungsi menghantarkan impuls ke ujung dendrit neuron berikutnya. Neurotransmiter menerima impuls dan akan berdifusi melewati celah sinapsis. Selanjutnya,<br />\nneurotransmiter akan berikatan dengan protein khusus atau reseptor yang berada di membran pascasinapsis. Ikatan antara neurotransmiter dengan reseptor ini mengakibatkan impuls dapat diteruskan ke saraf lainnya.</p>\n', 63),
(59, '<p>&nbsp; &nbsp; &nbsp; &nbsp; Di dalam tubuh, pengaturan kadar gula darah, tekanan darah, dan kerja jantung terjadi secara otomatis. Pengaturan ini dilakukan oleh kerja sama antara sistem saraf dan sistem endokrin. Namun, antara sistem saraf dan sistem endokrin memiliki beberapa perbedaan.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Sistem endokrin disebut juga sistem kelenjar buntu, yaitu kelenjar yang tidak mempunyai saluran khusus untuk mengeluarkan sekretnya. Sekret dari kelenjar endokrin dinamakan hormon (Isnaeni, 2006).<br />\nHormon berfungsi untuk mengatur homeostasis, pertumbuhan, reproduksi, metabolisme, dan tingkah laku. Hipofisis merupakan salah satu kelenjar endokrin. Hipofisis sering disebut master of glands karena memengaruhi aktivitas kelenjar yang lain. Macam-macam hormon yang dihasilkan oleh kelenjar hipofisis beserta fungsinya.</p>\n\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\n	<tbody>\n		<tr>\n			<td><strong>Kelenjar</strong></td>\n			<td><strong>Letak</strong></td>\n			<td><strong>Hormon</strong></td>\n			<td><strong>Fungsi</strong></td>\n		</tr>\n		<tr>\n			<td>\n			<p>Hipofisis / pituitary<br />\n			<br />\n			a. Lobus anterior<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			b.&nbsp;Intermedia<br />\n			<br />\n			<br />\n			c. Lobus posterior<br />\n			<br />\n			&nbsp;</p>\n			</td>\n			<td>Dasar Otak Besar<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			<br />\n			&nbsp;</td>\n			<td>\n			<ul>\n				<li>ACTH (Adenocorticotropic Hormone)</li>\n				<li>GH (Growth Hormone )/hormon somatotropin</li>\n				<li>FSH (Follicle Stimulating Hormone)</li>\n				<li>LH (Luteinizing Hormone)</li>\n				<li>ICSH (Interstitial Cell Stimulating Hormone)</li>\n				<li>Prolaktin</li>\n				<li>TSH (Thyroid Stimulating Hormone)<br />\n				<br />\n				<br />\n				&nbsp;</li>\n				<li>MSH (Melanocyte Stimulating Hormone)<br />\n				&nbsp;</li>\n				<li>Oksitosin</li>\n				<li>ADH (Antidiuretic Hormone)/vasopressin<br />\n				&nbsp;</li>\n			</ul>\n			</td>\n			<td>\n			<ul>\n				<li>Merangsang kelenjar adrenal untuk menyekresi glukokortikoid (hormon yang berperan dalam metabolisme karbohidrat)</li>\n				<li>Merangsang sintesis protein dan metabolisme lemak serta merangsang pertumbuhan tulang dan otot</li>\n				<li>Merangsang spermatogenesis, merangsang pematangan folikel dalam ovarium, dan menghasilkan hormone estrogen</li>\n				<li>Menstimulasi pembentukan hormon progesterone</li>\n				<li>Menstimulasi produksi testosterone</li>\n				<li>Menstimulasi sekresi air susu</li>\n				<li>Merangsang kelenjar tiroid dan menyekresi hormon tiroksin<br />\n				&nbsp;</li>\n				<li>Memengaruhi pembentukan zat warna kulit (melanin)<br />\n				&nbsp;</li>\n				<li>Merangsang kontraksi otot uterus saat proses kelahiran</li>\n				<li>Mencegah pembentukan urine dalam jumlah banyak</li>\n			</ul>\n			</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n', 64),
(60, '<p>Selain sistem saraf dan sistem endokrin (hormon), bagian dari sistem koordinasi yang lain adalah sistem indra. Sistem indra berfungsi menerima rangsang dari lingkungan sekitarnya.<br />\nAlat-alat penyusun sistem indra manusia terdiri atas mata, telinga, kulit, hidung, dan lidah.</p>\n\n<h2>1. Mata</h2>\n\n<p>Pada mata terdapat sel-sel saraf penerima rangsang cahaya (fotoreseptor). Oleh karena itu, mata merupakan indra penglihat. Mata tersusun dari alat tambahan mata, bola mata, otot bola mata, dan saraf optik.<br />\n<strong>a. Alat Tambahan Mata</strong><br />\nAlat tambahan mata meliputi alis mata, kelopak mata, bulu mata, dan aparatus lakrimalis.<br />\n<strong>b. Otot Bola Mata</strong><br />\nOtot bola mata tersusun dari tiga pasang otot lurik. Otot bola mata berguna untuk menggerakkan bola mata.<br />\n<strong>c. Bola Mata</strong><br />\nBola mata dilapisi oleh tiga lapisan dinding berikut.<br />\n1) Lapisan luar terdiri atas sklera dan kornea<br />\n<img alt=\"Gambar 9.7 Bola mata dan bagian-bagiannya\" src=\"../assets/images/materi/mata.png\" style=\"float:right; height:253px; width:432px\" />Sklera berwarna putih dan tidak tembus cahaya. Kornea mengandung banyak serabut saraf, tidak terdapat pembuluh darah, dan tembus cahaya. Kornea berfungsi meneruskan cahaya ke lensa mata. Kornea dilindungi oleh selaput pelindung konjungtiva.<br />\n2) Lapisan tengah terdiri atas koroidea dan iris atau selaput pelangi<br />\nKoroidea mengandung banyak pembuluh darah dan berfungsi memberi nutrisi pada retina. Bagian depan koroidea dan di belakang kornea terdapat iris. Iris mengandung pigmen warna sehingga mengakibatkan perbedaan warna pada mata. Lubang bulat di tengah iris disebut pupil. Pupil merupakan jalan masuknya cahaya. Pupil akan mengecil jika cahaya terang. Sebaliknya, pupil membesar jika cahaya redup.<br />\n3) Lapisan dalam<br />\nPada lapisan dalam terdapat retina. Pada retina inilah terdapat fotoreseptor. Ada dua macam fotoreseptor, yaitu sel batang dan sel kerucut. Sel batang mengandung rodopsin dan diperlukan untuk melihat dalam suasana redup. Sel kerucut mengandung pigmen iodopsin yang mampu menerima rangsang warna dan sinar terang. Pada lapisan dalam juga terdapat bintik kuning dan bintik buta. Bintik kuning (fovea sentralis) merupakan bagian retina yang mengandung banyak fotoreseptor berupa sel kerucut. Bintik buta, yaitu bagian mata tempat serabut saraf yang berasal dari retina meninggalkan bola mata menuju ke otak. Dibagian bintik buta tidak ada sel sensorik.<br />\n<strong>d. Saraf Optik</strong><br />\nSaraf optik merupakan bagian mata yang menjalarkan impuls saraf dari retina menuju otak. Setelah sampai di otak, impuls saraf tersebut kemudian diinterpretasikan oleh otak sehingga benda dapat dilihat.<br />\nRuangan di antara lensa mata dan retina diisi oleh vitreous humour yang berfungsi mempertahankan bentuk bola mata agar tetap bundar. Sementara itu, ruangan di antara lensa, iris, dan kornea diisi oleh aqueous humour. Aqueous humour berfungsi memberi makan kornea dan lensa. Adapun mekanisme kerja indra penglihat sebagai berikut.<br />\nCahaya &rarr;aqueous humour &rarr;pupil &rarr;lensa &rarr;vitreous humour &rarr;retina &rarr;saraf optik &rarr;otak.<br />\nSuatu benda dapat terlihat jelas jika bayangan benda jatuh tepat di bintik kuning. Namun, benda tidak dapat terlihat jika bayangan benda jatuh di bintik buta.</p>\n', 65),
(61, '<h2>2. Telinga</h2>\n\n<p>Pada telingga terdapat sel-sel saraf penerima rangsang suara (fonoreseptor). Telinga tersusun dari telinga bagian luar, telinga bagian tengah, dan telinga bagian dalam.<br />\n<strong>a. Telinga Bagian Luar</strong><br />\n<img alt=\"\" src=\"../assets/images/materi/telinga.png\" style=\"float:right; height:451px; width:433px\" />Pada bagian luar terdapat daun telinga dan saluran telinga luar. Telinga bagian luar berfungsi menangkap getaran bunyi.<br />\n<strong>b. Telinga Bagian Tengah</strong><br />\nPada bagian tengah terdapat tulang-tulang pendengaran dan saluran eustachius. Tulang-tulang pendengaran terdiri atas tulang martil (maleus), landasan (inkus), dan sanggurdi (stapes). Saluran<br />\neustachius merupakan penghubung telinga tengah dengan rongga faring. Eustachius berfungsi menyamakan tekanan telinga luar dengan telinga tengah.<br />\n<strong>c. Telinga Bagian Dalam</strong><br />\nTelinga bagian dalam terdiri atas beberapa bagian berikut.<br />\n1) Alat keseimbangan yang terdiri atas kanalis semisirkularis, sakulus, dan utrikulus. Bagian-bagian tersebut berhubungan dengan saraf otak VIII.<br />\n2) Tingkap jorong merupakan membran yang terdapat pada pangkal koklea. Tingkap jorong berfungsi menyalurkan getaran ke koklea.<br />\n3) Koklea/rumah siput, saluran koklea berisi cairan limfe dan terdapat ujung saraf pendengaran yang menghubungkan koklea dengan otak.<br />\nMekanisme kerja indra pendengar sebagai berikut.<br />\nGetaran suara &rarr;daun telinga &rarr;saluran telinga &rarr;gendang telinga (membran timpani) &rarr;tiga tulang pendengaran &rarr;rumah siput (koklea) &rarr;sel-sel rambut dalam organ korti &rarr;sel saraf auditori &rarr;ï€ otak.</p>\n', 66),
(62, '<h2><strong>3. Kulit</strong></h2>\n\n<p><img alt=\"\" src=\"../assets/images/materi/kulit.png\" style=\"float:right; height:416px; width:433px\" />Pada kulit terdapat reseptor yang peka terhadap rangsang fisik (mekanoreseptor).</p>\n', 67),
(63, '<h2>4. Hidung</h2>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Serabut-serabut saraf penciuman terdapat pada bagian atas selaput lendir hidung. Serabut-serabut olfaktori berfungsi mendeteksi rangsang zat kimia dalam bentuk gas di udara (kemoreseptor). Mekanisme kerja indra penciuman sebagai berikut.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Rangsang (bau) &rarr;lubang hidung &rarr;epitelium olfaktori &rarr;mukosa olfaktori &rarr;saraf olfaktori &rarr;talamus &rarr;hipotalamus &rarr;otak.</p>\n', 68),
(64, '<h2>5. Lidah</h2>\n\n<p><img alt=\"\" src=\"../assets/images/materi/lidah.png\" style=\"float:right; height:265px; width:432px\" />&nbsp; &nbsp; &nbsp; &nbsp; Lidah merupakan indra pengecap yang dapat merasakan pahit, asam, asin, dan manis. Setiap bagian lidah peka terhadap rasa tertentu.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Lidah mempunyai reseptor yang peka terhadap zat kimia berbentuk cair (kemoreseptor). Permukaan lidah ditutupi oleh papila yang peka terhadap rasa. Lidah berfungsi sebagai alat berbicara, membantu mengatur letak makanan ketika dikunyah, membantu dalam proses menelan makanan, serta sebagai indra pengecap. Mekanisme kerja indra pengecap sebagai berikut.<br />\nMakanan/larutan berasa &rarr;papila lidah &rarr;saraf gustatori &rarr;medula oblongata &rarr;talamus &rarr;otak.</p>\n', 69),
(65, '<p>Sistem koordinasi terdiri atas sistem saraf, sistem endokrin, dan sistem indra yang saling bekerja sama dalam mengatur kegiatan tubuh. Oleh karena itu, apabila salah satunya mengalami gangguan ataupun kelainan akan memengaruhi kerja sistem koordinasi.<br />\n1. Gangguan dan Kelainan pada Sistem Koordinasi<br />\nManusia<br />\na. Gangguan dan Kelainan pada Sistem<br />\nSaraf Manusia<br />\nSistem saraf dapat mengalami gangguan dan kelainan. Gangguan dan kelainan tersebut dapat mengakibatkan penyakit pada sistem saraf yaitu meningitis, hidrosefalus, neuritis, parkinson, gegar otak, epilepsi, alzheimer, afasia, dan ataksia.<br />\nb. Gangguan dan Kelainan pada Sistem Endokrin (Hormon) Manusia<br />\nTubuh kita kadang kala mengalami gangguan sekresi hormon. Beberapa faktor yang memengaruhi sekresi hormon, antara lain stres, infeksi, penuaan, genetik, dan lingkungan. Gangguan sekresi hormon dapat berupa sekresi hormon yang berlebihan (hipersekresi) atau kekurangan sekresi hormon (hiposekresi). Hipersekresi dan hiposekresi hormon dapat menimbulkan kelainan seperti berikut.<br />\nKelainan Akibat Gangguan Sekresi Hormon dan Gejala yang Dialami Penderita</p>\n\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\n	<thead>\n		<tr>\n			<th scope=\"col\">No</th>\n			<th scope=\"col\">Kelainan Sekresi Hormon</th>\n			<th scope=\"col\">Gejala yang Dialami Penderita</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>1</td>\n			<td>\n			<p>Hiposekresi somatotropin sebelum pubertas dapat mengakibatkan dwarfisme<br />\n			Hipersekresi somatotropin<br />\n			a. Pada anak: gigantisme<br />\n			b. Pada dewasa: akromegali</p>\n			</td>\n			<td>\n			<p>Anak tumbuh kerdil<br />\n			<br />\n			Pertumbuhan raksasa<br />\n			Pertumbuhan tulang tidak normal masa dewasa misal ujung tulang jari dan tulang dagu sehingga bentuk dan ukuran jari dan dagu menjadi abnormal, yaitu lebih besar dan panjang dibanding ukuran normal</p>\n			</td>\n		</tr>\n		<tr>\n			<td>2</td>\n			<td>Hiposekresi ADH (<em>Anti Diuretic Hormone</em>) dapat mengakibatkan diabetes insipidus</td>\n			<td>Produksi urine berlebihan</td>\n		</tr>\n		<tr>\n			<td>3</td>\n			<td>Hiposekresi tiroksin<br />\n			a. Pada anak : kretinisme<br />\n			b. Pada dewasa: miksedema<br />\n			Hipersekresi tiroksin mengakibatkan penyakit basedowi</td>\n			<td>Terjadi hambatan pertumbuhan fisik dan mental sehingga menjadi kerdil<br />\n			Terjadi pembengkakan di bawah kulit berisi cairan dan berat badan bertambah<br />\n			Metabolisme dalam tubuh meningkat, banyak keringat, suhu tubuh cenderung tinggi, dan tangan gemetar</td>\n		</tr>\n		<tr>\n			<td>4</td>\n			<td>\n			<p>Hiposekresi parathormon</p>\n\n			<p>Hipersekresi parathormon</p>\n			</td>\n			<td>Kekurangan kalsum dalam darah dan terjadi kejang pada otot tangan dan kaki<br />\n			Kalsium keluar dari darah dan tulang menuju serum darah sehingga tulang menjadi keropos dan dapat mengakibatkan gagal ginjal</td>\n		</tr>\n		<tr>\n			<td>5</td>\n			<td>Hiposekresi glukokortikoid dan meniralkortikoid mengakibatkan penyakit adison<br />\n			Hipersekresi glukokortikoid dan mineralokortikoid mengakibatkan&nbsp;<em>coushing syndrome</em></td>\n			<td>\n			<p>Hiperpigmentasi, kelelahan, dan nafsu makan turun</p>\n\n			<p>Wajah bulat, tumbuh benjolan pada tulang punggung, hiperpigmentasi, dan perut gelantung</p>\n			</td>\n		</tr>\n		<tr>\n			<td>6</td>\n			<td>Hiposekresi insulin mengakibatkan penyakit diabetes melitus</td>\n			<td>Kadar gula darah tinggi, berat badan turun, mudah merasa haus, serta kulit dan mulut terasa kering</td>\n		</tr>\n	</tbody>\n</table>\n\n<p><br />\n<strong>c. Gangguan dan Kelainan pada Sistem Indra Manusia</strong><br />\nSistem indra yang tersusun dari mata, telinga, kulit, hidung, dan lidah dapat mengalami gangguan dan kelainan. Gangguan dan kelainan pada sistem indra manusi sebagai berikut</p>\n\n<table align=\"center\" border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:800px\">\n	<thead>\n		<tr>\n			<th scope=\"col\">No</th>\n			<th scope=\"col\">Alat Indra</th>\n			<th scope=\"col\">Gangguan dan Kelainan</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td>1<br />\n			2<br />\n			3<br />\n			4<br />\n			5</td>\n			<td>Mata<br />\n			Telinga<br />\n			Kulit<br />\n			Hidung<br />\n			Lidah</td>\n			<td>Miopi, hipermetropi, astigmatisme, presbiopi, juling, buta warna, rabun senja, dan katarak<br />\n			Tuli konduktif dan tuli saraf<br />\n			jerawat, dermatitis, panu, kudis, dan eksim<br />\n			Influenza, polip, dan sinusitis<br />\n			Sariawan, kanker lidah, glossoptosis, glossopyrosis, dan atrophic glossitis</td>\n		</tr>\n	</tbody>\n</table>\n', 70),
(66, '<h2>2. Pengaruh Psikotropika terhadap Sistem Saraf</h2>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Beberapa obat-obatan tertentu bermanfaat dalam bidang kesehatan dengan cara kerja memengaruhi sistem saraf misalnya obat penghilang rasa sakit. Akan tetapi, obat-obatan tersebut sering disalahgunakan oleh oknum-oknum tertentu, sehingga menimbulkan gangguan pada sistem saraf. Salah satu obat yang sering disalahgunakan adalah psikotropika.<br />\nMenurut UU No. 5 tahun 1997, psikotropika merupakan zat atau obat, baik alamiah maupun sintetik yang berkhasiat psikoaktif melalui pengaruh selektif menurut susunan saraf pusat yang menyebabkan perubahan khas pada aktivitas mental dan perilaku. Berdasarkan pengaruhnya, obat-obatan tersebut dapat dikelompokkan menjadi beberapa golongan berikut.<br />\na. Sedatif<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Obat-obatan golongan sedatif dapat memberikan efek penenang dengan menurunkan aktivitas otak. Contohnya valium dan barbiturate.<br />\nb. Stimulan<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Obat-obatan golongan stimulan dapat menimbulkan efek menjadi lebih aktif, tidak mengantuk, dan memberikan kondisi prima dengan mengaktifkan susunan saraf pusat dan meningkatkan kerja otak. Contohnya amphetamin dan kokain.<br />\nc. Halusinogen<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Obat-obatan golongan halusinogen dapat memberikan efek halusinasi pada penggunanya. Golongan ini merupakan golongan psikotropika yang paling berbahaya karena menimbulkan efek yang sama seperti narkotika. Contohnya mariyuana, ekstasi, heroin, kokain, dan ganja.<br />\nd. Painkiller<br />\n&nbsp; &nbsp; &nbsp; &nbsp; Golongan ini dapat menghilangkan rasa nyeri dengan cara menekan bagian otak yang mengatur rasa nyeri. Penggunaan golongan ini dapat mengakibatkan ketergantungan. Contohnya opium, morfin, dan kokain.</p>\n\n<p><br />\nPenggunaan obat-obatan psikotropika melebihi dosis dan tanpa pengawasan dokter dapat berakibat buruk terhadap sistem koordinasi. Beberapa gangguan yang diakibatkan oleh psikotropika terhadap sistem saraf sebagai berikut.<br />\na. Hilangnya koordinasi tubuh. Hal tersebut terjadi karena dopamin yang berfungsi sebagai neurotransmiter dalam tubuh berkurang.<br />\nb. Pengaturan saraf terhadap kendali otot gerak dan denyut jantung melemah. Mengingat rawannya penyalahgunaan psikotropika, maka pemerintah melakukan pengawasan terhadap peredaran obat-obat psikotropika seperti tercantum pada UU No. 5 tahun 1997 Bab IV Pasal 9&ndash;13.</p>\n', 71),
(67, '<p>Secara umum, suatu organisme dapat berkembang biak apabila telah mencapai kedewasaan. Pada saat itulah alat reproduksi telah berkembang dan siap untuk bereproduksi.<br />\n1. Organ Reproduksi Pria<br />\nOrgan reproduksi pria terdiri atas organ reproduksi luar dan organ reproduksi dalam. Organ reproduksi luar berupa penis dan skrotum. Organ reproduksi dalam berupa testis, saluran kelamin, dan kelenjar kelamin.<br />\na. Organ Reproduksi Bagian Luar<br />\n1) Penis<br />\nPenis berfungsi untuk memasukkan sperma ke saluran kelamin wanita. Di dalam penis terdapat uretra. Uretra pada penis dikelilingi oleh pembuluh darah dan ujung-ujung saraf perasa.<br />\n2) Skrotum (kantong pelir)<br />\nSkrotum merupakan kantong yang membungkus atau melindungi testis. Antara skrotum kanan dan skrotum kiri terdapat jaringan ikat dan otot polos. Adanya otot polos mengakibatkan skrotum dapat mengerut dan mengendur. Dalam skrotum terdapat otot lurik yang berfungsi mengatur suhu di sekitar testis agar selalu stabil (pembentukan sperma memerlukan suhu sedikit di bawah suhu tubuh yaitu 34&deg;C).<br />\nFungsi utama skrotum untuk memberikan testis suatu lingkungan yang memiliki suhu 1&ndash;8&deg;C lebih dingin dibandingkan temperatur rongga tubuh. Pengaturan suhu dilakukan dengan mengerutkan atau<br />\nmelonggarkan skrotum sehingga testis dapat bergerak mendekat atau menjauhi tubuh. Testis akan diangkat mendekati tubuh pada suhu dingin dan bergerak menjauh pada suhu panas.<br />\nb. Organ Reproduksi Bagian Dalam<br />\n1) Testis (gonad jantan)<br />\nTestis berfungsi memproduksi sperma dan testosteron (hormon kelamin pria). Di dalam testis terdapat saluransaluran halus yang disebut tubulus seminiferus. Dalam tubulus seminiferus inilah terjadi pembentukan sperma. Untuk mengamati struktur testis.<br />\n2) Saluran Kelamin<br />\nSaluran kelamin berfungsi menyalurkan sperma dari testis ke luar tubuh melalui penis. Saluran kelamin pada organ reproduksi pria yaitu epididimis, vas deferens, saluran ejakulasi, dan uretra.<br />\n3) Kelenjar Kelamin<br />\nSelama perjalanan di dalam saluran kelamin, sperma mengalami penambahan cairan-cairan kelamin. Cairan tersebut berguna untuk mempertahankan kehidupan dan gerak sperma. Cairan-cairan kelamin<br />\ndihasilkan oleh vesikula seminalis, kelenjar prostat, dan kelenjar Cowper.<br />\na) Vesikula seminalis menghasilkan cairan yang berfungsi sebagai sumber energi dan untuk memudahkan gerakan sperma. Cairan ini juga menormalkan keasaman saluran reproduksi wanita saat koitus.<br />\nb) Kelenjar prostat menghasilkan cairan yang memberi suasana basa pada cairan sperma. Cairan tersebut mengandung kolesterol, garam, dan fosfolipid.<br />\nc) Kelenjar Cowper/kelenjar bulbouretra menghasilkan cairan yang bersifat basa. Kelenjar Cowper berhubungan langsung dengan uretra.</p>\n', 72);
INSERT INTO `materi` (`id`, `materi_desc`, `module_id`) VALUES
(68, '<p>2. Organ Reproduksi Wanita<br />\nOrgan reproduksi wanita terdiri atas organ kelamin luar dan organ kelamin dalam. Organ kelamin luar berupa vulva dan labium. Organ kelamin dalam berupa ovarium dan saluran kelamin.<br />\na. Organ Reproduksi Bagian Luar<br />\n1) Vulva<br />\nVulva merupakan celah paling luar dari alat kelamin wanita. Pada bagian dalam vulva terdapat saluran urine dan saluran reproduksi. Pada daerah dekat ujung saluran kelamin terdapat himen (selaput dara). Himen mengandung banyak pembuluh darah.<br />\n2) Labium<br />\nLabium merupakan bagian yang membatasi vulva. Ada dua macam labium, yaitu labium mayora (terletak di sebelah luar) dan labium minora (terletak di sebelah dalam). Antara labium mayora dan labium minora bagian atas terbentuk tonjolan kecil yang disebut klitoris. Pada klitoris terdapat korpus kavernosa yang mengandung banyak pembuluh darah dan ujung saraf perasa.<br />\nb. Organ Reproduksi Bagian Dalam<br />\n1) Vagina<br />\nVagina merupakan saluran akhir organ reproduksi wanita. Vagina bermuara di vulva. Vagina mengandung banyak lendir yang dihasilkan kelenjar Bartholin. Lendir ini berguna pada saat koitus dan mempermudah kelahiran bayi.<br />\n2) Uterus<br />\nUterus adalah rongga besar yang merupakan pertemuan oviduk kanan dan kiri. Bagian terbawah uterus menyempit disebut serviks (leher rahim). Uterus berfungsi sebagai tempat pertumbuhan dan perkembangan embrio hingga siap lahir. Uterus dibatasi oleh dinding endometrium yang kaya pembuluh darah. Dinding endometrium akan menebal ketika terjadi kehamilan.<br />\n3) Oviduk<br />\nOviduk atau tuba fallopii merupakan sepasang saluran yang ujungnya berbentuk corong disebut infundibulum. Pada infundibulum terdapat fimbriae (rumbai-rumbai) untuk menangkap ovum. Tuba fallopii berguna sebagai tempat terjadinya fertilisasi.<br />\n4) Ovarium<br />\nOvarium merupakan penghasil ovum. Terdapat dua buah ovarium yaitu di sebelah kiri dan kanan.<br />\nAnda telah mempelajari mengenai organ-organ reproduksi manusia. Setiap organ memiliki struktur tertentu yang disesuaikan dengan fungsinya. Anda sebaiknya menggunakan pola pikir secara ilmiah untuk memahami struktur organ-organ tersebut berdasarkan fungsinya di dalam tubuh.</p>\n', 73),
(69, '<p>Di dalam organ reproduksi manusia berlangsung berbagai proses yang berkaitan dengan sistem reproduksi. Proses-proses tersebut antara lain spermatogenesis, oogenesis, menstruasi, ovulasi, gestasi, dan persalinan.<br />\n1. Gametogenesis<br />\nGametogenesis adalah proses pembentukan sel kelamin atau gamet. Pada manusia, gametogenesis dibedakan menjadi dua yaitu spermatogenesis dan oogenesis. Spermatogenesis adalah proses pembentukan sperma yang terjadi di dalam tubulus seminiferus. Oogenesis adalah proses pembentukan ovum yang berlangsung di ovarium.<br />\na. Spermatogenesis<br />\nSpermatogenesis atau produksi sel-sel sperma dewasa adalah proses yang terus-menerus dan prolifik pada jantan dewasa (Campbell, Reece, dan Mitchell: 2004). Spermatogenesis melibatkan spermatogonium, sel sertoli, dan sel Leydig yang ketiganya terdapat di dalam tubulus seminiferus.<br />\n1) Spermatogonium (sel induk spermatozoa) merupakan penghasil sperma.<br />\n2) Sel sertoli merupakan pemberi nutrisi bagi spermatozoa.<br />\n3) Sel Leydig merupakan penghasil hormon testosteron. Hormon ini berperan dalam pembelahan meiosis untuk membentuk spermatosit sekunder.<br />\nSpermatogenesis dipengaruhi oleh beberapa hormon LH dan FSH. LH (Luteinizing Hormone) berfungsi merangsang sel Leydig untuk menghasilkan hormon testosteron. FSH (Follicle Stimulating Hormone) merangsang sel sertoli untuk menghasilkan ABP (Androgen Binding Protein). ABP akan merangsang spermatogonium untuk memulai spermatogenesis. Spermatogenesis terjadi melalui tiga tahap, yaitu tahap penggandaan, tahap pertumbuhan, dan tahap pematangan.<br />\n1) Tahap penggandaan, sel primordial mengalami pembelahan mitosis berulang-ulang dan membentuk spermatogonia (tunggal = spermatogonium).<br />\n2) Tahap pertumbuhan, spermatogonium bersifat diploid. Spermatogonium tumbuh dan berkembang membentuk spermatosit primer (diploid).<br />\n3) Tahap pematangan, spermatosit primer membelah secara meiosis membentuk dua spermatosit sekunder (haploid). Spermatosit sekunder kemudian membelah secara meiosis membentuk empat buah spermatid (haploid). Setiap spermatid akan berdiferensiasi menjadi sperma (haploid). Proses pematangan spermatid menjadi sperma disebut spermiasi. Proses pematangan sperma dipengaruhi oleh hormon testosteron.<br />\nSperma terdiri atas kepala dan ekor. Pada membran yang melindungi ujung kepala sperma terdapat selubung yang disebut akrosom. Akrosom mengandung enzim hialuronidase, akrosin, dan antifertilizin. Hialuronidase dan akrosin berfungsi menembus lapisan pelindung ovum. Antifertilizin merupakan<br />\nantigen yang berfungsi melekatkan sperma pada sel telur. Bagian ekor berfungsi sebagai alat gerak sperma. Pada pangkal ekor terdapat badan sperma yang mengandung mitokondria. Mitokondria berfungsi sebagai penghasil energi untuk pergerakan sperma.<br />\nb. Oogenesis<br />\nSel telur terbentuk melalui oogenesis yang terjadi di dalam ovarium. Oogenesis terjadi melalui tiga tahap, yaitu tahap penggandaan, tahap pertumbuhan, dan tahap pematangan.<br />\n1) Tahap penggandaan terjadi di dalam ovarium janin ketika masih dalam kandungan. Pada tahap penggandaan, sel primordial mengalami pembelahan mitosis membentuk oogonia (tunggal = oogonium) yang bersifat diploid.<br />\n2) Tahap pertumbuhan terjadi pada ovarium bayi. Pada tahap pertumbuhan oogonium mengalami pembelahan mitosis membentuk oosit primer (diploid). Oosit primer berada dalam keadaan dorman (istirahat) sampai anak perempuan mengalami masa puber.<br />\n3) Tahap pematangan dimulai pada masa puber. Pada masa puber terjadi perubahan hormonal dalam tubuh anak perempuan. Perubahan tersebut mengakibatkan oosit primer membelah secara meiosis I menghasilkan oosit sekunder (berukuran besar) dan badan polar I (berukuran kecil). Oosit sekunder berhenti mengalami pembelahan saat terjadi ovulasi. Pembelahan meiosis II ini kemudian dilanjutkan<br />\nsetelah sel telur mengalami fertilisasi. Pada pembelahan ini, oosit sekunder menghasilkan ootid (haploid) dan badan polar II (haploid). Ootid akan mengalami diferensiasi menjadi ovum, sedangkan badan polar II mengalami degenerasi. Badan polar I juga akan mengalami pembelahan menjadi dua badan polar. Namun, kadang-kadang badan polar I mengalami degenerasi sebelum mengalami pembelahan.<br />\n2. Siklus Menstruasi<br />\nSeorang wanita yang masih produktif setiap bulan melepaskan satu sel telur matang dari salah satu ovariumnya. Apabila tidak terjadi fertilisasi akan terjadi pendarahan disertai luruhnya sel telur dan lapisan endometrium. Pendarahan ini disebut menstruasi. Menstruasi terjadi secara periodik sehingga disebut siklus menstruasi. Pada umumnya siklus menstruasi berlangsung selama 28 hari.<br />\nSiklus menstruasi terdiri atas beberapa fase yaitu fase aliran menstruasi, fase proliferasi, dan fase sekresi.<br />\nUntuk mengetahui peristiwa-peristiwa yang terjadi pada setiap fase simaklah uraian berikut.<br />\na. Fase Aliran Menstruasi<br />\nFase ini terjadi apabila ovum tidak dibuahi oleh sperma. Dalam keadaan tersebut korpus luteum menghentikan produksi estrogen dan progesteron. Akibatnya, ovum meluruh bersama-sama dengan endometrium. Kondisi ini ditandai adanya pendarahan melalui vagina.<br />\nb. Fase Proliferasi<br />\nPada fase proliferasi, hipotalamus menghasilkan hormon gonadotropin yang merangsang pembentukan follicle stimulating hormone (FSH). FSH akan merangsang pembentukan folikel yang mengelilingi oosit primer hingga matang. Ovum matang yang diselubungi folikel disebut folikel de Graaf. Folikel de Graaf<br />\nkemudian menghasilkan estrogen yang merangsang pembentukan endometrium. Estrogen juga memengaruhi serviks untuk mengeluarkan lendir bersifat basa. Lendir tersebut akan menetralkan sifat asam dalam serviks sehingga sperma mampu hidup di dalamnya. Adanya peningkatan kadar estrogen mengakibatkan terhambatnya pembentukan FSH sehingga hipofisis melepaskan luteinizing hormone (LH). LH akan merangsang terjadinya ovulasi. Ovulasi biasanya terjadi pada hari ke-14 dihitung sejak hari pertama menstruasi. Pada saat ovulasi, oosit sekunder terlepas dari folikel.<br />\nc. Fase Sekresi<br />\nPada tahap ini, LH akan merangsang folikel yang telah kosong menjadi korpus luteum (badan kuning). Korpus luteum tetap menghasilkan estrogen dan progesteron. Progesteron bekerja sama dengan estrogen memacu pembentukan endometrium. Progesteron juga merangsang sekresi lendir pada vagina dan pertumbuhan kelenjar susu. Hal ini berguna untuk persiapan penanaman zigot dalam uterus setelah terjadi pembuahan. Apabila sampai akhir fase ini tidak terjadi pembuahan, akan kembali ke fase aliran menstruasi lagi.<br />\nSiklus menstruasi ini berlangsung bertahun-tahun hingga seorang wanita berusia kurang lebih 45 tahun. Pada usia 42&ndash;52 tahun, banyak oosit primer dalam ovarium yang mengalami degenerasi. Akibatnya, siklus menstruasi menjadi tidak teratur dan akhirnya berhenti sama sekali. Berhentinya siklus menstruasi disebut menopause.<br />\n3. Fertilisasi, Gestasi, dan Persalinan<br />\nDi dalam organ reproduksi wanita berlangsung tahap-tahap reproduksi mulai dari dihasilkan ovum sampai terjadinya kehamilan. Terjadinya kehamilan diawali dengan fertilisasi. Bagaimana mekanismenya? Sebulan sekali ovarium melakukan ovulasi, yaitu pengeluaran sel telur matang berupa oosit sekunder. Sel telur ini siap dibuahi oleh sperma. Peleburan antara sel telur dengan sperma<br />\ndisebut pembuahan atau fertilisasi. Fertilisasi terjadi di dalam tuba fallopii dan menghasilkan zigot. Zigot kemudian mengalami pembelahan sel berulang-ulang. Zigot membelah menjadi dua sel kemudian membelah lagi menjadi empat sel. Selanjutnya, terjadi pembelahan sel menjadi 32 sel berkelompok seperti buah arbei yang disebut morula. Morula mengalami pembelahan membentuk blastula. Blastula mempunyai rongga di dalamnya yang disebut blastosol. Blastula terdiri atas sel-sel bagian luar dan sel-sel bagian dalam. Sel-sel bagian luar disebut trofoblas. Trofoblas membantu implantasi blastula pada uterus. Trofoblas ini kemudian berkembang membentuk plasenta dan membran kehamilan.<br />\nSel-sel bagian dalam blastula berkembang menjadi calon embrio/embrioblas. Embrioblas dilindungi oleh dua lapisan, yaitu ektoderm (lapisan luar) dan endoderm (lapisan dalam). Selanjutnya, blastula berkembang menjadi gastrula. Pada fase gastrula, di antara ektoderm dan endoderm terbentuk lapisan mesoderm. Semua bagian tubuh manusia terbentuk dari ketiga lapisan tersebut.<br />\nOrganogenesis dari ketiga lapisan di atas terjadi pada minggu keempat sampai kedelapan. Pada minggu kesembilan sampai beberapa saat sebelum lahir terjadi penyempurnaan organ dan pertumbuhan tubuh sehingga terbentuklah fetus (janin).<br />\nEmbrio melepaskan hormon human chorionic gonadotropin (HCG). Hormon ini terus meningkat hingga sekitar hari ke-70 dan akan menurun selama sisa kehamilan. HCG kemudian dibawa ke ovarium untuk mempertahankan korpus luteum. Dengan demikian, korpus luteum tetap menghasilkan estrogen dan progesteron yang berfungsi mempertahankan kehamilan.<br />\nSelama berlangsungnya kehamilan, terbentuk beberapa membran kehamilan, yaitu sakus vitelinus, karion, amnion, dan alantois.<br />\na. Sakus vitelinus atau kantong telur merupakan pelebaran endodermis. Sakus vitelinus merupakan tempat pembentukan sel darah dan pembuluh darah embrio. Sakus vitelinus dengan trofoblas berinteraksi membentuk korion.<br />\nb. Korion merupakan membran terluar pada embrio. Korion membentuk vili korion yang berisi pembuluh darah. Korion dengan jaringan endometrium ibu membentuk plasenta. Plasenta berperan dalam pertukaran gas, makanan, dan zat sisa antara janin dan ibu. Namun, darah ibu tidak pernah berhubungan dengan darah janin karena dibatasi oleh jaringan ikat. Hanya beberapa partikel kecil dalam darah saja yang dapat melewati jaringan ikat tersebut, contoh virus dan bakteri.<br />\nc. Amnion merupakan kantong berisi cairan tempat embrio berada. Amnion berguna melindungi janin dari tekanan, benturan, atau perubahan suhu yang drastis.<br />\nd. Alantois merupakan membran pembentukan tali pusar (ari-ari). Tali pusar menghubungkan janin dengan plasenta pada endometrium ibu. Tali pusar berguna menyalurkan zat makanan dan oksigen dari ibu serta mengeluarkan zat sisa yang dihasilkan janin untuk dibuang. Pada saat usia kehamilan mencapai 38 minggu, bayi siap dilahirkan. Proses persalinan diawali dengan kontraksi uterus yang dipengaruhi oleh hormon estrogen (dihasilkan oleh plasenta), oksitosin (dihasilkan oleh hipofisis ibu dan janin), dan prostaglandin (dihasilkan oleh membran pada janin).<br />\nSelain ketiga hormon tersebut, korpus luteum pada ovarium juga menghasilkan hormon relaksin. Hormon itu berfungsi melunakkan serviks dan melonggarkan tulang panggul. Adanya perubahan hormonal dan kontraksi otot mengakibatkan serviks membuka. Setelah selaput amnion pecah dan cairan di dalamnya keluar, tidak lama kemudian bayi segera lahir.<br />\n4. Laktasi<br />\nSetelah bayi terlahir, sepasang kelenjar payudara akan memproduksi susu (laktasi). Pertumbuhan awal kelenjar payudara dipengaruhi oleh hormon mammotropin. Hormon ini dihasilkan oleh hipofisis ibu dan plasenta janin. Plasenta juga menghasilkan hormon estrogen dan progesteron. Hormon estrogen dan progesteron memengaruhi perkembangan fisik kelenjar payudara. Hormon lain yang memengaruhi sekresi ASI yaitu prolaktin. Hormon ini dihasilkan oleh hipofisis. Hormon prolaktin berfungsi meningkatkan sekresi ASI pada minggu kelima kehamilan sampai kelahiran bayi. ASI yang dikeluarkan pertama kali berwarna kekuningan disebut kolostrum. ASI merupakan makanan terbaik bagi bayi. ASI diketahui mengandung zat gizi yang paling sesuai untuk pertumbuhan dan perkembangan bayi, baik kualitas maupun kuantitasnya (Dewi: 2012). Dengan demikian, dapat dikatakan bahwa ASI lebih unggul dibandingkan susu formula.</p>\n', 74),
(70, '<p>Pada zaman modern ini, kesehatan sistem reproduksi mendapat perhatian yang serius. Hal ini terbukti dengan adanya berbagai upaya mencari solusi terhadap masalah atau gangguan pada sistem reproduksi. Kesehatan sistem reproduksi berhubungan erat dengan penyakit atau gangguan pada sistem reproduksi dan cara menjaga atau merawat kesehatan sistem reproduksi.<br />\nJenis-jenis penyakit yang menyerang sistem reproduksi, cara merawat kesehatan reproduksi, program KB, dan masalah kependudukan akibat proses reproduksi.<br />\n1. Penyakit dan Gangguan yang Berhubungan dengan Sistem Reproduksi<br />\nPenyakit pada sistem reproduksi pada umumnya terjadi akibat infeksi mikroorganisme tertentu. Penyakit ini dapat menular melalui hubungan seksual. Oleh karena itu, penyakit tersebut sering disebut PMS (Penyakit Menular Seksual). Selain melalui hubungan seksual, PMS dapat ditularkan oleh cairan darah melalui jarum suntik/transfusi. Ibu hamil juga dapat menularkan PMS kepada bayinya. Dalam<br />\nbanyak kasus, PMS kadang tidak menunjukkan gejala sama sekali. Meskipun demikian, tetap harus digarisbawahi bahwa seseorang yang terinfeksi PMS dapat menularkan penyakitnya kepada orang lain.<br />\nBeberapa jenis penyakit yang menyerang sistem reproduksi antara lain keputihan, uretritis, prostatitis, epididimitis, gonore, sifilis, herpes genitalis, kutil kelamin, dan trikomoniasis vaginalis.<br />\nSelain PMS, organ reproduksi dapat mengalami gangguan tertentu sehingga tidak berfungsi dengan baik. Gangguan tersebut dapat terjadi pada organ reproduksi pria maupun wanita. Beberapa gangguan yang sering dijumpai pada system reproduksi yaitu endometriosis, kriptorkidisme, hipogonadisme, amenore, mioma, dan penyumbatan saluran reproduksi.<br />\n2. Merawat dan Menjaga Kesehatan Sistem Reproduksi<br />\nKesehatan sistem reproduksi berhubungan dengan fungsi dan proses yang terjadi dalam sistem reproduksi. Setiap pribadi, baik pria maupun wanita, perlu menjaga kesehatan sistem reproduksinya. Hal ini perlu dilakukan agar kesuburan atau fertilitas tetap terjaga untuk menghasilkan keturunan.<br />\nBeberapa upaya berikut dapat dilakukan untuk menjaga kesehatan system reproduksi.<br />\na. Membersihkan alat kelamin bagian luar menggunakan air bersih setelah buang air. Saat membersihkan alat kelamin sebaiknya dari arah depan ke belakang.<br />\nb. Menjaga alat kelamin luar agar selalu kering, misal dilap menggunakan tisu setelah terkena air. Daerah lembap cocok untuk berkembangbiaknya bakteri dan jamur.<br />\nc. Menggunakan celana dalam dari bahan yang menyerap keringat dan tidak terlalu ketat.<br />\nd. Menghentikan kebiasaan menahan buang air. Menahan buang air dapat mengakibatkan urine menetes sehingga membasahi celana dalam.<br />\ne. Mengurangi kebiasaan mandi menggunakan air panas. Suhu panas dapat mengganggu &nbsp;permatogenesis.<br />\nUntuk menjaga kesehatan sistem reproduksi, diperlukan perilaku yang positif dalam pergaulan. Perkembangan zaman yang semakin modern, mengakibatkan semakin merebaknya pergaulan bebas di kalangan remaja. Akibatnya, banyak terjadi pernikahan dini di kalangan remaja.<br />\n3. Masalah Kependudukan dan Program KB<br />\nProses reproduksi manusia merupakan proses pertambahan individu baru sebagai akibat kelahiran. Semakin tinggi tingkat reproduksi manusia maka permasalahan yang ditimbulkannya juga semakin meningkat. Oleh karena itu, diperlukan usaha-usaha untuk mengatasi permasalahan tersebut salah satunya dengan program KB.<br />\nPertumbuhan jumlah penduduk yang semakin meningkat terjadi karena waktu reproduksi manusia relatif cepat. Selain itu, perkembangan ilmu dan teknologi di bidang kesehatan mengakibatkan peningkatan kesehatan reproduksi manusia. Peningkatan jumlah penduduk yang tidak terkendali dapat mengakibatkan ketidakseimbangan antara kebutuhan dan persediaan berbagai faktor kehidupan antara lain papan, sandang, pangan, dan lapangan pekerjaan. Akibatnya, terjadilah kerawanan sosial karena pengangguran, kriminalitas, dan berbagai penyakit sosial lainnya. Akibat lebih lanjut dari masalah sosial<br />\nini adalah menurunnya kualitas hidup. Dengan demikian, di satu sisi reproduksi dapat menambah kuantitas manusia tetapi di sisi lainnya dapat menurunkan kualitas manusia. Oleh karena itu, diperlukan usaha-usaha untuk menanggulanginya, salah satunya dengan menerapkan program Keluarga Berencana (KB).<br />\nKeluarga Berencana merupakan program pemerintah Indonesia untuk mengatasi dan mengantisipasi masalah pertambahan penduduk yang cepat. Keluarga Berencana dalam pengertian umum dapat dijelaskan sebagai usaha yang mengatur banyaknya jumlah kelahiran sehingga ibu, bayi, ayah, dan keluarganya atau masyarakat yang bersangkutan tidak akan mendapatkan kerugian sebagai akibat langsung dari kelahiran tersebut. Dalam pengertian sederhana dan sempit, keluarga berencana dalam kehidupan sehari-hari berkisar pada pencegahan konsepsi (pembuahan) yaitu persatuan sel telur dengan spermatozoa. Jadi, salah satu fungsi program Keluarga Berencana yaitu untuk mencegah kehamilan sehingga jarak kelahiran dapat diatur.<br />\nPencegahan kehamilan dapat dilakukan dengan menggunakan alat-alat kontrasepsi. Secara umum berdasarkan sifat kerjanya, kontrasepsi dibedakan menjadi dua macam yaitu kontrasepsi permanen dan kontrasepsi temporer. Kontrasepsi permanen dilakukan dengan cara operasi, baik pada wanita (tubektomi) maupun pria (vasektomi). Kontrasepsi temporer dilakukan dengan alat bantu atau tanpa alat bantu. Kontrasepsi tanpa alat bantu dilakukan dengan menghindari hubungan seksual pada masa subur. Kontrasepsi dengan alat bantu banyak ragamnya yaitu Intra-Uterine Devices (IUD) atau spiral, pil kontrasepsi, obat suntik, kondom, dan diafragma.</p>\n', 75),
(71, '<p>Tuhan menciptakan manusia dengan sempurna. Dalam tubuh manusia telah diciptakan sistem pertahanan tubuh yang dapat memberikan kekebalan terhadap suatu penyakit.<br />\nBagaimana pertahanan tubuh jika ada patogen masuk ke tubuh? Simaklah uraian berikut untuk mengetahui jawabannya.<br />\n1. Jenis-Jenis Pertahanan Tubuh<br />\nTubuh kita sudah dilengkapi dengan sistem pertahanan yang dapat melindungi tubuh dari patogen sehingga tidak mudah terserang penyakit. Jika bekerja dengan baik, sistem pertahanan tubuh akan melindungi tubuh terhadap infeksi, serta menghancurkan sel kanker dan zat asing lain dalam tubuh.<br />\nFungsi sistem pertahanan tubuh sebagai berikut.<br />\na. Melindungi tubuh dari serangan benda asing atau bibit penyakit yang masuk ke tubuh. Benda asing tersebut dapat berupa mikrobia penyebab penyakit (patogen), misal virus, bakteri, Protozoa, dan jamur.<br />\nb. Menghilangkan jaringan atau sel yang mati atau rusak (debris sel) untuk perbaikan jaringan.<br />\nc. Mengenali dan menghilangkan sel abnormal.<br />\nItulah beberapa fungsi sistem pertahanan tubuh. Pertahanan tubuh terhadap suatu penyakit melibatkan antigen dan peran antibodi.<br />\nMekanisme pertahanan tubuh melibatkan antigen dan antibodi. Menurut Campbell, Reece, dan Mitchell (2004), molekul asing yang mendatangkan suatu respons spesifik dari limfosit disebut sebagai antigen. Sementara itu, salah satu cara antigen menimbulkan respons kekebalan adalah dengan mengaktifkan sel B untuk menyekresikan protein yang disebut antibodi.<br />\nBerdasarkan cara mempertahankan diri dari penyakit, sistem pertahanan tubuh digolongkan menjadi dua, yaitu sistem pertahanan tubuh nonspesifik dan sistem pertahanan tubuh spesifik. Mikrobia penyebab penyakit dan benda asing saat akan menginfeksi tubuh harus melalui sistem pertahanan tubuh nonspesifik terlebih dahulu. Jika sistem pertahanan tubuh nonspesifik tidak mampu menghancurkannya, zat penginfeksi tersebut akan menghadapi sistem pertahanan tubuh spesifik. Beberapa lapis pertahanan yang dilakukan oleh tubuh sebagai berikut.<br />\nBeberapa Lapis Pertahanan Tubuh terhadap Penyakit<br />\n1. Pertahanan Tubuh Nonspesifik<br />\na. Pertahanan Pertama<br />\n&bull; Kulit<br />\n&bull; Membran mukosa<br />\n&bull; Rambut hidung dan silia pada trakea<br />\n&bull; Cairan sekresi dari kulit dan membran mukosa<br />\nb. Pertahanan Kedua<br />\n&bull; Inflamasi<br />\n&bull; Sel-sel fagosit<br />\n&bull; Protein anti mikrobia<br />\n2. Pertahanan Tubuh Spesifik<br />\na. Pertahanan Ketiga<br />\n&bull; Limfosit<br />\n&bull; Antibodi<br />\na. Sistem Pertahanan Tubuh Nonspesifik<br />\nSistem pertahanan tubuh nonspesifik merupakan pertahanan tubuh yang tidak membedakan mikrobia patogen satu dengan yang lainnya. sel-sel penyusun jaringan trakea yang disesuaikan dengan fungsinya sebagai bagian dari system pertahanan tubuh nonspesifik. Sistem pertahanan tubuh nonspesifik diperoleh dengan berbagai cara berikut.<br />\n1) Pertahanan yang Terdapat di Permukaan Tubuh<br />\nPertahanan yang terdapat di permukaan tubuh berupa pertahanan fisik, pertahanan mekanis, pertahanan kimiawi, dan pertahanan biologis.<br />\na) Pertahanan Fisik<br />\nPertahanan tubuh secara fisik dilakukan oleh lapisan terluar tubuh yang berfungsi menghalangi jalan masuknya patogen ke tubuh. Pertahanan ini dilakukan oleh kulit dan membran mukosa. Lapisan terluar kulit terdiri atas sel-sel epitel yang tersusun rapat sehingga patogen sulit menembusnya. Lapisan terluar kulit mengandung keratin dan sedikit air sehingga dapat menghambat pertumbuhan mikrobia. Saluran pencernaan, saluran pernapasan, dan saluran kelamin juga dilapisi oleh membran mukosa yang berfungsi menghalangi masuknya patogen.<br />\nb) Pertahanan Mekanis<br />\nPertahanan tubuh secara mekanis dilakukan oleh rambut hidung dan silia pada trakea. Rambut hidung berfungsi menyaring udara yang dihirup dari partikel-partikel berbahaya maupun mikrobia. Adapun silia yang terdapat pada trakea berfungsi menyapu partikel-partikel berbahaya yang terperangkap dalam lendir agar dapat dikeluarkan dari tubuh.<br />\nc) Pertahanan Kimiawi<br />\nPertahanan tubuh secara kimiawi dilakukan oleh sekret yang dihasilkan oleh kulit dan membran mukosa. Sekret tersebut mengandung zat-zat kimia yang dapat menghambat pertumbuhan mikrobia, contoh minyak dan keringat. Kedua sekret tersebut akan memberikan suasana asam (pH 3&ndash;5) sehingga dapat mencegah pertumbuhan mikroorganisme di kulit. Adapun air liur (saliva), air mata, dan sekresi mukosa (mukus) mengandung enzim lisozim yang dapat membunuh bakteri. Enzim tersebut dapat menghidrolisis dinding sel bakteri sehingga pecah dan mati. Berdasarkan uraian tersebut, dapat diketahui bahwa dalam pertahanan kimiawi melibatkan zat-zat kimia yang berperan dalam menghambat pertumbuhan mikrobia. Dengan demikian, dapat dikatakan bahwa ilmu biologi sangat berkaitan atau berhubungan dengan ilmu kimia.<br />\nd) Pertahanan Biologis<br />\nPertahanan tubuh secara biologis dilakukan oleh populasi bakteri tidak berbahaya yang hidup di kulit dan membran mukosa. Bakteri-bakteri tersebut melindungi tubuh dengan cara berkompetisi dengan bakteri patogen dalam memperoleh nutrisi.<br />\n2) Respons Peradangan (Inflamasi)<br />\nInflamasi merupakan respons tubuh terhadap kerusakan jaringan, misal akibat tergores atau benturan keras. Proses inflamasi merupakan kumpulan dari empat gejala sekaligus yaitu dolor (nyeri), rubor (kemerahan), calor (panas), dan tumor (bengkak).<br />\nmekanisme pertahanan tubuh melalui inflamasi dapat dijelaskan sebagai berikut.<br />\na) Jaringan mengalami luka.<br />\nAdanya kerusakan jaringan mengakibatkan patogen mampu melewati pertahanan tubuh untuk menginfeksi sel-sel tubuh. Jaringan yang terinfeksi akan merangsang mastosit mengeluarkan histamin dan prostaglandin.<br />\nb) Terjadi pelebaran pembuluh darah yang mengakibatkan peningkatan kecepatan aliran darah sehingga permeabilitas pembuluh darah meningkat.<br />\nDaerah yang terinfeksi menjadi berwarna kemerahan, panas, bengkak, dan terasa nyeri. Peningkatan kecepatan aliran darah dan permeabilitas pembuluh darah mengakibatkan terjadinya perpindahan sel-sel fagosit (neutrofil dan monosit) menuju jaringan yang terinfeksi.<br />\nc) Sel-sel fagosit kemudian memakan patogen.<br />\nInflamasi berfungsi mencegah infeksi menyebar ke jaringan lain serta mempercepat proses penyembuhan. Reaksi tersebut juga berfungsi sebagai sinyal adanya bahaya dan sebagai perintah agar sel darah putih (neutrofil dan monosit) melakukan fagositosis terhadap mikrobia yang menginfeksi tubuh.<br />\n3) Fagositosis<br />\nFagositosis adalah suatu mekanisme pertahanan yang dilakukan oleh sel-sel fagosit dengan jalan mencerna mikrobia/partikel asing. Sel fagosit terdiri atas dua jenis, yaitu fagosit mononuklear dan polimorfonuklear. Contoh fagosit mononuklear adalah monosit (di dalam darah) dan jika bermigrasi ke jaringan akan berperan sebagai makrofag. Contoh fagosit polimorfonuklear adalah granulosit, yaitu neutrofil, eosinofil, basofil, dan cell mast (mastosit). Sel-sel fagosit ini akan bekerja sama setelah memperoleh sinyal kimiawi dari jaringan yang terinfeksi patogen.<br />\nPenjelasan mengenai proses fagositosis sebagai berikut.<br />\na) Pengenalan (recognition), mikrobia atau partikel asing terdeteksi oleh sel-sel fagosit.<br />\nb) Pergerakan (chemotaxis), setelah suatu partikel mikrobia dikenali, sel fagosit akan bergerak menuju partikel tersebut. Pada proses ini mikrobia atau partikel asing mengeluarkan zat yang dapat memikat<br />\nsel hidup seperti fagosit untuk menghampirinya.<br />\nc) Perlekatan (adhesion), setelah sel fagosit bergerak menuju partikel asing, partikel tersebut akan melekat dengan reseptor pada membrane sel fagosit.<br />\nd) Penelanan (ingestion), ketika partikel asing telah berikatan dengan reseptor di membran plasma sel fagosit, membran plasma sel fagosit akan menyelubungi seluruh permukaan partikel asing dan menelannya ke sitoplasma dalam sebuah gelembung mirip vakuola yang disebut fagosom.<br />\ne) Pencernaan (digestion), lisosom yang berisi enzim-enzim penghancur seperti acid hydrolase dan peroksidase, berfusi dengan fagosom membentuk fagolisosom. Enzim-enzim tersebut mencerna seluruh<br />\npermukaan partikel asing sampai hancur. Setelah infeksi tertanggulangi, beberapa neutrofil dan sel fagosit lain akan mati bersamaan dengan matinya sel-sel tubuh dan patogen. Sel-sel fagosit yang masih hidup maupun yang sudah mati serta sel-sel tubuh yang rusak selanjutnya akan membentuk nanah. Terbentuknya nanah merupakan indikator bahwa infeksi telah sembuh.<br />\nf) Pengeluaran (releasing), produk sisa partikel asing yang tidak dicerna akan dikeluarkan oleh sel fagosit.<br />\n4) Protein Antimikrobia<br />\nSalah satu jenis protein yang berperan dalam sistem pertahanan tubuh nonspesifik yaitu protein komplemen. Protein komplemen membunuh bakteri penginfeksi dengan cara membentuk lubang pada<br />\ndinding sel dan membran plasma bakteri tersebut. Hal ini mengakibatkan ion-ion Ca2+ keluar dari sel bakteri. Sementara itu, cairan dan garam-garam dari luar bakteri akan masuk ke sel bakteri. Masuknya cairan dan garam mengakibatkan sel bakteri hancur.<br />\nJenis protein lain yang berperan dalam sistem pertahanan tubuh nonspesifik yaitu interferon. Interferon dihasilkan oleh sel-sel yang terinfeksi oleh virus. Senyawa tersebut dihasilkan ketika virus memasuki<br />\ntubuh tidak melalui pembuluh darah, melainkan melalui kulit dan selaput lendir. Interferon selanjutnya akan berikatan dengan sel-sel yang tidak terinfeksi. Sel-sel yang telah berikatan dengan interferon akan membentuk zat yang mampu mencegah replikasi virus. Dengan demikian, serangan virus dapat dicegah.<br />\nb. Sistem Pertahanan Tubuh Spesifik<br />\nSistem pertahanan tubuh spesifik merupakan pertahanan tubuh terhadap patogen tertentu yang masuk ke tubuh. Sistem ini bekerja apabila patogen telah berhasil melewati sistem pertahanan tubuh nonspesifik. Sistem pertahanan tubuh spesifik disebut juga dengan sistem kekebalan tubuh atau sistem imun. Sistem kekebalan tubuh melibatkan peran limfosit dan antibodi.<br />\n1) Limfosit<br />\nLimfosit terdiri atas dua tipe, yaitu limfosit B (sel B) dan limfosit T (sel T).<br />\na) Sel B<br />\nProses pembentukan dan pematangan sel B terjadi di sumsum tulang. Sel B berperan dalam pembentukan kekebalan humoral dengan membentuk antibodi. Sel B dapat dibedakan menjadi tiga jenis berikut.<br />\n(1) Sel B plasma, berfungsi membentuk antibodi.<br />\n(2) Sel B pengingat, berfungsi mengingat antigen yang pernah masuk ke tubuh serta menstimulasi pembentukan sel B plasma jika terjadi infeksi kedua.<br />\n(3) Sel B pembelah, berfungsi membentuk sel B plasma dan sel B pengingat.<br />\nb) Sel T<br />\nProses pembentukan sel T terjadi di sumsum tulang dan proses pematangannya terjadi di kelenjar timus. Sel T berperan dalam pembentukan kekebalan seluler yaitu dengan cara menyerang sel penghasil antigen secara langsung. Sel T juga ikut membantu produksi antibodi oleh sel B plasma. Sel T dapat dibedakan menjadi tiga jenis berikut.<br />\n(1) Sel T pembunuh, berfungsi menyerang patogen yang masuk ke tubuh, sel tubuh yang terinfeksi, serta sel kanker secara langsung.<br />\n(2) Sel T pembantu, berfungsi menstimulasi pembentukan jenis sel T lainnya dan sel B plasma serta mengaktivasi makrofag untuk melakukan fagositosis.<br />\n(3) Sel T supresor, berfungsi menurunkan dan menghentikan respons imun dengan cara menurunkan produksi antibodi dan mengurangi aktivitas sel T pembunuh. Sel T supresor akan bekerja setelah infeksi berhasil ditangani.<br />\n2) Antibodi (Immunoglobulin/Ig)<br />\nAntibodi akan dibentuk oleh tubuh ketika ada antigen yang masuk ke tubuh. Antigen merupakan senyawa protein yang terdapat pada patogen sel asing atau sel kanker. Antibodi disebut juga immunoglobulin atau serum protein globulin, karena berfungsi untuk melindungi tubuh melalui proses kekebalan (immune). Antibodi merupakan senyawa protein yang berfungsi melawan antigen dengan cara mengikat antigen tersebut. Selanjutnya, sel asing yang antigennya telah diikat oleh antibodi akan ditangkap dan dihancurkan oleh makrofag. Suatu antibodi bekerja secara spesifik untuk antigen tertentu. Contoh antibodi cacar hanya bekerja untuk antigen cacar. Oleh karena jenis antigen pada setiap kuman penyakit bersifat spesifik maka diperlukan antibodi yang berbeda untuk jenis kuman yang berbeda. Dengan demikian, diperlukan berbagai jenis antibodi untuk melindungi tubuh dari berbagai kuman penyakit.<br />\nAntibodi tersusun dari dua macam rantai polipeptida yang identik, yaitu dua rantai ringan dan dua rantai berat. Keempat rantai pada molekul antibodi tersebut dihubungkan satu sama lain oleh ikatan disulfida dan bentuk molekulnya seperti huruf Y. Setiap lengan dari molekul tersebut memiliki tempat pengikatan antigen.<br />\nBeberapa cara kerja antibodi dalam menginaktivasi antigen sebagai berikut.<br />\na) Netralisasi (menghalangi tempat pengikatan virus, membungkus bakteri dan atau opsonisasi).<br />\nb) Aglutinasi partikel yang mengandung antigen, seperti mikrobia.<br />\nc) Presipitasi (pengendapan) antigen yang dapat larut.<br />\nd) Fiksasi komplemen (aktivasi komplemen).<br />\nAntibodi dapat dibedakan menjadi lima tipe, yaitu IgM, IgG, IgA, IgD, dan IgE. Karakteristik dari kelima tipe antibodi tersebut sebagai berikut.<br />\nIgM : Antibodi ini dilepaskan ke aliran darah saat terjadi infeksi yang pertama kali (respons kekebalan primer).<br />\nIgG : Antibodi ini paling banyak terdapat di dalam darah dan diproduksi saat terjadi infeksi kedua (respons kekebalan sekunder). IgG juga mengalir melalui plasenta dan memberi kekebalan pasif dari ibu kepada janin.<br />\nIgA : Antibodi ini dapat ditemukan dalam air mata, air ludah, keringat, dan membran mukosa. IgA berfungsi mencegah infeksi pada permukaan epitelium. IgA juga terdapat dalam kolostrum yang berfungsi mencegah kematian bayi akibat infeksi saluran pencernaan.<br />\nIgD : Antibodi ini ditemukan pada permukaan limfosit B sebagai reseptor dan berfungsi merangsang pembentukan antibodi oleh sel B plasma.<br />\nIgE : Antibodi ini ditemukan terikat pada basofil di dalam sirkulasi darah dan cell mast (mastosit) di dalam jaringan yang berfungsi memengaruhi sel untuk melepaskan histamin dan terlibat dalam reaksi alergi.</p>\n', 76),
(72, '<p>2. Respons Kekebalan terhadap Antigen<br />\nRespons kekebalan tubuh terhadap antigen dapat dibedakan menjadi dua jenis yaitu kekebalan humoral (antibody-mediated immunity) dan kekebalan yang diperantai sel (cell-mediated immunity) atau sering juga disebut kekebalan seluler.<br />\na. Kekebalan Humoral<br />\nKekebalan humoral melibatkan aktivitas sel B dan antibodi yang beredar dalam cairan darah dan limfe. Ketika suatu antigen masuk ke tubuh untuk pertama kalinya, sel B pembelah akan membentuk sel B plasma dan sel B pengingat. Sel B plasma akan menghasilkan antibodi yang berfungsi mengikat<br />\nantigen. Dengan demikian, makrofag akan lebih mudah menangkap dan menghancurkan patogen. Setelah infeksi berakhir, sel B plasma akan mati, sedangkan sel B pengingat akan tetap hidup dalam waktu lama. Serangkaian respons terhadap patogen ini disebut respons kekebalan primer.<br />\nApabila antigen yang sama masuk kembali ke tubuh, sel B pengingat akan mengenalinya dan menstimulasi pembentukan sel B plasma. Sel B plasma berfungsi memproduksi antibodi. Respons tersebut dinamakan respons kekebalan sekunder. Respons kekebalan sekunder terjadi lebih cepat dan konsentrasi antibodi yang dihasilkan lebih besar dibandingkan pada respons kekebalan primer. Hal ini dikarenakan adanya memori imunologi, yaitu kemampuan sistem imun untuk mengenali antigen yang pernah masuk ke tubuh.<br />\nb. Kekebalan Seluler<br />\nKekebalan seluler melibatkan sel T yang bertugas menyerang sel-sel asing atau jaringan tubuh yang terinfeksi secara langsung. Ketika sel T pembunuh kontak dengan antigen pada permukaan sel asing, sel T pembunuh akan menyerang dan menghancurkannya dengan cara merusak membran sel asing. Apabila infeksi telah berhasil ditangani, sel T supresor akan menghentikan respons kekebalan dengan cara menghambat aktivitas sel T pembunuh dan membatasi produksi antibodi.</p>\n', 77),
(73, '<p>Penyakit yang disebabkan oleh patogen dapat dicegah dengan mekanisme kekebalan tubuh atau pertahanan tubuh yang terdapat dalam sistem imun. Mekanisme pertahanan ini dapat berjalan dengan baik karena kerja sama yang sangat teratur antara komponen-komponen yang terlibat di dalamnya. Namun, jika keseimbangan yang rumit ini terganggu dapat mengakibatkan beberapa kasus seperti alergi dan penyakit autoimunitas.<br />\nMenurut Dewi (2012), imunisasi merupakan bentuk intervensi kesehatan yang sangat efektif dalam menurunkan angka kematian bayi dan balita. Dengan imunisasi, berbagai penyakit seperti TBC, difteri, pertusis, tetanus, hepatitis B, poliomielitis, dan campak dapat dicegah. Imunisasi merupakan salah satu cara tubuh memperoleh kekebalan. Apa saja jenis-jenis kekebalan tubuh berdasarkan cara memperolehnya? Simaklah uraian berikut untuk mengetahui jawabannya.<br />\n1. Jenis-Jenis Kekebalan Tubuh<br />\nBerdasarkan cara memperolehnya, kekebalan tubuh digolongkan menjadi dua kelompok yaitu kekebalan aktif dan kekebalan pasif.<br />\na. Kekebalan Aktif<br />\nKekebalan aktif merupakan kekebalan yang dihasilkan oleh tubuh itu sendiri. Kekebalan ini dapat diperoleh secara alami dan secara buatan. Kekebalan aktif alami diperoleh setelah seseorang mengalami sakit akibat infeksi suatu kuman penyakit. Setelah sembuh dari sakit, orang tersebut akan menjadi kebal<br />\nterhadap penyakit tersebut. Sebagai contoh, orang yang pernah sakit campak tidak akan terkena penyakit tersebut untuk kedua kalinya. Adapun kekebalan aktif buatan diperoleh melalui imunisasi misalnya dengan pemberian vaksin (vaksinasi).<br />\nVaksin merupakan siapan antigen yang diberikan secara oral (melalui mulut) atau melalui suntikan untuk merangsang mekanisme pertahanan tubuh terhadap patogen. Vaksin dapat berupa suspense mikroorganisme yang telah dilemahkan atau dimatikan. Vaksin juga dapat berupa toksoid atau ekstrak antigen dari suatu patogen yang telah dilemahkan. Vaksin yang dimasukkan ke tubuh akan menstimulasi pembentukan antibodi untuk melawan antigen. Akibatnya, tubuh akan menjadi kebal terhadap penyakit jika suatu saat penyakit tersebut menyerang.<br />\nBerikut ini beberapa vaksin yang telah ditemukan oleh beberapa ilmuwan.<br />\n1) Vaksin cacar air, ditemukan oleh Edward Jenner (1796).<br />\n2) Vaksin rabies, ditemukan oleh Louis Pasteur (1885).<br />\n3) Vaksin polio, ditemukan oleh Jonas Salk (1954).<br />\n4) Vaksin oral, ditemukan oleh Albert Sabin (1992).<br />\nb. Kekebalan Pasif<br />\nKekebalan pasif merupakan kekebalan yang diperoleh setelah menerima antibodi dari luar. Kekebalan ini dapat diperoleh secara alami dan buatan. Kekebalan pasif alami dapat ditemukan pada bayi setelah menerima antibody dari ibunya melalui plasenta saat masih berada di dalam kandungan. Jenis kekebalan ini juga dapat diperoleh dengan pemberian air susu pertama (kolostrum) yang mengandung banyak antibodi.<br />\nSementara itu, kekebalan pasif buatan diperoleh dengan cara menyuntikkan antibodi yang diekstrak dari satu individu ke tubuh orang lain sebagai serum. Kekebalan pasif ini berlangsung singkat, tetapi berguna untuk penyembuhan secara cepat. Contoh pemberian serum antibisa ular kepada orang yang dipatuk ular berbisa.</p>\n', 78),
(74, '<p>2. Gangguan pada Sistem Pertahanan Tubuh<br />\nSistem pertahanan tubuh dapat mengalami gangguan mulai dari yang ringan seperti alergi hingga kasus yang serius seperti penyakit autoimunitas dan penyakit defisiensi kekebalan.<br />\nBeberapa jenis gangguan pada sistem pertahanan tubuh.<br />\na. Alergi<br />\nAlergi atau hipersensitivitas adalah suatu respons imun yang berlebihan terhadap suatu senyawa yang masuk ke tubuh. Senyawa yang dapat menimbulkan alergi disebut alergen. Alergen dapat berupa debu, serbuk sari, gigitan serangga, rambut kucing, dan jenis makanan tertentu misal udang.<br />\nProses terjadinya alergi diawali dengan masuknya alergen ke tubuh. Alergen tersebut akan merangsang sel-sel B plasma untuk menyekresikan antibodi IgE. Alergen yang masuk ke tubuh pertama kali tidak akan menimbulkan gejala alergi. Namun, IgE yang terbentuk akan berikatan dengan mastosit. Akibatnya, ketika alergen masuk ke tubuh untuk kedua kalinya, alergen akan terikat pada IgE yang telah berikatan dengan mastosit. Keadaan ini mengakibatkan mastosit melepaskan histamin yang berperan dalam proses pembesaran dan peningkatan permeabilitas pembuluh darah (inflamasi). Respons inflamasi ini mengakibatkan timbulnya gejala alergi, misal bersin, kulit terasa gatal, mata berair, hidung berlendir, dan kesulitan bernapas. Pemberian antihistamin dapat menghentikan gejala alergi.<br />\nb. Autoimunitas<br />\nAutoimunitas merupakan gangguan pada sistem pertahanan tubuh saat antibodi yang diproduksi justru menyerang sel-sel tubuh sendiri karena tidak mampu membedakan sel tubuh sendiri dengan sel asing. Autoimunitas dapat disebabkan oleh gagalnya proses pematangan sel T di kelenjar timus. Autoimunitas dapat mengakibatkan beberapa kelainan yaitu diabetes melitus, myasthenia gravis, addison&rsquo;s disease, lupus, dan radang sendi.<br />\nc. AIDS<br />\nAIDS (Acquired Immunodeficiency Syndrome) merupakan kumpulan berbagai penyakit yang disebabkan oleh melemahnya sistem kekebalan tubuh. Penyakit ini disebabkan oleh infeksi HIV (Human Immunodeficiency Virus). Virus tersebut menyerang sel T pembantu yang berfungsi menstimulasi pembentukan jenis sel T lainnya dan sel B plasma. Hal ini mengakibatkan kemampuan tubuh melawan kuman penyakit menjadi berkurang.<br />\nSel T pembantu menjadi target utama HIV karena pada permukaan selnya terdapat molekul CD4 sebagai reseptor. Infeksi dimulai ketika molekul glikoprotein (gp120) yang terdapat pada permukaan HIV menempel ke reseptor CD4 pada permukaan sel T pembantu. Virus tersebut kemudian masuk ke sel T pembantu secara endositosis dan memulai replikasi (memperbanyak diri). Selanjutnya, virus-virus baru keluar dari sel T yang terinfeksi secara eksositosis atau dengan cara melisiskan sel.<br />\nJumlah sel T pada orang normal sekitar 1.000 sel/mm3 darah, sedangkan pada penderita AIDS jumlah sel T-nya hanya sekitar 200 sel/mm3. Kondisi ini mengakibatkan penderita AIDS mudah terserang berbagai penyakit, misal TBC, meningitis, kanker darah, dan melemahnya ingatan sehingga dapat mengakibatkan kematian.</p>\n', 79);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

DROP TABLE IF EXISTS `module`;
CREATE TABLE `module` (
  `id` int(10) NOT NULL,
  `module_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_topic_id` int(10) NOT NULL,
  `number` int(3) NOT NULL,
  `module_level` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `module_desc`, `sub_topic_id`, `number`, `module_level`) VALUES
(60, 'Sel Saraf', 21, 1, '3'),
(61, 'Susunan Sistem Saraf Manusia', 21, 2, '3'),
(62, 'Terjadinya Gerak Biasa dan Gerak Refleks', 21, 3, '2'),
(63, 'Prinsip Penghantaran Impuls', 21, 4, '2'),
(64, 'Kelenjar Hipofisis', 22, 5, '3'),
(65, 'Mata', 23, 6, '2'),
(66, 'Telinga', 23, 7, '2'),
(67, 'Kulit', 23, 8, '1'),
(68, 'Hidung', 23, 9, '1'),
(69, 'Lidah', 23, 10, '1'),
(70, 'Gangguan dan Kelainan pada Sistem Koordinasi Manusia', 24, 11, '2'),
(71, 'Pengaruh Psikotropika terhadap Sistem Koordinasi Manusia', 24, 12, '2');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
CREATE TABLE `modules` (
  `id` int(10) NOT NULL,
  `module_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_topic_id` int(10) NOT NULL,
  `number` int(3) NOT NULL,
  `module_level` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `module_desc`, `sub_topic_id`, `number`, `module_level`) VALUES
(1, 'Konsep Sel', 1, 1, '2'),
(2, 'Komponen Kimiawi Penyusun Sel', 1, 2, '2'),
(3, 'Struktur Sel Prokariotik dan Eukariotik', 2, 3, '2'),
(4, 'Perbedaan Sel Hewan dengan Sel Tumbuhan', 2, 4, '1'),
(5, 'Mekanisme Transpor Melalui Membran', 3, 5, '2'),
(6, 'Sintesis Protein', 3, 6, '3'),
(7, 'Reproduksi Sel', 3, 7, '2'),
(14, 'Jaringan Meristematik', 4, 1, '2'),
(15, 'Jaringan Dewasa', 4, 2, '2'),
(16, 'Jaringan Penyusun Akar', 5, 3, '2'),
(17, 'Jaringan Penyusun Batang', 5, 4, '2'),
(18, 'Jaringan Penyusun Daun', 5, 5, '2'),
(19, 'Sifat Autonom dan Sifat Totipotensi', 6, 6, '2'),
(20, 'Jaringan Epitelium', 7, 1, '2'),
(21, 'Jaringan Pengikat', 7, 2, '2'),
(22, 'Jaringan Otot', 7, 3, '2'),
(23, 'Jaringan Saraf', 7, 4, '2'),
(24, 'Stem Cell', 8, 5, '2'),
(25, 'Transplantasi Organ', 8, 6, '2'),
(26, 'Fungsi Rangka', 9, 1, '1'),
(27, 'Jenis Tulang', 9, 2, '1'),
(28, 'Bentuk Tulang', 9, 3, '1'),
(29, 'Proses Pembentukan Tulang', 9, 4, '2'),
(30, 'Susunan Tulang dalam Tubuh', 9, 5, '1'),
(31, 'Hubungan Antartulang (Persendian/Artikulasi)', 9, 6, '2'),
(32, 'Macam-Macam Otot', 9, 7, '2'),
(33, 'Mekanisme Gerak Otot', 9, 8, '2'),
(34, 'Sifat Gerak Otot dan Jenis-Jenis Gerak', 9, 9, '2'),
(35, 'Transplantasi Sumsum Tulang', 10, 10, '2'),
(36, 'Penggantian Sendi', 10, 11, '2'),
(37, 'Penyembuhan Patah Tulang', 10, 12, '2'),
(38, 'Komponen Darah', 11, 1, '2'),
(39, 'Golongan Darah', 11, 2, '1'),
(40, 'Pembekuan Darah', 11, 3, '1'),
(41, 'Alat-Alat Peredaran Darah', 12, 4, '2'),
(42, 'Mekanisme Peredaran Darah', 12, 5, '2'),
(43, 'Kelainan dan Gangguan pada Darah, Jantung, dan Pembuluh Darah', 13, 6, '3'),
(44, 'Peranan Zat Makanan bagi Tubuh', 14, 1, '1'),
(45, 'Menu Makanan Bergizi Seimbang Berdasarkan Kebutuhan Energi', 14, 2, '1'),
(46, 'Sistem Pencernaan Manusia', 15, 3, '1'),
(47, 'Sistem Pencernaan Hewan Memamah Biak (Ruminansia)', 15, 4, '1'),
(48, 'Alat-Alat Pernapasan Manusia', 16, 1, '2'),
(49, 'Mekanisme Pernapasan Manusia', 16, 2, '2'),
(50, 'Volume Udara Pernapasan', 16, 3, '2'),
(51, 'Faktor-Faktor yang Memengaruhi Volume Pernapasan', 16, 4, '1'),
(52, 'Sistem Pernapasan pada Serangga', 17, 5, '2'),
(53, 'Sistem Pernapasan pada Burung', 17, 6, '2'),
(54, 'Pola Hidup Sehat', 18, 7, '1'),
(55, 'Ginjal', 19, 1, '3'),
(56, 'Hati', 19, 2, '3'),
(57, 'Kulit', 19, 3, '2'),
(58, 'Paru-Paru', 19, 4, '3'),
(59, 'Gangguan dan Penyakit pada Ginjal, Hati, Kulit', 20, 5, '2'),
(60, 'Sel Saraf', 21, 1, '3'),
(61, 'Susunan Sistem Saraf Manusia', 21, 2, '3'),
(62, 'Terjadinya Gerak Biasa dan Gerak Refleks', 21, 3, '2'),
(63, 'Prinsip Penghantaran Impuls', 21, 4, '2'),
(64, 'Kelenjar Hipofisis', 22, 5, '3'),
(65, 'Mata', 23, 6, '2'),
(66, 'Telinga', 23, 7, '2'),
(67, 'Kulit', 23, 8, '1'),
(68, 'Hidung', 23, 9, '1'),
(69, 'Lidah', 23, 10, '1'),
(70, 'Gangguan dan Kelainan pada Sistem Koordinasi Manusia', 24, 11, '2'),
(71, 'Pengaruh Psikotropika terhadap Sistem Koordinasi Manusia', 24, 12, '2'),
(72, 'Organ Reproduksi Pria', 25, 1, '2'),
(73, 'Organ Reproduksi Wanita', 25, 2, '2'),
(74, 'Organ Reproduksi Pria & Wanita', 26, 3, '2'),
(75, 'Penyakit dan Gangguan yang Berhubungan dengan Sistem Reproduksi', 27, 4, '3'),
(76, 'Jenis-jenis Pertahanan Tubuh', 28, 1, '2'),
(77, 'Respon Kekebalan Terhadap Antigen', 28, 2, '2'),
(78, 'Jenis-jenis Kekebalan Tubuh', 29, 3, '2'),
(79, 'Gangguan Pada Sistem Kekebalan Tubuh', 29, 4, '2');

-- --------------------------------------------------------

--
-- Table structure for table `module_learned`
--

DROP TABLE IF EXISTS `module_learned`;
CREATE TABLE `module_learned` (
  `id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_question`
--

DROP TABLE IF EXISTS `module_question`;
CREATE TABLE `module_question` (
  `id` int(10) NOT NULL,
  `module_id` int(10) NOT NULL,
  `question` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_question`
--

INSERT INTO `module_question` (`id`, `module_id`, `question`, `answer`) VALUES
(99, 60, 'Sel saraf (neuron) yang membentuk jaringan saraf mempunyai fungsi ...', 1),
(100, 60, 'Neurit bertugas sebagai ...', 5),
(101, 60, 'Tugas dendrit adalah ...', 12),
(102, 60, 'Neurit dan dendrtit bercabang-cabang, tempat pertemuan kedua ujung itu disebut ...', 15),
(103, 60, 'Sel saraf (neuron) terdiri atas ...', 17),
(104, 60, 'Bila tubuh menerima rangsang dari luar, maka rangsang tersebut diterima oleh urat saraf ... menuju ke otak', 22),
(105, 60, 'Saraf berdasarkan fungsinya dibedakan menjadi sensoris, motoris dan konektor. Berikut ini merupakan perntaraan yang benar adalah …', 25),
(106, 60, 'Saraf kita berfungsi sebagai ...', 29),
(107, 60, 'Burhan mengalami kecelakaan lalu lintas saat mengendarai motor. Saat dibawa ke rumah sakit, dokter yang merawat Burhan menjelaskan bahwa Burhan mengalami kerusakan otak yang mengakibatkan kelumpuhan dan kehilangan kesadaran. Akan tetapi, Burhan masih dapat bernapas dengan baik. Berdasarkan peristiwa tersebut, bagian otak Burhan yang tidak rusak terdapat pada...', 36),
(108, 60, 'Perhatikan bagian-bagian neuron berikut!\n1) Akson\n2) Dendrit\n3) Badan sel\n4) Ujung akson\nArah jalannya impuls dalam neuron secara berurutan ditunjukkan oleh nomor . . . .\n', 39),
(109, 61, 'Saraf pusat adalah saraf yang berfungsi sebagai ...', 41),
(110, 61, 'Sistem saraf pusat terdiri dari ...', 45),
(111, 61, 'Otak kita terdiri atas ...', 51),
(112, 61, 'Otak kecil bertugas sebagai ...', 55),
(113, 61, 'Otak besar bertugas sebagai ...', 59),
(114, 61, 'Yang berperan dalam pengaturan suhu tubuh, rasa lapar, dan haus adalah...', 62),
(115, 61, 'Gerakan kaki melangkah menuju ke suatu tempat merupakan contoh dari...', 65),
(116, 61, 'Saraf tepi bertugas sebagai ...', 72),
(117, 61, 'Saraf spinal berjumlah...', 76),
(118, 61, 'Fungsinya mengatur pernapasan dan denyut jantung, tekanan darah, dan suhu tubuh merupakan fungsi dari ...', 79),
(119, 61, 'Permukaan otak besar berwarna kelabu disebut ...', 84),
(120, 61, 'Pernyataan yang tepat mengenai sistem saraf tepi, yaitu ....', 86),
(121, 62, 'Gerak dapat dibedakan menjadi ... macam', 89),
(122, 62, 'Urutan gerak biasa/gerak sadar yang benar adalah ...', 94),
(123, 62, 'Uji refleks kerap kali dilakukan dengan cara memukulkan benda lunak secara perlahan ke bagian bawah tempurung lutut sehingga tungkai bawah penderita bergerak ke depan secara tidak sadar. Lengkung refleks yang menghasilkan gerakan tersebut memiliki jalur sebagai berikut ...', 100),
(124, 62, 'Saraf sensorik berfungsi meneruskan rangsang dari ...', 101),
(125, 62, 'Pada gerakan kedip mata, impuls secara berurutan yaitu...', 108),
(126, 62, 'Ketika Fina memasak air, tiba-tiba tangannya terkena cipratan air yang mendidih, kemudian Fina secara spontan menggerakkan tangannya untuk menghindar. Peristiwa tersebut disebut ...', 110),
(127, 62, 'Gerak yang tidak membutuhkan kerja sama dari kulit otak disebut gerak ...', 116),
(128, 63, 'Prinsip penghantaran impuls yaitu melalui...', 119),
(129, 63, 'Penghantaran impuls yang melalui neuron terjadi karena adanya perbedaan muatan listrik antara bagian luar dan bagian dalam membran serabut saraf. Ketika istirahat, bagian luar membran serabut saraf bermuatan listrik .... Sementara itu, bagian dalam membran serabut saraf bermuatan listrik ....', 122),
(130, 63, 'depolarisasi adalah keadaan dimana permukaan luar membran serabut saraf bermuatan .... dan permukaan dalamnya bermuatan ..... saat menerima rangsang berupa impuls', 125),
(131, 63, 'Kelenjar yang terbesar di dalam tubuh dan memiliki fungsi paling penting adalah ...', 130),
(132, 63, 'prinsip penghantaran impuls ada ....', 135),
(133, 63, 'Jika impuls telah sampai di membran prasinapsis, vesikel-vesikel akan menuju membran prasinapsis karena pengaruh .... yang masuk ke bonggol sinapsis.', 139),
(134, 63, 'Perjalanan impuls melintasi sinaps melibatkan zat yang dinamakan ...', 142),
(135, 64, 'Berikut ini yang termasuk kelenjar endokrin adalah...', 148),
(136, 64, 'Hormon berfungsi untuk mengatur...', 152),
(137, 64, 'Fungsi hormon somatotropin yaitu ...', 155),
(138, 64, 'Kelenjar pengendali disebut juga kelenjar…', 157),
(139, 64, 'Lobus anterior terletak di ...', 162),
(140, 64, 'Hipofisis pars intermedia berpengaruh dalam...', 165),
(141, 64, 'Hormon oksitosin adalah hormon yang dihasilkan kelenjar...', 172),
(142, 64, 'Hormon yang berperan dalam metabolisme karbohidrat adalah ....', 174),
(143, 64, 'Hubungan yang tepat antara hormon dan fungsinya adalah...', 179),
(144, 65, 'Mata merupakan indra ....', 182),
(145, 65, 'Alat-alat penyusun sistem indra manusia terdiri atas .....', 188),
(146, 65, 'Dibawah ini yang bukan bagian penyusun bola mata adalah..', 191),
(147, 65, 'Sifat bayangan yang jauh di retina adalah..', 193),
(148, 65, 'Yang tidak termasuk alat tambahan mata yaitu...', 200),
(149, 65, 'Otot bola mata tersusun dari ... pasang otot lurik', 203),
(150, 65, 'Menggerakkan bola mata mata adalah fungsi ...', 205),
(151, 65, 'Bagian bola mata yang berwarna bening dan dapat tembus cahaya adalah..', 210),
(152, 65, 'Merupakan jalan masuknya cahaya adalah fungsi ....', 216),
(153, 65, 'Di bawah ini mekanisme kerja indra penglihat yang benar adalah...', 217),
(154, 66, 'Telinga tersusun dari :\r\n(1) telinga bagian luar\r\n(2) telinga bagian tengah\r\n(3) telinga bagian dalam\r\nBagian-bagian penyusun telinga yang benar adalah...\r\n', 224),
(155, 66, 'Yang berfungsi menangkap getaran bunyi adalah...', 225),
(156, 66, 'Yang menghubungkan telinga tengah dengan rongga faring adalah ...', 230),
(157, 66, 'Penyusun alat keseimbangan pada telinga\r\n(1) Kanalis semisirkularis\r\n(2) Skala vestibuli\r\n(3) Utrikulus\r\n(4) Skala timpani\r\nPenyusun alat keseimbangan pada telinga yang benar adalah..\r\n', 233),
(158, 66, 'Telinga bagian dalam terdiri atas ... bagian', 239),
(159, 66, 'Yang menyalurkan getaran ke koklea adalah ...', 241),
(160, 66, 'Mekanisme kerja indra pendengar yang benar adalah ...', 245),
(161, 67, 'Pada kulit, reseptor yang peka terhadap rangsang fisik disebut...', 252),
(162, 67, 'Kulit sebagai indra peraba berdasarkan asal reseptor bertindak sebagai …', 253),
(163, 67, 'Kulit memiliki peranan sebagai alat eksresi dikarenakan …', 260),
(164, 67, 'Pada kulit, ujung saraf yang merasakan tekanan kuat disebut ...', 263),
(165, 67, 'Pada kulit, ujung saraf yang merasakan panas disebut ...', 266),
(166, 67, 'Pada kulit indra peraba perasa dingin disebut ...', 269),
(167, 67, 'Pada kulit, ujung saraf yang merasakan sentuhan disebut ...', 276),
(168, 68, 'Struktur bulu hidung sifatnya sangat halus yang fungsinya untuk menyaring udara yang masuk ke dalam hidung dinamakan …', 279),
(169, 68, 'Berfungsi mendeteksi rangsang zat kimia dalam bentuk gas di udara (kemoreseptor) adalah ...', 281),
(170, 68, 'Mekanisme kerja indra penciuman\r\n(1) Rangsang (bau)\r\n(2) Lubang hidung\r\n(3) Epitelium olfaktori\r\n(4) Mukosa olfaktori\r\n(5) Saraf olfaktori\r\n(6) Talamus\r\n(7) Hipotalamus\r\n(8) Otak\r\nUrutan yang benar mekanisme kerja indra penciuman adalah ...', 286),
(171, 68, 'Hidung merupakan indera pembau yang menerima rangsangan zat kimia yang bertindak sebagai ...', 291),
(172, 68, 'Jika mencium masakan yang sedap, air liur akan ikut terangsang keluar. Hal ini menunjukkan adanya hubungan antara indera ...', 294),
(173, 68, 'Selaput Lendir berfungsi untuk menghasilkan …', 299),
(174, 68, 'Dalam hidung, zat kimia yang terdapat dalam udara akan larut dalam ...', 301),
(175, 69, 'Lidah merupakan indra pengecap yang dapat merasakan ...', 308),
(176, 69, 'Cairan yang menutupi permukaan lidah, dan peka terhadap rasa adalah ...', 309),
(177, 69, 'Sebagai alat berbicara, membantu mengatur letak makanan ketika dikunyah,\r\nmembantu dalam proses menelan makanan, serta sebagai indra pengecap adalah fungsi dari ...', 314),
(178, 69, 'Mekanisme kerja indra pengecap di bawah ini yang benar adalah ...', 319),
(179, 69, 'Indera pengecap menerima rangsang berupa ...', 324),
(180, 69, 'Makanan yang dapat dirasakan bagian-bagian lidah pada ujung, pinggir(tepi) depan, dan pangkal berturut-turut adalah ...', 328),
(181, 69, 'Bagian lidah untuk mengecap rasa asam adalah ...', 331),
(182, 70, 'Yang bukan termasuk gangguan dan kelainan yang disebabkan sistem saraf adalah ...', 334),
(183, 70, 'Beberapa faktor yang memengaruhi sekresi hormon yang benar adalah ...', 340),
(184, 70, 'Penyakit diabetas merupakan penyakit apabila kekurangan hormon ...', 344),
(185, 70, 'Kadar gula darah tinggi, berat badan turun, mudah merasa haus, serta kulit dan mulut terasa kering adalah gejala ...', 346),
(186, 70, 'Suatu penyakit ketika lensa mata menjadi keruh dan berawan adalah ...', 352),
(187, 70, 'Peradangan kronis yang menyerang lapisan kulit sehingga membuat kulit memerah, terasa gatal, kering, dan kasar adalah penyakit ...', 353),
(188, 70, 'Penyakit pada indera pembau (hidung) yang menyebabkan kehilangan sensitivitas terhadap rasa bau adalah ...', 358),
(189, 70, 'Luka atau peradangan di bibir dan dalam mulut yang dapat menimbulkan rasa sakit dan tidak nyaman adalah penyakit ...', 363),
(190, 71, 'Penyalahgunaan narkoba dapat mengakibatkan ketergantungan. Gangguan fisiologi tubuh, bahkan kematian. Tetapi masih banyak orang yang menyalahgunakan narkoba karena berharap mendapatkan sensasi tertentu. Ganja misalnya, dapat memberikan efek …', 365),
(191, 71, 'Obat-obatan golongan stimulan dapat menimbulkan efek menjadi lebih aktif, tidak mengantuk, dan memberikan kondisi prima dengan mengaktifkan susunan saraf pusat dan meningkatkan kerja otak yaitu ...', 370),
(192, 71, 'Obat-obatan berikut sanggup mempengaruhi pikiran manusia, kecuali ….', 373),
(193, 71, 'Golongan psikotropika yang paling berbahaya karena menimbulkan efek yang sama seperti narkotika adalah ...', 379),
(194, 71, 'Seorang pengguna narkoba mempunyai tanda-tanda sebagai berikut.\r\n(1) Sulit mengantuk\r\n(2) Denyut jantung cepat\r\n(3) Selalu berhalusinasi\r\n(4) Percaya diri\r\nCiri fisik yang ditimbulkan pengguna ganja ditunjukkan oleh nomor ....\r\n', 381),
(195, 71, 'Golongan ini dapat menghilangkan rasa nyeri dengan cara menekan bagian otak yang mengatur rasa nyeri adalah ...', 388),
(196, 71, 'Komplikasi medis pada suasana saraf yang diakibatkan dari penyalahgunaan narkoba adalah …', 391);

-- --------------------------------------------------------

--
-- Table structure for table `module_question_choice`
--

DROP TABLE IF EXISTS `module_question_choice`;
CREATE TABLE `module_question_choice` (
  `id` int(10) NOT NULL,
  `answer_desc` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_question_choice`
--

INSERT INTO `module_question_choice` (`id`, `answer_desc`, `question_id`) VALUES
(1, 'Menerima dan meneruskan suatu rangsang', 99),
(2, 'Menerima dan mengatur pekerjaan (koordinator) alat...', 99),
(3, 'Pengatur pekerjaan (koordinator) alat tubuh', 99),
(4, 'Alat indra ke otak', 99),
(5, 'Meneruskan impuls dari badan sel saraf ke sel sara...', 100),
(6, 'Pembawa rangsang ke badan neuron', 100),
(7, 'Pengatur pekerjaan (koordinator) alat tubuh', 100),
(8, 'Menerima suatu rangsang', 100),
(9, 'Penghantar rangsang dari tubuh neuron', 101),
(10, 'Meneruskan suatu rangsang', 101),
(11, 'Menerima suatu rangsang', 101),
(12, 'Pembawa rangsang ke badan neuron', 101),
(13, 'Neurilemma', 102),
(14, 'Badan sel', 102),
(15, 'Sinapsis', 102),
(16, 'Mielin', 102),
(17, 'Badan sel, benang akson/ neurit, dan dendrit', 103),
(18, 'Sinapsis, neurelimma, dendrit', 103),
(19, 'Sinapsis, badan sel, neurit', 103),
(20, 'Badan sel, neurilemma, mielin', 103),
(21, 'Motorik', 104),
(22, 'Sensorik', 104),
(23, 'Simpatik', 104),
(24, 'Parasimpatik', 104),
(25, 'Motoris membawa impuls dari saraf pusat ke efektor', 105),
(26, 'Konektor membawa impuls dari reseptor ke efektor', 105),
(27, 'Motoris membawa impuls dari reseptor ke saraf pusa...', 105),
(28, 'Sensoris membawa impuls dari saraf pusat ke efekto...', 105),
(29, 'Pengatur pekerjaan (koordinator) alat tubuh dan pe...', 106),
(30, 'Menerima suatu rangsang', 106),
(31, 'Meneruskan suatu rangsang', 106),
(32, 'Alat indra ke otak', 106),
(33, 'serebrum', 107),
(34, 'serebelum', 107),
(35, 'daerah motorik', 107),
(36, 'medula oblongata', 107),
(37, '1) → 2) → 3) → 4)', 108),
(38, '2) → 1) → 3) → 4)', 108),
(39, '2) → 3) → 1) → 4)', 108),
(40, '3) → 2) → 1) → 4)', 108),
(41, 'Pusat koordinasi', 109),
(42, 'Menerima suatu rangsang', 109),
(43, 'Meneruskan suatu rangsang', 109),
(44, 'Mengolah rangsang', 109),
(45, 'Otak dan sumsum tulang belakang', 110),
(46, 'Saraf simpatik dan saraf parasimpatetik', 110),
(47, 'Otak dan saraf tepi', 110),
(48, '12 pasang saraf kranial dan 31 pasang saraf spinal', 110),
(49, 'Otak besar, otak kecil tulang', 111),
(50, 'Tulang otak besar, sumsum tulang', 111),
(51, 'Otak besar, otak kecil, sumsum lanjutan', 111),
(52, 'Otak besar, sumsum belakang, otak kecil', 111),
(53, 'Pusat ingatan, kesadaran, dan kemampuan', 112),
(54, 'Pusat koordinasi,', 112),
(55, 'Pusat keseimbangan, koordinasi gerak, penghalusan ...', 112),
(56, 'Mengatur pernapasan', 112),
(57, 'Pusat keseimbangan dan koordinasi', 113),
(58, 'Mengatur pernapasan', 113),
(59, 'Pusat ingatan, kesadaran, dan kemampuan', 113),
(60, 'Pusat keseimbangan, dan mengatur pernafasan', 113),
(61, 'Talamus', 114),
(62, 'Hipotalamus', 114),
(63, 'Medula Oblongata', 114),
(64, 'Otak Besar', 114),
(65, 'Saraf Somatik', 115),
(66, 'Saraf Autonom', 115),
(67, 'Lobus Frontalis', 115),
(68, 'Lobus Parietalis', 115),
(69, 'Penerima rangsang', 116),
(70, 'Pusat ingatan', 116),
(71, 'Menghantarkan rangsang', 116),
(72, 'Mengantarkan rangsangan rangsangan ke susunan sara...', 116),
(73, '28 pasang', 117),
(74, '29 pasang', 117),
(75, '30 pasang', 117),
(76, '31 pasang', 117),
(77, 'Otak besar', 118),
(78, 'Otak kecil', 118),
(79, 'Sumsum lanjutan', 118),
(80, 'Sumsum tulang belakang', 118),
(81, 'Malpigi', 119),
(82, 'Kloaka', 119),
(83, 'Jembatan farol', 119),
(84, 'Korteks', 119),
(85, 'terletak di otak dan sumsum tulang belakang', 120),
(86, 'mengandung sel saraf yang merupakan perpanjangan d...', 120),
(87, 'mengandung interneuron dari sistem saraf pusat', 120),
(88, 'merupakan bagian dari sumsum lanjutan', 120),
(89, '2', 121),
(90, '3', 121),
(91, '4', 121),
(92, '5', 121),
(93, 'Rangsang - urat saraf sensorik - neuron perantara - urat saraf motorik - gerakan', 122),
(94, 'Rangsang - urat saraf sensorik - otak - urat saraf motorik - gerakan', 122),
(95, 'Rangsang - urat saraf sensorik - aurat saraf motorik - gerakan', 122),
(96, 'Rangsang - otak - urat saraf motorik - gerakan', 122),
(97, 'Lutut - saraf sensorik - saraf konektor - saraf motorik - kaki', 123),
(98, 'Lutut - saraf motorik - sumsum tulang belakang - saraf sensorik - kaki', 123),
(99, 'Lutut - saraf sensorik - otak - saraf motorik - kaki', 123),
(100, 'Lutut - saraf sensorik - sumsum tulang belakang - saraf motorik - kaki', 123),
(101, 'Alat indra ke otak', 124),
(102, 'Badan sel saraf ke luar', 124),
(103, 'Dari otak ke serabut otot', 124),
(104, 'Sumsum tulang belakang ke otot', 124),
(105, 'Reseptor - saraf motor - otak - saraf sensori - efektor', 125),
(106, 'Reseptor - saraf sensori - sumsum lanjutan - saraf motor - efektor', 125),
(107, 'Reseptor - saraf sensori - sumsum tulang belakang - saraf motor - efektor', 125),
(108, 'Reseptor - saraf sensori - otak - saraf motor - efektor', 125),
(109, 'Gerak sadar', 126),
(110, 'Gerak refleks', 126),
(111, 'Gerak tidak biasa', 126),
(112, 'Gerak setengah sadar', 126),
(113, 'Sadar', 127),
(114, 'Sensorik', 127),
(115, 'Otomatis', 127),
(116, 'Refleks', 127),
(117, 'neuron dan neurit', 128),
(118, 'sinapsis', 128),
(119, 'neuron dan sinapsis', 128),
(120, 'neurit', 128),
(121, 'positif, positif', 129),
(122, 'positif, negatif', 129),
(123, 'negatif, positif', 129),
(124, 'negatif, negatif', 129),
(125, 'negatif dan positif', 130),
(126, 'positif dan negatif', 130),
(127, 'positif dan positif', 130),
(128, 'negatif dan negatif', 130),
(129, 'hipofisis', 131),
(130, 'tiroid', 131),
(131, 'paratiroid', 131),
(132, 'adrenalin', 131),
(133, '4', 132),
(134, '3', 132),
(135, '2', 132),
(136, '1', 132),
(137, 'CO2', 133),
(138, 'O2', 133),
(139, 'Ca2+', 133),
(140, 'Ca', 133),
(141, 'Ganglion', 134),
(142, 'Neurotransmitter', 134),
(143, 'Akson', 134),
(144, 'Neurolema', 134),
(145, 'tiroid', 135),
(146, 'paratiroid', 135),
(147, 'adrenal', 135),
(148, 'benar semua', 135),
(149, 'homeostasis dan pertumbuhan', 136),
(150, 'reproduksi dan metabolisme', 136),
(151, 'tingkah laku', 136),
(152, 'semua benar', 136),
(153, 'Mencegah pengeroposan tulang dan menurunkan kadar ...', 137),
(154, 'Meningkatkan metabolisme energi', 137),
(155, 'Merangsang sintesis protein dan metabolisme lemak', 137),
(156, 'Mengatur hormon tiroksin dalam darah', 137),
(157, 'Kelenjar hipofisis', 138),
(158, 'Kelenjar paratiroid', 138),
(159, 'Kelenjar tiroid', 138),
(160, 'Kelenjar adrenal', 138),
(161, 'Otak tengah', 139),
(162, 'Otak besar', 139),
(163, 'Otak kanan', 139),
(164, 'Otak kiri', 139),
(165, 'Meningkatkan pigmentasi kulit', 140),
(166, 'Merangsang sintesis protein', 140),
(167, 'Mengatur pertumbuhan kelenjar tiroid', 140),
(168, 'Merangsang terjadinya sp3rm4togenesis', 140),
(169, 'Anterior', 141),
(170, 'Intermedia', 141),
(171, 'tiroid', 141),
(172, 'Posterior', 141),
(173, 'GH (Growth Hormone)', 142),
(174, 'ACTH (Adenocorticotropic Hormone)', 142),
(175, 'LH (Luteinizing Hormone)', 142),
(176, 'ADH (Antidiuretic Hormone)/vasopresin', 142),
(177, 'Parathormon : Memengaruhi proses metabolisme', 143),
(178, 'Tiroksin : Mengatur keseimbangan kalsium', 143),
(179, 'Oksitosin : Merangsang kontraksi otot uterus saat ...', 143),
(180, 'Prolaktin : Memengaruhi kerja kelenjar anak ginjal', 143),
(181, 'pendengaran', 144),
(182, 'penglihatan', 144),
(183, 'perasa', 144),
(184, 'penciuman', 144),
(185, 'mata, telinga, kulit', 145),
(186, 'mata, hidung, dan lidah', 145),
(187, 'mata, telinga, dan lidah', 145),
(188, 'semua benar', 145),
(189, 'Lensa', 146),
(190, 'Pupil', 146),
(191, 'Tarsus', 146),
(192, 'Selaput jala', 146),
(193, 'Nyata, terbalik, diperkecil', 147),
(194, 'Nyata, tegak, diperbesar', 147),
(195, 'Maya, tegak, diperkecil', 147),
(196, 'Maya, terbalik, diperbesar', 147),
(197, 'alis mata', 148),
(198, 'kelopak mata', 148),
(199, 'bulu mata', 148),
(200, 'kantung mata', 148),
(201, '1', 149),
(202, '2', 149),
(203, '3', 149),
(204, '4', 149),
(205, 'Otot bola mata', 150),
(206, 'Bola mata', 150),
(207, 'Alat tambahan mata', 150),
(208, 'Saraf optik', 150),
(209, 'Konjungtiva', 151),
(210, 'Kornea', 151),
(211, 'Iris', 151),
(212, 'Pupil', 151),
(213, 'Konjungtiva', 152),
(214, 'Kornea', 152),
(215, 'Iris', 152),
(216, 'Pupil', 152),
(217, 'Cahaya → aqueous humour → pupil → lensa → vitreous...', 153),
(218, 'Cahaya → aqueous humour → lensa → pupil → vitreous...', 153),
(219, 'Cahaya → aqueous humour → pupil → lensa → vitreous...', 153),
(220, 'Cahaya → pupil → aqueous humour → lensa → vitreous...', 153),
(221, '1 dan 2', 154),
(222, '1 dan 3', 154),
(223, '2 dan 3', 154),
(224, 'semua benar', 154),
(225, 'Telinga bagian luar', 155),
(226, 'Telinga bagian tengah', 155),
(227, 'Telinga bagian dalam', 155),
(228, 'Semua benar', 155),
(229, 'Tingkap jorong', 156),
(230, 'Saluran eustachius', 156),
(231, 'Koklea', 156),
(232, 'Rumah siput', 156),
(233, '1 dan 3', 157),
(234, '1 dan 4', 157),
(235, '2 dan 3', 157),
(236, '2 dan 4', 157),
(237, '1', 158),
(238, '2', 158),
(239, '3', 158),
(240, '4', 158),
(241, 'Tingkap jorong', 159),
(242, 'Saluran eustachius', 159),
(243, 'Koklea', 159),
(244, 'Rumah siput', 159),
(245, 'Getaran suara → daun telinga → saluran telinga → g...', 160),
(246, 'Getaran suara → daun telinga → saluran telinga → g...', 160),
(247, 'Getaran suara → daun telinga → saluran telinga → r...', 160),
(248, 'Getaran suara → daun telinga → saluran telinga → g...', 160),
(249, 'Tangoreseptor', 161),
(250, 'Fotoreseptor', 161),
(251, 'Kemoreseptor', 161),
(252, 'Mekanoreseptor', 161),
(253, 'Tangoreseptor', 162),
(254, 'Fotoreseptor', 162),
(255, 'Kemoreseptor', 162),
(256, 'Mekanoreseptor', 162),
(257, 'Memiliki kelenjar keringat', 163),
(258, 'Memproteksi tubuh dari cahaya matahari', 163),
(259, 'Mempunyai ujung saraf reseptor', 163),
(260, 'Mempunyai kelenjar keringat', 163),
(261, 'Krausse', 164),
(262, 'Ruffini', 164),
(263, 'Paccini', 164),
(264, 'Meissner', 164),
(265, 'Krausse', 165),
(266, 'Ruffini', 165),
(267, 'Paccini', 165),
(268, 'Meissner', 165),
(269, 'Krausse', 166),
(270, 'Ruffini', 166),
(271, 'Paccini', 166),
(272, 'Meissner', 166),
(273, 'Krausse', 167),
(274, 'Ruffini', 167),
(275, 'Paccini', 167),
(276, 'Meissner', 167),
(277, 'Sinus', 168),
(278, 'Saraf Olfaktori', 168),
(279, 'Silia', 168),
(280, 'Selaput Lendir', 168),
(281, 'Serabut-serabut olfaktori', 169),
(282, 'Lubang hidung', 169),
(283, 'Talamus', 169),
(284, 'Hipotalamus', 169),
(285, '1 - 3 - 2 - 7 - 5 - 6 - 8 - 4', 170),
(286, '1 - 2 - 3 - 4 - 5 - 6 - 7 - 8', 170),
(287, '1 - 7 - 8 - 4 - 6 - 3 - 2 - 5', 170),
(288, '1 - 6 - 3 - 2 - 8 - 7 - 5 - 4', 170),
(289, 'Tangoreseptor', 171),
(290, 'Fotoreseptor', 171),
(291, 'Kemoreseptor', 171),
(292, 'Mekanoreseptor', 171),
(293, 'Perasa dan peraba', 172),
(294, 'Pembau dan pengecap', 172),
(295, 'Perasa dan pengecap', 172),
(296, 'Pembau dan penglihat', 172),
(297, 'sinus', 173),
(298, 'impuls', 173),
(299, 'mukus', 173),
(300, 'septum', 173),
(301, 'Selaput lendir', 174),
(302, 'Bulu cambuk', 174),
(303, 'Rambut getar', 174),
(304, 'Bulu hidung', 174),
(305, 'pahit dan asam', 175),
(306, 'asam dan asin', 175),
(307, 'asin dan manis', 175),
(308, 'semua benar', 175),
(309, 'Papila', 176),
(310, 'Talamus', 176),
(311, 'Gustastori', 176),
(312, 'Hipotalamus', 176),
(313, 'Tenggorokan', 177),
(314, 'Lidah', 177),
(315, 'Mulut', 177),
(316, 'Gigi', 177),
(317, 'Makanan/larutan berasa → saraf gustatori → papila ...', 178),
(318, 'Makanan/larutan berasa → papila lidah → saraf gust...', 178),
(319, 'Makanan/larutan berasa → papila lidah → saraf gust...', 178),
(320, 'Makanan/larutan berasa → papila lidah → medula obl...', 178),
(321, 'Perubahan suhu lingkungan', 179),
(322, 'Zat kimia dalam bentuk padat', 179),
(323, 'Zat kimia dalam bentuk gas', 179),
(324, 'Zat kimia dalam bentuk larutan', 179),
(325, 'pahit, asam, manis', 180),
(326, 'asam, manis, pahit', 180),
(327, 'manis, asin, asam', 180),
(328, 'manis, asin, pahit', 180),
(329, 'Pangkal lidah', 181),
(330, 'Ujung lidah', 181),
(331, 'Pinggir lidah', 181),
(332, 'Tengah lidah', 181),
(333, 'Meningitis', 182),
(334, 'Hepatitis', 182),
(335, 'Gegar otak', 182),
(336, 'Epilepsi', 182),
(337, 'stres', 183),
(338, 'infeksi', 183),
(339, 'penuaan dan genetik', 183),
(340, 'semua benar', 183),
(341, 'Tiroksin', 184),
(342, 'Kortison', 184),
(343, 'Dioksikortison', 184),
(344, 'Insulin', 184),
(345, 'Asma', 185),
(346, 'Diabetes Melitus', 185),
(347, 'Kanker', 185),
(348, 'Tipes', 185),
(349, 'Miopi', 186),
(350, 'Buta warna', 186),
(351, 'Rabun senja', 186),
(352, 'Katarak', 186),
(353, 'Eksim', 187),
(354, 'Dermatitis', 187),
(355, 'Panu', 187),
(356, 'Kudis', 187),
(357, 'Sinus', 188),
(358, 'Anosmia', 188),
(359, 'Asma', 188),
(360, 'Pilek', 188),
(361, 'Kanker lidah', 189),
(362, 'Glossoptosis', 189),
(363, 'Sariawan', 189),
(364, 'Atrophic glossitis', 189),
(365, 'Menahan rasa sakit', 190),
(366, 'Meningkatkan semangat', 190),
(367, 'Meningkatkan daya khayal', 190),
(368, 'Menekan rasa lapar', 190),
(369, 'Ganja', 191),
(370, 'Kokain', 191),
(371, 'Mariyuana', 191),
(372, 'Heroin', 191),
(373, 'Antibiotik', 192),
(374, 'Stimulan', 192),
(375, 'Halusinogen', 192),
(376, 'Depresan', 192),
(377, 'Antibiotik', 193),
(378, 'Stimulan', 193),
(379, 'Halusinogen', 193),
(380, 'Depresan', 193),
(381, '(1) dan (2)', 194),
(382, '(1) dan (3)', 194),
(383, '(1) dan (4)', 194),
(384, '(2) dan (3)', 194),
(385, 'Stimulan', 195),
(386, 'Halusinogen', 195),
(387, 'Depresan', 195),
(388, 'Painkiller', 195),
(389, 'Gangguan kecerdasaan', 196),
(390, 'Gangguan pengelihatan', 196),
(391, 'Gangguan daya ingat', 196),
(392, 'Peradangan otot jantung', 196);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nis` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `user_id`, `nis`, `student_name`, `student_address`, `phone_number`, `class_id`) VALUES
(1, 94, '2022040001', 'Murid 1', 'Alamat Murid 1', '081234010001', 2),
(2, 95, '2022040002', 'Murid 2', 'Alamat Murid 2', '081234010002', 5),
(3, 96, '2022040003', 'Murid 3', 'Alamat Murid 3', '081234010003', 2),
(4, 97, '2022040004', 'Murid 4', 'Alamat Murid 4', '081234010004', 5),
(5, 98, '2022040005', 'Murid 5', 'Alamat Murid 5', '081234010005', 1),
(6, 99, '2022040006', 'Murid 6', 'Alamat Murid 6', '081234010006', 3),
(7, 100, '2022040007', 'Murid 7', 'Alamat Murid 7', '081234010007', 5),
(8, 101, '2022040008', 'Murid 8', 'Alamat Murid 8', '081234010008', 5),
(9, 102, '2022040009', 'Murid 9', 'Alamat Murid 9', '081234010009', 1),
(10, 103, '2022040010', 'Murid 10', 'Alamat Murid 10', '081234010010', 4),
(11, 104, '2022040011', 'Murid 11', 'Alamat Murid 11', '081234010011', 2),
(12, 105, '2022040012', 'Murid 12', 'Alamat Murid 12', '081234010012', 3),
(13, 106, '2022040013', 'Murid 13', 'Alamat Murid 13', '081234010013', 4),
(14, 107, '2022040014', 'Murid 14', 'Alamat Murid 14', '081234010014', 4),
(15, 108, '2022040015', 'Murid 15', 'Alamat Murid 15', '081234010015', 2),
(16, 109, '2022040016', 'Murid 16', 'Alamat Murid 16', '081234010016', 1),
(17, 110, '2022040017', 'Murid 17', 'Alamat Murid 17', '081234010017', 1),
(18, 111, '2022040018', 'Murid 18', 'Alamat Murid 18', '081234010018', 2),
(19, 112, '2022040019', 'Murid 19', 'Alamat Murid 19', '081234010019', 5),
(20, 113, '2022040020', 'Murid 20', 'Alamat Murid 20', '081234010020', 5),
(21, 114, '2022040021', 'Murid 21', 'Alamat Murid 21', '081234010021', 1),
(22, 115, '2022040022', 'Murid 22', 'Alamat Murid 22', '081234010022', 5),
(23, 116, '2022040023', 'Murid 23', 'Alamat Murid 23', '081234010023', 3),
(24, 117, '2022040024', 'Murid 24', 'Alamat Murid 24', '081234010024', 5),
(25, 118, '2022040025', 'Murid 25', 'Alamat Murid 25', '081234010025', 3),
(26, 119, '2022040026', 'Murid 26', 'Alamat Murid 26', '081234010026', 4),
(27, 120, '2022040027', 'Murid 27', 'Alamat Murid 27', '081234010027', 3),
(28, 121, '2022040028', 'Murid 28', 'Alamat Murid 28', '081234010028', 5),
(29, 122, '2022040029', 'Murid 29', 'Alamat Murid 29', '081234010029', 3),
(30, 123, '2022040030', 'Murid 30', 'Alamat Murid 30', '081234010030', 1),
(31, 124, '2022040031', 'Murid 31', 'Alamat Murid 31', '081234010031', 2),
(32, 125, '2022040032', 'Murid 32', 'Alamat Murid 32', '081234010032', 1),
(33, 126, '2022040033', 'Murid 33', 'Alamat Murid 33', '081234010033', 1),
(34, 127, '2022040034', 'Murid 34', 'Alamat Murid 34', '081234010034', 5),
(35, 128, '2022040035', 'Murid 35', 'Alamat Murid 35', '081234010035', 4),
(36, 129, '2022040036', 'Murid 36', 'Alamat Murid 36', '081234010036', 3),
(37, 130, '2022040037', 'Murid 37', 'Alamat Murid 37', '081234010037', 4),
(38, 131, '2022040038', 'Murid 38', 'Alamat Murid 38', '081234010038', 3),
(39, 132, '2022040039', 'Murid 39', 'Alamat Murid 39', '081234010039', 5),
(40, 133, '2022040040', 'Murid 40', 'Alamat Murid 40', '081234010040', 4),
(41, 134, '2022040041', 'Murid 41', 'Alamat Murid 41', '081234010041', 1),
(42, 135, '2022040042', 'Murid 42', 'Alamat Murid 42', '081234010042', 2),
(43, 136, '2022040043', 'Murid 43', 'Alamat Murid 43', '081234010043', 5),
(44, 137, '2022040044', 'Murid 44', 'Alamat Murid 44', '081234010044', 2),
(45, 138, '2022040045', 'Murid 45', 'Alamat Murid 45', '081234010045', 3),
(46, 139, '2022040046', 'Murid 46', 'Alamat Murid 46', '081234010046', 1),
(47, 140, '2022040047', 'Murid 47', 'Alamat Murid 47', '081234010047', 4),
(48, 141, '2022040048', 'Murid 48', 'Alamat Murid 48', '081234010048', 4),
(49, 142, '2022040049', 'Murid 49', 'Alamat Murid 49', '081234010049', 3),
(50, 143, '2022040050', 'Murid 50', 'Alamat Murid 50', '081234010050', 4),
(51, 144, '2022040051', 'Murid 51', 'Alamat Murid 51', '081234010051', 4),
(52, 145, '2022040052', 'Murid 52', 'Alamat Murid 52', '081234010052', 1),
(53, 146, '2022040053', 'Murid 53', 'Alamat Murid 53', '081234010053', 4),
(54, 147, '2022040054', 'Murid 54', 'Alamat Murid 54', '081234010054', 2),
(55, 148, '2022040055', 'Murid 55', 'Alamat Murid 55', '081234010055', 2),
(56, 149, '2022040056', 'Murid 56', 'Alamat Murid 56', '081234010056', 1),
(57, 150, '2022040057', 'Murid 57', 'Alamat Murid 57', '081234010057', 3),
(58, 151, '2022040058', 'Murid 58', 'Alamat Murid 58', '081234010058', 3),
(59, 152, '2022040059', 'Murid 59', 'Alamat Murid 59', '081234010059', 4),
(60, 153, '2022040060', 'Murid 60', 'Alamat Murid 60', '081234010060', 1),
(61, 154, '2022040061', 'Murid 61', 'Alamat Murid 61', '081234010061', 1),
(62, 155, '2022040062', 'Murid 62', 'Alamat Murid 62', '081234010062', 4),
(63, 156, '2022040063', 'Murid 63', 'Alamat Murid 63', '081234010063', 3),
(64, 157, '2022040064', 'Murid 64', 'Alamat Murid 64', '081234010064', 5),
(65, 158, '2022040065', 'Murid 65', 'Alamat Murid 65', '081234010065', 1),
(66, 159, '2022040066', 'Murid 66', 'Alamat Murid 66', '081234010066', 1),
(67, 160, '2022040067', 'Murid 67', 'Alamat Murid 67', '081234010067', 4),
(68, 161, '2022040068', 'Murid 68', 'Alamat Murid 68', '081234010068', 1),
(69, 162, '2022040069', 'Murid 69', 'Alamat Murid 69', '081234010069', 5),
(70, 163, '2022040070', 'Murid 70', 'Alamat Murid 70', '081234010070', 2),
(71, 164, '2022040071', 'Murid 71', 'Alamat Murid 71', '081234010071', 1),
(72, 165, '2022040072', 'Murid 72', 'Alamat Murid 72', '081234010072', 4),
(73, 166, '2022040073', 'Murid 73', 'Alamat Murid 73', '081234010073', 3),
(74, 167, '2022040074', 'Murid 74', 'Alamat Murid 74', '081234010074', 4),
(75, 168, '2022040075', 'Murid 75', 'Alamat Murid 75', '081234010075', 4),
(76, 169, '2022040076', 'Murid 76', 'Alamat Murid 76', '081234010076', 4),
(77, 170, '2022040077', 'Murid 77', 'Alamat Murid 77', '081234010077', 4),
(78, 171, '2022040078', 'Murid 78', 'Alamat Murid 78', '081234010078', 2),
(79, 172, '2022040079', 'Murid 79', 'Alamat Murid 79', '081234010079', 2),
(80, 173, '2022040080', 'Murid 80', 'Alamat Murid 80', '081234010080', 4),
(81, 174, '2022040081', 'Murid 81', 'Alamat Murid 81', '081234010081', 3),
(82, 175, '2022040082', 'Murid 82', 'Alamat Murid 82', '081234010082', 1),
(83, 176, '2022040083', 'Murid 83', 'Alamat Murid 83', '081234010083', 4),
(84, 177, '2022040084', 'Murid 84', 'Alamat Murid 84', '081234010084', 2),
(85, 178, '2022040085', 'Murid 85', 'Alamat Murid 85', '081234010085', 2),
(86, 179, '2022040086', 'Murid 86', 'Alamat Murid 86', '081234010086', 2),
(87, 180, '2022040087', 'Murid 87', 'Alamat Murid 87', '081234010087', 4),
(88, 181, '2022040088', 'Murid 88', 'Alamat Murid 88', '081234010088', 5),
(89, 182, '2022040089', 'Murid 89', 'Alamat Murid 89', '081234010089', 5),
(90, 183, '2022040090', 'Murid 90', 'Alamat Murid 90', '081234010090', 1),
(91, 184, '2022040091', 'Murid 91', 'Alamat Murid 91', '081234010091', 2),
(92, 185, '2022040092', 'Murid 92', 'Alamat Murid 92', '081234010092', 1),
(93, 186, '2022040093', 'Murid 93', 'Alamat Murid 93', '081234010093', 3),
(94, 187, '2022040094', 'Murid 94', 'Alamat Murid 94', '081234010094', 4),
(95, 188, '2022040095', 'Murid 95', 'Alamat Murid 95', '081234010095', 2),
(96, 189, '2022040096', 'Murid 96', 'Alamat Murid 96', '081234010096', 1),
(97, 190, '2022040097', 'Murid 97', 'Alamat Murid 97', '081234010097', 4),
(98, 191, '2022040098', 'Murid 98', 'Alamat Murid 98', '081234010098', 4),
(99, 192, '2022040099', 'Murid 99', 'Alamat Murid 99', '081234010099', 3),
(100, 193, '2022040100', 'Murid 100', 'Alamat Murid 100', '081234010100', 3),
(101, 194, '2022040101', 'Murid 101', 'Alamat Murid 101', '081234010101', 5),
(102, 195, '2022040102', 'Murid 102', 'Alamat Murid 102', '081234010102', 5),
(103, 196, '2022040103', 'Murid 103', 'Alamat Murid 103', '081234010103', 4),
(104, 197, '2022040104', 'Murid 104', 'Alamat Murid 104', '081234010104', 2),
(105, 198, '2022040105', 'Murid 105', 'Alamat Murid 105', '081234010105', 2),
(106, 199, '2022040106', 'Murid 106', 'Alamat Murid 106', '081234010106', 3),
(107, 200, '2022040107', 'Murid 107', 'Alamat Murid 107', '081234010107', 2),
(108, 201, '2022040108', 'Murid 108', 'Alamat Murid 108', '081234010108', 4),
(109, 202, '2022040109', 'Murid 109', 'Alamat Murid 109', '081234010109', 1),
(110, 203, '2022040110', 'Murid 110', 'Alamat Murid 110', '081234010110', 5),
(111, 204, '2022040111', 'Murid 111', 'Alamat Murid 111', '081234010111', 3),
(112, 205, '2022040112', 'Murid 112', 'Alamat Murid 112', '081234010112', 1),
(113, 206, '2022040113', 'Murid 113', 'Alamat Murid 113', '081234010113', 2),
(114, 207, '2022040114', 'Murid 114', 'Alamat Murid 114', '081234010114', 5),
(115, 208, '2022040115', 'Murid 115', 'Alamat Murid 115', '081234010115', 1),
(116, 209, '2022040116', 'Murid 116', 'Alamat Murid 116', '081234010116', 4),
(117, 210, '2022040117', 'Murid 117', 'Alamat Murid 117', '081234010117', 4),
(118, 211, '2022040118', 'Murid 118', 'Alamat Murid 118', '081234010118', 1),
(119, 212, '2022040119', 'Murid 119', 'Alamat Murid 119', '081234010119', 5),
(120, 213, '2022040120', 'Murid 120', 'Alamat Murid 120', '081234010120', 4),
(121, 214, '2022040121', 'Murid 121', 'Alamat Murid 121', '081234010121', 2),
(122, 215, '2022040122', 'Murid 122', 'Alamat Murid 122', '081234010122', 3),
(123, 216, '2022040123', 'Murid 123', 'Alamat Murid 123', '081234010123', 5),
(124, 217, '2022040124', 'Murid 124', 'Alamat Murid 124', '081234010124', 5),
(125, 218, '2022040125', 'Murid 125', 'Alamat Murid 125', '081234010125', 5),
(126, 219, '2022040126', 'Murid 126', 'Alamat Murid 126', '081234010126', 4),
(127, 220, '2022040127', 'Murid 127', 'Alamat Murid 127', '081234010127', 2),
(128, 221, '2022040128', 'Murid 128', 'Alamat Murid 128', '081234010128', 3),
(129, 222, '2022040129', 'Murid 129', 'Alamat Murid 129', '081234010129', 3),
(130, 223, '2022040130', 'Murid 130', 'Alamat Murid 130', '081234010130', 4),
(131, 224, '2022040131', 'Murid 131', 'Alamat Murid 131', '081234010131', 1),
(132, 225, '2022040132', 'Murid 132', 'Alamat Murid 132', '081234010132', 3),
(133, 226, '2022040133', 'Murid 133', 'Alamat Murid 133', '081234010133', 5),
(134, 227, '2022040134', 'Murid 134', 'Alamat Murid 134', '081234010134', 1),
(135, 228, '2022040135', 'Murid 135', 'Alamat Murid 135', '081234010135', 1),
(136, 229, '2022040136', 'Murid 136', 'Alamat Murid 136', '081234010136', 3),
(137, 230, '2022040137', 'Murid 137', 'Alamat Murid 137', '081234010137', 5),
(138, 231, '2022040138', 'Murid 138', 'Alamat Murid 138', '081234010138', 2),
(139, 232, '2022040139', 'Murid 139', 'Alamat Murid 139', '081234010139', 1),
(140, 233, '2022040140', 'Murid 140', 'Alamat Murid 140', '081234010140', 2),
(141, 234, '2022040141', 'Murid 141', 'Alamat Murid 141', '081234010141', 2),
(142, 235, '2022040142', 'Murid 142', 'Alamat Murid 142', '081234010142', 1),
(143, 236, '2022040143', 'Murid 143', 'Alamat Murid 143', '081234010143', 2),
(144, 237, '2022040144', 'Murid 144', 'Alamat Murid 144', '081234010144', 4),
(145, 238, '2022040145', 'Murid 145', 'Alamat Murid 145', '081234010145', 2),
(146, 239, '2022040146', 'Murid 146', 'Alamat Murid 146', '081234010146', 1),
(147, 240, '2022040147', 'Murid 147', 'Alamat Murid 147', '081234010147', 4),
(148, 241, '2022040148', 'Murid 148', 'Alamat Murid 148', '081234010148', 2),
(149, 242, '2022040149', 'Murid 149', 'Alamat Murid 149', '081234010149', 3),
(150, 243, '2022040150', 'Murid 150', 'Alamat Murid 150', '081234010150', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sub_topic`
--

DROP TABLE IF EXISTS `sub_topic`;
CREATE TABLE `sub_topic` (
  `id` int(10) NOT NULL,
  `sub_topic_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` int(10) NOT NULL,
  `number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_topic`
--

INSERT INTO `sub_topic` (`id`, `sub_topic_desc`, `topic_id`, `number`) VALUES
(1, 'Konsep Sel dan Komponen Kimiawi Penyusun Sel', 1, 1),
(2, 'Struktur dan Fungsi Bagian-Bagian Sel', 1, 2),
(3, 'Bioproses dalam Sel', 1, 3),
(4, 'Struktur dan Fungsi Jaringan Tumbuhan', 2, 1),
(5, 'Jaringan Penyusun Organ Tumbuhan', 2, 2),
(6, 'Kultur Jaringan Tumbuhan', 2, 3),
(7, 'Struktur, Letak, dan Fungsi Jaringan Hewan Vertebrata', 3, 1),
(8, 'Teknologi yang Berkaitan dengan Jaringan Hewan', 3, 2),
(9, 'Alat Gerak Pasif', 4, 1),
(10, 'Kelainan dan Teknologi yang Berhubungan dengan Sistem Gerak', 4, 2),
(11, 'Darah', 5, 1),
(12, 'Alat-Alat Peredaran Darah dan Mekanisme Peredaran Darah', 5, 2),
(13, 'Kelainan-Kelainan dan Teknologi yang Berkaitan dengan Sistem Peredaran Darah', 5, 3),
(14, 'Zat-Zat Makanan yang Diperlukan Tubuh', 6, 1),
(15, 'Struktur dan Fungsi Sistem Pencernaan Manusia dan Ruminansia', 6, 2),
(16, 'Sistem Pernapasan pada Manusia', 7, 1),
(17, 'Sistem Pernapasan pada Hewan', 7, 2),
(18, 'Kelainan-Kelainan pada Sistem Pernapasan Manusia', 7, 3),
(19, 'Proses Ekskresi pada Manusia', 8, 1),
(20, 'Gangguan dan penyakit pada Sistem Ekskresi', 8, 2),
(21, 'Sistem Saraf Manusia', 9, 1),
(22, 'Sistem Endokrin (Hormon) Manusia', 9, 2),
(23, 'Sistem Indra Manusia', 9, 3),
(24, 'Gangguan dan Pengaruh Psikotropika pada Sistem Koordinasi Manusia', 9, 4),
(25, 'Struktur dan Fungsi Alat Reproduksi Manusia', 10, 1),
(26, 'Proses-Proses yang Berlangsung dalam Organ Reproduksi', 10, 2),
(27, 'Keterkaitan Antara Kesehatan Reproduksi dengan Program KB dan Kependudukan', 10, 3),
(28, 'Mekanisme Pertahanan Tubuh', 11, 1),
(29, 'Jenis-Jenis Kekebalan dan Gangguan pada Sistem Kekebalan Tubuh', 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `survey_question`
--

DROP TABLE IF EXISTS `survey_question`;
CREATE TABLE `survey_question` (
  `id` int(10) NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_question`
--

INSERT INTO `survey_question` (`id`, `question`, `category`) VALUES
(1, 'Saya merasa senang mengikuti pelajaran biologi selama pembelajaran daring', '1'),
(2, 'Saya tidak pernah mengeluh jika ada tugas biologi', '1'),
(3, 'Saya sering hadir pada saat pelajaran biologi', '1'),
(4, 'Apabila mengalami kesulitan dalam memahami materi, saya bertanya.', '1'),
(5, 'Tugas yang diberikan guru membuat saya semakin tertatik dengan biologi.', '1'),
(6, 'Ketika di rumah saya memilih belajar daripada bermain biologi.', '2'),
(7, 'Tanpa ada yang menyuruh, saya belajar biologi sendiri di rumah. ', '2'),
(8, 'Saya tidak merasa kesulitan dalam memahami materi-materi biologi', '2'),
(9, 'Saat ulangan saya sering mendapat nilai > 75', '2'),
(10, 'Saya pernah mengikuti olimpiade biologi', '2');

-- --------------------------------------------------------

--
-- Table structure for table `survey_result`
--

DROP TABLE IF EXISTS `survey_result`;
CREATE TABLE `survey_result` (
  `id` int(10) NOT NULL,
  `level_result` int(2) NOT NULL,
  `student_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `survey_result`
--

INSERT INTO `survey_result` (`id`, `level_result`, `student_id`) VALUES
(1, 2, 11),
(2, 1, 1),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
CREATE TABLE `teachers` (
  `id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `teacher_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `teacher_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `teacher_type` enum('1','2') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `user_id`, `teacher_name`, `teacher_address`, `nip`, `phone_number`, `email`, `teacher_type`) VALUES
(1, 2, 'Guru 1', 'Alamat guru 1', '199292921992021020', '012047103', '', '1'),
(2, 18, 'Guru 2', 'Alamat guru 2', '12345678901', '9012091820', '', '1'),
(52, 82, 'Guru honorer 1', 'Alamat guru 3', '', '1501720180', 'guru1@gmail.com', '2'),
(53, 84, 'Guru 3', 'Alamat guru 4', '5623908198', '08120192', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic` (
  `id` int(10) NOT NULL,
  `topic_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `topic_desc`, `number`) VALUES
(1, 'Sel sebagai Unit Terkecil Kehidupan dan Bioproses pada Sel', 1),
(2, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Tumbuhan', 2),
(3, 'Struktur dan Fungsi Sel Penyusun Jaringan Hewan', 3),
(4, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Gerak', 4),
(5, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Sirkulasi', 5),
(6, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Pencernaan', 6),
(7, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Pernapasan/Respirasi', 7),
(8, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Ekskresi', 8),
(9, 'Struktur dan Fungsi Sel pada Sistem Koordinasi Manusia', 9),
(10, 'Struktur dan Fungsi Sel Penyusun Jaringan pada Sistem Reproduksi', 10),
(11, 'Struktur dan Fungsi Sel-Sel Penyusun Jaringan dalam Sistem Pertahanan Tubuh', 11);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `login` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_user` enum('1','2','3') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `login`, `password`, `level_user`) VALUES
(1, 'admin1@gmail.com', '$2a$10$QGFZIfjT05AN6pUJzhhicenl0d/49i6aNiz0tUUhbywdfiJGs1khe', '1'),
(2, '199292921992021020', '$2a$10$Rwx0mbwGA6.PYiqc.S1M/.rnj.AqKnyLAQoIA44u6BrYjXGOKfuOu', '2'),
(18, '12345678901', '$2y$10$SMSG35O5Opb1gkPknsZvdOTbY70PKRLmnMgSA9BNqIJF5Cp1wqCgG', '2'),
(19, '512047310', '$2y$10$R86vsvcnwS/dpUlKSGjeBefMnmXU2dS5s0otVC0XApmMEQQ.eBjQ.', '2'),
(23, '123123123', '$2y$10$V9tfoUEM1uYMFEkGkRWPAO4/JxRGA4WZuueWP1EWpu01JQ4TNGh0O', '2'),
(82, '54321', '$2y$10$gua1P2NmtYwYfvm16jCDGO/sTFx3OxVZiAAvB5NAFBXGJ791mLKtG', '2'),
(84, '5623908198', '$2y$10$i4i2oWwah9DZ6dJxtS0GQ.gZoeuge36titAGFzj1jNsW.bN31mW.G', '2'),
(94, '2022040001', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(95, '2022040002', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(96, '2022040003', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(97, '2022040004', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(98, '2022040005', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(99, '2022040006', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(100, '2022040007', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(101, '2022040008', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(102, '2022040009', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(103, '2022040010', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(104, '2022040011', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(105, '2022040012', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(106, '2022040013', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(107, '2022040014', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(108, '2022040015', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(109, '2022040016', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(110, '2022040017', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(111, '2022040018', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(112, '2022040019', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(113, '2022040020', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(114, '2022040021', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(115, '2022040022', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(116, '2022040023', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(117, '2022040024', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(118, '2022040025', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(119, '2022040026', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(120, '2022040027', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(121, '2022040028', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(122, '2022040029', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(123, '2022040030', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(124, '2022040031', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(125, '2022040032', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(126, '2022040033', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(127, '2022040034', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(128, '2022040035', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(129, '2022040036', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(130, '2022040037', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(131, '2022040038', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(132, '2022040039', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(133, '2022040040', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(134, '2022040041', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(135, '2022040042', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(136, '2022040043', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(137, '2022040044', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(138, '2022040045', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(139, '2022040046', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(140, '2022040047', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(141, '2022040048', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(142, '2022040049', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(143, '2022040050', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(144, '2022040051', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(145, '2022040052', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(146, '2022040053', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(147, '2022040054', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(148, '2022040055', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(149, '2022040056', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(150, '2022040057', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(151, '2022040058', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(152, '2022040059', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(153, '2022040060', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(154, '2022040061', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(155, '2022040062', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(156, '2022040063', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(157, '2022040064', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(158, '2022040065', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(159, '2022040066', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(160, '2022040067', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(161, '2022040068', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(162, '2022040069', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(163, '2022040070', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(164, '2022040071', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(165, '2022040072', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(166, '2022040073', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(167, '2022040074', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(168, '2022040075', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(169, '2022040076', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(170, '2022040077', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(171, '2022040078', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(172, '2022040079', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(173, '2022040080', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(174, '2022040081', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(175, '2022040082', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(176, '2022040083', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(177, '2022040084', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(178, '2022040085', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(179, '2022040086', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(180, '2022040087', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(181, '2022040088', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(182, '2022040089', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(183, '2022040090', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(184, '2022040091', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(185, '2022040092', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(186, '2022040093', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(187, '2022040094', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(188, '2022040095', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(189, '2022040096', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(190, '2022040097', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(191, '2022040098', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(192, '2022040099', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(193, '2022040100', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(194, '2022040101', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(195, '2022040102', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(196, '2022040103', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(197, '2022040104', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(198, '2022040105', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(199, '2022040106', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(200, '2022040107', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(201, '2022040108', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(202, '2022040109', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(203, '2022040110', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(204, '2022040111', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(205, '2022040112', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(206, '2022040113', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(207, '2022040114', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(208, '2022040115', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(209, '2022040116', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(210, '2022040117', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(211, '2022040118', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(212, '2022040119', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(213, '2022040120', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(214, '2022040121', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(215, '2022040122', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(216, '2022040123', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(217, '2022040124', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(218, '2022040125', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(219, '2022040126', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(220, '2022040127', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(221, '2022040128', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(222, '2022040129', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(223, '2022040130', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(224, '2022040131', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(225, '2022040132', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(226, '2022040133', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(227, '2022040134', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(228, '2022040135', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(229, '2022040136', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(230, '2022040137', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(231, '2022040138', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(232, '2022040139', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(233, '2022040140', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(234, '2022040141', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(235, '2022040142', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(236, '2022040143', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(237, '2022040144', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(238, '2022040145', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(239, '2022040146', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(240, '2022040147', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(241, '2022040148', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(242, '2022040149', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3'),
(243, '2022040150', '$2y$10$O..ZFow2n/D8hDeHXAv4R.xB0bZpOaf8JHyDoUxPLzT1JIMwhaWie', '3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_attendance`
--
ALTER TABLE `class_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_learned`
--
ALTER TABLE `module_learned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_question`
--
ALTER TABLE `module_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_question_choice`
--
ALTER TABLE `module_question_choice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_topic`
--
ALTER TABLE `sub_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_question`
--
ALTER TABLE `survey_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `survey_result`
--
ALTER TABLE `survey_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `class_attendance`
--
ALTER TABLE `class_attendance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `module_learned`
--
ALTER TABLE `module_learned`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_question`
--
ALTER TABLE `module_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `module_question_choice`
--
ALTER TABLE `module_question_choice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=393;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `sub_topic`
--
ALTER TABLE `sub_topic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `survey_question`
--
ALTER TABLE `survey_question`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `survey_result`
--
ALTER TABLE `survey_result`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
