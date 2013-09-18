using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PadesEmpty
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            Add1.Visible = false;
            Button1.Visible = true;
            GridView2.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Add1.Visible = true;
            Button1.Visible = false;
            GridView2.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string myConnection = SqlDataSource2.ConnectionString;
            SqlConnection myCon = new SqlConnection(myConnection);
            SqlCommand myCom = new SqlCommand(
                "INSERT INTO Product (ProductName,Discription,FullDiscription) VALUES ('" + TextBox1.Text +
                "','" + TextBox2.Text + "','" + TextBox3.Text + "')", myCon);
            myCom.Connection.Open();
            myCom.ExecuteNonQuery();
            myCon.Close();
        }
    }
}