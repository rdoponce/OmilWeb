Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Partial Class adm_modificando_capacitacion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            TextTituloModCap.Text = Session("titulocap")
            TextFechaModCap.Text = Session("fechacap")
            Dim fechaFormato As Date = Session("fechacap")
            TextFechaModCap.Text = Format(fechaFormato, "dd/MM/yyyy")
            TextDescripcionModCap.Text = Session("descripcioncap")
        End If
    End Sub

    Protected Sub BotonModificarCap_Click(sender As Object, e As EventArgs) Handles BotonModificarCap.Click

        'RESCATAR DATOS
        Dim titulo As String = TextTituloModCap.Text.ToString
        Dim fechaFormato As Date = TextFechaModCap.Text.ToString
        Dim fecha As String = Format(fechaFormato, "yyyy/MM/dd")
        Dim descripcion As String = TextDescripcionModCap.Text.ToString
        Dim imagen As String
        Dim idCap As String = Session("idcap").ToString
        Dim idCapacitacion As Int32 = Integer.Parse(idCap)

        'VERIFICA SI HA SUBIDO UNA IMAGEN
        If FileUpload1.HasFile Then
            'GUARDA LA IMAGEN EN CARPETA
            imagen = Path.Combine(Path.Combine(Server.MapPath("~/images/")), FileUpload1.FileName)
            FileUpload1.SaveAs(imagen)
            imagen = "/images/" + FileUpload1.FileName
            'CONEXION A LA BASE DE DATOS
            Using con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("DesarrolloConnectionString").ToString)
                con.Open()

                Dim query As String = "UPDATE capacitacion SET titulo_capacitacion = @titulo_capacitacion, fecha_capacitacion = @fecha_capacitacion, imagen_capacitacion = @imagen_capacitacion, descripcion_capacitacion = @descripcion_capacitacion WHERE id_capacitacion = @id_capacitacion"

                Dim cmd As SqlCommand = New SqlCommand(query, con)

                cmd.Parameters.AddWithValue("@id_capacitacion", idCapacitacion)
                cmd.Parameters.AddWithValue("@titulo_capacitacion", titulo)
                cmd.Parameters.AddWithValue("@fecha_capacitacion", fecha)
                cmd.Parameters.AddWithValue("@imagen_capacitacion", imagen)
                cmd.Parameters.AddWithValue("@descripcion_capacitacion", descripcion)

                'Ejecutar query
                Try
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterStartupScript(BotonModificarCap, [GetType], "modificarexito", "modificarexito();", True)
                    TextTituloModCap.Text = ""
                    TextFechaModCap.Text = ""
                    TextDescripcionModCap.Text = ""
                Catch ex As System.Data.SqlClient.SqlException
                    ScriptManager.RegisterStartupScript(BotonModificarCap, [GetType], "modificarfallo", "modificarfallo();", True)
                End Try
                con.Close()
            End Using
        Else
            ScriptManager.RegisterStartupScript(BotonModificarCap, [GetType], "subioimagen", "subioimagen();", True)
        End If
    End Sub
End Class
