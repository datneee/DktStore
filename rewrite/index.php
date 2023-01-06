<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Index page</title>
</head>
<!--
	-rewrite url thực chất là việc định dạng đường dẫn ảo <=> load đường dẫn thực
	-Cấu hình việc rewrite url đc thưch hiện trong file .htaccess
	-các thành phần và định nghĩa trong file .htaccess
		-Ghi chú: #
		-Nếu bất cứ thành phần nào trong file .htaccess bị lỗi thì toàn bộ website sẽ ko truy cập đc
		-File .htaccess nằm ở thư mục root của website, ngang cấp với trang index
		-Bật chế độ rewrite: RewriteEngine On
		-Cú pháp rewrite:
			RewriteRule ^duong-dan-ao$ duong-dan-thuc
		-Thẻ HTML <base href="duong-dan">: Lấy đường dẫn trong href làm đường dẫn gốc
		-Truyền biến lên url
			RewriteRule ^duong-dan/(.*)-(.*)$ index.php?a=$1&b=$2
			Giải thích:
				-(.*) là đại diện cho tất cả các ký tự
				-(.*) đầu tiên tương ứng vs $1
				-(.*) thứ 2 tương ứng vs $2
				-(.*) ko đc chứa ký tự đặc biệt
				-VD: Đường dẫn 
-->
<body>
	<h1>Index page</h1>
</body>
</html>