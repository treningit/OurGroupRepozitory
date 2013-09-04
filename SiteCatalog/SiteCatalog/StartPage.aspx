<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartPage.aspx.cs" Inherits="SiteCatalog.StartPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server">
            <asp:TextBox ID="TextBox1" runat="server" Width="327px"></asp:TextBox>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
        </asp:Panel>
    
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:Button ID="Button2" runat="server" Text="Button" />
        <asp:Button ID="Button3" runat="server" Text="Button" />
    
    </div>
        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource3" DataTextField="CategoryName" DataValueField="CategoryName" Height="670px"></asp:ListBox>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString %>" SelectCommand="SELECT [IDProduct] FROM [Product] WHERE ([FullDiscription] LIKE '%' + @FullDiscription + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView1" Name="FullDiscription" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div style="margin-left: 40px">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource3" DataKeyNames="IDProduct">
                <AlternatingItemTemplate>
                    <span style="">IDProduct:
                    <asp:Label ID="IDProductLabel" runat="server" Text='<%# Eval("IDProduct") %>' />
                    <br />
                    <br />
                    </span>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <span style="">IDProduct:
                    <asp:Label ID="IDProductLabel1" runat="server" Text='<%# Eval("IDProduct") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                    <br />
                    </span>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <span>No data was returned.</span>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <span style="">IDProduct:
                    <asp:TextBox ID="IDProductTextBox" runat="server" Text='<%# Bind("IDProduct") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                    <br />
                    </span>
                </InsertItemTemplate>
                <ItemTemplate>
                    <span style="">IDProduct:
                    <asp:Label ID="IDProductLabel" runat="server" Text='<%# Eval("IDProduct") %>' />
                    <br />
                    <br />
                    </span>
                </ItemTemplate>
                <LayoutTemplate>
                    <div id="itemPlaceholderContainer" runat="server" style="">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <span style="">IDProduct:
                    <asp:Label ID="IDProductLabel" runat="server" Text='<%# Eval("IDProduct") %>' />
                    <br />
                    <br />
                    </span>
                </SelectedItemTemplate>
            </asp:ListView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString %>" SelectCommand="SELECT [IDProduct] FROM [Product] WHERE ([FullDiscription] LIKE '%' + @FullDiscription + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="ListView1" Name="FullDiscription" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </form>
</body>
</html>
