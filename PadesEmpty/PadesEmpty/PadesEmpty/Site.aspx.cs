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
            Label1.Text = link.Text;
        }

        
    }
}