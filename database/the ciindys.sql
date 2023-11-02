-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 02, 2023 lúc 05:27 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `the ciindys`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Thị Hồng Gấm', 'admin@gmail.com', '$2y$10$wkjMG/vGGEJ21wIARDJDiOZnBxO8p5eyDrc3gw.0E9.oKNKqp0QD.', '0888988788', NULL, 'không', 'Ninh Kiều Cần Thơ Việt Nam', '2023-11-02__admin.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(255) NOT NULL,
  `a_slug` varchar(255) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(255) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(2, 'THÁNG VÀNG ĐẠI LỄ SĂN SALE CỰC DỄ - GHẾ MASSAGE GIẢM ĐẾN 42%', 'thang-vang-dai-le-san-sale-cuc-de-ghe-massage-giam-den-42', 1, 1, 2, 0, 'Hình ảnh cờ đỏ sao vàng tung bay trên mọi nẻo đường Tổ Quốc đã góp phần tạo nên một bầu không khí hào hùng trong đại lễ kỷ niệm 45 năm giải phóng Miền Nam thống nhất toàn vẹn lãnh thổ Việt Nam. Hòa cùng không khí chào mừng đại lễ 30/4 - 1/5 giúp quý khách có những phút giây mua sắm thoải mái, KINGSPORT triển khai chương trình mang tên THÁNG VÀNG ĐẠI LỄ - SĂN SALE CỰC DỄ.', '2023-11-02__banner-02.png', '<p><strong>H&igrave;nh ảnh cờ đỏ sao v&agrave;ng tung bay tr&ecirc;n mọi nẻo đường Tổ Quốc đ&atilde; g&oacute;p phần tạo n&ecirc;n một bầu kh&ocirc;ng kh&iacute; h&agrave;o h&ugrave;ng trong đại lễ kỷ niệm 45 năm giải ph&oacute;ng Miền Nam thống nhất to&agrave;n vẹn l&atilde;nh thổ Việt Nam. H&ograve;a c&ugrave;ng kh&ocirc;ng kh&iacute; ch&agrave;o mừng đại lễ&nbsp;30/4 - 1/5 gi&uacute;p qu&yacute; kh&aacute;ch c&oacute; những ph&uacute;t gi&acirc;y mua sắm thoải m&aacute;i, KINGSPORT triển khai chương tr&igrave;nh mang t&ecirc;n&nbsp;<em>TH&Aacute;NG V&Agrave;NG ĐẠI LỄ - SĂN SALE CỰC DỄ.</em></strong></p>\r\n\r\n<p>Với sứ mệnh mang sức khỏe &ndash; hạnh ph&uacute;c &ndash; thịnh vương đến mọi nh&agrave;. Đồng thời, gi&uacute;p qu&yacute; kh&aacute;ch tiết kiệm thời gian v&agrave; t&agrave;i ch&iacute;nh khi đầu tư v&agrave;o việc chăm s&oacute;c sức khỏe KINGSPORT đ&atilde; triển khai chương tr&igrave;nh &ldquo;<em>Th&aacute;ng v&agrave;ng đại lễ - Săn sale cực dễ&rdquo;</em>&nbsp;với&nbsp;<a href=\"https://www.kingsport.vn/ghe-massage-kingsport-g38.html\"><strong>ưu đ&atilde;i si&ecirc;u khủng l&ecirc;n đến 42%</strong></a>&nbsp;d&agrave;nh cho kh&aacute;ch h&agrave;ng tham gia mua sắm tại c&aacute;c k&ecirc;nh online hoặc offline của KINGSPORT. Chương tr&igrave;nh &aacute;p dụng tr&ecirc;n to&agrave;n quốc v&agrave; k&eacute;o d&agrave;i từ ng&agrave;y 20/4/2020 &ndash; 20/5/2020(*).</p>', '2020-06-19 08:49:50', 0, 0, '2023-11-02 08:32:25'),
(4, 'Test', 'test', 0, 1, 2, 0, 'qsqdwqds x', '2023-11-02__banner-01.jpg', '<p>fvvsv</p>', '2023-11-02 08:32:51', 0, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(255) NOT NULL,
  `atb_slug` varchar(255) NOT NULL,
  `atb_type_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type_id`, `created_at`, `updated_at`) VALUES
(23, 'Đỏ', 'do', 2, '2023-01-19 08:15:45', NULL),
(26, 'Test', 'test', 1, '2023-04-15 01:46:46', '2023-11-02 08:18:54'),
(49, 'Test1', 'test1', 1, '2023-11-02 08:19:47', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_slug` varchar(255) NOT NULL,
  `c_avatar` varchar(255) DEFAULT NULL,
  `c_banner` varchar(255) DEFAULT NULL,
  `c_description` varchar(255) DEFAULT NULL,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_parent_id`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(16, 'danh mục test', 0, 'danh-muc-test', '2023-11-02__banner-02.png', NULL, NULL, 0, 1, '2023-11-02 07:51:38', '2023-11-02 07:52:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(255) DEFAULT NULL,
  `cmt_email` varchar(255) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `cmt_name`, `cmt_email`, `cmt_content`, `cmt_parent_id`, `cmt_product_id`, `cmt_admin_id`, `cmt_user_id`, `cmt_like`, `cmt_disk_like`, `created_at`, `updated_at`) VALUES
(9, NULL, NULL, 'hi', 0, 12, 0, 9, 0, 0, '2023-04-23 08:52:17', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(255) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(255) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cost_vc`
--

CREATE TABLE `cost_vc` (
  `id` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `cost_vc`
--

INSERT INTO `cost_vc` (`id`, `price`) VALUES
(1, 25000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(3, 'test', 1, '2023-04-22 23:24:00', '2023-04-29 22:23:00', 100, '2023-04-22 08:23:33', '2023-11-02 08:31:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(255) DEFAULT NULL,
  `e_banner` varchar(255) DEFAULT NULL,
  `e_link` varchar(255) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'sale 1', '2023-11-02__slide1.jpg', '/', 1, 0, 0, 0, '2023-11-02 08:40:49', '2023-11-02 08:40:49'),
(2, 'sale 2', '2023-11-02__slide2.jpg', '/', 0, 1, 0, 0, '2023-11-02 08:41:03', '2023-11-02 08:41:03'),
(3, 'sale 3', '2023-11-02__slide3.jpg', '/', 0, 0, 1, 0, '2023-11-02 08:41:14', '2023-11-02 08:41:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(255) NOT NULL,
  `k_slug` varchar(255) NOT NULL,
  `k_description` varchar(255) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `keywords`
--

INSERT INTO `keywords` (`id`, `k_name`, `k_slug`, `k_description`, `k_hot`, `created_at`, `updated_at`) VALUES
(10, 'Test', 'test', 'no', 0, '2023-04-16 01:11:49', '2023-11-02 08:20:35'),
(12, 'Tất', 'tat', NULL, 0, '2023-04-16 02:56:37', NULL),
(13, 'Test1', 'test1', 'no', 0, '2023-11-02 08:20:50', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(255) NOT NULL,
  `mn_slug` varchar(255) NOT NULL,
  `mn_avatar` varchar(255) DEFAULT NULL,
  `mn_banner` varchar(255) DEFAULT NULL,
  `mn_description` varchar(255) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin tức mới', 'tin-tuc-moi', NULL, NULL, NULL, 0, 1, '2020-06-19 08:38:59', '2023-04-23 08:39:59'),
(2, 'Sự Kiện', 'su-kien', NULL, NULL, NULL, 0, 1, '2020-06-19 08:39:22', '2023-04-15 10:31:24');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2018_02_02_041429_create_categories_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_02_02_155318_create_keywords_table', 1),
(5, '2020_02_03_145303_create_products_table', 1),
(6, '2020_02_06_165057_create_attributes_table', 1),
(7, '2020_02_06_184708_create_products_attributes_table', 1),
(8, '2020_02_08_005029_add_multiple_column_attribute_in_table_products', 1),
(9, '2020_02_09_073958_create_transactions_table', 1),
(10, '2020_02_09_074025_create_orders_table', 1),
(11, '2020_02_09_133309_create_products_keywords_table', 1),
(12, '2020_02_09_155308_create_admins_table', 1),
(13, '2020_02_09_180519_create_menus_table', 1),
(14, '2020_02_09_180620_create_articles_table', 1),
(15, '2020_02_12_100000_create_password_resets_table', 1),
(16, '2020_02_13_154148_alter_column_pro_number_in_table_product', 1),
(17, '2020_02_13_171036_create_slides_table', 1),
(18, '2020_02_14_121248_alter_column_a_position_in_table_articles', 1),
(19, '2020_02_15_053225_create_user_favourite_table', 1),
(20, '2020_02_15_191555_create_ratings_table', 1),
(21, '2020_02_17_162605_create_events_table', 1),
(22, '2020_02_18_152103_create_product_images_table', 1),
(23, '2020_02_24_222836_create_social_accounts_table', 1),
(24, '2020_03_08_104810_create_statics_table', 1),
(25, '2020_03_08_213403_alter_column_pro_age_review_in_table_product', 1),
(26, '2020_03_12_205704_create_contacts_table', 1),
(27, '2020_03_17_183239_create_comments_table', 1),
(28, '2020_03_22_003200_alter_column_spam_comment_ratings_in_table_users', 1),
(29, '2020_03_23_223714_alter_column_admin_in_table_admin', 1),
(30, '2020_04_09_231820_create_producer_table', 1),
(31, '2020_04_11_010440_create_types_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `od_size` varchar(50) DEFAULT NULL,
  `od_color` varchar(100) DEFAULT NULL,
  `od_gender` tinyint(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `od_size`, `od_color`, `od_gender`, `created_at`, `updated_at`) VALUES
(15, 10, 35, 10, 2, 90000, 'Test', 'Đỏ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('duocnvoit@gmail.com', '$2y$10$pbrzwKceNbJ/t6ay5uJODOz4bweHblK6bPysnuctlVyCFO58YkoSq', '2020-05-03 15:29:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_transaction_id` int(11) DEFAULT NULL,
  `p_user_id` int(11) DEFAULT NULL,
  `p_money` double(8,2) DEFAULT NULL COMMENT 'Số tiền thanh toán',
  `p_note` varchar(191) DEFAULT NULL COMMENT 'Nội dung thanh toán',
  `p_transaction_code` varchar(191) NOT NULL,
  `p_vnp_response_code` varchar(255) DEFAULT NULL COMMENT 'Mã phản hồi',
  `p_code_vnpay` varchar(255) DEFAULT NULL COMMENT 'Mã giao dịch vnpay',
  `p_code_bank` varchar(255) DEFAULT NULL COMMENT 'Mã ngân hàng',
  `p_time` datetime DEFAULT NULL COMMENT 'Thời gian chuyển khoản',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producer`
--

CREATE TABLE `producer` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pdr_name` varchar(255) NOT NULL,
  `pdr_slug` varchar(255) NOT NULL,
  `pdr_email` varchar(100) NOT NULL,
  `pdr_phone` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `producer`
--

INSERT INTO `producer` (`id`, `pdr_name`, `pdr_slug`, `pdr_email`, `pdr_phone`, `created_at`, `updated_at`) VALUES
(9, 'test', 'test', 'test@gmail.com', '0335445554', '2023-04-15 01:27:42', '2023-11-02 08:17:33');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(255) DEFAULT NULL,
  `pro_slug` varchar(255) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_avatar` varchar(255) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_admin_id`, `pro_sale`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_country`, `updated_at`) VALUES
(35, 'Test1 fyuk', 'test1-fyuk', 100000, 0, 16, 0, 10, '2023-11-02__banner-02.png', 1, 0, 1, 2, '<p>ykfyl&nbsp; blk</p>', '<p>hghkf</p>', 0, 0, 0, '2023-11-02 08:26:53', 100, 9, '2023-11-02 09:21:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(57, 3, 6),
(58, 3, 7),
(59, 3, 8),
(60, 3, 9),
(61, 4, 3),
(62, 4, 4),
(63, 4, 5),
(64, 4, 6),
(65, 4, 7),
(66, 4, 8),
(67, 4, 9),
(68, 4, 10),
(69, 5, 2),
(70, 5, 3),
(71, 5, 4),
(72, 5, 5),
(73, 6, 2),
(74, 6, 3),
(75, 6, 4),
(76, 6, 5),
(77, 6, 6),
(78, 6, 7),
(79, 7, 2),
(80, 7, 3),
(81, 7, 4),
(82, 7, 5),
(83, 7, 6),
(84, 7, 7),
(85, 2, 6),
(86, 2, 7),
(87, 2, 8),
(88, 2, 9),
(89, 2, 10),
(90, 1, 9),
(98, 8, 2),
(99, 8, 3),
(100, 8, 4),
(101, 8, 5),
(102, 8, 6),
(103, 8, 7),
(104, 8, 8),
(115, 10, 6),
(116, 10, 7),
(117, 10, 8),
(118, 9, 2),
(119, 9, 3),
(120, 9, 4),
(121, 9, 5),
(139, 11, 6),
(140, 11, 7),
(141, 11, 8),
(142, 11, 9),
(143, 11, 18),
(174, 13, 36),
(175, 13, 35),
(176, 13, 34),
(177, 13, 39),
(178, 13, 24),
(179, 13, 40),
(191, 14, 36),
(192, 14, 35),
(193, 14, 37),
(194, 12, 36),
(195, 12, 35),
(196, 12, 34),
(197, 12, 37),
(198, 12, 39),
(199, 12, 38),
(200, 12, 42),
(201, 12, 23),
(214, 15, 36),
(215, 15, 35),
(216, 15, 34),
(217, 15, 37),
(218, 15, 39),
(219, 15, 22),
(220, 16, 36),
(221, 16, 35),
(222, 16, 34),
(223, 16, 37),
(224, 16, 39),
(225, 16, 44),
(226, 17, 36),
(227, 17, 35),
(228, 17, 37),
(229, 17, 44),
(240, 18, 25),
(241, 18, 26),
(242, 18, 27),
(243, 18, 28),
(244, 18, 29),
(245, 18, 30),
(246, 18, 31),
(247, 18, 32),
(248, 18, 33),
(249, 18, 45),
(260, 19, 25),
(261, 19, 26),
(262, 19, 27),
(263, 19, 28),
(264, 19, 29),
(265, 19, 30),
(266, 19, 31),
(267, 19, 32),
(268, 19, 33),
(269, 19, 43),
(270, 20, 25),
(271, 20, 26),
(272, 20, 27),
(273, 20, 28),
(274, 20, 29),
(275, 20, 30),
(276, 20, 45),
(277, 21, 25),
(278, 21, 26),
(279, 21, 27),
(280, 21, 28),
(281, 21, 29),
(282, 21, 30),
(283, 21, 31),
(284, 21, 46),
(285, 22, 25),
(286, 22, 26),
(287, 22, 27),
(288, 22, 28),
(289, 22, 29),
(290, 22, 30),
(291, 22, 31),
(292, 22, 32),
(293, 22, 24),
(294, 23, 25),
(295, 23, 26),
(296, 23, 27),
(297, 23, 28),
(298, 23, 29),
(299, 23, 30),
(300, 23, 31),
(301, 23, 32),
(302, 23, 46),
(305, 24, 47),
(306, 24, 45),
(307, 25, 47),
(308, 25, 46),
(309, 26, 47),
(310, 26, 24),
(311, 27, 47),
(312, 27, 43),
(313, 28, 47),
(314, 28, 43),
(315, 29, 47),
(316, 29, 23),
(317, 30, 47),
(318, 30, 22),
(321, 31, 47),
(322, 31, 43),
(323, 32, 25),
(324, 32, 20),
(325, 33, 47),
(326, 33, 23),
(329, 34, 26),
(330, 34, 20),
(331, 35, 26),
(332, 35, 23);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_keywords`
--

INSERT INTO `products_keywords` (`id`, `pk_product_id`, `pk_keyword_id`) VALUES
(26, 3, 1),
(27, 3, 2),
(28, 4, 1),
(29, 4, 2),
(30, 4, 3),
(31, 5, 3),
(32, 6, 3),
(33, 2, 1),
(34, 2, 2),
(35, 1, 1),
(36, 1, 2),
(38, 8, 3),
(42, 10, 2),
(43, 9, 1),
(47, 11, 1),
(52, 13, 3),
(55, 14, 3),
(56, 12, 3),
(59, 15, 3),
(60, 16, 3),
(61, 17, 3),
(63, 18, 9),
(65, 19, 9),
(66, 20, 9),
(67, 21, 9),
(68, 22, 10),
(69, 23, 10),
(71, 24, 11),
(72, 25, 11),
(73, 26, 11),
(74, 27, 11),
(75, 28, 7),
(76, 29, 6),
(77, 30, 12),
(79, 31, 12),
(80, 32, 2),
(82, 34, 1),
(83, 35, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(255) DEFAULT NULL,
  `pi_slug` varchar(255) DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(7, 7, 12, 5, 0, NULL, '2023-04-15 04:37:22', '2023-04-15 04:37:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(255) DEFAULT NULL,
  `sd_link` varchar(255) DEFAULT NULL,
  `sd_image` varchar(255) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'slide 11', '/', '2023-11-02__slide1.jpg', 4, 1, 1, '2023-11-02 08:42:52', '2023-11-02 08:42:52'),
(2, 'slide 2', '/', '2023-11-02__slide2.jpg', 1, 1, 2, '2023-11-02 08:43:02', '2023-11-02 08:43:02'),
(3, 'slide 3', '/', '2023-11-02__slide3.jpg', 1, 1, 3, '2023-11-02 08:43:17', '2023-11-02 08:43:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(255) DEFAULT NULL,
  `s_slug` varchar(255) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(255) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng dẫn chi tiết mua hàng', NULL, 1, NULL, '<p>Khi mua h&agrave;ng bạn k&iacute;ch chọn size sản phẩm</p>\r\n\r\n<p>Tiếp theo đ&oacute; k&iacute;ch v&agrave;o mua ngay&nbsp;</p>', '2020-06-19 08:41:33', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(255) DEFAULT NULL,
  `tst_email` varchar(255) DEFAULT NULL,
  `tst_phone` varchar(255) DEFAULT NULL,
  `tst_address` varchar(255) DEFAULT NULL,
  `tst_note` varchar(255) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `tst_code` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `tst_code`, `created_at`, `updated_at`) VALUES
(10, 10, 180000, 'gấm', 'gam12@gmail.com', '03135168161', 'caev é', NULL, 3, 1, 'k8KPbNSbcSFd4rp', '2023-11-02 09:21:52', '2023-11-02 09:22:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `t_slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `types`
--

INSERT INTO `types` (`id`, `t_name`, `t_slug`, `created_at`, `updated_at`) VALUES
(1, 'Size', 'size', '2020-06-18 07:09:10', NULL),
(2, 'Màu sắc', 'mau-sac', '2020-07-03 17:28:58', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(9, 'vinh', 'vinh1808a@gmail.com', NULL, '$2y$10$xxEajLLrIXZ5V7gozOigFe3Bwh9tk.gp3WspD0lqwh0ltcEGzI/s6', '0396147266', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-04-23T15:00:01.579523Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-04-23T15:33:09.296193Z\"},{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Chrome\",\"browser_ver\":\"112.0.0.0\",\"time\":\"2023-04-23T15:45:45.872345Z\"}]', 1, NULL, '2023-04-23__255dfb0fdada2d8474cb.jpg', NULL, '2023-04-23 07:59:20', '2023-04-23 08:32:25'),
(10, 'gấm', 'gam12@gmail.com', NULL, '$2y$10$yU7iIoq.U/6Ad70Pl.L1aOoMJcVPSzfJYzk.JulT0prdmE6i69GMO', '03135168161', '[{\"device\":\"WebKit\",\"platform\":\"Windows\",\"platform_ver\":\"10.0\",\"browser\":\"Edge\",\"browser_ver\":\"118.0.2088.76\",\"time\":\"2023-11-02T16:20:23.400494Z\"}]', 0, NULL, '2023-11-02__admin.jpg', NULL, '2023-11-02 09:20:14', '2023-11-02 09:21:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_favourite`
--

INSERT INTO `user_favourite` (`id`, `uf_product_id`, `uf_user_id`) VALUES
(1, 2, 1),
(4, 4, 4),
(7, 4, 8),
(2, 10, 2),
(5, 10, 6),
(9, 35, 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_type_id_index` (`atb_type_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cost_vc`
--
ALTER TABLE `cost_vc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `producer`
--
ALTER TABLE `producer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `producer_pdr_slug_unique` (`pdr_slug`),
  ADD UNIQUE KEY `producer_pdr_email_unique` (`pdr_email`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`);

--
-- Chỉ mục cho bảng `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_t_name_unique` (`t_name`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `cost_vc`
--
ALTER TABLE `cost_vc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `producer`
--
ALTER TABLE `producer`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=333;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
