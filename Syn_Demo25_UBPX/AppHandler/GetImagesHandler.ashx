<%@ WebHandler Language="VB" Class="GetImagesHandler" %>

' AppHandler/GetImagesHandler.ashx.vb
Imports System.IO
Imports System.Web
Imports System.Web.Script.Serialization

Public Class GetImagesHandler
    Implements IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        context.Response.ContentType = "application/json"

        ' Thư mục chứa các ảnh
        Dim imagePath As String = HttpContext.Current.Server.MapPath("/Uploaded/")

        ' Lấy tất cả các tệp ảnh có định dạng hợp lệ từ thư mục
        Dim validImageExtensions As String() = {".jpg", ".jpeg", ".png", ".gif"}
        Dim images As New List(Of String)()
        For Each file As String In Directory.GetFiles(imagePath)
            Dim extension As String = Path.GetExtension(file).ToLower()
            If validImageExtensions.Contains(extension) Then
                images.Add("/Uploaded/" & Path.GetFileName(file))
            End If
        Next

        ' Trả về danh sách các đường dẫn ảnh hợp lệ dưới dạng JSON
        context.Response.Write(New JavaScriptSerializer().Serialize(New With {.images = images}))
    End Sub

    ReadOnly Property IsReusable As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property
End Class

