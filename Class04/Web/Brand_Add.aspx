<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Brand_Add.aspx.vb" Inherits="Brand_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:FormView ID="fvBrand" runat="server" DataKeyNames="brandkey" DataSourceID="brandDS">
            <EditItemTemplate>
                brandkey:
                <asp:Label ID="brandkeyLabel1" runat="server" Text='<%# Eval("brandkey") %>' />
                <br />
                brandname:
                <asp:TextBox ID="brandnameTextBox" runat="server" Text='<%# Bind("brandname") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                usermodify:
                <asp:TextBox ID="usermodifyTextBox" runat="server" Text='<%# Bind("usermodify") %>' />
                <br />
                modifydate:
                <asp:TextBox ID="modifydateTextBox" runat="server" Text='<%# Bind("modifydate") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                brandname:
                <asp:TextBox ID="brandnameTextBox" runat="server" Text='<%# Bind("brandname") %>' />
                <br />
                description:
                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                <br />
                usermodify:
                <asp:TextBox ID="usermodifyTextBox" runat="server" Text='<%# Bind("usermodify") %>' />
                <br />
                <br />
                <asp:Button ID="btnInsert" runat="server" CommandName="Insert" Text="เพิ่ม" />
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" PostBackUrl="~/BrandData.aspx" Text="ยกเลิก" />
            </InsertItemTemplate>
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
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="brandDS" runat="server" ConnectionString="<%$ ConnectionStrings:Sample_Connection %>" InsertCommand="INSERT INTO BRAND (BRANDNAME , DESCRIPTION , USERMODIFY)
VALUES (@BRANDNAME , @DESCRIPTION , @USERMODIFY)" SelectCommand="SELECT * FROM [Brand]">
            <InsertParameters>
                <asp:Parameter Name="BRANDNAME" />
                <asp:Parameter Name="DESCRIPTION" />
                <asp:Parameter Name="USERMODIFY" />
            </InsertParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
