<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inform.aspx.cs" Inherits="PadesEmpty.Inform" %>

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
                <p id="TextFromButton" runat="server">Информация</p>

                <p>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" EmptyDataText="Нет записей для отображения." ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="CompanyInfo" HeaderText="CompanyInfo" SortExpression="CompanyInfo" />
                            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                            <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                            <asp:DynamicField DataField="CompanyInfo" HeaderText="CompanyInfo" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:D:\GITHAB\BD\SITECATALOG.MDFConnectionString1 %>" ProviderName="<%$ ConnectionStrings:D:\GITHAB\BD\SITECATALOG.MDFConnectionString1.ProviderName %>" SelectCommand="SELECT [CompanyInfo], [Phone], [Address], [Title] FROM [Info]"></asp:SqlDataSource>
                </p>
              
                