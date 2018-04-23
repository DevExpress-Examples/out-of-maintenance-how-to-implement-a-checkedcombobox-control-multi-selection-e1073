Imports Microsoft.VisualBasic
Imports System
Imports System.Data
Imports System.Configuration
Imports System.Collections
Imports System.Web
Imports System.Web.Security
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports System.Web.UI.WebControls.WebParts
Imports System.Web.UI.HtmlControls
Imports DevExpress.Web.ASPxGridView



Partial Public Class Editors_ExtLookup
	Inherits System.Web.UI.Page

	Protected Overridable Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		ASPxGridView1.Width = ASPxButtonEdit1.Width
	End Sub

End Class
