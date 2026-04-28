Imports System.Web.Script.Serialization
Imports System.Net.Mail
Imports System.Configuration
Imports System.Data.SqlClient
Imports System.IO

Public Class EmailSingle
	Public Property id As Integer
    Public Property s_mail As String
	Public Property title As String
	Public Property email_body As String
	Public Property link As String
    Public Property ten_s_mail As String
    Public Property username_smail As String
	Public Property ten_r_mail As String
    Public Property mk_mail As String
	Public Property smtp_server As String
    Public Property smtp_port As Integer
	Public Property type_smail As Integer
    Public Property r_mail As String
	Public Property attachments As List(Of AttachmentItem)
End Class

Public Class AttachmentItem
    Public Property path As String          ' Đường dẫn tương đối
    Public Property filename As String      ' Tên file hiển thị
    Public Property contentType As String   ' MIME type
End Class

Partial Class SendSingleEmail
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Request.HttpMethod = "POST" Then
            Dim reader As New IO.StreamReader(Request.InputStream)
            Dim json As String = reader.ReadToEnd()

            Dim js As New JavaScriptSerializer()
            Dim email As EmailSingle = js.Deserialize(Of EmailSingle)(json)
			Dim body = email.email_body

			If Not String.IsNullOrEmpty(email.ten_r_mail) Then
                body = email.email_body.Replace("@ten_kh@", email.ten_r_mail)
            End If

            ' If Not String.IsNullOrEmpty(email.link) Then
				' ' ✅ Tách nhiều đường dẫn theo ; hoặc , hoặc kết hợp
				' Dim filePaths As String() = email.link.Split(New Char() {";"c, ","c}, StringSplitOptions.RemoveEmptyEntries)

				' For Each relativePath As String In filePaths
					' Dim trimmedPath As String = relativePath.Trim()
					' Dim absolutePath As String = Server.MapPath(trimmedPath)

					' If System.IO.File.Exists(absolutePath) Then
						' Try
							' mail.Attachments.Add(New Attachment(absolutePath))
						' Catch ex As Exception
							' ' Ghi log nếu cần, ví dụ:
							' ' Log("Không thể đính kèm file: " & trimmedPath & " - " & ex.Message)
						' End Try
					' End If
				' Next
			' End If

            Try
                Dim mail As New System.Net.Mail.MailMessage()
                mail.From = New MailAddress(email.s_mail, email.ten_s_mail)
                mail.To.Add(email.r_mail)
				
				' Thêm CC nếu có
				If Not String.IsNullOrWhiteSpace(email.link) Then
					For Each cc In email.link.Split(","c)
						If Not String.IsNullOrWhiteSpace(cc) Then
							mail.CC.Add(cc.Trim())
						End If
					Next
				End If
				
                mail.Subject = email.title
                mail.Body = body
                mail.IsBodyHtml = True
				
				' ✅ Di chuyển khối xử lý attachments vào đây sau khi mail đã khai báo
				' If email.attachments IsNot Nothing AndAlso email.attachments.Count > 0 Then
					' For Each file In email.attachments
						' Try
							' Dim absPath As String = Server.MapPath(file.path.Trim())
							' If IO.File.Exists(absPath) Then
								' Dim stream As New IO.FileStream(absPath, IO.FileMode.Open, IO.FileAccess.Read)
								' Dim attachment As New System.Net.Mail.Attachment(stream, file.filename, file.contentType)
								' mail.Attachments.Add(attachment)
							' End If
						' Catch ex As Exception
							' ' Ghi log nếu cần
						' End Try
					' Next
				' End If
				
				Dim domain As String = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority)

				For Each file In email.attachments
					Try
						Dim relativePath As String = file.path.Trim()
						If relativePath.StartsWith("http", StringComparison.OrdinalIgnoreCase) = False Then
							relativePath = relativePath.TrimStart("~"c).TrimStart("."c, "/"c)
							relativePath = domain & "/" & relativePath
						End If

						Dim client As New System.Net.WebClient()
						Dim data As Byte() = client.DownloadData(relativePath)

						If data IsNot Nothing AndAlso data.Length > 0 Then
							Dim stream As New IO.MemoryStream(data)
							Dim attachment As New Attachment(stream, file.filename, file.contentType)
							mail.Attachments.Add(attachment)
						End If
					Catch ex As Exception
						' Ghi log nếu cần
					End Try
				Next

                Dim smtp As New SmtpClient(email.smtp_server, email.smtp_port)
                smtp.Credentials = New Net.NetworkCredential(email.username_smail, email.mk_mail)
                smtp.EnableSsl = True
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network
                smtp.Timeout = 20000 ' 20 giây

                smtp.Send(mail)

				'✅ Lưu vào DB sau khi gửi thành công
				Try
					InsertMailSuccess(email, body)
				Catch ex2 As Exception
					' Ghi log nếu cần: lỗi ghi DB nhưng vẫn gửi mail thành công
				End Try

                ' ✅ Cập nhật DB sau khi gửi thành công
                ' UpdateMailStatus(email.r_mail)			
				
                Response.Write("200")
            Catch ex As Exception
                ' Trả về lỗi cụ thể để debug nếu cần
                Response.Write("Lỗi gửi: " & ex.Message)
            End Try

            Response.End()
        End If
    End Sub
	
	Private Sub InsertMailSuccess(email As EmailSingle, body As String)
		Dim connStr As String = ConfigurationManager.ConnectionStrings("appConnectionString").ConnectionString

		Using conn As New SqlConnection(connStr)
			conn.Open()

			' 🔹 Lưu mail vào sent_emails (thêm @id_phieu)
			Dim emailId As Integer = 0
			Dim sql As String = "INSERT INTO sent_emails (id_phieu, s_mail, r_mail, ten_s_mail, ten_r_mail, subject, body) OUTPUT INSERTED.id VALUES (@id_phieu, @s_mail, @r_mail, @ten_s_mail, @ten_r_mail, @subject, @body)"
			Using cmd As New SqlCommand(sql, conn)
				cmd.Parameters.AddWithValue("@id_phieu", email.id)
				cmd.Parameters.AddWithValue("@s_mail", email.s_mail)
				cmd.Parameters.AddWithValue("@r_mail", email.r_mail)
				cmd.Parameters.AddWithValue("@ten_s_mail", email.ten_s_mail)
				cmd.Parameters.AddWithValue("@ten_r_mail", email.ten_r_mail)
				cmd.Parameters.AddWithValue("@subject", email.title)
				cmd.Parameters.AddWithValue("@body", body)
				emailId = Convert.ToInt32(cmd.ExecuteScalar())
			End Using

			' 🔹 Lưu file đính kèm
			If email.attachments IsNot Nothing Then
				For Each file In email.attachments
					Dim insertAttSql As String = "INSERT INTO sent_email_attachments (email_id, file_path, file_name, content_type) VALUES (@email_id, @file_path, @file_name, @content_type)"
					Using cmd As New SqlCommand(insertAttSql, conn)
						cmd.Parameters.AddWithValue("@email_id", emailId)
						cmd.Parameters.AddWithValue("@file_path", file.path)
						cmd.Parameters.AddWithValue("@file_name", file.filename)
						cmd.Parameters.AddWithValue("@content_type", file.contentType)
						cmd.ExecuteNonQuery()
					End Using
				Next
			End If
		End Using
	End Sub

    ' Private Sub UpdateMailStatus(rmail As String)
        ' Dim connStr As String = ConfigurationManager.ConnectionStrings("appConnectionString").ConnectionString
        ' Using conn As New SqlConnection(connStr)
            ' Dim sql As String = "UPDATE dmrmail SET lastsentdate = GETDATE(), so_lan_gui = ISNULL(so_lan_gui, 0) + 1 WHERE r_mail = @rmail"
            ' Using cmd As New SqlCommand(sql, conn)
                ' cmd.Parameters.AddWithValue("@rmail", rmail)
                ' conn.Open()
                ' cmd.ExecuteNonQuery()
            ' End Using
        ' End Using
    ' End Sub
End Class
