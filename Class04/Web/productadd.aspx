<%@ Page Language="VB" AutoEventWireup="false" CodeFile="productadd.aspx.vb" Inherits="Web_productadd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataSourceID="productDS" ForeColor="#333333">
                <EditItemTemplate>
                    ProductID:
                    <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
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
                    Barcode1:
                    <asp:TextBox ID="Barcode1TextBox" runat="server" Text='<%# Bind("Barcode1") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
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
                   
                   <asp:Button ID="btnInsert" runat="server" CommandName="Insert" Text="เพิ่ม" />
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/BrandData.aspx" Text="ยกเลิก" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ProductID:
                    <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Bind("ProductID") %>' />
                    <br />
                    ProductName:
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
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
                    Barcode1:
                    <asp:Label ID="Barcode1Label" runat="server" Text='<%# Bind("Barcode1") %>' />
                    <br />
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
            </asp:FormView>
            <br />
            <asp:SqlDataSource ID="productDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" InsertCommand="INSERT INTO Product(ProductID, ProductName, UserModify) VALUES (@id, @name, @modify)" SelectCommand="SELECT ProductID, ProductName, UnitBuyToSale, ReOrderUnit, SalePrice, SizeDescription, UserModify, Barcode1 FROM Product">
                <InsertParameters>
                    <asp:Parameter Name="id" />
                    <asp:Parameter Name="name" />
                    <asp:Parameter Name="modify" />
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
