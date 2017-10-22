<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UnitData.aspx.vb" Inherits="Web_UnitData" %>

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
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="UnitDS" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="UnitName" HeaderText="UnitName" SortExpression="UnitName" />
                    <asp:BoundField DataField="UnitABBR" HeaderText="UnitABBR" SortExpression="UnitABBR" />
                    <asp:BoundField DataField="UserModify" HeaderText="UserModify" SortExpression="UserModify" />
                    <asp:BoundField DataField="UnitKey" HeaderText="UnitKey" SortExpression="UnitKey" />
                    <asp:BoundField DataField="ModifyDate" HeaderText="ModifyDate" SortExpression="ModifyDate" />
                    <asp:HyperLinkField DataNavigateUrlFields="UnitKey" DataNavigateUrlFormatString="unitedit.aspx?Unitkey={0}" HeaderText="E" Text="&lt;img src='img/edit.png' /&gt;" />
                    <asp:HyperLinkField DataNavigateUrlFields="UnitKey" DataNavigateUrlFormatString="Unit_View.aspx?Unitkey={0}" HeaderText="V" Text="&lt;img src='img/view.png' /&gt;" />
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
            <asp:SqlDataSource ID="UnitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT UnitName, UnitABBR, UserModify, UnitKey, ModifyDate FROM Unit WHERE (UnitName LIKE '%' + ISNULL(@TextBox1, UnitName) + '%') ORDER BY UnitName" CancelSelectOnNullParameter="False">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="TextBox1" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Web/system.aspx" Text="Back" />
            <br />
        </div>
    </form>
</body>
</html>
