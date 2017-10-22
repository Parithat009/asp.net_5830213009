
Partial Class Web_unitedit
    Inherits System.Web.UI.Page

    Private Sub Web_unitedit_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            FormView1.ChangeMode(FormViewMode.Edit)
        End If
    End Sub

    Private Sub UnitDS_Updated(sender As Object, e As SqlDataSourceStatusEventArgs) Handles UnitDS.Updated
        Response.Redirect("UnitData.aspx")
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
