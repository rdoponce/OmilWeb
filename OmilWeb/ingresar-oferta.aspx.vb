Imports System.IO
Imports System.Data
Imports System.Data.SqlClient


Partial Class adm_ofertas_adm
    Inherits System.Web.UI.Page


    Protected Sub BotonSubirOfe_Click(sender As Object, e As EventArgs) Handles BotonSubirOfe.Click


        'RESCATAR DATOS
        Dim titulo As String = TextTituloOfe.Text.ToString
        Dim fechaFormato As Date = TextFechaOfe.Text.ToString
        Dim fecha As String = Format(fechaFormato, "yyyy/MM/dd")
        Dim descripcion As String = TextDescripcionOfe.Text.ToString
        Dim imagen As String

        'VERIFICA SI HA SUBIDO UNA IMAGEN
        If FileUpload1.HasFile Then
            'GUARDA LA IMAGEN EN CARPETA
            imagen = Path.Combine(Path.Combine(Server.MapPath("~/images/")), FileUpload1.FileName)
            FileUpload1.SaveAs(imagen)
            imagen = "/images/" + FileUpload1.FileName
            'CONEXION A LA BASE DE DATOS
            Using con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("DesarrolloConnectionString").ToString)
                con.Open()
                Dim query As String = "INSERT INTO oferta_laboral VALUES (@titulo_oferta, @fecha_oferta, @imagen_oferta, @descripcion_oferta)"

                Dim cmd As SqlCommand = New SqlCommand(query, con)

                cmd.Parameters.AddWithValue("@titulo_oferta", titulo)
                cmd.Parameters.AddWithValue("@fecha_oferta", fecha)
                cmd.Parameters.AddWithValue("@imagen_oferta", imagen)
                cmd.Parameters.AddWithValue("@descripcion_oferta", descripcion)
                'Ejecutar query
                Try
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterStartupScript(BotonSubirOfe, [GetType], "ingresoexito", "ingresoexito();", True)
                    TextTituloOfe.Text = ""
                    TextFechaOfe.Text = ""
                    TextDescripcionOfe.Text = ""
                Catch ex As System.Data.SqlClient.SqlException
                    ScriptManager.RegisterStartupScript(BotonSubirOfe, [GetType], "ingresofallo", "ingresofallo();", True)
                End Try
                con.Close()

            End Using

        Else
            ScriptManager.RegisterStartupScript(BotonSubirOfe, [GetType], "subioimagen", "subioimagen();", True)


        End If




    End Sub
End Class
