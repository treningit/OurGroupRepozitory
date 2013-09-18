using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PadesEmpty
{
    public partial class Category : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            Add1.Visible = false;
            Button1.Visible = true;
            GridView3.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Add1.Visible = true;
            GridView3.Visible = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            var myConnection = SqlDataSource1.ConnectionString;
            var myCon = new SqlConnection(myConnection);
            var myCom = new SqlCommand("INSERT INTO Category (CategoryName) VALUES ('" + TextBox1.Text + "')", myCon);
            myCom.Connection.Open();
            myCom.ExecuteNonQuery();
            myCon.Close();
        }

    }
}