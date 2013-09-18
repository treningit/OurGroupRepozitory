<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteEnter.aspx.cs" Inherits="PadesEmpty.SiteEnter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link  type="text/css" href="Site.css" rel="stylesheet"/>
    
</head>



<body>
<form id="form1" runat="server">



   <div id="SiteHeader">
   </div>
   <div id="SitePage">
       <div id="SiteMenu" >
            

           <div id="SiteNav">
               <br />
               <br />
           </div>            
           <div id="SiteSubscribe">
               <br />
               <br />
           </div> 

           <br />

        </div>
        <div id="SiteContent" >
            

            <div id="SiteSection">
                <p>Раздел</p>
                
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SiteCatalogConnectionString %>" SelectCommand="SELECT [UserName], [UserPassword] FROM [User] WHERE (([UserName] = @UserName) AND ([UserPassword] = @UserPassword))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="TextBox1" Name="UserName" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="TextBox2" Name="UserPassword" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            

        </div>
       <span id="Login" >&nbsp; Вход
       </span>
      
       
      
    </div>



</form>
</body>
</html>
