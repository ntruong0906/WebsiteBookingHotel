-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 05, 2025 lúc 04:05 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hbwebsite`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(2, 'nhattruong', '09062003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(107, 108, 'Phòng Vip 3', 1500000, 3000000, NULL, 'phan nhật trường', '0398897449', 'NA'),
(108, 109, 'Phòng Bình Dân', 800000, 1600000, NULL, 'phan nhật trường', '0398897449', 'NA'),
(109, 110, 'Phòng Vip 3', 1500000, 3000000, NULL, 'phan nhật trường', '0398897449', 'NA'),
(110, 111, 'Phòng Vip 3', 1500000, 3000000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai'),
(111, 112, 'Phòng Vip 3', 1500000, 3000000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai'),
(112, 113, 'Phòng Vip 3', 1500000, 1500000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai'),
(113, 114, 'Phòng Bình Dân', 800000, 6400000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai'),
(114, 115, 'Phòng Bình Dân', 800000, 7200000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai'),
(115, 116, 'Phòng Bình Dân', 800000, 2400000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai'),
(116, 117, 'Phòng Vip 3', 1500000, 4500000, NULL, 'phan nhật trường', '0398897449', 'NA'),
(117, 118, 'Phòng Vip 2', 1200000, 2400000, NULL, 'phan nhật trường', '0398897449', 'NA'),
(118, 119, 'Phòng Đơn', 500000, 1000000, NULL, 'phan nhật trường', '0398897449', 'NA'),
(119, 120, 'Phòng Đơn', 500000, 5000000, NULL, 'phan nhật trường', '0398897449', 'NA'),
(120, 121, 'Phòng Vip 3', 1500000, 1500000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai'),
(121, 122, 'Phòng Bình Dân', 800000, 800000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai'),
(122, 123, 'Phòng Vip 3', 1500000, 1500000, NULL, 'Tạ Tống Thành', '0902034008', 'Đồng Nai');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'Đã Đặt',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'Đã Đặt',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `rate_review` int(11) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `rate_review`, `datentime`) VALUES
(108, 12, 6, '2024-05-29', '2024-05-31', 1, NULL, 'Đã Thanh Toán', 'ORD_128717583', NULL, 3000000, 'TXN_SUCCESS', NULL, NULL, '2024-05-29 17:55:41'),
(109, 12, 3, '2024-05-29', '2024-05-31', 0, 0, 'Đã Huỷ', 'ORD_128400268', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-05-29 18:00:24'),
(110, 12, 6, '2024-05-29', '2024-05-31', 1, NULL, 'Đã Thanh Toán', 'ORD_127496571', NULL, 3000000, 'TXN_SUCCESS', NULL, 1, '2024-05-29 18:01:27'),
(111, 13, 6, '2024-05-29', '2024-05-31', 1, NULL, 'Đã Thanh Toán', 'ORD_136020935', NULL, 3000000, 'TXN_SUCCESS', NULL, 1, '2024-05-29 18:04:19'),
(112, 13, 6, '2024-05-29', '2024-05-31', 1, NULL, 'Đã Thanh Toán', 'ORD_135222900', NULL, 3000000, 'TXN_SUCCESS', NULL, 1, '2024-05-29 18:05:20'),
(113, 13, 6, '2024-05-31', '2024-06-01', 0, 0, 'Đã Huỷ', 'ORD_132465293', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-05-31 12:17:37'),
(114, 13, 3, '2024-06-06', '2024-06-14', 0, 0, 'Đã Huỷ', 'ORD_131970218', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-06-06 14:34:19'),
(115, 13, 3, '2024-06-08', '2024-06-17', 1, NULL, 'Đã Thanh Toán', 'ORD_13982758', NULL, 7200000, 'TXN_SUCCESS', NULL, NULL, '2024-06-08 19:39:14'),
(116, 13, 3, '2024-06-25', '2024-06-28', 0, 0, 'Đã Huỷ', 'ORD_13897455', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-06-08 19:39:51'),
(117, 12, 6, '2024-06-26', '2024-06-29', 0, NULL, 'Đã Đặt', 'ORD_128705975', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-06-08 19:40:21'),
(118, 12, 5, '2024-06-17', '2024-06-19', 0, NULL, 'Đã Xác Nhận Đặt Phòng', 'ORD_129194006', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-06-17 18:28:53'),
(119, 12, 8, '2024-06-17', '2024-06-19', 0, NULL, 'Đã Đặt', 'ORD_128591819', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-06-17 18:33:35'),
(120, 12, 8, '2024-06-17', '2024-06-27', 0, NULL, 'Đã Đặt', 'ORD_12570783', NULL, 0, 'Đã Đặt', NULL, NULL, '2024-06-17 18:33:48'),
(121, 13, 6, '2025-02-19', '2025-02-20', 0, NULL, 'Đã Đặt', 'ORD_139902171', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-02-19 10:22:30'),
(122, 13, 3, '2025-02-26', '2025-02-27', 0, NULL, 'Đã Đặt', 'ORD_135031411', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-02-26 10:53:25'),
(123, 13, 6, '2025-02-26', '2025-02-27', 0, NULL, 'Đã Đặt', 'ORD_137359227', NULL, 0, 'Đã Đặt', NULL, NULL, '2025-02-26 10:54:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(11, 'IMG_25287.png'),
(12, 'IMG_55098.png'),
(13, 'IMG_84626.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'Vũng Tàu,', 'https://goo.gl/maps/RvFRc2kyeJ3Hsq3VA', 84398897449, 84974562765, 'phannhattruong8291@gmail.com', 'https://www.facebook.com/', 'https://www.facebook.com/', '', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d125575.34820161667!2d107.04064981712412!3d10.403328076166348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31756fd4554f0cf5:0xb24fd23bf641fa40!2zVsWpbmcgVMOgdSwgQsOgIFLhu4thIC0gVsWpbmcgVMOgdSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1717505403698!');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(13, 'IMG_43553.svg', 'Wifi', 'Wifi trong khách sạn cho phép khách hàng kết nối internet không dây tốc độ cao, có thể truy cập vào các trang web yêu thích của họ, xem phim, nghe nhạc, tải xuống các tài liệu, và liên lạc với người thân và bạn bè. '),
(14, 'IMG_49949.svg', 'Điều Hoà', ' Khách hàng có thể dễ dàng điều chỉnh nhiệt độ và các tính năng khác trên điều hòa để đáp ứng các nhu cầu của họ và tạo ra một không gian nghỉ ngơi lý tưởng.'),
(15, 'IMG_41622.svg', 'Tivi', 'TV cung cấp cho khách hàng nhiều kênh truyền hình đa dạng và phong phú, bao gồm cả các kênh quốc tế và địa phương, các kênh phim, chương trình giải trí, tin tức, thể thao và giáo dục'),
(17, 'IMG_47816.svg', 'Spa', 'Tại spa, khách hàng có thể trải nghiệm các liệu pháp chăm sóc da, tắm thủy lực, massage và nhiều dịch vụ khác.'),
(18, 'IMG_96423.svg', 'Máy Sưởi', 'Máy sưởi phòng được thiết kế để giữ cho phòng ấm áp và thoải mái trong suốt mùa đông.'),
(19, 'IMG_27079.svg', 'Nóng Lạnh', 'Được trang bị các tính năng và thiết bị hiện đại như màn hình LCD hiển thị nhiệt độ, điều khiển từ xa, cảm biến nhiệt độ và chức năng tự động điều chỉnh nhiệt độ nước.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(18, 'Phòng Ngủ'),
(19, 'Ban Công'),
(20, 'Phòng Bếp'),
(21, 'Ghế sofa');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating_review`
--

CREATE TABLE `rating_review` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `review` varchar(200) NOT NULL,
  `seen` int(11) NOT NULL DEFAULT 0,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating_review`
--

INSERT INTO `rating_review` (`sr_no`, `booking_id`, `room_id`, `user_id`, `rating`, `review`, `seen`, `datentime`) VALUES
(15, 112, 6, 13, 5, 'rất đẹp', 0, '2024-06-08 19:39:25'),
(16, 111, 6, 13, 5, 'êm đẹp', 0, '2024-06-08 19:39:59'),
(17, 110, 6, 12, 3, 'cũng được, thoáng mát', 0, '2024-06-08 19:40:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(3, 'Phòng Bình Dân', 30, 800000, 4, 5, 3, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 0),
(4, 'Phòng VIP 1', 40, 1000000, 3, 5, 5, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dicta quia nisi voluptates impedit perspiciatis, nobis libero culpa error officiis totam?Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quos voluptate vero sed tempore illo atque beatae asperiores, adipisci dic', 1, 0),
(5, 'Phòng Vip 2', 40, 1200000, 3, 8, 6, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 0),
(6, 'Phòng Vip 3', 50, 1500000, 7, 9, 10, 'Các tiện nghi trong phòng khách sạn bao gồm các ghế sofa và bàn, tivi màn hình phẳng, minibar, két sắt, điều hòa, máy sưởi, hệ thống chiếu sáng, tủ quần áo và giường ngủ thoải mái.', 1, 0),
(7, 'Phòng Đơn', 20, 800000, 2, 2, 2, 'phòng rộng rãi', 1, 1),
(8, 'Phòng Đơn', 20, 500000, 2, 2, 2, 'rộng rãi thoáng mát', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(52, 4, 13),
(53, 4, 14),
(54, 4, 19),
(65, 3, 13),
(66, 3, 14),
(67, 3, 15),
(68, 5, 13),
(69, 5, 14),
(70, 5, 19),
(71, 6, 13),
(72, 6, 14),
(73, 6, 15),
(74, 6, 18),
(75, 6, 19),
(77, 8, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(36, 4, 18),
(37, 4, 19),
(38, 4, 20),
(46, 3, 18),
(47, 3, 20),
(48, 5, 18),
(49, 5, 19),
(50, 5, 21),
(51, 6, 18),
(52, 6, 19),
(53, 6, 20),
(54, 6, 21),
(56, 8, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(26, 3, 'IMG_95263.png', 1),
(27, 3, 'IMG_67237.png', 0),
(28, 4, 'IMG_45742.png', 0),
(29, 4, 'IMG_25983.png', 1),
(30, 5, 'IMG_61875.png', 1),
(31, 5, 'IMG_48729.png', 0),
(32, 6, 'IMG_96889.png', 0),
(33, 6, 'IMG_82238.jpg', 1),
(34, 8, 'IMG_71497.png', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(50) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, '2T Hotel', 'Khách sạn 2T Hotel là một trong những khách sạn hàng đầu tại Việt Nam, được thiết kế theo phong cách hiện đại và đầy đủ tiện nghi, với hệ thống phòng nghỉ sang trọng, nhà hàng, quầy bar, trung tâm thể dục và spa. Khách sạn có hơn 50 tầng', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(14, 'Tạ Tống Thành', 'IMG_47995.jpg'),
(15, 'Phan Nhật Trường', 'IMG_41363.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `is_verified` int(11) NOT NULL DEFAULT 0,
  `token` varchar(200) DEFAULT NULL,
  `t_expire` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `is_verified`, `token`, `t_expire`, `status`, `datentime`) VALUES
(12, 'phan nhật trường', 'phannhattruong8291@gmail.com', 'NA', '0398897449', 0, '2024-05-29', 'IMG_80988.jpg', '$2y$10$tmQu8l0A6NA0.CesL3DIVeBiO3wUGvoD128EPwZJ0QMQl3Ip2IRYS', 1, NULL, NULL, 1, '2024-05-29 17:54:28'),
(13, 'Tạ Tống Thành', 'tatongthanh03@gmail.com', 'Đồng Nai', '0902034008', 60, '2024-05-06', 'IMG_86827.jpg', '$2y$10$bxNCkpY3kTRFgLT2igj4UuuW5Xl0Ah0VKMMdhZPr8F2xYwREmxJTO', 1, NULL, NULL, 1, '2024-05-29 18:04:04');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `datentime`, `seen`) VALUES
(16, 'phan nhật trường', 'phannhattruong8291@gmail.com', 'phòng ngủ', 'mát mẻ, êm', '2024-05-30 10:57:57', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Chỉ mục cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `facilities id` (`facilities_id`),
  ADD KEY `room id` (`room_id`);

--
-- Chỉ mục cho bảng `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `features id` (`features_id`),
  ADD KEY `rm id` (`room_id`);

--
-- Chỉ mục cho bảng `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Chỉ mục cho bảng `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT cho bảng `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT cho bảng `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Các ràng buộc cho bảng `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Các ràng buộc cho bảng `rating_review`
--
ALTER TABLE `rating_review`
  ADD CONSTRAINT `rating_review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`),
  ADD CONSTRAINT `rating_review_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`),
  ADD CONSTRAINT `rating_review_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`);

--
-- Các ràng buộc cho bảng `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
