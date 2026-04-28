<%@ Page Language="VB" AutoEventWireup="true" CodeFile="Defaults.aspx.vb" Inherits="Defaults" %>
<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script type="text/javascript">
        function getSystemTime(format) {
            $.ajax({
                type: "POST",
                url: "/Main/Defaults.aspx/GetSystemTime",  // Đường dẫn đến trang web và tên phương thức
                contentType: "application/json; charset=utf-8",
                dataType: "json",
				data: JSON.stringify({ format: format }),  // Truyền format vào WebMethod
                success: function (response) {
                    // Xử lý phản hồi từ server
                    var systemTime = response.d;
                    alert("Giờ hệ thống: " + systemTime);
                },
                error: function (error) {
                    console.log(error);
                }
            });
        }
		
		function getSystemDate(format) {
            $.ajax({
                type: "POST",
                url: "/Main/Defaults.aspx/GetSystemDate",  // Đường dẫn đến trang web và tên phương thức
                contentType: "application/json; charset=utf-8",
                dataType: "json",
				data: JSON.stringify({ format: format }),  // Truyền format vào WebMethod
                success: function (response) {
                    // Xử lý phản hồi từ server
                    var systemDate = response.d;
                    alert("Ngày hệ thống: " + systemDate);
                },
                error: function (error) {
                    console.log(error);
                }
            });
        }
    </script>
</head>
<body>
    <button onclick="getSystemTime('HH:mm:ss')">Lấy Giờ Hệ Thống</button>
    <button onclick="getSystemDate('dd/MM/yyyy')">Lấy Ngày Hệ Thống</button>
</body>
</html>

