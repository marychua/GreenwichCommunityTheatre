using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GreenwichCommunityTheatre
{
    public partial class Review : System.Web.UI.Page
    {
        static int reviewid;
        protected void Page_Load(object sender, EventArgs e)
        {
            getreviewid();
            Label1.Text = DateTime.Now.ToLongDateString().ToString() + " " + DateTime.Now.ToLongTimeString().ToString();

        }
        public void getreviewid()
        {
            String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select reviewid from Review";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            scon.Close();
            if (ds.Tables[0].Rows.Count < 1)
            {
                reviewid = 10001;

            }
            else
            {
                String mycon1 = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
                SqlConnection scon1 = new SqlConnection(mycon1);
                String myquery1 = "select max(reviewid) from Review";
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = myquery1;
                cmd1.Connection = scon1;
                SqlDataAdapter da1 = new SqlDataAdapter();
                da1.SelectCommand = cmd1;
                DataSet ds1 = new DataSet();
                da1.Fill(ds1);
                int a;
                a = Convert.ToInt16(ds1.Tables[0].Rows[0][0].ToString());
                a = a + 1;
                reviewid = a;
                scon1.Close();
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "insert into Review(reviewid,registerdatetime,uname,reviewdetails,status) values(" + reviewid + ",'" + Label1.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','Under Processing')";
            String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            TextBox1.Text = "";
            TextBox2.Text = "";
            Label7.Text = "Your Review ID is " + reviewid + " . You can Check the Status of Feedback Using Review ID";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox3.Text != "")
            {

                String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
                String myquery = "Select * from Review where reviewid=" + TextBox3.Text;
                SqlConnection con = new SqlConnection(mycon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Label3.Text = "Particular Review ID Found";
                    Label4.Text = "Review ID : " + ds.Tables[0].Rows[0]["reviewid"].ToString();
                    Label5.Text = "Status: " + ds.Tables[0].Rows[0]["status"].ToString();
                    if (ds.Tables[0].Rows[0]["status"].ToString() == "Under Processing")
                    {
                       Panel1.Visible = false;

                    }

                    else
                    {
                        Panel1.Visible = true;
                        Label6.Text = "Admin: " + ds.Tables[0].Rows[0]["replymsg"].ToString();
                    }
                }
                else
                {
                    Label3.Text = "Particular Complaint ID Not Found";
                    Label4.Text = "";
                    Label5.Text = "";
                    Panel1.Visible = false;


                }
                con.Close();

            }

            
           
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}