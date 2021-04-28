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
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Boolean useravailable;
            useravailable = checkusername(TextBox1.Text);
            if (useravailable)
            {
                if (TextBox2.Text != null)
                {
                    String query = "insert into Admin(Username,Password,Position) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
                    String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog=GCT; Integrated Security=True";
                    SqlConnection con = new SqlConnection(mycon);
                    con.Open();
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = query;
                    cmd.Connection = con;
                    cmd.ExecuteNonQuery();
                    Label1.Text = "New Registration Successfully Saved";

                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";

                }
                else
                {
                    Label1.Text = "Error. Please try again";
                }
            }
            else
            {
                Label1.Text = "UserName Not Available";
            }

        }
        public Boolean checkusername(String username)
        {
            Boolean userstatus;
            String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog=GCT; Integrated Security=True";
            String myquery = "Select * from Admin where Username='" + TextBox1.Text + "'";
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