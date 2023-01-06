-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2017 at 03:49 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php22_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_adv`
--

CREATE TABLE `tbl_adv` (
  `pk_adv_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_url` varchar(500) NOT NULL,
  `c_position` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_adv`
--

INSERT INTO `tbl_adv` (`pk_adv_id`, `c_name`, `c_img`, `c_url`, `c_position`) VALUES
(1, 'adv left 1', 'banner03d5.jpg', 'http://vnexpress.net', 1),
(2, 'adv left 2', 'AN241-K_300x300.jpg', 'http://dantri.com.vn', 1),
(3, 'adv bottom 1', 'widebanner221b.jpg', 'http://ngoisao.net', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category_product`
--

CREATE TABLE `tbl_category_product` (
  `pk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_home` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category_product`
--

INSERT INTO `tbl_category_product` (`pk_category_product_id`, `c_name`, `c_home`) VALUES
(1, 'Sữa Vinamilk', 1),
(2, 'Sữa Alaska', 0),
(3, 'Sữa Nutifood', 1),
(4, 'Sữa XO', 0),
(5, 'Sữa Abbott', 0),
(6, 'Sữa Zin Zin', 0),
(7, 'Sữa Mộc Châu', 0),
(9, 'Sữa Ông Thọ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `hovaten` varchar(500) NOT NULL,
  `diachi` varchar(2000) NOT NULL,
  `dienthoai` varchar(200) NOT NULL,
  `ghichu` text NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `hovaten`, `diachi`, `dienthoai`, `ghichu`, `email`, `password`) VALUES
(22, 'Nguyễn Văn A', '', '', '', 'nva@mail.com', '202cb962ac59075b964b07152d234b70'),
(23, 'test', 'test1', '123', '', 'admin@mail.com', '202cb962ac59075b964b07152d234b70'),
(24, 'test', 'Hà nội', '123456', '', 'test@mail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_news`
--

CREATE TABLE `tbl_news` (
  `pk_news_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(20000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_hotnews` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_news`
--

INSERT INTO `tbl_news` (`pk_news_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_hotnews`) VALUES
(15, 'Oppo khởi chạy chương trình đặt hàng trước F3 Plus tại Việt Nam@', '<p>Sau ng&agrave;y ra mắt ch&iacute;nh thức v&agrave;o 23/3 tới, Oppo sẽ tiến h&agrave;nh chương tr&igrave;nh đặt h&agrave;ng trước F3 Plus từ ng&agrave;y 24/3 đến hết ng&agrave;y 31/3/2017, kh&aacute;ch h&agrave;ng đặt mua trước sản phẩm F3 Plus sẽ nhận được bộ qu&agrave; tặng d&agrave;nh hấp dẫn.</p>\r\n', '<p>Cụ thể, bộ qu&agrave; tặng hấp dẫn từ chương tr&igrave;nh đặt h&agrave;ng trước F3 Plus c&oacute; trị gi&aacute; 2,150,000 đồng, bao gồm bộ đ&ocirc;i thiết bị cực &ldquo;chất&rdquo; v&agrave; tiện lợi: tai nghe Bluetooth TEKIN v&agrave; v&ograve;ng đeo tay th&ocirc;ng minh H-band.</p>\r\n\r\n<p>Mẫu tai nghe Bluetooth TEKIN l&agrave; d&ograve;ng sản phẩm cao cấp với thiết kế full size, m&agrave;ng bọc loa v&agrave; th&acirc;n tai nghe l&agrave;m bằng da cao cấp. Ph&iacute;a tr&ecirc;n tai nghe c&oacute; thiết kế r&atilde;nh trượt để nới rộng hoặc co hẹp lại khung cho&agrave;ng đầu để đảm bảo độ vừa vặn v&agrave; thoảng m&aacute;i khi đeo, ph&ugrave; hợp với hầu hết k&iacute;ch thước đầu của mọi người.</p>\r\n\r\n<p><img alt="" id="img_74331" src="https://dantricdn.com/thumb_w/640/2017/bim-9948-as-smart-object-1-1489894943820.jpg" /></p>\r\n\r\n<p>Tai nghe n&agrave;y được trang bị m&agrave;ng loa được l&agrave;m từ nam ch&acirc;m neodymium mang lại chất lượng &acirc;m thanh trung thực v&agrave; mạnh mẽ. Dải &acirc;m thanh lớn, th&iacute;ch hợp để nghe với nhiều d&ograve;ng nhạc kh&aacute;c nhau. B&ecirc;n cạnh đ&oacute;, sản phẩm c&ograve;n được thiết kế đặc biệt với chất liệu giảm &acirc;m nhằm đảm bảo thể hiện tốt nhất tiếng bass.</p>\r\n\r\n<p><img alt="" id="img_74332" src="https://dantricdn.com/thumb_w/640/2017/toctien25201-1489894984122.jpg" /></p>\r\n\r\n<p>C&ograve;n đối với v&ograve;ng tay th&ocirc;ng minh H-Band, thiết bị n&agrave;y sở hữu nhiều t&iacute;nh năng tiện lợi v&agrave; thiết thực, gồm: Chăm s&oacute;c sức khỏe, đo nhịp tim, quản l&yacute; giấc ngủ, đo huyết &aacute;p, đếm bước ch&acirc;n, qu&atilde;ng đường, đo calorie cho c&aacute;c vận động v&agrave; đồng thời th&ocirc;ng b&aacute;o cuộc gọi (c&oacute; hiển thị số gọi đến), b&aacute;o SMS, Facebook, b&aacute;o thức v&agrave; chống mất trộm...</p>\r\n\r\n<p>Đ&aacute;ng ch&uacute; &yacute;, khi đến nhận m&aacute;y tại cửa h&agrave;ng v&agrave;o ng&agrave;y 1/4/2017, kh&aacute;ch h&agrave;ng c&ograve;n được ưu đ&atilde;i th&ecirc;m một g&oacute;i bảo h&agrave;nh cho m&agrave;n h&igrave;nh (kể cả bị rơi vỡ). G&oacute;i bảo h&agrave;nh đặc biệt n&agrave;y cũng được &aacute;p d&ugrave;ng cho nh&oacute;m kh&aacute;ch h&agrave;ng mua h&agrave;ng trực tiếp trong ng&agrave;y h&ocirc;m đ&oacute;, d&ugrave; kh&ocirc;ng tham gia chương tr&igrave;nh đặt h&agrave;ng trước.</p>\r\n\r\n<p><img alt="" id="img_74333" src="https://dantricdn.com/thumb_w/640/4c574598e6/2017/03/19/img20170319103939791-03c15.jpg" /></p>\r\n\r\n<p>Hiện tại th&ocirc;ng tin về sản phẩm vẫn chưa được tiết lộ, tuy nhi&ecirc;n theo GSM Arena, sản phẩm n&agrave;y c&oacute; cấu h&igrave;nh gồm vi xử l&yacute; l&otilde;i 8 từ Qualcomm, RAM 4 GB v&agrave; bộ nhớ trong 64 GB. Đ&aacute;ng ch&uacute; &yacute;, m&aacute;y sẽ c&oacute; một camera selfie k&eacute;p, một xu hướng ch&iacute;nh của năm 2017.</p>\r\n\r\n<p>Theo c&ocirc;ng bố, Oppo sẽ ra mắt bộ đ&ocirc;i F3 v&agrave; F3 Plus th&ocirc;ng qua sự kiện diễn ra đồng thời tại nhiều quốc gia kh&aacute;c nhau v&agrave;o 23/3. Ngo&agrave;i Việt Nam, m&aacute;y sẽ được giới thiệu tại 4 nước kh&aacute;c, bao gồm Ấn Độ, Philippines, Myanmar v&agrave; Indonesia.</p>\r\n\r\n<p>Th&ocirc;ng tin sản phẩm:&nbsp;<a href="http://oppomobile.vn/oppo-f3-plus-countdown" rel="nofollow" target="_blank">http://oppomobile.vn/oppo-f3-plus-countdown</a></p>\r\n', '150816030614944164131lap.jpg', 1),
(16, 'Những dấu hiệu cho thấy chiếc tủ lạnh nhà bạn đang gặp vấn đề', '<p>(D&acirc;n tr&iacute;) - Mặc d&ugrave; l&agrave; một thiết bị điện tử với độ bền cao, thậm ch&iacute; c&oacute; thể l&ecirc;n tới 10-20 năm, nhưng điều đ&oacute; kh&ocirc;ng c&oacute; nghĩa l&agrave; tủ lạnh kh&ocirc;ng thể hỏng h&oacute;c hay gặp sự cố.</p>\r\n', '<p>Tủ lạnh l&agrave; một trong những thiết bị gia dụng quan trọng nhất trong căn bếp của mọi gia đ&igrave;nh. Ch&uacute;ng kh&ocirc;ng chỉ gi&uacute;p thực phẩm tr&aacute;nh bị &ocirc;i thiu, m&agrave; c&ograve;n đảm bảo cho m&oacute;n ăn c&oacute; được mức độ dinh dưỡng tốt nhất.</p>\r\n\r\n<p>Tuy nhi&ecirc;n v&agrave;o một ng&agrave;y &quot;xấu trời&quot; n&agrave;o đ&oacute;, chiếc tủ lạnh nh&agrave; bạn c&oacute; thể sẽ giở chứng cho d&ugrave; ch&uacute;ng ta kh&ocirc;ng hề mong muốn. V&agrave;o l&uacute;c n&agrave;y, điều duy nhất bạn c&oacute; thể l&agrave;m l&agrave; ph&aacute;t hiện v&agrave; sửa chữa kịp thời, hay thậm ch&iacute; l&agrave; mua một chiếc tủ lạnh mới nếu muốn đảm bảo an to&agrave;n vệ sinh, sức khỏe cho gia đ&igrave;nh.</p>\r\n\r\n<p>Dưới đ&acirc;y l&agrave; những dấu hiệu thường gặp cho thấy chiếc tủ lạnh nh&agrave; bạn đang muốn được &quot;đ&ograve;i tiền&quot; để sửa chữa.</p>\r\n\r\n<p><strong>Sữa trong tủ lạnh bị hỏng trước hạn d&ugrave;ng</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" id="img_74324" src="https://dantricdn.com/thumb_w/640/2017/1-1490000586565.jpg" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nếu như sữa - hoặc những thực phẩm kh&aacute;c c&oacute; dấu hiệu bị hỏng trước ng&agrave;y ghi tr&ecirc;n hạn sử dụng, rất c&oacute; thể đ&acirc;y l&agrave; dấu hiệu cho thấy mức nhiệt trong tủ lạnh đ&atilde; cao hơn thực tế, hoặc tủ lạnh của bạn đ&atilde; kh&ocirc;ng c&ograve;n hoạt động hiệu quả như ban đầu.</p>\r\n\r\n<p><strong>Tủ lạnh c&oacute; triệu chứng kh&aacute;c thường</strong></p>\r\n\r\n<p>Khi tủ lạnh nh&agrave; bạn c&oacute; dấu hiệu hoạt động kh&aacute;c thường v&agrave; k&eacute;o d&agrave;i như:</p>\r\n\r\n<p>- Quạt gi&oacute; trong tủ lạnh chạy mọi l&uacute;c.</p>\r\n\r\n<p>- Tủ lạnh ph&aacute;t ra nhiều tiếng ồn.</p>\r\n\r\n<p>- Mặt sau của tủ lạnh tỏa nhiệt rất n&oacute;ng.</p>\r\n\r\n<p>- B&ecirc;n trong tủ lạnh bị h&igrave;nh th&agrave;nh băng nhiều ở c&aacute;c g&oacute;c, khe kẽ cho d&ugrave; ch&uacute;ng ta chỉnh nhiệt độ l&agrave; bao nhi&ecirc;u.</p>\r\n\r\n<p><strong>Tủ lạnh bị nứt vỡ</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" id="img_74325" src="https://dantricdn.com/thumb_w/640/2017/3-1490000689597.jpg" /></p>\r\n\r\n<p>Mặc d&ugrave; hầu hết c&aacute;c dấu hiệu b&ecirc;n tr&ecirc;n đều c&oacute; thể được khắc phục tạm thời bởi c&aacute;c thợ sửa chữa, tuy nhi&ecirc;n nếu tủ lạnh của bạn bị nứt, bị rạn vỡ ở th&agrave;nh tủ th&igrave; gần như ch&uacute;ng kh&ocirc;ng thể hoạt động hiệu quả như ban đầu. Trong trường hợp n&agrave;y, tốt nhất l&agrave; bạn n&ecirc;n thay thế bằng một chiếc tủ lạnh kh&aacute;c.</p>\r\n\r\n<p><strong>Tăng số điện bất ngờ</strong></p>\r\n\r\n<p>Nếu như tiền điện h&agrave;ng th&aacute;ng của bạn bỗng nhi&ecirc;n tăng vọt, rất c&oacute; thể một thiết bị điện n&agrave;o đ&oacute; trong nh&agrave; đ&atilde; gặp vấn đề, v&agrave; tủ lạnh cũng kh&ocirc;ng nằm ngo&agrave;i khả năng đ&oacute;. D&ugrave; trường hợp n&agrave;y l&agrave; rất hy hữu, nhưng nếu x&aacute;c định được nguy&ecirc;n nh&acirc;n l&agrave; do chiếc tủ lạnh &quot;th&acirc;n y&ecirc;u&quot; bấy l&acirc;u, bạn cần ngay lập tức c&oacute; biện ph&aacute;p sửa chữa v&agrave; thay thế.</p>\r\n\r\n<p><strong>Nguyễn Nguyễn</strong></p>\r\n\r\n<p><em>Tổng hợp</em></p>\r\n', '15081603001494416499tainghe.jpg', 1),
(17, 'Samsung và Oppo tiếp tục thống trị thị trường đầu năm 2017 tại Việt Nam', '<p>(D&acirc;n tr&iacute;) - Hầu hết c&aacute;c sản phẩm nằm trong top 10 b&aacute;n chạy th&aacute;ng 2 v&agrave; nửa đầu th&aacute;ng 3 năm 2017 của c&aacute;c nh&agrave; b&aacute;n lẻ đều đến từ Samsung v&agrave; Oppo. C&aacute;c thương hiệu lớn kh&aacute;c dần dần bị thụt l&ugrave;i về sau...</p>\r\n', '<p>Trong năm 2016, thị trường đ&atilde; chứng kiến những m&agrave;n trượt ch&acirc;n của c&aacute;c thương hiệu lớn trước sự b&agrave;nh trướng sức mạnh của Samsung v&agrave; Oppo. T&iacute;nh ri&ecirc;ng 6 th&aacute;ng đầu năm 2016, thị phần của Nokia, Sony, HTC v&agrave; Asus đ&atilde; bắt đầu tụt dốc. T&iacute;nh ri&ecirc;ng Nokia, từ 20% thị phần của năm 2015 đ&atilde; tụt th&ecirc; thảm xuống c&ograve;n chưa đầy 5% trong nửa đầu năm 2016.</p>\r\n\r\n<p>Đ&aacute;ng ch&uacute; &yacute;, hầu hết miếng b&aacute;nh thị trường d&agrave;nh ri&ecirc;ng cho Samsung v&agrave; Oppo khi thị phần của 2 h&atilde;ng n&agrave;y chiếm hơn 50% tổng thị phần điện thoại di động tại Việt Nam. Samsung chiếm 34,7%, Oppo chiếm 21,8% thị phần của 6 th&aacute;ng đầu năm 2016.</p>\r\n\r\n<p>Từ giữa năm 2016 đến nay, Samsung v&agrave; Oppo tiếp tục tung ra những con b&agrave;i chiến lược nhằm giữ vững thị phần cũng như đ&aacute;nh bay những đối thủ của m&igrave;nh ra khỏi s&acirc;n chơi n&agrave;y. C&oacute; thể kể đến như &quot;con b&agrave;i&quot; Galaxy J7 Prime, chỉ t&iacute;nh ri&ecirc;ng 1 th&aacute;ng ra mắt trong th&aacute;ng 10/2016, Samsung đ&atilde; b&aacute;n sạch 200.000 m&aacute;y. Hay với Oppo F1s, b&aacute;n ra từ th&aacute;ng 8/2016, h&atilde;ng n&agrave;y ghi nhận con số 395.000 m&aacute;y, t&iacute;nh đến hết th&aacute;ng 10/2016.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ vậy, cả hai h&atilde;ng n&agrave;y tiếp tục tung ra c&aacute;c chi&ecirc;u b&agrave;i dồn dập, mang đến nhiều t&ugrave;y chọn smartphone ở tất cả ph&acirc;n kh&uacute;c tầm trung, khiến cho thị phần của c&aacute;c h&atilde;ng kh&aacute;c bị đe dọa nghi&ecirc;m trọng. Điển h&igrave;nh, Samsung kh&ocirc;ng c&ograve;n tập trung nhiều v&agrave;o ph&acirc;n kh&uacute;c cao cấp v&agrave; một số sản phẩm đinh m&agrave; họ phủ k&iacute;n hết c&aacute;c ph&acirc;n kh&uacute;c, ngo&agrave;i J7 Prime, h&atilde;ng tung h&agrave;ng loạt thiết bị kh&aacute;c từ thấp đến cao, gồm: Galaxy J1 2016, Galaxy J3 2016, Galaxy J5 2016, Galaxy J5 Prime, Galaxy A5 2016...</p>\r\n\r\n<p>T&iacute;nh đến hết th&aacute;ng 11 năm 2016, theo số liệu GFK, thị phần của Samsung tiếp tục giữ vững ở vị tr&iacute; đầu, tăng l&ecirc;n đến 36,7 % thị phần. Oppo cũng chiếm vị tr&iacute; thứ 2 với 22% thị phần. Trong khi đ&oacute;, Asus c&ograve;n lại 2,4% thị phần, Sony c&ograve;n 3,9% v&agrave; th&ecirc; thảm nhất l&agrave; Microsoft/Nokia chỉ c&ograve;n 3,7% thị phần.</p>\r\n\r\n<p>Đ&oacute; l&agrave; năm 2016 v&agrave; b&acirc;y giờ l&agrave; đầu năm 2017, Samsung v&agrave; Oppo tiếp tục đang l&agrave; hai c&aacute;i t&ecirc;n lớn nhất chiếm hết top 10 sản phẩm b&aacute;n chạy nhất trong th&aacute;ng 2 v&agrave; nửa đầu th&aacute;ng 3 năm 2017 tại Việt Nam.</p>\r\n\r\n<p>Theo thống k&ecirc; từ FPT Shop, Thế giới Di động, trong top 10 sản phẩm b&aacute;n chạy nhất th&aacute;ng 2 v&agrave; nửa đầu th&aacute;ng 3 đều từ Samsung v&agrave; Oppo. Samsung c&oacute; đến 6 sản phẩm đứng đầu bảng, Oppo chiếm vị tr&iacute; thứ 2 với 3 sản phẩm v&agrave; chỉ duy nhất một sản phẩm kh&aacute;c ngo&agrave;i hai thương hiệu n&agrave;y nằm trong top 10 đ&oacute; l&agrave; Apple với sản phẩm iPhone 7 Plus.</p>\r\n\r\n<p><img alt="Samsung và Oppo tiếp tục đánh chiếm thị trường năm 2017" id="img_68561" src="https://dantricdn.com/thumb_w/640/2017/thi-truong-di-dong-1488953420311.jpg" /></p>\r\n\r\n<p>Samsung v&agrave; Oppo tiếp tục đ&aacute;nh chiếm thị trường năm 2017</p>\r\n\r\n<p>Điều n&agrave;y phản &aacute;nh đ&uacute;ng thực tế của thị trường khi ngay đầu năm Samsung đ&atilde; ngay lập tức tung ra con b&agrave;i chiến lược năm 2017 l&agrave; bộ đ&ocirc;i Galaxy A5 2017 v&agrave; Galaxy A7 2017. D&ograve;ng sản phẩm n&agrave;y được ưu &aacute;i trang bị những c&ocirc;ng nghệ chỉ c&oacute; tr&ecirc;n d&ograve;ng sản phẩm cao cấp nhưng gi&aacute; tầm trung khiến cho m&aacute;y dễ tạo sức h&uacute;t đối với nửa c&ograve;n lại của thị trường. Oppo cũng l&agrave;m mới phi&ecirc;n bản F1s với bản n&acirc;ng cấp F1s 2017 để tạo cạnh tranh v&agrave; sắp tới sẽ l&agrave; m&agrave;n ra mắt của F3 Plus mới nhất. Động th&aacute;i n&agrave;y gi&uacute;p Samsung v&agrave; Oppo tiếp tục b&agrave;nh trướng sức mạnh của m&igrave;nh đối với c&aacute;c h&atilde;ng c&ograve;n lại. Trong khi, t&iacute;nh đến thời điểm n&agrave;y, Sony, Asus hay HTC vẫn chưa c&oacute; bất cứ sự đột biến trong sản phẩm mới, c&oacute; chăng l&agrave; HTC với bộ đ&ocirc;i U Ultra hay U Play. Nhưng việc t&aacute;i định vị thương hiệu, mức gi&aacute; sản phẩm định h&igrave;nh qu&aacute; cao khiến cho bộ đ&ocirc;i mới từ HTC thiếu đi cạnh tranh v&agrave; kh&ocirc;ng tạo n&ecirc;n một bước ngoặt mới cho h&atilde;ng n&agrave;y tại Việt Nam.</p>\r\n\r\n<p>Hiện thời điểm n&agrave;y mới l&agrave; những th&aacute;ng đầu ti&ecirc;n của năm 2017 v&agrave; cục diện của thị trường vẫn sẽ kh&ocirc;ng c&oacute; sự thay đổi nhiều cho đến hết qu&yacute; I/2017. Tuy nhi&ecirc;n, đến qu&yacute; II năm nay, khi thị trường bắt đầu v&agrave;o mua b&aacute;n h&agrave;ng, khi Nokia tấn c&ocirc;ng trở lại thị trường, h&agrave;ng loạt si&ecirc;u phẩm từ LG, Samsung về Việt Nam th&igrave; thị trường sẽ s&ocirc;i động v&agrave; tạo ra những biến chuyển lớn. Ẩn số Nokia sẽ l&agrave; một thuốc thử th&uacute; vị cho thị trường di động Việt v&agrave; ch&uacute;ng ta c&ugrave;ng k&igrave; vọng những m&agrave;n &quot;ăn miếng trả miếng&quot; từ c&aacute;c thương hiệu lớn, mang đến nhiều lợi &iacute;ch hơn cho người ti&ecirc;u d&ugrave;ng, từ cấu h&igrave;nh cho đến gi&aacute; sản phẩm.</p>\r\n\r\n<p><strong>Gia Hưng</strong></p>\r\n', '15081602921494416460tvlg.jpg', 1),
(18, 'Xe điện cân bằng phát nổ khiến bé gái 3 tuổi tử vong', '<p>(D&acirc;n tr&iacute;) - Một b&eacute; g&aacute;i 3 tuổi tại bang Pennsylvania (Mỹ) đ&atilde; tử vong khi một chiếc xe điện c&acirc;n bằng bất ngờ bốc ch&aacute;y v&agrave; ph&aacute;t nổ. Nhiều th&agrave;nh vi&ecirc;n kh&aacute;c trong gia đ&igrave;nh của b&eacute; g&aacute;i n&agrave;y cũng bị thương từ nhẹ đến nghi&ecirc;m trọng sau vụ việc.</p>\r\n', '<p>Sự việc xảy ra tại th&agrave;nh phố Harrisburg (bang Pennsylvania, Mỹ), khi một chiếc xe điện c&acirc;n bằng đột nhi&ecirc;n bốc ch&aacute;y v&agrave; ph&aacute;t nổ, khiến 6 người phải nhập viện. Trong đ&oacute;, c&ocirc; b&eacute; Ashanti Hughes, 3 tuổi, đ&atilde; tử vong sau khi mang đến bệnh viện v&igrave; c&aacute;c vết bỏng qu&aacute; nghi&ecirc;m trọng.</p>\r\n\r\n<p>Cha của c&ocirc; b&eacute; Ashanti v&agrave; một thiếu ni&ecirc;n cũng phải nhập viện do h&iacute;t phải kh&oacute;i từ vụ nổ, nhưng đ&atilde; được xuất viện ngay sau đ&oacute;, c&ograve;n 2 c&ocirc; g&aacute;i kh&aacute;c cũng ở trong gia đ&igrave;nh n&agrave;y vẫn phải ở lại bệnh viện trong điều kiện nghi&ecirc;m trọng.</p>\r\n\r\n<p>Đ&aacute;ng ch&uacute; &yacute;, một l&iacute;nh cứu hỏa của th&agrave;nh phố Harrisburg cũng đ&atilde; bị tử vong trong một vụ tai nạn giao th&ocirc;ng khi đang tr&ecirc;n đường đến hiện trường vụ ch&aacute;y.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Xe điện cân bằng hiện khá phổ biến tại Việt Nam, nhưng phần lớn chúng đều không có thương hiệu và xuất xứ rõ ràng" id="img_74177" src="https://dantricdn.com/2017/xe-dien-can-bang-1-1489985872083.jpg" /></p>\r\n\r\n<p>Xe điện c&acirc;n bằng hiện kh&aacute; phổ biến tại Việt Nam, nhưng phần lớn ch&uacute;ng đều kh&ocirc;ng c&oacute; thương hiệu v&agrave; xuất xứ r&otilde; r&agrave;ng</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Brian Enterline, Đội trưởng đội cứu hộ th&agrave;nh phố Harrisburg, cho biết vụ ch&aacute;y bắt nguồn từ một chiếc xe điện c&acirc;n bằng đang được cắm sạc tại tầng một của ng&ocirc;i nh&agrave;. C&aacute;c th&agrave;nh vi&ecirc;n trong gia đ&igrave;nh cho biết họ nghe thấy tiếng r&eacute;o lớn trước khi vụ nổ xảy ra.</p>\r\n\r\n<p>Đ&acirc;y cũng kh&ocirc;ng phải l&agrave; lần đầu ti&ecirc;n một vụ ch&aacute;y g&acirc;y hậu quả nghi&ecirc;m trọng bắt nguồn từ pin tr&ecirc;n xe điện c&acirc;n bằng. Trước đ&oacute; v&agrave;o th&aacute;ng 9/2016, một vụ hỏa hoạn xảy ra ở th&agrave;nh phố Nashville (bang Nashville) thi&ecirc;u rụi một căn nh&agrave; trị gi&aacute; 4 triệu USD, tuy nhi&ecirc;n may mắn kh&ocirc;ng ai bị thương trong vụ việc. Nguy&ecirc;n do sau đ&oacute; được x&aacute;c định bắt nguồn từ chiếc xe điện c&acirc;n bằng đang cắm sạc trong nh&agrave;.</p>\r\n\r\n<p>Theo Scott Wolfson, Gi&aacute;m đốc truyền th&ocirc;ng của Ủy ban An to&agrave;n Sản phẩm Ti&ecirc;u d&ugrave;ng Hoa Kỳ, th&igrave; c&ocirc; b&eacute; Shanti l&agrave; trường hợp tử vong đầu ti&ecirc;n li&ecirc;n quan đến một vụ nổ xe điện c&acirc;n bằng tại Mỹ. Nh&agrave; chức tr&aacute;ch Mỹ kh&ocirc;ng c&ocirc;ng bố thương hiệu cụ thể của chiếc xe điện c&acirc;n bằng g&acirc;y ra vụ nổ, tuy nhi&ecirc;n trước đ&oacute; v&agrave;o năm ngo&aacute;i nh&agrave; chức tr&aacute;ch Mỹ đ&atilde; thu hồi gần 500.000 mẫu xe điện c&acirc;n bằng của 11 nh&agrave; sản xuất kh&aacute;c nhau do gần 100 b&aacute;o c&aacute;o về những vụ ch&aacute;y g&acirc;y ra do pin tr&ecirc;n sản phẩm qu&aacute; n&oacute;ng.</p>\r\n\r\n<p>&ldquo;Ch&uacute;ng t&ocirc;i chưa r&otilde; vụ việc đau l&ograve;ng xảy ra ở Harrisburg li&ecirc;n quan đến một trong c&aacute;c mẫu xe điện c&acirc;n bằng bị thu hồi hay kh&ocirc;ng&rdquo;, Wolfson n&oacute;i, đồng thời cho biết Ủy ban An to&agrave;n Sản phẩm Ti&ecirc;u d&ugrave;ng Mỹ đang tiến h&agrave;nh điều tra vụ việc để t&igrave;m ra nguy&ecirc;n do của vụ nổ.</p>\r\n\r\n<p>Wolfson cho biết xe điện c&acirc;n bằng đ&atilde; trở n&ecirc;n kh&aacute; phổ biến tại Mỹ từ m&ugrave;a thu năm 2015 v&agrave; Ủy ban An to&agrave;n Sản phẩm Ti&ecirc;u d&ugrave;ng Hoa Kỳ đ&atilde; bắt đầu nhận được nhiều b&aacute;o c&aacute;o những vụ hỏa hoạn li&ecirc;n quan đến sản phẩm từ thời điểm đ&oacute; đến nay, do vậy Ủy ban đ&atilde; quyết định tiến h&agrave;nh một cuộc điều tra to&agrave;n diện c&aacute;c sản phẩm trước khi đưa ra lệnh thu hồi v&agrave;o năm ngo&aacute;i.</p>\r\n\r\n<p>Hiện tại Ủy ban An to&agrave;n Sản phẩm Ti&ecirc;u d&ugrave;ng của Mỹ đ&atilde; đưa ra danh s&aacute;ch những xe điện c&acirc;n bằng an to&agrave;n m&agrave; người d&ugrave;ng c&oacute; thể mua. Người d&ugrave;ng c&oacute; thể truy cập v&agrave;o trang web của Ủy ban n&agrave;y, điền t&ecirc;n sản phẩm xe điện c&acirc;n bằng m&igrave;nh c&oacute; dự định mua để kiểm tra xem n&oacute; c&oacute; an to&agrave;n hay kh&ocirc;ng. Ngo&agrave;i ra Ủy ban n&agrave;y cũng đưa ra khuyến c&aacute;o người d&ugrave;ng kh&ocirc;ng n&ecirc;n cắm sạc xe điện c&acirc;n bằng qua đ&ecirc;m, kh&ocirc;ng sạc ở những vị tr&iacute; kh&ocirc;ng quan s&aacute;t được v&agrave; lu&ocirc;n c&oacute; dụng cụ ph&ograve;ng ch&aacute;y ở cạnh b&ecirc;n.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ phổ biến tại Mỹ m&agrave; tại Việt Nam, c&aacute;c loại xe điện c&acirc;n bằng, phần lớn trong số đ&oacute; đều kh&ocirc;ng c&oacute; thương hiệu v&agrave; xuất xứ r&otilde; r&agrave;ng, cũng kh&aacute; phổ biến v&agrave; vụ việc vừa xảy ra c&oacute; thể l&agrave; một lời cảnh b&aacute;o cho những ai đang sở hữu một chiếc xe điện c&acirc;n bằng trong nh&agrave;.</p>\r\n\r\n<p><strong>T.Thủy</strong><br />\r\n<em>Tổng hợp</em></p>\r\n', '15081602841494416450ny.jpg', 0),
(19, 'Mẹo in văn bản từ iPhone, iPad không phải ai cũng biết@', '<p>(D&acirc;n tr&iacute;) - Nếu bạn l&agrave; mẫu người th&iacute;ch sử dụng iPhone hoặc iPad để l&agrave;m việc, ắt hẳn ch&uacute;ng ta từng c&oacute; lần muốn in văn bản hoặc t&agrave;i liệu trực tiếp từ thiết bị.</p>\r\n', '<p>In văn bản, t&agrave;i liệu l&agrave; một bước kh&ocirc;ng thể thiếu đối với hầu như tất cả c&ocirc;ng việc văn ph&ograve;ng hiện nay. Thế nhưng nếu như đang sử dụng một chiếc iPad thay v&igrave; m&aacute;y vi t&iacute;nh hoặc laptop, liệu ch&uacute;ng ta c&oacute; thể tiến h&agrave;nh kết nối m&aacute;y in v&agrave; thực hiện in t&agrave;i liệu kh&ocirc;ng? C&acirc;u trả lời l&agrave; bạn ho&agrave;n to&agrave;n c&oacute; thể.</p>\r\n\r\n<p>Tuy nhi&ecirc;n kh&ocirc;ng phải ai cũng biết c&aacute;ch để thực hiện điều n&agrave;y. Nhiều người thậm chỉ phải gửi văn bản sang m&aacute;y t&iacute;nh rồi mới tiếp tục c&aacute;c thao t&aacute;c, khiến c&ocirc;ng việc bị chậm trễ v&agrave; trải qua nhiều bước kh&ocirc;ng cần thiết.</p>\r\n\r\n<p>B&agrave;i viết dưới đ&acirc;y sẽ hướng dẫn bạn đọc 3 c&aacute;ch để in văn bản đang lưu tr&ecirc;n iPad hoặc iPhone một c&aacute;ch nhanh ch&oacute;ng nhất.</p>\r\n\r\n<p><strong>Sử dụng AirPrint</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Sử dụng AirPrint để in văn bản nhanh chóng trên iPhone, iPad." id="img_74130" src="https://dantricdn.com/2017/1-1489981942620.jpg" /></p>\r\n\r\n<p>Sử dụng AirPrint để in văn bản nhanh ch&oacute;ng tr&ecirc;n iPhone, iPad.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>AirPrint l&agrave; một t&iacute;nh năng, một giải ph&aacute;p được Apple giới thiệu tr&ecirc;n c&aacute;c thiết bị chạy iOS bao gồm iPad, iPhone gi&uacute;p kết nối với m&aacute;y in v&agrave; in văn bản một c&aacute;ch dễ d&agrave;ng. Tuy nhi&ecirc;n phương thức n&agrave;y y&ecirc;u cầu m&aacute;y in của bạn hỗ trợ c&ocirc;ng nghệ tương tự - vốn l&agrave; điều kh&ocirc;ng mấy kh&oacute; khăn v&igrave; đa số m&aacute;y in hiện đại ng&agrave;y nay đều c&oacute; t&iacute;nh năng n&agrave;y.</p>\r\n\r\n<p>L&uacute;c n&agrave;y, ch&uacute;ng ta chỉ cần kết nối iPad v&agrave; m&aacute;y in c&ugrave;ng v&agrave;o một mạng Wi-Fi. Sau đ&oacute; chọn văn bản muốn in tr&ecirc;n iPad, nhấn v&agrave;o n&uacute;t 3 dấu chấm nằm ở g&oacute;c tr&ecirc;n b&ecirc;n phải m&agrave;n h&igrave;nh, chọn &quot;Chia sẻ v&agrave; xuất&quot;, rồi kế tiếp l&agrave; &quot;In&quot;. Trong cửa sổ pop-up hiện l&ecirc;n, người d&ugrave;ng cần lựa chọn chế độ mặc định l&agrave; AirPrint.</p>\r\n\r\n<p><strong>Sử dụng m&aacute;y t&iacute;nh Mac l&agrave;m c&ocirc;ng cụ trung gian</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Phần mềm Printopia cho phép sử dụng máy Mac làm thiết bị trung gian để in văn bản trên iPad." id="img_74131" src="https://dantricdn.com/thumb_w/640/2017/1-1489981957930.png" /></p>\r\n\r\n<p>Phần mềm Printopia cho ph&eacute;p sử dụng m&aacute;y Mac l&agrave;m thiết bị trung gian để in văn bản tr&ecirc;n iPad.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Nếu văn ph&ograve;ng của bạn kh&ocirc;ng được trang bị một m&aacute;y in AirPrint, ch&uacute;ng ta c&oacute; thể xem x&eacute;t đến phương &aacute;n dự ph&ograve;ng bằng c&aacute;ch sử dụng m&aacute;y Mac l&agrave;m trung gian.</p>\r\n\r\n<p>Để thực hiện điều n&agrave;y, ch&uacute;ng ta trước hết cần tải về một c&ocirc;ng cụ miễn ph&iacute; d&ugrave;ng thử c&oacute; t&ecirc;n l&agrave;&nbsp;<a href="https://www.decisivetactics.com/products/printopia/" rel="nofollow" target="_blank" title="Printopia">Printopia</a>. Sau khi c&agrave;i đặt tr&ecirc;n MacOS, phần mềm sẽ biến chiếc MacBook trở th&agrave;nh thiết bị trung gian kết nối với m&aacute;y in v&agrave; iPad th&ocirc;ng qua mạng Wi-Fi chung.</p>\r\n\r\n<p>Điểm l&yacute; th&uacute; l&agrave; ch&uacute;ng ta thậm ch&iacute; kh&ocirc;ng cần c&agrave;i đặt phần mềm n&agrave;o tr&ecirc;n iPad, v&agrave; c&oacute; thể tiến h&agrave;nh thao t&aacute;c in bất cứ l&uacute;c n&agrave;o.</p>\r\n\r\n<p><strong>Đưa tệp tin l&ecirc;n bộ nhớ đ&aacute;m m&acirc;y</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="Google Cloud Print là giải pháp tốt nhất nếu như máy in không hỗ trợ AirPrint." id="img_74132" src="https://dantricdn.com/2017/3-1489982004609.jpg" /></p>\r\n\r\n<p>Google Cloud Print l&agrave; giải ph&aacute;p tốt nhất nếu như m&aacute;y in kh&ocirc;ng hỗ trợ AirPrint.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>B&ecirc;n cạnh AirPrint th&igrave; Google Cloud Print cũng l&agrave; một t&iacute;nh năng tương tự thuộc &quot;hệ sinh th&aacute;i&quot; của Google, v&agrave; cho ph&eacute;p ch&uacute;ng ta in tr&ecirc;n c&aacute;c m&aacute;y in kh&ocirc;ng hỗ trợ AirPrint.</p>\r\n\r\n<p>Để sử dụng t&iacute;nh năng n&agrave;y, người d&ugrave;ng phải đưa tệp tin l&ecirc;n bộ nhớ đ&aacute;m m&acirc;y Google Drive, sau đ&oacute; l&agrave;m theo c&aacute;c bước giống như c&aacute;ch in văn bản bằng AirPrint. Tuy nhi&ecirc;n đến bước lựa chọn phương thức in ở cửa sổ pop-up, bạn cần lựa chọn Google Cloud Print thay v&igrave; AirPrint.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn th&agrave;nh c&ocirc;ng!</p>\r\n\r\n<p><strong>Nguyễn Nguyễn</strong></p>\r\n\r\n<p><em>Theo CNet</em></p>\r\n', '15081602751494416442llv.jpg', 1),
(20, 'Mua iPhone 6s và iPhone 6s Plus chính hãng ở đâu?', '<p>X-37B c&oacute; thể triển khai như vũ kh&iacute; ti&ecirc;u diệt vệ tinh của đối phương, hoặc thả vũ kh&iacute; động năng đến bất kỳ vị tr&iacute; n&agrave;o tr&ecirc;n Tr&aacute;i Đất.</p>\r\n', '<p>Khoang tr&uacute; mạng được thiết kế như một giải ph&aacute;p cho nhiều thảm họa kh&aacute;c nhau. N&oacute; c&oacute; thể tr&ocirc;i nổi n&ecirc;n sẽ kh&ocirc;ng bị ngập nếu nước d&acirc;ng qu&aacute; cao như trong cơn s&oacute;ng thần. Hệ thống tự giữa thăng bằng sử dụng bong b&oacute;ng nước ở dưới đ&aacute;y ngăn khoang lật nh&agrave;. N&oacute; cũng c&oacute; d&acirc;y neo để kh&ocirc;ng người ngồi trong kh&ocirc;ng bị cuốn tr&ocirc;i.</p>\r\n\r\n<p>Survival Capsule c&oacute; lớp vỏ v&agrave; khung l&agrave;m từ nh&ocirc;m cứng, đồng thời c&oacute; khả năng c&aacute;ch nhiệt để giữ ấm cho người ngồi trong. Người sử dụng được đảm bảo an to&agrave;n trong suốt qu&atilde;ng thời gian đầu sau thảm họa trong khi chờ đội cứu hộ đến nơi.</p>\r\n\r\n<p>Khoang tr&uacute; mạng l&agrave; thiết kế của một nh&oacute;m kỹ sư h&agrave;ng kh&ocirc;ng. Mục ti&ecirc;u của họ l&agrave; khiến thiết bị trở n&ecirc;n chắc chắn v&agrave; l&acirc;u bền tới mức tối đa. Trong lần thử nghiệm đầu ti&ecirc;n, họ sử dụng chương tr&igrave;nh kiểm tra tương tự như trong ng&agrave;nh h&agrave;ng kh&ocirc;ng để xem x&eacute;t t&iacute;nh an to&agrave;n của khoang.</p>\r\n\r\n<p>Julian Sharpe nảy ra &yacute; tưởng về Survival Capsule sau trận s&oacute;ng thần cướp đi mạng sống của 225.000 người ở Indonesia năm 2004.</p>\r\n\r\n<p>Khoang tr&uacute; mạng được thiết kế như một giải ph&aacute;p cho nhiều thảm họa kh&aacute;c nhau. N&oacute; c&oacute; thể tr&ocirc;i nổi n&ecirc;n sẽ kh&ocirc;ng bị ngập nếu nước d&acirc;ng qu&aacute; cao như trong cơn s&oacute;ng thần. Hệ thống tự giữa thăng bằng sử dụng bong b&oacute;ng nước ở dưới đ&aacute;y ngăn khoang lật nh&agrave;. N&oacute; cũng c&oacute; d&acirc;y neo để kh&ocirc;ng người ngồi trong kh&ocirc;ng bị cuốn tr&ocirc;i.</p>\r\n\r\n<p>Survival Capsule c&oacute; lớp vỏ v&agrave; khung l&agrave;m từ nh&ocirc;m cứng, đồng thời c&oacute; khả năng c&aacute;ch nhiệt để giữ ấm cho người ngồi trong. Người sử dụng được đảm bảo an to&agrave;n trong suốt qu&atilde;ng thời gian đầu sau thảm họa trong khi chờ đội cứu hộ đến nơi.</p>\r\n\r\n<p>Khoang tr&uacute; mạng l&agrave; thiết kế của một nh&oacute;m kỹ sư h&agrave;ng kh&ocirc;ng. Mục ti&ecirc;u của họ l&agrave; khiến thiết bị trở n&ecirc;n chắc chắn v&agrave; l&acirc;u bền tới mức tối đa. Trong lần thử nghiệm đầu ti&ecirc;n, họ sử dụng chương tr&igrave;nh kiểm tra tương tự như trong ng&agrave;nh h&agrave;ng kh&ocirc;ng để xem x&eacute;t t&iacute;nh an to&agrave;n của khoang.</p>\r\n\r\n<p>Julian Sharpe nảy ra &yacute; tưởng về Survival Capsule sau trận s&oacute;ng thần cướp đi mạng sống của 225.000 người ở Indonesia năm 2004.</p>\r\n', '15081602601494416422chicago.jpg', 1),
(21, 'Cá voi sát thủ giết cá mập trắng để rạch bụng moi gan', '<p>C&aacute;c nh&agrave; khoa học cho rằng c&aacute; voi s&aacute;t thủ l&agrave; thủ phạm s&aacute;t hại những con c&aacute; mập trắng khổng lồ ở ngo&agrave;i khơi Nam Phi v&agrave; moi gan của ch&uacute;ng với độ ch&iacute;nh x&aacute;c cao về mặt giải phẫu</p>\r\n', '<p>C&aacute;c nh&agrave; khoa học cho rằng c&aacute; voi s&aacute;t thủ l&agrave; thủ phạm s&aacute;t hại những con c&aacute; mập trắng khổng lồ ở ngo&agrave;i khơi Nam Phi v&agrave; moi gan của ch&uacute;ng với độ ch&iacute;nh x&aacute;c cao về mặt giải phẫu&nbsp;C&aacute;c nh&agrave; khoa học cho rằng c&aacute; voi s&aacute;t thủ l&agrave; thủ phạm s&aacute;t hại những con c&aacute; mập trắng khổng lồ ở ngo&agrave;i khơi Nam Phi v&agrave; moi gan của ch&uacute;ng với độ ch&iacute;nh x&aacute;c cao về mặt giải phẫu&nbsp;C&aacute;c nh&agrave; khoa học cho rằng c&aacute; voi s&aacute;t thủ l&agrave; thủ phạm s&aacute;t hại những con c&aacute; mập trắng khổng lồ ở ngo&agrave;i khơi Nam Phi v&agrave; moi gan của ch&uacute;ng với độ ch&iacute;nh x&aacute;c cao về mặt giải phẫu&nbsp;C&aacute;c nh&agrave; khoa học cho rằng c&aacute; voi s&aacute;t thủ l&agrave; thủ phạm s&aacute;t hại những con c&aacute; mập trắng khổng lồ ở ngo&agrave;i khơi Nam Phi v&agrave; moi gan của ch&uacute;ng với độ ch&iacute;nh x&aacute;c cao về mặt giải phẫu&nbsp;C&aacute;c nh&agrave; khoa học cho rằng c&aacute; voi s&aacute;t thủ l&agrave; thủ phạm s&aacute;t hại những con c&aacute; mập trắng khổng lồ ở ngo&agrave;i khơi Nam Phi v&agrave; moi gan của ch&uacute;ng với độ ch&iacute;nh x&aacute;c cao về mặt giải phẫu&nbsp;C&aacute;c nh&agrave; khoa học cho rằng c&aacute; voi s&aacute;t thủ l&agrave; thủ phạm s&aacute;t hại những con c&aacute; mập trắng khổng lồ ở ngo&agrave;i khơi Nam Phi v&agrave; moi gan của ch&uacute;ng với độ ch&iacute;nh x&aacute;c cao về mặt giải phẫu&nbsp;C&aacute;c nh&agrave; khoa học cho rằng c&aacute; voi s&aacute;t thủ l&agrave; thủ phạm s&aacute;t hại những con c&aacute; mập trắng khổng lồ ở ngo&agrave;i khơi Nam Phi v&agrave; moi gan của ch&uacute;ng với độ ch&iacute;nh x&aacute;c cao về mặt giải phẫu</p>\r\n', '15081602681494416434la.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ngaymua` date NOT NULL,
  `gia` float NOT NULL,
  `trangthai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `ngaymua`, `gia`, `trangthai`) VALUES
(47, 22, '2017-05-23', 10000000, 0),
(48, 22, '2017-05-24', 45000000, 0),
(49, 23, '2017-10-18', 13000000, 0),
(50, 23, '2017-10-18', 13000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `fk_product_id` int(11) NOT NULL,
  `c_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`order_detail_id`, `order_id`, `fk_product_id`, `c_number`) VALUES
(91, 47, 9, 5),
(92, 48, 11, 15),
(93, 49, 13, 2),
(94, 49, 11, 3),
(95, 50, 14, 1),
(96, 50, 5, 1),
(97, 50, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pk_product_id` int(11) NOT NULL,
  `fk_category_product_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_description` varchar(2000) NOT NULL,
  `c_content` text NOT NULL,
  `c_img` varchar(500) NOT NULL,
  `c_price` float NOT NULL DEFAULT '0',
  `c_hotproduct` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`pk_product_id`, `fk_category_product_id`, `c_name`, `c_description`, `c_content`, `c_img`, `c_price`, `c_hotproduct`) VALUES
(4, 3, 'Sản phẩm 1', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '15081603861494416729galaxy-s6-edge--vang4dea.jpg', 2000000, 0),
(5, 3, 'Sản phẩm 2', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '15081603781494416685000000000010021355-may-tinh-xach-tay-lenovo-ideapad-flex-2-14e284.jpg', 2000000, 1),
(6, 3, 'Sản phẩm 3', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '15081603711494416738tp550ld-cj084h-01_rabz-50_ieap-cm_dv21-0ffd16.jpg', 3000000, 1),
(7, 1, 'Sản phẩm 4', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;</p>\r\n', '15081603621494416720dell-l3540b-014089.jpg', 3000000, 1),
(9, 3, 'Sản phẩm 5', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '15081603541494416713dell_vostro_14_5480_012c85.jpg', 2000000, 1),
(11, 1, 'Sản phẩm 6', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '15081603461494416707canon-mp237-017de3.jpg', 3000000, 1),
(12, 1, 'Sản phẩm 7', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '15081603371494416700canon-mg3570-012d43.jpg', 4000000, 1),
(13, 1, 'Sản phẩm 8', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '<p>C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh&nbsp;C&oacute; nhiều hương vị tr&aacute;i c&acirc;y tự nhi&ecirc;n: d&acirc;u, sầu ri&ecirc;ng, cốm, dừa, khoai m&ocirc;n, đậu xanh</p>\r\n', '15081603311494416693acer-e5-411-c2pe-010d0b.jpg', 2000000, 1),
(14, 1, 'Sản phẩm 9', '<p>H&ocirc;m qua, MU đ&atilde; gi&agrave;nh chiến thắng quan trọng với tỷ số 2-0 trước Watford. Trong đ&oacute;, Juan Mata v&agrave; Anthony Martial l&agrave; những người lập c&ocirc;ng cho MU ở trận đấu n&agrave;y. Ngo&agrave;i việc gi&agrave;nh 3 điểm để tiếp tục b&aacute;m đuổi những đội xếp tr&ecirc;n, chiến thắng n&agrave;y c&ograve;n gi&uacute;p MU c&aacute;n cột mốc đặc biệt.</p>\r\n', '<p>H&ocirc;m qua, MU đ&atilde; gi&agrave;nh chiến thắng quan trọng với tỷ số 2-0 trước Watford. Trong đ&oacute;, Juan Mata v&agrave; Anthony Martial l&agrave; những người lập c&ocirc;ng cho MU ở trận đấu n&agrave;y. Ngo&agrave;i việc gi&agrave;nh 3 điểm để tiếp tục b&aacute;m đuổi những đội xếp tr&ecirc;n, chiến thắng n&agrave;y c&ograve;n gi&uacute;p MU c&aacute;n cột mốc đặc biệt.&nbsp;H&ocirc;m qua, MU đ&atilde; gi&agrave;nh chiến thắng quan trọng với tỷ số 2-0 trước Watford. Trong đ&oacute;, Juan Mata v&agrave; Anthony Martial l&agrave; những người lập c&ocirc;ng cho MU ở trận đấu n&agrave;y. Ngo&agrave;i việc gi&agrave;nh 3 điểm để tiếp tục b&aacute;m đuổi những đội xếp tr&ecirc;n, chiến thắng n&agrave;y c&ograve;n gi&uacute;p MU c&aacute;n cột mốc đặc biệt.&nbsp;H&ocirc;m qua, MU đ&atilde; gi&agrave;nh chiến thắng quan trọng với tỷ số 2-0 trước Watford. Trong đ&oacute;, Juan Mata v&agrave; Anthony Martial l&agrave; những người lập c&ocirc;ng cho MU ở trận đấu n&agrave;y. Ngo&agrave;i việc gi&agrave;nh 3 điểm để tiếp tục b&aacute;m đuổi những đội xếp tr&ecirc;n, chiến thắng n&agrave;y c&ograve;n gi&uacute;p MU c&aacute;n cột mốc đặc biệt.</p>\r\n', '15081603241494416622iphone-6s---6s-plus-hong-color-x96i-91-uw67-ts-m58z-4y.jpg', 7000000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slide`
--

CREATE TABLE `tbl_slide` (
  `pk_slide_id` int(11) NOT NULL,
  `c_name` varchar(200) NOT NULL,
  `c_img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slide`
--

INSERT INTO `tbl_slide` (`pk_slide_id`, `c_name`, `c_img`) VALUES
(1, 'slide 1', 'public/frontend/images/la.jpg'),
(2, 'Slide 2', 'public/frontend/images/slideshow1221b.jpg'),
(3, 'Slide 3', 'public/frontend/images/chicago.jpg'),
(4, 'Slide 4', 'public/frontend/images/ny.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_static`
--

CREATE TABLE `tbl_static` (
  `visited` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_static`
--

INSERT INTO `tbl_static` (`visited`) VALUES
(318);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support`
--

CREATE TABLE `tbl_support` (
  `pk_support_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_contact` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_support`
--

INSERT INTO `tbl_support` (`pk_support_id`, `c_name`, `c_contact`) VALUES
(1, 'Tư vấn bán hàng 1', 'Mrs. Dung: (04) 3786 8904'),
(2, 'Tư vấn bán hàng 2', 'Mr. Tuấn: (04) 3786 8904'),
(3, 'Email liên hệ', 'support@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support_online`
--

CREATE TABLE `tbl_support_online` (
  `pk_support_onine_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_contact` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_support_online`
--

INSERT INTO `tbl_support_online` (`pk_support_onine_id`, `c_name`, `c_contact`) VALUES
(1, 'Tư vấn bán hàng 1', 'Mrs. Dung: (04) 3786 8904'),
(2, 'Tư vấn bán hàng 2', 'Mr. Tuấn: (04) 3786 8904'),
(3, 'Email liên hệ', 'support@mail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `pk_user_id` int(11) NOT NULL,
  `c_username` varchar(500) NOT NULL,
  `c_password` varchar(500) NOT NULL,
  `c_fullname` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`pk_user_id`, `c_username`, `c_password`, `c_fullname`) VALUES
(1, 'admin', '0192023a7bbd73250516f069df18b500', 'Nguyễn Văn A'),-- password: admin123
(2, 'admin1', '0192023a7bbd73250516f069df18b500', 'Nguyễn Văn A'),-- password: admin123
(3, 'admin2', '0192023a7bbd73250516f069df18b500', 'Nguyễn Văn B'),-- password: admin123
(4, 'admin3', '0192023a7bbd73250516f069df18b500', 'Nguyễn Văn C@'),-- password: admin123
(6, 'test', 'ceea23519f6f86ad67e9f798bf8002cb', '@'),
(8, 'a', '0cc175b9c0f1b6a831c399e269772661', 'a1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_online`
--

CREATE TABLE `tbl_user_online` (
  `session_id` varchar(500) NOT NULL,
  `time_visited` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user_online`
--

INSERT INTO `tbl_user_online` (`session_id`, `time_visited`) VALUES
('glupg7groihn62q131ho9ftmn5', 1492944313);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_adv`
--
ALTER TABLE `tbl_adv`
  ADD PRIMARY KEY (`pk_adv_id`);

--
-- Indexes for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  ADD PRIMARY KEY (`pk_category_product_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_news`
--
ALTER TABLE `tbl_news`
  ADD PRIMARY KEY (`pk_news_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  ADD PRIMARY KEY (`pk_slide_id`);

--
-- Indexes for table `tbl_support`
--
ALTER TABLE `tbl_support`
  ADD PRIMARY KEY (`pk_support_id`);

--
-- Indexes for table `tbl_support_online`
--
ALTER TABLE `tbl_support_online`
  ADD PRIMARY KEY (`pk_support_onine_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`pk_user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_adv`
--
ALTER TABLE `tbl_adv`
  MODIFY `pk_adv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_category_product`
--
ALTER TABLE `tbl_category_product`
  MODIFY `pk_category_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tbl_news`
--
ALTER TABLE `tbl_news`
  MODIFY `pk_news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
--
-- AUTO_INCREMENT for table `tbl_slide`
--
ALTER TABLE `tbl_slide`
  MODIFY `pk_slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `pk_support_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_support_online`
--
ALTER TABLE `tbl_support_online`
  MODIFY `pk_support_onine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `pk_user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
