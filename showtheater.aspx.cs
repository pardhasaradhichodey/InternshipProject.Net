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
    public partial class showtheater : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string str = System.DateTime.Now.ToString("yyyy.MM.dd");
            string CityId = Session["CityId"].ToString();
            string movie = Session["MovieId"].ToString();
            conn.Open();
            Button1.Text = str;
            Button2.Text = System.DateTime.Now.AddDays(+1).ToString("yyyy.MM.dd");
            Button3.Text = System.DateTime.Now.AddDays(+2).ToString("yyyy.MM.dd");
            Button4.Text = System.DateTime.Now.AddDays(+3).ToString("yyyy.MM.dd");
            string query = "select TheatreId,TheatreName,Address from theatre where CityId='" + CityId + "' and TheatreId IN(select TheatreId from InCinemas where MovieId='" + movie + "') ";
            SqlCommand com = new SqlCommand(query, conn);
            SqlDataAdapter da = new SqlDataAdapter(com);
            DataTable ds = new DataTable();
            da.Fill(ds);  // fill dataset
            DataList1.DataSource = ds;
            DataList1.DataBind();
            conn.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Button1.Style.Add("background-color", "green");
            Button2.Style.Add("background-color", "white");
            Button3.Style.Add("background-color", "white");
            Button4.Style.Add("background-color", "white");
            TextBox1.Text = "";
            TextBox1.Text = Button1.Text;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button2.Style.Add("background-color", "green");
            Button1.Style.Add("background-color", "white");
            Button3.Style.Add("background-color", "white");
            Button4.Style.Add("background-color", "white");
            TextBox1.Text = "";
            TextBox1.Text = Button2.Text;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button3.Style.Add("background-color", "green");
            Button2.Style.Add("background-color", "white");
            Button1.Style.Add("background-color", "white");
            Button4.Style.Add("background-color", "white");
            TextBox1.Text = "";
            TextBox1.Text = Button3.Text;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Button4.Style.Add("background-color", "green");
            Button2.Style.Add("background-color", "white");
            Button3.Style.Add("background-color", "white");
            Button1.Style.Add("background-color", "white");
            TextBox1.Text = "";
            TextBox1.Text = Button4.Text;
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "Select1")
            {
                DataList1.SelectedIndex = e.Item.ItemIndex;
                string name = ((Label)DataList1.SelectedItem.FindControl("Label1")).Text;
                Label3.Text = "Hello!!";
                Session["Date"] = TextBox1.Text;
                Session["TheatreName"] = name;
                Session["Time"] = TextBox2.Text;
                Response.Redirect("grid.aspx?ID="+name);
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Button5.Style.Add("background-color", "green");
            Button6.Style.Add("background-color", "white");
            Button7.Style.Add("background-color", "white");
            Button8.Style.Add("background-color", "white");
            TextBox2.Text = "";
            TextBox2.Text = Button5.Text;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Button6.Style.Add("background-color", "green");
            Button5.Style.Add("background-color", "white");
            Button7.Style.Add("background-color", "white");
            Button8.Style.Add("background-color", "white");
            TextBox2.Text = "";
            TextBox2.Text = Button6.Text;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Button7.Style.Add("background-color", "green");
            Button6.Style.Add("background-color", "white");
            Button5.Style.Add("background-color", "white");
            Button8.Style.Add("background-color", "white");
            TextBox2.Text = "";
            TextBox2.Text = Button7.Text;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Button8.Style.Add("background-color", "green");
            Button6.Style.Add("background-color", "white");
            Button7.Style.Add("background-color", "white");
            Button5.Style.Add("background-color", "white");
            TextBox2.Text = "";
            TextBox2.Text = Button8.Text;
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}