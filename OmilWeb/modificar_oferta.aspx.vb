Partial Class adm_modificar_oferta
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("usuario") IsNot Nothing And Session("contraseña") IsNot Nothing Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView1.SelectedIndexChanged
        'RESCATAR DATOS DEL REGISTRO QUE SE VA A MODIFICAR
        Session("idofe") = HttpUtility.HtmlDecode(GridView1.SelectedDataKey.Value)
        Session("tituloofe") = HttpUtility.HtmlDecode(GridView1.SelectedRow().Cells(1).Text)
        Session("fechaofe") = HttpUtility.HtmlDecode(GridView1.SelectedRow().Cells(2).Text)
        Dim lbl As Label = GridView1.SelectedRow().Cells(3).FindControl("Label1")
        Session("descripcionofe") = HttpUtility.HtmlDecode(lbl.Text)
        Response.Redirect("modificando-oferta.aspx")
    End Sub

End Class
