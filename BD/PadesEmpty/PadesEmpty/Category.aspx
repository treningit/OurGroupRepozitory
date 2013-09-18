<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="PadesEmpty.Category" %>

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
                <span id="ViewLink"><a href="Site.aspx" id="LinkSite" style="font-family: Verdana">View Site</a></span>
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
                <p id="TextFromButton" runat="server">Категории</p>
                <hr style="background-color: #FFFFFF; height: 3px;" /> 
                <p>
                <asp:Button ID="Button1" runat="server" Text="Добавить категорию" OnClick="Button1_Click" />
                </p>
              
                <asp:Panel ID="Add1" runat ="server" Visible="False">
                <asp:Label ID="Label1" runat="server" Text="CategoryName"></asp:Label>
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;<br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Добавить" />
                    &nbsp;</asp:Panel>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDCategory" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" PageSize="5" Width="705px">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:BoundField DataField="IDCategory" HeaderText="IDCategory" SortExpression="IDCategory" ReadOnly="True" />
               <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString3 %>" SelectCommand="SELECT * FROM [Category]"></asp:SqlDataSource>
            </div>
            
            

        </div>
       
       
       
       
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString %>" DeleteCommand="DELETE FROM [ProductCategory] WHERE [IDCategory] = @IDCategory
DELETE FROM [Category] WHERE [IDCategory] = @IDCategory" InsertCommand="INSERT INTO [Category] ([IDCategory], [CategoryName]) VALUES (@IDCategory, @CategoryName)" ProviderName="<%$ ConnectionStrings:SiteCatalogConnectionString.ProviderName %>" SelectCommand="SELECT [IDCategory], [CategoryName] FROM [Category]" UpdateCommand="UPDATE [Category] SET [CategoryName] = @CategoryName WHERE [IDCategory] = @IDCategory">
           <DeleteParameters>
               <asp:Parameter Name="IDCategory" Type="Int32" />
           </DeleteParameters>
           <InsertParameters>
               <asp:Parameter Name="IDCategory" Type="Int32" />
               <asp:Parameter Name="CategoryName" Type="String" />
           </InsertParameters>
           <UpdateParameters>
               <asp:Parameter Name="CategoryName" Type="String" />
               <asp:Parameter Name="IDCategory" Type="Int32" />
           </UpdateParameters>
       </asp:SqlDataSource>
       
       
       
    </div>



</form>
</body>
</html>
