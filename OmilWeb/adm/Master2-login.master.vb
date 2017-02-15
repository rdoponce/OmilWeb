
Partial Class adm_Master2_login
    Inherits System.Web.UI.MasterPage
  
    Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("nombre_usuario") IsNot Nothing And Session("contraseña_usuario") IsNot Nothing Then
            Dim usuario As String = Session("nombre_usuario").ToString
            Dim contraseña As String = Session("contraseña_usuario").ToString
            label1.Text = usuario
        Else
            Response.Redirect("login.aspx")
        End If


    End Sub


    Protected Sub lbLogout_Click(sender As Object, e As EventArgs)
        Session.Clear()
        Session.Abandon()
        Session.RemoveAll()

        Response.Redirect("login.aspx")
    End Sub
End Class

