<%@ WebHandler Language="VB" Class="ImageUploadHandler" %>

Imports System
Imports System.Web

Public Class ImageUploadHandler : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Try
            Dim uploadPath As String = HttpContext.Current.Server.MapPath("~/Uploaded/")
            
            ' Tạo thư mục nếu nó không tồn tại
            If Not System.IO.Directory.Exists(uploadPath) Then
                System.IO.Directory.CreateDirectory(uploadPath)
            End If

            For Each file As String In context.Request.Files
                Dim postedFile As HttpPostedFile = context.Request.Files(file)
                If postedFile.ContentLength > 0 Then
                    Dim fileName As String = System.IO.Path.GetFileName(postedFile.FileName)
                    Dim filePath As String = System.IO.Path.Combine(uploadPath, fileName)
                    postedFile.SaveAs(filePath)
                End If
            Next

            ' Trả về thông báo thành công hoặc thông báo lỗi nếu cần.
            context.Response.Write("Tải lên thành công!")
        Catch ex As Exception
            context.Response.Write("Lỗi: " & ex.Message)
        End Try
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class
