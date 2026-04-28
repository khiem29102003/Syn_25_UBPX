<%@ WebHandler Language="VB" Class="YourSaveRecordingHandler" %>

Imports System.IO
Imports System.Web

Public Class YourSaveRecordingHandler : Implements IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Try
            Dim audioFile As HttpPostedFile = context.Request.Files("audio")
            Dim customValue As String = context.Request.Form("customValue")

            ' Xử lý dấu '+' ở đầu biến customValue
            customValue = SanitizeFileName(customValue)

            If audioFile IsNot Nothing Then
                ' Tạo đường dẫn thư mục theo năm/tháng/ngày và customValue
                Dim currentDateTime As DateTime = DateTime.Now
                Dim yearFolder As String = currentDateTime.ToString("yyyy")
                Dim monthFolder As String = currentDateTime.ToString("MM")
                Dim dayFolder As String = currentDateTime.ToString("dd")
                Dim customFolder As String = customValue.Replace(" ", "_") ' Thay thế khoảng trắng bằng dấu gạch dưới

                Dim recordingsDirectory As String = HttpContext.Current.Server.MapPath("~/DataRecord")
                Dim yearPath As String = Path.Combine(recordingsDirectory, yearFolder)
                Dim monthPath As String = Path.Combine(yearPath, monthFolder)
                Dim dayPath As String = Path.Combine(monthPath, dayFolder)
                Dim customPath As String = Path.Combine(dayPath, customFolder)

                ' Tạo thư mục nếu chưa tồn tại
                If Not Directory.Exists(customPath) Then
                    Directory.CreateDirectory(customPath)
                End If

                ' Tạo tên file dựa trên năm, tháng, ngày, customValue và thời gian
                Dim fileName As String = "recording_" & customValue & "_" & currentDateTime.ToString("ddMMyyyyHHmmssFFF") & ".ogg"
                Dim filePath As String = Path.Combine(customPath, fileName)

                ' Lưu trữ tệp âm thanh
                audioFile.SaveAs(filePath)

                context.Response.Write(filePath)
            Else
                context.Response.Write("No audio file received")
            End If
        Catch ex As Exception
            context.Response.Write("Error: " & ex.Message)
        End Try
    End Sub

    Private Function SanitizeFileName(ByVal fileName As String) As String
        ' Thay thế các ký tự không hợp lệ trong tên file
        Dim invalidChars() As Char = Path.GetInvalidFileNameChars()

        ' Xử lý dấu '+' ở đầu tên file
        If fileName.StartsWith("+") Then
            fileName = "_" & fileName.Substring(1)
        End If

        For Each invalidChar In invalidChars
            fileName = fileName.Replace(invalidChar, "_")
        Next

        Return fileName
    End Function

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property
End Class
