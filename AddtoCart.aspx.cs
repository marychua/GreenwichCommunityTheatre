using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace GreenwichCommunityTheatre
{
    public partial class AddtoCart : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (!IsPostBack)
            {
                GridView1.DataSource = SqlDataSource1;
                GridView1.DataBind();                
                float tp = totalprice(Session["bookingid"].ToString());
                GridView1.FooterRow.Cells[8].Text = tp.ToString();
                Label22.Text = GridView1.FooterRow.Cells[8].Text;
                Session["grandprice"] = Label22.Text;
                Session["Timer"] = DateTime.Now.AddSeconds(30).ToString();
                Label9.Text = Session["bookingid"].ToString();                
               

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

            /////////////////////////

        






        }
        



        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

            //Label Label1 = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            //int prodcutid = Convert.ToInt32(Label1.Text);
            //string BookingId = GridView1.DataKeys[e.RowIndex].Value.ToString();
            //GridViewRow row = GridView1.Rows[e.RowIndex];

            //String constring = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            //SqlConnection sqlcon = new SqlConnection(constring);

            //sqlcon.Open();
            //SqlCommand com = new SqlCommand("deleteitemCart", sqlcon);
            //com.CommandType = CommandType.StoredProcedure;
            //com.Parameters.AddWithValue("@bookingid", BookingId);
            //com.ExecuteNonQuery();
            //GridView1.EditIndex = -1;
            //SqlDataSource1.DataBind();
            //GridView1.DataSource = SqlDataSource1;
            //GridView1.DataBind();

            //Label Label1 = GridView1.Rows[e.RowIndex].FindControl("Label1") as Label;
            //int prodcutid = Convert.ToInt32(Label1.Text);
        }

        protected void loginbtn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void logoutbtn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Main.aspx");
        }
        public float totalprice(string id)
        {

            String constring = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            SqlConnection sqlcon = new SqlConnection(constring);

            sqlcon.Open();
            SqlCommand com = new SqlCommand("TotalCart", sqlcon);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@BookingId", id);
            com.ExecuteNonQuery();
            GridView1.EditIndex = -1;
            SqlDataSource1.DataBind();
            GridView1.DataSource = SqlDataSource1;
            GridView1.DataBind();
            string x = com.ExecuteScalar().ToString();
            float f = (float)System.Convert.ToSingle(x);
            return f;
        }

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (DateTime.Compare(DateTime.Now, DateTime.Parse(Session["Timer"].ToString())) < 0)
            {

                lblTime.Text = (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString() + ":"
                             + (((Int32)DateTime.Parse(Session["Timer"].ToString()).Subtract(DateTime.Now).TotalSeconds) % 60).ToString());

              

            }
            else
            {
                lblTime.Text = "Ticket is Expired.";
               
               
             
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
        }

       
        protected void Button3_Click(object sender, EventArgs e)
        {
           
            String mycon = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
            String updatedata = "delete from Booking_tbl where BookingId=" + Label9.Text ;
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd =new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            SqlDataReader rd = cmd.ExecuteReader();
            GridView1.DataSource = rd;
            GridView1.DataBind();
            con.Close();
            //SqlDataSource1.DataBind();
            //GridView1.DataSource = SqlDataSource1;
            //GridView1.DataBind();


            //SqlCommand com = new SqlCommand("deleteitemCart", sqlcon);
            //com.CommandType = CommandType.StoredProcedure;
            //com.Parameters.AddWithValue("@bookingid", Label9.Text);
            //com.ExecuteNonQuery();            
            //SqlDataSource1.DataBind();
            //sqlcon.Close();






        }

        //private void showdata()
        //{
        //    String mycon = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
        //    String myquery = "Select * from Booking_tbl where BookingId=" + Label9.Text;
        //    SqlConnection con = new SqlConnection(mycon);
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandText = myquery;
        //    cmd.Connection = con;
        //    SqlDataAdapter da = new SqlDataAdapter();
        //    da.SelectCommand = cmd;
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {

        //        lblId.Text = ds.Tables[0].Rows[0]["BookingId"].ToString();
        //        lblperfName.Text = ds.Tables[0].Rows[0]["PerfName"].ToString();
        //        lblDate.Text = ds.Tables[0].Rows[0]["bandtype"].ToString();
        //        lbllPerfTime.Text = ds.Tables[0].Rows[0]["seatno"].ToString();
        //        lblTotal.Text = ds.Tables[0].Rows[0]["TotalSeat"].ToString();
        //        lblPrice.Text = ds.Tables[0].Rows[0]["TotalPrice"].ToString();
        //        lblTicket.Text = ds.Tables[0].Rows[0]["tickettype"].ToString();

        //    }
        //    else
        //    {
        //        lblId.Text = "";
        //        lblperfName.Text = "";


        //    }
        //    con.Close();
        //}
       
    }
}