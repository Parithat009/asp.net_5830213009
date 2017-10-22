<%@ Page Language="VB" AutoEventWireup="false" CodeFile="product_Edit.aspx.vb" Inherits="Web_product_Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="เเก้ไขข้อมูลสินค้า"></asp:Label>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="BrandKey" DataSourceID="productDS">
                <EditItemTemplate>
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
                    <br />
                    BrandKey:
                    <asp:TextBox ID="BrandKeyTextBox" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    CategoryKey:
                    <asp:TextBox ID="CategoryKeyTextBox" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    UnitBuyKey:
                    <asp:TextBox ID="UnitBuyKeyTextBox" runat="server" Text='<%# Bind("UnitBuyKey") %>' />
                    <br />
                    UnitSaleKey:
                    <asp:TextBox ID="UnitSaleKeyTextBox" runat="server" Text='<%# Bind("UnitSaleKey") %>' />
                    <br />
                    UnitBuyToSale:
                    <asp:TextBox ID="UnitBuyToSaleTextBox" runat="server" Text='<%# Bind("UnitBuyToSale") %>' />
                    <br />
                    ReOrderUnit:
                    <asp:TextBox ID="ReOrderUnitTextBox" runat="server" Text='<%# Bind("ReOrderUnit") %>' />
                    <br />
                    SalePrice:
                    <asp:TextBox ID="SalePriceTextBox" runat="server" Text='<%# Bind("SalePrice") %>' />
                    <br />
                    SizeDescription:
                    <asp:TextBox ID="SizeDescriptionTextBox" runat="server" Text='<%# Bind("SizeDescription") %>' />
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
                    Barcode2:
                    <asp:TextBox ID="Barcode2TextBox" runat="server" Text='<%# Bind("Barcode2") %>' />
                    <br />
                    Barcode3:
                    <asp:TextBox ID="Barcode3TextBox" runat="server" Text='<%# Bind("Barcode3") %>' />
                    <br />
                    Barcode4:
                    <asp:TextBox ID="Barcode4TextBox" runat="server" Text='<%# Bind("Barcode4") %>' />
                    <br />
                    Barcode5:
                    <asp:TextBox ID="Barcode5TextBox" runat="server" Text='<%# Bind("Barcode5") %>' />
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
                    BrandKey:
                    <asp:TextBox ID="BrandKeyTextBox" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    CategoryKey:
                    <asp:TextBox ID="CategoryKeyTextBox" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    UnitBuyKey:
                    <asp:TextBox ID="UnitBuyKeyTextBox" runat="server" Text='<%# Bind("UnitBuyKey") %>' />
                    <br />
                    UnitSaleKey:
                    <asp:TextBox ID="UnitSaleKeyTextBox" runat="server" Text='<%# Bind("UnitSaleKey") %>' />
                    <br />
                    UnitBuyToSale:
                    <asp:TextBox ID="UnitBuyToSaleTextBox" runat="server" Text='<%# Bind("UnitBuyToSale") %>' />
                    <br />
                    ReOrderUnit:
                    <asp:TextBox ID="ReOrderUnitTextBox" runat="server" Text='<%# Bind("ReOrderUnit") %>' />
                    <br />
                    SalePrice:
                    <asp:TextBox ID="SalePriceTextBox" runat="server" Text='<%# Bind("SalePrice") %>' />
                    <br />
                    SizeDescription:
                    <asp:TextBox ID="SizeDescriptionTextBox" runat="server" Text='<%# Bind("SizeDescription") %>' />
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
                    Barcode2:
                    <asp:TextBox ID="Barcode2TextBox" runat="server" Text='<%# Bind("Barcode2") %>' />
                    <br />
                    Barcode3:
                    <asp:TextBox ID="Barcode3TextBox" runat="server" Text='<%# Bind("Barcode3") %>' />
                    <br />
                    Barcode4:
                    <asp:TextBox ID="Barcode4TextBox" runat="server" Text='<%# Bind("Barcode4") %>' />
                    <br />
                    Barcode5:
                    <asp:TextBox ID="Barcode5TextBox" runat="server" Text='<%# Bind("Barcode5") %>' />
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
                    BrandKey:
                    <asp:Label ID="BrandKeyLabel" runat="server" Text='<%# Bind("BrandKey") %>' />
                    <br />
                    CategoryKey:
                    <asp:Label ID="CategoryKeyLabel" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    UnitBuyKey:
                    <asp:Label ID="UnitBuyKeyLabel" runat="server" Text='<%# Bind("UnitBuyKey") %>' />
                    <br />

                    UnitSaleKey:
                    <asp:Label ID="UnitSaleKeyLabel" runat="server" Text='<%# Bind("UnitSaleKey") %>' />
                    <br />
                    UnitBuyToSale:
                    <asp:Label ID="UnitBuyToSaleLabel" runat="server" Text='<%# Bind("UnitBuyToSale") %>' />
                    <br />
                    ReOrderUnit:
                    <asp:Label ID="ReOrderUnitLabel" runat="server" Text='<%# Bind("ReOrderUnit") %>' />
                    <br />
                    SalePrice:
                    <asp:Label ID="SalePriceLabel" runat="server" Text='<%# Bind("SalePrice") %>' />
                    <br />
                    SizeDescription:
                    <asp:Label ID="SizeDescriptionLabel" runat="server" Text='<%# Bind("SizeDescription") %>' />
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
                    Barcode2:
                    <asp:Label ID="Barcode2Label" runat="server" Text='<%# Bind("Barcode2") %>' />
                    <br />
                    Barcode3:
                    <asp:Label ID="Barcode3Label" runat="server" Text='<%# Bind("Barcode3") %>' />
                    <br />
                    Barcode4:
                    <asp:Label ID="Barcode4Label" runat="server" Text='<%# Bind("Barcode4") %>' />
                    <br />
                    Barcode5:
                    <asp:Label ID="Barcode5Label" runat="server" Text='<%# Bind("Barcode5") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />

                </ItemTemplate>
            </asp:FormView>
            <br />
            <asp:SqlDataSource ID="productDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * FROM [Product] where brandkey = @brandkey" UpdateCommand="UPDATE Product SET ProductID = @pid, ProductName = @pname, UserModify = @pmo WHERE (BrandKey = @brandkey)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="brandkey" QueryStringField="brandkey" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="pid" />
                    <asp:Parameter Name="pname" />
                    <asp:Parameter Name="pmo" />
                    <asp:Parameter Name="BrandKey" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
