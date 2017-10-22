
Partial Class Brand_Add
    Inherits System.Web.UI.Page

    Private Sub Brand_Add_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            fvBrand.ChangeMode(FormViewMode.Insert)
        End If
    End Sub

    Private Sub brandDS_Inserted(sender As Object, e As SqlDataSourceStatusEventArgs) Handles brandDS.Inserted
        Response.Redirect("BrandData.aspx")
    End Sub
End Class
