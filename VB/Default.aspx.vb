Imports System
Imports System.Web.UI

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        ASPxGridView1.Width = ASPxButtonEdit1.Width
    End Sub
End Class