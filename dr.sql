-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 15 Oca 2023, 13:54:04
-- Sunucu sürümü: 10.1.9-MariaDB
-- PHP Sürümü: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `dr`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_order`
--

CREATE TABLE `customer_order` (
  `ordernumber` int(11) NOT NULL,
  `customer_firstname` varchar(50) NOT NULL,
  `customer_lastname` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `total` float NOT NULL,
  `shipping_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `customer_order`
--

INSERT INTO `customer_order` (`ordernumber`, `customer_firstname`, `customer_lastname`, `phone`, `email`, `city`, `district`, `total`, `shipping_method`) VALUES
(18, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 10, 'Standart Kargo'),
(19, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 10, 'Standart Kargo'),
(20, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 10, 'Standart Kargo'),
(21, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 10, 'Standart Kargo'),
(22, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 10, 'Standart Kargo'),
(23, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 10, 'Standart Kargo'),
(24, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 229.35, 'Ucretsiz Kargo'),
(25, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 229.35, 'Ucretsiz Kargo'),
(26, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 92.75, 'Ucretsiz Kargo'),
(27, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 92.75, 'Ucretsiz Kargo'),
(28, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 92.75, 'Ucretsiz Kargo'),
(29, 'Hakan', 'Akgul', 2147483647, 'hakanakgul81@gmail.com', 'Istanbul', 'Gaziosmanpasa', 94.2, 'Ucretsiz Kargo');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `customer_order_lines`
--

CREATE TABLE `customer_order_lines` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `customer_order_lines`
--

INSERT INTO `customer_order_lines` (`order_product_id`, `order_id`, `product_id`, `name`, `quantity`, `price`, `total`) VALUES
(19, 18, 1, '?nce Memed', 1, 48.75, 48.75),
(20, 18, 2, 'Tutunamayanlar', 2, 90.3, 180.6),
(21, 19, 1, '?nce Memed', 1, 48.75, 48.75),
(22, 19, 2, 'Tutunamayanlar', 2, 90.3, 180.6),
(23, 20, 1, '?nce Memed', 1, 48.75, 48.75),
(24, 20, 2, 'Tutunamayanlar', 2, 90.3, 180.6),
(25, 21, 1, '?nce Memed', 1, 48.75, 48.75),
(26, 21, 2, 'Tutunamayanlar', 2, 90.3, 180.6),
(27, 23, 1, '?nce Memed', 1, 48.75, 48.75),
(28, 23, 2, 'Tutunamayanlar', 2, 90.3, 180.6),
(29, 24, 1, '?nce Memed', 1, 48.75, 48.75),
(30, 24, 2, 'Tutunamayanlar', 2, 90.3, 180.6),
(31, 27, 4, 'Fareler ve ?nsanlar', 1, 35.75, 35.75),
(32, 27, 6, 'Sen Yola Ç?k Yol Sana Görünür', 2, 28.5, 57),
(33, 29, 8, 'Allah De Ötesini B?rak', 1, 39.6, 39.6),
(34, 29, 10, 'Benim Zürafam Uçabilir', 2, 27.3, 54.6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `title` varchar(250) CHARACTER SET latin1 NOT NULL,
  `category_id` int(11) NOT NULL,
  `category_title` varchar(250) CHARACTER SET latin1 NOT NULL,
  `author` varchar(250) CHARACTER SET latin1 NOT NULL,
  `list_price` float NOT NULL,
  `stock_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_turkish_ci;

--
-- Tablo döküm verisi `product`
--

INSERT INTO `product` (`product_id`, `title`, `category_id`, `category_title`, `author`, `list_price`, `stock_quantity`) VALUES
(1, '?nce Memed', 1, 'Roman', 'Ya?ar Kemal', 48.75, 10),
(2, 'Tutunamayanlar', 1, 'Roman', 'O?uz Atay', 90.3, 20),
(3, 'Kürk Mantolu Madonna', 1, 'Roman', 'Sabahattin Ali', 9.1, 12),
(4, 'Fareler ve ?nsanlar', 1, 'Roman', 'John Steinback', 35.75, 12),
(5, '?eker Portakal?', 1, 'Roman', 'Jose Mauro De Vasconcelos', 33, 10),
(6, 'Sen Yola Ç?k Yol Sana Görünür', 2, 'Ki?isel Geli?im', 'Hakan Mengüç', 28.5, 1),
(7, 'Kara Delikler', 3, 'Bilim', 'Stephen Hawking', 39, 2),
(8, 'Allah De Ötesini B?rak', 4, 'Din Tasavvuf', 'U?ur Ko?ar', 39.6, 17),
(9, 'A?k 5 Vakittir', 4, 'Din Tasavvuf', 'Mehmet Y?ld?z', 42, 9),
(10, 'Benim Zürafam Uçabilir', 4, 'Çocuk ve Gençlik', 'Mert Ar?k', 27.3, 10),
(11, 'Kuyucakl? Yusuf', 1, 'Roman', 'Sabahattin Ali', 10.4, 2),
(12, 'Kamyon - Seçme Öyküler', 5, 'Öykü', 'Sabahattin Ali', 9.75, 9),
(13, 'Kendime Dü?ünceler', 6, 'Felsefe', 'Marcus Aurelius', 14.4, 1),
(14, 'Denemeler - Hasan Ali Yücel Klasikleri', 6, 'Felsefe', 'Michel de Montaigne', 24, 4),
(15, 'Animal Farm', 1, 'Roman', 'George Orwell', 17.5, 1),
(16, 'Dokuzuncu Hariciye Ko?u?u', 1, 'Roman', 'Peyami Safa', 18.5, 0);

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`ordernumber`),
  ADD UNIQUE KEY `ordernumber` (`ordernumber`);

--
-- Tablo için indeksler `customer_order_lines`
--
ALTER TABLE `customer_order_lines`
  ADD PRIMARY KEY (`order_product_id`),
  ADD UNIQUE KEY `order_product_id` (`order_product_id`);

--
-- Tablo için indeksler `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_id` (`product_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `ordernumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- Tablo için AUTO_INCREMENT değeri `customer_order_lines`
--
ALTER TABLE `customer_order_lines`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
