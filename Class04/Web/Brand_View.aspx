<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Brand_View.aspx.vb" Inherits="Brand_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:FormView ID="fvBrand" runat="server" DataKeyNames="brandkey" DataSourceID="dsBrand">     
            <ItemTemplate>
                แสดงข้อมูล ยี่ห้อ : <br />
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
                   <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="cancel" PostBackUrl="~/BrandData.aspx" Text="ยกเลิก" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="dsBrand" runat="server" ConnectionString="<%$ ConnectionStrings:Sample_Connection %>" SelectCommand="SELECT * FROM [Brand] where brandkey = @brandkey" UpdateCommand="UPDATE Brand SET brandname = @brandname, description = @description, usermodify = 'Admin', modifydate = GETDATE() WHERE (brandkey = @BrandKey)">
            <SelectParameters>
                <asp:QueryStringParameter Name="brandkey" QueryStringField="BrandKey" />
            </SelectParameters>
 
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
