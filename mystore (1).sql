-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2024 at 06:32 PM
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
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'jandy', 'sachinjandyrhoods@gmail.com', '$2y$10$xqPMFwiWLUvnTWRLNaTa3.QbQewAVdzFH5i/nua4nqA.JMb9jAcuO'),
(2, 'jeffery', 'jeffrey@gmail.com', '$2y$10$fG8CRDEYuVhapPBEai3LhOBBt75tMp98k08lefFgo6HbYJbgxU73u'),
(3, 'vasanth', 'vasanth@gamil.com', '$2y$10$e8GOZ0NEcpuhyvOewcRK8uLcu0YtQHjAzZ.ZJl178L5CuRy0x67fa');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `brand_title`) VALUES
(12, 'Aroma Fruits'),
(13, 'Zudio'),
(14, 'Nike'),
(15, 'Titan'),
(16, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`product_id`, `ip_address`, `quantity`) VALUES
(21, '::1', 0),
(28, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(22, 'Fruits'),
(23, 'Watch'),
(24, 'Hoodies'),
(25, 'T-shirts'),
(26, 'Slippers'),
(27, 'Shoes'),
(28, 'Phants');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders_pending`
--

INSERT INTO `orders_pending` (`order_id`, `user_id`, `invoice_number`, `product_id`, `quantity`, `order_status`) VALUES
(9, 3, 138938788, 16, 1, 'pending'),
(10, 3, 526434013, 21, 2, 'pending'),
(11, 3, 189718662, 21, 1, 'pending'),
(12, 3, 1495843916, 20, 1, 'pending'),
(13, 3, 1869200863, 21, 1, 'pending'),
(14, 3, 576506343, 20, 2, 'pending'),
(15, 3, 806377582, 21, 1, 'pending'),
(16, 3, 305863840, 21, 1, 'pending'),
(17, 3, 1831613014, 21, 1, 'pending'),
(18, 3, 604228131, 28, 3, 'pending'),
(19, 3, 453048277, 22, 1, 'pending'),
(20, 3, 278913347, 23, 5, 'pending'),
(21, 3, 1963277976, 21, 10, 'pending'),
(22, 3, 297261332, 25, 3, 'pending'),
(23, 3, 639538918, 25, 1, 'pending'),
(24, 3, 144552294, 21, 1, 'pending'),
(25, 3, 571660669, 27, 3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(20, 'Apple', 'Leading innovator in consumer technology offering a range of devices and services.', 'Apple,sweet,red apple,green apple, tasty,fruits', 22, 12, 'apple-1.jpeg', 'apple-5.jpeg', 'apple-5.jpeg', 100, '2024-03-21 04:45:16', 'true'),
(21, 'Blue Berry', 'Versatile fruit known for its rich flavor and vibrant blue color.', 'blueberry, fruit, antioxidant, health, delicious, berry, fresh, sweet, nutritious', 22, 12, 'blueberry-2.jpeg', 'blueberry-3.jpeg', 'blueberry-4.jpeg', 100, '2024-03-20 12:40:55', 'true'),
(22, 'Apple Z9', 'Timepieces for every style and occasion, curated for discerning enthusiasts. ', 'Watch, timepieces, style, occasion, curated, enthusiasts.', 23, 15, 'Silicone Sport Replacement Watch Band Strap for Apple Watch Series 1, 2, 3, & 4 - 38mm, 40mm, 42mm, or 44mm (20-Colors), Adult Unisex, Size_38mm_40mm, White.jpeg', 'watch-2.jpeg', 'download (1).jpeg', 20000, '2024-03-22 03:58:49', 'true'),
(25, 'Slidders', 'Trendy and comfortable sliders for casual outings and lounging in style.', 'Sliders, trendy, comfortable, casual outings, lounging, style.', 26, 14, 'YEEZY SLIDE PURE (RESTOCK PAIR) - UK 9 - EU 43- US 9 (2).jpeg', 'YEEZY SLIDE PURE (RESTOCK PAIR) - UK 9 - EU 43- US 9 (2).jpeg', 'YEEZY SLIDE PURE (RESTOCK PAIR) - UK 9 - EU 43- US 9.jpeg', 700, '2024-03-20 17:22:21', 'true'),
(26, 'Slidders', 'Trendy and comfortable sliders for casual outings and lounging in style.', 'Sliders, trendy, comfortable, casual outings, lounging, style.', 26, 13, 'Velour Slippers (2).jpeg', 'Velour Slippers.jpeg', 'slidder.jpeg', 900, '2024-03-20 17:24:04', 'true'),
(27, 'Hoodie', 'Cozy and fashionable hooded sweatshirts for staying warm in any weather.', 'Hoodie, cozy, fashionable, hooded sweatshirts, staying warm, weather.', 24, 13, 'hoodie.jpeg', 'Drop Shoulder Hoodie - Black.jpeg', 'hoodie.jpeg', 2000, '2024-03-20 17:25:46', 'true'),
(28, 'White Sneakers', 'Stylish and comfortable sneakers for urban adventures and active lifestyles.', ' Sneakers, stylish, comfortable, urban adventures, active lifestyles.', 27, 14, 'sneaker.jpeg', 'British Comfortable Shoes (1).jpeg', 'British Comfortable Shoes.jpeg', 3000, '2024-03-20 17:27:58', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_orders`
--

INSERT INTO `user_orders` (`order_id`, `user_id`, `amount_due`, `invoice_number`, `total_products`, `order_date`, `order_status`) VALUES
(17, 3, 2100, 1831613014, 2, '2024-03-20 17:29:51', 'Complete'),
(18, 3, 75000, 604228131, 3, '2024-03-21 04:23:38', 'Complete'),
(19, 3, 20000, 453048277, 1, '2024-03-22 03:24:21', 'Complete'),
(20, 3, 3500, 278913347, 1, '2024-03-21 04:28:44', 'Complete'),
(21, 3, 1000, 1963277976, 1, '2024-03-22 03:24:27', 'Complete'),
(22, 3, 2100, 297261332, 1, '2024-03-22 03:22:45', 'Complete'),
(23, 3, 700, 639538918, 1, '2024-03-24 01:29:38', 'pending'),
(24, 3, 100, 144552294, 1, '2024-05-22 06:26:25', 'pending'),
(25, 3, 8700, 571660669, 2, '2024-05-22 06:28:05', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `user_payments`
--

CREATE TABLE `user_payments` (
  `payment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `invoice_number` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_payments`
--

INSERT INTO `user_payments` (`payment_id`, `order_id`, `invoice_number`, `amount`, `payment_mode`, `date`) VALUES
(1, 1, 1889300038, 200, 'Netbanking', '2024-03-18 17:34:09'),
(2, 2, 2109078041, 290, 'Netbanking', '2024-03-18 17:34:14'),
(3, 4, 2040420111, 200, 'Netbanking', '2024-03-18 17:37:37'),
(4, 5, 594415942, 190, 'Select Payment Mode', '2024-03-18 17:38:03'),
(5, 6, 1410111856, 870, 'Netbanking', '2024-03-18 17:38:51'),
(6, 7, 387507831, 2100, 'Select Payment Mode', '2024-03-20 06:49:28'),
(7, 8, 564161371, 2100, 'Payoffline', '2024-03-20 06:49:36'),
(8, 9, 138938788, 2100, 'Netbanking', '2024-03-20 12:43:15'),
(9, 10, 526434013, 400, 'Paypal', '2024-03-20 12:45:59'),
(10, 11, 189718662, 2200, 'Paypal', '2024-03-20 12:47:15'),
(11, 12, 1495843916, 100, 'Netbanking', '2024-03-20 12:50:02'),
(12, 13, 1869200863, 2200, 'UPI', '2024-03-20 15:29:21'),
(13, 17, 1831613014, 2100, 'Netbanking', '2024-03-20 17:29:51'),
(14, 18, 604228131, 75000, 'Netbanking', '2024-03-21 04:23:38'),
(15, 20, 278913347, 3500, 'Netbanking', '2024-03-21 04:28:44'),
(16, 20, 278913347, 3500, 'Paypal', '2024-03-21 04:31:16'),
(17, 22, 297261332, 2100, 'Cash on Delivery', '2024-03-22 03:22:45'),
(18, 19, 453048277, 20000, 'Paypal', '2024-03-22 03:24:21'),
(19, 21, 1963277976, 1000, 'Netbanking', '2024-03-22 03:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(3, 'sachin', 'sachinjandyrhoods@gmail.com', '$2y$10$dyj7Btbgfi/7IzPM8pHsXuCcckxp9WTeXy4YhnoNM7X8UC7PKVTVy', '1032308.jpg', '::1', '6/30,East street,Murugathuranpatty,dindugul', '9342960049'),
(5, 'jeffrey', 'jeffrey@gmail.com', '$2y$10$gJmlwmLoadTp0ZOCv7gLnujvz8UTT7Z4A1kgWq6txw9G8MFmxwpFq', 'Womens Bottoms.jpeg', '::1', '18/2,aliyabat street,koothandavam,aliyalur', '91335445182'),
(6, 'meera', 'meera@gmail.com', '$2y$10$W5ZwGFpzL2nxrxq6e/K5POSUXuNKFiS8HPtl3pCe/EE1q11H2gVJS', 'Screenshot 2024-05-22 095551.png', '::1', 'south street bessan nagar chennai', '9876543210');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_payments`
--
ALTER TABLE `user_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_payments`
--
ALTER TABLE `user_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
