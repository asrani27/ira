-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ira
CREATE DATABASE IF NOT EXISTS `ira` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ira`;

-- Dumping structure for table ira.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tgl_bekerja` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.admin: ~10 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `nik`, `nama`, `tgl_bekerja`, `created_at`, `updated_at`) VALUES
	(2, '6302067605000007', 'Andini', '2022-06-07', '2022-06-18 16:58:14', '2022-06-18 17:02:11'),
	(3, '6302064107590241', 'ira', '2022-12-01', '2022-06-18 16:49:25', '2022-06-18 16:59:42'),
	(4, '6302060202345009', 'suci', '2021-12-10', '2022-06-18 17:04:14', '2022-06-18 17:04:14'),
	(5, '6302060202105641', 'Rizkiah', '2022-11-02', '2022-06-18 17:06:12', '2022-06-18 17:06:12'),
	(6, '6302022401060000', 'Iwan', '2022-01-06', '2022-06-18 17:07:54', '2022-06-18 17:07:54'),
	(7, '6302064107980003', 'Bagus', '2021-12-01', '2022-06-18 17:10:31', '2022-06-18 17:10:31'),
	(8, '630206023102080006', 'Hana', '2021-05-06', '2022-06-18 17:12:38', '2022-06-18 17:12:38'),
	(9, '6302060202095621', 'Hafiz', '2021-10-04', '2022-06-18 17:15:02', '2022-06-18 17:15:02'),
	(10, '6302065608090004', 'Syafa', '2021-02-07', '2022-06-18 17:17:19', '2022-06-18 17:17:19'),
	(11, '6302060202310106', 'Marwa', '2020-11-11', '2022-06-18 17:19:07', '2022-06-18 17:19:07');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table ira.angkutan
CREATE TABLE IF NOT EXISTS `angkutan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nopol` varchar(255) DEFAULT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `tahun` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal_operasional` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.angkutan: ~10 rows (approximately)
/*!40000 ALTER TABLE `angkutan` DISABLE KEYS */;
INSERT INTO `angkutan` (`id`, `nopol`, `merk`, `tahun`, `created_at`, `updated_at`, `tanggal_operasional`) VALUES
	(1, '23456', 'fuso', '2022', '2022-06-18 17:11:32', '2022-06-18 17:55:00', '2022-08-02'),
	(2, '5601', 'Daihatsu', '2022', '2022-06-18 17:11:46', '2022-06-18 17:52:37', '2022-06-01'),
	(3, '0997', 'mitshubishi', '2021', '2022-06-18 17:57:39', '2022-06-18 18:18:31', '2021-06-28'),
	(4, '4230', 'mitshubishi', '2022', '2022-06-18 17:59:03', '2022-06-18 18:17:56', '2022-06-10'),
	(5, '3765', 'Daihatsu', '2020', '2022-06-18 18:02:19', '2022-06-18 18:17:30', '2020-11-11'),
	(6, '7810', 'fuso', '2021', '2022-06-18 18:03:10', '2022-06-18 18:16:15', '2021-06-21'),
	(7, '8788', 'Daihatsu', '2021', '2022-06-18 18:04:35', '2022-06-18 18:15:05', '2021-06-13'),
	(8, '4930', 'fuso', '2022', '2022-06-18 18:08:03', '2022-06-18 18:08:03', NULL),
	(9, '5180', 'mitshubishi', '2022', '2022-06-18 18:08:46', '2022-06-18 18:13:56', '2022-07-05'),
	(10, '7598', 'mitshubishi', '2021', '2022-06-18 18:10:22', '2022-06-18 18:13:25', '2021-04-06');
/*!40000 ALTER TABLE `angkutan` ENABLE KEYS */;

-- Dumping structure for table ira.driver
CREATE TABLE IF NOT EXISTS `driver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `tgl_bekerja` date DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.driver: ~10 rows (approximately)
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` (`id`, `nama`, `tgl_bekerja`, `telp`, `created_at`, `updated_at`) VALUES
	(1, 'udin.', '2022-06-01', '0878123453', '2022-06-18 17:20:56', '2022-06-18 17:22:14'),
	(3, 'safar', '2022-06-08', '089765430986', '2022-06-18 18:19:37', '2022-06-18 18:19:37'),
	(4, 'ahmad', '2022-06-21', '087754309788', '2022-06-18 18:20:38', '2022-06-18 18:20:38'),
	(5, 'Ramadan', '2021-06-17', '087766780989', '2022-06-18 18:23:22', '2022-06-18 18:23:22'),
	(6, 'Anjas', '2021-06-09', '081248998900', '2022-06-18 18:24:15', '2022-06-18 18:24:15'),
	(7, 'Ari Irham', '2021-06-08', '081248657890', '2022-06-18 18:25:06', '2022-06-18 18:25:06'),
	(8, 'Reza', '2021-06-30', '087767805422', '2022-06-18 18:25:49', '2022-06-18 18:25:49'),
	(9, 'Andika', '2022-06-14', '085634578012', '2022-06-18 18:26:40', '2022-06-18 18:26:40'),
	(10, 'Hendra', '2022-06-16', '082234776890', '2022-06-18 18:27:26', '2022-06-18 18:27:26'),
	(11, 'Syarif', '2022-01-30', '081255309211', '2022-06-18 18:28:35', '2022-06-18 18:28:35');
/*!40000 ALTER TABLE `driver` ENABLE KEYS */;

-- Dumping structure for table ira.pangkalan
CREATE TABLE IF NOT EXISTS `pangkalan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.pangkalan: ~10 rows (approximately)
/*!40000 ALTER TABLE `pangkalan` DISABLE KEYS */;
INSERT INTO `pangkalan` (`id`, `nama`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES
	(1, 'Hilir', 'Jl. Hilir Muara', '081230921167', '2022-06-18 17:04:12', '2022-06-18 17:23:41'),
	(2, 'Tirawan', 'Jl. Tirawan Desa Tirawan', '087766890755', '2022-06-18 17:04:20', '2022-06-18 17:22:31'),
	(4, 'Baharu', 'Jl. Baharu Selatan', '081230924566', '2022-06-18 17:25:14', '2022-06-18 17:25:14'),
	(5, 'Sigam', 'Jl. Sigam', '087756789032', '2022-06-18 17:27:46', '2022-06-18 17:27:46'),
	(6, 'Sarang Tiung', 'Jl. Gedambaan Km 7', '089712309211', '2022-06-18 17:30:45', '2022-06-18 17:30:45'),
	(7, 'Sungai Taib', 'Jl. Sungai Taib Km 10', '087755304210', '2022-06-18 17:33:01', '2022-06-18 17:33:01'),
	(8, 'Batuah', 'Jl. Baharu Utara', '081277210897', '2022-06-18 17:34:50', '2022-06-18 17:34:50'),
	(9, 'Stagen', 'Jl. Stagen', '087755207255', '2022-06-18 17:38:25', '2022-06-18 17:38:25'),
	(10, 'Anggrek', 'Jl. Berangas Km 6', '081256664531', '2022-06-18 17:44:03', '2022-06-18 17:44:03'),
	(11, 'Bayu Bersih', 'Jl. Kemuning', '089756098760', '2022-06-18 17:45:35', '2022-06-18 17:45:35');
/*!40000 ALTER TABLE `pangkalan` ENABLE KEYS */;

-- Dumping structure for table ira.pembayaran
CREATE TABLE IF NOT EXISTS `pembayaran` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `admin_id` int(11) unsigned DEFAULT NULL,
  `no_rek` varchar(255) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.pembayaran: ~10 rows (approximately)
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` (`id`, `tgl`, `nota`, `admin_id`, `no_rek`, `total`, `created_at`, `updated_at`) VALUES
	(1, '2022-06-18', '0000001', 10, 'BCA 1243546576 an PT Pertamina', 100000, '2022-06-18 17:39:46', '2022-06-18 18:34:55'),
	(2, '2021-06-18', '0000002', 2, 'wetryry2', 3000000, '2022-06-18 17:40:04', '2022-06-18 18:48:54'),
	(3, '2021-12-02', '0000003', 9, '8999776787', 1000000, '2022-06-18 18:32:33', '2022-06-18 18:35:25'),
	(4, '2022-06-19', '0000004', 3, '5678904326', 450000, '2022-06-18 18:33:15', '2022-06-18 18:33:15'),
	(5, '2021-12-04', '0000005', 6, '7689095653', 500000, '2022-06-18 18:34:25', '2022-06-18 18:34:25'),
	(6, '2021-03-29', '0000006', 4, '5457687978', 1000000, '2022-06-18 18:36:56', '2022-06-18 18:36:56'),
	(7, '2021-08-06', '0000007', 5, '6867564326', 500000, '2022-06-18 18:37:54', '2022-06-18 18:37:54'),
	(8, '2020-07-10', '0000008', 2, '65437898765', 500000, '2022-06-18 18:38:46', '2022-06-18 18:38:46'),
	(9, '2021-08-24', '0000009', 8, '578906542', 1000000, '2022-06-18 18:39:47', '2022-06-18 18:39:47'),
	(10, '2021-10-10', '0000010', 11, '8548954756483', 450000, '2022-06-18 18:40:37', '2022-06-18 18:40:37');
/*!40000 ALTER TABLE `pembayaran` ENABLE KEYS */;

-- Dumping structure for table ira.penerimaan
CREATE TABLE IF NOT EXISTS `penerimaan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `pangkalan_id` int(11) unsigned DEFAULT NULL,
  `jenis_tabung` varchar(255) DEFAULT NULL,
  `total_tabung` int(11) unsigned DEFAULT NULL,
  `total_bayar` int(11) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.penerimaan: ~10 rows (approximately)
/*!40000 ALTER TABLE `penerimaan` DISABLE KEYS */;
INSERT INTO `penerimaan` (`id`, `tgl`, `nota`, `pangkalan_id`, `jenis_tabung`, `total_tabung`, `total_bayar`, `created_at`, `updated_at`) VALUES
	(3, '2022-06-18', '0000001', 1, 'LPG 3 kilo', 100, 500000, '2022-06-18 18:00:24', '2022-06-18 18:00:24'),
	(4, '2022-06-18', '0000004', 2, 'LPG 5 kilo', 30, 500000, '2022-06-18 18:01:41', '2022-06-18 18:03:09'),
	(5, '2021-06-18', '0000005', 4, '12', 3, 450000, '2022-06-18 18:42:30', '2022-06-18 18:42:30'),
	(6, '2021-12-09', '0000006', 5, 'LPG 5 kilo', 10, 800000, '2022-06-18 18:45:42', '2022-06-18 18:45:42'),
	(7, '2022-05-29', '0000007', 5, 'LPG 3 kilo', 50, 1500000, '2022-06-18 18:47:23', '2022-06-18 18:47:23'),
	(8, '2021-06-19', '0000008', 8, 'LPG 3 kilo', 100, 3000000, '2022-06-18 18:48:19', '2022-06-18 18:48:19'),
	(9, '2021-05-12', '0000009', 6, 'LPG 5 kilo', 10, 450000, '2022-06-18 18:49:53', '2022-06-18 18:49:53'),
	(10, '2021-05-06', '0000010', 11, 'LPG 3 kilo', 50, 1500000, '2022-06-18 18:50:53', '2022-06-18 18:50:53'),
	(11, '2020-12-13', '0000011', 1, 'LPG 5 kilo', 10, 450000, '2022-06-18 18:51:27', '2022-06-18 18:51:27'),
	(12, '2022-04-19', '0000012', 7, '12', 6, 1000000, '2022-06-18 18:52:15', '2022-06-18 18:52:15');
/*!40000 ALTER TABLE `penerimaan` ENABLE KEYS */;

-- Dumping structure for table ira.pengiriman
CREATE TABLE IF NOT EXISTS `pengiriman` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tgl` date DEFAULT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `pangkalan_id` int(11) unsigned DEFAULT NULL,
  `angkutan_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `jenis_tabung` varchar(255) DEFAULT NULL,
  `jumlah_kirim` int(11) unsigned DEFAULT NULL,
  `total_ditagih` int(11) unsigned DEFAULT NULL,
  `penerima` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.pengiriman: ~10 rows (approximately)
/*!40000 ALTER TABLE `pengiriman` DISABLE KEYS */;
INSERT INTO `pengiriman` (`id`, `tgl`, `nota`, `pangkalan_id`, `angkutan_id`, `driver_id`, `jenis_tabung`, `jumlah_kirim`, `total_ditagih`, `penerima`, `created_at`, `updated_at`) VALUES
	(5, '2022-02-01', '0000001', 7, 7, 5, 'LPG 5 kilo', 10, 1000000, 'syafa', '2022-06-18 18:27:34', '2022-06-18 18:55:18'),
	(7, '2022-06-18', '0000006', 2, 1, 1, 'LPG 3 kilo', 100, 1500000, 'ira', '2022-06-18 18:29:25', '2022-06-18 18:53:27'),
	(8, '2021-03-19', '0000008', 9, 4, 4, 'LPG 3 kilo', 100, 3000000, 'marwa', '2022-06-18 18:56:41', '2022-06-18 18:56:41'),
	(9, '2021-12-02', '0000009', 6, 3, 6, 'LPG 3 kilo', 100, 3000000, 'suci', '2022-06-18 18:57:39', '2022-06-18 18:57:39'),
	(10, '2022-12-03', '0000010', 5, 6, 7, 'LPG 12 kilo', 5, 1000000, 'hana', '2022-06-18 18:58:49', '2022-06-18 18:58:49'),
	(11, '2022-02-11', '0000011', 11, 7, 9, 'LPG 3 kilo', 100, 3000000, 'hafiz', '2022-06-18 18:59:36', '2022-06-18 19:02:12'),
	(12, '2021-12-25', '0000012', 8, 1, 8, 'LPG 5 kilo', 10, 1000000, 'bagus', '2022-06-18 19:00:31', '2022-06-18 19:00:31'),
	(13, '2022-10-04', '0000013', 10, 7, 10, 'LPG 3 kilo', 100, 3000000, 'iwan', '2022-06-18 19:01:39', '2022-06-18 19:01:39'),
	(14, '2021-10-19', '0000014', 8, 6, 8, 'LPG 5 kilo', 10, 1500000, 'rizkiah', '2022-06-18 19:03:20', '2022-06-18 19:03:20'),
	(15, '2021-09-08', '0000015', 4, 4, 11, 'LPG 3 kilo', 100, 3000000, 'lilis', '2022-06-18 19:04:43', '2022-06-18 19:04:43');
/*!40000 ALTER TABLE `pengiriman` ENABLE KEYS */;

-- Dumping structure for table ira.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ira.roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'superadmin', '2020-12-23 23:17:35', '2020-12-23 23:17:35'),
	(2, 'kasir', '2022-05-26 11:44:47', '2022-05-26 11:44:47');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table ira.role_users
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  UNIQUE KEY `role_users_user_id_role_id_unique` (`user_id`,`role_id`) USING BTREE,
  KEY `role_users_role_id_foreign` (`role_id`) USING BTREE,
  CONSTRAINT `role_users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_users_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ira.role_users: ~1 rows (approximately)
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` (`user_id`, `role_id`) VALUES
	(1, 1);
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;

-- Dumping structure for table ira.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ira.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', NULL, 'admin', '2022-06-19 02:36:02', '$2y$10$EWvbqYJVXAtHOlyX/IR9bOQ7EvE2yQ05gBxZmiFX.BkUYiyo8XHtS', 'BCYNgzFBYkcpydAcRBtYOrzkp8WjrIhP7sMj96SRAzCqXSXyOq94Io153dU1', '2022-06-19 02:36:02', '2022-06-19 02:36:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
