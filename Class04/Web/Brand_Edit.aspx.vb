
Partial Class Brand_Edit
    Inherits System.Web.UI.Page

    Private Sub Brand_Edit_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Page.IsPostBack = False Then
            fvBrand.ChangeMode(FormViewMode.Edit)
        End If
    End Sub

    Private Sub dsBrand_Updated(sender As Object, e As SqlDataSourceStatusEventArgs) Handles dsBrand.Updated
        Response.Redirect("BrandData.aspx")
    End Sub
    Protected Sub fvBrand_PageIndexChanging(sender As Object, e As FormViewPageEventArgs) Handles fvBrand.PageIndexChanging

    End Sub
    Protected Sub dsBrand_Selecting(sender As Object, e As SqlDataSourceSelectingEventArgs) Handles dsBrand.Selecting

    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class
