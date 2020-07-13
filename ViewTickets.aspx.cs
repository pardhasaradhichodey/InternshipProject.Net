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
    public partial class ViewTickets : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Session["email"].ToString();
            string query = "select * from tickets where TId IN(select TicketId from userTickets where EmailId='"+email+ "') ORDER BY Tid DESC";
            conn.Open();
            SqlDataAdapter cmd2 = new SqlDataAdapter(query, conn);
            DataTable table1 = new DataTable();
            cmd2.Fill(table1);
            DataList1.DataSource = table1;
            DataList1.DataBind();
            conn.Close();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("maprough2.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login1.aspx");
        }
    }
}