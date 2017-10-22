
Partial Class Web_product_Edit
    Inherits System.Web.UI.Page

    Private Sub Web_product_Edit_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            FormView1.ChangeMode(FormViewMode.Edit)
        End If
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Private Sub productDS_Updated(sender As Object, e As SqlDataSourceStatusEventArgs) Handles productDS.Updated
        Response.Redirect("productdata.aspx")
    End Sub
End Class
