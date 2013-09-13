using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PadesEmpty
{
    public partial class Site : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string myConnection;
            SqlConnection myCon;
            SqlCommand myCom;
            myConnection = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=C:\Users\HP\Desktop\GiT\OurGroupRepozitory\BD\SiteCatalog.mdf;Integrated Security=True;Connect Timeout=30";
            myCon = new SqlConnection(myConnection);
            myCom =
                new SqlCommand(
                    "SELECT UserName,UserPassword FROM User WHERE UserName='Pavel' AND UserPassword='Yfkbdfqrj'", myCon);
            myCom.Connection.Open();
            myCom.ExecuteReader();
            //Label1.Text = reader.ToString();
            myCon.Close();
        }
    }
}