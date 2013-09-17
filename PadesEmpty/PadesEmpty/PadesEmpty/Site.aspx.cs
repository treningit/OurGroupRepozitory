using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PadesEmpty
{
    public partial class Site : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            String strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Cryo\Desktop\SiteCatalog.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection myCon = new SqlConnection(strCon);
            SqlCommand myCom = new SqlCommand("Select CategoryName From Category", myCon);
            myCom.Connection.Open();
           
            SqlDataReader reader = myCom.ExecuteReader();
            while (reader.Read())
            {
                var link = new LinkButton();
                link.ID = reader[0].ToString();
                link.Text = reader[0].ToString();
                link.Font.Size = FontUnit.Larger;
                link.Click += new EventHandler(link_Click);
                SiteNav.Controls.Add(link);
                SiteNav.Controls.Add(new LiteralControl("<br/>"));
            }
            myCon.Close();
        }
        void link_Click(object sender, EventArgs e)
        {
            var link = (LinkButton)sender;
           // DataList1.Visible = false;
            //Label1.Visible = false;
          Label1.Text  = link.Text;
            DataList1.Visible = false;
        }

        protected void UserRegister(object sender, EventArgs e)
        {
            String strCon = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Cryo\Desktop\SiteCatalog.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection myCon = new SqlConnection(strCon);
            SqlCommand myCom = new SqlCommand("Insert into [User](UserName,UserPassword,UserStatus) values('"+UserEmail.Text+"','"+UserPassword.Text+"','false')", myCon);
            myCom.Connection.Open();

            myCom.ExecuteNonQuery();
            myCon.Close();
        }

        protected void UserEnter(object sender, EventArgs e)
        {
            string myConnection;
            SqlConnection myCon;
            SqlCommand myCom;
            string k;
            myConnection = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\Cryo\Desktop\GitHub\OurGroupRepozitory\BD\SiteCatalog.mdf;Integrated Security=True;Connect Timeout=30";
            myCon = new SqlConnection(myConnection);
            myCom =
                new SqlCommand(
                    "SELECT UserStatus FROM [User] WHERE UserName='" + UserName.Text + "' AND UserPassword='" + Password.Text + "'", myCon);

            myCom.Connection.Open();
            SqlDataReader reader = myCom.ExecuteReader();
            while (reader.Read())
            {

                k = reader[0].ToString();
                switch (k)
                {
                    case "True":
                        Response.Redirect("Products.aspx");
                        break;
                    case "False":
                        Label1.Text = "Вы обычный пользователь";
                        break;
                    default:
                        Label1.Text = "Такого пользователя не существует";
                        break;
                }
            }

            //Label1.Text = reader.ToString();
            myCon.Close();
        }
    }
}