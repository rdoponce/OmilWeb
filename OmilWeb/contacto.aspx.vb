Public Class contacto
    Inherits System.Web.UI.Page


    Protected Sub Boton1_Click(sender As Object, e As EventArgs) Handles Boton1.Click

        Dim _Message As New System.Net.Mail.MailMessage()
        Dim _SMTP As New System.Net.Mail.SmtpClient("192.168.110.12")
        'CONFIGURACIÓN DEL STMP
        _SMTP.Credentials = New System.Net.NetworkCredential("ricardo.ponce@munivalpo.cl", "ricardo")
        _SMTP.Host = "192.168.110.12"
        _SMTP.Port = 25
        _SMTP.DeliveryMethod = Net.Mail.SmtpDeliveryMethod.Network
        _SMTP.EnableSsl = False

        ' CONFIGURACION DEL MENSAJE
        Dim nombre As String = TextNombre.Text.ToString
        Dim correo As String = TextCorreo.Text.ToString

        _Message.To.Add("ricardo.ponce@munivalpo.cl") 'Cuenta de Correo al que se le quiere enviar el e-mail
        _Message.From = New System.Net.Mail.MailAddress(correo, nombre) 'Quien lo envía
        _Message.Subject = "Contacto Omil" 'Sujeto del e-mail
        _Message.SubjectEncoding = System.Text.Encoding.UTF8 'Codificacion
        _Message.Body = TextMensaje.Text.ToString 'contenido del mail
        _Message.BodyEncoding = System.Text.Encoding.UTF8
        _Message.Priority = System.Net.Mail.MailPriority.Normal
        _Message.IsBodyHtml = False

        'ENVIO
        Try
            _SMTP.Send(_Message)
            ScriptManager.RegisterStartupScript(Boton1, [GetType], "envioexito", "envioexito();", True)
            TextNombre.Text = ""
            TextCorreo.Text = ""
            TextMensaje.Text = ""

        Catch ex As System.Net.Mail.SmtpException
            ScriptManager.RegisterStartupScript(Boton1, [GetType], "enviofallo", "enviofallo();", True)

        End Try

    End Sub
End Class