using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PadesEmpty
{
    public partial class Default : System.Web.UI.Page
    {
        

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            TextFromButton.InnerText = ((LinkButton) sender).Text;
            switch (((LinkButton) sender).Text)
            {
                case "Товары":
                    Add1.Visible = false;
                    PanelProduct.Visible = true;
                    Button1.Visible = true;
                    GridView2.Visible = true;
                    Button1.Text = "Добавить продукт";
                    GridView3.Visible = false;
                    break;
                case "Категории":
                    Add1.Visible = false;
                    PanelProduct.Visible = false;
                    Button1.Visible = true;
                    Button1.Text = "Добавить категорию";
                    GridView3.Visible = true;
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
            Add1.Visible = true;
            if (Button1.Text == "Добавить продукт")
            {

                Label1.Text = "ProductName";
                Button1.Visible = false;
                GridView2.Visible = false;
                Label2.Visible = true;
                Label3.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
            }
<<<<<<< HEAD
            if (Button1.Text == "Добавить категорию")
            {
                GridView3.Visible = false;
                Label1.Text = "CategoryName";
                Label2.Visible = false;
                Label3.Visible = false;
                TextBox2.Visible = false;
                TextBox3.Visible = false;
            }
            
=======
            if (Button1.Text != "Добавить категорию") return;
            Button1.Visible = false;
            GridView3.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
>>>>>>> e4d920e115264c0c468cd397a5b62ccdbe7279b6
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
<<<<<<< HEAD
            String strCon = SqlDataSource1.ConnectionString;
            SqlConnection myCon = new SqlConnection(strCon);
            SqlCommand myCom = new SqlCommand("INSERT INTO Category (CategoryName) VALUES ('" + Label1.Text + "')", myCon);
            myCom.Connection.Open();
            myCom.ExecuteNonQuery();
            myCon.Close();
            Label4.Visible = true;
            Label4.Text = "Ура!";
=======
            string myConnection;
            SqlConnection myCon;
            SqlCommand myCom;
            switch (Button1.Text)
            {
                case "Добавить продукт":
                    myConnection = SqlDataSource1.ConnectionString;
                    myCon = new SqlConnection(myConnection);
                    myCom = new SqlCommand("INSERT INTO Product (ProductName,Discription,FullDiscription) VALUES ('" + Label1.Text + "','" + Label2.Text + "','" + Label3.Text + "')", myCon);
                    myCom.Connection.Open();
                    myCom.ExecuteNonQuery();
                    myCon.Close();
                    break;
                case "Добавить категорию":
                    myConnection = SqlDataSource2.ConnectionString;
                    myCon = new SqlConnection(myConnection);
                    myCom = new SqlCommand("INSERT INTO Category (CategoryName) VALUES ('" + Label1.Text + "')", myCon);
                    myCom.Connection.Open();
                    myCom.ExecuteNonQuery();
                    myCon.Close();
                    break;
            }
            
>>>>>>> e4d920e115264c0c468cd397a5b62ccdbe7279b6
        }
    }
}
