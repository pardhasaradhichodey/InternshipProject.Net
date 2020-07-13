using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
namespace WebApplication1.admin
{
    public partial class UploadMovie : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            Stream fs = FileUpload1.PostedFile.InputStream;
            BinaryReader br = new BinaryReader(fs);
            Byte[] bytes = br.ReadBytes((Int32)fs.Length);
            string str= "insert into movie(MovieId,movieName,Image) values (@mid,@name,@image)";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.Parameters.Add("@mid", SqlDbType.Int).Value = int.Parse(TextBox2.Text);
            cmd.Parameters.Add("@name", SqlDbType.VarChar).Value = TextBox1.Text;
            cmd.Parameters.Add("@image", SqlDbType.Binary).Value = bytes;
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }
}