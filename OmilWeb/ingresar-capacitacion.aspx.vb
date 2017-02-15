Imports System.IO
Imports System.Data
Imports System.Data.SqlClient

Partial Class adm_ingresar_capacitacion
    Inherits System.Web.UI.Page

    Protected Sub BotonSubirCap_Click(sender As Object, e As EventArgs) Handles BotonSubirCap.Click

        'RESCATAR DATOS
        Dim titulo As String = TextTituloCap.Text.ToString
        Dim fechaFormato As Date = TextFechaCap.Text.ToString
        Dim fecha As String = Format(fechaFormato, "yyyy/MM/dd")
        Dim descripcion As String = TextDescripcionCap.Text.ToString
        Dim imagen As String

        'VERIFICA SI HA SUBIDO UNA IMAGEN
        If FileUpload2.HasFile Then
            'GUARDA LA IMAGEN EN CARPETA
            imagen = Path.Combine(Path.Combine(Server.MapPath("~/images/")), FileUpload2.FileName)
            FileUpload2.SaveAs(imagen)
            imagen = "/images/" + FileUpload2.FileName
            'CONEXION A LA BASE DE DATOS
            Using con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("DesarrolloConnectionString").ToString)
                con.Open()
                Dim query As String = "INSERT INTO capacitacion VALUES (@titulo_capacitacion, @fecha_capacitacion, @imagen_capacitacion, @descripcion_capacitacion)"

                Dim cmd As SqlCommand = New SqlCommand(query, con)

                cmd.Parameters.AddWithValue("@titulo_capacitacion", titulo)
                cmd.Parameters.AddWithValue("@fecha_capacitacion", fecha)
                cmd.Parameters.AddWithValue("@imagen_capacitacion", imagen)
                cmd.Parameters.AddWithValue("@descripcion_capacitacion", descripcion)

                'Ejecutar query
                Try
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterStartupScript(BotonSubirCap, [GetType], "ingreoexito", "ingresoexito();", True)
                    TextTituloCap.Text = ""
                    TextFechaCap.Text = ""
                    TextDescripcionCap.Text = ""
                Catch ex As System.Data.SqlClient.SqlException
                    ScriptManager.RegisterStartupScript(BotonSubirCap, [GetType], "ingresofallo", "ingresofallo();", True)
                End Try
                con.Close()
            End Using
        Else
            ScriptManager.RegisterStartupScript(BotonSubirCap, [GetType], "subioimagen", "subioimagen();", True)
        End If
    End Sub
End Class
