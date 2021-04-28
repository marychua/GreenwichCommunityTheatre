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
    public partial class AdminReply : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["reviewid"] != null)
            {
                int reviewid = Convert.ToInt16(Request.QueryString["reviewid"].ToString());
                String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
                String myquery = "Select * from Review where reviewid=" + reviewid;
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
                    Label7.Text = "Data Found";
                    Label7.Text = ds.Tables[0].Rows[0]["reviewid"].ToString();
                    Label8.Text = ds.Tables[0].Rows[0]["registerdatetime"].ToString();
                    Label9.Text = ds.Tables[0].Rows[0]["uname"].ToString();
                    Label11.Text = ds.Tables[0].Rows[0]["reviewdetails"].ToString();
                    Label12.Text = ds.Tables[0].Rows[0]["status"].ToString();
                }
                else
                {
                    Response.Redirect("Admin.aspx");

                }
                con.Close();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            String updatedata = "Update Review set status='Processed'" + ", replymsg='" + TextBox1.Text + "' where reviewid=" + Label7.Text;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Label8.Text = "Reply Has Been Processed Properly";
        }
    }
}