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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string args = btn.CommandArgument;
            Response.Redirect("AdminReply.aspx?reviewid=" + args);


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connetionString = null;
            SqlConnection con;
            connetionString = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            con = new SqlConnection(connetionString);
            SqlCommand cmd = new SqlCommand("select P.BookingId,M.CardNumber,M.CardHolderName,P.Uname,P.confirmationcode from PaymentMethod M, Payment P where M.PaymentMethodId = P.PaymentMethodId  AND P.confirmationcode=@Username", con);
            cmd.Parameters.AddWithValue("@Username", this.TextBox1.Text);
            con.Open();
            var result = cmd.ExecuteScalar();
            if (result != null)
            {
                Label1.Text = " Exist";

            }
            else
            {
                Label1.Text = "Not Exist";

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string args = btn.CommandArgument;
            Response.Redirect("PrintTicket.aspx?BookingId=" + args);
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
                GridView1.PageIndex = e.NewPageIndex;
                
           
        }
    }
}