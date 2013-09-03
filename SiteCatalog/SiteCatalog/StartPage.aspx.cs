using System;
using System.Collections;
using System.Data.SqlClient;

namespace SiteCatalog
{
    public partial class StartPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string strCon = "Data Source=G-17\\SQLEXPRESS;Initial Catalog=SiteCatalogBD;Integrated Security=True;Connect Timeout=15;Encrypt=False;TrustServerCertificate = False;";
            
            if (Page.IsPostBack)
            {
                TextBox1.Text =  (Select(strCon, TextBox1.Text)).ToString();
            }
        }

        protected int Select(string myConnection, string search)
        {
            SqlConnection myCon = new SqlConnection(myConnection);
            SqlCommand myCom = new SqlCommand("SELECT IDProduct FROM Product WHERE FullDiscription LIKE '%"+search+"%' ", myCon);
            myCom.Connection.Open();
            SqlDataReader reader = myCom.ExecuteReader();
            ArrayList al=new ArrayList();
            while (reader.Read())
            {
                al.Add(reader[0]);
            }
            myCon.Close();
            return (int) al[0];
        }
    }
}
