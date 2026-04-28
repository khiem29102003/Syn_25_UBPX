<%@ Page Language="VB" AutoEventWireup="true" CodeBehind="UploadImage.aspx.vb" Inherits="ISWIFT.Sys.Web.APage" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tài liệu</title>
</head>
<body>	
	<input type="file" id="fileUpload" />
	<input type="hidden" id="fileName" />
	<input type="button" id="btnUpload" value="Tải lên" onclick="return uploadImage();" />

	<script type="text/javascript">
		function uploadImage() {
			/*Tên file giống tên gốc và đè lên nhau*/
			var fileUpload = document.getElementById('fileUpload');
			var file = fileUpload.files[0];
			
			var formData = new FormData();
			formData.append("file", file);
			
			/*Nếu cần thêm thời gian vào trước tên file*/
			/*
			// Tạo tên tệp mới dựa trên ngày giờ
			var currentDate = new Date();
			var fileName = currentDate.getTime() + "_" + file.name;
			
			var formData = new FormData();
			formData.append("file", file, fileName); // Sử dụng tên tệp mới
			*/

			var xhr = new XMLHttpRequest();
			xhr.open("POST", "/AppHandler/UploadHandler.ashx", true);
			xhr.onreadystatechange = function () {
				if (xhr.readyState === 4 && xhr.status === 200) {
					console.log(file);
					document.getElementById("fileName").value = "/UploadedImages/" + file.name;
					// Xử lý kết quả sau khi tải lên thành công (nếu cần)
				}
			};
			xhr.send(formData);

			return false; // Ngăn chặn form gửi lại dữ liệu
		}
	</script>

</body>
</html>


