Public Class empleadores
    Inherits System.Web.UI.Page


    Protected Sub ButtonEmp_Click(sender As Object, e As EventArgs) Handles ButtonEmp.Click

        Dim _Message As New System.Net.Mail.MailMessage()
        Dim _SMTP As New System.Net.Mail.SmtpClient("192.168.110.12")
        'CONFIGURACIÓN DEL STMP
        _SMTP.Credentials = New System.Net.NetworkCredential("ricardo.ponce@munivalpo.cl", "ricardo")
        _SMTP.Host = "192.168.110.12"
        _SMTP.Port = 25
        _SMTP.DeliveryMethod = Net.Mail.SmtpDeliveryMethod.Network
        _SMTP.EnableSsl = False

        'RESCATAR DATOS INGRESADOS
        Dim fechaSolicitud As String = TextFechaSol.Text.ToString
        Dim nombreEmpresa As String = TextNombreEmpresa.Text.ToString
        Dim razonSocial As String = TextRazon.Text.ToString
        Dim rut As String = TextRut.Text.ToString
        Dim actividad As String = TextActividad.Text.ToString
        Dim direccion As String = TextDireccion.Text.ToString
        Dim fono As String = TextFono.Text.ToString
        Dim email As String = TextEmail.Text.ToString
        Dim nombreSol As String = TextNombreSol.Text.ToString
        Dim cargoSol As String = TextCargoSol.Text.ToString
        Dim fonoSol As String = TextFonoSol.Text.ToString
        Dim emailSol As String = TextEmailSol.Text.ToString
        Dim area As String = TextArea.Text.ToString
        Dim descripcionCargo As String = TextDescripcionCargo.Text.ToString
        Dim perfilPostulante As String = TextPerfilPostulante.Text.ToString
        Dim sexo As String = DropDownListSexo.SelectedItem.ToString
        Dim experiencia As String = DropDownListexperiencia.SelectedItem.ToString
        Dim rangoEdad As String = TextRangoEdad.Text.ToString
        Dim nivelEstudio As String = DropDownListNivelEst.SelectedItem.ToString
        Dim conocimientoTecnico As String = TextConocimiento.Text.ToString
        Dim sueldoBruto As String = TextSueldoBru.Text.ToString
        Dim sueldoLiquido As String = TextSueldoLiq.Text.ToString
        Dim tipoContrato As String = DropDownListTipoContrato.SelectedItem.ToString
        Dim lugarTrabajo As String = TextLugarTrab.Text.ToString
        Dim horariotrabajo As String = TextHorarioTrab.Text.ToString
        Dim fechaContratacion As String = TextFechaContratacion.Text.ToString
        Dim lugarEntrevista As String = TextLugarEnt.Text.ToString
        Dim horaEntrevista As String = TextHoraEnt.Text.ToString
        Dim fechaentrevista As String = TextFechaEnt.Text.ToString
        Dim numeroVacante As String = TextNumeroVac.Text.ToString
        Dim numeroPostulantes As String = TextNumeroPost.Text.ToString
        Dim curriculum As String
        If CheckCurriculum.Checked Then
            curriculum = "Presentar Curriculum Vitae."
        Else
            curriculum = "no indica."
        End If
        Dim cedulaIdentidad As String
        If CheckCedula.Checked Then
            cedulaIdentidad = "Presentar Cédula de Identidad."
        Else
            cedulaIdentidad = "No Indica."
        End If
        Dim certificadoEstudios As String
        If CheckCertiEstudios.Checked Then
            certificadoEstudios = "Presentar Certificado de Estudios."
        Else
            certificadoEstudios = "No Indica."
        End If
        Dim certificadoTitulo As String
        If CheckCertiTitulo.Checked Then
            certificadoTitulo = "Presentar Certificado de Título."
        Else
            certificadoTitulo = "No Indica."
        End If
        Dim certificadoAntecedentes As String
        If CheckCertiAntecedentes.Checked Then
            certificadoAntecedentes = "Presentar Certificado de Antecendetes."
        Else
            certificadoAntecedentes = "No Indica."
        End If
        Dim licenciaConducir As String
        If CheckLicenciaCond.Checked Then
            licenciaConducir = "Presentar Licencia de Conducir."
        Else
            licenciaConducir = "No Indica."
        End If
        Dim certificadoResidencia As String
        If CheckCertiResidencia.Checked Then
            certificadoResidencia = "Presentar Certificado de Residencia."
        Else
            certificadoResidencia = "No Indica."
        End If
        Dim ultimoFiniquito As String
        If CheckUltimoFiniquito.Checked Then
            ultimoFiniquito = "Presentar Último Finiquito."
        Else
            ultimoFiniquito = "No Indica."
        End If
        Dim cartaReferencia As String
        If CheckCartaRef.Checked Then
            cartaReferencia = "Presentar Carta de Referencia."
        Else
            cartaReferencia = "No Indica."
        End If
        Dim observaciones As String = TextObs.Text.ToString

        'CONTENIDO DEL MENSAJE
        Dim body As String = "<strong>I. DATOS DE LA EMPRESA</strong> <br>" + vbCr +
                             "Fecha de Solicitud: " + fechaSolicitud + "<br>" + vbCr +
                             "Nombre Empresa: " + nombreEmpresa + "<br>" + vbCr +
                             "Razón Social: " + razonSocial + "<br>" + vbCr +
                             "Rut Empresa: " + rut + "<br>" + vbCr +
                             "Actividad Empresa: " + actividad + "<br>" + vbCr +
                             "Dirección Comercial: " + direccion + "<br>" + vbCr +
                             "Fono: " + fono + vbCr + "<br>" +
                             "Email: " + email + "<br>" + vbCr +
                             "Nombre Solicitante: " + nombreSol + "<br>" + vbCr +
                             "Cargo Solicitante: " + cargoSol + "<br>" + vbCr +
                             "Fono Solicitante: " + fonoSol + "<br>" + vbCr +
                             "Email Solicitante: " + emailSol + "<br> <br>" + vbCr + vbCr +
                             "<strong>II. DATOS DE LA OFERTA DE EMPLEO</strong> <br>" + vbCr +
                             "Cargo: " + cargoSol + "<br>" + vbCr +
                             "Área: " + area + "<br>" + vbCr +
                             "Descripción del Cargo: " + descripcionCargo + "<br>" + vbCr +
                             "Perfil Postulante: " + perfilPostulante + "<br>" + vbCr +
                             "Sexo: " + sexo + "<br>" + vbCr +
                             "Experiencia: " + experiencia + "<br>" + vbCr +
                             "Rango Edad: " + rangoEdad + "<br>" + vbCr +
                             "Nivel de Estudios: " + nivelEstudio + "<br>" + vbCr +
                             "Conocimiento técnico: " + conocimientoTecnico + "<br>" + vbCr +
                             "Sueldo Bruto: " + sueldoBruto + "<br>" + vbCr +
                             "Sueldo Liquido: " + sueldoLiquido + "<br>" + vbCr +
                             "Tipo Contrato: " + tipoContrato + "<br>" + vbCr +
                             "Lugar de Trabajo: " + lugarTrabajo + "<br>" + vbCr +
                             "Horario de Trabajo: " + horariotrabajo + "<br>" + vbCr +
                             "Fecha de Contratación: " + fechaContratacion + "<br>" + vbCr +
                             "Lugar de Entrevista: " + lugarEntrevista + "<br>" + vbCr +
                             "Hora de Entrevista: " + horaEntrevista + "<br>" + vbCr +
                             "Fecha de Entrevista: " + fechaentrevista + "<br>" + vbCr +
                             "Numero de Vacantes: " + numeroVacante + "<br>" + vbCr +
                             "Numero de Postulantes: " + numeroPostulantes + "<br> <br>" + vbCr + vbCr +
                             "<strong>III. DOCUMENTOS SOLICITADOS PARA LA ENTREVISTA</strong> <br>" + vbCr +
                             "Curriculum Vitae: " + curriculum + "<br>" + vbCr +
                             "Copia de Cédula de Identidad: " + cedulaIdentidad + "<br>" + vbCr +
                             "Cerficado de Estudios: " + certificadoEstudios + "<br>" + vbCr +
                             "Certificado de Título: " + certificadoTitulo + "<br>" + vbCr +
                             "Certificado de Antecedentes: " + certificadoAntecedentes + "<br>" + vbCr +
                             "Licencia de Conducir: " + licenciaConducir + "<br>" + vbCr +
                             "Certificado de Residencia: " + certificadoResidencia + "<br>" + vbCr +
                             "Ultimo Finiquito: " + ultimoFiniquito + "<br>" + vbCr +
                             "Carta de Referencia: " + cartaReferencia + "<br>" + vbCr +
                             "Observaciones: " + observaciones




        ' CONFIGURACION DEL MENSAJE
        _Message.To.Add("ricardo.ponce@munivalpo.cl") 'Cuenta de Correo al que se le quiere enviar el e-mail
        _Message.From = New System.Net.Mail.MailAddress("ricardo.ponce@munivalpo.cl", "ricardo") 'Quien lo envía
        _Message.Subject = "Oferta Laboral de Empresa" 'Sujeto del e-mail
        _Message.SubjectEncoding = System.Text.Encoding.UTF8 'Codificacion
        _Message.Body = body 'contenido del mail
        _Message.BodyEncoding = System.Text.Encoding.UTF8
        _Message.Priority = System.Net.Mail.MailPriority.Normal
        _Message.IsBodyHtml = True

        'ENVIO
        Try
            _SMTP.Send(_Message)
            ScriptManager.RegisterStartupScript(ButtonEmp, [GetType], "envioexito", "envioexito();", True)
            TextFechaSol.Text = ""
            TextNombreEmpresa.Text = ""
            TextRazon.Text = ""
            TextRut.Text = ""
            TextActividad.Text = ""
            TextDireccion.Text = ""
            TextFono.Text = ""
            TextEmail.Text = ""
            TextNombreSol.Text = ""
            TextCargoSol.Text = ""
            TextFonoSol.Text = ""
            TextEmailSol.Text = ""
            TextCargo.Text = ""
            TextArea.Text = ""
            TextDescripcionCargo.Text = ""
            TextPerfilPostulante.Text = ""
            TextRangoEdad.Text = ""
            TextConocimiento.Text = ""
            TextSueldoBru.Text = ""
            TextSueldoLiq.Text = ""
            TextLugarTrab.Text = ""
            TextHorarioTrab.Text = ""
            TextFechaContratacion.Text = ""
            TextLugarEnt.Text = ""
            TextHoraEnt.Text = ""
            TextSueldoLiq.Text = ""
            TextFechaEnt.Text = ""
            TextNumeroVac.Text = ""
            TextNumeroPost.Text = ""
            TextObs.Text = ""
            DropDownListSexo.SelectedIndex = 0
            DropDownListexperiencia.SelectedIndex = 0
            DropDownListNivelEst.SelectedIndex = 0
            DropDownListTipoContrato.SelectedIndex = 0
            CheckCurriculum.Checked = False
            CheckCedula.Checked = False
            CheckCertiEstudios.Checked = False
            CheckCertiTitulo.Checked = False
            CheckCertiAntecedentes.Checked = False
            CheckCertiResidencia.Checked = False
            CheckLicenciaCond.Checked = False
            CheckUltimoFiniquito.Checked = False
            CheckCartaRef.Checked = False


        Catch ex As System.Net.Mail.SmtpException
            ScriptManager.RegisterStartupScript(ButtonEmp, [GetType], "enviofallo", "enviofallo();", True)
        End Try
    End Sub

End Class