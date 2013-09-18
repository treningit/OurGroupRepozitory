using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Compilation;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PadesEmpty
{
    public partial class SiteEnter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
            {
                Path = "~/scripts/jquery-1.7.2.min.js",

            });

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string myConnection;
            SqlConnection myCon;
            SqlCommand myCom;
            string k;
            myConnection = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\gitHab\BD\SiteCatalog.mdf;Integrated Security=True;Connect Timeout=30";
            myCon = new SqlConnection(myConnection);
            myCom =
                new SqlCommand(
                    "SELECT UserStatus FROM [User] WHERE UserName='" + TextBox1.Text + "' AND UserPassword='" + TextBox2.Text + "'", myCon);
            
            myCom.Connection.Open();
            SqlDataReader reader = myCom.ExecuteReader();
            while (reader.Read())
            {

                k = reader[0].ToString();
                switch (k)
                {
                    case "True":
                        Label1.Text = "Вы зашли как админ";
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