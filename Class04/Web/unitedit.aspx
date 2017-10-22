<%@ Page Language="VB" AutoEventWireup="false" CodeFile="unitedit.aspx.vb" Inherits="Web_unitedit" %>

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
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="UnitKey" DataSourceID="UnitDS">
                <EditItemTemplate>
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitKey:
                    <asp:TextBox ID="UnitKeyTextBox" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitKey:
                    <asp:TextBox ID="UnitKeyTextBox" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UnitName:
                    <asp:Label ID="UnitNameLabel" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitKey:
                    <asp:Label ID="UnitKeyLabel" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitABBR:
                    <asp:Label ID="UnitABBRLabel" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="UnitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT UnitName, UnitKey, UnitABBR, UserModify FROM Unit WHERE (UnitKey = @UnitKey)" UpdateCommand="UPDATE Unit SET UnitKey = @Param1, UnitName = @Param2, UnitABBR = @Param3, UserModify = @Param4, ModifyDate = @Param5 WHERE (UnitKey = @BrandKey)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="UnitKey" QueryStringField="UnitKey" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Param1" />
                    <asp:Parameter Name="Param2" />
                    <asp:Parameter Name="Param3" />
                    <asp:Parameter Name="Param4" />
                    <asp:Parameter Name="Param5" />
                    <asp:Parameter Name="BrandKey" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
