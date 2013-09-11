<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PadesEmpty.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
               <asp:LinkButton ID="LinkButton1" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click">Товары</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton2" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click">Категории</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton3" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click">Страницы</asp:LinkButton>
           </div>            
           <div id="SetSite">
               <asp:LinkButton ID="LinkButton4" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click">Внешний вид</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton5" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click">Seo</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton6" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click">Информация</asp:LinkButton>
           </div> 

           <br />

        </div>
        <div id="Content" >
            

            <div id="Section">
                <p id="TextFromButton" runat="server">Раздел</p>
                <hr style="background-color: #FFFFFF; height: 3px;" /> 
                <p>
                <asp:Button ID="Button1" runat="server" Text="Добавить товар" OnClick="Button1_Click" Visible="False" />
                </p>
              
                <asp:Panel ID="Add1" runat ="server" Visible="False">
                <asp:Label ID="Label1" runat="server" Text="ProductName"></asp:Label>
                    &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;<asp:Label ID="Label2" runat="server" Text="Discription"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
                <asp:Label ID="Label3" runat="server" Text="FullDiscription"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Добавить" />
                    &nbsp;</asp:Panel>
                  <asp:Panel Panel ID="PanelProduct" runat ="server" Visible="False"> 
&nbsp;<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDProduct" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" PageSize="5" Visible="False" Width="708px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                        <asp:BoundField DataField="Discription" HeaderText="Discription" SortExpression="Discription" />
                        <asp:BoundField DataField="FullDiscription" HeaderText="FullDiscription" SortExpression="FullDiscription" />
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

                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString %>" DeleteCommand="DELETE FROM [Comments] WHERE [IDProduct] = @IDProduct
DELETE FROM [ProductCategory] WHERE [IDProduct] = @IDProduct
DELETE FROM [Product] WHERE [IDProduct] = @IDProduct
" InsertCommand="INSERT INTO [Product] ([IDProduct], [ProductName], [Discription], [FullDiscription], [IDPhoto]) VALUES (@IDProduct, @ProductName, @Discription, @FullDiscription, @IDPhoto)" ProviderName="<%$ ConnectionStrings:SiteCatalogConnectionString.ProviderName %>" SelectCommand="SELECT [IDProduct], [ProductName], [Discription], [FullDiscription], [IDPhoto] FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Discription] = @Discription, [FullDiscription] = @FullDiscription, [IDPhoto] = @IDPhoto WHERE [IDProduct] = @IDProduct">
                    <DeleteParameters>
                        <asp:Parameter Name="IDProduct" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="IDProduct" Type="Int32" />
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Discription" Type="String" />
                        <asp:Parameter Name="FullDiscription" Type="String" />
                        <asp:Parameter Name="IDPhoto" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="ProductName" Type="String" />
                        <asp:Parameter Name="Discription" Type="String" />
                        <asp:Parameter Name="FullDiscription" Type="String" />
                        <asp:Parameter Name="IDPhoto" Type="Int32" />
                        <asp:Parameter Name="IDProduct" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource></asp:Panel>
<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IDCategory" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" AllowPaging="True" AllowSorting="True" PageSize="5" Visible="False" Width="705px">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
