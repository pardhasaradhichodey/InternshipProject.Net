using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;
namespace WebApplication1
{
    public partial class GetImage : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            string id = Request.QueryString["id"];
            string query = "select image from movie where MovieId=@MovieId";
            SqlCommand com = new SqlCommand(query, conn);
            com.Parameters.Add("@MovieId", SqlDbType.Int).Value=Int32.Parse(id);
            conn.Open();
            SqlDataReader r = com.ExecuteReader();
            if (r.Read())
            {
                byte[] imgData = (byte[])r[0];
                Response.BinaryWrite(imgData);
            }
            conn.Close();
        }
    }
}