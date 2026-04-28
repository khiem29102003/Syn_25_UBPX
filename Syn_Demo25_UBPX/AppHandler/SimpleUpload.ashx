<%@ WebHandler Language="VB" Class="SimpleUpload" %>

Imports System.IO
Imports System.Web

Public Class SimpleUpload : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        context.Response.ContentType = "application/json"

        Try
            Dim file = context.Request.Files("upload")
            If file Is Nothing OrElse file.ContentLength = 0 Then
                context.Response.Write("{""error"":""No file uploaded""}")
                Return
            End If

            ' Tạo thư mục nếu chưa có
            Dim uploadFolder = context.Server.MapPath("~/Uploads/")
            If Not Directory.Exists(uploadFolder) Then
                Directory.CreateDirectory(uploadFolder)
            End If

            ' Lưu file
            Dim fileName = Path.GetFileName(file.FileName)
            Dim filePath = Path.Combine(uploadFolder, fileName)
            file.SaveAs(filePath)

            ' Trả URL cho CKEditor
            Dim domain As String = context.Request.Url.GetLeftPart(UriPartial.Authority)
			Dim fileUrl As String = domain & "/uploads/" & fileName
			context.Response.Write("{""url"":""" & fileUrl & """}")
        Catch ex As Exception
            context.Response.Write("{""error"":""" & ex.Message & """}")
        End Try
    End Sub

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property
	
End Class
