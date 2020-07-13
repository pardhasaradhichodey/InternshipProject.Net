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
    public partial class maprough2 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["name"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)

        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s = TextBox1.Text;
            string s1 = TextBox2.Text;
            SqlCommand cmd1 = new SqlCommand("select * from City ", conn);
            conn.Open();
            SqlDataReader rd = cmd1.ExecuteReader();
            int i = 0;
            double[,] dat;
            //double lat =  Convert.ToDouble(TextBox1.Text);
            double lat = Convert.ToDouble(s);
            double lon = Convert.ToDouble(s1);
            double result;
            double res = 0;
            string city = "";
            int cityId = 0;
            while (rd.Read())
            {
                double x = (double)rd[2];
                double y = (double)rd[3];
                result = Math.Sqrt(((x - lat) * (x - lat)) + ((y - lon) * (y - lon)));
                if (i == 0)
                {
                    res = result;
                    city = rd[1].ToString();
                    cityId = (int)rd[0];

                }
                else
                {
                    if (res > result)
                    {
                        res = result;
                        city = rd[1].ToString();
                        cityId = (int)rd[0];
                    }
                }
               i++;
            }
            TextBox3.Text = city;
            TextBox4.Text = cityId.ToString();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            conn.Open();
            string str1 = "select Movieid,movieName from movie where Movieid IN(select DISTINCT Movieid from InCinemas where TheatreId IN(select TheatreId from theatre where CityId='"+TextBox4.Text+"'))";
            SqlDataAdapter cmd2 = new SqlDataAdapter(str1, conn);
            DataTable table1 = new DataTable();
            cmd2.Fill(table1);
            datalist1.DataSource = table1;
            datalist1.DataBind();
            conn.Close();
        }

        protected void datalist1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "Select")
            {
                datalist1.SelectedIndex = e.Item.ItemIndex;
                string pid1 = ((Label)datalist1.SelectedItem.FindControl("IdLabel")).Text;
                Session["CityId"] = TextBox4.Text;
                Session["MovieId"]=pid1;
                Response.Redirect("showtheater.aspx?ID=" + pid1);

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewTickets.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session.Contents.RemoveAll();
            Response.Redirect("Home.aspx");
        }
    }
}