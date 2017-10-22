<%@ Page Language="VB" AutoEventWireup="false" CodeFile="system.aspx.vb" Inherits="Web_system" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="SHOP SYSTEM"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Web/BrandData.aspx" Text="BRAND" Width="100px" />
            <asp:Button ID="Button2" runat="server" PostBackUrl="~/Web/CategoryData.aspx" Text="CATEGORY" />
            <asp:Button ID="Button3" runat="server" PostBackUrl="~/Web/UnitData.aspx" Text="UNIT" Width="103px" />
            <asp:Button ID="Button4" runat="server" PostBackUrl="~/Web/productdata.aspx" Text="PRODUCT" />
        </div>
    </form>
</body>
</html>
