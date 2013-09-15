using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PadesEmpty
{
    public partial class post : System.Web.UI.Page
    {
        private string text;
        public string evtext;

        public string Text
        {
            get { return text; }
            set { text = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            /*ficha b = new ficha();
            b.Fichka();
            Label1.Text = TextBox1.Text;
            text = Label1.Text;
            evtext = Label1.Text;
            Label1.Text = evtext;
            Site arr = new Site();
            arr.ev = evtext;*/

        }
    }
}