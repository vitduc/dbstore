-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th2 08, 2022 lúc 01:55 PM
-- Phiên bản máy phục vụ: 5.7.33
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `eshop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(100) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `role`, `deleted_at`, `updated_at`, `created_at`) VALUES
(14, 'Admin', 'Admin', '202cb962ac59075b964b07152d234b70', '1', NULL, NULL, NULL),
(15, 'User', 'user@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', '2', NULL, NULL, NULL),
(16, 'ok', 'ok@gmail.com', 'admin', '1', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `img` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `preview_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `blog`
--

INSERT INTO `blog` (`id`, `name`, `img`, `content`, `preview_text`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'Adidas ra mắt ‘Meteorite Pack’ với X Speedflow dành cho Messi', '1641264384-article.jpg', '<p><em>Những trận đấu b&oacute;ng đ&aacute; tại m&ugrave;a giải mới lu&ocirc;n l&agrave; thời điểm quan trọng để c&aacute;c h&atilde;ng gi&agrave;y giới thiệu c&aacute;c bộ sưu tập mới của m&igrave;nh. Để chuẩn bị cho m&ugrave;a giải 2021-22 th&igrave; Adidas đ&atilde; cho ra mắt bộ sưu tập gi&agrave;y đ&aacute; b&oacute;ng với t&ecirc;n gọi &lsquo;Meteorite Pack&rsquo; với nhiều sự thay đổi mới mẻ.</em></p>\r\n\r\n<p><em>Ở bộ sưu tập mới n&agrave;y Adidas đ&atilde; ch&iacute;nh thức dừng sản xuất d&ograve;ng gi&agrave;y Nemeziz v&agrave; n&acirc;ng cấp d&ograve;ng gi&agrave;y Adidas X với phi&ecirc;n bản mới l&agrave; X Speedflow. Với việc dừng sản xuất Adidas Nemeziz th&igrave; Messi sẽ ch&iacute;nh thức chuyển sang sử dụng d&ograve;ng gi&agrave;y Adidas X Speedflow với nhiều phi&ecirc;n bản được thửa ri&ecirc;ng cho anh.</em></p>\r\n\r\n<p><em>Bộ sưu tập&nbsp;<strong>Adidas &lsquo;Meteorite Pack&rsquo;</strong>&nbsp;được thiết kế với gam m&agrave;u đỏ chủ đạo cho cả 3 d&ograve;ng gi&agrave;y. Kể từ bộ sưu tập n&agrave;y th&igrave; Adidas sẽ chỉ c&ograve;n ph&aacute;t triển 3 d&ograve;ng gi&agrave;y đ&aacute; b&oacute;ng chủ lực của h&atilde;ng l&agrave; X Speedflow, Predator Freak v&agrave; Copa Sense.</em></p>', '<p><span style=\"font-size:16px\"><em>Những trận đấu b&oacute;ng đ&aacute; tại m&ugrave;a giải mới lu&ocirc;n l&agrave; thời điểm quan trọng để c&aacute;c h&atilde;ng gi&agrave;y giới thiệu c&aacute;c bộ sưu tập mới của m&igrave;nh. Để chuẩn bị cho m&ugrave;a giải 2021-2022</em></span></p>', '2021-08-28 08:35:15', '2022-01-19', NULL),
(12, 'Giày Đá Bóng Sân Cỏ Nhân Tạo cho tiền vệ chọn thế nào?', '1641782721-article.jpg', '<p><em>B&oacute;ng đ&aacute; l&agrave; bộ m&ocirc;n thể thao tập thể c&oacute; nhiều người chơi với c&aacute;c vị tr&iacute; kh&aacute;c nhau. Với sự ph&acirc;n h&oacute;a r&otilde; r&agrave;ng c&aacute;c vị tr&iacute; trong đội h&igrave;nh b&oacute;ng đ&aacute; chuy&ecirc;n nghiệp khiến c&aacute;c h&atilde;ng sản xuất gi&agrave;y cố gắng cải tiến để tạo ra những mẫu gi&agrave;y hỗ trợ chơi b&oacute;ng tốt nhất.</em></p>\r\n\r\n<p><em>Tuy nhi&ecirc;n sự thật th&igrave; c&aacute;c h&atilde;ng sản xuất gi&agrave;y b&oacute;ng đ&aacute; đang&nbsp;<strong>kh&ocirc;ng sản xuất gi&agrave;y theo vị tr&iacute;</strong>&nbsp;kh&aacute;c nhau m&agrave; chỉ sản xuất gi&agrave;y&nbsp;<strong>hỗ trợ chơi b&oacute;ng với c&aacute;c phong c&aacute;ch kh&aacute;c nhau</strong>. Điều n&agrave;y được &aacute;p dụng cho b&oacute;ng đ&aacute; chuy&ecirc;n nghiệp v&agrave; cả trong b&oacute;ng đ&aacute; kh&ocirc;ng chuy&ecirc;n tr&ecirc;n s&acirc;n cỏ nh&acirc;n tạo.</em></p>\r\n\r\n<p><em>Nội dung b&agrave;i viết n&agrave;y sẽ giới thiệu về c&aacute;ch chọn&nbsp;<strong>gi&agrave;y đ&aacute; b&oacute;ng s&acirc;n cỏ nh&acirc;n tạo cho tiền vệ</strong>&nbsp;với c&aacute;c phong c&aacute;ch chơi b&oacute;ng kh&aacute;c nhau. C&acirc;u hỏi&nbsp;<strong>chọn gi&agrave;y đ&aacute; banh s&acirc;n cỏ nh&acirc;n tạo cho tiền vệ chọn thế n&agrave;o</strong>&nbsp;sẽ được giải th&iacute;ch v&agrave; trả lời một c&aacute;ch đơn giản, r&otilde; r&agrave;ng nhất. Hy vọng b&agrave;i viết sẽ gi&uacute;p c&aacute;c bạn tự tin, dễ d&agrave;ng hơn khi chọn mua gi&agrave;y để chơi b&oacute;ng nh&eacute;.</em></p>', '<p><em>B&oacute;ng đ&aacute; l&agrave; bộ m&ocirc;n thể thao tập thể c&oacute; nhiều người chơi với c&aacute;c vị tr&iacute; kh&aacute;c nhau. Với sự ph&acirc;n h&oacute;a r&otilde; r&agrave;ng c&aacute;c vị tr&iacute; trong đội h&igrave;nh b&oacute;</em></p>', '2021-08-28 08:37:57', '2022-01-10', NULL),
(13, 'Bộ sưu tập Nike ‘Motivation Pack’ mới mở đầu mùa giải 2021', '1641258183-article.jpg', '<p><em>Sau một m&ugrave;a giải Euro đầy s&ocirc;i động v&agrave; v&agrave;i tuần tạm nghỉ th&igrave; b&oacute;ng đ&aacute; đ&atilde; trở lại tr&ecirc;n khắp thế giới. C&aacute;c giải đấu h&agrave;ng đầu thế giới đ&atilde; trở lại với những trận đấu rất hấp dẫn v&agrave;o mỗi cuối tuần.</em></p>\r\n\r\n<p><em>Để chuẩn bị cho sự trở lại của b&oacute;ng đ&aacute; th&igrave; Nike ra mắt bộ sưu tập &lsquo;Motivation Pack&rsquo; với những gam m&agrave;u đẹp mắt đầy ấn tượng. Kh&ocirc;ng chỉ c&oacute; sự n&acirc;ng cấp về thiết kế m&agrave; c&aacute;c mẫu&nbsp;<a href=\"https://giaydabongtot.com/giay-da-bong-nike\"><strong>gi&agrave;y đ&aacute; banh Nike</strong></a>&nbsp;trong bộ sưu tập n&agrave;y cũng được n&acirc;ng cấp rất nhiều với những phi&ecirc;n bản mới.</em></p>\r\n\r\n<p><em>Nội dung b&agrave;i viết n&agrave;y ch&uacute;ng ta c&ugrave;ng soi qua về vẻ đẹp rực rỡ của bộ sưu tập Nike &lsquo;Motivation Pack&rsquo; nh&eacute;. C&ugrave;ng với đ&oacute; sẽ t&igrave;m hiểu kỹ hơn về sự n&acirc;ng cấp về thiết kế, c&ocirc;ng nghệ cũng như chất liệu của c&aacute;c mẫu gi&agrave;y trong bộ sưu tập tuyệt vời n&agrave;y nh&eacute;.</em></p>', '<p><em>Sau một m&ugrave;a giải <strong>Euro</strong> đầy s&ocirc;i động v&agrave; v&agrave;i tuần tạm nghỉ th&igrave; b&oacute;ng đ&aacute; đ&atilde; trở lại tr&ecirc;n khắp thế giới. C&aacute;c giải đấu h&agrave;ng đầu thế giới đ&atilde; trở lại với những trận đấu r</em></p>', '2021-08-30 02:06:31', '2022-01-04', NULL),
(14, 'duc', '1641179662-article.jpg', '<p>f</p>', '<p>fa</p>', '2022-01-02 20:07:35', '2022-01-03', '2022-01-03'),
(15, 'Rò rỉ hình ảnh thực tế của Galaxy Tab S8 series, SamFan “gom lúa” thôi nào!!!', '1641438097-article.jpg', '<p><span style=\"font-size:16px\">Dự kiến, series n&agrave;y sẽ bao gồm 3 th&agrave;nh vi&ecirc;n l&agrave; Galaxy Tab S8, Tab S8+ v&agrave; Tab S8 Ultra. H&ocirc;m nay, nguồn tin đến từ trang Mysmartprice vừa tiết lộ th&ocirc;ng tin cho biết h&igrave;nh ảnh c&aacute;c m&aacute;y t&iacute;nh bảng n&agrave;y vừa được đăng tải tr&ecirc;n chứng nhận SafetyKorea.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Cụ thể, danh s&aacute;ch chứng nhận SafetyKorea x&aacute;c nhận thiết kế&nbsp;<a href=\"https://cellphones.com.vn/man-hinh.html\" title=\"màn hình\">m&agrave;n h&igrave;nh</a>&nbsp;ph&iacute;a trước của ba chiếc tablet Galaxy Tab S8 sắp tới. Theo r&ograve; rỉ, biến thể Galaxy Tab S8 ti&ecirc;u chuẩn sẽ đi k&egrave;m số model l&agrave; SM-X706N, c&oacute; viền bezel kh&aacute; d&agrave;y ở mặt trước v&agrave;&nbsp;<a href=\"https://cellphones.com.vn/phu-kien/camera.html\" title=\"camera\">camera</a>&nbsp;selfie nằm ở cạnh phải khi cầm m&aacute;y sử dụng theo chiều dọc.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mặt kh&aacute;c, Galaxy Tab S8+ c&oacute; số model SM-X806N, đi k&egrave;m viền bezel mỏng đều ở c&aacute;c cạnh của mặt trước v&agrave; camera selfie nằm ở cạnh phải. C&ograve;n model &ldquo;Ultra&rdquo; sở hữu số model SM-X906N, c&oacute; viền bezel mỏng hơn so với hai m&aacute;y t&iacute;nh bảng c&ograve;n lại. H&igrave;nh ảnh thiết kế bị r&ograve; rỉ cho thấy Tab S8 Ultra sẽ c&oacute; notch h&igrave;nh giọt nước ở cạnh phải của m&agrave;n h&igrave;nh để chứa camera trước. Trang web chứng nhận SafetyKorea kh&ocirc;ng tiết lộ th&ocirc;ng tin g&igrave; kh&aacute;c về cấu h&igrave;nh c&aacute;c m&aacute;y t&iacute;nh bảng Galaxy Tab S8 sắp tới.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Như đ&atilde; đề cập ở tr&ecirc;n,&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" title=\"Samsung\">Samsung</a>&nbsp;nhiều khả năng sẽ ch&iacute;nh thức ra mắt d&ograve;ng Galaxy Tab S8 c&ugrave;ng với d&ograve;ng Galaxy S22 v&agrave;o th&aacute;ng 2 tới đ&acirc;y. H&atilde;y c&ugrave;ng chờ xem c&ocirc;ng ty H&agrave;n Quốc n&agrave;y sẽ mang đến những bất ngờ g&igrave; cho người h&acirc;m mộ nh&eacute;!</span></p>', '<p><em><span style=\"font-size:16px\">Nếu c&aacute;o b&aacute;o c&aacute;o trước đ&acirc;y ch&iacute;nh x&aacute;c th&igrave;&nbsp;<a href=\"https://cellphones.com.vn/mobile/samsung.html\" rel=\"external noopener noreferrer\" target=\"_blank\">Samsung</a>&nbsp;sẽ ch&iacute;nh thức ra mắt c&aacute;c&nbsp;<a href=\"https://cellphones.com.vn/tablet.html\" title=\"máy tính bảng\">m&aacute;y t&iacute;nh bảng</a>&nbsp;tiếp theo của m&igrave;nh l&agrave; d&ograve;ng Galaxy Tab S8 v&agrave;o th&aacute;ng 2 năm nay.</span></em></p>', '2022-01-05 20:01:37', '2022-01-06', NULL),
(16, 'Vivo ra mắt V23 5G và V23 Pro: Màn hình AMOLED 90Hz, MediaTek Dimensity 1200, giá từ 9.2 triệu đồng', '1641438371-article.jpg', '<p><span style=\"font-size:16px\">Về cấu h&igrave;nh, thiết bị sử dụng bộ vi xử l&yacute; MediaTek Dimensity 920 đi k&egrave;m với đ&oacute; l&agrave; 8GB/12GB RAM v&agrave; 128GB/256GB bộ nhớ trong. Chiếc m&aacute;y hỗ trợ t&iacute;nh năng mở rộng th&ecirc;m 4GB RAM. Khi b&aacute;n ra điện thoại được c&agrave;i đặt sẵn giao diện người d&ugrave;ng FunTouch OS 12 tr&ecirc;n nền hệ điều h&agrave;nh Android 12.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mặt lưng l&agrave; nơi đặt bộ ba&nbsp;camera&nbsp;bao gồm cảm biến ch&iacute;nh độ ph&acirc;n giải 64MP, ống k&iacute;nh g&oacute;c si&ecirc;u rộng 8MP v&agrave; camera macro 2MP. Mặt trước l&agrave; nơi đặt bộ đ&ocirc;i camera bao gồm cảm biến ch&iacute;nh độ ph&acirc;n giải 44MP v&agrave; ống k&iacute;nh g&oacute;c si&ecirc;u rộng 8MP.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Vi&ecirc;n pin c&oacute; dung lượng 4200mAh hỗ trợ sạc nhanh với c&ocirc;ng suất 44W. Chiếc m&aacute;y c&oacute; k&iacute;ch thước 157.20 x 72.42 &times;7.39mm v&agrave; nặng 179 gram.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Vivo V23 Pro 5G</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Vivo V23 Pro 5G được trang bị m&agrave;n h&igrave;nh AMOLED cong với k&iacute;ch thước 6.56 inch độ ph&acirc;n giải Full HD+, tần số qu&eacute;t 90Hz, tần số cảm ứng 240Hz v&agrave; HDR10+.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Về cấu h&igrave;nh, thiết bị sử dụng bộ vi xử l&yacute; MediaTek Dimensity 1200 đi k&egrave;m với đ&oacute; l&agrave; 8GB/12GB RAM v&agrave; 128GB/256GB bộ nhớ trong. Chiếc m&aacute;y hỗ trợ t&iacute;nh năng mở rộng th&ecirc;m 4GB RAM. Khi b&aacute;n ra điện thoại được c&agrave;i đặt sẵn giao diện người d&ugrave;ng FunTouch OS 12 tr&ecirc;n nền hệ điều h&agrave;nh Android 12.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mặt lưng l&agrave; nơi đặt bộ ba camera bao gồm cảm biến ch&iacute;nh độ ph&acirc;n giải 108MP, ống k&iacute;nh g&oacute;c si&ecirc;u rộng 8MP v&agrave; camera macro 2MP. Mặt trước l&agrave; nơi đặt bộ đ&ocirc;i camera bao gồm cảm biến ch&iacute;nh độ ph&acirc;n giải 50MP v&agrave; ống k&iacute;nh g&oacute;c si&ecirc;u rộng 8MP.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Vi&ecirc;n pin c&oacute; dung lượng 4300mAh hỗ trợ sạc nhanh với c&ocirc;ng suất 44W. Điện thoại c&oacute; k&iacute;ch thước 159.46 x 73.27 &times; 7.36mm v&agrave; nặng 171 gram.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Gi&aacute; b&aacute;n</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Vivo V23 series c&oacute; hai lựa chọn m&agrave;u sắc bao gồm Sunshine Gold v&agrave; Stardust Black. Dưới đ&acirc;y l&agrave; gi&aacute; b&aacute;n chi tiết cho từng phi&ecirc;n bản:</span></p>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><strong>Vivo V23 5G</strong></span>\r\n\r\n	<ul>\r\n		<li><span style=\"font-size:16px\">8GB RAM + 128GB bộ nhớ trong: 29990 Rs (khoảng 9.2 triệu đồng).</span></li>\r\n		<li><span style=\"font-size:16px\">12GB RAM + 256GB bộ nhớ trong: 34990 Rs (khoảng 10.7 triệu đồng).</span></li>\r\n	</ul>\r\n	</li>\r\n	<li><span style=\"font-size:16px\"><strong>Vivo V23 Pro 5G</strong></span>\r\n	<ul>\r\n		<li><span style=\"font-size:16px\">8GB RAM + 128GB bộ nhớ trong: 38990 Rs (khoảng 12 triệu đồng)</span></li>\r\n		<li><span style=\"font-size:16px\">12GB RAM + 256GB bộ nhớ trong: 43990 Rs (khoảng 13.5 triệu đồng).</span></li>\r\n	</ul>\r\n	</li>\r\n</ul>', '<p><span style=\"font-size:14px\">H&ocirc;m nay,&nbsp;Vivo&nbsp;đ&atilde; tr&igrave;nh l&agrave;ng V23 series tại thị trường Ấn Độ. D&ograve;ng sản phẩm bao gồm&nbsp;Vivo V23 5G&nbsp;v&agrave; Vivo V23 Pro 5G.</span></p>', '2022-01-05 20:06:11', '2022-01-14', NULL),
(17, 'Trên tay realme GT2 Pro: Thiết kế mặt lưng “giả giấy”, có camera hiển vi như OPPO Find X3 Pro', '1641442059-article.jpg', '<p><span style=\"font-size:16px\">Mới đ&acirc;y,&nbsp;<a href=\"https://cellphones.com.vn/mobile/realme.html\" title=\"realme\">realme</a>&nbsp;đ&atilde; giới thiệu d&ograve;ng realme GT2 series cao cấp ho&agrave;n to&agrave;n mới tại thị trường Trung Quốc. realme GT2 series bao gồm hai phi&ecirc;n bản: GT2 v&agrave; GT2 Pro, trong đ&oacute; bản Pro l&agrave; bản cao cấp nhất với th&ocirc;ng số phần cứng hấp dẫn, trong khi mức gi&aacute; của sản phẩm lại tương đối hấp dẫn.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Về cơ bản, cả hai bản GT2 v&agrave; GT2 Pro đều sở hữu ng&ocirc;n ngữ thiết kế gần như giống hệt nhau, đều được lấy cảm hứng từ chiếc realme GT Neo2. Sự kh&aacute;c biệt giữa hai phi&ecirc;n bản n&agrave;y chỉ tới từ k&iacute;ch thước&nbsp;<a href=\"https://cellphones.com.vn/man-hinh.html\" title=\"màn hình\">m&agrave;n h&igrave;nh</a>&nbsp;cũng như một v&agrave;i th&ocirc;ng số phần cứng b&ecirc;n trong. Sẽ c&oacute; bốn t&ugrave;y chọn m&agrave;u sắc, bao gồm m&agrave;u trắng, xanh lục, đen v&agrave; xanh dương, trong đ&oacute; hai phi&ecirc;n bản m&agrave;u trắng v&agrave; m&agrave;u xanh lục sử dụng mặt lưng với họa tiết v&agrave; bề mặt nh&aacute;m tương tự như tờ giấy vẽ, hai t&ugrave;y chọn c&ograve;n lại l&agrave; mặt lưng k&iacute;nh nh&aacute;m mờ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Theo realme, mặt lưng của GT2 series được ho&agrave;n thiện từ chất liệu polyme sinh học th&acirc;n thiện với m&ocirc;i trường, giảm thiểu tới 35% kh&iacute; thải carbon ra m&ocirc;i trường khi so s&aacute;nh với c&aacute;c chất liệu k&iacute;nh hoặc kim loại thường thấy tr&ecirc;n c&aacute;c d&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/mobile.html\" title=\"smartphone\">smartphone</a>&nbsp;kh&aacute;c. Bề mặt lưng n&agrave;y của m&aacute;y sờ v&agrave;o cho cảm gi&aacute;c kh&aacute; th&iacute;ch th&uacute; cũng như kh&ocirc;ng bị b&aacute;m mồ h&ocirc;i cũng như dấu v&acirc;n tay. Tuy nhi&ecirc;n chưa r&otilde; nếu bị b&aacute;m bẩn th&igrave; vệ sinh kiểu g&igrave;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><img alt=\"Sforum - Trang thông tin công nghệ mới nhất 006rUXYjly1gy1yk6wvrrj31900u0tbb Trên tay realme GT2 Pro: Thiết kế mặt lưng &quot;giả giấy&quot;, có camera hiển vi như OPPO Find X3 Pro, chip Snapdragon 8 Gen 1, giá từ 13.2 triệu đồng \" src=\"https://cellphones.com.vn/sforum/wp-content/uploads/2022/01/006rUXYjly1gy1yk6wvrrj31900u0tbb.jpg\" style=\"height:1080px; width:1620px\" title=\"Sforum - Trang thông tin công nghệ mới nhất 006rUXYjly1gy1yk6wvrrj31900u0tbb Trên tay realme GT2 Pro: Thiết kế mặt lưng &quot;giả giấy&quot;, có camera hiển vi như OPPO Find X3 Pro, chip Snapdragon 8 Gen 1, giá từ 13.2 triệu đồng \" /></span></p>\r\n\r\n<p><span style=\"font-size:16px\">Nổi bật ở mặt lưng n&agrave;y l&agrave; cụm&nbsp;<a href=\"https://cellphones.com.vn/phu-kien/camera.html\" title=\"camera\">camera</a>&nbsp;ch&iacute;nh được thiết kế hơi lồi l&ecirc;n một ch&uacute;t. Cụm camera ch&iacute;nh n&agrave;y bao gồm ba camera ch&iacute;nh: g&oacute;c rộng 50MP (Sony IMX766), g&oacute;c si&ecirc;u rộng 50MP với trường nh&igrave;n l&ecirc;n tới 150 độ, v&agrave; một ống k&iacute;nh hiển vi (chưa r&otilde; độ ph&acirc;n giải) c&oacute; độ ph&oacute;ng đại 40X gần tương tự như tr&ecirc;n&nbsp;<a href=\"https://cellphones.com.vn/mobile/oppo.html\" title=\"OPPO\">OPPO</a>&nbsp;Find X3 series. C&aacute;ch bố tr&iacute; camera gần tương đồng realme GT Neo2.</span></p>', '<p><span style=\"font-size:14px\">Realme GT2 Pro&nbsp;mang trong m&igrave;nh một thiết kế cao cấp, thời trang v&agrave; độc đ&aacute;o, k&egrave;m theo hiệu năng mạnh mẽ bậc nhất ở thời điểm hiện tại nhưng vẫn c&oacute; mức gi&aacute; hợp l&yacute;.</span></p>', '2022-01-05 21:07:39', '2022-01-14', NULL),
(18, 'nhombashop', '1642564665-article.jpg', '<p>b</p>', '<p>a</p>', '2022-01-18 20:57:45', '2022-01-19', '2022-01-19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `id_parent` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `cat`
--

INSERT INTO `cat` (`id`, `name`, `id_parent`, `deleted_at`, `created_at`, `updated_at`) VALUES
(41, 'Điện thoại', 0, NULL, '2021-12-31', '2021-12-31'),
(42, 'Laptop', 0, NULL, '2021-12-31', '2021-12-31'),
(43, 'Phụ Kiện', 0, NULL, '2021-12-31', '2021-12-31'),
(44, 'Samsung', 41, NULL, '2021-12-31', '2022-01-02'),
(45, 'iphone', 41, NULL, '2021-12-31', '2022-01-04'),
(46, 'Xiaomi', 41, NULL, '2021-12-31', '2022-01-02'),
(47, 'Dell', 42, NULL, '2021-12-31', '2022-01-02'),
(48, 'Asus', 42, NULL, '2021-12-31', '2022-01-02'),
(49, 'Cáp sạc', 43, NULL, '2021-12-31', '2021-12-31'),
(50, 'MacBook', 42, NULL, '2022-01-03', '2022-01-04'),
(51, 'Tai nghe', 43, NULL, '2022-01-05', '2022-01-05'),
(52, 'abc', 0, '2022-01-14', '2022-01-14', '2022-01-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `comment`, `id_blog`, `created_at`, `deleted_at`, `updated_at`) VALUES
(1, 'Đức', 'duc@gmail.com', 'quá hay', 10, '2022-01-11 04:48:29', NULL, NULL),
(2, 'chị a', 'a@gmail.com', 'ok ok ok', 10, '2022-01-11 06:46:55', NULL, NULL),
(3, 'duc', 'duc@gmail.com', 'okok test', 17, '2022-01-17 03:25:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `content` text NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `content`, `deleted_at`, `updated_at`, `created_at`) VALUES
(47, 'Đức', 'vitduc@gmail.com', '0911354558', 'Phát biểu tại hội nghị, GS.TS Lê Quân, Giám đốc ĐH Quốc gia Hà Nội (ĐHQGHN) cho biết, năm 2022, ĐHQGHN tăng cường sử ', NULL, NULL, NULL),
(48, 'Ngo Duc', 'user1@gmail.com', '1231231232', 'Phát biểu tại hội nghị, GS.TS Lê Quân, Giám đốc ĐH Quốc gia Hà Nội (ĐHQGHN) cho biết, năm 2022, ĐHQGHN tăng cường sử dụng kết quả kỳ thi Đánh giá năng lực (ĐGNL) làm cơ sở tuyển sinh đầu vào. Theo đó, các ngành có sức hút với xã hội sẽ được đẩy mạnh theo hình thức tuyển sinh qua kỳ thi ĐGNL để đảm bảo tiêu chuẩn sàn đầu vào. Trên cơ sở này, các trường thuộc ĐH QGHN có thể bổ sung thêm phương thức tuyển chọn cho phù hợp với năng lực đầu vào của từng ngành nghề. Giám đốc ĐHQGHN cũng mong muốn nhận được sự tham gia của các trường trong toàn quốc về kỳ thi ĐGNL để có tính cộng hưởng xã hội, tuyển sinh được thí sinh phù hợp tốt nhất. Các trường có thể phối hợp sử dụng kết quả ĐGNL của ĐHQGHN trong tuyển sinh và có thêm chính sách tuyển sinh riêng phù hợp với trường, tiến tới chủ động, tự chủ về phương thức tuyển sinh. ĐHQGHN sẽ xây dựng phần mềm để các trường đại học cùng tham gia vào đánh giá năng lực thí sinh. Hội nghị nhận được ý kiến chia sẻ của nhiều chuyên gia tuyển sinh, đào tạo, khảo thí về quy mô kỳ thi, tính khách quan, công bằng, giá trị của kết quả bài thi phục vụ tuyển sinh đại học. Nhiều trường đại học tiếp tục đề nghị tham gia phối hợp sâu với ĐQHGHN từ khâu tổ chức thi đến kết thúc các đợt xét tuyển trong năm. ĐHQGHN sẵn sàng hỗ trợ và tạo mọi điều kiện thuận lợi nhất cho thí sinh, chia sẻ tài nguyên, dữ liệu với các trường đại học trong công tác tuyển sinh đại học.', NULL, NULL, NULL),
(57, 'User', 'user1@gmail.com', '0999999999', 'Phát biểu tại hội nghị, GS.TS Lê Quân, Giám đốc ĐH Quốc gia Hà Nội (ĐHQGHN) cho biết, năm 2022, ĐHQGHN tăng cường sử dụng kết quả kỳ thi Đánh giá năng lực (ĐGNL) làm cơ sở tuyển sinh đầu vào. Theo đó, các ngành có sức hút với xã hội sẽ được đẩy mạnh theo hình thức tuyển sinh qua kỳ thi ĐGNL để đảm bảo tiêu chuẩn sàn đầu vào. Trên cơ sở này, các trường thuộc ĐH QGHN có thể bổ sung thêm phương thức tuyển chọn cho phù hợp với năng lực đầu vào của từng ngành nghề. Giám đốc ĐHQGHN cũng mong muốn nhận được sự tham gia của các trường trong toàn quốc ', NULL, NULL, NULL),
(59, 'User', 'user1@gmail.com', '0911354558', '', '2022-01-12', '2022-01-12', NULL),
(60, 'Ngo Duc', 'ngovietduc.b3@gmail.com', '0911354558', 'test', NULL, '2022-01-12', '2022-01-12'),
(61, 'Ngo Duc', 'ngovietduc.b3@gmail.com', '0911354558', 'test', NULL, '2022-01-12', '2022-01-12'),
(62, 'pickachu', 'user1@gmail.com', '0911354558', 'okok', NULL, '2022-01-12', '2022-01-12'),
(63, 'Ngo Duc', 'user1@gmail.com', '0911354558', 'không hiển thị thông báo', NULL, '2022-01-12', '2022-01-12'),
(64, 'Ngo Duc', 'user@gmail.com', '1123', 'okokkok', NULL, '2022-01-12', '2022-01-12'),
(65, 'nhombashop', 'nhom3@gmail.com', '0333333333', 'thông báo', NULL, '2022-01-16', '2022-01-16'),
(66, 'nhombashop', 'nhom3@gmail.com', '0911354558', '', NULL, NULL, NULL),
(67, 'User', 'user1@gmail.com', '0999999999', '', NULL, NULL, NULL),
(68, 'User', 'user1@gmail.com', '0911354558', '', NULL, NULL, NULL),
(69, 'Ngo Duc', 'user1@gmail.com', '0911354558', '2h44 ngày 25/1/2022', NULL, '2022-01-25', '2022-01-25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `password`, `deleted_at`, `updated_at`, `created_at`) VALUES
(3, 'duc', 'duc@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL),
(5, 'Đức', 'vitduc@gmail.com', '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL),
(6, 'User', 'user1@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, NULL),
(7, 'nhombashop', 'nhom3@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `img_products`
--

CREATE TABLE `img_products` (
  `id` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `img_products`
--

INSERT INTO `img_products` (`id`, `id_sp`, `img`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 3, '1641350758-product_detail.-_0000_iphone-12-pro-max-nonlogo-5_1_1.jpg', NULL, '2022-01-05', '2022-01-05'),
(2, 3, '1641350758-product_detail.-iphone_12_pro_max_white_1 (1).webp', NULL, '2022-01-05', '2022-01-05'),
(3, 3, '1641350758-product_detail.-iphone_12_pro_max_white_1.webp', NULL, '2022-01-05', '2022-01-05'),
(4, 3, '1641350758-product_detail.-iphone-12-pro-max_1__7_2.jpg', NULL, '2022-01-05', '2022-01-05'),
(5, 3, '1641350758-product_detail.-iphone-12-pro-max-3-org.jpg', NULL, '2022-01-05', '2022-01-05'),
(6, 3, '1641350758-product_detail.-iphone-12-pro-max-xanh-duong-2-org.jpg', NULL, '2022-01-05', '2022-01-05'),
(7, 1, '1641353246-product_detail.-iphone_13-_pro-1_2.jpg', NULL, '2022-01-05', '2022-01-05'),
(8, 1, '1641353246-product_detail.-iphone_13-_pro-2_2.jpg', NULL, '2022-01-05', '2022-01-05'),
(9, 1, '1641353246-product_detail.-iphone_13-_pro-3_2.jpg', NULL, '2022-01-05', '2022-01-05'),
(10, 1, '1641353246-product_detail.-iphone_13-_pro-4_2.jpg', NULL, '2022-01-05', '2022-01-05'),
(11, 1, '1641353246-product_detail.-iphone_13-_pro-5_4.jpg', NULL, '2022-01-05', '2022-01-05'),
(12, 1, '1641353246-product_detail.-iphone-13-pro-max-8_1.jpg', NULL, '2022-01-05', '2022-01-05'),
(13, 4, '1641353682-product_detail.-121.jpg', NULL, '2022-01-05', '2022-01-05'),
(14, 4, '1641353682-product_detail.-122.jpg', NULL, '2022-01-05', '2022-01-05'),
(15, 4, '1641353682-product_detail.-123.jpg', NULL, '2022-01-05', '2022-01-05'),
(16, 4, '1641353682-product_detail.-124.jpg', NULL, '2022-01-05', '2022-01-05'),
(17, 4, '1641353682-product_detail.-125.jpg', NULL, '2022-01-05', '2022-01-05'),
(18, 4, '1641353682-product_detail.-126.jpg', NULL, '2022-01-05', '2022-01-05'),
(19, 5, '1641353931-product_detail.-121.jpg', NULL, '2022-01-05', '2022-01-05'),
(20, 5, '1641353931-product_detail.-122.jpg', NULL, '2022-01-05', '2022-01-05'),
(21, 5, '1641353931-product_detail.-123.jpg', NULL, '2022-01-05', '2022-01-05'),
(22, 5, '1641353931-product_detail.-124.jpg', NULL, '2022-01-05', '2022-01-05'),
(23, 5, '1641353931-product_detail.-125.jpg', NULL, '2022-01-05', '2022-01-05'),
(24, 5, '1641353931-product_detail.-126.jpg', NULL, '2022-01-05', '2022-01-05'),
(25, 6, '1641354325-product_detail.-131.jpg', NULL, '2022-01-05', '2022-01-05'),
(26, 6, '1641354325-product_detail.-135.jpg', NULL, '2022-01-05', '2022-01-05'),
(27, 6, '1641354325-product_detail.-136.jpg', NULL, '2022-01-05', '2022-01-05'),
(28, 6, '1641354325-product_detail.-137.jpg', NULL, '2022-01-05', '2022-01-05'),
(29, 6, '1641354325-product_detail.-138.jpg', NULL, '2022-01-05', '2022-01-05'),
(30, 6, '1641354325-product_detail.-139.jpg', NULL, '2022-01-05', '2022-01-05'),
(31, 7, '1641354493-product_detail.-131.jpg', NULL, '2022-01-05', '2022-01-05'),
(32, 7, '1641354493-product_detail.-135.jpg', NULL, '2022-01-05', '2022-01-05'),
(33, 7, '1641354493-product_detail.-136.jpg', NULL, '2022-01-05', '2022-01-05'),
(34, 7, '1641354493-product_detail.-137.jpg', NULL, '2022-01-05', '2022-01-05'),
(35, 7, '1641354493-product_detail.-138.jpg', NULL, '2022-01-05', '2022-01-05'),
(36, 7, '1641354493-product_detail.-139.jpg', NULL, '2022-01-05', '2022-01-05'),
(37, 8, '1641354837-product_detail.-11.jpg', NULL, '2022-01-05', '2022-01-05'),
(38, 8, '1641354837-product_detail.-111.jpg', NULL, '2022-01-05', '2022-01-05'),
(39, 8, '1641354837-product_detail.-112.jpg', NULL, '2022-01-05', '2022-01-05'),
(40, 8, '1641354837-product_detail.-113.jpg', NULL, '2022-01-05', '2022-01-05'),
(41, 8, '1641354837-product_detail.-114.jpg', NULL, '2022-01-05', '2022-01-05'),
(42, 8, '1641354837-product_detail.-115.jpg', NULL, '2022-01-05', '2022-01-05'),
(43, 9, '1641355163-product_detail.-n20.1.jpg', NULL, '2022-01-05', '2022-01-05'),
(44, 9, '1641355163-product_detail.-n20.2.jpg', NULL, '2022-01-05', '2022-01-05'),
(45, 9, '1641355163-product_detail.-n20.jpg', NULL, '2022-01-05', '2022-01-05'),
(46, 9, '1641355163-product_detail.-n203.jpg', NULL, '2022-01-05', '2022-01-05'),
(47, 9, '1641355163-product_detail.-n204.webp', NULL, '2022-01-05', '2022-01-05'),
(48, 9, '1641355163-product_detail.-n205.jpg', NULL, '2022-01-05', '2022-01-05'),
(49, 10, '1641355430-product_detail.-z1.jpg', NULL, '2022-01-05', '2022-01-05'),
(50, 10, '1641355431-product_detail.-z11.jpg', NULL, '2022-01-05', '2022-01-05'),
(51, 10, '1641355431-product_detail.-z12.jpg', NULL, '2022-01-05', '2022-01-05'),
(52, 10, '1641355431-product_detail.-z13.jpg', NULL, '2022-01-05', '2022-01-05'),
(53, 10, '1641355431-product_detail.-z14.jpg', NULL, '2022-01-05', '2022-01-05'),
(54, 10, '1641355431-product_detail.-z15.jpg', NULL, '2022-01-05', '2022-01-05'),
(55, 11, '1641355663-product_detail.-n20.1.jpg', NULL, '2022-01-05', '2022-01-05'),
(56, 11, '1641355663-product_detail.-n20.2.jpg', NULL, '2022-01-05', '2022-01-05'),
(57, 11, '1641355663-product_detail.-n20.jpg', NULL, '2022-01-05', '2022-01-05'),
(58, 11, '1641355663-product_detail.-n203.jpg', NULL, '2022-01-05', '2022-01-05'),
(59, 11, '1641355663-product_detail.-n205.jpg', NULL, '2022-01-05', '2022-01-05'),
(60, 12, '1641355844-product_detail.-a1.jpg', NULL, '2022-01-05', '2022-01-05'),
(61, 12, '1641355844-product_detail.-a2.jpg', NULL, '2022-01-05', '2022-01-05'),
(62, 12, '1641355844-product_detail.-a3.jpg', NULL, '2022-01-05', '2022-01-05'),
(63, 12, '1641355844-product_detail.-a4.jpg', NULL, '2022-01-05', '2022-01-05'),
(64, 12, '1641355844-product_detail.-a5.jpg', NULL, '2022-01-05', '2022-01-05'),
(65, 12, '1641355844-product_detail.-a6.jpg', NULL, '2022-01-05', '2022-01-05'),
(66, 13, '1641356138-product_detail.-c1.jpg', NULL, '2022-01-05', '2022-01-05'),
(67, 13, '1641356138-product_detail.-c2.jpg', NULL, '2022-01-05', '2022-01-05'),
(68, 13, '1641356138-product_detail.-c3.jpg', NULL, '2022-01-05', '2022-01-05'),
(69, 13, '1641356138-product_detail.-c4.jpg', NULL, '2022-01-05', '2022-01-05'),
(70, 13, '1641356138-product_detail.-c5.jpg', NULL, '2022-01-05', '2022-01-05'),
(71, 13, '1641356138-product_detail.-c6.jpg', NULL, '2022-01-05', '2022-01-05'),
(72, 14, '1641356324-product_detail.-d1.jpg', NULL, '2022-01-05', '2022-01-05'),
(73, 14, '1641356324-product_detail.-d2.jpg', NULL, '2022-01-05', '2022-01-05'),
(74, 14, '1641356324-product_detail.-d3.jpg', NULL, '2022-01-05', '2022-01-05'),
(75, 14, '1641356324-product_detail.-d4.jpg', NULL, '2022-01-05', '2022-01-05'),
(76, 14, '1641356324-product_detail.-d5.jpg', NULL, '2022-01-05', '2022-01-05'),
(77, 14, '1641356324-product_detail.-d6.jpg', NULL, '2022-01-05', '2022-01-05'),
(78, 15, '1641356610-product_detail.-e2.jpg', NULL, '2022-01-05', '2022-01-05'),
(79, 15, '1641356610-product_detail.-e3.jpg', NULL, '2022-01-05', '2022-01-05'),
(80, 15, '1641356610-product_detail.-e4.jpg', NULL, '2022-01-05', '2022-01-05'),
(81, 15, '1641356610-product_detail.-e5.jpg', NULL, '2022-01-05', '2022-01-05'),
(82, 16, '1641356775-product_detail.-f1.jpg', NULL, '2022-01-05', '2022-01-05'),
(83, 16, '1641356775-product_detail.-f2.jpg', NULL, '2022-01-05', '2022-01-05'),
(84, 16, '1641356775-product_detail.-f3.jpg', NULL, '2022-01-05', '2022-01-05'),
(85, 16, '1641356775-product_detail.-f4.jpg', NULL, '2022-01-05', '2022-01-05'),
(86, 16, '1641356775-product_detail.-f5.jpg', NULL, '2022-01-05', '2022-01-05'),
(87, 17, '1641357029-product_detail.-x1.jpg', NULL, '2022-01-05', '2022-01-05'),
(88, 17, '1641357029-product_detail.-x2.jpg', NULL, '2022-01-05', '2022-01-05'),
(89, 17, '1641357029-product_detail.-x3.jpg', NULL, '2022-01-05', '2022-01-05'),
(90, 17, '1641357029-product_detail.-x4.jpg', NULL, '2022-01-05', '2022-01-05'),
(91, 18, '1641357203-product_detail.-s1.jpg', NULL, '2022-01-05', '2022-01-05'),
(92, 18, '1641357203-product_detail.-s2.jpg', NULL, '2022-01-05', '2022-01-05'),
(93, 18, '1641357203-product_detail.-s3.jpg', NULL, '2022-01-05', '2022-01-05'),
(94, 18, '1641357203-product_detail.-s4.jpg', NULL, '2022-01-05', '2022-01-05'),
(95, 19, '1641357375-product_detail.-w1.jpg', NULL, '2022-01-05', '2022-01-05'),
(96, 19, '1641357375-product_detail.-w2.jpg', NULL, '2022-01-05', '2022-01-05'),
(97, 19, '1641357375-product_detail.-w3.jpg', NULL, '2022-01-05', '2022-01-05');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(11) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `id_customer`, `phone`, `address`, `created_at`, `status`, `deleted_at`, `updated_at`) VALUES
(1233, 11, '0123456789', 'Nông Cống, Thanh Hóa, Việt Nam', '2022-01-02 17:00:00', 1, NULL, NULL),
(1234, 0, '0123456456', '218', '2022-01-25 01:04:07', 1, NULL, '2022-01-25'),
(1235, 14, '123', 'okok', '2022-01-25 01:06:28', 1, NULL, '2022-01-25'),
(1236, 14, '0123456456', 'test', '2022-01-25 01:08:29', 1, NULL, '2022-01-25'),
(1237, 14, '0123456456', 'qe', '2022-01-25 01:08:52', 1, NULL, '2022-01-25'),
(1238, 11, '123', 'thanh hóa', '2022-01-25 19:10:31', 1, NULL, '2022-01-26'),
(1239, 11, '123', 'thanh hóa', '2022-01-25 19:13:44', 1, NULL, '2022-01-26'),
(1240, 11, '123', 'thanh hóa', '2022-01-25 19:14:41', 1, NULL, '2022-01-26'),
(1241, 11, '123', 'thanh hóa', '2022-01-25 19:15:51', 1, NULL, '2022-01-26'),
(1242, 11, '123', 'việt nam', '2022-01-25 19:18:58', 1, NULL, '2022-01-26'),
(1243, 15, '0911354558', 'năm mới 2022', '2022-01-31 11:07:22', 1, NULL, '2022-01-31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `id_order` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `deleted_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `id_order`, `id_sp`, `qty`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1233, 1, 2, NULL, NULL, NULL),
(3, 1233, 2, 5, NULL, NULL, NULL),
(4, 1240, 1, 1, '2022-01-26', '2022-01-26', NULL),
(5, 1240, 3, 1, '2022-01-26', '2022-01-26', NULL),
(6, 1241, 1, 3, '2022-01-26', '2022-01-26', NULL),
(7, 1241, 3, 1, '2022-01-26', '2022-01-26', NULL),
(8, 1242, 1, 2, '2022-01-26', '2022-01-26', NULL),
(9, 1242, 2, 1, '2022-01-26', '2022-01-26', NULL),
(10, 1242, 17, 1, '2022-01-26', '2022-01-26', NULL),
(11, 1242, 19, 1, '2022-01-26', '2022-01-26', NULL),
(12, 1243, 15, 1, '2022-01-31', '2022-01-31', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `name_product` varchar(255) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `preview` varchar(255) NOT NULL,
  `detail` text NOT NULL,
  `sp_hot` int(11) NOT NULL,
  `deleted_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `id_cat`, `name_product`, `image`, `price`, `price_sale`, `qty`, `preview`, `detail`, `sp_hot`, `deleted_at`, `updated_at`, `created_at`) VALUES
(1, 45, 'Iphone 13 Pro Max', '1641352403-product.jpg', 35000000, 34999000, 10, '<p><strong>iPhone 13 Pro Max &ndash; Hiệu năng v&ocirc; đối, camera cực đỉnh</strong></p>', '<p><span style=\"font-size:16px\">Điện thoại iPhone 13&nbsp;phi&ecirc;n bản Pro Max chắc chắn sẽ l&agrave; chiếc smartphone cao cấp được quan t&acirc;m nhiều nhất trong năm 2021. D&ograve;ng&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-13.html\">iPhone 13 series</a>&nbsp;vừa được ra mắt v&agrave;o th&aacute;ng 9 năm nay với 4 phi&ecirc;n bản: iPhone 13, 13 mini, 13 Pro v&agrave; 13 Pro Max.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Đ&aacute;nh gi&aacute; iPhone 13 Pro Max &ndash; Hiệu năng v&ocirc; đối, camera cực đỉnh</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">iPhone 12 ra mắt cách đ&acirc;y chưa l&acirc;u, thì những tin đ&ocirc;̀n mới nh&acirc;́t v&ecirc;̀&nbsp;<strong>iPhone 13 Pro Max</strong>&nbsp;đã khi&ecirc;́n bao tín đ&ocirc;̀ c&ocirc;ng ngh&ecirc;̣ ngóng chờ. Cụm camera được n&acirc;ng c&acirc;́p, m&agrave;u sắc mới, đặc biệt l&agrave; m&agrave;n h&igrave;nh 120Hz với phần notch được l&agrave;m nhỏ gọn hơn chính là những đi&ecirc;̉m làm cho&nbsp;thu hút mọi sự chú ý trong năm nay.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thi&ecirc;́t k&ecirc;́ cạnh phẳng sang trọng, nhiều màu sắc n&ocirc;̉i b&acirc;̣t</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Dòng iPhone 12 được Apple áp dụng ng&ocirc;n ngữ thi&ecirc;́t k&ecirc;́ tương tự iPhone 12 năm ngo&aacute;i với ph&acirc;̀n cạnh vi&ecirc;̀n máy được dát phẳng sang trọng c&ugrave;ng bốn g&oacute;c được l&agrave;m bo cong nhẹ, đ&acirc;y c&oacute; thể được xem l&agrave; một thiết kế ho&agrave;i cổ từ d&ograve;ng iPhone 5 trước đ&oacute;. Vì th&ecirc;́ mà iPhone 13 Pro Max nói ri&ecirc;ng, cũng như dòng&nbsp;<a href=\"https://cellphones.com.vn/iphone-13.html\">điện thoại iPhone 13</a>&nbsp;nói chung, cũng sẽ đi theo ng&ocirc;n ngữ thi&ecirc;́t k&ecirc;́ này.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đi&ecirc;̉m thay đ&ocirc;̉i lớn tr&ecirc;n 13 Pro Max có th&ecirc;̉ là ph&acirc;̀n nh&ocirc; của cụm camera. Trong khi đ&oacute; mặt trước của thiết bị được phủ một lớp Ceramic Shield, loại vật liệu cứng hơn bất kỳ loại k&iacute;nh điện thoại th&ocirc;ng minh n&agrave;o hiện c&oacute; tr&ecirc;n thị trường, gi&uacute;p bảo vệ m&agrave;n h&igrave;nh iPhone hiệu quả.</span></p>', 1, NULL, '2022-01-14', '2022-01-02 17:00:00'),
(2, 50, 'Macbook Pro M1 16', '1641352642-product.jpg', 45000000, 43000000, 10, '<p>Mới 100%</p>', '<p>ok</p>', 1, NULL, '2022-01-05', '2022-01-02 17:00:00'),
(3, 45, 'Iphone 12 Pro Max', '1641350758-product.jpg', 28000000, 26000000, 10, '<p><strong>Điện thoại iPhone 12 Pro Max: N&acirc;ng tầm đẳng cấp sử dụng</strong></p>', '<h2><span style=\"font-size:16px\"><strong>Điện thoại iPhone 12 Pro Max: N&acirc;ng tầm đẳng cấp sử dụng</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Cứ mỗi năm, đến dạo cuối th&aacute;ng 8 v&agrave; gần đầu th&aacute;ng 9 th&igrave; mọi th&ocirc;ng tin s&ocirc;i sục mới về chiếc iPhone mới lại xuất hiện. Apple năm nay lại ra th&ecirc;m một chiếc iPhone mới với t&ecirc;n gọi mới l&agrave;&nbsp;<strong>iPhone 12 Pro Max</strong>, đ&acirc;y l&agrave; một d&ograve;ng điện thoại mới v&agrave; mạnh mẽ nhất của nh&agrave; Apple năm nay. Mời bạn tham khảo th&ecirc;m một số m&ocirc; tả sản phẩm b&ecirc;n dưới để bạn c&oacute; thể ra quyết định mua sắm.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh 6.7 inches&nbsp;Super Retina XDR</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Năm nay, c&ocirc;ng nghệ m&agrave;n h&igrave;nh tr&ecirc;n 12 Pro Max cũng được đổi mới v&agrave; trang bị tốt hơn c&ugrave;ng k&iacute;ch thước l&ecirc;n đến 6.7 inch, lớn hơn so với&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-12-vna.html\">điện thoại iPhone 12</a>&nbsp;thường. Với c&ocirc;ng nghệ m&agrave;n h&igrave;nh OLED cho khả năng hiển thị h&igrave;nh ảnh l&ecirc;n đến 2778 x 1284&nbsp;pixels. B&ecirc;n cạnh đ&oacute;, m&agrave;n h&igrave;nh n&agrave;y c&ograve;n cho độ s&aacute;ng tối đa cao nhất l&ecirc;n đến 800 nits, lu&ocirc;n đảm bảo cho bạn một độ s&aacute;ng cao v&agrave; dễ nh&igrave;n nhất ngo&agrave;i nắng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Một điểm đổi mới nữa tr&ecirc;n m&agrave;n h&igrave;nh của chiếc&nbsp;điện thoại Apple iPhone 12 năm nay l&agrave; việc ch&uacute;ng được thiết kế với khung viền vu&ocirc;ng vức, viền th&eacute;p kh&ocirc;ng gỉ mang đến vẻ đẹp sang trọng cho điện thoại. M&aacute;y cũng được trang bị nhiều phi&ecirc;n bản m&agrave;u sắc đặc biệt cho người d&ugrave;ng lựa chọn.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>RAM 6GB đa nhiệm thoải m&aacute;i, bộ nhớ trong dung lượng lớn</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Về trang bị phần cứng b&ecirc;n trong th&igrave; iPhone 12 Pro Max c&oacute; một thanh RAM l&ecirc;n đến 6GB. Điều n&agrave;y cho thấy rằng Apple ng&agrave;y đang lắng nghe người d&ugrave;ng nhiều hơn khi trang bị một dung lượng RAM lớn hơn để việc đa nhiệm ng&agrave;y c&agrave;ng được cải thiện hơn. Việc thanh ram lớn gi&uacute;p cho bạn trải nghiệm c&aacute;c tựa game v&agrave; đa nhiệm mượt m&agrave; hơn.</span></p>', 1, NULL, '2022-01-14', '2022-01-04 17:00:00'),
(4, 45, 'iPhone 12 128GB I Chính hãng VN/A', '1641353682-product.jpg', 24000000, 20000000, 20, '<h2><span style=\"font-size:16px\"><strong>Apple iPhone 12 128GB ch&iacute;nh h&atilde;ng (VN/A) phi&ecirc;n bản bộ nhớ 128GB lưu trữ thoải&nbsp;m&aacute;i</strong></span></h2>', '<p><span style=\"font-size:16px\"><em>iPhone 12 hiện nay l&agrave; c&aacute;i t&ecirc;n &ldquo;sốt x&igrave;nh xịch&rdquo; bởi đ&acirc;y l&agrave; một trong 4 si&ecirc;u phẩm vừa được ra mắt của Apple với những đột ph&aacute; về cả thiết kế lẫn cấu h&igrave;nh. Phi&ecirc;n bản Apple iPhone 12 128GB ch&iacute;nh l&agrave; một trong những chiếc iPhone được săn đ&oacute;n nhất bởi dung lượng bộ nhớ khủng, cho ph&eacute;p bạn thoải m&aacute;i với v&ocirc; v&agrave;n ứng dụng.</em></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Dung lượng bộ nhớ trong l&ecirc;n đến 128GB v&agrave; chip Apple A14 độc quyền</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><a href=\"https://cellphones.com.vn/iphone-12.html\">iPhone 12 VN/A</a>&nbsp;phi&ecirc;n bản bộ nhớ trong 128GB sẽ khiến bạn c&oacute; thể v&ocirc; tư với h&agrave;ng t&aacute; ứng dụng, chứa rất nhiều ảnh, video v&agrave; kh&ocirc;ng cần lo lắng việc kh&ocirc;ng đủ dung lượng sử dụng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Chip A14 độc quyền từ Apple mang đến cho iPhone 12 hiệu năng mạnh mẽ, xử l&iacute; t&aacute;c vụ nhanh ch&oacute;ng v&agrave; giữ m&aacute;y lu&ocirc;n ổn định.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế độc đ&aacute;o với viền v&aacute;t phẳng mạnh mẽ v&agrave; hỗ trợ sạc nhanh 20W</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng chỉ thế, thiết kế của iPhone 12 c&oacute; sự đột ph&aacute; với viền m&aacute;y v&aacute;t phẳng mạnh mẽ, c&aacute; t&iacute;nh. Kh&ocirc;ng c&ograve;n bo cong mềm mại như c&aacute;c thế hệ iPhone trước.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(5, 45, 'iPhone 12 mini 128GB I Chính hãng VN/A', '1641353930-product.jpg', 20000000, 16000000, 20, '<h2><span style=\"font-size:16px\"><strong>iPhone 12 Mini 128GB ch&iacute;nh h&atilde;ng (VN/A) - nhỏ b&eacute; nhưng v&ocirc; c&ugrave;ng mạnh mẽ</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>iPhone 12 Mini 128GB ch&iacute;nh h&atilde;ng (VN/A) - nhỏ b&eacute; nhưng v&ocirc; c&ugrave;ng mạnh mẽ</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">iPhone 12 Mini 128GB l&agrave; một trong những thiết kế độc đ&aacute;o kh&ocirc;ng chỉ bởi thiết kế nhỏ gọn, đẹp mắt m&agrave; m&aacute;y c&ograve;n thu h&uacute;t được đ&ocirc;ng đảo người quan t&acirc;m bởi m&agrave;n h&igrave;nh sắc n&eacute;t, hiệu năng cực khủng, c&ugrave;ng với đ&oacute; l&agrave; cụm camera được đ&aacute;nh gi&aacute; v&ocirc; c&ugrave;ng chất lượng.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Dung lượng bộ nhớ cực 128GB khủng</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><a href=\"https://cellphones.com.vn/iphone-12-mini.html\">Điện thoại iPhone 12 mini ch&iacute;nh h&atilde;ng</a>&nbsp;phi&ecirc;n bản 128GB c&oacute; cấu h&igrave;nh cao cấp với chip A14 Bionic được sản xuất tr&ecirc;n tiến tr&igrave;nh 5nm gi&uacute;p tiết kiệm pin một c&aacute;ch tối đa. B&ecirc;n cạnh đ&oacute;, m&aacute;y sử dụng pin lớn, hỗ trợ sạc kh&ocirc;ng d&acirc;y 15W mang đến sự tiện &iacute;ch trong qu&aacute; tr&igrave;nh sử dụng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đặc biệt, iPhone 12 Mini g&acirc;y ấn tượng đặc biệt với người d&ugrave;ng bởi trang bị RAM 4GB c&ugrave;ng bộ nhớ trong l&ecirc;n tới 128GB. Người d&ugrave;ng c&oacute; thể thoải m&aacute;i lưu trữ cũng như tải c&aacute;c ứng dụng cần thiết về m&aacute;y.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế nhỏ gọn, m&agrave;n h&igrave;nh 5.4 inch, camera độc đ&aacute;o</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">iPhone 12 mini 128GB ch&iacute;nh h&atilde;ng l&agrave; phi&ecirc;n bản nhỏ nhất được thiết kế sang trọng v&agrave; v&ocirc; c&ugrave;ng nam t&iacute;nh. M&aacute;y được trang bị m&agrave;n h&igrave;nh 5,4 inch với c&ocirc;ng nghệ m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải&nbsp;1080 x 2340 pixels mang đến h&igrave;nh ảnh sắc n&eacute;t v&agrave; độ tương phản si&ecirc;u cao.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(6, 45, 'iPhone 13 128GB | Chính hãng VN/A', '1641369780-product.jpg', 24999000, 22999000, 20, '<h2><span style=\"font-size:16px\"><strong>&nbsp;iPhone 13 - Flagship được mong chờ năm 2021</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Đ&aacute;nh gi&aacute; iPhone 13 - Flagship được mong chờ năm 2021</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Cuối năm 2020, bộ 4 iPhone 12 đ&atilde; được ra mắt với nhiều c&aacute;i tiến. Sau đ&oacute;, mọi sự quan t&acirc;m lại đổ dồn v&agrave;o sản phẩm tiếp theo &ndash;&nbsp;<strong>iPhone 13.</strong>&nbsp;Vậy iP&nbsp;13 sẽ c&oacute; những g&igrave;, h&atilde;y t&igrave;m hiểu ngay sau đ&acirc;y.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế với nhiều đột ph&aacute;</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Về k&iacute;ch thước, iPhone 13 sẽ c&oacute; 4 phi&ecirc;n bản kh&aacute;c nhau v&agrave; k&iacute;ch thước kh&ocirc;ng đổi so với series iPhone 12 hiện tại. Nếu iPhone 12 c&oacute; sự thay đổi trong thiết kế từ g&oacute;c cạnh bo tr&ograve;n (Thiết kế được duy tr&igrave; từ thời iPhone 6 đến iPhone 11 Pro Max) sang thiết kế vu&ocirc;ng vắn (đ&atilde; từng c&oacute; mặt tr&ecirc;n iPhone 4 đến iPhone 5S, SE).</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Th&igrave; tr&ecirc;n&nbsp;<a href=\"https://cellphones.com.vn/mobile/apple/iphone-13.html\">điện thoại iPhone 13</a>&nbsp;vẫn được duy tr&igrave; một thiết kế tương tự. M&aacute;y&nbsp;vẫn c&oacute; phi&ecirc;n bản khung viền th&eacute;p, một số phi&ecirc;n bản khung nh&ocirc;m c&ugrave;ng mặt lưng k&iacute;nh. Tương tự năm ngo&aacute;i, Apple&nbsp;cũng sẽ cho ra mắt 4 phi&ecirc;n bản l&agrave; iPhone 13, 13 mini, 13 Pro v&agrave; 13 Pro Max.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Phần tai thỏ tr&ecirc;n iPhone 13 cũng c&oacute; thay đổi so với thế hệ trước, cụ thể tai thỏ n&agrave;y được l&agrave;m nhỏ hơn so với 20%, trong khi đ&oacute; độ d&agrave;y của m&aacute;y vẫn được giữ nguy&ecirc;n.&nbsp;Điểm kh&aacute;c biệt nhất về thiết kế tr&ecirc;n thế hệ iPhone 2021 n&agrave;y đ&oacute; l&agrave; camera ch&eacute;o.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&agrave;u sắc tr&ecirc;n mẫu iPhone mới n&agrave;y cũng đa dạng hơn, trong đ&oacute; nổi bật l&agrave; iPhone 13 m&agrave;u hồng. C&aacute;c m&agrave;u sắc c&ograve;n lại đề đ&atilde; từng được xuất hiện tr&ecirc;n c&aacute;c phi&ecirc;n bản trước đ&oacute; như trắng, đen, đỏ, xanh blue.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(7, 45, 'iPhone 13 mini 512GB I Chính hãng VN/A', '1641369921-product.jpg', 23000000, 22000000, 20, '<p><span style=\"font-size:16px\"><strong>Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao</strong></span></p>', '<ul>\r\n	<li><span style=\"font-size:16px\">Hiệu năng vượt trội - Chip Apple A15 Bionic mạnh mẽ, hỗ trợ mạng 5G tốc độ cao</span></li>\r\n	<li><span style=\"font-size:16px\">Kh&ocirc;ng gian hiển thị sống động - M&agrave;n h&igrave;nh 5.4&quot; Super Retina XDR độ s&aacute;ng cao, sắc n&eacute;t</span></li>\r\n	<li><span style=\"font-size:16px\">Trải nghiệm điện ảnh đỉnh cao - Camera k&eacute;p 12MP, hỗ trợ ổn định h&igrave;nh ảnh quang học</span></li>\r\n	<li><span style=\"font-size:16px\">Tối ưu điện năng - Sạc nhanh 20 W, đầy 50% pin trong khoảng 30 ph&uacute;t</span></li>\r\n</ul>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(8, 45, 'iPhone 11 Pro Max 512GB I Chính hãng VN/A', '1641369988-product.jpg', 32000000, 29999999, 20, '<h1><strong><span style=\"font-size:16px\">iPhone 11 Pro Max: Chiếc smartphone đỉnh nhất 2019</span></strong></h1>', '<h3><span style=\"font-size:16px\"><strong>Thiết kế</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Ở mặt trước, Apple đ&atilde; kh&ocirc;ng thay đổi thiết kế của iPhone 11 Pro Max (so với&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-xs-max\" target=\"_blank\" title=\"XS Max\" type=\"XS Max\">iPhone XS Max</a>&nbsp;năm ngo&aacute;i). Nhưng ở mặt sau mọi thứ được cải thiện hơn nhiều: mặt lưng được ho&agrave;n thiện từ k&iacute;nh mờ, hạn chế trầy xước v&agrave; hạn chế để lại dấu v&acirc;n tay &ndash; một sự n&acirc;ng cấp r&otilde; rệt so vơi phi&ecirc;n bản tiền nhiệm. Những chi tiết kh&aacute;c trong thiết kế rất giống với những g&igrave; Apple đ&atilde; l&agrave;m trong những năm gần đ&acirc;y: &lsquo;tai thỏ&rsquo;, khung m&aacute;y bằng th&eacute;p kh&ocirc;ng gỉ, cổng lightning đặt ở đu&ocirc;i m&aacute;y v&agrave; cụm loa đối xứng (tuy nhi&ecirc;n chỉ c&oacute; một loa thực sự).</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh sống động</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">M&agrave;n h&igrave;nh tr&ecirc;n iPhone l&agrave; một trong những điểm đ&aacute;ng tiền v&agrave; iPhone 11 Pro Max sở hữu m&agrave;n h&igrave;nh đảm bảo được ti&ecirc;u ch&iacute; n&agrave;y.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i thiết kế lạ mắt th&igrave; iPhone 11 Pro Max sở hữu m&agrave;n h&igrave;nh đ&aacute;ng tiền, với k&iacute;ch thước 6.5 inch c&ugrave;ng tấm nền OLED được tinh chỉnh lại bởi Apple.&nbsp;M&agrave;n h&igrave;nh n&agrave;y c&ograve;n được hỗ trợ c&ocirc;ng nghệ True Tone gi&uacute;p điều chỉnh c&acirc;n bằng trắng sao cho ph&ugrave; hợp với điều kiện &aacute;nh s&aacute;ng xung quanh.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Tuy nhi&ecirc;n, m&agrave;n h&igrave;nh OLED mới n&agrave;y dường như bị &aacute;m v&agrave;ng khi hiển thị m&agrave;u trắng hoặc h&igrave;nh ảnh. Những m&agrave;u n&agrave;y kh&ocirc;ng xuất hiện khi h&igrave;nh ảnh được hiển thị tr&ecirc;n m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh. V&igrave; vậy, đ&acirc;y c&oacute; thể l&agrave; một lỗi nhỏ trong việc hiệu chuẩn thiết bị.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Lỗi n&agrave;y cũng đ&aacute;ng ch&uacute; &yacute; khi iPhone 11 Pro Max được đặt b&ecirc;n cạnh iPhone XS Max từ năm 2018. Nhưng sự kh&aacute;c biệt rất nhẹ v&agrave; khi đứng độc lập th&igrave; h&igrave;nh ảnh hiển thị tr&ecirc;n 11 Pro Max vẫn rất đẹp.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(9, 44, 'Samsung Galaxy Note 20 Ultra 5G', '1641355163-product.jpg', 32000000, 22000000, 20, '<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Note 20 Ultra 5G - Sang trọng, hiệu năng vượt trội</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">B&ecirc;n cạnh bi&ecirc;n bản Galaxy Note 20 thường, Samsung c&ograve;n cho ra mắt&nbsp;<strong>Note 20 Ultra 5G</strong>&nbsp;cho khả năng kết nối dữ liệu cao c&ugrave;ng thiết kế nguy&ecirc;n khối sang trọng, bắt mắt. Đ&acirc;y sẽ l&agrave; sự lựa chọn ho&agrave;n hảo d&agrave;nh cho bạn để sử dụng m&agrave; kh&ocirc;ng bị lỗi thời sau thời gian d&agrave;i ra mắt.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, bạn c&oacute; thể tham khảo&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-z-fold-3.html\">Galaxy Z Fold 3 5G</a>&nbsp;nếu bạn cần sự kh&aacute;c biệt v&agrave; khẳng định đẳng cấp.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế khung nh&ocirc;m nguy&ecirc;n khối, mặt sau k&iacute;nh cường lực sang trọng</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">L&agrave; một sản phẩm c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh lớn v&igrave; vậy Samsung đ&atilde; trang bị cho Galaxy Note 20 Ultra 5G&nbsp; với c&ocirc;ng nghệ kết nối dữ liệu mạnh mẽ c&ugrave;ng thiết kế nguy&ecirc;n khối. Gi&uacute;p c&aacute;c linh kiện b&ecirc;n trong điện thoại được cố định chắc chắn đảm bảo mọi thứ b&ecirc;n trong lu&ocirc;n được an to&agrave;n. Kh&ocirc;ng những vậy khung nh&ocirc;m tạo tr&ecirc;n những đường viền cực kỳ sang trọng v&agrave; bắt mắt khi nh&igrave;n v&agrave;o.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mặt sau của SS Galaxy Note n&agrave;y được h&atilde;ng trang bị mặt k&iacute;nh tạo n&ecirc;n vẻ sang trọng v&agrave; cuốn h&uacute;t khi nh&igrave;n v&agrave;o chiếc điện thoại từ b&ecirc;n ngo&agrave;i. Loại k&iacute;nh cho cả mặt trước v&agrave; mặt sau đều l&agrave; k&iacute;nh cường lực Gorilla Glass 6 kh&ocirc;ng những sang trọng m&agrave; c&ograve;n mang đến sự chắc chắn hạn chế rơi vỡ vực tốt.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh 6.9 inch độ ph&acirc;n giải 2K 120Hz, cấu h&igrave;nh mạnh mẽ</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Đối với bất kỳ chiếc điện thoại n&agrave;o đến từ Samsung d&ograve;ng Note lu&ocirc;n l&agrave; những chiếc điện thoại c&oacute; k&iacute;ch thước m&agrave;n h&igrave;nh lớn. Samsung Galaxy Note 20 Ultra 5G cũng vậy n&oacute; được trang bị m&agrave;n h&igrave;nh 6.9 inch 2 cạnh b&ecirc;n cong tạo n&ecirc;n vẻ đẹp sang trọng, độ ph&acirc;n giải đạt 2K 1440 x 3200 pixels cho h&igrave;nh ảnh hiển thị cực kỳ sắc n&eacute;t. Ngo&agrave;i ra tần số qu&eacute;t tr&ecirc;n m&agrave;n h&igrave;nh cũng nằm ở mức lớn 120Hz ở độ ph&acirc;n giải FHD v&agrave; 60Hz ở QHD. Mọi h&igrave;nh ảnh khi bạn chơi game với khung h&igrave;nh cao hay trải nghiệm những bộ phim h&agrave;nh động cực kỳ mượt m&agrave; v&agrave; sắc n&eacute;t với c&ocirc;ng nghệ HDR10+.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(10, 44, 'Samsung Galaxy Z Flip3 5G', '1641355430-product.jpg', 30000000, 26666000, 20, '<h2><span style=\"font-size:16px\"><strong>Samsung Galaxy Z Flip 3 (5G) &ndash; Điện thoại m&agrave;n h&igrave;nh</strong><strong>&nbsp;gập độc đ&aacute;o</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Samsung Galaxy Z Flip 3 (5G) &ndash; Điện thoại m&agrave;n h&igrave;nh</strong><strong>&nbsp;gập độc đ&aacute;o</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">B&ecirc;n cạnh c&aacute;c si&ecirc;u phẩm của d&ograve;ng S hay d&ograve;ng Note th&igrave; Samsung c&ograve;n tr&igrave;nh l&agrave;ng một d&ograve;ng điện thoại si&ecirc;u đặc biệt. V&agrave; cho đến 2021 h&atilde;ng đ&atilde; ph&aacute;t triển đến thế hệ thứ ba, với t&ecirc;n gọi&nbsp;<strong>Galaxy Z Flip 3</strong>. Ngo&agrave;i sở hữu thiết kế gập độc đ&aacute;o th&igrave; n&oacute; c&ograve;n sở hữu t&iacute;nh năng g&igrave; mới h&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i xem qua b&agrave;i viết b&ecirc;n dưới đ&acirc;y nh&eacute;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Dự kiến, Z Flip 3 5G sẽ được Samsung tr&igrave;nh l&agrave;ng c&ugrave;ng với&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-z-fold-3.html\">điện thoại Galaxy Z Fold 3 5G</a>&nbsp;tại sự kiện ra mắt trực tuyến Unpacked diễn ra v&agrave;o ng&agrave;y 11/8 tới đ&acirc;y.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế đậm chất đặc trưng, m&agrave;n h&igrave;nh dẻo ti&ecirc;n phong</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung Galaxy Z Flip 3 sở hữu một phong c&aacute;ch thiết kế gập vỏ s&ograve; c&ugrave;ng khung nh&ocirc;m&nbsp;aluminum chắc chắn.&nbsp;Khi gấp gọn, điện thoại chỉ c&oacute; k&iacute;ch thước 4.2 inch v&ocirc; c&ugrave;ng nhỏ gọn nhưng mở r&acirc; lại l&agrave; một chiếc điện thoại th&ocirc;ng minh m&agrave;n h&igrave;nh lớn mang lại khả năng kh&aacute;m ph&aacute; kh&ocirc;ng giới hạn. M&agrave;n h&igrave;nh ngo&agrave;i của thiết bị được trang bị mặt k&iacute;nh&nbsp;Gorilla Glass si&ecirc;u bền bỉ.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Bản lề tr&ecirc;n Samsung Galaxy Z Flip 3 cũng được đ&aacute;nh gi&aacute; bền bỉ khi vượt qua b&agrave;i thử nghiệm l&ecirc;n đến 200000 lần, nhờ đ&oacute; người d&ugrave;ng c&oacute; thể thoải m&aacute;i sử dụng l&ecirc;n đến hơn 5 năm.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Về m&agrave;u sắc, điện thoại Samsung Galaxy Z Flip 3 sẽ được b&aacute;n ra với nhiều phi&ecirc;n bản m&agrave;u như&nbsp;Kem Ivory,&nbsp;Đen Phantom,&nbsp;Xanh Phantom,&nbsp;T&iacute;m Lilac. Nhờ đ&oacute; người d&ugrave;ng c&oacute; nhiều sự lựa chọn m&agrave;u sắc hơn theo sở th&iacute;ch. M&aacute;y cũng sẽ được trang bị chẩn kh&aacute;ng nước v&agrave; bụi bẩn IPX8 tiện lợi.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh gập độc đ&aacute;o, tần số qu&eacute;t 120Hz</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Như đ&atilde; bật m&iacute; về phần m&agrave;n h&igrave;nh v&agrave; đ&acirc;y ch&iacute;nh l&agrave; bộ phận g&acirc;y được sự ấn tượng đậm nhất. M&agrave;n h&igrave;nh&nbsp;Dynamic AMOLED 2X c&oacute; khả năng gập m&agrave; vẫn cho khả năng hiển thị ho&agrave;n hảo. Khi bạn mở m&agrave;n h&igrave;nh n&agrave;y ra th&igrave; n&oacute; lập tức hiện nay một k&iacute;ch thước 6.9 inch cho ph&eacute;p bạn thoải m&aacute;i t&ugrave;y chỉnh giao diện như g&oacute;c gập của m&agrave;n h&igrave;nh. Ngo&agrave;i ra, bạn cực kỳ y&ecirc;n t&acirc;m với thiết kế lớp k&iacute;nh dẻo UTG (Ultra Thin Glass) thế hệ mới.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(11, 44, 'Samsung Galaxy S21 Ultra 5G', '1641355663-product.jpg', 32000000, 26000000, 20, '<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Galaxy S21 Ultra - Đ&oacute;n đầu xu hướng c&ocirc;ng nghệ</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Điện thoại Samsung Galaxy S21 Ultra - Đ&oacute;n đầu xu hướng c&ocirc;ng nghệ</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Galaxy S21 Ultra</strong>&nbsp;với những cải tiến đ&aacute;ng kể về hiệu năng của m&aacute;y cực kỳ mạnh mẽ c&ugrave;ng với thiết kế sang trọng cao cấp. Samsung đ&atilde; mang đến cho người d&ugrave;ng một trải nghiệm ho&agrave;n to&agrave;n mới, đ&acirc;y hứa hẹn sẽ l&agrave; chiếc smartphone đi đầu tr&ecirc;n thế giới về c&aacute;c xu hướng c&ocirc;ng nghệ lẫn hiệu năng vượt trội đ&aacute;ng sở hữu nhất v&agrave;o thời điểm ra mắt.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra, bạn c&oacute; thể tham khảo&nbsp;<a href=\"https://cellphones.com.vn/samsung-galaxy-z-fold-3.html\">điện thoại&nbsp;Galaxy Z Fold 3 5G</a>&nbsp;nếu bạn muốn khẳng định đẳng cấp v&agrave; kh&aacute;c biệt so với phần c&ograve;n lại.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế nguy&ecirc;n khối, m&agrave;n h&igrave;nh</strong><strong>&nbsp;6</strong><strong>.8 inch tr&agrave;n&nbsp;</strong><strong>viền</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Samsung S21 Ultra đ&atilde; được Samsung trang bị bộ khung kim loại nguy&ecirc;n khối mang đến một phong c&aacute;ch thiết kế cứng c&aacute;p khi cầm nắm sử dụng, kết hợp thiết kế bố cục với mặt k&iacute;nh cao cấp s&aacute;ng b&oacute;ng ở mặt sau tạo n&ecirc;n một vẻ ngo&agrave;i sang trọng v&agrave; tinh tế từ những chi tiết nhỏ nhất. C&aacute;c ph&iacute;m chức năng cũng được l&agrave;m từ kim loại cho độ nhạy rất cao khi sử dụng.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Hiệu năng si&ecirc;u mạnh với chip Exynos 2100, RAM</strong><strong>&nbsp;</strong><strong>12GB</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng những c&oacute; m&agrave;n h&igrave;nh tr&agrave;n viền k&iacute;ch thước lớn Samsung c&ograve;n trang bị tr&ecirc;n chiếc&nbsp;<strong>Samsung S21 Ultra</strong>&nbsp;cấu h&igrave;nh cực kỳ mạnh mẽ. Cụ thể m&aacute;y được trang bị con chip mới nhất&nbsp;Exynos 2100 với 8 nh&acirc;n tốc độ cao cho mọi t&aacute;c vụ được xử l&yacute; nhanh ch&oacute;ng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i ra bộ nhớ RAM của m&aacute;y cũng được n&acirc;ng cấp l&ecirc;n đến 12GB. Người d&ugrave;ng c&oacute; thể thoải m&aacute;i đa nhiệm c&ugrave;ng l&uacute;c nhiều ứng dụng nặng như chơi game, mạng x&atilde; hội c&ugrave;ng l&uacute;c m&agrave; kh&ocirc;ng bị giật lag.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(12, 44, 'Samsung Galaxy Z Fold3 5G', '1641355844-product.jpg', 42000000, 40000000, 20, '<h2><span style=\"font-size:16px\"><strong>Samsung Galaxy Z Fold 3 (5G) - Khẳng định đẳng cấp</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Đ&aacute;nh gi&aacute; Samsung Galaxy Z Fold 3 (5G) - Khẳng định đẳng cấp</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Với sự th&agrave;nh c&ocirc;ng đ&aacute;ng kinh ngạc v&agrave; lu&ocirc;n ch&aacute;y h&agrave;ng từ l&uacute;c ra mắt đến thời điểm hiện tại của hai thế hệ trước l&agrave; Fold 1 v&agrave; Z Fold 2.&nbsp;<strong>Galaxy Z Fold 3</strong>&nbsp;lần n&agrave;y được ra mắt với độ ho&agrave;n thiện cao về thiết kế v&agrave; hiệu năng. Mang đến cho người d&ugrave;ng một trải nghiệm cực kỳ th&uacute; vị hơn.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế độc đ&aacute;o tiện lợi, chất liệu cao cấp</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">L&agrave; sản phẩm mang đến độ ho&agrave;n thiện cao hơn nhiều so với hai phi&ecirc;n bản trước, điện thoại Samsung Galaxy Fold 3 được thiết kế k&iacute;ch thước h&agrave;i h&ograve;a hơn. Gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng cầm khi đ&oacute;ng hoặc mở m&agrave;n h&igrave;nh đều dễ sử dụng nhất.&nbsp;Bộ khớp nối bản lề mới gi&uacute;p kết nối bộ khung của Galaxy Z Fold3 ho&agrave;n hảo hơn. Tăng cao độ bền khi đ&oacute;ng mở li&ecirc;n tục v&agrave; cố định cực kỳ chắc chắn.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh 7.6 inch 120Hz, m&agrave;n h&igrave;nh phụ 6.2 inch</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Điểm nổi bật nhất tr&ecirc;n chiếc laptop n&agrave;y đ&oacute; l&agrave; hệ thống m&agrave;n h&igrave;nh được trang bị. Cũng giống như thế hệ Fold 2 trước lần n&agrave;y&nbsp;<strong>Samsung Z Fold 3</strong>&nbsp;cũng được trang bị một m&agrave;n h&igrave;nh ch&iacute;nh v&agrave; một m&agrave;n h&igrave;nh phụ rất tiện lợi.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Đối với m&agrave;n h&igrave;nh ch&iacute;nh Samsung đ&atilde; sử dụng loại m&agrave;n h&igrave;nh Dynamic Amoled c&ocirc;ng nghệ mới với k&iacute;ch thước chuẩn đạt 7.6 inch. độ ph&acirc;n giải của m&agrave;n h&igrave;nh n&agrave;y được n&acirc;ng cấp với chuẩn 2K cực kỳ sắc n&eacute;t v&agrave; nổi bật.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(13, 46, 'Xiaomi Redmi 10 (4GB - 128GB)', '1641356138-product.jpg', 6000000, 4000000, 20, '<h2><span style=\"font-size:16px\"><strong>Xiaomi Redmi 10 &ndash; Smartphone gi&aacute; rẻ, hiệu năng ổn định</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Đ&aacute;nh gi&aacute; Xiaomi Redmi 10 &ndash; Smartphone gi&aacute; rẻ, hiệu năng ổn định</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Xiaomi nổi tiếng với c&aacute;c sản phẩm điện thoại gi&aacute; rẻ chất lượng. Mới đang h&atilde;ng tiếp tục cho ra mắt mẫu sản phẩm mới mang t&ecirc;n&nbsp;<strong>Redmi 10</strong>. Đ&acirc;y hứa hẹn l&agrave; mẫu điện thoại gi&aacute; rẻ đ&aacute;ng để người d&ugrave;ng trải nghiệm.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế nhỏ gọn, dễ cầm nắm</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Về thiết kế, Xiaomi Redmi 10 kh&ocirc;ng c&oacute; qu&aacute; nhiều kh&aacute;c biệt so với người tiền nhiệm. M&aacute;y vẫn sở hữu một m&agrave;n h&igrave;nh lớn với khung viền si&ecirc;u mỏng. Mặt trước được phủ lớp k&iacute;nh cường lực bảo vệ m&agrave;n h&igrave;nh điện thoại. Mặt sau l&agrave; cụm camera c&ugrave;ng logo Redmi.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">C&aacute;c g&oacute;c cạnh tr&ecirc;n Xiaomi Redmi 10 được l&agrave;m bo cong nhẹ nh&agrave;ng c&ugrave;ng khả năng cầm nắm thoải m&aacute;i, kể cả khi sử dụng bằng một tay. Mặt lưng với hiệu ứng m&agrave;u gradian bắt mắt với nhiều phi&ecirc;n bản m&agrave;u sắc kh&aacute;c nhau cho người d&ugrave;ng lựa chọn.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>M&agrave;n h&igrave;nh k&iacute;ch thước lớn, tần số qu&eacute;t cao</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Điện thoại Redmi 10 được trang bị m&agrave;n h&igrave;nh l&ecirc;n tới 6,5 inch c&ugrave;ng độ ph&acirc;n giải FHD+. Điểm nổi bật l&agrave; m&aacute;y được trang bị tần số qu&eacute;t m&agrave;n h&igrave;nh l&ecirc;n đến 90Hz. Nhờ đ&oacute; m&aacute;y mang lại những trải nghiệm h&igrave;nh ảnh chất lượng c&ugrave;ng chuyển động mượt m&agrave;.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(14, 46, 'Xiaomi Redmi Note 10 Pro 8GB', '1641356324-product.jpg', 9000000, 7200000, 20, '<h2><span style=\"font-size:16px\"><strong>Xiaomi Redmi Note 10 Pro - Thế hệ mới hiện đại</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Điện thoại Xiaomi Redmi Note 10 Pro - Thế hệ mới hiện đại</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Xiaomi l&agrave; h&atilde;ng sản xuất điện thoại nổi tiếng được nhiều người d&ugrave;ng ưu ti&ecirc;n v&agrave; lựa chọn sử dụng.&nbsp;<strong>Redmi Note 10 Pro</strong>&nbsp;l&agrave; chiếc điện thoại hiện đại được mới được h&atilde;ng ra mắt với nhiều t&iacute;nh năng v&agrave; c&ocirc;ng nghệ hiện đại mang đến sự tiện lợi khi người d&ugrave;ng sử dụng chiếc smartphone n&agrave;y.&nbsp;</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế tinh tế v&agrave; sang trọng, m&agrave;n h&igrave;nh Full HD 6.67 inch</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><a href=\"https://cellphones.com.vn/xiaomi-redmi-note-10.html\">Xiaomi Redmi Note 10</a>&nbsp;phi&ecirc;n bản Pro được h&atilde;ng thiết kế với k&iacute;ch thước vừa vặn với tay người d&ugrave;ng. Hơn thế với thiết kế của thế hệ tinh tế v&agrave; đầy sang trọng n&agrave;y gi&uacute;p thu h&uacute;t mọi &aacute;nh nh&igrave;n bời c&aacute;i nh&igrave;n đầu ti&ecirc;n.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Mặt lưng của m&aacute;y được thiết kế vuốt cong ở hai cạnh tạo được cảm gi&aacute;c mỏng v&agrave; chắc chắn khi cầm nắm.&nbsp;G&oacute;c phải mặt lưng được in t&ecirc;n của nh&agrave; sản xuất Xiaomi vừa tạo được điểm nhấn cho sản phẩm vừa đặt ở vị tr&iacute; người d&ugrave;ng c&oacute; thể thoải m&aacute;i trang tr&iacute; chiếc điện thoại một c&aacute;ch dễ d&agrave;ng v&agrave; tiện lợi.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Trang bị m&agrave;n h&igrave;nh tr&agrave;n viền cong cạnh 3D 6.67 inch gi&uacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i khi sử dụng, b&ecirc;n cạnh đ&oacute; cũng l&agrave;m nổi l&ecirc;n sự sang trọng v&agrave; cao cấp của Xiaomi Redmi Note 10 Pro.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Sự trang bị m&agrave;n h&igrave;nh Arc AMOLED với độ lớn 6.67 inch với độ ph&acirc;n giải Full HD th&ecirc;m v&agrave;o đ&oacute; l&agrave; giấy chứng nhận TUV gi&uacute;p giảm &aacute;nh s&aacute;ng xanh t&aacute;c động xấu đến thị lực của người d&ugrave;ng.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(15, 50, 'Apple MacBook Pro 13 Touch Bar M1 256GB 2020', '1641356610-product.jpg', 50000000, 42000000, 10, '<h2><span style=\"font-size:16px\"><strong>Macbook Pro M1 2020 &ndash; Hiệu năng vượt trội với chip M1</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Macbook Pro M1 2020 &ndash; Hiệu năng vượt trội với chip M1 mạnh mẽ</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">M&aacute;y t&iacute;nh bảng<strong>&nbsp;Macbook Pro M1</strong>&nbsp;thế hệ mới vừa ra mắt được trang bị vi xử l&yacute; M1 do ch&iacute;nh Apple tự thiết kế. Hứa hẹn mang đến hiệu năng cực k&igrave; mạnh mẽ, thời gian sử dụng cực k&igrave; ấn tượng.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế trau chuốt từng đường n&eacute;t, trải nghiệm h&igrave;nh ảnh sắc n&eacute;t với m&agrave;n h&igrave;nh Retina</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Vẫn kế thừa thiết kế từ người tiềm nhiệm trước đ&oacute; của m&igrave;nh,&nbsp;<strong><a href=\"https://cellphones.com.vn/laptop/mac/macbook-pro.html\" target=\"_blank\">Macbook Pro 2020</a>&nbsp;M1</strong>&nbsp;vẫn sở hữu thiết kế nh&ocirc;m nguy&ecirc;n khối, c&aacute;c đường viền tr&ecirc;n m&aacute;y được cắt CNC tỉ mỉ, sắc xảo.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>&gt;&gt;&gt;&nbsp;<strong>Kh&aacute;m ph&aacute; th&ecirc;m</strong>: Những n&eacute;t đẹp tinh tế cuốn h&uacute;t từ&nbsp;<a href=\"https://cellphones.com.vn/macbook-pro-14-inch-2021.html\" target=\"_blank\">Macbook Pro M1 2021</a></em></span></p>\r\n\r\n<p><span style=\"font-size:16px\">M&agrave;n h&igrave;nh Retina 13.3 inches sắc n&eacute;t, tấm nền LED mang đến m&agrave;u đen s&acirc;u. Hỗ trợ dải m&agrave;u rộng P3, c&ocirc;ng nghệ True Tone c&acirc;n bằng m&agrave;u trắng tự động để ph&ugrave; hợp với nhiệt độ m&agrave;u của &aacute;nh s&aacute;ng tự nhi&ecirc;n xung quanh, đem đến trải nghiệm hiển thị tự nhi&ecirc;n nhất.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Phản hồi si&ecirc;u tốc với vi xử l&yacute; M1 mạnh mẽ, macOS Big Sur nhiều t&iacute;nh năng mạnh mẽ</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Vi xử l&yacute; M1 đến từ Apple với 8 nh&acirc;n cho CPU v&agrave; GPU mang đến tốc độ nhanh đến 2,8 lần, xử l&yacute; đồ họa nhanh hơn 5 lần thế hệ trước. T&iacute;ch hợp 16 nh&acirc;n Neurral Engine n&acirc;ng cao khả năng xử l&yacute; cho c&aacute;c t&aacute;c vụ Machine Learning nhanh hơn 15 lần.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(16, 50, 'Apple MacBook Air 13 inch 128GB MQD32', '1641356775-product.jpg', 23000000, 20000000, 10, '<h2 dir=\"ltr\"><strong><span style=\"font-size:16px\">Apple MacBook Air 13 inch 128GB MQD32 - Cấu h&igrave;nh v&agrave; thiết kế</span></strong></h2>', '<h2 dir=\"ltr\"><strong><span style=\"font-size:16px\">Apple MacBook Air 13 inch 128GB MQD32 - Cấu h&igrave;nh v&agrave; thiết kế</span></strong></h2>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><strong><a href=\"https://cellphones.com.vn/laptop/mac/macbook-air.html\" target=\"_blank\" title=\"MacBook Air\">MacBook Air</a></strong>&nbsp;chiếc m&aacute;y t&iacute;nh x&aacute;ch tay được người d&ugrave;ng y&ecirc;u th&iacute;ch nhất trong tất cả sản phẩm MacBook Apple. L&agrave;m được điều n&agrave;y do m&aacute;y c&oacute; thiết kế mỏng, sang trọng c&ugrave;ng với cấu h&igrave;nh cao đi liền với mức gi&aacute; hợp l&yacute;. Phi&ecirc;n bản&nbsp;<em>Apple MacBook Air 13 inch 128GB MQD32 Ch&iacute;nh h&atilde;ng</em>&nbsp;hiện đang b&aacute;n tại CellphoneS được Apple n&acirc;ng cấp v&agrave;o năm 2017. Đ&acirc;y l&agrave; lựa chọn người d&ugrave;ng n&ecirc;n c&acirc;n nhắc khi cần mua laptop mới.</span></p>\r\n\r\n<h3 dir=\"ltr\"><strong><span style=\"font-size:16px\">Thiết kế mỏng, sang trọng tr&ecirc;n Apple MacBook Air 13 inch 128GB MQD32</span></strong></h3>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\">Giống với những phi&ecirc;n bản MacBook kh&aacute;c của Apple,&nbsp;<em>Apple MacBook Air 13 inch 128GB MQD32</em>&nbsp;sở hữu thiết kế kim loại nh&ocirc;m nguy&ecirc;n khối sang trọng với tổng k&iacute;ch thước 32.5 x 22.7 x 1.7 cm v&agrave; trọng lượng 1.35kg. Thiết kế nh&ocirc;m nguy&ecirc;n khối m&agrave;u bạc với c&aacute;c cạnh bo tr&ograve;n v&agrave; d&aacute;t mỏng tạo n&ecirc;n tổng thể chiếc m&aacute;y một thiết kế tuyệt mỹ, sang trọng v&agrave; gọn g&agrave;ng.</span></p>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><em>&gt;&gt;&gt;&nbsp;<strong>Kh&aacute;m ph&aacute; th&ecirc;m</strong>:&nbsp;<a href=\"https://cellphones.com.vn/macbook-air-13-i5-128gb-2018.html\" target=\"_blank\">Macbook Air 2018</a>&nbsp;mang thiết kế sang trọng tạo điểm nhấn cuốn h&uacute;t</em></span></p>\r\n\r\n<p dir=\"ltr\">&nbsp;</p>\r\n\r\n<h3 dir=\"ltr\"><strong><span style=\"font-size:16px\">Hiệu năng mạnh mẽ tr&ecirc;n Apple MacBook Air 13 inch 128GB MQD32</span></strong></h3>\r\n\r\n<p dir=\"ltr\"><span style=\"font-size:16px\"><em>MacBook Air 13 inch 128GB</em>&nbsp;sở hữu cấu h&igrave;nh con chip xử l&yacute; Intel Core i5 Dual-core 1.8Ghz Turbo Boost l&ecirc;n đến 2.9Ghz, RAM 8GB v&agrave; card đồ họa rời Intel HD Graphics 6000 gi&uacute;p m&aacute;y c&oacute; thể xử l&yacute; nhanh ch&oacute;ng v&agrave; mượt m&agrave; c&aacute;c t&aacute;c vụ sử dụng hằng ng&agrave;y trong c&ocirc;ng việc như soạn thảo văn bản, lướt web, l&agrave;m b&agrave;i thuyết tr&igrave;nh, nghe nhạc, xem phim&hellip; Ngo&agrave;i ra với việc trang bị dung lượng ổ SSD l&ecirc;n đến 128GB sẽ cho người d&ugrave;ng tốc độ đọc, ghi sao ch&eacute;p cực nhanh so với ổ HDD b&igrave;nh thường.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(17, 51, 'Tai nghe Bluetooth Apple AirPods Pro VN/A', '1641369024-product.jpg', 6000000, 4200000, 30, '<h2><span style=\"font-size:16px\"><strong>Airpods Pro &ndash; Tai nghe bluetooth với chất &acirc;m r&otilde; c&ugrave;ng khả năng chống nước IPX4</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Airpods Pro &ndash; Tai nghe bluetooth với chất &acirc;m r&otilde; c&ugrave;ng khả năng chống nước IPX4</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\"><em>Mẫu AirPods xuất hiện lần đầu v&agrave;o năm 2016, sau nhiều n&acirc;ng cấp về thiết kế v&agrave;o cấu h&igrave;nh, mẫu&nbsp;<a href=\"https://cellphones.com.vn/thiet-bi-am-thanh/tai-nghe/tai-nghe-bluetooth.html\" target=\"_blank\">tai nghe bluetooth ch&iacute;nh h&atilde;ng</a>&nbsp;ng&agrave;y c&agrave;ng được ho&agrave;n thiện. Mới đ&acirc;y, Apple đ&atilde; c&ocirc;ng bố mẫu tai nghe AirPods mới nhất &ndash; tai nghe bluetooth<strong>&nbsp;Apple Airpods Pro</strong>&nbsp;&ndash; với thiết kế mới c&ugrave;ng nhiều t&iacute;nh năng mới.</em></span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Airpod Pro sở hữu thiết kế nhỏ gọn, trọng lượng 5.4 gram</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Những thiết kế của Apple ng&agrave;y c&agrave;ng hướng đến người d&ugrave;ng hơn khi chiếc&nbsp;<strong>tai nghe&nbsp;Airpods Pro</strong>&nbsp;mới nhất kh&aacute; nhỏ gọn, trọng lượng chỉ 5.4g v&agrave; 45,6 gram cả hộp. Sự n&acirc;ng cấp đầu ti&ecirc;n phải kể đến đ&oacute; l&agrave;&nbsp;<em>Airpods Pro</em>&nbsp;được thiết kế như một tai nghe in-ear thay v&igrave; earbud to&agrave;n khung nhựa 100% như ở c&aacute;c phi&ecirc;n bản cũ. C&ugrave;ng với 3 m&uacute;t silicon mềm gi&uacute;p&nbsp;Airpods Pro kh&ocirc;ng chỉ gi&uacute;p tai nghe trở n&ecirc;n sang trọng hơn v&agrave; c&ograve;n gi&uacute;p tai nghe b&aacute;m chắc v&agrave;o tai, khả năng c&aacute;ch &acirc;m tốt cũng như ph&ugrave; hợp với nhiều k&iacute;ch thước tai kh&aacute;c nhau.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Kh&ocirc;ng chỉ nhỏ gọn, ph&ugrave; hợp với nhiều khu&ocirc;n tai m&agrave; Apple Airpods Pro c&ograve;n sở hữu l&otilde;i th&ocirc;ng kh&iacute; gi&uacute;p giảm thiểu &aacute;p lực l&ecirc;n tai, kh&ocirc;ng đau tai khi đeo trong thời gian d&agrave;i. B&ecirc;n cạnh đ&oacute; Airpods Pro c&ograve;n sở hữu ti&ecirc;u chuẩn chống nước v&agrave; bụi bẩn IPX4. Như vậy Apple đ&atilde; mang đến một tai nghe kh&ocirc;ng d&acirc;y kh&ocirc;ng chỉ sử dụng thoải m&aacute;i trong thời gian d&agrave;i m&agrave; c&ograve;n c&oacute; thể sử dụng trong nhiều điều kiện m&ocirc;i trường kh&aacute;c nhau.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>&Acirc;m thanh tr&ecirc;n Apple Airpods Pro r&otilde; n&eacute;t với c&ocirc;ng nghệ khử tiếng ồn chủ động</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><strong>Tai nghe AirPods Pro</strong>&nbsp;sở hữu nhiều c&ocirc;ng nghệ &acirc;m thanh mang đến chất lượng nghe - gọi tốt. Đầu ti&ecirc;n trong đ&oacute; phải kể đến c&ocirc;ng nghệ chống ồn chủ động. Với thiết kế một micro hướng ra ngo&agrave;i gi&uacute;p ph&aacute;t hiện &acirc;m thanh. Sau khi ph&aacute;t hiện &acirc;m thanh, Airpods Pro ngay lập tức sẽ loại bỏ &acirc;m thanh b&ecirc;n ngo&agrave;i đ&oacute; trước khi bạn nghe thấy n&oacute;. Một micro hướng v&agrave;o b&ecirc;n trong gi&uacute;p lắng nghe những &acirc;m thanh b&ecirc;n trong tai bạn. Tương tự với micro hướng ra b&ecirc;n ngo&agrave;i, micro b&ecirc;n trong cũng kiểm tra những &acirc;m thanh kh&ocirc;ng mong muốn v&agrave; loại bỏ ch&uacute;ng. T&iacute;nh năng khử tiếng ồn được điểu chỉnh li&ecirc;n tục với tần suất 200 lần mỗi gi&acirc;y. Nhờ vậy &acirc;m thanh cuối c&ugrave;ng bạn nghe được sẽ l&agrave; những &acirc;m thanh trong trẻo, chất lượng nhất.</span></p>', 1, NULL, '2022-01-05', '2022-01-02 17:00:00'),
(18, 51, 'Tai nghe không dây Beats Studio Buds', '1641368952-product.jpg', 4000000, 3100000, 30, '<h2><span style=\"font-size:16px\"><strong>Beats Studio Buds - Tai nghe với v</strong><strong>ẻ đẹp huyền b&iacute;</strong></span></h2>', '<h2><span style=\"font-size:16px\"><strong>Beats Studio Buds - Tai nghe với v</strong><strong>ẻ đẹp huyền b&iacute; c&ugrave;ng thiết kế ấn tượng</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Chiếc&nbsp;<strong>tai nghe&nbsp;Beats Studio Buds</strong>&nbsp;n&agrave;y l&agrave; thiết kế mới nhất năm 2021. Sự cải tiến của chiếc tai nghe &ldquo;đ&ecirc;m đen huyền b&iacute;&rdquo; n&agrave;y hứa hẹn đem tới những điểm th&uacute; vị đặc biệt cho người d&ugrave;ng khi mua tai nghe sử dụng. C&ugrave;ng xem kỹ hơn th&ocirc;ng tin về chiếc Beats Studio Buds đen dưới đ&acirc;y!</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Thiết kế nh&eacute;t tai, bộ ba phi&ecirc;n bản m&agrave;u sắc ấn tượng</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Beats Studio Buds c&oacute; thiết kế tương tự chiếc Powerbuds Pro của Beats, c&oacute; thiết kế nh&eacute;t tai tiện dụng. Được đặt trong một hộp sạc c&oacute; h&igrave;nh bầu dục, trọng lượng nhỏ nhẹ c&oacute; thể đem đi khắp nơi nếu muốn.&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Ngo&agrave;i m&agrave;u đen tuyền, Beats Studio Buds c&ograve;n c&oacute; đến 2 phi&ecirc;n bản m&agrave;u sắc kh&aacute;c đ&oacute; l&agrave; trắng v&agrave; đỏ. Bộ ba m&agrave;u sắc n&agrave;y đều l&agrave; những m&agrave;u sắc ấn tượng được giới trẻ ưa chuộng chọn lựa.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\"><strong>Chip Apple mạnh mẽ, t&iacute;nh năng khử ồn tạo kh&ocirc;ng gian ri&ecirc;ng</strong></span></h3>\r\n\r\n<p><span style=\"font-size:16px\">Tai nghe Beats Studio Buds được trang bị con chip nh&agrave; Apple rất mạnh mẽ, để gh&eacute;p nối Studio Buds nhanh ch&oacute;ng bạn chỉ cần n&oacute;i &quot;Hey Siri&quot;. Tai nghe sẽ tự động gh&eacute;p nối cực đơn giản, loại bỏ c&aacute;c thao t&aacute;c thực hiện rườm r&agrave;.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">C&oacute; thiết kế khử ồn hiệu quả, tạo kh&ocirc;ng gian ri&ecirc;ng gi&uacute;p bạn thoải m&aacute;i đắm ch&igrave;m trong &acirc;m nhạc kh&ocirc;ng bị bất cứ thứ g&igrave; phiền nhiễu. Thiết bị c&oacute; tips cao su thay thế đảm bảo hiệu quả chống ồn lu&ocirc;n cao nhất.</span></p>\r\n\r\n<h2><span style=\"font-size:16px\"><strong>Mua ngay tai nghe Beats Studio Buds gi&aacute; rẻ, chất lượng tại Cellphone</strong><strong>S</strong></span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Tai nghe ch&iacute;nh h&atilde;ng, chất lượng cao sẽ cho bạn những ph&uacute;t gi&acirc;y thưởng thức &acirc;m nhạc tuyệt vời, l&agrave; phụ kiện kh&ocirc;ng thể thiếu d&agrave;nh cho bạn. H&atilde;y mua ngay&nbsp;<strong>Beats Studio Buds ch&iacute;nh h&atilde;ng</strong>&nbsp;tại cửa h&agrave;ng Cellphones để hưởng ch&iacute;nh s&aacute;ch ưu đ&atilde;i gi&aacute; mới nhất của ch&uacute;ng t&ocirc;i.</span></p>', 1, NULL, '2022-01-05', '2022-01-04 17:00:00'),
(19, 49, 'Sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA', '1641357375-product.jpg', 800000, 720000, 30, '<h2><span style=\"font-size:16px\"><strong>Sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA</strong></span></h2>', '<h2><span style=\"font-size:16px\">Sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA ch&iacute;nh h&atilde;ng tiết kiệm tối đa thời gian sạc điện thoại</span></h2>\r\n\r\n<p><span style=\"font-size:16px\">Nhanh ch&oacute;ng, tiết kiệm tối đa thời gian l&agrave; những g&igrave; m&agrave; người d&ugrave;ng iPhone mong đợi ở chiếc sạc pin của m&igrave;nh. Để c&oacute; thể l&agrave;m được điều đ&oacute; th&igrave; việc sử dụng củ sạc nhanh Apple iPhone 20W Type-C PD MHJE3ZA ch&iacute;nh h&atilde;ng l&agrave; điều cần thiết m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua.</span></p>\r\n\r\n<h3><span style=\"font-size:16px\">Thiết kế nhỏ gọn, an to&agrave;n d&ograve;ng điện</span></h3>\r\n\r\n<p><span style=\"font-size:16px\"><a href=\"https://cellphones.com.vn/phu-kien/sac-dien-thoai/sac/sac-nhanh-power-delivery.html\" target=\"_blank\" title=\"Củ sạc nhanh\">Củ sạc nhanh</a>&nbsp;Apple iPhone 20W Type-C PD MHJE3ZA ch&iacute;nh h&atilde;ng được thiết kế si&ecirc;u nhỏ gọn, tinh tế gi&uacute;p bạn c&oacute; thể mang đến bất cứ nơi đ&acirc;u. Chất liệu cao cấp c&ugrave;ng m&agrave;u trắng nổi bật mang đến sự sang trọng v&agrave; độ bền bỉ c&ugrave;ng với thời gian.</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Củ sạc c&ograve;n c&oacute; khả năng bảo vệ sản phẩm tr&aacute;nh qu&aacute; d&ograve;ng, qu&aacute; điện &aacute;p hay hiện tượng mạch điện bị chập v&agrave; qu&aacute; nhiệt trong qu&aacute; tr&igrave;nh sạc. Sản phẩm được kiểm định khắt khe v&agrave; được cấp chứng chỉ an to&agrave;n ch&aacute;y nổ: ROSH, CE, FCC gi&uacute;p đảm đảm an to&agrave;n cho người sử dụng.</span></p>\r\n\r\n<p><span style=\"font-size:16px\"><em>&gt;&gt;&gt;&nbsp;<strong>Xem th&ecirc;m</strong>:&nbsp;<a href=\"https://cellphones.com.vn/de-sac-doi-apple-magsafe-mhxf3.html\" target=\"_blank\">Sạc đ&ocirc;i Apple MagSafe Duo</a>&nbsp;| Ch&iacute;nh h&atilde;ng Apple Việt Nam mang đến một thiết kế sang trọng, vượt trội</em></span></p>', 0, NULL, '2022-01-05', '2022-01-04 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_cmt`
--

CREATE TABLE `product_cmt` (
  `id` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `id_sp` int(11) NOT NULL,
  `content` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `product_cmt`
--

INSERT INTO `product_cmt` (`id`, `id_customer`, `id_sp`, `content`, `date`) VALUES
(1, 1, 20, 'Hàng Đẹp Sốp ơi', '2021-08-25 13:03:13'),
(2, 1, 21, 'Dep', '2021-08-25 13:10:01'),
(3, 1, 21, 'dc', '2021-08-25 13:11:11'),
(4, 1, 21, 'hang chat luong', '2021-08-25 13:11:21'),
(5, 1, 20, 'Oke', '2021-08-25 13:15:12'),
(9, 1, 26, 'Nice Shoes ', '2021-08-30 02:07:38'),
(10, 1, 32, 'Víp Số Pro', '2021-08-30 02:08:06'),
(11, 1, 69, 'Hàng Đẹp', '2021-09-02 02:28:09'),
(12, 1, 69, 'Hàng Đẹp', '2021-09-02 02:28:09'),
(13, 1, 69, 'oke', '2021-09-02 02:28:18'),
(14, 1, 70, 'đc', '2021-09-02 02:28:29'),
(15, 4, 68, 'ok', '2021-11-16 10:05:54'),
(16, 6, 19, 'okok', '2022-01-12 07:26:08'),
(17, 6, 12, 'còn hàng không shop', '2022-01-12 07:27:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'nhombashop', 'nhom3@gmail.com', NULL, '$2y$10$MNDyl4wSE.yts1z50DtXP..UL50.yXsNN8da2duK0Nzxxzo7JOI4y', 0, NULL, '2022-01-16 06:40:56', '2022-01-16 06:40:56'),
(5, 'sản phẩm 1', 'duc@gmail.com', NULL, '$2y$10$MYaCsB.uDChOg6f6Avi1.Owzf8ablUDPtm3gUptsgq8TthAEeoSwS', 0, NULL, '2022-01-16 06:45:47', '2022-01-16 06:45:47'),
(7, 'sản phẩm 1', 'ngovietduc.b3@gmail.com', NULL, '$2y$10$r2VpbkhkF.oUy7YN00Cv7.8unHCA69Xwo74XxDQXzqEkKgH02/4lm', 0, NULL, '2022-01-16 06:49:47', '2022-01-16 06:49:47'),
(10, 'duc', 'qww@gmail.com', NULL, '$2y$10$G5qaAGrwtGPpFIoE/C8UhuSQgb4JwGFiutxGIkmRw9PuQ0cxPItke', 0, NULL, '2022-01-16 06:58:14', '2022-01-16 06:58:14'),
(11, 'Người dùng test', 'admin@gmail.com', NULL, '$2y$10$tiDW5DUssOb/uQ3t4Mi.7OUNc3bMvOeGkZzBkLJfk/Uljjp8/u1YS', 0, NULL, '2022-01-16 07:03:18', '2022-01-16 07:03:18'),
(12, 'duc', 'ducS@gmail.com', NULL, '$2y$10$S9NI5n1ci/NwnvKjM3eO0.0kCHeIXdhLohfdyjlM7JcrjjWCsv1Lq', 0, NULL, '2022-01-16 18:51:07', '2022-01-16 18:51:07'),
(13, 'nhombashop', 'q@gmai', NULL, '$2y$10$Ey/PD96UcvtVaDMTr8PBF.lQwBa5h59G8pZaB2iHHiwiY1t2ocawu', 0, NULL, '2022-01-16 18:51:40', '2022-01-16 18:51:40'),
(14, 'Đức', 'user1@gmail.com', NULL, '$2y$10$caSacaNmZUxCNAwu37QnWegnUm7B9Kn7u5UG6lP0Tr.fBq0STEAQa', 1, NULL, '2022-01-17 18:22:59', '2022-01-17 18:22:59'),
(15, 'Ngô Đức', 'bigwin@gmail.com', NULL, '$2y$10$9/YJwL.zXW8y9dFPVXcz3.GwJqQNBApK05ldtPcWWmEDktUwg/Kfq', 0, NULL, '2022-01-31 11:06:37', '2022-01-31 11:06:37');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `img_products`
--
ALTER TABLE `img_products`
  ADD PRIMARY KEY (`id`);

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
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_cmt`
--
ALTER TABLE `product_cmt`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `img_products`
--
ALTER TABLE `img_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1244;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `product_cmt`
--
ALTER TABLE `product_cmt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
