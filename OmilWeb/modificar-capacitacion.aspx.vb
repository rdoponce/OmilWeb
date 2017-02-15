
Partial Class adm_modificar_capacitación
    Inherits System.Web.UI.Page

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged

        'RESCATAR DATOS DEL REGISTRO QUE SE VA A MODIFICAR
        Session("idcap") = HttpUtility.HtmlDecode(GridView2.SelectedDataKey.Value)
        Session("titulocap") = HttpUtility.HtmlDecode(GridView2.SelectedRow().Cells(1).Text)
        Session("fechacap") = HttpUtility.HtmlDecode(GridView2.SelectedRow().Cells(2).Text)
        Dim lbl As Label = GridView2.SelectedRow().Cells(3).FindControl("Label1")
        Session("descripcioncap") = HttpUtility.HtmlDecode(lbl.Text)
        Response.Redirect("modificando-capacitacion.aspx")
    End Sub
End Class
