-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table ira.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nik` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tgl_bekerja` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.admin: ~1 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `nik`, `nama`, `tgl_bekerja`, `created_at`, `updated_at`) VALUES
	(2, '34356', 'Andini', '2022-06-07', '2022-06-18 16:58:14', '2022-06-18 17:38:12');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.angkutan: ~2 rows (approximately)
/*!40000 ALTER TABLE `angkutan` DISABLE KEYS */;
INSERT INTO `angkutan` (`id`, `nopol`, `merk`, `tahun`, `created_at`, `updated_at`, `tanggal_operasional`) VALUES
	(1, '23456', 'fuso', '2022', '2022-06-18 17:11:32', '2022-06-18 17:11:32', NULL),
	(2, '1', '1', '1', '2022-06-18 17:11:46', '2022-06-18 17:16:22', '2022-06-01');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.driver: ~1 rows (approximately)
/*!40000 ALTER TABLE `driver` DISABLE KEYS */;
INSERT INTO `driver` (`id`, `nama`, `tgl_bekerja`, `telp`, `created_at`, `updated_at`) VALUES
	(1, 'udin.', '2022-06-01', '0878123453', '2022-06-18 17:20:56', '2022-06-18 17:22:14');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.pangkalan: ~2 rows (approximately)
/*!40000 ALTER TABLE `pangkalan` DISABLE KEYS */;
INSERT INTO `pangkalan` (`id`, `nama`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES
	(1, 'Pangkalan A', 'jl A', '098765678', '2022-06-18 17:04:12', '2022-06-18 17:04:12'),
	(2, 'Pangkalan B', 'jl B', '09876567890', '2022-06-18 17:04:20', '2022-06-18 17:04:20');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.pembayaran: ~2 rows (approximately)
/*!40000 ALTER TABLE `pembayaran` DISABLE KEYS */;
INSERT INTO `pembayaran` (`id`, `tgl`, `nota`, `admin_id`, `no_rek`, `total`, `created_at`, `updated_at`) VALUES
	(1, '2022-06-18', '0000001', 2, 'BCA 1243546576 an PT Pertamina', 100000, '2022-06-18 17:39:46', '2022-06-18 17:39:46'),
	(2, '2022-06-18', '0000002', 2, 'wetryry2', 3245652, '2022-06-18 17:40:04', '2022-06-18 17:43:55');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.penerimaan: ~2 rows (approximately)
/*!40000 ALTER TABLE `penerimaan` DISABLE KEYS */;
INSERT INTO `penerimaan` (`id`, `tgl`, `nota`, `pangkalan_id`, `jenis_tabung`, `total_tabung`, `total_bayar`, `created_at`, `updated_at`) VALUES
	(3, '2022-06-18', '0000001', 1, 'LPG 3 kilo', 100, 500000, '2022-06-18 18:00:24', '2022-06-18 18:00:24'),
	(4, '2022-06-18', '0000004', 2, 'LPG 5 kilo', 30, 500000, '2022-06-18 18:01:41', '2022-06-18 18:03:09');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table ira.pengiriman: ~2 rows (approximately)
/*!40000 ALTER TABLE `pengiriman` DISABLE KEYS */;
INSERT INTO `pengiriman` (`id`, `tgl`, `nota`, `pangkalan_id`, `angkutan_id`, `driver_id`, `jenis_tabung`, `jumlah_kirim`, `total_ditagih`, `penerima`, `created_at`, `updated_at`) VALUES
	(5, '2022-06-18', '0000001', 1, 1, 1, 'sdfdgf', 3546, 3455, 'dsg', '2022-06-18 18:27:34', '2022-06-18 18:33:06'),
	(7, '2022-06-18', '0000006', 2, 1, 1, 'rtyfugiho', 5678, 956789, 'ytguhjkl', '2022-06-18 18:29:25', '2022-06-18 18:32:16');
/*!40000 ALTER TABLE `pengiriman` ENABLE KEYS */;

-- Dumping structure for table ira.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
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
  `email_verified_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_username_unique` (`username`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- Dumping data for table ira.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'admin', NULL, 'admin', '2022-06-19 02:36:02', '$2y$10$EWvbqYJVXAtHOlyX/IR9bOQ7EvE2yQ05gBxZmiFX.BkUYiyo8XHtS', 'BCYNgzFBYkcpydAcRBtYOrzkp8WjrIhP7sMj96SRAzCqXSXyOq94Io153dU1', '2022-06-19 02:36:02', '2022-06-19 02:36:02');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
