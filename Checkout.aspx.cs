using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace GreenwichCommunityTheatre
{
    public partial class Checkout : System.Web.UI.Page
    {
        string connetionString = null;
        SqlConnection connection;
        SqlCommand command;
        string sql = null;
        SqlDataReader dataReader;
        protected void Page_Load(object sender, EventArgs e)
        {
                              
            Label7.Text = Session["grandprice"].ToString();
            usertxt.Text = Session["username"].ToString();
            Label13.Text = DateTime.Now.AddDays(4).ToString("dd.MM.yy");
            Label14.Text = DateTime.Now.AddDays(1).ToString("dd.MM.yy");
            Session["DeliveryDate"] = Label18.ToString();
            Session["Total"] = Label12.Text;
            Session["shipping"]= Label8.Text;
            Session["discount"] = Label10.Text;
            /////////
            Label16.Text = ""; //Confirmation COde
            Label17.Text = ""; // Paymentmethod ID
            Label10.Text = "0";

           
            if (RadioButton1.Checked == true)
            {
                Label8.Text = "0";
                Label18.Text = "None";
                Int64 finalprice;
                finalprice = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                Label11.Text = Label7.Text.ToString();
                Label12.Text = finalprice.ToString();
                

            }
            else if (RadioButton2.Checked == true)
            {
                Label8.Text = "8";
                Label18.Text = DateTime.Now.AddDays(4).ToString("dd.MM.yy");
                Int64 finalprice;
                finalprice = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                Label11.Text = Label7.Text.ToString();
                Label12.Text = finalprice.ToString();

            }
            else if (RadioButton3.Checked == true)
            {
                Label8.Text = "12";
                Label18.Text= DateTime.Now.AddDays(1).ToString("dd.MM.yy");
                Int64 finalprice;
                finalprice = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                Label11.Text = Label7.Text.ToString();
                Label12.Text = finalprice.ToString();
            }
            else
            {
                Label8.Text = "";
            }
            ////////////////////////////////////////////////////
            connetionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            sql = "Select * from User_tbl where (Uname='" + usertxt.Text.ToString() + "')";
            connection = new SqlConnection(connetionString);
            connection.Open();
            command = new SqlCommand(sql, connection);
            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {

                Label1.Text = dataReader["FirstName"].ToString();
                Label15.Text = dataReader["LastName"].ToString();
                Label2.Text = dataReader["PhoneNo"].ToString();
                Label3.Text = dataReader["Email"].ToString();
                Label5.Text = dataReader["Address"].ToString();


            }
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
      
        protected void Button2_Click(object sender, EventArgs e)
        {

            //int discount;
            //int maxdiscount;
            //Int64 nodiscount;
            //Int64 finalprice;
            //Int64 discountprice;
            //String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            //String myquery = "Select * from coupon_tbl where couponcode='" + TextBox2.Text + "'";
            //SqlConnection con = new SqlConnection(mycon);
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = myquery;
            //cmd.Connection = con;
            //SqlDataAdapter da = new SqlDataAdapter();
            //da.SelectCommand = cmd;
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            //if (ds.Tables[0].Rows.Count > 0)
            //{
               
            //    Label9.Text = "Coupon Code " + TextBox2.Text + " Applied Successfully";
            //    nodiscount = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
            //    discount = Convert.ToInt16(ds.Tables[0].Rows[0]["discount"].ToString());               
            //    maxdiscount = Convert.ToInt16(ds.Tables[0].Rows[0]["maxdiscount"].ToString());
            //    discountprice = (Convert.ToInt64(nodiscount) * discount) / 100;
            //    if (discountprice > maxdiscount)
            //    {
            //        discountprice = maxdiscount;
            //    }
            //    Label10.Text = discountprice.ToString() + " ( " + discount + "% )";
            //    finalprice = Convert.ToInt64(Label12.Text) - discountprice + Convert.ToInt32(Label8.Text);
            //    Label11.Text =  nodiscount.ToString();
            //    Label12.Text =  finalprice.ToString();
            //}
            //else
            //{
            //    Label9.Text = "Invalid Coupon Code Applied : Not Exist";
            //    Label10.Text = "0";
            //    nodiscount= Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);                
            //    Label12.Text = nodiscount.ToString();
            //    Label11.Text = "";




            //}
            //con.Close();

        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Random rnd = new Random();
            Random rnd1 = new Random();

            Label16.Text = "CF"+DateTime.Now.ToString("MMddyyyyHHmmss");
            Label17.Text= "PP"+ rnd.Next(80).ToString() + rnd1.Next(2000).ToString();
            Session["PaymetID"] = Label17.Text;
            Session["ConfId"] = Label16.Text;

            String query = "insert into Payment(amountofpayment,confirmationcode,Uname,PaymentMethodId,BookingId) values('" + Label12.Text + "','" + Label16.Text + "','" + usertxt.Text + "','" + Label17.Text + "','"+Session["bookingid"].ToString() + "')";
            String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = query;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("Payment.aspx");

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          

            if (DropDownList1.SelectedItem.Text.ToString() == "Select")
            {
                Int32 price = Convert.ToInt32(Session["price"]);
                Int32 convertKey = Convert.ToInt32(Session["totalseat"]);
                Int64 nodiscount;
               
                Label10.Text = "0";
                nodiscount = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                Label12.Text = nodiscount.ToString();
                Label11.Text = "";
                Label9.Text = "";

            }

            else if (DropDownList1.SelectedItem.Text.ToString() == "BUY4FREE1")
            {
                Int32 price = Convert.ToInt32(Session["price"]);
                Int32 convertKey = Convert.ToInt32(Session["totalseat"]);
                Int64 nodiscount;
                Int64 afterdiscount;
                if (convertKey>4)
                {
                    

                    nodiscount = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                    Label11.Text = nodiscount.ToString();
                    afterdiscount = nodiscount - price;
                    Label12.Text = afterdiscount.ToString();

                    Label9.Text = "Free 1 Ticket";
                    Label10.Text = "- RM"+ Session["price"].ToString();
                   
                    

                }
                else
                {
                    Label9.Text = "Code invalid for less than 4 ticket";
                    Label10.Text = "0";
                    nodiscount = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                    Label12.Text = nodiscount.ToString();
                    Label11.Text = "";

                }



            }
            else if (DropDownList1.SelectedItem.Text.ToString() == "MONTHUR")
            {
                int price = Convert.ToInt32(Session["price"]);
                Int32 convertKey = Convert.ToInt32(Session["totalseat"]);
                Int64 nodiscount;
                Int64 afterdiscount;
                string date = DateTime.Today.ToString();
                DateTime dt = DateTime.Now;
                int day = dt.Day;
                String dayName = dt.DayOfWeek.ToString();

                if (dayName != "Friday")
                {
                    

                    nodiscount = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                    Label11.Text = nodiscount.ToString();
                    afterdiscount = nodiscount - (price * 10) / 100;
                    Label12.Text = afterdiscount.ToString();
                    
                    Label9.Text = "Enjoy Monday to Thursday 10% Off";
                    Label10.Text = "10%";
                }
                else
                {
                    Label9.Text = "Code Valid from Monday to Thursday only ";
                    Label10.Text = "0";
                    nodiscount = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                    Label12.Text = nodiscount.ToString();
                    Label11.Text = "";
                }

            }
            else if (DropDownList1.SelectedItem.Text.ToString() == "AGENT20")
            {
                int price = Convert.ToInt32(Session["price"]);
                Int32 convertKey = Convert.ToInt32(Session["totalseat"]);
                Int64 nodiscount;
                Int64 afterdiscount;
                if (convertKey > 20)
                {
                    
                    nodiscount = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                    Label11.Text = nodiscount.ToString();
                    afterdiscount = nodiscount - (price * 50)/100;
                    Label12.Text = afterdiscount.ToString();

                    Label9.Text = "Enjoy 50% off";
                    Label10.Text = "50%";

                    
                }
                else
                {
                    Label9.Text = "Ticket must be more than 20";
                    Label10.Text = "0";
                    nodiscount = Convert.ToInt64(Label7.Text) + Convert.ToInt32(Label8.Text);
                    Label12.Text = nodiscount.ToString();
                    Label11.Text = "";


                }
            }
        }
    }
  
}