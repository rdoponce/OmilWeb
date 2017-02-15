Imports System.IO
Imports System.Data
Imports System.Data.SqlClient
Partial Class adm_eliminar_capacitación
    Inherits System.Web.UI.Page

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        Dim idCap As String = GridView1.SelectedDataKey.Value
        Dim idCapacitacion As Int32 = Integer.Parse(idCap)

        'CONEXION A LA BASE DE DATOS
        Using con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("DesarrolloConnectionString").ToString)
            con.Open()

            Dim Query As String = "DELETE FROM capacitacion WHERE id_capacitacion = @id_capacitacion"

            Dim cmd As SqlCommand = New SqlCommand(Query, con)

            cmd.Parameters.AddWithValue("@id_capacitacion", idCapacitacion)

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
