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
    public partial class register : System.Web.UI.Page
    {
        DataSet ds = new DataSet();
        DataTable dt;
        SqlDataAdapter da;
        SqlCommand cmd;
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("select * from userdet where emailId='"+TextBox2.Text+"'",conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i > 0)
            {
              
                ds.Clear();
            }
            else
            {

                conn.Open();
                cmd = new SqlCommand("insert into userdet(emailId,name,phone,password) values ('" + TextBox2.Text + "', '" + TextBox1.Text + "','" + TextBox5.Text + "' , '" + TextBox3.Text + "') ", conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Response.Redirect("login1.aspx");
            }


        }
    }
}
