<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Brand_Edit.aspx.vb" Inherits="Brand_Edit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:FormView ID="fvBrand" runat="server" DataKeyNames="brandkey" DataSourceID="dsBrand">
            <EditItemTemplate>
                แก้ไขข้อมูล ยี่ห้อ สินค้า :
                <br />
                <br />
                brandname:
                <asp:TextBox ID="brandnameTextBox" runat="server" Text='<%# Bind("brandname") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                <asp:Button ID="btnUpdate" runat="server" CommandName="update" Text="แก้ไขข้อมูล" />
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="cancel" PostBackUrl="~/BrandData.aspx" Text="ยกเลิก" />
            </EditItemTemplate>
      
            <ItemTemplate>
                brandkey:
                <asp:Label ID="brandkeyLabel" runat="server" Text='<%# Eval("brandkey") %>' />
                <br />
                brandname:
                <asp:Label ID="brandnameLabel" runat="server" Text='<%# Bind("brandname") %>' />
                <br />
                description:
                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Bind("description") %>' />
                <br />
                usermodify:
                <asp:Label ID="usermodifyLabel" runat="server" Text='<%# Bind("usermodify") %>' />
                <br />
                modifydate:
                <asp:Label ID="modifydateLabel" runat="server" Text='<%# Bind("modifydate") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="dsBrand" runat="server" ConnectionString="<%$ ConnectionStrings:Sample_Connection %>" SelectCommand="SELECT * FROM [Brand] where brandkey = @brandkey" UpdateCommand="UPDATE Brand SET brandname = @brandname, description = @description, usermodify = 'Admin', modifydate = GETDATE() WHERE (brandkey = @BrandKey)">
            <SelectParameters>
                <asp:QueryStringParameter Name="brandkey" QueryStringField="BrandKey" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="brandname" />
                <asp:Parameter Name="description" />
                <asp:QueryStringParameter Name="BrandKey" QueryStringField="BrandKey" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
