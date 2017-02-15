Imports System
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data

Partial Class ofertas_laborales
    Inherits System.Web.UI.Page



    Protected Sub lvNoticias_ItemDataBound(ByVal sender As Object, ByVal e As ListViewItemEventArgs) Handles lvNoticias.ItemDataBound
        'MOSTRAR BREVE DESCRIPCION
        Dim descriplbl As Label = e.Item.FindControl("descripcion")
        Dim descripcion As String = Mid(descriplbl.Text, 1, 300)
        descriplbl.Text = descripcion

        Dim fecha As Label = e.Item.FindControl("fecha")
        Dim fechaFormato As Date = fecha.Text.ToString
        fecha.Text = Format(fechaFormato, "dd/MM/yyyy")

        'ENVIAR ID POR URL A LA PAGINA DETALLE
        Dim ItemAux As DataRowView = DirectCast(DirectCast(e.Item, ListViewDataItem).DataItem, DataRowView)
        Dim lbofe As LinkButton = e.Item.FindControl("lb")
        Dim lblid As Label = e.Item.FindControl("id")
        Dim idofe As String = lbofe.Text
        lbofe.PostBackUrl = "detalle-oferta.aspx?IdOferta=" & ItemAux.Row.Item("id_oferta")

    End Sub

End Class
