Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Partial Class adm_modificando_oferta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            TextTituloModOfe.Text = Session("tituloofe")
            TextFechaModOfe.Text = Session("fechaofe")
            Dim fechaFormato As Date = Session("fechaofe")
            TextFechaModOfe.Text = Format(fechaFormato, "dd/MM/yyyy")
            TextDescripcionModOfe.Text = Session("descripcionofe")
        End If
    End Sub

    Protected Sub BotonModificarOfe_Click(sender As Object, e As EventArgs) Handles BotonModificarOfe.Click



        'RESCATAR DATOS
        Dim titulo As String = TextTituloModOfe.Text.ToString
        Dim fechaFormato As Date = TextFechaModOfe.Text.ToString
        Dim fecha As String = Format(fechaFormato, "yyyy/MM/dd")
        Dim descripcion As String = TextDescripcionModOfe.Text.ToString
        Dim imagen As String
        Dim idOfe As String = Session("idofe").ToString
        Dim idOferta As Int32 = Integer.Parse(idOfe)

        'VERIFICA SI HA SUBIDO UNA IMAGEN
        If FileUpload1.HasFile Then
            'GUARDA LA IMAGEN EN CARPETA
            imagen = Path.Combine(Path.Combine(Server.MapPath("~/images/")), FileUpload1.FileName)
            FileUpload1.SaveAs(imagen)
            imagen = "/images/" + FileUpload1.FileName
            'CONEXION A LA BASE DE DATOS
            Using con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("DesarrolloConnectionString").ToString)
                con.Open()

                Dim query As String = "UPDATE oferta_laboral SET titulo_oferta = @titulo_oferta, fecha_oferta = @fecha_oferta, imagen_oferta = @imagen_oferta, descripcion_oferta = @descripcion_oferta WHERE id_oferta = @id_oferta"

                Dim cmd As SqlCommand = New SqlCommand(query, con)

                cmd.Parameters.AddWithValue("@id_oferta", idOferta)
                cmd.Parameters.AddWithValue("@titulo_oferta", titulo)
                cmd.Parameters.AddWithValue("@fecha_oferta", fecha)
                cmd.Parameters.AddWithValue("@imagen_oferta", imagen)
                cmd.Parameters.AddWithValue("@descripcion_oferta", descripcion)

                'Ejecutar query
                Try
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterStartupScript(BotonModificarOfe, [GetType], "modificarexito", "modificarexito();", True)
                    TextTituloModOfe.Text = ""
                    TextFechaModOfe.Text = ""
                    TextDescripcionModOfe.Text = ""
                Catch ex As System.Data.SqlClient.SqlException
                    ScriptManager.RegisterStartupScript(BotonModificarOfe, [GetType], "modificarfallo", "modificarfallo();", True)
                End Try
                con.Close()

            End Using
        Else
            ScriptManager.RegisterStartupScript(BotonModificarOfe, [GetType], "subioimagen", "subioimagen();", True)
        End If

    End Sub
End Class
