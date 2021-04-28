using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Security.Cryptography;

namespace GreenwichCommunityTheatre
{
    public partial class SelectSeat : System.Web.UI.Page
    {
        string connetionString = null;
        SqlConnection connection;
        SqlCommand command;
        string sql = null;
        SqlDataReader dataReader;
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
           
            Panel1.Visible = false;
            Session["totalseat"] = lblcount.Text;
            //TextBox2.Text = Session["Value"].ToString(); //performance name
            Label8.Text = Session["Value"].ToString();
            Label3.Text= Session["username"].ToString(); //username
            Label1.Text = "Madagascar"; //exception-toread
            //Label2.Text = "7"; //idnumber
            Label6.Text = "Adult x" + txtAdult.Text + Environment.NewLine+ 
                          "Children x" + txtChild.Text+ Environment.NewLine +
                          "OAP x" + txtOku.Text;

            Session["bookingid"] = lblbookingid.Text;
            Session["price"] = lblprice.Text;

            if (!Page.IsPostBack)
            {
                pnl1.Visible = false;
                

            }

            if (TextBox1.Text.ToString() != "")
            {
                pnl1.Visible = true;
                seattable.Visible = true;


            }
            pnl1.Visible = true;

            connetionString = "Data Source=localhost\\SQLEXPRESS;Initial Catalog=GCT;Integrated Security = True";
            sql = "Select * from status where (PerfName='" + Label8.Text.ToString() + "')";
            connection = new SqlConnection(connetionString);
            connection.Open();
            command = new SqlCommand(sql, connection);
            dataReader = command.ExecuteReader();
            while (dataReader.Read())

            {
                for (int j = 1; j <= 84; j++)
                {
                    string s = "s" + j;
                    if (dataReader[s.ToString()].ToString() == "B")
                    {
                        ImageButton img = (ImageButton)pnl1.FindControl(s.ToString());
                        img.ImageUrl = "~/Images/booked_seatABC_img.gif";
                        img.Enabled = false;

                    }

                }
            }

        }

        protected void seatClick(ImageButton btn)
        {
            
            if (btn.ImageUrl == "~/Images/selected_seat_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/available_seat_img.gif";
                if (TextBox1.Text.IndexOf(btn.ID.ToString() + ",") > -1)
                {
                    TextBox1.Text = TextBox1.Text.Replace(btn.ID.ToString() + ",", "");
                }
                else
                {
                    TextBox1.Text = TextBox1.Text.Replace(btn.ID.ToString(), "");
                }
            }
            else if (btn.ImageUrl == "~/Images/available_seat_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/selected_seat_img.gif";
                if (TextBox1.Text.Trim().Length == 0)
                {
                    TextBox1.Text = btn.ID.ToString();
                }
                else if (TextBox1.Text.Trim().EndsWith(","))
                {
                    TextBox1.Text = TextBox1.Text + btn.ID.ToString();
                }
                else
                {
                    TextBox1.Text = TextBox1.Text + "," + btn.ID.ToString();
                }
            }


        }
        protected void seatClick1(ImageButton btn)
        {

            if (btn.ImageUrl == "~/Images/selected_seatA_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/available_seatA_img.gif";
                if (TextBox1.Text.IndexOf(btn.ID.ToString() + ",") > -1)
                {
                    TextBox1.Text = TextBox1.Text.Replace(btn.ID.ToString() + ",", "");
                }
                else
                {
                    TextBox1.Text = TextBox1.Text.Replace(btn.ID.ToString(), "");
                }
            }
            else if (btn.ImageUrl == "~/Images/available_seatA_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/selected_seatA_img.gif";
                if (TextBox1.Text.Trim().Length == 0)
                {
                    TextBox1.Text = btn.ID.ToString();
                }
                else if (TextBox1.Text.Trim().EndsWith(","))
                {
                    TextBox1.Text = TextBox1.Text + btn.ID.ToString();
                }
                else
                {
                    TextBox1.Text = TextBox1.Text + "," + btn.ID.ToString();
                }
            }


        }
        protected void seatClick2(ImageButton btn)
        {

            if (btn.ImageUrl == "~/Images/selected_seatB_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/available_seatB_img.gif";
                if (TextBox1.Text.IndexOf(btn.ID.ToString() + ",") > -1)
                {
                    TextBox1.Text = TextBox1.Text.Replace(btn.ID.ToString() + ",", "");
                }
                else
                {
                    TextBox1.Text = TextBox1.Text.Replace(btn.ID.ToString(), "");
                }
            }
            else if (btn.ImageUrl == "~/Images/available_seatB_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/selected_seatB_img.gif";
                if (TextBox1.Text.Trim().Length == 0)
                {
                    TextBox1.Text = btn.ID.ToString();
                }
                else if (TextBox1.Text.Trim().EndsWith(","))
                {
                    TextBox1.Text = TextBox1.Text + btn.ID.ToString();
                }
                else
                {
                    TextBox1.Text = TextBox1.Text + "," + btn.ID.ToString();
                }
            }


        }
        protected void seatClick3(ImageButton btn)
        {

            if (btn.ImageUrl == "~/Images/selected_seatC_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/available_seatC_img.gif";
                if (TextBox1.Text.IndexOf(btn.ID.ToString() + ",") > -1)
                {
                    TextBox1.Text = TextBox1.Text.Replace(btn.ID.ToString() + ",", "");
                }
                else
                {
                    TextBox1.Text = TextBox1.Text.Replace(btn.ID.ToString(), "");
                }
            }
            else if (btn.ImageUrl == "~/Images/available_seatC_img.gif")
            {
                seattable.Visible = true;
                btn.ImageUrl = "~/Images/selected_seatC_img.gif";
                if (TextBox1.Text.Trim().Length == 0)
                {
                    TextBox1.Text = btn.ID.ToString();
                }
                else if (TextBox1.Text.Trim().EndsWith(","))
                {
                    TextBox1.Text = TextBox1.Text + btn.ID.ToString();
                }
                else
                {
                    TextBox1.Text = TextBox1.Text + "," + btn.ID.ToString();
                }
            }


        }
        protected void s1click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s1);
        }
        protected void s2click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s2);
        }
        protected void s3click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s3);
        }
        protected void s4click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s4);
        }
        protected void s5click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s5);
        }
        protected void s6click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s6);
        }
        protected void s7click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s7);
        }
        protected void s8click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s8);
        }
        protected void s9click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s9);
        }
        protected void s10click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s10);
        }
        protected void s11click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s11);
        }
        protected void s12click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s12);
        }
        protected void s13click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s13);
        }
        protected void s14click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s14);
        }
        protected void s15click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s15);
        }
        protected void s16click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s16);
        }
        protected void s17click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s17);
        }
        protected void s18click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s18);
        }
        protected void s19click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s19);
        }
        protected void s20click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s20);
        }
        protected void s21click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s21);
        }
        protected void s22click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s22);
        }
        protected void s23click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s23);
        }
        protected void s24click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s24);
        }
        protected void s25click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s25);
        }
        protected void s26click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s26);
        }
        protected void s27click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s27);
        }
        protected void s28click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s28);
        }
        protected void s29click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s29);
        }
        protected void s30click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s30);
        }
        protected void s31click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s31);
        }
        protected void s32click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s32);
        }
        protected void s33click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s33);
        }
        protected void s34click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s34);
        }
        protected void s35click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s35);
        }
        protected void s36click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s36);
        }
        protected void s37click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s37);
        }
        protected void s38click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s38);
        }
        protected void s39click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s39);
        }
        protected void s40click(object sender, ImageClickEventArgs e)
        {
            seatClick1(s40);
        }
        protected void s41click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s41);
        }
        protected void s42click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s42);
        }
        protected void s43click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s43);
        }
        protected void s44click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s44);
        }
        protected void s45click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s45);
        }
        protected void s46click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s46);
        }
        protected void s47click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s47);
        }
        protected void s48click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s48);
        }
        protected void s49click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s49);
        }
        protected void s50click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s50);
        }
        protected void s51click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s51);
        }
        protected void s52click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s52);
        }
        protected void s53click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s53);
        }
        protected void s54click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s54);
        }
        protected void s55click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s55);
        }
        protected void s56click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s56);
        }
        protected void s57click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s57);
        }
        protected void s58click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s58);
        }
        protected void s59click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s59);
        }
        protected void s60click(object sender, ImageClickEventArgs e)
        {
            seatClick2(s60);
        }
        protected void s61click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s61);
        }
        protected void s62click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s62);
        }
        protected void s63click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s63);
        }
        protected void s64click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s64);
        }
        protected void s65click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s65);
        }
        protected void s66click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s66);
        }
        protected void s67click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s67);
        }
        protected void s68click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s68);
        }
        protected void s69click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s69);
        }
        protected void s70click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s70);
        }
        protected void s71click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s71);
        }
        protected void s72click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s72);
        }
        protected void s73click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s73);
        }
        protected void s74click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s74);
        }
        protected void s75click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s75);
        }
        protected void s76click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s76);
        }
        protected void s77click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s77);
        }
        protected void s78click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s78);
        }
        protected void s79click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s79);
        }
        protected void s80click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s80);
        }
        protected void s81click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s81);
        }
        protected void s82click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s82);
        }
        protected void s83click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s83);
        }
        protected void s84click(object sender, ImageClickEventArgs e)
        {
            seatClick3(s84);
        }
       
      
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conbal;
            SqlCommand cmdbal;
            SqlDataReader reabal;
            string strsqlbal = "select * from Performance_tbl where (PerfName='" + Label1.Text.ToString() + "')";
            conbal = new SqlConnection(DB.cs);
            cmdbal = new SqlCommand();
            cmdbal.Connection = conbal;
            cmdbal.CommandText = strsqlbal;
            conbal.Open();
            reabal = cmdbal.ExecuteReader();

            if (reabal.Read())
            {
                string[] forsave = TextBox1.Text.Split(',');
                string strsql = "select Count(*) from status where(PerfName='" + Label8.Text
                         + "')";

                if (Convert.ToInt32(DB.ExecuteScaler(strsql)) == 0)
                {
                    string sqladd = "INSERT into status ([PerfName]) values('" + Label8.Text
                            + "')";
                    DB.ExecuteNonQuery(sqladd);

                }


                for (int j = 0; j <= forsave.Length - 1; j++)
                {
                    if (forsave[j].ToString().Trim().Length > 0)
                    {
                        string strsql1 = "Update status set " + forsave[j].ToString() + " = 'B'  where ((PerfName='" + Label8.Text.ToString()
                                                 + "'))";
                        DB.ExecuteNonQuery(strsql1);

                    }
                }

                string str = DateTime.Today.ToString();
                DateTime dt1 = Convert.ToDateTime(str);


                String constring = "Data Source=localhost\\SQLEXPRESS; Initial Catalog= GCT; Integrated Security=true";
                SqlConnection sqlcon = new SqlConnection(constring);

                sqlcon.Open();
                SqlCommand com = new SqlCommand("addtocart", sqlcon);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@bookingid", lblbookingid.Text.ToString());
                com.Parameters.AddWithValue("@uname", Label3.Text.ToString());
                com.Parameters.AddWithValue("@perfname", Label8.Text.ToString());
                com.Parameters.AddWithValue("@seatno", TextBox1.Text.ToString());
                com.Parameters.AddWithValue("@totalseat", lblcount.Text.ToString());
                com.Parameters.AddWithValue("@bdate", dt1);
                com.Parameters.AddWithValue("@price", lblprice.Text.ToString());
                com.Parameters.AddWithValue("@tickettype", Label6.Text.ToString());
                com.Parameters.AddWithValue("@bandtype", DropDownList1.SelectedItem.Text.ToString());
                com.Parameters.AddWithValue("@adult", txtAdult.Text.ToString());
                com.Parameters.AddWithValue("@children", txtChild.Text.ToString());
                com.Parameters.AddWithValue("@oku", txtOku.Text.ToString());




                com.ExecuteNonQuery();
                sqlcon.Close();
                Response.Redirect("AddtoCart.aspx");
            }
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text.ToString() == "-SELECT-")
            {
                lblprice.Text = "";
                seattable.Enabled = false;
                Panel1.Visible = true;

            }

            else if (DropDownList1.SelectedItem.Text.ToString() =="BAND A"){
                lblprice.Text = "";
                lblprice.Text = "100";
                Panel1.Visible = true;


            }
            else if(DropDownList1.SelectedItem.Text.ToString() == "BAND B")
            {
                lblprice.Text = "";
                lblprice.Text = "130";
                Panel1.Visible = true;

            }
            else if (DropDownList1.SelectedItem.Text.ToString() == "BAND C")
            {
                lblprice.Text = "";
                lblprice.Text = "150";
                Panel1.Visible = true;
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
                  
        }

        protected void btncount_Click(object sender, EventArgs e)
        {
            if (Label5.Text != Label7.Text)
            {

                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Seats didnt matched')", true);
            }
            else
            {
                Panel1.Visible = true;
            }
           
            string strFirst = TextBox1.Text;
            char charCout = 's';
            int Count = 0;
            foreach (char chr in strFirst)
            {
                if (chr == charCout)
                {
                    Count++;
                }
            }
            Label7.Text = Count.ToString();
            lblcount.Text = Count.ToString();

            Random rnd = new Random();
            Random rnd1 = new Random();

            lblbookingid.Text = rnd.Next(900).ToString() + rnd1.Next(500).ToString();
            Panel1.Visible = true;
           
          
           }

        

        protected void txtAdult_TextChanged(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(txtAdult.Text)) && (!string.IsNullOrEmpty(txtChild.Text)) && (!string.IsNullOrEmpty(txtOku.Text)))
            {
                Label5.Text = (((Convert.ToInt32(txtAdult.Text) + (Convert.ToInt32(txtChild.Text)) + Convert.ToInt32(txtOku.Text))).ToString());
                Label6.Text = "Adult x" + txtAdult.Text + Environment.NewLine +
                          "Children x" + txtChild.Text + Environment.NewLine +
                          "OAP x" + txtOku.Text;
            }


        }

        protected void txtChild_TextChanged(object sender, EventArgs e)
        {

           if ((!string.IsNullOrEmpty(txtAdult.Text)) && (!string.IsNullOrEmpty(txtChild.Text)) && (!string.IsNullOrEmpty(txtOku.Text)))
            {
                Label5.Text = (((Convert.ToInt32(txtAdult.Text) + (Convert.ToInt32(txtChild.Text)) + Convert.ToInt32(txtOku.Text))).ToString());
                Label6.Text = "Adult x" + txtAdult.Text + Environment.NewLine +
                          "Children x" + txtChild.Text + Environment.NewLine +
                          "OAP x" + txtOku.Text;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }

        protected void txtOku_TextChanged(object sender, EventArgs e)
        {
            if ((!string.IsNullOrEmpty(txtAdult.Text)) && (!string.IsNullOrEmpty(txtChild.Text)) && (!string.IsNullOrEmpty(txtOku.Text)))
            {
                Label5.Text = (((Convert.ToInt32(txtAdult.Text) + (Convert.ToInt32(txtChild.Text)) + Convert.ToInt32(txtOku.Text))).ToString());
                Label6.Text = "Adult x" + txtAdult.Text + Environment.NewLine +
                          "Children x" + txtChild.Text + Environment.NewLine +
                          "OAP x" + txtOku.Text;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
            string strFirst = TextBox1.Text;
            char charCout = 's';
            int Count = 0;
            foreach (char chr in strFirst)
            {
                if (chr == charCout)
                {
                    Count++;
                }
            }
            Label7.Text = Count.ToString();
            if (Label5.Text != Label7.Text)
            {
               ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Seats didnt matched')", true);
            }
            else
            {
                Panel1.Visible = true;
                lblcount.Text = Count.ToString();

                Random rnd = new Random();
                Random rnd1 = new Random();

                lblbookingid.Text = rnd.Next(900).ToString() + rnd1.Next(500).ToString();                


            }

            
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
    }
}