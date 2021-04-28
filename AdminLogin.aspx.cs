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
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from Admin where Username='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String admin;
            String pass;
            if (ds.Tables[0].Rows.Count > 0)
            {
                admin = ds.Tables[0].Rows[0]["Username"].ToString();
                pass = ds.Tables[0].Rows[0]["Password"].ToString();

                scon.Close();
                if (admin == TextBox1.Text && pass == TextBox2.Text)
                {
                    Session["Admin"] = admin;

                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    Label1.Text = "Invalid Username or Password - Relogin with Correct Username Password";
                }
            }
            else
            {
                Label1.Text = "Invalid Username or Password - Relogin with Correct Username Password";
            }
        }

        protected void registerbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}