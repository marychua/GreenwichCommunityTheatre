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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            SqlConnection scon = new SqlConnection(mycon);
            String myquery = "select * from User_tbl where Uname='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;   
            cmd.Connection = scon;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            String uname;
            String pass;
            if (ds.Tables[0].Rows.Count > 0)
            {
                uname = ds.Tables[0].Rows[0]["Uname"].ToString();
                pass = ds.Tables[0].Rows[0]["Password"].ToString();

                scon.Close();
                if (uname == TextBox1.Text && pass == TextBox2.Text)
                {
                    Session["username"] = uname;

                    Response.Redirect("Verification.aspx");
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
            Response.Redirect("Register.aspx");
        }
    }
}