Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Partial Class adm_eliminar_oferta
    Inherits System.Web.UI.Page




    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged

        Dim idOfe As String = GridView1.SelectedDataKey.Value
        Dim idOferta As Int32 = Integer.Parse(idOfe)

        'CONEXION A LA BASE DE DATOS
        Using con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("DesarrolloConnectionString").ToString)
            con.Open()

            Dim Query As String = "DELETE FROM oferta_laboral WHERE id_oferta = @id_oferta"

            Dim cmd As SqlCommand = New SqlCommand(Query, con)

            cmd.Parameters.AddWithValue("@id_oferta", idOferta)



            'Ejecutar query

            Try
                    cmd.ExecuteNonQuery()
                    ScriptManager.RegisterStartupScript(GridView1, [GetType], "eliminarexito", "eliminarexito();", True)
                GridView1.DataBind()
            Catch ex As System.Data.SqlClient.SqlException
                    ScriptManager.RegisterStartupScript(GridView1, [GetType], "eliminarfallo", "eliminarfallo();", True)
                End Try
                con.Close()
        End Using
    End Sub


End Class
