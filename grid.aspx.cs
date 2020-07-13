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
    public partial class grid : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["regConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {   
            string MovieId= Session["MovieId"].ToString();
            string theatreName= Session["TheatreName"].ToString();
            string date = Session["Date"].ToString();
            string time= Session["Time"].ToString();
            string query = "select * from tickets where movieId='" + MovieId + "'and theatrename='" + theatreName + "'and date='" + date + "'and time='" + time + "'";
            SqlCommand cmd1 = new SqlCommand(query,conn);
            conn.Open();
            SqlDataReader rd = cmd1.ExecuteReader();
            string seats = "F1";
            char st = ',';
            while (rd.Read())
            {
                seats = rd[3].ToString()+ ","+ seats ;
            }
            string[] seat=seats.Split(st);
            Label11.Text = seats;
            foreach(string s in seat)
            {
                BookedSeat(s);
            }
            TextBox1.Text = MovieId;
            TextBox2.Text = theatreName;
            TextBox4.Text = date;
            TextBox5.Text = time;
            conn.Close();
        }
        protected void BookedSeat(string bn)
        {
            ImageButton btn = (ImageButton)FindControl(bn);
            btn.ImageUrl = "~/image/booked_seat.png";
            btn.Style.Add("width", "45px");
            btn.Style.Add("height", "45px");
            btn.Enabled = false;
        }
        protected void seatClick(ImageButton btn)
        {
            if (btn.ImageUrl == "~/Image/selected_seat.png")
            {

                btn.ImageUrl = "~/Image/available_seat.jpg";
                if (txtseatnumber.Text.IndexOf(btn.ID.ToString() + ",") > -1)
                {
                    txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString() + ",", "");
                }
                else
                {
                    txtseatnumber.Text = txtseatnumber.Text.Replace(btn.ID.ToString(), "");
                }
            }
            else if (btn.ImageUrl == "~/Image/available_seat.jpg")
            {

                btn.ImageUrl = "~/Image/selected_seat.png";
                if (txtseatnumber.Text.Trim().Length == 0)
                {
                    txtseatnumber.Text = btn.ID.ToString();
                }
                else if (txtseatnumber.Text.Trim().EndsWith(","))
                {
                    txtseatnumber.Text = txtseatnumber.Text + btn.ID.ToString();
                }
                else
                {
                    txtseatnumber.Text = txtseatnumber.Text + "," + btn.ID.ToString();
                }
            }
            else if (btn.ImageUrl== "~/image/booked_seat.png")
            {
                
            }

        }
        protected void A1_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A1);
        }
        protected void A2_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A2);
        }

        protected void A3_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A3);
        }

        protected void A4_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A4);
        }

        protected void A5_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A5);
        }

        protected void A6_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A6);
        }

        protected void A7_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A7);
        }

        protected void A8_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A8);
        }

        protected void A9_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A9);
        }

        protected void A10_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(A10);
        }

        protected void B1_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B1);
        }

        protected void B2_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B2);
        }

        protected void B3_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B3);
        }

        protected void B4_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B4);
        }

        protected void B5_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B5);
        }

        protected void B6_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B6);
        }

        protected void B7_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B7);
        }

        protected void B8_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B8);
        }

        protected void B9_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B9);
        }

        protected void B10_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(B10);
        }

        protected void C1_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C1);
        }

        protected void C2_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C2);
        }

        protected void C3_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C3);
        }

        protected void C4_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C4);
        }

        protected void C5_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C5);
        }

        protected void C6_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C6);
        }

        protected void C7_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C7);
        }

        protected void C8_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C8);
        }

        protected void C9_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C9);
        }

        protected void C10_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(C10);
        }

        protected void D1_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D1);
        }

        protected void D2_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D2);
        }

        protected void D3_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D3);
        }

        protected void D4_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D4);
        }

        protected void D5_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D5);
        }

        protected void D6_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D6);
        }

        protected void D7_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D7);
        }

        protected void D8_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D8);
        }

        protected void D9_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D9);
        }

        protected void D10_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(D10);
        }

        protected void E1_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E1);
        }

        protected void E2_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E2);
        }

        protected void E3_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E3);
        }

        protected void E4_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E4);
        }

        protected void E5_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E5);
        }

        protected void E6_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E6);
        }

        protected void E7_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E7);
        }

        protected void E8_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E8);
        }

        protected void E9_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E9);
        }

        protected void E10_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(E10);
        }

        protected void F1_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F1);
        }

        protected void F2_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F2);
        }

        protected void F3_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F3);
        }

        protected void F4_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F4);
        }

        protected void F5_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F5);
        }

        protected void F6_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F6);
        }

        protected void F7_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F7);
        }

        protected void F8_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F8);
        }

        protected void F9_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F9);
        }

        protected void F10_Click(object sender, ImageClickEventArgs e)
        {
            seatClick(F10);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = Session["email"].ToString();
            conn.Open();
            string query1 = "select max(Tid) from tickets";
            SqlCommand cmd = new SqlCommand(query1, conn);
            SqlDataReader rd = cmd.ExecuteReader();
            int x=1;
            while (rd.Read())
            { 
            string val = rd[0].ToString();
            x = int.Parse(val);
            x = x + 1;
            }
            rd.Close();
            string query = "insert into tickets(Tid,movieId,theatrename,seatnumbers,date,time) values ("+x+",'" + TextBox1.Text + "','" + TextBox2.Text + "','" + txtseatnumber.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            SqlCommand cmd1= new SqlCommand(query, conn);
            cmd1.ExecuteNonQuery();
            string query2 = "insert into UserTickets(EmailId,TicketId) values ('"+email+"',"+x+")";
            SqlCommand cmd2=new SqlCommand(query2, conn);
            cmd2.ExecuteNonQuery();
            Response.Redirect("maprough2.aspx");
            conn.Close();
        }
    }
}