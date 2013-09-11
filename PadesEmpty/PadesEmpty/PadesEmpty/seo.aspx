﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="seo.aspx.cs" Inherits="PadesEmpty.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head111" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link  type="text/css" href="Style.css" rel="stylesheet"/>
    
</head>



<body>
<form id="form11334" runat="server">



   <div id="Header">
       
       <asp:Label ID="Logo233" runat="server" Text="Pades"></asp:Label>
   </div>
   <div id="Page">
       <div id="Menu" >
            

           <div id="ViewSite" style="border-bottom-style: ridge; border-width: 2px; border-color: #FFFFFF">
               <span id="ViewLink"><a href="#" id="LinkSite" style="font-family: Verdana">View Site</a></span>
           </div>
           <div id="SetGeneral">
               <asp:LinkButton ID="LinkButton116" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click">Товары</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton216" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click">Категории</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton316" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px"  PostBackUrl="~/post.aspx">Страницы</asp:LinkButton>
           </div>            
           <div id="SetSite">
               <asp:LinkButton ID="LinkButton416" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" PostBackUrl="~/vneshni-vid.aspx">Внешний вид</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton516" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click" PostBackUrl="~/seo.aspx">Seo</asp:LinkButton>
               <br />
               <asp:LinkButton ID="LinkButton661" runat="server" CssClass="LinkBtn" Width="96%" Font-Bold="True" Font-Italic="False" Font-Names="Verdana" ForeColor="#E0E0E0" Font-Size="12px" OnClick="LinkButton1_Click" PostBackUrl="~/info.aspx">Информация</asp:LinkButton>
           </div> 

           <br />

        </div>
        <div id="Content" >
            

            <div id="Section">
                <p id="TextFromButton888" runat="server">Раздел</p>
            </div>
            
            

        </div>
       
       
       
    </div>



</form>
</body>
</html>
