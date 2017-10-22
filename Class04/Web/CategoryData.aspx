<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CategoryData.aspx.vb" Inherits="Web_CategoryData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="css/mygrid.css" type="text/css" rel="stylesheet" />
    <style type="text/css">

.mydatagrid
{
	width: 100%;
	border: solid 2px #646464;
	min-width: 80%;
	font-family: prakas;
}
.header
{
	background-color: #646464;
	color: White;
	border: none 0px transparent;
	height: 25px;
	text-align: center;
}
.mydatagrid th
{
	padding: 5px;
}
.mydatagrid a /** FOR THE PAGING ICONS  **/
{
	background-color: Transparent;
	padding: 5px 5px 5px 5px;
	color: #fff;
	text-decoration: none;
	font-weight: bold;
}
.rows
{
	background-color: #fff;
	color: #000;
	min-height: 25px;
	text-align: left;
	border: none 0px transparent;
	font-size: 0.9em;
}
.mydatagrid td
{
	padding: 2px;
}
.mydatagrid span /** FOR THE PAGING ICONS CURRENT PAGE INDICATOR **/
{
	background-color: #c9c9c9;
	color: #000;
	padding: 5px 5px 5px 5px;
}
    </style>
</head>
<body>
   <form id="form2" runat="server">
    <div>
       
        <asp:TextBox ID="TextCategory" runat="server"></asp:TextBox>
        <asp:Button ID="searchCategory" runat="server" Text="Search" />
        <br />
        <br />
        <asp:GridView ID="gvBrand" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="CategoryDS" Width="600px" CssClass="mydatagrid">
            <Columns>
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName">
                </asp:BoundField>
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify">
                </asp:BoundField>
                <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                <asp:HyperLinkField DataNavigateUrlFields="CategoryKey" DataNavigateUrlFormatString="Category_Edit.aspx?CategoryKey={0}" HeaderText="Edit" Text="&lt;img src='img/edit.png' /&gt;" />
                <asp:HyperLinkField DataNavigateUrlFields="CategoryKey" DataNavigateUrlFormatString="Category_View.aspx?CategoryKey={0}" HeaderText="View" Text="&lt;img src='img/view.png' /&gt;" />
                <asp:HyperLinkField HeaderText="Delete" Text="&lt;img src='img/delete.png' /&gt;" NavigateUrl="delete" />
            </Columns>
            <HeaderStyle CssClass="header" />
            <RowStyle CssClass="rows" />
        </asp:GridView>
        <asp:SqlDataSource ID="CategoryDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * 
FROM [Category] 
WHERE categoryName LIKE '%' + ISNULL(@searchCategoryName, categoryname) + '%'
ORDER BY [categoryname]" CancelSelectOnNullParameter="False">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextCategory" Name="searchCategoryName" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
       
        <br />
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Web/system.aspx" Text="Back" />
       
        </div>
    </form>
</body>
</html>
