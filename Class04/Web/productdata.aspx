<%@ Page Language="VB" AutoEventWireup="false" CodeFile="productdata.aspx.vb" Inherits="Web_productdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" />
            <asp:Button ID="Button3" runat="server" PostBackUrl="~/Web/addproduct.aspx" Text="Add Product" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="productDS" ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" CssClass="mydatagrid">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
                    <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                    <asp:BoundField DataField="BrandKey" HeaderText="BrandKey" SortExpression="BrandKey" />
                    <asp:BoundField DataField="CategoryKey" HeaderText="CategoryKey" SortExpression="CategoryKey" />
                    <asp:BoundField DataField="UnitBuyKey" HeaderText="UnitBuyKey" SortExpression="UnitBuyKey" />
                    <asp:BoundField DataField="UnitSaleKey" HeaderText="UnitSaleKey" SortExpression="UnitSaleKey" />
                    <asp:BoundField DataField="UnitBuyToSale" HeaderText="UnitBuyToSale" SortExpression="UnitBuyToSale" />
                    <asp:BoundField DataField="ReOrderUnit" HeaderText="ReOrderUnit" SortExpression="ReOrderUnit" />

                  

                    <asp:BoundField DataField="SalePrice" HeaderText="SalePrice" SortExpression="SalePrice" />
                    <asp:BoundField DataField="SizeDescription" HeaderText="SizeDescription" SortExpression="SizeDescription" />
                    <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify" />
                    <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                    <asp:BoundField DataField="Barcode1" HeaderText="Barcode1" SortExpression="Barcode1" />
                    <asp:HyperLinkField DataNavigateUrlFields="Brandkey" DataNavigateUrlFormatString="product_Edit.aspx?Brandkey={0}" HeaderText="E" Text="&lt;img src='img/edit.png' /&gt;" />
                    <asp:HyperLinkField DataNavigateUrlFields="Brandkey" DataNavigateUrlFormatString="product_View.aspx?Brandkey={0}" HeaderText="V" Text="&lt;img src='img/view.png' /&gt;" />
                    <asp:ButtonField HeaderText="D" Text="&lt;img src='img/delete.png' /&gt;" />

                  

                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="productDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT ProductID, ProductName, BrandKey, CategoryKey, UnitBuyKey, UnitSaleKey, UnitBuyToSale, ReOrderUnit, SalePrice, SizeDescription, UserModify, ModifyDate, Barcode1 FROM Product WHERE (ProductName LIKE '%' + ISNULL(@TextBox1, ProductName) + '%') ORDER BY ProductName" CancelSelectOnNullParameter="False">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" DefaultValue="" Name="TextBox1" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Web/system.aspx" Text="Back" />
        </div>
    </form>
</body>
</html>
