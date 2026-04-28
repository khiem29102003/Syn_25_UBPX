<%@ WebHandler Language="VB" Class="FileHandlerNoLogin" %>
Imports System
Imports System.Web
Imports System.IO
Imports System.Text
Imports System.Data.SqlClient

Public Class FileHandlerNoLogin : Implements IHttpHandler

    Public Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest
        Dim rawParam As String = context.Request("param")
        If String.IsNullOrEmpty(rawParam) Then
            context.Response.StatusCode = 400
            context.Response.Write("Thiếu tham số param.")
            Return
        End If

        Dim decoded As String = Encoding.UTF8.GetString(Convert.FromBase64String(rawParam))
        Dim parts As String() = decoded.Split(New String() {"[@#]"}, StringSplitOptions.None)
        If parts.Length < 4 Then
            context.Response.StatusCode = 400
            context.Response.Write("Định dạng param không hợp lệ.")
            Return
        End If

        Dim id As String = parts(2) ' ID file
        Dim fileInfo = GetFileInfo(id)
        If fileInfo Is Nothing Then
            context.Response.StatusCode = 404
            context.Response.Write("Không tìm thấy thông tin file trong dmttin.")
            Return
        End If

        Dim filePath As String = context.Server.MapPath("~/App_Data/Files/" & fileInfo("server_path").Replace("\", "/"))
        If Not File.Exists(filePath) Then
            context.Response.StatusCode = 404
            context.Response.Write("Không tìm thấy file vật lý: " & filePath)
            Return
        End If

        context.Response.ContentType = GetContentType(fileInfo("ext"))
        context.Response.AppendHeader("Content-Disposition", "inline; filename=""" & fileInfo("client_name") & """")
        context.Response.WriteFile(filePath)
    End Sub

    Private Function GetFileInfo(id As String) As Dictionary(Of String, String)
        Dim result As New Dictionary(Of String, String)()
        Dim connStr As String = System.Configuration.ConfigurationManager.ConnectionStrings("appConnectionString").ConnectionString

        Using conn As New SqlConnection(connStr)
            conn.Open()
            Dim cmd As New SqlCommand("SELECT server_path, client_name, ext FROM dmttin WHERE id = @id", conn)
            cmd.Parameters.AddWithValue("@id", id)

            Using reader = cmd.ExecuteReader()
                If reader.Read() Then
                    result("server_path") = reader("server_path").ToString()
                    result("client_name") = reader("client_name").ToString()
                    result("ext") = reader("ext").ToString()
                    Return result
                End If
            End Using
        End Using

        Return Nothing
    End Function

    Private Function GetContentType(ext As String) As String
        Select Case ext.ToLower()
            Case "jpg", "jpeg" : Return "image/jpeg"
            Case "png"         : Return "image/png"
            Case "gif"         : Return "image/gif"
            Case "pdf"         : Return "application/pdf"
            Case "doc"         : Return "application/msword"
            Case "docx"        : Return "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
            Case "xls"         : Return "application/vnd.ms-excel"
            Case "xlsx"        : Return "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
            Case "zip"         : Return "application/zip"
            Case Else          : Return "application/octet-stream"
        End Select
    End Function

    Public ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property
End Class
