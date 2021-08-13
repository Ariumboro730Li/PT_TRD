-- Database export via SQLPro (https://www.sqlprostudio.com/allapps.html)
-- Exported by ariumboroseno at 13-08-2021 07:19.
-- WARNING: This file may contain descructive statements such as DROPs.
-- Please ensure that you are running the script at the proper location.


-- BEGIN TABLE failed_jobs
DROP TABLE IF EXISTS failed_jobs;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table failed_jobs contains no data. No inserts have been genrated.
-- Inserting 0 rows into failed_jobs


-- END TABLE failed_jobs

-- BEGIN TABLE migrations
DROP TABLE IF EXISTS migrations;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserting 6 rows into migrations
-- Insert batch #1
INSERT INTO migrations (id, migration, batch) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_08_12_022525_prepaidbalance', 2),
(5, '2021_08_12_023822_product_page', 3),
(6, '2021_08_12_071312_product_id_list', 4);

-- END TABLE migrations

-- BEGIN TABLE password_resets
DROP TABLE IF EXISTS password_resets;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Table password_resets contains no data. No inserts have been genrated.
-- Inserting 0 rows into password_resets


-- END TABLE password_resets

-- BEGIN TABLE prepaid_balance
DROP TABLE IF EXISTS prepaid_balance;
CREATE TABLE `prepaid_balance` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int NOT NULL,
  `status_pay` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserting 1 row into prepaid_balance
-- Insert batch #1
INSERT INTO prepaid_balance (id, user_id, product_id, phone, `value`, status_pay, created_at, updated_at) VALUES
(1, 1, 1000694340, '081287980134', 100000, 0, '2021-08-12 23:00:01', '2021-08-12 23:00:01');

-- END TABLE prepaid_balance

-- BEGIN TABLE product_id_list
DROP TABLE IF EXISTS product_id_list;
CREATE TABLE `product_id_list` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=237 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserting 236 rows into product_id_list
-- Insert batch #1
INSERT INTO product_id_list (id, product_id, created_at, updated_at) VALUES
(1, 1000001179, NULL, NULL),
(2, 1000003627, '2021-08-12 12:22:11', '2021-08-12 12:22:11'),
(3, 1000005514, '2021-08-12 12:28:30', '2021-08-12 12:28:30'),
(4, 1000008286, '2021-08-12 12:59:52', '2021-08-12 12:59:52'),
(5, 1000010622, '2021-08-12 14:14:53', '2021-08-12 14:14:53'),
(6, 1000012753, '2021-08-12 21:42:12', '2021-08-12 21:42:12'),
(7, 1000014947, '2021-08-12 22:10:40', '2021-08-12 22:10:40'),
(8, 1000019820, '2021-08-12 22:10:44', '2021-08-12 22:10:44'),
(9, 1000022531, '2021-08-12 22:10:45', '2021-08-12 22:10:45'),
(10, 1000025053, '2021-08-12 22:10:45', '2021-08-12 22:10:45'),
(11, 1000030050, '2021-08-12 22:10:46', '2021-08-12 22:10:46'),
(12, 1000034817, '2021-08-12 22:11:32', '2021-08-12 22:11:32'),
(13, 1000038436, '2021-08-12 22:11:49', '2021-08-12 22:11:49'),
(14, 1000042513, '2021-08-12 22:11:49', '2021-08-12 22:11:49'),
(15, 1000044307, '2021-08-12 22:11:49', '2021-08-12 22:11:49'),
(16, 1000048575, '2021-08-12 22:11:50', '2021-08-12 22:11:50'),
(17, 1000052429, '2021-08-12 22:11:51', '2021-08-12 22:11:51'),
(18, 1000056785, '2021-08-12 22:11:57', '2021-08-12 22:11:57'),
(19, 1000058538, '2021-08-12 22:11:57', '2021-08-12 22:11:57'),
(20, 1000062160, '2021-08-12 22:11:58', '2021-08-12 22:11:58'),
(21, 1000064305, '2021-08-12 22:12:14', '2021-08-12 22:12:14'),
(22, 1000068458, '2021-08-12 22:12:15', '2021-08-12 22:12:15'),
(23, 1000071898, '2021-08-12 22:12:15', '2021-08-12 22:12:15'),
(24, 1000075697, '2021-08-12 22:12:39', '2021-08-12 22:12:39'),
(25, 1000078382, '2021-08-12 22:12:43', '2021-08-12 22:12:43'),
(26, 1000081881, '2021-08-12 22:12:45', '2021-08-12 22:12:45'),
(27, 1000085184, '2021-08-12 22:12:54', '2021-08-12 22:12:54'),
(28, 1000087334, '2021-08-12 22:12:55', '2021-08-12 22:12:55'),
(29, 1000088669, '2021-08-12 22:13:32', '2021-08-12 22:13:32'),
(30, 1000089802, '2021-08-12 22:13:52', '2021-08-12 22:13:52'),
(31, 1000092842, '2021-08-12 22:13:53', '2021-08-12 22:13:53'),
(32, 1000097385, '2021-08-12 22:13:53', '2021-08-12 22:13:53'),
(33, 1000098782, '2021-08-12 22:13:54', '2021-08-12 22:13:54'),
(34, 1000102656, '2021-08-12 22:13:54', '2021-08-12 22:13:54'),
(35, 1000105344, '2021-08-12 22:14:00', '2021-08-12 22:14:00'),
(36, 1000107392, '2021-08-12 22:14:01', '2021-08-12 22:14:01'),
(37, 1000108709, '2021-08-12 22:14:46', '2021-08-12 22:14:46'),
(38, 1000111578, '2021-08-12 22:15:07', '2021-08-12 22:15:07'),
(39, 1000113324, '2021-08-12 22:15:08', '2021-08-12 22:15:08'),
(40, 1000115091, '2021-08-12 22:15:08', '2021-08-12 22:15:08'),
(41, 1000119693, '2021-08-12 22:15:09', '2021-08-12 22:15:09'),
(42, 1000124316, '2021-08-12 22:15:28', '2021-08-12 22:15:28'),
(43, 1000127584, '2021-08-12 22:15:28', '2021-08-12 22:15:28'),
(44, 1000130351, '2021-08-12 22:15:48', '2021-08-12 22:15:48'),
(45, 1000134148, '2021-08-12 22:15:49', '2021-08-12 22:15:49'),
(46, 1000138866, '2021-08-12 22:17:01', '2021-08-12 22:17:01'),
(47, 1000143803, '2021-08-12 22:17:02', '2021-08-12 22:17:02'),
(48, 1000148205, '2021-08-12 22:17:04', '2021-08-12 22:17:04'),
(49, 1000152986, '2021-08-12 22:17:05', '2021-08-12 22:17:05'),
(50, 1000157155, '2021-08-12 22:17:05', '2021-08-12 22:17:05'),
(51, 1000162021, '2021-08-12 22:17:06', '2021-08-12 22:17:06'),
(52, 1000165473, '2021-08-12 22:17:06', '2021-08-12 22:17:06'),
(53, 1000168249, '2021-08-12 22:17:07', '2021-08-12 22:17:07'),
(54, 1000172311, '2021-08-12 22:17:07', '2021-08-12 22:17:07'),
(55, 1000175376, '2021-08-12 22:17:07', '2021-08-12 22:17:07'),
(56, 1000176556, '2021-08-12 22:17:08', '2021-08-12 22:17:08'),
(57, 1000178174, '2021-08-12 22:17:09', '2021-08-12 22:17:09'),
(58, 1000181358, '2021-08-12 22:17:34', '2021-08-12 22:17:34'),
(59, 1000184720, '2021-08-12 22:17:34', '2021-08-12 22:17:34'),
(60, 1000187865, '2021-08-12 22:17:35', '2021-08-12 22:17:35'),
(61, 1000192662, '2021-08-12 22:17:36', '2021-08-12 22:17:36'),
(62, 1000194705, '2021-08-12 22:17:36', '2021-08-12 22:17:36'),
(63, 1000198078, '2021-08-12 22:17:37', '2021-08-12 22:17:37'),
(64, 1000200738, '2021-08-12 22:17:37', '2021-08-12 22:17:37'),
(65, 1000203610, '2021-08-12 22:17:37', '2021-08-12 22:17:37'),
(66, 1000206309, '2021-08-12 22:17:38', '2021-08-12 22:17:38'),
(67, 1000208586, '2021-08-12 22:17:38', '2021-08-12 22:17:38'),
(68, 1000211336, '2021-08-12 22:17:50', '2021-08-12 22:17:50'),
(69, 1000216315, '2021-08-12 22:17:50', '2021-08-12 22:17:50'),
(70, 1000219076, '2021-08-12 22:17:51', '2021-08-12 22:17:51'),
(71, 1000223387, '2021-08-12 22:17:51', '2021-08-12 22:17:51'),
(72, 1000224860, '2021-08-12 22:17:52', '2021-08-12 22:17:52'),
(73, 1000228329, '2021-08-12 22:17:52', '2021-08-12 22:17:52'),
(74, 1000229734, '2021-08-12 22:17:52', '2021-08-12 22:17:52'),
(75, 1000234183, '2021-08-12 22:17:53', '2021-08-12 22:17:53'),
(76, 1000235804, '2021-08-12 22:17:53', '2021-08-12 22:17:53'),
(77, 1000240160, '2021-08-12 22:17:53', '2021-08-12 22:17:53'),
(78, 1000242196, '2021-08-12 22:17:54', '2021-08-12 22:17:54'),
(79, 1000244087, '2021-08-12 22:17:54', '2021-08-12 22:17:54'),
(80, 1000245897, '2021-08-12 22:17:55', '2021-08-12 22:17:55'),
(81, 1000250618, '2021-08-12 22:17:55', '2021-08-12 22:17:55'),
(82, 1000255090, '2021-08-12 22:17:56', '2021-08-12 22:17:56'),
(83, 1000259513, '2021-08-12 22:17:56', '2021-08-12 22:17:56'),
(84, 1000260865, '2021-08-12 22:17:56', '2021-08-12 22:17:56'),
(85, 1000264233, '2021-08-12 22:17:57', '2021-08-12 22:17:57'),
(86, 1000268032, '2021-08-12 22:17:57', '2021-08-12 22:17:57'),
(87, 1000272360, '2021-08-12 22:17:57', '2021-08-12 22:17:57'),
(88, 1000273644, '2021-08-12 22:17:58', '2021-08-12 22:17:58'),
(89, 1000274990, '2021-08-12 22:17:58', '2021-08-12 22:17:58'),
(90, 1000279107, '2021-08-12 22:17:58', '2021-08-12 22:17:58'),
(91, 1000281588, '2021-08-12 22:18:26', '2021-08-12 22:18:26'),
(92, 1000284830, '2021-08-12 22:18:27', '2021-08-12 22:18:27'),
(93, 1000286006, '2021-08-12 22:18:27', '2021-08-12 22:18:27'),
(94, 1000289070, '2021-08-12 22:18:28', '2021-08-12 22:18:28'),
(95, 1000290420, '2021-08-12 22:18:28', '2021-08-12 22:18:28'),
(96, 1000294941, '2021-08-12 22:18:29', '2021-08-12 22:18:29'),
(97, 1000297889, '2021-08-12 22:18:29', '2021-08-12 22:18:29'),
(98, 1000301344, '2021-08-12 22:18:29', '2021-08-12 22:18:29'),
(99, 1000305728, '2021-08-12 22:18:30', '2021-08-12 22:18:30'),
(100, 1000307979, '2021-08-12 22:18:30', '2021-08-12 22:18:30'),
(101, 1000312967, '2021-08-12 22:18:31', '2021-08-12 22:18:31'),
(102, 1000316725, '2021-08-12 22:18:31', '2021-08-12 22:18:31'),
(103, 1000321299, '2021-08-12 22:18:31', '2021-08-12 22:18:31'),
(104, 1000324502, '2021-08-12 22:18:32', '2021-08-12 22:18:32'),
(105, 1000326629, '2021-08-12 22:18:32', '2021-08-12 22:18:32'),
(106, 1000330242, '2021-08-12 22:18:32', '2021-08-12 22:18:32'),
(107, 1000333344, '2021-08-12 22:18:33', '2021-08-12 22:18:33'),
(108, 1000334605, '2021-08-12 22:18:33', '2021-08-12 22:18:33'),
(109, 1000336230, '2021-08-12 22:18:33', '2021-08-12 22:18:33'),
(110, 1000341100, '2021-08-12 22:18:34', '2021-08-12 22:18:34'),
(111, 1000343322, '2021-08-12 22:18:34', '2021-08-12 22:18:34'),
(112, 1000346061, '2021-08-12 22:18:34', '2021-08-12 22:18:34'),
(113, 1000348031, '2021-08-12 22:18:35', '2021-08-12 22:18:35'),
(114, 1000351948, '2021-08-12 22:18:42', '2021-08-12 22:18:42'),
(115, 1000355332, '2021-08-12 22:18:43', '2021-08-12 22:18:43'),
(116, 1000358074, '2021-08-12 22:18:43', '2021-08-12 22:18:43'),
(117, 1000359539, '2021-08-12 22:18:44', '2021-08-12 22:18:44'),
(118, 1000361671, '2021-08-12 22:18:44', '2021-08-12 22:18:44'),
(119, 1000363517, '2021-08-12 22:19:14', '2021-08-12 22:19:14'),
(120, 1000365744, '2021-08-12 22:19:14', '2021-08-12 22:19:14'),
(121, 1000370001, '2021-08-12 22:19:14', '2021-08-12 22:19:14'),
(122, 1000371003, '2021-08-12 22:19:15', '2021-08-12 22:19:15'),
(123, 1000375315, '2021-08-12 22:19:15', '2021-08-12 22:19:15'),
(124, 1000379099, '2021-08-12 22:19:16', '2021-08-12 22:19:16'),
(125, 1000383552, '2021-08-12 22:19:16', '2021-08-12 22:19:16'),
(126, 1000387708, '2021-08-12 22:19:16', '2021-08-12 22:19:16'),
(127, 1000390223, '2021-08-12 22:19:17', '2021-08-12 22:19:17'),
(128, 1000391863, '2021-08-12 22:19:17', '2021-08-12 22:19:17'),
(129, 1000396350, '2021-08-12 22:19:17', '2021-08-12 22:19:17'),
(130, 1000400929, '2021-08-12 22:19:18', '2021-08-12 22:19:18'),
(131, 1000403357, '2021-08-12 22:19:18', '2021-08-12 22:19:18'),
(132, 1000406684, '2021-08-12 22:19:18', '2021-08-12 22:19:18'),
(133, 1000410985, '2021-08-12 22:19:19', '2021-08-12 22:19:19'),
(134, 1000415176, '2021-08-12 22:19:19', '2021-08-12 22:19:19'),
(135, 1000419301, '2021-08-12 22:19:19', '2021-08-12 22:19:19'),
(136, 1000423007, '2021-08-12 22:19:20', '2021-08-12 22:19:20'),
(137, 1000426168, '2021-08-12 22:19:20', '2021-08-12 22:19:20'),
(138, 1000429811, '2021-08-12 22:19:20', '2021-08-12 22:19:20'),
(139, 1000433561, '2021-08-12 22:19:21', '2021-08-12 22:19:21'),
(140, 1000434756, '2021-08-12 22:19:21', '2021-08-12 22:19:21'),
(141, 1000436614, '2021-08-12 22:19:21', '2021-08-12 22:19:21'),
(142, 1000438702, '2021-08-12 22:19:22', '2021-08-12 22:19:22'),
(143, 1000442281, '2021-08-12 22:19:22', '2021-08-12 22:19:22'),
(144, 1000446777, '2021-08-12 22:19:22', '2021-08-12 22:19:22'),
(145, 1000450475, '2021-08-12 22:19:22', '2021-08-12 22:19:22'),
(146, 1000454128, '2021-08-12 22:19:23', '2021-08-12 22:19:23'),
(147, 1000458105, '2021-08-12 22:19:23', '2021-08-12 22:19:23'),
(148, 1000459946, '2021-08-12 22:19:23', '2021-08-12 22:19:23'),
(149, 1000463524, '2021-08-12 22:19:23', '2021-08-12 22:19:23'),
(150, 1000468329, '2021-08-12 22:19:23', '2021-08-12 22:19:23'),
(151, 1000470672, '2021-08-12 22:19:24', '2021-08-12 22:19:24'),
(152, 1000473863, '2021-08-12 22:19:24', '2021-08-12 22:19:24'),
(153, 1000475623, '2021-08-12 22:19:24', '2021-08-12 22:19:24'),
(154, 1000477895, '2021-08-12 22:19:24', '2021-08-12 22:19:24'),
(155, 1000480616, '2021-08-12 22:19:46', '2021-08-12 22:19:46'),
(156, 1000481877, '2021-08-12 22:19:46', '2021-08-12 22:19:46'),
(157, 1000482914, '2021-08-12 22:19:47', '2021-08-12 22:19:47'),
(158, 1000484338, '2021-08-12 22:19:47', '2021-08-12 22:19:47'),
(159, 1000487595, '2021-08-12 22:19:47', '2021-08-12 22:19:47'),
(160, 1000491667, '2021-08-12 22:19:47', '2021-08-12 22:19:47'),
(161, 1000496424, '2021-08-12 22:19:48', '2021-08-12 22:19:48'),
(162, 1000499481, '2021-08-12 22:19:48', '2021-08-12 22:19:48'),
(163, 1000504370, '2021-08-12 22:19:48', '2021-08-12 22:19:48'),
(164, 1000508713, '2021-08-12 22:19:49', '2021-08-12 22:19:49'),
(165, 1000511826, '2021-08-12 22:19:49', '2021-08-12 22:19:49'),
(166, 1000513093, '2021-08-12 22:19:49', '2021-08-12 22:19:49'),
(167, 1000517840, '2021-08-12 22:19:49', '2021-08-12 22:19:49'),
(168, 1000521636, '2021-08-12 22:19:50', '2021-08-12 22:19:50'),
(169, 1000524619, '2021-08-12 22:19:50', '2021-08-12 22:19:50'),
(170, 1000529365, '2021-08-12 22:19:50', '2021-08-12 22:19:50'),
(171, 1000531842, '2021-08-12 22:19:50', '2021-08-12 22:19:50'),
(172, 1000536674, '2021-08-12 22:21:48', '2021-08-12 22:21:48'),
(173, 1000541457, '2021-08-12 22:21:48', '2021-08-12 22:21:48'),
(174, 1000543398, '2021-08-12 22:21:49', '2021-08-12 22:21:49'),
(175, 1000545909, '2021-08-12 22:21:49', '2021-08-12 22:21:49'),
(176, 1000548057, '2021-08-12 22:21:50', '2021-08-12 22:21:50'),
(177, 1000551463, '2021-08-12 22:21:50', '2021-08-12 22:21:50'),
(178, 1000554061, '2021-08-12 22:21:51', '2021-08-12 22:21:51'),
(179, 1000557339, '2021-08-12 22:21:51', '2021-08-12 22:21:51'),
(180, 1000559746, '2021-08-12 22:21:51', '2021-08-12 22:21:51'),
(181, 1000563480, '2021-08-12 22:21:52', '2021-08-12 22:21:52'),
(182, 1000565456, '2021-08-12 22:21:52', '2021-08-12 22:21:52'),
(183, 1000568909, '2021-08-12 22:21:52', '2021-08-12 22:21:52'),
(184, 1000570663, '2021-08-12 22:21:53', '2021-08-12 22:21:53'),
(185, 1000573035, '2021-08-12 22:22:19', '2021-08-12 22:22:19'),
(186, 1000575614, '2021-08-12 22:22:20', '2021-08-12 22:22:20'),
(187, 1000577257, '2021-08-12 22:22:20', '2021-08-12 22:22:20'),
(188, 1000581671, '2021-08-12 22:22:20', '2021-08-12 22:22:20'),
(189, 1000584179, '2021-08-12 22:22:21', '2021-08-12 22:22:21'),
(190, 1000586871, '2021-08-12 22:22:21', '2021-08-12 22:22:21'),
(191, 1000589158, '2021-08-12 22:22:21', '2021-08-12 22:22:21'),
(192, 1000590394, '2021-08-12 22:22:22', '2021-08-12 22:22:22'),
(193, 1000592307, '2021-08-12 22:22:22', '2021-08-12 22:22:22'),
(194, 1000595296, '2021-08-12 22:22:22', '2021-08-12 22:22:22'),
(195, 1000600033, '2021-08-12 22:22:22', '2021-08-12 22:22:22'),
(196, 1000602477, '2021-08-12 22:22:23', '2021-08-12 22:22:23'),
(197, 1000605148, '2021-08-12 22:22:23', '2021-08-12 22:22:23'),
(198, 1000606348, '2021-08-12 22:22:23', '2021-08-12 22:22:23'),
(199, 1000609957, '2021-08-12 22:22:31', '2021-08-12 22:22:31'),
(200, 1000612153, '2021-08-12 22:22:32', '2021-08-12 22:22:32'),
(201, 1000614926, '2021-08-12 22:22:32', '2021-08-12 22:22:32'),
(202, 1000616042, '2021-08-12 22:22:32', '2021-08-12 22:22:32'),
(203, 1000617512, '2021-08-12 22:22:33', '2021-08-12 22:22:33'),
(204, 1000622181, '2021-08-12 22:22:33', '2021-08-12 22:22:33'),
(205, 1000624672, '2021-08-12 22:22:33', '2021-08-12 22:22:33'),
(206, 1000629072, '2021-08-12 22:22:34', '2021-08-12 22:22:34'),
(207, 1000633303, '2021-08-12 22:22:34', '2021-08-12 22:22:34'),
(208, 1000634888, '2021-08-12 22:22:34', '2021-08-12 22:22:34'),
(209, 1000638400, '2021-08-12 22:22:34', '2021-08-12 22:22:34'),
(210, 1000642185, '2021-08-12 22:22:35', '2021-08-12 22:22:35'),
(211, 1000644191, '2021-08-12 22:22:35', '2021-08-12 22:22:35'),
(212, 1000649137, '2021-08-12 22:22:35', '2021-08-12 22:22:35'),
(213, 1000651161, '2021-08-12 22:22:36', '2021-08-12 22:22:36'),
(214, 1000653354, '2021-08-12 22:22:36', '2021-08-12 22:22:36'),
(215, 1000654853, '2021-08-12 22:22:42', '2021-08-12 22:22:42'),
(216, 1000659511, '2021-08-12 22:58:39', '2021-08-12 22:58:39'),
(217, 1000663576, '2021-08-12 22:58:40', '2021-08-12 22:58:40'),
(218, 1000668426, '2021-08-12 22:58:40', '2021-08-12 22:58:40'),
(219, 1000669637, '2021-08-12 22:58:41', '2021-08-12 22:58:41'),
(220, 1000674342, '2021-08-12 22:58:42', '2021-08-12 22:58:42'),
(221, 1000677338, '2021-08-12 22:58:43', '2021-08-12 22:58:43'),
(222, 1000682165, '2021-08-12 22:58:43', '2021-08-12 22:58:43'),
(223, 1000683192, '2021-08-12 22:58:44', '2021-08-12 22:58:44'),
(224, 1000685884, '2021-08-12 22:58:45', '2021-08-12 22:58:45'),
(225, 1000690039, '2021-08-12 22:58:52', '2021-08-12 22:58:52'),
(226, 1000694340, '2021-08-12 23:00:01', '2021-08-12 23:00:01'),
(227, 1000696418, '2021-08-12 23:06:41', '2021-08-12 23:06:41'),
(228, 1000701093, '2021-08-12 23:07:03', '2021-08-12 23:07:03'),
(229, 1000704245, '2021-08-12 23:07:26', '2021-08-12 23:07:26'),
(230, 1000708527, '2021-08-12 23:20:40', '2021-08-12 23:20:40'),
(231, 1000712620, '2021-08-13 06:22:05', '2021-08-13 06:22:05'),
(232, 1000713887, '2021-08-13 06:42:18', '2021-08-13 06:42:18'),
(233, 1000716053, '2021-08-13 06:42:20', '2021-08-13 06:42:20'),
(234, 1000720414, '2021-08-13 06:42:39', '2021-08-13 06:42:39'),
(235, 1000723418, '2021-08-13 06:43:53', '2021-08-13 06:43:53'),
(236, 1000726460, '2021-08-13 06:44:21', '2021-08-13 06:44:21');

-- END TABLE product_id_list

-- BEGIN TABLE product_page
DROP TABLE IF EXISTS product_page;
CREATE TABLE `product_page` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_id` bigint NOT NULL,
  `price` int NOT NULL,
  `fee` int NOT NULL,
  `phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_pay` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserting 11 rows into product_page
-- Insert batch #1
INSERT INTO product_page (id, product_id, user_id, product, shipping, shipping_id, price, fee, phone, status_pay, created_at, updated_at) VALUES
(6, 1000001179, 1, 'Baju renang', 'jalan jalan jalan jalan jalan jalan jalan jalan jalan jalan', 0, 100000, 0, '0', 2, '2021-08-12 07:36:21', '2021-08-12 07:39:35'),
(7, 1000003627, 1, 'Jersey Real Madrid', 'Jalan Siaga H no 281 RT 02 Rw 06', 0, 50000, 0, '0', 1, '2021-08-12 12:22:11', '2021-08-12 14:31:51'),
(8, 1000005514, 1, 'Jersey Barcelona', 'Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan', 0, 50000, 0, '0', 1, '2021-08-12 12:28:30', '2021-08-12 14:31:51'),
(9, 1000008286, 1, 'handphone samsung', 'Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan', 0, 50000, 0, '0', 1, '2021-08-12 12:59:52', '2021-08-12 14:31:18'),
(10, 1000010622, 1, 'IPHONE 2021', 'jalan jalan jalan jalan jalan jalan', 0, 100000, 0, '0', 1, '2021-08-12 14:14:53', '2021-08-12 14:31:18'),
(11, 1000012753, 1, 'TV Panasonic', 'Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan', 0, 100000, 0, '0', 1, '2021-08-12 21:42:12', '2021-08-12 21:59:06'),
(12, 1000654853, 1, 'Jaket Kulit', 'jalan jalan jalan jalan jalan', 0, 50000, 0, '0', 2, '2021-08-12 22:22:42', '2021-08-12 22:23:24'),
(13, 1000704245, 1, NULL, NULL, 0, 10000, 500, '081287980134', 1, '2021-08-12 23:07:26', '2021-08-12 23:13:27'),
(14, 1000708527, 1, NULL, NULL, 0, 100000, 5000, '08189189182918', 2, '2021-08-12 23:20:40', '2021-08-12 23:20:46'),
(15, 1000720414, 1, NULL, NULL, 0, 100000, 5000, '081287980134', 2, '2021-08-13 06:42:39', '2021-08-13 06:42:50'),
(16, 1000726460, 1, 'Kacamata Baca', 'Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan Jalan', 30007388, 80000, 10000, NULL, 1, '2021-08-13 06:44:21', '2021-08-13 06:55:53');

-- END TABLE product_page

-- BEGIN TABLE shipping_id_list
DROP TABLE IF EXISTS shipping_id_list;
CREATE TABLE `shipping_id_list` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserting 2 rows into shipping_id_list
-- Insert batch #1
INSERT INTO shipping_id_list (id, product_id, created_at, updated_at) VALUES
(1, 30004642, '2021-08-13 06:43:53', '2021-08-13 06:43:53'),
(2, 30007388, '2021-08-13 06:44:21', '2021-08-13 06:44:21');

-- END TABLE shipping_id_list

-- BEGIN TABLE users
DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `phone` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Inserting 1 row into users
-- Insert batch #1
INSERT INTO users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, phone) VALUES
(1, 'Ari Umboro Seno', 'ariumboroseno@gmail.com', NULL, '$2y$10$zSPx9ZUSOcY6VldIaKvaou1kWy2mB6.8hmeuw9Ig079J52YSY2xiC', '1KAIHVbicS3QOodQIAU9oN5eEtDYpmW1wrvAQnvvQuFEcmZ9rqX3Y2IN4wN3', '2021-08-12 01:37:09', '2021-08-12 01:37:09', NULL);

-- END TABLE users
