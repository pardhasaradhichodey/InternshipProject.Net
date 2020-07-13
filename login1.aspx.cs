using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace WebApplication1
{
    public partial class login1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string p="select * from userdet where emailId='"+ TextBox1.Text+ "' and password='"+TextBox2.Text + "' ";
            SqlCommand cmd = new SqlCommand(p,conn);
            SqlDataReader rd = cmd.ExecuteReader();
            while (rd.Read())
            {
                if (rd[0].ToString() == TextBox1.Text)
                {
                    Session["email"] = TextBox1.Text;

                    Session["name"] = rd[1].ToString();
                    Response.Redirect("maprough2.aspx");
                }
            }
            Response.Redirect("login1.aspx");
            conn.Close();

        }
    }
}