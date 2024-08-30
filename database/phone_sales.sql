-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 19, 2024 lúc 05:44 PM
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
-- Cơ sở dữ liệu: `phone_sale`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `brands`
--

INSERT INTO `brand` (`id`, `brand_name`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Google'),
(4, 'OnePlus'),
(5, 'Huawei'),
(6, 'Xiaomi'),
(7, 'Oppo'),
(8, 'Vivo');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `category` (`id`, `category_name`) VALUES
(1, 'Điện thoại thông minh'),
(2, 'Điện thoại phổ thông'),
(3, 'Máy tính bảng'),
(4, 'Đồng hồ thông minh'),
(5, 'Phụ kiện');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `product_name`, `description`, `price`, `brand_id`, `category_id`) VALUES
(1, 'iPhone 13', 'Điện thoại thông minh hàng đầu mới nhất của Apple', 99900.00, 1, 1),
(2, 'Samsung Galaxy S22', 'Điện thoại thông minh Android cao cấp của Samsung', 79900.00, 2, 1),
(3, 'Google Pixel 6', 'Điện thoại thông minh Android có tính năng camera tiên tiến', 69900.00, 3, 1),
(4, 'OnePlus 9 Pro', 'Điện thoại thông minh Android cao cấp có sạc nhanh', 89900.00, 4, 1),
(5, 'Huawei Mate 40', 'Điện thoại thông minh Android cao cấp có tính năng camera tiên tiến', 79900.00, 5, 1),
(6, 'Xiaomi Redmi 9', 'Điện thoại thông minh Android giá rẻ của Xiaomi', 19900.00, 6, 1),
(7, 'Oppo Reno 5', 'Điện thoại thông minh Android tầm trung của Oppo', 49900.00, 7, 1),
(8, 'Vivo V20', 'Điện thoại thông minh Android tầm trung của Vivo', 39900.00, 8, 1),
(9, 'Apple Watch Series 7', 'Đồng hồ thông minh mới nhất của Apple', 39900.00, 1, 4),
(10, 'Samsung Galaxy Tab S8', 'Máy tính bảng Android cao cấp của Samsung', 69900.00, 2, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `brands`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
