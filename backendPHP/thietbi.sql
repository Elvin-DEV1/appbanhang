-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th7 12, 2023 lúc 03:32 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `thietbi`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `iddonhang` int(11) NOT NULL,
  `idsanpham` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `gia` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`iddonhang`, `idsanpham`, `soluong`, `gia`) VALUES
(10, 44, 1, '19490000'),
(10, 43, 2, '3190000'),
(10, 42, 2, '3190000'),
(11, 44, 1, '19490000'),
(12, 44, 1, '19490000'),
(14, 32, 1, '16490000'),
(14, 31, 1, '20990000'),
(14, 44, 2, '38980000'),
(15, 26, 1, '26990000'),
(15, 44, 1, '19490000'),
(16, 44, 1, '19490000'),
(17, 41, 1, '6290000'),
(17, 43, 3, '3190000'),
(17, 34, 2, '16490000'),
(18, 43, 1, '3190000'),
(19, 44, 1, '19490000'),
(20, 44, 1, '19490000'),
(21, 42, 1, '3190000'),
(22, 44, 1, '19490000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `diachi` text NOT NULL,
  `sodienthoai` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `soluong` int(11) NOT NULL,
  `tongtien` varchar(255) NOT NULL,
  `trangthai` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `iduser`, `diachi`, `sodienthoai`, `email`, `soluong`, `tongtien`, `trangthai`) VALUES
(1, 2, 'fdavvadeqbd dvaaarvfd', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(2, 2, '5555555', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(3, 2, '8884845', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(4, 2, '894655648', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(5, 2, '894655648', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(6, 2, '894655648', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(7, 2, '894655648', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(8, 2, '894655648', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(9, 2, '894655648', '0123456789', 'longmatic1.0@gmail.com', 5, '250000', 0),
(10, 23, 'son dong', '0354295417', 'longmatic1.8@gmail.com', 5, '32250000', 0),
(11, 23, 'sondong', '0354295417', 'longmatic1.8@gmail.com', 1, '19490000', 4),
(12, 23, 'sondong', '0354295417', 'longmatic1.8@gmail.com', 1, '19490000', 1),
(13, 23, 'longdaica', '0354295417', 'longmatic1.8@gmail.com', 3, '55970000', 3),
(14, 23, 'longdaica', '0354295417', 'longmatic1.8@gmail.com', 4, '115440000', 3),
(15, 23, '14 son dong', '0354295417', 'longmatic1.8@gmail.com', 2, '46480000', 1),
(16, 25, 'chua co', '123456789', 'longmatic1.9@gmail.com', 1, '19490000', 0),
(17, 26, 'carrington', '123456789', 'user1@gmail.com', 6, '48840000', 0),
(18, 26, 'old trafford', '123456789', 'user1@gmail.com', 1, '3190000', 3),
(19, 26, 'chua co', '123456789', 'user1@gmail.com', 1, '19490000', 0),
(20, 26, 'old trafford', '123456789', 'user1@gmail.com', 1, '19490000', 2),
(21, 26, 'chua co', '123456789', 'user1@gmail.com', 1, '3190000', 0),
(22, 26, 'chua co', '123456789', 'user1@gmail.com', 1, '19490000', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Trang chủ', 'https://cdn-icons-png.flaticon.com/512/25/25694.png'),
(2, 'Điện thoại', 'https://vtv1.mediacdn.vn/2019/10/10/photo-1-15706463929181755249740.jpg'),
(3, 'Laptop', 'https://maytinhanphat.vn/img/image/tin/203/thay-man-hinh-laptop-chat-luong-can-luu-y-den-nhung-van-de-gi-1.jpg'),
(4, 'Liên hệ', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Google_Contacts_icon.svg/2048px-Google_Contacts_icon.svg.png'),
(5, 'Thông tin', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Info_icon_002.svg/768px-Info_icon_002.svg.png'),
(8, 'Đơn hàng', 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Info_icon_002.svg/768px-Info_icon_002.svg.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `mota` varchar(1000) NOT NULL,
  `idsanpham` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `mota`, `idsanpham`) VALUES
(1, 'iPhone 14 Pro Max 128GB', 28090000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/_/t_m_18.png', '-Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\n-Cấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\n-Làm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động\r\n-Pin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến', 1),
(2, 'Xiaomi Redmi Note 11 128GB', 4090000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/8/0/800x800-640x640-5.png', '-Nâng cao trải nghiệm thị giác - Màn hình AMOLED 6.43\" Full HD+, công nghệ DotDisplay\r\n-Hiệu năng ấn tượng - Snapdragon 680 8 nhân cùng RAM 4GB, bộ nhớ 128GB\r\n-Chinh phục mọi khoảnh khắc - Cụm 4 camera 50MP, nhiều chế độ chụp tiện ích\r\n-Thoải mái sử dụng không lắng lo - Viên pin 5000 mAh, sạc nhanh 33 W', 1),
(3, 'OPPO Reno8 T 5G (8GB - 128GB)', 9990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/o/p/oppo-reno8t-vang1-thumb-600x600.jpg', '-Thiết kế thời thượng - Tràn viền, mỏng nhẹ đặc biệt phù hợp với các bạn trẻ, yêu khám phá xu hướng mới\r\n-Giải trí ấn tượng - Màn hình 1 tỉ màu, tần số quét 120Hz ấn tượng\r\n-Chụp ảnh chân dung chuyên nghiệp - Camera 108MP sắc nét đi kèm thuật toán AI\r\n-Pin dùng cả ngày - Viên pin lớn 4800 mAh, sạc siêu nhanh đến 67 W', 1),
(4, 'Samsung Galaxy S23 Ultra 256GB', 26990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/s/2/s23-ultra-tim.png', '-Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh\r\n-Chiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\r\n-Nâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video\r\n-Thiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế', 1),
(5, 'Nokia C31 4GB 128GB', 2450000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/1/_/1_250_1.jpg', '-Bộ 3 camera AI sắc nét 13MP tích hợp ứng dụng Camera từ Google cho những bức ảnh hoàn hảo\r\n-Màn hình siêu rộng 6.7” chuẩn HD+ mang đến trải nghiệm giải trí chất lượng cao với hình ảnh sống động\r\n-Hệ điều hành Android 12 mới nhất với tính năng bảo mật và chia sẻ dễ dàng kết hợp vi xử lý 8 nhân mạnh mẽ giúp thao tác mượt mà\r\n-Dung lượng pin 5050 mAh, cùng chế độ siêu tiết kiệm pin cho thời gian sử dụng lên đến 3 ngày\r\n-Tiêu chuẩn kháng nước IP52 phù hợp với điều kiện thời tiết tại Việt Nam.\r\n-Trọn an tâm với 02 năm cập nhật bảo mật hàng quý, mở khóa vân tay và nhận diện khuôn mặt', 1),
(6, 'Xiaomi 13 8GB 256GB', 22990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/p/m/pms_1670745783.80967984.png', '-Ống kính Leica chuyên nghiệp - 2 phong cách nhiếp ảnh vintage cùng hiện đại sống động giúp bạn tha hồ lựa chọn\r\n-Đắm chìm với độ tương phản tuyệt vời - Màn hình Pro HDR, cạnh viền mỏng\r\n-Snapdragon 8 Gen 2 dẫn đầu - Siêu nhanh và tiết kiệm năng lượng, đa nhiệm mượt mà, chiến game cực đã\r\n-Dẫn đầu sạc siêu nhanh - Sạc nhanh 67W, sạc đầy 100% chỉ trong 38 phút.', 1),
(7, 'Apple Macbook Pro 13 M2 2022 8GB 256GB I Chính hãng Apple Việt Nam', 30290000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/m/a/macbook_256.png', '-Chip M2 mới nhất - hiệu năng hàng đầu, thoải mái sử dụng các phần mềm đồ hoạ hay render video\r\n-Màn hình Retina - màu sắc hiển thị sống động tạo ra không gian giải trí đỉnh cao\r\n-Thiết kế sang trọng - Trọng lượng máy chỉ 1.4kg, độ dày chỉ 15.6mm giúp bạn dễ dàng mang theo\r\n-Âm thanh chân thật - Tích hợp loa kép cùng công nghệ Dolby Atmos mang đến chất lượng âm thanh tuyệt vời', 2),
(8, 'Laptop Lenovo Ideapad Gaming 3 15ARH7', 23990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/1/h/1h47.png', 'Cấu hình chơi game và đồ họa đỉnh cao, cân mọi tựa game - R7 6800H cùng card rời RTX 3050. Có khả năng chỉnh sửa hình ảnh trên PTS, Render video ngắn mượt mà.\r\nRam 8GB + 1 khe cắm, ổ cứng SSD 512GB mang đến tốc độ xử lý nhanh cùng đa nhiệm mượt mà.\r\n-Màn hình Full HD, tần số quét 120Hz, kích thước chuẩn 15.6 inch, tấm nền IPS, 250nits, chống chói bảo vệ mắt, mang lại chất lượng hiển thị sắc nét.\r\n-Tích hợp webcam 720p cho phép đàm thoại thông qua video thoải mái.\r\n-Bàn phím được tích hợp đèn - Thỏa sức làm việc trong môi trường thiếu sáng.\r\n-Năng lượng bất tận cả ngày với viên pin 3 Cell, 60Wh.\r\n-Thiết kế vỏ nhựa cứng cáp, nặng 2.315 kg cầm nặng tay.\r\n-Máy đi kèm Windows 11 bản quyền.', 2),
(9, 'Laptop Gaming Acer Nitro 5 Eagle AN515-57-54MV NH.QENSV.003', 20990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/e/text_ng_n_7.png', '-Thiết kế đậm chất gaming cứng cáp, hầm hố và có độ hoàn thiện cao\r\n-Màn hình FullHD kích thước chuẩn 15,6 inch, hiển thị sắc nét, màu sắc sống động\r\n-Hiệu năng mạnh mẽ, đa nhiệm mượt mà - Intel Core i5-11400H, RAM 8GB\r\n-Năng lượng bất tận cả ngày với viên pin 4-cell, 57.5 Wh', 2),
(10, 'Laptop ASUS Gaming TUF FX506LHB-HN188W', 16490000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/5/h/5h03_1.png', '-\"Chip I5-10300H cùng card đồ họa rời GeForce GTX 1650 edit video thoải mái, chiến game hiệu năng hàng đầu\r\n-Ram 8GB, nâng cấp tối đa 32GB cùng ổ cứng SSD có không gian lưu trữ lên tới 512GB mang lại thời gian khởi động hay load ứng dụng nhanh chóng\r\n-Màn hình 15.6 inches với độ phân giải Full HD, độ phủ màu SRGB 62.5% chất lượng hiển thị rõ ràng\r\n-Đa dạng cổng giao tiếp, dễ dàng sử dụng\r\n-Bàn phím được tích hợp đèn nền LED RGB - sống động trong từng trận đấu\r\n-Vỏ nhựa cứng cáp, trọng lượng máy 2.30 kg cho cảm giác cầm chắc tay\r\n-Máy đi kèm Windows 11 Home bản quyền\"', 2),
(11, 'Laptop Gaming Acer Nitro 5 Eagle AN515-57-54MV NH.QENSV.003', 20990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/e/text_ng_n_7.png', '-Thiết kế đậm chất gaming cứng cáp, hầm hố và có độ hoàn thiện cao\r\n-Màn hình FullHD kích thước chuẩn 15,6 inch, hiển thị sắc nét, màu sắc sống động\r\n-Hiệu năng mạnh mẽ, đa nhiệm mượt mà - Intel Core i5-11400H, RAM 8GB\r\n-Năng lượng bất tận cả ngày với viên pin 4-cell, 57.5 Wh', 2),
(12, 'Laptop ASUS Gaming TUF FX506LHB-HN188W', 16490000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/5/h/5h03_1.png', '-\"Chip I5-10300H cùng card đồ họa rời GeForce GTX 1650 edit video thoải mái, chiến game hiệu năng hàng đầu\r\n-Ram 8GB, nâng cấp tối đa 32GB cùng ổ cứng SSD có không gian lưu trữ lên tới 512GB mang lại thời gian khởi động hay load ứng dụng nhanh chóng\r\n-Màn hình 15.6 inches với độ phân giải Full HD, độ phủ màu SRGB 62.5% chất lượng hiển thị rõ ràng\r\n-Đa dạng cổng giao tiếp, dễ dàng sử dụng\r\n-Bàn phím được tích hợp đèn nền LED RGB - sống động trong từng trận đấu\r\n-Vỏ nhựa cứng cáp, trọng lượng máy 2.30 kg cho cảm giác cầm chắc tay\r\n-Máy đi kèm Windows 11 Home bản quyền\"', 2),
(13, 'Laptop Lenovo ThinkBook 13s G3 ACN 20YA0038VN', 13490000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/l/e/lenovo.png', '-Máy tính xách tay siêu mỏng nhẹ với vỏ hợp kim sang trọng kết hợp màn hình viền mỏng vô cực bắt mắt.\r\n-Màn hình 13.3 inch độ phân giải WUXGA, gam màu 100% sRGB cùng màn hình chống chói cho hình ảnh chân thực, đáp ứng cả nhu cầu làm việc ngoài trời nắng gắt.\r\n-Bộ vi xử lý AMD Ryzen 5 5600U đảm bảo tối ưu việc xử lý đa nhiệm và phục vụ các tác phụ như chỉnh sửa ảnh, chơi các tựa game nhẹ mà vẫn đảm bảo tiết kiệm pin.\r\nCard đồ họa AMD Radeon Graphics hỗ trợ xử lý nhanh tác vụ học tập, văn phòng một cách nhanh gọn.\r\n-RAM 8GB đa nhiệm thực hiện nhiều tác vụ cùng lúc, chuyển đổi ứng dụng mà không lo tình trạng giật, lag máy. Cùng với bộ nhớ trong 256GB SSD cho bạn không gian lưu trữ rộng lớn, thoải mái lưu trữ dữ liệu. \r\n-Máy tích hợp bảo mật vân tay an toàn, giúp mở khóa máy chỉ với 1 chạm.', 2),
(14, 'Surface Pro 7 Plus Core i5 / 8GB / 128GB Nhập Khẩu Chính Hãng', 19990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/e/text_ng_n_5__3.png', '-Thiết kế nhỏ gọn, hoàn thiện từ hợp kim magie mang đến cảm giác vô cùng cao cấp\r\n-Trải ngiệm làm việc tiện lợi hơn bao giờ hết - Hỗ trợ bút cảm ứng Surface Pen và bàn phím Type Cover\r\n-Sức mạnh vượt trội và đáp ứng nhu cầu lưu trữ lớn - Core i5-1135G7, ổ cứng128GB SSD\r\n-Thoả sức sử dụng cả ngày - Viên pin lớn hơn với dung lượng 50,4Wh sử dụng tới 15 giờ liên tục', 2),
(15, 'Laptop MSI Gaming GF63 Thin 11UD 473', 18590000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/9/_/9_9_21.jpg', '-\"- Chip i5-11400H cùng card đồ họa rời RTX 3050 Ti cho khả năng chiến các tựa game nặng, chỉnh sửa hình ảnh trên PTS, Render video ngắn mượt mà\r\n-Ram 8GB với 1 khe cắm có thể nâng cấp tối đa lên 64GB cùng ổ cứng SSD 512GB mang đến tốc độ xử lý nhanh cùng đa nhiệm mượt mà\r\n-Màn hình LCD 15.6 inches với dải màu 72% NTSC cho trải nghiệm màu sắc chân thực\r\n-Tích hợp web cam HD 720p cho phép đàm thoại thông qua video thoải mái\r\n-Trọng lượng 1.86 kg thuận tiện di chuyển, mang theo\r\n-Máy đi kèm Windows 11 Home bản quyền\"', 2),
(16, 'Laptop HP 15-HP 15 T-DW300 1A3Y3AV', 14990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/1/6/16_2_135.jpg', '-Thiết kế nhỏ gọn, hoàn thiện từ hợp kim magie mang đến cảm giác vô cùng cao cấp\r\n-Trải ngiệm làm việc tiện lợi hơn bao giờ hết - Hỗ trợ bút cảm ứng Surface Pen và bàn phím Type Cover\r\n-Sức mạnh vượt trội và đáp ứng nhu cầu lưu trữ lớn - Core i5-1135G7, ổ cứng128GB SSD\r\n-Thoả sức sử dụng cả ngày - Viên pin lớn hơn với dung lượng 50,4Wh sử dụng tới 15 giờ liên tục', 2),
(17, 'OnePlus 8T 5G', 10990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/o/n/oneplus-8t-600x600-1-200x200.jpg', '-Thiết kế cực sang, chuẩn smartphone cao cấp\r\n-Trải nghiệm mượt mà, giải trí cực đã - Màn hình AMOLED 6.55 inches\r\n-Hiệu năng mạnh mẽ, trải nghiệm chơi game mượt mà - Snapdragon 865, RAM 12 GB\r\n-Camera đa chức năng ấn tượng - Cảm biến chính 48 MP, đa dạng chế độ chụp', 1),
(18, 'iPhone 12 128GB I Chính hãng VN/A', 16690000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/2/_/2_241_2.jpg', '-Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\n-Rực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\n-Chụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\n-Bền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', 1),
(19, 'Realme 9 Pro Plus', 6290000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/9/_/9_pro_plus.png', '-Thiết kế sang trọng, thu hút mọi ánh nhìn - Mặt lưng hiệu ứng gradiant bắt mắt, thay đổi theo từng góc nhìn\r\n-Không gian giải trí sống động - Màn hình kích thước lớn 6.4\", tấm nền Super AMOLED hiển thị sắc nét\r\n-Hiệu năng mạnh mẽ, cân mọi tựa game - Chip MediaTek Dimensity 920 5G 8 nhân, RAM khủng 8GB\r\n-Mang lại những bức ảnh chuyên nghiệp - Camera sau cảm biến 50MP, đa dạng chế độ chụp', 1),
(20, 'Tecno Pova 2', 3190000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/e/tecno-pova-2-2.jpg', '-Thiết kế đậm hiện đại, đậm bản sắc công nghệ\r\n-Khả năng xử lý ấn tượng - Chip MediaTek Helio G85 (12nm) mạnh mẽ, RAM 4 GB\r\n-Khung hình rộng, tốc độ làm mới cao - Màn hình 6.9 inches IPS LCD, viền cực mỏng\r\n-Năng lượng ấn tượng, sử dụng nhiều giờ - Pin 7000 mAh, sạc nhanh 18W', 1),
(21, 'OPPO A17K', 3190000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/_/t_i_xu_ng_44_.png', '-Chuẩn nét từng khung hình - Trang bị màn hình LCD 6.56 inch với độ phân giải HD+\r\n-Hiệu năng cải tiến, bứt phá tốc độ - Chip Helio G35, RAM 4GB và bộ nhớ trong 64GB\r\n-Trọn vẹn năng lượng suốt cả ngày - Viên pin lớn 5000 mAh, sạc 10W\r\n-Bảo mật nâng cao với mở khoá vân tay cạnh viền, mở khoá khuôn mặt', 1),
(22, 'ASUS ROG Phone 6 16GB 512GB', 19490000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/a/s/asus-rog-phone-6-12gb-256gb_2.png', '-Hiệu năng dẫn đầu mọi trận đấu - Chip Snapdragon® 8+ Gen 1 mạnh mẽ cùng RAM 16GB\r\n-Chất lượng hiển thị đúng chuẩn gaming - Màn hình 6.78 inches, FullHD+, HDR10+ cùng tần số quét 165Hz\r\n-Thiết kế thân thiện cho chơi game, mặt lưng ánh sáng Aura RGB độc đáo\r\n-Bùng nổ năng lượng cho ngày dài ấn tượng - Viên pin 6000 mAh, sạc nhanh siêu tốc 65W', 1),
(23, 'iPhone 14 Pro Max 128GB', 28090000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/_/t_m_18.png', '-Màn hình Dynamic Island - Sự biến mất của màn hình tai thỏ thay thế bằng thiết kế viên thuốc, OLED 6,7 inch, hỗ trợ always-on display\r\n-Cấu hình iPhone 14 Pro Max mạnh mẽ, hiệu năng cực khủng từ chipset A16 Bionic\r\n-Làm chủ công nghệ nhiếp ảnh - Camera sau 48MP, cảm biến TOF sống động\r\n-Pin liền lithium-ion kết hợp cùng công nghệ sạc nhanh cải tiến', 1),
(24, 'Xiaomi Redmi Note 11 128GB', 4090000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/8/0/800x800-640x640-5.png', '-Nâng cao trải nghiệm thị giác - Màn hình AMOLED 6.43\" Full HD+, công nghệ DotDisplay\r\n-Hiệu năng ấn tượng - Snapdragon 680 8 nhân cùng RAM 4GB, bộ nhớ 128GB\r\n-Chinh phục mọi khoảnh khắc - Cụm 4 camera 50MP, nhiều chế độ chụp tiện ích\r\n-Thoải mái sử dụng không lắng lo - Viên pin 5000 mAh, sạc nhanh 33 W', 1),
(25, 'OPPO Reno8 T 5G (8GB - 128GB)', 9990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/o/p/oppo-reno8t-vang1-thumb-600x600.jpg', '-Thiết kế thời thượng - Tràn viền, mỏng nhẹ đặc biệt phù hợp với các bạn trẻ, yêu khám phá xu hướng mới\r\n-Giải trí ấn tượng - Màn hình 1 tỉ màu, tần số quét 120Hz ấn tượng\r\n-Chụp ảnh chân dung chuyên nghiệp - Camera 108MP sắc nét đi kèm thuật toán AI\r\n-Pin dùng cả ngày - Viên pin lớn 4800 mAh, sạc siêu nhanh đến 67 W', 1),
(26, 'Samsung Galaxy S23 Ultra 256GB', 26990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/s/2/s23-ultra-tim.png', '-Thoả sức chụp ảnh, quay video chuyên nghiệp - Camera đến 200MP, chế độ chụp đêm cải tiến, bộ xử lí ảnh thông minh\r\n-Chiến game bùng nổ - chip Snapdragon 8 Gen 2 8 nhân tăng tốc độ xử lí, màn hình 120Hz, pin 5.000mAh\r\n-Nâng cao hiệu suất làm việc với Siêu bút S Pen tích hợp, dễ dàng đánh dấu sự kiện từ hình ảnh hoặc video\r\n-Thiết kế bền bỉ, thân thiện - Màu sắc lấy cảm hứng từ thiên nhiên, chất liệu kính và lớp phim phủ PET tái chế', 1),
(27, 'Nokia C31 4GB 128GB', 2450000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/1/_/1_250_1.jpg', '-Bộ 3 camera AI sắc nét 13MP tích hợp ứng dụng Camera từ Google cho những bức ảnh hoàn hảo\r\n-Màn hình siêu rộng 6.7” chuẩn HD+ mang đến trải nghiệm giải trí chất lượng cao với hình ảnh sống động\r\n-Hệ điều hành Android 12 mới nhất với tính năng bảo mật và chia sẻ dễ dàng kết hợp vi xử lý 8 nhân mạnh mẽ giúp thao tác mượt mà\r\n-Dung lượng pin 5050 mAh, cùng chế độ siêu tiết kiệm pin cho thời gian sử dụng lên đến 3 ngày\r\n-Tiêu chuẩn kháng nước IP52 phù hợp với điều kiện thời tiết tại Việt Nam.\r\n-Trọn an tâm với 02 năm cập nhật bảo mật hàng quý, mở khóa vân tay và nhận diện khuôn mặt', 1),
(28, 'Xiaomi 13 8GB 256GB', 22990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/p/m/pms_1670745783.80967984.png', '-Ống kính Leica chuyên nghiệp - 2 phong cách nhiếp ảnh vintage cùng hiện đại sống động giúp bạn tha hồ lựa chọn\r\n-Đắm chìm với độ tương phản tuyệt vời - Màn hình Pro HDR, cạnh viền mỏng\r\n-Snapdragon 8 Gen 2 dẫn đầu - Siêu nhanh và tiết kiệm năng lượng, đa nhiệm mượt mà, chiến game cực đã\r\n-Dẫn đầu sạc siêu nhanh - Sạc nhanh 67W, sạc đầy 100% chỉ trong 38 phút.', 1),
(29, 'Apple Macbook Pro 13 M2 2022 8GB 256GB I Chính hãng Apple Việt Nam', 30290000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/m/a/macbook_256.png', '-Chip M2 mới nhất - hiệu năng hàng đầu, thoải mái sử dụng các phần mềm đồ hoạ hay render video\r\n-Màn hình Retina - màu sắc hiển thị sống động tạo ra không gian giải trí đỉnh cao\r\n-Thiết kế sang trọng - Trọng lượng máy chỉ 1.4kg, độ dày chỉ 15.6mm giúp bạn dễ dàng mang theo\r\n-Âm thanh chân thật - Tích hợp loa kép cùng công nghệ Dolby Atmos mang đến chất lượng âm thanh tuyệt vời', 2),
(30, 'Laptop Lenovo Ideapad Gaming 3 15ARH7', 23990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/1/h/1h47.png', 'Cấu hình chơi game và đồ họa đỉnh cao, cân mọi tựa game - R7 6800H cùng card rời RTX 3050. Có khả năng chỉnh sửa hình ảnh trên PTS, Render video ngắn mượt mà.\r\nRam 8GB + 1 khe cắm, ổ cứng SSD 512GB mang đến tốc độ xử lý nhanh cùng đa nhiệm mượt mà.\r\n-Màn hình Full HD, tần số quét 120Hz, kích thước chuẩn 15.6 inch, tấm nền IPS, 250nits, chống chói bảo vệ mắt, mang lại chất lượng hiển thị sắc nét.\r\n-Tích hợp webcam 720p cho phép đàm thoại thông qua video thoải mái.\r\n-Bàn phím được tích hợp đèn - Thỏa sức làm việc trong môi trường thiếu sáng.\r\n-Năng lượng bất tận cả ngày với viên pin 3 Cell, 60Wh.\r\n-Thiết kế vỏ nhựa cứng cáp, nặng 2.315 kg cầm nặng tay.\r\n-Máy đi kèm Windows 11 bản quyền.', 2),
(31, 'Laptop Gaming Acer Nitro 5 Eagle AN515-57-54MV NH.QENSV.003', 20990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/e/text_ng_n_7.png', '-Thiết kế đậm chất gaming cứng cáp, hầm hố và có độ hoàn thiện cao\r\n-Màn hình FullHD kích thước chuẩn 15,6 inch, hiển thị sắc nét, màu sắc sống động\r\n-Hiệu năng mạnh mẽ, đa nhiệm mượt mà - Intel Core i5-11400H, RAM 8GB\r\n-Năng lượng bất tận cả ngày với viên pin 4-cell, 57.5 Wh', 2),
(32, 'Laptop ASUS Gaming TUF FX506LHB-HN188W', 16490000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/5/h/5h03_1.png', '-\"Chip I5-10300H cùng card đồ họa rời GeForce GTX 1650 edit video thoải mái, chiến game hiệu năng hàng đầu\r\n-Ram 8GB, nâng cấp tối đa 32GB cùng ổ cứng SSD có không gian lưu trữ lên tới 512GB mang lại thời gian khởi động hay load ứng dụng nhanh chóng\r\n-Màn hình 15.6 inches với độ phân giải Full HD, độ phủ màu SRGB 62.5% chất lượng hiển thị rõ ràng\r\n-Đa dạng cổng giao tiếp, dễ dàng sử dụng\r\n-Bàn phím được tích hợp đèn nền LED RGB - sống động trong từng trận đấu\r\n-Vỏ nhựa cứng cáp, trọng lượng máy 2.30 kg cho cảm giác cầm chắc tay\r\n-Máy đi kèm Windows 11 Home bản quyền\"', 2),
(33, 'Laptop Gaming Acer Nitro 5 Eagle AN515-57-54MV NH.QENSV.003', 20990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/e/text_ng_n_7.png', '-Thiết kế đậm chất gaming cứng cáp, hầm hố và có độ hoàn thiện cao\r\n-Màn hình FullHD kích thước chuẩn 15,6 inch, hiển thị sắc nét, màu sắc sống động\r\n-Hiệu năng mạnh mẽ, đa nhiệm mượt mà - Intel Core i5-11400H, RAM 8GB\r\n-Năng lượng bất tận cả ngày với viên pin 4-cell, 57.5 Wh', 2),
(34, 'Laptop ASUS Gaming TUF FX506LHB-HN188W', 16490000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/5/h/5h03_1.png', '-\"Chip I5-10300H cùng card đồ họa rời GeForce GTX 1650 edit video thoải mái, chiến game hiệu năng hàng đầu\r\n-Ram 8GB, nâng cấp tối đa 32GB cùng ổ cứng SSD có không gian lưu trữ lên tới 512GB mang lại thời gian khởi động hay load ứng dụng nhanh chóng\r\n-Màn hình 15.6 inches với độ phân giải Full HD, độ phủ màu SRGB 62.5% chất lượng hiển thị rõ ràng\r\n-Đa dạng cổng giao tiếp, dễ dàng sử dụng\r\n-Bàn phím được tích hợp đèn nền LED RGB - sống động trong từng trận đấu\r\n-Vỏ nhựa cứng cáp, trọng lượng máy 2.30 kg cho cảm giác cầm chắc tay\r\n-Máy đi kèm Windows 11 Home bản quyền\"', 2),
(35, 'Laptop Lenovo ThinkBook 13s G3 ACN 20YA0038VN', 13490000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/l/e/lenovo.png', '-Máy tính xách tay siêu mỏng nhẹ với vỏ hợp kim sang trọng kết hợp màn hình viền mỏng vô cực bắt mắt.\r\n-Màn hình 13.3 inch độ phân giải WUXGA, gam màu 100% sRGB cùng màn hình chống chói cho hình ảnh chân thực, đáp ứng cả nhu cầu làm việc ngoài trời nắng gắt.\r\n-Bộ vi xử lý AMD Ryzen 5 5600U đảm bảo tối ưu việc xử lý đa nhiệm và phục vụ các tác phụ như chỉnh sửa ảnh, chơi các tựa game nhẹ mà vẫn đảm bảo tiết kiệm pin.\r\nCard đồ họa AMD Radeon Graphics hỗ trợ xử lý nhanh tác vụ học tập, văn phòng một cách nhanh gọn.\r\n-RAM 8GB đa nhiệm thực hiện nhiều tác vụ cùng lúc, chuyển đổi ứng dụng mà không lo tình trạng giật, lag máy. Cùng với bộ nhớ trong 256GB SSD cho bạn không gian lưu trữ rộng lớn, thoải mái lưu trữ dữ liệu. \r\n-Máy tích hợp bảo mật vân tay an toàn, giúp mở khóa máy chỉ với 1 chạm.', 2),
(36, 'Surface Pro 7 Plus Core i5 / 8GB / 128GB Nhập Khẩu Chính Hãng', 19990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/e/text_ng_n_5__3.png', '-Thiết kế nhỏ gọn, hoàn thiện từ hợp kim magie mang đến cảm giác vô cùng cao cấp\r\n-Trải ngiệm làm việc tiện lợi hơn bao giờ hết - Hỗ trợ bút cảm ứng Surface Pen và bàn phím Type Cover\r\n-Sức mạnh vượt trội và đáp ứng nhu cầu lưu trữ lớn - Core i5-1135G7, ổ cứng128GB SSD\r\n-Thoả sức sử dụng cả ngày - Viên pin lớn hơn với dung lượng 50,4Wh sử dụng tới 15 giờ liên tục', 2),
(37, 'Laptop MSI Gaming GF63 Thin 11UD 473', 18590000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/9/_/9_9_21.jpg', '-\"- Chip i5-11400H cùng card đồ họa rời RTX 3050 Ti cho khả năng chiến các tựa game nặng, chỉnh sửa hình ảnh trên PTS, Render video ngắn mượt mà\r\n-Ram 8GB với 1 khe cắm có thể nâng cấp tối đa lên 64GB cùng ổ cứng SSD 512GB mang đến tốc độ xử lý nhanh cùng đa nhiệm mượt mà\r\n-Màn hình LCD 15.6 inches với dải màu 72% NTSC cho trải nghiệm màu sắc chân thực\r\n-Tích hợp web cam HD 720p cho phép đàm thoại thông qua video thoải mái\r\n-Trọng lượng 1.86 kg thuận tiện di chuyển, mang theo\r\n-Máy đi kèm Windows 11 Home bản quyền\"', 2),
(38, 'Laptop HP 15-HP 15 T-DW300 1A3Y3AV', 14990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/1/6/16_2_135.jpg', '-Thiết kế nhỏ gọn, hoàn thiện từ hợp kim magie mang đến cảm giác vô cùng cao cấp\r\n-Trải ngiệm làm việc tiện lợi hơn bao giờ hết - Hỗ trợ bút cảm ứng Surface Pen và bàn phím Type Cover\r\n-Sức mạnh vượt trội và đáp ứng nhu cầu lưu trữ lớn - Core i5-1135G7, ổ cứng128GB SSD\r\n-Thoả sức sử dụng cả ngày - Viên pin lớn hơn với dung lượng 50,4Wh sử dụng tới 15 giờ liên tục', 2),
(39, 'OnePlus 8T 5G', 10990000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/o/n/oneplus-8t-600x600-1-200x200.jpg', '-Thiết kế cực sang, chuẩn smartphone cao cấp\r\n-Trải nghiệm mượt mà, giải trí cực đã - Màn hình AMOLED 6.55 inches\r\n-Hiệu năng mạnh mẽ, trải nghiệm chơi game mượt mà - Snapdragon 865, RAM 12 GB\r\n-Camera đa chức năng ấn tượng - Cảm biến chính 48 MP, đa dạng chế độ chụp', 1),
(40, 'iPhone 12 128GB I Chính hãng VN/A', 16690000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/2/_/2_241_2.jpg', '-Mạnh mẽ, siêu nhanh với chip A14, RAM 4GB, mạng 5G tốc độ cao\r\n-Rực rỡ, sắc nét, độ sáng cao - Màn hình OLED cao cấp, Super Retina XDR hỗ trợ HDR10, Dolby Vision\r\n-Chụp đêm ấn tượng - Night Mode cho 2 camera, thuật toán Deep Fusion, Smart HDR 3\r\n-Bền bỉ vượt trội - Kháng nước, kháng bụi IP68, mặt lưng Ceramic Shield', 1),
(41, 'Realme 9 Pro Plus', 6290000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/9/_/9_pro_plus.png', '-Thiết kế sang trọng, thu hút mọi ánh nhìn - Mặt lưng hiệu ứng gradiant bắt mắt, thay đổi theo từng góc nhìn\r\n-Không gian giải trí sống động - Màn hình kích thước lớn 6.4\", tấm nền Super AMOLED hiển thị sắc nét\r\n-Hiệu năng mạnh mẽ, cân mọi tựa game - Chip MediaTek Dimensity 920 5G 8 nhân, RAM khủng 8GB\r\n-Mang lại những bức ảnh chuyên nghiệp - Camera sau cảm biến 50MP, đa dạng chế độ chụp', 1),
(42, 'Tecno Pova 2', 3190000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/e/tecno-pova-2-2.jpg', '-Thiết kế đậm hiện đại, đậm bản sắc công nghệ\r\n-Khả năng xử lý ấn tượng - Chip MediaTek Helio G85 (12nm) mạnh mẽ, RAM 4 GB\r\n-Khung hình rộng, tốc độ làm mới cao - Màn hình 6.9 inches IPS LCD, viền cực mỏng\r\n-Năng lượng ấn tượng, sử dụng nhiều giờ - Pin 7000 mAh, sạc nhanh 18W', 1),
(43, 'OPPO A17K', 3190000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/t/_/t_i_xu_ng_44_.png', '-Chuẩn nét từng khung hình - Trang bị màn hình LCD 6.56 inch với độ phân giải HD+\r\n-Hiệu năng cải tiến, bứt phá tốc độ - Chip Helio G35, RAM 4GB và bộ nhớ trong 64GB\r\n-Trọn vẹn năng lượng suốt cả ngày - Viên pin lớn 5000 mAh, sạc 10W\r\n-Bảo mật nâng cao với mở khoá vân tay cạnh viền, mở khoá khuôn mặt', 1),
(44, 'ASUS ROG Phone 6 16GB 512GB', 19490000, 'https://cdn2.cellphones.com.vn/358x358,webp,q100/media/catalog/product/a/s/asus-rog-phone-6-12gb-256gb_2.png', '-Hiệu năng dẫn đầu mọi trận đấu - Chip Snapdragon® 8+ Gen 1 mạnh mẽ cùng RAM 16GB\r\n-Chất lượng hiển thị đúng chuẩn gaming - Màn hình 6.78 inches, FullHD+, HDR10+ cùng tần số quét 165Hz\r\n-Thiết kế thân thiện cho chơi game, mặt lưng ánh sáng Aura RGB độc đáo\r\n-Bùng nổ năng lượng cho ngày dài ấn tượng - Viên pin 6000 mAh, sạc nhanh siêu tốc 65W', 1),
(46, 'ibrahimovic', 350000000, '46.jpg', 'flashback', 1),
(47, 'hdhridhdhhd', 25000, '47.jpg', 'jdhdjdjjdjdjdj', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `uid` text COLLATE utf8_unicode_ci NOT NULL,
  `token` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `email`, `pass`, `username`, `mobile`, `uid`, `token`, `status`) VALUES
(1, 'longmatic1.0@gmail.com', '789', 'long123', '0123456789', '', '', 0),
(11, 'longmatic1.1@gmail.com', '123456', 'long123', '0123456789', '', '', 0),
(12, 'longmatic1.3@gmail.com', '123', 'longbruno', '123456789', '', '', 0),
(14, 'longmatic1.4@gmail.com', '123', 'longbruno', '123456789', '', '', 0),
(21, 'longmatic1.6@gmail.com', '123456', 'longbruno', '0354295417', '', '', 0),
(24, 'longmatic1.8@gmail.com', '123456', 'longbruno', '354295417', '5ImHZ5yvtkc6cHzhKbBxj5Fd4fI3', 'dU71mPblRECv1nBcL4YBcf:APA91bF9T7nCmMu5IATpZdXqgt3XpDMGqTOAAyyDTF0z3e4sn8iWLR4ejy8DbJZdDEITj0ijmzY7MnSfek-Bot_AewwZlNDHzWBiQrMQYVh4ZDKk_eHL5RbSEwWG2l5RGgLL1Q2V9w7v', 1),
(25, 'longmatic1.9@gmail.com', '123456', 'long', '123456789', 'jKljDjg5YBho78waJPj164V0Gc12', 'ec5-MVNsTsSSVP1Z9288JB:APA91bE0zkjuz7Eb87rkokkL4Naa0StC4OpCLdec4QxXXX2N9k3px-KlI6W6fG8BdLhckycbdUEbpfT70K11ZWWOWNKLs_NGrWvaTwmBlLBve99LOzATVCm53tUsoJykgDHLBhder0IF', 0),
(26, 'user1@gmail.com', '123456', 'user1', '123456789', 'UthFPrvspeZXN7REA7raVYsq52x1', 'ec5-MVNsTsSSVP1Z9288JB:APA91bE0zkjuz7Eb87rkokkL4Naa0StC4OpCLdec4QxXXX2N9k3px-KlI6W6fG8BdLhckycbdUEbpfT70K11ZWWOWNKLs_NGrWvaTwmBlLBve99LOzATVCm53tUsoJykgDHLBhder0IF', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
