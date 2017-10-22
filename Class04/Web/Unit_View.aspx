<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Unit_View.aspx.vb" Inherits="Web_Unit_View" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            เเสดงข้อมูลสินค้า<br />
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="UnitKey" DataSourceID="UnitDS">
                <EditItemTemplate>
                    UnitKey:
                    <asp:TextBox ID="UnitKeyTextBox" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    UnitKey:
                    <asp:TextBox ID="UnitKeyTextBox" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitName:
                    <asp:TextBox ID="UnitNameTextBox" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:TextBox ID="UnitABBRTextBox" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    UnitKey:
                    <asp:Label ID="UnitKeyLabel" runat="server" Text='<%# Bind("UnitKey") %>' />
                    <br />
                    UnitName:
                    <asp:Label ID="UnitNameLabel" runat="server" Text='<%# Bind("UnitName") %>' />
                    <br />
                    UnitABBR:
                    <asp:Label ID="UnitABBRLabel" runat="server" Text='<%# Bind("UnitABBR") %>' />
                    <br />
                    UserModify:
                    <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="UnitDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * FROM [Unit] where UnitKey = @UnitKey" UpdateCommand="UPDATE Unit SET UnitKey = @Param1, UnitName = @Param2, UnitABBR = @Param3, UserModify = @Param4, ModifyDate = @Param5 WHERE (UnitKey = @UnitKey)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="UnitKey" QueryStringField="UnitKey" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Param1" />
                    <asp:Parameter Name="Param2" />
                    <asp:Parameter Name="Param3" />
                    <asp:Parameter Name="Param4" />
                    <asp:Parameter Name="Param5" />
                    <asp:Parameter Name="UnitKey" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Web/UnitData.aspx" Text="Back" />
        </div>
    </form>
</body>
</html>
