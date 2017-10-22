<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Category_View.aspx.vb" Inherits="Web_Category_Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView ID="fvCategory" runat="server" DataSourceID="categoryViewDS" DataKeyNames="categorykey">     
                <EditItemTemplate>
                    CategoryKey:
                    <asp:TextBox ID="CategoryKeyTextBox" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    CategoryName:
                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    <br />
                    UserModify:
                    <asp:TextBox ID="UserModifyTextBox" runat="server" Text='<%# Bind("UserModify") %>' />
                    <br />
                    ModifyDate:
                    <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
                    <br />

                     <asp:Button ID="btnUpdate" runat="server" CommandName="update" Text="แก้ไขข้อมูล" />
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="cancel" PostBackUrl="~/BrandData.aspx" Text="ยกเลิก" />

                   
                </EditItemTemplate>
                <InsertItemTemplate>
                    CategoryKey:
                    <asp:TextBox ID="CategoryKeyTextBox" runat="server" Text='<%# Bind("CategoryKey") %>' />
                    <br />
                    CategoryName:
                    <asp:TextBox ID="CategoryNameTextBox" runat="server" Text='<%# Bind("CategoryName") %>' />
                    <br />
                    Description:
                    <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
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
                CategoryKey:
                <asp:Label ID="CategoryKeyLabel" runat="server" Text='<%# Bind("CategoryKey") %>' />
                <br />
                CategoryName:
                <asp:Label ID="CategoryNameLabel" runat="server" Text='<%# Bind("CategoryName") %>' />
                <br />
                Description:
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                <br />
                UserModify:
                <asp:Label ID="UserModifyLabel" runat="server" Text='<%# Bind("UserModify") %>' />
                <br />
                ModifyDate:
                <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
                <br />
                <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="cancel" PostBackUrl="CategoryData.aspx" Text="ยกเลิก" />
            </ItemTemplate>
        </asp:FormView>
            <asp:SqlDataSource ID="categoryViewDS" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_SAMPLEDBConnectionString %>" SelectCommand="SELECT * FROM [Category] where CategoryKey = @categorykey">
                <SelectParameters>
                    <asp:QueryStringParameter Name="categorykey" QueryStringField="CategoryKey" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
