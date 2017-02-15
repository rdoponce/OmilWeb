Imports System
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Partial Class detalle_capacitacion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        ' RESCATAR VARIABLE POR URL Y MOSTRAR DATOS 
        Using con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("DesarrolloConnectionString").ToString)
            Dim idcapacitacion As String = Request.QueryString("IdCapacitacion").ToString
            con.Open()
            Dim query As String = "SELECT titulo_capacitacion, fecha_capacitacion, descripcion_capacitacion, imagen_capacitacion FROM capacitacion WHERE id_capacitacion=@id_capacitacion "
            Dim cmd As SqlCommand = New SqlCommand(query, con)
            cmd.Parameters.AddWithValue("@id_capacitacion", idcapacitacion)
            Dim Reader As SqlDataReader = cmd.ExecuteReader()
            If Reader.Read() Then
                titulolbl.Text = Reader.GetValue(0).ToString
                fechalbl.Text = Reader.GetValue(1).ToString
                Dim fechaFormato As Date = fechalbl.Text.ToString
                fechalbl.Text = Format(fechaFormato, "dd/MM/yyyy")
                descripcionlbl.Text = Reader.GetValue(2).ToString
                Dim img As String = Reader.GetValue(3).ToString
                imagen.ImageUrl = img
            End If
        End Using
    End Sub
End Class
