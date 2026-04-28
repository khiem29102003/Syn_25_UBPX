Imports System.Web.Services

Partial Public Class Defaults
    Inherits System.Web.UI.Page

    <WebMethod()>
    Public Shared Function GetSystemTime(format As String) As String
        ' Lấy giờ hệ thống
        Dim currentTime As DateTime = DateTime.Now

        ' Trả về giờ hệ thống dưới dạng chuỗi
        Return currentTime.ToString(format)
    End Function

    ' Các phương thức và sự kiện khác ở đây
	<WebMethod()>
    Public Shared Function GetSystemDate(format As String) As String
        ' Lấy giờ hệ thống
        Dim currentTime As DateTime = DateTime.Now

        ' Trả về giờ hệ thống dưới dạng chuỗi
        Return currentTime.ToString(format)
    End Function
End Class
