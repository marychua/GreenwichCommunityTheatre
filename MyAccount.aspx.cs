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
    public partial class MyAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null)
            {
                usertxt.Text = "Hello Guest,";
                loginbtn.Visible = true;
                logoutbtn.Visible = false;

            }
            else
            {
                usertxt.Text = "Hello " + Session["username"].ToString();
                logoutbtn.Visible = true;
                loginbtn.Visible = false;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection ("Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true");
            SqlDataAdapter sda = new SqlDataAdapter ("select Password from User_tbl where Password ='"+ TextBox1.Text +"' ",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count.ToString() == "1")
            {
                if (TextBox2.Text == TextBox3.Text)
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update User_tbl set Password ='" + TextBox2.Text + "'where Password ='" + TextBox1.Text + "'", con);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lbl.Text = "Succefully Updated";
                }

                else
                {
                    lbl.Text = "New password and confirm password should be the same";
                }

            }
            else
            {
                lbl.Text = "Invalid p";
            }


        //    String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
        //    SqlConnection scon = new SqlConnection(mycon);
        //    String myquery = "select * from User_tbl";
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandText = myquery;
        //    cmd.Connection = scon;
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    da.SelectCommand = cmd;
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    String pass;
        //    pass = ds.Tables[0].Rows[0]["Password"].ToString();
        //    scon.Close();
        //    if (pass == TextBox1.Text)
        //    {
        //        if (TextBox2.Text == TextBox3.Text && TextBox2.Text != "")
        //        {
        //            String updatepass = "update User_tbl set Password='" + TextBox2.Text +
        //            "' where Uname='" + usertxt.Text + "'";
        //            String mycon1 = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
        //            SqlConnection s = new SqlConnection(mycon1);
        //            s.Open();
        //            SqlCommand cmd1 = new SqlCommand();
        //            cmd1.CommandText = updatepass;
        //            cmd1.Connection = s;
        //            cmd1.ExecuteNonQuery();                    
        //            lbl.Text = "Your password is successfully changed";
        //        }
        //        else
        //        {
        //            lbl.Text = "New Password and Re-enter Password Not Matched ";
        //        }
        //    }
        //    else
        //    {
        //        lbl.Text = "Invalid Username or Password";
        //    }


        }
    }
}