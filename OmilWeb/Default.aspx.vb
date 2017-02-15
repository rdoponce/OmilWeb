Imports System
Imports System.IO
Imports System.Data.SqlClient
Imports System.Data
Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub lvOfertas_ItemDataBound(ByVal sender As Object, ByVal e As ListViewItemEventArgs) Handles lvOfertas.ItemDataBound

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

    Protected Sub lvCapacitaciones_ItemDataBound(ByVal sender As Object, ByVal e As ListViewItemEventArgs) Handles lvCapacitaciones.ItemDataBound

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
        lbofe.PostBackUrl = "detalle-capacitacion.aspx?IdCapacitacion=" & ItemAux.Row.Item("id_capacitacion")
    End Sub

End Class