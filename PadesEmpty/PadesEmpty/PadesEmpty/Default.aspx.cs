using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PadesEmpty
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            TextFromButton.InnerText = ((LinkButton) sender).Text;
            switch (((LinkButton) sender).Text)
            {
                case "Товары":
                    Button1.Visible = true;
                    GridView2.Visible = true;
                    break;
                case "Категории":
                    break;
                case "Страницы":
                    break;
                case "Внешний вид":
                    break;
                case "SEO":
                    break;
                case "Информация":
                    break;
            }
        }
        protected void Products()
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}