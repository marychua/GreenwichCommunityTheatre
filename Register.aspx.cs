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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean useravailable;
            useravailable = checkusername(TextBox8.Text);
            if (useravailable)
            {
                if (TextBox9.Text == TextBox10.Text)
                {
                    String query = "insert into User_tbl(FirstName,LastName,Age,Gender,PhoneNo,Email,Address,Uname,Password) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "')";
                    String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog=GCT; Integrated Security=true";
                    SqlConnection con = new SqlConnection(mycon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    Label13.Text = "New Registration Successfully Saved - Thanks For Registration";
                    
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                    
                    TextBox5.Text = "";
                    TextBox6.Text = "";
                    TextBox7.Text = "";
                    TextBox8.Text = "";
                    TextBox9.Text = "";
                }
                else
                {
                    Label12.Text = "Password and Confirm Password Not Matched - ReEnter Password";
                }
            }
            else
            {
                Label11.Text = "UserName Not Available";
            }

        }
        public Boolean checkusername(String username)
        {
            Boolean userstatus;
            String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog=GCT; Integrated Security=True";
            String myquery = "Select * from User_tbl where Uname='" + TextBox8.Text + "'";
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
                userstatus = false;
            }
            else
            {
                userstatus = true;
            }
            con.Close();
            return userstatus;
        } 

    }
}