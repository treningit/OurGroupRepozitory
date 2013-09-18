<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="PadesEmpty.Users" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link  type="text/css" href="Style.css" rel="stylesheet"/>
    
</head>



<body>
<form id="form1" runat="server">



   <div id="Header">
       
       <asp:Label ID="Logo" runat="server" Text="Pades"></asp:Label>
   </div>
   <div id="Page">
       <div id="Menu" >
            

           <div id="ViewSite" style="border-bottom-style: ridge; border-width: 2px; border-color: #FFFFFF">
               <span id="ViewLink"><a href="#" id="LinkSite" style="font-family: Verdana">View Site</a></span>
           </div>
           <div id="SetGeneral">
               <asp:LinkButton ID="LinkButton1" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px"  PostBackUrl="~/Products.aspx">Товары</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton2" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px"  PostBackUrl="~/Category.aspx">Категории</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton3" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px"  PostBackUrl="~/Users.aspx">Пользователи</asp:LinkButton>
           </div>            
           <div id="SetSite">
               <asp:LinkButton ID="LinkButton4" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" PostBackUrl="~/Inform.aspx">Информация</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton5" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" PostBackUrl="~/Settings.aspx">Настройки</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton6" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" PostBackUrl="~/Webform1.aspx">Информация</asp:LinkButton>
           </div> 

           <br />

        </div>
        <div id="Content" >
            

            <div id="Section">
                <p id="TextFromButton" runat="server">Пользователи</p>
                <hr style="background-color: #FFFFFF; height: 3px;" /> 
                <p>
                    &nbsp;</p>
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDUser" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None">
                  <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               <asp:BoundField DataField="IDUser" HeaderText="IDUser" ReadOnly="True" SortExpression="IDUser" />
               <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
               <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
               <asp:CheckBoxField DataField="UserStatus" HeaderText="Разрешить администрирование" SortExpression="UserStatus" />
           </Columns>
                  <EditRowStyle BackColor="#7C6F57" />
                  <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                  <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                  <RowStyle BackColor="#E3EAEB" />
                  <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                  <SortedAscendingCellStyle BackColor="#F8FAFA" />
                  <SortedAscendingHeaderStyle BackColor="#246B61" />
                  <SortedDescendingCellStyle BackColor="#D4DFE1" />
                  <SortedDescendingHeaderStyle BackColor="#15524A" />
       </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString3 %>" DeleteCommand="DELETE FROM [Comments] WHERE [IDUser] = @IDUser
DELETE FROM [User] WHERE [IDUser] = @IDUser" InsertCommand="INSERT INTO [User] ([UserName], [UserPassword], [UserStatus]) VALUES (@UserName, @UserPassword, @UserStatus)" SelectCommand="SELECT [IDUser], [UserName], [UserPassword], [UserStatus] FROM [User]" UpdateCommand="UPDATE [User] SET [UserName] = @UserName, [UserPassword] = @UserPassword, [UserStatus] = @UserStatus WHERE [IDUser] = @IDUser">
           <DeleteParameters>
               <asp:Parameter Name="IDUser" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="UserName" Type="String" />
               <asp:Parameter Name="UserPassword" Type="String" />
               <asp:Parameter Name="UserStatus" Type="Boolean" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="UserName" Type="String" />
               <asp:Parameter Name="UserPassword" Type="String" />
               <asp:Parameter Name="UserStatus" Type="Boolean" />
               <asp:Parameter Name="IDUser" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
            </div>
            
            

        </div>
       
       
       
       
       
       
       
       
    </div>



</form>
</body>
</html>