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
    public partial class Payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["bookingid"].ToString();            
            lblname.Text = Session["username"].ToString();
            lbltime.Text = DateTime.UtcNow.ToString();            
            lblshipping.Text = Session["shipping"].ToString();
            lbldiscount.Text = Session["discount"].ToString();
            lbltotal.Text = Session["Total"].ToString();

            if (RadioButton1.Checked == true)
            {
                lblcard.Text = "MasterCard";
            }
            else if (RadioButton2.Checked == true)
            {
                lblcard.Text = "Visa";
            }
            else if (RadioButton3.Checked == true)
            {
                lblcard.Text = "Paypal";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RadioButton1.Checked==false && RadioButton2.Checked==false && RadioButton3.Checked==false)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Payment Method is unchecked')", true);
            }
            else
            {
                String query = "insert into PaymentMethod(PaymentMethodId,PaymentMethod_Name,CardNumber,CardExpDate,CardHolderName) values('" + Session["PaymetID"].ToString() + "','" + lblcard.Text + "','" + txtcardno.Text + "','" + txtexpiry.Text + "','" + txtcardholder.Text + "')";
                String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
                SqlConnection con = new SqlConnection(mycon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = query;
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                Response.Redirect("Invoice.aspx");
            }
        }
    }
}