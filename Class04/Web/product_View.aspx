<%@ Page Language="VB" AutoEventWireup="false" CodeFile="product_View.aspx.vb" Inherits="Web_product_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="เเสดงข้อมูลสินค้า"></asp:Label>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" DataSourceID="productDS">
                <EditItemTemplate>
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    Barcode1:
                    <asp:TextBox ID="Barcode1TextBox" runat="server" Text='<%# Bind("Barcode1") %>' />
                    <br />
                    BrandKey:
                    <asp:TextBox ID="BrandKeyTextBox" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    Barcode1:
                    <asp:TextBox ID="Barcode1TextBox" runat="server" Text='<%# Bind("Barcode1") %>' />
                    <br />
                    BrandKey:
                    <asp:TextBox ID="BrandKeyTextBox" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ProductID:
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    UserModify:
                    <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    Barcode1:
                    <asp:Label ID="Barcode1Label" runat="server" Text='<%# Bind("Barcode1") %>' />
                    <br />

                    BrandKey:
                    <asp:Label ID="BrandKeyLabel" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="productDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT ProductID, ProductName, UserModify, ModifyDate, Barcode1, BrandKey FROM Product WHERE (BrandKey = @BrandKey)" UpdateCommand="UPDATE Product SET ProductID = @Param6, ProductName = @Param7, BrandKey = @Param8, UserModify = @Param9, ModifyDate = @Param10, Barcode1 = @Param11 WHERE (BrandKey = @BrandKey)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="brandkey" QueryStringField="BrandKey" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Param6" />
                    <asp:Parameter Name="Param7" />
                    <asp:Parameter Name="Param8" />
                    <asp:Parameter Name="Param9" />
                    <asp:Parameter Name="Param10" />
                    <asp:Parameter Name="Param11" />
                    <asp:Parameter Name="brandkey" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Web/productdata.aspx" Text="Back" />
        </div>
    </form>
</body>
</html>
