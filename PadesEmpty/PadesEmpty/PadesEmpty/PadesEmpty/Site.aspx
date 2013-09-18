<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Site.aspx.cs" Inherits="PadesEmpty.Site" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link  type="text/css" href="NewCss.css" rel="stylesheet"/>
    
    <style type="text/css">
        .SiteFoot1 {
            width: 86px;
        }
    </style>
    
</head>



<body>
<form id="form1" runat="server">



   <div id="SiteHeader">
       <div id="SiteLogo">
           <%--<input type="search" value="Search..." id="SiteSearch"/>--%>
           <asp:TextBox ID="SiteSearch" runat="server" ></asp:TextBox>&nbsp;
           <asp:Button ID="BtnSearch" runat="server" CssClass="BtnSearch" Height="27px" Width="27px" />
       </div>
       <div id="SiteNavigation">
           <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Contacts</a></li>
            <li><a href="#">Map</a></li>
        </ul>
           
       </div>
   </div>
   <div id="SitePage">
       <div id="SiteMenu" >
            

           <div id="SiteNav" runat="server">
               
              
           </div>            
           <div id="SiteFollow">
               <br />
               <br />
           </div> 

           <br />

        </div>
        <div id="SiteContent" >
            

            <div id="SiteSection">
                <p>Раздел</p>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        CompanyInfo:
                        <asp:Label ID="CompanyInfoLabel" runat="server" Text='<%# Eval("CompanyInfo") %>' />
                        <br />
                        Phone:
                        <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' />
<br />
                        Address:
                        <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="IDCategory,IDProduct" DataSourceID="SqlDataSource3" EmptyDataText="Нет записей для отображения." ForeColor="Black" GridLines="Horizontal">
                    <Columns>
                        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
                        <asp:BoundField DataField="Discription" HeaderText="Discription" SortExpression="Discription" />
                        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
                        <asp:BoundField DataField="IDCategory" HeaderText="IDCategory" SortExpression="IDCategory" ReadOnly="True" />
                        <asp:BoundField DataField="IDProduct" HeaderText="IDProduct" ReadOnly="True" SortExpression="IDProduct" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:D:\GITHAB\BD\SITECATALOG.MDFConnectionString1 %>" DeleteCommand="DELETE FROM [Product] WHERE [IDProduct] = @IDProduct" InsertCommand="INSERT INTO [Product] ([IDProduct], [ProductName], [Discription], [FullDiscription], [IDPhoto]) VALUES (@IDProduct, @ProductName, @Discription, @FullDiscription, @IDPhoto)" SelectCommand="SELECT Product.ProductName, Product.Discription, Category.CategoryName, Category.IDCategory, Product.IDProduct FROM Category INNER JOIN ProductCategory ON Category.IDCategory = ProductCategory.IDCategory INNER JOIN Product ON ProductCategory.IDProduct = Product.IDProduct WHERE (Category.CategoryName = N'3M')" UpdateCommand="UPDATE [Product] SET [ProductName] = @ProductName, [Discription] = @Discription, [FullDiscription] = @FullDiscription, [IDPhoto] = @IDPhoto WHERE [IDProduct] = @IDProduct">
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
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString3 %>" SelectCommand="SELECT [CompanyInfo], [Phone], [Address] FROM [Info]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString3 %>" SelectCommand="SELECT [CompanyInfo] FROM [Info]"></asp:SqlDataSource>
            </div>



        </div>
       <%--<asp:Button ID="Login" runat="server" Height="37px" Text="Вход" Width="25px" />--%>
       <div id="UserLogin">
           <br />
           <asp:Label ID="Enter" runat="server" Text="Вход"></asp:Label>
           <br />
           <br />
           <asp:TextBox ID="UserName" runat="server">Логин</asp:TextBox>
           <br />
           <br />
           <asp:TextBox ID="Password" runat="server" >Пароль</asp:TextBox>
           <br />
           <br />
           <asp:Button ID="BtnLogin" runat="server" Text="Button" />
       </div>
    </div>

<div id="SiteFooter">
    <div id="SiteFooterTop">
        <div id="SiteFoot">
        <div id="SiteFoot1">
            <div class="SiteFoot1">

                <asp:Button ID="BtnUp" runat="server" Height="208px" Text="Наверх" Width="82px" ForeColor="#444444" />

            </div>
            <div class="SiteFoot1">
                <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contacts</a></li>
                <li><a href="#">Map</a></li>
                </ul>
            </div>
        </div>
        <div id="SiteFoot2">
            <div>
                <p>Ожидайте наш магазин <br />в социальных сетях:</p>

            <img src="Image/tw.jpg"/>&nbsp; <a>Twitter</a><br />
            <img src="Image/fb.jpg" />&nbsp; <a>Facebook</a><br />
            <img src="Image/vk.jpg" />&nbsp; <a>Vkontakte</a><br />
            </div>
        </div>
        <div id="SiteFoot3">
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Register" runat="server" Text="Регистрация в один клик!"></asp:Label>
            <br />
            <br />
            <asp:TextBox ID="UserEmail" runat="server" BackColor="#2A2A2A" BorderColor="#484848" BorderStyle="Solid" BorderWidth="1px" Font-Size="10px"  style="margin-left: 14px" ForeColor="#6D6D6D">E-mail</asp:TextBox>
            <br />
            <br />
            <asp:TextBox ID="UserPassword" runat="server" BackColor="#2A2A2A" BorderColor="#484848" BorderStyle="Solid" BorderWidth="1px" Font-Size="10px"  style="margin-left: 14px" ForeColor="#6D6D6D" >Password</asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnRegister" runat="server" Text="Регистрация" />
            <br />
            
        </div>

        </div>
    </div>

    <div id="SiteFooterBottom"></div>
</div>

</form>
</body>
</html>
