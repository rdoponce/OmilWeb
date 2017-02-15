Imports System
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Partial Class detalle_oferta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '   RESCATAR VARIABLE POR URL Y MOSTRAR DATOS 
        Using con As SqlConnection = New SqlConnection(ConfigurationManager.ConnectionStrings("DesarrolloConnectionString").ToString)
            Dim idoferta As String = Request.QueryString("IdOferta").ToString
            con.Open()
            Dim query As String = "SELECT titulo_oferta, fecha_oferta, descripcion_oferta, imagen_oferta FROM oferta_laboral WHERE id_oferta=@id_oferta "
            Dim cmd As SqlCommand = New SqlCommand(query, con)
            cmd.Parameters.AddWithValue("@id_oferta", idoferta)
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
