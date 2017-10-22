<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BrandData.aspx.vb" Inherits="BrandData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ข้อมูลยี่ห้อสินค้า</title>

    <link href="css/mygrid.css" type="text/css" rel="stylesheet" />

</head>
<body>
   <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="txtSearchCategoryName" runat="server" Text="search" />
        <asp:Button ID="btnAddBrand" runat="server" Text="เพิ่มยี่ห้อสินค้า" PostBackUrl="Brand_Add.aspx" />
        <asp:GridView ID="gvBrand" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="brandkey" DataSourceID="brandDS" Width="600px" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="brandkey" HeaderText="brandkey" InsertVisible="False" ReadOnly="True" SortExpression="brandkey" Visible="False" />
                <asp:BoundField DataField="brandname" HeaderText="brandname" SortExpression="brandname">
                <HeaderStyle Width="200px" />
                </asp:BoundField>
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="usermodify" HeaderText="usermodify" SortExpression="usermodify">
                <HeaderStyle Width="100px" />
                </asp:BoundField>
                <asp:HyperLinkField DataNavigateUrlFields="brandkey" DataNavigateUrlFormatString="Brand_Edit.aspx?Brandkey={0}" HeaderText="E" Text="&lt;img src='img/edit.png' /&gt;">
                <HeaderStyle Width="25px" />
                </asp:HyperLinkField>
                <asp:HyperLinkField DataNavigateUrlFields="Brandkey" DataNavigateUrlFormatString="Brand_view.aspx?Brandkey={0}" HeaderText="V" Text="&lt;img src='img/view.png' /&gt;">
                <HeaderStyle Width="25px" />
                </asp:HyperLinkField>
                <asp:ButtonField CommandName="delete" HeaderText="D" Text="&lt;img src='img/delete.png' /&gt;">
                <HeaderStyle Width="25px" />
                </asp:ButtonField>
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Web/system.aspx" Text="Back" />
        <br />
    </div>
        <asp:SqlDataSource ID="brandDS" runat="server" ConnectionString="<%$ ConnectionStrings:Sample_Connection %>" SelectCommand="SELECT * 
FROM [Brand] 
WHERE brandName LIKE '%' + ISNULL(@searchBrandName, brandname) + '%'
ORDER BY [brandname]" DeleteCommand="delete from brand where brandkey = @brandkey" CancelSelectOnNullParameter="False">
            <DeleteParameters>
                <asp:Parameter Name="brandkey" />
            </DeleteParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="searchBrandName" PropertyName="Text" />
            </SelectParameters>
       </asp:SqlDataSource>
    </form>
</body>
</html>
